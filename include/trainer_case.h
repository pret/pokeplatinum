#ifndef POKEPLATINUM_TRAINER_CASE_H
#define POKEPLATINUM_TRAINER_CASE_H

#include "constants/graphics.h"
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

typedef struct TrainerCaseBadge {
    int obtained : 1;
    int polish : 31;
} TrainerCaseBadge;

typedef struct TrainerCase {
    u8 gameVersion;
    u8 language;
    u8 gymLeadersToHideUnused;
    u8 cardLevel;
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
    u16 trainerId;
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
    TrainerCaseBadge badges[MAX_BADGES];
    u8 signature[SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_1BPP];
    u16 dummyChecksum; // calculated but never used for anything
    u16 unk_66A;
} TrainerCase;

void TrainerCase_Init(u8 badgesInteractable, u8 liveTimeDisplay, u8 gymLeadersToHide, u8 trainerAppearance, FieldSystem *fieldSystem, TrainerCase *trainerCase);
TrainerCase *TrainerCase_New(u16 heapID);
void TrainerCase_Free(TrainerCase *trainerCase);
u8 TrainerCase_CalculateTrainerCardLevel(FieldSystem *fieldSystem);
void TrainerCase_SaveBadgePolish(FieldSystem *fieldSystem, const TrainerCase *trainerCase);
void sub_02072204(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_TRAINER_CASE_H
