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


