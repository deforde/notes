# bash

- Script prologue:
```
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
```

- Do something for each file/dir:
```
for x in *; do
  $DO_SOMETHING
done
```

- Test if dir:
```
if [[ -d $VAR ]]; then
  IS_DIR=1
else
  IS_DIR=0
fi
```

- Store command result in variable:
```
VAR=$(command)
```

- Regex:
```
if [[ $TEXT =~ $REGEX ]]; then
  FIRST_MATCH=${BASH_REMATCH[1]}
fi
```

- CLI:
```
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -h | --help )
    usage
    exit 0
    ;;
  -s | --string )
    shift;
    MY_STRING_VAR=$1
    ;;
  -f | --FLAG )
    MY_FLAG_VAR=1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi
```

- Get script dir:
```
DIR=${0%/*}
```

- Loop over arrays:
```
MY_ARRAY=('one' 'two')
for ELEM in "${MY_ARRAY[@]}"; do
  echo $ELEM
done
```

- Special args:
```
$#    # Number of args
$*    # All pos args as single word
$@    # All pos args as separate strings
$1    # First arg
$_    # Last arg of the previous command
```

- Counter:
```
file_cnt=0
for file in $SRCDIR/*; do
  file_cnt=$((file_cnt+1))
done
if [[ $file_cnt -ne 4 ]]; then
  printf "Error! Expected 4 files, only %i found.\n" $file_cnt
fi
```

- Functions and return values:
```
ARR=('one', 'two', 'three')

isInArr() {
  local ret=0
  NUM=$1
  for ELEM in "${ARR[@]}"; do
    if [[ $ELEM == $NUM ]]; then
      ret=1
      break
    fi
  done
  echo $ret
}

  if [[ $(isInArr $NUM) -eq 1 ]]; then
    echo "is contained"
  fi
```

- Substrings:
```
MYSTR="hello, world!"
echo ${MYSTR:7:5}
# echos "world"
```

#linux #shell #unix #scripting #text #text-manipulation #text-processing

