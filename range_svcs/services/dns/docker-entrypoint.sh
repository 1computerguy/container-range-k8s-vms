#!/bin/bash

ip addr add $IP_ADDR/$LEN dev $INT
ip link set mtu 1450 dev $INT
ip r d default
ip r a default via $GATEWAY

exec /bin/sh -c "/sbin/entrypoint.sh $NAMED"