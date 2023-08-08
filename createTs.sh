#!/bin/bash

# ./scripts/compile_proto.sh
# scan all .proto from ./src/proto and compile them to ./src/libs/codegen/rpc.js & rpc.d.ts

export DST="../types"
export PBTS_PATH="/Users/oneee/.nvm/versions/node/v18.17.0/bin/protoc-gen-ts"
rm -rf $DST
mkdir -p $DST

for name in "articles" "comments" "users"
do
    # npx pbjs \
    # --ts "$DST/$name.ts" \
    # ./$name/service.proto

    protoc \
    --plugin="protoc-gen-ts=${PBTS_PATH}" \
    --js_out="import_style=commonjs,binary:${DST}" \
    --ts_out="service=grpc-web:${DST}" \
    $name/service.proto
done