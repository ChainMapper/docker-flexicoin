#!/bin/bash

#datadir="/data/.flexinodes"
#configfile="flexinodes.conf"
#ticker="FLX"
#walletdaemon="flexinodesd"

datadir=$1
configfile=$2
ticker=$3
walletdaemon=$4

configdir="/config"
walletfile="wallet.dat"
echo "Docker $ticker wallet

By: ChainMapper
Website: https://chainmapper.com"

wallet="$configdir/$walletfile"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet $datadir/$walletfile
fi

config="$configdir/$configfile"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config $datadir/$configfile
else
    /gen_config.sh > $datadir/$configfile
fi

echo "Starting $ticker daemon..."
$walletdaemon
