#!/usr/bin/env bash
# Deploy the static achagani.com site to droplet ovl1.
set -euo pipefail
cd "$(dirname "$0")"
rsync -az --delete --exclude '.git' ./ ovl1:/var/www/achagani.com/
curl -sf -o /dev/null https://achagani.com/ && echo "DEPLOY OK $(date -Is)"