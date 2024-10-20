.PHONY: configure rom check target format clean setup_release setup_debug release debug

SHELL := /bin/bash
POKEPLATINUM_BUILD ?= build
TOOLS := tools
MESON ?= meson
NINJA ?= ninja
ROOT_INI := $(POKEPLATINUM_BUILD)/root.ini
DOT_MWCONFIG := $(POKEPLATINUM_BUILD)/.mwconfig
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

ifneq (,$(findstring Linux,$(UNAME_S)))
ifeq (0,$(WSL_ACCESSING_WINDOWS))
NATIVE := native.ini
CROSS := cross_unix.ini
WRAP_CONFIG := 0
else
NATIVE := native_unix.ini
CROSS := cross_unix.ini
WRAP_CONFIG := 0
endif
else
ifneq (,$(findstring Darwin,$(UNAME_S)))
NATIVE := native_macos.ini
CROSS := cross_unix.ini
WRAP_CONFIG := 0
else
NATIVE := native.ini
CROSS := cross.ini
WRAP_CONFIG := 1
endif
endif

ifneq (,$(findstring native_,$(NATIVE)))
WRAP_WINE := $(shell which $(WINELOADER))
WRAP_PATH_UNX := $(CWD)
WRAP_PATH_WIN := $(shell $(WRAP_WINE) winepath -w $(WRAP_PATH_UNX))
WRAP_PATH_BUILD_UNX := $(POKEPLATINUM_BUILD)
WRAP_PATH_BUILD_WIN := $(shell $(WRAP_WINE) winepath -w $(WRAP_PATH_BUILD_UNX))
else
ifeq (0,$(WSL_ACCESSING_WINDOWS))
WRAP_WINE :=
WRAP_PATH_UNX := $(CWD)
WRAP_PATH_WIN := $(shell wslpath -w $(WRAP_PATH_UNX))
WRAP_PATH_BUILD_UNX := $(POKEPLATINUM_BUILD)
WRAP_PATH_BUILD_WIN := $(shell wslpath -w $(WRAP_PATH_BUILD_UNX))
endif
endif

WRAP := $(TOOLS)/cw
WRAP_BUILD := $(WRAP)/build
MWRAP := $(WRAP)/mwrap

ROOT := $(CWD)

NINJA_STATUS := "[%p %f/%t] "

release: setup_release rom

debug: setup_debug rom
	NINJA_STATUS=$(NINJA_STATUS) $(MESON) compile -C $(POKEPLATINUM_BUILD) "debug.nef" "overlay.map"

setup_release:
	$(MESON) configure build "-Dgdb_debugging=false"

setup_debug:
	$(MESON) configure build "-Dgdb_debugging=true"

rom:
	NINJA_STATUS=$(NINJA_STATUS) $(MESON) compile -C $(POKEPLATINUM_BUILD) "pokeplatinum.us.nds"

check:
	NINJA_STATUS=$(NINJA_STATUS) $(MESON) test -C $(POKEPLATINUM_BUILD)

target:
	NINJA_STATUS=$(NINJA_STATUS) $(MESON) compile -C $(POKEPLATINUM_BUILD) $(MESON_TARGET)

$(MWRAP):
	rm -rf $(MWRAP) $(WRAP_BUILD)
	$(MESON) setup "$(WRAP_BUILD)" "$(WRAP)"
	$(MESON) compile -C "$(WRAP_BUILD)"
	install -m755 "$(WRAP_BUILD)/$(@F)" $@
	rm -rf $(WRAP_BUILD)

$(POKEPLATINUM_BUILD):
	mkdir -p -- $(POKEPLATINUM_BUILD)

$(ROOT_INI): | $(POKEPLATINUM_BUILD)
	echo "[constants]" > $@
	echo "root = '$(ROOT)'" >> $@

$(DOT_MWCONFIG): | $(POKEPLATINUM_BUILD)
	touch $(DOT_MWCONFIG)

configure: $(MWRAP) $(ROOT_INI) $(DOT_MWCONFIG)
ifeq (0,$(WRAP_CONFIG))
	MWCONFIG=$(realpath -- $(DOT_MWCONFIG)) $(MWRAP) -conf \
			 -wine "$(WRAP_WINE)" \
			 -path_unx "$(WRAP_PATH_UNX)" \
			 -path_win "$(WRAP_PATH_WIN)" \
			 -path_build_unx "$(WRAP_PATH_BUILD_UNX)" \
			 -path_build_win "$(WRAP_PATH_BUILD_WIN)"
endif
	MWCONFIG=$(realpath -- $(DOT_MWCONFIG)) $(MESON) setup \
			 --wrap-mode=nopromote \
			 --native-file=meson/$(NATIVE) \
			 --native-file=$(ROOT_INI) \
			 --cross-file=meson/$(CROSS) \
			 --cross-file=$(ROOT_INI) \
			 -- $(POKEPLATINUM_BUILD)

format:
	$(NINJA) -C $(POKEPLATINUM_BUILD) clang-format

clean:
	$(MESON) compile -C $(POKEPLATINUM_BUILD) --clean
