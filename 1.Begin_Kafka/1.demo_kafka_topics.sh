kafka Topic: a particular stream of data in kafka cluster.

kafka topic can be made up of several partitions

when you write data to partitions it is incremented by a number called incerementa id in turn called "kafka partition offset"

Topics, Partitions and offsets...

Once the data is written to a partition it can not be changed(immutability)
Data in kafka topic kept only for limited period of time(default is one week but it is configurable)


----------------------------------------------------------------------------------------------------------------------------------->

Producers write data to kafka topics(which are made up of partitions)
Producer can choose to send a key with the message(string, number, binary etc...)
if key=null, data is sent round robin.(partition 0, then 1, then 2 etc...)
if key!=null, then all messages for that key will always goes to the same partition(hashing)


------------------------------------------------------------------------------------------------------------------------------------->

kafka message anatomy:

key - binary (can be null) --> value - binary(can be null) --> Compression Type(none, gzip, sanppy, lz4, zsts) -->
Heaers(Optional) key - value --> Partition + offset --> timestamp



