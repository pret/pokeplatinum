#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "constants/species.h"

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0206C638.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202D7A8.h"
#include "roaming_pokemon.h"
#include "unk_02073C2C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02[5];
} UnkStruct_020EFBB8;

static void sub_0206C538(UnkStruct_0202D7B0 * param0, const u8 param1, const int param2);
static void sub_0206C588(UnkStruct_0202D7B0 * param0, const u8 param1, const int param2);
static void sub_0206C638(UnkStruct_0202D7B0 * param0, const u8 param1, const u8 param2, const int param3);

static const UnkStruct_020EFBB8 Unk_020EFBB8[29] = {
    {
        0x2,
        {0x1, 0x17, 0xffff, 0xffff, 0xffff}
    },
    {
        0x5,
        {0x0, 0x2, 0x3, 0x16, 0x17}
    },
    {
        0x4,
        {0x1, 0x3, 0x8, 0x16, 0xffff}
    },
    {
        0x4,
        {0x1, 0x2, 0x4, 0x16, 0xffff}
    },
    {
        0x2,
        {0x3, 0x5, 0xffff, 0xffff, 0xffff}
    },
    {
        0x4,
        {0x4, 0x6, 0x1B, 0x1C, 0xffff}
    },
    {
        0x3,
        {0x5, 0x7, 0x9, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x6, 0x8, 0xD, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x2, 0x7, 0x9, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x8, 0xA, 0xF, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x9, 0xB, 0xF, 0xffff, 0xffff}
    },
    {
        0x3,
        {0xA, 0xC, 0x13, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xB, 0xE, 0xffff, 0xffff, 0xffff}
    },
    {
        0x4,
        {0x6, 0x7, 0xE, 0x14, 0xffff}
    },
    {
        0x3,
        {0xC, 0xD, 0x14, 0xffff}
    },
    {
        0x3,
        {0x9, 0xA, 0x10, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xF, 0x11, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x10, 0x12, 0x1A, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x11, 0x13, 0x1A, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xB, 0x12, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0xD, 0xE, 0x15, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x14, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x1, 0x2, 0x3, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x0, 0x1, 0x18, 0xffff, 0xffff}
    },
    {
        0x2,
        {0x17, 0x19, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x18, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x2,
        {0x11, 0x12, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x5, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x5, 0xffff, 0xffff, 0xffff, 0xffff}
    }
};

static const int RoamingPokemonRoutes[29] = {
    0x156,
    0x157,
    0x158,
    0x159,
    0x15A,
    0x15B,
    0x15D,
    0x15E,
    0x161,
    0x162,
    0x164,
    0x16A,
    0x16B,
    0x16D,
    0x16E,
    0x16F,
    0x173,
    0x175,
    0x17C,
    0x17E,
    0x17F,
    0x181,
    0x184,
    0x187,
    0x1D3,
    0x188,
    0x18B,
    0xC8,
    0xCC
};

void sub_0206C33C (UnkStruct_0202D7B0 * param0, const u8 param1)
{
    int v0;

    v0 = sub_0202D8BC(param0);
    sub_0206C538(param0, param1, v0);
}

void sub_0206C354 (UnkStruct_0202D7B0 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            sub_0206C33C(param0, v0);
        }
    }
}

void sub_0206C37C (UnkStruct_0202D7B0 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            if (inline_020564D0(16) == 0) {
                sub_0206C33C(param0, v0);
            } else {
                {
                    int v1;

                    v1 = sub_0202D8BC(param0);
                    sub_0206C588(param0, v0, v1);
                }
            }
        }
    }
}

int sub_0206C3C8 (const u8 param0)
{
    GF_ASSERT(param0 < 29);
    return RoamingPokemonRoutes[param0];
}

BOOL sub_0206C3E0 (UnkStruct_0202D7B0 * param0)
{
    u8 i;

    for (i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (sub_0202D8F8(param0, i)) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0206C404 (UnkStruct_0202D7B0 * param0, const int param1)
{
    if (sub_0206C3E0(param0)) {
        sub_0202D8A4(param0, param1);
    }
}

void RoamingPokemon_ActivateSlot (UnkStruct_021C0794 * saveData, const u8 roamingSlot)
{
    Pokemon * v0;
    UnkStruct_0206C638 * v1;
    UnkStruct_0202D7B0 * v2;
    int previouslyVisitedMapID;
    UnkStruct_02025E6C * v4;
    int speciesID;
    u8 level;

    v2 = sub_0202D834(saveData);
    v1 = sub_0202D924(v2, roamingSlot);

    switch (roamingSlot) {
    case ROAMING_SLOT_MESPRIT:
        speciesID = SPECIES_MESPRIT;
        level = 50;
        break;
    case ROAMING_SLOT_CRESSELIA:
        speciesID = SPECIES_CRESSELIA;
        level = 50;
        break;
    case ROAMING_SLOT_DARKRAI:
        speciesID = SPECIES_DARKRAI;
        level = 40;
        break;
    case ROAMING_SLOT_MOLTRES:
        speciesID = SPECIES_MOLTRES;
        level = 60;
        break;
    case ROAMING_SLOT_ZAPDOS:
        speciesID = SPECIES_ZAPDOS;
        level = 60;
        break;
    case ROAMING_SLOT_ARTICUNO:
        speciesID = SPECIES_ARTICUNO;
        level = 60;
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    sub_0202D980(v1, 4, speciesID);
    sub_0202D980(v1, 6, level);

    v4 = sub_02025E38(saveData);
    v0 = AllocMonZeroed(4);

    ZeroMonData(v0);
    sub_02073D80(v0, speciesID, level, 32, 0, 0, 1, sub_02025F24(v4));
    sub_0202D980(v1, 7, 0);
    sub_0202D980(v1, 8, 1);
    sub_0202D980(v1, 2, GetMonData(v0, MON_DATA_175, NULL));
    sub_0202D980(v1, 3, GetMonData(v0, MON_DATA_PERSONALITY, NULL));
    sub_0202D980(v1, 5, GetMonData(v0, MON_DATA_164, NULL));
    Heap_FreeToHeap(v0);

    previouslyVisitedMapID = sub_0202D8BC(v2);
    sub_0206C538(v2, roamingSlot, previouslyVisitedMapID);
}

static void sub_0206C538 (UnkStruct_0202D7B0 * param0, const u8 param1, const int param2)
{
    u8 v0;
    int v1;
    int v2;

    v1 = RoamingPokemonRoutes[sub_0202D8C4(param0, param1)];

    while (TRUE) {
        v0 = inline_020564D0(29);
        v2 = RoamingPokemonRoutes[v0];

        if ((v2 != param2) && (v2 != v1)) {
            sub_0206C638(param0, param1, v0, v2);
            break;
        }
    }
}

static void sub_0206C588 (UnkStruct_0202D7B0 * param0, const u8 param1, const int param2)
{
    const UnkStruct_020EFBB8 * v0;
    u8 v1;
    int v2;

    v0 = &(Unk_020EFBB8[sub_0202D8C4(param0, param1)]);

    if (v0->unk_00 == 1) {
        v1 = v0->unk_02[0];
        v2 = RoamingPokemonRoutes[v1];

        if (v2 == param2) {
            sub_0206C538(param0, param1, param2);
        } else {
            sub_0206C638(param0, param1, v1, v2);
        }
    } else {
        u8 v3;

        while (TRUE) {
            v3 = inline_020564D0(v0->unk_00);
            v1 = v0->unk_02[v3];
            v2 = RoamingPokemonRoutes[v1];

            if (v2 != param2) {
                sub_0206C638(param0, param1, v1, v2);
                break;
            }
        }
    }
}

static void sub_0206C638 (UnkStruct_0202D7B0 * param0, const u8 param1, const u8 param2, const int param3)
{
    UnkStruct_0206C638 * v0;

    v0 = sub_0202D924(param0, param1);

    sub_0202D8DC(param0, param1, param2);
    sub_0202D980(v0, 1, param3);
}
