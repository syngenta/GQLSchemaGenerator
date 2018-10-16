#!/bin/bash

# remove build folder
rm -rf ../build

#runing build
xcodebuild -project ../GQLSchemaGenerator.xcodeproj -quiet

#file path
GENERATOR_PATH="$(eval find ../build/ -type f -name "GQLSchemaGenerator")"
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

if [ -z "$GENERATOR_PATH" ]; then
  echo -e "${RED}error: Couldn't find ${BLUE}GQLSchemaGenerator ${RED}file"
  exit 1
fi

echo -e "${GREEN}** BUILD SUCCEEDED ** ${BLUE}${GENERATOR_PATH}"