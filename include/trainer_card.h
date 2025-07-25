#ifndef POKEPLATINUM_TRAINER_CARD_H
#define POKEPLATINUM_TRAINER_CARD_H

#include "constants/string.h"

#include "field/field_system_decl.h"

#include "badges.h"
#include "play_time.h"

#define SIGNATURE_WIDTH  24
#define SIGNATURE_HEIGHT 8

#define BADGE_POLISH_THRESHOLD_DIRTY      100
#define BADGE_POLISH_THRESHOLD_NORMAL     140
#define BADGE_POLISH_THRESHOLD_2_SPARKLES 170
#define BADGE_POLISH_THRESHOLD_4_SPARKLES 190
#define MAX_BADGE_POLISH                  199

typedef struct {
    int obtained : 1;
    int polish : 31;
} TrainerCardBadge;

typedef struct TrainerCard {
    u8 gameVersion;
    u8 regionCode;
    u8 gymLeadersToHide_Unused;
    u8 stars;
    u8 badgesInteractable : 1;
    u8 liveTimeDisplay : 1;
    u8 gender : 1;
    u8 pokedexObtained : 1;
    u8 trainerAppearance;
    u8 padding[2];
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
    u32 timesLinked;
    u32 linkBattleWins;
    u32 linkBattleLosses;
    u32 linkTrades;
    TrainerCardBadge badges[MAX_BADGES];
    u8 signature[SIGNATURE_WIDTH * SIGNATURE_HEIGHT * 8];
    u16 checksum; // calculated but never used for anything
    u16 unk_66A;
} TrainerCard;

void TrainerCard_Init(u8 param0, u8 param1, u8 gymLeadersToHide, u8 trainerAppearance, FieldSystem *fieldSystem, TrainerCard *trainerCard);
TrainerCard *TrainerCard_New(u16 heapID);
void TrainerCard_Free(TrainerCard *trainerCard);
u8 TrainerCard_CalculateStars(FieldSystem *fieldSystem);
void TrainerCard_SaveBadgePolish(FieldSystem *fieldSystem, const TrainerCard *trainerCard);
void sub_02072204(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_TRAINER_CARD_H
