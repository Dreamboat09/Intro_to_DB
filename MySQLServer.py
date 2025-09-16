import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="alx_user",
        password="alx_pass123"
    )

    print("database connected")

    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print(f"Database 'alx_book_store' created successfully!")

except mysql.connector.Error as error:
    print(f'error database not connected{error}')

finally:
    if "mydb" in locals() and mydb.is_connected():
        mycursor.close()
        mydb.close()