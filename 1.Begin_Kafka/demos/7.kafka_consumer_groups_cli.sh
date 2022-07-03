bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list
my-first-consumer-group
my-second-consumer-group
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          48              48              0               -               -               -
my-first-consumer-group first-topic     1          34              34              0               -               -               -
my-first-consumer-group first-topic     2          42              42              0               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>one
>two
>three
>four
>five

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          48              50              2               -               -               -
my-first-consumer-group first-topic     1          34              35              1               -               -               -
my-first-consumer-group first-topic     2          42              44              2               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

so LAG is 5 messages as shown above.


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
five
two
four
one
three







