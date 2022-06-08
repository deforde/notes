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

#gdb #asan #ubsan #coredumps #debugging #sanitisers

