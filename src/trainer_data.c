#include <nitro.h>
#include <string.h>

#include "constants/trainer.h"

#include "data/trainer_class_genders.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/trainer_data.h"
#include "overlay006/battle_params.h"

#include "unk_020021B0.h"
#include "narc.h"
#include "message.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_020277A4.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "party.h"

static void sub_020793B8(BattleParams * param0, int param1, int param2);

void TrainerData_Encounter (BattleParams * param0, const SaveData * param1, int param2)
{
    TrainerData v0;
    int v1;
    MessageLoader * v2 = MessageLoader_Init(1, 26, 618, param2);
    Strbuf *v3;
    const u16 * v4 = sub_02027870(sub_02027848(param1));

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1]) {
            TrainerData_Load(param0->unk_18[v1], &v0);
            param0->trainerData[v1] = v0;

            if (v0.class == TRAINER_CLASS_RIVAL) {
                GF_strcpy(&param0->trainerData[v1].name[0], v4);
            } else {
                v3 = MessageLoader_GetNewStrbuf(v2, param0->unk_18[v1]);
                Strbuf_ToChars(v3, &param0->trainerData[v1].name[0], 8);
                Strbuf_Free(v3);
            }

            sub_020793B8(param0, v1, param2);
        }
    }

    param0->battleType |= v0.battleType;

    MessageLoader_Free(v2);
}

u32 TrainerData_LoadParam (int param0, int param1)
{
    u32 v0;
    TrainerData v1;

    TrainerData_Load(param0, &v1);

    switch (param1) {
    case 0:
        v0 = v1.type;
        break;
    case 1:
        v0 = v1.class;
        break;
    case 2:
        v0 = v1.sprite;
        break;
    case 3:
        v0 = v1.partySize;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
        v0 = v1.items[param1 - 4];
        break;
    case 8:
        v0 = v1.aiMask;
        break;
    case 9:
        v0 = v1.battleType;
        break;
    }

    return v0;
}

BOOL TrainerData_HasMessageType (int param0, int param1, int param2)
{
    NARC * v0;
    int v1;
    u16 v2;
    u16 v3[2];
    BOOL v4;

    v4 = 0;

    v1 = NARC_GetMemberSizeByIndexPair(NARC_INDEX_POKETOOL__TRMSG__TRTBL, 0);
    NARC_ReadFromMemberByIndexPair(&v2, NARC_INDEX_POKETOOL__TRMSG__TRTBLOFS, 0, param0 * 2, 2);
    v0 = NARC_ctor(NARC_INDEX_POKETOOL__TRMSG__TRTBL, param2);

    while (v2 != v1) {
        NARC_ReadFromMember(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            v4 = 1;
            break;
        }

        if (v3[0] != param0) {
            break;
        }

        v2 += 4;
    }

    NARC_dtor(v0);

    return v4;
}

void TrainerData_LoadMessage (int param0, int param1, Strbuf *param2, int param3)
{
    NARC * v0;
    int v1;
    u16 v2;
    u16 v3[2];

    v1 = NARC_GetMemberSizeByIndexPair(NARC_INDEX_POKETOOL__TRMSG__TRTBL, 0);
    NARC_ReadFromMemberByIndexPair(&v2, NARC_INDEX_POKETOOL__TRMSG__TRTBLOFS, 0, param0 * 2, 2);
    v0 = NARC_ctor(NARC_INDEX_POKETOOL__TRMSG__TRTBL, param3);

    while (v2 != v1) {
        NARC_ReadFromMember(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            MessageBank_GetStrbufFromNARC(26, 617, v2 / 4, param3, param2);
            break;
        }

        v2 += 4;
    }

    NARC_dtor(v0);

    if (v2 == v1) {
        Strbuf_Clear(param2);
    }
}

void TrainerData_Load (int param0, TrainerData * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, NARC_INDEX_POKETOOL__TRAINER__TRDATA, param0);
}

void TrainerData_LoadParty (int param0, void * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, NARC_INDEX_POKETOOL__TRAINER__TRPOKE, param0);
}

u8 TrainerClass_Gender (int param0)
{
    return sTrainerClassGender[param0];
}

static void sub_020793B8 (BattleParams * param0, int param1, int param2)
{
    void * v0;
    int v1, v2;
    u32 v3, v4;
    u32 v5;
    u8 v6;
    Pokemon * v7;

    v5 = LCRNG_GetSeed();

    Party_InitWithCapacity(param0->parties[param1], 6);

    v0 = Heap_AllocFromHeap(param2, sizeof(TrainerMonWithMovesAndItem) * 6);
    v7 = Pokemon_New(param2);

    TrainerData_LoadParty(param0->unk_18[param1], v0);

    if (TrainerClass_Gender(param0->trainerData[param1].class) == 1) {
        v3 = 120;
    } else {
        v3 = 136;
    }

    switch (param0->trainerData[param1].type) {
    case 0:
    {
        TrainerMonBase * v8;
        u16 v9;
        u8 v10;

        v8 = (TrainerMonBase *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].partySize; v1++) {
            v9 = v8[v1].species & 0x3ff;
            v10 = (v8[v1].species & 0xfc00) >> 10;
            v4 = v8[v1].dv + v8[v1].level + v9 + param0->unk_18[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v8[v1].dv * 31 / 255;

            sub_02073D80(v7, v9, v8[v1].level, v6, 1, v4, 2, 0);
            sub_02078AEC(v8[v1].cbSeal, v7, param2);
            Pokemon_SetValue(v7, 112, &v10);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 1:
    {
        TrainerMonWithMoves * v11;
        u16 v12;
        u8 v13;

        v11 = (TrainerMonWithMoves *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].partySize; v1++) {
            v12 = v11[v1].species & 0x3ff;
            v13 = (v11[v1].species & 0xfc00) >> 10;
            v4 = v11[v1].dv + v11[v1].level + v12 + param0->unk_18[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v11[v1].dv * 31 / 255;

            sub_02073D80(v7, v12, v11[v1].level, v6, 1, v4, 2, 0);

            for (v2 = 0; v2 < 4; v2++) {
                Pokemon_SetMoveSlot(v7, v11[v1].moves[v2], v2);
            }

            sub_02078AEC(v11[v1].cbSeal, v7, param2);
            Pokemon_SetValue(v7, 112, &v13);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 2:
    {
        TrainerMonWithItem * v14;
        u16 v15;
        u8 v16;

        v14 = (TrainerMonWithItem *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].partySize; v1++) {
            v15 = v14[v1].species & 0x3ff;
            v16 = (v14[v1].species & 0xfc00) >> 10;

            v4 = v14[v1].dv + v14[v1].level + v15 + param0->unk_18[param1];
            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v14[v1].dv * 31 / 255;

            sub_02073D80(v7, v15, v14[v1].level, v6, 1, v4, 2, 0);
            Pokemon_SetValue(v7, 6, (u8 *)&v14[v1].item);
            sub_02078AEC(v14[v1].cbSeal, v7, param2);
            Pokemon_SetValue(v7, 112, &v16);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    case 3:
    {
        TrainerMonWithMovesAndItem * v17;
        u16 v18;
        u8 v19;

        v17 = (TrainerMonWithMovesAndItem *)v0;

        for (v1 = 0; v1 < param0->trainerData[param1].partySize; v1++) {
            v18 = v17[v1].species & 0x3ff;
            v19 = (v17[v1].species & 0xfc00) >> 10;
            v4 = v17[v1].dv + v17[v1].level + v18 + param0->unk_18[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v17[v1].dv * 31 / 255;

            sub_02073D80(v7, v18, v17[v1].level, v6, 1, v4, 2, 0);
            Pokemon_SetValue(v7, 6, (u8 *)&v17[v1].item);

            for (v2 = 0; v2 < 4; v2++) {
                Pokemon_SetMoveSlot(v7, v17[v1].moves[v2], v2);
            }

            sub_02078AEC(v17[v1].cbSeal, v7, param2);
            Pokemon_SetValue(v7, 112, &v19);
            Party_AddPokemon(param0->parties[param1], v7);
        }
    }
    break;
    }

    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v7);
    LCRNG_SetSeed(v5);
}
