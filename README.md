# Spark Vagrant file

## Into
This is a Vagrant confirguration that builds VirtualBox image with Apache Spark and ipython.
It will be convenient for those doing tutorials or willing to do "data science" kind of work locally without installing stuff

## Versions

Currently software installed on the box is the following:

  * [Apache spark 1.3.1 prebuilt for Hadoop 2.4+](https://spark.apache.org/downloads.html)
  * [Anaconda Python Scientific Distribution 2.2.0 with Python 2.7](http://continuum.io/downloads#all)
 
## Other configuration

The box configures the following ports:
   * 12000 for ipython
   * 4040 for Spark task manager console
   * 2222 for ssh
   

## Using the box

   * Install Vagrant, VirtualBox and git
   * go to some directory you want to use for VM, and run the following:

```
git clone https://github.com/vykhand/spark-vagrant
cd spark-vagrant
vagrant up
```

