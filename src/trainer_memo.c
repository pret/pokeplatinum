#include "trainer_memo.h"

#include <nitro.h>
#include <string.h>

#include "constants/flavor.h"
#include "generated/natures.h"

#include "struct_defs/struct_02090800.h"

#include "global/pm_version.h"

#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "rtc.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02017038.h"

#include "res/text/bank/pokemon_summary_screen.h"

typedef enum MetCondition {
    MET_CONDITION_WILD_ENCOUNTER,
    MET_CONDITION_WILD_ENCOUNTER_TRADED,
    MET_CONDITION_WILD_GIFT,
    MET_CONDITION_EGG_HATCHED,
    MET_CONDITION_EGG_HATCHED_TRADED,
    MET_CONDITION_EGG_HATCHED_GIFT,
    MET_CONDITION_EGG_HATCHED_GIFT_TRADED,
    MET_CONDITION_FATEFUL_ENCOUNTER,
    MET_CONDITION_FATEFUL_ENCOUNTER_TRADED,
    MET_CONDITION_FATEFUL_EGG_HATCHED,
    MET_CONDITION_FATEFUL_EGG_HATCHED_TRADED,
    MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED,
    MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED_TRADED,
    MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT,
    MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT_TRADED,
    MET_CONDITION_MIGRATED,
    MET_CONDITION_EGG,
    MET_CONDITION_EGG_TRADED,
    MET_CONDITION_FATEFUL_EGG,
    MET_CONDITION_FATEFUL_EGG_TRADED,
    MET_CONDITION_FATEFUL_EGG_ARRIVED,
} MetCondition;

static int MonMetCondition(Pokemon *mon, BOOL param1, int param2);
static void FormatNature(PokemonInfoDisplayStruct *infoDisplay);
static void FormatDateAndLocationMet(PokemonInfoDisplayStruct *infoDisplay, int msgNo);
static void FormatDateAndLocation_Migrated(PokemonInfoDisplayStruct *infoDisplay, int param1);
static void FormatDateAndLocation_Egg(PokemonInfoDisplayStruct *infoDisplay, int param1, int param2);
static void FormatCharacteristic(PokemonInfoDisplayStruct *infoDisplay);
static void FormatFlavorPreference(PokemonInfoDisplayStruct *infoDisplay);
static void FormatEggWatch(PokemonInfoDisplayStruct *infoDisplay);
static void AssignTrainerInfoToBoxPokemon(BoxPokemon *boxMon, TrainerInfo *param1, int param2);
static void BoxPokemon_SetMetLocationAndDate(BoxPokemon *boxMon, int metLocation, int isHatch);
static void BoxPokemon_ResetMetLocationAndDate(BoxPokemon *boxMon, int isHatch);
static void BoxPokemon_SetMetLevelToCurrentLevel(BoxPokemon *boxMon);
static void BoxPokemon_SetFatefulEncounterFlag(BoxPokemon *boxMon);

PokemonInfoDisplayStruct *sub_02092494(Pokemon *mon, BOOL isMine, int heapID)
{
    PokemonInfoDisplayStruct *ptr = Heap_AllocFromHeap(heapID, sizeof(PokemonInfoDisplayStruct));
    ptr->heapID = heapID;
    ptr->msgData = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_SUMMARY_SCREEN, ptr->heapID);
    ptr->msgFmt = StringTemplate_New(9, 32, ptr->heapID);
    ptr->mon = mon;
    ptr->isMine = isMine;
    ptr->notepad.natureLine = 0;
    ptr->notepad.nature = NULL;
    ptr->notepad.dateLocationMetLine = 0;
    ptr->notepad.dateLocationMet = NULL;
    ptr->notepad.characteristicLine = 0;
    ptr->notepad.characteristic = NULL;
    ptr->notepad.flavorPreferenceLine = 0;
    ptr->notepad.flavorPreference = NULL;
    ptr->notepad.eggWatchLine = 0;
    ptr->notepad.eggWatch = NULL;

    switch (MonMetCondition(ptr->mon, ptr->isMine, ptr->heapID)) {
    case MET_CONDITION_WILD_ENCOUNTER:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00049);
        ptr->notepad.characteristicLine = 6;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_WILD_ENCOUNTER_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00050);
        ptr->notepad.characteristicLine = 6;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_WILD_GIFT:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00051);
        ptr->notepad.characteristicLine = 6;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00052);
        ptr->notepad.characteristicLine = 8;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00053);
        ptr->notepad.characteristicLine = 8;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_GIFT:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00054);
        ptr->notepad.characteristicLine = 8;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_GIFT_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00055);
        ptr->notepad.characteristicLine = 8;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_ENCOUNTER:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00056);
        ptr->notepad.characteristicLine = 7;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 8;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_ENCOUNTER_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00057);
        ptr->notepad.characteristicLine = 7;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 8;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00058);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00059);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00060);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00061);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00062);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT_TRADED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocationMet(ptr, pl_msg_00000455_00063);
        ptr->notepad.characteristicLine = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_MIGRATED:
        ptr->notepad.natureLine = 1;
        FormatNature(ptr);
        ptr->notepad.dateLocationMetLine = 2;
        FormatDateAndLocation_Migrated(ptr, pl_msg_00000455_00064);
        ptr->notepad.characteristicLine = 6;
        FormatCharacteristic(ptr);
        ptr->notepad.flavorPreferenceLine = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG:
        ptr->notepad.dateLocationMetLine = 1;
        FormatDateAndLocation_Egg(ptr, pl_msg_00000455_00101, 0);
        ptr->notepad.eggWatchLine = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_EGG_TRADED:
        ptr->notepad.dateLocationMetLine = 1;
        FormatDateAndLocation_Egg(ptr, pl_msg_00000455_00102, 1);
        ptr->notepad.eggWatchLine = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG:
        ptr->notepad.dateLocationMetLine = 1;
        FormatDateAndLocation_Egg(ptr, pl_msg_00000455_00103, 0);
        ptr->notepad.eggWatchLine = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_TRADED:
        ptr->notepad.dateLocationMetLine = 1;
        FormatDateAndLocation_Egg(ptr, pl_msg_00000455_00103, 1);
        ptr->notepad.eggWatchLine = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_ARRIVED:
        ptr->notepad.dateLocationMetLine = 1;
        FormatDateAndLocation_Egg(ptr, pl_msg_00000455_00104, 0);
        ptr->notepad.eggWatchLine = 6;
        FormatEggWatch(ptr);
        break;
    }
    return ptr;
}

void sub_0209282C(PokemonInfoDisplayStruct *infoDisplay)
{
    if (infoDisplay->notepad.nature != NULL) {
        Heap_Free(infoDisplay->notepad.nature);
    }
    if (infoDisplay->notepad.dateLocationMet != NULL) {
        Heap_Free(infoDisplay->notepad.dateLocationMet);
    }
    if (infoDisplay->notepad.characteristic != NULL) {
        Heap_Free(infoDisplay->notepad.characteristic);
    }
    if (infoDisplay->notepad.flavorPreference != NULL) {
        Heap_Free(infoDisplay->notepad.flavorPreference);
    }
    if (infoDisplay->notepad.eggWatch != NULL) {
        Heap_Free(infoDisplay->notepad.eggWatch);
    }

    StringTemplate_Free(infoDisplay->msgFmt);
    MessageLoader_Free(infoDisplay->msgData);
    Heap_Free(infoDisplay);
}

static void FormatNature(PokemonInfoDisplayStruct *infoDisplay)
{
    int nature = Pokemon_GetNature(infoDisplay->mon);
    if (nature <= NATURE_COUNT - 1) {
        infoDisplay->notepad.nature = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);
        MessageLoader_GetStrbuf(infoDisplay->msgData, (24 + nature), infoDisplay->notepad.nature);
    }
}

static void FormatDateAndLocationMet(PokemonInfoDisplayStruct *infoDisplay, int msgNo)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 8), infoDisplay->heapID);
    infoDisplay->notepad.dateLocationMet = Strbuf_Init((((2 * 18) * 2) * 8), infoDisplay->heapID);

    MessageLoader_GetStrbuf(infoDisplay->msgData, msgNo, str);
    StringTemplate_SetNumber(infoDisplay->msgFmt, 0, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(infoDisplay->msgFmt, 1, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_MONTH, NULL));
    StringTemplate_SetNumber(infoDisplay->msgFmt, 2, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_DAY, NULL), 2, 0, 1);
    StringTemplate_SetNumber(infoDisplay->msgFmt, 3, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);
    StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_LOCATION, NULL));
    StringTemplate_SetNumber(infoDisplay->msgFmt, 5, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(infoDisplay->msgFmt, 6, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_MONTH, NULL));
    StringTemplate_SetNumber(infoDisplay->msgFmt, 7, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_DAY, NULL), 2, 0, 1);
    StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 8, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_LOCATION, NULL));

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->notepad.dateLocationMet, str);
    Strbuf_Free(str);
}

static void FormatDateAndLocation_Migrated(PokemonInfoDisplayStruct *infoDisplay, int msgNo)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);
    infoDisplay->notepad.dateLocationMet = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);

    MessageLoader_GetStrbuf(infoDisplay->msgData, msgNo, str);
    StringTemplate_SetNumber(infoDisplay->msgFmt, 0, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(infoDisplay->msgFmt, 1, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_MONTH, NULL));
    StringTemplate_SetNumber(infoDisplay->msgFmt, 2, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_DAY, NULL), 2, 0, 1);
    StringTemplate_SetNumber(infoDisplay->msgFmt, 3, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);

    switch (Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_GAME, NULL)) {
    default:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 7)));
        break;
    case VERSION_FIRERED:
    case VERSION_LEAFGREEN:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 3)));
        break;
    case VERSION_HEARTGOLD:
    case VERSION_SOULSILVER:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 4)));
        break;
    case VERSION_RUBY:
    case VERSION_SAPPHIRE:
    case VERSION_EMERALD:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 5)));
        break;
    case VERSION_GAMECUBE:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 8)));
        break;
    case VERSION_DIAMOND:
    case VERSION_PEARL:
    case VERSION_PLATINUM:
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 4, (SpecialMetLoc_GetId(1, 7)));
        break;
    }

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->notepad.dateLocationMet, str);
    Strbuf_Free(str);
}

static void FormatDateAndLocation_Egg(PokemonInfoDisplayStruct *infoDisplay, int param1, int param2)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 5), infoDisplay->heapID);
    infoDisplay->notepad.dateLocationMet = Strbuf_Init((((2 * 18) * 2) * 5), infoDisplay->heapID);

    MessageLoader_GetStrbuf(infoDisplay->msgData, param1, str);

    if (param2 == 0) {
        StringTemplate_SetNumber(infoDisplay->msgFmt, 5, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_YEAR, NULL), 2, 2, 1);
        StringTemplate_SetMonthName(infoDisplay->msgFmt, 6, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_MONTH, NULL));
        StringTemplate_SetNumber(infoDisplay->msgFmt, 7, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_DAY, NULL), 2, 0, 1);
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 8, Pokemon_GetValue(infoDisplay->mon, MON_DATA_MET_LOCATION, NULL));
    } else {
        StringTemplate_SetNumber(infoDisplay->msgFmt, 5, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_YEAR, NULL), 2, 2, 1);
        StringTemplate_SetMonthName(infoDisplay->msgFmt, 6, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_MONTH, NULL));
        StringTemplate_SetNumber(infoDisplay->msgFmt, 7, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_DAY, NULL), 2, 0, 1);
        StringTemplate_SetMetLocationName(infoDisplay->msgFmt, 8, Pokemon_GetValue(infoDisplay->mon, MON_DATA_HATCH_LOCATION, NULL));
    }

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->notepad.dateLocationMet, str);
    Strbuf_Free(str);
}

static const u16 Unk_020F5578[6][5] = {
    { 0x47, 0x48, 0x49, 0x4A, 0x4B },
    { 0x4C, 0x4D, 0x4E, 0x4F, 0x50 },
    { 0x51, 0x52, 0x53, 0x54, 0x55 },
    { 0x56, 0x57, 0x58, 0x59, 0x5A },
    { 0x5B, 0x5C, 0x5D, 0x5E, 0x5F },
    { 0x60, 0x61, 0x62, 0x63, 0x64 }
};

static void FormatCharacteristic(PokemonInfoDisplayStruct *infoDisplay)
{
    int index, maxIV;

    infoDisplay->notepad.characteristic = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);

    int hpIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_HP_IV, NULL);
    int atkIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_ATK_IV, NULL);
    int defIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_DEF_IV, NULL);
    int speedIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_SPEED_IV, NULL);
    int spAtkIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_SPATK_IV, NULL);
    int spDefIV = Pokemon_GetValue(infoDisplay->mon, MON_DATA_SPDEF_IV, NULL);
    u32 personality = Pokemon_GetValue(infoDisplay->mon, MON_DATA_PERSONALITY, NULL);

    switch (personality % 6) {
    case 0:
    default:
        index = 0;
        maxIV = hpIV;
        if (maxIV < atkIV) {
            index = 1;
            maxIV = atkIV;
        }
        if (maxIV < defIV) {
            index = 2;
            maxIV = defIV;
        }
        if (maxIV < speedIV) {
            index = 3;
            maxIV = speedIV;
        }
        if (maxIV < spAtkIV) {
            index = 4;
            maxIV = spAtkIV;
        }
        if (maxIV < spDefIV) {
            index = 5;
            maxIV = spDefIV;
        }
        break;
    case 1:
        index = 1;
        maxIV = atkIV;
        if (maxIV < defIV) {
            index = 2;
            maxIV = defIV;
        }
        if (maxIV < speedIV) {
            index = 3;
            maxIV = speedIV;
        }
        if (maxIV < spAtkIV) {
            index = 4;
            maxIV = spAtkIV;
        }
        if (maxIV < spDefIV) {
            index = 5;
            maxIV = spDefIV;
        }
        if (maxIV < hpIV) {
            index = 0;
            maxIV = hpIV;
        }
        break;
    case 2:
        index = 2;
        maxIV = defIV;
        if (maxIV < speedIV) {
            index = 3;
            maxIV = speedIV;
        }
        if (maxIV < spAtkIV) {
            index = 4;
            maxIV = spAtkIV;
        }
        if (maxIV < spDefIV) {
            index = 5;
            maxIV = spDefIV;
        }
        if (maxIV < hpIV) {
            index = 0;
            maxIV = hpIV;
        }
        if (maxIV < atkIV) {
            index = 1;
            maxIV = atkIV;
        }
        break;
    case 3:
        index = 3;
        maxIV = speedIV;
        if (maxIV < spAtkIV) {
            index = 4;
            maxIV = spAtkIV;
        }
        if (maxIV < spDefIV) {
            index = 5;
            maxIV = spDefIV;
        }
        if (maxIV < hpIV) {
            index = 0;
            maxIV = hpIV;
        }
        if (maxIV < atkIV) {
            index = 1;
            maxIV = atkIV;
        }
        if (maxIV < defIV) {
            index = 2;
            maxIV = defIV;
        }
        break;
    case 4:
        index = 4;
        maxIV = spAtkIV;
        if (maxIV < spDefIV) {
            index = 5;
            maxIV = spDefIV;
        }
        if (maxIV < hpIV) {
            index = 0;
            maxIV = hpIV;
        }
        if (maxIV < atkIV) {
            index = 1;
            maxIV = atkIV;
        }
        if (maxIV < defIV) {
            index = 2;
            maxIV = defIV;
        }
        if (maxIV < speedIV) {
            index = 3;
            maxIV = speedIV;
        }
        break;
    case 5:
        index = 5;
        maxIV = spDefIV;
        if (maxIV < hpIV) {
            index = 0;
            maxIV = hpIV;
        }
        if (maxIV < atkIV) {
            index = 1;
            maxIV = atkIV;
        }
        if (maxIV < defIV) {
            index = 2;
            maxIV = defIV;
        }
        if (maxIV < speedIV) {
            index = 3;
            maxIV = speedIV;
        }
        if (maxIV < spAtkIV) {
            index = 4;
            maxIV = spAtkIV;
        }
        break;
    }
    MessageLoader_GetStrbuf(infoDisplay->msgData, Unk_020F5578[index][(maxIV % 5)], infoDisplay->notepad.characteristic);
}

static const u16 Unk_020F556C[6] = {
    0x46,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45
};

static void FormatFlavorPreference(PokemonInfoDisplayStruct *infoDisplay)
{
    infoDisplay->notepad.flavorPreference = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);
    int index = 0;
    for (int flavor = 0; flavor < FLAVOR_MAX; flavor++) {
        if (Pokemon_GetFlavorAffinity(infoDisplay->mon, flavor) == 1) {
            index = flavor + 1;
        }
    }

    MessageLoader_GetStrbuf(infoDisplay->msgData, Unk_020F556C[index], infoDisplay->notepad.flavorPreference);
}

static void FormatEggWatch(PokemonInfoDisplayStruct *infoDisplay)
{
    int msgNo;
    int eggCycles = Pokemon_GetValue(infoDisplay->mon, MON_DATA_FRIENDSHIP, NULL);

    infoDisplay->notepad.eggWatch = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);

    if (eggCycles <= 5) {
        msgNo = pl_msg_00000455_00105;
    } else if (eggCycles <= 10) {
        msgNo = pl_msg_00000455_00106;
    } else if (eggCycles <= 40) {
        msgNo = pl_msg_00000455_00107;
    } else {
        msgNo = pl_msg_00000455_00108;
    }
    MessageLoader_GetStrbuf(infoDisplay->msgData, msgNo, infoDisplay->notepad.eggWatch);
}

static int MonMetCondition(Pokemon *mon, BOOL param1, int param2)
{
    int v0 = 0;

    if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == 0) {
        if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == 0) {
            if (Pokemon_GetValue(mon, MON_DATA_HATCH_LOCATION, NULL) == (SpecialMetLoc_GetId(0, 55))) {
                v0 = 15;
            } else if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (param1 == 1) {
                    v0 = 7;
                } else {
                    v0 = 8;
                }
            } else if (Pokemon_GetValue(mon, MON_DATA_HATCH_LOCATION, NULL) == (SpecialMetLoc_GetId(1, 1))) {
                v0 = 2;
            } else {
                if (param1 == 1) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
            }
        } else {
            if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 2)) {
                    if (param1 == 1) {
                        v0 = 13;
                    } else {
                        v0 = 14;
                    }
                } else if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(2, 1)) {
                    if (param1 == 1) {
                        v0 = 11;
                    } else {
                        v0 = 12;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 9;
                    } else {
                        v0 = 10;
                    }
                }
            } else {
                if ((Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 1)) || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 0)) || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 9)) || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 10)) || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 11))) {
                    if (param1 == 1) {
                        v0 = 5;
                    } else {
                        v0 = 6;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 3;
                    } else {
                        v0 = 4;
                    }
                }
            }
        }
    } else {
        if (param1 == 1) {
            if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == (SpecialMetLoc_GetId(2, 1))) {
                    v0 = 20;
                } else {
                    v0 = 18;
                }
            } else {
                v0 = 16;
            }
        } else {
            if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                v0 = 19;
            } else {
                v0 = 17;
            }
        }
    }

    return v0;
}

void UpdateMonStatusAndTrainerInfo(Pokemon *mon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID)
{
    UpdateBoxMonStatusAndTrainerInfo(&mon->box, trainerInfo, sel, metLocation, heapID);
}

void UpdateBoxMonStatusAndTrainerInfo(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID)
{
    switch (sel) {
    case 0:
        if (metLocation > (SpecialMetLoc_GetId(1, 0))) {
            metLocation = (SpecialMetLoc_GetId(2, 2));
        }

        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
            BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        } else {
            BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
            BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
        }

        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 1:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 1)), TRUE);
            BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        } else {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 1)), TRUE);
        }
        break;
    case 2:
        BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
        BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(0, 55)), TRUE);
        BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        break;
    case 3:
        BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
        BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 4:
        if (sub_0207884C(boxMon, trainerInfo, heapID) == 1) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
                BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
            } else {
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
                BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
            }
        } else {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
                BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
            } else {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
            }
        }

        BoxPokemon_SetFatefulEncounterFlag(boxMon);
        break;
    case 5:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
            (void)0;
        } else {
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 2)), TRUE);
        }
        break;
    case 6:
        if (metLocation > (SpecialMetLoc_GetId(1, 0))) {
            metLocation = (SpecialMetLoc_GetId(2, 2));
        }

        if (sub_0207884C(boxMon, trainerInfo, heapID) == 0) {
            {
                int v0;

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_HATCH_LOCATION, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_HATCH_YEAR, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_MET_YEAR, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_HATCH_MONTH, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_MET_MONTH, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_HATCH_DAY, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_MET_DAY, &v0);
            }
        }

        BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    }
}

static void AssignTrainerInfoToBoxPokemon(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int heapID)
{
    int v0 = TrainerInfo_ID(trainerInfo);
    int v1 = TrainerInfo_Gender(trainerInfo);
    Strbuf *v2 = TrainerInfo_NameNewStrbuf(trainerInfo, heapID);

    BoxPokemon_SetValue(boxMon, MON_DATA_OT_ID, &v0);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_GENDER, &v1);
    BoxPokemon_SetValue(boxMon, MON_DATA_OTNAME_STRBUF, v2);
    Strbuf_Free(v2);
}

static void BoxPokemon_SetMetLocationAndDate(BoxPokemon *boxMon, int metLocation, int isHatch)
{
    RTCDate date;

    GetCurrentDate(&date);

    if (isHatch == FALSE) {
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &metLocation);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_YEAR, &date.year);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_MONTH, &date.month);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_DAY, &date.day);
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_LOCATION, &metLocation);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_YEAR, &date.year);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_MONTH, &date.month);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_DAY, &date.day);
    }
}

static void BoxPokemon_ResetMetLocationAndDate(BoxPokemon *boxMon, int isHatch)
{
    int value = 0;

    if (isHatch == FALSE) {
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_YEAR, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_MONTH, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_DAY, &value);
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_LOCATION, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_YEAR, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_MONTH, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_HATCH_DAY, &value);
    }
}

static void BoxPokemon_SetMetLevelToCurrentLevel(BoxPokemon *boxMon)
{
    int level = BoxPokemon_GetValue(boxMon, MON_DATA_LEVEL, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_LEVEL, &level);
}

static void BoxPokemon_SetFatefulEncounterFlag(BoxPokemon *boxMon)
{
    int fatefulEncounter = TRUE;
    BoxPokemon_SetValue(boxMon, MON_DATA_FATEFUL_ENCOUNTER, &fatefulEncounter);
}
