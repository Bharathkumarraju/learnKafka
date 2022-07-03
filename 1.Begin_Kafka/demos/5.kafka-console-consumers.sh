1. consume from tail of the topic.
2. consume from the beginning of the topic.
3. show both key and values in the output.


consume from tail of the topic...for the below command to work we need to produce it first
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic
hi
hello
hw r u
this is bharath
^CProcessed a total of 4 messages
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
>hi
>hello
>hw r u
>this is bharath
>^C%
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic --from-beginning \
> --formatter kafka.tools.DefaultMessageFormatter \
> --property print.timestamp=true \
> --property print.key=true \
> --property print.value=true
CreateTime:1656827140586	null	I love learning the TECh
CreateTime:1656827321205	null	this is another message
CreateTime:1656828944520	name	 Bharathkumar
CreateTime:1656827122613	null	Hi Hello everyone
CreateTime:1656827150589	null	Especially cloud and Devops
CreateTime:1656827331714	null	to the kafka topic first-topic
CreateTime:1656829943549	null	hi
CreateTime:1656829950517	null	hw r u
CreateTime:1656827132236	null	THis is bharathkumar from singapore
CreateTime:1656827316321	null	hi hello
CreateTime:1656828935845	example key	 example value
CreateTime:1656828986168	user_id_1234	 bharathkumarraju
CreateTime:1656829946757	null	hello
CreateTime:1656829956098	null	this is bharath
^CProcessed a total of 14 messages
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ %


