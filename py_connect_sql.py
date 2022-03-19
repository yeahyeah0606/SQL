pip install mysql-connector-python   

from mysql import connector
try:
    connection = connector.connect(host='localhost', database='orders', user='root', password='183712')
    cursor = connection.cursor()
    cursor.execute('select database();')
    record=cursor.fetchone()
    print('目前使用的資料庫',record)
except connector.Error as e:
    print('資料庫連線失敗', e)
finally:
    connection.close()
    print('資料庫連線已經關閉')
