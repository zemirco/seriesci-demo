#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
	--verbose \
	--header "Authorization: Token ${TOKEN}" \
	--header "Content-Type: application/json" \
	--data "{\"value\":2.5,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://seriesci.com/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/deps/values"

curl \
	--verbose \
	--header "Authorization: Token ${TOKEN}" \
	--header "Content-Type: application/json" \
	--data "{\"value\":90,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://seriesci.com/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/loc/values"

exit 0
