# Convert to UNIX format
dos2unix entrypoint.sh

# Create Spark image from dockerfile (make sure the current file includes dockerfile)
docker build -t uq/spark .

# Create spark-master container
docker run -d --network bridge --name spark-master -e SPARK_TYPE=master uq/spark
master=spark://$(docker inspect -f '{{.NetworkSettings.IPAddress}}' spark-master):7077

# Create spark-worker containers
docker run -d --network bridge --name spark-worker-1 -e SPARK_TYPE=slave -e SPARK_MASTERS=$master -e SPARK_WORKER_CORES=2 uq/spark

docker run -d --network bridge --name spark-worker-2 -e SPARK_TYPE=slave -e SPARK_MASTERS=$master -e SPARK_WORKER_CORES=2 uq/spark

# Go into spark-master
docker exec -it spark-master /bin/bash

# Browse spark using Lynx to make sure that there are two workers
lynx 127.0.0.1:8080