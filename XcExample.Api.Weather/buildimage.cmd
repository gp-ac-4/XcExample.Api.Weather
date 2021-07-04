@echo off
docker build -t ghcr.io/ac-4/xcexample.api.weather:latest -t xcexample.api.weather -t localhost:5000/xcexample.api.weather .
docker push localhost:5000/xcexample.api.weather:latest
docker push ghcr.io/ac-4/xcexample.api.weather:latest