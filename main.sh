#!/bin/bash

# NOTE: set -o pipefail is needed to ensure that any error or failure causes the whole pipeline to fail.
# Without this specification, the CI status will provide a false sense of security by showing builds
# as succeeding in spite of errors or failures.
set -eo pipefail

DATE=`date +%Y%m%d-%H%M%S`

mkdir -p log
bin/main 2>&1 | tee log/log-$DATE.txt
