ubuntu@ip-172-31-9-1:~/kafka$ ./bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
ubuntu@ip-172-31-9-1:~/kafka$ ./bin/zookeeper-shell.sh  localhost:2181
Connecting to localhost:2181
Welcome to ZooKeeper!
JLine support is disabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
ls /
[zookeeper]



ubuntu@ip-172-31-9-1:~/kafka$ ./bin/zookeeper-shell.sh localhost:2181
Connecting to localhost:2181
Welcome to ZooKeeper!
JLine support is disabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null




ubuntu@ip-172-31-9-1:~/kafka$ ./bin/zookeeper-shell.sh localhost:2181
Connecting to localhost:2181
Welcome to ZooKeeper!
JLine support is disabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
ls /
[zookeeper]
create /my-node "foo"
Created /my-node
get /my-node
foo
ls /
[my-node, zookeeper]
get /my-node
foo
set /my-node "new data"
get /my-node
new data
create /my-node/new-node "some data"
Created /my-node/new-node
create /my-node/another-node ""
Created /my-node/another-node
ls /
[my-node, zookeeper]
ls /my-node
[another-node, new-node]
get /my-node
new data
get /my-node/new-node
some data
get /my-node/another-node
