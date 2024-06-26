#include "constants/charcode.h"
#include "constants/heap.h"
#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "consts/abilities.h"
#include "consts/gender.h"
#include "consts/moves.h"

#include "gmm/message_bank_common_strings.h"
#include "gmm/message_bank_common_strings_2.h"
#include "gmm/message_bank_mystery_gift_event_names.h"
#include "gmm/message_bank_special_met_location_names.h"

#include "constants/narc.h"
#include "constants/pokemon.h"
#include "text/pl_msg.naix"

#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "struct_defs/trainer_data.h"

#include "charcode.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

#include "unk_02014D38.h"
#include "unk_02017038.h"
#include "save_player.h"
#include "unk_0202B37C.h"
#include "unk_020797C8.h"
#include "unk_020996D0.h"

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

    StringTemplate *tmp = Heap_AllocFromHeapAtEnd(heapID, sizeof(StringTemplate));
    if (tmp == NULL) {
        goto cleanup;
    }

    tmp->maxArgs= maxArgs;
    tmp->heapID = heapID;
    tmp->templateBuf = Strbuf_Init(maxLen, heapID);
    if (tmp->templateBuf == NULL) {
        goto cleanup;
    }

    tmp->args = Heap_AllocFromHeapAtEnd(heapID, sizeof(StringTemplateArg) * maxArgs);
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

        Heap_FreeToHeap(template->args);
    }

    if (template->templateBuf) {
        Strbuf_Free(template->templateBuf);
    }

    template->maxArgs = 0;
    Heap_FreeToHeap(template);
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

void StringTemplate_SetRivalName(StringTemplate *template, u32 idx, const SaveData *save)
{
    Strbuf_CopyChars(template->templateBuf, MiscSaveBlock_RivalName(SaveData_MiscSaveBlockConst(save)));
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetCounterpartName(StringTemplate *template, u32 idx, const SaveData *save)
{
    const TrainerInfo *playerInfo = SaveData_GetTrainerInfo(save);
    MessageLoader *loader = InitMessageLoader(message_bank_counterpart_names, template->heapID);

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
    MessageLoader *loader = InitMessageLoader(message_bank_species_names, template->heapID);
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
    MessageLoader *loader = InitMessageLoader(message_bank_species_names_with_articles, template->heapID);

    MessageLoader_GetStrbuf(loader, species, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetNickname(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRBUF, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetOTName(StringTemplate *template, u32 idx, BoxPokemon *boxMon)
{
    BoxPokemon_GetValue(boxMon, MON_DATA_OTNAME_STRBUF, template->templateBuf);
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
    SetArgFromArchive(template, idx, move, message_bank_move_names);
}

void StringTemplate_SetRibbonName(StringTemplate *template, u32 idx, u32 ribbon)
{
    SetArgFromArchive(template, idx, ribbon, message_bank_ribbon_names);
}

void StringTemplate_SetAbilityName(StringTemplate *template, u32 idx, enum Ability ability)
{
    SetArgFromArchive(template, idx, ability, message_bank_ability_names);
}

void StringTemplate_SetNatureName(StringTemplate *template, u32 idx, u32 nature)
{
    MessageLoader *loader = InitMessageLoader(message_bank_nature_names, template->heapID);

    MessageLoader_GetStrbuf(loader, nature, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_item_names);
}

void StringTemplate_SetItemNameWithArticle(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_item_names_with_articles);
}

void StringTemplate_SetItemNamePlural(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_item_names_plural);
}

void StringTemplate_SetBagPocketName(StringTemplate *template, u32 idx, u32 pocket)
{
    SetArgFromArchive(template, idx, pocket, message_bank_bag_pocket_names_with_icons);
}

void StringTemplate_SetPokemonTypeName(StringTemplate *template, u32 idx, u32 type)
{
    SetArgFromArchive(template, idx, type, message_bank_pokemon_type_names);
}

void StringTemplate_SetPokemonStatName(StringTemplate *template, u32 idx, u32 stat)
{
    SetArgFromArchive(template, idx, stat, message_bank_pokemon_stat_names);
}

void StringTemplate_SetStatusConditionName(StringTemplate *template, u32 idx, u32 status)
{
    SetArgFromArchive(template, idx, status, message_bank_status_condition_names);
}

void StringTemplate_SetFlavorName(StringTemplate *template, u32 idx, u32 flavor)
{
    SetArgFromArchive(template, idx, flavor, message_bank_flavor_names);
}

void StringTemplate_SetLocationName(StringTemplate *template, u32 idx, u32 location)
{
    MessageLoader *loader = InitMessageLoader(message_bank_location_names, template->heapID);

    if (loader) {
        if (location == 0 || location >= MessageLoader_MessageCount(loader)) {
            MessageLoader_Free(loader);
            loader = InitMessageLoader(message_bank_mystery_gift_event_names, template->heapID);
            location = pl_msg_00000434_00002;
        }

        MessageLoader_GetStrbuf(loader, location, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_SetPoketchAppName(StringTemplate *template, u32 idx, u32 app)
{
    SetArgFromArchive(template, idx, app, message_bank_poketch_app_names);
}

void StringTemplate_SetTrainerClassName(StringTemplate *template, u32 idx, u32 trainerClass)
{
    SetArgFromArchive(template, idx, trainerClass, message_bank_trainer_class_names);
}

void StringTemplate_SetTrainerClassNameWithArticle(StringTemplate *template, u32 idx, u32 trainerClass)
{
    SetArgFromArchive(template, idx, trainerClass, message_bank_trainer_class_names_with_articles);
}

void StringTemplate_SetTrainerClassNameBattle(StringTemplate *template, u32 idx, TrainerData *trainerData)
{
    MessageLoader *loader = InitMessageLoader(message_bank_trainer_class_names, template->heapID);

    if (loader) {
        MessageLoader_GetStrbuf(loader, trainerData->class, template->templateBuf);
        SetStringTemplateArg(template, idx, template->templateBuf, NULL);
        MessageLoader_Free(loader);
    }
}

void StringTemplate_SetTrainerName(StringTemplate *template, u32 idx, u32 trainerID)
{
    SetArgFromArchive(template, idx, trainerID, message_bank_npc_trainer_names);
}

void StringTemplate_SetFrontierTrainerName(StringTemplate *template, u32 idx, u32 trainerID)
{
    SetArgFromArchive(template, idx, trainerID, message_bank_frontier_trainer_names);
}

void StringTemplate_SetTrainerNameBattle(StringTemplate *template, u32 idx, TrainerData *trainerData)
{
    Strbuf_CopyChars(template->templateBuf, trainerData->name);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetUndergroundItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_underground_item_names);
}

void StringTemplate_SetUndergroundItemNameWithArticle(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_underground_item_names_with_articles);
}

void StringTemplate_SetUndergroundTrapName(StringTemplate *template, u32 idx, u32 trap)
{
    SetArgFromArchive(template, idx, trap, message_bank_underground_trap_names);
}

void StringTemplate_SetUndergroundTrapNameWithArticle(StringTemplate *template, u32 idx, u32 trap)
{
    SetArgFromArchive(template, idx, trap, message_bank_underground_trap_names_with_articles);
}

void StringTemplate_SetContestJudgeName(StringTemplate *template, u32 idx, u32 judge)
{
    SetArgFromArchive(template, idx, judge, message_bank_contest_judge_names);
}

void StringTemplate_SetContestRankName(StringTemplate *template, u32 idx, u32 rank)
{
    SetArgFromArchive(template, idx, rank, message_bank_contest_text);
}

void StringTemplate_SetContestTypeName(StringTemplate *template, u32 idx, u32 type)
{
    SetArgFromArchive(template, idx, type, message_bank_contest_text);
}

void StringTemplate_SetUndergroundQuestion(StringTemplate *template, u32 idx, u32 question)
{
    SetArgFromArchive(template, idx, question, message_bank_underground_questions);
}

void StringTemplate_SetUndergroundAnswer(StringTemplate *template, u32 idx, u32 answer)
{
    SetArgFromArchive(template, idx, answer, message_bank_underground_answers);
}

void StringTemplate_SetUndergroundGoodsName(StringTemplate *template, u32 idx, u32 goods)
{
    SetArgFromArchive(template, idx, goods, message_bank_underground_goods);
}

void StringTemplate_SetUndergroundGoodsNameWithArticle(StringTemplate *template, u32 idx, u32 goods)
{
    SetArgFromArchive(template, idx, goods, message_bank_underground_goods_with_articles);
}

void StringTemplate_SetGenderMarker(StringTemplate *template, u32 idx, enum Gender gender)
{
    MessageLoader *loader = InitMessageLoader(message_bank_common_strings, template->heapID);

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

void StringTemplate_SetPCBoxName(StringTemplate *template, u32 idx, const PCBoxes *boxes, u32 boxIdx)
{
    sub_02079AF4(boxes, boxIdx, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
}

void StringTemplate_SetGymName(StringTemplate *template, u32 idx, u32 gym)
{
    SetArgFromArchive(template, idx, gym, message_bank_gym_names);
}

void StringTemplate_SetTimeOfDay(StringTemplate *template, u32 idx, u32 timeOfDay)
{
    SetArgFromArchive(template, idx, timeOfDay, message_bank_times_of_day);
}

void StringTemplate_SetCountryName(StringTemplate *template, u32 idx, u32 country)
{
    SetArgFromArchive(template, idx, country, message_bank_country_names);
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
    SetArgFromArchive(template, idx, ballSeal, message_bank_ball_seal_names);
}

void StringTemplate_SetBallSealNamePlural(StringTemplate *template, u32 idx, u32 ballSeal)
{
    SetArgFromArchive(template, idx, ballSeal, message_bank_ball_seal_names_plural);
}

void StringTemplate_SetMetLocationName(StringTemplate *template, u32 idx, u32 location)
{
    static const u16 sMetLocationBanks[] = {
        message_bank_location_names,
        message_bank_special_met_location_names,
        message_bank_mystery_gift_event_names,
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
                msgID = pl_msg_00000435_00012;
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
    SetArgFromArchive(template, idx, poffin, message_bank_poffin_names);
}

void StringTemplate_SetContestAccessoryName(StringTemplate *template, u32 idx, u32 accessory)
{
    SetArgFromArchive(template, idx, accessory, message_bank_contest_accessory_names);
}

void StringTemplate_SetContestAccessoryNameWithArticle(StringTemplate *template, u32 idx, u32 accessory)
{
    SetArgFromArchive(template, idx, accessory, message_bank_contest_accessory_names_with_articles);
}

void StringTemplate_SetContestBackdropName(StringTemplate *template, u32 idx, u32 backdrop)
{
    SetArgFromArchive(template, idx, backdrop, message_bank_contest_backdrop_names);
}

void StringTemplate_SetUnionGroupName(StringTemplate *template, SaveData *save, int groupID, int idx, int nameType)
{
    int gender, countryCode;
    Strbuf *groupName;
    UnkStruct_0202B4A0 *group = sub_0202B4A0(save);

    gender = sub_0202B47C(group, groupID);
    countryCode = sub_0202B488(group, groupID);
    groupName = Strbuf_Init(64, HEAP_ID_FIELD);

    Strbuf_CopyChars(groupName, sub_0202B42C(group, groupID, nameType));
    StringTemplate_SetStrbuf(template, idx, groupName, gender, 1, countryCode);
    Strbuf_Free(groupName);
}

void StringTemplate_SetPlazaMinigameName(StringTemplate *template, u32 idx, enum PlazaMinigame minigame)
{
    SetArgFromArchive(template, idx, minigame, message_bank_plaza_minigame_names);
}

void StringTemplate_SetPlazaEventName(StringTemplate *template, u32 idx, int event)
{
    SetArgFromArchive(template, idx, event, message_bank_plaza_event_names);
}

void StringTemplate_SetPlazaItemName(StringTemplate *template, u32 idx, u32 item)
{
    SetArgFromArchive(template, idx, item, message_bank_plaza_item_names);
}

void StringTemplate_SetJPGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_jp);
}

void StringTemplate_SetENGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_en);
}

void StringTemplate_SetFRGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_fr);
}

void StringTemplate_SetITGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_it);
}

void StringTemplate_SetDEGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_de);
}

void StringTemplate_SetESGreeting(StringTemplate *template, u32 idx, u32 greeting)
{
    SetArgFromArchive(template, idx, greeting, message_bank_greetings_es);
}

void StringTemplate_SetFurniture(StringTemplate *template, u32 idx, u32 furniture)
{
    MessageLoader *loader = InitMessageLoader(message_bank_furniture_names, template->heapID);

    MessageLoader_GetStrbuf(loader, furniture, template->templateBuf);
    SetStringTemplateArg(template, idx, template->templateBuf, NULL);
    MessageLoader_Free(loader);
}

void StringTemplate_SetMonthName(StringTemplate *template, u32 idx, u32 month)
{
    MessageLoader *loader = InitMessageLoader(message_bank_month_names, template->heapID);

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

void StringTemplate_SetDepartmentStoreFloor(StringTemplate *template, u32 idx, u32 floor)
{
    MessageLoader *loader = InitMessageLoader(message_bank_common_strings_2, template->heapID);

    GF_ASSERT(floor <= 5);

    if (loader) {
        if (floor == pl_msg_00000361_00000) {
            floor = pl_msg_00000361_00121;
        } else {
            floor += pl_msg_00000361_00115;
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

