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

#gdb #asan #ubsan #coredumps #debugging #sanitisers

