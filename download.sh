#!/bin/bash

# YANG modules of Unix/Linux applications that use sysrepo as the datastore
applications=(
    "https://raw.githubusercontent.com/sysrepo/dnsmasq-sysrepo/master/yang/sysrepo-dnsmasq%402016-01-22.yang" 
    "https://raw.githubusercontent.com/sartura/snabb/sysrepo/src/program/lwaftr/loadtest/sysrepo-lwaftr-loadtest%402016-06-09.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo-plugin-raspberry/master/yang/sysrepo-raspberry-demo.yang"
    "https://raw.githubusercontent.com/sysrepo/sysrepo-plugin-kea/master/ietf-kea-dhcpv6%402016-07-16.yang"
)


# YANG modules used internally in sysrepo datastore
internal=(
    "https://raw.githubusercontent.com/sysrepo/sysrepo/master/yang/sysrepo-persistent-data.yang"
)

for i in ${applications[@]}; 
do
    wget -N -P applications/ $i
done

for i in ${internal[@]};
do
    wget -N -P internal/ $i
done

