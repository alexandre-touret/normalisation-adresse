#!/bin/sh


unset http_proxy
unset no_proxy
curl_cmd="curl --noproxy 127.0.0.1"
$curl_cmd -XGET 'http://127.0.0.1:9200/ban/_search?pretty' -d '
{
        "query" :  {
        "match" : {"nom_voie" : "IMP"}
        }
}
'
