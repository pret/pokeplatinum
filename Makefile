MWCCVER        := 2.0/sp2p2
PROC           := arm946e
PROC_S         := arm5te
PROC_LD        := v5te
LCF_TEMPLATE   := ARM9-TS.lcf.template
LIBS           := -Llib -lsyscall -nostdlib
OPTFLAGS       := -O4,p

# Config
BUILD_DIR := build/platinum.us
NEFNAME := main
buildname := platinum.us
TITLE_NAME := POKEMON PL
GAME_CODE := CPUE
GAME_VERSION := PLATINUM
GAME_LANGUAGE := ENGLISH
SECURE_CRC := 0xF8B8
GF_DEFINES := -DGAME_VERSION=$(GAME_VERSION) -DGAME_LANGUAGE=$(GAME_LANGUAGE)
GF_DEFINES  += -DPM_KEEP_ASSERTS
GLB_DEFINES := -DSDK_CW_FORCE_EXPORT_SUPPORT -DSDK_TS -DSDK_4M -DSDK_ARM9 -DSDK_CW -DSDK_FINALROM -DSDK_LINK_ISD -DNNS_FINALROM -D_NITRO -DSDK_CODE_ARM
DEFINES = $(GF_DEFINES) $(GLB_DEFINES)

ALL_BUILDDIRS  := $(BUILD_DIR)/lib
include common.mk
include filesystem.mk

ROM             := $(BUILD_DIR)/poke$(buildname).nds
#BANNER          := $(ROM:%.nds=%.bnr)
#BANNER_SPEC     := $(buildname)/banner.bsf
#ICON_PNG        := $(buildname)/icon.png
BANNER          := $(buildname)/banner.bnr
HEADER_TEMPLATE := $(buildname)/rom_header_template.sbin

.PHONY: main libsyscall sdk sdk9 sdk7
.PRECIOUS: $(ROM)

MAKEFLAGS += --no-print-directory

all: $(ROM)

tidy:
	$(RM) -r $(BUILD_DIR)
	$(RM) -r $(PROJECT_CLEAN_TARGETS)
	$(RM) $(ROM)

clean: tidy clean-tools
	@$(MAKE) -C lib/syscall clean

sdk9 sdk7: sdk
main filesystem: | sdk9

main: $(SBIN) $(ELF)

ROMSPEC        := rom.rsf
MAKEROM_FLAGS  := $(DEFINES)

$(NEF): libsyscall

libsyscall:
	$(MAKE) -C lib/syscall all install INSTALL_PREFIX=$(abspath $(WORK_DIR)/$(BUILD_DIR)) GAME_CODE=$(GAME_CODE)

$(BUILD_DIR)/component.files: main ;

$(HEADER_TEMPLATE): ;

#$(ROM): $(ROMSPEC) filesystem $(BANNER)
$(ROM): $(ROMSPEC) main
	$(WINE) $(MAKEROM) $(MAKEROM_FLAGS) -DBUILD_DIR=$(BUILD_DIR) -DNITROFS_FILES="$(NITROFS_FILES:files/%=%)" -DTITLE_NAME="$(TITLE_NAME)" -DBNR="$(BANNER)" -DHEADER_TEMPLATE="$(HEADER_TEMPLATE)" $< $@
	$(FIXROM) $@ --secure-crc $(SECURE_CRC) --game-code $(GAME_CODE)
ifeq ($(COMPARE),1)
	$(SHA1SUM) -c $(buildname)/rom.sha1
endif

#$(BANNER): $(BANNER_SPEC) $(ICON_PNG:%.png=%.nbfp) $(ICON_PNG:%.png=%.nbfc)
#	$(WINE) $(MAKEBNR) $< $@

# TODO: move to NitroSDK makefile
FX_CONST_H := $(WORK_DIR)/lib/NitroSDK/include/nitro/fx/fx_const.h
PROJECT_CLEAN_TARGETS += $(FX_CONST_H)
$(FX_CONST_H): $(TOOLSDIR)/gen_fx_consts/fx_const.csv
	$(MKFXCONST) $@
sdk: $(FX_CONST_H)
$(WORK_DIR)/include/global.h: $(FX_CONST_H) ;

.PHONY:
