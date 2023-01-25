#!/bin/bash

echo '| PR | Include | To be tested by | Notes |'
echo '| -- | ------- | --------------- | ----- |'

gh search prs -L 1000 \
    --repo woocommerce/woocommerce \
    --milestone $MILESTONE \
    --json 'title,url' \
    --template \
    '{{range .}}| [{{.title}}]({{.url}}) | | | |{{"\n"}}{{end}}'
