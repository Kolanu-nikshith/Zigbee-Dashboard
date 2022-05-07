#!venv/bin/python
import os
import databaseop as op

from flask import Flask, url_for, redirect, render_template, request, abort
from flask_sqlalchemy import SQLAlchemy
from flask_security import Security, SQLAlchemyUserDatastore, \
    UserMixin, RoleMixin, login_required, current_user
from flask_security.utils import encrypt_password
import flask_admin
from flask_admin.contrib import sqla
from flask_admin import helpers as admin_helpers
from flask_admin import BaseView
from wtforms import PasswordField
from flask_admin import expose, AdminIndexView


# Create Flask application
app = Flask(__name__)
app.config.from_pyfile('config.py')
db = SQLAlchemy(app)


# Define models
roles_users = db.Table(
    'roles_users',
    db.Column('user_id', db.Integer(), db.ForeignKey('user.id')),
    db.Column('role_id', db.Integer(), db.ForeignKey('role.id'))
)


class Role(db.Model, RoleMixin):
    id = db.Column(db.Integer(), primary_key=True)
    name = db.Column(db.String(80), unique=True)
    description = db.Column(db.String(255))

    def __str__(self):
        return self.name


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(255), nullable=False)
    last_name = db.Column(db.String(255))
    email = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), nullable=False)
    active = db.Column(db.Boolean())
    confirmed_at = db.Column(db.DateTime())
    roles = db.relationship('Role', secondary=roles_users,
                            backref=db.backref('users', lazy='dynamic'))

    def __str__(self):
        return self.email


# Setup Flask-Security
user_datastore = SQLAlchemyUserDatastore(db, User, Role)
security = Security(app, user_datastore)


# Create customized model view class
class MyModelView(sqla.ModelView):

    def is_accessible(self):
        if not current_user.is_active or not current_user.is_authenticated:
            return False

        if current_user.has_role('superuser'):
            return True

        return False

    def _handle_view(self, name, **kwargs):
        """
        Override builtin _handle_view in order to redirect users when a view is not accessible.
        """
        if not self.is_accessible():
            if current_user.is_authenticated:
                # permission denied
                abort(403)
            else:
                # login
                return redirect(url_for('security.login', next=request.url))


    # can_edit = True
    edit_modal = True
    create_modal = True    
    can_export = True
    can_view_details = True
    details_modal = True

class UserView(MyModelView):
    column_editable_list = ['email', 'first_name', 'last_name']
    column_searchable_list = column_editable_list
    column_exclude_list = ['password']
    #form_excluded_columns = column_exclude_list
    column_details_exclude_list = column_exclude_list
    column_filters = column_editable_list
    form_overrides = {
        'password': PasswordField
    }



# Flask views
@app.route('/')
def index():
    return render_template('index.html')

# @app.route('/postdata', methods=["GET", "POST"])
# def postdata():
#     print("hellopost")
#     return "recpost"



@app.route('/admin/data/<int:id>', methods = ['GET', 'POST'])
def dataindex(id):
    data1 = request.data.decode("utf-8")
    if len(data1) < 2:
        return "error"
    if id == 1:
        if op.insertmq2(data1):
            return "success. inserted into mq2"
        else:
            return "Error inserting mq2 data"
    elif id == 2:
        if op.insertmq7(data1):
            return "success. inserted into mq7" 
        else:
            return "Error inserting mq7 data"
    elif id == 3:
        if op.insertlm75(data1):
            return "success. inserted into lm75"    
        else:
            return "Error inserting lm75 data"
    return "error"
    # return render_template('index.html')


class CustomView(AdminIndexView):
    @expose('/')
    def index(self):
        mqs = op.getmq2()
        return self.render('admin/custommq2.html',  mqs=mqs, mqs10=mqs[0:10])

class Custmq7(BaseView):
    @expose('/')
    def index1(self):
        mqc = op.getmq7()
        return self.render('admin/custommq7.html', mqc=mqc,  mqc10=mqc[:10])

class Custlm75(BaseView):
    @expose('/')
    def index1(self):
        lm = op.getlm75()
        return self.render('admin/customlm75.html', lm=lm, lm10 =lm[:10])


admin = flask_admin.Admin(app, 'Dashboard', index_view=CustomView(
    name='MQ2',
    menu_icon_type='fa', menu_icon_value='fa-connectdevelop',
    template='my_master.html',
    url='/admin'
), template_mode='bootstrap3',
)

# Add model views
admin.add_view(Custlm75(name="LM75", endpoint='lm75', menu_icon_type='fa', menu_icon_value='fa-connectdevelop',))
admin.add_view(Custmq7(name="MQ7", endpoint='mq7', menu_icon_type='fa', menu_icon_value='fa-connectdevelop',))

admin.add_view(MyModelView(Role, db.session, menu_icon_type='fa', menu_icon_value='fa-server', name="Roles"))
admin.add_view(UserView(User, db.session, menu_icon_type='fa', menu_icon_value='fa-users', name="Users"))

# define a context processor for merging flask-admin's template context into the
# flask-security views.
@security.context_processor
def security_context_processor():
    return dict(
        admin_base_template=admin.base_template,
        admin_view=admin.index_view,
        h=admin_helpers,
        get_url=url_for
    )


if __name__ == '__main__':
    app.run()
