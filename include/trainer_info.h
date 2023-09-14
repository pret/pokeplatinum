#ifndef POKEPLATINUM_TRAINER_INFO_H
#define POKEPLATINUM_TRAINER_INFO_H

#include "constants/string.h"

#include "strbuf.h"

typedef struct TrainerInfo {
    charcode_t name[TRAINER_NAME_LEN + 1];
    u32 id;
    u32 money;
    u8 gender;
    u8 regionCode;
    u8 badgeMask;
    u8 appearance;
    u8 gameCode;
    u8 isMainStoryCleared : 1;
    u8 hasNationalDex : 1;
    u8 : 6;
} TrainerInfo;

int TrainerInfo_Size(void);
TrainerInfo * TrainerInfo_New(u32 param0);
void TrainerInfo_Copy(const TrainerInfo * param0, TrainerInfo * param1);
void TrainerInfo_Init(TrainerInfo * param0);
BOOL TrainerInfo_HasNoName(const TrainerInfo * param0);
void TrainerInfo_SetName(TrainerInfo * param0, const u16 * param1);
void TrainerInfo_SetNameFromStrbuf(TrainerInfo * param0, const Strbuf *param1);
const u16 * TrainerInfo_Name(const TrainerInfo * param0);
void TrainerInfo_NameStrbuf(const TrainerInfo * param0, Strbuf *param1);
Strbuf* TrainerInfo_NameNewStrbuf(const TrainerInfo * param0, int param1);
void TrainerInfo_SetID(TrainerInfo * param0, u32 param1);
u32 TrainerInfo_ID(const TrainerInfo * param0);
u16 TrainerInfo_ID_LowHalf(const TrainerInfo * param0);
void TrainerInfo_SetGender(TrainerInfo * param0, int param1);
u32 TrainerInfo_Gender(const TrainerInfo * param0);
BOOL TrainerInfo_HasBadge(const TrainerInfo * param0, int param1);
void TrainerInfo_SetBadge(TrainerInfo * param0, int param1);
int TrainerInfo_BadgeCount(const TrainerInfo * param0);
u32 TrainerInfo_Money(const TrainerInfo * param0);
u32 TrainerInfo_SetMoney(TrainerInfo * param0, u32 param1);
u8 TrainerInfo_Appearance(const TrainerInfo * param0);
void TrainerInfo_SetAppearance(TrainerInfo * param0, u8 param1);
u32 TrainerInfo_GiveMoney(TrainerInfo * param0, u32 param1);
u32 TrainerInfo_TakeMoney(TrainerInfo * param0, u32 param1);
u8 TrainerInfo_GameCode(const TrainerInfo * param0);
void TrainerInfo_SetGameCode(TrainerInfo * param0, u8 param1);
u8 TrainerInfo_DPGameCode(void);
u8 TrainerInfo_RegionCode(const TrainerInfo * param0);
void TrainerInfo_SetRegionCode(TrainerInfo * param0, u8 param1);
void TrainerInfo_SetMainStoryCleared(TrainerInfo * param0);
int TrainerInfo_IsMainStoryCleared(TrainerInfo * param0);
void TrainerInfo_GiveNationalDex(TrainerInfo * param0);
int TrainerInfo_HasNationalDex(TrainerInfo * param0);
BOOL TrainerInfo_Equals(const TrainerInfo * param0, const TrainerInfo * param1);

#endif // POKEPLATINUM_TRAINER_INFO_H
