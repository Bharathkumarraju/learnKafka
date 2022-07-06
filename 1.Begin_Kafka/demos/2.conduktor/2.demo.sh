bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --create --topic demo_java --partitions 3 --replication-factor 1
WARNING: Due to limitations in metric names, topics with a period ('.') or underscore ('_') could collide. To avoid issues it is best to use either, but not both.
Created topic demo_java.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --describe --topic demo_java
Topic: demo_java	TopicId: Lkw-oEQiQXqJlS8xWwH1tg	PartitionCount: 3	ReplicationFactor: 1	Configs:
	Topic: demo_java	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: demo_java	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: demo_java	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

