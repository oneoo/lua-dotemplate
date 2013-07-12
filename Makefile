MODNAME= dotemplate

INSTALL ?= install

.PHONY: all test install

all: ;

install:
	$(INSTALL) $(MODNAME).lua $< `lua installpath.lua $(MODNAME).lua`

