bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list
my-first-consumer-group
my-second-consumer-group
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                           HOST            CLIENT-ID
my-first-consumer-group first-topic     0          51              51              0               console-consumer-7b7d0d24-8d74-479c-9487-ed6ca1a145ad /127.0.0.1      console-consumer
my-first-consumer-group first-topic     1          36              36              0               console-consumer-7b7d0d24-8d74-479c-9487-ed6ca1a145ad /127.0.0.1      console-consumer
my-first-consumer-group first-topic     2          46              46              0               console-consumer-7b7d0d24-8d74-479c-9487-ed6ca1a145ad /127.0.0.1      console-consumer
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          51              51              0               -               -               -
my-first-consumer-group first-topic     1          36              36              0               -               -               -
my-first-consumer-group first-topic     2          46              46              0               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --reset-offsets --to-earliest --execute --all-topics  --group my-first-consumer-group

GROUP                          TOPIC                          PARTITION  NEW-OFFSET
my-first-consumer-group        first-topic                    1          0
my-first-consumer-group        first-topic                    0          0
my-first-consumer-group        first-topic                    2          0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          0               51              51              -               -               -
my-first-consumer-group first-topic     1          0               36              36              -               -               -
my-first-consumer-group first-topic     2          0               46              46              -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
I love learning the TECh
this is another message
 Bharathkumar
other message
three messages
five messages
thirteen messages
fifteen messages
seventeen messages
twenty messages
twentytwo messages
25 message
27 message
29 message
31 message
33 message
35 message
37 message
40 message
42 message
45 message
1 message
3 message
1
2
9
15
1
3
5
10
14
13
12
five
seven
Hi Hello everyone
Especially cloud and Devops
to the kafka topic first-topic
hi
hw r u
hi hello hw r u
still a message
two messages
four messages
six messages
eight messages
ten messages
twelve messages
sixteen messages
nineteen messages
twentyone messages
twentythree messages
28 message
32 message
34 message
36 message
38 message
41 message
43 message
46 message
2 message
5
6
7
87
6
7
8
12
16
4
11
12
21
21
3
23
34
23
12

45
3
two
four
eight
THis is bharathkumar from singapore
hi hello
 example value
 bharathkumarraju
hello
this is bharath
another one
one message
seven messages
nine messages
eleven messages
fourteen messages
eighteen messages
twentyfour messages
26 message
30 message
39 message
44 message
47 message
4
8
3
4
5
10
11
13
14
2
6
7
8
9
12
4
5
4
5

4
5
45
one
three
six
nine


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                           HOST            CLIENT-ID
my-first-consumer-group first-topic     0          51              51              0               console-consumer-f6337bf4-02e6-4c51-a228-4b28f3624daa /127.0.0.1      console-consumer
my-first-consumer-group first-topic     1          36              36              0               console-consumer-f6337bf4-02e6-4c51-a228-4b28f3624daa /127.0.0.1      console-consumer
my-first-consumer-group first-topic     2          46              46              0               console-consumer-f6337bf4-02e6-4c51-a228-4b28f3624daa /127.0.0.1      console-consumer
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --reset-offsets --shift-by -2  --execute --all-topics  --group my-first-consumer-group

GROUP                          TOPIC                          PARTITION  NEW-OFFSET
my-first-consumer-group        first-topic                    1          34
my-first-consumer-group        first-topic                    0          49
my-first-consumer-group        first-topic                    2          44
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          49              51              2               -               -               -
my-first-consumer-group first-topic     1          34              36              2               -               -               -
my-first-consumer-group first-topic     2          44              46              2               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --group my-first-consumer-group
five
seven
four
eight
six
nine
^CProcessed a total of 6 messages
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-consumer-group

Consumer group 'my-first-consumer-group' has no active members.

GROUP                   TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
my-first-consumer-group first-topic     0          51              51              0               -               -               -
my-first-consumer-group first-topic     1          36              36              0               -               -               -
my-first-consumer-group first-topic     2          46              46              0               -               -               -
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %




