#include "constants/battle/battle_io.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "constants/species.h"
#include "generated/genders.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_io.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0207A81C.h"

#include "battle/battle_context.h"
#include "battle/battle_io.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225BFFC_t.h"
#include "battle/struct_ov16_0225C168.h"
#include "battle/struct_ov16_0225C17C.h"
#include "battle/struct_ov16_0225C260.h"
#include "battle/struct_ov16_0225C29C.h"
#include "battle/struct_ov16_0225C2B0.h"
#include "battle/struct_ov16_0225C2C4.h"
#include "battle/struct_ov16_0225C2D8.h"
#include "battle/struct_ov16_0225C2EC.h"
#include "battle/struct_ov16_0225C35C.h"
#include "battle/struct_ov16_0225C370.h"
#include "battle/struct_ov16_0225C384.h"
#include "battle/struct_ov16_0225C398.h"
#include "battle/struct_ov16_0225C3BC.h"
#include "battle/struct_ov16_0225C3D0.h"
#include "battle/struct_ov16_0225C3E4.h"
#include "battle/struct_ov16_0225C3F8.h"
#include "battle/struct_ov16_0225C40C.h"
#include "battle/struct_ov16_0225C430.h"
#include "battle/struct_ov16_0225C454.h"
#include "battle/struct_ov16_0225C468.h"
#include "battle/struct_ov16_0225C65C.h"
#include "battle/struct_ov16_0225C684.h"
#include "battle/struct_ov16_0225C988.h"
#include "battle/struct_ov16_0225C9F0.h"
#include "battle/struct_ov16_0225CA14.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_02264A8C.h"
#include "battle/struct_ov16_02264EF8.h"
#include "battle/struct_ov16_02265050.h"
#include "battle/struct_ov16_02265124.h"
#include "battle/struct_ov16_02265154.h"
#include "battle/struct_ov16_022651A8.h"
#include "battle/struct_ov16_022656F0.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022662FC.h"
#include "battle/struct_ov16_02266498.h"
#include "battle/struct_ov16_022664F8.h"
#include "battle/struct_ov16_022666BC.h"
#include "battle/struct_ov16_02266A38.h"
#include "battle/struct_ov16_02266ABC.h"

#include "communication_system.h"
#include "flags.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0202F1D4.h"
#include "unk_0207A6DC.h"

static void ov16_0226485C(BattleSystem *battleSys, int param1, int param2, void *param3, u8 param4);
static void SendMessage(BattleSystem *battleSys, int recipient, int message, void *body, u8 bodySize);
static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler);

static void ov16_0226485C(BattleSystem *battleSys, int param1, int param2, void *param3, u8 param4)
{
    int v0;
    UnkStruct_0207A81C v1;
    u8 *v2;
    u8 *v3;
    u16 *v4;
    u16 *v5;

    if (param1 == 1) {
        v3 = ov16_0223E074(battleSys);
        v4 = ov16_0223E0B0(battleSys);
        v5 = ov16_0223E0BC(battleSys);
    } else {
        v3 = ov16_0223E06C(battleSys);
        v4 = ov16_0223E08C(battleSys);
        v5 = ov16_0223E098(battleSys);
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

static BOOL ov16_022648F4(BattleSystem *battleSys, void *param1)
{
    u8 *v0 = (u8 *)param1;
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
        if (battleSys->battleCtx->ioBuffer[v2][0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battleCtx->ioBuffer[v2][v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 1) {
        if (battleSys->battlers[v2]->data[0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battlers[v2]->data[v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(battleSys)) {
                BattleIO_DequeueVal(battleSys->battleCtx, v7, v2, v6);
            }
        }
        v5 = 1;
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02264988(BattleSystem *battleSys, int param1)
{
    u8 *v0;
    u16 *v1;
    u16 *v2;
    u16 *v3;
    int v4;

    if (param1 == 1) {
        v0 = ov16_0223E074(battleSys);
        v1 = ov16_0223E0A4(battleSys);
        v2 = ov16_0223E0B0(battleSys);
        v3 = ov16_0223E0BC(battleSys);
    } else {
        v0 = ov16_0223E06C(battleSys);
        v1 = ov16_0223E080(battleSys);
        v2 = ov16_0223E08C(battleSys);
        v3 = ov16_0223E098(battleSys);
    }

    if (v1[0] == v2[0]) {
        return;
    }

    if (v1[0] == v3[0]) {
        v1[0] = 0;
        v3[0] = 0;
    }

    if (ov16_022648F4(battleSys, (void *)&v0[v1[0]]) == 1) {
        v4 = sizeof(UnkStruct_0207A81C) + (v0[v1[0] + 2] | (v0[v1[0] + 3] << 8));
        v1[0] += v4;
    }
}

static void SendMessage(BattleSystem *battleSys, int recipient, int message, void *body, u8 bodySize)
{
    u8 *data = body;

    if ((battleSys->battleType & BATTLE_TYPE_LINK) && (battleSys->battleStatusMask & BATTLE_TYPE_TAG) == FALSE) {
        if (recipient == 1) {
            for (int i = 0; i < CommSys_ConnectedCount(); i++) {
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

void BattleIO_SetupBattleUI(BattleSystem *battleSys, int param1)
{
    UnkStruct_ov16_02264A8C v0;

    v0.unk_00 = 1;
    v0.unk_04 = ov16_0223F4E8(battleSys);

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_02264A8C));
}

void BattleIO_SetEncounter(BattleSystem *battleSys, int param1)
{
    UnkStruct_ov16_0225C168 v0;
    int v1;

    v0.unk_00 = 2;
    v0.unk_01_0 = battleSys->battleCtx->battleMons[param1].gender;
    v0.unk_01_2 = battleSys->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = battleSys->battleCtx->battleMons[param1].species;
    v0.unk_04 = battleSys->battleCtx->battleMons[param1].personality;
    v0.unk_08 = Battler_CryModulation(battleSys->battleCtx, param1, BattleSystem_BattlerSlot(battleSys, param1), 1);
    v0.unk_01_3 = battleSys->battleCtx->battleMons[param1].formNum;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = BattleMon_Get(battleSys->battleCtx, param1, 6 + v1, NULL);
        v0.unk_14[v1] = BattleMon_Get(battleSys->battleCtx, param1, 31 + v1, NULL);
        v0.unk_1C[v1] = BattleMon_Get(battleSys->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, param1, 45, &v0.unk_24);
    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C168));
}

void BattleIO_ShowEncounter(BattleSystem *battleSys, int param1)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 3;
    v0.unk_01_0 = battleSys->battleCtx->battleMons[param1].gender;
    v0.unk_01_2 = battleSys->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = battleSys->battleCtx->battleMons[param1].species;
    v0.unk_04 = battleSys->battleCtx->battleMons[param1].personality;
    v0.unk_08 = Battler_CryModulation(battleSys->battleCtx, param1, BattleSystem_BattlerSlot(battleSys, param1), 1);
    v0.unk_0C = battleSys->battleCtx->selectedPartySlot[param1];
    v0.unk_01_3 = battleSys->battleCtx->battleMons[param1].formNum;
    v0.unk_10 = battleSys->battleCtx->battleMons[param1].capturedBall;
    v0.unk_48 = battleSys->battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, param1)];

    ov16_0223EF2C(battleSys, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = BattleMon_Get(battleSys->battleCtx, param1, 6 + v1, NULL);
        v0.unk_20[v1] = BattleMon_Get(battleSys->battleCtx, param1, 31 + v1, NULL);
        v0.unk_28[v1] = BattleMon_Get(battleSys->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, param1, 45, &v0.unk_30);
    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void BattleIO_ShowPokemon(BattleSystem *battleSys, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C17C v0;
    int v1;

    v0.unk_00 = 4;

    if (battleSys->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_01_0 = battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedGender;
        v0.unk_04 = battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedPID;
    } else {
        v0.unk_01_0 = battleSys->battleCtx->battleMons[param1].gender;
        v0.unk_04 = battleSys->battleCtx->battleMons[param1].personality;
    }

    v0.unk_01_2 = battleSys->battleCtx->battleMons[param1].isShiny;
    v0.unk_02 = battleSys->battleCtx->battleMons[param1].species;
    v0.unk_08 = Battler_CryModulation(battleSys->battleCtx, param1, BattleSystem_BattlerSlot(battleSys, param1), 0);
    v0.unk_0C = battleSys->battleCtx->selectedPartySlot[param1];
    v0.unk_01_3 = battleSys->battleCtx->battleMons[param1].formNum;

    if (param2) {
        v0.unk_10 = param2;
    } else {
        v0.unk_10 = battleSys->battleCtx->battleMons[param1].capturedBall;
    }

    v0.unk_14 = param3;
    v0.unk_4C = ((battleSys->battleCtx->battleMons[param1].statusVolatile & 0x1000000) != 0);

    ov16_0223EF2C(battleSys, param1, v0.unk_0C);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_18[v1] = BattleMon_Get(battleSys->battleCtx, param1, 6 + v1, NULL);
        v0.unk_20[v1] = BattleMon_Get(battleSys->battleCtx, param1, 31 + v1, NULL);
        v0.unk_28[v1] = BattleMon_Get(battleSys->battleCtx, param1, 39 + v1, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, param1, 45, &v0.unk_30);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_50[v1] = battleSys->battleCtx->battleMons[v1].species;
        v0.unk_5C[v1] = battleSys->battleCtx->battleMons[v1].isShiny;
        v0.unk_60[v1] = battleSys->battleCtx->battleMons[v1].formNum;

        if (battleSys->battleCtx->battleMons[v1].statusVolatile & 0x200000) {
            v0.unk_58[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_64[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_58[v1] = battleSys->battleCtx->battleMons[v1].gender;
            v0.unk_64[v1] = battleSys->battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C17C));
}

void BattleIO_ReturnPokemon(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    UnkStruct_ov16_02264EF8 v0;
    int v1;
    int v2;
    int v3;

    if (battleSys->battlers[param2]->battlerType & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = battleSys->battleCtx->battleMons[param2].formNum;
    v0.unk_00 = 5;

    if (battleSys->battleCtx->battleMons[param2].statusVolatile & 0x200000) {
        v0.unk_01 = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[param2].species, battleSys->battleCtx->battleMons[param2].moveEffectsData.transformedGender, v1, v2, battleSys->battleCtx->battleMons[param2].moveEffectsData.transformedPID);
    } else {
        v0.unk_01 = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[param2].species, battleSys->battleCtx->battleMons[param2].gender, v1, v2, battleSys->battleCtx->battleMons[param2].personality);
    }

    v0.unk_02 = battleSys->battleCtx->battleMons[param2].capturedBall;
    v0.unk_04 = ((battleSys->battleCtx->battleMons[param2].statusVolatile & 0x1000000) != 0);

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

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_02264EF8));
}

void ov16_02265050(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_02265050 v0;
    int v1;
    int v2;

    if (battleSys->battlers[param1]->battlerType & 0x1) {
        v1 = 2;
    } else {
        v1 = 0;
    }

    v2 = battleSys->battleCtx->battleMons[param1].formNum;
    v0.unk_00 = 6;

    if (battleSys->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_01 = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[param1].species, battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedGender, v1, v2, battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedPID);
    } else {
        v0.unk_01 = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[param1].species, battleSys->battleCtx->battleMons[param1].gender, v1, v2, battleSys->battleCtx->battleMons[param1].personality);
    }

    v0.unk_02 = param2;
    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_02265050));
}

void BattleIO_DeletePokemon(BattleSystem *battleSys, int param1)
{
    int v0 = 7;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_SetTrainerEncounter(BattleSystem *battleSys, int param1)
{
    UnkStruct_ov16_02265124 v0;

    v0.unk_00 = 8;
    v0.unk_02 = battleSys->trainers[param1].header.trainerType;
    v0.unk_01 = battleSys->unk_A8[param1];

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_02265124));
}

void BattleIO_ThrowTrainerBall(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_02265154 v0;

    v0.unk_00 = 9;
    v0.unk_01 = param2;
    v0.unk_02 = battleSys->battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, param1)];

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_02265154));
}

void BattleIO_SlideTrainerOut(BattleSystem *battleSys, int param1)
{
    int v0 = 10;

    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_SlideTrainerIn(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_022651A8 v0;

    v0.unk_00 = 11;
    v0.unk_02 = battleSys->trainers[param1].header.trainerType;
    v0.unk_01 = battleSys->unk_A8[param1];
    v0.unk_04 = param2;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_022651A8));
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

void BattleIO_SetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    UnkStruct_ov16_0225C260 v0;
    int v1;
    int v2;
    int v3, v4;
    int v5;
    int v6;
    Party *v7;
    Pokemon *v8;
    u32 battleType;
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

    battleType = BattleSystem_BattleType(battleSys);

    if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
        v2 = battler & 1;
    } else {
        v2 = battler;
    }

    v7 = BattleSystem_Party(battleSys, v2);
    v6 = 0;

    for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
        v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
        v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_OR_EGG, NULL);

        if ((v5) && (v5 != SPECIES_EGG)) {
            if (Pokemon_GetValue(v8, MON_DATA_HP, NULL)) {
                if (Pokemon_GetValue(v8, MON_DATA_STATUS, NULL)) {
                    v0.unk_08[0][v6] = 3;
                } else {
                    v0.unk_08[0][v6] = 1;
                }
            } else {
                v0.unk_08[0][v6] = 2;
            }

            if (battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_SAFARI | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_PAL_PARK)) {
                v0.unk_02[v6] = 0;
            } else {
                v0.unk_02[v6] = Pokemon_GetPercentToNextLevel(v8);
            }

            v6++;
        }
    }

    if (((battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2))
        || (battleType & BATTLE_TYPE_TAG)
        || (battleType == (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI))
        || (battleType == ((BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI) | BATTLE_TYPE_FRONTIER))) {
        if (Battler_Side(battleSys, battler)) {
            v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        } else {
            v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        }

        v7 = BattleSystem_Party(battleSys, v2);
        v6 = 0;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS, NULL)) {
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
            v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            v2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        }

        v7 = BattleSystem_Party(battleSys, v2);
        v6 = 3;

        for (v1 = 0; v1 < Party_GetCurrentCount(v7); v1++) {
            v8 = Party_GetPokemonBySlotIndex(v7, battleCtx->partyOrder[v2][v1]);
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS, NULL)) {
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
            v5 = Pokemon_GetValue(v8, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((v5) && (v5 != SPECIES_EGG)) {
                if (Pokemon_GetValue(v8, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(v8, MON_DATA_STATUS, NULL)) {
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

void ov16_022656D4(BattleSystem *battleSys, int param1, int param2)
{
    SendMessage(battleSys, 0, param1, &param2, 4);
}

void BattleIO_ShowMoveSelectScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
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

void ov16_02265790(BattleSystem *battleSys, int param1, int param2)
{
    SendMessage(battleSys, 0, param1, &param2, 4);
}

void BattleIO_ShowTargetSelection(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler)
{
    UnkStruct_ov16_0225C29C v0;
    int v1;
    u32 battleType;

    BattleIO_ClearBuffer(battleCtx, battler);

    battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 16;
    v0.unk_02 = range;

    if (((battleType & BATTLE_TYPE_DOUBLES) == FALSE) || (battleType & BATTLE_TYPE_2vs2) || ((battleType & BATTLE_TYPE_DOUBLES) && (battler >= 2))) {
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

void ov16_022658CC(BattleSystem *battleSys, int param1, int param2)
{
    SendMessage(battleSys, 0, param1, &param2, 4);
}

void BattleIO_ShowBagScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
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

    if (BattleSystem_BattleType(battleSys) == BATTLE_TYPE_AI_PARTNER) {
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
    } else if (BattleSystem_BattleType(battleSys) == (BATTLE_TYPE_SINGLES | BATTLE_TYPE_WILD_MON)) { // Was (0x0 | 0x0). Is this what they intended?
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

void ov16_02265A70(BattleSystem *battleSys, int param1, BattleItemUse param2)
{
    SendMessage(battleSys, 0, param1, &param2, sizeof(BattleItemUse));
}

void BattleIO_ShowPartyScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles)
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

void ov16_02265B10(BattleSystem *battleSys, int param1, int param2)
{
    SendMessage(battleSys, 0, param1, &param2, 4);
}

void BattleIO_ShowYesNoScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname)
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

void BattleIO_PrintAttackMessage(BattleSystem *battleSys, BattleContext *param1)
{
    UnkStruct_ov16_0225C2EC v0;

    v0.unk_00 = 20;
    v0.unk_01 = param1->selectedPartySlot[param1->attacker];
    v0.unk_02 = param1->moveCur;

    SendMessage(battleSys, 1, param1->attacker, &v0, sizeof(UnkStruct_ov16_0225C2EC));
}

void BattleIO_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg)
{
    battleMsg->commandCode = BTLIOCMD_PRINT_MESSAGE;
    SendMessage(battleSys, BTLIO_RECIPIENT_ENQUEUE, battleCtx->attacker, battleMsg, sizeof(BattleMessage));
}

void BattleIO_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *param1, u16 param2)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, param1, &v0, 0, NULL, param1->attacker, param1->defender, param2);
    SendMessage(battleSys, 1, param1->attacker, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *param1, u16 param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, param1, &v0, 0, NULL, param3, param4, param2);
    SendMessage(battleSys, 1, param3, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_FlickerBattler(BattleSystem *battleSys, int param1, u32 param2)
{
    int v0 = 23;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_UpdateHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    UnkStruct_ov16_0225C35C v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, param1->selectedPartySlot[param2]);
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

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C35C));
}

void BattleIO_UpdateExpGauge(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_0225C370 v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, param1->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = 25;
    v0.unk_04 = param3;
    v0.unk_08 = param1->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_0C = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C370));
}

void BattleIO_PlayFaintingSequence(BattleSystem *battleSys, BattleContext *param1, int param2)
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

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C384));
}

void BattleIO_PlaySound(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_0225C398 v0;

    v0.unk_00 = 27;
    v0.unk_04 = param2;

    SendMessage(battleSys, 1, param3, &v0, sizeof(UnkStruct_ov16_0225C398));
}

void BattleIO_FadeOut(BattleSystem *battleSys, BattleContext *param1)
{
    int v0 = 28;

    SendMessage(battleSys, 1, 0, &v0, 4);
}

void BattleIO_ToggleVanish(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_0225C3BC v0;
    int v1;

    v0.unk_00 = 29;
    v0.unk_01 = param2;
    v0.unk_02 = ((battleSys->battleCtx->battleMons[param1].statusVolatile & 0x1000000) != 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = battleSys->battleCtx->battleMons[v1].species;
        v0.unk_10[v1] = battleSys->battleCtx->battleMons[v1].isShiny;
        v0.unk_14[v1] = battleSys->battleCtx->battleMons[v1].formNum;

        if (battleSys->battleCtx->battleMons[v1].statusVolatile & 0x200000) {
            v0.unk_0C[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_18[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_0C[v1] = battleSys->battleCtx->battleMons[v1].gender;
            v0.unk_18[v1] = battleSys->battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3BC));
}

void BattleIO_SetStatusIcon(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_0225C3D0 v0;

    v0.unk_00 = 30;
    v0.unk_01 = param2;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3D0));
}

void BattleIO_TrainerMessage(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_0225C3E4 v0;

    v0.unk_00 = 31;
    v0.unk_01 = param2;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C3E4));
}

void BattleIO_PlayStatusEffect(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, param1, &v0, 1, param3, param2, param2, NULL);
    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *param1, int param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, param1, &v0, 1, param4, param2, param3, NULL);
    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PrintRecallMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_0225C3F8 v0;

    v0.unk_00 = 32;
    v0.unk_01 = param3;
    v0.unk_02 = (param1->hpTemp - param1->battleMons[1].curHP) * 100 / param1->hpTemp;

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C3F8));
}

void BattleIO_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_0225C40C v0;

    v0.unk_00 = 33;
    v0.unk_01 = param3;

    if (param1->battleMons[1].curHP == 0) {
        v0.unk_02 = 1000;
    } else {
        v0.unk_02 = param1->battleMons[1].curHP * 1000 / param1->battleMons[1].maxHP;
    }

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C40C));
}

void BattleIO_PrintBattleStartMessage(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    int v0 = 34;

    SendMessage(battleSys, 1, param2, &v0, 4);
}

void BattleIO_PrintLeadMonMessage(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    UnkStruct_ov16_0225C430 v0;
    int v1;

    v0.unk_00 = 35;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(battleSys); v1++) {
        v0.unk_04[v1] = param1->selectedPartySlot[v1];
    }

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C430));
}

void BattleIO_PlayLevelUpAnimation(BattleSystem *battleSys, int param1)
{
    int v0 = 36;

    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_SetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg)
{
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    UnkStruct_ov16_0225C454 v0;
    v0.unk_00 = 37;
    v0.unk_04 = msg;

    SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C454));
}

void ov16_022661B0(BattleSystem *battleSys, int param1)
{
    int v0 = 1;
    SendMessage(battleSys, 0, param1, &v0, 4);
}

void BattleIO_RefreshHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    UnkStruct_ov16_0225C468 v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, param1->selectedPartySlot[param2]);
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
    v0.unk_07_7 = BattleSystem_CaughtSpecies(battleSys, param1->battleMons[param2].species);
    v0.unk_10 = BattleSystem_NumSafariBalls(battleSys);

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225C468));
}

void BattleIO_UpdatePartyMon(BattleSystem *battleSys, BattleContext *param1, int param2)
{
    UnkStruct_ov16_022662FC v0;
    int v1;

    v0.unk_00 = 39;
    v0.unk_01_0 = param1->selectedPartySlot[param2];
    v0.unk_01_4 = param1->battleMons[param2].moveEffectsData.mimickedMoveSlot;
    v0.unk_02 = param1->battleMons[param2].curHP;
    v0.unk_0C = param1->battleMons[param2].heldItem;
    v0.unk_08 = param1->sideConditions[Battler_Side(battleSys, param2)].knockedOffItemsMask;
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

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_022662FC));
}

void ov16_02266460(BattleSystem *battleSys, int param1)
{
    int v0 = 40;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_StopGaugeAnimation(BattleSystem *battleSys, int battler)
{
    int v0 = 41;
    SendMessage(battleSys, 1, battler, &v0, 4);
}

void BattleIO_RefreshPartyStatus(BattleSystem *battleSys, BattleContext *param1, int param2, int param3)
{
    UnkStruct_ov16_02266498 v0;

    v0.unk_00 = 42;
    v0.unk_02 = param3;
    v0.unk_01 = param1->battleMons[param2].ability;

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_ForgetMove(BattleSystem *battleSys, int param1, int param2, int param3)
{
    UnkStruct_ov16_0225C65C v0;

    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), param1);

    v0.unk_00 = 43;
    v0.unk_02 = param2;
    v0.unk_01 = param3;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_SetMosaic(BattleSystem *battleSys, int param1, int param2, int param3)
{
    UnkStruct_ov16_022664F8 v0;

    v0.unk_00 = 44;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_022664F8));
}

void BattleIO_ChangeWeatherForm(BattleSystem *battleSys, int param1)
{
    UnkStruct_ov16_0225C684 v0;

    v0.unk_00 = 45;
    v0.unk_02 = battleSys->battleCtx->battleMons[param1].species;
    v0.unk_05 = battleSys->battleCtx->battleMons[param1].isShiny;

    if (battleSys->battleCtx->battleMons[param1].statusVolatile & 0x200000) {
        v0.unk_04 = battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedGender;
        v0.unk_08 = battleSys->battleCtx->battleMons[param1].moveEffectsData.transformedPID;
    } else {
        v0.unk_04 = battleSys->battleCtx->battleMons[param1].gender;
        v0.unk_08 = battleSys->battleCtx->battleMons[param1].personality;
    }

    v0.unk_01 = battleSys->battleCtx->battleMons[param1].formNum;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225C684));
}

void BattleIO_UpdateBG(BattleSystem *battleSys, int param1)
{
    int v0 = 46;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_ClearTouchScreen(BattleSystem *battleSys, int battler)
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

void BattleIO_IncrementRecord(BattleSystem *battleSys, int param1, int param2, int param3)
{
    UnkStruct_ov16_022666BC v0;

    v0.unk_00 = 54;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_022666BC));
}

void BattleIO_LinkWaitMessage(BattleSystem *battleSys, int battler)
{
    UnkStruct_ov16_0225C988 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 55;
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
        SendMessage(battleSys, 1, battler, &v0, sizeof(UnkStruct_ov16_0225C988));
    }
}

void BattleIO_RestoreSprite(BattleSystem *battleSys, BattleContext *param1, int param2)
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

    SendMessage(battleSys, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_SpriteToOAM(BattleSystem *battleSys, int param1)
{
    int v0 = 57;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_OAMToSprite(BattleSystem *battleSys, int param1)
{
    int v0 = 58;
    SendMessage(battleSys, 1, param1, &v0, 4);
}

void BattleIO_ResultMessage(BattleSystem *battleSys)
{
    int v0 = 59;
    SendMessage(battleSys, 1, 0, &v0, 4);
}

void BattleIO_EscapeMessage(BattleSystem *battleSys, BattleContext *param1)
{
    UnkStruct_ov16_0225C9F0 v0;
    int v1;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 60;
    v0.unk_01 = 0;
    v0.unk_02 = 0;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(battleSys); v1++) {
        if (param1->battlerActions[v1][0] == 16) {
            v0.unk_01 |= FlagIndex(v1);
        }
    }

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(battleSys, 1, 0, &v0, sizeof(UnkStruct_ov16_0225C9F0));
}

void BattleIO_ForfeitMessage(BattleSystem *battleSys)
{
    UnkStruct_ov16_0225CA14 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 61;
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(battleSys, 1, 0, &v0, sizeof(UnkStruct_ov16_0225CA14));
}

void BattleIO_RefreshSprite(BattleSystem *battleSys, BattleContext *param1, int param2)
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

    SendMessage(battleSys, 1, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *param1, int param2)
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

    SendMessage(battleSys, 1, param2, &v0, sizeof(UnkStruct_ov16_0225CA4C));
}

void BattleIO_PlayMusic(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_0225CA60 v0;

    v0.unk_00 = 64;
    v0.unk_02 = param2;

    SendMessage(battleSys, 1, param1, &v0, sizeof(UnkStruct_ov16_0225CA60));
}

void BattleIO_SubmitResult(BattleSystem *battleSys)
{
    UnkStruct_ov16_02266A38 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = 65;
    v0.unk_04 = BattleSystem_ResultMask(battleSys);
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_08[0]);
        GF_ASSERT(v0.unk_02 <= 28);
    }

    SendMessage(battleSys, 1, 0, &v0, sizeof(UnkStruct_ov16_02266A38));
}

void BattleIO_ClearMessageBox(BattleSystem *battleSys)
{
    int v0 = 66;
    SendMessage(battleSys, 1, 0, &v0, 4);
}

void ClearCommand(BattleSystem *battleSys, int param1, int param2)
{
    UnkStruct_ov16_02266ABC v0;

    v0.unk_00 = param2;
    v0.unk_01 = CommSys_CurNetId();

    SendMessage(battleSys, 2, param1, &v0, sizeof(UnkStruct_ov16_02266ABC));
}

BOOL ov16_02266AE4(BattleSystem *battleSys, void *param1)
{
    u8 *v0 = (u8 *)param1;
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
            battleSys->battleCtx->ioBuffer[v2][v4] = v0[v4];
        }
    } else if (v1 == 1) {
        if (battleSys->battlers[v2]->unk_1A4 == 0) {
            battleSys->battlers[v2]->unk_1A4 = 1;

            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battlers[v2]->data[v4] = v0[v4];
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

            if (ov16_0223ED60(battleSys)) {
                BattleIO_DequeueVal(battleSys->battleCtx, v7, v2, v6);
            }
        }
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02266B78(BattleSystem *battleSys, BattleContext *param1, UnkStruct_ov16_02265BBC *param2, int param3, int param4, int param5, int param6, u16 param7)
{
    int v0;

    param2->unk_00 = 22;
    param2->unk_02 = param7;
    param2->unk_14 = param5;
    param2->unk_16 = param6;
    param2->unk_4C = param3;
    param2->unk_50 = param4;
    param2->unk_54 = BattleSystem_Terrain(battleSys);

    if (param1 != NULL) {
        param2->unk_04 = param1->damage;

        if (param1->movePower) {
            param2->unk_08 = param1->movePower;
        } else {
            param2->unk_08 = param1->aiContext.moveTable[param7].power;
        }

        param2->friendship = param1->battleMons[param5].friendship;

        if ((BattleSystem_CountAbility(battleSys, param1, COUNT_ALIVE_BATTLERS, 0, ABILITY_CLOUD_NINE) == 0) && (BattleSystem_CountAbility(battleSys, param1, COUNT_ALIVE_BATTLERS, 0, ABILITY_AIR_LOCK) == 0)) {
            param2->fieldConditions = param1->fieldConditionsMask;
        } else {
            param2->fieldConditions = 0;
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
        int species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);

        if (species && species != SPECIES_EGG) {
            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL)) {
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
        if (BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_PLAYER_2
            || BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_ENEMY_2) {
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
