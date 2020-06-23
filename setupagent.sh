#!/bin/bash
echo "Setting up web agent"
echo "$PASSWORD" > /opt/.pwd
chmod 400 /opt/.pwd
echo "/opt/web_agents/apache24_agent/bin/agentadmin --s "/etc/httpd/conf/httpd.conf" http://openam1.example.com:8080/openam http://openam1.example.com:80 / webagent /opt/.pwd  --changeOwner --acceptLicence"

/opt/web_agents/apache24_agent/bin/agentadmin --s "/etc/httpd/conf/httpd.conf" http://openam1.example.com:8080/openam http://openam1.example.com:80 / webagent /opt/.pwd --changeOwner --acceptLicence 
chown -R apache /opt/web_agents
echo "192.168.1.181 openam1.example.com" >> /etc/hosts
