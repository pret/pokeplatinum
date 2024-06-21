#ifndef POKEPLATINUM_UNK_0202CD50_H
#define POKEPLATINUM_UNK_0202CD50_H

#include "struct_decls/pokedexdata_decl.h"
#include "savedata.h"

#define NUM_U32_RECORDS 71
#define NUM_U16_RECORDS 77

#define HIGH_LIMIT_U32  999999999
#define LOW_LIMIT_U32   999999
#define HIGH_LIMIT_U16  0xFFFF
#define LOW_LIMIT_U16   9999

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

GameRecords *SaveData_GetGameRecordsPtr(SaveData *savedata);

int GameRecords_SaveSize(void);
void GameRecords_Init(GameRecords *records);
u32 GameRecords_SetRecordValue(GameRecords * records, int param1, u32 param2);
u32 GameRecords_SetAndLimitRecordValue(GameRecords * records, int param1, u32 param2);
u32 GameRecords_IncrementRecordValue(GameRecords * records, int param1);
u32 GameRecords_AddToRecordValue(GameRecords * records, int param1, u32 param2);
u32 GameRecords_GetRecordValue(GameRecords * records, int param1);
void sub_0202CFEC(GameRecords * records, int param1);
u32 sub_0202D034(GameRecords * records);
void sub_0202D040(GameRecords * records, const PokedexData * param1, u16 const param2);

#endif // POKEPLATINUM_UNK_0202CD50_H
