# docker-flexinodes
Wallet and daemon for Flexinodes [FLX] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/flexinodes` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/flexinodes.conf" chainmapper/flexinodes` to use your own config.

```
Docker FLX wallet

By: ChainMapper
Website: https://chainmapper.com

Starting FLX daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the wallet and config file using a volume pointing to `/config/wallet.data` or `/config/flexinodes.conf`

# License
MIT, see LICENSE file