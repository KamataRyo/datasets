#!/bin/bash
curl -XPOST localhost:9200/ldgourmet -d @migration/mapping.json

curl -XPUT localhost:9200/ldgourmet -d ''
