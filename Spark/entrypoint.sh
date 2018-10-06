#!/bin/bash
# run the command
if [[ "${SPARK_TYPE}" == "master" ]]; then

# run master
/spark/sbin/start-master.sh &
sparkPid=$!
elif [[ "${SPARK_TYPE}" == "slave" ]]; then

# run slave with options
/spark/sbin/start-slave.sh spark://${SPARK_MASTERS}:7077 &
sparkPid=$!
fi

# wait for spark to exit
wait ${sparkPid}