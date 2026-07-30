#ifndef POKEPLATINUM_OV59_021D2B44_H
#define POKEPLATINUM_OV59_021D2B44_H

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/tv.h"

#include "savedata.h"

u32 ov59_021D2B44(const SaveData *saveData);
u32 ov59_021D2B4C(const SaveData *saveData);
u32 ov59_021D2B54(const SaveData *saveData);
TVWifiEpisode *ov59_021D2C28(SaveData *saveData, enum HeapID heapID, u32 param2);
TVWifiEpisode *ov59_021D2C70(SaveData *saveData, enum HeapID heapID, u32 param2);
TVWifiEpisode *ov59_021D2CB4(SaveData *saveData, enum HeapID heapID, u32 param2);
TVWifiEpisode *ov59_021D2CF8(SaveData *saveData, enum HeapID heapID, u32 param2);
TVWifiEpisode *ov59_021D2D3C(SaveData *saveData, enum HeapID heapID, u32 param2);
TVWifiEpisode *ov59_021D2D80(SaveData *saveData, enum HeapID heapID, u32 param2);
void ov59_021D2F10(TVBroadcast *broadcast, int param1, int param2, const void **param3, const void **param4);
void ov59_021D2F38(TVBroadcast *broadcast, int param1, int param2, const void **param3, const void **param4);
void ov59_021D2F60(TVBroadcast *broadcast, int param1, int param2, const void **param3, const void **param4);

#endif // POKEPLATINUM_OV59_021D2B44_H
