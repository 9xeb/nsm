#!/bin/bash

/usr/bin/suricata-update update-sources && /usr/bin/suricata-update enable-source et/open && /usr/bin/suricata-update && \
cp /etc/suricata/suricata.yaml.template /etc/suricata/suricata.yaml && \
sed -i 's/interface: .*/interface: '${SURICATA_INTERFACE}'/g' /etc/suricata/suricata.yaml && \
/etc/init.d/suricata start && /etc/init.d/suricata status && \
tail -F /var/log/suricata/suricata.log
