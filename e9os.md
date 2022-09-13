# make

-------------------------------------------------------------------------------

- Cookbook:
```
TARGET_EXEC := my_executable

BUILD_DIR := build
SRC_DIRS := src

SRCS := $(shell find $(SRC_DIRS) -name '*.c')
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)
DEPS := $(OBJS:.o=.d)

INC_DIRS := $(shell find $(SRC_DIRS) -type d)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))

CFLAGS := -Wall -Wextra -Wpedantic -Werror $(INC_FLAGS) -MMD -MP
LDFLAGS :=

EXECUTABLE := $(BUILD_DIR)/$(TARGET_EXEC)

all: CFLAGS += -O3 -NDEBUG
all: executable

debug: CFLAGS += -g3 -D_FORTIFY_SOURCE=2
debug: executable

san: debug
san: CFLAGS += -fsanitize=address,undefined
san: LDFLAGS += -fsanitize=address,undefined

executable: $(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

$(BUILD_DIR)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

.PHONY: clean compdb valgrind

clean:
	@rm -rf $(BUILD_DIR)

compdb: clean
	@bear -- $(MAKE) san
	@mv compile_commands.json build

valgrind: debug
	@valgrind ./$(EXECUTABLE)

-include $(DEPS)
```

-------------------------------------------------------------------------------

foo.h:
```
int foo(void);
```
foo.c:
```
int foo(void)
{
    return 0;
}
```
main.c:
```
#include "foo.h"
int main()
{
    foo();
    return 0;
}
```
Makefile:
```
.PHONY: all builddir libfoo objfoo exec clean

all: clean builddir libfoo exec

builddir:
	mkdir build

libfoo: objfoo
	$(CC) -shared build/foo.o -o build/libfoo.so

objfoo:
	$(CC) -c foo.c -o build/foo.o

exec:
	$(CC) main.c build/libfoo.so -o build/app

clean:
	rm -rf build
```

-------------------------------------------------------------------------------

#make #compilation #build-system #c #c++ #cpp

