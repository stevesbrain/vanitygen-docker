# Vanitygen in a Docker Container
Vanitygen doesn't build nicely in newer environments, so this docker container
seeks to provide a consistent environment and enable you to safely run this
yourself.

## Installation 1 - Build Yourself
Make sure you have docker installed, then, clone this repo. In this repo
directory, type:

```bash
docker build -t vanitygen .
# To build case insensitive BTC for example
docker run --rm vanitygen -i 1Snoot
```

## Installation 2 - Run from Hub
This one is fairly straightforward. You're running the image from the automated
builds of this repo.

```bash
# Build case insensitive BTC address from hub
docker run --rm vanityshed/vanitygen-docker -i 1Sno
```
