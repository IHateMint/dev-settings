#!/bin/sh
apt-get update
apt-get install zip
apt-get install unzip
apt-get install openjdk-8-jdk -y
wget http://apache.mirror.cdnetworks.com/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
tar -xvzf ~/spark-2.4.4-bin-hadoop2.7.tgz
mv ~/spark-2.4.4-bin-hadoop2.7.tgz /opt/spark

wget http://www.scala-lang.org/files/archive/scala-2.11.8.deb
dpkg -i scala-2.11.8.deb
apt-get install scala -y

wget https://bintray.com/artifact/download/sbt/debian/sbt-1.3.5.deb
dpkg -i sbt-1.3.5.deb
apt-get install sbt -y

wget https://sdk-for-java.amazonwebservices.com/latest/aws-java-sdk.zip
unzip aws-java-sdk.zip

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc

# SPARK Settings
echo 'export SPARK_HOME=/opt/spark' >> ~/.bashrc
echo 'export PATH=$SPARK_HOME/bin:$PATH' >> ~/.bashrc
echo 'export PYSPARK=/usr/bin/python3' >> ~/.bashrc

# SCALA Settings
echo 'export SCALA_HOME=/usr/bin/sbt' >> ~/.bashrc
echo 'export PATH=$SCALA_HOME/bin:$PATH' >> ~/.bashrc

source .bashrc
