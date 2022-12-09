# clang

# Clang not finding system headers:
If you see errors like this when trying to compile with clang:
```
; clang++ -g3 -Wall -Wextra -Wpedantic -Isrc -MMD -MP -c src/main.cc -o build/src/main.cc.o
src/main.cc:1:10: fatal error: 'cassert' file not found
```
Turn on verbose mode and preprocessing only:
```
; clang++ -v -E -g3 -Wall -Wextra -Wpedantic -Isrc -MMD -MP -c src/main.cc -o build/src/main.cc.o
Ubuntu clang version 14.0.0-1ubuntu1
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/11
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/12
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/9
Selected GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/12
...
```
Check the gcc installation version that it is selecting - make sure that the std libs for that version of gcc are definitely installed:
```
sudo apt install gcc-12 g++-12
```

