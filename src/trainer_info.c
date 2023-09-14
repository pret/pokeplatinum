#include <nitro.h>
#include <string.h>

#include "unk_020021B0.h"
#include "heap.h"
#include "strbuf.h"
#include "trainer_info.h"

int sub_02025E68 (void)
{
    return sizeof(TrainerInfo);
}

TrainerInfo * sub_02025E6C (u32 param0)
{
    TrainerInfo * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(TrainerInfo));
    sub_02025E8C(v0);

    return v0;
}

void sub_02025E80 (const TrainerInfo * param0, TrainerInfo * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(TrainerInfo));
}

void sub_02025E8C (TrainerInfo * param0)
{
    memset(param0, 0, sizeof(TrainerInfo));
    param0->regionCode = GAME_LANGUAGE;

    sub_02025FD0(param0, GAME_VERSION);
}

BOOL sub_02025EA8 (const TrainerInfo * param0)
{
    int v0;

    for (v0 = 0; v0 < 7 + 1; v0++) {
        if (param0->name[v0] != 0) {
            return 0;
        }
    }

    return 1;
}

void sub_02025EC0 (TrainerInfo * param0, const u16 * param1)
{
    int v0;

    v0 = sub_020021F0(param1);
    GF_ASSERT(v0 < 7 + 1);

    sub_020021B0(param0->name, param1);
}

void sub_02025EE0 (TrainerInfo * param0, const Strbuf *param1)
{
    Strbuf_ToChars(param1, param0->name, 7 + 1);
}

const u16 * sub_02025EF0 (const TrainerInfo * param0)
{
    return param0->name;
}

void sub_02025EF4 (const TrainerInfo * param0, Strbuf *param1)
{
    Strbuf_CopyChars(param1, param0->name);
}

Strbuf* sub_02025F04 (const TrainerInfo * param0, int param1)
{
    Strbuf* v0 = Strbuf_Init(7 + 1, param1);

    sub_02025EF4(param0, v0);
    return v0;
}

void sub_02025F1C (TrainerInfo * param0, u32 param1)
{
    param0->id = param1;
}

u32 sub_02025F20 (const TrainerInfo * param0)
{
    return param0->id;
}

u16 sub_02025F24 (const TrainerInfo * param0)
{
    return (u16)(param0->id & 0xffff);
}

void sub_02025F2C (TrainerInfo * param0, int param1)
{
    param0->gender = param1;
}

u32 sub_02025F30 (const TrainerInfo * param0)
{
    return param0->gender;
}

BOOL sub_02025F34 (const TrainerInfo * param0, int param1)
{
    if (param0->badgeMask & (1 << param1)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_02025F48 (TrainerInfo * param0, int param1)
{
    param0->badgeMask |= (1 << param1);
}

int sub_02025F58 (const TrainerInfo * param0)
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

u32 sub_02025F74 (const TrainerInfo * param0)
{
    return param0->money;
}

u32 sub_02025F78 (TrainerInfo * param0, u32 param1)
{
    if (param1 > 999999) {
        param1 = 999999;
    }

    param0->money = param1;
    return param0->money;
}

u8 sub_02025F8C (const TrainerInfo * param0)
{
    return param0->appearance;
}

void sub_02025F90 (TrainerInfo * param0, u8 param1)
{
    param0->appearance = param1;
}

u32 sub_02025F94 (TrainerInfo * param0, u32 param1)
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

u32 sub_02025FB8 (TrainerInfo * param0, u32 param1)
{
    if (param0->money < param1) {
        param0->money = 0;
    } else {
        param0->money -= param1;
    }

    return param0->money;
}

u8 sub_02025FCC (const TrainerInfo * param0)
{
    return param0->gameCode;
}

void sub_02025FD0 (TrainerInfo * param0, u8 param1)
{
    param0->gameCode = param1;
}

u8 sub_02025FD4 (void)
{
    return 0;
}

u8 sub_02025FD8 (const TrainerInfo * param0)
{
    return param0->regionCode;
}

void sub_02025FDC (TrainerInfo * param0, u8 param1)
{
    param0->regionCode = param1;
}

void sub_02025FE0 (TrainerInfo * param0)
{
    param0->gameCleared = 1;
}

int sub_02025FF0 (TrainerInfo * param0)
{
    return param0->gameCleared;
}

void sub_02025FF8 (TrainerInfo * param0)
{
    param0->hasNationalDex = 1;
}

int sub_02026004 (TrainerInfo * param0)
{
    return param0->hasNationalDex;
}

BOOL sub_0202600C (const TrainerInfo * param0, const TrainerInfo * param1)
{
    if (0 == sub_02002238(param0->name, param1->name, 7)) {
        if (param0->id == param1->id) {
            return 1;
        }
    }

    return 0;
}
