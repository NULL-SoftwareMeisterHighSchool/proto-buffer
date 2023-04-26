#!/bin/sh

protoc --go_out=../server/articles/pb --go_opt=paths=source_relative --go-grpc_out=../server/articles/pb --go-grpc_opt=paths=source_relative --experimental_allow_proto3_optional articles/service.proto
protoc --go_out=../server/comments/pb --go_opt=paths=source_relative --go-grpc_out=../server/comments/pb --go-grpc_opt=paths=source_relative --experimental_allow_proto3_optional comments/service.proto
protoc --go_out=../server/rank/pb --go_opt=paths=source_relative --go-grpc_out=../server/rank/pb --go-grpc_opt=paths=source_relative rank/service.proto
protoc --go_out=../server/users/pb --go_opt=paths=source_relative --go-grpc_out=../server/users/pb --go-grpc_opt=paths=source_relative users/service.proto
