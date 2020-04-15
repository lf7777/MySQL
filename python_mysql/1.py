import pymysql

db = pymysql.connect('localhost', 'root', 'lf','family_bill', charset='utf8mb4')

cursor = db.cursor()

sql = 'select account_number,password from users'

cursor.execute(sql)

data = cursor.fetchall()

#data = [i[0] for i in data]

print(data)

