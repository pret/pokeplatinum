#include "overlay013/ov13_02225710.h"

#include <nitro.h>
#include <string.h>

#include "generated/species.h"

#include "overlay013/battle_party.h"

#include "bg_window.h"
#include "heap.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov13_02229924;

static void ov13_02225AF0(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u8 param5);
static u8 ov13_02226484(BattleParty *param0);

static const UnkStruct_ov13_02229924 Unk_ov13_02229924[] = {
    { 0x0, 0x0, 0x10, 0x6 },
    { 0x10, 0x1, 0x10, 0x6 },
    { 0x0, 0x6, 0x10, 0x6 },
    { 0x10, 0x7, 0x10, 0x6 },
    { 0x0, 0xC, 0x10, 0x6 },
    { 0x10, 0xD, 0x10, 0x6 },
    { 0x1B, 0x13, 0x5, 0x5 },
    { 0x1, 0x1, 0x1E, 0x11 },
    { 0x0, 0x13, 0xD, 0x5 },
    { 0xC, 0x13, 0xD, 0x5 },
    { 0xD, 0x13, 0xD, 0x5 },
    { 0xC, 0x13, 0xD, 0x5 },
    { 0x0, 0x13, 0x5, 0x5 },
    { 0x5, 0x13, 0x5, 0x5 },
    { 0x0, 0x6, 0x10, 0x6 },
    { 0x10, 0x6, 0x10, 0x6 },
    { 0x0, 0xC, 0x10, 0x6 },
    { 0x10, 0xC, 0x10, 0x6 },
    { 0x17, 0x0, 0x9, 0x4 },
    { 0x0, 0x6, 0x10, 0x6 },
    { 0x10, 0x6, 0x10, 0x6 },
    { 0x0, 0xC, 0x10, 0x6 },
    { 0x10, 0xC, 0x10, 0x6 },
    { 0x0, 0x6, 0x10, 0x6 },
    { 0x10, 0x6, 0x10, 0x6 },
    { 0x0, 0xC, 0x10, 0x6 },
    { 0x10, 0xC, 0x10, 0x6 },
    { 0x8, 0x12, 0x10, 0x6 },
    { 0x0, 0x13, 0x1A, 0x5 },
    { 0x0, 0x13, 0x1A, 0x5 },
    { 0xB, 0x13, 0x5, 0x2 },
    { 0x10, 0x13, 0x5, 0x2 },
    { 0xB, 0x15, 0x5, 0x2 },
    { 0x10, 0x15, 0x5, 0x2 }
};

static const u8 Unk_ov13_02229838[] = {
    0x0,
    0xFF
};

static const u8 Unk_ov13_02229830[] = {
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229864[] = {
    0x2,
    0xFF
};

static const u8 Unk_ov13_0222983C[] = {
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229828[] = {
    0x4,
    0xFF
};

static const u8 Unk_ov13_02229840[] = {
    0x5,
    0xFF
};

static const u8 Unk_ov13_02229874[] = {
    0x0,
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229820[] = {
    0x2,
    0xFF
};

static const u8 Unk_ov13_02229824[] = {
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229870[] = {
    0x15,
    0xFF
};

static const u8 Unk_ov13_0222986C[] = {
    0x5,
    0xFF
};

static const u8 Unk_ov13_02229878[] = {
    0x7,
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229880[] = {
    0x8,
    0x2,
    0xFF
};

static const u8 Unk_ov13_02229884[] = {
    0x9,
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229888[] = {
    0xA,
    0x4,
    0xFF
};

static const u8 Unk_ov13_0222985C[] = {
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229854[] = {
    0x2,
    0xFF
};

static const u8 Unk_ov13_02229850[] = {
    0x3,
    0xFF
};

static const u8 Unk_ov13_0222984C[] = {
    0x4,
    0xFF
};

static const u8 Unk_ov13_0222982C[] = {
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229844[] = {
    0x2,
    0xFF
};

static const u8 Unk_ov13_02229868[] = {
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229860[] = {
    0x4,
    0xFF
};

static const u8 Unk_ov13_02229858[] = {
    0x5,
    0xFF
};

static const u8 Unk_ov13_02229834[] = {
    0xB,
    0xFF
};

static const u8 Unk_ov13_02229848[] = {
    0x6,
    0xFF
};

static const u8 *const Unk_ov13_0222989C[] = {
    Unk_ov13_02229838,
    Unk_ov13_02229830,
    Unk_ov13_02229864,
    Unk_ov13_0222983C,
    Unk_ov13_02229828,
    Unk_ov13_02229840,
    NULL,
    Unk_ov13_02229874,
    Unk_ov13_02229820,
    Unk_ov13_0222986C,
    Unk_ov13_02229824,
    Unk_ov13_02229870,
    NULL,
    NULL,
    Unk_ov13_02229878,
    Unk_ov13_02229880,
    Unk_ov13_02229884,
    Unk_ov13_02229888,
    NULL,
    Unk_ov13_0222985C,
    Unk_ov13_02229854,
    Unk_ov13_02229850,
    Unk_ov13_0222984C,
    Unk_ov13_0222982C,
    Unk_ov13_02229844,
    Unk_ov13_02229868,
    Unk_ov13_02229860,
    Unk_ov13_02229858,
    Unk_ov13_02229834,
    Unk_ov13_02229848,
    NULL,
    NULL,
    NULL,
    NULL
};

static const s16 Unk_ov13_02229896[] = {
    0x2,
    0xFFFFFFFFFFFFFFFD,
    0x1
};

static const s16 Unk_ov13_02229890[] = {
    0x2,
    0xFFFFFFFFFFFFFFFC,
    0x2
};

static const u8 Unk_ov13_0222988C[] = {
    0x2,
    0x3,
    0x1
};

static const u8 Unk_ov13_0222987C[] = {
    0x2,
    0x4,
    0x2
};

void ov13_02225710(BattleParty *param0, u16 *param1)
{
    ov13_02225AF0(param0->unk_1E8[0], param1, 0, 0, 16, 6);
    ov13_02225AF0(param0->unk_1E8[1], param1, 0, (0 + 6), 16, 6);
    ov13_02225AF0(param0->unk_1E8[2], param1, 0, ((0 + 6) + 6), 16, 6);
    ov13_02225AF0(param0->unk_1E8[3], param1, 0, (((0 + 6) + 6) + 6), 16, 6);

    ov13_02225AF0(param0->unk_4E8[0], param1, 16, 0, 16, 6);
    ov13_02225AF0(param0->unk_4E8[1], param1, 16, (0 + 6), 16, 6);
    ov13_02225AF0(param0->unk_4E8[2], param1, 16, ((0 + 6) + 6), 16, 6);
    ov13_02225AF0(param0->unk_4E8[3], param1, 16, (((0 + 6) + 6) + 6), 16, 6);

    ov13_02225AF0(param0->unk_7E8[0], param1, 0, 39, 13, 5);
    ov13_02225AF0(param0->unk_7E8[1], param1, 0, (39 + 5), 13, 5);
    ov13_02225AF0(param0->unk_7E8[2], param1, (0 + 13), 39, 13, 5);
    ov13_02225AF0(param0->unk_7E8[3], param1, (0 + 13), (39 + 5), 13, 5);

    ov13_02225AF0(param0->unk_9F0[0], param1, 0, 49, 5, 5);
    ov13_02225AF0(param0->unk_9F0[1], param1, (0 + 5), 49, 5, 5);
    ov13_02225AF0(param0->unk_9F0[2], param1, ((0 + 5) + 5), 49, 5, 5);
    ov13_02225AF0(param0->unk_9F0[3], param1, (((0 + 5) + 5) + 5), 49, 5, 5);

    ov13_02225AF0(param0->unk_AB8[0], param1, 0, 54, 5, 5);
    ov13_02225AF0(param0->unk_AB8[1], param1, (0 + 5), 54, 5, 5);
    ov13_02225AF0(param0->unk_AB8[2], param1, ((0 + 5) + 5), 54, 5, 5);
    ov13_02225AF0(param0->unk_AB8[3], param1, (((0 + 5) + 5) + 5), 54, 5, 5);

    ov13_02225AF0(param0->unk_B80[0], param1, 26, 24, 5, 5);
    ov13_02225AF0(param0->unk_B80[1], param1, 26, (24 + 5), 5, 5);
    ov13_02225AF0(param0->unk_B80[2], param1, 26, ((24 + 5) + 5), 5, 5);
    ov13_02225AF0(param0->unk_B80[3], param1, 26, (((24 + 5) + 5) + 5), 5, 5);

    ov13_02225AF0(param0->unk_1B3C[0], param1, 0, 24, 26, 5);
    ov13_02225AF0(param0->unk_1B3C[1], param1, 0, (24 + 5), 26, 5);
    ov13_02225AF0(param0->unk_1B3C[2], param1, 0, ((24 + 5) + 5), 26, 5);

    ov13_02225AF0(param0->unk_1E48[0], param1, 20, 49, 9, 4);
    ov13_02225AF0(param0->unk_1E48[1], param1, 20, (49 + 4), 9, 4);
    ov13_02225AF0(param0->unk_1E48[2], param1, 20, ((49 + 4) + 4), 9, 4);

    ov13_02225AF0(param0->unk_1F20[0], param1, 0, 59, 5, 2);
    ov13_02225AF0(param0->unk_1F20[1], param1, 5, 59, 5, 2);
    ov13_02225AF0(param0->unk_1F20[2], param1, 10, 59, 5, 2);
}

void ov13_02225A3C(BattleParty *param0, u16 *param1)
{
    ov13_02225AF0(param0->unk_C48[0], param1, 0, 0, 30, 17);
    ov13_02225AF0(param0->unk_C48[1], param1, 0, (0 + 17), 30, 17);
    ov13_02225AF0(param0->unk_C48[2], param1, 0, ((0 + 17) + 17), 30, 17);

    ov13_02225AF0(param0->unk_183C[0], param1, 0, 51, 16, 6);
    ov13_02225AF0(param0->unk_183C[1], param1, (0 + 16), 51, 16, 6);
    ov13_02225AF0(param0->unk_183C[2], param1, 0, (51 + 6), 16, 6);
    ov13_02225AF0(param0->unk_183C[3], param1, (0 + 16), (51 + 6), 16, 6);
}

static void ov13_02225AF0(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    u16 v0, v1;

    for (v0 = 0; v0 < param5; v0++) {
        for (v1 = 0; v1 < param4; v1++) {
            param0[v0 * param4 + v1] = param1[(param3 + v0) * 32 + param2 + v1];
        }
    }
}

static u16 *ov13_02225B40(BattleParty *param0, u8 param1, u8 param2, u8 param3)
{
    switch (param1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        if (param3 == 0) {
            return param0->unk_1E8[param2];
        } else {
            return param0->unk_4E8[param2];
        }
    case 6:
        return param0->unk_B80[param2];
    case 7:
        return param0->unk_C48[param2];
    case 8:
    case 9:
    case 10:
    case 11:
        return param0->unk_7E8[param2];
    case 12:
        return param0->unk_9F0[param2];
    case 13:
        return param0->unk_AB8[param2];
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
        return param0->unk_183C[param2];
    case 28:
    case 29:
        return param0->unk_1B3C[param2];
    case 18:
        return param0->unk_1E48[param2];
    case 30:
    case 31:
    case 32:
    case 33:
        return param0->unk_1F20[param2];
    }

    return NULL;
}

static void ov13_02225C4C(BattleParty *param0, u16 *param1, u8 param2, u8 param3, u8 param4)
{
    u16 *v0;
    u8 v1, v2;
    u8 v3, v4;

    v0 = ov13_02225B40(param0, param2, param3, param4);
    v1 = Unk_ov13_02229924[param2].unk_02;
    v2 = Unk_ov13_02229924[param2].unk_03;

    memcpy(param1, v0, v1 * v2 * 2);

    switch (param2) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        if (param0->partyPokemon[param2 - 0].species == SPECIES_NONE) {
            break;
        }

        if (param0->partyPokemon[param2 - 0].isEgg != FALSE) {
            u16 v5[2];

            v5[0] = param1[2 * v1 + 6 - 1];
            v5[1] = param1[(2 + 1) * v1 + 6 - 1];

            for (v3 = 0; v3 < 2; v3++) {
                for (v4 = 0; v4 < 9; v4++) {
                    param1[(2 + v3) * v1 + 6 + v4] = v5[v3];
                }
            }
        } else {
            if (param0->partyPokemon[param2 - 0].curHP == 0) {
                for (v3 = 0; v3 < v1 * v2; v3++) {
                    param1[v3] = (param1[v3] & 0xfff) | (2 << 12);
                }
            } else if (BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(param0, param2 - 0) == 1) {
                for (v3 = 0; v3 < v1 * v2; v3++) {
                    param1[v3] = (param1[v3] & 0xfff) | (1 << 12);
                }
            }
        }
        break;
    case 27:
        for (v3 = 0; v3 < v1 * v2; v3++) {
            param1[v3] = (param1[v3] & 0xfff) | (10 << 12);
        }
        break;
    }
}

static void ov13_02225D8C(BattleParty *param0, u8 param1, u8 param2, u8 param3)
{
    u16 *v0 = Heap_Alloc(param0->context->heapID, Unk_ov13_02229924[param1].unk_02 * Unk_ov13_02229924[param1].unk_03 * 2);

    ov13_02225C4C(param0, v0, param1, param2, param3);

    Bg_LoadToTilemapRect(param0->background, 6, v0, Unk_ov13_02229924[param1].unk_00, Unk_ov13_02229924[param1].unk_01, Unk_ov13_02229924[param1].unk_02, Unk_ov13_02229924[param1].unk_03);
    Bg_ScheduleTilemapTransfer(param0->background, 6);
    Heap_Free(v0);
}

static void ov13_02225E08(BattleParty *param0, u8 param1, u8 param2)
{
    const u8 *v0;
    u16 v1;
    u8 v2, v3;

    v0 = Unk_ov13_0222989C[param1];

    if (v0 == NULL) {
        return;
    }

    if ((param1 == 0) || (param1 == 1) || (param1 == 2) || (param1 == 3) || (param1 == 4) || (param1 == 5)) {
        v3 = Unk_ov13_0222988C[param2];
    } else {
        v3 = Unk_ov13_0222987C[param2];
    }

    switch (param2) {
    case 0:
        v2 = 1;
        break;
    case 1:
        v2 = 0;
        break;
    case 2:
        v2 = 1;
        break;
    }

    if ((param1 >= 14) && (param1 <= 17)) {
        Window_Scroll(&param0->windows[v0[param0->useAltSummaryWindows]], v2, v3, 0);
        Window_ScheduleCopyToVRAM(&param0->windows[v0[param0->useAltSummaryWindows]]);
    } else {
        for (v1 = 0; v1 < 8; v1++) {
            if (v0[v1] == 0xff) {
                break;
            }

            Window_Scroll(&param0->windows[v0[v1]], v2, v3, 0);
            Window_ScheduleCopyToVRAM(&param0->windows[v0[v1]]);
        }
    }
}

static void ov13_02225EB8(BattleParty *param0, u8 param1, u8 param2)
{
    switch (param1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[13 + param1 - 0], 0, Unk_ov13_02229896[param2]);
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[0 + param1 - 0], 0, Unk_ov13_02229896[param2]);
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[7 + param1 - 0], 0, Unk_ov13_02229896[param2]);
        break;
    case 7:
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[0 + param0->context->selectedPartyIndex], 0, Unk_ov13_02229890[param2]);
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], 0, Unk_ov13_02229890[param2]);
        break;
    case 14:
    case 15:
    case 16:
    case 17:
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[21 + param1 - 14], 0, Unk_ov13_02229890[param2]);
        break;
    case 19:
    case 20:
    case 21:
    case 22:
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[21 + param1 - 19], 0, Unk_ov13_02229890[param2]);
        break;
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
        ManagedSprite_OffsetPositionXY(param0->unk_1FB4[21 + param1 - 23], 0, Unk_ov13_02229890[param2]);
        break;
    }
}

void ov13_02225FCC(BattleParty *param0, u8 param1)
{
    param0->unk_1F9F_4 = 0;

    if ((param1 >= 0) && (param1 <= 5)) {
        if (BattlePartyTask_CheckCanPartySlotBeSelected(param0, param1 - 0) == PARTY_SLOT_SELECTABLE_NOT_IN_BATTLE) {
            param0->unk_1F9F_4 = 1;
        }
    }

    param0->unk_1F9C = 0;
    param0->unk_1F9D = 0;
    param0->unk_1F9E = param1;
    param0->unk_1F9F_7 = 1;
}

void ov13_0222601C(BattleParty *param0)
{
    if (param0->unk_1F9F_7 == 0) {
        return;
    }

    switch (param0->unk_1F9C) {
    case 0:
        ov13_02225D8C(param0, param0->unk_1F9E, 1, param0->unk_1F9F_4);
        ov13_02225E08(param0, param0->unk_1F9E, 1);
        ov13_02225EB8(param0, param0->unk_1F9E, 1);
        param0->unk_1F9D = 0;
        param0->unk_1F9C = 1;
        break;
    case 1:
        ov13_02225D8C(param0, param0->unk_1F9E, 2, param0->unk_1F9F_4);
        ov13_02225E08(param0, param0->unk_1F9E, 2);
        ov13_02225EB8(param0, param0->unk_1F9E, 2);
        param0->unk_1F9D = 0;
        param0->unk_1F9C = 2;
        break;
    case 2:
        ov13_02225D8C(param0, param0->unk_1F9E, 0, param0->unk_1F9F_4);
        ov13_02225E08(param0, param0->unk_1F9E, 0);
        ov13_02225EB8(param0, param0->unk_1F9E, 0);
        param0->unk_1F9D = 0;
        param0->unk_1F9F_7 = 0;
        break;
    }
}

void ov13_022260EC(BattleParty *param0, u8 param1)
{
    u16 v0, v1;

    switch (param1) {
    case 0:
        for (v0 = 0; v0 < 6; v0++) {
            v1 = BattlePartyTask_CheckCanPartySlotBeSelected(param0, v0);

            if (v1 == 0) {
                ov13_02225D8C(param0, 0 + v0, 3, 1);
            } else if (v1 == 1) {
                ov13_02225D8C(param0, 0 + v0, 0, 0);
            } else if (v1 == 2) {
                ov13_02225D8C(param0, 0 + v0, 0, 1);
            }
        }

        if (param0->context->battlePartyMode == BATTLE_PARTY_MODE_SELECT_POKEMON_NO_CANCEL) {
            ov13_02225D8C(param0, 6, 3, 0);
        } else {
            ov13_02225D8C(param0, 6, 0, 0);
        }
        break;
    case 1:
        ov13_02225D8C(param0, 6, 0, 0);
        ov13_02225D8C(param0, 7, 0, 0);

        if (param0->partyPokemon[param0->context->selectedPartyIndex].isEgg != FALSE) {
            ov13_02225D8C(param0, 8, 3, 0);
            ov13_02225D8C(param0, 10, 3, 0);
        } else {
            ov13_02225D8C(param0, 8, 0, 0);
            ov13_02225D8C(param0, 10, 0, 0);
        }
        break;
    case 2:
        if (ov13_02226484(param0) == 1) {
            ov13_02225D8C(param0, 12, 0, 0);
            ov13_02225D8C(param0, 13, 0, 0);
        } else {
            ov13_02225D8C(param0, 12, 3, 0);
            ov13_02225D8C(param0, 13, 3, 0);
        }

        ov13_02225D8C(param0, 11, 0, 0);
        ov13_02225D8C(param0, 6, 0, 0);
        break;
    case 3:
        if (ov13_02226484(param0) == 1) {
            ov13_02225D8C(param0, 12, 0, 0);
            ov13_02225D8C(param0, 13, 0, 0);
        } else {
            ov13_02225D8C(param0, 12, 3, 0);
            ov13_02225D8C(param0, 13, 3, 0);
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->partyPokemon[param0->context->selectedPartyIndex].moves[v0].move != MOVE_NONE) {
                ov13_02225D8C(param0, 14 + v0, 0, 0);
            } else {
                ov13_02225D8C(param0, 14 + v0, 3, 0);
            }
        }

        ov13_02225D8C(param0, 9, 0, 0);
        ov13_02225D8C(param0, 6, 0, 0);
        break;
    case 4:
        ov13_02225D8C(param0, 6, 0, 0);

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->context->selectedMoveSlot == v0) {
                ov13_02225D8C(param0, 30 + v0, 2, 0);
            } else {
                ov13_02225D8C(param0, 30 + v0, 0, 0);
            }
        }
        break;
    case 5:
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->partyPokemon[param0->context->selectedPartyIndex].moves[v0].move != MOVE_NONE) {
                ov13_02225D8C(param0, 19 + v0, 0, 0);
            } else {
                ov13_02225D8C(param0, 19 + v0, 3, 0);
            }
        }

        ov13_02225D8C(param0, 6, 0, 0);
        break;
    case 6:
    case 8:
        ov13_02225D8C(param0, 23, 0, 0);
        ov13_02225D8C(param0, 24, 0, 0);
        ov13_02225D8C(param0, 25, 0, 0);
        ov13_02225D8C(param0, 26, 0, 0);
        ov13_02225D8C(param0, 27, 0, 0);
        ov13_02225D8C(param0, 6, 0, 0);

        if (param0->hasVisitedContestHall == TRUE) {
            ov13_02225D8C(param0, 18, 0, 0);
        }
        break;
    case 7:
        ov13_02225D8C(param0, 28, 0, 0);
        ov13_02225D8C(param0, 6, 0, 0);

        if (param0->hasVisitedContestHall == TRUE) {
            ov13_02225D8C(param0, 18, 0, 0);
        }
        break;
    case 9:
        ov13_02225D8C(param0, 29, 0, 0);
        ov13_02225D8C(param0, 6, 0, 0);

        if (param0->hasVisitedContestHall == TRUE) {
            ov13_02225D8C(param0, 18, 0, 0);
        }
        break;
    }
}

void ov13_02226444(BattleParty *param0, u8 param1)
{
    if (param1 == 3) {
        PaletteData_LoadBuffer(param0->palette, &param0->unk_1F5C[16], 1, 12 * 16, 0x20);
    } else {
        PaletteData_LoadBuffer(param0->palette, &param0->unk_1F5C[0], 1, 12 * 16, 0x20);
    }
}

static u8 ov13_02226484(BattleParty *param0)
{
    u16 v0, v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if ((param0->partyPokemon[v0].species != SPECIES_NONE) && (param0->partyPokemon[v0].isEgg == FALSE)) {
            v1++;
        }
    }

    if (v1 >= 2) {
        return 1;
    }

    return 0;
}

void ov13_022264C4(BattleParty *param0)
{
    if (BattlePartyTask_CheckCanPartySlotBeSelected(param0, param0->context->selectedPartyIndex) == PARTY_SLOT_SELECTABLE_NOT_IN_BATTLE) {
        ov13_02225D8C(param0, 0 + param0->context->selectedPartyIndex, 0, 1);
    } else {
        ov13_02225D8C(param0, 0 + param0->context->selectedPartyIndex, 0, 0);
    }
}
