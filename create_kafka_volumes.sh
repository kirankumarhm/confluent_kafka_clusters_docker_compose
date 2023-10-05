#!/bin/bash

mkdir -p data/zookeeper/{data,logs}
mkdir -p data/broker0/{data,logs}
mkdir -p data/broker1/{data,logs}
mkdir -p data/broker2/{data,logs}

sudo chown -R $USER:$USER ./data
