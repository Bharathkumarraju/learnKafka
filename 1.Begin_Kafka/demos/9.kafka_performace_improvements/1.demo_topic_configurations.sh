bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-topics.sh --bootstrap-server localhost:9092 --list
__consumer_offsets
_schemas
demo-schemaregistry
demo_java
first-topic
second-topic
third-topic
wikimedia-stats-application-bot-count-store-changelog
wikimedia-stats-application-bot-count-store-repartition
wikimedia-stats-application-event-count-store-changelog
wikimedia-stats-application-event-count-store-repartition
wikimedia-stats-application-website-count-store-changelog
wikimedia-stats-application-website-count-store-repartition
wikimedia.recentchange
wikimedia.recentchange.connect
wikimedia.stats.bots
wikimedia.stats.timeseries
wikimedia.stats.website
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-topics.sh --bootstrap-server localhost:9092 --create --topic configured-topic --replication-factor 1 --partitions 3
Created topic configured-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic configured-topic
Topic: configured-topic	TopicId: TPdSvMm6RPK0L6oeDRhZ-A	PartitionCount: 3	ReplicationFactor: 1	Configs:
	Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-configs.sh --bootstrap-server localhost:9092 --entity-type topics --entity-name configured-topic --describe
Dynamic configs for topic configured-topic are:
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-configs.sh --bootstrap-server localhost:9092 --entity-type topics --entity-name configured-topic --alter --add-config min.insync.replicas=2
Completed updating config for topic configured-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-configs.sh --bootstrap-server localhost:9092 --entity-type topics --entity-name configured-topic --describe
Dynamic configs for topic configured-topic are:
  min.insync.replicas=2 sensitive=false synonyms={DYNAMIC_TOPIC_CONFIG:min.insync.replicas=2, DEFAULT_CONFIG:min.insync.replicas=1}
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic configured-topic
Topic: configured-topic	TopicId: TPdSvMm6RPK0L6oeDRhZ-A	PartitionCount: 3	ReplicationFactor: 1	Configs: min.insync.replicas=2
	Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-configs.sh --bootstrap-server localhost:9092 --entity-type topics --entity-name configured-topic --alter --delete-config min.insync.replicas
Completed updating config for topic configured-topic.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic configured-topic
Topic: configured-topic	TopicId: TPdSvMm6RPK0L6oeDRhZ-A	PartitionCount: 3	ReplicationFactor: 1	Configs:
	Topic: configured-topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: configured-topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external % kafka-configs.sh --bootstrap-server localhost:9092 --entity-type topics --entity-name configured-topic --describe
Dynamic configs for topic configured-topic are:
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro external %




