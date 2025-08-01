#ifndef POKEPLATINUM_FONT_SPECIAL_CHARS_H
#define POKEPLATINUM_FONT_SPECIAL_CHARS_H

#include "bg_window.h"
#include "charcode_util.h"

enum NonNumericSpecialChar {
    SPECIAL_CHAR_SLASH = 0,
    SPECIAL_CHAR_LEVEL,
    SPECIAL_CHAR_NUMBER,
    SPECIAL_CHAR_ID,
    SPECIAL_CHAR_LEVEL_FEMALE_UNUSED,
    SPECIAL_CHAR_LEVEL_MALE_UNUSED,
    SPECIAL_CHAR_LEVEL_UNUSED,
};

typedef struct FontSpecialCharsContext {
    void *ncgrBuffer;
    NNSG2dCharacterData *charData;
    charcode_t charcodes[16];
    u32 bgColor;
} FontSpecialCharsContext;

FontSpecialCharsContext *FontSpecialChars_Init(u32 fgColor, u32 shadowColor, u32 bgColor, u32 heapID);
void FontSpecialChars_Free(FontSpecialCharsContext *context);
void FontSpecialChars_DrawPartyScreenLevelText(FontSpecialCharsContext *context, enum NonNumericSpecialChar tableIdx, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawPartyScreenHPText(FontSpecialCharsContext *context, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawPartyScreenText(FontSpecialCharsContext *context, enum NonNumericSpecialChar tableIdx, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawBattleScreenText(FontSpecialCharsContext *context, s32 displayNum, u32 numDigits, enum PaddingMode paddingMode, void *displayPtr);

#endif // POKEPLATINUM_FONT_SPECIAL_CHARS_H
