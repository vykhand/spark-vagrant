# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

#PATH=$PATH:$HOME/bin

export PATH=/opt/spark/bin:/home/spark/anaconda/bin:$PATH
export IPYTHON_OPTS="notebook --no-mathjax --no-browser --port 12000 --ip='0.0.0.0'"

