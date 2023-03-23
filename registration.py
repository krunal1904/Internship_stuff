import sqlite3
import re

connection = sqlite3.connect("emptable.db")

crsr = connection.cursor()
crsr.execute("drop table emptable;")

sql_command = """CREATE TABLE emptable ( id INTEGER PRIMARY KEY,
name VARCHAR(20),phone number INT(10),
gmail VARCHAR(50),password VARCHAR(20));"""

crsr.execute(sql_command)


def validate_name(name):
    pat = re.compile("^([a-zA-Z]+)( [a-zA-Z]+)*$")
    user_name = pat.search(name)
    if user_name:
        return True
    else:
        return False


# name=input("enter a name:-")
# validate_name(name)

def validate_number(number):
    r = re.fullmatch('[6-9][0-9]{9}', number)
    if r != None:
        return True
    else:
        return False


# number=input("enter n:")
# validate_number(number)

def validate_gmail(gmail):
    pat = "^[a-zA-Z0-9-_]+@gmail.com$"
    if re.match(pat, gmail):
        return True
    return False


# s=input("enter mail:")
# print(validate_gmail(s))
#  Importing re module

def validate_password(passwd):
    pat = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$"
    if re.match(pat, passwd):
        return True
    else:
        return False


# p=input("enter p:")
# validate_password(p)

def registration():
    print("-----registration-----")
    ("enter details for registration")

    id = 1  # int(input("enter id:-"))
    name = "kb"  # input("enter name:-")
    number = '9898989898'  # input("enter phone no.:-")
    gmail = 'kb12@gmail.com'  # input("emter gmail:-")
    passwd = 'Krunal@1904'  # input("enter password:-")
    if validate_name(name) == True and validate_number(number) == True and validate_gmail(
            gmail) == True and validate_password(passwd) == True:
        details = [id, name, number, gmail, passwd]
        print("regestration succsessfull.")
        crsr.execute("""INSERT INTO emptable VALUES (?, ?, ?, ?, ?)""", details)
    else:
        print("invalid input")

    sql = """ SELECT * FROM emptable;"""
    crsr.execute(sql)
    result = crsr.fetchall()
    print(result)


connection.commit()


def login():
    gmail = input("enter registerd gmail:-")
    passwd = input("enter password:-")
    if validate_gmail(gmail) == True and validate_password(passwd) == True:
        lst = [gmail, passwd]
        crsr.execute("select * from emptable where gmail=? and password=?", lst)
        k = crsr.fetchall()
        if len(k) > 0:
            print("login successful/")
        else:
            print("invalid")
    else:
        print("invalid")


def update_details():
    n = int(input("select:-\n1)update number \n2)update email \n3)update password \nenter choice:-"))
    if n == 1:
        name = input("enter a name:")
        old_number = input("enter old number:")
        new_number = input("enter new number:")
        s = [new_number]
        l = [new_number, old_number, name]
        if validate_name(name) == True and validate_number(new_number) == True:
            crsr.execute("UPDATE emptable SET phone =? where phone=? and name=?", l)
            crsr.execute("SELECT * FROM emptable")
            print(crsr.fetchall())
            connection.commit()
            crsr.execute("SELECT * FROM emptable where phone=?", s)
            k = crsr.fetchall()
            if len(k) > 0:
                print("update successfully.")
        else:
            print("invalid")

    elif n == 2:
        name = input("enter a name:")
        old_gmail = input("enter old gmail:")
        new_gmail = input("enter new gmail:")
        s = [new_gmail]
        l = [new_gmail, old_gmail, name]
        if old_gmail == new_gmail:
            print("invalid")
        elif validate_name(name) == True and validate_gmail(new_gmail) == True:
            crsr.execute("UPDATE emptable SET gmail =? where gmail=? and name=?", l)
            crsr.execute("SELECT * FROM emptable")
            print(crsr.fetchall())
            connection.commit()
            crsr.execute("SELECT * FROM emptable where gmail=?", s)
            k = crsr.fetchall()
            if len(k) > 0:
                print("update successfully.")
        else:
            print("invalid")

    elif n == 3:
        name = input("enter a name:")
        old_password = input("enter old password:")
        new_password = input("enter new password:")
        s = [new_password]
        l = [new_password, old_password, name]
        if old_password == new_password:
            print("invalid")
        elif validate_name(name) == True and validate_password(new_password) == True:
            crsr.execute("UPDATE emptable SET password =? where password=? and name=?", l)
            crsr.execute("SELECT * FROM emptable")
            print(crsr.fetchall())
            connection.commit()
            crsr.execute("SELECT * FROM emptable where password=?", s)
            k = crsr.fetchall()
            if len(k) > 0:
                print("update successfully.")
        else:
            print("invalid")

choice=0
while (choice != 4):
    choice = int(input("1)registration \n2)login \n3)update details \n4)Exit \nenter choice:-"))
    if choice == 1:
        registration()
    elif choice == 2:
        login()
    elif choice == 3:
        update_details()
    elif choice == 4:
        print("exit")
        break
    else:
        print("invalid")

