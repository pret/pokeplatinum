#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0204B184.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223A348_sub1.h"
#include "overlay104/struct_ov104_0223BFFC.h"

#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "unk_0201D15C.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_02051D8C.h"
#include "pokemon.h"
#include "party.h"
#include "unk_02096420.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223BCBC.h"

u8 ov104_0223BD70(u8 param0, BOOL param1);
u8 ov104_0223BDA4(u8 param0, BOOL param1);
BattleParams * ov104_0223BDD8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_02230BE4 * param1);
static u32 ov104_0223BFD0(u8 param0);
u8 ov104_0223BFFC(UnkStruct_ov104_0223BFFC * param0);
BOOL ov104_0223C000(u8 param0);
void ov104_0223C04C(UnkStruct_ov104_0223BFFC * param0);
void ov104_0223C010(UnkStruct_ov104_0223BFFC * param0, Pokemon * param1);
void ov104_0223C034(UnkStruct_ov104_0223BFFC * param0, Party * param1, Pokemon * param2);
u16 ov104_0223C0BC(UnkStruct_ov104_0223BFFC * param0, u8 param1);
static u16 ov104_0223C0D0(UnkStruct_ov104_0223BFFC * param0);
u16 ov104_0223C124(UnkStruct_ov104_0223BFFC * param0);
u8 ov104_0223C148(u8 param0);
void sub_02052894(BattleParams * param0);
static int ov104_0223BCBC(u8 param0, int param1, int param2);
void ov104_0223BD28(u8 param0, int param1, u16 param2[], u8 param3);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_02241298[] = {
    {0x0, 0x63, 0x64, 0x77},
    {0x50, 0x77, 0x78, 0x8B},
    {0x64, 0x8B, 0x8C, 0x9F},
    {0x78, 0x9F, 0xA0, 0xB3},
    {0x8C, 0xB3, 0xB4, 0xC7},
    {0xA0, 0xC7, 0xC8, 0xDB},
    {0xB4, 0xDB, 0xDC, 0xEF},
    {0xC8, 0x12B, 0xC8, 0x12B}
};

static const u8 Unk_ov104_0223C0BC[] = {
    0x1,
    0x1,
    0x1
};

static const u8 Unk_ov104_0223C0BC_1[] = {
    0x3,
    0x3,
    0x3
};

static int ov104_0223BCBC (u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3;

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return 311;
        } else if (v3 == 49) {
            return 312;
        }
    }

    if (param1 >= NELEMS(Unk_ov104_02241298)) {
        param1 = NELEMS(Unk_ov104_02241298) - 1;
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_02241298[param1].unk_06 - Unk_ov104_02241298[param1].unk_04;
        v2 = Unk_ov104_02241298[param1].unk_04;
    } else {
        v1 = Unk_ov104_02241298[param1].unk_02 - Unk_ov104_02241298[param1].unk_00;
        v2 = Unk_ov104_02241298[param1].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223BD28 (u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223BCBC(param0, param1, v0);

        for (v1 = 0; v1 < v0; v1++) {
            if (param2[v1] == param2[v0]) {
                break;
            }
        }

        if (v1 != v0) {
            continue;
        }

        v0++;
    } while (v0 < param3);
}

u8 ov104_0223BD70 (u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

u8 ov104_0223BDA4 (u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

BattleParams * ov104_0223BDD8 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_02230BE4 * param1)
{
    int v0;
    u32 v1;
    u8 v2, v3, v4;
    BattleParams * v5;
    Pokemon * v6;
    UnkStruct_ov104_0223A348_sub1 v7;
    UnkStruct_0204B184 * v8;
    MessageLoader * v9;
    Strbuf* v10;
    TrainerInfo * v11;
    Party * v12;
    Party * v13;

    v2 = ov104_0223BD70(param0->unk_10, 0);
    v3 = ov104_0223BDA4(param0->unk_10, 0);
    v5 = sub_02051D8C(11, ov104_0223BFD0(param0->unk_10));

    sub_020521B8(v5, NULL, param1->unk_08, param1->unk_1C, param1->unk_0C, param1->unk_10, param1->unk_20);

    v5->unk_128 = 20;
    v5->unk_12C = 20;
    v5->unk_14C = param0->unk_14;

    v12 = param0->unk_70;
    v13 = param0->unk_74;

    if (param0->unk_13 == 27) {
        v12 = param0->unk_74;
        v13 = param0->unk_70;
    }

    Party_InitWithCapacity(v5->parties[0], v2);

    if (sub_0203608C() == 0) {
        v4 = 0;
    } else {
        v4 = 2;
    }

    v6 = Pokemon_New(11);

    for (v0 = 0; v0 < v2; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(v12, (v4 + v0)), v6);
        sub_0205213C(v5, v6, 0);
    }

    Heap_FreeToHeap(v6);
    sub_02052894(v5);

    v8 = ov104_0222DD04(&v7, param0->unk_78[param0->unk_11], 11, 178);

    Heap_FreeToHeap(v8);
    ov104_0222E284(v5, &v7, v3, 1, 11);
    Party_InitWithCapacity(v5->parties[1], ov104_0223BDA4(param0->unk_10, 0));

    for (v0 = 0; v0 < 4; v0++) {
        v5->trainerData[v0].aiMask = ov104_0223C0D0(param0);
    }

    v6 = Pokemon_New(11);

    for (v0 = 0; v0 < v3; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(v13, v0), v6);
        sub_0205213C(v5, v6, 1);
    }

    Heap_FreeToHeap(v6);

    switch (param0->unk_10) {
    case 2:
    case 3:
        sub_02052894(v5);

        v11 = sub_02032EE8(1 - sub_0203608C());
        TrainerInfo_Copy(v11, v5->unk_D0[2]);

        v8 = ov104_0222DD04(&v7, param0->unk_78[param0->unk_11 + 7], 11, 178);
        Heap_FreeToHeap(v8);

        ov104_0222E284(v5, &v7, v3, 3, 11);
        Party_InitWithCapacity(v5->parties[3], ov104_0223BDA4(param0->unk_10, 0));

        v6 = Pokemon_New(11);

        for (v0 = 0; v0 < v3; v0++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(v13, (v3 + v0)), v6);
            sub_0205213C(v5, v6, 3);
        }

        Heap_FreeToHeap(v6);
        break;
    }

    HealAllPokemonInParty(param0->unk_70);
    HealAllPokemonInParty(param0->unk_74);

    return v5;
}

static u32 ov104_0223BFD0 (u8 param0)
{
    switch (param0) {
    case 0:
        return (0x0 | 0x1) | 0x80;
    case 1:
        return (0x2 | 0x1) | 0x80;
    case 2:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    case 3:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    }

    return (0x0 | 0x1) | 0x80;
}

u8 ov104_0223BFFC (UnkStruct_ov104_0223BFFC * param0)
{
    return 50;
}

BOOL ov104_0223C000 (u8 param0)
{
    switch (param0) {
    case 2:
    case 3:
        return 1;
    }

    return 0;
}

void ov104_0223C010 (UnkStruct_ov104_0223BFFC * param0, Pokemon * param1)
{
    PostCapturePokemonProcessing(param1, sub_02025E38(param0->unk_04), 4, 0, 0, 11);
    return;
}

void ov104_0223C034 (UnkStruct_ov104_0223BFFC * param0, Party * param1, Pokemon * param2)
{
    ov104_0223C010(param0, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0223C04C (UnkStruct_ov104_0223BFFC * param0)
{
    u32 v0;
    int v1, v2;
    u8 v3;
    Party * v4;
    Pokemon * v5;
    Pokemon * v6;

    Party_Init(param0->unk_74);

    v3 = ov104_0223BDA4(param0->unk_10, 1);
    v5 = Pokemon_New(11);

    for (v1 = 0; v1 < v3; v1++) {
        ov104_0222DF40(&param0->unk_330[v1], v5, ov104_0223BFFC(param0));
        ov104_0223C034(param0, param0->unk_74, v5);

        v6 = Party_GetPokemonBySlotIndex(param0->unk_74, v1);
        v0 = 0;

        Pokemon_SetValue(v6, 6, &v0);
    }

    Heap_FreeToHeap(v5);
    return;
}

u16 ov104_0223C0BC (UnkStruct_ov104_0223BFFC * param0, u8 param1)
{
    u16 v0, v1;

    v1 = ov104_0223C124(param0);

    if (param1 == 28) {
        if (v1 < 3) {
            v0 = Unk_ov104_0223C0BC[0];
        } else if (v1 < 6) {
            v0 = Unk_ov104_0223C0BC[1];
        } else {
            v0 = Unk_ov104_0223C0BC[2];
        }
    } else {
        if (v1 < 3) {
            v0 = Unk_ov104_0223C0BC_1[0];
        } else if (v1 < 6) {
            v0 = Unk_ov104_0223C0BC_1[1];
        } else {
            v0 = Unk_ov104_0223C0BC_1[2];
        }
    }

    return v0;
}

static u16 ov104_0223C0D0 (UnkStruct_ov104_0223BFFC * param0)
{
    u16 v0, v1;

    if (param0->unk_10 == 0) {
        if ((param0->unk_78[param0->unk_11] == 311) || (param0->unk_78[param0->unk_11] == 312)) {
            return 0x1 | 0x2 | 0x4;
        }
    }

    v1 = ov104_0223C124(param0);
    v0 = (0x1 | 0x2 | 0x4);

    switch ((v1 + 1)) {
    case 1:
    case 2:
        v0 = 0;
        break;
    case 3:
    case 4:
        v0 = 0x1;
        break;
    }

    return v0;
}

u16 ov104_0223C124 (UnkStruct_ov104_0223BFFC * param0)
{
    u16 v0;

    v0 = param0->unk_1A;

    if (ov104_0223C000(param0->unk_10) == 1) {
        if (param0->unk_A76 > param0->unk_1A) {
            v0 = param0->unk_A76;
        }
    }

    return v0;
}

u8 ov104_0223C148 (u8 param0)
{
    if (param0 < 9) {
        return 0;
    } else if (param0 < 18) {
        return 1;
    } else if (param0 < 27) {
        return 2;
    }

    return 3;
}
