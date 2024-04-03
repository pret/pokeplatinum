#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "struct_decls/struct_0203CDB0_decl.h"
#include "savedata.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_02255B34_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay025/funcptr_ov25_02254238.h"
#include "overlay025/funcptr_ov25_02254238_1.h"
#include "overlay025/funcptr_ov25_02254274.h"
#include "overlay025/struct_ov25_02254560_1.h"

#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201E3D8.h"
#include "unk_02022594.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020508D4.h"
#include "poketch_data.h"
#include "unk_02099D44.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255ACC.h"

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

enum ButtonDir{
    BUTTON_UP,
    BUTTON_DOWN,
};

typedef struct PoketchSystem {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u32 unk_08;
    BOOL unk_0C;
    u32 unk_10;
    int unk_14;
    FSOverlayID loadedAppOverlayID;
    UnkStruct_ov25_02254560 * unk_1C;
    UnkStruct_ov25_02254560_1 unk_20;
    void * unk_24;
    UnkStruct_ov25_02255B34 * unk_28;
    u32 unk_2C;
    u32 unk_30;
    struct PoketchSystem ** unk_34;
    SysTask * unk_38;
    UnkFuncPtr_ov25_02254238 unk_3C;
    UnkFuncPtr_ov25_02254238_1 unk_40;
    UnkFuncPtr_ov25_02254274 unk_44;
    void * unk_48;
    BGL * unk_4C;
    NNSG2dOamManagerInstance * unk_50;
    SaveData * saveData;
    PoketchData * poketchData;
    UnkStruct_0203CDB0 * unk_5C;
    enum ButtonDir buttonDir;
} PoketchSystem;

static PoketchSystem * ov25_02253CE0(void);
static BOOL ov25_02253DDC(PoketchSystem * param0);
static void ov25_02253E20(PoketchSystem * param0);
static void ov25_02253E40(SysTask * param0, void * param1);
static void ov25_02253E94(SysTask * param0, void * param1);
static void ov25_02253E9C(PoketchSystem * param0, u32 param1);
static void ov25_02253EA4(PoketchSystem * param0);
static void ov25_02253F2C(PoketchSystem * param0);
static void ov25_0225406C(PoketchSystem * param0);
static void ov25_022540D8(PoketchSystem * param0);
static void ov25_02254170(PoketchSystem * param0, int param1);
static void ov25_022541BC(PoketchSystem * param0);
static void ov25_022541D8(PoketchSystem * param0, u32 param1);
static BOOL ov25_022541FC(PoketchSystem * param0);
static void ov25_0225420C(PoketchSystem * param0);
static BOOL ov25_02254228(PoketchSystem * param0);
static BOOL ov25_02254284(PoketchSystem * param0);
static void ov25_022542C8(PoketchSystem * param0);
static void ov25_022542D4(PoketchSystem * param0);
static void ov25_022542E4(u32 param0, u32 param1, u32 param2, void * param3);
static BOOL ov25_022543EC(UnkStruct_ov25_02254560 * param0, u32 param1);
static inline BOOL inline_ov25_0225446C(u32 param0, u32 param1);
struct PoketchSystem * sub_0203D158(void);

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

static PoketchSystem * ov25_02253CE0 (void)
{
    return sub_0203D158();
}

void ov25_02253CE8 (UnkStruct_0203CDB0 * param0, PoketchSystem ** poketchData, SaveData * param2, BGL * param3, NNSG2dOamManagerInstance * param4)
{
    PoketchSystem *new_system;

    Heap_Create(3, 7, 49152);
    Heap_Create(3, 8, 49152);

    new_system = Heap_AllocFromHeap(7, sizeof(PoketchSystem));

    if (new_system != NULL) {
        *poketchData = new_system;

        new_system->unk_5C = param0;
        new_system->saveData = param2;
        new_system->poketchData = SaveData_PoketchData(param2);
        new_system->unk_4C = param3;
        new_system->unk_50 = param4;

        if (ov25_02253DDC(new_system)) {
            sub_0201E3D8();
            sub_0201E450(4);

            new_system->unk_34 = poketchData;
            new_system->unk_38 = SysTask_Start(ov25_02253E94, new_system, 4);

            SysTask_Start(ov25_02253E40, new_system, 0);
        }
    }
}

void ov25_02253D5C (PoketchSystem * param0)
{
    if ((param0->unk_00 != 3) && (param0->unk_00 != 4)) {
        ov25_02253E9C(param0, 3);
    }
}

BOOL ov25_02253D70 (PoketchSystem * param0)
{
    return param0 == NULL;
}

void ov25_02253D7C (PoketchSystem * param0, int poketchData, u32 param2)
{
    switch (poketchData) {
    case 0:
        break;
    case 1:
        param0->unk_04 = 1;
        break;
    case 5:
    {
        u32 v0 = PoketchData_StepCount(param0->poketchData);

        if (++v0 > 99999) {
            v0 = 0;
        }

        PoketchData_SetStepCount(param0->poketchData, v0);
        param0->unk_07 = 1;
    }
    break;
    case 4:
        if (param0->unk_02 == 2) {
            if (param0->unk_44) {
                param0->unk_44(param0->unk_48);
            }
        }
        break;
    }
}

BOOL ov25_02253DD4 (PoketchSystem * param0)
{
    return param0->unk_03;
}

int ov25_02253DD8 (PoketchSystem * param0)
{
    return param0->unk_14;
}

static BOOL ov25_02253DDC (PoketchSystem * param0)
{
    if (ov25_02254560(&(param0->unk_1C), &(param0->unk_20), param0->unk_50, param0)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_03 = 0;
        param0->unk_04 = 0;
        param0->unk_07 = 0;
        param0->unk_05 = 0;
        param0->unk_06 = 0;
        param0->unk_14 = -1;
        param0->unk_02 = 0;
        param0->unk_08 = 0;
        param0->buttonDir = BUTTON_UP;

        if (ov25_02254284(param0)) {
            return 1;
        }
    }

    return 0;
}

static void ov25_02253E20 (PoketchSystem * param0)
{
    SysTask_Done(param0->unk_38);

    ov25_022542C8(param0);
    ov25_022541BC(param0);
    ov25_02254754(param0->unk_1C);
}

static void ov25_02253E40 (SysTask * param0, void * param1)
{
    static void(*const v0[])(PoketchSystem *) = {
        ov25_02253EA4,
        ov25_02253F2C,
        ov25_0225406C,
        ov25_022540D8
    };

    PoketchSystem * v1;

    v1 = (PoketchSystem *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v1->unk_00 != 0) {
            ov25_022542D4(v1);
        }

        v0[v1->unk_00](v1);
    } else {
        GF_ASSERT(v1->unk_00 == 4);
        *(v1->unk_34) = NULL;

        ov25_02253E20(v1);
        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
        Heap_Destroy(7);
        Heap_Destroy(8);
    }
}

static void ov25_02253E94 (SysTask * param0, void * param1)
{
    PoketchSystem * v0 = param1;

    v0->unk_04 = 0;
    v0->unk_07 = 0;
}

static void ov25_02253E9C (PoketchSystem * param0, u32 param1)
{
    param0->unk_00 = param1;
    param0->unk_01 = 0;
}

static void ov25_02253EA4 (PoketchSystem * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov25_022547D0(param0->unk_1C, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov25_022547F4(param0->unk_1C, 0)) {
            u32 v0 = PoketchData_CurrentAppID(param0->poketchData);

            ov25_02254170(param0, v0);
            ov25_022541D8(param0, v0);

            param0->unk_01++;
        }
        break;
    case 2:
        if (ov25_022541FC(param0) == 0) {
            break;
        }

        ov25_022547D0(param0->unk_1C, 1);
        param0->unk_01++;
    case 3:
        if (ov25_022547F4(param0->unk_1C, 1)) {
            ov25_02253E9C(param0, 1);
        }
    }
}

static void ov25_02253F2C (PoketchSystem * param0)
{
    switch (param0->unk_01) {
    case 0:
        if (ov25_0225450C(param0)) {
            return;
        }

        switch (param0->unk_08) {
        case 3:
        case 5:
            param0->unk_0C = 0;
            param0->unk_05 = 1;
            ov25_022547D0(param0->unk_1C, 4);
            param0->unk_01++;
            break;
        }
        break;
    case 1:
        if ((param0->unk_08 == 3) || (param0->unk_08 == 5)) {
            param0->unk_0C = 1;
        }

        if (ov25_02254800(param0->unk_1C)) {
            if (param0->buttonDir == BUTTON_UP) {
                param0->unk_20.unk_00 = PoketchData_DecrementAppID(param0->poketchData);
            } else {
                param0->unk_20.unk_00 = PoketchData_IncrementAppID(param0->poketchData);
            }

            if (param0->unk_0C) {
                ov25_022547D0(param0->unk_1C, 12);
                param0->unk_10 = 30;
                param0->unk_0C = 0;
                param0->unk_01 = 4;
            } else {
                param0->unk_10 = 3;
                param0->unk_01 = 2;
            }
        }
        break;
    case 2:
        if ((param0->unk_08 == 3) || (param0->unk_08 == 5)) {
            ov25_022547D0(param0->unk_1C, 12);
            param0->unk_10 = 30;
            param0->unk_0C = 0;
            param0->unk_01 = 4;
            break;
        }

        if (param0->unk_10) {
            param0->unk_10--;
        } else {
            ov25_0225420C(param0);
            param0->unk_01 = 3;
        }
        break;
    case 3:
        if (ov25_02254228(param0)) {
            ov25_022541BC(param0);
            sub_02099D44();
            ov25_02253E9C(param0, 2);
        }
        break;
    case 4:
        if ((param0->unk_08 == 3) || (param0->unk_08 == 5)) {
            if (param0->buttonDir == BUTTON_UP) {
                param0->unk_20.unk_00 = PoketchData_DecrementAppID(param0->poketchData);
            } else {
                param0->unk_20.unk_00 = PoketchData_IncrementAppID(param0->poketchData);
            }

            param0->unk_10 = 30;
            ov25_022547D0(param0->unk_1C, 13);
            break;
        }

        if (param0->unk_10) {
            param0->unk_10--;
        } else {
            ov25_022547D0(param0->unk_1C, 14);
            ov25_0225420C(param0);
            param0->unk_01 = 3;
        }
        break;
    }
}

static void ov25_0225406C (PoketchSystem * param0)
{
    switch (param0->unk_01) {
    case 0:
    {
        u32 v0;

        param0->unk_06 = 1;
        v0 = PoketchData_CurrentAppID(param0->poketchData);

        ov25_02254170(param0, v0);
        ov25_022541D8(param0, v0);

        param0->unk_01++;
    }
    break;
    case 1:
        if (ov25_022541FC(param0)) {
            ov25_022547D0(param0->unk_1C, 2);
            param0->unk_01++;
        }
        break;
    case 2:
        if (ov25_022547F4(param0->unk_1C, 2)) {
            param0->unk_05 = 0;
            param0->unk_06 = 0;
            ov25_02253E9C(param0, 1);
        }
        break;
    }
}

static void ov25_022540D8 (PoketchSystem * param0)
{
    switch (param0->unk_01) {
    case 0:
        switch (param0->unk_02) {
        case 1:
            param0->unk_01 = 1;
            break;
        case 2:
            ov25_0225420C(param0);
            param0->unk_01 = 2;
            break;
        case 3:
        case 0:
            param0->unk_01 = 2;
            break;
        }
        break;
    case 1:
        if (ov25_022541FC(param0)) {
            ov25_0225420C(param0);
            param0->unk_01 = 2;
        }
        break;
    case 2:
        if (ov25_02254228(param0)) {
            ov25_022547D0(param0->unk_1C, 17);
            param0->unk_01 = 3;
        }
        break;
    case 3:
        if (ov25_02254800(param0->unk_1C)) {
            ov25_022541BC(param0);
            sub_0201E530();
            ov25_02253E9C(param0, 4);
        }
        break;
    }
}

static void ov25_02254170 (PoketchSystem * param0, int param1)
{
    GF_ASSERT(param1 >= 0 && param1 < NELEMS(sAppOverlayIDs));

    if (param0->unk_14 == -1) {
        int v0;

        for (v0 = 0; v0 < NELEMS(sAppOverlayIDs); v0++) {
            if (sAppOverlayIDs[v0].appID == param1) {
                Overlay_LoadByID(sAppOverlayIDs[v0].overlayID, 2);
                param0->unk_14 = param1;
                param0->loadedAppOverlayID = sAppOverlayIDs[v0].overlayID;
                break;
            }
        }
    }
}

static void ov25_022541BC (PoketchSystem * param0)
{
    if (param0->unk_14 != -1) {
        Overlay_UnloadByID(param0->loadedAppOverlayID);
        param0->unk_14 = -1;
    }
}

static void ov25_022541D8 (PoketchSystem * param0, u32 param1)
{
    GF_ASSERT(param0->unk_02 == 0);

    param0->unk_3C(&(param0->unk_24), param0, param0->unk_4C, param0->unk_14);
    param0->unk_02 = 1;
}

static BOOL ov25_022541FC (PoketchSystem * param0)
{
    if (param0->unk_02 == 2) {
        return 1;
    }

    return 0;
}

static void ov25_0225420C (PoketchSystem * param0)
{
    GF_ASSERT(param0->unk_02 == 2);

    param0->unk_40(param0->unk_24);
    param0->unk_02 = 3;
}

static BOOL ov25_02254228 (PoketchSystem * param0)
{
    if (param0->unk_02 == 0) {
        return 1;
    }

    return 0;
}

void ov25_02254238 (UnkFuncPtr_ov25_02254238 param0, UnkFuncPtr_ov25_02254238_1 param1)
{
    PoketchSystem * v0 = ov25_02253CE0();

    v0->unk_3C = param0;
    v0->unk_40 = param1;
    v0->unk_44 = NULL;
}

void ov25_0225424C (UnkStruct_ov25_0225424C * param0)
{
    GF_ASSERT(param0->unk_02 == 1);
    param0->unk_02 = 2;
}

void ov25_02254260 (UnkStruct_ov25_0225424C * param0)
{
    GF_ASSERT(param0->unk_02 == 3);
    param0->unk_02 = 0;
}

void ov25_02254274 (UnkFuncPtr_ov25_02254274 param0, void * param1)
{
    PoketchSystem * v0 = ov25_02253CE0();

    v0->unk_44 = param0;
    v0->unk_48 = param1;
}

static BOOL ov25_02254284 (PoketchSystem * param0)
{
    static const UnkUnion_020225E0 v0[] = {
        {4 * 8, 12 * 8, 28 * 8, 255},
        {12 * 8, 20 * 8, 28 * 8, 255},
        {16, 175, 16, 207}
    };

    param0->unk_28 = ov25_02255ACC(v0, NELEMS(v0), ov25_022542E4, param0, 7);

    if (param0->unk_28 != NULL) {
        ov25_02255C48(param0->unk_28, 0, 0, 7);
        param0->unk_2C = 0xffffffff;
        param0->unk_30 = 0xffffffff;
        return 1;
    }

    return 0;
}

static void ov25_022542C8 (PoketchSystem * param0)
{
    ov25_02255B34(param0->unk_28);
}

static void ov25_022542D4 (PoketchSystem * param0)
{
    param0->unk_08 = 0;
    ov25_02255B50(param0->unk_28);
}

static void ov25_022542E4 (u32 param0, u32 param1, u32 param2, void * param3)
{
    PoketchSystem * v0 = (PoketchSystem *)param3;

    if (ov25_0225450C(v0) == 0) {
        switch (param2) {
        case 1:
            v0->unk_03 = 1;
            break;
        case 0:
            v0->unk_03 = 0;
            break;
        }
    } else {
        v0->unk_03 = 0;
    }

    if (param0 == 2) {
        if (ov25_0225450C(v0)) {
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
            if (ov25_0225450C(v0) || v0->unk_06) {
                v1 = (param0 == 0) ? 6 : 9;
                param1 = 0;
            } else {
                v1 = (param0 == 0) ? 7 : 10;
            }
            break;
        }

        if (v0->unk_2C != 0xffffffff) {
            u32 v2 = v1;

            v1 = v0->unk_2C;
            v0->unk_2C = v2;
        }

        if (v1 != 0xffffffff) {
            if (ov25_022543EC(v0->unk_1C, v1)) {
                if ((v1 == 6) || (v1 == 7) || (v1 == 9) || (v1 == 10)) {
                    v0->unk_30 = v1;
                }
            }
        }

        switch (param1) {
        case 5:
            ov25_02255C68(v0->unk_28, 0);
            break;
        case 3:
            if ((v0->unk_30 == 6) || (v0->unk_30 == 9)) {
                param1 = 0;
            }
            break;
        case 2:
            if ((v0->unk_30 == 7) || (v0->unk_30 == 10)) {
                param1 = 3;
            }
            break;
        }

        v0->unk_08 = param1;
        v0->buttonDir = (param0 == 0) ? BUTTON_UP : BUTTON_DOWN;
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
    PoketchSystem * v0 = ov25_02253CE0();
    return v0->unk_1C;
}

void ov25_02254424 (u32 param0)
{
    PoketchSystem * v0 = ov25_02253CE0();

    if ((v0->unk_05 == 0) && (ov25_0225450C(v0) == 0)) {
        Sound_PlayEffect(param0);
    }
}

void ov25_02254444 (u32 param0, u32 param1)
{
    PoketchSystem * v0 = ov25_02253CE0();

    if ((v0->unk_05 == 0) && (ov25_0225450C(v0) == 0)) {
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
    PoketchSystem * v0 = ov25_02253CE0();

    if ((v0->unk_05 == 0) && (ov25_0225450C(v0) == 0)) {
        if (sub_020227A4(param0, param1)) {
            return inline_ov25_0225446C(*param0, *param1);
        }
    }

    return 0;
}

BOOL ov25_022544BC (u32 * param0, u32 * param1)
{
    PoketchSystem * v0 = ov25_02253CE0();

    if ((v0->unk_05 == 0) && (ov25_0225450C(v0) == 0)) {
        if (sub_020227C0(param0, param1)) {
            return inline_ov25_0225446C(*param0, *param1);
        }
    }

    return 0;
}

BOOL ov25_0225450C (const UnkStruct_ov25_0225424C * param0)
{
    return sub_020509A4(param0->unk_5C);
}

void ov25_02254518 (const UnkStruct_ov25_0225424C * param0, UnkStruct_ov25_02255B34 * param1)
{
    if ((ov25_0225450C(param0) == 0) && (param0->unk_05 == 0)) {
        ov25_02255B50(param1);
    }
}

BOOL ov25_02254534 (const UnkStruct_ov25_0225424C * param0)
{
    return param0->unk_04;
}

BOOL ov25_02254538 (const UnkStruct_ov25_0225424C * param0)
{
    return param0->unk_07;
}

UnkStruct_0203CDB0 * ov25_0225453C (const UnkStruct_ov25_0225424C * param0)
{
    return param0->unk_5C;
}

PoketchData * ov25_02254540 (const UnkStruct_ov25_0225424C * param0)
{
    return (PoketchData *)(param0->poketchData);
}

SaveData * ov25_02254544 (const UnkStruct_ov25_0225424C * param0)
{
    return (SaveData *)(param0->saveData);
}

int ov25_02254548 (const UnkStruct_ov25_0225424C * param0)
{
    TrainerInfo * v0 = sub_02025E38(param0->saveData);

    if (TrainerInfo_Gender(v0) == 1) {
        return 0;
    } else {
        return 1;
    }
}
