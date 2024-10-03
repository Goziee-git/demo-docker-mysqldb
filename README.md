1: BUILD THE DOCKER IMAGE: docker build -t mysqlimage .

2: CHECK DOCKER IMAGE: docker images | grep mysqlimage

3: RUN THE DOCKER CONTAINER: docker run --name=mysqlcontainer -d -p 3306:3306 -e MYSQL_USER=prospa -e MYSQL_PASSWORD=prospa mysqlimage

4: CHECK THE DOCKER CONTAINER: docker ps | grep mysqlcontainer

5: INSPECT CONTAINER TO GET ip-ADDR: docker inspect mysqlcontainer

6: COPY IP ADDRESS: copy the ip address of the docker container: 172.17.0.2

A LITTLE INSTALLATION TO HELP CONNECT TO THE DATABASE FORM CLI: To install mysql-client-core on a Debian-based system like Ubuntu,
   sudo apt install mysql-client-core-8.0

7: CONNECT TO THE DB FROM THE CLI: mysql -h 172.17.0.2 -P 3306 -u prospa -p

8: DATABASE QUERY TO VISUALISE THE DATABASE ENTRIES:

USE prospa;
SELECT * FROM employees;
