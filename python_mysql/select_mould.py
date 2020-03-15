import pymysql

#1. 打开数据库连接    数据库地址 用户名 密码 选择哪个库 设置编码          
#设置返回的数据格式(默认元祖套元祖,Dict为列表套字典,只有这两种)
db = pymysql.connect('localhost','root','lf','my_mysql',charset='utf8mb4',cursorclass=pymysql.cursors.DictCursor)
#或 单条语句指定数据库
#db.select_db('my_mysql')


#2. 创建游标对象
cursor = db.cursor()


#3. 准备sql语句
sql = 'select * from bb;'


#4. 执行sql语句 返回查询到的数据条数
res = cursor.execute(sql)
print(res)


#5. 提取返回的数据 fetchall() 获取集中的所有数据 fetchone()获取一条
data = cursor.fetchall()
print(data)


#6. 关闭数据库
db.close()
