#!/usr/bin/env bash
set -o noclobber
egrep -inr --include \*.tsx --include \*.ts --exclude-dir=node_modules any | awk 'BEGIN { print "Here is the list with all usage of any in the codebase: \n";} {if(length(NR) == 1) print NR,"  ",$0;  else print NR," ",$0; }' >| report.txt
printf "All done!\n"
set +o noclobber
