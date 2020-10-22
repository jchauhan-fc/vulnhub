#!/bin/bash

sudo mkdir -p ~/grafana/data
sudo mkdir -p ~/influxdb/data
docker-compose up -d
sudo chown -R 755:755 ~/grafana/data
sudo chown -R 755:755 ~/influxdb/data

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
echo "Create a new database ?"
echo "curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"
