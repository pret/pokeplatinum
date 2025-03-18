#include "overlay005/ov5_021E622C.h"

#include <nitro.h>
#include <string.h>

#include "constants/daycare.h"
#include "constants/items.h"
#include "constants/species.h"
#include "generated/egg_groups.h"
#include "generated/game_records.h"

#include "struct_defs/chatot_cry.h"
#include "struct_defs/daycare.h"

#include "field/field_system.h"
#include "overlay005/egg_moves.h"

#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "math.h"
#include "message.h"
#include "message_util.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02017038.h"
#include "unk_020261E4.h"
#include "unk_0202CC64.h"
#include "unk_020559DC.h"
#include "unk_02092494.h"

typedef struct {
    int unk_00[4];
    int unk_10[4];
    int unk_20[4];
    u16 unk_30[50];
    u16 unk_94[16];
} UnkStruct_ov5_021E6948;

void sub_020262C0(UnkStruct_02026224 *param0);
static u8 ov5_021E70FC(Daycare *daycare);
int ov5_021E6630(Daycare *daycare, u8 param1, StringTemplate *param2);
u8 ov5_021E6640(Daycare *daycare, int param1, StringTemplate *param2);
u16 ov5_021E73A0(Party *param0, int param1, StringTemplate *param2);
u8 ov5_021E73C8(Daycare *daycare);
void ov5_021E72BC(Daycare *daycare, StringTemplate *param1);
static void ov5_021E62C4(Party *param0, int param1, DaycareMon *param2, SaveData *param3);

static BoxPokemon *Daycare_GetBoxMon(Daycare *daycare, int slot)
{
    return DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, slot));
}

static Daycare *Unk_ov5_02202124;

u8 ov5_021E6238(Daycare *daycare)
{
    u8 v0, v1;
    BoxPokemon *v2;

    v0 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        v2 = DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, v1));

        if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) != 0) {
            v0++;
        }
    }

    return v0;
}

int ov5_021E6270(Daycare *daycare)
{
    u8 v0;
    BoxPokemon *v1;

    Unk_ov5_02202124 = daycare;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, v0));

        if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL) == 0) {
            return v0;
        }
    }

    return -1;
}

static int BoxPokemon_HoldsMail(BoxPokemon *boxMon)
{
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    return Item_IsMail(item);
}

static void ov5_021E62C4(Party *param0, int param1, DaycareMon *param2, SaveData *param3)
{
    int v0;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0, param1);
    const u16 *v2;
    u16 v3[10 + 1];
    UnkStruct_02026224 *v4 = sub_02026224(param2);
    BoxPokemon *v5 = DaycareMon_GetBoxMon(param2);
    TrainerInfo *v6 = SaveData_GetTrainerInfo(param3);

    v2 = TrainerInfo_Name(v6);
    Pokemon_GetValue(v1, MON_DATA_NICKNAME, v3);

    if (BoxPokemon_HoldsMail(Pokemon_GetBoxPokemon(v1))) {
        Pokemon_GetValue(v1, MON_DATA_170, sub_02026230(v4));
    }

    BoxPokemon_FromPokemon(v1, v5);
    BoxPokemon_SetShayminForm(v5, 0);
    DaycareMon_SetSteps(param2, 0);
    Party_RemovePokemonBySlotIndex(param0, param1);

    if (Party_HasSpecies(param0, 441) == 0) {
        ChatotCry *v7 = GetChatotCryDataFromSave(param3);
        ResetChatotCryDataStatus(v7);
    }
}

void ov5_021E6358(Party *param0, int param1, Daycare *daycare, SaveData *param3)
{
    int v0;
    GameRecords *v1 = SaveData_GetGameRecordsPtr(param3);

    GameRecords_IncrementRecordValue(v1, RECORD_UNK_040);
    v0 = ov5_021E6270(daycare);
    ov5_021E62C4(param0, param1, Daycare_GetDaycareMon(daycare, v0), param3);
}

static void ov5_021E638C(Daycare *daycare)
{
    DaycareMon *v0, *v1;
    BoxPokemon *v2, *v3;

    v0 = Daycare_GetDaycareMon(daycare, 0);
    v1 = Daycare_GetDaycareMon(daycare, 1);
    v2 = DaycareMon_GetBoxMon(v0);
    v3 = DaycareMon_GetBoxMon(v1);

    if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == 0) {
        if (BoxPokemon_GetValue(v3, MON_DATA_SPECIES, NULL) != 0) {
            DaycareMon_CopyToDaycareMon(v0, v1);
            sub_020262F4(v1);
        }
    }
}

static void ov5_021E63E0(Pokemon *param0)
{
    int v0, v1 = 0, v2;
    u16 v3;
    u16 v4;

    for (v0 = 0; v0 < 100; v0++) {
        if (Pokemon_ShouldLevelUp(param0)) {
            v1 = 0;

            while ((v4 = Pokemon_LevelUpMove(param0, &v1, &v3)) != 0) {
                if (v4 == 0xffff) {
                    Pokemon_ReplaceMove(param0, v3);
                }
            }
        } else {
            break;
        }
    }

    Pokemon_CalcLevelAndStats(param0);
}

static int ov5_021E6444(Party *param0, DaycareMon *param1, StringTemplate *param2)
{
    Pokemon *v0 = Pokemon_New(HEAP_ID_FIELD);
    BoxPokemon *v1 = DaycareMon_GetBoxMon(param1);
    UnkStruct_02026224 *v2 = sub_02026224(param1);
    u32 v3;
    u16 v4;

    StringTemplate_SetNickname(param2, 0, v1);
    v4 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    Pokemon_FromBoxPokemon(v1, v0);

    if (Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL) != 100) {
        v3 = Pokemon_GetValue(v0, MON_DATA_EXP, NULL);
        v3 += DaycareMon_GetSteps(param1);
        Pokemon_SetValue(v0, MON_DATA_EXP, (u8 *)&v3);
        ov5_021E63E0(v0);
    }

    if (BoxPokemon_HoldsMail(v1)) {
        Pokemon_SetValue(v0, MON_DATA_170, sub_02026230(v2));
    }

    Party_AddPokemon(param0, v0);
    BoxPokemon_Init(v1);
    DaycareMon_SetSteps(param1, 0);
    Heap_FreeToHeap(v0);

    return v4;
}

u16 ov5_021E64F8(Party *param0, StringTemplate *param1, Daycare *daycare, u8 param3)
{
    u16 v0;
    DaycareMon *v1 = Daycare_GetDaycareMon(daycare, param3);

    v0 = ov5_021E6444(param0, v1, param1);
    ov5_021E638C(daycare);

    return v0;
}

int BoxPokemon_GiveExperience(BoxPokemon *boxMon, u32 givenExp)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD);
    BoxPokemon *boxMonRef = Pokemon_GetBoxPokemon(mon);
    int level;
    u32 exp;

    BoxPokemon_Copy(boxMon, boxMonRef);

    exp = BoxPokemon_GetValue(boxMonRef, MON_DATA_EXP, NULL);
    exp += givenExp;

    BoxPokemon_SetValue(boxMonRef, MON_DATA_EXP, (u8 *)&exp);
    level = BoxPokemon_GetLevel(boxMonRef);
    Heap_FreeToHeap(mon);

    return level;
}

int ov5_021E6568(DaycareMon *daycareMon)
{
    u8 v0, v1;
    BoxPokemon *v2 = DaycareMon_GetBoxMon(daycareMon);
    v0 = BoxPokemon_GetLevel(v2);
    v1 = BoxPokemon_GiveExperience(v2, DaycareMon_GetSteps(daycareMon));

    return v1 - v0;
}

int ov5_021E6590(DaycareMon *daycareMon)
{
    u8 v0;
    BoxPokemon *v1 = DaycareMon_GetBoxMon(daycareMon);
    v0 = BoxPokemon_GiveExperience(v1, DaycareMon_GetSteps(daycareMon));

    return v0;
}

u8 ov5_021E65B0(DaycareMon *daycareMon, StringTemplate *param1)
{
    int v0;
    Strbuf *v1;
    u16 v2[10 + 1];
    BoxPokemon *v3 = DaycareMon_GetBoxMon(daycareMon);

    v0 = ov5_021E6568(daycareMon);

    StringTemplate_SetNumber(param1, 1, v0, 3, 0, 1);
    StringTemplate_SetNickname(param1, 0, v3);

    return v0;
}

int ov5_021E65EC(DaycareMon *daycareMon, StringTemplate *param1)
{
    u16 v0;
    BoxPokemon *v1 = DaycareMon_GetBoxMon(daycareMon);

    v0 = ov5_021E6568(daycareMon);
    StringTemplate_SetNickname(param1, 0, v1);

    v0 = v0 * 100 + 100;
    StringTemplate_SetNumber(param1, 1, v0, 5, 0, 1);

    return v0;
}

int ov5_021E6630(Daycare *daycare, u8 param1, StringTemplate *param2)
{
    DaycareMon *v0 = Daycare_GetDaycareMon(daycare, param1);
    return ov5_021E65EC(v0, param2);
}

u8 ov5_021E6640(Daycare *daycare, int param1, StringTemplate *param2)
{
    DaycareMon *v0 = Daycare_GetDaycareMon(daycare, param1);
    BoxPokemon *v1 = DaycareMon_GetBoxMon(v0);

    if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL)) {
        return ov5_021E65B0(v0, param2);
    }

    return 0;
}

static void Daycare_CopyDaycareMonToBoxMonArray(Daycare *daycare, BoxPokemon *boxMon[])
{
    boxMon[0] = Daycare_GetBoxMon(daycare, 0);
    boxMon[1] = Daycare_GetBoxMon(daycare, 1);
}

static int Daycare_GetParentToInheritNature(Daycare *daycare)
{
    int i;
    int species[DAYCARE_MON_COUNT], slot = -1, dittoCount;
    BoxPokemon *boxMon[DAYCARE_MON_COUNT];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMon);

    // search for female gender
    for (i = 0; i < DAYCARE_MON_COUNT; i++) {
        if (BoxPokemon_GetGender(boxMon[i]) == GENDER_FEMALE) {
            slot = i;
        }
    }

    // search for ditto
    for (dittoCount = 0, i = 0; i < DAYCARE_MON_COUNT; i++) {
        if ((species[i] = BoxPokemon_GetValue(boxMon[i], MON_DATA_SPECIES, NULL)) == SPECIES_DITTO) {
            dittoCount++;
            slot = i;
        }
    }

    // coin flip on ...two Dittos
    if (dittoCount == DAYCARE_MON_COUNT) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            slot = 0;
        } else {
            slot = 1;
        }
    }

    // Don't inherit nature if not holding Everstone
    if (BoxPokemon_GetValue(boxMon[slot], MON_DATA_HELD_ITEM, NULL) == ITEM_EVERSTONE) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            return -1;
        }
    } else {
        return -1;
    }

    return slot;
}

static void Daycare_SetInheritedNature(Daycare *daycare)
{
    u32 personality = 0, newPersonality;
    int slot, nature;
    int natureTries = 0;

    if ((slot = Daycare_GetParentToInheritNature(daycare)) < 0) {
        Daycare_SetOffspringPersonality(daycare, MTRNG_Next());
    } else {
        BoxPokemon *boxMon = Daycare_GetBoxMon(daycare, slot);

        personality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);
        nature = Pokemon_GetNatureOf(personality);

        while (TRUE) {
            newPersonality = MTRNG_Next();

            if ((nature == Pokemon_GetNatureOf(newPersonality)) && (newPersonality != 0)) {
                break;
            }

            if (++natureTries > 2400) {
                break;
            }
        }

        Daycare_SetOffspringPersonality(daycare, newPersonality);
    }
}

static void ov5_021E6778(u8 *param0, u8 param1)
{
    int v0, v1;
    u8 v2[6];

    param0[param1] = 0xff;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0[v0];
    }

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v2[v0] != 0xff) {
            param0[v1++] = v2[v0];
        }
    }
}

static void ov5_021E67B0(Pokemon *mon, Daycare *daycare)
{
    u8 v0[3], v1, v2[6], v3[3], value;

    for (v1 = 0; v1 < 6; v1++) {
        v2[v1] = v1;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0[v1] = v2[LCRNG_Next() % (6 - v1)];
        ov5_021E6778(v2, v1);
    }

    for (v1 = 0; v1 < 3; v1++) {
        v3[v1] = LCRNG_Next() % 2;
    }

    for (v1 = 0; v1 < 3; v1++) {
        BoxPokemon *boxMon = Daycare_GetBoxMon(daycare, v3[v1]);

        switch (v0[v1]) {
        case STAT_HP:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_HP_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_HP_IV, (u8 *)&value);
            break;
        case STAT_ATTACK:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_ATK_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_ATK_IV, (u8 *)&value);
            break;
        case STAT_DEFENSE:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_DEF_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_DEF_IV, (u8 *)&value);
            break;
        case STAT_SPEED:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_SPEED_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_SPEED_IV, (u8 *)&value);
            break;
        case STAT_SPECIAL_ATTACK:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_SPATK_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_SPATK_IV, (u8 *)&value);
            break;
        case STAT_SPECIAL_DEFENSE:
            value = BoxPokemon_GetValue(boxMon, MON_DATA_SPDEF_IV, NULL);
            Pokemon_SetValue(mon, MON_DATA_SPDEF_IV, (u8 *)&value);
            break;
        }
    }
}

static u8 ov5_021E68D8(Pokemon *mon, u16 *param1)
{
    u16 species, v1, v2, i;

    v2 = 0;
    v1 = 0;
    species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    for (i = 0; i < NELEMS(sEggMoves) - 1; i++) {
        if (sEggMoves[i] == (EGG_MOVES_SPECIES_OFFSET + species)) {
            v1 = i + 1;
            break;
        }
    }

    for (i = 0; i < 16; i++) {
        if (sEggMoves[v1 + i] > EGG_MOVES_SPECIES_OFFSET) {
            break;
        } else {
            param1[i] = sEggMoves[v1 + i];
            v2++;
        }
    }

    return v2;
}

static void ov5_021E6948(Pokemon *param0, BoxPokemon *param1, BoxPokemon *param2)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    UnkStruct_ov5_021E6948 *v7 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E6948));

    v2 = 0;

    MI_CpuClearFast(v7, sizeof(UnkStruct_ov5_021E6948));

    v3 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);
    v4 = Pokemon_LoadLevelUpMoveIdsOf(v3, v6, v7->unk_30);

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        v7->unk_00[v0] = BoxPokemon_GetValue(param1, MON_DATA_MOVE1 + v0, NULL);
        v7->unk_20[v0] = BoxPokemon_GetValue(param2, MON_DATA_MOVE1 + v0, NULL);
    }

    v5 = ov5_021E68D8(param0, v7->unk_94);

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < v5; v1++) {
                if (v7->unk_00[v0] == v7->unk_94[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < 100; v1++) {
                if (v7->unk_00[v0] == Item_MoveForTMHM(328 + v1)) {
                    if (CanPokemonFormLearnTM(v3, v6, v1)) {
                        if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                            Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                        }
                    }
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if ((v7->unk_00[v0] == v7->unk_20[v1]) && (v7->unk_00[v0] != 0)) {
                v7->unk_10[v2++] = v7->unk_00[v0];
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_10[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < v4; v1++) {
            if (v7->unk_30[v1] != 0) {
                if (v7->unk_10[v0] == v7->unk_30[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_10[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_10[v0]);
                    }
                    break;
                }
            }
        }
    }

    Heap_FreeToHeap(v7);
}

void Daycare_ResetPersonalityAndStepCounter(Daycare *daycare)
{
    Daycare_SetOffspringPersonality(daycare, 0);
    Daycare_SetStepCounter(daycare, 0);
}

static const u16 sIncenseBabyTable[][3] = {
    { SPECIES_WYNAUT, ITEM_LAX_INCENSE, SPECIES_WOBBUFFET },
    { SPECIES_AZURILL, ITEM_SEA_INCENSE, SPECIES_MARILL },
    { SPECIES_MIME_JR, ITEM_ODD_INCENSE, SPECIES_MR_MIME },
    { SPECIES_BONSLY, ITEM_ROCK_INCENSE, SPECIES_SUDOWOODO },
    { SPECIES_MUNCHLAX, ITEM_FULL_INCENSE, SPECIES_SNORLAX },
    { SPECIES_MANTYKE, ITEM_WAVE_INCENSE, SPECIES_MANTINE },
    { SPECIES_BUDEW, ITEM_ROSE_INCENSE, SPECIES_ROSELIA },
    { SPECIES_HAPPINY, ITEM_LUCK_INCENSE, SPECIES_CHANSEY },
    { SPECIES_CHINGLING, ITEM_PURE_INCENSE, SPECIES_CHIMECHO }
};

static u16 ov5_021E6B54(u16 species, Daycare *daycare)
{
    u16 item1, item2, slot, i;
    BoxPokemon *parents[2];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, parents);

    for (i = 0; i < NELEMS(sIncenseBabyTable); i++) {
        if (species == sIncenseBabyTable[i][0]) {
            slot = i;
            break;
        }
    }

    if (i == NELEMS(sIncenseBabyTable)) {
        return species;
    }

    item1 = BoxPokemon_GetValue(parents[0], MON_DATA_HELD_ITEM, NULL);
    item2 = BoxPokemon_GetValue(parents[1], MON_DATA_HELD_ITEM, NULL);

    if ((item1 != sIncenseBabyTable[slot][1]) && (item2 != sIncenseBabyTable[slot][1])) {
        species = sIncenseBabyTable[slot][2];
    }

    return species;
}

static void Egg_TryGiveVoltTackle(Pokemon *mon, Daycare *daycare)
{
    int item1, item2;
    BoxPokemon *parents[2];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, parents);

    item1 = BoxPokemon_GetValue(parents[0], MON_DATA_HELD_ITEM, NULL);
    item2 = BoxPokemon_GetValue(parents[1], MON_DATA_HELD_ITEM, NULL);

    if (item1 == ITEM_LIGHT_BALL || item2 == ITEM_LIGHT_BALL) {
        if (Pokemon_AddMove(mon, MOVE_VOLT_TACKLE) == 0xffff) {
            Pokemon_ReplaceMove(mon, MOVE_VOLT_TACKLE);
        }
    }
}

static u16 Egg_DetermineEggSpeciesAndParentSlots(Daycare *daycare, u8 parentSlots[])
{
    u16 species[DAYCARE_MON_COUNT], i, eggSpecies;
    BoxPokemon *boxMons[DAYCARE_MON_COUNT];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMons);

    for (i = 0; i < DAYCARE_MON_COUNT; i++) {
        if ((species[i] = BoxPokemon_GetValue(boxMons[i], MON_DATA_SPECIES, NULL)) == SPECIES_DITTO) {
            parentSlots[0] = i ^ 1;
            parentSlots[1] = i;
        } else if (BoxPokemon_GetGender(boxMons[i]) == GENDER_FEMALE) {
            parentSlots[0] = i;
            parentSlots[1] = i ^ 1;
        }
    }

    eggSpecies = sub_02076F84(species[parentSlots[0]]);

    if (eggSpecies == SPECIES_NIDORAN_F) {
        if (Daycare_GetOffspringPersonality(daycare) & EGG_GENDER_MALE) {
            eggSpecies = SPECIES_NIDORAN_M;
        } else {
            eggSpecies = SPECIES_NIDORAN_F;
        }
    }

    if (eggSpecies == SPECIES_ILLUMISE) {
        if (Daycare_GetOffspringPersonality(daycare) & EGG_GENDER_MALE) {
            eggSpecies = SPECIES_VOLBEAT;
        } else {
            eggSpecies = SPECIES_ILLUMISE;
        }
    }

    if (eggSpecies == SPECIES_MANAPHY) {
        eggSpecies = SPECIES_PHIONE;
    }

    // Make Ditto the "mother" slot if the other daycare mon is male.
    if ((species[parentSlots[1]] == SPECIES_DITTO) && (BoxPokemon_GetGender(boxMons[parentSlots[0]]) != GENDER_FEMALE)) {
        u16 ditto = parentSlots[1];
        parentSlots[1] = parentSlots[0];
        parentSlots[0] = ditto;
    }

    return eggSpecies;
}

void Egg_CreateEgg(Pokemon *egg, u16 species, u8 param2, TrainerInfo *trainerInfo, int param4, int metLocation)
{
    u8 metLvl, isEgg;
    u16 ball;
    u8 hatchCycles = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_HATCH_CYCLES);
    Strbuf *eggName;

    Pokemon_InitWith(egg, species, 1, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SET, 0);

    metLvl = 0;
    ball = ITEM_POKE_BALL;

    Pokemon_SetValue(egg, MON_DATA_POKEBALL, &ball);
    Pokemon_SetValue(egg, MON_DATA_FRIENDSHIP, &hatchCycles);
    Pokemon_SetValue(egg, MON_DATA_MET_LEVEL, &metLvl);

    if (param2) {
        Pokemon_SetValue(egg, MON_DATA_MET_LOCATION, &param2);
    }

    isEgg = TRUE;
    Pokemon_SetValue(egg, MON_DATA_IS_EGG, &isEgg);

    eggName = MessageUtil_SpeciesName(SPECIES_EGG, HEAP_ID_FIELD);
    Pokemon_SetValue(egg, MON_DATA_NICKNAME_STRBUF, eggName);
    Strbuf_Free(eggName);

    if (param4 == 4) {
        u32 trainerId = TrainerInfo_ID(trainerInfo);
        u32 gender = TrainerInfo_Gender(trainerInfo);
        Strbuf *otName = TrainerInfo_NameNewStrbuf(trainerInfo, 32);

        Pokemon_SetValue(egg, MON_DATA_OTNAME_STRBUF, otName);
        Pokemon_SetValue(egg, MON_DATA_OT_ID, &trainerId);
        Pokemon_SetValue(egg, MON_DATA_OT_GENDER, &gender);
        Strbuf_Free(otName);
    }

    UpdateMonStatusAndTrainerInfo(egg, trainerInfo, param4, metLocation, HEAP_ID_SYSTEM);
}

static void Egg_SetInitialData(Pokemon *mon, u16 species, Daycare *daycare, u32 monOTID, u8 form)
{
    u8 level;
    u16 ball;
    u32 personality;
    Strbuf *strBuf;
    u8 hatchCycles = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_HATCH_CYCLES);

    personality = Daycare_GetOffspringPersonality(daycare);

    if (Daycare_AreParentLanguagesDifferent(daycare)) {
        int i;

        if (Pokemon_IsPersonalityShiny(monOTID, personality) == FALSE) {
            for (i = 0; i < 4; i++) {
                personality = ARNG_Next(personality);

                if (Pokemon_IsPersonalityShiny(monOTID, personality)) {
                    break;
                }
            }
        } else {
            (void)0;
        }
    }

    Pokemon_InitWith(mon, species, EGG_POKEMON_LEVEL, INIT_IVS_RANDOM, TRUE, personality, OTID_NOT_SET, 0);

    level = 0;
    ball = ITEM_POKE_BALL;

    Pokemon_SetValue(mon, MON_DATA_POKEBALL, &ball);
    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &hatchCycles);
    Pokemon_SetValue(mon, MON_DATA_MET_LEVEL, &level);
    Pokemon_SetValue(mon, MON_DATA_FORM, &form);

    strBuf = MessageUtil_SpeciesName(SPECIES_EGG, HEAP_ID_FIELD);

    Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRBUF, strBuf);
    Strbuf_Free(strBuf);
}

void ov5_021E6EA8(Daycare *daycare, Party *party, TrainerInfo *trainerInfo)
{
    u16 species;
    u8 parentSlots[DAYCARE_MON_COUNT], isEgg;
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD);

    species = Egg_DetermineEggSpeciesAndParentSlots(daycare, parentSlots);
    species = ov5_021E6B54(species, daycare);

    u32 monOTID = TrainerInfo_ID(trainerInfo);
    BoxPokemon *boxMon = Daycare_GetBoxMon(daycare, parentSlots[0]);
    u8 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    Egg_SetInitialData(mon, species, daycare, monOTID, form);

    ov5_021E67B0(mon, daycare);
    ov5_021E6948(mon, Daycare_GetBoxMon(daycare, parentSlots[1]), Daycare_GetBoxMon(daycare, parentSlots[0]));

    UpdateMonStatusAndTrainerInfo(mon, trainerInfo, 3, SpecialMetLoc_GetId(1, 0), HEAP_ID_FIELD);

    if (species == SPECIES_PICHU) {
        Egg_TryGiveVoltTackle(mon, daycare);
    }

    isEgg = TRUE;
    Pokemon_SetValue(mon, MON_DATA_IS_EGG, &isEgg);

    Party_AddPokemon(party, mon);
    Daycare_ResetPersonalityAndStepCounter(daycare);
    Heap_FreeToHeap(mon);
}

static int Party_GetEggCyclesToSubtract(Party *party)
{
    u8 i;
    u8 ability;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, i), MON_DATA_EGG_EXISTS, NULL) == FALSE) {
            ability = Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, i), MON_DATA_ABILITY, NULL);

            if ((ability == ABILITY_MAGMA_ARMOR) || (ability == ABILITY_FLAME_BODY)) {
                return 2;
            }
        }
    }

    return 1;
}

static u8 Egg_AreEggGroupsCompatible(u16 *eggGroupSlots1, u16 *eggGroupSlots2)
{
    int i, j;

    for (i = 0; i < MAX_EGG_GROUPS; i++) {
        for (j = 0; j < MAX_EGG_GROUPS; j++) {
            if (eggGroupSlots1[i] == eggGroupSlots2[j]) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static u8 Egg_GetBoxMonPairCompatibility(BoxPokemon **boxMonPair)
{
    u16 eggGroups[DAYCARE_MON_COUNT][2];
    u16 species[DAYCARE_MON_COUNT];
    u32 trainerIDs[DAYCARE_MON_COUNT], genders[2], personality, i;

    for (i = 0; i < DAYCARE_MON_COUNT; i++) {
        species[i] = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_SPECIES, NULL);
        trainerIDs[i] = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_OT_ID, NULL);
        personality = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_PERSONALITY, NULL);
        genders[i] = Pokemon_GetGenderOf(species[i], personality);
        eggGroups[i][0] = SpeciesData_GetSpeciesValue(species[i], SPECIES_DATA_EGG_GROUP_1);
        eggGroups[i][1] = SpeciesData_GetSpeciesValue(species[i], SPECIES_DATA_EGG_GROUP_2);
    }

    if (eggGroups[0][0] == EGG_GROUP_UNDISCOVERED || eggGroups[1][0] == EGG_GROUP_UNDISCOVERED) {
        return 0;
    }

    if (eggGroups[0][0] == EGG_GROUP_DITTO && eggGroups[1][0] == EGG_GROUP_DITTO) {
        return 0;
    }

    if (eggGroups[0][0] == EGG_GROUP_DITTO || eggGroups[1][0] == EGG_GROUP_DITTO) {
        if (trainerIDs[0] == trainerIDs[1]) {
            return 20;
        } else {
            return 50;
        }
    }

    if (genders[0] == genders[1]) {
        return 0;
    }

    if ((genders[0] == GENDER_NONE) || (genders[1] == GENDER_NONE)) {
        return 0;
    }

    if (Egg_AreEggGroupsCompatible(eggGroups[0], eggGroups[1]) == FALSE) {
        return 0;
    }

    if (species[0] == species[1]) {
        if (trainerIDs[0] != trainerIDs[1]) {
            return 70;
        } else {
            return 50;
        }
    } else {
        if (trainerIDs[0] != trainerIDs[1]) {
            return 50;
        } else {
            return 20;
        }
    }

    return 0;
}

static u8 ov5_021E70FC(Daycare *daycare)
{
    BoxPokemon *parents[DAYCARE_MON_COUNT];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, parents);
    return Egg_GetBoxMonPairCompatibility(parents);
}

static const u16 sEggCycleSpecialDates[] = {
    (100 * 1 + 12), // Jan 1st, New Years
    (100 * 2 + 14), // Feb 14th, Valentine's Day
    (100 * 3 + 3), // March 3rd
    (100 * 4 + 1), // April 1st, April Fools
    (100 * 5 + 1), // May 1st, Emerald US release date
    (100 * 6 + 11), // June 11th
    (100 * 7 + 7), // July 7th
    (100 * 8 + 21), // August 21st
    (100 * 9 + 7), // September 7th
    (100 * 9 + 28), // September 28th, Diamond/Pearl JP release date
    (100 * 11 + 21), // November 21st, Ruby/Sapphire JP release date
    (100 * 12 + 14), // December 14th, Crystal JP release date
};

static int Daycare_GetEggCycleLength(FieldSystem *fieldSystem)
{
    int date = FieldSystem_GetMonth(fieldSystem) * 100 + FieldSystem_GetDayOfMonth(fieldSystem);
    int i;

    if (FieldSystem_HasPenalty(fieldSystem)) {
        return 255;
    }

    for (i = 0; i < NELEMS(sEggCycleSpecialDates); i++) {
        if (sEggCycleSpecialDates[i] == date) {
            return 230;
        }
    }

    return 255;
}

BOOL ov5_021E7154(Daycare *daycare, Party *party, FieldSystem *fieldSystem)
{
    u32 i, eggCycles, v2, v3, v4;
    u32 v5 = 0, steps;
    int toSubstract;
    BoxPokemon *v8[DAYCARE_MON_COUNT];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, v8);

    v2 = 0;

    for (i = 0; i < DAYCARE_MON_COUNT; i++) {
        if (BoxPokemon_GetValue(v8[i], MON_DATA_SPECIES_EXISTS, NULL) != FALSE) {
            DaycareMon_AddSteps(Daycare_GetDaycareMon(daycare, i), 1);
            v2++;
        }
    }

    if ((sub_02026234(daycare) == 0) && (v2 == 2)) {
        if ((DaycareMon_GetSteps(Daycare_GetDaycareMon(daycare, 1)) & 0xff) == 0xff) {
            v3 = ov5_021E70FC(daycare);
            v4 = LCRNG_Next();
            v4 = (v4 * 100) / 0xffff;

            if (v3 > v4) {
                Daycare_SetInheritedNature(daycare);
            }
        }
    }

    steps = Daycare_GetStepCounter(daycare);
    Daycare_SetStepCounter(daycare, ++steps);

    if (steps == Daycare_GetEggCycleLength(fieldSystem)) {
        Daycare_SetStepCounter(daycare, 0);
        toSubstract = Party_GetEggCyclesToSubtract(party);

        for (i = 0; i < Party_GetCurrentCount(party); i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

            if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
                if (Pokemon_GetValue(mon, MON_DATA_IS_DATA_INVALID, NULL)) {
                    continue;
                }

                eggCycles = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

                if (eggCycles != 0) {
                    if (eggCycles >= toSubstract) {
                        eggCycles -= toSubstract;
                    } else {
                        eggCycles--;
                    }

                    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, (u8 *)&eggCycles);
                } else {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

Pokemon *Party_GetFirstEgg(Party *party)
{
    int i;
    Pokemon *mon;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)
            && (Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL) == 0)) {
            return mon;
        }
    }

    return NULL;
}

void ov5_021E72BC(Daycare *daycare, StringTemplate *param1)
{
    BoxPokemon *v0[2];
    u16 v1[10 + 1];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, v0);

    if (BoxPokemon_GetValue(v0[0], MON_DATA_SPECIES, NULL) != 0) {
        StringTemplate_SetNickname(param1, 0, v0[0]);
        StringTemplate_SetOTName(param1, 2, v0[0]);
    }

    if (BoxPokemon_GetValue(v0[1], MON_DATA_SPECIES, NULL) != 0) {
        StringTemplate_SetNickname(param1, 1, v0[1]);
    }
}

void ov5_021E7308(Daycare *daycare, u32 param1, u32 param2, u32 param3, u8 slot, StringTemplate *template)
{
    DaycareMon *daycareMon;
    BoxPokemon *boxMon;
    u8 level, gender;
    u16 species;

    daycareMon = Daycare_GetDaycareMon(daycare, slot);
    boxMon = Daycare_GetBoxMon(daycare, slot);

    StringTemplate_SetNickname(template, param1, boxMon);

    level = BoxPokemon_GiveExperience(boxMon, DaycareMon_GetSteps(daycareMon));
    StringTemplate_SetNumber(template, param2, level, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL);

    if (gender != GENDER_NONE) {
        species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

        if (((species == SPECIES_NIDORAN_F) || (species == SPECIES_NIDORAN_M)) && (BoxPokemon_GetValue(boxMon, MON_DATA_HAS_NICKNAME, NULL) == 0)) {
            gender = GENDER_NONE;
        }
    }

    StringTemplate_SetGenderMarker(template, param3, gender);
}

u16 ov5_021E73A0(Party *param0, int param1, StringTemplate *param2)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0, param1);

    StringTemplate_SetNickname(param2, 0, Pokemon_GetBoxPokemon(v0));
    return Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
}

u8 ov5_021E73C8(Daycare *daycare)
{
    u8 v0;

    if (sub_02026234(daycare)) {
        return 1;
    }

    if ((v0 = ov5_021E6238(daycare))) {
        return v0 + 1;
    }

    return 0;
}

u8 ov5_021E73F0(u32 param0)
{
    switch (param0) {
    case 0:
        return 3;
    case 20:
        return 2;
    case 50:
        return 1;
    case 70:
        return 0;
    }

    return 0;
}

extern u32 ov5_021E7420(Daycare *daycare)
{
    u8 v0 = ov5_021E70FC(daycare);
    u8 v1 = ov5_021E73F0(v0);

    return v1;
}

static void ov5_021E742C(Pokemon *param0, int param1)
{
    u16 v0;
    u16 v1[4];
    u8 v2[4];
    u32 v3, v4;
    u8 v5[6], v6;
    u8 v7, v8, v9, v10, v11, v12, v13, v14;
    Strbuf *v15 = Strbuf_Init(7 + 1, param1);
    Pokemon *v16 = Pokemon_New(param1);

    v0 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    for (v7 = 0; v7 < LEARNED_MOVES_MAX; v7++) {
        v1[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1 + v7, NULL);
        v2[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1_CUR_PP + v7, NULL);
    }

    v3 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);

    for (v7 = 0; v7 < 6; v7++) {
        v5[v7] = Pokemon_GetValue(param0, MON_DATA_HP_IV + v7, NULL);
    }

    v8 = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    v9 = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
    v10 = Pokemon_GetValue(param0, MON_DATA_MARKS, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_POKERUS, NULL);
    v12 = Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    Pokemon_GetValue(param0, MON_DATA_OTNAME_STRBUF, v15);

    v14 = Pokemon_GetValue(param0, MON_DATA_OT_GENDER, NULL);
    v4 = Pokemon_GetValue(param0, MON_DATA_OT_ID, NULL);
    v13 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);

    if (v0 == SPECIES_MANAPHY) {
        int v17 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);

        if (v17 == SpecialMetLoc_GetId(2, 1)) {
            while (Pokemon_IsPersonalityShiny(v4, v3)) {
                v3 = ARNG_Next(v3);
            }
        }
    }

    Pokemon_InitWith(v16, v0, 1, INIT_IVS_RANDOM, TRUE, v3, OTID_NOT_SET, 0);

    for (v7 = 0; v7 < LEARNED_MOVES_MAX; v7++) {
        Pokemon_SetValue(v16, MON_DATA_MOVE1 + v7, &(v1[v7]));
        Pokemon_SetValue(v16, MON_DATA_MOVE1_CUR_PP + v7, &(v2[v7]));
    }

    for (v7 = 0; v7 < 6; v7++) {
        Pokemon_SetValue(v16, MON_DATA_HP_IV + v7, &(v5[v7]));
    }

    Pokemon_SetValue(v16, MON_DATA_LANGUAGE, &v8);
    Pokemon_SetValue(v16, MON_DATA_MET_GAME, &v9);
    Pokemon_SetValue(v16, MON_DATA_MARKS, &v10);

    v11 = 120;

    Pokemon_SetValue(v16, MON_DATA_FRIENDSHIP, &v11);
    Pokemon_SetValue(v16, MON_DATA_POKERUS, &v6);
    Pokemon_SetValue(v16, MON_DATA_FATEFUL_ENCOUNTER, &v12);
    Pokemon_SetValue(v16, MON_DATA_OTNAME_STRBUF, v15);
    Pokemon_SetValue(v16, MON_DATA_OT_GENDER, &v14);
    Pokemon_SetValue(v16, MON_DATA_OT_ID, &v4);
    Pokemon_SetValue(v16, MON_DATA_FORM, &v13);

    {
        u16 v18;
        u8 v19, v20, v21;

        v18 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_MET_YEAR, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_MET_MONTH, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_MET_DAY, NULL);

        Pokemon_SetValue(v16, MON_DATA_MET_LOCATION, &v18);
        Pokemon_SetValue(v16, MON_DATA_MET_YEAR, &v19);
        Pokemon_SetValue(v16, MON_DATA_MET_MONTH, &v20);
        Pokemon_SetValue(v16, MON_DATA_MET_DAY, &v21);

        v18 = Pokemon_GetValue(param0, MON_DATA_HATCH_LOCATION, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_HATCH_YEAR, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_HATCH_MONTH, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_HATCH_DAY, NULL);

        Pokemon_SetValue(v16, MON_DATA_HATCH_LOCATION, &v18);
        Pokemon_SetValue(v16, MON_DATA_HATCH_YEAR, &v19);
        Pokemon_SetValue(v16, MON_DATA_HATCH_MONTH, &v20);
        Pokemon_SetValue(v16, MON_DATA_HATCH_DAY, &v21);
    }

    Pokemon_Copy(v16, param0);
    Strbuf_Free(v15);
    Heap_FreeToHeap(v16);
}

void ov5_021E771C(Pokemon *param0, int param1)
{
    u8 v0, v1;
    u8 v2, v3;
    u16 v4;
    u16 v5[11];

    v0 = 70;
    v1 = 0;
    v2 = 4;
    v3 = 0;

    ov5_021E742C(param0, param1);
    Pokemon_SetValue(param0, MON_DATA_IS_EGG, &v0);

    v4 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    MessageLoader_GetSpeciesName(v4, 0, v5);
    Pokemon_SetValue(param0, MON_DATA_NICKNAME, v5);
    Pokemon_SetValue(param0, MON_DATA_HAS_NICKNAME, &v1);
    Pokemon_SetValue(param0, MON_DATA_POKEBALL, &v2);
    Pokemon_SetValue(param0, MON_DATA_MET_LEVEL, &v3);
    Pokemon_CalcLevelAndStats(param0);
}

u32 ov5_021E7790(BoxPokemon **boxMonPair)
{
    return ov5_021E73F0(Egg_GetBoxMonPairCompatibility(boxMonPair));
}
