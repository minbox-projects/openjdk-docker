#!/bin/bash
# ----------------------------------------------------------------------------
# 构建OpenJDK脚本
# ----------------------------------------------------------------------------
# 构建所使用的Dockerfile
DOCKERFILE=$1
# Docker交叉编译时的平台列表
PLATFORM=$2
# 发布时的Docker镜像全名称
DOCKER_IMAGE_FULL_NAME=$3

docker buildx build -f "${DOCKERFILE}" --platform "${PLATFORM}" -t "${DOCKER_IMAGE_FULL_NAME}" . --push