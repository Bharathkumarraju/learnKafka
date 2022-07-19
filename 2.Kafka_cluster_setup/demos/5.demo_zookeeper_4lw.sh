ubuntu@ip-172-31-9-1:~/kafka$ echo "conf" | nc localhost 2181
clientPort=2181
secureClientPort=-1
dataDir=/data/zookeeper/version-2
dataDirSize=67109474
dataLogDir=/data/zookeeper/version-2
dataLogSize=67109474
tickTime=2000
maxClientCnxns=0
minSessionTimeout=4000
maxSessionTimeout=40000
clientPortListenBacklog=-1
serverId=1
initLimit=10
syncLimit=5
electionAlg=3
electionPort=3888
quorumPort=2888
peerType=0
membership:
server.1=zookeeper1:2888:3888:participant
server.2=zookeeper2:2888:3888:participant
server.3=zookeeper3:2888:3888:participant
version=0ubuntu@ip-172-31-9-1:~/kafka$ echo "ruok" | nc zookeeper1 2181
imokubuntu@ip-172-31-9-1:~/kafka$
ubuntu@ip-172-31-9-1:~/kafka$
ubuntu@ip-172-31-9-1:~/kafka$
