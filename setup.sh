#!/bin/bash
minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
minikube addons enable metallb
kubectl apply -f ./srcs/ml_conf.yaml
docker build -t php_img ./srcs/php; kubectl apply -f ./srcs/php/php.yaml
docker build -t nginx_img ./srcs/nginx; kubectl apply -f ./srcs/nginx/nginx.yaml
docker build -t wp_img ./srcs/wp; kubectl apply -f ./srcs/wp/wp.yaml
docker build -t mysql_img ./srcs/sql; kubectl apply -f ./srcs/sql/sql.yaml
docker build -t graf_img ./srcs/grafana; kubectl apply -f ./srcs/grafana/grafana.yaml
docker build -t influx_img ./srcs/influx; kubectl apply -f ./srcs/influx/influx.yaml
docker build -t ftps_img ./srcs/ftps; kubectl apply -f ./srcs/ftps/ftps.yaml