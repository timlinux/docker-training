#!/bin/ash
# Above is not a typo - alpine shell is ash not bash
wget -O hello.txt http://pyserve:8000/home/HelloWorld.txt
cat hello.txt
