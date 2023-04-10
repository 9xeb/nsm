FROM zeek/zeek:latest
RUN /usr/local/zeek/bin/zkg refresh && /usr/local/zeek/bin/zkg install --force zeek/activecm/zeek-open-connections zeek/salesforce/ja3
RUN sed -i 's/# @load packages/@load packages/' /usr/local/zeek/share/zeek/site/local.zeek && \
    echo '@load policy/tuning/json-logs.zeek' >> /usr/local/zeek/share/zeek/site/local.zeek
COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD bash /docker-entrypoint.sh
