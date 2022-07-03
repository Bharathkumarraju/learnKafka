# in one terminal
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>hi hello hw r u
>other message
>another one
>still a message
>one message
>two messages
>three messages
>four messages
>five messages
>six messages
>seven messages
>eight messages
>nine messages


# in other terminal
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
still a message
two messages
three messages
four messages
five messages
six messages
eight messages


# in another terminal
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
one message
seven messages
nine messages





bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>1
>2
>3
>4
>5
>6
>7
>8
>9
>10
>11
>12
>12
>14
>13
>12
>21
>21
>3
>23
>4
>5
>4
>5
>34
>23
>12
>
>4
>5
>45
>
>45
>3
>

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
1
2
3
4
5
6
7
8
9
10
11
12
12
14
13
12
21
21
3
23
4
5
4
5
34
23
12

4
5
45

45
3
