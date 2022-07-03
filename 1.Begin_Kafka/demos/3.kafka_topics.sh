bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --topic first-topic --create
Created topic first-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list
first-topic
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --topic first-topic --create --partitions 3
Error while executing topic command : Topic 'first-topic' already exists.
[2022-07-03 11:13:45,248] ERROR org.apache.kafka.common.errors.TopicExistsException: Topic 'first-topic' already exists.
 (kafka.admin.TopicCommand$)
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --topic third-topic --create --partitions 3 --replication-factor 2
Error while executing topic command : Replication factor: 2 larger than available brokers: 1.
[2022-07-03 11:14:59,563] ERROR org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 2 larger than available brokers: 1.
 (kafka.admin.TopicCommand$)
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --topic third-topic --create --partitions 3 --replication-factor 1
Created topic third-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list
first-topic
second-topic
third-topic
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic third-topic
Topic: third-topic	TopicId: DiZZw6ETQVikOArn88e3GA	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: third-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: third-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: third-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic second-topic
Topic: second-topic	TopicId: oH1Vq2OnTCOpERIKWOcniw	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: second-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: second-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: second-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic first-topic
Topic: first-topic	TopicId: euXpFj42StWzNh4omj9rjw	PartitionCount: 1	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: first-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --describe
Topic: first-topic	TopicId: euXpFj42StWzNh4omj9rjw	PartitionCount: 1	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: first-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
Topic: second-topic	TopicId: oH1Vq2OnTCOpERIKWOcniw	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: second-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: second-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: second-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
Topic: third-topic	TopicId: DiZZw6ETQVikOArn88e3GA	PartitionCount: 3	ReplicationFactor: 1	Configs: segment.bytes=1073741824
	Topic: third-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: third-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: third-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % for i in $(kafka-topics.sh --bootstrap-server localhost:9092 --list)
for> do
for> kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $i
for> done
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-topics.sh --bootstrap-server localhost:9092 --list

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %






