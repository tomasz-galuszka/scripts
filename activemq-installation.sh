# Download ActiveMQ http://activemq.apache.org/download.html
# unpack to a specific directory
# install as a service
sudo chmod -R 777 /home/tomasz/Development
sudo ln -s /home/tomasz/Development/apache-activemq/bin/activemq /etc/init.d/activemq
sudo update-rc.d activemq defaults

# Test installation
sudo service activemq start
sudo service activemq status
ps aux | grep activemq
sudo service activemq stop