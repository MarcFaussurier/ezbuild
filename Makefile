# =============================================================================
# ==================== GENERATED SECTION ======================================
# =============================================================================
CSRC			:=./src/ft_string.c
CXXSRC		:=
TESTSRC		:=./misc/tests/utils/vmfill.cpp\
./misc/tests/utils/print.cpp\
./misc/tests/utils/rand.cpp\
./misc/tests/utils/fdfill.cpp\
./misc/tests/utils/memfill.cpp\
./misc/tests/utils/path.cpp\
./misc/tests/utils/setrlim.cpp\
./misc/tests/utils/utf8.cpp\
./misc/tests/main.cpp
# =============================================================================
# =============== PROJECT CONFIGURATION SECTION ===============================
# =============================================================================
# full generated binary name (with extension, relative to Makefile dir)
NAME		:= libft.a
# valid output types are : executable static shared wasm
TYPE		:= static
# will pass debug flags
DEBUG		:= 0
# where cpp tests dirs are
TESTDIR		:= misc/tests
# useful scripts
EZBUILD		:= misc/deps/ezbuild
# =============================================================================
# ====================== DEFAULT OPTIONS ========================================
# =============================================================================
# string variables
SRCDIR		?= src
BINDIR      ?= bin
TESTDIR     ?= test
NAME        ?= a.out
TEST        ?= test
TYPE        ?= executable
DEBUG       ?= 1
CXXENABLED  ?= 0
EZBUILD		?= ./misc/deps/ezbuild
# default toolchain
RM          ?= /bin/rm -f
AR			?= ar
ARFLAGS		?= -rcs
CC          ?= gcc
CXX         ?= g++
# default flags
CFLAGS      ?= -MMD -Werror -Wextra -Wall
CXXFLAGS    ?= -std=c++11 $(CFLAGS)
TESTFLAGS   ?= $(CXXFLAGS)
# array variables
INCDIR      ?= inc/
LIBPATH     ?=# ./../../lib
LIBNAME     ?=# foobar
CSRC        ?=
COBJ        ?= $(patsubst %.c,%.o,$(subst $(SRCDIR),$(BINDIR),$(CSRC)))
CDF         ?= $(patsubst %.o,%.d,$(COBJ))
CXXSRC      ?=
CXXOBJ      ?= $(patsubst %.cpp,%.o,$(subst $(SRCDIR),$(BINDIR),$(CXXSRC)))
CXXDF       ?= $(patsubst %.o,%.d,$(CXXOBJ))
TESTSRC     ?=
TESTOBJ     ?= $(patsubst %.cpp,%.o,$(subst $(TESTDIR),$(BINDIR)/$(TESTDIR),$(TESTSRC)))
TESTDF      ?= $(patsubst %.o,%.d,$(TESTOBJ))
MKFILE_PATH ?= $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR ?= $(patsubst %/,%,$(dir $(MKFILE_PATH)))
DEBUG		?= 0
DEBUGFLAGS	?= -g -fsanitize=address -fno-omit-frame-pointer
# =============================================================================
# ======================== PROCESSING =========================================
# =============================================================================
LIBDIR      := $(addprefix -L,$(LIBDIR))
LIBNAME     := $(addprefix -l,$(LIBNAME))
INCDIR      := $(addprefix -I,$(INCDIR))
CXXFLAGS    := $(CXXFLAGS)	$(INCDIR) $(LIBDIR) $(LIBNAME)
CFLAGS      := $(CFLAGS)	$(INCDIR) $(LIBDIR) $(LIBNAME)
TESTFLAGS   := $(TESTFLAGS) $(INCDIR) $(LIBDIR) $(LIBNAME)
ifeq ($(DEBUG),1)
CXXFLAGS    += $(DEBUGFLAGS)
CFLAGS		+= $(DEBUGFLAGS)
endif
# =============================================================================
# ======================= DEFAULT RULES =======================================
# =============================================================================
# make rules
all:                        $(NAME)
make:
		$(EZBUILD)/Makemakefile
update:
		$(EZBUILD)/update-deps.sh
watch-compile:
		source $(EZBUILD)/watcher.sh "make" "$(SRCDIR)" "$(TESTDIR)"
watch-test:
		source $(EZBUILD)/watcher.sh "make test" "$(SRCDIR)" "$(TESTDIR)"
test:						$(COBJ) $(CXXOBJ) $(TESTOBJ)
		$(CXX) -o $(BINDIR)/$(TESTDIR)/$(TEST) $(COBJ) $(CXXOBJ) $(TESTOBJ) $(CXXOBJ)
		./$(BINDIR)/$(TESTDIR)/$(TEST)
clean:
		$(RM) $(COBJ) $(CXXOBJ) $(TESTOBJ) $(CDF) $(CXXDF) $(TESTDF)
fclean:
		$(RM) $(NAME) $(BINDIR)/$(TESTDIR)/$(TEST)
re:
		fclean all test
norme:
		norminette
release:
		$(EZBUILD)/release.sh
$(BINDIR)/%.o:				$(SRCDIR)/%.c
		$(CC) $(CFLAGS)			-c		$< -o					$@
$(BINDIR)/%.o:				$(SRCDIR)/%.cpp
ifeq ($(CXXENABLED),1)
        $(CXX) $(CXXFLAGS)		-c		$< -o					$@
endif
$(BINDIR)/$(TESTDIR)/%.o:	$(TESTDIR)/%.cpp
		$(CXX) $(CXXFLAGS)		-c		$< -o					$@
$(NAME):                                        $(COBJ) $(CXXOBJ)
ifeq ($(TYPE),static)
ifeq ($(CXXENABLED),0)
		$(AR) $(ARFLAGS) $(NAME) $(COBJ)
endif
ifeq ($(CXXENABLED),1)
		$(AR) $(ARFLAGS) $(NAME) $(COBJ) $(CXXOBJ)
endif
endif
ifeq ($(TYPE),shared)
ifeq ($(CXXENABLED),0)
		$(CC) $(CFLAGS) -shared $(COBJ) -o $(NAME)
endif
ifeq ($(CXXENABLED),1)
		$(CXX) $(CXXFLAGS) -shared $(COBJ) $(CXXOBJ) -o $(NAME)
endif
endif
ifeq ($(TYPE),executable)
ifeq ($(CXXENABLED),0)
		$(CC) $(CFLAGS) $(COBJ) -o $(NAME)
endif
ifeq ($(CXXENABLED),1)
		$(CXX) $(CXXFLAGS) $(COBJ) $(CXXOBJ) -o $(NAME)
endif
endif
.PHONY:
		all fclean clean re test
