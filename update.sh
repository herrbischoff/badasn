#!/bin/sh

cp /etc/pf/badasn.json badasn.json && \
sed -i '' '/^\*/d' README.md && \
cat badasn.json | \
    jq -r '.[].reason' | \
    sort -u | \
    while read line; do
        echo "* $line"
    done >> README.md && \
git commit -a -m "Update"
