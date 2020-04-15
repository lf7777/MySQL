import pymysql

#创建数据库连接对象
db = pymysql.connect('localhost','root','lf','family_bill',charset='utf8mb4')

#创建游标对象
cursor = db.cursor()


#写sql语句
sql = 'insert into main(name,category,time,money) values'

#操作sql语句
varlist = [
        {'name':'笔记本','category':'电子产品','time':'2015-07-01','money':'5500元'},
        {'name':'键盘','category':'电子产品','time':'2014-08-29','money':'225元'},
        {'name':'屏幕','category':'电子产品','time':'2018-04-19','money':'111元'},
        {'name':'音响','category':'电子产品','time':'2011-03-26','money':'278元'},
        {'name':'小熊猫','category':'香烟','time':'2017-08-21','money':'600元'},
        {'name':'黄鹤楼','category':'香烟','time':'2015-06-26','money':'400元'},
        {'name':'红塔山','category':'香烟','time':'2020-02-24','money':'1100元'},
        {'name':'紫云','category':'香烟','time':'2019-08-09','money':'350元'},
        {'name':'黄金叶','category':'香烟','time':'2018-07-09','money':'307元'},
        {'name':'红太阳','category':'香烟','time':'2015-01-29','money':'724元'},
        {'name':'钓鱼台','category':'香烟','time':'2019-02-14','money':'102元'},
        {'name':'本草纲目','category':'香烟','time':'2015-04-21','money':'10000元'}
          ]

for i in varlist:

    #注意在mysql里是字符串的,需要用""加上
    val = '("{name}","{category}","{time}","{money}"),'.format(**i)
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
