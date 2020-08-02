import pymysql

db = pymysql.connect('localhost','root','lf','my_mysql',charset='utf8mb4')

cursor = db.cursor()

sql = 'insert into aaa (日期,amount) values'

a = [{'日期':'2020-02-03','amount':100},{'日期':'2020-02-04','amount':200},{'日期':'2020-02-05','amount':300}]

for i in a:
    var = '("{日期}",{amount}),'.format(**i)
    sql += var

sql = sql.rstrip(',')+';'

try:
    res = cursor.execute(sql)
    print(res)
    db.commit()
except:
    db.rollback()

db.close()
