#include <nitro.h>
#include <string.h>

#include "unk_020021B0.h"
#include "heap.h"
#include "strbuf.h"
#include "trainer_info.h"

int TrainerInfo_Size (void)
{
    return sizeof(TrainerInfo);
}

TrainerInfo * TrainerInfo_New (u32 param0)
{
    TrainerInfo * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(TrainerInfo));
    TrainerInfo_Init(v0);

    return v0;
}

void TrainerInfo_Copy (const TrainerInfo * param0, TrainerInfo * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(TrainerInfo));
}

void TrainerInfo_Init (TrainerInfo * param0)
{
    memset(param0, 0, sizeof(TrainerInfo));
    param0->regionCode = GAME_LANGUAGE;

    TrainerInfo_SetGameCode(param0, GAME_VERSION);
}

BOOL TrainerInfo_HasNoName (const TrainerInfo * param0)
{
    int v0;

    for (v0 = 0; v0 < 7 + 1; v0++) {
        if (param0->name[v0] != 0) {
            return 0;
        }
    }

    return 1;
}

void TrainerInfo_SetName (TrainerInfo * param0, const u16 * param1)
{
    int v0;

    v0 = GF_strlen(param1);
    GF_ASSERT(v0 < 7 + 1);

    GF_strcpy(param0->name, param1);
}

void TrainerInfo_SetNameFromStrbuf (TrainerInfo * param0, const Strbuf *param1)
{
    Strbuf_ToChars(param1, param0->name, 7 + 1);
}

const u16 * TrainerInfo_Name (const TrainerInfo * param0)
{
    return param0->name;
}

void TrainerInfo_NameStrbuf (const TrainerInfo * param0, Strbuf *param1)
{
    Strbuf_CopyChars(param1, param0->name);
}

Strbuf* TrainerInfo_NameNewStrbuf (const TrainerInfo * param0, int param1)
{
    Strbuf* v0 = Strbuf_Init(7 + 1, param1);

    TrainerInfo_NameStrbuf(param0, v0);
    return v0;
}

void TrainerInfo_SetID (TrainerInfo * param0, u32 param1)
{
    param0->id = param1;
}

u32 TrainerInfo_ID (const TrainerInfo * param0)
{
    return param0->id;
}

u16 TrainerInfo_ID_LowHalf (const TrainerInfo * param0)
{
    return (u16)(param0->id & 0xffff);
}

void TrainerInfo_SetGender (TrainerInfo * param0, int param1)
{
    param0->gender = param1;
}

u32 TrainerInfo_Gender (const TrainerInfo * param0)
{
    return param0->gender;
}

BOOL TrainerInfo_HasBadge (const TrainerInfo * param0, int param1)
{
    if (param0->badgeMask & (1 << param1)) {
        return 1;
    } else {
        return 0;
    }
}

void TrainerInfo_SetBadge (TrainerInfo * param0, int param1)
{
    param0->badgeMask |= (1 << param1);
}

int TrainerInfo_BadgeCount (const TrainerInfo * param0)
{
    int v0 = 0;
    u32 v1;

    for (v1 = param0->badgeMask; v1 != 0; v1 >>= 1) {
        if (v1 & 1) {
            v0++;
        }
    }

    return v0;
}

u32 TrainerInfo_Money (const TrainerInfo * param0)
{
    return param0->money;
}

u32 TrainerInfo_SetMoney (TrainerInfo * param0, u32 param1)
{
    if (param1 > 999999) {
        param1 = 999999;
    }

    param0->money = param1;
    return param0->money;
}

u8 TrainerInfo_Appearance (const TrainerInfo * param0)
{
    return param0->appearance;
}

void TrainerInfo_SetAppearance (TrainerInfo * param0, u8 param1)
{
    param0->appearance = param1;
}

u32 TrainerInfo_GiveMoney (TrainerInfo * param0, u32 param1)
{
    if (param1 > 999999) {
        param0->money = 999999;
    } else {
        param0->money += param1;
    }

    if (param0->money > 999999) {
        param0->money = 999999;
    }

    return param0->money;
}

u32 TrainerInfo_TakeMoney (TrainerInfo * param0, u32 param1)
{
    if (param0->money < param1) {
        param0->money = 0;
    } else {
        param0->money -= param1;
    }

    return param0->money;
}

u8 TrainerInfo_GameCode (const TrainerInfo * param0)
{
    return param0->gameCode;
}

void TrainerInfo_SetGameCode (TrainerInfo * param0, u8 param1)
{
    param0->gameCode = param1;
}

u8 TrainerInfo_DPGameCode (void)
{
    return 0;
}

u8 TrainerInfo_RegionCode (const TrainerInfo * param0)
{
    return param0->regionCode;
}

void TrainerInfo_SetRegionCode (TrainerInfo * param0, u8 param1)
{
    param0->regionCode = param1;
}

void TrainerInfo_SetMainStoryCleared (TrainerInfo * param0)
{
    param0->isMainStoryCleared = 1;
}

int TrainerInfo_IsMainStoryCleared (TrainerInfo * param0)
{
    return param0->isMainStoryCleared;
}

void TrainerInfo_GiveNationalDex (TrainerInfo * param0)
{
    param0->hasNationalDex = 1;
}

int TrainerInfo_HasNationalDex (TrainerInfo * param0)
{
    return param0->hasNationalDex;
}

BOOL TrainerInfo_Equals (const TrainerInfo * param0, const TrainerInfo * param1)
{
    if (0 == GF_strncmp(param0->name, param1->name, 7)) {
        if (param0->id == param1->id) {
            return 1;
        }
    }

    return 0;
}
