#include "unk_020797C8.h"

#include <nitro.h>
#include <string.h>

#include "message.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"

typedef struct PCBoxes {
    u32 unk_00;
    BoxPokemon unk_04[18][30];
    u16 unk_10E4[18][20];
    u8 unk_13B4[18];
    u8 unk_13C6;
} PCBoxes;

static void sub_020797DC(PCBoxes *param0);

void PCBoxes_Init(PCBoxes *param0)
{
    sub_020797DC(param0);
    SaveData_SetFullSaveRequired();
}

u32 PCBoxes_SaveSize(void)
{
    return sizeof(PCBoxes);
}

static void sub_020797DC(PCBoxes *param0)
{
    u32 v0, v1;
    MessageLoader *v2;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            BoxPokemon_Init(&(param0->unk_04[v0][v1]));
        }
    }

    for (v0 = 0, v1 = 0; v0 < 18; v0++) {
        param0->unk_13B4[v0] = v1++;

        if (v1 >= 16) {
            v1 = 0;
        }
    }

    param0->unk_13C6 = 0;
    v2 = MessageLoader_Init(1, 26, 18, HEAP_ID_SYSTEM);

    if (v2) {
        for (v0 = 0; v0 < 18; v0++) {
            MessageLoader_Get(v2, 6 + v0, param0->unk_10E4[v0]);
        }

        MessageLoader_Free(v2);
    }

    param0->unk_00 = 0;
}

BOOL sub_02079868(PCBoxes *param0, BoxPokemon *param1)
{
    u32 v0;

    v0 = param0->unk_00;

    do {
        sub_0207896C(param1);

        if (sub_020798A0(param0, v0, param1)) {
            SaveData_SetFullSaveRequired();
            return 1;
        }

        if (++v0 >= 18) {
            v0 = 0;
        }
    } while (v0 != param0->unk_00);

    return 0;
}

BOOL sub_020798A0(PCBoxes *param0, u32 param1, BoxPokemon *param2)
{
    u32 v0;

    sub_0207896C(param2);
    BoxPokemon_SetShayminForm(param2, 0);

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    for (v0 = 0; v0 < (5 * 6); v0++) {
        if (BoxPokemon_GetValue(&(param0->unk_04[param1][v0]), MON_DATA_SPECIES, NULL) == 0) {
            param0->unk_04[param1][v0] = *param2;
            SaveData_SetFullSaveRequired();
            return 1;
        }
    }

    return 0;
}

BOOL sub_02079914(PCBoxes *param0, u32 param1, u32 param2, BoxPokemon *param3)
{
    sub_0207896C(param3);
    BoxPokemon_SetShayminForm(param3, 0);

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param1 < 18) && (param2 < (5 * 6))) {
        param0->unk_04[param1][param2] = *param3;
        SaveData_SetFullSaveRequired();
        return 1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

void sub_02079968(PCBoxes *param0, u32 param1, u32 param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param2 < (5 * 6)) && (param1 < 18)) {
        BoxPokemon_Init(&(param0->unk_04[param1][param2]));
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_0207999C(const PCBoxes *param0)
{
    return param0->unk_00;
}

u32 PCBoxes_FirstEmptyBox(const PCBoxes *param0)
{
    int v0, v1;

    v0 = param0->unk_00;

    while (TRUE) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[v0][v1])), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                return v0;
            }
        }

        if (++v0 >= 18) {
            v0 = 0;
        }

        if (v0 == param0->unk_00) {
            break;
        }
    }

    return 18;
}

BOOL sub_020799F0(const PCBoxes *param0, int *param1, int *param2)
{
    int v0, v1;

    if (*param1 == 0xffffffff) {
        *param1 = param0->unk_00;
    }

    v0 = *param1;
    v1 = *param2;

    while (TRUE) {
        for (; v1 < (5 * 6); v1++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[v0][v1])), MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                *param1 = v0;
                *param2 = v1;
                return 1;
            }
        }

        if (++v0 >= 18) {
            v0 = 0;
        }

        if (v0 == (*param1)) {
            break;
        }

        v1 = 0;
    }

    return 18;
}

u32 sub_02079A50(const PCBoxes *param0)
{
    int v0, v1;
    u32 v2;

    v2 = 0;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[v0][v1])), MON_DATA_SPECIES_EXISTS, NULL) != 0) {
                v2++;
            }
        }
    }

    return v2;
}

void sub_02079A94(PCBoxes *param0, u32 param1)
{
    if (param1 < 18) {
        param0->unk_00 = param1;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_02079AA8(const PCBoxes *param0, u32 param1)
{
    if (param1 < 18) {
        return param0->unk_13B4[param1];
    } else {
        GF_ASSERT(0);
        return 0;
    }
}

void sub_02079AC4(PCBoxes *param0, u32 param1, u32 param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param1 < 18) && (param2 < (16 + 8))) {
        if (param2 >= 16) {
            param2 += 8;
        }

        param0->unk_13B4[param1] = param2;
        SaveData_SetFullSaveRequired();
    } else {
        GF_ASSERT(0);
    }
}

void sub_02079AF4(const PCBoxes *param0, u32 param1, Strbuf *param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        Strbuf_CopyChars(param2, param0->unk_10E4[param1]);
    } else {
        GF_ASSERT(0);
    }
}

void sub_02079B24(PCBoxes *param0, u32 param1, const Strbuf *param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        Strbuf_ToChars(param2, param0->unk_10E4[param1], 20);
        SaveData_SetFullSaveRequired();
    }
}

u32 sub_02079B54(const PCBoxes *param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        int v0;
        u32 v1 = 0;

        for (v0 = 0; v0 < (5 * 6); v0++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[param1][v0])), MON_DATA_SPECIES_EXISTS, NULL)) {
                v1++;
            }
        }

        return v1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 sub_02079B98(const PCBoxes *param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        int v0;
        u32 v1 = 0;

        for (v0 = 0; v0 < (5 * 6); v0++) {
            if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[param1][v0])), MON_DATA_SPECIES_EXISTS, NULL)) {
                if (BoxPokemon_GetValue((BoxPokemon *)(&(param0->unk_04[param1][v0])), MON_DATA_IS_EGG, NULL) == 0) {
                    v1++;
                }
            }
        }

        return v1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 sub_02079BEC(const PCBoxes *param0)
{
    u32 v0, v1;

    for (v1 = 0, v0 = 0; v1 < 18; v1++) {
        v0 += sub_02079B98(param0, v1);
    }

    return v0;
}

u32 sub_02079C08(const PCBoxes *param0, u32 param1, u32 param2, int param3, void *param4)
{
    GF_ASSERT((param1 < 18) || (param1 == 0xffffffff));
    GF_ASSERT(param2 < (5 * 6));

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    return BoxPokemon_GetValue((BoxPokemon *)(&param0->unk_04[param1][param2]), param3, param4);
}

void sub_02079C50(PCBoxes *param0, u32 param1, u32 param2, int param3, void *param4)
{
    GF_ASSERT((param1 < 18) || (param1 == 0xffffffff));
    GF_ASSERT(param2 < (5 * 6));

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    BoxPokemon_SetValue((BoxPokemon *)(&param0->unk_04[param1][param2]), param3, param4);
    SaveData_SetFullSaveRequired();
}

BoxPokemon *GetBoxedPokemonFrom(const PCBoxes *pcBoxes, u32 boxIndex, u32 pokemonBoxLocationIndex)
{
    GF_ASSERT((boxIndex < 18) || (boxIndex == 0xffffffff));
    GF_ASSERT(pokemonBoxLocationIndex < (5 * 6));

    if (boxIndex == 0xffffffff) {
        boxIndex = pcBoxes->unk_00;
    }

    return (BoxPokemon *)&(pcBoxes->unk_04[boxIndex][pokemonBoxLocationIndex]);
}

void sub_02079CD8(PCBoxes *param0, u32 param1)
{
    GF_ASSERT(param1 < 8);

    param0->unk_13C6 |= (1 << param1);
    SaveData_SetFullSaveRequired();
}

BOOL sub_02079CFC(const PCBoxes *param0, u32 param1)
{
    GF_ASSERT(param1 < 8);

    return (param0->unk_13C6 & (1 << param1)) != 0;
}

u32 sub_02079D20(const PCBoxes *param0)
{
    u32 v0, v1;

    for (v0 = 0, v1 = 0; v0 < 8; v0++) {
        if (sub_02079CFC(param0, v0)) {
            v1++;
        }
    }

    return v1;
}
