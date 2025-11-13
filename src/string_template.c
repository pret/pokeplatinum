#include "string_template.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "generated/abilities.h"
#include "generated/genders.h"
#include "generated/moves.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_defs/trainer.h"

#include "charcode.h"
#include "enums.h"
#include "heap.h"
#include "message.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_02014D38.h"
#include "unk_02017038.h"
#include "unk_020996D0.h"

#include "res/text/bank/common_strings.h"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/mystery_gift_event_names.h"
#include "res/text/bank/special_met_location_names.h"

static void InitStringTemplateArgHeader(StringTemplateArgHeader *header);
static void SetStringTemplateArg(StringTemplate *template, u32 idx, const Strbuf *argVal, const StringTemplateArgHeader *newHeader);

StringTemplate *StringTemplate_Default(u32 heapID)
{
    return StringTemplate_New(STRING_TEMPLATE_DEFAULT_MAX_ARGS, STRING_TEMPLATE_DEFAULT_MAX_LENGTH, heapID);
}

StringTemplate *StringTemplate_New(u32 maxArgs, u32 maxLen, u32 heapID)
{
    StringTemplate *template = NULL;

    GF_ASSERT(maxArgs);
    GF_ASSERT(maxLen);

    StringTemplate *tmp = Heap_AllocAtEnd(heapID, sizeof(StringTemplate));
    if (tmp == NULL) {
        goto cleanup;
    }

    tmp->maxArgs = maxArgs;
    tmp->heapID = heapID;
    tmp->templateBuf = Strbuf_Init(maxLen, heapID);
    if (tmp->templateBuf == NULL) {
        goto cleanup;
    }

    tmp->args = Heap_AllocAtEnd(heapID, sizeof(StringTemplateArg) * maxArgs);
    if (tmp->args == NULL) {
        goto cleanup;
    }

    u32 arg;
    for (arg = 0; arg < maxArgs; arg++) {
        InitStringTemplateArgHeader(&tmp->args[arg].header);
        tmp->args[arg].strbuf = Strbuf_Init(maxLen, heapID);

        if (tmp->args[arg].strbuf == NULL) {
            break;
        }
    }

    if (arg == maxArgs) {
        return tmp;
    }

cleanup:
    if (template) {
        StringTemplate_Free(template);
    }

    return NULL;
}

void StringTemplate_Free(StringTemplate *template)
{
    GF_ASSERT(template->maxArgs);

    if (template->args) {
        for (u32 i = 0; i < template->maxArgs; i++) {
            if (template->args[i].strbuf) {
                Strbuf_Free(template->args[i].strbuf);
            } else {
                break;
            }
        }

        Heap_Free(template->args);
    }

    if (template->templateBuf) {
        Strbuf_Free(template->templateBuf);
    }

    template->maxArgs = 0;
    Heap_Free(template);
}

static void InitStringTemplateArgHeader(StringTemplateArgHeader *header)
{
    return;
}

static void SetStringTemplateArg(StringTemplate *template, u32 idx, const Strbuf *argVal, const StringTemplateArgHeader *newHeader)
{
    GF_ASSERT(idx < template->maxArgs);

    if (idx < template->maxArgs) {
        if (newHeader != NULL) {
            template->args[idx].header = *newHeader;
        }

        Strbuf_Copy(template->args[idx].strbuf, argVal);
    }
}

static inline MessageLoader *InitMessageLoader(u32 bankID, u32 heapID)
{
    return MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
}

void StringTemplate_SetStrbuf(StringTemplate *template, u32 idx, const Strbuf *argVal, u32 unused3, BOOL unused4, u32 unused5)
{
    SetStringTemplateArg(template, idx, argVal, NULL);
}

void StringTemplate_SetPlayerName(StringTemplate *template, u32 idx, const TrainerInfo *playerInfo)
{
    Strbuf_CopyChars(template->templateBuf, TrainerInfo_Name(playerInfo));
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetRivalName(StringTemplate *template, u32 idx, const SaveData *saveData)
{
    Strbuf_CopyChars(template->templateBuf, MiscSaveBlock_RivalName(SaveData_MiscSaveBlockConst(saveData)));
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetCounterpartName(StringTemplate *template, u32 idx, const SaveData *saveData)
{
    const TrainerInfo *playerInfo = SaveData_GetTrainerInfo((SaveData *)saveData);
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_COUNTERPART_NAMES, template->heapID);

    if (TrainerInfo_Gender(playerInfo) == GENDER_MALE) {
        MessageLoader_GetStrbuf(loader, GENDER_FEMALE, template->templateBuf);
    } else {
        MessageLoader_GetStrbuf(loader, GENDER_MALE, template->templateBuf);
    }

    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetSpeciesName(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_SPECIES_NAME, template->heapID);
    u32 species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

    MessageLoader_GetStrbuf(loader, species, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetSpeciesNameWithArticle(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    StringTemplate_SetSpeciesNameWithArticleByID(template, idx, BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL));
}

void StringTemplate_SetSpeciesNameWithArticleByID(StringTemplate *template, u32 idx, u32 species)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_SPECIES_NAME_WITH_ARTICLES, template->heapID);

    MessageLoader_GetStrbuf(loader, species, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetNickname(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRING, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetOTName(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    BoxPokemon_GetValue(boxMon, MON_DATA_OT_NAME_STRING, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetNumber(StringTemplate *template, u32 idx, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode)
{
    Strbuf_FormatInt(template->templateBuf, num, maxDigits, paddingMode, charsetMode);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

static inline void SetArgFromArchive(StringTemplate *template, u32 idx, u32 argVal, u32 bankID)
{
    MessageLoader *loader = InitMessageLoader(bankID, template->heapID);

    if (loader) {
        MessageLoader_GetStrbuf(loader, argVal, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_SetMoveName(StringTemplate *template, u32 idx, enum Move move)
{
    SetArgFromArchive(template, idx, move, TEXT_BANK_MOVE_NAMES);
}

void StringTemplate_SetRibbonName(StringTemplate *template, u32 idx, u32 ribbon)
{
    SetArgFromArchive(template, idx, ribbon, TEXT_BANK_RIBBON_NAMES);
}

void StringTemplate_SetAbilityName(StringTemplate *template, u32 idx, enum Ability ability)
{
    SetArgFromArchive(template, idx, ability, TEXT_BANK_ABILITY_NAMES);
}

void StringTemplate_SetNatureName(StringTemplate *template, u32 idx, u32 nature)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_NATURE_NAMES, template->heapID);

    MessageLoader_GetStrbuf(loader, nature, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_ITEM_NAMES);
}

void StringTemplate_SetItemNameWithArticle(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_ITEM_NAMES_WITH_ARTICLES);
}

void StringTemplate_SetItemNamePlural(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_ITEM_NAMES_PLURAL);
}

void StringTemplate_SetBagPocketName(StringTemplate *template, u32 idx, u32 pocket)
{
    SetArgFromArchive(template, idx, pocket, TEXT_BANK_BAG_POCKET_NAMES_WITH_ICONS);
}

void StringTemplate_SetPokemonTypeName(StringTemplate *template, u32 idx, u32 type)
{
    SetArgFromArchive(template, idx, type, TEXT_BANK_POKEMON_TYPE_NAMES);
}

void StringTemplate_SetPokemonStatName(StringTemplate *template, u32 idx, u32 stat)
{
    SetArgFromArchive(template, idx, stat, TEXT_BANK_POKEMON_STAT_NAMES);
}

void StringTemplate_SetStatusConditionName(StringTemplate *template, u32 idx, u32 status)
{
    SetArgFromArchive(template, idx, status, TEXT_BANK_STATUS_CONDITION_NAMES);
}

void StringTemplate_SetFlavorName(StringTemplate *template, u32 idx, u32 flavor)
{
    SetArgFromArchive(template, idx, flavor, TEXT_BANK_FLAVOR_NAMES);
}

void StringTemplate_SetLocationName(StringTemplate *template, u32 idx, u32 location)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_LOCATION_NAMES, template->heapID);

    if (loader) {
        if (location == 0 || location >= MessageLoader_MessageCount(loader)) {
            MessageLoader_Free(loader);
            loader = InitMessageLoader(TEXT_BANK_MYSTERY_GIFT_EVENT_NAMES, template->heapID);
            location = pl_msg_00000434_00002;
        }

        MessageLoader_GetStrbuf(loader, location, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_SetPoketchAppName(StringTemplate *template, u32 idx, u32 app)
{
    SetArgFromArchive(template, idx, app, TEXT_BANK_POKETCH_APP_NAMES);
}

void StringTemplate_SetTrainerClassName(StringTemplate *template, u32 idx, u32 trainerClass)
{
    SetArgFromArchive(template, idx, trainerClass, TEXT_BANK_TRAINER_CLASS_NAMES);
}

void StringTemplate_SetTrainerClassNameWithArticle(StringTemplate *template, u32 idx, u32 trainerClass)
{
    SetArgFromArchive(template, idx, trainerClass, TEXT_BANK_TRAINER_CLASS_NAMES_WITH_ARTICLES);
}

void StringTemplate_SetTrainerClassNameBattle(StringTemplate *template, u32 idx, Trainer *trainer)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_TRAINER_CLASS_NAMES, template->heapID);

    if (loader) {
        MessageLoader_GetStrbuf(loader, trainer->header.trainerType, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_SetTrainerName(StringTemplate *template, u32 idx, u32 trainerID)
{
    SetArgFromArchive(template, idx, trainerID, TEXT_BANK_NPC_TRAINER_NAMES);
}

void StringTemplate_SetFrontierTrainerName(StringTemplate *template, u32 idx, u32 trainerID)
{
    SetArgFromArchive(template, idx, trainerID, TEXT_BANK_FRONTIER_TRAINER_NAMES);
}

void StringTemplate_SetTrainerNameBattle(StringTemplate *template, u32 idx, Trainer *trainer)
{
    Strbuf_CopyChars(template->templateBuf, trainer->name);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetUndergroundItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_UNDERGROUND_ITEMS);
}

void StringTemplate_SetUndergroundItemNameWithArticle(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_UNDERGROUND_ITEM_NAMES_WITH_ARTICLES);
}

void StringTemplate_SetUndergroundTrapName(StringTemplate *template, u32 idx, u32 trap)
{
    SetArgFromArchive(template, idx, trap, TEXT_BANK_UNDERGROUND_TRAPS);
}

void StringTemplate_SetUndergroundTrapNameWithArticle(StringTemplate *template, u32 idx, u32 trap)
{
    SetArgFromArchive(template, idx, trap, TEXT_BANK_UNDERGROUND_TRAP_NAMES_WITH_ARTICLES);
}

void StringTemplate_SetContestJudgeName(StringTemplate *template, u32 idx, u32 judge)
{
    SetArgFromArchive(template, idx, judge, TEXT_BANK_CONTEST_JUDGE_NAMES);
}

void StringTemplate_SetContestRankName(StringTemplate *template, u32 idx, u32 rank)
{
    SetArgFromArchive(template, idx, rank, TEXT_BANK_CONTEST_TEXT);
}

void StringTemplate_SetContestTypeName(StringTemplate *template, u32 idx, u32 type)
{
    SetArgFromArchive(template, idx, type, TEXT_BANK_CONTEST_TEXT);
}

void StringTemplate_SetUndergroundQuestion(StringTemplate *template, u32 idx, u32 question)
{
    SetArgFromArchive(template, idx, question, TEXT_BANK_UNDERGROUND_QUESTIONS);
}

void StringTemplate_SetUndergroundAnswer(StringTemplate *template, u32 idx, u32 answer)
{
    SetArgFromArchive(template, idx, answer, TEXT_BANK_UNDERGROUND_ANSWERS);
}

void StringTemplate_SetUndergroundGoodsName(StringTemplate *template, u32 idx, u32 goods)
{
    SetArgFromArchive(template, idx, goods, TEXT_BANK_UNDERGROUND_GOODS);
}

void StringTemplate_SetUndergroundGoodsNameWithArticle(StringTemplate *template, u32 idx, u32 goods)
{
    SetArgFromArchive(template, idx, goods, TEXT_BANK_UNDERGROUND_GOODS_WITH_ARTICLES);
}

void StringTemplate_SetGenderMarker(StringTemplate *template, u32 idx, enum Gender gender)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_COMMON_STRINGS, template->heapID);

    switch (gender) {
    case GENDER_MALE:
        MessageLoader_GetStrbuf(loader, pl_msg_00000213_00068, template->templateBuf);
        break;

    case GENDER_FEMALE:
        MessageLoader_GetStrbuf(loader, pl_msg_00000213_00069, template->templateBuf);
        break;

    default:
        Strbuf_Clear(template->templateBuf);
    }

    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetPCBoxName(StringTemplate *template, u32 idx, const PCBoxes *pcBoxes, u32 boxIdx)
{
    PCBoxes_BufferBoxName(pcBoxes, boxIdx, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetGymName(StringTemplate *template, u32 idx, u32 gym)
{
    SetArgFromArchive(template, idx, gym, TEXT_BANK_GYM_NAMES);
}

void StringTemplate_SetTimeOfDay(StringTemplate *template, u32 idx, u32 timeOfDay)
{
    SetArgFromArchive(template, idx, timeOfDay, TEXT_BANK_TIMES_OF_DAY);
}

void StringTemplate_SetCountryName(StringTemplate *template, u32 idx, u32 country)
{
    SetArgFromArchive(template, idx, country, TEXT_BANK_COUNTRY_NAMES);
}

void StringTemplate_SetCityName(StringTemplate *template, u32 idx, u32 country, u32 city)
{
    u32 bankID = sub_02099720(country);
    if (bankID && city) {
        SetArgFromArchive(template, idx, city, bankID);
    }
}

void StringTemplate_SetCustomMessageWord(StringTemplate *template, u32 idx, u16 customMessageWord)
{
    sub_02014DB8(customMessageWord, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetBallSealName(StringTemplate *template, u32 idx, u32 ballSeal)
{
    SetArgFromArchive(template, idx, ballSeal, TEXT_BANK_BALL_SEAL_NAMES);
}

void StringTemplate_SetBallSealNamePlural(StringTemplate *template, u32 idx, u32 ballSeal)
{
    SetArgFromArchive(template, idx, ballSeal, TEXT_BANK_BALL_SEAL_NAMES_PLURAL);
}

void StringTemplate_SetMetLocationName(StringTemplate *template, u32 idx, u32 location)
{
    static const u16 sMetLocationBanks[] = {
        TEXT_BANK_LOCATION_NAMES,
        TEXT_BANK_SPECIAL_MET_LOCATION_NAMES,
        TEXT_BANK_MYSTERY_GIFT_EVENT_NAMES,
    };

    int metLocationType = sub_02017038(location);
    int metLocationID = sub_02017058(location);
    MessageLoader *loader = InitMessageLoader(sMetLocationBanks[metLocationType], template->heapID);

    if (loader) {
        if (metLocationID < MessageLoader_MessageCount(loader)
            && (!(metLocationType == 0 && metLocationID == 0))) {
            MessageLoader_GetStrbuf(loader, metLocationID, template->templateBuf);
            SetStringTemplateArg(template, idx, template->templateBuf, NULL);
            MessageLoader_Free(loader);
        } else {
            MessageLoader_Free(loader);

            u32 bankID, msgID;
            if (metLocationType == 0 && metLocationID == 0) {
                bankID = sMetLocationBanks[1];
                msgID = SPECIAL_METLOC_NAME_MYSTERY_ZONE;
            } else {
                bankID = sMetLocationBanks[2];
                msgID = pl_msg_00000434_00002;
            }

            SetArgFromArchive(template, idx, msgID, bankID);
        }
    }
}

void StringTemplate_SetPoffinName(StringTemplate *template, u32 idx, u32 poffin)
{
    SetArgFromArchive(template, idx, poffin, TEXT_BANK_POFFIN_NAMES);
}

void StringTemplate_SetContestAccessoryName(StringTemplate *template, u32 idx, u32 accessory)
{
    SetArgFromArchive(template, idx, accessory, TEXT_BANK_CONTEST_ACCESSORY_NAMES);
}

void StringTemplate_SetContestAccessoryNameWithArticle(StringTemplate *template, u32 idx, u32 accessory)
{
    SetArgFromArchive(template, idx, accessory, TEXT_BANK_CONTEST_ACCESSORY_NAMES_WITH_ARTICLES);
}

void StringTemplate_SetContestBackdropName(StringTemplate *template, u32 idx, u32 backdrop)
{
    SetArgFromArchive(template, idx, backdrop, TEXT_BANK_CONTEST_BACKDROP_NAMES);
}

void StringTemplate_SetUnionGroupName(StringTemplate *template, SaveData *saveData, int groupID, int idx, int nameType)
{
    int gender, countryCode;
    Strbuf *groupName;
    RecordMixedRNG *group = SaveData_GetRecordMixedRNG(saveData);

    gender = RecordMixedRNG_GetEntryGender(group, groupID);
    countryCode = RecordMixedRNG_GetEntryCountryCode(group, groupID);
    groupName = Strbuf_Init(64, HEAP_ID_FIELD1);

    Strbuf_CopyChars(groupName, RecordMixedRNG_GetEntryName(group, groupID, nameType));
    StringTemplate_SetStrbuf(template, idx, groupName, gender, 1, countryCode);
    Strbuf_Free(groupName);
}

void StringTemplate_SetPlazaMinigameName(StringTemplate *template, u32 idx, enum PlazaMinigame minigame)
{
    SetArgFromArchive(template, idx, minigame, TEXT_BANK_PLAZA_MINIGAME_NAMES);
}

void StringTemplate_SetPlazaEventName(StringTemplate *template, u32 idx, int event)
{
    SetArgFromArchive(template, idx, event, TEXT_BANK_PLAZA_EVENT_NAMES);
}

void StringTemplate_SetPlazaItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, TEXT_BANK_PLAZA_ITEM_NAMES);
}

void StringTemplate_SetJPGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_JP);
}

void StringTemplate_SetENGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_EN);
}

void StringTemplate_SetFRGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_FR);
}

void StringTemplate_SetITGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_IT);
}

void StringTemplate_SetDEGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_DE);
}

void StringTemplate_SetESGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, TEXT_BANK_GREETINGS_ES);
}

void StringTemplate_SetFurniture(StringTemplate *template, u32 idx, u32 furniture)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_FURNITURE_NAMES, template->heapID);

    MessageLoader_GetStrbuf(loader, furniture, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetMonthName(StringTemplate *template, u32 idx, u32 month)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_MONTH_NAMES, template->heapID);

    if (loader) {
        if (month < 1 || month > 12) {
            month = 1;
        }

        MessageLoader_GetStrbuf(loader, month - 1, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_CapitalizeArgAtIndex(StringTemplate *template, u32 idx)
{
    Strbuf_UpperChar(template->args[idx].strbuf, 0);
}

void StringTemplate_SetFloorNumber(StringTemplate *template, u32 idx, u32 floor)
{
    MessageLoader *loader = InitMessageLoader(TEXT_BANK_MENU_ENTRIES, template->heapID);

    GF_ASSERT(floor <= 5);

    if (loader) {
        if (floor == 0) {
            floor = MenuEntries_Text_B1F;
        } else {
            floor += MenuEntries_Text_1F - 1;
        }

        MessageLoader_GetStrbuf(loader, floor, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_Format(const StringTemplate *template, Strbuf *dst, const Strbuf *fmtString)
{
    const charcode_t *c = Strbuf_GetData(fmtString);
    Strbuf_Clear(dst);

    while (*c != CHAR_EOS) {
        if (*c == CHAR_FORMAT_ARG) {
            if (CharCode_IsFormatArg(c)) {
                u32 idx = CharCode_FormatArgParam(c, 0);
                GF_ASSERT(idx < template->maxArgs);

                Strbuf_ConcatTrainerName(dst, template->args[idx].strbuf);
                c = CharCode_SkipFormatArg(c);
            } else {
                const charcode_t *tmp = c;
                c = CharCode_SkipFormatArg(c);

                while (tmp < c) {
                    Strbuf_AppendChar(dst, *tmp++);
                }
            }
        } else {
            Strbuf_AppendChar(dst, *c++);
        }
    }
}

void StringTemplate_ClearArgs(StringTemplate *template)
{
    for (u32 i = 0; i < template->maxArgs; i++) {
        Strbuf_Clear(template->args[i].strbuf);
    }
}
