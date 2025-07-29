#include "font_special_chars.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"

#include "res/fonts/pl_font.naix.h"

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_020E4FEC[] = {
    { 0x140, 0x8 },
    { 0x160, 0x10 },
    { 0x1A0, 0x10 },
    { 0x1E0, 0x10 },
    { 0x220, 0x10 },
    { 0x260, 0x10 },
    { 0x2A0, 0x10 }
};

FontSpecialCharsContext *FontSpecialChars_Init(u32 color, u32 outline, u32 transparent, u32 heapID)
{
    FontSpecialCharsContext *context = Heap_AllocFromHeap(heapID, sizeof(FontSpecialCharsContext));

    if (context) {
        u32 idx;
        u8 *rawData;

        context->ncgrBuffer = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_FONT, font_special_chars_NCGR_lz, TRUE, &context->charData, heapID);
        rawData = context->charData->pRawData;

        for (idx = 0; idx < context->charData->szByte; idx++) {
            switch (rawData[idx]) {
            case 0:
                rawData[idx] = (transparent << 4) | (transparent);
                break;
            case 1:
                rawData[idx] = (transparent << 4) | (color);
                break;
            case 2:
                rawData[idx] = (transparent << 4) | (outline);
                break;
            case 16:
                rawData[idx] = (color << 4) | (transparent);
                break;
            case 17:
                rawData[idx] = (color << 4) | (color);
                break;
            case 18:
                rawData[idx] = (color << 4) | (outline);
                break;
            case 32:
                rawData[idx] = (outline << 4) | (transparent);
                break;
            case 33:
                rawData[idx] = (outline << 4) | (color);
                break;
            case 34:
                rawData[idx] = (outline << 4) | (outline);
                break;
            }
        }

        context->transparent = transparent;
    }

    return context;
}

void FontSpecialChars_Free(FontSpecialCharsContext *context)
{
    if (context) {
        if (context->ncgrBuffer) {
            Heap_Free(context->ncgrBuffer);
        }

        Heap_Free(context);
    }
}

void FontSpecialChars_DrawPartyScreenLevelText(FontSpecialCharsContext *context, int tableIdx, Window *window, u32 x, u32 y)
{
    Window_BlitBitmapRect(
        window,
        (u8 *)(context->charData->pRawData) + Unk_020E4FEC[tableIdx].unk_00,
        0,
        0,
        Unk_020E4FEC[tableIdx].unk_02,
        8,
        x,
        y,
        Unk_020E4FEC[tableIdx].unk_02,
        8);
}

void FontSpecialChars_DrawPartyScreenHPText(FontSpecialCharsContext *context, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y)
{
    int idx;

    CharCode_FromInt(context->charcodes, displayValue, paddingMode, digits);

    for (idx = 0; context->charcodes[idx] != CHAR_EOS; idx++) {
        if ((context->charcodes[idx] >= CHAR_WIDE_0) && (context->charcodes[idx] <= CHAR_WIDE_9)) {
            Window_BlitBitmapRect(window, (u8 *)(context->charData->pRawData) + ((context->charcodes[idx] - CHAR_WIDE_0) * 0x20), 0, 0, 8, 8, x, y, 8, 8);
        } else {
            Window_FillRectWithColor(window, context->transparent, x, y, 8, 8);
        }

        x += 8;
    }
}

void FontSpecialChars_DrawPartyScreenText(FontSpecialCharsContext *context, int tableIdx, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y)
{
    FontSpecialChars_DrawPartyScreenLevelText(context, tableIdx, window, x, y);
    FontSpecialChars_DrawPartyScreenHPText(context, displayValue, digits, paddingMode, window, x + 16, y);
}

void FontSpecialChars_DrawBattleScreenText(FontSpecialCharsContext *context, s32 displayNum, u32 numDigits, enum PaddingMode paddingMode, void *displayPtr)
{
    int idx;
    u8 transparent;
    u8 *displayPtrBytes = displayPtr;

    transparent = context->transparent | (context->transparent << 4);

    CharCode_FromInt(context->charcodes, displayNum, paddingMode, numDigits);

    for (idx = 0; context->charcodes[idx] != CHAR_EOS; idx++) {
        if ((context->charcodes[idx] >= CHAR_WIDE_0) && (context->charcodes[idx] <= CHAR_WIDE_9)) {
            MI_CpuCopy32((u8 *)(context->charData->pRawData) + ((context->charcodes[idx] - CHAR_WIDE_0) * TILE_SIZE_4BPP), &displayPtrBytes[idx * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        } else {
            MI_CpuFill8(&displayPtrBytes[idx * TILE_SIZE_4BPP], transparent, TILE_SIZE_4BPP);
        }
    }
}
