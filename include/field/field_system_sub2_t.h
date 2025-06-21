#ifndef POKEPLATINUM_FIELD_SYSTEM_SUB2_T_H
#define POKEPLATINUM_FIELD_SYSTEM_SUB2_T_H

#include "struct_decls/struct_02055CBC_decl.h"

#include "applications/poketch/base/poketch_system.h"
#include "overlay005/hblank_system.h"
#include "overlay005/map_name_popup.h"
#include "overlay005/struct_ov5_021D1A94_decl.h"
#include "overlay005/struct_ov5_021D5CB0_decl.h"
#include "overlay005/struct_ov5_021D5EF8_decl.h"
#include "overlay005/struct_ov5_021EF4F8_decl.h"

struct FieldSystem_sub2_t {
    BOOL unk_00;
    UnkStruct_ov5_021D1A94 *unk_04;
    MapNamePopUp *unk_08;
    UnkStruct_ov5_021D5EF8 *unk_0C;
    UnkStruct_ov5_021D5CB0 *unk_10;
    PoketchSystem *poketchSys;
    UnkStruct_02055CBC *unk_18;
    HBlankSystem *hBlankSystem;
    UnkStruct_ov5_021EF4F8 *unk_20;
    void *dynamicMapFeaturesData;
};

#endif // POKEPLATINUM_FIELD_SYSTEM_SUB2_T_H
