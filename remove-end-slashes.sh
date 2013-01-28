#! /bin/sh

awk '!/\\$/ {printf $0; print ""}
     match($0, /^(.*) \\$/, a) {printf a[1]; printf "\\n"}
     END {print ""}' $1
