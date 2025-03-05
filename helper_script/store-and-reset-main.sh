#!/bin/bash

set -eu
pushd $(dirname $BASH_SOURCE)/..

./helper_script/store-code.sh "$@"
./helper_script/reset-main.sh

popd