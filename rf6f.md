# gcc

- Command line compilation:
```
#!/bin/bash

gcc -c foo.c
ar crs libfoo.a foo.o
gcc -shared -o libbar.so -fPIC bar.c
gcc -L. main.c -o my_app -lbar -lfoo

export LD_LIBRARY_PATH=$PWD
./my_app
```

Where:

main.c:
```
void bar();

int main()
{
    bar();
    return 0;
}
```

foo.c:
```
#include <stdio.h>

void foo()
{
    printf("Hello, world!\n");
}
```

bar.c:
```
void foo();

void bar()
{
	foo();
}

```

-------------------------------------------------------------------------------

- To inspect disassembly:

```
gcc -S -c source_file.c
cat source_file.s
```

or

```
gcc -c source_file.c
objdump -d source_file.o
```

-------------------------------------------------------------------------------

#gcc #compilation #c #cpp #c++ #assembly #disassembly #sharedlibrary
#staticlibrary

