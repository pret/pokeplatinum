#ifndef POKEPLATINUM_UNK_020393C8_H
#define POKEPLATINUM_UNK_020393C8_H

#include "struct_decls/struct_020393C8_decl.h"
#include "struct_defs/struct_020E5EB4.h"

NetworkIcon *NetworkIcon_Init(u32 unused0, u32 heapID, int x, int y, BOOL isWifi, const UnkStruct_020E5EB4 *unused5[], int vramType);
void NetworkIcon_SetStrength(NetworkIcon *param0, int networkStrength);
void sub_02039440(NetworkIcon *param0);
void sub_02039474(NetworkIcon *param0, BOOL param1, u32 heapID);
void *sub_020394A8(u32 heapID);
void sub_02039720(void);
void sub_02039734(void);
void sub_02039750(int param0, int param1, BOOL param2, int param3);
void DestroyNetworkIcon(void);
void SetNetworkIconStrength(int param0);
void sub_020397C8(BOOL param0, u32 heapID);
void DrawWifiConnectionIcon(void);

#endif // POKEPLATINUM_UNK_020393C8_H
