docker-compose up -d

# test Cassandra cluster
# Create a new Cassandra container and connect to the cluster
seed=$(docker inspect --format '{{.NetworkSettings.IPAddress}}' cass_node1)
docker run --network bridge -it --rm cassandra:3.11 cqlsh $seed

### In Cassandra test node container
# Create new keyspace
create keyspace cass_db
with replication = {
'class' : 'NetworkTopologyStrategy',
'datacenter1' : 2
};
	
# Access to the new keyspace and create new table
use cass_db;
create table student (
	sid int,
	first_name text,
	last_name text,
	primary key (sid)
) with compact storage;

# Insert rows to student table
insert into student(sid,first_name,last_name) values (1,'John1','David1');
insert into student(sid,first_name,last_name) values (2,'John2','David2');
insert into student(sid,first_name,last_name) values (3,'John3','David3');
insert into student(sid,first_name,last_name) values (4,'John4','David4');
insert into student(sid,first_name,last_name) values (5,'John5','David5');
insert into student(sid,first_name,last_name) values (6,'John6','David6');

# Check data
select * from student;

# Exit Cassandra container
exit
### Out Cassandra test node container

# Stop and remove cass_node1
docker stop cass_node1
docker rm cass_node1

# Check running container to make sure that cass_node1 is not in the list
docker ps

# Access to Cassandra cluster via cass_node02
seed2=$(docker inspect --format '{{.NetworkSettings.IPAddress}}' cass_node2)
docker run --network bridge -it --rm cassandra:3.11 cqlsh $seed2

# Check data
use cass_db;
select * from student;
