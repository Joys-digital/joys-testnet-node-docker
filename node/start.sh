#!/usr/bin/env bash

if [ ! -f ~/.intialised ]; then
    echo "First time running node..."
    geth --datadir=/root/node/joys init "/root/genesis.json"
    sleep 3
    cp /root/static-nodes.json /root/node/joys/geth
    touch ~/.initialised
fi

NODE_NAME=docker.${HOSTNAME}

geth \
--datadir=/root/node/joys \
--networkid=99415706 \
--bootnodes="enode://afe6a25fb572987cf4fc0575fd93ad443ad445e064f14e16ab97fd6396f6f92c7bcb4e30c6487b9790c6e55049ac4d30ae257c2e94298d4c9cdb122d4ef28560@31.186.100.62:32101" \
--nat "any" \
--port 32101
