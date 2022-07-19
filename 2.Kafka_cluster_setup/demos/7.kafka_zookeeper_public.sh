server1_ip: 3.0.94.215:2181

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ~ % zookeeper-shell.sh 3.0.94.215:2181
Connecting to 3.0.94.215:2181
Welcome to ZooKeeper!
JLine support is disabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
ls /
[kafka, zookeeper]



ubuntu@ip-172-31-9-1:~/kafka$ base64 /dev/urandom | head -c 10000 | egrep -ao "\w" | tr -d '\n' > file10KB.txt
ubuntu@ip-172-31-9-1:~/kafka$ ls -rtlh file10KB.txt
-rw-rw-r-- 1 ubuntu ubuntu 9.4K Jul 19 04:04 file10KB.txt
ubuntu@ip-172-31-9-1:~/kafka$

