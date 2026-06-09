#!/bin/bash
source config/github.config
curl -s \
-H "Authorization: token $GITHUB_TOKEN" \
https://api.github.com/orgs/$ORG_NAME/members \
| jq -r '.[].login' > github_user.txt
