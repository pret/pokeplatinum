#include "unk_0207DA28.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_defs/struct_0207DE04.h"

#include "field/field_system.h"
#include "overlay018/ov18_0221F800.h"
#include "overlay065/ov65_0222DCE0.h"
#include "overlay065/ov65_0223648C.h"
#include "overlay066/struct_ov66_02231134.h"
#include "overlay098/struct_ov98_02247168.h"
#include "overlay115/ov115_02260440.h"
#include "overlay115/struct_ov115_02260440.h"
#include "overlay116/ov116_022604C4.h"
#include "overlay117/ov117_02260440.h"
#include "overlay117/struct_ov117_02260440.h"

#include "communication_system.h"
#include "field_system.h"
#include "field_task.h"
#include "game_overlay.h"
#include "game_records.h"
#include "heap.h"
#include "unk_02038FFC.h"
#include "unk_0203D1B8.h"
#include "encounter.h"
#include "system_flags.h"
#include "unk_02099550.h"
#include "unk_02099604.h"
#include "unk_0209BA18.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay65);
FS_EXTERN_OVERLAY(overlay114);
FS_EXTERN_OVERLAY(overlay115);
FS_EXTERN_OVERLAY(overlay116);
FS_EXTERN_OVERLAY(overlay117);

typedef struct {
    UnkStruct_ov98_02247168 *unk_00;
    int unk_04;
    u16 *unk_08;
    u8 unk_0C;
    u8 unk_0D;
    void *unk_10;
    u32 unk_14;
} UnkStruct_0207DE40;

void sub_02099570(void);
static BOOL sub_0207DA28(FieldTask *param0);
static void sub_0207DE04(UnkStruct_0207DE40 *param0, FieldSystem *fieldSystem, u32 param2, u32 param3);
static u32 sub_0207DE40(UnkStruct_0207DE40 *param0);
static UnkStruct_ov115_02260440 *sub_0207DE90(FieldSystem *fieldSystem, u32 param1, u32 param2);
static void sub_0207DED8(UnkStruct_ov115_02260440 *param0);
static UnkStruct_ov66_02231134 *sub_0207DEEC(FieldSystem *fieldSystem, u32 param1, u32 param2);
static void sub_0207DF2C(UnkStruct_ov66_02231134 *param0);
static UnkStruct_ov117_02260440 *sub_0207DF40(FieldSystem *fieldSystem, u32 param1, u32 param2);
static void sub_0207DF88(UnkStruct_ov115_02260440 *param0);
static void sub_0207DF9C(FieldSystem *fieldSystem);

static const OverlayManagerTemplate Unk_020F1B98 = {
    ov65_0222E2A8,
    ov65_0222E3FC,
    ov65_0222E548,
    FS_OVERLAY_ID(overlay65)
};

static const OverlayManagerTemplate Unk_020F1B88 = {
    ov65_0223648C,
    ov65_02236548,
    ov65_0223668C,
    FS_OVERLAY_ID(overlay65)
};

static const u8 Unk_020F1B64[4] = {
    0x3,
    0x4,
    0x4,
    0x4
};

static BOOL sub_0207DA28(FieldTask *param0)
{
    int v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0207DE40 *v2 = FieldTask_GetEnv(param0);

    switch (v2->unk_04) {
    case 0:
        v2->unk_00->unk_00 = fieldSystem->saveData;
    case 1:
        v2->unk_04++;

        if (v2->unk_00->unk_04 == 1) {
            if (sub_02039074(fieldSystem->saveData)) {
                v2->unk_04 = 10;
                *(v2->unk_08) = 0;
            }
        }
        break;
    case 2:
        FieldTask_RunApplication(param0, &Unk_020F1B98, v2->unk_00);
        v2->unk_04++;
        break;
    case 3:
        if (sub_02039074(fieldSystem->saveData)) {
            sub_0206AF5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        }

        switch (v2->unk_00->unk_04) {
        case 3:
            v2->unk_0C = 0;
            v2->unk_0D = 0;
            v2->unk_04 = 4;
            break;
        case 1:
            v2->unk_0C = 50;
            v2->unk_0D = 0;
            v2->unk_04 = 4;
            break;
        case 2:
            v2->unk_0C = 100;
            v2->unk_0D = 0;
            v2->unk_04 = 4;
            break;
        case 6:
            v2->unk_0C = 0;
            v2->unk_0D = 1;
            v2->unk_04 = 4;
            break;
        case 4:
            v2->unk_0C = 50;
            v2->unk_0D = 1;
            v2->unk_04 = 4;
            break;
        case 5:
            v2->unk_0C = 100;
            v2->unk_0D = 1;
            v2->unk_04 = 4;
            break;
        case 7:
            v2->unk_04 = 6;
            break;
        case 10:
            *(v2->unk_08) = 1;
            v2->unk_04 = 11;
            break;
        case 8:
            v2->unk_04 = 9;
            break;
        case 11:
            v2->unk_04 = 12;
            break;
        case 12:
            v2->unk_04 = 16;
            break;
        case 13:
            v2->unk_04 = 18;
            break;
        case 14:
            v2->unk_04 = 22;
            break;
        case 15:
            v2->unk_04 = 26;
            break;
        case 9:
            v2->unk_04 = 8;
            break;
        }
        break;
    case 4:
        sub_020516F4(param0, v2->unk_00->unk_08, v2->unk_0C, v2->unk_0D);
        v2->unk_04++;
        break;
    case 5:
        v2->unk_04 = 2;
        break;
    case 6:
        sub_0203DDDC(param0);
        v2->unk_04++;
        break;
    case 7:
        v2->unk_04 = 2;
        break;
    case 8:
        Heap_Create(3, 54, DWC_UTILITY_WORK_SIZE + 0x100);
        sub_02099570();
        ov18_0221F800(54);
        OS_ResetSystem(0);
        break;
    case 9:
    case 11:
    case 10:
        Heap_FreeToHeap(v2->unk_00);
        Heap_FreeToHeap(v2);
        v2->unk_04++;
        return 1;
    case 12:
        sub_0207DE04(v2, fieldSystem, 11, 0);
        v2->unk_04++;
        break;
    case 13:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = sub_0207DE40(v2);
        }
        break;
    case 14:
        v2->unk_10 = (void *)sub_020996A0(fieldSystem, 11, v2->unk_14);
        v2->unk_04++;
        break;
    case 15:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_FreeToHeap(v2->unk_10);
            v2->unk_04 = 2;
        }
        break;
    case 16:
        sub_0203632C(0);
        v2->unk_10 = sub_0209BA18(fieldSystem, NULL);
        v2->unk_04++;
        break;
    case 17:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_FreeToHeap(v2->unk_10);
            v2->unk_04 = 2;
        }
        break;
    case 18:
        sub_0207DE04(v2, fieldSystem, 11, 1);
        v2->unk_04++;
        break;
    case 19:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = sub_0207DE40(v2);
        }
        break;
    case 20:
        sub_0207DF9C(fieldSystem);
        v2->unk_10 = sub_0207DE90(fieldSystem, 11, v2->unk_14);
        v2->unk_04++;
        break;
    case 21:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = 2;
            sub_0207DED8(v2->unk_10);
        }
        break;
    case 22:
        sub_0207DE04(v2, fieldSystem, 11, 2);
        v2->unk_04++;
        break;
    case 23:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = sub_0207DE40(v2);
        }
        break;
    case 24:
        sub_0207DF9C(fieldSystem);
        v2->unk_10 = sub_0207DEEC(fieldSystem, 11, v2->unk_14);
        v2->unk_04++;
        break;
    case 25:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = 2;
            sub_0207DF2C(v2->unk_10);
        }
        break;
    case 26:
        sub_0207DE04(v2, fieldSystem, 11, 3);
        v2->unk_04++;
        break;
    case 27:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = sub_0207DE40(v2);
        }
        break;
    case 28:
        sub_0207DF9C(fieldSystem);
        v2->unk_10 = sub_0207DF40(fieldSystem, 11, v2->unk_14);
        v2->unk_04++;
        break;
    case 29:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            v2->unk_04 = 2;
            sub_0207DF88(v2->unk_10);
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static UnkStruct_0207DE40 *sub_0207DD94(void)
{
    UnkStruct_0207DE40 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0207DE40));

    MI_CpuClear8(v0, sizeof(UnkStruct_0207DE40));
    v0->unk_00 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov98_02247168));
    MI_CpuClear8(v0->unk_00, sizeof(UnkStruct_ov98_02247168));
    return v0;
}

void sub_0207DDC0(FieldTask *param0)
{
    UnkStruct_0207DE40 *v0 = sub_0207DD94();

    v0->unk_00->unk_04 = 2;
    FieldTask_InitCall(param0, sub_0207DA28, v0);
}

void sub_0207DDE0(FieldTask *param0, u16 *param1)
{
    UnkStruct_0207DE40 *v0 = sub_0207DD94();

    v0->unk_00->unk_04 = 1;
    v0->unk_08 = param1;

    FieldTask_InitCall(param0, sub_0207DA28, v0);
}

static void sub_0207DE04(UnkStruct_0207DE40 *param0, FieldSystem *fieldSystem, u32 param2, u32 param3)
{
    UnkStruct_0207DE04 *v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_0207DE04));

    v0->unk_00 = param3;
    v0->unk_01 = 2;
    v0->unk_02 = Unk_020F1B64[param3];
    v0->unk_03 = 0;
    v0->unk_04 = 0;
    v0->unk_08 = fieldSystem->saveData;

    param0->unk_10 = v0;

    FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1B88, v0);
}

static u32 sub_0207DE40(UnkStruct_0207DE40 *param0)
{
    UnkStruct_0207DE04 *v0 = param0->unk_10;

    if (v0->unk_03 == 1) {
        switch (v0->unk_00) {
        case 0:
            param0->unk_04 = 14;
            break;
        case 1:
            param0->unk_04 = 20;
            break;
        case 2:
            param0->unk_04 = 24;
            break;
        case 3:
            param0->unk_04 = 28;
            break;
        }
    } else {
        param0->unk_04 = 1;
    }

    param0->unk_14 = v0->unk_04;
    Heap_FreeToHeap(param0->unk_10);

    return param0->unk_04;
}

static UnkStruct_ov115_02260440 *sub_0207DE90(FieldSystem *fieldSystem, u32 param1, u32 param2)
{
    UnkStruct_ov115_02260440 *v0;

    FS_EXTERN_OVERLAY(overlay115);
    FS_EXTERN_OVERLAY(overlay114);

    {
        static const OverlayManagerTemplate v1 = {
            ov115_02260440,
            ov115_0226048C,
            ov115_022608E4,
            FS_OVERLAY_ID(overlay115),
        };

        v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov115_02260440));
        memset(v0, 0, sizeof(UnkStruct_ov115_02260440));

        v0->unk_38 = param2;
        v0->unk_39 = 0;
        v0->unk_34 = fieldSystem->saveData;

        Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);
        FieldSystem_StartChildProcess(fieldSystem, &v1, v0);
    }
    return v0;
}

static void sub_0207DED8(UnkStruct_ov115_02260440 *param0)
{
    FS_EXTERN_OVERLAY(overlay114);

    Heap_FreeToHeap(param0);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));
}

static UnkStruct_ov66_02231134 *sub_0207DEEC(FieldSystem *fieldSystem, u32 param1, u32 param2)
{
    UnkStruct_ov66_02231134 *v0;

    FS_EXTERN_OVERLAY(overlay116);
    FS_EXTERN_OVERLAY(overlay114);
    {
        static const OverlayManagerTemplate v1 = {
            ov116_022609B4,
            ov116_02260CF4,
            ov116_0226126C,
            FS_OVERLAY_ID(overlay116),
        };

        v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov66_02231134));
        memset(v0, 0, sizeof(UnkStruct_ov66_02231134));
        v0->unk_3C = param2;
        v0->unk_38 = 0;
        v0->unk_34 = fieldSystem->saveData;

        Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);
        FieldSystem_StartChildProcess(fieldSystem, &v1, v0);
    }
    return v0;
}

static void sub_0207DF2C(UnkStruct_ov66_02231134 *param0)
{
    FS_EXTERN_OVERLAY(overlay114);

    Heap_FreeToHeap(param0);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));
}

static UnkStruct_ov117_02260440 *sub_0207DF40(FieldSystem *fieldSystem, u32 param1, u32 param2)
{
    UnkStruct_ov117_02260440 *v0;

    FS_EXTERN_OVERLAY(overlay117);
    FS_EXTERN_OVERLAY(overlay114);

    {
        static const OverlayManagerTemplate v1 = {
            ov117_02260440,
            ov117_02260474,
            ov117_022605C0,
            FS_OVERLAY_ID(overlay117),
        };

        v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov117_02260440));
        MI_CpuClear8(v0, sizeof(UnkStruct_ov117_02260440));

        v0->unk_38 = param2;
        v0->unk_39 = 0;
        v0->unk_34 = fieldSystem->saveData;

        Overlay_LoadByID(FS_OVERLAY_ID(overlay114), 2);
        FieldSystem_StartChildProcess(fieldSystem, &v1, v0);
    }

    return v0;
}

static void sub_0207DF88(UnkStruct_ov115_02260440 *param0)
{
    FS_EXTERN_OVERLAY(overlay114);

    Heap_FreeToHeap(param0);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay114));
}

static void sub_0207DF9C(FieldSystem *fieldSystem)
{
    GameRecords *v0;

    v0 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    GameRecords_IncrementTrainerScore(v0, TRAINER_SCORE_EVENT_UNK_50);
}
