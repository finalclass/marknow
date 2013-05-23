#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
NW="$DIR/../node-webkit-linux64"

cd $DIR/../app
zip -r -q ../build/marknow.nw *

cd $DIR/../build
cp $NW/nw.pak ./

cat $NW/nw marknow.nw > marknow
chmod +x marknow