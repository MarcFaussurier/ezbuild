# default variables
include ezbuild/header.mk

# here you can overide default values set inside header.mk
# ...
# mimal setup: 
NAME                  := libft.a      # outputname from project root that should contain extension if any
TYPE                  := static       # executable shared or static
DEBUG                 := 0            # 0 = off 1 = on
CXXENABLED            := 1            # 0 = off 1 = on

# how to link libs
#LIBPATH              := ./lib/foobar ./lib/foofoo
#LIBNAME              := foobar foofoo 
#=> will link libfoobar.a from lib/foobar and libfoofoo.a from lib/foofoo to the compiled binary 

# default build rules
include ezbuild/footer.mk
