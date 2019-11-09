#!/bin/bash

pushd proto
rm -rf *.pb.go
protoc -I /usr/local/include -I . \
    --go_out=plugins=grpc,${ALIAS}:. *.proto
popd
