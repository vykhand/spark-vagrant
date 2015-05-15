#yum install -y ntp
#yum install -y wget
#chkconfig ntpd on
#service ntpd start
#wget http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.4.3.38/ambari.repo 
#cp ambari.repo /etc/yum.repos.d
#yum install -y ambari-server

groupadd spark
useradd -m spark -g spark
echo -e spark\nspark | passwd --stdin spark

yum -y install java-1.7.0-openjdk

cd /home/spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.3.1-bin-hadoop2.4.tgz
tar -xzf spark-1.3.1-bin-hadoop2.4.tgz


ln -s /home/spark/spark-1.3.1-bin-hadoop2.4 /opt/spark
chown -R spark:spark /opt/spark
echo  'export PATH=/opt/spark/bin:$PATH' >> /home/spark/.bash_profile
