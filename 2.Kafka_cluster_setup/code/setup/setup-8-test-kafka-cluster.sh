#!/bin/bash

# we can create topics with replication-factor 3 now!
bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic second_topic --replication-factor 3 --partitions 3

# we can publish data to Kafka using the bootstrap server list!
bin/kafka-console-producer.sh --broker-list kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic

# we can read data using any broker too!
bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic --from-beginning

# we can create topics with replication-factor 3 now!
bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic third_topic --replication-factor 3 --partitions 3

# let's list topics
bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# publish some data
bin/kafka-console-producer.sh --broker-list kafka1:9092,kafka2:9092,kafka3:9092 --topic third_topic

# let's delete that topic
bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic third_topic

# it should be deleted shortly:
bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
