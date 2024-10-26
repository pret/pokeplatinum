#include "palette.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "graphics.h"
#include "hardware_palette.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define SLOTS_PER_PALETTE 16
#define PALETTE_SIZE      (SLOTS_PER_PALETTE)
#define PALETTE_SIZE_EXT  (SLOTS_PER_PALETTE * 16)

static u8 IsMaskedOn(u16 mask, u16 bit);
static void FlagFadedPaletteBuffer(PaletteData *paletteData, u16 bufferID);
static void FilterMaskToValidPalettes(int bufferID, PaletteBuffer *buffer, u16 *outMask);
static void SetTimedFadeParams(PaletteFadeControl *fade, u16 unfadedMask, s8 wait, u8 cur, u8 end, u16 target);
static void WaitAndApplyBlendStepToStdPaletteBuffers(PaletteData *paletteData);
static void WaitAndApplyBlendStepToExtPaletteBuffers(PaletteData *paletteData);
static void WaitAndApplyBlendStepToPaletteBuffer(PaletteData *paletteData, u16 bufferID, u16 paletteSize);
static void ApplyBlendStepToPaletteBuffer(PaletteData *paletteData, u16 bufferID, u16 paletteSize);
static void ApplyBlendStepToSinglePalette(u16 *unfaded, u16 *faded, PaletteFadeControl *fade, u32 paletteSize);
static void UpdateFadeBlendStep(PaletteData *paletteData, u8 bufferID, PaletteFadeControl *fade);

static void SysTask_FadePalette(SysTask *task, void *data);

PaletteData *PaletteData_New(enum HeapId heapID)
{
    PaletteData *paletteData = Heap_AllocFromHeap(heapID, sizeof(PaletteData));
    MI_CpuClear8(paletteData, sizeof(PaletteData));

    return paletteData;
}

void PaletteData_Free(PaletteData *paletteData)
{
    Heap_FreeToHeap(paletteData);
}

void PaletteData_InitBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, void *unfaded, void *faded, u32 size)
{
    paletteData->buffers[bufferID].unfaded = (u16 *)unfaded;
    paletteData->buffers[bufferID].faded = (u16 *)faded;
    paletteData->buffers[bufferID].size = size;
}

void PaletteData_AllocBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, u32 size, u32 heapID)
{
    void *unfaded = Heap_AllocFromHeap(heapID, size);
    void *faded = Heap_AllocFromHeap(heapID, size);
    PaletteData_InitBuffer(paletteData, bufferID, unfaded, faded, size);
}

void PaletteData_FreeBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID)
{
    Heap_FreeToHeap(paletteData->buffers[bufferID].unfaded);
    Heap_FreeToHeap(paletteData->buffers[bufferID].faded);
}

void PaletteData_LoadBuffer(PaletteData *paletteData, const void *src, enum PaletteBufferID bufferID, u16 destStart, u16 srcSize)
{
    MI_CpuCopy16(src, paletteData->buffers[bufferID].unfaded + destStart, srcSize);
    MI_CpuCopy16(src, paletteData->buffers[bufferID].faded + destStart, srcSize);
}

void PaletteData_LoadBufferFromFile(PaletteData *paletteData, u32 narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 srcSize, u16 destStart, u16 srcStart)
{
    NNSG2dPaletteData *palette;
    void *ptr = Graphics_GetPlttData(narcID, narcMemberIdx, &palette, heapID);

    GF_ASSERT(ptr != NULL);

    if (srcSize == 0) {
        srcSize = palette->szByte;
    }

    GF_ASSERT(destStart * sizeof(destStart) + srcSize <= paletteData->buffers[bufferID].size);

    PaletteData_LoadBuffer(paletteData, (u16 *)palette->pRawData + srcStart, bufferID, destStart, srcSize);
    Heap_FreeToHeap(ptr);
}

void PaletteData_LoadBufferFromFileStart(PaletteData *paletteData, u32 narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 srcSize, u16 destStart)
{
    PaletteData_LoadBufferFromFile(paletteData, narcID, narcMemberIdx, heapID, bufferID, srcSize, destStart, 0);
}

void PaletteData_LoadBufferFromHardware(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 start, u32 size)
{
    GF_ASSERT(start * sizeof(start) + size <= paletteData->buffers[bufferID].size);

    u16 *ptr;
    switch (bufferID) {
    case PLTTBUF_MAIN_BG:
        ptr = GetHardwareMainBgPaletteAddress();
        break;

    case PLTTBUF_SUB_BG:
        ptr = GetHardwareSubBgPaletteAddress();
        break;

    case PLTTBUF_MAIN_OBJ:
        ptr = GetHardwareMainObjPaletteAddress();
        break;

    case PLTTBUF_SUB_OBJ:
        ptr = GetHardwareSubObjPaletteAddress();
        break;

    default:
        GF_ASSERT(FALSE);
        return;
    }

    PaletteData_LoadBuffer(paletteData, ptr + start, bufferID, start, size);
}

void LoadPaletteFromFile(u32 narcID, u32 narcMemberIdx, u32 heapID, u32 size, u16 start, void *dest)
{
    NNSG2dPaletteData *palette;
    void *ptr = Graphics_GetPlttData(narcID, narcMemberIdx, &palette, heapID);

    GF_ASSERT(ptr != NULL);

    if (size == 0) {
        size = palette->szByte;
    }

    MI_CpuCopy16((u16 *)palette->pRawData + start, dest, size);
    Heap_FreeToHeap(ptr);
}

void PaletteData_CopyBuffer(PaletteData *palette, enum PaletteBufferID srcBufferID, u16 srcStart, enum PaletteBufferID destBufferID, u16 destStart, u16 size)
{
    MI_CpuCopy16(palette->buffers[srcBufferID].unfaded + srcStart, palette->buffers[destBufferID].unfaded + destStart, size);
    MI_CpuCopy16(palette->buffers[srcBufferID].unfaded + srcStart, palette->buffers[destBufferID].faded + destStart, size);
}

u16 *PaletteData_GetUnfadedBuffer(PaletteData *palette, enum PaletteBufferID bufferID)
{
    return palette->buffers[bufferID].unfaded;
}

u16 *PaletteData_GetFadedBuffer(PaletteData *palette, enum PaletteBufferID bufferID)
{
    return palette->buffers[bufferID].faded;
}

u8 PaletteData_StartFade(PaletteData *paletteData, u16 buffersToFade, u16 palettesToFade, s8 wait, u8 cur, u8 end, u16 target)
{
    u16 inPalettesToFade = palettesToFade;
    u8 palettesFaded = FALSE;
    u8 bufferID;

    for (bufferID = PLTTBUF_MAIN_BG; bufferID < PLTTBUF_MAX; bufferID++) {
        if (IsMaskedOn(buffersToFade, bufferID) == TRUE && !IsMaskedOn(paletteData->selectedBuffers, bufferID)) {
            FilterMaskToValidPalettes(bufferID, &paletteData->buffers[bufferID], &palettesToFade);
            SetTimedFadeParams(&paletteData->buffers[bufferID].selected, palettesToFade, wait, cur, end, target);
            FlagFadedPaletteBuffer(paletteData, bufferID);

            if (bufferID >= PLTTBUF_EX_BEGIN) {
                ApplyBlendStepToPaletteBuffer(paletteData, bufferID, PALETTE_SIZE_EXT);
            } else {
                ApplyBlendStepToPaletteBuffer(paletteData, bufferID, PALETTE_SIZE);
            }

            palettesToFade = inPalettesToFade;
            palettesFaded = TRUE;
        }
    }

    if (palettesFaded == TRUE) {
        paletteData->selectedBuffers |= buffersToFade;

        if (paletteData->fadeInProgress == FALSE) {
            paletteData->fadeInProgress = TRUE;
            paletteData->selectedFlag = TRUE;
            paletteData->forceExit = FALSE;

            SysTask_Start(SysTask_FadePalette, paletteData, 0xFFFFFFFE);
        }
    }

    return palettesFaded;
}

static u8 IsMaskedOn(u16 mask, u16 bit)
{
    return (mask & (1 << bit)) != 0;
}

static void FlagFadedPaletteBuffer(PaletteData *paletteData, u16 bufferID)
{
    if (IsMaskedOn(paletteData->fadedBuffers, bufferID) != TRUE) {
        paletteData->fadedBuffers |= (1 << bufferID);
    }
}

static void FilterMaskToValidPalettes(int bufferID, PaletteBuffer *buffer, u16 *outMask)
{
    u8 singlePaletteSize;
    if (bufferID < PLTTBUF_EX_BEGIN) {
        singlePaletteSize = buffer->size / (PALETTE_SIZE * 2);
    } else {
        singlePaletteSize = buffer->size / (PALETTE_SIZE_EXT * 2);
    }

    u16 validPalettesMask = 0;
    for (u8 i = 0; i < singlePaletteSize; i++) {
        validPalettesMask += (1 << i);
    }

    *outMask &= validPalettesMask;
}

static void SetTimedFadeParams(PaletteFadeControl *fade, u16 unfadedMask, s8 wait, u8 cur, u8 end, u16 target)
{
    if (wait < 0) {
        fade->step = 2 + abs(wait);
        fade->wait = 0;
    } else {
        fade->step = 2;
        fade->wait = wait;
    }

    fade->unfadedMask = unfadedMask;
    fade->cur = cur;
    fade->end = end;
    fade->target = target;
    fade->waitStep = fade->wait;

    if (cur < end) {
        fade->sign = 0;
    } else {
        fade->sign = 1;
    }
}

static void SysTask_FadePalette(SysTask *task, void *data)
{
    PaletteData *paletteData = data;

    if (paletteData->forceExit == TRUE) {
        paletteData->forceExit = FALSE;
        paletteData->fadedBuffers = 0;
        paletteData->selectedBuffers = 0;
        paletteData->fadeInProgress = FALSE;
        SysTask_Done(task);
        return;
    }

    if (paletteData->selectedFlag != TRUE) {
        return;
    }

    paletteData->fadedBuffers = paletteData->selectedBuffers;

    WaitAndApplyBlendStepToStdPaletteBuffers(paletteData);
    WaitAndApplyBlendStepToExtPaletteBuffers(paletteData);

    if (paletteData->selectedBuffers == 0) {
        paletteData->fadeInProgress = FALSE;
        SysTask_Done(task);
    }
}

static void WaitAndApplyBlendStepToStdPaletteBuffers(PaletteData *paletteData)
{
    for (u8 i = PLTTBUF_MAIN_BG; i < PLTTBUF_EX_BEGIN; i++) {
        WaitAndApplyBlendStepToPaletteBuffer(paletteData, i, PALETTE_SIZE);
    }
}

static void WaitAndApplyBlendStepToExtPaletteBuffers(PaletteData *paletteData)
{
    for (u8 i = PLTTBUF_EX_BEGIN; i < PLTTBUF_MAX; i++) {
        WaitAndApplyBlendStepToPaletteBuffer(paletteData, i, PALETTE_SIZE_EXT);
    }
}

static void WaitAndApplyBlendStepToPaletteBuffer(PaletteData *paletteData, u16 bufferID, u16 paletteSize)
{
    if (!IsMaskedOn(paletteData->selectedBuffers, bufferID)) {
        return;
    }

    if (paletteData->buffers[bufferID].selected.waitStep < paletteData->buffers[bufferID].selected.wait) {
        paletteData->buffers[bufferID].selected.waitStep++;
        return;
    }

    paletteData->buffers[bufferID].selected.waitStep = 0;
    ApplyBlendStepToPaletteBuffer(paletteData, bufferID, paletteSize);
}

#define BlendColor(source, target, fraction) ((source) + (((target) - (source)) * (fraction) >> 4))

#define ColorR(source) ((source) & 0x1F)
#define ColorG(source) (((source) >> 5) & 0x1F)
#define ColorB(source) (((source) >> 10) & 0x1F)
#define RGB(r, g, b)   (((b) << 10) | ((g) << 5) | (r))

static void ApplyBlendStepToPaletteBuffer(PaletteData *paletteData, u16 bufferID, u16 paletteSize)
{
    for (u32 i = 0; i < SLOTS_PER_PALETTE; i++) {
        if (!IsMaskedOn(paletteData->buffers[bufferID].selected.unfadedMask, i)) {
            continue;
        }

        ApplyBlendStepToSinglePalette(&paletteData->buffers[bufferID].unfaded[i * paletteSize], &paletteData->buffers[bufferID].faded[i * paletteSize], &paletteData->buffers[bufferID].selected, paletteSize);
    }

    UpdateFadeBlendStep(paletteData, bufferID, &paletteData->buffers[bufferID].selected);
}

static void ApplyBlendStepToSinglePalette(u16 *unfaded, u16 *faded, PaletteFadeControl *fade, u32 paletteSize)
{
    u32 i;
    u8 r, g, b;

    for (i = 0; i < paletteSize; i++) {
        r = BlendColor(ColorR(unfaded[i]), ColorR(fade->target), fade->cur);
        g = BlendColor(ColorG(unfaded[i]), ColorG(fade->target), fade->cur);
        b = BlendColor(ColorB(unfaded[i]), ColorB(fade->target), fade->cur);

        faded[i] = RGB(r, g, b);
    }
}

static void UpdateFadeBlendStep(PaletteData *paletteData, u8 bufferID, PaletteFadeControl *fade)
{
    s16 next;

    if (fade->cur == fade->end) {
        if (paletteData->selectedBuffers & (1 << bufferID)) {
            paletteData->selectedBuffers ^= (1 << bufferID);
        }
    } else if (fade->sign == 0) {
        next = fade->cur;
        next += fade->step;

        if (next > fade->end) {
            next = fade->end;
        }

        fade->cur = next;
    } else {
        next = fade->cur;
        next -= fade->step;

        if (next < fade->end) {
            next = fade->end;
        }

        fade->cur = next;
    }
}

void PaletteData_CommitFadedBuffers(PaletteData *paletteData)
{
    if (paletteData->autoTransparent == FALSE && paletteData->selectedFlag != TRUE) {
        return;
    }

    for (int bufferID = PLTTBUF_MAIN_BG; bufferID < PLTTBUF_MAX; bufferID++) {
        if (paletteData->autoTransparent == 0) {
            if ((paletteData->buffers[bufferID].faded == NULL) || (IsMaskedOn(paletteData->fadedBuffers, bufferID) == 0)) {
                continue;
            }
        }

        DC_FlushRange(paletteData->buffers[bufferID].faded, paletteData->buffers[bufferID].size);

        switch (bufferID) {
        case PLTTBUF_MAIN_BG:
            GX_LoadBGPltt(paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            break;

        case PLTTBUF_SUB_BG:
            GXS_LoadBGPltt(paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            break;

        case PLTTBUF_MAIN_OBJ:
            GX_LoadOBJPltt(paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            break;

        case PLTTBUF_SUB_OBJ:
            GXS_LoadOBJPltt(paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            break;

        case PLTTBUF_MAIN_EX_BG_0:
            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(paletteData->buffers[bufferID].faded, 0x0, paletteData->buffers[bufferID].size);
            GX_EndLoadBGExtPltt();
            break;

        case PLTTBUF_MAIN_EX_BG_1:
            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(paletteData->buffers[bufferID].faded, 0x2000, paletteData->buffers[bufferID].size);
            GX_EndLoadBGExtPltt();
            break;

        case PLTTBUF_MAIN_EX_BG_2:
            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(paletteData->buffers[bufferID].faded, 0x4000, paletteData->buffers[bufferID].size);
            GX_EndLoadBGExtPltt();
            break;

        case PLTTBUF_MAIN_EX_BG_3:
            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt((const void *)paletteData->buffers[bufferID].faded, 0x6000, paletteData->buffers[bufferID].size);
            GX_EndLoadBGExtPltt();
            break;

        case PLTTBUF_SUB_EX_BG_0:
            GXS_BeginLoadBGExtPltt();
            GXS_LoadBGExtPltt((const void *)paletteData->buffers[bufferID].faded, 0x0, paletteData->buffers[bufferID].size);
            GXS_EndLoadBGExtPltt();
            break;

        case PLTTBUF_SUB_EX_BG_1:
            GXS_BeginLoadBGExtPltt();
            GXS_LoadBGExtPltt((const void *)paletteData->buffers[bufferID].faded, 0x2000, paletteData->buffers[bufferID].size);
            GXS_EndLoadBGExtPltt();
            break;

        case PLTTBUF_SUB_EX_BG_2:
            GXS_BeginLoadBGExtPltt();
            GXS_LoadBGExtPltt((const void *)paletteData->buffers[bufferID].faded, 0x4000, paletteData->buffers[bufferID].size);
            GXS_EndLoadBGExtPltt();
            break;

        case PLTTBUF_SUB_EX_BG_3:
            GXS_BeginLoadBGExtPltt();
            GXS_LoadBGExtPltt((const void *)paletteData->buffers[bufferID].faded, 0x6000, paletteData->buffers[bufferID].size);
            GXS_EndLoadBGExtPltt();
            break;

        case PLTTBUF_MAIN_EX_OBJ:
            GX_BeginLoadOBJExtPltt();
            GX_LoadOBJExtPltt((const void *)paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            GX_EndLoadOBJExtPltt();
            break;

        case PLTTBUF_SUB_EX_OBJ:
            GXS_BeginLoadOBJExtPltt();
            GXS_LoadOBJExtPltt((const void *)paletteData->buffers[bufferID].faded, 0, paletteData->buffers[bufferID].size);
            GXS_EndLoadOBJExtPltt();
        }
    }

    paletteData->fadedBuffers = paletteData->selectedBuffers;

    if (paletteData->fadedBuffers == 0) {
        paletteData->selectedFlag = 0;
    }
}

u16 PaletteData_GetSelectedBuffersMask(PaletteData *paletteData)
{
    return paletteData->selectedBuffers;
}

void PaletteData_SetAutoTransparent(PaletteData *paletteData, int val)
{
    paletteData->autoTransparent = val;
}

void PaletteData_SelectAll(PaletteData *paletteData, u8 val)
{
    paletteData->selectedFlag = val & 1;
    paletteData->selectedBuffers = PLTTBUF_ALL_F;
}

void PaletteData_FillBufferRange(PaletteData *paletteData, enum PaletteBufferID bufferID, enum PaletteSelector selector, u16 fillVal, u16 start, u16 end)
{
    GF_ASSERT(end * sizeof(u16) <= paletteData->buffers[bufferID].size);

    if (selector == PLTTSEL_UNFADED || selector == PLTTSEL_BOTH) {
        MI_CpuFill16(&paletteData->buffers[bufferID].unfaded[start], fillVal, (end - start) * 2);
    }

    if (selector == PLTTSEL_FADED || selector == PLTTSEL_BOTH) {
        MI_CpuFill16(&paletteData->buffers[bufferID].faded[start], fillVal, (end - start) * 2);
    }
}

u16 PaletteData_GetBufferIndexColor(PaletteData *paletteData, enum PaletteBufferID bufferID, enum PaletteSelector selector, u16 index)
{
    if (selector == PLTTSEL_UNFADED) {
        return paletteData->buffers[bufferID].unfaded[index];
    }

    if (selector == PLTTSEL_FADED) {
        return paletteData->buffers[bufferID].faded[index];
    }

    GF_ASSERT(FALSE);
    return 0;
}

void BlendPalette(const u16 *src, u16 *dest, u16 size, u8 fraction, u16 target)
{
    u16 i;
    int srcR, srcG, srcB;
    int targetR, targetG, targetB;

    targetR = ((RgbColor *)&target)->r;
    targetG = ((RgbColor *)&target)->g;
    targetB = ((RgbColor *)&target)->b;

    for (i = 0; i < size; i++) {
        srcR = ((RgbColor *)&src[i])->r;
        srcG = ((RgbColor *)&src[i])->g;
        srcB = ((RgbColor *)&src[i])->b;

        dest[i] = BlendColor(srcR, targetR, fraction) | (BlendColor(srcG, targetG, fraction) << 5) | (BlendColor(srcB, targetB, fraction) << 10);
    }
}

void PaletteData_Blend(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 index, u16 size, u8 fraction, u16 target)
{
    GF_ASSERT(paletteData->buffers[bufferID].unfaded != NULL && paletteData->buffers[bufferID].faded != NULL);
    BlendPalette(&paletteData->buffers[bufferID].unfaded[index], &paletteData->buffers[bufferID].faded[index], size, fraction, target);
}

void BlendPalettes(const u16 *sources, u16 *dests, u16 toBlend, u8 fraction, u16 target)
{
    int index = 0;
    while (toBlend) {
        if (toBlend & 1) {
            BlendPalette(&sources[index], &dests[index], SLOTS_PER_PALETTE, fraction, target);
        }

        toBlend >>= 1;
        index += SLOTS_PER_PALETTE;
    }
}

void PaletteData_BlendMulti(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 toBlend, u8 fraction, u16 target)
{
    int index = 0;

    GF_ASSERT(paletteData->buffers[bufferID].unfaded != NULL && paletteData->buffers[bufferID].faded != NULL);

    while (toBlend) {
        if (toBlend & 1) {
            PaletteData_Blend(paletteData, bufferID, index, SLOTS_PER_PALETTE, fraction, target);
        }

        toBlend >>= 1;
        index += SLOTS_PER_PALETTE;
    }
}

void TintPalette(u16 *palette, int numColorsToTint, int tintR, int tintG, int tintB)
{
    int i, r, g, b;
    u32 gray;

    for (i = 0; i < numColorsToTint; i++) {
        r = ColorR(*palette);
        g = ColorG(*palette);
        b = ColorB(*palette);

        // 0.3 red + 0.59 g + 0.1133 b
        gray = (76 * r + 151 * g + 29 * b) >> 8;

        r = (u16)(tintR * gray) >> 8;
        g = (u16)(tintG * gray) >> 8;
        b = (u16)(tintB * gray) >> 8;

        if (r > 31) {
            r = 31;
        }

        if (g > 31) {
            g = 31;
        }

        if (b > 31) {
            b = 31;
        }

        *palette = RGB(r, g, b);
        palette++;
    }
}

void PaletteData_LoadBufferFromFileStartWithTint(PaletteData *paletteData, u32 narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 size, u16 start, int r, int g, int b)
{
    NNSG2dPaletteData *palette;
    void *ptr = Graphics_GetPlttData(narcID, narcMemberIdx, &palette, heapID);

    GF_ASSERT(ptr != NULL);

    if (size == 0) {
        size = palette->szByte;
    }

    TintPalette(palette->pRawData, SLOTS_PER_PALETTE, r, g, b);
    PaletteData_LoadBuffer(paletteData, palette->pRawData, bufferID, start, size);
    Heap_FreeToHeap(ptr);
}
