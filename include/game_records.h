#ifndef POKEPLATINUM_UNK_0202CD50_H
#define POKEPLATINUM_UNK_0202CD50_H

#include "struct_decls/pokedexdata_decl.h"
#include "savedata.h"

#define NUM_U32_RECORDS 71
#define NUM_U16_RECORDS 77

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
u32 sub_0202CE90(GameRecords * records, int param1, u32 param2);
u32 sub_0202CED0(GameRecords * records, int param1, u32 param2);
u32 sub_0202CF28(GameRecords * records, int param1);
u32 sub_0202CF70(GameRecords * records, int param1, u32 param2);
u32 sub_0202CFB8(GameRecords * records, int param1);
void sub_0202CFEC(GameRecords * records, int param1);
u32 sub_0202D034(GameRecords * records);
void sub_0202D040(GameRecords * records, const PokedexData * param1, u16 const param2);

#endif // POKEPLATINUM_UNK_0202CD50_H
