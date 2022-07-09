wikimedia --> kafka producer --> kafka topics --> kafka consumer --> opensearch


Kafka Connect and Kafka Streams


Recenct Change stream: https://stream.wikimedia.org/v2/stream/recentchange
demo: https://codepen.io/Krinkle/pen/BwEKgW?editors=1010
demo: https://esjewett.github.io/wm-eventsource-demo/

Java Libraries:
1. OKhttp3
2. Okhttp-eventsource


https://mvnrepository.com/artifact/com.squareup.okhttp3/okhttp/4.9.3


acks=all(acks=-1)

producer acks=all and min.insync.replicas

acks=all and min.insync.replicas=2 is the most popular option for data durability and availability and allows us to withstand at most the loss of one broker.


Idempotent Producer --> does not allow duplictae data.
producerProps.put("enable.idempotence", true);

