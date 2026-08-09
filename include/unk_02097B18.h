#ifndef POKEPLATINUM_UNK_02097B18_H
#define POKEPLATINUM_UNK_02097B18_H

#include "field_task.h"
#include "pokemon.h"
#include "savedata.h"

typedef struct {
    int partySize;
    Pokemon *pokemon[6];
    Party *party;
    SealCase *sealCase;
    Options *options;
    SaveData *saveData;
    u8 unk_2C;
    u8 unk_2D;
    u8 unused[2];
} SealAppData;

Pokemon *sub_02097F00(SealAppData *param0, int param1);
u8 sub_02097F18(SealAppData *param0);
void sub_02097F20(SealAppData *param0, u8 param1);
u8 sub_02097F28(SealAppData *param0);
void sub_02097F30(SealAppData *param0, u8 param1);
void sub_020980DC(FieldTask *param0, SaveData *saveData);
int sub_02098140(u8 param0);
int sub_02098164(u8 param0);
int sub_02098188(u8 param0);
int sub_020981AC(u8 param0);
int sub_020981D0(u8 param0);
int sub_020981F4(u8 param0);

#endif // POKEPLATINUM_UNK_02097B18_H
