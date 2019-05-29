********************
* VirtualBox Image *
********************

login user   : wso2am
password     : Welkom123
password root: Welkom123

hostname     : wso2demo.qualogy.com
ip-address   : 192.168.124.101 (fixed)

ssh from local machine to this VM
ssh wso2am@192.168.124.101


*************************
* Enterprise Integrator *
*************************

installation location: /usr/lib64/wso2/wso2ei/6.4.0
logfiles location    : /usr/lib64/wso2/wso2ei/6.4.0/repository/logs

tail main logfile:
tail -f /usr/lib64/wso2/wso2ei/6.4.0/repository/logs/wso2carbon.log

Deployment:
sudo cp /home/wso2am/Desktop/Host/workspace/CountriesService/CountriesServiceCAR/target/CountriesServiceCAR_1.0.0.car /usr/lib64/wso2/wso2ei/6.4.0/repository/deployment/server/carbonapps

check timestamp:
ls -ltr /usr/lib64/wso2/wso2ei/6.4.0/repository/deployment/server/carbonapps


Administration console:
https://localhost:9443/carbon/