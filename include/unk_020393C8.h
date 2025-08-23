#ifndef POKEPLATINUM_UNK_020393C8_H
#define POKEPLATINUM_UNK_020393C8_H

#include "struct_defs/struct_020E5EB4.h"

#include "sys_task_manager.h"

typedef struct NetworkIcon {
    int unk_00;
    int strength;
    int unk_08;
    u16 x;
    u16 y;
    u8 isWifi;
    u8 screenId;
    u8 unk_12;
    const UnkStruct_020E5EB4 **unused_14;
    SysTask *unk_18;
    GXOamAttr *unk_1C;
} NetworkIcon;

void NetworkIcon_SetStrength(int networkStrength);
void sub_02039474(NetworkIcon *param0, BOOL param1, u32 heapID);
void *sub_020394A8(u32 heapID);
void sub_02039720(void);
void sub_02039734(void);
void sub_02039750(int param0, int param1, BOOL param2, int param3);
void NetworkIcon_Destroy(void);
void sub_020397C8(BOOL param0, u32 heapID);
void NetworkIcon_Init(void);

#endif // POKEPLATINUM_UNK_020393C8_H
