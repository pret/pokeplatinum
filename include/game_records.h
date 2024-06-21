#ifndef POKEPLATINUM_UNK_0202CD50_H
#define POKEPLATINUM_UNK_0202CD50_H

#include "struct_decls/pokedexdata_decl.h"
#include "savedata.h"

typedef struct GameRecords_sub1 {
    u16 unk_00;
    u16 unk_02;
} GameRecords_sub1;

typedef struct GameRecords {
    u32 unk_00[71];
    u16 unk_11C[77];
    u16 unk_1B6;
    GameRecords_sub1 unk_1B8;
} GameRecords;

int GameRecord_SaveSize(void);
void GameRecord_Init(GameRecords * param0);
GameRecords * sub_0202CD88(SaveData * param0);
u32 sub_0202CE90(GameRecords * param0, int param1, u32 param2);
u32 sub_0202CED0(GameRecords * param0, int param1, u32 param2);
u32 sub_0202CF28(GameRecords * param0, int param1);
u32 sub_0202CF70(GameRecords * param0, int param1, u32 param2);
u32 sub_0202CFB8(GameRecords * param0, int param1);
void sub_0202CFEC(GameRecords * param0, int param1);
u32 sub_0202D034(GameRecords * param0);
void sub_0202D040(GameRecords * param0, const PokedexData * param1, u16 const param2);

#endif // POKEPLATINUM_UNK_0202CD50_H
