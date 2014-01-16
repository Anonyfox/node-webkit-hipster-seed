#!/bin/bash

rm -rf node_modules bower_components
npm install
./node_modules/.bin/bower install
