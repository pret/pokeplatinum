#ifndef POKEPLATINUM_STRUCT_0203068C_H
#define POKEPLATINUM_STRUCT_0203068C_H

#include "struct_defs/struct_0202D060.h"
#include "struct_defs/struct_0202D080.h"
#include "struct_defs/struct_0202D750.h"
#include "struct_defs/struct_0202D764.h"
#include "struct_defs/struct_0202FF58.h"
#include "struct_defs/struct_020300F4.h"
#include "struct_defs/struct_02030114.h"
#include "struct_defs/struct_0203026C.h"
#include "struct_defs/struct_020302DC.h"
#include "struct_defs/struct_0203041C.h"
#include "struct_defs/struct_020304A0.h"
#include "struct_defs/struct_020305B8.h"
#include "struct_defs/struct_02030698.h"

typedef struct BattleFrontier_t {
    UnkStruct_02030698 unk_00;
    union {
        UnkStruct_0202D060 unk_8E0_val1;
        UnkStruct_0202FF58 unk_8E0_val2;
        UnkStruct_02030114 unk_8E0_val3;
        UnkStruct_020302DC unk_8E0_val4;
        UnkStruct_020304A0 unk_8E0_val5;
    };
    struct {
        UnkStruct_0202D750 unk_00;
        UnkStruct_0202D080 unk_168;
        UnkStruct_0202D764 unk_188;
    } unk_950;
    struct {
        UnkStruct_020300F4 unk_00;
    } unk_1614;
    struct {
        UnkStruct_0203026C unk_00;
    } unk_1618;
    struct {
        UnkStruct_0203041C unk_00;
    } unk_161C;
    struct {
        UnkStruct_020305B8 unk_00;
    } unk_1620;
} BattleFrontier;

#endif // POKEPLATINUM_STRUCT_0203068C_H
