#include "palette.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"
#include "unk_020241F0.h"

static u8 sub_0200327C(u16 param0, u16 param1);
static void sub_02003290(PaletteData *param0, u16 param1);
static void sub_020032D0(int param0, PaletteBuffer *param1, u16 *param2);
static void sub_0200330C(PaletteFadeControl *param0, u16 param1, s8 param2, u8 param3, u8 param4, u16 param5);
static void sub_020033CC(SysTask *param0, void *param1);
static void sub_02003468(PaletteData *param0);
static void sub_02003488(PaletteData *param0);
static void sub_020034A8(PaletteData *param0, u16 param1, u16 param2);
static void sub_02003504(PaletteData *param0, u16 param1, u16 param2);
static void sub_02003560(u16 *param0, u16 *param1, PaletteFadeControl *param2, u32 param3);
static void sub_020035EC(PaletteData *param0, u8 param1, PaletteFadeControl *param2);

PaletteData *PaletteData_New(int param0)
{
    PaletteData *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(PaletteData));
    MI_CpuClear8(v0, sizeof(PaletteData));

    return v0;
}

void PaletteData_Free(PaletteData *param0)
{
    Heap_FreeToHeap(param0);
}

void PaletteData_InitBuffer(PaletteData *param0, int param1, void *param2, void *param3, u32 param4)
{
    param0->buffers[param1].unfaded = (u16 *)param2;
    param0->buffers[param1].faded = (u16 *)param3;
    param0->buffers[param1].size = param4;
}

void PaletteData_AllocBuffer(PaletteData *param0, int param1, u32 param2, u32 param3)
{
    void *v0;
    void *v1;

    v0 = Heap_AllocFromHeap(param3, param2);
    v1 = Heap_AllocFromHeap(param3, param2);

    PaletteData_InitBuffer(param0, param1, v0, v1, param2);
}

void PaletteData_FreeBuffer(PaletteData *param0, int param1)
{
    Heap_FreeToHeap(param0->buffers[param1].unfaded);
    Heap_FreeToHeap(param0->buffers[param1].faded);
}

void PaletteData_LoadBuffer(PaletteData *param0, const void *param1, int param2, u16 param3, u16 param4)
{
    MI_CpuCopy16(param1, (void *)&param0->buffers[param2].unfaded[param3], (u32)param4);
    MI_CpuCopy16(param1, (void *)&param0->buffers[param2].faded[param3], (u32)param4);
}

void PaletteData_LoadBufferFromFile(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6, u16 param7)
{
    NNSG2dPaletteData *v0;
    void *v1;

    v1 = sub_02006F88(bankID, memberIndex, &v0, param3);
    GF_ASSERT(v1 != NULL);

    if (param5 == 0) {
        param5 = v0->szByte;
    }

    GF_ASSERT(param6 * sizeof(param6) + param5 <= param0->buffers[param4].size);

    PaletteData_LoadBuffer(param0, &(((u16 *)(v0->pRawData))[param7]), param4, param6, param5);
    Heap_FreeToHeap(v1);
}

void PaletteData_LoadBufferFromFileStart(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6)
{
    PaletteData_LoadBufferFromFile(param0, bankID, memberIndex, param3, param4, param5, param6, 0);
}

void PaletteData_LoadBufferFromHardware(PaletteData *param0, int param1, u16 param2, u32 param3)
{
    u16 *v0;

    GF_ASSERT(param2 * sizeof(param2) + param3 <= param0->buffers[param1].size);

    switch (param1) {
    case 0:
        v0 = (u16 *)sub_020241F0();
        break;
    case 1:
        v0 = (u16 *)sub_02024200();
        break;
    case 2:
        v0 = (u16 *)sub_02024210();
        break;
    case 3:
        v0 = (u16 *)sub_02024218();
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }

    PaletteData_LoadBuffer(param0, &v0[param2], param1, param2, param3);
}

void LoadPaletteFromFile(u32 param0, u32 param1, u32 param2, u32 param3, u16 param4, void *param5)
{
    NNSG2dPaletteData *v0;
    void *v1;

    v1 = sub_02006F88(param0, param1, &v0, param2);
    GF_ASSERT(v1 != NULL);

    if (param3 == 0) {
        param3 = v0->szByte;
    }

    MI_CpuCopy16(&(((u16 *)(v0->pRawData))[param4]), param5, param3);
    Heap_FreeToHeap(v1);
}

void PaletteData_CopyBuffer(PaletteData *param0, int param1, u16 param2, int param3, u16 param4, u16 param5)
{
    MI_CpuCopy16((void *)&param0->buffers[param1].unfaded[param2], (void *)&param0->buffers[param3].unfaded[param4], param5);
    MI_CpuCopy16((void *)&param0->buffers[param1].unfaded[param2], (void *)&param0->buffers[param3].faded[param4], param5);
}

u16 *PaletteData_GetUnfadedBuffer(PaletteData *param0, int param1)
{
    return param0->buffers[param1].unfaded;
}

u16 *PaletteData_GetFadedBuffer(PaletteData *param0, int param1)
{
    return param0->buffers[param1].faded;
}

u8 PaletteData_StartFade(PaletteData *param0, u16 param1, u16 param2, s8 param3, u8 param4, u8 param5, u16 param6)
{
    u16 v0;
    u8 v1;
    u8 v2;

    v0 = param2;
    v1 = 0;

    for (v2 = 0; v2 < (4 + 10); v2++) {
        if ((sub_0200327C(param1, v2) == 1) && (sub_0200327C(param0->selectedBuffers, v2) == 0)) {
            sub_020032D0(v2, &param0->buffers[v2], &param2);
            sub_0200330C(&param0->buffers[v2].selected, param2, param3, param4, param5, param6);
            sub_02003290(param0, v2);

            if (v2 >= 4) {
                sub_02003504(param0, v2, 256);
            } else {
                sub_02003504(param0, v2, 16);
            }

            param2 = v0;
            v1 = 1;
        }
    }

    if (v1 == 1) {
        param0->selectedBuffers |= param1;

        if (param0->callbackFlag == 0) {
            param0->callbackFlag = 1;
            param0->selectedFlag = 1;
            param0->forceExit = 0;

            SysTask_Start(sub_020033CC, param0, (0xffffffff - 1));
        }
    }

    return v1;
}

static u8 sub_0200327C(u16 param0, u16 param1)
{
    if ((param0 & (1 << param1)) != 0) {
        return 1;
    }

    return 0;
}

static void sub_02003290(PaletteData *param0, u16 param1)
{
    if (sub_0200327C(param0->transparentBits, param1) == 1) {
        return;
    }

    param0->transparentBits |= (1 << param1);
}

static void sub_020032D0(int param0, PaletteBuffer *param1, u16 *param2)
{
    u16 v0;
    u8 v1, v2;

    if (param0 < 4) {
        v2 = param1->size / 32;
    } else {
        v2 = param1->size / 512;
    }

    v0 = 0;

    for (v1 = 0; v1 < v2; v1++) {
        v0 += (1 << v1);
    }

    *param2 &= v0;
}

static void sub_0200330C(PaletteFadeControl *param0, u16 param1, s8 param2, u8 param3, u8 param4, u16 param5)
{
    if (param2 < 0) {
        param0->step = 2 + abs(param2);
        param0->wait = 0;
    } else {
        param0->step = 2;
        param0->wait = param2;
    }

    param0->isOpaque = param1;
    param0->cur = param3;
    param0->end = param4;
    param0->nextRGB = param5;
    param0->waitStep = param0->wait;

    if (param3 < param4) {
        param0->sign = 0;
    } else {
        param0->sign = 1;
    }
}

static void sub_020033CC(SysTask *param0, void *param1)
{
    PaletteData *v0 = param1;

    if (v0->forceExit == 1) {
        v0->forceExit = 0;
        v0->transparentBits = 0;
        v0->selectedBuffers = 0;
        v0->callbackFlag = 0;
        SysTask_Done(param0);
        return;
    }

    if (v0->selectedFlag != 1) {
        return;
    }

    v0->transparentBits = v0->selectedBuffers;

    sub_02003468(v0);
    sub_02003488(v0);

    if (v0->selectedBuffers == 0) {
        v0->callbackFlag = 0;
        SysTask_Done(param0);
    }
}

static void sub_02003468(PaletteData *param0)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        sub_020034A8(param0, v0, 16);
    }
}

static void sub_02003488(PaletteData *param0)
{
    u8 v0, v1;

    for (v0 = 4; v0 < (4 + 10); v0++) {
        sub_020034A8(param0, v0, 256);
    }
}

static void sub_020034A8(PaletteData *param0, u16 param1, u16 param2)
{
    if (sub_0200327C(param0->selectedBuffers, param1) == 0) {
        return;
    }

    if (param0->buffers[param1].selected.waitStep < param0->buffers[param1].selected.wait) {
        param0->buffers[param1].selected.waitStep++;
        return;
    } else {
        param0->buffers[param1].selected.waitStep = 0;
    }

    sub_02003504(param0, param1, param2);
}

static void sub_02003504(PaletteData *param0, u16 param1, u16 param2)
{
    u32 v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (sub_0200327C(param0->buffers[param1].selected.isOpaque, v0) == 0) {
            continue;
        }

        sub_02003560(&param0->buffers[param1].unfaded[v0 * param2], &param0->buffers[param1].faded[v0 * param2], &param0->buffers[param1].selected, param2);
    }

    sub_020035EC(param0, param1, &param0->buffers[param1].selected);
}

static void sub_02003560(u16 *param0, u16 *param1, PaletteFadeControl *param2, u32 param3)
{
    u32 v0;
    u8 v1, v2, v3;

    for (v0 = 0; v0 < param3; v0++) {
        v1 = ((param0[v0] & 0x1f) + (((param2->nextRGB & 0x1f) - (param0[v0] & 0x1f)) * param2->cur >> 4));
        v2 = (((param0[v0] >> 5) & 0x1f) + ((((param2->nextRGB >> 5) & 0x1f) - ((param0[v0] >> 5) & 0x1f)) * param2->cur >> 4));
        v3 = (((param0[v0] >> 10) & 0x1f) + ((((param2->nextRGB >> 10) & 0x1f) - ((param0[v0] >> 10) & 0x1f)) * param2->cur >> 4));

        param1[v0] = (v3 << 10) | (v2 << 5) | v1;
    }
}

static void sub_020035EC(PaletteData *param0, u8 param1, PaletteFadeControl *param2)
{
    s16 v0;

    if (param2->cur == param2->end) {
        if ((param0->selectedBuffers & (1 << param1)) != 0) {
            param0->selectedBuffers ^= (1 << param1);
        }
    } else if (param2->sign == 0) {
        v0 = param2->cur;
        v0 += param2->step;

        if (v0 > param2->end) {
            v0 = param2->end;
        }

        param2->cur = v0;
    } else {
        v0 = param2->cur;
        v0 -= param2->step;

        if (v0 < param2->end) {
            v0 = param2->end;
        }

        param2->cur = v0;
    }
}

void PaletteData_CommitFadedBuffers(PaletteData *param0)
{
    if ((param0->autoTransparent == 0) && (param0->selectedFlag != 1)) {
        return;
    }

    {
        int v0;

        for (v0 = 0; v0 < (4 + 10); v0++) {
            if (param0->autoTransparent == 0) {
                if ((param0->buffers[v0].faded == NULL) || (sub_0200327C(param0->transparentBits, v0) == 0)) {
                    continue;
                }
            }

            DC_FlushRange((void *)param0->buffers[v0].faded, param0->buffers[v0].size);

            switch (v0) {
            case 0:
                GX_LoadBGPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                break;
            case 1:
                GXS_LoadBGPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                break;
            case 2:
                GX_LoadOBJPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                break;
            case 3:
                GXS_LoadOBJPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                break;
            case 4:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x0, param0->buffers[v0].size);
                GX_EndLoadBGExtPltt();
                break;
            case 5:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x2000, param0->buffers[v0].size);
                GX_EndLoadBGExtPltt();
                break;
            case 6:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x4000, param0->buffers[v0].size);
                GX_EndLoadBGExtPltt();
                break;
            case 7:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x6000, param0->buffers[v0].size);
                GX_EndLoadBGExtPltt();
                break;
            case 8:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x0, param0->buffers[v0].size);
                GXS_EndLoadBGExtPltt();
                break;
            case 9:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x2000, param0->buffers[v0].size);
                GXS_EndLoadBGExtPltt();
                break;
            case 10:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x4000, param0->buffers[v0].size);
                GXS_EndLoadBGExtPltt();
                break;
            case 11:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->buffers[v0].faded, 0x6000, param0->buffers[v0].size);
                GXS_EndLoadBGExtPltt();
                break;
            case 12:
                GX_BeginLoadOBJExtPltt();
                GX_LoadOBJExtPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                GX_EndLoadOBJExtPltt();
                break;
            case 13:
                GXS_BeginLoadOBJExtPltt();
                GXS_LoadOBJExtPltt((const void *)param0->buffers[v0].faded, 0, param0->buffers[v0].size);
                GXS_EndLoadOBJExtPltt();
            }
        }
    }

    param0->transparentBits = param0->selectedBuffers;

    if (param0->transparentBits == 0) {
        param0->selectedFlag = 0;
    }
}

u16 PaletteData_GetSelectedBuffersMask(PaletteData *param0)
{
    return param0->selectedBuffers;
}

void PaletteData_SetAutoTransparent(PaletteData *param0, int param1)
{
    param0->autoTransparent = param1;
}

void PaletteData_SelectAll(PaletteData *param0, u8 param1)
{
    param0->selectedFlag = param1 & 0x1;
    param0->selectedBuffers = 0xFFFFFFFF;
}

void PaletteData_FillBufferRange(PaletteData *param0, int param1, int param2, u16 param3, u16 param4, u16 param5)
{
    GF_ASSERT(param5 * sizeof(u16) <= param0->buffers[param1].size);

    if ((param2 == 1) || (param2 == 2)) {
        MI_CpuFill16(&param0->buffers[param1].unfaded[param4], param3, (param5 - param4) * 2);
    }

    if ((param2 == 0) || (param2 == 2)) {
        MI_CpuFill16(&param0->buffers[param1].faded[param4], param3, (param5 - param4) * 2);
    }
}

u16 PaletteData_GetBufferIndexColor(PaletteData *param0, int param1, int param2, u16 param3)
{
    if (param2 == 1) {
        return param0->buffers[param1].unfaded[param3];
    }

    if (param2 == 0) {
        return param0->buffers[param1].faded[param3];
    }

    GF_ASSERT(FALSE);
    return 0;
}

void BlendPalette(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4)
{
    u16 v0;
    int v1, v2, v3;
    int v4, v5, v6;

    v4 = ((RgbColor *)&param4)->r;
    v5 = ((RgbColor *)&param4)->g;
    v6 = ((RgbColor *)&param4)->b;

    for (v0 = 0; v0 < param2; v0++) {
        v1 = ((RgbColor *)&param0[v0])->r;
        v2 = ((RgbColor *)&param0[v0])->g;
        v3 = ((RgbColor *)&param0[v0])->b;

        param1[v0] = (v1 + ((v4 - v1) * param3 >> 4)) | ((v2 + ((v5 - v2) * param3 >> 4)) << 5) | ((v3 + ((v6 - v3) * param3 >> 4)) << 10);
    }
}

void PaletteData_Blend(PaletteData *param0, int param1, u16 param2, u16 param3, u8 param4, u16 param5)
{
    GF_ASSERT(param0->buffers[param1].unfaded != NULL && param0->buffers[param1].faded != NULL);
    BlendPalette(&param0->buffers[param1].unfaded[param2], &param0->buffers[param1].faded[param2], param3, param4, param5);
}

void BlendPalettes(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4)
{
    int v0 = 0;

    while (param2) {
        if (param2 & 1) {
            BlendPalette(&param0[v0], &param1[v0], 16, param3, param4);
        }

        param2 >>= 1;
        v0 += 16;
    }
}

void PaletteData_BlendMulti(PaletteData *param0, int param1, u16 param2, u8 param3, u16 param4)
{
    int v0 = 0;

    GF_ASSERT(param0->buffers[param1].unfaded != NULL && param0->buffers[param1].faded != NULL);

    while (param2) {
        if (param2 & 1) {
            PaletteData_Blend(param0, param1, v0, 16, param3, param4);
        }

        param2 >>= 1;
        v0 += 16;
    }
}

void TintPalette(u16 *param0, int param1, int param2, int param3, int param4)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);

        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        v1 = ((u16)((param2) * (v4)) >> 8);
        v2 = ((u16)((param3) * (v4)) >> 8);
        v3 = ((u16)((param4) * (v4)) >> 8);

        if (v1 > 31) {
            v1 = 31;
        }

        if (v2 > 31) {
            v2 = 31;
        }

        if (v3 > 31) {
            v3 = 31;
        }

        *param0 = (u16)((v3 << 10) | (v2 << 5) | v1);
        param0++;
    }
}

void PaletteData_TintFromFile(PaletteData *param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6, int param7, int param8, int param9)
{
    NNSG2dPaletteData *v0;
    void *v1;

    v1 = sub_02006F88(param1, param2, &v0, param3);
    GF_ASSERT(v1 != NULL);

    if (param5 == 0) {
        param5 = v0->szByte;
    }

    TintPalette(v0->pRawData, 16, param7, param8, param9);
    PaletteData_LoadBuffer(param0, v0->pRawData, param4, param6, param5);
    Heap_FreeToHeap(v1);
}
