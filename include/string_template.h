#ifndef POKEPLATINUM_STRING_TEMPLATE_H
#define POKEPLATINUM_STRING_TEMPLATE_H

#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/trainer_data.h"
#include "savedata.h"

#include "enums.h"

typedef struct StringTemplate StringTemplate;

StringTemplate * StringTemplate_Default(u32 param0);
StringTemplate * StringTemplate_New(u32 param0, u32 param1, u32 param2);
void StringTemplate_Free(StringTemplate * param0);
void StringTemplate_SetStrbuf(StringTemplate * param0, u32 param1, const Strbuf *param2, u32 param3, BOOL param4, u32 param5);
void StringTemplate_SetPlayerName(StringTemplate * param0, u32 param1, const TrainerInfo * param2);
void StringTemplate_SetRivalName(StringTemplate * param0, u32 param1, const SaveData * param2);
void StringTemplate_SetCounterpartName(StringTemplate * param0, u32 param1, const SaveData * param2);
void StringTemplate_SetSpeciesName(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void StringTemplate_SetSpeciesNameWithArticle(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void StringTemplate_SetSpeciesNameWithArticleByID(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetNickname(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void StringTemplate_SetOTName(StringTemplate * param0, u32 param1, BoxPokemon * param2);
void StringTemplate_SetNumber(StringTemplate * param0, u32 param1, s32 param2, u32 param3, int param4, int param5);
void StringTemplate_SetMoveName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetRibbonName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetAbilityName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetNatureName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetItemName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetItemNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetItemNamePlural(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetBagPocketName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetPokemonTypeName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetPokemonStatName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetStatusConditionName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetFlavorName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetLocationName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetPoketchAppName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetTrainerClassName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetTrainerClassNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetTrainerClassNameBattle(StringTemplate * param0, u32 param1, TrainerData * param2);
void StringTemplate_SetTrainerName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetFrontierTrainerName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetTrainerNameBattle(StringTemplate * param0, u32 param1, TrainerData * param2);
void StringTemplate_SetUndergroundItemName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundItemNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundTrapName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundTrapNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestJudgeName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestRankName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestTypeName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundQuestion(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundAnswer(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundGoodsName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUndergroundGoodsNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetGenderMarker(StringTemplate * param0, u32 param1, u8 param2);
void StringTemplate_SetPCBoxName(StringTemplate * param0, u32 param1, const PCBoxes * param2, u32 param3);
void StringTemplate_SetGymName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetTimeOfDay(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetCountryName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetCityName(StringTemplate * param0, u32 param1, u32 param2, u32 param3);
void StringTemplate_SetCustomMessageWord(StringTemplate * param0, u32 param1, u16 param2);
void StringTemplate_SetBallSealName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetBallSealNamePlural(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetMetLocationName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetPoffinName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestAccessoryName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestAccessoryNameWithArticle(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetContestBackdropName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetUnionGroupName(StringTemplate * param0, SaveData * param1, int param2, int param3, int param4);
void StringTemplate_SetPlazaMinigameName(StringTemplate * param0, u32 param1, UnkEnum_ov66_022324D0 param2);
void StringTemplate_SetPlazaEventName(StringTemplate * param0, u32 param1, int param2);
void StringTemplate_SetPlazaItemName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetJPGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetENGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetFRGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetITGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetDEGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetESGreeting(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetFurniture(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_SetMonthName(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_CapitalizeArgAtIndex(StringTemplate * param0, u32 param1);
void StringTemplate_SetDepartmentStoreFloor(StringTemplate * param0, u32 param1, u32 param2);
void StringTemplate_Format(const StringTemplate * param0, Strbuf *param1, const Strbuf *param2);
void StringTemplate_ClearArgs(StringTemplate * param0);

#endif // POKEPLATINUM_STRING_TEMPLATE_H

