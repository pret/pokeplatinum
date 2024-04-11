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
#include "constants/string.h"

typedef struct ExtraSaveKey {
    u32 keys[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u32 oldKeys[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u8 keyFlags[EXTRA_SAVE_TABLE_ENTRY_MAX - 1];
    u8 padding[3];
} ExtraSaveKey;

typedef struct MiscSaveBlock {
    UnkStruct_02027854 unk_00[128];
    UnkStruct_02027860 unk_680;
    u16 rivalName[TRAINER_NAME_LEN + 1];
    u16 tabletName[TABLET_NAME_LEN + 1]; // used in shaymin event
    u16 favoriteMon;
    u8 favoriteMonForm : 7;
    u8 favoriteMonIsEgg : 1;
    u8 extraSaveInitalized : 1;
    u8 vsRecorderColor : 4;
    u8 padding : 3;
    u32 unused;
    Sentence introMsg;
    ExtraSaveKey extraKey;
} MiscSaveBlock;

int MiscSaveBlock_SaveSize(void);
void MiscSaveBlock_Init(MiscSaveBlock *miscSave);
MiscSaveBlock* SaveData_MiscSaveBlock(SaveData *saveData);
const MiscSaveBlock* SaveData_MiscSaveBlockConst(const SaveData *saveData);
UnkStruct_02027854* sub_02027854(SaveData *saveData);
UnkStruct_02027860* sub_02027860(SaveData *saveData);
const u16* MiscSaveBlock_RivalName(const MiscSaveBlock *miscSave);
void MiscSaveBlock_SetRivalName(MiscSaveBlock *miscSave, Strbuf *name);
const u16* MiscSaveBlock_TabletName(const MiscSaveBlock *miscSave);
void MiscSaveBlock_SetTabletName(MiscSaveBlock *miscSave, Strbuf *name);
void MiscSaveBlock_SetInitFlag(MiscSaveBlock *miscSave);
u32 MiscSaveBlock_InitFlag(const MiscSaveBlock *miscSave);
void MiscSaveBlock_SetFavoriteMon(MiscSaveBlock *miscSave, int species, int form, int isEgg);
void MiscSaveBlock_FavoriteMon(const MiscSaveBlock *miscSave, int *species, int *form, int *isEgg);
void MiscSaveBlock_IntroMsg(const MiscSaveBlock *miscSave, Sentence *message);
void MiscSaveBlock_SetIntroMsg(MiscSaveBlock *miscSave, const Sentence *message);
void MiscSaveBlock_VsRecorderColor(const MiscSaveBlock *miscSave, u8 *color);
void MiscSaveBlock_SetVsRecorderColor(MiscSaveBlock *miscSave, u8 color);
void MiscSaveBlock_ExtraSaveKey(const MiscSaveBlock *miscSave, int saveTableID, u32 *currKey, u32 *oldKey, u8 *keyFlag);
void MiscSaveBlock_SetExtraSaveKey(MiscSaveBlock *miscSave, int saveTableID, u32 currKey, u32 oldKey, u8 keyFlag);

#endif // POKEPLATINUM_SAVEDATA_MISC_H
