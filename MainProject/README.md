# Cloud-deployable Web Application

## Describe Project:
* Implement a Cloud Computing System to practise the skill to setup scalable platforms, use scalable databases, and create cloud computing applications.

## Technical Requirements:

### Cloud platform setup: 
* All components must be within docker containers
* Each container should only play one role

### NoSQL Database:
* Use Cassandra for data storage and basic data access
* Cassandra cluster must contain at least 3 nodes
* Database design must meet basic rules of Cassandra data modeling (use Partition Key, model around your queries)

### Cloud Computing
* Use Spark or more advances tools (Spark SQL, Spark ML) to process/analyse data from Cassandra
* Spark cluster must contain at least 2 worker nodes
* Fetch data from Cassandra
* Perform advanced computations like aggregate functions and/or machine learning algorithms
* Must be scalable
* Should be reasonable efficient (no full scan in Cassandra table)

### Web interface
* Use Zeppelin

### Web server
* Use php

## Installation and Usage
* docker-compose.yml for total project (not recommended)
```
- Cassandra cluster: 3 nodes
- Spark cluster: 2 masters (1 for back up) and 2 workers
- Zeppelin: 1 container
- PhpServer: 1 container
- Zookeeper cluster: 2 nodes
```
* docker-compose--mini.yml for mini project (recommended)
```
- Cassandra cluster: 2 nodes
- Spark cluster: 2 masters (1 for back up) and 1 workers
- Zeppelin: 1 container
- PhpServer: 1 container
- Zookeeper cluster: 2 nodes
```

### System requirements
* Window Os
* Docker Toolbox: https://docs.docker.com/toolbox/toolbox_install_windows/
* Docker version: 18.03
* Docker-machine version 0.14.0
* Docker-compose version 1.20.1

### Docker Machine requirement
* 4 cores cpu, 6GB RAM, 50GB storage (good for the mini project, not stable for total project)
* If cloud-dev exist
```
docker-machine start cloud-dev
```
* If cloud-dev not exist, create new docker machine:
```
docker-machine create --driver virtualbox --virtualbox-cpu-count=4 --virtualbox-memory=6144 --virtualbox-disk-size=50000 cloud-dev
```
* Update the environment:
```
eval $(docker-machine env cloud-dev)
```
* Stop default machine if needed
```
docker-machine stop default
```

### Mount local volumes in docker machine 
* Guide link: https://stackoverflow.com/questions/30040708/how-to-mount-local-volumes-in-docker-machine
* Commands
```
cd mnt/sda1/var/lib/boot2docker
sudo vi bootlocal.sh

sudo mkdir -p /home/minhnln/vboxshare
sudo mount -t vboxsf -o defaults,uid=`id -u docker`,gid=`id -g docker` CloudAssignment /home/minhnln/vboxshare
```

### Cassandra Model (Model around queries)
* Link: https://www.datastax.com/dev/blog/basic-rules-of-cassandra-data-modeling
* 
```
- Student: name
- Teacher: name
- Course: name, price, description
- Sales: student_name, course_name, date, price
- Purchases: teacher_name, course_name, date, cost
- Rate: student_name, course_name, rate
```

#### Step 1: Determine WHAT Queries to Support
* Grouping by student_name
* Grouping by teacher_name
* Grouping by course_name
* Average rate, total sales each course

#### Step 2: Create a table which can satisfy query by reading one partition
* Use one table per query pattern
* Dupplication is okay.
* This step focuses on optimise for reads

##### <field> Lookup: we have <field> and want to look them up
* Course: get name, price and description
* Teacher: get name
```
CREATE TABLE course (
	course_name text,
	teacher_name text,
	price decimal,
	cost decimal,
	description text,
	average_rate decimal,
	PRIMARY KEY (course_name, teacher_name)
);
```

##### <field> Groups by Join <field>:
* Sales: get the data in descending price order, get total sales
* Get average rates each course
```
CREATE TABLE sales_join_price (
	student_name text,
	course_name text,
	date timestamp,
	rate int,
	price decimal,
	PRIMARY KEY ((student_name, course_name), price)
);
```

##### Create Materialized view
CREATE MATERIALIZED VIEW course_rate AS
  SELECT course_name, average_rate FROM course
  WHERE course_name IS NOT NULL AND average_rate IS NOT NULL
  PRIMARY KEY (course_name,average_rate)
  WITH CLUSTERING ORDER BY (average_rate DESC);

### Build

##### Step 1: Clone git repository
```
git clone https://github.com/NgoMing/CloudAssignment.git
cd MainProject
```

##### Step 2: Run containers under background

* Run total project (require heavy machine)
```
docker-compose up -d
```

* Run mini project
```
docker-compose -f docker-compose-mini.yml up -d
```

##### Step 3: Configure connection between Zeppelin and Cassandra as well as Spark
* Get docker machine ip
```
docker-machine ip cloud-dev
```
* Access address: http://docker-machine-ip:8080 to get URL of spart-master container
* Access Zeppelin via address: http://docker-machine-ip:8090
* Click on anonymous at the top right, then Interpreter
* Go to Cassandra and edit the `cassandra.hosts` field to `cassandra` and then *Save*
* Go to Spark part and edit the `master` field to the value of the above spark-master URL such as `spark://e7583f98220e:7077` and then *Save*

##### Step 4: Import database into Cassandra node
* Enter Cassandra node1 in bash mode:
```
docker exec -it  cass_node1 bash
```
* Import key space and tables via cql file
```
cqlsh -f '/shared-data/cass_mini_db.cql
or
cqlsh -f '/shared-data/cass_db.cql
```
* Test data in tables
```
cqlsh -e 'use cass_db; select * from sales_order;
```

##### Step 5: Stop and remove all containers
* Stop total project
```
docker-compose down
```
* Stop mini project
```
docker-compose -f docker-compose-mini.yml down
```

### Testing

##### Test distributed data in Cassandra cluster
* Access to a cass node
```
docker exec -it cass_node1 bash
```
* Create key space and table
```
cqlsh -f '/shared-data/cass_mini_db.cql'
or 
cqlsh -f '/shared-data/cass_db.cql'
```
* Check data of new table
```
cqlsh -e 'use cass_db; select * from course;'
```
* Quit from the node
```
exit
```
* Stop and remove the node
```
docker stop cass_node1
docker rm cass_node1
```
* Access to other node in the cluster
```
docker -it exec -it cass_node2 bash
```
* Check data
```
cqlsh -e 'use cass_db; select * from course;'
``` 

##### Test Spark cluster high availability using Zookeeper
* Check current state of spark-master: it should be ALIVE (or CONNECTED)
```
docker logs spark-master
```
* Check current state of spark-master-backup: it should be ALIVE if the state of spark-master is not ALIVE
```
docker logs spark-master-backup
```
* Check which spark is connecting with spark worker: it should be the spark master with ALIVE state
```
docker logs spark-worker
docker logs spark-worker-1
docker logs spark-worker-2
```
* Stop the ALIVE spark master
```
docker stop spark-master
```
* Check which spark is connecting with spark worker again: it should be change to other spark master

### Trobleshooting

##### Zero running cores and WAITING status
* Occurrence: when run some tasks of spark
* Solution: configure more RAM to Spark worker

##### java.net.ConnectException: Connection refused (Connection refused)
* Occurrence: when first access to cassandra database by spark-sql in zeppelin interface
* Solution: wait some seconds and run again

##### Failed to open native connection to Cassandra at {172.18.0.2, 172.18.0.6, 172.18.0.7}:9042
* Occurrence: when show a partition
* Solution: spark.cassandra.connection.host must be specified as cassandra ip

##### ALLOW FILTERING: Not enough replicas available for query at consistency LOCAL_ONE (1 required but only 0 alive)
* Solution: increase the replicas factor of keyspace (2 -> 3)

##### Cannot build a cluster without contact points
* Solution: list all the ip of cassandra nodes into spark.cassandra.connection.host field

##### Connection reset by peer in Cassandra node
* Solution: disable firewall of window

### License

##### Dockerfile
* Cassandra: cassandra:3.11.1 - Dockerhub
* Spark: https://github.com/zhao-xin/spark_cassandra_examples
* Zeppelin: https://github.com/dylanmei/docker-zeppelin.git
* Zookeeper: zookeeper:lastest - Dockerhub
* PhpCass: https://github.com/mhndev/docker-php-cassandra-driver.git
