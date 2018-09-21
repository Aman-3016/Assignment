#!/bin/bash

sudo apt-get update
sudo apt-get install zabbix-agent -y
sudo systemctl start zabbix-agent
sudo sed -i 's/Server=127.0.0.1/Server=zabbix.opstree.com/' /etc/zabbix/zabbix_agentd.conf
sudo sed -i 's/Hostname=Zabbix/Hostname=192.168.1.11-zabbixagent/' /etc/zabbix/zabbix_agentd.conf
sudo service zabbix-agent restart

