#ifndef POKEPLATINUM_TRAINER_CARD_H
#define POKEPLATINUM_TRAINER_CARD_H

#include "constants/string.h"

#include "field/field_system_decl.h"

#include "play_time.h"

typedef struct {
    int unk_00_0 : 1;
    int unk_00_1 : 31;
} TrainerCard_sub1;

typedef struct TrainerCard {
    u8 gameVersion;
    u8 regionCode;
    u8 unk_02;
    u8 stars;
    u8 unk_04_0 : 1;
    u8 unk_04_1 : 1;
    u8 gender : 1;
    u8 pokedexObtained : 1;
    u8 padding_04_4 : 4;
    u8 unk_05;
    u8 padding_06[2];
    u16 name[TRAINER_NAME_LEN + 1];
    const PlayTime *playTime;
    u32 money;
    u32 seenPokemon;
    u32 score;
    u16 id;
    u16 playTimeHours;
    u16 hofDebutHour;
    u8 playTimeMinutes;
    u8 adventureStartedYear;
    u8 adventureStartedMonth;
    u8 adventureStartedDay;
    u8 hofDebutYear;
    u8 hofDebutMonth;
    u8 hofDebutDay;
    u8 hofDebutMinute;
    u8 padding_36[2];
    u32 timesLinked;
    u32 linkBattleWins;
    u32 linkBattleLosses;
    u32 linkTrades;
    TrainerCard_sub1 unk_48[8];
    u8 signature[1536];
    u16 checksum;
    u16 unk_66A;
} TrainerCard;

void TrainerCard_Init(const u8 param0, const u8 param1, const u8 param2, const u8 param3, FieldSystem *fieldSystem, TrainerCard *trainerCard);
TrainerCard *TrainerCard_New(const u16 headID);
void TrainerCard_Free(TrainerCard *trainerCard);
u8 TrainerCard_CalculateStars(FieldSystem *fieldSystem);
void sub_020721D4(FieldSystem *fieldSystem, const TrainerCard *trainerCard);
void sub_02072204(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_trainer_card_H
