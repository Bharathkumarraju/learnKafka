All the consumers in an application reas data as consumer groups.

In consumer groups we can define consumer offsets
   1. kafka stores the offsets at which a consumer group has been reading
   2. the offsets committed are in kafka topic named __consumer_offsets(2 underscores in the beginning because its an internal kafka topic)



Delivery semantics for the consumers: Consumer offsets
1. At least once
2. At most once
3. Exactly once

