#!/bin/bash

git fetch

git checkout v1

./start.sh

read -p "Press any key to continue... " -n1 -s

git checkout v2

./start.sh

read -p "Press any key to continue... " -n1 -s

git checkout v3

./start.sh

read -p "Press any key to continue... " -n1 -s

# fetch repo

# chechout branch et dockercompose
