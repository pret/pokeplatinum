#ifndef POKEPLATINUM_BATTLE_FONT_H
#define POKEPLATINUM_BATTLE_FONT_H

#include "struct_decls/battle_font_decl.h"

#include "bg_window.h"
#include "charcode_util.h"

BattleFontContext *BattleFont_Init(u32 color, u32 outline, u32 transparent, u32 heapID);
void BattleFont_Free(BattleFontContext *context);
void BattleFont_DrawPartyScreenLevelText(BattleFontContext *context, int tableIdx, Window *window, u32 x, u32 y);
void BattleFont_DrawPartyScreenHPText(BattleFontContext *context, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void BattleFont_DrawPartyScreenText(BattleFontContext *context, int tableIdx, s32 displayValue, u32 digits, enum PaddingMode paddingMode, Window *window, u32 x, u32 y);
void BattleFont_DrawBattleText(BattleFontContext *context, s32 displayNum, u32 numDigits, enum PaddingMode paddingMode, void *displayPtr);

#endif // POKEPLATINUM_BATTLE_FONT_H
