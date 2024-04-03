#ifndef POKEPLATINUM_STRUCT_0205964C_H
#define POKEPLATINUM_STRUCT_0205964C_H

#include "struct_decls/sys_task.h"
#include "field/field_system_decl.h"
#include "functypes/funcptr_020598EC.h"
#include "struct_defs/struct_02072014.h"
#include "struct_decls/struct_party_decl.h"

#include <nitro/math.h>

typedef struct FieldCommunicationManager {
    TrainerCard * trainerCard[4];
    u8 unk_10[4];
    u8 padding_14[4];
    FieldSystem * fieldSys;
    MATHRandContext32 unk_1C;
    FieldCommTask task;
    SysTask * sysTask;
    u16 timer;
    u8 unk_3E;
    u8 padding_3F;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    Party * party;
} FieldCommunicationManager;

#endif // POKEPLATINUM_STRUCT_0205964C_H
