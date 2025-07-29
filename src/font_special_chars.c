#include "font_special_chars.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"

#include "res/fonts/pl_font.naix.h"

static const struct {
    u16 offset;
    u16 width;
} sNonNumericWidths[] = {
    [SPECIAL_CHAR_SLASH] = { .offset = 10 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(1) },
    [SPECIAL_CHAR_LEVEL] = { .offset = 11 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) },
    [SPECIAL_CHAR_NUMBER] = { .offset = 13 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) },
    [SPECIAL_CHAR_ID] = { .offset = 15 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) },
    [SPECIAL_CHAR_LEVEL_FEMALE_UNUSED] = { .offset = 17 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) },
    [SPECIAL_CHAR_LEVEL_MALE_UNUSED] = { .offset = 19 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) },
    [SPECIAL_CHAR_LEVEL_UNUSED] = { .offset = 21 * TILE_SIZE_4BPP, .width = TILES_TO_PIXELS(2) }
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

void FontSpecialChars_DrawPartyScreenLevelText(FontSpecialCharsContext *context, enum NonNumericSpecialChar tableIdx, Window *window, u32 x, u32 y)
{
    Window_BlitBitmapRect(
        window,
        (u8 *)(context->charData->pRawData) + sNonNumericWidths[tableIdx].offset,
        0,
        0,
        sNonNumericWidths[tableIdx].width,
        8,
        x,
        y,
        sNonNumericWidths[tableIdx].width,
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

void FontSpecialChars_DrawPartyScreenText(FontSpecialCharsContext *context, enum NonNumericSpecialChar tableIdx, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y)
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
