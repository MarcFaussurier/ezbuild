# default variables
include ezbuild/header.m4

# here you can overide default values set inside header.m4
# ...
# mimal setup: 
NAME 				        := libft		# outputname from project root that should contain extension if any
TYPE			        	:= executable 	# executable shared or static
DEBUG				        := 0			# 0 = off 1 = on
CXXENABLED	        := 1			# 0 = off 1 = on

# how to link libs
#LIBPATH		      	:= ./lib/foobar ./lib/foofoo
#LIBNAME		      	:= foobar foofoo 
#=> will link libfoobar.a from lib/foobar and libfoofoo lib/foofoo from to the executable 

# default build rules
include ezbuild/footer.m4
