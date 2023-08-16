# commands.mk
# .make
#
# Copyright © 2023 Dagitali LLC. All rights reserved.
#
# Reduces shell command verbosity via constants representing prefixes to such
# commands.
# See https://www.gnu.org/software/make/manual/make.html.
#
# REFERENCES:
# 1. https://www.gnu.org/prep/standards/html_node/Makefile-Conventions.html
# 2. https://www.gnu.org/software/make
# 4. https://web.mit.edu/gnu/doc/html/make_6.html


# SECTION: INTERNAL VARIABLES =============================================== #

### Commands ###

# Command options for no verbosity.
ifeq ($(VERBOSE),0)
q := --quiet
s := --silent
endif

# Command options for verbosity.
ifneq ($(VERBOSE),0)
v := -v
endif

# Command prefix for transferring data.
curl := curl $(s) --create-dirs --output

# Command prefix for creating directores.
mkdir := mkdir $(v) -p

# Command prefix for removing directores/files.
rm := rm $(v) -rf