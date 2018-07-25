FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/papelcoin/papelcoin/releases/download/v1.0.0.1/Papel.Core.Linux.zip

RUN wget https://github.com/zero24x/flexinodes/releases/download/1.0.0.8_2/flexinodesd_1.0.0.8_linux_cli_64bit -O /usr/local/bin/flexinodesd \
	&& chmod 777 /usr/local/bin/flexinodesd \
	&& wget https://github.com/zero24x/flexinodes/releases/download/1.0.0.8_2/flexinodes_1.0.0.8_linux_cli_64bit -O /usr/local/bin/flexinodes-cli \
	&& chmod 777 /usr/local/bin/flexinodes-cli \
	&& mkdir -p /data/.flexinodes

#rpc port & main port
EXPOSE 42781 25793

ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh /data/.flexinodes flexinodes.conf FLX flexinodesd