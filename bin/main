#!/bin/bash

# NOTE: set -o pipefail is needed to ensure that any error or failure causes the whole pipeline to fail.
# Without this specification, the CI status will provide a false sense of security by showing builds
# as succeeding in spite of errors or failures.
set -eo pipefail

echo '-------------------'
echo 'sudo apt-get update'
sudo apt-get update

echo '----------------------------------'
echo 'sudo apt-get install -y curl unzip'
sudo apt-get install -y curl unzip

echo '-----------------'
echo 'Downloading Pgweb'
curl -s https://api.github.com/repos/sosedoff/pgweb/releases/latest \
  | grep linux_amd64.zip \
  | grep download \
  | cut -d '"' -f 4 \
  | wget -qi - \

wait

echo '---------------------------'
echo 'unzip pgweb_linux_amd64.zip'
unzip pgweb_linux_amd64.zip

wait

echo '------------------------'
echo 'rm pgweb_linux_amd64.zip'
rm pgweb_linux_amd64.zip

echo '----------------------------------------------'
echo 'sudo mv pgweb_linux_amd64 /usr/local/bin/pgweb'
sudo mv pgweb_linux_amd64 /usr/local/bin/pgweb

wait
echo '---------------'
echo 'pgweb --version'
pgweb --version
