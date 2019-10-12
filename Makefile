# default variables
include ezbuild/header.mk

# here you can overide default values set inside header.mk
# mimal example: 
NAME                  := libft.a
TYPE                  := static     

# default build rules
include ezbuild/footer.mk
