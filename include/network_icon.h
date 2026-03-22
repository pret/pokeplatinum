#ifndef POKEPLATINUM_NETWORK_ICON_H
#define POKEPLATINUM_NETWORK_ICON_H

#include "constants/heap.h"

#include "sys_task_manager.h"

typedef struct NetworkIcon {
    int unused;
    int strength;
    int unused3;
    u16 x;
    u16 y;
    u8 isWifi;
    u8 screenId;
    u8 createdOnSubScreen;
    void *unused2;
    SysTask *postVBlankTask;
    GXOamAttr *oam;
} NetworkIcon;

void NetworkIcon_InitIfConnected();
void NetworkIcon_Init();
void NetworkIcon_Destroy();
void NetworkIcon_Update();
void NetworkIcon_CreateOnSubScreen(BOOL isUpperScreen, u32 heapID);
void NetworkIcon_SetStrength(int networkStrength);
void *NetworkIcon_GetPalette(enum HeapID heapID);

#endif // POKEPLATINUM_NETWORK_ICON_H
