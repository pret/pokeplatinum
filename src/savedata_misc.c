#include "savedata_misc.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "struct_defs/sentence.h"

#include "berry_patches.h"
#include "persisted_map_features.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"

int MiscSaveBlock_SaveSize(void) {
    return sizeof(MiscSaveBlock);
}

void MiscSaveBlock_Init(MiscSaveBlock *miscSave) {
    MI_CpuClearFast(miscSave, sizeof(MiscSaveBlock));

    BerryPatches_Clear(miscSave->berryPatches);
    PersistedMapFeatures_Init(&miscSave->persistedMapFeatures);

    MI_CpuFill16(miscSave->rivalName, CHAR_EOS, TRAINER_NAME_LEN + 1);
    MI_CpuFill16(miscSave->tabletName, CHAR_EOS, TABLET_NAME_LEN + 1);

    sub_02014A9C(&miscSave->introMsg, 4);

    miscSave->introMsg.id = 0;
    miscSave->introMsg.words[0] = sub_02014DFC(441, 99);
    miscSave->introMsg.words[1] = 0xffff;

    for (int i = 0; i < EXTRA_SAVE_TABLE_ENTRY_MAX - 1; i++) {
        miscSave->extraKey.keys[i] = EXTRA_SAVE_TABLE_ENTRY_NONE;
        miscSave->extraKey.oldKeys[i] = EXTRA_SAVE_TABLE_ENTRY_NONE;
    }
}

MiscSaveBlock *SaveData_MiscSaveBlock(SaveData *saveData) {
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_MISC);
}

const MiscSaveBlock *SaveData_MiscSaveBlockConst(const SaveData *saveData) {
    return SaveData_SaveTableConst(saveData, SAVE_TABLE_ENTRY_MISC);
}

BerryPatch *MiscSaveBlock_GetBerryPatches(SaveData *saveData) {
    MiscSaveBlock *miscSave = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_MISC);
    return miscSave->berryPatches;
}

PersistedMapFeatures *MiscSaveBlock_GetPersistedMapFeatures(SaveData *saveData) {
    MiscSaveBlock *miscSave = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_MISC);
    return &miscSave->persistedMapFeatures;
}

const u16 *MiscSaveBlock_RivalName(const MiscSaveBlock *miscSave) {
    return miscSave->rivalName;
}

void MiscSaveBlock_SetRivalName(MiscSaveBlock *miscSave, Strbuf *name) {
    Strbuf_ToChars(name, miscSave->rivalName, TRAINER_NAME_LEN + 1);
}

const u16 *MiscSaveBlock_TabletName(const MiscSaveBlock *miscSave) {
    return miscSave->tabletName;
}

void MiscSaveBlock_SetTabletName(MiscSaveBlock *miscSave, Strbuf *name) {
    Strbuf_ToChars(name, miscSave->tabletName, TABLET_NAME_LEN + 1);
}

void MiscSaveBlock_SetInitFlag(MiscSaveBlock *miscSave) {
    miscSave->extraSaveInitalized = TRUE;
}

u32 MiscSaveBlock_InitFlag(const MiscSaveBlock *miscSave) {
    return miscSave->extraSaveInitalized;
}

void MiscSaveBlock_SetFavoriteMon(MiscSaveBlock *miscSave, int species, int form, int isEgg) {
    miscSave->favoriteMon = species;
    miscSave->favoriteMonForm = form;
    miscSave->favoriteMonIsEgg = isEgg;
}

void MiscSaveBlock_FavoriteMon(const MiscSaveBlock *miscSave, int *species, int *form, int *isEgg) {
    *species = miscSave->favoriteMon;
    *form = miscSave->favoriteMonForm;
    *isEgg = miscSave->favoriteMonIsEgg;
}

void MiscSaveBlock_IntroMsg(const MiscSaveBlock *miscSave, Sentence *message) {
    *message = miscSave->introMsg;
}

void MiscSaveBlock_SetIntroMsg(MiscSaveBlock *miscSave, const Sentence *message) {
    miscSave->introMsg = *message;
}

void MiscSaveBlock_VsRecorderColor(const MiscSaveBlock *miscSave, u8 *color) {
    *color = miscSave->vsRecorderColor;
}

void MiscSaveBlock_SetVsRecorderColor(MiscSaveBlock *miscSave, u8 color) {
    miscSave->vsRecorderColor = color;
}

void MiscSaveBlock_ExtraSaveKey(const MiscSaveBlock *miscSave, int saveTableID, u32 *currKey, u32 *oldKey, u8 *keyFlag) {
    *currKey = miscSave->extraKey.keys[saveTableID - 1];
    *oldKey = miscSave->extraKey.oldKeys[saveTableID - 1];
    *keyFlag = miscSave->extraKey.keyFlags[saveTableID - 1];
}

void MiscSaveBlock_SetExtraSaveKey(MiscSaveBlock *miscSave, int saveTableID, u32 currKey, u32 oldKey, u8 keyFlag) {
    miscSave->extraKey.keys[saveTableID - 1] = currKey;
    miscSave->extraKey.oldKeys[saveTableID - 1] = oldKey;
    miscSave->extraKey.keyFlags[saveTableID - 1] = keyFlag;
}
