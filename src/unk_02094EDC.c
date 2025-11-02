#include "unk_02094EDC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020951B0.h"
#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_02095C48.h"
#include "struct_defs/struct_020F568C.h"

#include "battle/pokemon_sprite_data.h"
#include "overlay006/struct_ov6_02248BE8.h"

#include "character_sprite.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_text.h"
#include "strbuf.h"
#include "unk_020298BC.h"
#include "unk_020933F8.h"

const UnkStruct_020F568C Unk_020F568C[] = {
    {
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x1,
        0x14,
        0x0,
        0x2,
        0x1,
        0x7,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x2,
        0x3,
        0x14,
        0x2,
        0x2,
        0x3,
        0x7,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x4,
        0x5,
        0x0,
        0x4,
        0x2,
        0x5,
        0x2,
        0x6,
        0x2,
        0x7,
        0x2,
        0xffff,
        0x0,
    },
    {
        0x6,
        0x7,
        0x14,
        0x8,
        0x8,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x8,
        0x9,
        0x1E,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0xA,
        0xB,
        0xA,
        0x9,
        0x2,
        0xA,
        0x2,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xB,
        0x2,
    },
    {
        0xC,
        0xD,
        0x14,
        0xC,
        0x2,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0xE,
        0xF,
        0x0,
        0xD,
        0x5,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x10,
        0x11,
        0x0,
        0xE,
        0x2,
        0xF,
        0x2,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0x10,
        0x2,
    },
    {
        0x12,
        0x13,
        0x14,
        0x11,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x14,
        0x15,
        0x0,
        0x12,
        0x9,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x16,
        0x17,
        0x0,
        0x13,
        0x7,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x18,
        0x19,
        0x14,
        0x14,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x1A,
        0x1B,
        0x14,
        0x15,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x1C,
        0x1D,
        0x14,
        0x16,
        0x9,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x1E,
        0x1F,
        0x0,
        0x17,
        0x5,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x20,
        0x21,
        0x14,
        0x18,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x22,
        0x23,
        0x14,
        0x19,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x24,
        0x25,
        0x14,
        0x1A,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x26,
        0x27,
        0xA,
        0x1B,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x28,
        0x29,
        0x0,
        0x1C,
        0x2,
        0x1D,
        0x2,
        0x1E,
        0x2,
        0x1F,
        0x2,
        0xffff,
        0x0,
    },
    {
        0x2A,
        0x2B,
        0x14,
        0x20,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
    {
        0x2C,
        0x2D,
        0xA,
        0x21,
        0x2,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
        0xffff,
        0x0,
    },
};

int sub_02094EDC(UnkStruct_02095C48 *param0)
{
    if ((param0->unk_155 == 0) || ((param0->unk_155 == 1) && (param0->unk_00.unk_10C == param0->unk_00.unk_113))) {
        return 1;
    }

    return 0;
}

void sub_02094F04(UnkStruct_02095C48 *param0, int heapID, int param2, int param3, int param4, int param5, int param6, int param7)
{
    int v0, v1;
    u8 *v2;
    u8 v3 = 0;
    u16 v4;
    int v5 = 0;
    int v6;
    int v7, v8;
    UnkStruct_ov6_02248BE8 *v9;
    int v10, v11;
    UnkStruct_ov6_02248BE8 v12;

    v8 = 0;
    v7 = 0;

    switch (param5) {
    case 3:
    case 5:
    case 7:
        v8 = 1;
        break;
    case 4:
    case 6:
    case 8:
        v7 = 1;
        break;
    }

    v9 = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 0, 0, heapID, 1);
    v6 = NARC_GetMemberSizeByIndexPair(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 0) / sizeof(UnkStruct_ov6_02248BE8);
    v2 = Heap_AllocAtEnd(heapID, v6 + 1);

    if ((param6 == 1) && (param7 == 1)) {
        v5 = 1;
    }

    for (v0 = 0; v0 < v6; v0++) {
        if (param4 != v9[v0].unk_20_0) {
            continue;
        }

        if (v5 == 1) {
            if (v9[v0].unk_20_10 == 1) {
                continue;
            }
        } else {
            if ((v9[v0].unk_20_10 == 2) || (v9[v0].unk_20_10 == 3)) {
                continue;
            }
        }

        if (v8 == 1) {
            if (v9[v0].unk_20_9 == 0) {
                continue;
            }
        } else if (v7 == 1) {
            if (v9[v0].unk_20_8 == 0) {
                continue;
            }
        } else {
            if ((v9[v0].unk_20_9 == 1) || (v9[v0].unk_20_8 == 1)) {
                continue;
            }
        }

        if (((param3 == 0) && v9[v0].unk_20_3) || ((param3 == 1) && v9[v0].unk_20_4) || ((param3 == 2) && v9[v0].unk_20_5) || ((param3 == 3) && v9[v0].unk_20_6) || ((param3 == 4) && v9[v0].unk_20_7)) {
            v2[v3++] = v0;
        }
    }

    v2[v3] = 0xff;

    if (v7 == 0) {
        GF_ASSERT(v3 >= param2);

        v10 = 0;

        for (v0 = 0; v0 < v3; v0++) {
            if (v9[v2[v0]].unk_20_10 == 3) {
                v10++;
            }
        }

        if (v10 > 0) {
            v11 = sub_02094E98(param0) % v10;

            for (v0 = 0; v0 < v3; v0++) {
                if (v9[v2[v0]].unk_20_10 == 3) {
                    if (v11 == 0) {
                        v12 = v9[v2[v0]];
                        break;
                    } else {
                        v11--;
                    }
                }
            }
        }

        for (v0 = 4 - param2; v0 < 4; v0++) {
            v4 = sub_02094E98(param0) % v3;

            if (v9[v2[v4]].unk_20_10 == 3) {
                v0--;
                continue;
            }

            param0->unk_00.unk_10[v0] = v9[v2[v4]];

            for (v1 = v4; v2[v1] != 0xff; v1++) {
                v2[v1] = v2[v1 + 1];
            }

            v3--;
        }

        if (v10 > 0) {
            v4 = 4 - param2;
            v4 += sub_02094E98(param0) % param2;
            param0->unk_00.unk_10[v4] = v12;
        }
    } else {
        GF_ASSERT(v3 >= 4);

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00.unk_10[v0] = v9[v2[v0]];
        }
    }

    Heap_Free(v2);
    Heap_Free(v9);
}

void sub_020951B0(UnkStruct_02095C48 *param0, int param1)
{
    int v0, v1;
    UnkStruct_020951B0 *v2;
    UnkStruct_020951B0 *v3;
    int v4;
    int v5;

    v2 = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 2, 0, param1, 1);

    switch (param0->unk_00.unk_111) {
    case 4:
    case 6:
    case 8:
        v4 = 0;
        break;
    default:
        v4 = param0->unk_00.unk_117;
        break;
    }

    for (v0 = v4; v0 < 4; v0++) {
        switch (param0->unk_00.unk_112) {
        case 0:
            v5 = param0->unk_00.unk_10[v0].unk_22;
            break;
        case 1:
            v5 = param0->unk_00.unk_10[v0].unk_23;
            break;
        case 2:
            v5 = param0->unk_00.unk_10[v0].unk_24;
            break;
        case 3:
            v5 = param0->unk_00.unk_10[v0].unk_25;
            break;
        case 4:
            v5 = param0->unk_00.unk_10[v0].unk_26;
            break;
        case 5:
            v5 = param0->unk_00.unk_10[v0].unk_27;
            break;
        case 6:
            v5 = param0->unk_00.unk_10[v0].unk_28;
            break;
        case 7:
            v5 = param0->unk_00.unk_10[v0].unk_29;
            break;
        case 8:
            v5 = param0->unk_00.unk_10[v0].unk_2A;
            break;
        case 9:
            v5 = param0->unk_00.unk_10[v0].unk_2B;
            break;
        case 10:
            v5 = param0->unk_00.unk_10[v0].unk_2C;
            break;
        case 11:
            v5 = param0->unk_00.unk_10[v0].unk_2D;
            break;
        default:
            GF_ASSERT(FALSE);
            v5 = 0;
            break;
        }

        v3 = &v2[v5];

        sub_0202A25C(param0->unk_00.unk_E8[v0]);
        sub_0202A3B0(param0->unk_00.unk_E8[v0], param0->unk_00.unk_00[v0], v3->unk_51);

        for (v1 = 0; v1 < v3->unk_50; v1++) {
            sub_0202A3EC(param0->unk_00.unk_E8[v0], v1, v3->unk_00[v1].unk_00, v3->unk_00[v1].unk_01, v3->unk_00[v1].unk_02, v3->unk_00[v1].unk_03);
        }

        sub_0202A35C(param0->unk_00.unk_E8[v0], v3->unk_52);
        sub_0202A378(param0->unk_00.unk_E8[v0], param0->unk_00.unk_110);
    }

    Heap_Free(v2);
}

void sub_02095338(UnkStruct_02095C48 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0202A25C(param0->unk_00.unk_E8[v0]);
        sub_0202A3B0(param0->unk_00.unk_E8[v0], param0->unk_00.unk_00[v0], -1);
        sub_0202A35C(param0->unk_00.unk_E8[v0], 0);
        sub_0202A378(param0->unk_00.unk_E8[v0], param0->unk_00.unk_110);
    }
}

void sub_02095380(const UnkStruct_ov6_02248BE8 *param0, Pokemon *param1, int heapID)
{
    int v0;
    u16 v1;
    u32 v2 = sub_02074128(param0->unk_14, param0->unk_20_12, 0);
    Pokemon_InitWith(param1, param0->unk_14, 10, INIT_IVS_RANDOM, TRUE, v2, OTID_NOT_SHINY, 0xf0f0f0f);

    for (v0 = 0; v0 < 4; v0++) {
        v1 = param0->unk_0C[v0];
        Pokemon_SetValue(param1, MON_DATA_MOVE1 + v0, &v1);
    }

    {
        Strbuf *v3, *v4;
        MessageLoader *v5;

        v5 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_OPPONENT_NAMES, heapID);
        v3 = MessageLoader_GetNewStrbuf(v5, param0->unk_16);
        v4 = MessageLoader_GetNewStrbuf(v5, param0->unk_18);

        Pokemon_SetValue(param1, MON_DATA_NICKNAME_STRING, v3);
        Pokemon_SetValue(param1, MON_DATA_OT_NAME_STRING, v4);

        Strbuf_Free(v3);
        Strbuf_Free(v4);
        MessageLoader_Free(v5);
    }

    {
        u8 v6, v7, v8, v9, v10, v11;

        v6 = param0->unk_1A;
        v7 = param0->unk_1B;
        v8 = param0->unk_1C;
        v9 = param0->unk_1D;
        v10 = param0->unk_1E;
        v11 = param0->unk_1F;

        Pokemon_SetValue(param1, MON_DATA_COOL, &v6);
        Pokemon_SetValue(param1, MON_DATA_BEAUTY, &v7);
        Pokemon_SetValue(param1, MON_DATA_CUTE, &v8);
        Pokemon_SetValue(param1, MON_DATA_SMART, &v9);
        Pokemon_SetValue(param1, MON_DATA_TOUGH, &v10);
        Pokemon_SetValue(param1, MON_DATA_SHEEN, &v11);
    }
}

PokemonSprite *sub_02095484(PokemonSpriteManager *param0, int param1, Pokemon *param2, int param3, PokemonSpriteData *pokemonSpriteData, int heapID, int param6, int param7, int param8)
{
    PokemonSpriteTemplate v0;
    PokemonSprite *v1;
    int v2, v3, v4;

    Pokemon_BuildSpriteTemplate(&v0, param2, param3);

    v2 = Pokemon_SpriteYOffset(param2, param3);

    if (pokemonSpriteData != NULL) {
        GF_ASSERT(pokemonSpriteData->tiles != NULL);
        CharacterSprite_LoadSpriteFrame0(v0.narcID, v0.character, heapID, pokemonSpriteData->tiles);
        pokemonSpriteData->palette = v0.palette;
        pokemonSpriteData->narcID = v0.narcID;
    }

    v1 = PokemonSpriteManager_CreateSprite(param0, &v0, param6, param7 + v2, param8, param1, NULL, NULL);
    return v1;
}

void sub_020954F0(UnkStruct_02095C48 *param0, int heapID, int param2, int param3, int param4)
{
    int v0, v1;
    u8 v2 = 0, v3 = 0;
    u16 v4;
    int v5;
    UnkStruct_020954F0 *v6;
    u8 *v7, *v8;

    v6 = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 1, 0, heapID, 1);
    v5 = NARC_GetMemberSizeByIndexPair(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 1) / sizeof(UnkStruct_020954F0);
    v7 = Heap_AllocAtEnd(heapID, v5 + 1);
    v8 = Heap_AllocAtEnd(heapID, v5 + 1);

    for (v0 = 0; v0 < v5; v0++) {
        if (param4 != v6[v0].unk_04_10) {
            continue;
        }

        if ((param3 == 0) && v6[v0].unk_04_0) {
            if (v6[v0].unk_04_0 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if ((param3 == 1) && v6[v0].unk_04_2) {
            if (v6[v0].unk_04_2 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if ((param3 == 2) && v6[v0].unk_04_4) {
            if (v6[v0].unk_04_4 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if ((param3 == 3) && v6[v0].unk_04_6) {
            if (v6[v0].unk_04_6 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if ((param3 == 4) && v6[v0].unk_04_8) {
            if (v6[v0].unk_04_8 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        }
    }

    v7[v2] = 0xff;
    v8[v3] = 0xff;

    GF_ASSERT(v2 >= 2);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_00.unk_C0[v0] = v6[v7[v0]];
    }

    GF_ASSERT(v3 >= 1);
    v4 = sub_02094E98(param0) % v3;
    param0->unk_00.unk_C0[2] = v6[v8[v4]];

    {
        UnkStruct_020954F0 v9;

        param0->unk_00.unk_10E = param2;
        v9 = param0->unk_00.unk_C0[param2];
        param0->unk_00.unk_C0[param2] = param0->unk_00.unk_C0[2];
        param0->unk_00.unk_C0[2] = v9;
    }

    Heap_Free(v8);
    Heap_Free(v7);
    Heap_Free(v6);
}

s8 sub_02095734(int param0)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));
    return Unk_020F568C[param0].unk_04;
}

void sub_02095750(int param0, u32 *param1, u32 *param2)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));

    *param1 = Unk_020F568C[param0].unk_00;
    *param2 = Unk_020F568C[param0].unk_02;
}

u32 sub_0209577C(int param0)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));
    return 46 + (param0 - 1);
}

void sub_02095790(int param0, int param1, u32 *param2, u32 *param3)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));

    switch (param1) {
    case 0:
    default:
        *param2 = Unk_020F568C[param0].unk_06;
        *param3 = Unk_020F568C[param0].unk_08;
        break;
    case 1:
        *param2 = Unk_020F568C[param0].unk_0A;
        *param3 = Unk_020F568C[param0].unk_0C;
        break;
    case 2:
        *param2 = Unk_020F568C[param0].unk_0E;
        *param3 = Unk_020F568C[param0].unk_10;
        break;
    case 3:
        *param2 = Unk_020F568C[param0].unk_12;
        *param3 = Unk_020F568C[param0].unk_14;
        break;
    case 4:
        *param2 = Unk_020F568C[param0].unk_16;
        *param3 = Unk_020F568C[param0].unk_18;
        break;
    }
}

u32 sub_02095848(int param0, int param1, int param2)
{
    u32 v0;

    if (param2 == 1) {
        return 51;
    }

    switch (param1) {
    case 3:
    case 5:
    case 7:
        return 50;
    }

    switch (param0) {
    case 0:
        v0 = 46;
        break;
    case 1:
        v0 = 47;
        break;
    case 2:
        v0 = 48;
        break;
    case 3:
    default:
        v0 = 49;
        break;
    }

    return v0;
}

u32 sub_02095888(int param0)
{
    u32 v0;

    switch (param0) {
    case 0:
        v0 = 46;
        break;
    case 1:
        v0 = 47;
        break;
    case 2:
        v0 = 48;
        break;
    case 3:
        v0 = 49;
        break;
    case (3 + 1):
    default:
        v0 = 51;
        break;
    }

    return v0;
}

u32 sub_020958B8(int param0)
{
    return sub_020958C4(param0, 2);
}

u32 sub_020958C4(int param0, int param1)
{
    u32 v0;

    if (param1 == 5) {
        return 52;
    }

    switch (param0) {
    case 0:
        v0 = 41;
        break;
    case 1:
        v0 = 42;
        break;
    case 2:
        v0 = 43;
        break;
    case 3:
        v0 = 44;
        break;
    case 4:
    default:
        v0 = 45;
        break;
    }

    return v0;
}

int sub_020958FC(int param0)
{
    return 4 - param0 - 1;
}

int sub_02095904(int param0)
{
    return 4 - param0 - 1;
}

BOOL sub_0209590C(UnkStruct_02095C48 *param0)
{
    switch (param0->unk_00.unk_111) {
    case 3:
    case 5:
    case 7:
        return 1;
    }

    return 0;
}

int sub_02095928(UnkStruct_02095C48 *param0, int param1)
{
    int v0, v1, v2;
    const u16 *v3;
    const u16 v4[][8] = {
        { 10, 20, 30, 40, 50, 60, 70, 80 },
        { 90, 110, 130, 150, 170, 190, 210, 230 },
        { 170, 200, 230, 260, 290, 320, 350, 380 },
        { 320, 360, 400, 440, 480, 520, 560, 600 },
        { 100, 200, 300, 400, 450, 500, 550, 600 },
    };

    v0 = 0;
    v1 = param0->unk_00.unk_118[param1].unk_00;

    if (param0->unk_155 == 1) {
        v3 = v4[3 + 1];
    } else {
        v3 = v4[param0->unk_00.unk_110];
    }

    for (v2 = 0; v2 < 8; v2++) {
        if (v1 < v3[v2]) {
            return v0;
        }

        v0++;
    }

    return v0;
}

int sub_0209598C(UnkStruct_02095C48 *param0, int param1)
{
    int v0, v1, v2;
    const u8 *v3;
    const u8 v4[][3] = {
        { 3, 5, 8 },
        { 5, 10, 15 },
        { 7, 15, 23 },
        { 10, 20, 30 },
        { 10, 20, 30 },
    };

    v0 = 0;
    v1 = param0->unk_00.unk_118[param1].unk_02;

    if (v1 == 0) {
        return 0;
    }

    if (param0->unk_155 == 1) {
        v3 = v4[3 + 1];
    } else {
        v3 = v4[param0->unk_00.unk_110];
    }

    v0 = 1;

    for (v2 = 0; v2 < 3; v2++) {
        if (v1 <= v3[v2]) {
            return v0;
        }

        v0++;
    }

    return v0;
}

void sub_020959F4(int param0)
{
    if (param0 == 0) {
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_NO_WAIT);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    } else {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
        RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
        RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    }
}

void sub_02095A24(void)
{
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
}

u32 sub_02095A3C(int param0, int param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = MON_DATA_SUPER_COOL_RIBBON + param0;
        break;
    case 1:
        v0 = MON_DATA_SUPER_BEAUTY_RIBBON + param0;
        break;
    case 2:
        v0 = MON_DATA_SUPER_CUTE_RIBBON + param0;
        break;
    case 3:
        v0 = MON_DATA_SUPER_SMART_RIBBON + param0;
        break;
    case 4:
        v0 = MON_DATA_SUPER_TOUGH_RIBBON + param0;
        break;
    default:
        GF_ASSERT(0);
        return MON_DATA_SUPER_COOL_RIBBON;
    }

    return v0;
}

u32 sub_02095A74(int param0, int param1)
{
    u8 v0[12];
    int v1 = 0;
    u32 v2;

    if ((param0 == 3) || (param1 == 1)) {
        return LCRNG_Next() % 12;
    }

    MI_CpuClear8(v0, 12);

    v0[v1++] = 2;
    v0[v1++] = 3;
    v0[v1++] = 4;

    if (param0 >= 1) {
        v0[v1++] = 0;
        v0[v1++] = 1;
        v0[v1++] = 5;
    }

    if (param0 >= 2) {
        v0[v1++] = 6;
        v0[v1++] = 7;
        v0[v1++] = 8;
    }

    return v0[LCRNG_Next() % v1];
}
