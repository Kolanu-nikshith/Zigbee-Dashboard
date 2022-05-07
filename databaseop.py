from sqlalchemy import create_engine
import base64
from datetime import datetime
import random

db_uri = 'mysql://root:root@localhost/flat'
engine = create_engine(db_uri, pool_pre_ping=True)

def getlm75():
    sql = 'SELECT timestamp, sensor_id, temperature FROM lm75 order by timestamp desc ;'
    result = engine.execute(sql)
    idd = []
    for _r in result:
        idt = []
        if _r[0] is None:
            idt.append(datetime.now())
        else:
            idt.append(_r[0])
        idt.append(_r[1])
        idt.append(_r[2])
        idd.append(idt)
    return idd

def getmq2():
    sql = 'SELECT timestamp, sensor_id, smoke, co, lpg FROM mq2 order by timestamp desc ;'
    result = engine.execute(sql)
    idd = []
    for _r in result:
        idt = []
        if _r[0] is None:
            idt.append(datetime.now())
        else:
            idt.append(_r[0])
        idt.append(_r[1])
        idt.append(_r[2])
        idt.append(_r[3])
        idt.append(_r[4])
        idd.append(idt)
    return idd


def getmq7():
    sql = 'SELECT timestamp, sensor_id, co FROM mq7 order by timestamp desc ;'
    result = engine.execute(sql)
    idd = []
    for _r in result:
        idt = []
        if _r[0] is None:
            idt.append(datetime.now())
        else:
            idt.append(_r[0])
        idt.append(_r[1])
        idt.append(_r[2])
        if int(_r[2]) < 800:
            idt.append("#00CC66")
        elif int(_r[2]) <1800:
            idt.append("#FFFF66")
        else:
            idt.append("#CC6633")
        idd.append(idt)
    return idd



def insertmq7(data1):
    # sql ="INSERT INTO mq2 (sensor_id, co) VALUES (%s, %s)", ("A", random.randint(1, 100))
    try:
        data11 = data1.split(',')
        co = data11[0].split(':')[1].strip()
        idvalue = data11[1].split(':')[1].strip()
        sql = 'insert into mq7 (sensor_id, co) values("' + str(idvalue) + '",'+ str(co)+');'
        print(sql);
        engine.execute(sql)
        return True
    except:
        return False

def insertlm75(data1):
    try:
        data11 = data1.split(',')
        tempe = data11[0].split(':')[1].strip()
        idvalue = data11[1].split(':')[1].strip()

        sql = 'insert into lm75 (sensor_id, temperature) values("' + str(idvalue) + '",'+ str(tempe)+');'
        print(sql);
        engine.execute(sql)
        return True
    except:
        return False

def insertmq2(data1):
    # sql ="INSERT INTO mq2 (sensor_id, co) VALUES (%s, %s)", ("A", random.randint(1, 100))
    # id1 = ["living room", "Hall", "Balcony"]
    # id2 = random.choice(id1)
    try:
        data11 = data1.split(',')
        lpg = data11[0].split(':')[1].strip()
        co = data11[1].split(':')[1].strip()
        smoke = data11[2].split(':')[1].strip()
        idvalue = data11[3].split(':')[1].strip()
        sql = 'insert into mq2 (sensor_id, smoke,co,  lpg) values("' + str(idvalue) + '",'+ str(smoke)+','+str(co)+','+str(lpg)+');'
        print(sql);
        engine.execute(sql)
        return True
    except:
        return False

