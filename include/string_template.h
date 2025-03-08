#ifndef POKEPLATINUM_STRING_TEMPLATE_H
#define POKEPLATINUM_STRING_TEMPLATE_H

#include "generated/abilities.h"
#include "generated/genders.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/trainer.h"

#include "enums.h"
#include "savedata.h"
#include "strbuf.h"
#include "trainer_info.h"

#define STRING_TEMPLATE_DEFAULT_MAX_ARGS   8
#define STRING_TEMPLATE_DEFAULT_MAX_LENGTH 32

typedef struct StringTemplateArgHeader {
    u8 unused_00;
    u8 unused_01;
    u8 unused_02;
    u8 unused_03;
} StringTemplateArgHeader;

typedef struct StringTemplateArg {
    StringTemplateArgHeader header;
    Strbuf *strbuf;
} StringTemplateArg;

typedef struct StringTemplate {
    u32 maxArgs;
    u32 heapID;
    StringTemplateArg *args;
    Strbuf *templateBuf;
} StringTemplate;

StringTemplate *StringTemplate_Default(u32 heapID);
StringTemplate *StringTemplate_New(u32 maxArgs, u32 maxLen, u32 heapID);
void StringTemplate_Free(StringTemplate *template);
void StringTemplate_SetStrbuf(StringTemplate *template, u32 idx, const Strbuf *argVal, u32 unused3, BOOL unused4, u32 unused5);
void StringTemplate_SetPlayerName(StringTemplate *template, u32 idx, const TrainerInfo *playerInfo);
void StringTemplate_SetRivalName(StringTemplate *template, u32 idx, const SaveData *save);
void StringTemplate_SetCounterpartName(StringTemplate *template, u32 idx, const SaveData *save);
void StringTemplate_SetSpeciesName(StringTemplate *template, u32 idx, BoxPokemon *boxMon);
void StringTemplate_SetSpeciesNameWithArticle(StringTemplate *template, u32 idx, BoxPokemon *boxMon);
void StringTemplate_SetSpeciesNameWithArticleByID(StringTemplate *template, u32 idx, u32 species);
void StringTemplate_SetNickname(StringTemplate *template, u32 idx, BoxPokemon *boxMon);
void StringTemplate_SetOTName(StringTemplate *template, u32 idx, BoxPokemon *boxMon);
void StringTemplate_SetNumber(StringTemplate *template, u32 idx, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);
void StringTemplate_SetMoveName(StringTemplate *template, u32 idx, enum Move move);
void StringTemplate_SetRibbonName(StringTemplate *template, u32 idx, u32 ribbon);
void StringTemplate_SetAbilityName(StringTemplate *template, u32 idx, enum Ability ability);
void StringTemplate_SetNatureName(StringTemplate *template, u32 idx, u32 nature);
void StringTemplate_SetItemName(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetItemNameWithArticle(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetItemNamePlural(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetBagPocketName(StringTemplate *template, u32 idx, u32 pocket);
void StringTemplate_SetPokemonTypeName(StringTemplate *template, u32 idx, u32 type);
void StringTemplate_SetPokemonStatName(StringTemplate *template, u32 idx, u32 stat);
void StringTemplate_SetStatusConditionName(StringTemplate *template, u32 idx, u32 status);
void StringTemplate_SetFlavorName(StringTemplate *template, u32 idx, u32 flavor);
void StringTemplate_SetLocationName(StringTemplate *template, u32 idx, u32 location);
void StringTemplate_SetPoketchAppName(StringTemplate *template, u32 idx, u32 app);
void StringTemplate_SetTrainerClassName(StringTemplate *template, u32 idx, u32 trainerClass);
void StringTemplate_SetTrainerClassNameWithArticle(StringTemplate *template, u32 idx, u32 trainerClass);
void StringTemplate_SetTrainerClassNameBattle(StringTemplate *template, u32 idx, Trainer *trainer);
void StringTemplate_SetTrainerName(StringTemplate *template, u32 idx, u32 trainerID);
void StringTemplate_SetFrontierTrainerName(StringTemplate *template, u32 idx, u32 trainerID);
void StringTemplate_SetTrainerNameBattle(StringTemplate *template, u32 idx, Trainer *trainer);
void StringTemplate_SetUndergroundItemName(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetUndergroundItemNameWithArticle(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetUndergroundTrapName(StringTemplate *template, u32 idx, u32 trap);
void StringTemplate_SetUndergroundTrapNameWithArticle(StringTemplate *template, u32 idx, u32 trap);
void StringTemplate_SetContestJudgeName(StringTemplate *template, u32 idx, u32 judge);
void StringTemplate_SetContestRankName(StringTemplate *template, u32 idx, u32 rank);
void StringTemplate_SetContestTypeName(StringTemplate *template, u32 idx, u32 type);
void StringTemplate_SetUndergroundQuestion(StringTemplate *template, u32 idx, u32 question);
void StringTemplate_SetUndergroundAnswer(StringTemplate *template, u32 idx, u32 answer);
void StringTemplate_SetUndergroundGoodsName(StringTemplate *template, u32 idx, u32 goods);
void StringTemplate_SetUndergroundGoodsNameWithArticle(StringTemplate *template, u32 idx, u32 goods);
void StringTemplate_SetGenderMarker(StringTemplate *template, u32 idx, enum Gender gender);
void StringTemplate_SetPCBoxName(StringTemplate *template, u32 idx, const PCBoxes *boxes, u32 boxIdx);
void StringTemplate_SetGymName(StringTemplate *template, u32 idx, u32 gym);
void StringTemplate_SetTimeOfDay(StringTemplate *template, u32 idx, u32 timeOfDay);
void StringTemplate_SetCountryName(StringTemplate *template, u32 idx, u32 country);
void StringTemplate_SetCityName(StringTemplate *template, u32 idx, u32 country, u32 city);
void StringTemplate_SetCustomMessageWord(StringTemplate *template, u32 idx, u16 customMessageWord);
void StringTemplate_SetBallSealName(StringTemplate *template, u32 idx, u32 ballSeal);
void StringTemplate_SetBallSealNamePlural(StringTemplate *template, u32 idx, u32 ballSeal);
void StringTemplate_SetMetLocationName(StringTemplate *template, u32 idx, u32 location);
void StringTemplate_SetPoffinName(StringTemplate *template, u32 idx, u32 poffin);
void StringTemplate_SetContestAccessoryName(StringTemplate *template, u32 idx, u32 accessory);
void StringTemplate_SetContestAccessoryNameWithArticle(StringTemplate *template, u32 idx, u32 accessory);
void StringTemplate_SetContestBackdropName(StringTemplate *template, u32 idx, u32 backdrop);
void StringTemplate_SetUnionGroupName(StringTemplate *template, SaveData *save, int groupID, int idx, int nameType);
void StringTemplate_SetPlazaMinigameName(StringTemplate *template, u32 idx, enum PlazaMinigame minigame);
void StringTemplate_SetPlazaEventName(StringTemplate *template, u32 idx, int event);
void StringTemplate_SetPlazaItemName(StringTemplate *template, u32 idx, u32 item);
void StringTemplate_SetJPGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetENGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetFRGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetITGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetDEGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetESGreeting(StringTemplate *template, u32 idx, u32 greeting);
void StringTemplate_SetFurniture(StringTemplate *template, u32 idx, u32 furniture);
void StringTemplate_SetMonthName(StringTemplate *template, u32 idx, u32 month);
void StringTemplate_SetDepartmentStoreFloor(StringTemplate *template, u32 idx, u32 floor);
void StringTemplate_CapitalizeArgAtIndex(StringTemplate *template, u32 idx);
void StringTemplate_Format(const StringTemplate *template, Strbuf *dst, const Strbuf *fmtString);
void StringTemplate_ClearArgs(StringTemplate *template);

#endif // POKEPLATINUM_STRING_TEMPLATE_H
