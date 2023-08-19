#!/bin/bash -ex

# Only run this script if it's the main branch build.
if [[ "$GITHUB_REF" != "refs/heads/main" || "$GITHUB_EVENT_NAME" != "push" ]]; then
  exit 0
fi

url="$1"
map_file="$2"
if [ ! -f $map_file ]; then
  echo "$map_file does not exist!"
  exit 1
fi

make -C ${GITHUB_WORKSPACE}/.github/calcrom
output=$(${GITHUB_WORKSPACE}/.github/calcrom/calcrom -d ${GITHUB_WORKSPACE} -9 "" "" | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')
curl -d "{\"username\": \"$CALCROM_DISCORD_WEBHOOK_USERNAME\", \"avatar_url\": \"$CALCROM_DISCORD_WEBHOOK_AVATAR_URL\", \"content\":\"\`\`\`$build_name progress:\\n$output\`\`\`\"}" -H "Content-Type: application/json" -X POST $url
