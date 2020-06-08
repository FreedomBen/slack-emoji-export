#!/usr/bin/env bash

API_TOKEN='<yourtoken>'

curl "https://slack.com/api/emoji.list?token=${API_TOKEN}" \
  | jsonpp \
  | tee 'emoji-list.json'
