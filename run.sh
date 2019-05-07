#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
	--verbose \
	--header "Authorization: Token ${TOKEN}" \
	--header "Content-Type: application/json" \
	--data "{\"value\":7,\"sha\":\"${CIRCLE_SHA1}\"}" \
	"https://seriesci.com/api/repos/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/deps/values"

exit 0