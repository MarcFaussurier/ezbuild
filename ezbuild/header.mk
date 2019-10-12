define prefix_list
	$(shell echo "$(1)" | sed 's|[^ ]* *|$(2)&|g')
endef

define str_replace
	$(shell echo "$(1)" | sed 's|$(2)|$(3)|g')
endef

define find_by_ext
	$(shell find $(1) -type f -name "*.$(2)")
endef

define replace_ext
	$(patsubst %.$(1),%.$(2),$(3))
endef

CXXENABLED	:= 0
TEST		:= test
SHELL 		:= /bin/bash
RM			:= /bin/rm -f
AR			:= ar rcs
CC			:= gcc
CXX			:= g++
CFLAGS		:= -Werror -Wextra -Wall
CXXFLAGS	:= -std=c++17 $(CFLAGS)
TESTFLAGS	:= $(CXXFLAGS)
SRCPATH		:= src/
BINPATH		:= bin/
TESTPATH	:= test/
# arrays
INC			:= inc/
LIBPATH		:= #./../../lib
LIBNAME		:= #foobar

