import pymysql

#创建数据库连接对象
db = pymysql.connect('localhost','root','lf','my_mysql',charset='utf8mb4')

#创建游标对象
cursor = db.cursor()


#写sql语句
sql = 'insert into bb(age,username,sex) values'

#操作sql语句
varlist = [
           {'age':'41','username':'a','sex':'男'},
           {'age':'42','username':'b','sex':'女'},
           {'age':'43','username':'c','sex':'男'},
           {'age':'44','username':'d','sex':'女'},
           {'age':'45','username':'e','sex':'男'}
          ]

for i in varlist:

    #注意在mysql里是字符串的,需要用""加上
    val = '({age},"{username}","{sex}"),'.format(**i)
    sql += val

sql = sql.rstrip(',')+';'
print(sql)

try:
    #执行sql语句
    res = cursor.execute(sql)
    #提交数据
    print(res)
    db.commit()

except:
    #执行回滚
    db.rollback()

#查看受影响的的行数
print(cursor.rowcount)

db.close()
