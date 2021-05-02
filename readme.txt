The aim of this project is to launch multi-service cluster using Kubernetes.
Requiered services are: Nginx, SQL, Wordpress, Phpmyadmin, FTPS-server, Grafana with own database InfluxDB. InfluxDB should keep metrics form every node.
Details are described in "Subject" file.
There is the "NORM", which describes rules for the code. Some of them are below:
- each file can consists of no more than 5 functions;
- each function has no more than 4 parameteres;
- each function consists of no more than 25 lines; 