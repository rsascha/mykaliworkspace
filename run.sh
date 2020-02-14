#!/bin/bash

docker run -it -v $(pwd)/myspace:/root/myspace localhost:5000/mykali:latest /bin/bash
