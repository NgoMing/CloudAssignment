# Tool requirement
- Docker Toolbox
- Window OS

# Guide how to mount local volumes in docker machine
# links: https://stackoverflow.com/questions/30040708/how-to-mount-local-volumes-in-docker-machine
### Step 1: Add Virtual Machine Mount Point in Window
- Start "Oracle VM VirtualBox Manager"
- Right-Click <machine name> (default)
- Settings...
- Shared Folders
- The Folder+ Icon on the Right (Add Share)
- Folder Path: <host dir> (e:)
- Folder Name: <mount name> (e)
- Check on "Auto-mount" and "Make Permanent" (Read only if you want...) (The auto-mount is sort of pointless currently...)

### Step 2: Mounting in boot2docker
##### Manually mount in boot2docker:
- There are various ways to log in, use "Show" in "Oracle VM VirtualBox Manager", or ssh/putty into docker by IP address docker-machine ip default, etc...
```
docker-machine ssh default (name of machine, use docker-machine ps for listing machines)
sudo mkdir -p <local_dir>
sudo mount -t vboxsf -o defaults,uid=`id -u docker`,gid=`id -g docker` <mount_name> <local_dir>
```
- But this is only good until you restart the machine, and then the mount is lost...

##### Adding an automount to boot2docker:

While logged into the machine

Edit/create (as root) /mnt/sda1/var/lib/boot2docker/bootlocal.sh, sda1 may be different for you...
Add
```
mkdir -p <local_dir>
mount -t vboxsf -o defaults,uid=`id -u docker`,gid=`id -g docker` <mount_name> <local_dir>
```

# Step 1: Run containers under background
`docker-compose up -d`

# Step 2: Configure connection between Zeppelin and Cassandra as well as Spark
- Access address: http://192.168.99.100:8080 to get URL of spart-master container
- Access Zeppelin via address: http://192.168.99.100:8090
- Click on anonymous at the top right, then Interpreter
- Go to Cassandra and edit the `cassandra.hosts` field to `cassandra`
- Go to Spark part and edit the `master` field to the value of the above spark-master URL such as `spark://e7583f98220e:7077`

# Step 4: Import database into Cassandra node
- Enter Cassandra node1 in bash mode:
`docker exec -it  cass_node1 bash`
- Import key space and tables via cql file
`cqlsh -f '/shared-data/CloudComputing.cql`
- Test data in tables
`cqlsh -e 'use cloudcomputing; select * from data;`

# Step 3: Stop and remove all containers
`docker-compose down`
