# Confluent Kafka 3 Node Clusters using docker compose

Components of the docker compose:

1. Kafka Brokers - 3 Nodes
2. Zookeeper Server
3. Schema Registry
4. Kafka Connect
5. KSQL Server
6. REST Proxy
7. KSQL datagen - Examples
8. AKHQ - Web UI for Kafka


   
##### Pre-requisite
Before running docker compose file folders needs to be create for the volume mappings.
```
mkdir -p data/zookeeper/{data,logs}
mkdir -p data/broker0/{data,logs}
mkdir -p data/broker1/{data,logs}
mkdir -p data/broker2/{data,logs}
```

```
docker compose -f kafka-docker-compose.yml up -d
```


In order to do health check we need to set the environment variable in the zookeeper service

```
KAFKA_OPTS: "-Dzookeeper.4lw.commands.whitelist=*"
```

After that we can do health check

```
    healthcheck:
      test: ["CMD-SHELL", "echo srvr | nc localhost 2181 | grep 'Mode: standalone'"] # Health check command
      interval: 30s
      timeout: 10s
      retries: 10
```

### Note :
If you are running on the AWS ec2 instance then provide the public host name in the EXTERNAL

KAFKA_ADVERTISED_LISTENERS: INTERNAL://broker0:29092,EXTERNAL://ec2-xx-xxx-xxx-xx.ap-south-x.compute.amazonaws.com:9092

If you are running on the local environment then provide the localhost in the EXTERNAL
KAFKA_ADVERTISED_LISTENERS: INTERNAL://broker0:29092,EXTERNAL://localhost:9092
