#!/usr/bin/env bash 
cat ./english-words-master/words.txt | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | wc -l
