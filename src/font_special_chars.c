#include "font_special_chars.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"

#include "res/fonts/pl_font.naix.h"

enum FontColorBitField {
    BIT_BG_COLOR = 0,
    BIT_FG_COLOR,
    BIT_SHADOW_COLOR
};

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

FontSpecialCharsContext *FontSpecialChars_Init(u32 fgColor, u32 shadowColor, u32 bgColor, u32 heapID)
{
    FontSpecialCharsContext *context = Heap_AllocFromHeap(heapID, sizeof(FontSpecialCharsContext));

    if (context) {
        u32 idx;
        u8 *rawData;

        context->ncgrBuffer = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_FONT, font_special_chars_NCGR_lz, TRUE, &context->charData, heapID);
        rawData = context->charData->pRawData;

        for (idx = 0; idx < context->charData->szByte; idx++) {
            // The initial value of each rawData byte is two 4bpp pixels.
            // Each nibble represents one of three color options:
            // 0b0000 (BIT_BG_COLOR): bgColor
            // 0b0001 (BIT_FG_COLOR): fgColor
            // 0b0010 (BIT_SHADOW_COLOR): shadowColor
            // The corresponding color parameters replace the bit fields.
            switch (rawData[idx]) {
            case (BIT_BG_COLOR << 4) | (BIT_BG_COLOR):
                rawData[idx] = (bgColor << 4) | (bgColor);
                break;
            case (BIT_BG_COLOR << 4) | (BIT_FG_COLOR):
                rawData[idx] = (bgColor << 4) | (fgColor);
                break;
            case (BIT_BG_COLOR << 4) | (BIT_SHADOW_COLOR):
                rawData[idx] = (bgColor << 4) | (shadowColor);
                break;
            case (BIT_FG_COLOR << 4) | (BIT_BG_COLOR):
                rawData[idx] = (fgColor << 4) | (bgColor);
                break;
            case (BIT_FG_COLOR << 4) | (BIT_FG_COLOR):
                rawData[idx] = (fgColor << 4) | (fgColor);
                break;
            case (BIT_FG_COLOR << 4) | (BIT_SHADOW_COLOR):
                rawData[idx] = (fgColor << 4) | (shadowColor);
                break;
            case (BIT_SHADOW_COLOR << 4) | (BIT_BG_COLOR):
                rawData[idx] = (shadowColor << 4) | (bgColor);
                break;
            case (BIT_SHADOW_COLOR << 4) | (BIT_FG_COLOR):
                rawData[idx] = (shadowColor << 4) | (fgColor);
                break;
            case (BIT_SHADOW_COLOR << 4) | (BIT_SHADOW_COLOR):
                rawData[idx] = (shadowColor << 4) | (shadowColor);
                break;
            }
        }

        context->bgColor = bgColor;
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
            Window_FillRectWithColor(window, context->bgColor, x, y, 8, 8);
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
    u8 bgColor;
    u8 *displayPtrBytes = displayPtr;

    bgColor = context->bgColor | (context->bgColor << 4);

    CharCode_FromInt(context->charcodes, displayNum, paddingMode, numDigits);

    for (idx = 0; context->charcodes[idx] != CHAR_EOS; idx++) {
        if ((context->charcodes[idx] >= CHAR_WIDE_0) && (context->charcodes[idx] <= CHAR_WIDE_9)) {
            MI_CpuCopy32((u8 *)(context->charData->pRawData) + ((context->charcodes[idx] - CHAR_WIDE_0) * TILE_SIZE_4BPP), &displayPtrBytes[idx * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        } else {
            MI_CpuFill8(&displayPtrBytes[idx * TILE_SIZE_4BPP], bgColor, TILE_SIZE_4BPP);
        }
    }
}
