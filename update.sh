#!/bin/bash

cd "litecartes-be"
git pull origin main

cd ..

cd "litecartesProject-FrontEnd"
git pull origin main

cd ..

git submodule update --remote
git add .
git commit -m "update: update submodule to latest"
git push origin main
