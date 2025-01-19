#include "unk_02028124.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_02028430.h"
#include "struct_defs/union_02028328.h"

#include "charcode_util.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02014A84.h"

static int sub_020284E8(UnkStruct_0202818C *param0, int param1);
static int sub_02028510(UnkStruct_0202818C *param0, int param1);
static UnkStruct_0202818C *sub_02028538(UnkStruct_02028430 *param0, int param1, int param2);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
} Unk_020E5B0C[] = {
    { 0x1EE, 0x21C, 0x1E7, 0x1 },
    { 0x1F3, 0x21D, 0x1EC, 0x1 },
    { 0x1E6, 0x21E, 0x1DF, 0x1 },
    { 0x1E6, 0x21F, 0x1DF, 0x2 },
    { 0x1E6, 0x220, 0x1DF, 0x3 },
    { 0x1E6, 0x221, 0x1DF, 0x4 },
    { 0x1E6, 0x222, 0x1DF, 0x5 }
};

void sub_02028124(UnkStruct_0202818C *param0)
{
    int v0;

    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_05 = gGameLanguage;
    param0->unk_06 = gGameVersion;
    param0->unk_07 = 0xFFFF;

    CharCode_FillWithEOS(param0->unk_08, 8);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_18[v0].val2 = 0xFFFF;
    }

    param0->unk_1E = 0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_02014A84(&param0->unk_20[v0]);
    }
}

BOOL sub_0202817C(UnkStruct_0202818C *param0)
{
    if ((param0->unk_07 >= 0) && (param0->unk_07 <= 11)) {
        return 1;
    }

    return 0;
}

UnkStruct_0202818C *sub_0202818C(int param0)
{
    UnkStruct_0202818C *v0;

    v0 = Heap_AllocFromHeapAtEnd(param0, sizeof(UnkStruct_0202818C));
    sub_02028124(v0);

    return v0;
}

void sub_020281A0(UnkStruct_0202818C *param0, UnkStruct_0202818C *param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_0202818C));
}

void sub_020281AC(UnkStruct_0202818C *param0, u8 param1, u8 param2, SaveData *param3)
{
    u8 v0, v1, v2, v3;
    u16 v4;
    u32 v5, v6, v7;
    TrainerInfo *v8;
    Party *v9;
    Pokemon *v10;

    sub_02028124(param0);

    param0->unk_07 = param1;
    v9 = Party_GetFromSavedata(param3);
    v8 = SaveData_GetTrainerInfo(param3);

    CharCode_Copy(param0->unk_08, TrainerInfo_Name(v8));

    param0->unk_04 = (u8)TrainerInfo_Gender(v8);
    param0->unk_00 = TrainerInfo_ID(v8);
    param0->unk_1E = 0;

    for (v0 = param2, v1 = 0; v0 < Party_GetCurrentCount(v9); v0++) {
        v10 = Party_GetPokemonBySlotIndex(v9, v0);
        v4 = Pokemon_GetValue(v10, MON_DATA_SPECIES, NULL);
        v6 = Pokemon_GetValue(v10, MON_DATA_IS_EGG, NULL);
        v7 = Pokemon_GetValue(v10, MON_DATA_FORM, NULL);
        v5 = Pokemon_IconSpriteIndex(v10);
        v2 = PokeIconPaletteIndex(v4, v7, v6);

        param0->unk_18[v1].val1_0 = (u16)v5;
        param0->unk_18[v1].val1_12 = v2;

        for (v3 = 0; v3 < NELEMS(Unk_020E5B0C); v3++) {
            if ((Unk_020E5B0C[v3].unk_02 == param0->unk_18[v1].val1_0) && (Unk_020E5B0C[v3].unk_06 == v7)) {
                param0->unk_18[v1].val1_0 = Unk_020E5B0C[v3].unk_00;
                param0->unk_18[v1].val1_12 = PokeIconPaletteIndex(v4, 0, v6);
                param0->unk_1E |= Unk_020E5B0C[v3].unk_06 << (v1 * 5);
                break;
            }
        }

        v1++;

        if (v1 >= 3) {
            break;
        }
    }
}

u32 sub_02028308(const UnkStruct_0202818C *param0)
{
    return param0->unk_00;
}

u16 *sub_0202830C(UnkStruct_0202818C *param0)
{
    return &(param0->unk_08[0]);
}

u8 sub_02028310(const UnkStruct_0202818C *param0)
{
    return param0->unk_04;
}

u8 sub_02028314(const UnkStruct_0202818C *param0)
{
    return param0->unk_07;
}

void sub_02028318(UnkStruct_0202818C *param0, const u8 param1)
{
    if (param1 >= 12) {
        return;
    }

    param0->unk_07 = param1;
}

u8 sub_02028320(const UnkStruct_0202818C *param0)
{
    return param0->unk_05;
}

u8 sub_02028324(const UnkStruct_0202818C *param0)
{
    return param0->unk_06;
}

u16 sub_02028328(const UnkStruct_0202818C *param0, u8 param1, u8 param2, u16 param3)
{
    UnkUnion_02028328 v0;
    int v1;

    if (param1 < 3) {
        v0 = param0->unk_18[param1];

        for (v1 = 0; v1 < NELEMS(Unk_020E5B0C); v1++) {
            if ((Unk_020E5B0C[v1].unk_00 == v0.val1_0) && (Unk_020E5B0C[v1].unk_06 == ((param3 >> (param1 * 5)) & 0x1f))) {
                v0.val1_0 = Unk_020E5B0C[v1].unk_02;
                v0.val1_12 = PokeIconPaletteIndex(
                    Unk_020E5B0C[v1].unk_04, Unk_020E5B0C[v1].unk_06, 0);
                break;
            }
        }

        if (v0.val1_0 > 546) {
            v0.val1_0 = 7;
            v0.val1_12 = 0;
        }

        switch (param2) {
        case 0:
            return v0.val1_0;
        case 1:
            return v0.val1_12;
        case 2:
        default:
            return v0.val2;
        }
    } else {
        return 0;
    }
}

u16 sub_02028408(const UnkStruct_0202818C *param0)
{
    return param0->unk_1E;
}

Sentence *sub_0202840C(UnkStruct_0202818C *param0, u8 param1)
{
    if (param1 < 3) {
        return &(param0->unk_20[param1]);
    } else {
        return &(param0->unk_20[0]);
    }
}

void sub_0202841C(UnkStruct_0202818C *param0, Sentence *param1, u8 param2)
{
    if (param2 >= 3) {
        return;
    }

    sub_02014CC0(&param0->unk_20[param2], param1);
}

UnkStruct_02028430 *sub_02028430(SaveData *param0)
{
    return SaveData_SaveTable(param0, 15);
}

int Mail_SaveSize(void)
{
    return sizeof(UnkStruct_0202818C) * 20;
}

void Mail_Init(UnkStruct_02028430 *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 20; v0++) {
        sub_02028124(&param0->unk_00[v0]);
    }
}

int sub_0202845C(UnkStruct_02028430 *param0, int param1)
{
    switch (param1) {
    case 0:
        return sub_020284E8(param0->unk_00, 20);
    default:
        return 0xFFFFFFFF;
    }

    return 0xFFFFFFFF;
}

void sub_02028470(UnkStruct_02028430 *param0, int param1, int param2)
{
    UnkStruct_0202818C *v0 = NULL;

    v0 = sub_02028538(param0, param1, param2);

    if (v0 != NULL) {
        sub_02028124(v0);
    }
}

void sub_02028480(UnkStruct_02028430 *param0, int param1, int param2, UnkStruct_0202818C *param3)
{
    UnkStruct_0202818C *v0 = NULL;

    v0 = sub_02028538(param0, param1, param2);

    if (v0 != NULL) {
        sub_020281A0(param3, v0);
    }
}

int sub_02028494(UnkStruct_02028430 *param0, int param1)
{
    switch (param1) {
    case 0:
        return sub_02028510(param0->unk_00, 20);
    default:
        return 0;
    }

    return 0;
}

UnkStruct_0202818C *sub_020284A8(UnkStruct_02028430 *param0, int param1, int param2, int param3)
{
    UnkStruct_0202818C *v0 = NULL;
    UnkStruct_0202818C *v1;

    v0 = sub_02028538(param0, param1, param2);
    v1 = sub_0202818C(param3);

    if (v0 != NULL) {
        sub_020281A0(v0, v1);
    }

    return v1;
}

void sub_020284CC(UnkStruct_02028430 *param0, int param1, int param2, UnkStruct_0202818C *param3)
{
    UnkStruct_0202818C *v0 = NULL;

    v0 = sub_02028538(param0, param1, param2);

    if (v0 == NULL) {
        sub_02028124(param3);
    } else {
        sub_020281A0(v0, param3);
    }
}

static int sub_020284E8(UnkStruct_0202818C *param0, int param1)
{
    int v0 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        if (!sub_0202817C(&param0[v0])) {
            return v0;
        }
    }

    return 0xFFFFFFFF;
}

static int sub_02028510(UnkStruct_0202818C *param0, int param1)
{
    int v0 = 0;
    int v1 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        if (sub_0202817C(&param0[v0])) {
            v1++;
        }
    }

    return v1;
}

static UnkStruct_0202818C *sub_02028538(UnkStruct_02028430 *param0, int param1, int param2)
{
    UnkStruct_0202818C *v0 = NULL;

    switch (param1) {
    case 0:
        if (param2 < 20) {
            v0 = &(param0->unk_00[param2]);
        }

        break;
    default:
        break;
    }

    return v0;
}
