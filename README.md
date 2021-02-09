# Event Driven App
Ruby on Rails App to demonstrate event streaming using kafka.
## Installing Kafka for Mac
Prerequisite: Java installed on Mac.

To install do:

```bash
$ brew install kafka
```

Run the kafka & zookeeper servers:

```bash
$ zookeeper-server-start /usr/local/etc/kafka/zookeeper.properties
$ kafka-server-start /usr/local/etc/kafka/server.properties
```

To run as background services do:

```bash
$ brew services start zookeeper
$ brew services start kafka
```

Edit configuration of kafka at `/usr/local/etc/kafka/server.properties`.

Edit configuration of zookeeper at `/usr/local/etc/kafka/zookeeper.properties`.

## Playing with Kafka on the terminal
### Create Kafka Topic:
A topic is a category or feed name to which records are published. Topics in Kafka are always multi-subscriber; that is, a topic can have zero, one, or many consumers that subscribe to the data written to it.

```bash
$ kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
```
Here we have created a topic name test.

### Initialize Producer console:
Now we will initialize the Kafka producer console, which will listen to localhost at port 9092 at topic test :

```bash
$ kafka-console-producer --broker-list localhost:9092 --topic test

>send first message
>send second message
>wow it is working
```
### Initialize Consumer console:
Now we will initialize the Kafka consumer console, which will listen to bootstrap server localhost at port 9092 at topic test from beginning:

```bash
$ kafka-console-consumer --bootstrap-server localhost:9092 --topic test --from-beginning

send first message
send second message
wow it is working
```

## Contributors
Rubyist.
