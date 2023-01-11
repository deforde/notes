# make

-------------------------------------------------------------------------------

- Cookbook:
```
TARGET_NAME := my_target

BUILD_DIR := build
SRC_DIRS := src

SRCS := $(shell find $(SRC_DIRS) -name '*.c')
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)
DEPS := $(OBJS:.o=.d)

INC_DIRS := $(shell find $(SRC_DIRS) -type d)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))

CFLAGS := -Wall -Wextra -Wpedantic -Werror $(INC_FLAGS) -MMD -MP
LDFLAGS :=

TARGET := $(BUILD_DIR)/$(TARGET_NAME)

all: CFLAGS += -O3 -DNDEBUG
all: target

debug: CFLAGS += -g3 -D_FORTIFY_SOURCE=2
debug: target

san: debug
san: CFLAGS += -fsanitize=address,undefined
san: LDFLAGS += -fsanitize=address,undefined

target: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

$(BUILD_DIR)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean compdb valgrind

clean:
	@rm -rf $(addprefix $(BUILD_DIR)/,$(filter-out compile_commands.json,$(shell ls $(BUILD_DIR))))

compdb: clean
	@bear -- $(MAKE) san
	@mv compile_commands.json build

valgrind: debug
	@valgrind ./$(TARGET)

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

