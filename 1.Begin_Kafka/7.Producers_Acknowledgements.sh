Producer can choose to recieve acknowledgement of data writes
acks=0 producer will not wait for acknowledgement - possible data loss
acks=1 producer will wait for leader acknowledgement - limited data loss
acks=all leader + replicas acknowledgement - no data loss
