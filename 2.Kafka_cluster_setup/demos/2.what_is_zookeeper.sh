Zookeeper provides multiple features for distributed applications

1. Distributed configuration management
2. Self election / consensus building
3. coordination and locks
4. Key value store

 Zookeeper also used by such Hadoop, Kafka etc...

 /

 /app

 /app/finance

 /app/sales

 Zookeeper internal data structure is tree


 Each node is called zNode .. each zNode has a path


Role of zookeeper in kafka:
------------------------------------------>
1. Brokers registration
2, Maintaining a list of topics and their configs
3. Performing leader elections
4. stroing the kafka cluster_id
5. Storing ACLs
6. Quotas configuration

