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


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          50              50              0               -               -               -
my-first-consumer-group first-topic     1          35              35              0               -               -               -
my-first-consumer-group first-topic     2          44              44              0               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

--------------------------------------------------------------------------------------------------------------------------------------------------------------------->

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>one
>two
>three
>four
>five
>six
>seven
>eight
>nine


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
six
nine

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
seven
eight




bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                           HOST            CLIENT-ID
my-first-consumer-group first-topic     0          51              51              0               console-consumer-6c73f70b-9f6a-4d69-8a82-7a4aac49d2ff /127.0.0.1      console-consumer
my-first-consumer-group first-topic     1          36              36              0               console-consumer-6c73f70b-9f6a-4d69-8a82-7a4aac49d2ff /127.0.0.1      console-consumer
my-first-consumer-group first-topic     2          46              46              0               console-consumer-7b7d0d24-8d74-479c-9487-ed6ca1a145ad /127.0.0.1      console-consumer
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %








