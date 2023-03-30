#!/bin/bash

echo "Searching..";
sleep 1;
echo $(curl $1) > website.html;
cat website.html;
