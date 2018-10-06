# Run containers under background
docker-compose up -d

# Access address: http://192.168.99.100:8080 to get URL of spart-master container
# 192.168.99.100 is machine-host-ip which can get by the following command:
docker-machine inspect '{{.NetworkSettings.IPAddress}}'

# Access Zeppelin via address: http://192.168.99.100:8090
# Click on anonymous at the top right, then Interpreter
# Go to Spark part and edit the master field to the value of the above spark-master ip