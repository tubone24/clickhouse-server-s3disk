FROM clickhouse/clickhouse-server:24

# To dynamically change the S3 bucket in Clickhouse's Storage configuration file
RUN apt-get update && apt-get install -y gettext-base

COPY storage.xml.template /etc/clickhouse-server/config.d/storage.xml.template

COPY entrypoint.sh /entrypoint-mod.sh
RUN chmod +x /entrypoint-mod.sh

ENTRYPOINT ["/entrypoint-mod.sh"]
