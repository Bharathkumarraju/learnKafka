1. We will first run kafka connect wikimedia source connctor to take data from wikimedia and insert into kafka
2. And then we will run kafka connect elastic search sink connector to send data into opensearch

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia % pwd
/Users/bahrathkumaraju/kafka_2.13-3.2.0/connectors/kafka-connect-wikimedia
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia % ls -rtlh
total 0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia % cp ~/Downloads/kafka-connect-wikimedia-1.0-all.jar .
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia % ls -rtlh
total 33904
-rw-r--r--@ 1 bahrathkumaraju  staff    17M Jul 14 10:14 kafka-connect-wikimedia-1.0-all.jar
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro kafka-connect-wikimedia % cd ..
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors % unzip ~/Downloads/confluentinc-kafka-connect-elasticsearch-13.1.0.zip
Archive:  /Users/bahrathkumaraju/Downloads/confluentinc-kafka-connect-elasticsearch-13.1.0.zip
   creating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/
   creating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-dataformat-cbor-2.13.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-highlighter-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/t-digest-3.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/log4j-api-2.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/commons-logging-1.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/parent-join-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/rank-eval-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/version.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-commons-lang3-3.4.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/slf4j-api-1.7.30.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-analyzers-common-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/LICENSE
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-httpcore-4.4.4.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-secure-sm-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-core-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/README.md
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-guava-18.0.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-core-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-join-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-cli-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/hppc-0.8.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-commons-codec-1.9.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-x-content-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-queries-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/commons-codec-1.15.jar
   creating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/notices/
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses.html
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/snakeyaml-1.27.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-plugin-classloader-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/httpclient-4.5.13.jar
   creating: confluentinc-kafka-connect-elasticsearch-13.1.0/etc/
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-rest-high-level-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/notices/NOTICE-httpcore-4.4.4.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/etc/quickstart-elasticsearch.properties
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/notices/NOTICE-httpclient-4.5.1.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/manifest.json
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-dataformat-smile-2.13.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-queryparser-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/httpcore-4.4.13.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lang-mustache-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/notices/NOTICE-httpcore-nio-4.4.4.txt
   creating: confluentinc-kafka-connect-elasticsearch-13.1.0/assets/
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-dataformat-yaml-2.13.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-backward-codecs-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jopt-simple-5.0.4.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/joda-time-2.10.10.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/notices/NOTICE-httpasyncclient-4.1.1.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/assets/elasticsearch.jpg
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-lz4-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-grouping-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-sandbox-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/HdrHistogram-2.1.9.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jna-5.10.0.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-jest-2.0.0.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/assets/confluent.png
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lz4-java-1.7.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-httpclient-4.5.1.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-httpasyncclient-4.1.1.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-annotations-2.13.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-memory-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-spatial3d-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/httpasyncclient-4.1.4.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/mapper-extras-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/common-utils-6.2.3.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/kafka-connect-elasticsearch-13.1.0.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-jest-common-2.0.0.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-geo-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-misc-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/lucene-suggest-8.11.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/aggs-matrix-stats-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/compiler-0.9.6.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-commons-logging-1.2.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-databind-2.13.2.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/doc/licenses/LICENSE-httpcore-nio-4.4.4.txt
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/jackson-core-2.13.2.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/elasticsearch-rest-client-7.17.1.jar
  inflating: confluentinc-kafka-connect-elasticsearch-13.1.0/lib/httpcore-nio-4.4.12.jar
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors % ls -rtlh
total 0
drwxr-xr-x  3 bahrathkumaraju  staff    96B Jul 14 10:14 kafka-connect-wikimedia
drwxr-xr-x@ 7 bahrathkumaraju  staff   224B Jul 14 10:15 confluentinc-kafka-connect-elasticsearch-13.1.0
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors % mv confluentinc-kafka-connect-elasticsearch-13.1.0 kafka-connect-elasticsearch
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors %
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors % ls -rtlh
total 0
drwxr-xr-x  3 bahrathkumaraju  staff    96B Jul 14 10:14 kafka-connect-wikimedia
drwxr-xr-x@ 7 bahrathkumaraju  staff   224B Jul 14 10:15 kafka-connect-elasticsearch
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro connectors %
