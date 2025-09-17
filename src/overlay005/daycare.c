#include "overlay005/daycare.h"

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

#include "daycare_save.h"
#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "math_util.h"
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
#include "unk_0202CC64.h"
#include "unk_020559DC.h"
#include "unk_02092494.h"

#include "res/pokemon/species_egg_moves.h"

typedef struct {
    int fatherMoves[LEARNED_MOVES_MAX];
    int sharedMoves[LEARNED_MOVES_MAX];
    int motherMoves[LEARNED_MOVES_MAX];
    u16 eggSpeciesLevelUpMoves[50];
    u16 eggSpeciesEggMoves[MAX_EGG_MOVES];
} EggMoveBuilder;

static BoxPokemon *Daycare_GetBoxMon(Daycare *daycare, int slot)
{
    return DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, slot));
}

static Daycare *sUnusedDaycareRef;

u8 Daycare_CountMons(Daycare *daycare)
{
    u8 count, i;
    BoxPokemon *boxMon;

    count = 0;

    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        boxMon = DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, i));

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            count++;
        }
    }

    return count;
}

static int Daycare_FindFirstEmptySlot(Daycare *daycare)
{
    u8 i;
    BoxPokemon *boxMon;

    sUnusedDaycareRef = daycare;

    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        boxMon = DaycareMon_GetBoxMon(Daycare_GetDaycareMon(daycare, i));

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_NONE) {
            return i;
        }
    }

    return -1;
}

static int BoxPokemon_HoldsMail(BoxPokemon *boxMon)
{
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    return Item_IsMail(item);
}

static void Daycare_MoveToDaycareMonFromParty(Party *party, int partySlot, DaycareMon *daycareMon, SaveData *saveData)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);
    const u16 *trainerName;
    charcode_t nickname[MON_NAME_LEN + 1];
    DaycareMail *daycareMail = DaycareMon_GetDaycareMail(daycareMon);
    BoxPokemon *daycareBoxMon = DaycareMon_GetBoxMon(daycareMon);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    trainerName = TrainerInfo_Name(trainerInfo);
    Pokemon_GetValue(mon, MON_DATA_NICKNAME, nickname);

    if (BoxPokemon_HoldsMail(Pokemon_GetBoxPokemon(mon))) {
        Pokemon_GetValue(mon, MON_DATA_MAIL, DaycareMail_GetMail(daycareMail));
    }

    BoxPokemon_FromPokemon(mon, daycareBoxMon);
    BoxPokemon_SetShayminForm(daycareBoxMon, SHAYMIN_FORM_LAND);
    DaycareMon_SetSteps(daycareMon, 0);
    Party_RemovePokemonBySlotIndex(party, partySlot);

    if (Party_HasSpecies(party, SPECIES_CHATOT) == FALSE) {
        ChatotCry *cry = SaveData_GetChatotCry(saveData);
        ResetChatotCryDataStatus(cry);
    }
}

void Daycare_MoveToEmptySlotFromParty(Party *party, int partySlot, Daycare *daycare, SaveData *saveData)
{
    int daycareSlot;
    GameRecords *records = SaveData_GetGameRecords(saveData);

    GameRecords_IncrementRecordValue(records, RECORD_DEPOSITED_IN_DAYCARE);
    daycareSlot = Daycare_FindFirstEmptySlot(daycare);
    Daycare_MoveToDaycareMonFromParty(party, partySlot, Daycare_GetDaycareMon(daycare, daycareSlot), saveData);
}

static void Daycare_ShiftMonSlots(Daycare *daycare)
{
    DaycareMon *daycareMon1 = Daycare_GetDaycareMon(daycare, 0);
    DaycareMon *daycareMon2 = Daycare_GetDaycareMon(daycare, 1);
    BoxPokemon *boxMon1 = DaycareMon_GetBoxMon(daycareMon1);
    BoxPokemon *boxMon2 = DaycareMon_GetBoxMon(daycareMon2);

    if (BoxPokemon_GetValue(boxMon1, MON_DATA_SPECIES, NULL) == SPECIES_NONE) {
        if (BoxPokemon_GetValue(boxMon2, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            DaycareMon_CopyToDaycareMon(daycareMon1, daycareMon2);
            DaycareMon_Init(daycareMon2);
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

static int Daycare_MoveToPartyFromDaycareMon(Party *party, DaycareMon *daycareMon, StringTemplate *template)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD1);
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);
    DaycareMail *daycareMail = DaycareMon_GetDaycareMail(daycareMon);
    u32 experience;
    u16 species;

    StringTemplate_SetNickname(template, 0, boxMon);
    species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    Pokemon_FromBoxPokemon(boxMon, mon);

    if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) != MAX_POKEMON_LEVEL) {
        experience = Pokemon_GetValue(mon, MON_DATA_EXPERIENCE, NULL);
        experience += DaycareMon_GetSteps(daycareMon);
        Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, (u8 *)&experience);
        ov5_021E63E0(mon);
    }

    if (BoxPokemon_HoldsMail(boxMon)) {
        Pokemon_SetValue(mon, MON_DATA_MAIL, DaycareMail_GetMail(daycareMail));
    }

    Party_AddPokemon(party, mon);
    BoxPokemon_Init(boxMon);
    DaycareMon_SetSteps(daycareMon, 0);
    Heap_Free(mon);

    return species;
}

u16 Daycare_MoveToPartyFromDaycareSlot(Party *party, StringTemplate *template, Daycare *daycare, u8 daycareSlot)
{
    u16 movedSpecies;
    DaycareMon *daycareMon = Daycare_GetDaycareMon(daycare, daycareSlot);

    movedSpecies = Daycare_MoveToPartyFromDaycareMon(party, daycareMon, template);
    Daycare_ShiftMonSlots(daycare);

    return movedSpecies;
}

int BoxPokemon_GiveExperience(BoxPokemon *boxMon, u32 givenExp)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD1);
    BoxPokemon *boxMonRef = Pokemon_GetBoxPokemon(mon);
    int level;
    u32 exp;

    BoxPokemon_Copy(boxMon, boxMonRef);

    exp = BoxPokemon_GetValue(boxMonRef, MON_DATA_EXPERIENCE, NULL);
    exp += givenExp;

    BoxPokemon_SetValue(boxMonRef, MON_DATA_EXPERIENCE, (u8 *)&exp);
    level = BoxPokemon_GetLevel(boxMonRef);
    Heap_Free(mon);

    return level;
}

static int Daycare_GiveDaycareMonExperience(DaycareMon *daycareMon)
{
    u8 level, newLevel;
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);
    level = BoxPokemon_GetLevel(boxMon);
    newLevel = BoxPokemon_GiveExperience(boxMon, DaycareMon_GetSteps(daycareMon));

    return newLevel - level;
}

int DaycareMon_GiveExperience(DaycareMon *daycareMon)
{
    u8 level;
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);
    level = BoxPokemon_GiveExperience(boxMon, DaycareMon_GetSteps(daycareMon));

    return level;
}

static u8 DaycareMon_BufferGainedLevels(DaycareMon *daycareMon, StringTemplate *template)
{
    int levelsGained;
    Strbuf *strBuf;
    charcode_t nickname[MON_NAME_LEN + 1];
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);

    levelsGained = Daycare_GiveDaycareMonExperience(daycareMon);

    StringTemplate_SetNumber(template, 1, levelsGained, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNickname(template, 0, boxMon);
    return levelsGained;
}

static int DaycareMon_BufferDaycarePrice(DaycareMon *daycareMon, StringTemplate *template)
{
    u16 gainedLevels;
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);

    gainedLevels = Daycare_GiveDaycareMonExperience(daycareMon);
    StringTemplate_SetNickname(template, 0, boxMon);

    gainedLevels = gainedLevels * 100 + 100;
    StringTemplate_SetNumber(template, 1, gainedLevels, 5, PADDING_MODE_NONE, CHARSET_MODE_EN);

    return gainedLevels;
}

int Daycare_BufferDaycarePriceBySlot(Daycare *daycare, u8 slot, StringTemplate *template)
{
    DaycareMon *daycareMon = Daycare_GetDaycareMon(daycare, slot);
    return DaycareMon_BufferDaycarePrice(daycareMon, template);
}

u8 Daycare_BufferGainedLevelsInSlot(Daycare *daycare, int slot, StringTemplate *template)
{
    DaycareMon *daycareMon = Daycare_GetDaycareMon(daycare, slot);
    BoxPokemon *boxMon = DaycareMon_GetBoxMon(daycareMon);

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
        return DaycareMon_BufferGainedLevels(daycareMon, template);
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
    int species[NUM_DAYCARE_MONS], slot = -1, dittoCount;
    BoxPokemon *boxMon[NUM_DAYCARE_MONS];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMon);

    // search for female gender
    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        if (BoxPokemon_GetGender(boxMon[i]) == GENDER_FEMALE) {
            slot = i;
        }
    }

    // search for ditto
    for (dittoCount = 0, i = 0; i < NUM_DAYCARE_MONS; i++) {
        if ((species[i] = BoxPokemon_GetValue(boxMon[i], MON_DATA_SPECIES, NULL)) == SPECIES_DITTO) {
            dittoCount++;
            slot = i;
        }
    }

    // coin flip on ...two Dittos
    if (dittoCount == NUM_DAYCARE_MONS) {
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

static void RemoveIVIndexFromList(u8 *ivs, u8 selectedIV)
{
    int i, j;
    u8 temp[STAT_MAX];

    ivs[selectedIV] = 0xff;

    for (i = 0; i < STAT_MAX; i++) {
        temp[i] = ivs[i];
    }

    j = 0;

    for (i = 0; i < STAT_MAX; i++) {
        if (temp[i] != 0xff) {
            ivs[j++] = temp[i];
        }
    }
}

static void Egg_InheritIVs(Pokemon *egg, Daycare *daycare)
{
    u8 selectedIVs[NUM_INHERITED_IVS], i, availableIVs[STAT_MAX], slots[NUM_INHERITED_IVS], value;

    for (i = 0; i < STAT_MAX; i++) {
        availableIVs[i] = i;
    }

    for (i = 0; i < NUM_INHERITED_IVS; i++) {
        selectedIVs[i] = availableIVs[LCRNG_Next() % (STAT_MAX - i)];
        RemoveIVIndexFromList(availableIVs, i);
    }

    for (i = 0; i < NUM_INHERITED_IVS; i++) {
        slots[i] = LCRNG_Next() % NUM_DAYCARE_MONS;
    }

    for (i = 0; i < NUM_INHERITED_IVS; i++) {
        BoxPokemon *daycareBoxMon = Daycare_GetBoxMon(daycare, slots[i]);

        switch (selectedIVs[i]) {
        case STAT_HP:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_HP_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_HP_IV, (u8 *)&value);
            break;
        case STAT_ATTACK:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_ATK_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_ATK_IV, (u8 *)&value);
            break;
        case STAT_DEFENSE:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_DEF_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_DEF_IV, (u8 *)&value);
            break;
        case STAT_SPEED:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_SPEED_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_SPEED_IV, (u8 *)&value);
            break;
        case STAT_SPECIAL_ATTACK:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_SPATK_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_SPATK_IV, (u8 *)&value);
            break;
        case STAT_SPECIAL_DEFENSE:
            value = BoxPokemon_GetValue(daycareBoxMon, MON_DATA_SPDEF_IV, NULL);
            Pokemon_SetValue(egg, MON_DATA_SPDEF_IV, (u8 *)&value);
            break;
        }
    }
}

static u8 LoadSpeciesEggMoves(Pokemon *mon, u16 *eggMoves)
{
    u16 species, eggMoveOffset, eggMoveCount, i;

    eggMoveCount = 0;
    eggMoveOffset = 0;
    species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    for (i = 0; i < NELEMS(sEggMoves) - 1; i++) {
        if (sEggMoves[i] == (EGG_MOVES_SPECIES_OFFSET + species)) {
            eggMoveOffset = i + 1;
            break;
        }
    }

    for (i = 0; i < MAX_EGG_MOVES; i++) {
        if (sEggMoves[eggMoveOffset + i] > EGG_MOVES_SPECIES_OFFSET) {
            break;
        } else {
            eggMoves[i] = sEggMoves[eggMoveOffset + i];
            eggMoveCount++;
        }
    }

    return eggMoveCount;
}

static void Egg_BuildMoveset(Pokemon *egg, BoxPokemon *father, BoxPokemon *mother)
{
    u16 i, j, v2, species, levelUpMoveCount, eggMoveCount, form;
    EggMoveBuilder *builder = Heap_Alloc(HEAP_ID_FIELD1, sizeof(EggMoveBuilder));

    v2 = 0;

    MI_CpuClearFast(builder, sizeof(EggMoveBuilder));

    species = Pokemon_GetValue(egg, MON_DATA_SPECIES, NULL);
    form = Pokemon_GetValue(egg, MON_DATA_FORM, NULL);
    levelUpMoveCount = Pokemon_LoadLevelUpMoveIdsOf(species, form, builder->eggSpeciesLevelUpMoves);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        builder->fatherMoves[i] = BoxPokemon_GetValue(father, MON_DATA_MOVE1 + i, NULL);
        builder->motherMoves[i] = BoxPokemon_GetValue(mother, MON_DATA_MOVE1 + i, NULL);
    }

    eggMoveCount = LoadSpeciesEggMoves(egg, builder->eggSpeciesEggMoves);

    // Egg moves from the father
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (builder->fatherMoves[i] != MOVE_NONE) {
            for (j = 0; j < eggMoveCount; j++) {
                if (builder->fatherMoves[i] == builder->eggSpeciesEggMoves[j]) {
                    if (Pokemon_AddMove(egg, builder->fatherMoves[i]) == LEARNSET_ALL_SLOTS_FILLED) {
                        Pokemon_ReplaceMove(egg, builder->fatherMoves[i]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }

    // TM/HM moves from the father
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (builder->fatherMoves[i] != MOVE_NONE) {
            for (j = 0; j < NUM_TMHMS; j++) {
                if (builder->fatherMoves[i] == Item_MoveForTMHM(ITEM_TM01 + j)) {
                    if (CanPokemonFormLearnTM(species, form, j)) {
                        if (Pokemon_AddMove(egg, builder->fatherMoves[i]) == LEARNSET_ALL_SLOTS_FILLED) {
                            Pokemon_ReplaceMove(egg, builder->fatherMoves[i]);
                        }
                    }
                }
            }
        }
    }

    // Level-up moves that both parents know
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (builder->fatherMoves[i] == MOVE_NONE) {
            break;
        }

        for (j = 0; j < LEARNED_MOVES_MAX; j++) {
            if (builder->fatherMoves[i] == builder->motherMoves[j] && builder->fatherMoves[i] != MOVE_NONE) {
                builder->sharedMoves[v2++] = builder->fatherMoves[i];
            }
        }
    }

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (builder->sharedMoves[i] == MOVE_NONE) {
            break;
        }

        for (j = 0; j < levelUpMoveCount; j++) {
            if (builder->eggSpeciesLevelUpMoves[j] != MOVE_NONE) {
                if (builder->sharedMoves[i] == builder->eggSpeciesLevelUpMoves[j]) {
                    if (Pokemon_AddMove(egg, builder->sharedMoves[i]) == LEARNSET_ALL_SLOTS_FILLED) {
                        Pokemon_ReplaceMove(egg, builder->sharedMoves[i]);
                    }
                    break;
                }
            }
        }
    }

    Heap_Free(builder);
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

static u16 Daycare_AlterEggSpeciesWithIncenseItem(u16 species, Daycare *daycare)
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
        if (Pokemon_AddMove(mon, MOVE_VOLT_TACKLE) == LEARNSET_ALL_SLOTS_FILLED) {
            Pokemon_ReplaceMove(mon, MOVE_VOLT_TACKLE);
        }
    }
}

static u16 Egg_DetermineEggSpeciesAndParentSlots(Daycare *daycare, u8 parentSlots[])
{
    u16 species[NUM_DAYCARE_MONS], i, eggSpecies;
    BoxPokemon *boxMons[NUM_DAYCARE_MONS];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMons);

    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        if ((species[i] = BoxPokemon_GetValue(boxMons[i], MON_DATA_SPECIES, NULL)) == SPECIES_DITTO) {
            parentSlots[0] = i ^ 1;
            parentSlots[1] = i;
        } else if (BoxPokemon_GetGender(boxMons[i]) == GENDER_FEMALE) {
            parentSlots[0] = i;
            parentSlots[1] = i ^ 1;
        }
    }

    eggSpecies = Pokemon_GetBaseSpeciesFromPersonalData(species[parentSlots[0]]);

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
        Pokemon_SetValue(egg, MON_DATA_EGG_LOCATION, &param2);
    }

    isEgg = TRUE;
    Pokemon_SetValue(egg, MON_DATA_IS_EGG, &isEgg);

    eggName = MessageUtil_SpeciesName(SPECIES_EGG, HEAP_ID_FIELD1);
    Pokemon_SetValue(egg, MON_DATA_NICKNAME_STRING, eggName);
    Strbuf_Free(eggName);

    if (param4 == 4) {
        u32 trainerId = TrainerInfo_ID(trainerInfo);
        u32 gender = TrainerInfo_Gender(trainerInfo);
        Strbuf *otName = TrainerInfo_NameNewStrbuf(trainerInfo, 32);

        Pokemon_SetValue(egg, MON_DATA_OT_NAME_STRING, otName);
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

    strBuf = MessageUtil_SpeciesName(SPECIES_EGG, HEAP_ID_FIELD1);

    Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
    Strbuf_Free(strBuf);
}

void Daycare_GiveEggFromDaycare(Daycare *daycare, Party *party, TrainerInfo *trainerInfo)
{
    u16 species;
    u8 parentSlots[NUM_DAYCARE_MONS], isEgg;
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD1);

    species = Egg_DetermineEggSpeciesAndParentSlots(daycare, parentSlots);
    species = Daycare_AlterEggSpeciesWithIncenseItem(species, daycare);

    u32 monOTID = TrainerInfo_ID(trainerInfo);
    BoxPokemon *boxMon = Daycare_GetBoxMon(daycare, parentSlots[0]);
    u8 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    Egg_SetInitialData(mon, species, daycare, monOTID, form);

    Egg_InheritIVs(mon, daycare);
    Egg_BuildMoveset(mon, Daycare_GetBoxMon(daycare, parentSlots[1]), Daycare_GetBoxMon(daycare, parentSlots[0]));

    UpdateMonStatusAndTrainerInfo(mon, trainerInfo, 3, SpecialMetLoc_GetId(1, 0), HEAP_ID_FIELD1);

    if (species == SPECIES_PICHU) {
        Egg_TryGiveVoltTackle(mon, daycare);
    }

    isEgg = TRUE;
    Pokemon_SetValue(mon, MON_DATA_IS_EGG, &isEgg);

    Party_AddPokemon(party, mon);
    Daycare_ResetPersonalityAndStepCounter(daycare);
    Heap_Free(mon);
}

static int Party_GetEggCyclesToSubtract(Party *party)
{
    u8 i;
    u8 ability;
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, i), MON_DATA_SANITY_IS_EGG, NULL) == FALSE) {
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

static u8 BoxMon_GetPairDaycareCompatibilityScore(BoxPokemon **boxMonPair)
{
    u16 eggGroups[NUM_DAYCARE_MONS][MAX_EGG_GROUPS];
    u16 species[NUM_DAYCARE_MONS];
    u32 trainerIDs[NUM_DAYCARE_MONS], genders[NUM_DAYCARE_MONS], personality, i;

    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        species[i] = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_SPECIES, NULL);
        trainerIDs[i] = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_OT_ID, NULL);
        personality = BoxPokemon_GetValue(boxMonPair[i], MON_DATA_PERSONALITY, NULL);
        genders[i] = Pokemon_GetGenderOf(species[i], personality);
        eggGroups[i][0] = SpeciesData_GetSpeciesValue(species[i], SPECIES_DATA_EGG_GROUP_1);
        eggGroups[i][1] = SpeciesData_GetSpeciesValue(species[i], SPECIES_DATA_EGG_GROUP_2);
    }

    if (eggGroups[0][0] == EGG_GROUP_UNDISCOVERED || eggGroups[1][0] == EGG_GROUP_UNDISCOVERED) {
        return PARENTS_INCOMPATIBLE;
    }

    if (eggGroups[0][0] == EGG_GROUP_DITTO && eggGroups[1][0] == EGG_GROUP_DITTO) {
        return PARENTS_INCOMPATIBLE;
    }

    if (eggGroups[0][0] == EGG_GROUP_DITTO || eggGroups[1][0] == EGG_GROUP_DITTO) {
        if (trainerIDs[0] == trainerIDs[1]) {
            return PARENTS_LOW_COMPATIBILITY;
        } else {
            return PARENTS_MED_COMPATIBILITY;
        }
    }

    if (genders[0] == genders[1]) {
        return PARENTS_INCOMPATIBLE;
    }

    if ((genders[0] == GENDER_NONE) || (genders[1] == GENDER_NONE)) {
        return PARENTS_INCOMPATIBLE;
    }

    if (Egg_AreEggGroupsCompatible(eggGroups[0], eggGroups[1]) == FALSE) {
        return PARENTS_INCOMPATIBLE;
    }

    if (species[0] == species[1]) {
        if (trainerIDs[0] != trainerIDs[1]) {
            return PARENTS_MAX_COMPATIBILITY;
        } else {
            return PARENTS_MED_COMPATIBILITY;
        }
    } else {
        if (trainerIDs[0] != trainerIDs[1]) {
            return PARENTS_MED_COMPATIBILITY;
        } else {
            return PARENTS_LOW_COMPATIBILITY;
        }
    }

    return 0;
}

static u8 Daycare_GetCompatibilityScore(Daycare *daycare)
{
    BoxPokemon *parents[NUM_DAYCARE_MONS];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, parents);
    return BoxMon_GetPairDaycareCompatibilityScore(parents);
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

BOOL Daycare_Update(Daycare *daycare, Party *party, FieldSystem *fieldSystem)
{
    u32 i, eggCycles, monCount, compatibilityScore, rand;
    u32 v5 = 0, steps;
    int toSubstract;
    BoxPokemon *boxMon[NUM_DAYCARE_MONS];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMon);

    monCount = 0;

    for (i = 0; i < NUM_DAYCARE_MONS; i++) {
        if (BoxPokemon_GetValue(boxMon[i], MON_DATA_SPECIES_EXISTS, NULL) != FALSE) {
            DaycareMon_AddSteps(Daycare_GetDaycareMon(daycare, i), 1);
            monCount++;
        }
    }

    if ((Daycare_HasEgg(daycare) == FALSE) && (monCount == NUM_DAYCARE_MONS)) {
        if ((DaycareMon_GetSteps(Daycare_GetDaycareMon(daycare, 1)) & 0xff) == 0xff) {
            compatibilityScore = Daycare_GetCompatibilityScore(daycare);
            rand = LCRNG_Next();
            rand = (rand * 100) / 0xffff;

            if (compatibilityScore > rand) {
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
                if (Pokemon_GetValue(mon, MON_DATA_CHECKSUM_FAILED, NULL)) {
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

void ov5_021E72BC(Daycare *daycare, StringTemplate *strTemplate)
{
    BoxPokemon *boxMon[NUM_DAYCARE_MONS];
    u16 v1[MON_NAME_LEN + 1];

    Daycare_CopyDaycareMonToBoxMonArray(daycare, boxMon);

    if (BoxPokemon_GetValue(boxMon[0], MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
        StringTemplate_SetNickname(strTemplate, 0, boxMon[0]);
        StringTemplate_SetOTName(strTemplate, 2, boxMon[0]);
    }

    if (BoxPokemon_GetValue(boxMon[1], MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
        StringTemplate_SetNickname(strTemplate, 1, boxMon[1]);
    }
}

void Daycare_BufferNicknameLevelGender(Daycare *daycare, u32 idxNickname, u32 idxLevel, u32 idxGender, u8 slot, StringTemplate *template)
{
    DaycareMon *daycareMon;
    BoxPokemon *boxMon;
    u8 level, gender;
    u16 species;

    daycareMon = Daycare_GetDaycareMon(daycare, slot);
    boxMon = Daycare_GetBoxMon(daycare, slot);

    StringTemplate_SetNickname(template, idxNickname, boxMon);

    level = BoxPokemon_GiveExperience(boxMon, DaycareMon_GetSteps(daycareMon));
    StringTemplate_SetNumber(template, idxLevel, level, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL);

    if (gender != GENDER_NONE) {
        species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

        if (((species == SPECIES_NIDORAN_F) || (species == SPECIES_NIDORAN_M)) && (BoxPokemon_GetValue(boxMon, MON_DATA_HAS_NICKNAME, NULL) == 0)) {
            gender = GENDER_NONE;
        }
    }

    StringTemplate_SetGenderMarker(template, idxGender, gender);
}

u16 Party_StringTemplateSetNicknameReturnSpecies(Party *party, int slot, StringTemplate *strTemplate)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);

    StringTemplate_SetNickname(strTemplate, 0, Pokemon_GetBoxPokemon(mon));
    return Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
}

u8 Daycare_GetState(Daycare *daycare)
{
    u8 numMons;

    if (Daycare_HasEgg(daycare)) {
        return DAYCARE_EGG_WAITING;
    }

    if ((numMons = Daycare_CountMons(daycare))) {
        return numMons + 1; // DAYCARE_ONE_MON or DAYCARE_TWO_MONS
    }

    return DAYCARE_NO_MONS;
}

static u8 DaycareCompatibilityScoreToLevel(u32 compatibility)
{
    switch (compatibility) {
    case PARENTS_INCOMPATIBLE:
        return 3;
    case PARENTS_LOW_COMPATIBILITY:
        return 2;
    case PARENTS_MED_COMPATIBILITY:
        return 1;
    case PARENTS_MAX_COMPATIBILITY:
        return 0;
    }

    return 0;
}

extern u32 Daycare_GetCompatibilityLevel(Daycare *daycare)
{
    u8 compatibility = Daycare_GetCompatibilityScore(daycare);
    u8 v1 = DaycareCompatibilityScoreToLevel(compatibility);

    return v1;
}

static void Egg_CreateHatchedMonInternal(Pokemon *egg, int heapID)
{
    u16 species;
    u16 moves[LEARNED_MOVES_MAX];
    u8 movesPP[LEARNED_MOVES_MAX];
    u32 personality, otID;
    u8 ivs[STAT_MAX], pokerus;
    u8 i, language, metGame, marks, friendship, fatefulEncounter, form, gender;
    Strbuf *strBuf = Strbuf_Init(7 + 1, heapID);
    Pokemon *mon = Pokemon_New(heapID);

    species = Pokemon_GetValue(egg, MON_DATA_SPECIES, NULL);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        moves[i] = Pokemon_GetValue(egg, MON_DATA_MOVE1 + i, NULL);
        movesPP[i] = Pokemon_GetValue(egg, MON_DATA_MOVE1_PP + i, NULL);
    }

    personality = Pokemon_GetValue(egg, MON_DATA_PERSONALITY, NULL);

    for (i = 0; i < STAT_MAX; i++) {
        ivs[i] = Pokemon_GetValue(egg, MON_DATA_HP_IV + i, NULL);
    }

    language = Pokemon_GetValue(egg, MON_DATA_LANGUAGE, NULL);
    metGame = Pokemon_GetValue(egg, MON_DATA_MET_GAME, NULL);
    marks = Pokemon_GetValue(egg, MON_DATA_MARKINGS, NULL);
    pokerus = Pokemon_GetValue(egg, MON_DATA_POKERUS, NULL);
    fatefulEncounter = Pokemon_GetValue(egg, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    Pokemon_GetValue(egg, MON_DATA_OT_NAME_STRING, strBuf);

    gender = Pokemon_GetValue(egg, MON_DATA_OT_GENDER, NULL);
    otID = Pokemon_GetValue(egg, MON_DATA_OT_ID, NULL);
    form = Pokemon_GetValue(egg, MON_DATA_FORM, NULL);

    if (species == SPECIES_MANAPHY) {
        if (Pokemon_GetValue(egg, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(2, 1)) {
            while (Pokemon_IsPersonalityShiny(otID, personality)) {
                personality = ARNG_Next(personality);
            }
        }
    }

    Pokemon_InitWith(mon, species, 1, INIT_IVS_RANDOM, TRUE, personality, OTID_NOT_SET, 0);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, &(moves[i]));
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + i, &(movesPP[i]));
    }

    for (i = 0; i < STAT_MAX; i++) {
        Pokemon_SetValue(mon, MON_DATA_HP_IV + i, &(ivs[i]));
    }

    Pokemon_SetValue(mon, MON_DATA_LANGUAGE, &language);
    Pokemon_SetValue(mon, MON_DATA_MET_GAME, &metGame);
    Pokemon_SetValue(mon, MON_DATA_MARKINGS, &marks);

    friendship = 120;

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);
    Pokemon_SetValue(mon, MON_DATA_POKERUS, &pokerus);
    Pokemon_SetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, &fatefulEncounter);
    Pokemon_SetValue(mon, MON_DATA_OT_NAME_STRING, strBuf);
    Pokemon_SetValue(mon, MON_DATA_OT_GENDER, &gender);
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &otID);
    Pokemon_SetValue(mon, MON_DATA_FORM, &form);

    u16 location = Pokemon_GetValue(egg, MON_DATA_EGG_LOCATION, NULL);
    u8 year = Pokemon_GetValue(egg, MON_DATA_EGG_YEAR, NULL);
    u8 month = Pokemon_GetValue(egg, MON_DATA_EGG_MONTH, NULL);
    u8 day = Pokemon_GetValue(egg, MON_DATA_EGG_DAY, NULL);

    Pokemon_SetValue(mon, MON_DATA_EGG_LOCATION, &location);
    Pokemon_SetValue(mon, MON_DATA_EGG_YEAR, &year);
    Pokemon_SetValue(mon, MON_DATA_EGG_MONTH, &month);
    Pokemon_SetValue(mon, MON_DATA_EGG_DAY, &day);

    location = Pokemon_GetValue(egg, MON_DATA_MET_LOCATION, NULL);
    year = Pokemon_GetValue(egg, MON_DATA_MET_YEAR, NULL);
    month = Pokemon_GetValue(egg, MON_DATA_MET_MONTH, NULL);
    day = Pokemon_GetValue(egg, MON_DATA_MET_DAY, NULL);

    Pokemon_SetValue(mon, MON_DATA_MET_LOCATION, &location);
    Pokemon_SetValue(mon, MON_DATA_MET_YEAR, &year);
    Pokemon_SetValue(mon, MON_DATA_MET_MONTH, &month);
    Pokemon_SetValue(mon, MON_DATA_MET_DAY, &day);

    Pokemon_Copy(mon, egg);
    Strbuf_Free(strBuf);
    Heap_Free(mon);
}

void Egg_CreateHatchedMon(Pokemon *egg, int heapID)
{
    u8 isEgg, hasNickname;
    u8 ball, metLevel;
    u16 species;
    charcode_t nickname[MON_NAME_LEN + 1];

    isEgg = 70; // wtf?
    hasNickname = FALSE;
    ball = ITEM_POKE_BALL;
    metLevel = 0;

    Egg_CreateHatchedMonInternal(egg, heapID);
    Pokemon_SetValue(egg, MON_DATA_IS_EGG, &isEgg);

    species = Pokemon_GetValue(egg, MON_DATA_SPECIES, NULL);

    MessageLoader_GetSpeciesName(species, HEAP_ID_SYSTEM, nickname);
    Pokemon_SetValue(egg, MON_DATA_NICKNAME, nickname);
    Pokemon_SetValue(egg, MON_DATA_HAS_NICKNAME, &hasNickname);
    Pokemon_SetValue(egg, MON_DATA_POKEBALL, &ball);
    Pokemon_SetValue(egg, MON_DATA_MET_LEVEL, &metLevel);
    Pokemon_CalcLevelAndStats(egg);
}

u32 BoxMon_GetPairDaycareCompatibilityLevel(BoxPokemon **boxMonPair)
{
    return DaycareCompatibilityScoreToLevel(BoxMon_GetPairDaycareCompatibilityScore(boxMonPair));
}
