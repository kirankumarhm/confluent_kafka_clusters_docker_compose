
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic checkout-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic mytopic  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093

