#!/bin/sh

#sed -i "s/ENB_IP/$MY_POD_IP/g" ./srsenb/enb_container.conf
sed -i "s/ENB_IP/$MY_POD_IP/g" ./enb_magma.conf
#sed -i "s/EPC_IP/$EPC_IP/g" ./srsenb/enb_container.conf
sed -i "s/EPC_IP/$EPC_IP/g" ./enb_magma.conf
