# string variables
NAME						:= a.out		# compiled binary path (relative from project root)
TYPE						:= executable	# executable, static or shared
SRCPATH						:= src/			# folder path
BINPATH						:= bin/			# fodler path
TESTPATH					:= test/		# test path
DEBUG						:= 1			# 0 or 1 switch
CXXENABLED					:= 0			# 0 or 1 switch
TEST						:= test			# test executable path (relative from project root/$BINPATH/$TESTPATH/)
# default toolchain
SHELL 						:= /bin/bash
RM							:= /bin/rm -f	
AR							:= ar rcs
CC							:= gcc
CXX							:= g++
# default flags
CFLAGS						:= -Werror -Wextra -Wall
CXXFLAGS					:= -std=c++17 $(CFLAGS)
TESTFLAGS					:= $(CXXFLAGS)
# array variables
INC							:= inc/
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


