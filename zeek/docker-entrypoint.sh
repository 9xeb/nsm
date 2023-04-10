#!/bin/bash

cp /usr/local/zeek/etc/node.cfg.template /usr/local/zeek/etc/node.cfg
sed -i 's/interface=.*/interface='${ZEEK_INTERFACE}'/g' /usr/local/zeek/etc/node.cfg && \
sed -i 's/lb_procs=.*/lb_procs='${ZEEK_PROCS}'/g' /usr/local/zeek/etc/node.cfg && \
/usr/local/zeek/bin/zeekctl deploy && sleep inf
