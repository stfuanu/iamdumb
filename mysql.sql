mysql -u ding
mysql -u ding -p

\q
exit;


--You can use the CURRENT_USER and USER functions as follows:
SELECT CURRENT_USER();
SELECT USER();
\s
whoami

SELECT * FROM Customers -- WHERE City='Berlin';


-- Create New user & grand permissions :
-- https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql

CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
mysql -u [username] -p

-- All users & stuff

SELECT User, Host, plugin FROM mysql.user;


-- for something , idk

sudo mysql -u root # I had to use "sudo" since it was new installation

USE mysql;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
exit;

sudo service mysql restart

