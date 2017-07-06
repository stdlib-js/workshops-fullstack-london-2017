
# VERBOSITY #

ifndef VERBOSE
	QUIET := @
endif


# VARIABLES #

# Determine the filename:
this_file := $(lastword $(MAKEFILE_LIST))

# Determine the absolute path of the Makefile (see http://blog.jgc.org/2007/01/what-makefile-am-i-in.html):
this_dir := $(dir $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST)))

# Remove the trailing slash:
this_dir := $(patsubst %/,%,$(this_dir))

# Define the root project directory:
ROOT_DIR ?= $(this_dir)

# Define the root build directory:
BUILD_DIR ?= $(ROOT_DIR)/build

# Define the top-level directory containing node module dependencies:
NODE_MODULES ?= $(ROOT_DIR)/node_modules

# Define the top-level directory containing node module executables:
BIN_DIR ?= $(NODE_MODULES)/.bin

# Define the path to the [`polyserve`][1] executable:
#
# [1]: https://github.com/Polymer/polyserve
POLYSERVE ?= $(BIN_DIR)/polyserve

# Define command-line options to be used when invoking the `polyserve` executable:
POLYSERVE_FLAGS ?= -o


# TARGETS #

# Run a development server.
#
# This target launches a development server which resolves relative URLs, including those which point to resources outside of a project directory.

dev: $(NODE_MODULES)
	$(QUIET) $(POLYSERVE) $(POLYSERVE_FLAGS)

.PHONY: dev
