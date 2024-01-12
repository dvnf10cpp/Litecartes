#!/bin/bash 

be="litecartes-be"
be_script="cmd/init.sh"
fe="litecartes-frontend"

# setup server side (litecartes-be)
echo "initializing server side directory"
cd "$be"
chmod +x "$be_script"
$be_script # execute init.sh server side
echo "server side setup almost done"
echo "please configure .env and firebase sdk json"
echo "read litecartes-be/README.md for more guidance"

cd ..

# setup client side (litecartes-frontend)
echo "initializing client side directory"
cd "$fe"
echo "installing required dependancies"
npm install

echo "client side setup done"

echo "read litecartes-frontend/README.md for more guidance"