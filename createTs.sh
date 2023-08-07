#!/bin/bash

# ./scripts/compile_proto.sh
# scan all .proto from ./src/proto and compile them to ./src/libs/codegen/rpc.js & rpc.d.ts

export DST="../types"

rm -rf $DST
mkdir -p $DST

for name in "articles" "comments" "users"
do
    # npx pbjs --target static-module \
    # --wrap commonjs \
    # --keep-case \
    # --path "articles" \
    # --out "$DST/$name.js" \
    # ./$name/service.proto

    # npx pbts --out "$DST/$name.d.ts" \
    # ${DST}/$name.js

    npx pbjs \
    --ts "$DST/$name.ts" \
    ./$name/service.proto
done