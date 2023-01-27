#!/bin/bash

for ((i=8000; i<=8020; i++))
do
    docker run -p "${i}":80 -d mlinares/simple-php-website-ubuntu
done
