#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202783C_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "savedata.h"
#include "overlay007/struct_ov7_0224BEFC_decl.h"

#include "constdata/const_020F410C.h"
#include "constdata/const_020EA328.h"
#include "constdata/const_020F6890.h"
#include "constdata/const_020EA02C.h"
#include "constdata/const_020EA358.h"
#include "constdata/const_020F2FCC.h"
#include "constdata/const_020F1E88.h"
#include "overlay084/const_ov84_02241130.h"
#include "constdata/const_020F2DAC.h"

#include "struct_defs/options.h"
#include "struct_defs/struct_0202DF8C.h"
#include "field/field_system.h"
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
#include "struct_defs/struct_020425E0.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/struct_02070950.h"
#include "struct_defs/struct_02072014.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"
#include "struct_defs/struct_020997B8.h"
#include "overlay006/battle_params.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay088/struct_ov88_0223C370.h"
#include "overlay090/struct_ov90_021D0D80.h"

#include "rtc.h"
#include "unk_02017498.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "savedata.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020277A4.h"
#include "unk_020279FC.h"
#include "unk_02028124.h"
#include "unk_020298BC.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "coins.h"
#include "unk_0202C7FC.h"
#include "unk_0202C858.h"
#include "unk_0202CD50.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_0202DA40.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_0203A6DC.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "poketch_data.h"
#include "unk_0205B33C.h"
#include "unk_0205E7D0.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B70C.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207AE68.h"
#include "unk_0207CB08.h"
#include "unk_0207D3B8.h"
#include "unk_0208694C.h"
#include "pokemon_summary_app.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "unk_02098218.h"
#include "unk_020989DC.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay007/ov7_0224BE9C.h"
#include "overlay016/ov16_0223B140.h"
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
#include "overlay078/ov78_021D0D80.h"
#include "overlay080/ov80_021D0D80.h"
#include "overlay081/ov81_021D0D80.h"
#include "overlay084/ov84_0223B5A0.h"
#include "overlay085/ov85_02241440.h"
#include "overlay086/ov86_0223B140.h"
#include "overlay087/ov87_021D0D80.h"
#include "overlay088/ov88_0223B140.h"
#include "overlay090/ov90_021D0D80.h"
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
#include "overlay120/ov120_021D0D80.h"
#include "overlay121/ov121_021D0D80.h"

FS_EXTERN_OVERLAY(overlay16);
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
FS_EXTERN_OVERLAY(overlay78);
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
FS_EXTERN_OVERLAY(overlay120);
FS_EXTERN_OVERLAY(overlay121);

#include <nitro/code16.h>

typedef struct {
    int unk_00;
    PartyManagementData * unk_04;
    PokemonSummary * unk_08;
} UnkStruct_0203D444;

typedef struct {
    u16 * unk_00;
    u16 * unk_04;
    u16 * unk_08;
    UnkStruct_0209747C * unk_0C;
} UnkStruct_0203D764;

typedef struct {
    u32 unk_00;
    u16 * unk_04;
    BOOL unk_08;
    UnkStruct_0203DA00 * unk_0C;
} UnkStruct_0203DA64;

typedef struct {
    int unk_00;
    UnkStruct_ov88_0223C370 unk_04;
    UnkStruct_ov6_02246254 unk_48;
    UnkStruct_0207AE68 * unk_60;
    int unk_64;
} UnkStruct_0203DBF0;

typedef struct {
    int unk_00;
    int unk_04;
    u16 * unk_08;
    UnkStruct_0208737C * unk_0C;
    Strbuf* unk_10;
} UnkStruct_0203DE98;

typedef struct {
    int unk_00;
    s64 unk_04;
    UnkStruct_0203E348 unk_0C;
} UnkStruct_0203E35C;

static void sub_0203DF68(UnkStruct_020508D4 * param0);
static u8 sub_0203E484(SaveData * param0, u8 param1);

static int sub_0203D1B8 (UnkStruct_020067E8 * param0, int * param1)
{
    return 1;
}

static int sub_0203D1BC (UnkStruct_020067E8 * param0, int * param1)
{
    if (ov16_0223B140(param0, param1)) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0203D1D0 (UnkStruct_020067E8 * param0, int * param1)
{
    return 1;
}


const UnkStruct_0208BE5C Unk_020EA358 = {
    sub_0203D1B8,
    sub_0203D1BC,
    sub_0203D1D0,
    FS_OVERLAY_ID(overlay16)
};

void sub_0203D1D4 (FieldSystem * param0, BattleParams * param1)
{
    sub_0203CD84(param0, &Unk_020EA358, param1);
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

void sub_0203D1E4 (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay84);

    const UnkStruct_0208BE5C Unk_ov84_02241130 = {
        ov84_0223B5A0,
        ov84_0223B76C,
        ov84_0223B900,
        FS_OVERLAY_ID(overlay84)
    };

    sub_0203CD84(param0, &Unk_ov84_02241130, param1);
}

void * sub_0203D20C (FieldSystem * param0, UnkStruct_020684D0 * param1)
{
    UnkStruct_0207D3C0 * v0;
    void * v1;

    v0 = sub_0207D990(param0->unk_0C);
    v1 = sub_0207D824(v0, Unk_020EA164, 11);

    sub_0207CB2C(v1, param0->unk_0C, 0, param0->unk_98);
    sub_0207CB78(v1, param0->unk_70);

    if (sub_0205EB74(param0->unk_3C) == 0x1) {
        sub_0207CB58(v1);
    }

    sub_0207CB6C(v1, param1);
    sub_0203D1E4(param0, v1);

    return v1;
}

void * sub_0203D264 (FieldSystem * param0, int param1)
{
    void * v0;
    static const u8 * v1;
    static const u8 v2[] = {4, 0xff};
    static const u8 v3[] = {0, 0xff};
    UnkStruct_0207D3C0 * v4 = sub_0207D990(param0->unk_0C);

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

    sub_0207CB2C(v0, param0->unk_0C, 3, param0->unk_98);
    sub_0203D1E4(param0, v0);

    return v0;
}

u16 sub_0203D2C4 (void * param0)
{
    u16 v0;

    v0 = sub_0207CB94(param0);

    if ((v0 != 0) && (sub_0207CB9C(param0) == 5)) {
        GF_ASSERT(0);
    }

    return v0;
}

void sub_0203D2E4 (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay85);

    const UnkStruct_0208BE5C v0 = {
        ov85_02241440,
        ov85_0224154C,
        ov85_022415A0,
        FS_OVERLAY_ID(overlay85)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203D30C (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay81);

    const UnkStruct_0208BE5C v0 = {
        ov81_021D0D80,
        ov81_021D0E70,
        ov81_021D0EC4,
        FS_OVERLAY_ID(overlay81)
    };

    sub_0203CD84(param0, &v0, param0->unk_0C);
}

void sub_0203D334 (FieldSystem * param0, void * param1)
{
    sub_0203CD84(param0, &Unk_020F410C, param1);
}

static PartyManagementData * sub_0203D344 (int param0, FieldSystem * param1, int param2, int param3)
{
    PartyManagementData * v0 = Heap_AllocFromHeap(param0, sizeof(PartyManagementData));

    MI_CpuClearFast(v0, sizeof(PartyManagementData));

    v0->unk_00 = Party_GetFromSavedata(param1->unk_0C);
    v0->unk_04 = sub_0207D990(param1->unk_0C);
    v0->unk_08 = sub_02028430(param1->unk_0C);
    v0->unk_0C = sub_02025E44(param1->unk_0C);
    v0->unk_21 = param2;
    v0->unk_20 = param3;
    v0->unk_1C = param1;

    return v0;
}

void * sub_0203D390 (FieldSystem * param0, UnkStruct_02070950 * param1, u8 param2)
{
    PartyManagementData * v0 = sub_0203D344(11, param0, 0, 0);

    v0->unk_18 = param1;
    v0->unk_22 = param2;

    sub_0203CD84(param0, &Unk_020F1E88, v0);

    return v0;
}

void * sub_0203D3C0 (int param0, FieldSystem * param1)
{
    PartyManagementData * v0 = sub_0203D344(11, param1, 0, 3);

    sub_0203CD84(param1, &Unk_020F1E88, v0);
    return v0;
}

void * sub_0203D3E4 (int param0, FieldSystem * param1)
{
    PartyManagementData * v0 = sub_0203D344(11, param1, 0, 19);

    sub_0203CD84(param1, &Unk_020F1E88, v0);
    return v0;
}

int sub_0203D408 (void * param0)
{
    PartyManagementData * v0 = param0;
    return v0->unk_22;
}

void * sub_0203D410 (int param0, FieldSystem * param1, int param2)
{
    PartyManagementData * v0 = sub_0203D344(11, param1, 0, 18);

    v0->unk_22 = param2;
    sub_0203CD84(param1, &Unk_020F1E88, v0);

    return v0;
}

int sub_0203D438 (void * param0)
{
    PartyManagementData * v0 = param0;
    return v0->unk_23;
}

int sub_0203D440 (void * param0)
{
    PokemonSummary * v0 = param0;
    return v0->pos;
}

static BOOL sub_0203D444 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0;
    UnkStruct_0203D444 * v1;
    int * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_0203CD84(v0, &Unk_020F1E88, v1->unk_04);
        *v2 = 1;
        break;
    case 1:
        if (!sub_020509B4(v0)) {
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
        v1->unk_08 = sub_0203D670(v0, v1->unk_00, 0);
        v1->unk_08->pos = v1->unk_04->unk_22;
        sub_0203D334(v0, v1->unk_08);
        *v2 = 3;
        break;
    case 3:
        if (!sub_020509B4(v0)) {
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

void * sub_0203D50C (UnkStruct_020508D4 * param0, int param1)
{
    UnkStruct_0203D444 * v0;
    PartyManagementData * v1;
    FieldSystem * v2 = sub_02050A60(param0);

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203D444));
    v0->unk_00 = param1;
    v1 = sub_0203D344(param1, v2, 0, 2);
    v1->unk_32_0 = 2;
    v1->unk_32_4 = 2;
    v1->unk_33 = 30;
    v1->unk_14 = NULL;
    v0->unk_04 = v1;

    sub_02050944(param0, sub_0203D444, v0);

    return v1;
}

void * sub_0203D578 (int param0, FieldSystem * param1, int param2, int param3, int param4, int param5)
{
    PartyManagementData * v0 = sub_0203D344(11, param1, 0, 13);

    v0->unk_22 = param5;
    v0->unk_29 = 2;
    v0->unk_2A = param2;

    if (param4 == 0) {
        v0->unk_2B = param3;
    } else {
        v0->unk_2B = 0;
    }

    sub_0203CD84(param1, &Unk_020F1E88, v0);

    return v0;
}

void * sub_0203D5C8 (int param0, FieldSystem * param1, int param2)
{
    PokemonSummary * v0 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

    v0->monData = Party_GetFromSavedata(param1->unk_0C);
    v0->options = sub_02025E44(param1->unk_0C);
    v0->dataType = 1;
    v0->pos = param2;
    v0->max = (u8)Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = 0;
    v0->ribbons = sub_0202D79C(param1->unk_0C);
    v0->dexMode = sub_0207A274(param1->unk_0C);
    v0->contest = PokemonSummary_ShowContestData(param1->unk_0C);
    v0->chatotCry = NULL;

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA02C);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(param1->unk_0C));
    sub_0203CD84(param1, &Unk_020F410C, v0);

    return v0;
}

void * sub_0203D644 (FieldSystem * param0, int param1)
{
    PartyManagementData * v0 = sub_0203D344(11, param0, 0, 21);

    v0->unk_22 = param1;
    sub_0203CD84(param0, &Unk_020F1E88, v0);

    return v0;
}

PokemonSummary * sub_0203D670 (FieldSystem * param0, int param1, int param2)
{
    PokemonSummary * v0;
    SaveData * v1;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    v1 = param0->unk_0C;
    v0 = Heap_AllocFromHeapAtEnd(param1, sizeof(PokemonSummary));

    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = sub_02025E44(v1);
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

void * sub_0203D6E4 (int param0, FieldSystem * param1, u8 param2)
{
    PokemonSummary * v0 = Heap_AllocFromHeap(param0, sizeof(PokemonSummary));

    memset(v0, 0, sizeof(PokemonSummary));

    v0->monData = Party_GetFromSavedata(param1->unk_0C);
    v0->options = sub_02025E44(param1->unk_0C);
    v0->dataType = 1;
    v0->pos = param2;
    v0->max = 1;
    v0->move = 0;
    v0->mode = 2;
    v0->dexMode = sub_0207A274(param1->unk_0C);
    v0->contest = PokemonSummary_ShowContestData(param1->unk_0C);

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA160);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(param1->unk_0C));
    sub_0203D334(param1, v0);

    return v0;
}

int sub_0203D750 (void * param0)
{
    PokemonSummary * v0 = param0;
    return v0->selectedSlot;
}

void sub_0203D754 (FieldSystem * param0, UnkStruct_02042434 * param1)
{
    FS_EXTERN_OVERLAY(overlay19);

    static const UnkStruct_0208BE5C v0 = {
        ov19_021D0D80,
        ov19_021D0DEC,
        ov19_021D0E58,
        FS_OVERLAY_ID(overlay19)
    };

    sub_0203CD84(param0, &v0, param1);
}

static BOOL sub_0203D764 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);
    UnkStruct_0203D764 * v1 = sub_02050A64(param0);
    FieldSystem * v2 = sub_02050A60(param0);

    switch (*v0) {
    case 0:
        sub_0203D874(v2, v1->unk_0C);
        (*v0)++;
        break;
    case 1:
        if (!sub_020509B4(v2)) {
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

void sub_0203D80C (UnkStruct_020508D4 * param0, u16 * param1, u16 * param2, u16 * param3)
{
    UnkStruct_0203D764 * v0;
    FieldSystem * v1 = sub_02050A60(param0);

    v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203D764));
    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;

    if (param3 == NULL) {
        v0->unk_0C = sub_0209747C(0, 0, v1->unk_0C, 32);
        sub_020974F4(v0->unk_0C, *param2);
    } else {
        v0->unk_0C = sub_0209747C(1, 0, v1->unk_0C, 32);
        sub_020974F8(v0->unk_0C, *param2, *param3);
    }

    sub_02050944(param0, sub_0203D764, v0);
}

void sub_0203D874 (FieldSystem * param0, UnkStruct_0209747C * param1)
{
    FS_EXTERN_OVERLAY(overlay20);

    static const UnkStruct_0208BE5C v0 = {
        ov20_021D0D80,
        ov20_021D0DF8,
        ov20_021D0EA8,
        FS_OVERLAY_ID(overlay20)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203D884 (FieldSystem * param0, UnkStruct_0203D8AC * param1)
{
    FS_EXTERN_OVERLAY(overlay80);

    const UnkStruct_0208BE5C v0 = {
        ov80_021D0D80,
        ov80_021D0DD8,
        ov80_021D0E50,
        FS_OVERLAY_ID(overlay80)
    };

    sub_0203CD84(param0, &v0, param1);
}

void * sub_0203D8AC (FieldSystem * param0)
{
    UnkStruct_0203D8AC * v0;
    TrainerInfo * v1;
    int v2 = 0, v3 = 0;
    sub_0203A76C(sub_0203A790(param0->unk_0C));

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(param0, v0, 0);
    sub_0203D884(param0, v0);

    return v0;
}

static void sub_0203D8DC (FieldSystem * param0, Options * param1)
{
    FS_EXTERN_OVERLAY(overlay74);

    static const UnkStruct_0208BE5C v0 = {
        ov74_021D0D80,
        ov74_021D0F60,
        ov74_021D0E58,
        FS_OVERLAY_ID(overlay74)
    };

    sub_0203CD84(param0, &v0, param1);
}

void * sub_0203D8EC (FieldSystem * param0)
{
    UnkStruct_0203D8EC * v0;
    Options * v1;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203D8EC));
    v1 = sub_02025E44(sub_0203D174(param0));

    sub_0203D8DC(param0, v1);

    return v0;
}

extern const UnkStruct_0208BE5C Unk_020F64B0;

static void sub_0203D910 (FieldSystem * param0, UnkStruct_02097728 * param1)
{
    sub_0203CD84(param0, &Unk_020F64B0, param1);
}

UnkStruct_02097728 * sub_0203D920 (FieldSystem * param0, int param1, u8 param2, u8 param3, int param4)
{
    UnkStruct_02097728 * v0;

    v0 = sub_02097624(sub_0203D174(param0), param1, param2, param3, 11);
    sub_0203D910(param0, v0);

    return v0;
}

UnkStruct_02097728 * sub_0203D94C (FieldSystem * param0, int param1, u8 param2, int param3)
{
    UnkStruct_02097728 * v0;

    if (param1 == 3) {
        v0 = sub_020976F4(sub_0203D174(param0), param2, param3);
    } else {
        v0 = sub_0209767C(sub_0203D174(param0), param1, param2, param3);
    }

    sub_0203D910(param0, v0);

    return v0;
}

UnkStruct_02097728 * sub_0203D984 (FieldSystem * param0, Pokemon * param1, int param2)
{
    UnkStruct_02097728 * v0;

    v0 = sub_020976BC(sub_0203D174(param0), param1, param2);
    sub_0203D910(param0, v0);

    return v0;
}

static void sub_0203D9A8 (FieldSystem * param0, UnkStruct_0203D9B8 * param1)
{
    sub_0203CD84(param0, &Unk_020F6890, param1);
}

UnkStruct_0203D9B8 * sub_0203D9B8 (FieldSystem * param0, int param1)
{
    UnkStruct_0203D9B8 * v0;

    v0 = sub_020989DC(sub_0203D174(param0), param1);
    sub_0203D9A8(param0, v0);

    return v0;
}

void sub_0203D9D8 (FieldSystem * param0, UnkStruct_ov90_021D0D80 * param1)
{
    FS_EXTERN_OVERLAY(overlay90);

    const UnkStruct_0208BE5C v0 = {
        ov90_021D0D80,
        ov90_021D0E04,
        ov90_021D0DE8,
        FS_OVERLAY_ID(overlay90)
    };

    sub_0203CD84(param0, &v0, param1);
}

static UnkStruct_0203DA00 * sub_0203DA00 (int param0, SaveData * param1, int param2, BOOL * param3, BOOL param4)
{
    UnkStruct_0203DA00 * v0;
    Pokemon * v1;
    int v2;
    UnkStruct_0202A750 * v3;
    UnkStruct_02029C68 * v4;
    UnkStruct_02029D04 * v5;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0203DA00));
    memset(v0, 0, sizeof(UnkStruct_0203DA00));
    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param1), param2);

    v0->unk_00 = v1;

    v3 = sub_0202A750(param1);
    v4 = sub_02029CA8(v3, 0);
    v5 = sub_02029D04(v3);

    v0->unk_04 = v4;
    v0->unk_08 = v5;
    v0->unk_0C = sub_02025E44(param1);
    v0->unk_10 = sub_0202CD88(param1);
    v0->unk_14 = SaveData_GetTrainerInfo(param1);
    v0->unk_18 = param3;
    v0->unk_1C = param4;

    return v0;
}

static BOOL sub_0203DA64 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);
    UnkStruct_0203DA64 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0203DB10(v0, v1->unk_0C);
        v1->unk_00++;
        break;
    case 1:
        if (sub_020509B4(v0) == 0) {
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

void sub_0203DAC0 (UnkStruct_020508D4 * param0, u16 * param1, SaveData * param2, u16 param3, u16 param4)
{
    UnkStruct_0203DA64 * v0;

    v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DA64));
    memset(v0, 0, sizeof(UnkStruct_0203DA64));

    v0->unk_0C = sub_0203DA00(32, param2, param3, &v0->unk_08, param4);
    v0->unk_04 = param1;

    sub_02050944(param0, sub_0203DA64, v0);
}

BOOL sub_0203DB10 (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay22);

    static UnkStruct_0208BE5C v0 = {
        ov22_02255D44,
        ov22_02255E50,
        ov22_02256098,
        FS_OVERLAY_ID(overlay22)
    };

    sub_0203CD84(param0, &v0, param1);

    return 1;
}

BOOL sub_0203DB24 (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay22);

    static UnkStruct_0208BE5C v0 = {
        ov22_0225B660,
        ov22_0225B738,
        ov22_0225B7FC,
        FS_OVERLAY_ID(overlay22)
    };

    sub_0203CD84(param0, &v0, param1);

    return 1;
}


static UnkStruct_0208BE5C Unk_02100AA4 = {
    ov88_0223B140,
    ov88_0223B57C,
    ov88_0223C03C,
    FS_OVERLAY_ID(overlay88)
};


static const UnkStruct_0208BE5C Unk_020EA268 = {
    ov95_02246C20,
    ov95_02246E7C,
    ov95_02246E1C,
    FS_OVERLAY_ID(overlay95)
};

static void sub_0203DB38 (UnkStruct_ov88_0223C370 * param0, FieldSystem * param1)
{
    param0->unk_04 = SaveData_GetTrainerInfo(param1->unk_0C);
    param0->unk_08 = Party_GetFromSavedata(param1->unk_0C);
    param0->unk_0C = SaveData_SaveTable(param1->unk_0C, 9);
    param0->unk_14 = sub_0202C878(param1->unk_0C);
    param0->unk_18 = sub_02025E44(param1->unk_0C);
    param0->unk_24 = sub_02027560(param1->unk_0C);
    param0->unk_30 = sub_0207A274(param1->unk_0C);
    param0->unk_10 = param1->unk_0C;
    param0->unk_1C = param1->unk_9C;
    param0->unk_20 = sub_0202CD88(param1->unk_0C);
    param0->unk_38 = Heap_AllocFromHeap(32, TrainerInfo_Size());
    param0->unk_3C = Heap_AllocFromHeap(32, Pokemon_GetStructSize());
    param0->unk_40 = Heap_AllocFromHeap(32, Pokemon_GetStructSize());
    param0->unk_00 = param1;
    param0->unk_34 = 0;
}

static void sub_0203DBC0 (UnkStruct_ov88_0223C370 * param0)
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

BOOL sub_0203DBF0 (UnkStruct_020508D4 * param0)
{
    int v0;
    FieldSystem * v1 = sub_02050A60(param0);
    UnkStruct_0203DBF0 * v2 = sub_02050A64(param0);

    switch (v2->unk_00) {
    case 0:
        if (!sub_020389B8()) {
            sub_02055820(param0);
        }

        v2->unk_00++;
        break;
    case 1:
        sub_0203DB38(&(v2->unk_04), v1);
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
        v2->unk_48.unk_14 = sub_02025E44(v1->unk_0C);
        v2->unk_48.unk_10 = 1;

        switch (sub_02055BA8(v1)) {
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
    case 5:
    {
        int v3 = Pokemon_GetValue(v2->unk_04.unk_40, MON_DATA_HELD_ITEM, NULL);
        int v4;
        int v5;

        if ((v4 = sub_02076B94(NULL, v2->unk_04.unk_40, 1, v3, &v5)) != 0) {
            Heap_Create(3, 26, 0x30000);
            v2->unk_60 = sub_0207AE68(NULL, v2->unk_04.unk_40, v4, sub_02025E44(v1->unk_0C), PokemonSummary_ShowContestData(v1->unk_0C), sub_02027560(v1->unk_0C), sub_0207D990(v1->unk_0C), sub_0202CD88(v1->unk_0C), SaveData_PoketchData(v1->unk_0C), v5, 0x4, 26);
            v2->unk_00 = 6;
        } else {
            v2->unk_00 = 7;
        }
    }
    break;
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
            UnkStruct_0202CD88 * v6 = sub_0202CD88(v1->unk_0C);
            sub_0202CFEC(v6, 16);

            if (sub_020389B8()) {
                sub_0202CF28(v6, (((70 + 1)) + 42));
            }
        }
        break;
    }

    return 0;
}

void sub_0203DDDC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203DBF0 * v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DBF0));

    v0->unk_00 = 0;
    sub_02050944(param0, sub_0203DBF0, v0);
}


const UnkStruct_0208BE5C Unk_020EA258 = {
    ov58_021D0D80,
    ov58_021D0F08,
    ov58_021D1018,
    FS_OVERLAY_ID(overlay58)
};


const UnkStruct_0208BE5C Unk_020EA248 = {
    ov59_021D0D80,
    ov59_021D0F00,
    ov59_021D0FF4,
    FS_OVERLAY_ID(overlay59)
};

void sub_0203DDFC (FieldSystem * param0)
{
    UnkStruct_0203DDFC * v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203DDFC));

    v0->unk_00 = param0->unk_80;
    v0->unk_04 = param0->unk_9C;
    v0->unk_08 = sub_02025E44(param0->unk_0C);

    sub_0203CD84(param0, &Unk_020EA258, v0);
}

void * sub_0203DE34 (FieldSystem * param0)
{
    UnkStruct_0203DE34 * v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203DE34));

    v0->unk_00 = param0->unk_0C;
    v0->unk_04 = param0->unk_80;
    v0->unk_08 = sub_02025E44(param0->unk_0C);
    v0->unk_0C = sub_0202CD88(param0->unk_0C);
    v0->unk_10 = param0->unk_9C;

    sub_0203CD84(param0, &Unk_020EA248, v0);

    return v0;
}


const UnkStruct_0208BE5C Unk_020EA238 = {
    ov64_0222DCE0,
    ov64_0222DDAC,
    ov64_0222DEA4,
    FS_OVERLAY_ID(overlay64)
};

void sub_0203DE78 (FieldSystem * param0, SaveData * param1)
{
    sub_0203CD84(param0, &Unk_020EA238, param1);
}

void sub_0203DE88 (FieldSystem * param0, SaveData * param1)
{
    sub_0203CD84(param0, &Unk_020F2FCC, param0);
}

static BOOL sub_0203DE98 (UnkStruct_020508D4 * param0)
{
    int v0;
    FieldSystem * v1 = sub_02050A60(param0);
    UnkStruct_0203DE98 * v2 = sub_02050A64(param0);

    switch (v2->unk_00) {
    case 0:
        sub_02055820(param0);
        v2->unk_00++;
        break;
    case 1:
        sub_02050A38(param0, &Unk_020F2DAC, v2->unk_0C);
        v2->unk_00++;
        break;
    case 2:
        sub_02055868(param0);
        v2->unk_00++;
        break;
    case 3:
        if (v2->unk_0C->unk_00 == 1) {
            if (Strbuf_Compare(v2->unk_0C->unk_18, v2->unk_10) == 0) {
                v2->unk_0C->unk_14 = 1;
            }
        } else if (v2->unk_0C->unk_00 == 5) {
            const u16 * v3 = Strbuf_GetData(v2->unk_0C->unk_18);
            UnkStruct_0202B4A0 * v4 = sub_0202B4A0(v1->unk_0C);

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

static void sub_0203DF68 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);
    UnkStruct_0203DE98 * v1 = sub_02050A64(param0);

    switch (v1->unk_0C->unk_00) {
    case 0:
    {
        TrainerInfo * v2 = SaveData_GetTrainerInfo(v0->unk_0C);
        TrainerInfo_SetName(v2, v1->unk_0C->unk_1C);
    }
    break;
    case 1:
    {
        Pokemon * v3;
        int v4;

        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v1->unk_04);
        Pokemon_SetValue(v3, 118, (u8 *)&v1->unk_0C->unk_1C);
    }
    break;
    case 5:
    {
        UnkStruct_0202B4A0 * v5 = sub_0202B4A0(v0->unk_0C);
        sub_0202B444(v5, 0, 0, v1->unk_0C->unk_18);
    }
    break;
    case 6:
    {
        UnkStruct_0202783C * v6 = sub_0202783C(v0->unk_0C);
        sub_020278A0(v6, v1->unk_0C->unk_18);
    }
    break;
    }

    return;
}

void sub_0203DFE8 (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, const u16 * param5, u16 * param6)
{
    Pokemon * v0;
    FieldSystem * v1 = sub_02050A60(param0);
    UnkStruct_0203DE98 * v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203DE98));

    v2->unk_00 = 0;
    v2->unk_04 = param4;
    v2->unk_08 = param6;
    v2->unk_0C = sub_0208712C(11, param1, param2, param3, sub_02025E44(v1->unk_0C));
    v2->unk_10 = Strbuf_Init(12, 11);

    switch (param1) {
    case 1:
        v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->unk_0C), v2->unk_04);
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

    sub_02050944(param0, sub_0203DE98, v2);
}

void sub_0203E09C (FieldSystem * param0, TrainerCard * param1)
{
    FS_EXTERN_OVERLAY(overlay71);

    static const UnkStruct_0208BE5C v0 = {
        ov71_0223B140,
        ov71_0223B388,
        ov71_0223B5B8,
        FS_OVERLAY_ID(overlay71)
    };

    sub_0203CD84(param0, &v0, param1);
}

BOOL sub_0203E0AC (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay21);

    static const UnkStruct_0208BE5C v0 = {
        ov21_021D0D80,
        ov21_021D0E3C,
        ov21_021D0EC8,
        FS_OVERLAY_ID(overlay21)
    };

    sub_0203CD84(param0, &v0, param1);
    return 1;
}

void sub_0203E0C0 (FieldSystem * param0, UnkStruct_020425E0 * param1)
{
    FS_EXTERN_OVERLAY(overlay78);

    static const UnkStruct_0208BE5C v0 = {
        ov78_021D0D80,
        ov78_021D0EF4,
        ov78_021D0FA8,
        FS_OVERLAY_ID(overlay78)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203E0D0 (FieldSystem * param0)
{
    UnkStruct_0202C834 * v0 = sub_0202C834(param0->unk_0C);

    FS_EXTERN_OVERLAY(overlay72);

    const UnkStruct_0208BE5C v1 = {
        ov72_0223D7A0,
        ov72_0223D920,
        ov72_0223D984,
        FS_OVERLAY_ID(overlay72)
    };

    sub_0203CD84(param0, &v1, param0->unk_0C);
}

void sub_0203E0FC (FieldSystem * param0, int param1)
{
    UnkStruct_0203E0FC * v0;

    FS_EXTERN_OVERLAY(overlay94);

    const UnkStruct_0208BE5C v1 = {
        ov94_0223BCB0,
        ov94_0223BE2C,
        ov94_0223BF54,
        FS_OVERLAY_ID(overlay94)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203E0FC));

    v0->unk_00 = sub_0202DA40(param0->unk_0C);
    v0->unk_04 = sub_02025CCC(param0->unk_0C);
    v0->unk_08 = SaveData_SaveTable(param0->unk_0C, 2);
    v0->unk_0C = SaveData_PCBoxes(param0->unk_0C);
    v0->unk_10 = sub_02027560(param0->unk_0C);
    v0->unk_14 = sub_0202B370(param0->unk_0C);
    v0->unk_18 = sub_0202C878(param0->unk_0C);
    v0->unk_1C = SaveData_GetTrainerInfo(param0->unk_0C);
    v0->unk_24 = sub_02025E44(param0->unk_0C);
    v0->unk_28 = sub_0202CD88(param0->unk_0C);
    v0->unk_2C = param0->unk_9C;
    v0->unk_3C = PokemonSummary_ShowContestData(param0->unk_0C);
    v0->unk_20 = param0->unk_0C;
    v0->unk_34 = sub_0207A274(param0->unk_0C);
    v0->unk_38 = sub_02039058(v0->unk_14);
    v0->unk_30 = sub_0207D990(param0->unk_0C);
    v0->unk_40 = param1;

    sub_0203CD84(param0, &v1, v0);
}

void * sub_0203E1AC (FieldSystem * param0, int param1, int param2)
{
    UnkStruct_0206BC70 * v0;

    FS_EXTERN_OVERLAY(overlay96);

    const UnkStruct_0208BE5C v1 = {
        ov96_0223B6A0,
        ov96_0223B7F8,
        ov96_0223B8CC,
        FS_OVERLAY_ID(overlay96)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206BC70));

    v0->unk_00 = sub_0202D750(param0->unk_0C);
    v0->unk_04 = sub_0202D764(param0->unk_0C);
    v0->unk_08 = sub_02025CCC(param0->unk_0C);
    v0->unk_10 = sub_02025E44(param0->unk_0C);
    v0->unk_14 = sub_0202AD28(sub_0202B370(param0->unk_0C));
    v0->unk_0C = param0->unk_0C;
    v0->unk_1C = sub_02039058(sub_0202B370(param0->unk_0C));
    v0->unk_18 = param1;
    v0->unk_24 = param2;
    v0->unk_20 = 1;

    sub_0203CD84(param0, &v1, v0);

    return (void *)v0;
}


static const UnkStruct_0208BE5C Unk_020EA328 = {
    ov92_021D0D80,
    ov92_021D0EB8,
    ov92_021D1478,
    FS_OVERLAY_ID(overlay92)
};

void sub_0203E224 (FieldSystem * param0)
{
    sub_0203CD84(param0, &Unk_020EA328, param0->unk_0C);
}

void sub_0203E234 (FieldSystem * param0, UnkStruct_0203E234 * param1)
{
    FS_EXTERN_OVERLAY(overlay86);

    static const UnkStruct_0208BE5C v0 = {
        ov86_0223B140,
        ov86_0223B394,
        ov86_0223B2E4,
        FS_OVERLAY_ID(overlay86)
    };

    sub_0203CD84(param0, &v0, param1);
}


void * sub_0203E244 (FieldSystem * param0)
{
    static const UnkStruct_0208BE5C v0 = {
        ov87_021D0D80, ov87_021D0E2C, ov87_021D0DFC, FS_OVERLAY_ID(overlay87),
    };
    HallOfFame * v1;
    int v2;

    v1 = SaveData_HallOfFame(param0->unk_0C, 11, &v2);

    if (v2 == 2) {
        Heap_FreeToHeap(v1);
        return NULL;
    } else {
        sub_0203CD84(param0, &v0, v1);
        return v1;
    }
}

void sub_0203E274 (FieldSystem * param0, UnkStruct_0203E274 * param1)
{
    FS_EXTERN_OVERLAY(overlay99);

    static const UnkStruct_0208BE5C v0 = {
        ov99_021D0D80,
        ov99_021D1028,
        ov99_021D11A8,
        FS_OVERLAY_ID(overlay99)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203E284 (FieldSystem * param0, UnkStruct_020997B8 * param1)
{
    FS_EXTERN_OVERLAY(overlay91);

    const UnkStruct_0208BE5C v0 = {
        ov91_021D0D80,
        ov91_021D0E08,
        ov91_021D0EBC,
        FS_OVERLAY_ID(overlay91)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203E2AC (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay93);

    const UnkStruct_0208BE5C v0 = {
        ov93_021D0D80,
        ov93_021D0E70,
        ov93_021D0F58,
        FS_OVERLAY_ID(overlay93)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203E2D4 (FieldSystem * param0, void * param1)
{
    FS_EXTERN_OVERLAY(overlay93);

    const UnkStruct_0208BE5C v0 = {
        ov93_021D111C, ov93_021D120C, ov93_021D12F0, FS_OVERLAY_ID(overlay93)
    };

    sub_0203CD84(param0, &v0, param1);
}

void sub_0203E2FC (FieldSystem * param0)
{
    UnkStruct_0203E2FC v0;
    Party * v1 = Party_GetFromSavedata(param0->unk_0C);
    Pokemon * v2 = ov5_021E7278(v1);

    GF_ASSERT(v2 != NULL);
    sub_0206D578(param0, v2);

    v0.unk_00 = v2;
    v0.unk_04 = sub_02025E44(param0->unk_0C);
    v0.unk_08 = SaveData_GetTrainerInfo(param0->unk_0C);
    v0.unk_0C = sub_02055428(param0, param0->unk_1C->unk_00);

    sub_020985AC(param0->unk_10, &v0);
}

BOOL sub_0203E348 (FieldSystem * param0, UnkStruct_0203E348 * param1)
{
    FS_EXTERN_OVERLAY(overlay101);

    static const UnkStruct_0208BE5C v0 = {
        ov101_021D0D80,
        ov101_021D0E40,
        ov101_021D0EE4,
        FS_OVERLAY_ID(overlay101)
    };

    sub_0203CD84(param0, &v0, param1);
    return 1;
}

static BOOL sub_0203E35C (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);
    UnkStruct_020507E4 * v1 = SaveData_Events(v0->unk_0C);
    UnkStruct_0203E35C * v2 = sub_02050A64(param0);
    int * v3 = sub_02050A68(param0);
    int v4;

    switch (*v3) {
    case 0:
        sub_0203E348(v0, &v2->unk_0C);
        (*v3)++;
        break;
    case 1:
        if (sub_020509B4(v0) == 0) {
            u16 * v5 = sub_02025E50(v0->unk_0C);
            s64 v6 = GetTimestamp();

            sub_0206DD38(v0, Coins_GetValue(v5), v2->unk_00, TimeElapsed(v2->unk_04, v6) / 60);
            Coins_SetValue(sub_02025E50(v0->unk_0C), v2->unk_00);

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

void sub_0203E414 (UnkStruct_020508D4 * param0, int param1)
{
    FieldSystem * v0 = sub_02050A60(param0);
    Options * v1 = sub_02025E44(v0->unk_0C);
    UnkStruct_0203E35C * v2 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203E35C));

    v2->unk_0C.unk_00 = &v2->unk_00;
    v2->unk_00 = Coins_GetValue(sub_02025E50(v0->unk_0C));
    v2->unk_04 = GetTimestamp();
    v2->unk_0C.unk_08 = sub_0202CD88(v0->unk_0C);
    v2->unk_0C.unk_0C = 0;
    v2->unk_0C.unk_10 = sub_02027B50(v1);
    v2->unk_0C.unk_04 = sub_0203E484(v0->unk_0C, param1);

    sub_0202CFEC(sub_0202CD88(v0->unk_0C), 5);
    sub_02050944(param0, sub_0203E35C, v2);
}

static u8 sub_0203E484 (SaveData * param0, u8 param1)
{
    static const u8 v0[12] = {
        0, 5, 1, 1, 4, 4, 2, 2, 2, 3, 3, 3,
    };
    UnkStruct_0202B4A0 * v1 = sub_0202B4A0(param0);
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

static BOOL sub_0203E4F8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_ov7_0224BEFC * v0 = sub_02050A64(param0);

    if (ov7_0224BF2C(v0) == 1) {
        ov7_0224BEFC(v0);
        return 1;
    }

    return 0;
}

void sub_0203E518 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);
    UnkStruct_ov7_0224BEFC * v1 = ov7_0224BE9C(4, v0->unk_0C, v0->unk_08);

    sub_02050944(param0, sub_0203E4F8, v1);
}

void * sub_0203E53C (FieldSystem * param0, int param1, int param2)
{
    FS_EXTERN_OVERLAY(overlay102);

    static const UnkStruct_0208BE5C v0 = {
        ov102_021D0D80, ov102_021D0E2C, ov102_021D0F50, FS_OVERLAY_ID(overlay102),
    };
    UnkStruct_0203E53C * v1 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203E53C));

    {
        v1->unk_04 = param2;
        v1->unk_00 = param0->unk_0C;
    }

    sub_0203CD84(param0, &v0, v1);

    return v1;
}

void * sub_0203E564 (FieldSystem * param0, u8 param1, u8 param2, u16 param3, int param4)
{
    UnkStruct_0203E564 * v0;

    FS_EXTERN_OVERLAY(overlay110);

    static UnkStruct_0208BE5C v1 = {
        ov110_021D0D80,
        ov110_021D0E9C,
        ov110_021D0EF0,
        FS_OVERLAY_ID(overlay110)
    };

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_0203E564));

    v0->unk_04 = param1;
    v0->unk_05 = param2;
    v0->unk_06 = param3;
    v0->unk_00 = param0->unk_0C;

    sub_0203CD84(param0, &v1, v0);

    return v0;
}

PartyManagementData * sub_0203E598 (FieldSystem * param0, int param1, int param2)
{
    PartyManagementData * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(PartyManagementData));
    memset(v0, 0, sizeof(PartyManagementData));

    v0->unk_00 = Party_GetFromSavedata(param0->unk_0C);
    v0->unk_04 = sub_0207D990(param0->unk_0C);
    v0->unk_08 = sub_02028430(param0->unk_0C);
    v0->unk_0C = sub_02025E44(param0->unk_0C);
    v0->unk_10 = SaveData_TVBroadcast(param0->unk_0C);
    v0->unk_18 = NULL;
    v0->unk_21 = 0;
    v0->unk_20 = 5;
    v0->unk_24 = param2;
    v0->unk_22 = 0;
    v0->unk_1C = param0;

    sub_0203CD84(param0, &Unk_020F1E88, v0);

    return v0;
}

void * sub_0203E608 (FieldSystem * param0, int param1)
{
    UnkStruct_0203E608 * v0;

    FS_EXTERN_OVERLAY(overlay111);

    static UnkStruct_0208BE5C v1 = {
        ov111_021D0D80,
        ov111_021D0E34,
        ov111_021D0F40,
        FS_OVERLAY_ID(overlay111)
    };

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203E608));
    memset(v0, 0, sizeof(UnkStruct_0203E608));

    v0->unk_00 = param0->unk_0C;
    sub_0203CD84(param0, &v1, v0);

    return v0;
}

static const u8 Unk_020EA15C[] = {
    0x3,
    0x5,
    0x8
};

void * sub_0203E63C (int param0, FieldSystem * param1, u16 param2, u16 param3)
{
    PokemonSummary * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(PokemonSummary));

    v0->monData = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param1->unk_0C), param2);
    v0->options = sub_02025E44(param1->unk_0C);
    v0->dataType = 0;
    v0->pos = 0;
    v0->max = 1;
    v0->move = param3;
    v0->mode = 2;
    v0->ribbons = sub_0202D79C(param1->unk_0C);
    v0->dexMode = sub_0207A274(param1->unk_0C);
    v0->contest = EventFlag_VisitedContestHall(SaveData_Events(param1->unk_0C));
    v0->chatotCry = NULL;

    PokemonSummary_FlagVisiblePages(v0, Unk_020EA15C);
    PokemonSummary_SetPlayerProfile(v0, SaveData_GetTrainerInfo(param1->unk_0C));
    sub_0203CD84(param1, &Unk_020F410C, v0);

    return v0;
}

void sub_0203E6C0 (FieldSystem * param0, int param1, int param2)
{
    UnkStruct_0203E6C0 * v0;

    FS_EXTERN_OVERLAY(overlay61);

    const UnkStruct_0208BE5C v1 = {
        sub_02017498,
        sub_02017524,
        sub_02017658,
        FS_OVERLAY_ID(overlay61)
    };

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0203E6C0));
    MI_CpuClear8(v0, sizeof(UnkStruct_0203E6C0));

    v0->unk_00 = param0;
    v0->unk_04 = param0->unk_0C;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    sub_0203CD84(param0, &v1, v0);
}


static const UnkStruct_0208BE5C Unk_020EA348 = {
    ov120_021D0D80,
    ov120_021D0DB0,
    ov120_021D0EFC,
    FS_OVERLAY_ID(overlay120)
};

void sub_0203E704 (FieldSystem * param0)
{
    sub_0203CD84(param0, &Unk_020EA348, param0->unk_0C);
}


static const UnkStruct_0208BE5C Unk_020EA368 = {
    ov121_021D0D80,
    ov121_021D0E7C,
    ov121_021D0F14,
    FS_OVERLAY_ID(overlay121)
};

void sub_0203E714 (FieldSystem * param0)
{
    sub_0203CD84(param0, &Unk_020EA368, param0->unk_0C);
}
