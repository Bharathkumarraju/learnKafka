bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --create --topic first-topic --partitions 3
Created topic first-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe
Topic: first-topic	TopicId: dqfBw9I_Q6-_-6TuY1yWeg	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: first-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: first-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: first-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>Hi Hello everyone
>THis is bharathkumar from singapore
>I love learning the TECh
>Especially cloud and Devops
>^C%


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic --producer-property acks=all
>hi hello
>this is another message
>to the kafka topic first-topic
>^C%



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic second-topic
>hi hello, world!!!
[2022-07-03 13:54:47,566] WARN [Producer clientId=console-producer] Error while fetching metadata with correlation id 4 : {second-topic=LEADER_NOT_AVAILABLE} (org.apache.kafka.clients.NetworkClient)
[2022-07-03 13:54:47,673] WARN [Producer clientId=console-producer] Error while fetching metadata with correlation id 5 : {second-topic=LEADER_NOT_AVAILABLE} (org.apache.kafka.clients.NetworkClient)
>another message
>i am here
>^C%


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list
first-topic
second-topic
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe
Topic: first-topic	TopicId: dqfBw9I_Q6-_-6TuY1yWeg	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: first-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: first-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: first-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
Topic: second-topic	TopicId: RCzGru6ISI6TFdhvEFU7eA	PartitionCount: 1	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: second-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


Produce to Topics with keys:
------------------------------------->

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic --property parse.key=true --property key.separator=:
>example key: example value
>name: Bharathkumar
>user_id_1234: bharathkumarraju
>^C%
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list
first-topic
second-topic
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

