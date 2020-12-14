#/bin/sh

# Install docker
sudo apt-get update
sudo apt-get install docker

# ref:
# https://internetofthing.io/post/how-to-setup-raspberry-pi-as-an-azure-devops-agent

# install python 3 (should be 3.7)
sudo apt-get install python3 --upgrade

# install some python dependencies
sudo apt-get install python3-setuptools python3-dev build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -y

# install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

# make python 3.7 the default
#wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz && tar xf Python-3.7.4.tar.xz && cd Python-3.7.4 && ./configure && make -j 4 && sudo make altinstall && cd ..

# Install Azure CLI
curl -L https://aka.ms/InstallAzureCli | bash && exec -l $SHELL
#press enter twice

# sflemx7ur5j76iqyh346fd4jdydxlnnkippthce5yqqss5u55a4q

# install Agent
wget https://vstsagentpackage.azureedge.net/agent/2.179.0/vsts-agent-linux-arm-2.179.0.tar.gz
sudo mkdir /azagent
cd /azagent
sudo tar zxvf ~/vsts-agent-linux-arm-2.179.0.tar.gz
./config.sh
# https://dev.azure.com/jparbic


