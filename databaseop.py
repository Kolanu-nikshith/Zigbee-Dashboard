from sqlalchemy import create_engine
import base64
from datetime import datetime
import random

db_uri = 'mysql://root:@localhost/flat'
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



def insertmq7():
    # sql ="INSERT INTO mq2 (sensor_id, co) VALUES (%s, %s)", ("A", random.randint(1, 100))
    id1 = ["living room", "Hall", "Balcony"]
    id2 = random.choice(id1)
    sql = 'insert into mq7 (sensor_id, co) values("' + str(id2) + '",'+ str(random.randint(1, 100))+');'
    print(sql);
    engine.execute(sql)
    return "inserted into mq7"


def insertlm75():
    # sql ="INSERT INTO mq2 (sensor_id, co) VALUES (%s, %s)", ("A", random.randint(1, 100))
    id1 = ["living room", "Hall", "Balcony"]
    id2 = random.choice(id1)
    sql = 'insert into lm75 (sensor_id, temperature) values("' + str(id2) + '",'+ str(random.randint(1, 100))+');'
    print(sql);
    engine.execute(sql)
    return "inserted into lm75"


def insertmq2():
    # sql ="INSERT INTO mq2 (sensor_id, co) VALUES (%s, %s)", ("A", random.randint(1, 100))
    id1 = ["living room", "Hall", "Balcony"]
    id2 = random.choice(id1)
    sql = 'insert into mq2 (sensor_id, smoke,co,  lpg) values("' + str(id2) + '",'+ str(random.randint(1, 100))+','+str(random.randint(1, 100))+','+str(random.randint(1, 100))+');'
    print(sql);
    engine.execute(sql)
    return "inserted into mq2"

