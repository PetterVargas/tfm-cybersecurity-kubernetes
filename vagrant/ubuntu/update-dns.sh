#!/bin/bash

# Resuelve el DNS de Google
sed -i -e 's/#DNS=/DNS=8.8.8.8/' /etc/systemd/resolved.conf

service systemd-resolved restart