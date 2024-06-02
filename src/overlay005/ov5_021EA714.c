#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020507E4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "game_overlay.h"
#include "unk_0200A784.h"
#include "unk_020507CC.h"
#include "poketch_data.h"
#include "unk_0206A8DC.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay024/ov24_02253CE0.h"
#include "overlay025/poketch_system.h"

FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);

void ov5_021EA714 (FieldSystem * fieldSystem, int param1, u32 param2)
{
    if ((fieldSystem->unk_04 != NULL) && (fieldSystem->unk_04->unk_14 != NULL)) {
        ov25_02253D7C(fieldSystem->unk_04->unk_14, param1, param2);
    }
}


void ov5_021EA728 (FieldSystem * fieldSystem)
{
    PoketchData * v0 = SaveData_PoketchData(fieldSystem->saveData);
    FieldEvents * v1 = SaveData_GetFieldEvents(fieldSystem->saveData);

    if (PoketchData_IsEnabled(v0)
        && (sub_0206AE2C(v1) == 0)) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
        PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->unk_14, fieldSystem->saveData, fieldSystem->unk_08, sub_0200A914(1));
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay24), 2);
        ov24_02253CE0(fieldSystem->unk_08);
    }
}

void ov5_021EA790 (FieldSystem * fieldSystem)
{
    PoketchData * v0 = SaveData_PoketchData(fieldSystem->saveData);
    FieldEvents * v1 = SaveData_GetFieldEvents(fieldSystem->saveData);

    if (PoketchData_IsEnabled(v0)
        && (sub_0206AE2C(v1) == 0)) {
        ov25_02253D5C(fieldSystem->unk_04->unk_14);
    } else {
        ov24_02253DA4(fieldSystem->unk_08);
    }
}

u8 ov5_021EA7CC (FieldSystem * fieldSystem)
{
    PoketchData * v0 = SaveData_PoketchData(fieldSystem->saveData);
    FieldEvents * v1 = SaveData_GetFieldEvents(fieldSystem->saveData);

    if (PoketchData_IsEnabled(v0)
        && (sub_0206AE2C(v1) == 0)) {
        if (ov25_02253D70(fieldSystem->unk_04->unk_14)) {
            fieldSystem->unk_04->unk_14 = NULL;
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay25));
            return 1;
        }
    } else {
        if (ov24_02253DB4(fieldSystem->unk_08)) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
            return 1;
        }
    }

    return 0;
}

void ov5_021EA830 (FieldSystem * fieldSystem)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay24), 2);
    ov24_02253CE0(fieldSystem->unk_08);
}

void ov5_021EA848 (FieldSystem * fieldSystem)
{
    ov24_02253DA4(fieldSystem->unk_08);
}

BOOL ov5_021EA854 (FieldSystem * fieldSystem)
{
    if (ov24_02253DB4(fieldSystem->unk_08)) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
        return 1;
    }

    return 0;
}
