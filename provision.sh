#yum install -y ntp
#yum install -y wget
#chkconfig ntpd on
#service ntpd start
#wget http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.4.3.38/ambari.repo 
#cp ambari.repo /etc/yum.repos.d
#yum install -y ambari-server

groupadd spark
useradd -m spark -g spark
echo -e "spark\nspark"| passwd --stdin spark

yum -y install java-1.7.0-openjdk

cd /home/spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.3.1-bin-hadoop2.4.tgz


tar -xzf spark-1.3.1-bin-hadoop2.4.tgz

ln -s /home/spark/spark-1.3.1-bin-hadoop2.4 /opt/spark
cp /vagrant/spark-conf/log4j.properties /opt/spark/conf

chown spark:spark /opt/spark
chown -R spark:spark /home/spark/spark-1.3.1-bin-hadoop2.4



wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.2.0-Linux-x86_64.sh
chmod +x Anaconda-2.2.0-Linux-x86_64.sh
chown spark:spark Anaconda-2.2.0-Linux-x86_64.sh


su - spark -c /vagrant/setup-ipython.sh
