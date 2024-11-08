.PHONY: all release debug check rom target format clean distclean setup_release setup_debug configure

MESON ?= meson
NINJA ?= ninja
WINELOADER ?= wine

BUILD ?= build
ROOT_INI := $(BUILD)/root.ini
DOT_MWCONFIG := $(BUILD)/.mwconfig

TOOLS := tools
WRAP := $(TOOLS)/cw
WRAP_BUILD := $(WRAP)/build
MWRAP := $(WRAP)/mwrap

UNAME_R := $(shell uname -r)
UNAME_S := $(shell uname -s)
CWD := $(shell pwd)

ifneq (,$(findstring Microsoft,$(UNAME_R)))
ifneq (,$(filter /mnt/%,$(CWD)))
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

export LM_LICENSE_FILE ?= $(WRAP)/license.dat
export NINJA_STATUS := [%p %f/%t] 
export MWCIncludes := $(PWD)/tools/cw/include/MSL_C;$(PWD)/tools/cw/include/MSL_Extras

all: release check

.NOTPARALLEL: release
release: setup_release rom

.NOTPARALLEL: debug
debug: setup_debug rom
	$(MESON) compile -C $(BUILD) debug.nef overlay.map

check: rom
	$(MESON) test -C $(BUILD)

rom: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) pokeplatinum.us.nds

target: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) $(MESON_TARGET)

format: $(BUILD)/build.ninja
	$(NINJA) -C $(BUILD) clang-format

clean: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) --clean

update: $(BUILD)/build.ninja
	$(MESON) subprojects update

distclean:
	rm -rf $(BUILD) $(MWRAP)

setup_release: $(BUILD)/build.ninja
	$(MESON) configure build -Dgdb_debugging=false

setup_debug: $(BUILD)/build.ninja
	$(MESON) configure build -Dgdb_debugging=true

configure: $(BUILD)/build.ninja

$(BUILD)/build.ninja: $(ROOT_INI) | $(BUILD)
	$(MESON) setup \
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
