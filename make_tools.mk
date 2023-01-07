MAKEFLAGS += --no-print-directory

#TOOLDIRS := $(filter-out tools/mwccarm tools/bin tools/ntr_merge_elf tools/asmdiff,$(wildcard tools/*))
TOOLDIRS := tools/fixrom tools/gen_fx_consts tools/mwasmarm_patcher

.PHONY: all $(TOOLDIRS)

all: $(TOOLDIRS)

$(TOOLDIRS):
	$(MAKE) -C $@
