@echo off

docker rm mybuildenv
docker build -t mybuildenv:latest .
