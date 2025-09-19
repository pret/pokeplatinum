#include "overlay005/poketch_system.h"

#include <nitro.h>

#include "applications/poketch/unavailable/graphics.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "game_overlay.h"
#include "poketch.h"
#include "render_oam.h"
#include "system_flags.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(poketch_unavailable);
FS_EXTERN_OVERLAY(overlay25);

void FieldSystem_SendPoketchEvent(FieldSystem *fieldSystem, enum PoketchEventID eventID, u32 dummy)
{
    if (fieldSystem->unk_04 != NULL && fieldSystem->unk_04->poketchSys != NULL) {
        PoketchSystem_SendEvent(fieldSystem->unk_04->poketchSys, eventID, dummy);
    }
}

void PoketchSystem_InitBottomScreen(FieldSystem *fieldSystem)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (Poketch_IsEnabled(poketch)
        && SystemFlag_CheckPoketchHidden(varsFlags) == FALSE) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay25), OVERLAY_LOAD_ASYNC);
        PoketchSystem_Create(fieldSystem, &fieldSystem->unk_04->poketchSys, fieldSystem->saveData, fieldSystem->bgConfig, RenderOam_GetScreenOam(DS_SCREEN_SUB));
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(poketch_unavailable), OVERLAY_LOAD_ASYNC);
        PoketchUnavailableScreen_Init(fieldSystem->bgConfig);
    }
}

void PoketchSystem_EndBottomScreen(FieldSystem *fieldSystem)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (Poketch_IsEnabled(poketch)
        && SystemFlag_CheckPoketchHidden(varsFlags) == FALSE) {
        PoketchSystem_StartShutdown(fieldSystem->unk_04->poketchSys);
    } else {
        PoketchUnavailableScreen_Exit(fieldSystem->bgConfig);
    }
}

BOOL PoketchSystem_IsBottomScreenDone(FieldSystem *fieldSystem)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (Poketch_IsEnabled(poketch)
        && SystemFlag_CheckPoketchHidden(varsFlags) == FALSE) {
        if (PoketchSystem_IsSystemShutdown(fieldSystem->unk_04->poketchSys)) {
            fieldSystem->unk_04->poketchSys = NULL;
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay25));
            return TRUE;
        }
    } else {
        if (PoketchUnavailableScreen_IsDone(fieldSystem->bgConfig)) {
            Overlay_UnloadByID(FS_OVERLAY_ID(poketch_unavailable));
            return TRUE;
        }
    }

    return FALSE;
}

void BottomScreen_InitPoketchUnavailable(FieldSystem *fieldSystem)
{
    Overlay_LoadByID(FS_OVERLAY_ID(poketch_unavailable), OVERLAY_LOAD_ASYNC);
    PoketchUnavailableScreen_Init(fieldSystem->bgConfig);
}

void BottomScreen_EndPoketchUnavailable(FieldSystem *fieldSystem)
{
    PoketchUnavailableScreen_Exit(fieldSystem->bgConfig);
}

BOOL BottomScreen_IsPoketchUnavailableDone(FieldSystem *fieldSystem)
{
    if (PoketchUnavailableScreen_IsDone(fieldSystem->bgConfig)) {
        Overlay_UnloadByID(FS_OVERLAY_ID(poketch_unavailable));
        return TRUE;
    }

    return FALSE;
}
