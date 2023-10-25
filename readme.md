Steps to do assignment 4 because my professor is such a nice guy

3)	Log into Gitub
4)	Log into replit.com by selecting the ‘log into github’ button
5)	Create python Repl called baseballanalytics
6)	Click gittool
7)	Initialzie reposotiry
8)	Click on settings icon in git screen
9)	Click the create repository on gihub button the remote URL should be populated
10)	Create the code we need from AI. Here is the prompt we used:
Act like an expert in Python, MySQL SQL, AWS MySQL RDS, replit.com, GitHub.com, and MySQL Workbench. We need to create a baseball analytics database. We need to create a Python program to interface with the database. The database will be in AWS MySQL RDS. It will be created and managed using MySQL Workbench. The Python code will run in replit.com in a repository there called BaseballAnalytics. This repository is connected to a Github repository. We need two code files created. The first file is a MySQL SQL file that will execute in MySQL workbench to create and manage the AWS RDS database. This file in SQL must create the database, create the tables for a team, offensive players, defensive players where each player can be an infielder, outfielder, catcher, and pitcher. Ecah player can bat except for the pitcher. The pitcher and catcher cannot be an infielder or outfielder, and vice versa. The SQL file must create 5 baseball analytics to be stored in the database. The SQL file must create two views that can be used in the Python file to execute. The SQL file must create the data for a team, 10 infielders, 10 outfielders, 5 pitchers, and 2 catchers. The data has to provide each player's name, position, and offensive and defensive data. The SQL file and Python file must be the actual code needed. The data for the database must be complete and not contain just a subset of the data required.
9) Put the SQL code into a file in Replit. I used baseballdb.sql
10) go to AWS and set up the database instance. make sure you use te Free Tier and the public access parameters. Do not set up a custom vpc security group.
11) go to MySQL Workbench and create a connection to the AWS database. 
12)	click on the RDS instance name and then click on the VPC security group link.
13) edit and then delete the existing inbound rule.
14) add a new rule with All traffic as the type, the source is anywhere IPV4. then click on save and you should see a progress bar pop up and quickly.
15) Go back to the RDS instance and copy the endpoint value and put it into the hostname box in the MqSQl connection dialog box.
16) Click on the TEST connection and it should show a successful connection dialog box.
17) click on the MqSQL workbench connection in the SQL editor should show up
18) Copy the contents of baseballdb.SQl into the MySQL workbench query window.
19) click on the lightning bolt at the top to execute the query. You should get all green at the bottom to show that the query executed properly
20) now we want to create a python program to connect to the database and execute the two views. here is the prompt we used:
    Create a Python program that will connect to this AWS RDS MySQL database and execute the two views.
21) Copy the Python code into main.py update the database connection information and run
22) The program when run should open up the console window and display the results. 