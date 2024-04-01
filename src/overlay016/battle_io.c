#include <nitro.h>
#include <string.h>

#include "consts/generated/c/gender.h"

#include "constants/pokemon.h"
#include "constants/species.h"
#include "constants/battle/battle_io.h"

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"

#include "pokemon.h"
#include "constants/species.h"
#include "struct_defs/struct_0207A81C.h"
#include "struct_defs/battle_system.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0224DDA8.h"
#include "overlay016/struct_ov16_0225BFFC_t.h"
#include "overlay016/struct_ov16_0225C168.h"
#include "overlay016/struct_ov16_0225C17C.h"
#include "overlay016/struct_ov16_0225C260.h"
#include "overlay016/struct_ov16_0225C29C.h"
#include "overlay016/struct_ov16_0225C2B0.h"
#include "overlay016/struct_ov16_0225C2C4.h"
#include "overlay016/struct_ov16_0225C2D8.h"
#include "overlay016/struct_ov16_0225C2EC.h"
#include "battle/battle_message.h"
#include "overlay016/struct_ov16_0225C35C.h"
#include "overlay016/struct_ov16_0225C370.h"
#include "overlay016/struct_ov16_0225C384.h"
#include "overlay016/struct_ov16_0225C398.h"
#include "overlay016/struct_ov16_0225C3BC.h"
#include "overlay016/struct_ov16_0225C3D0.h"
#include "overlay016/struct_ov16_0225C3E4.h"
#include "overlay016/struct_ov16_0225C3F8.h"
#include "overlay016/struct_ov16_0225C40C.h"
#include "overlay016/struct_ov16_0225C430.h"
#include "overlay016/struct_ov16_0225C454.h"
#include "overlay016/struct_ov16_0225C468.h"
#include "overlay016/struct_ov16_0225C65C.h"
#include "overlay016/struct_ov16_0225C684.h"
#include "struct_defs/battle_io.h"
#include "overlay016/struct_ov16_0225C988.h"
#include "overlay016/struct_ov16_0225C9F0.h"
#include "overlay016/struct_ov16_0225CA14.h"
#include "overlay016/struct_ov16_0225CA4C.h"
#include "overlay016/struct_ov16_0225CA60.h"
#include "overlay016/struct_ov16_02264A8C.h"
#include "overlay016/struct_ov16_02264EF8.h"
#include "overlay016/struct_ov16_02265050.h"
#include "overlay016/struct_ov16_02265124.h"
#include "overlay016/struct_ov16_02265154.h"
#include "overlay016/struct_ov16_022651A8.h"
#include "overlay016/struct_ov16_022656F0.h"
#include "overlay016/struct_ov16_02265BBC.h"
#include "overlay016/struct_ov16_022662FC.h"
#include "overlay016/struct_ov16_02266498.h"
#include "overlay016/struct_ov16_022664F8.h"
#include "overlay016/struct_ov16_022666BC.h"
#include "overlay016/struct_ov16_02266A38.h"
#include "overlay016/struct_ov16_02266ABC.h"

#include "unk_0202F1D4.h"
#include "communication_system.h"
#include "pokemon.h"
#include "move_table.h"
#include "party.h"
#include "flags.h"
#include "unk_0207A6DC.h"
#include "overlay016/ov16_0223DF00.h"
#include "battle/battle_lib.h"
#include "battle/battle_io.h"

static void ov16_0226485C(BattleSystem * param0, int param1, int param2, void * param3, u8 param4);
static void SendMessage(BattleSystem *battleSys, int recipient, int message, void *body, u8 bodySize);
static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler);

static void ov16_0226485C (BattleSystem * param0, int param1, int param2, void * param3, u8 param4)
{
    int v0;
    UnkStruct_0207A81C v1;
    u8 * v2;
    u8 * v3;
    u16 * v4;
    u16 * v5;

    if (param1 == 1) {
        v3 = ov16_0223E074(param0);
        v4 = ov16_0223E0B0(param0);
        v5 = ov16_0223E0BC(param0);
    } else {
        v3 = ov16_0223E06C(param0);
        v4 = ov16_0223E08C(param0);
        v5 = ov16_0223E098(param0);
    }

    if (v4[0] + sizeof(UnkStruct_0207A81C) + param4 + 1 > 0x1000) {
        v5[0] = v4[0];
        v4[0] = 0;
    }

    v1.unk_00 = param1;
    v1.unk_01 = param2;
    v1.unk_02 = param4;

    v2 = (u8 *)&v1;

    for (v0 = 0; v0 < sizeof(UnkStruct_0207A81C); v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }

    v2 = (u8 *)param3;

    for (v0 = 0; v0 < param4; v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }
}

static BOOL ov16_022648F4 (BattleSystem * param0, void * param1)
{
    u8 * v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 0;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        if (param0->battleCtx->ioBuffer[v2][0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                param0->battleCtx->ioBuffer[v2][v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 1) {
        if (param0->battlers[v2]->data[0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                param0->battlers[v2]->data[v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(param0)) {
                BattleIO_DequeueVal(param0->battleCtx, v7, v2, v6);
            }
        }
        v5 = 1;
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02264988 (BattleSystem * param0, int param1)
{
    u8 * v0;
    u16 * v1;
    u16 * v2;
    u16 * v3;
    int v4;

    if (param1 == 1) {
        v0 = ov16_0223E074(param0);
        v1 = ov16_0223E0A4(param0);
        v2 = ov16_0223E0B0(param0);
        v3 = ov16_0223E0BC(param0);
    } else {
        v0 = ov16_0223E06C(param0);
        v1 = ov16_0223E080(param0);
        v2 = ov16_0223E08C(param0);
        v3 = ov16_0223E098(param0);
    }

    if (v1[0] == v2[0]) {
        return;
    }

    if (v1[0] == v3[0]) {
        v1[0] = 0;
        v3[0] = 0;
    }

    if (ov16_022648F4(param0, (void *)&v0[v1[0]]) == 1) {
        v4 = sizeof(UnkStruct_0207A81C) + (v0[v1[0] + 2] | (v0[v1[0] + 3] << 8));
        v1[0] += v4;
    }
}

static void SendMessage(BattleSystem *battleSys, int recipient, int message, void *body, u8 bodySize)
{
    u8 *data = body;

    if ((battleSys->battleType & BATTLE_TYPE_LINK) && (battleSys->battleStatusMask & BATTLE_TYPE_TAG) == FALSE) {
        if (recipient == 1) {
            for (int i = 0; i < sub_02035E18(); i++) {
                BattleIO_EnqueueVal(battleSys->battleCtx, i, message, *data);
            }
        }

        sub_0207A81C(battleSys, recipient, message, body, bodySize);
    } else {
        if (recipient == 1) {
            BattleIO_EnqueueVal(battleSys->battleCtx, 0, message, *data);
        }

        ov16_0226485C(battleSys, recipient, message, body, bodySize);
    }
}

void BattleIO_SetupBattleUI (BattleSystem * param0, int param1)
{
    UnkStruct_ov16_02264A8C v0;

    v0.unk_00 = 1;
    v0.unk_04 = ov16_0223F4E8(param0);

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02264A8C));
}

void BattleIO_SetEncounter (BattleSystem * param0, int param1)
{
    UnkStruct_ov16_0225C168 v0;
    int v1;

    v0.unk_00 = 2;
    v0.unk_01_0 = param0->battleCtx->battleMons[param1].gender;
    v0.unk_01_2 = param0->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = param0->battleCtx->battleMons[param1].species;
    v0.unk_04 = param0->battleCtx->battleMons[param1].personality;
    v0.unk_08 = Battler_CryModulation(param0->battleCtx, param1, BattleSystem_BattlerSlot(param0, param1), 1);
    v0.unk_01_3 = param0->battleCtx->battleMons[param1].formNum;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = BattleMon_Get(param0->battleCtx, param1, 6 + v1, NULL);
        v0.unk_14[v1] = BattleMon_Get(param0->battleCtx, param1, 31 + v1, NULL);
        v0.unk_1C[v1] = BattleMon_Get(param0->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(param0->battleCtx, param1, 45, &v0.unk_24);
    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C168));
}

void BattleIO_ShowEncounter (BattleSystem * param0, int param1)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 3;
    v0.unk_01_0 = param0->battleCtx->battleMons[param1].gender;
    v0.unk_01_2 = param0->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = param0->battleCtx->battleMons[param1].species;
    v0.unk_04 = param0->battleCtx->battleMons[param1].personality;
    v0.unk_08 = Battler_CryModulation(param0->battleCtx, param1, BattleSystem_BattlerSlot(param0, param1), 1);
    v0.unk_0C = param0->battleCtx->selectedPartySlot[param1];
    v0.unk_01_3 = param0->battleCtx->battleMons[param1].formNum;
    v0.unk_10 = param0->battleCtx->battleMons[param1].capturedBall;
    v0.unk_48 = param0->battleCtx->selectedPartySlot[BattleSystem_Partner(param0, param1)];

    ov16_0223EF2C(param0, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = BattleMon_Get(param0->battleCtx, param1, 6 + v1, NULL);
        v0.unk_20[v1] = BattleMon_Get(param0->battleCtx, param1, 31 + v1, NULL);
        v0.unk_28[v1] = BattleMon_Get(param0->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(param0->battleCtx, param1, 45, &v0.unk_30);
    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void BattleIO_ShowPokemon (BattleSystem * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 4;

    if (param0->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_01_0 = param0->battleCtx->battleMons[param1].moveEffectsData.transformedGender;
        v0.unk_04 = param0->battleCtx->battleMons[param1].moveEffectsData.transformedPID;
    } else {
        v0.unk_01_0 = param0->battleCtx->battleMons[param1].gender;
        v0.unk_04 = param0->battleCtx->battleMons[param1].personality;
    }

    v0.unk_01_2 = param0->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = param0->battleCtx->battleMons[param1].species;
    v0.unk_08 = Battler_CryModulation(param0->battleCtx, param1, BattleSystem_BattlerSlot(param0, param1), 0);
    v0.unk_0C = param0->battleCtx->selectedPartySlot[param1];
    v0.unk_01_3 = param0->battleCtx->battleMons[param1].formNum;

    if (param2) {
        v0.unk_10 = param2;
    } else {
        v0.unk_10 = param0->battleCtx->battleMons[param1].capturedBall;
    }

    v0.unk_14 = param3;
    v0.unk_4C = ((param0->battleCtx->battleMons[param1].statusVolatile & 0x1000000) != 0);

    ov16_0223EF2C(param0, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = BattleMon_Get(param0->battleCtx, param1, 6 + v1, NULL);
        v0.unk_20[v1] = BattleMon_Get(param0->battleCtx, param1, 31 + v1, NULL);
        v0.unk_28[v1] = BattleMon_Get(param0->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(param0->battleCtx, param1, 45, &v0.unk_30);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_50[v1] = param0->battleCtx->battleMons[v1].species;
        v0.unk_5C[v1] = param0->battleCtx->battleMons[v1].isShiny;
        v0.unk_60[v1] = param0->battleCtx->battleMons[v1].formNum;

        if (param0->battleCtx->battleMons[v1].statusVolatile & 0x200000) {
            v0.unk_58[v1] = param0->battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_64[v1] = param0->battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_58[v1] = param0->battleCtx->battleMons[v1].gender;
            v0.unk_64[v1] = param0->battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void BattleIO_ReturnPokemon (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_02264EF8 v0;
    int v1;
    int v2;
    int v3;

    if (param0->battlers[param2]->battlerType & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = param0->battleCtx->battleMons[param2].formNum;
    v0.unk_00 = 5;

    if (param0->battleCtx->battleMons[param2].statusVolatile & 0x200000) {
        v0.unk_01 = LoadPokemonSpriteYOffset(param0->battleCtx->battleMons[param2].species, param0->battleCtx->battleMons[param2].moveEffectsData.transformedGender, v1, v2, param0->battleCtx->battleMons[param2].moveEffectsData.transformedPID);
    } else {
        v0.unk_01 = LoadPokemonSpriteYOffset(param0->battleCtx->battleMons[param2].species, param0->battleCtx->battleMons[param2].gender, v1, v2, param0->battleCtx->battleMons[param2].personality);
    }

    v0.unk_02 = param0->battleCtx->battleMons[param2].capturedBall;
    v0.unk_04 = ((param0->battleCtx->battleMons[param2].statusVolatile & 0x1000000) != 0);

    for (v3 = 0; v3 < 4; v3++) {
        v0.unk_08[v3] = param1->battleMons[v3].species;
        v0.unk_14[v3] = param1->battleMons[v3].isShiny;
        v0.unk_18[v3] = param1->battleMons[v3].formNum;

        if (param1->battleMons[v3].statusVolatile & 0x200000) {
            v0.unk_10[v3] = param1->battleMons[v3].moveEffectsData.transformedGender;
            v0.unk_1C[v3] = param1->battleMons[v3].moveEffectsData.transformedPID;
        } else {
            v0.unk_10[v3] = param1->battleMons[v3].gender;
            v0.unk_1C[v3] = param1->battleMons[v3].personality;
        }
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02264EF8));
}

void ov16_02265050 (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_02265050 v0;
    int v1;
    int v2;

    if (param0->battlers[param1]->battlerType & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = param0->battleCtx->battleMons[param1].formNum;
    v0.unk_00 = 6;

    if (param0->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_01 = LoadPokemonSpriteYOffset(param0->battleCtx->battleMons[param1].species, param0->battleCtx->battleMons[param1].moveEffectsData.transformedGender, v1, v2, param0->battleCtx->battleMons[param1].moveEffectsData.transformedPID);
    } else {
        v0.unk_01 = LoadPokemonSpriteYOffset(param0->battleCtx->battleMons[param1].species, param0->battleCtx->battleMons[param1].gender, v1, v2, param0->battleCtx->battleMons[param1].personality);
    }

    v0.unk_02 = param2;
    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265050));
}

void BattleIO_DeletePokemon (BattleSystem * param0, int param1)
{
    int v0 = 7;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_SetTrainerEncounter (BattleSystem * param0, int param1)
{
    UnkStruct_ov16_02265124 v0;

    v0.unk_00 = 8;
    v0.unk_02 = param0->trainers[param1].class;
    v0.unk_01 = param0->unk_A8[param1];

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265124));
}

void BattleIO_ThrowTrainerBall (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_02265154 v0;

    v0.unk_00 = 9;
    v0.unk_01 = param2;
    v0.unk_02 = param0->battleCtx->selectedPartySlot[BattleSystem_Partner(param0, param1)];

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02265154));
}

void BattleIO_SlideTrainerOut (BattleSystem * param0, int param1)
{
    int v0 = 10;

    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_SlideTrainerIn (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_022651A8 v0;

    v0.unk_00 = 11;
    v0.unk_02 = param0->trainers[param1].class;
    v0.unk_01 = param0->unk_A8[param1];
    v0.unk_04 = param2;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022651A8));
}

void BattleIO_SlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay)
{
    HealthbarData healthbar;

    Pokemon *mon = BattleSystem_PartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    healthbar.command = BTLIOCMD_SLIDE_HEALTHBAR_IN;
    healthbar.level = battleCtx->battleMons[battler].level;
    healthbar.curHP = battleCtx->battleMons[battler].curHP;
    healthbar.maxHP = battleCtx->battleMons[battler].maxHP;
    healthbar.selectedPartySlot = battleCtx->selectedPartySlot[battler];
    healthbar.status = Battler_StatusCondition(battleCtx, battler);

    if ((battleCtx->battleMons[battler].species == SPECIES_NIDORAN_F || battleCtx->battleMons[battler].species == SPECIES_NIDORAN_M)
            && battleCtx->battleMons[battler].hasNickname == FALSE) {
        healthbar.gender = GENDER_NONE; // don't show the Gender marker for base-Nidoran forms
    } else {
        healthbar.gender = battleCtx->battleMons[battler].gender;
    }

    healthbar.expFromLastLevel = battleCtx->battleMons[battler].exp - Pokemon_GetSpeciesBaseExpAt(species, level);
    healthbar.expToNextLevel = Pokemon_GetSpeciesBaseExpAt(species, level + 1) - Pokemon_GetSpeciesBaseExpAt(species, level);
    healthbar.speciesCaught = BattleSystem_CaughtSpecies(battleSys, battleCtx->battleMons[battler].species);
    healthbar.numSafariBalls = BattleSystem_NumSafariBalls(battleSys);
    healthbar.delay = delay;

    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &healthbar, sizeof(HealthbarData));
}

void BattleIO_SlideHealthbarOut(BattleSystem *battleSys, int battler)
{
    int command = BTLIOCMD_SLIDE_HEALTHBAR_OUT;
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &command, sizeof(int));
}

void BattleIO_SetCommandSelection (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    UnkStruct_ov16_0225C260 v0;
    int v1;
    int v2;
    int v3, v4;
    int v5;
    int v6;
    Party * v7;
    Pokemon * v8;
    u32 v9;
    int v10;

    MI_CpuClearFast(&v0, sizeof(UnkStruct_ov16_0225C260));
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    v10 = 0;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(battleSys); v1++) {
        if (Battler_CanPickCommand(battleCtx, v1) == 0) {
            v10 |= FlagIndex(v1);
        }
    }

    v0.unk_00 = 14;
    v0.unk_01 = partySlot;
    v0.unk_29 = battleCtx->battlersSwitchingMask | v10;

    v9 = BattleSystem_BattleType(battleSys);

    if ((v9 & 0x2) && ((v9 & 0x8) == 0)) {
        v2 = battler & 1;
    } else {
        v2 = battler;
    }

    v7 = BattleSystem_Party(battleSys, v2);
    v6 = 0;

    for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
        v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
        v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL);

        if ((v5) && (v5 != SPECIES_EGG)) {
            if (Pokemon_GetValue(v8, MON_DATA_CURRENT_HP, NULL)) {
                if (Pokemon_GetValue(v8, MON_DATA_STATUS_CONDITION, NULL)) {
                    v0.unk_08[0][v6] = 3;
                } else {
                    v0.unk_08[0][v6] = 1;
                }
            } else {
                v0.unk_08[0][v6] = 2;
            }

            if (v9 & (0x4 | 0x20 | 0x80 | 0x200)) {
                v0.unk_02[v6] = 0;
            } else {
                v0.unk_02[v6] = Pokemon_GetPercentToNextLevel(v8);
            }

            v6++;
        }
    }

    if (((v9 & (0x4 | 0x8)) == (0x4 | 0x8)) || ((v9 & 0x10)) || ((v9 == ((0x2 | 0x1) | 0x8 | 0x40))) || ((v9 == (((0x2 | 0x1) | 0x8 | 0x40) | 0x80)))) {
        if (Battler_Side(battleSys, battler)) {
            v2 = BattleSystem_BattlerOfType(battleSys, 2);
        } else {
            v2 = BattleSystem_BattlerOfType(battleSys, 3);
        }

        v7 = BattleSystem_Party(battleSys, v2);
        v6 = 0;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_CURRENT_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS_CONDITION, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }

        if (Battler_Side(battleSys, battler)) {
            v2 = BattleSystem_BattlerOfType(battleSys, 4);
        } else {
            v2 = BattleSystem_BattlerOfType(battleSys, 5);
        }

        v7 = BattleSystem_Party(battleSys, v2);
        v6 = 3;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_CURRENT_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS_CONDITION, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }
    } else {
        v2 = BattleSystem_EnemyInSlot(battleSys, battler, 2);
        v7 = BattleSystem_Party(battleSys, v2);
        v6 = 0;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_CURRENT_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS_CONDITION, NULL)) {
                        v0.unk_08[1][v6] = 3;
                    } else {
                        v0.unk_08[1][v6] = 1;
                    }
                } else {
                    v0.unk_08[1][v6] = 2;
                }

                v6++;
            }
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_14[v1] = BattleMon_Get(battleCtx, battler, 6 + v1, NULL);
        v0.unk_1C[v1] = BattleMon_Get(battleCtx, battler, 31 + v1, NULL);
        v0.unk_20[v1] = BattleMon_Get(battleCtx, battler, 39 + v1, NULL);
    }

    v0.unk_24 = battleCtx->battleMons[battler].curHP;
    v0.unk_26 = battleCtx->battleMons[battler].maxHP;

    if (v0.unk_24) {
        if (battleCtx->battleMons[battler].status) {
            v0.unk_28 = 3;
        } else {
            v0.unk_28 = 1;
        }
    } else {
        v0.unk_28 = 2;
    }

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C260));
}

void ov16_022656D4 (BattleSystem * param0, int param1, int param2)
{
    SendMessage(param0, 0, param1, &param2, 4);
}

void BattleIO_ShowMoveSelectScreen (BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    UnkStruct_ov16_022656F0 v0;
    v0.unk_00 = 15;
    v0.unk_01 = battleCtx->selectedPartySlot[battler];

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        v0.unk_04[i] = battleCtx->battleMons[battler].moves[i];
        v0.unk_0C[i] = battleCtx->battleMons[battler].ppCur[i];
        v0.unk_10[i] = MoveTable_CalcMaxPP(battleCtx->battleMons[battler].moves[i], battleCtx->battleMons[battler].ppUps[i]);
    }

    v0.unk_02 = BattleSystem_CheckInvalidMoves(battleSys, battleCtx, battler, 0, CHECK_INVALID_ALL);

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_022656F0));
}

void ov16_02265790 (BattleSystem * param0, int param1, int param2)
{
    SendMessage(param0, 0, param1, &param2, 4);
}

void BattleIO_ShowTargetSelection (BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler)
{
    UnkStruct_ov16_0225C29C v0;
    int v1;
    u32 v2;

    BattleIO_ClearBuffer(battleCtx, battler);

    v2 = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 16;
    v0.unk_02 = range;

    if (((v2 & 0x2) == 0) || (v2 & 0x8) || ((v2 & 0x2) && (battler >= 2))) {
        v0.unk_01 = 1;
    } else {
        v0.unk_01 = 0;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (battleCtx->battleMons[v1].curHP) {
            v0.unk_04[v1].unk_04 = battleCtx->battleMons[v1].curHP;
            v0.unk_04[v1].unk_06 = battleCtx->battleMons[v1].maxHP;
            v0.unk_04[v1].unk_01_2 = 1;

            if (((battleCtx->battleMons[v1].species == 29) || (battleCtx->battleMons[v1].species == 32)) && (battleCtx->battleMons[v1].hasNickname == 0)) {
                v0.unk_04[v1].unk_01_0 = 2;
            } else {
                v0.unk_04[v1].unk_01_0 = battleCtx->battleMons[v1].gender;
            }

            v0.unk_04[v1].unk_00 = battleCtx->selectedPartySlot[v1];

            if (battleCtx->battleMons[v1].status) {
                v0.unk_04[v1].unk_02 = 3;
            } else {
                v0.unk_04[v1].unk_02 = 1;
            }
        } else {
            v0.unk_04[v1].unk_01_2 = 0;
            v0.unk_04[v1].unk_02 = 2;
        }
    }

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C29C));
}

void ov16_022658CC (BattleSystem * param0, int param1, int param2)
{
    SendMessage(param0, 0, param1, &param2, 4);
}

void BattleIO_ShowBagScreen (BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    UnkStruct_ov16_0225C2B0 v0;
    int v1, v2;

    BattleIO_ClearBuffer(battleCtx, battler);

    v0.unk_00 = 17;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = battleCtx->selectedPartySlot[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0.unk_08[v1][v2] = battleCtx->partyOrder[v1][v2];
        }

        v0.unk_20[v1] = battleCtx->battleMons[v1].moveEffectsData.embargoTurns;
    }

    if (BattleSystem_BattleType(battleSys) == (0x2 | 0x8 | 0x40)) {
        if (((battleCtx->battlersSwitchingMask & FlagIndex(1)) == 0) && ((battleCtx->battlersSwitchingMask & FlagIndex(3)) == 0)) {
            v0.unk_01 = 1;
            v0.unk_02 = 0;
            v0.unk_03 = 0;
        } else if ((battleCtx->battlersSwitchingMask & FlagIndex(1)) == 0) {
            v0.unk_01 = 0;

            if (battleCtx->battleMons[1].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
                v0.unk_02 = 1;
                v0.unk_03 = 0;
            } else if (battleCtx->battleMons[1].statusVolatile & 0x1000000) {
                v0.unk_02 = 0;
                v0.unk_03 = 1;
            } else {
                v0.unk_02 = 0;
                v0.unk_03 = 0;
            }
        } else {
            v0.unk_01 = 0;

            if (battleCtx->battleMons[3].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
                v0.unk_02 = 1;
                v0.unk_03 = 0;
            } else if (battleCtx->battleMons[3].statusVolatile & 0x1000000) {
                v0.unk_02 = 0;
                v0.unk_03 = 1;
            } else {
                v0.unk_02 = 0;
                v0.unk_03 = 0;
            }
        }
    } else if (BattleSystem_BattleType(battleSys) == (0x0 | 0x0)) {
        v0.unk_01 = 0;

        if (battleCtx->battleMons[1].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) {
            v0.unk_02 = 1;
            v0.unk_03 = 0;
        } else if (battleCtx->battleMons[1].statusVolatile & 0x1000000) {
            v0.unk_02 = 0;
            v0.unk_03 = 1;
        } else {
            v0.unk_02 = 0;
            v0.unk_03 = 0;
        }
    } else {
        v0.unk_01 = 0;
        v0.unk_02 = 0;
        v0.unk_03 = 0;
    }

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C2B0));
}

void ov16_02265A70 (BattleSystem * param0, int param1, BattleItemUse param2)
{
    SendMessage(param0, 0, param1, &param2, sizeof(BattleItemUse));
}

void BattleIO_ShowPartyScreen (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles)
{
    UnkStruct_ov16_0225C2C4 v0;
    int v1, v2;

    BattleIO_ClearBuffer(battleCtx, battler);

    v0.unk_00 = 18;
    v0.unk_01 = battler;
    v0.unk_02 = listMode;
    v0.unk_20 = canSwitch;
    v0.unk_03 = doubles;
    v0.unk_24 = battleCtx->battlersSwitchingMask;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = battleCtx->selectedPartySlot[v1];

        for (v2 = 0; v2 < 6; v2++) {
            v0.unk_08[v1][v2] = battleCtx->partyOrder[v1][v2];
        }
    }

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C2C4));
}

void ov16_02265B10 (BattleSystem * param0, int param1, int param2)
{
    SendMessage(param0, 0, param1, &param2, 4);
}

void BattleIO_ShowYesNoScreen (BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname)
{
    UnkStruct_ov16_0225C2D8 v0;

    BattleIO_ClearBuffer(battleCtx, battler);

    v0.unk_00 = 19;
    v0.unk_02 = promptMsg;
    v0.unk_01 = yesnoType;
    v0.unk_04 = move;
    v0.unk_08 = nickname;

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C2D8));
}

void BattleIO_PrintAttackMessage (BattleSystem * param0, BattleContext * param1)
{
    UnkStruct_ov16_0225C2EC v0;

    v0.unk_00 = 20;
    v0.unk_01 = param1->selectedPartySlot[param1->attacker];
    v0.unk_02 = param1->moveCur;

    SendMessage(param0, 1, param1->attacker, &v0, sizeof(UnkStruct_ov16_0225C2EC));
}

void BattleIO_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg)
{
    battleMsg->commandCode = BTLIOCMD_PRINT_MESSAGE;
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battleCtx->attacker, battleMsg, sizeof(BattleMessage));
}

void BattleIO_PlayMoveAnimation (BattleSystem * param0, BattleContext * param1, u16 param2)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 0, NULL, param1->attacker, param1->defender, param2);
    SendMessage(param0, 1, param1->attacker, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveAnimationA2D (BattleSystem * param0, BattleContext * param1, u16 param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 0, NULL, param3, param4, param2);
    SendMessage(param0, 1, param3, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_FlickerBattler (BattleSystem * param0, int param1, u32 param2)
{
    int v0 = 23;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_UpdateHPGauge (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_0225C35C v0;
    Pokemon * v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(param0, param2, param1->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = 24;
    v0.unk_01 = param1->battleMons[param2].level;
    v0.unk_02 = param1->battleMons[param2].curHP;
    v0.unk_04 = param1->battleMons[param2].maxHP;
    v0.unk_08 = param1->hpCalcTemp;

    if (((param1->battleMons[param2].species == 29) || (param1->battleMons[param2].species == 32)) && (param1->battleMons[param2].hasNickname == 0)) {
        v0.unk_07 = 2;
    } else {
        v0.unk_07 = param1->battleMons[param2].gender;
    }

    v0.unk_0C = param1->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_10 = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C35C));
}

void BattleIO_UpdateExpGauge (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C370 v0;
    Pokemon * v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(param0, param2, param1->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = 25;
    v0.unk_04 = param3;
    v0.unk_08 = param1->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_0C = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C370));
}

void BattleIO_PlayFaintingSequence (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_0225C384 v0;
    int v1;

    v0.unk_00 = 26;
    v0.unk_02 = param1->battleMons[param2].species;
    v0.unk_08 = param1->battleMons[param2].formNum;
    v0.unk_09 = ((param1->battleMons[param2].statusVolatile & 0x1000000) != 0);
    v0.unk_0A = ((param1->battleMons[param2].statusVolatile & 0x200000) != 0);

    if (param1->battleMons[param2].statusVolatile & 0x200000) {
        v0.unk_01 = param1->battleMons[param2].moveEffectsData.transformedGender;
        v0.unk_04 = param1->battleMons[param2].moveEffectsData.transformedPID;
    } else {
        v0.unk_01 = param1->battleMons[param2].gender;
        v0.unk_04 = param1->battleMons[param2].personality;
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = param1->battleMons[v1].species;
        v0.unk_18[v1] = param1->battleMons[v1].isShiny;
        v0.unk_1C[v1] = param1->battleMons[v1].formNum;

        if (param1->battleMons[v1].statusVolatile & 0x200000) {
            v0.unk_14[v1] = param1->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_20[v1] = param1->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_14[v1] = param1->battleMons[v1].gender;
            v0.unk_20[v1] = param1->battleMons[v1].personality;
        }
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C384));
}

void BattleIO_PlaySound (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C398 v0;

    v0.unk_00 = 27;
    v0.unk_04 = param2;

    SendMessage(param0, 1, param3, &v0, sizeof(UnkStruct_ov16_0225C398));
}

void BattleIO_FadeOut (BattleSystem * param0, BattleContext * param1)
{
    int v0 = 28;

    SendMessage(param0, 1, 0, &v0, 4);
}

void BattleIO_ToggleVanish (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3BC v0;
    int v1;

    v0.unk_00 = 29;
    v0.unk_01 = param2;
    v0.unk_02 = ((param0->battleCtx->battleMons[param1].statusVolatile & 0x1000000) != 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = param0->battleCtx->battleMons[v1].species;
        v0.unk_10[v1] = param0->battleCtx->battleMons[v1].isShiny;
        v0.unk_14[v1] = param0->battleCtx->battleMons[v1].formNum;

        if (param0->battleCtx->battleMons[v1].statusVolatile & 0x200000) {
            v0.unk_0C[v1] = param0->battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_18[v1] = param0->battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_0C[v1] = param0->battleCtx->battleMons[v1].gender;
            v0.unk_18[v1] = param0->battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3BC));
}

void BattleIO_SetStatusIcon (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3D0 v0;

    v0.unk_00 = 30;
    v0.unk_01 = param2;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3D0));
}

void BattleIO_TrainerMessage (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_0225C3E4 v0;

    v0.unk_00 = 31;
    v0.unk_01 = param2;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3E4));
}

void BattleIO_PlayStatusEffect (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 1, param3, param2, param2, NULL);
    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayStatusEffectAToD (BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(param0, param1, &v0, 1, param4, param2, param3, NULL);
    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PrintRecallMessage (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C3F8 v0;

    v0.unk_00 = 32;
    v0.unk_01 = param3;
    v0.unk_02 = (param1->hpTemp - param1->battleMons[1].curHP) * 100 / param1->hpTemp;

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C3F8));
}

void BattleIO_PrintSendOutMessage (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_0225C40C v0;

    v0.unk_00 = 33;
    v0.unk_01 = param3;

    if (param1->battleMons[1].curHP == 0) {
        v0.unk_02 = 1000;
    } else {
        v0.unk_02 = param1->battleMons[1].curHP * 1000 / param1->battleMons[1].maxHP;
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C40C));
}

void BattleIO_PrintBattleStartMessage (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0 = 34;

    SendMessage(param0, 1, param2, &v0, 4);
}

void BattleIO_PrintLeadMonMessage (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_0225C430 v0;
    int v1;

    v0.unk_00 = 35;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(param0); v1++) {
        v0.unk_04[v1] = param1->selectedPartySlot[v1];
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C430));
}

void BattleIO_PlayLevelUpAnimation (BattleSystem * param0, int param1)
{
    int v0 = 36;

    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_SetAlertMessage (BattleSystem *battleSys, int battler, BattleMessage msg)
{
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);


    UnkStruct_ov16_0225C454 v0;
    v0.unk_00 = 37;
    v0.unk_04 = msg;

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C454));
}

void ov16_022661B0 (BattleSystem * param0, int param1)
{
    int v0;

    v0 = 1;
    SendMessage(param0, 0, param1, &v0, 4);
}

void BattleIO_RefreshHPGauge (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_0225C468 v0;
    Pokemon * v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(param0, param2, param1->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = 38;
    v0.unk_01 = param1->battleMons[param2].level;
    v0.unk_02 = param1->battleMons[param2].curHP;
    v0.unk_04 = param1->battleMons[param2].maxHP;
    v0.unk_06 = param1->selectedPartySlot[param2];
    v0.unk_07_0 = Battler_StatusCondition(param1, param2);

    if (((param1->battleMons[param2].species == 29) || (param1->battleMons[param2].species == 32)) && (param1->battleMons[param2].hasNickname == 0)) {
        v0.unk_07_5 = 2;
    } else {
        v0.unk_07_5 = param1->battleMons[param2].gender;
    }

    v0.unk_08 = param1->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_0C = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_07_7 = BattleSystem_CaughtSpecies(param0, param1->battleMons[param2].species);
    v0.unk_10 = BattleSystem_NumSafariBalls(param0);

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C468));
}

void BattleIO_UpdatePartyMon (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_022662FC v0;
    int v1;

    v0.unk_00 = 39;
    v0.unk_01_0 = param1->selectedPartySlot[param2];
    v0.unk_01_4 = param1->battleMons[param2].moveEffectsData.mimickedMoveSlot;
    v0.unk_02 = param1->battleMons[param2].curHP;
    v0.unk_0C = param1->battleMons[param2].heldItem;
    v0.unk_08 = param1->sideConditions[Battler_Side(param0, param2)].knockedOffItemsMask;
    v0.unk_1C = param1->battleMons[param2].formNum;
    v0.unk_20 = param1->battleMons[param2].ability;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0E[v1] = param1->battleMons[param2].moves[v1];
        v0.unk_12[v1] = param1->battleMons[param2].ppCur[v1];
    }

    if (v0.unk_02) {
        v0.unk_04 = (param1->battleMons[param2].status & (0xf00 ^ 0xffffffff));
        v0.unk_18 = param1->battleMons[param2].statusVolatile;
    } else {
        v0.unk_04 = 0;
        v0.unk_18 = param1->battleMons[param2].statusVolatile;
    }

    if (param1->battleStatusMask2 & 0x4000000) {
        v0.unk_26 = 1;
        param1->battleStatusMask2 &= (0x4000000 ^ 0xffffffff);
    } else {
        v0.unk_26 = 0;
    }

    if (param1->battleStatusMask2 & 0x8000000) {
        v0.unk_24 = 1;
        v0.unk_26 = 1;
        param1->battleStatusMask2 &= (0x8000000 ^ 0xffffffff);
    } else {
        v0.unk_24 = 0;
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_022662FC));
}

void ov16_02266460 (BattleSystem * param0, int param1)
{
    int v0 = 40;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_StopGaugeAnimation (BattleSystem *battleSys, int battler)
{
    int v0 = 41;
    SendMessage(battleSys, 1, battler, &v0, 4);
}

void BattleIO_RefreshPartyStatus (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    UnkStruct_ov16_02266498 v0;

    v0.unk_00 = 42;
    v0.unk_02 = param3;
    v0.unk_01 = param1->battleMons[param2].ability;

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_ForgetMove (BattleSystem * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C65C v0;

    BattleIO_ClearBuffer(BattleSystem_Context(param0), param1);

    v0.unk_00 = 43;
    v0.unk_02 = param2;
    v0.unk_01 = param3;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_SetMosaic (BattleSystem * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_022664F8 v0;

    v0.unk_00 = 44;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022664F8));
}

void BattleIO_ChangeWeatherForm (BattleSystem * param0, int param1)
{
    UnkStruct_ov16_0225C684 v0;

    v0.unk_00 = 45;
    v0.unk_02 = param0->battleCtx->battleMons[param1].species;
    v0.unk_05 = param0->battleCtx->battleMons[param1].isShiny;

    if (param0->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_04 = param0->battleCtx->battleMons[param1].moveEffectsData.transformedGender;
        v0.unk_08 = param0->battleCtx->battleMons[param1].moveEffectsData.transformedPID;
    } else {
        v0.unk_04 = param0->battleCtx->battleMons[param1].gender;
        v0.unk_08 = param0->battleCtx->battleMons[param1].personality;
    }

    v0.unk_01 = param0->battleCtx->battleMons[param1].formNum;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C684));
}

void BattleIO_UpdateBG (BattleSystem * param0, int param1)
{
    int v0 = 46;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_ClearTouchScreen (BattleSystem *battleSys, int battler)
{
    int v0 = 47;
    SendMessage(battleSys, 1, battler, &v0, 4);
}

void BattleIO_ShowBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BTLIOCMD_SHOW_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_HideBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BTLIOCMD_HIDE_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_ShowPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BTLIOCMD_SHOW_PARTY_GAUGE, battler);
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_HidePartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BTLIOCMD_HIDE_PARTY_GAUGE, battler);
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_LoadPartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BTLIOCMD_LOAD_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, NULL, &command, sizeof(int));
}

void BattleIO_FreePartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BTLIOCMD_FREE_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, NULL, &command, sizeof(int));
}

void BattleIO_IncrementRecord (BattleSystem * param0, int param1, int param2, int param3)
{
    UnkStruct_ov16_022666BC v0;

    v0.unk_00 = 54;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_022666BC));
}

void BattleIO_LinkWaitMessage (BattleSystem *battleSys, int battler)
{
    UnkStruct_ov16_0225C988 v0;
    u32 v1 = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 55;
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
        SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C988));
    }
}

void BattleIO_RestoreSprite (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = 56;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = param1->battleMons[v0].species;
        v1.unk_24[v0] = param1->battleMons[v0].isShiny;
        v1.unk_28[v0] = param1->battleMons[v0].formNum;

        if (param1->battleMons[v0].statusVolatile & 0x200000) {
            v1.unk_20[v0] = param1->battleMons[v0].moveEffectsData.transformedGender;
            v1.unk_2C[v0] = param1->battleMons[v0].moveEffectsData.transformedPID;
        } else {
            v1.unk_20[v0] = param1->battleMons[v0].gender;
            v1.unk_2C[v0] = param1->battleMons[v0].personality;
        }
    }

    SendMessage(param0, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_SpriteToOAM (BattleSystem * param0, int param1)
{
    int v0 = 57;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_OAMToSprite (BattleSystem * param0, int param1)
{
    int v0 = 58;
    SendMessage(param0, 1, param1, &v0, 4);
}

void BattleIO_ResultMessage (BattleSystem * param0)
{
    int v0 = 59;
    SendMessage(param0, 1, 0, &v0, 4);
}

void BattleIO_EscapeMessage (BattleSystem * param0, BattleContext * param1)
{
    UnkStruct_ov16_0225C9F0 v0;
    int v1;
    u32 v2 = BattleSystem_BattleType(param0);

    v0.unk_00 = 60;
    v0.unk_01 = 0;
    v0.unk_02 = 0;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(param0); v1++) {
        if (param1->battlerActions[v1][0] == 16) {
            v0.unk_01 |= FlagIndex(v1);
        }
    }

    if ((v2 & 0x4) && (sub_0202F250() == 1) && ((param0->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_0225C9F0));
}

void BattleIO_ForfeitMessage (BattleSystem * param0)
{
    UnkStruct_ov16_0225CA14 v0;
    u32 v1 = BattleSystem_BattleType(param0);

    v0.unk_00 = 61;
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((param0->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_0225CA14));
}

void BattleIO_RefreshSprite (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = 62;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = param1->battleMons[v0].species;
        v1.unk_24[v0] = param1->battleMons[v0].isShiny;
        v1.unk_28[v0] = param1->battleMons[v0].formNum;

        if (param1->battleMons[v0].statusVolatile & 0x200000) {
            v1.unk_20[v0] = param1->battleMons[v0].moveEffectsData.transformedGender;
            v1.unk_2C[v0] = param1->battleMons[v0].moveEffectsData.transformedPID;
        } else {
            v1.unk_20[v0] = param1->battleMons[v0].gender;
            v1.unk_2C[v0] = param1->battleMons[v0].personality;
        }
    }

    SendMessage(param0, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveHitSoundEffect (BattleSystem * param0, BattleContext * param1, int param2)
{
    UnkStruct_ov16_0225CA4C v0;

    v0.unk_00 = 63;

    if (param1->moveStatusFlags & 0x2) {
        v0.unk_01 = 2;
    } else if (param1->moveStatusFlags & 0x4) {
        v0.unk_01 = 1;
    } else {
        v0.unk_01 = 0;
    }

    SendMessage(param0, 1, param2, &v0, sizeof(UnkStruct_ov16_0225CA4C));
}

void BattleIO_PlayMusic (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_0225CA60 v0;

    v0.unk_00 = 64;
    v0.unk_02 = param2;

    SendMessage(param0, 1, param1, &v0, sizeof(UnkStruct_ov16_0225CA60));
}

void BattleIO_SubmitResult (BattleSystem * param0)
{
    UnkStruct_ov16_02266A38 v0;
    u32 v1 = BattleSystem_BattleType(param0);

    v0.unk_00 = 65;
    v0.unk_04 = BattleSystem_ResultMask(param0);
    v0.unk_02 = 0;

    if ((v1 & 0x4) && (sub_0202F250() == 1) && ((param0->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(param0, &v0.unk_08[0]);
        GF_ASSERT(v0.unk_02 <= 28);
    }

    SendMessage(param0, 1, 0, &v0, sizeof(UnkStruct_ov16_02266A38));
}

void BattleIO_ClearMessageBox (BattleSystem * param0)
{
    int v0 = 66;
    SendMessage(param0, 1, 0, &v0, 4);
}

void ClearCommand (BattleSystem * param0, int param1, int param2)
{
    UnkStruct_ov16_02266ABC v0;

    v0.unk_00 = param2;
    v0.unk_01 = CommSys_GetCurNetId();

    SendMessage(param0, 2, param1, &v0, sizeof(UnkStruct_ov16_02266ABC));
}

BOOL ov16_02266AE4 (BattleSystem * param0, void * param1)
{
    u8 * v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 1;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        for (v4 = 0; v4 < v3; v4++) {
            param0->battleCtx->ioBuffer[v2][v4] = v0[v4];
        }
    } else if (v1 == 1) {
        if (param0->battlers[v2]->unk_1A4 == 0) {
            param0->battlers[v2]->unk_1A4 = 1;

            for (v4 = 0; v4 < v3; v4++) {
                param0->battlers[v2]->data[v4] = v0[v4];
            }
        } else {
            v5 = 0;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(param0)) {
                BattleIO_DequeueVal(param0->battleCtx, v7, v2, v6);
            }
        }
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02266B78 (BattleSystem * param0, BattleContext * param1, UnkStruct_ov16_02265BBC * param2, int param3, int param4, int param5, int param6, u16 param7)
{
    int v0;

    param2->unk_00 = 22;
    param2->unk_02 = param7;
    param2->unk_14 = param5;
    param2->unk_16 = param6;
    param2->unk_4C = param3;
    param2->unk_50 = param4;
    param2->unk_54 = BattleSystem_Terrain(param0);

    if (param1 != NULL) {
        param2->unk_04 = param1->damage;

        if (param1->movePower) {
            param2->unk_08 = param1->movePower;
        } else {
            param2->unk_08 = param1->aiContext.moveTable[param7].power;
        }

        param2->unk_0C = param1->battleMons[param5].friendship;

        if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
            param2->unk_10 = param1->fieldConditionsMask;
        } else {
            param2->unk_10 = 0;
        }

        param2->unk_0A = param1->moveEffectChance;
        param2->unk_0E_0 = ((param1->battleMons[param5].statusVolatile & 0x1000000) != 0);
        param2->unk_0E_1 = ((param1->battleMons[param5].statusVolatile & 0x200000) != 0);

        for (v0 = 0; v0 < 4; v0++) {
            param2->unk_18[v0] = param1->battleMons[v0].species;
            param2->unk_24[v0] = param1->battleMons[v0].isShiny;
            param2->unk_28[v0] = param1->battleMons[v0].formNum;
            param2->unk_3C[v0] = param1->battleMons[v0].moveEffectsMask;

            if (param1->battleMons[v0].statusVolatile & 0x200000) {
                param2->unk_20[v0] = param1->battleMons[v0].moveEffectsData.transformedGender;
                param2->unk_2C[v0] = param1->battleMons[v0].moveEffectsData.transformedPID;
            } else {
                param2->unk_20[v0] = param1->battleMons[v0].gender;
                param2->unk_2C[v0] = param1->battleMons[v0].personality;
            }
        }
    }
}

static inline void PartyGaugeData_Fill(BattleContext *battleCtx, PartyGaugeData *partyGauge, Party *party, int battler, int slot)
{
    for (int i = 0; i < Party_GetCurrentCount(party); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battler][i]);
        int species = Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL);

        if (species && species != SPECIES_EGG) {
            if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL)) {
                if (Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL)) {
                    partyGauge->status[slot] = BALL_STATUS_HAS_STATUS_CONDITION;
                } else {
                    partyGauge->status[slot] = BALL_STATUS_MON_ALIVE;
                }
            } else {
                partyGauge->status[slot] = BALL_STATUS_MON_FAINTED;
            }

            slot++;
        }
    }
}

static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler)
{
    MI_CpuClearFast(partyGauge, sizeof(PartyGaugeData));
    u32 battleType = BattleSystem_BattleType(battleSys);
    partyGauge->command = command;

    // must make declarations here to match
    int battler1, battler2;
    Party *party;
    
    if ((battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2) // 2vs2 link battle
            || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, battler)) // either of the two opponents on the enemy side
            || ((battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) && Battler_Side(battleSys, battler)) // either of the two opponents on the enemy side
            || battleType == BATTLE_TYPE_FRONTIER_WITH_AI_PARTNER) { // frontier, AI partner
        if (BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_PLAYER_SLOT_2
                || BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_ENEMY_SLOT_2) {
            battler1 = battler;
            battler2 = BattleSystem_Partner(battleSys, battler);
        } else {
            battler1 = BattleSystem_Partner(battleSys, battler);
            battler2 = battler;
        }

        party = BattleSystem_Party(battleSys, battler1);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler1, 0);

        party = BattleSystem_Party(battleSys, battler2);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler2, 3);
    } else {
        if ((battleType & BATTLE_TYPE_DOUBLES) && (battleType & BATTLE_TYPE_2vs2) == FALSE) {
            battler = battler & 1;
        } else {
            battler = battler;
        }

        party = BattleSystem_Party(battleSys, battler);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler, 0);
    }
}
