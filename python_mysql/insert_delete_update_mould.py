import pymysql

#insert update delete 的执行步骤及方法一模一样,只需修改 <sql> 语句.

#1. 打开数据库连接    数据库地址 用户名 密码 选择哪个库 设置编码          增加不能设置返回的数据格式
db = pymysql.connect('localhost','root','lf','my_mysql',charset='utf8mb4')
#或 单条语句指定数据库
#db.select_db('my_mysql')


#2. 创建游标对象
cursor = db.cursor()

try:
    #3. 准备sql语句
    sql = 'insert into bb values(null,28,"abc","男");'


    #4. 执行sql语句 返回 操作数据 的条数
    res = cursor.execute(sql)
    print(res)


    #5 进行提交数据库
    db.commit()

except:

    #执行回滚:回到原来的状态
    db.rollback()


#6 rowcount属性 返回受影响的行数 一般发生在增 删 改
print(cursor.rowcount)


#7. 关闭数据库
db.close()

