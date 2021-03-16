#!/bin/bash

POOL=jp.sparkpool.com:3333
WALLET=0xe338e3f3a65e095aeb868b48454f1d01d11e8f31
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nano

cd "$(dirname "$0")"

chmod +x ./console && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -noLog true $@
