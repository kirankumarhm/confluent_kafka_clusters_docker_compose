
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-collection-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-product-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-order-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-order-transaction-create   --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-order-fulfilled-create   --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-fulfillments-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-billinga-attempts  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic shopify-checkout-create  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093
docker-compose -f kafka-docker-compose.yml exec broker0 kafka-topics --create --topic myTopic  --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server broker0:9092,broker1:9093

