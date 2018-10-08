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

### System requirements
* Window Os
* Docker Toolbox
`https://docs.docker.com/toolbox/toolbox_install_windows/`

### Docker Machine requirement
* 4 cores cpu, 4GB RAM, 40GB storage
* If cloud-dev exist
`docker-machine start cloud-dev`
* If cloud-dev not exist, create new docker machine:
`docker-machine create --driver virtualbox --virtualbox-cpu-count=4 --virtualbox-memory=4096 --virtualbox-disk-size=40000 cloud-dev`
* Update the environment:
`eval $(docker-machine env cloud-dev)`
* Stop default machine if needed
`docker-machine stop default`

### Mount local volumes in docker machine 
* Guide link:
`links: https://stackoverflow.com/questions/30040708/how-to-mount-local-volumes-in-docker-machine`

* Commands
`cd mnt/sda1/var/lib/boot2docker`
`sudo vi bootlocal.sh`

`sudo mkdir -p /home/minhnln/vboxshare`
`sudo mount -t vboxsf -o defaults,uid=`id -u docker`,gid=`id -g docker` CloudAssignment /home/minhnln/vboxshare`

### Build

##### Step 1: Clone git repository
`git clone `
`cd`

##### Step 2: Run containers under background
`docker-compose up -d`

##### Step 3: Configure connection between Zeppelin and Cassandra as well as Spark
- Access address: http://192.168.99.100:8080 to get URL of spart-master container
- Access Zeppelin via address: http://192.168.99.100:8090
- Click on anonymous at the top right, then Interpreter
- Go to Cassandra and edit the `cassandra.hosts` field to `cassandra`
- Go to Spark part and edit the `master` field to the value of the above spark-master URL such as `spark://e7583f98220e:7077`

# Step 4: Import database into Cassandra node
- Enter Cassandra node1 in bash mode:
`docker exec -it  cass_node1 bash`
- Import key space and tables via cql file
`cqlsh -f '/shared-data/cass_db.cql`
- Test data in tables
`cqlsh -e 'use cass_db; select * from sales_order;`

# Step 5: Stop and remove all containers
`docker-compose down`
