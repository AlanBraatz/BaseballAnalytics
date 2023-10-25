import mysql.connector

# Connect to RDS MySQL 
db = mysql.connector.connect(
    host="bballanalytics.ciohkxjmgz9j.us-east-2.rds.amazonaws.com",
    user="admin",
    password="admin123",
    database="baseball_db"
)

cursor = db.cursor()

# Query batting view
print("Batting View:")
cursor.execute("SELECT * FROM batting_view")
for row in cursor:
    print(row)

print() 

# Query pitching view 
print("Pitching View:")
cursor.execute("SELECT * FROM pitching_view")
for row in cursor:
    print(row)

# Close connection
db.close()