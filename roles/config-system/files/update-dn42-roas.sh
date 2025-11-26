#!/bin/sh
set -e

curl -fsSlR https://dn42.burble.com/roa/dn42_roa_bird2_4.conf -o /etc/bird/roa_dn42.conf -z /etc/bird/roa_dn42.conf
curl -fsSlR https://dn42.burble.com/roa/dn42_roa_bird2_6.conf -o /etc/bird/roa_dn42_v6.conf -z /etc/bird/roa_dn42_v6.conf

/usr/sbin/birdc configure || echo "BIRD configuration failed"
