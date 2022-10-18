# awk

- `awk -F','` set delimiter
- `awk '{$1=$1};1` trim leading and trailing whitespace
- `awk '{print substr($1, 1, length($1) - 1)}` remove the last character
- `awk '{for(i=1;i<=NF;i++) print $i}'` split list into lines
- `awk -v pat=$PATTERN '$0 ~ pat'` apply pattern from variable
- `awk '{system($0)}'` run text as command

# Analysing Jenkins build times
jenkins.awk:
```
BEGIN {
  nexttime = 0
}

/^\[([0-9]+-[0-9]+-[0-9]+T[0-9]+:[0-9]+:[0-9]+.[0-9]+Z)].*/ {
  gsub(/[-:\[\]T.]/, " ")
  datetime = $1 " " $2 " " $3 " " $4 " " $5 " " $6
  time = mktime(datetime)
  if (nexttime == 0)
    nexttime = time
  print nexttime - time " :: " $0
  nexttime = time
}
```
jenkins.sh:
```
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

tac jenkins.txt | awk -f jenkins.awk | sort -r -k 1,1n
```

#linux #coreutils #unix #text #text-manipulation #text-processing

