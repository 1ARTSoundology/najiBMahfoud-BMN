# najiBMahfoud-BMN
linusec

#The Best Linux Kernel Settings to Mitigate DDoS
Another common mistake is that people don’t use optimized kernel settings to better mitigate the effects of DDoS attacks.

Note that this guide focuses on CentOS 7 as the operating system of choice. CentOS 7 includes a recent version of iptables and support of the new SYNPROXY target.

We won’t cover every single kernel setting that you need to adjust in order to better mitigate DDoS with iptables.

Instead, we provide a set of CentOS 7 kernel settings that we would use. Just put the below in your /etc/sysctl.conf file and apply the settings with sysctl -p.

Anti-DDoS Kernel Settings (sysctl.conf)
