FROM ubuntu:18.04
LABEL version="7.0"

RUN apt-get update && apt-get install --yes software-properties-common apt-utils
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update && apt-get install --yes geth

ADD https://raw.githubusercontent.com/Joys-digital/joys-testing-network/master/genesis.json /root/
ADD https://raw.githubusercontent.com/Joys-digital/joys-testing-network/master/static-nodes.json /root/

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

EXPOSE 32101
EXPOSE 32101/udp
EXPOSE 8545

ENTRYPOINT /root/start.sh
