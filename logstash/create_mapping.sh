#!/bin/sh

unset http_proxy
unset no_proxy
curl_cmd="curl --noproxy 127.0.0.1"
$curl_cmd -XPUT 'http://127.0.0.1:9200/ban/' -d @/home/littlewing/src/adresseZ/logstash/mapping.json
