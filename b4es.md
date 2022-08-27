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

#linux #shell #unix #scripting #text #text-manipulation #text-processing

