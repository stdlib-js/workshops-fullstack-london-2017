
# VERBOSITY #

ifndef VERBOSE
	QUIET := @
endif


# VARIABLES #

# Define the command for `node`:
NODE ?= node

# Define the command for `npm`:
NPM ?= npm

# Define the command for `bower`:
BOWER ?= bower

# Define the command for remove files:
DELETE ?= -rm
DELETE_FLAGS ?= -rf

# Determine the filename:
this_file := $(lastword $(MAKEFILE_LIST))

# Determine the absolute path of the Makefile (see http://blog.jgc.org/2007/01/what-makefile-am-i-in.html):
this_dir := $(dir $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST)))

# Remove the trailing slash:
this_dir := $(patsubst %/,%,$(this_dir))

# Define the root project directory:
ROOT_DIR ?= $(this_dir)

# Define the path to the root `package.json`:
ROOT_PACKAGE_JSON ?= $(ROOT_DIR)/package.json

# Define the path to the root `bower.json`:
ROOT_BOWER_JSON ?= $(ROOT_DIR)/bower.json

# Define the root build directory:
BUILD_DIR ?= $(ROOT_DIR)/build

# Define the top-level directory containing node module dependencies:
NODE_MODULES ?= $(ROOT_DIR)/node_modules

# Define the top-level directory containing bower components:
BOWER_COMPONENTS ?= $(ROOT_DIR)/components

# Define the top-level directory containing node module executables:
BIN_DIR ?= $(NODE_MODULES)/.bin

# Define the path to the [`polyserve`][1] executable:
#
# [1]: https://github.com/Polymer/polyserve
POLYSERVE ?= $(BIN_DIR)/polyserve

# Define command-line options to be used when invoking the `polyserve` executable:
POLYSERVE_FLAGS ?= -o


# TARGETS #

# Install dependencies.
#
# This target installs dependencies.

install: install-node install-bower

.PHONY: install


# Perform clean-up.
#
# This target runs the project's cleanup sequence.

clean: clean-node
	$(QUIET) $(DELETE) $(DELETE_FLAGS) $(BUILD_DIR)

.PHONY: clean


# Install node module dependencies.
#
# This target installs package dependencies by executing [`npm install`][1]. Packages will be installed in a local `node_modules` directory relative to the project's `package.json` file.
#
# [1]: https://docs.npmjs.com/cli/install

install-node: $(ROOT_PACKAGE_JSON)
	$(QUIET) $(NPM) install

.PHONY: install-node


# Remove node module dependencies.
#
# This target cleans the `node_modules` directory by removing it entirely.

clean-node:
	$(QUIET) $(DELETE) $(DELETE_FLAGS) $(NODE_MODULES)

.PHONY: clean-node


# Install bower components.
#
# This target installs bower components by executing [`bower install`][1]. Components will be installed in a local `components` directory relative to the project's `bower.json` file.
#
# [1]: https://bower.io/#install-packages

install-bower: $(ROOT_BOWER_JSON)
	$(QUIET) bower install

.PHONY: install-bower


# Remove bower components.
#
# This target cleans the `components` directory by removing it entirely.

clean-bower:
	$(QUIET) $(DELETE) $(DELETE_FLAGS) $(BOWER_COMPONENTS)

.PHONY: clean-bower


# Run a development server.
#
# This target launches a development server which resolves relative URLs, including those which point to resources outside of a project directory.

dev: $(NODE_MODULES)
	$(QUIET) $(POLYSERVE) $(POLYSERVE_FLAGS)

.PHONY: dev
