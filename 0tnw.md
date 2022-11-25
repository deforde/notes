# debugging

-------------------------------------------------------------------------------

- To inspect object code disassembly in Intel syntax:
```
objdump -drwC -Mintel foo.o
```

-------------------------------------------------------------------------------

- To examine elf info:
```
readelf -d app  # get dynamic section info
readelf -S app  # get section headers
readelf -h app  # get the elf header
```
See `man readelf` for more info.

-------------------------------------------------------------------------------

- To examine ELF symbol and section sizes:
```
nm --print-size --size-sort --radix d a.out
size -A -d a.out
```

-------------------------------------------------------------------------------

#linux #elf #c #c++ #unix #cpp #debugging #systems #low-level #object-file #objdump #readelf

