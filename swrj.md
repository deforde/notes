# awk

- `awk -F','` set delimiter
- `awk '{$1=$1};1` trim leading and trailing whitespace
- `awk '{print substr($1, 1, length($1 - 1)}` remove the last character
- `awk '{for(i=1;i<=NF;i++) print $1}'` split list into lines
- `awk -v pat=$PATTERN '$0 ~ pat'` apply pattern from variable
- `awk '{system($0)}'` run text as command

#linux #coreutils #unix #text #text-manipulation #text-processing

