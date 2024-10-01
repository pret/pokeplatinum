#include "unk_0203D1B8.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/choose_starter_data.h"
#include "struct_defs/pokemon_summary.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_0203D8EC.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0203DA00.h"
#include "struct_defs/struct_0203DDFC.h"
#include "struct_defs/struct_0203DE34.h"
#include "struct_defs/struct_0203E0FC.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0203E274.h"
#include "struct_defs/struct_0203E2FC.h"
#include "struct_defs/struct_0203E348.h"
#include "struct_defs/struct_0203E53C.h"
#include "struct_defs/struct_0203E564.h"
#include "struct_defs/struct_0203E608.h"
#include "struct_defs/struct_0203E6C0.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/struct_02070950.h"
#include "struct_defs/struct_02072014.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_020997B8.h"

#include "battle/ov16_0223B140.h"
#include "choose_starter/choose_starter_app.h"
#include "dw_warp/dw_warp.h"
#include "field/field_system.h"
#include "library_tv/library_tv.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay006/battle_params.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay007/ov7_0224BE9C.h"
#include "overlay007/struct_ov7_0224BEFC_decl.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay020/ov20_021D0D80.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay022/ov22_02255D44.h"
#include "overlay022/ov22_0225B660.h"
#include "overlay058/ov58_021D0D80.h"
#include "overlay059/ov59_021D0D80.h"
#include "overlay064/ov64_0222DCE0.h"
#include "overlay071/ov71_0223B140.h"
#include "overlay072/ov72_0223D7A0.h"
#include "overlay074/ov74_021D0D80.h"
#include "overlay080/ov80_021D0D80.h"
#include "overlay081/ov81_021D0D80.h"
#include "overlay084/const_ov84_02241130.h"
#include "overlay084/ov84_0223B5A0.h"
#include "overlay085/ov85_02241440.h"
#include "overlay086/ov86_0223B140.h"
#include "overlay087/ov87_021D0D80.h"
#include "overlay088/ov88_0223B140.h"
#include "overlay088/struct_ov88_0223C370.h"
#include "overlay090/ov90_021D0D80.h"
#include "overlay090/struct_ov90_021D0D80.h"
#include "overlay091/ov91_021D0D80.h"
#include "overlay092/ov92_021D0D80.h"
#include "overlay093/ov93_021D0D80.h"
#include "overlay093/ov93_021D111C.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay095/ov95_02246C20.h"
#include "overlay096/ov96_0223B6A0.h"
#include "overlay099/ov99_021D0D80.h"
#include "overlay101/ov101_021D0D80.h"
#include "overlay102/ov102_021D0D80.h"
#include "overlay110/ov110_021D0D80.h"
#include "overlay111/ov111_021D0D80.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "coins.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "overlay_manager.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "poketch_data.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_02017498.h"
#include "unk_0201D15C.h"
#include "unk_02025CB0.h"
#include "unk_0202631C.h"
#include "unk_02028124.h"
#include "unk_020298BC.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "unk_0202C7FC.h"
#include "unk_0202C858.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_0202DA40.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B70C.h"
#include "unk_0206CCB0.h"
#include "unk_0207A274.h"
#include "unk_0207AE68.h"
#include "unk_0207CB08.h"
#include "unk_0208694C.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "unk_02098218.h"
#include "unk_020989DC.h"
#include "vars_flags.h"

#include "constdata/const_020EA02C.h"
#include "constdata/const_020EA328.h"
#include "constdata/const_020EA358.h"
#include "constdata/const_020F1E88.h"
#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F2FCC.h"
#include "constdata/const_020F410C.h"
#include "constdata/const_020F6890.h"

FS_EXTERN_OVERLAY(battle);
FS_EXTERN_OVERLAY(overlay19);
FS_EXTERN_OVERLAY(overlay20);
FS_EXTERN_OVERLAY(overlay21);
FS_EXTERN_OVERLAY(overlay22);
FS_EXTERN_OVERLAY(overlay58);
FS_EXTERN_OVERLAY(overlay59);
FS_EXTERN_OVERLAY(overlay61);
FS_EXTERN_OVERLAY(overlay64);
FS_EXTERN_OVERLAY(overlay71);
FS_EXTERN_OVERLAY(overlay72);
FS_EXTERN_OVERLAY(overlay74);
FS_EXTERN_OVERLAY(choose_starter);
FS_EXTERN_OVERLAY(overlay80);
FS_EXTERN_OVERLAY(overlay81);
FS_EXTERN_OVERLAY(overlay84);
FS_EXTERN_OVERLAY(overlay85);
FS_EXTERN_OVERLAY(overlay86);
FS_EXTERN_OVERLAY(overlay87);
FS_EXTERN_OVERLAY(overlay88);
FS_EXTERN_OVERLAY(overlay90);
FS_EXTERN_OVERLAY(overlay91);
FS_EXTERN_OVERLAY(overlay92);
FS_EXTERN_OVERLAY(overlay93);
FS_EXTERN_OVERLAY(overlay94);
FS_EXTERN_OVERLAY(overlay95);
FS_EXTERN_OVERLAY(overlay96);
FS_EXTERN_OVERLAY(overlay99);
FS_EXTERN_OVERLAY(overlay101);
FS_EXTERN_OVERLAY(overlay102);
FS_EXTERN_OVERLAY(overlay110);
FS_EXTERN_OVERLAY(overlay111);
FS_EXTERN_OVERLAY(dw_warp);

#include <nitro/code16.h>

typedef struct {
    int unk_00;
    PartyManagementData *unk_04;
    PokemonSummary *unk_08;
} UnkStruct_0203D444;

typedef struct {
    u16 *unk_00;
    u16 *unk_04;
    u16 *unk_08;
    UnkStruct_0209747C *unk_0C;
} UnkStruct_0203D764;

typedef struct {
    u32 unk_00;
    u16 *unk_04;
    BOOL unk_08;
    UnkStruct_0203DA00 *unk_0C;
} UnkStruct_0203DA64;

typedef struct {
    int unk_00;
    UnkStruct_ov88_0223C370 unk_04;
    UnkStruct_ov6_02246254 unk_48;
    UnkStruct_0207AE68 *unk_60;
    int unk_64;
} UnkStruct_0203DBF0;

typedef struct {
    int unk_00;
    int unk_04;
    u16 *unk_08;
    UnkStruct_0208737C *unk_0C;
    Strbuf *unk_10;
} UnkStruct_0203DE98;

typedef struct {
    int unk_00;
    s64 unk_04;
    UnkStruct_0203E348 unk_0C;
} UnkStruct_0203E35C;

static void sub_0203DF68(TaskManager *taskMan);
static u8 sub_0203E484(SaveData *saveData, u8 param1);

static BOOL OverlayInit_Battle(OverlayManager *ovyManager, int *state)
{
    return TRUE;
}

static BOOL OverlayMain_Battle(OverlayManager *ovyManager, int *state)
{
    if (Battle_Main(ovyManager, state)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL OverlayExit_Battle(OverlayManager *ovyManager, int *state)
{
    return TRUE;
}

const OverlayManagerTemplate gBattleOverlayTemplate = {
    OverlayInit_Battle,
    OverlayMain_Battle,
    OverlayExit_Battle,
    FS_OVERLAY_ID(battle)
};

void sub_0203D1D4(FieldSystem *fieldSystem, BattleParams *param1)
{
    sub_0203CD84(fieldSystem, &gBattleOverlayTemplate, param1);
}

static const u8 Unk_020EA164[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0xff
};

void sub_0203D1E4(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay84);

    const OverlayManagerTemplate Unk_ov84_02241130 = {
        ov84_0223B5A0,
        ov84_0223B76C,
        ov84_0223B900,
        FS_OVERLAY_ID(overlay84)
    };

    sub_0203CD84(fieldSystem, &Unk_ov84_02241130, param1);
}

void *sub_0203D20C(FieldSystem *fieldSystem, UnkStruct_020684D0 *param1)
{
    Bag *v0;
    void *v1;

    v0 = SaveData_GetBag(fieldSystem->saveData);
    v1 = sub_0207D824(v0, Unk_020EA164, 11);

    sub_0207CB2C(v1, fieldSystem->saveData, 0, fieldSystem->unk_98);
    sub_0207CB78(v1, fieldSystem->mapLoadType);

    if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == 0x1) {
        sub_0207CB58(v1);
    }

    sub_0207CB6C(v1, param1);
    sub_0203D1E4(fieldSystem, v1);

    return v1;
}

void *sub_0203D264(FieldSystem *fieldSystem, int param1)
{
    void *v0;
    static const u8 *v1;
    static const u8 v2[] = { 4, 0xff };
    static const u8 v3[] = { 0, 0xff };
    Bag *v4 = SaveData_GetBag(fieldSystem->saveData);

    switch (param1) {
    case 0:
        v1 = v3;
        break;
    case 1:
        v1 = v2;
        break;
    default:
        GF_ASSERT(0);
    }

    v0 = sub_0207D824(v4, v1, 32);

    sub_0207CB2C(v0, fieldSystem->saveData, 3, fieldSystem->unk_98);
    sub_0203D1E4(fieldSystem, v0);

    return v0;
}

u16 sub_0203D2C4(void *param0)
{
    u16 v0;

    v0 = sub_0207CB94(param0);

    if ((v0 != 0) && (sub_0207CB9C(param0) == 5)) {
        GF_ASSERT(0);
    }

    return v0;
}

void sub_0203D2E4(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay85);

    const OverlayManagerTemplate v0 = {
        ov85_02241440,
        ov85_0224154C,
        ov85_022415A0,
        FS_OVERLAY_ID(overlay85)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203D30C(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay81);

    const OverlayManagerTemplate v0 = {
        ov81_021D0D80,
        ov81_021D0E70,
        ov81_021D0EC4,
        FS_OVERLAY_ID(overlay81)
    };

    sub_0203CD84(fieldSystem, &v0, fieldSystem->saveData);
}

void sub_0203D334(FieldSystem *fieldSystem, void *param1)
{
    sub_0203CD84(fieldSystem, &Unk_020F410C, param1);
}

static PartyManagementData *sub_0203D344(int param0, FieldSystem *fieldSystem, int param2, int param3)
{
    PartyManagementData *v0 = Heap_AllocFromHeap(param0, sizeof(PartyManagementData));

    MI_CpuClearFast(v0, sizeof(PartyManagementData));

    v0->unk_00 = Party_GetFromSavedata(fieldSystem->saveData);
    v0->unk_04 = SaveData_GetBag(fieldSystem->saveData);
    v0->unk_08 = sub_02028430(fieldSystem->saveData);
    v0->unk_0C = SaveData_Options(fieldSystem->saveData);
    v0->unk_21 = param2;
    v0->unk_20 = param3;
    v0->unk_1C = fieldSystem;

    return v0;
}

void *sub_0203D390(FieldSystem *fieldSystem, UnkStruct_02070950 *param1, u8 param2)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 0);

    v0->unk_18 = param1;
    v0->unk_22 = param2;

    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);

    return v0;
}

void *sub_0203D3C0(int param0, FieldSystem *fieldSystem)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 3);

    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);
    return v0;
}

void *sub_0203D3E4(int param0, FieldSystem *fieldSystem)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 19);

    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);
    return v0;
}

int sub_0203D408(void *param0)
{
    PartyManagementData *v0 = param0;
    return v0->unk_22;
}

void *sub_0203D410(int param0, FieldSystem *fieldSystem, int param2)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 18);

    v0->unk_22 = param2;
    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);

    return v0;
}

int sub_0203D438(void *param0)
{
    PartyManagementData *v0 = param0;
    return v0->unk_23;
}

int sub_0203D440(void *param0)
{
    PokemonSummary *v0 = param0;
    return v0->pos;
}

static BOOL sub_0203D444(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    UnkStruct_0203D444 *v1;
    int *v2;

    fieldSystem = TaskManager_FieldSystem(param0);
    v1 = TaskManager_Environment(param0);
    v2 = FieldTask_GetState(param0);

    switch (*v2) {
    case 0:
        sub_0203CD84(fieldSystem, &Unk_020F1E88, v1->unk_04);
        *v2 = 1;
        break;
    case 1:
        if (!sub_020509B4(fieldSystem)) {
            switch (v1->unk_04->unk_22) {
            case 7:
                sub_0205BAAC(2);
                *v2 = 4;
                break;
            case 6:
                sub_0205BAAC(1);
                *v2 = 4;
                break;
            default:
                *v2 = 2;
            }
        }
        break;
    case 2:
        v1->unk_08 = sub_0203D670(fieldSystem, v1->unk_00, 0);
        v1->unk_08->pos = v1->unk_04->unk_22;
        sub_0203D334(fieldSystem, v1->unk_08);
        *v2 = 3;
        break;
    case 3:
        if (!sub_020509B4(fieldSystem)) {
            Heap_FreeToHeap(v1->unk_08);
            *v2 = 0;
        }
        break;
    case 4:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void *sub_0203D50C(TaskManager *taskMan, int param1)
{
    UnkStruct_0203D444 *v0;
    PartyManagementData *v1;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203D444));
    v0->unk_00 = param1;
    v1 = sub_0203D344(param1, fieldSystem, 0, 2);
    v1->unk_32_0 = 2;
    v1->unk_32_4 = 2;
    v1->unk_33 = 30;
    v1->unk_14 = NULL;
    v0->unk_04 = v1;

    FieldTask_Start(taskMan, sub_0203D444, v0);

    return v1;
}

void *sub_0203D578(int param0, FieldSystem *fieldSystem, int param2, int param3, int param4, int param5)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 13);

    v0->unk_22 = param5;
    v0->unk_29 = 2;
    v0->unk_2A = param2;

    if (param4 == 0) {
        v0->unk_2B = param3;
    } else {
        v0->unk_2B = 0;
    }

    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);

    return v0;
}

void *sub_0203D5C8(int param0, FieldSystem *fieldSystem, int param2)
{
    PokemonSummary *v0 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

    v0->monData = Party_GetFromSavedata(fieldSystem->saveData);
    v0->options = SaveData_Options(fieldSystem->saveData);
    v0->dataType = 1;
    v0->pos = param2;
    v0->max = (u8)Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = 0;
    v0->ribbons = sub_0202D79C(fieldSystem->saveData);
    v0->dexMode = sub_0207A274(fieldSystem->saveData);
    v0->contest = PokemonSummary_ShowContestData(fieldSystem->saveData);
    v0->chatotCry = NULL;

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA02C);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(fieldSystem->saveData));
    sub_0203CD84(fieldSystem, &Unk_020F410C, v0);

    return v0;
}

void *sub_0203D644(FieldSystem *fieldSystem, int param1)
{
    PartyManagementData *v0 = sub_0203D344(11, fieldSystem, 0, 21);

    v0->unk_22 = param1;
    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);

    return v0;
}

PokemonSummary *sub_0203D670(FieldSystem *fieldSystem, int param1, int param2)
{
    PokemonSummary *v0;
    SaveData *v1;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    v1 = fieldSystem->saveData;
    v0 = Heap_AllocFromHeapAtEnd(param1, sizeof(PokemonSummary));

    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = SaveData_Options(v1);
    v0->monData = Party_GetFromSavedata(v1);
    v0->dataType = 1;
    v0->pos = 0;
    v0->max = Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = param2;
    v0->dexMode = sub_0207A274(v1);
    v0->contest = PokemonSummary_ShowContestData(v1);
    v0->ribbons = sub_0202D79C(v1);

    PokemonSummary_FlagVisiblePages(v0, v2);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(v1));

    return v0;
}

static const u8 Unk_020EA160[] = {
    0x3,
    0x5,
    0x8
};

void *sub_0203D6E4(int param0, FieldSystem *fieldSystem, u8 param2)
{
    PokemonSummary *v0 = Heap_AllocFromHeap(param0, sizeof(PokemonSummary));

    memset(v0, 0, sizeof(PokemonSummary));

    v0->monData = Party_GetFromSavedata(fieldSystem->saveData);
    v0->options = SaveData_Options(fieldSystem->saveData);
    v0->dataType = 1;
    v0->pos = param2;
    v0->max = 1;
    v0->move = 0;
    v0->mode = 2;
    v0->dexMode = sub_0207A274(fieldSystem->saveData);
    v0->contest = PokemonSummary_ShowContestData(fieldSystem->saveData);

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA160);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(fieldSystem->saveData));
    sub_0203D334(fieldSystem, v0);

    return v0;
}

int sub_0203D750(void *param0)
{
    PokemonSummary *v0 = param0;
    return v0->selectedSlot;
}

void sub_0203D754(FieldSystem *fieldSystem, UnkStruct_02042434 *param1)
{
    FS_EXTERN_OVERLAY(overlay19);

    static const OverlayManagerTemplate v0 = {
        ov19_021D0D80,
        ov19_021D0DEC,
        ov19_021D0E58,
        FS_OVERLAY_ID(overlay19)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

static BOOL sub_0203D764(TaskManager *taskMan)
{
    int *v0 = FieldTask_GetState(taskMan);
    UnkStruct_0203D764 *v1 = TaskManager_Environment(taskMan);
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);

    switch (*v0) {
    case 0:
        sub_0203D874(fieldSystem, v1->unk_0C);
        (*v0)++;
        break;
    case 1:
        if (!sub_020509B4(fieldSystem)) {
            (*v0)++;
        }
        break;
    case 2:
        if (sub_02097528(v1->unk_0C) || !sub_0209752C(v1->unk_0C)) {
            *(v1->unk_00) = 0;
        } else {
            *(v1->unk_00) = 1;

            if (v1->unk_08 == NULL) {
                *(v1->unk_04) = sub_02097530(v1->unk_0C);
            } else {
                u16 v3[2];

                sub_02097534(v1->unk_0C, v3);
                *(v1->unk_04) = v3[0];
                *(v1->unk_08) = v3[1];
            }
        }

        sub_020974EC(v1->unk_0C);
        Heap_FreeToHeap(v1);
        return 1;
        break;
    }

    return 0;
}

void sub_0203D80C(TaskManager *taskMan, u16 *param1, u16 *param2, u16 *param3)
{
    UnkStruct_0203D764 *v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);

    v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203D764));
    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;

    if (param3 == NULL) {
        v0->unk_0C = sub_0209747C(0, 0, fieldSystem->saveData, 32);
        sub_020974F4(v0->unk_0C, *param2);
    } else {
        v0->unk_0C = sub_0209747C(1, 0, fieldSystem->saveData, 32);
        sub_020974F8(v0->unk_0C, *param2, *param3);
    }

    FieldTask_Start(taskMan, sub_0203D764, v0);
}

void sub_0203D874(FieldSystem *fieldSystem, UnkStruct_0209747C *param1)
{
    FS_EXTERN_OVERLAY(overlay20);

    static const OverlayManagerTemplate v0 = {
        ov20_021D0D80,
        ov20_021D0DF8,
        ov20_021D0EA8,
        FS_OVERLAY_ID(overlay20)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203D884(FieldSystem *fieldSystem, UnkStruct_0203D8AC *param1)
{
    FS_EXTERN_OVERLAY(overlay80);

    const OverlayManagerTemplate v0 = {
        ov80_021D0D80,
        ov80_021D0DD8,
        ov80_021D0E50,
        FS_OVERLAY_ID(overlay80)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void *sub_0203D8AC(FieldSystem *fieldSystem)
{
    UnkStruct_0203D8AC *v0;
    TrainerInfo *v1;
    int v2 = 0, v3 = 0;
    sub_0203A76C(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(fieldSystem, v0, 0);
    sub_0203D884(fieldSystem, v0);

    return v0;
}

static void sub_0203D8DC(FieldSystem *fieldSystem, Options *param1)
{
    FS_EXTERN_OVERLAY(overlay74);

    static const OverlayManagerTemplate v0 = {
        ov74_021D0D80,
        ov74_021D0F60,
        ov74_021D0E58,
        FS_OVERLAY_ID(overlay74)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void *sub_0203D8EC(FieldSystem *fieldSystem)
{
    UnkStruct_0203D8EC *v0;
    Options *v1;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203D8EC));
    v1 = SaveData_Options(FieldSystem_SaveData(fieldSystem));

    sub_0203D8DC(fieldSystem, v1);

    return v0;
}

extern const OverlayManagerTemplate Unk_020F64B0;

static void sub_0203D910(FieldSystem *fieldSystem, UnkStruct_02097728 *param1)
{
    sub_0203CD84(fieldSystem, &Unk_020F64B0, param1);
}

UnkStruct_02097728 *sub_0203D920(FieldSystem *fieldSystem, int param1, u8 param2, u8 param3, int param4)
{
    UnkStruct_02097728 *v0;

    v0 = sub_02097624(FieldSystem_SaveData(fieldSystem), param1, param2, param3, 11);
    sub_0203D910(fieldSystem, v0);

    return v0;
}

UnkStruct_02097728 *sub_0203D94C(FieldSystem *fieldSystem, int param1, u8 param2, int param3)
{
    UnkStruct_02097728 *v0;

    if (param1 == 3) {
        v0 = sub_020976F4(FieldSystem_SaveData(fieldSystem), param2, param3);
    } else {
        v0 = sub_0209767C(FieldSystem_SaveData(fieldSystem), param1, param2, param3);
    }

    sub_0203D910(fieldSystem, v0);

    return v0;
}

UnkStruct_02097728 *sub_0203D984(FieldSystem *fieldSystem, Pokemon *param1, int param2)
{
    UnkStruct_02097728 *v0;

    v0 = sub_020976BC(FieldSystem_SaveData(fieldSystem), param1, param2);
    sub_0203D910(fieldSystem, v0);

    return v0;
}

static void sub_0203D9A8(FieldSystem *fieldSystem, UnkStruct_0203D9B8 *param1)
{
    sub_0203CD84(fieldSystem, &Unk_020F6890, param1);
}

UnkStruct_0203D9B8 *sub_0203D9B8(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_0203D9B8 *v0;

    v0 = sub_020989DC(FieldSystem_SaveData(fieldSystem), param1);
    sub_0203D9A8(fieldSystem, v0);

    return v0;
}

void sub_0203D9D8(FieldSystem *fieldSystem, UnkStruct_ov90_021D0D80 *param1)
{
    FS_EXTERN_OVERLAY(overlay90);

    const OverlayManagerTemplate v0 = {
        ov90_021D0D80,
        ov90_021D0E04,
        ov90_021D0DE8,
        FS_OVERLAY_ID(overlay90)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

static UnkStruct_0203DA00 *sub_0203DA00(int param0, SaveData *param1, int param2, BOOL *param3, BOOL param4)
{
    UnkStruct_0203DA00 *v0;
    Pokemon *v1;
    int v2;
    UnkStruct_0202A750 *v3;
    UnkStruct_02029C68 *v4;
    UnkStruct_02029D04 *v5;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0203DA00));
    memset(v0, 0, sizeof(UnkStruct_0203DA00));
    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param1), param2);

    v0->unk_00 = v1;

    v3 = sub_0202A750(param1);
    v4 = sub_02029CA8(v3, 0);
    v5 = sub_02029D04(v3);

    v0->unk_04 = v4;
    v0->unk_08 = v5;
    v0->unk_0C = SaveData_Options(param1);
    v0->records = SaveData_GetGameRecordsPtr(param1);
    v0->unk_14 = SaveData_GetTrainerInfo(param1);
    v0->unk_18 = param3;
    v0->unk_1C = param4;

    return v0;
}

static BOOL sub_0203DA64(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0203DA64 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0203DB10(fieldSystem, v1->unk_0C);
        v1->unk_00++;
        break;
    case 1:
        if (sub_020509B4(fieldSystem) == 0) {
            if (v1->unk_08 == 1) {
                *v1->unk_04 = 1;
            } else {
                *v1->unk_04 = 0;
            }

            Heap_FreeToHeap(v1->unk_0C);
            Heap_FreeToHeap(v1);

            return 1;
        }
        break;
    }

    return 0;
}

void sub_0203DAC0(TaskManager *param0, u16 *param1, SaveData *param2, u16 param3, u16 param4)
{
    UnkStruct_0203DA64 *v0;

    v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DA64));
    memset(v0, 0, sizeof(UnkStruct_0203DA64));

    v0->unk_0C = sub_0203DA00(32, param2, param3, &v0->unk_08, param4);
    v0->unk_04 = param1;

    FieldTask_Start(param0, sub_0203DA64, v0);
}

BOOL sub_0203DB10(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay22);

    static OverlayManagerTemplate v0 = {
        ov22_02255D44,
        ov22_02255E50,
        ov22_02256098,
        FS_OVERLAY_ID(overlay22)
    };

    sub_0203CD84(fieldSystem, &v0, param1);

    return 1;
}

BOOL sub_0203DB24(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay22);

    static OverlayManagerTemplate v0 = {
        ov22_0225B660,
        ov22_0225B738,
        ov22_0225B7FC,
        FS_OVERLAY_ID(overlay22)
    };

    sub_0203CD84(fieldSystem, &v0, param1);

    return 1;
}

static OverlayManagerTemplate Unk_02100AA4 = {
    ov88_0223B140,
    ov88_0223B57C,
    ov88_0223C03C,
    FS_OVERLAY_ID(overlay88)
};

static const OverlayManagerTemplate Unk_020EA268 = {
    ov95_02246C20,
    ov95_02246E7C,
    ov95_02246E1C,
    FS_OVERLAY_ID(overlay95)
};

static void sub_0203DB38(UnkStruct_ov88_0223C370 *param0, FieldSystem *fieldSystem)
{
    param0->unk_04 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    param0->unk_08 = Party_GetFromSavedata(fieldSystem->saveData);
    param0->unk_0C = SaveData_SaveTable(fieldSystem->saveData, 9);
    param0->unk_14 = sub_0202C878(fieldSystem->saveData);
    param0->unk_18 = SaveData_Options(fieldSystem->saveData);
    param0->unk_24 = SaveData_Pokedex(fieldSystem->saveData);
    param0->unk_30 = sub_0207A274(fieldSystem->saveData);
    param0->unk_10 = fieldSystem->saveData;
    param0->unk_1C = fieldSystem->journal;
    param0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    param0->unk_38 = Heap_AllocFromHeap(32, TrainerInfo_Size());
    param0->unk_3C = Heap_AllocFromHeap(32, Pokemon_GetStructSize());
    param0->unk_40 = Heap_AllocFromHeap(32, Pokemon_GetStructSize());
    param0->fieldSystem = fieldSystem;
    param0->unk_34 = 0;
}

static void sub_0203DBC0(UnkStruct_ov88_0223C370 *param0)
{
    if (param0->unk_38) {
        Heap_FreeToHeap(param0->unk_38);
        param0->unk_38 = NULL;
    }

    if (param0->unk_3C) {
        Heap_FreeToHeap(param0->unk_3C);
        param0->unk_3C = NULL;
    }

    if (param0->unk_40) {
        Heap_FreeToHeap(param0->unk_40);
        param0->unk_40 = NULL;
    }
}

BOOL sub_0203DBF0(TaskManager *param0)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0203DBF0 *v2 = TaskManager_Environment(param0);

    switch (v2->unk_00) {
    case 0:
        if (!sub_020389B8()) {
            FieldTask_FinishFieldMap(param0);
        }

        v2->unk_00++;
        break;
    case 1:
        sub_0203DB38(&(v2->unk_04), fieldSystem);
        v2->unk_00++;
    case 2:
        sub_02050A38(param0, &Unk_02100AA4, &v2->unk_04);
        v2->unk_00++;
        break;
    case 3:
        if (v2->unk_04.unk_28 == 0) {
            sub_0203DBC0(&(v2->unk_04));
            Heap_FreeToHeap(v2);
            return 1;
        }

        v2->unk_00++;
        break;
    case 4:
        v2->unk_48.unk_08 = v2->unk_04.unk_38;
        v2->unk_48.unk_00 = Pokemon_GetBoxPokemon(v2->unk_04.unk_3C);
        v2->unk_48.unk_04 = Pokemon_GetBoxPokemon(v2->unk_04.unk_40);
        v2->unk_48.unk_14 = SaveData_Options(fieldSystem->saveData);
        v2->unk_48.unk_10 = 1;

        switch (sub_02055BA8(fieldSystem)) {
        case 0:
        case 1:
        default:
            v2->unk_48.unk_0C = 0;
            break;
        case 2:
            v2->unk_48.unk_0C = 1;
            break;
        case 3:
        case 4:
            v2->unk_48.unk_0C = 2;
            break;
        }

        if (sub_020389B8()) {
            v2->unk_48.unk_0C = 3;
        }

        sub_02050A38(param0, &Unk_020EA268, &v2->unk_48);
        v2->unk_00 = 5;
        break;
    case 5: {
        int v3 = Pokemon_GetValue(v2->unk_04.unk_40, MON_DATA_HELD_ITEM, NULL);
        int v4;
        int v5;

        if ((v4 = sub_02076B94(NULL, v2->unk_04.unk_40, 1, v3, &v5)) != 0) {
            Heap_Create(3, 26, 0x30000);
            v2->unk_60 = sub_0207AE68(NULL, v2->unk_04.unk_40, v4, SaveData_Options(fieldSystem->saveData), PokemonSummary_ShowContestData(fieldSystem->saveData), SaveData_Pokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecordsPtr(fieldSystem->saveData), SaveData_PoketchData(fieldSystem->saveData), v5, 0x4, 26);
            v2->unk_00 = 6;
        } else {
            v2->unk_00 = 7;
        }
    } break;
    case 6:
        if (sub_0207B0D0(v2->unk_60)) {
            Pokemon_Copy(v2->unk_04.unk_40, Party_GetPokemonBySlotIndex(v2->unk_04.unk_08, v2->unk_04.unk_2C));
            sub_0207B0E0(v2->unk_60);
            Heap_Destroy(26);
            v2->unk_00 = 7;
        }
        break;
    case 7:
        v2->unk_04.unk_34++;
        v2->unk_00 = 2;

        {
            GameRecords *v6 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
            GameRecords_IncrementTrainerScore(v6, TRAINER_SCORE_EVENT_UNK_16);

            if (sub_020389B8()) {
                GameRecords_IncrementRecordValue(v6, RECORD_UNK_113);
            }
        }
        break;
    }

    return 0;
}

void sub_0203DDDC(TaskManager *param0)
{
    UnkStruct_0203DBF0 *v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DBF0));

    v0->unk_00 = 0;
    FieldTask_Start(param0, sub_0203DBF0, v0);
}

const OverlayManagerTemplate Unk_020EA258 = {
    ov58_021D0D80,
    ov58_021D0F08,
    ov58_021D1018,
    FS_OVERLAY_ID(overlay58)
};

const OverlayManagerTemplate Unk_020EA248 = {
    ov59_021D0D80,
    ov59_021D0F00,
    ov59_021D0FF4,
    FS_OVERLAY_ID(overlay59)
};

void sub_0203DDFC(FieldSystem *fieldSystem)
{
    UnkStruct_0203DDFC *v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DDFC));

    v0->unk_00 = fieldSystem->unk_80;
    v0->unk_04 = fieldSystem->journal;
    v0->unk_08 = SaveData_Options(fieldSystem->saveData);

    sub_0203CD84(fieldSystem, &Unk_020EA258, v0);
}

void *sub_0203DE34(FieldSystem *fieldSystem)
{
    UnkStruct_0203DE34 *v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203DE34));

    v0->unk_00 = fieldSystem->saveData;
    v0->unk_04 = fieldSystem->unk_80;
    v0->unk_08 = SaveData_Options(fieldSystem->saveData);
    v0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v0->unk_10 = fieldSystem->journal;

    sub_0203CD84(fieldSystem, &Unk_020EA248, v0);

    return v0;
}

const OverlayManagerTemplate Unk_020EA238 = {
    ov64_0222DCE0,
    ov64_0222DDAC,
    ov64_0222DEA4,
    FS_OVERLAY_ID(overlay64)
};

void sub_0203DE78(FieldSystem *fieldSystem, SaveData *param1)
{
    sub_0203CD84(fieldSystem, &Unk_020EA238, param1);
}

void sub_0203DE88(FieldSystem *fieldSystem, SaveData *param1)
{
    sub_0203CD84(fieldSystem, &Unk_020F2FCC, fieldSystem);
}

static BOOL sub_0203DE98(TaskManager *param0)
{
    int v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0203DE98 *v2 = TaskManager_Environment(param0);

    switch (v2->unk_00) {
    case 0:
        FieldTask_FinishFieldMap(param0);
        v2->unk_00++;
        break;
    case 1:
        sub_02050A38(param0, &Unk_020F2DAC, v2->unk_0C);
        v2->unk_00++;
        break;
    case 2:
        FieldTask_StartFieldMap(param0);
        v2->unk_00++;
        break;
    case 3:
        if (v2->unk_0C->unk_00 == 1) {
            if (Strbuf_Compare(v2->unk_0C->unk_18, v2->unk_10) == 0) {
                v2->unk_0C->unk_14 = 1;
            }
        } else if (v2->unk_0C->unk_00 == 5) {
            const u16 *v3 = Strbuf_GetData(v2->unk_0C->unk_18);
            UnkStruct_0202B4A0 *v4 = sub_0202B4A0(fieldSystem->saveData);

            if (sub_0202B4D8(v4, v3)) {
                v2->unk_0C->unk_14 = 2;
            }
        }

        if (v2->unk_0C->unk_14 == 0) {
            sub_0203DF68(param0);
        }

        if (v2->unk_08 != NULL) {
            *v2->unk_08 = v2->unk_0C->unk_14;
        }

        sub_0208716C(v2->unk_0C);
        Strbuf_Free(v2->unk_10);
        Heap_FreeToHeap(v2);

        return 1;
    }

    return 0;
}

static void sub_0203DF68(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0203DE98 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_0C->unk_00) {
    case 0: {
        TrainerInfo *v2 = SaveData_GetTrainerInfo(fieldSystem->saveData);
        TrainerInfo_SetName(v2, v1->unk_0C->unk_1C);
    } break;
    case 1: {
        Pokemon *v3;
        int v4;

        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v1->unk_04);
        Pokemon_SetValue(v3, 118, (u8 *)&v1->unk_0C->unk_1C);
    } break;
    case 5: {
        UnkStruct_0202B4A0 *v5 = sub_0202B4A0(fieldSystem->saveData);
        sub_0202B444(v5, 0, 0, v1->unk_0C->unk_18);
    } break;
    case 6: {
        MiscSaveBlock *v6 = SaveData_MiscSaveBlock(fieldSystem->saveData);
        MiscSaveBlock_SetTabletName(v6, v1->unk_0C->unk_18);
    } break;
    }

    return;
}

void sub_0203DFE8(TaskManager *param0, int param1, int param2, int param3, int param4, const u16 *param5, u16 *param6)
{
    Pokemon *v0;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0203DE98 *v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203DE98));

    v2->unk_00 = 0;
    v2->unk_04 = param4;
    v2->unk_08 = param6;
    v2->unk_0C = sub_0208712C(11, param1, param2, param3, SaveData_Options(fieldSystem->saveData));
    v2->unk_10 = Strbuf_Init(12, 11);

    switch (param1) {
    case 1:
        v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v2->unk_04);
        v2->unk_0C->unk_10 = Pokemon_GetValue(v0, MON_DATA_GENDER, NULL);
        v2->unk_0C->unk_08 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

        if (param5 != NULL) {
            Strbuf_CopyChars(v2->unk_10, param5);
        }
        break;
    case 5:
        Strbuf_CopyChars(v2->unk_10, param5);
        break;
    default:
        if (param5 != NULL) {
            Strbuf_CopyChars(v2->unk_0C->unk_18, param5);
        }
        break;
    }

    FieldTask_Start(param0, sub_0203DE98, v2);
}

void sub_0203E09C(FieldSystem *fieldSystem, TrainerCard *param1)
{
    FS_EXTERN_OVERLAY(overlay71);

    static const OverlayManagerTemplate v0 = {
        ov71_0223B140,
        ov71_0223B388,
        ov71_0223B5B8,
        FS_OVERLAY_ID(overlay71)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

BOOL sub_0203E0AC(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay21);

    static const OverlayManagerTemplate v0 = {
        ov21_021D0D80,
        ov21_021D0E3C,
        ov21_021D0EC8,
        FS_OVERLAY_ID(overlay21)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
    return 1;
}

void sub_0203E0C0(FieldSystem *fieldSystem, ChooseStarterData *param1)
{
    FS_EXTERN_OVERLAY(choose_starter);

    static const OverlayManagerTemplate template = {
        ChooseStarter_Init,
        ChooseStarter_Main,
        ChooseStarter_Exit,
        FS_OVERLAY_ID(choose_starter)
    };

    sub_0203CD84(fieldSystem, &template, param1);
}

void sub_0203E0D0(FieldSystem *fieldSystem)
{
    UnkStruct_0202C834 *v0 = sub_0202C834(fieldSystem->saveData);

    FS_EXTERN_OVERLAY(overlay72);

    const OverlayManagerTemplate v1 = {
        ov72_0223D7A0,
        ov72_0223D920,
        ov72_0223D984,
        FS_OVERLAY_ID(overlay72)
    };

    sub_0203CD84(fieldSystem, &v1, fieldSystem->saveData);
}

void sub_0203E0FC(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_0203E0FC *v0;

    FS_EXTERN_OVERLAY(overlay94);

    const OverlayManagerTemplate v1 = {
        ov94_0223BCB0,
        ov94_0223BE2C,
        ov94_0223BF54,
        FS_OVERLAY_ID(overlay94)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203E0FC));

    v0->unk_00 = sub_0202DA40(fieldSystem->saveData);
    v0->unk_04 = sub_02025CCC(fieldSystem->saveData);
    v0->unk_08 = SaveData_SaveTable(fieldSystem->saveData, 2);
    v0->unk_0C = SaveData_PCBoxes(fieldSystem->saveData);
    v0->unk_10 = SaveData_Pokedex(fieldSystem->saveData);
    v0->unk_14 = sub_0202B370(fieldSystem->saveData);
    v0->unk_18 = sub_0202C878(fieldSystem->saveData);
    v0->unk_1C = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v0->unk_24 = SaveData_Options(fieldSystem->saveData);
    v0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v0->unk_2C = fieldSystem->journal;
    v0->unk_3C = PokemonSummary_ShowContestData(fieldSystem->saveData);
    v0->unk_20 = fieldSystem->saveData;
    v0->unk_34 = sub_0207A274(fieldSystem->saveData);
    v0->unk_38 = sub_02039058(v0->unk_14);
    v0->unk_30 = SaveData_GetBag(fieldSystem->saveData);
    v0->unk_40 = param1;

    sub_0203CD84(fieldSystem, &v1, v0);
}

void *sub_0203E1AC(FieldSystem *fieldSystem, int param1, int param2)
{
    UnkStruct_0206BC70 *v0;

    FS_EXTERN_OVERLAY(overlay96);

    const OverlayManagerTemplate v1 = {
        ov96_0223B6A0,
        ov96_0223B7F8,
        ov96_0223B8CC,
        FS_OVERLAY_ID(overlay96)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206BC70));

    v0->unk_00 = sub_0202D750(fieldSystem->saveData);
    v0->unk_04 = sub_0202D764(fieldSystem->saveData);
    v0->unk_08 = sub_02025CCC(fieldSystem->saveData);
    v0->unk_10 = SaveData_Options(fieldSystem->saveData);
    v0->unk_14 = sub_0202AD28(sub_0202B370(fieldSystem->saveData));
    v0->unk_0C = fieldSystem->saveData;
    v0->unk_1C = sub_02039058(sub_0202B370(fieldSystem->saveData));
    v0->unk_18 = param1;
    v0->unk_24 = param2;
    v0->unk_20 = 1;

    sub_0203CD84(fieldSystem, &v1, v0);

    return (void *)v0;
}

static const OverlayManagerTemplate Unk_020EA328 = {
    ov92_021D0D80,
    ov92_021D0EB8,
    ov92_021D1478,
    FS_OVERLAY_ID(overlay92)
};

void sub_0203E224(FieldSystem *fieldSystem)
{
    sub_0203CD84(fieldSystem, &Unk_020EA328, fieldSystem->saveData);
}

void sub_0203E234(FieldSystem *fieldSystem, UnkStruct_0203E234 *param1)
{
    FS_EXTERN_OVERLAY(overlay86);

    static const OverlayManagerTemplate v0 = {
        ov86_0223B140,
        ov86_0223B394,
        ov86_0223B2E4,
        FS_OVERLAY_ID(overlay86)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void *sub_0203E244(FieldSystem *fieldSystem)
{
    static const OverlayManagerTemplate v0 = {
        ov87_021D0D80,
        ov87_021D0E2C,
        ov87_021D0DFC,
        FS_OVERLAY_ID(overlay87),
    };
    HallOfFame *v1;
    int v2;

    v1 = SaveData_HallOfFame(fieldSystem->saveData, 11, &v2);

    if (v2 == 2) {
        Heap_FreeToHeap(v1);
        return NULL;
    } else {
        sub_0203CD84(fieldSystem, &v0, v1);
        return v1;
    }
}

void sub_0203E274(FieldSystem *fieldSystem, UnkStruct_0203E274 *param1)
{
    FS_EXTERN_OVERLAY(overlay99);

    static const OverlayManagerTemplate v0 = {
        ov99_021D0D80,
        ov99_021D1028,
        ov99_021D11A8,
        FS_OVERLAY_ID(overlay99)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203E284(FieldSystem *fieldSystem, UnkStruct_020997B8 *param1)
{
    FS_EXTERN_OVERLAY(overlay91);

    const OverlayManagerTemplate v0 = {
        ov91_021D0D80,
        ov91_021D0E08,
        ov91_021D0EBC,
        FS_OVERLAY_ID(overlay91)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203E2AC(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay93);

    const OverlayManagerTemplate v0 = {
        ov93_021D0D80,
        ov93_021D0E70,
        ov93_021D0F58,
        FS_OVERLAY_ID(overlay93)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203E2D4(FieldSystem *fieldSystem, void *param1)
{
    FS_EXTERN_OVERLAY(overlay93);

    const OverlayManagerTemplate v0 = {
        ov93_021D111C, ov93_021D120C, ov93_021D12F0, FS_OVERLAY_ID(overlay93)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
}

void sub_0203E2FC(FieldSystem *fieldSystem)
{
    UnkStruct_0203E2FC v0;
    Party *v1 = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon *v2 = ov5_021E7278(v1);

    GF_ASSERT(v2 != NULL);
    sub_0206D578(fieldSystem, v2);

    v0.unk_00 = v2;
    v0.unk_04 = SaveData_Options(fieldSystem->saveData);
    v0.unk_08 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v0.unk_0C = sub_02055428(fieldSystem, fieldSystem->location->mapId);

    sub_020985AC(fieldSystem->unk_10, &v0);
}

BOOL sub_0203E348(FieldSystem *fieldSystem, UnkStruct_0203E348 *param1)
{
    FS_EXTERN_OVERLAY(overlay101);

    static const OverlayManagerTemplate v0 = {
        ov101_021D0D80,
        ov101_021D0E40,
        ov101_021D0EE4,
        FS_OVERLAY_ID(overlay101)
    };

    sub_0203CD84(fieldSystem, &v0, param1);
    return 1;
}

static BOOL sub_0203E35C(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);
    UnkStruct_0203E35C *v2 = TaskManager_Environment(param0);
    int *v3 = FieldTask_GetState(param0);
    int v4;

    switch (*v3) {
    case 0:
        sub_0203E348(fieldSystem, &v2->unk_0C);
        (*v3)++;
        break;
    case 1:
        if (sub_020509B4(fieldSystem) == 0) {
            u16 *v5 = SaveData_GetCoins(fieldSystem->saveData);
            s64 v6 = GetTimestamp();

            sub_0206DD38(fieldSystem, Coins_GetValue(v5), v2->unk_00, TimeElapsed(v2->unk_04, v6) / 60);
            Coins_SetValue(SaveData_GetCoins(fieldSystem->saveData), v2->unk_00);

            v4 = sub_0206B394(v1);

            if ((v2->unk_0C.unk_0C) > v4) {
                sub_0206B3A4(v1, v2->unk_0C.unk_0C);
            }

            Heap_FreeToHeap(v2);
            return 1;
        }
        break;
    }

    return 0;
}

void sub_0203E414(TaskManager *param0, int param1)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    Options *v1 = SaveData_Options(fieldSystem->saveData);
    UnkStruct_0203E35C *v2 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203E35C));

    v2->unk_0C.unk_00 = &v2->unk_00;
    v2->unk_00 = Coins_GetValue(SaveData_GetCoins(fieldSystem->saveData));
    v2->unk_04 = GetTimestamp();
    v2->unk_0C.records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v2->unk_0C.unk_0C = 0;
    v2->unk_0C.unk_10 = Options_Frame(v1);
    v2->unk_0C.unk_04 = sub_0203E484(fieldSystem->saveData, param1);

    GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_05);
    FieldTask_Start(param0, sub_0203E35C, v2);
}

static u8 sub_0203E484(SaveData *param0, u8 param1)
{
    static const u8 v0[12] = {
        0,
        5,
        1,
        1,
        4,
        4,
        2,
        2,
        2,
        3,
        3,
        3,
    };
    UnkStruct_0202B4A0 *v1 = sub_0202B4A0(param0);
    u32 v2;
    u8 v3[12];
    u8 v4, v5, v6, v7;

    v2 = LCRNG_GetSeed();

    LCRNG_SetSeed(sub_0202B428(v1));
    MI_CpuCopy8(v0, v3, sizeof(v3));

    for (v4 = 0; v4 < 12; v4++) {
        for (v5 = v4 + 1; v5 < 12; v5++) {
            v6 = LCRNG_Next() % 12;
            v7 = v3[v4];
            v3[v4] = v3[v6];
            v3[v6] = v7;
        }
    }

    LCRNG_SetSeed(v2);
    return v3[param1];
}

static BOOL sub_0203E4F8(TaskManager *param0)
{
    UnkStruct_ov7_0224BEFC *v0 = TaskManager_Environment(param0);

    if (ov7_0224BF2C(v0) == 1) {
        ov7_0224BEFC(v0);
        return 1;
    }

    return 0;
}

void sub_0203E518(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov7_0224BEFC *v1 = ov7_0224BE9C(4, fieldSystem->saveData, fieldSystem->unk_08);

    FieldTask_Start(param0, sub_0203E4F8, v1);
}

void *sub_0203E53C(FieldSystem *fieldSystem, int param1, int param2)
{
    FS_EXTERN_OVERLAY(overlay102);

    static const OverlayManagerTemplate v0 = {
        ov102_021D0D80,
        ov102_021D0E2C,
        ov102_021D0F50,
        FS_OVERLAY_ID(overlay102),
    };
    UnkStruct_0203E53C *v1 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203E53C));

    {
        v1->unk_04 = param2;
        v1->unk_00 = fieldSystem->saveData;
    }

    sub_0203CD84(fieldSystem, &v0, v1);

    return v1;
}

void *sub_0203E564(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 param3, int param4)
{
    UnkStruct_0203E564 *v0;

    FS_EXTERN_OVERLAY(overlay110);

    static OverlayManagerTemplate v1 = {
        ov110_021D0D80,
        ov110_021D0E9C,
        ov110_021D0EF0,
        FS_OVERLAY_ID(overlay110)
    };

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_0203E564));

    v0->unk_04 = param1;
    v0->unk_05 = param2;
    v0->unk_06 = param3;
    v0->unk_00 = fieldSystem->saveData;

    sub_0203CD84(fieldSystem, &v1, v0);

    return v0;
}

PartyManagementData *sub_0203E598(FieldSystem *fieldSystem, int param1, int param2)
{
    PartyManagementData *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(PartyManagementData));
    memset(v0, 0, sizeof(PartyManagementData));

    v0->unk_00 = Party_GetFromSavedata(fieldSystem->saveData);
    v0->unk_04 = SaveData_GetBag(fieldSystem->saveData);
    v0->unk_08 = sub_02028430(fieldSystem->saveData);
    v0->unk_0C = SaveData_Options(fieldSystem->saveData);
    v0->unk_10 = SaveData_TVBroadcast(fieldSystem->saveData);
    v0->unk_18 = NULL;
    v0->unk_21 = 0;
    v0->unk_20 = 5;
    v0->unk_24 = param2;
    v0->unk_22 = 0;
    v0->unk_1C = fieldSystem;

    sub_0203CD84(fieldSystem, &Unk_020F1E88, v0);

    return v0;
}

void *sub_0203E608(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_0203E608 *v0;

    FS_EXTERN_OVERLAY(overlay111);

    static OverlayManagerTemplate v1 = {
        ov111_021D0D80,
        ov111_021D0E34,
        ov111_021D0F40,
        FS_OVERLAY_ID(overlay111)
    };

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203E608));
    memset(v0, 0, sizeof(UnkStruct_0203E608));

    v0->unk_00 = fieldSystem->saveData;
    sub_0203CD84(fieldSystem, &v1, v0);

    return v0;
}

static const u8 Unk_020EA15C[] = {
    0x3,
    0x5,
    0x8
};

void *sub_0203E63C(int param0, FieldSystem *fieldSystem, u16 param2, u16 param3)
{
    PokemonSummary *v0;

    v0 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

    v0->monData = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), param2);
    v0->options = SaveData_Options(fieldSystem->saveData);
    v0->dataType = 0;
    v0->pos = 0;
    v0->max = 1;
    v0->move = param3;
    v0->mode = 2;
    v0->ribbons = sub_0202D79C(fieldSystem->saveData);
    v0->dexMode = sub_0207A274(fieldSystem->saveData);
    v0->contest = ContestHall_IsVisited(SaveData_GetVarsFlags(fieldSystem->saveData));
    v0->chatotCry = NULL;

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA15C);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(fieldSystem->saveData));
    sub_0203CD84(fieldSystem, &Unk_020F410C, v0);

    return v0;
}

void sub_0203E6C0(FieldSystem *fieldSystem, int param1, int param2)
{
    UnkStruct_0203E6C0 *v0;

    FS_EXTERN_OVERLAY(overlay61);

    const OverlayManagerTemplate v1 = {
        sub_02017498,
        sub_02017524,
        sub_02017658,
        FS_OVERLAY_ID(overlay61)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203E6C0));
    MI_CpuClear8(v0, sizeof(UnkStruct_0203E6C0));

    v0->fieldSystem = fieldSystem;
    v0->unk_04 = fieldSystem->saveData;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    sub_0203CD84(fieldSystem, &v1, v0);
}

FS_EXTERN_OVERLAY(library_tv);

static const OverlayManagerTemplate LibraryTV_template = {
    LibraryTV_Init,
    LibraryTV_Main,
    LibraryTV_Exit,
    FS_OVERLAY_ID(library_tv)
};

void sub_0203E704(FieldSystem *fieldSystem)
{
    sub_0203CD84(fieldSystem, &LibraryTV_template, fieldSystem->saveData);
}

static const OverlayManagerTemplate Unk_020EA368 = {
    DWWarp_Init,
    DWWarp_Main,
    DWWarp_Exit,
    FS_OVERLAY_ID(dw_warp)
};

void sub_0203E714(FieldSystem *fieldSystem)
{
    sub_0203CD84(fieldSystem, &Unk_020EA368, fieldSystem->saveData);
}
