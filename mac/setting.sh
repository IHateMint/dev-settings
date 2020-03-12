# Necessaries
brew install wget

# Dev Tools
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
# java -version

wget http://apache.tt.co.kr/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
tar -xvzf ~/spark-2.4.5-bin-hadoop2.7.tgz
mv ~/spark-2.4.5-bin-hadoop2.7 /opt/spark


