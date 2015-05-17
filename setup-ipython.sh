./Anaconda-2.2.0-Linux-x86_64.sh -bf
cat /vagrant/.bash_profile > ~/.bash_profile
source ~/.bash_profile
nohup pyspark &
