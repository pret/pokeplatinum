# Keep this list in alphabetical order for ease of reference.
.PHONY:           \
	all           \
	check         \
	clean         \
	configure     \
	distclean     \
	debug         \
	format        \
	meson         \
	purge         \
	release       \
	rom           \
	setup_debug   \
	setup_release \
	skrew         \
	skrewrm       \
	skrewup       \
	target        \
	update

ROM_REVISION ?= 1

SUBPROJ_DIR := subprojects

MESON_VER := 1.10.0
MESON_DIR := $(SUBPROJ_DIR)/meson-$(MESON_VER)
MESON_SUB := $(MESON_DIR)/meson.py

MESON ?= $(MESON_SUB)
NINJA ?= ninja
GIT ?= git

BUILD ?= build
BUILD_LINUX ?= $(BUILD)_linux
BUILD_WIN64 ?= $(BUILD)_win64
BUILD_NX ?= $(BUILD)_nx
ROOT_INI := $(BUILD)/root.ini
ROOT_INI_LINUX := $(BUILD_LINUX)/root.ini
ROOT_INI_WIN64 := $(BUILD_WIN64)/root.ini
ROOT_INI_NX := $(BUILD_NX)/root.ini

UNAME_R := $(shell uname -r)
UNAME_S := $(shell uname -s)
CWD := $(shell pwd)

# Check for Windows-drive access
ifneq (,$(findstring Microsoft,$(UNAME_R)))
  ifneq (,$(filter /mnt/%,$(realpath $(CWD))))
    WSL_ACCESSING_WINDOWS := 0
  else
    WSL_ACCESSING_WINDOWS := 1
  endif
else
  WSL_ACCESSING_WINDOWS := 1
endif

# Set up the compiler toolchain dependency
SKREW_GET := tools/devtools/get_metroskrew.sh
SKREW_VER := 0.1.3
SKREW_DIR := $(SUBPROJ_DIR)/metroskrew

ifneq (,$(findstring Linux,$(UNAME_S)))
  ifeq (0,$(WSL_ACCESSING_WINDOWS))
    NATIVE := native.ini
    CROSS := cross.ini
    SKREW_SYS := windows
    SKREW_EXE := $(SKREW_DIR)/bin/skrewrap.exe
  else
    NATIVE := native.ini
    CROSS := cross_unix.ini
    SKREW_SYS := linux
    SKREW_EXE := $(SKREW_DIR)/bin/skrewrap
  endif
else
  ifneq (,$(findstring Darwin,$(UNAME_S)))
    NATIVE := native_macos.ini
    CROSS := cross_unix.ini
    SKREW_SYS := wine
    SKREW_EXE := $(SKREW_DIR)/bin/skrewrap
  else
    ifneq (,$(findstring BSD, $(UNAME_S)))
      NATIVE := native.ini
      CROSS := cross_unix.ini
      SKREW_SYS := linux
      SKREW_EXE := $(SKREW_DIR)/bin/skrewrap
    else
      NATIVE := native.ini
      CROSS := cross.ini
      SKREW_SYS := windows
      SKREW_EXE := $(SKREW_DIR)/bin/skrewrap.exe
    endif
  endif
endif

export NINJA_STATUS := [%p %f/%t] 

# Modders can delete the `check` dependency here after their first build.
all: release

.NOTPARALLEL: release
release: setup_release rom

.NOTPARALLEL: debug
debug: setup_debug rom
	$(NINJA) -C $(BUILD) debug.nef overlay.map

check: rom
	$(MESON) test -C $(BUILD)

rom: $(BUILD)/build.ninja
	$(NINJA) -C $(BUILD) pokeplatinum.us.nds

format: $(BUILD)/build.ninja
	$(NINJA) -C $(BUILD) clang-format

target: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) $(MESON_TARGET)

linux: $(BUILD_LINUX)/build.ninja
	$(MESON) compile -C $(BUILD_LINUX)

win64: $(BUILD_WIN64)/build.ninja
	$(MESON) compile -C $(BUILD_WIN64)

nx: $(BUILD_NX)/build.ninja
	$(MESON) compile -C $(BUILD_NX)

clean: $(BUILD)/build.ninja
	$(MESON) compile -C $(BUILD) --clean
	rm -rf $(BUILD)/res

distclean:
	rm -rf $(BUILD)

purge: distclean
	rm -rf $(SKREW_DIR)
ifeq ($(MESON),$(MESON_SUB))
	! test -f $(MESON) || $(MESON) subprojects purge --confirm
	rm -rf $(MESON_DIR)
else
	$(MESON) subprojects purge --confirm
endif

update: meson skrewup
	$(MESON) subprojects update || true

setup_release: $(BUILD)/build.ninja
	$(MESON) configure $(BUILD) -Dgdb_debugging=false -Dlogging_enabled=false

setup_debug: $(BUILD)/build.ninja
	$(MESON) configure $(BUILD) -Dgdb_debugging=true -Dlogging_enabled=true

setup_linux: $(BUILD)_linux/build.ninja
	$(MESON) configure $(BUILD)_linux -Dbuild_target=linux

configure: $(BUILD)/build.ninja

$(BUILD)/build.ninja: $(ROOT_INI) | $(BUILD) $(SKREW_EXE) meson
	$(MESON) setup \
		-Drevision=$(ROM_REVISION) \
		--wrap-mode=nopromote \
		--native-file=meson/$(NATIVE) \
		--native-file=$(ROOT_INI) \
		--cross-file=meson/$(CROSS) \
		--cross-file=$(ROOT_INI) \
		-- $(BUILD)

$(BUILD_LINUX)/build.ninja: $(ROOT_INI_LINUX) | $(BUILD_LINUX) $(SKREW_EXE) meson
	$(MESON) setup \
		-Dbuild_target=linux \
		--native-file=meson/$(NATIVE) \
		--native-file=$(ROOT_INI_LINUX) \
		--cross-file=meson/cross_pcport_linux.ini \
		--cross-file=$(ROOT_INI_LINUX) \
		-- $(BUILD_LINUX)

$(BUILD_WIN64)/build.ninja: $(ROOT_INI_WIN64) | $(BUILD_WIN64) $(SKREW_EXE) meson
	$(MESON) setup \
		-Dbuild_target=win64 \
		--native-file=meson/$(NATIVE) \
		--native-file=$(ROOT_INI_WIN64) \
		--cross-file=meson/cross_pcport_win64.ini \
		--cross-file=$(ROOT_INI_WIN64) \
		-- $(BUILD_WIN64)

$(BUILD_NX)/build.ninja: $(ROOT_INI_NX) | $(BUILD_NX) $(SKREW_EXE) meson
	$(MESON) setup \
		-Dbuild_target=nx \
		--native-file=meson/$(NATIVE) \
		--native-file=$(ROOT_INI_NX) \
		--cross-file=meson/cross_nx.ini \
		--cross-file=$(ROOT_INI_NX) \
		-- $(BUILD_NX)

$(ROOT_INI): | $(BUILD)
	echo "[constants]" > $@
	echo "root = '$$PWD'" >> $@

$(ROOT_INI_LINUX): | $(BUILD_LINUX)
	echo "[constants]" > $@
	echo "root = '$$PWD'" >> $@
	
$(ROOT_INI_WIN64): | $(BUILD_WIN64)
	echo "[constants]" > $@
	echo "root = '$$PWD'" >> $@

$(ROOT_INI_NX): | $(BUILD_NX)
	echo "[constants]" > $@
	echo "root = '$$PWD'" >> $@

$(BUILD):
	mkdir -p -- $(BUILD)

$(BUILD_LINUX):
	mkdir -p -- $(BUILD_LINUX)

$(BUILD_WIN64):
	mkdir -p -- $(BUILD_WIN64)

$(BUILD_NX):
	mkdir -p -- $(BUILD_NX) 

meson: ;
ifeq ($(MESON),$(MESON_SUB))
meson: $(MESON_SUB)
endif

$(MESON_SUB):
	$(GIT) clone --depth=1 -b $(MESON_VER) https://github.com/mesonbuild/meson $(@D)

skrew: $(SKREW_EXE)

skrewrm:
	rm -rf $(SKREW_DIR)

skrewup: skrewrm skrew

$(SKREW_EXE):
	SKREW_SYS=$(SKREW_SYS) SKREW_VER=$(SKREW_VER) SKREW_DIR=$(SKREW_DIR) $(SKREW_GET)
