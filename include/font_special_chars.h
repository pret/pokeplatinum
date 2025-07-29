#ifndef POKEPLATINUM_FONT_SPECIAL_CHARS_H
#define POKEPLATINUM_FONT_SPECIAL_CHARS_H

#include "bg_window.h"
#include "charcode_util.h"

typedef struct FontSpecialCharsContext {
    void *ncgrBuffer;
    NNSG2dCharacterData *charData;
    charcode_t charcodes[16];
    u32 transparent;
} FontSpecialCharsContext;

FontSpecialCharsContext *FontSpecialChars_Init(u32 color, u32 outline, u32 transparent, u32 heapID);
void FontSpecialChars_Free(FontSpecialCharsContext *context);
void FontSpecialChars_DrawPartyScreenLevelText(FontSpecialCharsContext *context, int tableIdx, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawPartyScreenHPText(FontSpecialCharsContext *context, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawPartyScreenText(FontSpecialCharsContext *context, int tableIdx, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void FontSpecialChars_DrawBattleScreenText(FontSpecialCharsContext *context, s32 displayNum, u32 numDigits, enum PaddingMode paddingMode, void *displayPtr);

#endif // POKEPLATINUM_FONT_SPECIAL_CHARS_H
