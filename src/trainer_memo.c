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

enum MetCondition {
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
};

static const u16 sFlavorMsgs[FLAVOR_MAX + 1] = {
    PokemonSummary_Text_HappilyEatsAnything,
    PokemonSummary_Text_LikesSpicyFood,
    PokemonSummary_Text_LikesDryFood,
    PokemonSummary_Text_LikesSweetFood,
    PokemonSummary_Text_LikesBitterFood,
    PokemonSummary_Text_LikesSourFood,
};

static const u16 sCharactersticMsgs[6][5] = {
    { PokemonSummary_Text_LovesToEat, PokemonSummary_Text_OftenDozesOff, PokemonSummary_Text_OftenScattersThings, PokemonSummary_Text_ScattersThingsOften, PokemonSummary_Text_LikesToRelax },
    { PokemonSummary_Text_ProudOfItsPower, PokemonSummary_Text_LikesToTrashAbout, PokemonSummary_Text_ALittleQuickTempered, PokemonSummary_Text_LikesToFight, PokemonSummary_Text_QuickTempered },
    { PokemonSummary_Text_SturdyBody, PokemonSummary_Text_CapableOfTakingHits, PokemonSummary_Text_HighlyPersistent, PokemonSummary_Text_GoodEndurance, PokemonSummary_Text_GoodPerseverance },
    { PokemonSummary_Text_LikesToRun, PokemonSummary_Text_AlertToSounds, PokemonSummary_Text_ImpetuousAndSilly, PokemonSummary_Text_SomewhatOfAClown, PokemonSummary_Text_QuickToFlee },
    { PokemonSummary_Text_HighlyCurious, PokemonSummary_Text_Mischievous, PokemonSummary_Text_ThoroughlyCunning, PokemonSummary_Text_OftenLostInThought, PokemonSummary_Text_VeryFinicky },
    { PokemonSummary_Text_StrongWilled, PokemonSummary_Text_SomewhatVain, PokemonSummary_Text_StronglyDefiant, PokemonSummary_Text_HatesToLose, PokemonSummary_Text_SomewhatStubborn },
};

static enum MetCondition MonMetCondition(Pokemon *mon, BOOL param1, int param2);
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
    ptr->nature.line = 0;
    ptr->nature.string = NULL;
    ptr->metDateAndLocation.line = 0;
    ptr->metDateAndLocation.string = NULL;
    ptr->characteristic.line = 0;
    ptr->characteristic.string = NULL;
    ptr->flavorPreference.line = 0;
    ptr->flavorPreference.string = NULL;
    ptr->eggWatch.line = 0;
    ptr->eggWatch.string = NULL;

    switch (MonMetCondition(ptr->mon, ptr->isMine, ptr->heapID)) {
    case MET_CONDITION_WILD_ENCOUNTER:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_WildEncounter);
        ptr->characteristic.line = 6;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_WILD_ENCOUNTER_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_WildEncounterTraded);
        ptr->characteristic.line = 6;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_WILD_GIFT:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_WildEncounterGift);
        ptr->characteristic.line = 6;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_EggHatched);
        ptr->characteristic.line = 8;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_EggHatchedTraded);
        ptr->characteristic.line = 8;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_GIFT:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_EggHatchedGift);
        ptr->characteristic.line = 8;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG_HATCHED_GIFT_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_EggHatchedGiftTraded);
        ptr->characteristic.line = 8;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 9;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_ENCOUNTER:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEncounter);
        ptr->characteristic.line = 7;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 8;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_ENCOUNTER_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEncounterTraded);
        ptr->characteristic.line = 7;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 8;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatched);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatchedTraded);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatchedArrived);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_ARRIVED_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatchedArrivedTraded);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatchedGift);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_HATCHED_GIFT_TRADED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocationMet(ptr, PokemonSummary_Text_MetCondition_FatefulEggHatchedGiftTraded);
        ptr->characteristic.line = 9;
        FormatCharacteristic(ptr);
        break;
    case MET_CONDITION_MIGRATED:
        ptr->nature.line = 1;
        FormatNature(ptr);
        ptr->metDateAndLocation.line = 2;
        FormatDateAndLocation_Migrated(ptr, PokemonSummary_Text_MetCondition_Migrated);
        ptr->characteristic.line = 6;
        FormatCharacteristic(ptr);
        ptr->flavorPreference.line = 7;
        FormatFlavorPreference(ptr);
        break;
    case MET_CONDITION_EGG:
        ptr->metDateAndLocation.line = 1;
        FormatDateAndLocation_Egg(ptr, PokemonSummary_Text_MetCondition_Egg, FALSE);
        ptr->eggWatch.line = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_EGG_TRADED:
        ptr->metDateAndLocation.line = 1;
        FormatDateAndLocation_Egg(ptr, PokemonSummary_Text_MetCondition_EggTraded, TRUE);
        ptr->eggWatch.line = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG:
        ptr->metDateAndLocation.line = 1;
        FormatDateAndLocation_Egg(ptr, PokemonSummary_Text_MetCondition_FatefulEgg, FALSE);
        ptr->eggWatch.line = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_TRADED:
        ptr->metDateAndLocation.line = 1;
        FormatDateAndLocation_Egg(ptr, PokemonSummary_Text_MetCondition_FatefulEgg, TRUE);
        ptr->eggWatch.line = 6;
        FormatEggWatch(ptr);
        break;
    case MET_CONDITION_FATEFUL_EGG_ARRIVED:
        ptr->metDateAndLocation.line = 1;
        FormatDateAndLocation_Egg(ptr, PokemonSummary_Text_MetCondition_FatefulEggArrived, FALSE);
        ptr->eggWatch.line = 6;
        FormatEggWatch(ptr);
        break;
    }
    return ptr;
}

void sub_0209282C(PokemonInfoDisplayStruct *infoDisplay)
{
    if (infoDisplay->nature.string != NULL) {
        Heap_Free(infoDisplay->nature.string);
    }
    if (infoDisplay->metDateAndLocation.string != NULL) {
        Heap_Free(infoDisplay->metDateAndLocation.string);
    }
    if (infoDisplay->characteristic.string != NULL) {
        Heap_Free(infoDisplay->characteristic.string);
    }
    if (infoDisplay->flavorPreference.string != NULL) {
        Heap_Free(infoDisplay->flavorPreference.string);
    }
    if (infoDisplay->eggWatch.string != NULL) {
        Heap_Free(infoDisplay->eggWatch.string);
    }

    StringTemplate_Free(infoDisplay->msgFmt);
    MessageLoader_Free(infoDisplay->msgData);
    Heap_Free(infoDisplay);
}

static void FormatNature(PokemonInfoDisplayStruct *infoDisplay)
{
    int nature = Pokemon_GetNature(infoDisplay->mon);
    if (nature <= NATURE_COUNT - 1) {
        infoDisplay->nature.string = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);
        MessageLoader_GetStrbuf(infoDisplay->msgData, PokemonSummary_Text_Nature_Hardy + nature, infoDisplay->nature.string);
    }
}

static void FormatDateAndLocationMet(PokemonInfoDisplayStruct *infoDisplay, int msgNo)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 8), infoDisplay->heapID);
    infoDisplay->metDateAndLocation.string = Strbuf_Init((((2 * 18) * 2) * 8), infoDisplay->heapID);

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

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->metDateAndLocation.string, str);
    Strbuf_Free(str);
}

static void FormatDateAndLocation_Migrated(PokemonInfoDisplayStruct *infoDisplay, int msgNo)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);
    infoDisplay->metDateAndLocation.string = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);

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

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->metDateAndLocation.string, str);
    Strbuf_Free(str);
}

static void FormatDateAndLocation_Egg(PokemonInfoDisplayStruct *infoDisplay, int param1, int param2)
{
    Strbuf *str = Strbuf_Init((((2 * 18) * 2) * 5), infoDisplay->heapID);
    infoDisplay->metDateAndLocation.string = Strbuf_Init((((2 * 18) * 2) * 5), infoDisplay->heapID);

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

    StringTemplate_Format(infoDisplay->msgFmt, infoDisplay->metDateAndLocation.string, str);
    Strbuf_Free(str);
}

static void FormatCharacteristic(PokemonInfoDisplayStruct *infoDisplay)
{
    int index, maxIV;

    infoDisplay->characteristic.string = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);

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
    MessageLoader_GetStrbuf(infoDisplay->msgData, sCharactersticMsgs[index][maxIV % 5], infoDisplay->characteristic.string);
}

static void FormatFlavorPreference(PokemonInfoDisplayStruct *infoDisplay)
{
    infoDisplay->flavorPreference.string = Strbuf_Init(((2 * 18) * 2), infoDisplay->heapID);
    int index = 0;
    for (int flavor = 0; flavor < FLAVOR_MAX; flavor++) {
        if (Pokemon_GetFlavorAffinity(infoDisplay->mon, flavor) == 1) {
            index = flavor + 1;
        }
    }

    MessageLoader_GetStrbuf(infoDisplay->msgData, sFlavorMsgs[index], infoDisplay->flavorPreference.string);
}

static void FormatEggWatch(PokemonInfoDisplayStruct *infoDisplay)
{
    int msgNo;
    int eggCycles = Pokemon_GetValue(infoDisplay->mon, MON_DATA_FRIENDSHIP, NULL);

    infoDisplay->eggWatch.string = Strbuf_Init((((2 * 18) * 2) * 4), infoDisplay->heapID);

    if (eggCycles <= 5) {
        msgNo = PokemonSummary_Text_EggWatch_ItWillHatchSoon;
    } else if (eggCycles <= 10) {
        msgNo = PokemonSummary_Text_EggWatch_CloseToHatching;
    } else if (eggCycles <= 40) {
        msgNo = PokemonSummary_Text_EggWatch_NotCloseToHatching;
    } else {
        msgNo = PokemonSummary_Text_EggWatch_LongTimeToHatch;
    }
    MessageLoader_GetStrbuf(infoDisplay->msgData, msgNo, infoDisplay->eggWatch.string);
}

static enum MetCondition MonMetCondition(Pokemon *mon, BOOL param1, int param2)
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
                if ((Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 1))
                    || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 0))
                    || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 9))
                    || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 10))
                    || (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == SpecialMetLoc_GetId(1, 11))) {
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
