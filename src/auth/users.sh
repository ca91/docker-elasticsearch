#!/bin/bash

hash=$(/usr/share/elasticsearch/plugins/search-guard-5/tools/hash.sh -p $ELASTIC_PWD)
sed -ri "s|elastic.hash:[^\r\n]*|elastic.hash: $hash|" /usr/share/elasticsearch/config/searchguard/sg_internal_users.yml

hash=$(/usr/share/elasticsearch/plugins/search-guard-5/tools/hash.sh -p $KIBANA_PWD)
sed -ri "s|kibana.hash:[^\r\n]*|kibana.hash: $hash|" /usr/share/elasticsearch/config/searchguard/sg_internal_users.yml

cat /usr/share/elasticsearch/config/searchguard/sg_internal_users.yml
