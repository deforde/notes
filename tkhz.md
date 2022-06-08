# zig

- Cross-compiling C with zig-cc (see: https://andrewkelley.me/post/zig-cc-powerful-drop-in-replacement-gcc-clang.html):
```
$ export CC="zig cc -target x86_64-windows-gnu"

$ make
mkdir -p build/src/
zig cc -target x86_64-windows-gnu -Isrc -MMD -MP -g -Wall -Wextra -Wpedantic -Werror -c src/main.c -o build/src/main.c.o
zig cc -target x86_64-windows-gnu build/src/main.c.o -o build/app

$ wine64 build/./app
Hello, world!

$ file build/./app
build/./app: PE32+ executable (console) x86-64, for MS Windows
```

