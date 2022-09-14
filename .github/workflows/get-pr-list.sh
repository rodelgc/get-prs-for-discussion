#!/bin/bash

echo '| PR | Include | To be tested by | Notes |'
echo '| -- | ------- | --------------- | ----- |'
gh api repos/woocommerce/woocommerce/pulls \
    --method GET \
    -F milestone=6.9.0 \
    --template \
    '{{range .}}| [{{.title}}]({{.url}}) | | | |{{"\n"}}{{end}}'
