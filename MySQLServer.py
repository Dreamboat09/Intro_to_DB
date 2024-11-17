import mysql.connector

try:
    mydb = mysql.connector.connect (
        host="localhost",
        user="root",
        passwd="dreamboat",
        database="alx_book_store",
        )
    
    mycursor = mydb.cursor()
    
    mycursor.execute(CREATE DATABASE IF NOT EXISTS alx_book_store)
        print("Database 'alx_book_store' created successfully!")
        
    
except mysql.connector.Error:
    print(error!!!)
 
finally:
    mycursor.close()
    mydb.close

