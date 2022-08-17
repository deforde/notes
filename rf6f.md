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

- Cross compilation for `Tizen`:
```
curl -LO https://download.tizen.org/sdk/Installer/tizen-studio_4.6/web-cli_Tizen_Studio_4.6_ubuntu-64.bin
./web-cli_Tizen_Studio_4.6_ubuntu-64.bin
cd ~/tizen-studio/package-manager
./package-manager-cli.bin install WEARABLE-6.5-NativeAppDevelopment-CLI
export CC=$HOME'/tizen-studio/tools/arm-linux-gnueabi-gcc-9.2/bin/arm-linux-gnueabi-gcc --sysroot /home/danielforde/tizen-studio/platforms/tizen-6.5/wearable/rootstraps/wearable-6.5-device.core'
export CXX=$HOME'/tizen-studio/tools/arm-linux-gnueabi-gcc-9.2/bin/arm-linux-gnueabi-g++ --sysroot /home/danielforde/tizen-studio/platforms/tizen-6.5/wearable/rootstraps/wearable-6.5-device.core'
export AR=$HOME'/tizen-studio/tools/arm-linux-gnueabi-gcc-9.2/bin/arm-linux-gnueabi-ar'
```

-------------------------------------------------------------------------------

#gcc #compilation #c #cpp #c++ #assembly #disassembly #sharedlibrary
#staticlibrary

