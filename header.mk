# string variables
SRCDIR						:= src# 		folder path
BINDIR						:= bin# 		fodler path
TESTDIR						:= test# 		test path
NAME						:= a.out# 		compiled binary path (relative from project root)
TEST						:= test# 		test executable path (relative from project root/$BINPATH/$TESTPATH/)
TYPE						:= executable# 	executable, static or shared
DEBUG						:= 1# 			0 or 1 switch
CXXENABLED					:= 0# 			0 or 1 switch
# default toolchain
SHELL 						:= /bin/bash
RM							:= /bin/rm -f
AR							:= ar rcs
CC							:= gcc
CXX							:= g++
# default flags
CFLAGS						:= -MMD -Werror -Wextra -Wall
CXXFLAGS					:= -std=c++11 $(CFLAGS)
TESTFLAGS					:= $(CXXFLAGS)
# array variables
INCDIR						:= inc/
LIBPATH						:=# ./../../lib
LIBNAME						:=# foobar
# functions
define add_prefix
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
