#!/bin/bash

echo Installing required packages
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y dnsutils
echo Done
