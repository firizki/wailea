#!/bin/bash

rm -f res_pipe
mkfifo res_pipe

while true
do
  cat res_pipe | nc -lp 1080 -q 0 -C > >(
  if read line; then
    REQUEST="responses/"$(echo "$line" | cut -d ' ' -f -2 | sed 's/ //g')"/response"
    if [[ -f "${REQUEST}" ]]; then
      cat ${REQUEST} > res_pipe
      break
    fi
    cat not_found > res_pipe
  fi
  )
done
