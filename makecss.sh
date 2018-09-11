#!/bin/bash
set -x
set -e
set -o pipefail

# sudo apt install node-less cleancss

lessc --no-ie-compat public/less/index.less public/css/index.css

cleancss public/css/index.css -o public/css/index-min.css
mv public/css/index-min.css public/css/index.css

