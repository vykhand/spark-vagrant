# Spark Vagrant file

## Into
This is a Vagrant confirguration that builds VirtualBox image with Apache Spark and ipython.
It will be convenient for those doing tutorials or willing to do "data science" kind of work locally without installing stuff

## Versions

Currently software installed on the box is the following:

  * [Apache spark 1.3.1 prebuilt for Hadoop 2.4+](https://spark.apache.org/downloads.html)
  * [Anaconda Python Scientific Distribution 2.2.0 with Python 2.7](http://continuum.io/downloads#all)

The box is based on default Vagrant chef/centos65 image that can be taken from [here](https://atlas.hashicorp.com/chef/boxes/centos-6.5).

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

This will bring up the box, after downloading base image and installing all the software.

Then you just need to connect to it from your host machine by opening a browser : localhost:12000, localhost:4040

Note 4040 won't work until you have some tasks running.

## Downloading and running repackaged  box

If you want to avoid building the box, I've packaged the box for you and uploaded it to my Dropbox. I can't promise that it will be available at all times. 

To create your own image based on my box, go to some directory suitable for VM and run:

```
vagrant box add spark-1.3.1-ipython https://www.dropbox.com/s/coi0i4i02j1sshw/spark-1.3.1-ipython.box?dl=1
vagrant init spark-1.3.1-ipython
```

Then add the following configuration to your Vagrant file:

```
config.vm.network :forwarded_port, guest: 12000, host: 12000
config.vm.network :forwarded_port, guest: 4040, host: 4040
```

then run **vagrant up**, wait for the box to come up, login as spark/spark and start ipython:

```
nohup pyspark &
```

-----
With best regards,

Andrey Vylhodtsev
