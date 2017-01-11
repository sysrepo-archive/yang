#!/bin/bash

# YANG modules of Unix/Linux applications that use sysrepo as the datastore
applications=(
    "https://raw.githubusercontent.com/sysrepo/dnsmasq-sysrepo/master/yang/sysrepo-dnsmasq%402016-01-22.yang" 
    "https://raw.githubusercontent.com/Igalia/snabb/lwaftr/src/lib/yang/snabb-softwire-v1.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo-plugin-raspberry/master/yang/sysrepo-raspberry-demo.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo-plugin-kea/master/ietf-kea-dhcpv6%402016-07-16.yang"
)

# YANG modules used internally in sysrepo datastore
internal=(
    "https://raw.githubusercontent.com/sysrepo/sysrepo/master/yang/sysrepo-persistent-data.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo/devel/yang/sysrepo-module-dependencies.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo/devel/yang/sysrepo-notification-store.yang"
)

# YANG modules of networking vendors using sysrepo on their platforms:
vendors=(
)

for i in ${applications[@]}; 
do
    wget -N -P applications/ $i
done

for i in ${internal[@]};
do
    wget -N -P internal/ $i
done

for i in ${vendors[@]};
do
    wget -N -P vendors/ $i
done
