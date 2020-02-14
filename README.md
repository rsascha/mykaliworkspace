# My Kali Workspace

## Description

The idea is to have the same Kali Linux setup on several machines running Kali Linux in a Docker container.

## Setup

You need a local Docker registry. Please fell free to use the following script:

```bash
#!/bin/bash

docker pull registry
docker run -d -p 5000:5000 --restart always --name registry registry:2
echo now you can use docker push localhost:5000/...
```

## Start Kali Linux

Simply run the following command:

```bash
./build-and-run.sh
```

## Other Scripts

If you don't need to re-build the Docker image, you can also use:

```bash
./run.sh
```

If you just want to build the Docker image, you can also use:

```bash
./build.sh
```
