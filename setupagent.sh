#!/bin/bash
echo "Setting up web agent"
echo "$PASSWORD" > /opt/.pwd
chmod 400 /opt/.pwd
echo "/opt/web_agents/apache24_agent/bin/agentadmin --s "/etc/httpd/conf/httpd.conf" http://openam1.example.com:8080/openam http://openam1.example.com:80 / webagent /opt/.pwd  --changeOwner --acceptLicence --forceInstall"

/opt/web_agents/apache24_agent/bin/agentadmin --s "/etc/httpd/conf/httpd.conf" http://openam1.example.com:8080/openam http://openam1.example.com:80 / webagent /opt/.pwd --changeOwner --acceptLicence --forceInstall

