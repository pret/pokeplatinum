#include "trainer_info.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "charcode_util.h"
#include "heap.h"
#include "strbuf.h"

#define MONEY_MAX 999999

int TrainerInfo_Size(void)
{
    return sizeof(TrainerInfo);
}

TrainerInfo *TrainerInfo_New(u32 heapID)
{
    TrainerInfo *info = Heap_AllocFromHeap(heapID, sizeof(TrainerInfo));
    TrainerInfo_Init(info);

    return info;
}

void TrainerInfo_Copy(const TrainerInfo *src, TrainerInfo *dst)
{
    MI_CpuCopy8(src, dst, sizeof(TrainerInfo));
}

void TrainerInfo_Init(TrainerInfo *info)
{
    memset(info, 0, sizeof(TrainerInfo));
    info->regionCode = GAME_LANGUAGE;

    TrainerInfo_SetGameCode(info, GAME_VERSION);
}

BOOL TrainerInfo_HasNoName(const TrainerInfo *info)
{
    for (int i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        if (info->name[i] != CHAR_EMPTY) {
            return FALSE;
        }
    }

    return TRUE;
}

void TrainerInfo_SetName(TrainerInfo *info, const charcode_t *name)
{
    int len = GF_strlen(name);
    GF_ASSERT(len < TRAINER_NAME_LEN + 1);

    GF_strcpy(info->name, name);
}

void TrainerInfo_SetNameFromStrbuf(TrainerInfo *info, const Strbuf *name)
{
    Strbuf_ToChars(name, info->name, TRAINER_NAME_LEN + 1);
}

const charcode_t *TrainerInfo_Name(const TrainerInfo *info)
{
    return info->name;
}

void TrainerInfo_NameStrbuf(const TrainerInfo *info, Strbuf *name)
{
    Strbuf_CopyChars(name, info->name);
}

Strbuf *TrainerInfo_NameNewStrbuf(const TrainerInfo *info, int heapID)
{
    Strbuf *name = Strbuf_Init(TRAINER_NAME_LEN + 1, heapID);

    TrainerInfo_NameStrbuf(info, name);
    return name;
}

void TrainerInfo_SetID(TrainerInfo *info, u32 id)
{
    info->id = id;
}

u32 TrainerInfo_ID(const TrainerInfo *info)
{
    return info->id;
}

u16 TrainerInfo_ID_LowHalf(const TrainerInfo *info)
{
    return info->id & 0xFFFF;
}

void TrainerInfo_SetGender(TrainerInfo *info, int gender)
{
    info->gender = gender;
}

u32 TrainerInfo_Gender(const TrainerInfo *info)
{
    return info->gender;
}

BOOL TrainerInfo_HasBadge(const TrainerInfo *info, int badge)
{
    if (info->badgeMask & (1 << badge)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void TrainerInfo_SetBadge(TrainerInfo *info, int badge)
{
    info->badgeMask |= (1 << badge);
}

int TrainerInfo_BadgeCount(const TrainerInfo *info)
{
    int count = 0;
    for (u32 mask = info->badgeMask; mask != 0; mask >>= 1) {
        if (mask & 1) {
            count++;
        }
    }

    return count;
}

u32 TrainerInfo_Money(const TrainerInfo *info)
{
    return info->money;
}

u32 TrainerInfo_SetMoney(TrainerInfo *info, u32 money)
{
    if (money > MONEY_MAX) {
        money = MONEY_MAX;
    }

    info->money = money;
    return info->money;
}

u8 TrainerInfo_Appearance(const TrainerInfo *info)
{
    return info->appearance;
}

void TrainerInfo_SetAppearance(TrainerInfo *info, u8 appearance)
{
    info->appearance = appearance;
}

u32 TrainerInfo_GiveMoney(TrainerInfo *info, u32 money)
{
    if (money > MONEY_MAX) {
        info->money = MONEY_MAX;
    } else {
        info->money += money;
    }

    if (info->money > MONEY_MAX) {
        info->money = MONEY_MAX;
    }

    return info->money;
}

u32 TrainerInfo_TakeMoney(TrainerInfo *info, u32 money)
{
    if (info->money < money) {
        info->money = 0;
    } else {
        info->money -= money;
    }

    return info->money;
}

u8 TrainerInfo_GameCode(const TrainerInfo *info)
{
    return info->gameCode;
}

void TrainerInfo_SetGameCode(TrainerInfo *info, u8 gameCode)
{
    info->gameCode = gameCode;
}

u8 TrainerInfo_DPGameCode(void)
{
    return 0;
}

u8 TrainerInfo_RegionCode(const TrainerInfo *info)
{
    return info->regionCode;
}

void TrainerInfo_SetRegionCode(TrainerInfo *info, u8 regionCode)
{
    info->regionCode = regionCode;
}

void TrainerInfo_SetMainStoryCleared(TrainerInfo *info)
{
    info->isMainStoryCleared = TRUE;
}

BOOL TrainerInfo_IsMainStoryCleared(TrainerInfo *info)
{
    return info->isMainStoryCleared;
}

void TrainerInfo_GiveNationalDex(TrainerInfo *info)
{
    info->hasNationalDex = TRUE;
}

BOOL TrainerInfo_HasNationalDex(TrainerInfo *info)
{
    return info->hasNationalDex;
}

BOOL TrainerInfo_Equals(const TrainerInfo *info1, const TrainerInfo *info2)
{
    return GF_strncmp(info1->name, info2->name, TRAINER_NAME_LEN) == 0
        && info1->id == info2->id;
}
