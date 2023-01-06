## Common defines for ARM9 and ARM7 Makefiles ##

COMPARE ?= 1

default: all

PROJECT_ROOT := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Because mwldarm expects absolute paths to be WIN32 paths,
# all paths referring up from BUILD_DIR must be relative.
WORK_DIR   := $(shell realpath --relative-to $(CURDIR) $(PROJECT_ROOT))
$(shell mkdir -p $(BUILD_DIR))
BACK_REL   := $(shell realpath --relative-to $(BUILD_DIR) $(CURDIR))

TOOLSDIR     := $(WORK_DIR)/tools

include $(WORK_DIR)/platform.mk
include $(WORK_DIR)/binutils.mk

# NitroSDK tools
MWCC          = $(TOOLSDIR)/mwccarm/$(MWCCVER)/mwccarm.exe
MWAS          = $(TOOLSDIR)/mwccarm/$(MWCCVER)/mwasmarm.exe
MWLD          = $(BACK_REL)/$(TOOLSDIR)/mwccarm/$(MWCCVER)/mwldarm.exe
MAKEROM      := $(TOOLSDIR)/bin/makerom.exe
MAKELCF      := $(TOOLSDIR)/bin/makelcf.exe
MAKEBNR      := $(TOOLSDIR)/bin/makebanner.exe

export LM_LICENSE_FILE := $(TOOLSDIR)/mwccarm/license.dat

# Native tools
FIXROM       := $(TOOLSDIR)/fixrom/fixrom$(EXE)
ASPATCH      := $(TOOLSDIR)/mwasmarm_patcher/mwasmarm_patcher$(EXE)
MKFXCONST    := $(TOOLSDIR)/gen_fx_consts/gen_fx_consts$(EXE)

# Other tools
NTRMERGE      := $(TOOLSDIR)/ntr_merge_elf/ntr_merge_elf.sh
ASM_PROCESSOR := $(TOOLSDIR)/asm_processor/compile.sh

NATIVE_TOOLS := \
	$(FIXROM) \
	$(ASPATCH) \
	$(MKFXCONST)

TOOLDIRS := $(foreach tool,$(NATIVE_TOOLS),$(dir $(tool)))

PRECOMPILE_SRC := include/global/global.pch
PRECOMPILE_OBJ := $(BUILD_DIR)/precompile/global.mch
PRECOMPILE_OBJ_BASENAME := global.mch
PRECOMPILE_OBJ_DIR := $(dir $(PRECOMPILE_OBJ))
PRECOMPILE_DEPFILE := $(BUILD_DIR)/precompile/global.d

NITRO_PRECOMPILE_SRC := lib/NitroSDK/include/nitro.pch
NITRO_PRECOMPILE_OBJ := $(BUILD_DIR)/precompile/nitro.mch
NITRO_PRECOMPILE_OBJ_BASENAME := nitro.mch
NITRO_PRECOMPILE_OBJ_DIR := $(dir $(PRECOMPILE_OBJ))
NITRO_PRECOMPILE_DEPFILE := $(BUILD_DIR)/precompile/nitro.d

# Directories

LIB_SUBDIRS               := NitroSDK NitroSystem NitroDWC NitroWiFi libVCT

SRC_SUBDIR                := src
ASM_SUBDIR                := asm
LIB_SRC_SUBDIR            := lib/src $(LIB_SUBDIRS:%=lib/%/src)
LIB_ASM_SUBDIR            := lib/asm $(LIB_SUBDIRS:%=lib/%/asm)
ALL_SUBDIRS               := $(SRC_SUBDIR) $(ASM_SUBDIR) $(LIB_SRC_SUBDIR) $(LIB_ASM_SUBDIR)

SRC_BUILDDIR              := $(addprefix $(BUILD_DIR)/,$(SRC_SUBDIR))
ASM_BUILDDIR              := $(addprefix $(BUILD_DIR)/,$(ASM_SUBDIR))
LIB_SRC_BUILDDIR          := $(addprefix $(BUILD_DIR)/,$(LIB_SRC_SUBDIR))
LIB_ASM_BUILDDIR          := $(addprefix $(BUILD_DIR)/,$(LIB_ASM_SUBDIR))

C_SRCS                    := $(foreach dname,$(SRC_SUBDIR),$(wildcard $(dname)/*.c $(dname)/*/*.c))
ASM_SRCS                  := $(foreach dname,$(ASM_SUBDIR),$(wildcard $(dname)/*.s $(dname)/*/*.s))

# asm processor should only be necessary for libcrypto
GLOBAL_ASM_SRCS           := 
LIB_C_SRCS                := $(foreach dname,$(LIB_SRC_SUBDIR),$(wildcard $(dname)/*.c $(dname)/*/*.c))
LIB_ASM_SRCS              := $(foreach dname,$(LIB_ASM_SUBDIR),$(wildcard $(dname)/*.s $(dname)/*/*.s))
ALL_SRCS                  := $(C_SRCS) $(ASM_SRCS) $(LIB_C_SRCS) $(LIB_ASM_SRCS)

C_OBJS                    = $(C_SRCS:%.c=$(BUILD_DIR)/%.o)
ASM_OBJS                  = $(ASM_SRCS:%.s=$(BUILD_DIR)/%.o)
GLOBAL_ASM_OBJS           = $(GLOBAL_ASM_SRCS:%.c=$(BUILD_DIR)/%.o)
LIB_C_OBJS                = $(LIB_C_SRCS:%.c=$(BUILD_DIR)/%.o)
LIB_ASM_OBJS              = $(LIB_ASM_SRCS:%.s=$(BUILD_DIR)/%.o)
ALL_GAME_OBJS             = $(C_OBJS) $(ASM_OBJS)
ALL_LIB_OBJS              = $(LIB_C_OBJS) $(LIB_ASM_OBJS)
ALL_OBJS                  = $(ALL_GAME_OBJS) $(ALL_LIB_OBJS)

$(ALL_LIB_OBJS): DEFINES = $(GLB_DEFINES)

ALL_BUILDDIRS             := $(sort $(ALL_BUILDDIRS) $(foreach obj,$(ALL_OBJS),$(dir $(obj))))

NEF               := $(BUILD_DIR)/$(NEFNAME).nef
ELF               := $(NEF:%.nef=%.elf)
LCF               := $(NEF:%.nef=%.lcf)
RESPONSE          := $(NEF:%.nef=%.response)
SBIN              := $(NEF:%.nef=%.sbin)
XMAP              := $(NEF).xMAP

EXCCFLAGS         := -Cpp_exceptions off

include $(WORK_DIR)/force_active.mk

MWCFLAGS           = $(DEFINES) $(OPTFLAGS) -enum int -lang c99 $(EXCCFLAGS) -gccext,on -proc $(PROC) -msgstyle gcc -gccinc -ipa file -interworking -inline on,noauto -char signed
MWASFLAGS          = $(DEFINES) -proc $(PROC_S) -gccinc -i . -i ./include -i ./asm -i $(WORK_DIR)/files -I$(WORK_DIR)/lib/include -DSDK_ASM
MWLDFLAGS         := -w off -proc $(PROC) -nopic -nopid -interworking -map closure,unused -symtab sort -m _start -msgstyle gcc -force_active $(FORCE_ACTIVE_SYMBOLS)
ARFLAGS           := rcS

# The foreach iterates through all library folders defined in LIB_SUBDIRS
# and generates the relevant includes
# e.g. -I$(WORK_DIR)/lib/NitroSDK/include -I$(WORK_DIR)/lib/NitroSystem/include
LIBRARY_INCLUDE_FLAGS := -I$(WORK_DIR)/lib/include $(foreach dname,$(LIB_SUBDIRS),-I$(WORK_DIR)/lib/$(dname)/include)

SRC_INCLUDE_FLAGS := -i ./include -i ./include/library -i $(WORK_DIR)/files $(LIBRARY_INCLUDE_FLAGS)
SDK_INCLUDE_FLAGS := $(LIBRARY_INCLUDE_FLAGS)

#$(C_OBJS):   MWCFLAGS  +=          -include global/thumb.h -prefix $(PRECOMPILE_OBJ)

MW_COMPILE_SRC = $(WINE) $(MWCC) $(MWCFLAGS) $(SRC_INCLUDE_FLAGS) -i $(PRECOMPILE_OBJ_DIR) -include global/thumb.h -prefix $(PRECOMPILE_OBJ_BASENAME)
MW_COMPILE_SRC_PRECOMPILE = $(WINE) $(MWCC) $(MWCFLAGS) $(SRC_INCLUDE_FLAGS)
MW_COMPILE_LIB = $(WINE) $(MWCC) $(MWCFLAGS) $(SDK_INCLUDE_FLAGS) -i $(NITRO_PRECOMPILE_OBJ_DIR) -prefix $(NITRO_PRECOMPILE_OBJ_BASENAME)
MW_COMPILE_LIB_PRECOMPILE = $(WINE) $(MWCC) $(MWCFLAGS) $(SDK_INCLUDE_FLAGS)

MW_ASSEMBLE = $(WINE) $(MWAS) $(MWASFLAGS)

export MWCIncludes := lib/include

LSF               := $(addsuffix .lsf,$(NEFNAME))
ifneq ($(LSF),)
OVERLAYS          := $(shell $(GREP) -o "^Overlay \w+" $(LSF) | cut -d' ' -f2)
else
OVERLAYS          :=
endif

# Make sure build directories exist before compiling anything
DUMMY := $(shell mkdir -p $(ALL_BUILDDIRS) $(PRECOMPILE_OBJ_DIR))

.SECONDARY:
.SECONDEXPANSION:
.DELETE_ON_ERROR:
.PHONY: all tidy clean tools clean-tools $(TOOLDIRS)
.PRECIOUS: $(SBIN)
.NOTPARALLEL:

.PHONY: $(MWAS)
$(MWAS):
	$(ASPATCH) -q $@

all: tools

ifeq ($(NODEP),)
  ifneq ($(WINPATH),)
    PROJECT_ROOT_NT := $(shell $(WINPATH) -w $(PROJECT_ROOT) | $(SED) 's/\\/\//g')
    define fixdep
      $(SED) -i 's/\r//g; s/\\/\//g; s/\/$$/\\/g; s#$(PROJECT_ROOT_NT)#$(PROJECT_ROOT)#g' $(1)
      touch -r $(1:%.d=%.o) $(1)
    endef
    define fixdep_precompile
      $(SED) -i 's/\r//g; s/\\/\//g; s/\/$$/\\/g; s#$(PROJECT_ROOT_NT)#$(PROJECT_ROOT)#g' $(1)
      touch -r $(1:%.d=%.mch) $(1)
    endef
  else
    define fixdep
      $(SED) -i 's/\r//g; s/\\/\//g; s/\/$$/\\/g' $(1)
      touch -r $(1:%.d=%.o) $(1)
    endef
    define fixdep_precompile
      $(SED) -i 's/\r//g; s/\\/\//g; s/\/$$/\\/g' $(1)
      touch -r $(1:%.d=%.mch) $(1)
    endef
  endif
  DEPFLAGS := -gccdep -MD
  DEPFILES := $(ALL_OBJS:%.o=%.d)
  MW_COMPILE_SRC += $(DEPFLAGS)
  MW_COMPILE_SRC_PRECOMPILE += $(DEPFLAGS)
  MW_COMPILE_LIB += $(DEPFLAGS)
  MW_COMPILE_LIB_PRECOMPILE += $(DEPFLAGS)
  $(GLOBAL_ASM_OBJS): BUILD_C_SRC := $(ASM_PROCESSOR) "$(MW_COMPILE_SRC)" "$(MW_ASSEMBLE)"
  BUILD_C_SRC ?= $(MW_COMPILE_SRC) -c -o
  BUILD_C_LIB := $(MW_COMPILE_LIB) -c -o

# STILL IN NODEP=FALSE
$(PRECOMPILE_DEPFILE):
$(DEPFILES):

# TODO: figure out exact compiler versions for each SDK component
$(BUILD_DIR)/lib/NitroSDK/%.o: MWCCVER := 2.0/sp2

$(PRECOMPILE_OBJ): $(PRECOMPILE_SRC)
	$(MW_COMPILE_SRC_PRECOMPILE) $(PRECOMPILE_SRC) -precompile $(PRECOMPILE_OBJ)
	@$(call fixdep_precompile,$(PRECOMPILE_DEPFILE))

$(BUILD_DIR)/src/%.o: src/%.c $(PRECOMPILE_OBJ)
$(BUILD_DIR)/src/%.o: src/%.c $(BUILD_DIR)/src/%.d $(PRECOMPILE_OBJ)
	$(BUILD_C_SRC) $@ $<
	@$(call fixdep,$(BUILD_DIR)/src/$*.d)

$(NITRO_PRECOMPILE_OBJ): $(NITRO_PRECOMPILE_SRC)
	$(MW_COMPILE_LIB_PRECOMPILE) $(NITRO_PRECOMPILE_SRC) -precompile $(NITRO_PRECOMPILE_OBJ)
	@$(call fixdep_precompile,$(NITRO_PRECOMPILE_DEPFILE))

$(BUILD_DIR)/lib/%.o: lib/%.c $(NITRO_PRECOMPILE_OBJ)
$(BUILD_DIR)/lib/%.o: lib/%.c $(BUILD_DIR)/lib/%.d $(NITRO_PRECOMPILE_OBJ)
	$(MW_COMPILE_LIB) -I$(dir $<) -c -o $@ $<
	@$(call fixdep,$(BUILD_DIR)/lib/$*.d)

$(BUILD_DIR)/%.o: %.s
$(BUILD_DIR)/%.o: %.s $(BUILD_DIR)/%.d
	$(WINE) $(MWAS) $(MWASFLAGS) -I$(dir $<) $(DEPFLAGS) -o $@ $<
	@$(call fixdep,$(BUILD_DIR)/$*.d)

include $(wildcard $(DEPFILES))
-include $(PRECOMPILE_DEPFILE)
-include $(NITRO_PRECOMPILE_DEPFILE)

# END NODEP=FALSE
else
$(error NODEP not fully implemented)
$(GLOBAL_ASM_OBJS): BUILD_C_SRC := $(ASM_PROCESSOR) "$(MW_COMPILE_SRC)" "$(MW_ASSEMBLE)"
BUILD_C_SRC ?= $(MW_COMPILE_SRC) -c -o

$(BUILD_DIR)/%.o: %.c
	$(BUILD_C_SRC) $@ $<

$(BUILD_DIR)/%.o: %.s
	$(WINE) $(MWAS) $(MWASFLAGS) -o $@ $<
endif

$(NATIVE_TOOLS): tools

tools: $(TOOLDIRS) $(MWAS)

$(TOOLDIRS):
	@$(MAKE) -C $@

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) -C $(tool) clean;)

$(LCF): $(LSF) $(LCF_TEMPLATE)
	$(WINE) $(MAKELCF) $(MAKELCF_FLAGS) $^ $@
ifeq ($(PROC),arm946e)
	$(SED) -i '1i KEEP_SECTION\n{\n\t.exceptix\n}' $@
else
	$(SED) -i '/\} > check\.WORKRAM/a SDK_SUBPRIV_ARENA_LO = SDK_SUBPRIV_ARENA_LO + SDK_AUTOLOAD.EXT_WRAM.SIZE + SDK_AUTOLOAD.EXT_WRAM.BSS_SIZE;' $@
endif

RESPONSE_TEMPLATE    := $(PROJECT_ROOT)/mwldarm.response.template
RESPONSE_TEMPLATE_NT := $(PROJECT_ROOT_NT)/mwldarm.response.template

$(RESPONSE): $(LSF) $(RESPONSE_TEMPLATE)
	$(WINE) $(MAKELCF) $(MAKELCF_FLAGS) $< $(RESPONSE_TEMPLATE_NT) $@

# Locate crt0.o
CRT0_OBJ := lib/NitroSDK/asm/init/crt0.o

$(NEF): $(LCF) $(RESPONSE) $(ALL_OBJS)
	cd $(BUILD_DIR) && LM_LICENSE_FILE=$(BACK_REL)/$(LM_LICENSE_FILE) $(WINE) $(MWLD) $(MWLDFLAGS) $(LIBS) -o $(BACK_REL)/$(NEF) $(LCF:$(BUILD_DIR)/%=%) @$(RESPONSE:$(BUILD_DIR)/%=%) $(CRT0_OBJ)

.INTERMEDIATE: $(BUILD_DIR)/obj.list

$(SBIN): build/%.sbin: build/%.nef
ifeq ($(COMPARE),1)
	-$(SHA1SUM) --quiet -c $*.sha1
endif

$(ELF): %.elf: %.nef
	$(NTRMERGE) $*

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
