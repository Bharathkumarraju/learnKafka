ubuntu@ip-172-31-35-20:~/kafka$ bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic second_topic --replication-factor 3 --partitions 3
WARNING: Due to limitations in metric names, topics with a period ('.') or underscore ('_') could collide. To avoid issues it is best to use either, but not both.
Created topic second_topic.
ubuntu@ip-172-31-35-20:~/kafka$ bin/kafka-console-producer.sh --broker-list kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic
>hi
>hello
>^Cubuntu@ip-172-31-35-20:~/kafka$ bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic --from-beginning
hi
hello


ubuntu@ip-172-31-19-230:~/kafka$ bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic --from-beginning
hello
hi


ubuntu@ip-172-31-9-1:~/kafka$ bin/kafka-console-consumer.sh --bootstrap-server kafka1:9092,kafka2:9092,kafka3:9092 --topic second_topic --from-beginning
hi
hello




