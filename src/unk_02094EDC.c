#include "unk_02094EDC.h"

#include <nitro.h>
#include <string.h>

#include "constants/contests.h"
#include "generated/contest_effects.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

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
#include "string_gf.h"
#include "unk_020298BC.h"
#include "unk_020933F8.h"

#include "res/text/bank/contest_effects.h"
#include "res/text/bank/contest_text.h"

const UnkStruct_020F568C Unk_020F568C[CONTEST_EFFECT_MAX] = {
    [CONTEST_EFFECT_NONE] = {
        0x0,
        0x0,
        0x0,
    },
    [CONTEST_EFFECT_FIRST_NEXT_TURN] = {
        ContestEffects_Text_PerformFirst,
        ContestEffects_Text_NextTurn1,
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
    [CONTEST_EFFECT_LAST_NEXT_TURN] = {
        ContestEffects_Text_PerformLast,
        ContestEffects_Text_NextTurn2,
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
    [CONTEST_EFFECT_DOUBLED_JUDGE] = {
        ContestEffects_Text_EachDoubled,
        ContestEffects_Text_JudgePlusTwo,
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
    [CONTEST_EFFECT_2_HEARTS_WHEN_VOLTAGE_UP] = {
        ContestEffects_Text_IfTheVoltage,
        ContestEffects_Text_GoesUpPlusTwo,
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
    [CONTEST_EFFECT_BASIC] = {
        ContestEffects_Text_BasicAct,
        ContestEffects_Text_Unused,
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
    [CONTEST_EFFECT_UNIQUE_JUDGE] = {
        ContestEffects_Text_IfJudgesAre,
        ContestEffects_Text_NotDoubledPlusThree,
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
    [CONTEST_EFFECT_CONSECUTIVE_USE] = {
        ContestEffects_Text_PerformableTwo,
        ContestEffects_Text_TurnsInARow,
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
    [CONTEST_EFFECT_VOLTAGE] = {
        ContestEffects_Text_VoltagePts,
        ContestEffects_Text_AreAdded,
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
    [CONTEST_EFFECT_ALL_SAME_JUDGE] = {
        ContestEffects_Text_IfAllChoose,
        ContestEffects_Text_SameJudgePlusFifteen,
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
    [CONTEST_EFFECT_LOWERS_VOLTAGE] = {
        ContestEffects_Text_LowersVoltage,
        ContestEffects_Text_OfJudgesByOne,
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
    [CONTEST_EFFECT_DOUBLE_NEXT_TURN] = {
        ContestEffects_Text_DoubleScoreIn,
        ContestEffects_Text_NextTurn3,
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
    [CONTEST_EFFECT_STEAL_VOLTAGE] = {
        ContestEffects_Text_GetVoltage,
        ContestEffects_Text_FromOneAhead,
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
    [CONTEST_EFFECT_SUPPRESS_VOLTAGE] = {
        ContestEffects_Text_NoVoltageUp,
        ContestEffects_Text_ThisTurn1,
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
    [CONTEST_EFFECT_RANDOM_ORDER] = {
        ContestEffects_Text_RandomOrder,
        ContestEffects_Text_NextTurn4,
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
    [CONTEST_EFFECT_DOUBLE_FINAL_ACT] = {
        ContestEffects_Text_DoubleScore,
        ContestEffects_Text_ForFinalAct,
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
    [CONTEST_EFFECT_LOW_VOLTAGE_ADVANTAGE] = {
        ContestEffects_Text_HighScoreFor1,
        ContestEffects_Text_LowVoltage,
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
    [CONTEST_EFFECT_FIRST_PERFORMANCE_ADVANTAGE] = {
        ContestEffects_Text_IfFirst,
        ContestEffects_Text_PerformancePlusTwo1,
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
    [CONTEST_EFFECT_FINAL_PERFORMANCE_ADVANTAGE] = {
        ContestEffects_Text_IfFinal,
        ContestEffects_Text_PerformancePlusTwo2,
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
    [CONTEST_EFFECT_NO_VOLTAGE_DOWN] = {
        ContestEffects_Text_NoVoltageDown,
        ContestEffects_Text_ThisTurn2,
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
    [CONTEST_EFFECT_TWO_VOLTAGE_IN_A_ROW_ADVANTAGE] = {
        ContestEffects_Text_IfVoltageGoes,
        ContestEffects_Text_UpInARowPlusThree,
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
    [CONTEST_EFFECT_HIGH_SCORE_LATER_TURN] = {
        ContestEffects_Text_HighScoreFor2,
        ContestEffects_Text_ALaterTurn,
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
    [CONTEST_EFFECT_MAX_VOLTAGE_ADVANTAGE] = {
        ContestEffects_Text_AfterVoltage,
        ContestEffects_Text_HitsMaxPlusThree,
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
    [CONTEST_EFFECT_PITY_POINTS] = {
        ContestEffects_Text_IfRatedThe,
        ContestEffects_Text_WorstPlusThree,
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

BOOL sub_02094EDC(UnkStruct_02095C48 *param0)
{
    if (param0->isLinkContest == FALSE || (param0->isLinkContest == TRUE && param0->unk_00.unk_10C == param0->unk_00.unk_113)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02094F04(UnkStruct_02095C48 *param0, enum HeapID heapID, int param2, enum PokemonContestType contestType, enum PokemonContestRank contestRank, int param5, BOOL isGameCompleted, BOOL isNatDexObtained)
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

    if (isGameCompleted == TRUE && isNatDexObtained == TRUE) {
        v5 = 1;
    }

    for (v0 = 0; v0 < v6; v0++) {
        if (contestRank != v9[v0].unk_20_0) {
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

        if (contestType == CONTEST_TYPE_COOL && v9[v0].unk_20_3
            || contestType == CONTEST_TYPE_BEAUTY && v9[v0].unk_20_4
            || contestType == CONTEST_TYPE_CUTE && v9[v0].unk_20_5
            || contestType == CONTEST_TYPE_SMART && v9[v0].unk_20_6
            || contestType == CONTEST_TYPE_TOUGH && v9[v0].unk_20_7) {
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

void sub_020951B0(UnkStruct_02095C48 *param0, enum HeapID heapID)
{
    int v0, v1;
    UnkStruct_020951B0 *v2;
    UnkStruct_020951B0 *v3;
    int v4;
    int v5;

    v2 = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 2, FALSE, heapID, 1);

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
        sub_0202A378(param0->unk_00.unk_E8[v0], param0->unk_00.contestRank);
    }

    Heap_Free(v2);
}

void sub_02095338(UnkStruct_02095C48 *param0)
{
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        sub_0202A25C(param0->unk_00.unk_E8[i]);
        sub_0202A3B0(param0->unk_00.unk_E8[i], param0->unk_00.unk_00[i], -1);
        sub_0202A35C(param0->unk_00.unk_E8[i], 0);
        sub_0202A378(param0->unk_00.unk_E8[i], param0->unk_00.contestRank);
    }
}

void sub_02095380(const UnkStruct_ov6_02248BE8 *param0, Pokemon *param1, enum HeapID heapID)
{
    int i;
    u16 v1;
    u32 v2 = sub_02074128(param0->unk_14, param0->unk_20_12, 0);
    Pokemon_InitWith(param1, param0->unk_14, 10, INIT_IVS_RANDOM, TRUE, v2, OTID_NOT_SHINY, 0xf0f0f0f);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        v1 = param0->unk_0C[i];
        Pokemon_SetValue(param1, MON_DATA_MOVE1 + i, &v1);
    }

    {
        String *v3, *v4;
        MessageLoader *contestOpponentNames;

        contestOpponentNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_OPPONENT_NAMES, heapID);
        v3 = MessageLoader_GetNewString(contestOpponentNames, param0->unk_16);
        v4 = MessageLoader_GetNewString(contestOpponentNames, param0->unk_18);

        Pokemon_SetValue(param1, MON_DATA_NICKNAME_STRING, v3);
        Pokemon_SetValue(param1, MON_DATA_OT_NAME_STRING, v4);

        String_Free(v3);
        String_Free(v4);
        MessageLoader_Free(contestOpponentNames);
    }

    {
        u8 cool, beauty, cute, smart, tough, sheen;

        cool = param0->unk_1A;
        beauty = param0->unk_1B;
        cute = param0->unk_1C;
        smart = param0->unk_1D;
        tough = param0->unk_1E;
        sheen = param0->unk_1F;

        Pokemon_SetValue(param1, MON_DATA_COOL, &cool);
        Pokemon_SetValue(param1, MON_DATA_BEAUTY, &beauty);
        Pokemon_SetValue(param1, MON_DATA_CUTE, &cute);
        Pokemon_SetValue(param1, MON_DATA_SMART, &smart);
        Pokemon_SetValue(param1, MON_DATA_TOUGH, &tough);
        Pokemon_SetValue(param1, MON_DATA_SHEEN, &sheen);
    }
}

PokemonSprite *sub_02095484(PokemonSpriteManager *param0, int param1, Pokemon *param2, int param3, PokemonSpriteData *pokemonSpriteData, enum HeapID heapID, int param6, int param7, int param8)
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

void sub_020954F0(UnkStruct_02095C48 *param0, enum HeapID heapID, int param2, enum PokemonContestType contestType, enum PokemonContestRank contestRank)
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
        if (contestRank != v6[v0].unk_04_10) {
            continue;
        }

        if (contestType == CONTEST_TYPE_COOL && v6[v0].unk_04_0) {
            if (v6[v0].unk_04_0 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if (contestType == CONTEST_TYPE_BEAUTY && v6[v0].unk_04_2) {
            if (v6[v0].unk_04_2 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if (contestType == CONTEST_TYPE_CUTE && v6[v0].unk_04_4) {
            if (v6[v0].unk_04_4 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if (contestType == CONTEST_TYPE_SMART && v6[v0].unk_04_6) {
            if (v6[v0].unk_04_6 > 1) {
                v8[v3++] = v0;
            } else {
                v7[v2++] = v0;
            }
        } else if (contestType == CONTEST_TYPE_TOUGH && v6[v0].unk_04_8) {
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

s8 sub_02095734(enum ContestEffects contestEffect)
{
    GF_ASSERT(contestEffect < (NELEMS(Unk_020F568C)));
    return Unk_020F568C[contestEffect].unk_04;
}

void LoadTwoLineContestEffectMessages(int moveContestEffectID, u32 *lineOneEffectMessageID, u32 *lineTwoEffectMessageID)
{
    GF_ASSERT(moveContestEffectID < (NELEMS(Unk_020F568C)));

    *lineOneEffectMessageID = Unk_020F568C[moveContestEffectID].lineOneEffectMessageID;
    *lineTwoEffectMessageID = Unk_020F568C[moveContestEffectID].lineTwoEffectMessageID;
}

u32 sub_0209577C(int param0)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));
    return 46 + (param0 - 1);
}

void sub_02095790(int param0, int param1, u32 *destMessageID, u32 *param3)
{
    GF_ASSERT(param0 < (NELEMS(Unk_020F568C)));

    switch (param1) {
    case 0:
    default:
        *destMessageID = Unk_020F568C[param0].unk_06;
        *param3 = Unk_020F568C[param0].unk_08;
        break;
    case 1:
        *destMessageID = Unk_020F568C[param0].unk_0A;
        *param3 = Unk_020F568C[param0].unk_0C;
        break;
    case 2:
        *destMessageID = Unk_020F568C[param0].unk_0E;
        *param3 = Unk_020F568C[param0].unk_10;
        break;
    case 3:
        *destMessageID = Unk_020F568C[param0].unk_12;
        *param3 = Unk_020F568C[param0].unk_14;
        break;
    case 4:
        *destMessageID = Unk_020F568C[param0].unk_16;
        *param3 = Unk_020F568C[param0].unk_18;
        break;
    }
}

u32 sub_02095848(enum PokemonContestRank contestRank, int param1, BOOL isLinkContest)
{
    u32 messageID;

    if (isLinkContest == TRUE) {
        return Contest_Text_Link;
    }

    switch (param1) {
    case 3:
    case 5:
    case 7:
        return Contest_Text_Practice;
    }

    switch (contestRank) {
    case CONTEST_RANK_NORMAL:
        messageID = Contest_Text_NormalRank;
        break;
    case CONTEST_RANK_GREAT:
        messageID = Contest_Text_GreatRank;
        break;
    case CONTEST_RANK_ULTRA:
        messageID = Contest_Text_UltraRank;
        break;
    case CONTEST_RANK_MASTER:
    default:
        messageID = Contest_Text_MasterRank;
        break;
    }

    return messageID;
}

u32 Contest_GetRankMessageID(enum PokemonContestRank contestRank)
{
    u32 messageID;

    switch (contestRank) {
    case CONTEST_RANK_NORMAL:
        messageID = Contest_Text_NormalRank;
        break;
    case CONTEST_RANK_GREAT:
        messageID = Contest_Text_GreatRank;
        break;
    case CONTEST_RANK_ULTRA:
        messageID = Contest_Text_UltraRank;
        break;
    case CONTEST_RANK_MASTER:
        messageID = Contest_Text_MasterRank;
        break;
    case CONTEST_RANK_LINK:
    default:
        messageID = Contest_Text_Link;
        break;
    }

    return messageID;
}

u32 Contest_GetContestTypeMessageID(int contestType)
{
    return sub_020958C4(contestType, 2);
}

u32 sub_020958C4(enum PokemonContestType contestType, int param1)
{
    u32 messageID;

    if (param1 == 5) {
        return Contest_Text_Contest;
    }

    switch (contestType) {
    case CONTEST_TYPE_COOL:
        messageID = Contest_Text_CoolContest;
        break;
    case CONTEST_TYPE_BEAUTY:
        messageID = Contest_Text_BeautyContest;
        break;
    case CONTEST_TYPE_CUTE:
        messageID = Contest_Text_CuteContest;
        break;
    case CONTEST_TYPE_SMART:
        messageID = Contest_Text_SmartContest;
        break;
    case CONTEST_TYPE_TOUGH:
    default:
        messageID = Contest_Text_ToughContest;
        break;
    }

    return messageID;
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

    if (param0->isLinkContest == TRUE) {
        v3 = v4[CONTEST_RANK_LINK];
    } else {
        v3 = v4[param0->unk_00.contestRank];
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

    if (param0->isLinkContest == TRUE) {
        v3 = v4[CONTEST_RANK_LINK];
    } else {
        v3 = v4[param0->unk_00.contestRank];
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

void SetLockTextWithAutoScroll(BOOL lockTextWithAutoScroll)
{
    if (lockTextWithAutoScroll == FALSE) {
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_NO_WAIT);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    } else {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
        RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
        RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    }
}

void LockTextSpeed()
{
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
}

u32 CalcMonDataRibbon(enum PokemonContestRank contestRank, enum PokemonContestType contestType)
{
    u32 monDataRibbon;

    switch (contestType) {
    case CONTEST_TYPE_COOL:
        monDataRibbon = MON_DATA_SUPER_COOL_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_BEAUTY:
        monDataRibbon = MON_DATA_SUPER_BEAUTY_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_CUTE:
        monDataRibbon = MON_DATA_SUPER_CUTE_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_SMART:
        monDataRibbon = MON_DATA_SUPER_SMART_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_TOUGH:
        monDataRibbon = MON_DATA_SUPER_TOUGH_RIBBON + contestRank;
        break;
    default:
        GF_ASSERT(0);
        return MON_DATA_SUPER_COOL_RIBBON;
    }

    return monDataRibbon;
}

u32 sub_02095A74(enum PokemonContestRank contestRank, BOOL isLinkContest)
{
    u8 v0[12];
    int arrayLength = 0;

    if (contestRank == CONTEST_RANK_MASTER || isLinkContest == TRUE) {
        return LCRNG_Next() % 12;
    }

    MI_CpuClear8(v0, 12);

    v0[arrayLength++] = 2;
    v0[arrayLength++] = 3;
    v0[arrayLength++] = 4;

    if (contestRank >= CONTEST_RANK_GREAT) {
        v0[arrayLength++] = 0;
        v0[arrayLength++] = 1;
        v0[arrayLength++] = 5;
    }

    if (contestRank >= CONTEST_RANK_ULTRA) {
        v0[arrayLength++] = 6;
        v0[arrayLength++] = 7;
        v0[arrayLength++] = 8;
    }

    return v0[LCRNG_Next() % arrayLength];
}
