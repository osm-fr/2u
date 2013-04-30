#! /bin/sh

sed ':a;N;$!ba;s/\\[:space:]*\n/\ /g' | sed -r "s/\t/\ \ /ig" 
