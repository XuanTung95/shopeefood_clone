#!/bin/bash

device="-d macos"

if [ ! -z "$1" ]
then
  device="-d $1"
fi

cmd="flutter test integration_test/tests/app_test.dart $device"
echo "run cmd: $cmd"
eval "$cmd"