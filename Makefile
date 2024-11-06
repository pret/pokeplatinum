.PHONY: all release debug check rom target format clean distclean setup_release setup_debug configure

SHELL := /bin/bash
BUILD ?= build
TOOLS := tools
MESON ?= meson
NINJA ?= ninja
ROOT_INI := $(BUILD)/root.ini
DOT_MWCONFIG := $(BUILD)/.mwconfig
WINELOADER ?= wine

UNAME_R := $(shell uname -r)
UNAME_S := $(shell uname -s)
CWD := $(shell realpath .)

ifneq (,$(findstring Microsoft,$(UNAME_R)))
ifneq (,$(findstring /mnt/,$(CWD)))
WSL_ACCESSING_WINDOWS := 0
else
WSL_ACCESSING_WINDOWS := 1
endif
else
WSL_ACCESSING_WINDOWS := 1
endif

WRAP_CONFIG := 0
ifneq (,$(findstring Linux,$(UNAME_S)))
ifeq (0,$(WSL_ACCESSING_WINDOWS))
NATIVE := native.ini
CROSS := cross_unix.ini
else
NATIVE := native_unix.ini
CROSS := cross_unix.ini
endif
else
ifneq (,$(findstring Darwin,$(UNAME_S)))
NATIVE := native_macos.ini
CROSS := cross_unix.ini
else
NATIVE := native.ini
CROSS := cross.ini
endif
endif

WRAP := $(TOOLS)/cw
WRAP_BUILD := $(WRAP)/build
MWRAP := $(WRAP)/mwrap

export NINJA_STATUS := [%p %f/%t] 

all: release check

release: setup_release .WAIT rom

debug: setup_debug .WAIT rom
	$(MESON) compile -C $(BUILD) "debug.nef" "overlay.map"

check: rom
	$(MESON) test -C $(BUILD)

rom: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) "pokeplatinum.us.nds"

target: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) $(MESON_TARGET)

format: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) clang-format

clean: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) --clean

distclean:
	rm -rf $(BUILD) $(MWRAP)

setup_release: $(BUILD)/build.ninja
	$(MESON) configure build -Dgdb_debugging=false

setup_debug: $(BUILD)/build.ninja
	$(MESON) configure build -Dgdb_debugging=true

configure: $(BUILD)/build.ninja

$(BUILD)/build.ninja: $(ROOT_INI) $(DOT_MWCONFIG) | $(BUILD)
	MWCONFIG=$(abspath $(DOT_MWCONFIG)) $(MESON) setup \
	         --wrap-mode=nopromote \
	         --native-file=meson/$(NATIVE) \
	         --native-file=$(ROOT_INI) \
	         --cross-file=meson/$(CROSS) \
	         --cross-file=$(ROOT_INI) \
	         -- $(BUILD)

$(ROOT_INI): | $(BUILD)
	echo "[constants]" > $@
	echo "root = '$$PWD'" >> $@

$(DOT_MWCONFIG): $(MWRAP) | $(BUILD)
ifneq (,$(filter native_%.ini,$(NATIVE)))
	WINE="$$(command -v $(WINELOADER))"; \
	BUILD="$(BUILD)"; \
	MWCONFIG=$(abspath $(DOT_MWCONFIG)) $(MWRAP) -conf \
	         -wine "$$WINE" \
	         -path_unx "$$PWD" \
	         -path_win "$$("$$WINE" winepath -w "$$PWD")" \
	         -path_build_unx "$$BUILD" \
	         -path_build_win "$$("$$WINE" winepath -w "$$BUILD")"
else ifeq (0,$(WSL_ACCESSING_WINDOWS))
	BUILD="$(BUILD)"; \
	MWCONFIG=$(abspath $(DOT_MWCONFIG)) $(MWRAP) -conf \
	         -path_unx "$$PWD" \
	         -path_win "$$(wslpath -w "$$PWD")" \
	         -path_build_unx "$$BUILD" \
	         -path_build_win "$$(wslpath -w "$$PWD")"
else
	touch $(DOT_MWCONFIG)
endif

$(BUILD):
	mkdir -p -- $(BUILD)

$(MWRAP):
	rm -rf $(MWRAP) $(WRAP_BUILD)
	$(MESON) setup $(WRAP_BUILD) $(WRAP)
	$(MESON) compile -C $(WRAP_BUILD)
	install -m755 $(WRAP_BUILD)/$(@F) $@
	rm -rf $(WRAP_BUILD)
