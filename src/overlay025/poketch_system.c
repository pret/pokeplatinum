#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02018340_decl.h"
#include "trainer_info.h"
#include "field/field_system_decl.h"
#include "savedata.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/poketch_button.h"

#include "touch_screen.h"

#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201E3D8.h"
#include "unk_02025E08.h"
#include "unk_0203CC84.h"
#include "trainer_info.h"
#include "unk_020508D4.h"
#include "unk_02099D44.h"
#include "overlay025/ov25_02254560.h"

FS_EXTERN_OVERLAY(overlay26);
FS_EXTERN_OVERLAY(overlay27);
FS_EXTERN_OVERLAY(overlay28);
FS_EXTERN_OVERLAY(overlay29);
FS_EXTERN_OVERLAY(overlay30);
FS_EXTERN_OVERLAY(overlay31);
FS_EXTERN_OVERLAY(overlay32);
FS_EXTERN_OVERLAY(overlay33);
FS_EXTERN_OVERLAY(overlay34);
FS_EXTERN_OVERLAY(overlay35);
FS_EXTERN_OVERLAY(overlay36);
FS_EXTERN_OVERLAY(overlay37);
FS_EXTERN_OVERLAY(overlay38);
FS_EXTERN_OVERLAY(overlay39);
FS_EXTERN_OVERLAY(overlay40);
FS_EXTERN_OVERLAY(overlay41);
FS_EXTERN_OVERLAY(overlay42);
FS_EXTERN_OVERLAY(overlay43);
FS_EXTERN_OVERLAY(overlay44);
FS_EXTERN_OVERLAY(overlay45);
FS_EXTERN_OVERLAY(overlay46);
FS_EXTERN_OVERLAY(overlay47);
FS_EXTERN_OVERLAY(overlay48);
FS_EXTERN_OVERLAY(overlay49);
FS_EXTERN_OVERLAY(overlay50);
FS_EXTERN_OVERLAY(overlay52);
FS_EXTERN_OVERLAY(overlay53);
FS_EXTERN_OVERLAY(overlay54);
FS_EXTERN_OVERLAY(overlay55);

static PoketchSystem *PoketchSystem_GetFromFieldSystem(void);
static BOOL PoketchSystem_InitInternal(PoketchSystem *poketchSys);
static void PoketchSystem_Shutdown(PoketchSystem *poketchSys);
static void PoketchSystem_MainTask(SysTask *param0, void * param1);
static void ov25_02253E94(SysTask *param0, void * param1);
static void ov25_02253E9C(PoketchSystem *poketchSys, u32 param1);
static void ov25_02253EA4(PoketchSystem *poketchSys);
static void ov25_02253F2C(PoketchSystem *poketchSys);
static void ov25_0225406C(PoketchSystem *poketchSys);
static void ov25_022540D8(PoketchSystem *poketchSys);
static void PoketchSystem_LoadApp(PoketchSystem *poketchSys, int param1);
static void PoketchSystem_UnloadApp(PoketchSystem *poketchSys);
static void ov25_022541D8(PoketchSystem *poketchSys, u32 param1);
static BOOL ov25_022541FC(PoketchSystem *poketchSys);
static void ov25_0225420C(PoketchSystem *poketchSys);
static BOOL ov25_02254228(PoketchSystem *poketchSys);
static BOOL ov25_02254284(PoketchSystem *poketchSys);
static void PoketchSystem_ButtonShutdown(PoketchSystem *poketchSys);
static void PoketchSystem_ButtonUpdate(PoketchSystem *poketchSys);
static void ov25_022542E4(u32 param0, u32 param1, u32 param2, void * param3);
static BOOL ov25_022543EC(UnkStruct_ov25_02254560 * param0, u32 param1);
static inline BOOL inline_ov25_0225446C(u32 param0, u32 param1);

// the order of this array determines the app order in the poketch.
static const struct {
    int appID;
    FSOverlayID overlayID;
} sAppOverlayIDs[] = {
    {POKETCH_APPID_DIGITALWATCH,        FS_OVERLAY_ID(overlay26)},
    {POKETCH_APPID_STOPWATCH,           FS_OVERLAY_ID(overlay27)},
    {POKETCH_APPID_CALCULATOR,          FS_OVERLAY_ID(overlay28)},
    {POKETCH_APPID_MEMOPAD,             FS_OVERLAY_ID(overlay29)},
    {POKETCH_APPID_ANALOGWATCH,         FS_OVERLAY_ID(overlay30)},
    {POKETCH_APPID_DOTART,              FS_OVERLAY_ID(overlay31)},
    {POKETCH_APPID_PARTYSTATUS,         FS_OVERLAY_ID(overlay32)},
    {POKETCH_APPID_FRIENDSHIPCHECKER,   FS_OVERLAY_ID(overlay33)},
    {POKETCH_APPID_DOWSINGMACHINE,      FS_OVERLAY_ID(overlay34)},
    {POKETCH_APPID_COUNTER,             FS_OVERLAY_ID(overlay35)},
    {POKETCH_APPID_PEDOMETER,           FS_OVERLAY_ID(overlay36)},
    {POKETCH_APPID_DAYCARECHECKER,      FS_OVERLAY_ID(overlay40)},
    {POKETCH_APPID_ROULETTE,            FS_OVERLAY_ID(overlay41)},
    {POKETCH_APPID_COINTOSS,            FS_OVERLAY_ID(overlay42)},
    {POKETCH_APPID_MOVETESTER,          FS_OVERLAY_ID(overlay43)},
    {POKETCH_APPID_MATCHUPCHECKER,      FS_OVERLAY_ID(overlay44)},
    {POKETCH_APPID_ALARMCLOCK,          FS_OVERLAY_ID(overlay45)},
    {POKETCH_APPID_KITCHENTIMER,        FS_OVERLAY_ID(overlay46)},
    {POKETCH_APPID_MARKINGMAP,          FS_OVERLAY_ID(overlay47)},
    {POKETCH_APPID_BERRYSEARCHER,       FS_OVERLAY_ID(overlay48)},
    {POKETCH_APPID_COLORCHANGER,        FS_OVERLAY_ID(overlay49)},
    {POKETCH_APPID_CALENDAR,            FS_OVERLAY_ID(overlay50)},
    {POKETCH_APPID_LINKSEARCHER,        FS_OVERLAY_ID(overlay52)},
    {POKETCH_APPID_RADARCHAINCOUNTER,   FS_OVERLAY_ID(overlay53)},
    {POKETCH_APPID_POKEMONHISTORY,      FS_OVERLAY_ID(overlay54)}
};

static PoketchSystem *PoketchSystem_GetFromFieldSystem(void)
{
    return FieldSystem_PoketchSystem();
}


void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_MAIN, HEAP_SIZE_POKETCH_MAIN);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, HEAP_SIZE_POKETCH_APP);

    PoketchSystem *new_system = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(PoketchSystem));

    if (new_system != NULL) {
        *poketchSys = new_system;

        new_system->fieldSystem = fieldSystem;
        new_system->saveData = saveData;
        new_system->poketchData = SaveData_PoketchData(saveData);
        new_system->bgl = bgl;
        new_system->unk_50 = oamManager;

        if (PoketchSystem_InitInternal(new_system)) {
            sub_0201E3D8();
            sub_0201E450(4);

            new_system->poketchSysPtr = poketchSys;
            new_system->unk_38 = SysTask_Start(ov25_02253E94, new_system, 4);

            SysTask_Start(PoketchSystem_MainTask, new_system, 0);
        }
    }
}

void ov25_02253D5C (PoketchSystem *poketchSys)
{
    if ((poketchSys->unk_00 != 3) && (poketchSys->unk_00 != 4)) {
        ov25_02253E9C(poketchSys, 3);
    }
}

BOOL ov25_02253D70 (PoketchSystem *poketchSys)
{
    return poketchSys == NULL;
}

void ov25_02253D7C (PoketchSystem *poketchSys, int param1, u32 param2)
{
    switch (param1) {
    case 0:
        break;
    case 1:
        poketchSys->unk_04 = 1;
        break;
    case 5:{
        u32 step_count = PoketchData_StepCount(poketchSys->poketchData);

        if (++step_count > 99999) {
            step_count = 0;
        }

        PoketchData_SetStepCount(poketchSys->poketchData, step_count);
        poketchSys->pedometerUpdated = TRUE;
    }
    break;
    case 4:
        if (poketchSys->unk_02 == 2) {
            if (poketchSys->unk_44) {
                poketchSys->unk_44(poketchSys->unk_48);
            }
        }
        break;
    }
}

BOOL ov25_02253DD4 (PoketchSystem *poketchSys)
{
    return poketchSys->unk_03;
}

enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys)
{
    return poketchSys->loadedAppID;
}

static BOOL PoketchSystem_InitInternal(PoketchSystem *poketchSys)
{
    if (ov25_02254560(&(poketchSys->unk_1C), &(poketchSys->unk_20), poketchSys->unk_50, poketchSys)) {
        poketchSys->unk_00 = 0;
        poketchSys->unk_01 = 0;
        poketchSys->unk_03 = 0;
        poketchSys->unk_04 = 0;
        poketchSys->pedometerUpdated = FALSE;
        poketchSys->unk_05 = 0;
        poketchSys->unk_06 = 0;
        poketchSys->loadedAppID = POKETCH_APPID_NONE;
        poketchSys->unk_02 = 0;
        poketchSys->unk_08 = 0;
        poketchSys->buttonDir = BUTTON_UP;

        if (ov25_02254284(poketchSys)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void PoketchSystem_Shutdown (PoketchSystem *poketchSys)
{
    SysTask_Done(poketchSys->unk_38);

    PoketchSystem_ButtonShutdown(poketchSys);
    PoketchSystem_UnloadApp(poketchSys);
    ov25_02254754(poketchSys->unk_1C);
}

typedef void(*const PoketchEvent)(PoketchSystem *);
static PoketchEvent sPoketchEvents[] = {
    ov25_02253EA4,
    ov25_02253F2C,
    ov25_0225406C,
    ov25_022540D8
};

static void PoketchSystem_MainTask(SysTask *task, void *system)
{
    PoketchSystem *poketchSys = (PoketchSystem *)system;

    if (poketchSys->unk_00 < NELEMS(sPoketchEvents)) {
        if (poketchSys->unk_00 != 0) {
            PoketchSystem_ButtonUpdate(poketchSys);
        }

        sPoketchEvents[poketchSys->unk_00](poketchSys);
    } else {
        GF_ASSERT(poketchSys->unk_00 == 4);
        *(poketchSys->poketchSysPtr) = NULL;

        PoketchSystem_Shutdown(poketchSys);
        Heap_FreeToHeap(poketchSys);
        SysTask_Done(task);
        Heap_Destroy(7);
        Heap_Destroy(8);
    }
}

static void ov25_02253E94 (SysTask * param0, void * param1)
{
    PoketchSystem *poketchSys = param1;

    poketchSys->unk_04 = 0;
    poketchSys->pedometerUpdated = FALSE;
}

static void ov25_02253E9C (PoketchSystem *poketchSys, u32 param1)
{
    poketchSys->unk_00 = param1;
    poketchSys->unk_01 = 0;
}

static void ov25_02253EA4 (PoketchSystem *poketchSys)
{
    switch (poketchSys->unk_01) {
    case 0:
        ov25_022547D0(poketchSys->unk_1C, 0);
        poketchSys->unk_01++;
        break;
    case 1:
        if (ov25_022547F4(poketchSys->unk_1C, 0)) {
            u32 app_ID = PoketchData_CurrentAppID(poketchSys->poketchData);

            PoketchSystem_LoadApp(poketchSys, app_ID);
            ov25_022541D8(poketchSys, app_ID);

            poketchSys->unk_01++;
        }
        break;
    case 2:
        if (ov25_022541FC(poketchSys) == 0) {
            break;
        }

        ov25_022547D0(poketchSys->unk_1C, 1);
        poketchSys->unk_01++;
    case 3:
        if (ov25_022547F4(poketchSys->unk_1C, 1)) {
            ov25_02253E9C(poketchSys, 1);
        }
    }
}

static void ov25_02253F2C (PoketchSystem *poketchSys)
{
    switch (poketchSys->unk_01) {
    case 0:
        if (ov25_0225450C(poketchSys)) {
            return;
        }

        switch (poketchSys->unk_08) {
        case 3:
        case 5:
            poketchSys->unk_0C = 0;
            poketchSys->unk_05 = 1;
            ov25_022547D0(poketchSys->unk_1C, 4);
            poketchSys->unk_01++;
            break;
        }
        break;
    case 1:
        if ((poketchSys->unk_08 == 3) || (poketchSys->unk_08 == 5)) {
            poketchSys->unk_0C = 1;
        }

        if (ov25_02254800(poketchSys->unk_1C)) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->unk_20.unk_00 = PoketchData_DecrementAppID(poketchSys->poketchData);
            } else {
                poketchSys->unk_20.unk_00 = PoketchData_IncrementAppID(poketchSys->poketchData);
            }

            if (poketchSys->unk_0C) {
                ov25_022547D0(poketchSys->unk_1C, 12);
                poketchSys->unk_10 = 30;
                poketchSys->unk_0C = 0;
                poketchSys->unk_01 = 4;
            } else {
                poketchSys->unk_10 = 3;
                poketchSys->unk_01 = 2;
            }
        }
        break;
    case 2:
        if ((poketchSys->unk_08 == 3) || (poketchSys->unk_08 == 5)) {
            ov25_022547D0(poketchSys->unk_1C, 12);
            poketchSys->unk_10 = 30;
            poketchSys->unk_0C = 0;
            poketchSys->unk_01 = 4;
            break;
        }

        if (poketchSys->unk_10) {
            poketchSys->unk_10--;
        } else {
            ov25_0225420C(poketchSys);
            poketchSys->unk_01 = 3;
        }
        break;
    case 3:
        if (ov25_02254228(poketchSys)) {
            PoketchSystem_UnloadApp(poketchSys);
            sub_02099D44();
            ov25_02253E9C(poketchSys, 2);
        }
        break;
    case 4:
        if ((poketchSys->unk_08 == 3) || (poketchSys->unk_08 == 5)) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->unk_20.unk_00 = PoketchData_DecrementAppID(poketchSys->poketchData);
            } else {
                poketchSys->unk_20.unk_00 = PoketchData_IncrementAppID(poketchSys->poketchData);
            }

            poketchSys->unk_10 = 30;
            ov25_022547D0(poketchSys->unk_1C, 13);
            break;
        }

        if (poketchSys->unk_10) {
            poketchSys->unk_10--;
        } else {
            ov25_022547D0(poketchSys->unk_1C, 14);
            ov25_0225420C(poketchSys);
            poketchSys->unk_01 = 3;
        }
        break;
    }
}

static void ov25_0225406C (PoketchSystem *poketchSys)
{
    switch (poketchSys->unk_01) {
    case 0:
    {
        u32 v0;

        poketchSys->unk_06 = 1;
        v0 = PoketchData_CurrentAppID(poketchSys->poketchData);

        PoketchSystem_LoadApp(poketchSys, v0);
        ov25_022541D8(poketchSys, v0);

        poketchSys->unk_01++;
    }
    break;
    case 1:
        if (ov25_022541FC(poketchSys)) {
            ov25_022547D0(poketchSys->unk_1C, 2);
            poketchSys->unk_01++;
        }
        break;
    case 2:
        if (ov25_022547F4(poketchSys->unk_1C, 2)) {
            poketchSys->unk_05 = 0;
            poketchSys->unk_06 = 0;
            ov25_02253E9C(poketchSys, 1);
        }
        break;
    }
}

static void ov25_022540D8 (PoketchSystem *poketchSys)
{
    switch (poketchSys->unk_01) {
    case 0:
        switch (poketchSys->unk_02) {
        case 1:
            poketchSys->unk_01 = 1;
            break;
        case 2:
            ov25_0225420C(poketchSys);
            poketchSys->unk_01 = 2;
            break;
        case 3:
        case 0:
            poketchSys->unk_01 = 2;
            break;
        }
        break;
    case 1:
        if (ov25_022541FC(poketchSys)) {
            ov25_0225420C(poketchSys);
            poketchSys->unk_01 = 2;
        }
        break;
    case 2:
        if (ov25_02254228(poketchSys)) {
            ov25_022547D0(poketchSys->unk_1C, 17);
            poketchSys->unk_01 = 3;
        }
        break;
    case 3:
        if (ov25_02254800(poketchSys->unk_1C)) {
            PoketchSystem_UnloadApp(poketchSys);
            sub_0201E530();
            ov25_02253E9C(poketchSys, 4);
        }
        break;
    }
}

static void PoketchSystem_LoadApp(PoketchSystem *poketchSys, int appID)
{
    GF_ASSERT(appID >= 0 && appID < NELEMS(sAppOverlayIDs));

    if (poketchSys->loadedAppID == POKETCH_APPID_NONE) {
        for (int i = 0; i < NELEMS(sAppOverlayIDs); i++) {
            if (sAppOverlayIDs[i].appID == appID) {

                Overlay_LoadByID(sAppOverlayIDs[i].overlayID, OVERLAY_LOAD_ASYNC);
                poketchSys->loadedAppID = appID;
                poketchSys->loadedAppOverlayID = sAppOverlayIDs[i].overlayID;
                break;
            }
        }
    }
}

static void PoketchSystem_UnloadApp(PoketchSystem *poketchSys)
{
    if (poketchSys->loadedAppID != POKETCH_APPID_NONE) {
        Overlay_UnloadByID(poketchSys->loadedAppOverlayID);
        poketchSys->loadedAppID = POKETCH_APPID_NONE;
    }
}

static void ov25_022541D8 (PoketchSystem *poketchSys, u32 param1)
{
    GF_ASSERT(poketchSys->unk_02 == 0);

    poketchSys->unk_3C(&(poketchSys->unk_24), poketchSys, poketchSys->bgl, poketchSys->loadedAppID);
    poketchSys->unk_02 = 1;
}

static BOOL ov25_022541FC (PoketchSystem *poketchSys)
{
    if (poketchSys->unk_02 == 2) {
        return 1;
    }

    return 0;
}

static void ov25_0225420C (PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->unk_02 == 2);

    poketchSys->unk_40(poketchSys->unk_24);
    poketchSys->unk_02 = 3;
}

static BOOL ov25_02254228 (PoketchSystem *poketchSys)
{
    if (poketchSys->unk_02 == 0) {
        return TRUE;
    }

    return FALSE;
}

void ov25_02254238 (UnkFuncPtr_ov25_02254238 param0, UnkFuncPtr_ov25_02254238_1 param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    poketchSys->unk_3C = param0;
    poketchSys->unk_40 = param1;
    poketchSys->unk_44 = NULL;
}

void ov25_0225424C (PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->unk_02 == 1);
    poketchSys->unk_02 = 2;
}

void ov25_02254260 (PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->unk_02 == 3);
    poketchSys->unk_02 = 0;
}

void ov25_02254274 (UnkFuncPtr_ov25_02254274 param0, void * param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    poketchSys->unk_44 = param0;
    poketchSys->unk_48 = param1;
}

static BOOL ov25_02254284 (PoketchSystem *poketchSys)
{
    static const TouchScreenHitTable v0[] = {
        {4 * 8, 12 * 8, 28 * 8, 255},
        {12 * 8, 20 * 8, 28 * 8, 255},
        {16, 175, 16, 207}
    };

    poketchSys->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov25_022542E4, poketchSys, 7);

    if (poketchSys->buttonManager != NULL) {
        PoketchButtonManager_SetButtonTimer(poketchSys->buttonManager, 0, 0, 7);
        poketchSys->unk_2C = 0xffffffff;
        poketchSys->unk_30 = 0xffffffff;
        return 1;
    }

    return 0;
}

static void PoketchSystem_ButtonShutdown(PoketchSystem *poketchSys)
{
    PoketchButtonManager_Free(poketchSys->buttonManager);
}

static void PoketchSystem_ButtonUpdate(PoketchSystem *poketchSys)
{
    poketchSys->unk_08 = 0;
    PoketchButtonManager_Update(poketchSys->buttonManager);
}

static void ov25_022542E4 (u32 param0, u32 param1, u32 param2, void * param3)
{
    PoketchSystem * poketchSys = (PoketchSystem *)param3;

    if (ov25_0225450C(poketchSys) == 0) {
        switch (param2) {
        case 1:
            poketchSys->unk_03 = 1;
            break;
        case 0:
            poketchSys->unk_03 = 0;
            break;
        }
    } else {
        poketchSys->unk_03 = 0;
    }

    if (param0 == 2) {
        if (ov25_0225450C(poketchSys)) {
            if (param2 == 1) {
                Sound_PlayEffect(1646);
            }
        }
    } else {
        u32 v1 = 0xffffffff;

        switch (param2) {
        case 0:
            v1 = (param0 == 0) ? 8 : 11;
            break;
        case 1:
            if (ov25_0225450C(poketchSys) || poketchSys->unk_06) {
                v1 = (param0 == 0) ? 6 : 9;
                param1 = 0;
            } else {
                v1 = (param0 == 0) ? 7 : 10;
            }
            break;
        }

        if (poketchSys->unk_2C != 0xffffffff) {
            u32 v2 = v1;

            v1 = poketchSys->unk_2C;
            poketchSys->unk_2C = v2;
        }

        if (v1 != 0xffffffff) {
            if (ov25_022543EC(poketchSys->unk_1C, v1)) {
                if ((v1 == 6) || (v1 == 7) || (v1 == 9) || (v1 == 10)) {
                    poketchSys->unk_30 = v1;
                }
            }
        }

        switch (param1) {
        case 5:
            PoketchButtonManager_ResetButtonState(poketchSys->buttonManager, 0);
            break;
        case 3:
            if ((poketchSys->unk_30 == 6) || (poketchSys->unk_30 == 9)) {
                param1 = 0;
            }
            break;
        case 2:
            if ((poketchSys->unk_30 == 7) || (poketchSys->unk_30 == 10)) {
                param1 = 3;
            }
            break;
        }

        poketchSys->unk_08 = param1;
        poketchSys->buttonDir = (param0 == 0) ? BUTTON_UP : BUTTON_DOWN;
    }
}

static BOOL ov25_022543EC (UnkStruct_ov25_02254560 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (ov25_022547F4(param0, param1) == 0) {
            return 0;
        }
    }

    ov25_022547D0(param0, param1);

    return 1;
}

UnkStruct_ov25_02254560 * ov25_02254418 (void)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();
    return poketchSys->unk_1C;
}

void ov25_02254424 (u32 param0)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->unk_05 == 0) && (ov25_0225450C(poketchSys) == 0)) {
        Sound_PlayEffect(param0);
    }
}

void ov25_02254444 (u32 param0, u32 param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->unk_05 == 0) && (ov25_0225450C(poketchSys) == 0)) {
        sub_02005844(param0, param1);
    }
}

static inline BOOL inline_ov25_0225446C (u32 param0, u32 param1)
{
    if (((u32)(param0 - 16) < (u32)(207 - 16)) & ((u32)(param1 - 16) < (u32)(175 - 16))) {
        return 1;
    }

    return 0;
}

BOOL ov25_0225446C (u32 * param0, u32 * param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->unk_05 == 0) && (ov25_0225450C(poketchSys) == 0)) {
        if (sub_020227A4(param0, param1)) {
            return inline_ov25_0225446C(*param0, *param1);
        }
    }

    return 0;
}

BOOL ov25_022544BC (u32 * param0, u32 * param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->unk_05 == 0) && (ov25_0225450C(poketchSys) == 0)) {
        if (sub_020227C0(param0, param1)) {
            return inline_ov25_0225446C(*param0, *param1);
        }
    }

    return 0;
}

BOOL ov25_0225450C (const PoketchSystem *poketchSys)
{
    return sub_020509A4(poketchSys->fieldSystem);
}

void ov25_02254518 (const PoketchSystem *poketchSys, PoketchButtonManager * param1)
{
    if ((ov25_0225450C(poketchSys) == 0) && (poketchSys->unk_05 == 0)) {
        PoketchButtonManager_Update(param1);
    }
}

BOOL ov25_02254534 (const PoketchSystem *poketchSys)
{
    return poketchSys->unk_04;
}

BOOL PoketchSystem_PedometerUpdated(const PoketchSystem *poketchSys)
{
    return poketchSys->pedometerUpdated;
}

FieldSystem* PoketchSystem_FieldSystem(const PoketchSystem *poketchSys)
{
    return poketchSys->fieldSystem;
}

PoketchData* PoketchSystem_PoketchData(const PoketchSystem *poketchSys)
{
    return poketchSys->poketchData;
}

SaveData* PoketchSystem_SaveData(const PoketchSystem *poketchSys)
{
    return poketchSys->saveData;
}

int ov25_02254548 (const PoketchSystem *poketchSys)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(poketchSys->saveData);

    if (TrainerInfo_Gender(v0) == 1) {
        return 0;
    } else {
        return 1;
    }
}
