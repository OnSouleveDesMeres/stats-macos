#!/bin/bash

curl -LO $(curl -s https://api.github.com/repos/$1/releases | grep browser_download_url | cut -d '"' -f 4 | grep -Ei "mac|darwin" | grep -v "debug")