Topics should have a replication factor > 1 (usually between 2 and 3)
This way if a broker is down, another broker can serve the data.


Concept of Leader for a partition
---------------------------------------->

At anytime only one broker can be a leader for a given partition

And the rule is Producers can only send data to the broker which is leader of partiton.

Each partition has one leader and multiple ISR(in-sync replica)

Kafka producers can only write to the leader broker for a partition.
Kafka consumers by default will read from the leader broker for a partition.

