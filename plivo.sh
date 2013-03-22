#!/bin/bash
#
# This is a script to test the plivo API with CURL.
#

set -e

source .env

echo $PLIVO_AUTH_ID
echo $PLIVO_AUTH_TOKEN
echo $NUMBER

JSON=" { \"from\" : \"12345678\", \"to\" : \"$NUMBER\" , \"answer_method\" : \"GET\", \"answer_url\" : \"https://s3.amazonaws.com/plivosamplexml/speak_url.xml\" }"

curl -i -X POST -u "$PLIVO_AUTH_ID:$PLIVO_AUTH_TOKEN" \
  -d "$JSON" \
  -H "Content-Type: application/json" \
  https://api.plivo.com/v1/Account/$PLIVO_AUTH_ID/Call/
