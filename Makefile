# =============================================================================
# ==================== GENERATED SECTION ======================================
# =============================================================================
CSRC			:=./src/ft_string/ft_strnstr.c\
./src/ft_string/ft_isdigit.c\
./src/ft_string/ft_atol.c\
./src/ft_string/ft_strlcpy.c\
./src/ft_string/ft_strlen.c\
./src/ft_string/ft_strnlen.c\
./src/ft_string/ft_strchr.c\
./src/ft_string/ft_strjoin.c\
./src/ft_string/ft_isascii.c\
./src/ft_string/ft_isprint.c\
./src/ft_string/ft_toupper.c\
./src/ft_string/ft_split.c\
./src/ft_string/ft_strrchr.c\
./src/ft_string/ft_isalpha.c\
./src/ft_string/ft_atoll.c\
./src/ft_string/ft_substr.c\
./src/ft_string/ft_strncmp.c\
./src/ft_string/ft_strcpy.c\
./src/ft_string/ft_strmapi.c\
./src/ft_string/ft_strtrim.c\
./src/ft_string/ft_islower.c\
./src/ft_string/ft_isupper.c\
./src/ft_string/ft_strlcat.c\
./src/ft_string/ft_trim_end.c\
./src/ft_string/ft_count_occ.c\
./src/ft_string/ft_strdup.c\
./src/ft_string/ft_atoi.c\
./src/ft_string/ft_trim_begin.c\
./src/ft_string/ft_isalnum.c\
./src/ft_string/ft_itoa.c\
./src/ft_string/ft_isspace.c\
./src/ft_string/ft_tolower.c\
./src/ft_string/ft_is_char_in.c\
./src/ft_io/ft_putstr_fd.c\
./src/ft_io/ft_putnbr.c\
./src/ft_io/ft_putnbr_fd.c\
./src/ft_io/ft_putendl.c\
./src/ft_io/ft_putendl_fd.c\
./src/ft_io/ft_ob.c\
./src/ft_io/ft_putchar.c\
./src/ft_io/ft_read.c\
./src/ft_io/ft_putchar_fd.c\
./src/ft_io/ft_read_fd.c\
./src/ft_io/ft_putstr.c\
./src/ft_memory/ft_memcmp.c\
./src/ft_memory/ft_bzero.c\
./src/ft_memory/ft_memcpy.c\
./src/ft_memory/ft_memccpy.c\
./src/ft_memory/ft_realloc.c\
./src/ft_memory/ft_freea.c\
./src/ft_memory/ft_memchr.c\
./src/ft_memory/ft_memset.c\
./src/ft_memory/ft_memmove.c\
./src/ft_memory/ft_calloc.c\
./src/ft_memory/ft_numlen.c\
./src/ft_memory/ft_bytes_digits.c
CXXSRC		:=
TESTSRC		:=./misc/tests/ft_string/strcpy.cpp\
./misc/tests/ft_string/strlcpy.cpp\
./misc/tests/ft_string/strdup.cpp\
./misc/tests/ft_string/isupper.cpp\
./misc/tests/ft_string/split.cpp\
./misc/tests/ft_string/isspace.cpp\
./misc/tests/ft_string/tolower.cpp\
./misc/tests/ft_string/atol.cpp\
./misc/tests/ft_string/isalnum.cpp\
./misc/tests/ft_string/islower.cpp\
./misc/tests/ft_string/isalpha.cpp\
./misc/tests/ft_string/strlcat.cpp\
./misc/tests/ft_string/toupper.cpp\
./misc/tests/ft_string/strncmp.cpp\
./misc/tests/ft_string/atoi.cpp\
./misc/tests/ft_string/isdigit.cpp\
./misc/tests/ft_string/isprint.cpp\
./misc/tests/ft_string/count_occ.cpp\
./misc/tests/ft_string/substr.cpp\
./misc/tests/ft_string/isascii.cpp\
./misc/tests/ft_string/strtrim_end.cpp\
./misc/tests/ft_string/strmapi.cpp\
./misc/tests/ft_string/strrchr.cpp\
./misc/tests/ft_string/strlen.cpp\
./misc/tests/ft_string/strjoin.cpp\
./misc/tests/ft_string/strtrim_begin.cpp\
./misc/tests/ft_string/atoll.cpp\
./misc/tests/ft_string/itoa.cpp\
./misc/tests/ft_string/strtrim.cpp\
./misc/tests/ft_string/strnstr.cpp\
./misc/tests/ft_string/strchr.cpp\
./misc/tests/utils/vmfill.cpp\
./misc/tests/utils/print.cpp\
./misc/tests/utils/rand.cpp\
./misc/tests/utils/fdfill.cpp\
./misc/tests/utils/memfill.cpp\
./misc/tests/utils/path.cpp\
./misc/tests/utils/setrlim.cpp\
./misc/tests/utils/utf8.cpp\
./misc/tests/ft_memory/bzero.cpp\
./misc/tests/ft_memory/memccpy.cpp\
./misc/tests/ft_memory/memcpy.cpp\
./misc/tests/ft_memory/memset.cpp\
./misc/tests/ft_memory/memmove.cpp\
./misc/tests/ft_memory/memcmp.cpp\
./misc/tests/ft_memory/calloc.cpp\
./misc/tests/ft_memory/memchr.cpp\
./misc/tests/main.cpp
BONUSSRC		:=./src_bonus/ft_list/ft_lstadd_back.c\
./src_bonus/ft_list/ft_lstnew.c\
./src_bonus/ft_list/ft_lstlast.c\
./src_bonus/ft_list/ft_lstclear.c\
./src_bonus/ft_list/ft_lstiter.c\
./src_bonus/ft_list/ft_lstmap.c\
./src_bonus/ft_list/ft_lstsize.c\
./src_bonus/ft_list/ft_lstadd_front.c\
./src_bonus/ft_list/ft_lstdelone.c
# =============================================================================
# =============== PROJECT CONFIGURATION SECTION ===============================
# =============================================================================
# full generated binary name (with extension, relative to Makefile dir)
NAME		:= libft.a
# valid output types are : executable static shared
TYPE		:= share
# will pass debug flags
DEBUG		:= 0
# where cpp tests dirs are
TESTDIR		:= misc/tests
# useful scripts
EZBUILD		:= misc/deps/ezbuild
# bonus
BONUSDIR	:= src_bonus
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
BONUSOBJ    ?= $(patsubst %.c,%.o,$(subst $(BONUSDIR),$(BINDIR),$(BONUSSRC)))
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
		$(EZBUILD)/Makemakefile -y
update:
		source $(EZBUILD)/update.sh && update
run:
		./$(NAME)
watch:
		source $(EZBUILD)/watcher.sh  && watchFolders "make make && make" "$(SRCDIR) $(TESTDIR)"
watch-test:
		source $(EZBUILD)/watcher.sh && watchFolders "make make && make test" "$(SRCDIR) $(TESTDIR)"
watch-run:
		source $(EZBUILD)/async.sh && source $(EZBUILD)/async_watcher.sh && asyncWatchFolders "make make && make run" "$(SRCDIR)" "$(TESTDIR)"
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
bonus:	$(COBJ) $(BONUSOBJ)
		$(AR) $(ARFLAGS) $(NAME) $(COBJ) $(BONUSOBJ)
release:
		source $(EZBUILD)/release.sh && release
$(BINDIR)/%.o:				$(BONUSDIR)/%.c
		$(CC) $(CFLAGS)			-c		$< -o					$@
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
