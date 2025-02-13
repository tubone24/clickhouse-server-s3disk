#!/bin/bash

envsubst < /etc/clickhouse-server/config.d/storage.xml.template > /etc/clickhouse-server/config.d/storage.xml

exec /entrypoint.sh
