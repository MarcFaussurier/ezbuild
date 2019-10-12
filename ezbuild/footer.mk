ifeq ($(CSRC),)
	CSRC 				:= $(call find_by_ext,$(SRCPATH),c)
endif
ifeq ($(COBJ),)
	COBJ				:= $(call replace_ext,c,o,$(call str_replace,$(CSRC),$(SRCPATH),$(BINPATH)))
endif
ifeq ($(CXXSRC),)
	CXXSRC				:= $(call find_by_ext,$(SRCPATH),cpp)
endif
ifeq ($(CXXOBJ),)
	CXXOBJ				:= $(call replace_ext,cpp,o,$(call str_replace,$(CXXSRC),$(SRCPATH),$(BINPATH)))
endif
ifeq ($(TESTSRC),)
	TESTSRC				:= $(call find_by_ext,$(TESTPATH),cpp)
endif
ifeq ($(TESTOBJ),)
	TESTOBJ					:= $(call replace_ext,cpp,o,$(call str_replace,$(TESTSRC),$(TESTPATH),$(BINPATH)$(TESTPATH)))
endif
ifneq ($(LIBPATH),)
	LIBPATH					:= $(call add_prefix,-L,$(LIBPATH))
endif
ifneq ($(LIBNAME),)
	LIBNAME					:= $(call add_prefix,-l,$(LIBNAME))
endif
INC							:= $(call add_prefix,-I,$(INC))
CXXFLAGS					:= $(CXXFLAGS) $(INC) $(LIBPATH) $(LIBNAME)
CFLAGS						:= $(CFLAGS) $(INC) $(LIBPATH) $(LIBNAME)
TESTFLAGS					:= $(TESTFLAGS) $(INC) $(LIBPATH) $(LIBNAME) 
ifeq ($(DEBUG),1)
	CXXFLAGS 				+= -g -fsanitize=address -fno-omit-frame-pointer
	CFLAGS					+= -g -fsanitize=address -fno-omit-frame-pointer
endif
 
all:						$(NAME)

$(BINPATH)/%.o:				$(SRCPATH)/%.c
	$(CC) -M $(CFLAGS) 		-c $< -o $@

$(BINPATH)/%.o:				$(SRCPATH)/%.cpp
ifeq ($(CXXENABLED),1)
	$(CXX) -M $(CXXFLAGS) 	-c $< -o $@
endif

$(BINPATH)$(TESTPATH)/%.o:	$(TESTPATH)/%.cpp
ifeq ($(CXXENABLED),1)
	$(CXX) -M $(CXXFLAGS) 	-c $< -o $@
endif

$(NAME):					$(COBJ) $(CXXOBJ)
ifeq ($(TYPE),static)
ifeq ($(CXXENABLED),0)
	$(AR) $(NAME) $(COBJ)
endif
ifeq ($(CXXENABLED),1)
	$(AR) $(NAME) $(COBJ) $(CXXOBJ)
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

watch-compile:

watch-test:

test:						$(COBJ) $(CXXOBJ) $(TESTOBJ)
	$(CXX) -o $(BINPATH)$(TESTPATH)$(TEST) $(COBJ) $(CXXOBJ) $(TESTOBJ)
	./$(BINPATH)$(TESTPATH)$(TEST)

clean:
	$(RM) $(COBJ) $(CXXOBJ) $(TESTOBJ)

fclean:
	$(RM) $(NAME) $(BINPATH)$(TESTPATH)$(TEST)

re:
	fclean all test

.PHONY: 
	all fclean clean re test
