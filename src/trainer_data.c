#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
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

static void TrainerData_BuildParty(BattleParams * param0, int param1, int param2);

void TrainerData_Encounter(BattleParams *battleParams, const SaveData *save, int heapID)
{
    TrainerData trdata;
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, 618, heapID);
    const charcode_t *rivalName = MiscSave_RivalName(Save_MiscRO(save));

    for (int i = 0; i < MAX_BATTLERS; i++) {
        if (!battleParams->trainerIDs[i]) {
            continue;
        }
            
        TrainerData_Load(battleParams->trainerIDs[i], &trdata);
        battleParams->trainerData[i] = trdata;

        if (trdata.class == TRAINER_CLASS_RIVAL) {
            GF_strcpy(battleParams->trainerData[i].name, rivalName);
        } else {
            Strbuf *trainerName = MessageLoader_GetNewStrbuf(msgLoader, battleParams->trainerIDs[i]);
            Strbuf_ToChars(trainerName, battleParams->trainerData[i].name, TRAINER_NAME_LEN + 1);
            Strbuf_Free(trainerName);
        }

        TrainerData_BuildParty(battleParams, i, heapID);
    }

    battleParams->battleType |= trdata.battleType;
    MessageLoader_Free(msgLoader);
}

u32 TrainerData_LoadParam(int trainerID, enum TrainerDataParam paramID)
{
    u32 result;
    TrainerData trdata;

    TrainerData_Load(trainerID, &trdata);

    switch (paramID) {
    case TRDATA_TYPE:
        result = trdata.type;
        break;

    case TRDATA_CLASS:
        result = trdata.class;
        break;

    case TRDATA_SPRITE:
        result = trdata.sprite;
        break;

    case TRDATA_PARTY_SIZE:
        result = trdata.partySize;
        break;

    case TRDATA_ITEM_1:
    case TRDATA_ITEM_2:
    case TRDATA_ITEM_3:
    case TRDATA_ITEM_4:
        result = trdata.items[paramID - TRDATA_ITEM_1];
        break;

    case TRDATA_AI_MASK:
        result = trdata.aiMask;
        break;

    case TRDATA_BATTLE_TYPE:
        result = trdata.battleType;
        break;
    }

    return result;
}

BOOL TrainerData_HasMessageType(int trainerID, int msgType, int heapID)
{
    NARC *narc; // must declare up here to match
    u16 offset, data[2];

    BOOL result = FALSE;
    int size = NARC_GetMemberSizeByIndexPair(NARC_INDEX_POKETOOL__TRMSG__TRTBL, 0);
    NARC_ReadFromMemberByIndexPair(&offset, NARC_INDEX_POKETOOL__TRMSG__TRTBLOFS, 0, trainerID * 2, 2);
    narc = NARC_ctor(NARC_INDEX_POKETOOL__TRMSG__TRTBL, heapID);

    while (offset != size) {
        NARC_ReadFromMember(narc, 0, offset, 4, data);

        if (data[0] == trainerID && data[1] == msgType) {
            result = TRUE;
            break;
        }

        if (data[0] != trainerID) {
            break;
        }

        offset += 4;
    }

    NARC_dtor(narc);
    return result;
}

void TrainerData_LoadMessage(int trainerID, int msgType, Strbuf *strbuf, int heapID)
{
    NARC *narc; // must declare up here to match
    u16 offset, data[2];

    int size = NARC_GetMemberSizeByIndexPair(NARC_INDEX_POKETOOL__TRMSG__TRTBL, 0);
    NARC_ReadFromMemberByIndexPair(&offset, NARC_INDEX_POKETOOL__TRMSG__TRTBLOFS, 0, trainerID * 2, 2);
    narc = NARC_ctor(NARC_INDEX_POKETOOL__TRMSG__TRTBL, heapID);

    while (offset != size) {
        NARC_ReadFromMember(narc, 0, offset, 4, data);

        if (data[0] == trainerID && data[1] == msgType) {
            MessageBank_GetStrbufFromNARC(NARC_INDEX_MSGDATA__PL_MSG, 617, offset / 4, heapID, strbuf);
            break;
        }

        offset += 4;
    }

    NARC_dtor(narc);

    if (offset == size) {
        Strbuf_Clear(strbuf);
    }
}

void TrainerData_Load(int trainerID, TrainerData *trdata)
{
    NARC_ReadWholeMemberByIndexPair(trdata, NARC_INDEX_POKETOOL__TRAINER__TRDATA, trainerID);
}

void TrainerData_LoadParty(int trainerID, void *trparty)
{
    NARC_ReadWholeMemberByIndexPair(trparty, NARC_INDEX_POKETOOL__TRAINER__TRPOKE, trainerID);
}

u8 TrainerClass_Gender(int trclass)
{
    return sTrainerClassGender[trclass];
}

static void TrainerData_BuildParty (BattleParams * param0, int param1, int param2)
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

    TrainerData_LoadParty(param0->trainerIDs[param1], v0);

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
            v4 = v8[v1].dv + v8[v1].level + v9 + param0->trainerIDs[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v8[v1].dv * 31 / 255;

            Pokemon_InitWith(v7, v9, v8[v1].level, v6, 1, v4, 2, 0);
            Pokemon_SetBallSeal(v8[v1].cbSeal, v7, param2);
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
            v4 = v11[v1].dv + v11[v1].level + v12 + param0->trainerIDs[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v11[v1].dv * 31 / 255;

            Pokemon_InitWith(v7, v12, v11[v1].level, v6, 1, v4, 2, 0);

            for (v2 = 0; v2 < 4; v2++) {
                Pokemon_SetMoveSlot(v7, v11[v1].moves[v2], v2);
            }

            Pokemon_SetBallSeal(v11[v1].cbSeal, v7, param2);
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

            v4 = v14[v1].dv + v14[v1].level + v15 + param0->trainerIDs[param1];
            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v14[v1].dv * 31 / 255;

            Pokemon_InitWith(v7, v15, v14[v1].level, v6, 1, v4, 2, 0);
            Pokemon_SetValue(v7, 6, (u8 *)&v14[v1].item);
            Pokemon_SetBallSeal(v14[v1].cbSeal, v7, param2);
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
            v4 = v17[v1].dv + v17[v1].level + v18 + param0->trainerIDs[param1];

            LCRNG_SetSeed(v4);

            for (v2 = 0; v2 < param0->trainerData[param1].class; v2++) {
                v4 = LCRNG_Next();
            }

            v4 = (v4 << 8) + v3;
            v6 = v17[v1].dv * 31 / 255;

            Pokemon_InitWith(v7, v18, v17[v1].level, v6, 1, v4, 2, 0);
            Pokemon_SetValue(v7, 6, (u8 *)&v17[v1].item);

            for (v2 = 0; v2 < 4; v2++) {
                Pokemon_SetMoveSlot(v7, v17[v1].moves[v2], v2);
            }

            Pokemon_SetBallSeal(v17[v1].cbSeal, v7, param2);
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
