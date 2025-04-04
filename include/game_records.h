#ifndef POKEPLATINUM_GAME_RECORDS_H
#define POKEPLATINUM_GAME_RECORDS_H

#include "struct_decls/pokedexdata_decl.h"

#include "savedata.h"

#define NUM_U32_RECORDS 71
#define NUM_U16_RECORDS 77

#define TRAINER_SCORE_LIMIT 99999999
#define HIGH_LIMIT_U32      999999999
#define LOW_LIMIT_U32       999999
#define HIGH_LIMIT_U16      0xFFFF
#define LOW_LIMIT_U16       9999

typedef struct EncodingSeed {
    u16 byteSum;
    u16 modifier;
} EncodingSeed;

typedef struct GameRecords {
    u32 recordsU32[NUM_U32_RECORDS];
    u16 recordsU16[NUM_U16_RECORDS];
    u16 padding; // this should be added by the compiler, but is needed to match
    EncodingSeed seed;
} GameRecords;

GameRecords *SaveData_GetGameRecords(SaveData *savedata);

int GameRecords_SaveSize(void);
void GameRecords_Init(GameRecords *records);
u32 GameRecords_SetRecordValue(GameRecords *records, int id, u32 val);
u32 GameRecords_SetAndLimitRecordValue(GameRecords *records, int id, u32 val);
u32 GameRecords_IncrementRecordValue(GameRecords *records, int id);
u32 GameRecords_AddToRecordValue(GameRecords *records, int id, u32 toAdd);
u32 GameRecords_GetRecordValue(GameRecords *records, int id);
void GameRecords_IncrementTrainerScore(GameRecords *records, int scoreID);
u32 GameRecords_GetTrainerScore(GameRecords *records);
void GameRecords_IncrementTrainerScoreOnCatch(GameRecords *records, const Pokedex *pokedex, const u16 species);

#endif // POKEPLATINUM_GAME_RECORDS_H
