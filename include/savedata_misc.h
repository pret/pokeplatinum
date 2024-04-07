#ifndef POKEPLATINUM_SAVEDATA_MISC_H
#define POKEPLATINUM_SAVEDATA_MISC_H

#include "struct_defs/sentence.h"
#include "strbuf.h"
#include "struct_decls/struct_02027854_decl.h"
#include "struct_decls/struct_02027860_decl.h"
#include "struct_defs/struct_02027854.h"
#include "struct_defs/struct_02027860.h"
#include "savedata.h"
#include "constants/savedata/save_table.h"

typedef struct {
    u32 keys[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u32 oldKeys[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u8 keyFlags[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u8 filler[3];
} ExtraSaveKey;

typedef struct MiscSaveBlock {
    UnkStruct_02027854 unk_00[128];
    UnkStruct_02027860 unk_680;
    u16 rivalName[8];
    u16 unk_6B4[11];
    u16 favoriteMon;
    u8 favoriteMonForm:7;
    u8 favoriteMonIsEgg:1;
    u8 extraSaveInitalized:1;
    u8 recorderColor:4;
    u8 filler:3;
    u32 unused;
    Sentence introMsg;
    ExtraSaveKey extraKey;
} MiscSaveBlock;

int MiscSaveBlock_SaveSize(void);
void MiscSaveBlock_Init(MiscSaveBlock * param0);
MiscSaveBlock * sub_0202783C(SaveData * param0);
const MiscSaveBlock * Save_MiscRO(const SaveData * param0);
UnkStruct_02027854 * sub_02027854(SaveData * param0);
UnkStruct_02027860 * sub_02027860(SaveData * param0);
const u16 * MiscSave_RivalName(const MiscSaveBlock * param0);
void sub_0202787C(MiscSaveBlock * param0, Strbuf *param1);
const u16 * sub_02027894(const MiscSaveBlock * param0);
void sub_020278A0(MiscSaveBlock * param0, Strbuf *param1);
void sub_020278B8(MiscSaveBlock * param0);
u32 sub_020278CC(const MiscSaveBlock * param0);
void sub_020278DC(MiscSaveBlock * param0, int param1, int param2, int param3);
void sub_02027914(const MiscSaveBlock * param0, int * param1, int * param2, int * param3);
void sub_02027938(const MiscSaveBlock * param0, Sentence * param1);
void sub_02027958(MiscSaveBlock * param0, const Sentence * param1);
void sub_0202797C(const MiscSaveBlock * param0, u8 * param1);
void sub_0202798C(MiscSaveBlock * param0, u8 param1);
void sub_020279A8(const MiscSaveBlock * param0, int param1, u32 * param2, u32 * param3, u8 * param4);
void sub_020279D0(MiscSaveBlock * param0, int param1, u32 param2, u32 param3, u8 param4);

#endif // POKEPLATINUM_SAVEDATA_MISC_H
