1. zookeeper manages brokers(keeps a list of them)

2. zookeeper helps in performing leader election for partitions

3. zookeeper sends notifications to kafka in case of changes(new topic, broker dies, broker comes up, delete topics..etc)


kafka 2.x can not work without zookeeper.
kafka 3.x can work with zookeeper(KIP-500) - using kafka Raft(KRaft) instead.
kafka 4.x will not have zookeeper






