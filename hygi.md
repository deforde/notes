# gdb

- Core dumps:
```
ulimit -c unlimited
ulimit -a

gdb /path/to/binary /path/to/core
```

default core dir: `/var/lib/apport/coredump/`

- Catch asan errors:
`catch syscall exit_group`

- Catch ubsan errors:
`rbreak __ubsan_handle_*`
or
`rbreak __ubsan_on_*`

- Print memory regions:
`x/nfu addr`
Where `n` is the count, `f` is the format (e.g. `u` for unsigned), and `u` is the size (`b`=byte, `h`=2xbytes, `w`=4xbytes, `g`=8xbytes).

- Break upon loading of an `.so`:
`catch load /path/to/lib.so`

- When debugging native code via the JVM ignore segfaults via:
`handle SIGSEGV nostop noprint pass`
This is necessary becuase the JVM uses speculative loads.

#gdb #asan #ubsan #coredumps #debugging #sanitisers

