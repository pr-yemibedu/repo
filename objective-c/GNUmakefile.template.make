# This is a template GNUmakefile
# copy this file to your application directory as GNUmakefile
# run "make" from the command line to build your app

# make sure this matches the location on your machine
GNUSTEP_MAKEFILES=/usr/share/GNUstep/Makefiles

# standard include
include $(GNUSTEP_MAKEFILES)/common.make

# You need to modify the following variables for your app
APP_NAME = <app name here>
$(APP_NAME)_HEADERS = <space separated list of header (.h) files>
$(APP_NAME)_OBJC_FILES = <space separated list of implementation (.m) files>
$(APP_NAME)_RESOURCE_FILES = <space separated list of resource files>

# standard include
include $(GNUSTEP_MAKEFILES)/application.make

# this include contains additional targets
include ../common.make

