#include "overlay005/ov5_021EA714.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay024/ov24_02253CE0.h"

#include "game_overlay.h"
#include "poketch_data.h"
#include "system_flags.h"
#include "unk_0200A784.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay24);
FS_EXTERN_OVERLAY(overlay25);

void ov5_021EA714(FieldSystem *fieldSystem, enum PoketchEventID eventID, u32 dummy)
{
    if (fieldSystem->unk_04 != NULL && fieldSystem->unk_04->poketchSys != NULL) {
        PoketchSystem_SendEvent(fieldSystem->unk_04->poketchSys, eventID, dummy);
    }
}

void ov5_021EA728(FieldSystem *fieldSystem)
{
    PoketchData *poketchData = SaveData_PoketchData(fieldSystem->saveData);
    VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (PoketchData_IsEnabled(poketchData)
        && (SystemFlag_CheckPoketchHidden(v1) == 0)) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay25), 2);
        PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->poketchSys, fieldSystem->saveData, fieldSystem->bgConfig, sub_0200A914(1));
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay24), 2);
        ov24_02253CE0(fieldSystem->bgConfig);
    }
}

void ov5_021EA790(FieldSystem *fieldSystem)
{
    PoketchData *poketchData = SaveData_PoketchData(fieldSystem->saveData);
    VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (PoketchData_IsEnabled(poketchData)
        && (SystemFlag_CheckPoketchHidden(v1) == 0)) {
        PoketchSystem_StartShutdown(fieldSystem->unk_04->poketchSys);
    } else {
        ov24_02253DA4(fieldSystem->bgConfig);
    }
}

u8 ov5_021EA7CC(FieldSystem *fieldSystem)
{
    PoketchData *poketchData = SaveData_PoketchData(fieldSystem->saveData);
    VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (PoketchData_IsEnabled(poketchData)
        && (SystemFlag_CheckPoketchHidden(v1) == 0)) {
        if (PoketchSystem_IsSystemShutdown(fieldSystem->unk_04->poketchSys)) {
            fieldSystem->unk_04->poketchSys = NULL;
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay25));
            return 1;
        }
    } else {
        if (ov24_02253DB4(fieldSystem->bgConfig)) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
            return 1;
        }
    }

    return 0;
}

void ov5_021EA830(FieldSystem *fieldSystem)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay24), 2);
    ov24_02253CE0(fieldSystem->bgConfig);
}

void ov5_021EA848(FieldSystem *fieldSystem)
{
    ov24_02253DA4(fieldSystem->bgConfig);
}

BOOL ov5_021EA854(FieldSystem *fieldSystem)
{
    if (ov24_02253DB4(fieldSystem->bgConfig)) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay24));
        return 1;
    }

    return 0;
}
