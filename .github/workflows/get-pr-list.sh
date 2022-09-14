#!/bin/bash

echo '| PR | Include | To be tested by | Notes |'
echo '| -- | ------- | --------------- | ----- |'

gh api repos/woocommerce/woocommerce/pulls \
    --method GET \
    -F milestone=$MILESTONE \
    --paginate \
    --template \
    '{{range .}}| [{{.title}}]({{.url}}) | | | |{{"\n"}}{{end}}'
