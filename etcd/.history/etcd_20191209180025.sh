#!/bin/bash

CLUSTER_STATE=new
TOKEN=exampletoken
NAME_1=machine-1
HOST_1=`host db1 | awk '{print $4}'`
CLUSTER=${NAME_1}=http://${HOST_1}:2380

THIS_NAME=`hostname`
THIS_IP=`hostname -I | awk '{$1=$1;print}'`
etcd --data-dir=data.etcd --name ${THIS_NAME} \
	--initial-advertise-peer-urls http://${THIS_IP}:2380 \
	--listen-peer-urls http://${THIS_IP}:2380 \
	--advertise-client-urls http://${THIS_IP}:2379 \
	--listen-client-urls http://${THIS_IP}:2379 \
	--initial-cluster ${CLUSTER} \
	--initial-cluster-state ${CLUSTER_STATE} \
	--initial-cluster-token ${TOKEN}
