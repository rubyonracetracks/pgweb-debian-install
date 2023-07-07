#!/bin/bash

# NOTE: set -o pipefail is needed to ensure that any error or failure causes the whole pipeline to fail.
# Without this specification, the CI status will provide a false sense of security by showing builds
# as succeeding in spite of errors or failures.
set -eo pipefail

# Copy Dockerfile-template to Dockerfile
cp Dockerfile-template Dockerfile

# Fill in the Debian suite in the Dockerfile
bin/replace_sif '<SUITE>' "$SUITE" Dockerfile

# Executing the Dockerfile
echo '#####################'
echo 'BEGIN: docker build .'
echo '#####################'
docker build .
echo '########################'
echo 'FINISHED: docker build .'
echo '########################'
