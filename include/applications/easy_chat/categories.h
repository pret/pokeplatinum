#ifndef POKEPLATINUM_APPLICATIONS_EASY_CHAT_CATEGORIES_H
#define POKEPLATINUM_APPLICATIONS_EASY_CHAT_CATEGORIES_H

#include "struct_decls/struct_020998EC_decl.h"

#include "applications/easy_chat/main.h"
#include "applications/easy_chat/struct_ov20_021D2128_decl.h"
#include "applications/easy_chat/struct_ov20_021D4E8C.h"
#include "applications/easy_chat/struct_ov20_021D4FF0.h"

#include "narc.h"
#include "sprite.h"

typedef struct {
    UnkStruct_ov20_021D2128 *unk_00;
    const EasyChatApp *easyChatApp;
    const UnkStruct_020998EC *unk_08;
    BgConfig *bgConfig;
    u32 unk_10;
    u32 unk_14;
    int dummy;
    UnkStruct_ov20_021D4FF0 unk_1C;
    UnkStruct_ov20_021D4E8C unk_3C;
    Sprite *cursorSprite;
} EasyChatCategoriesContext;

EasyChatCategoriesContext *EasyChatCategoriesContext_New(UnkStruct_ov20_021D2128 *param0, const EasyChatApp *easyChatApp, const UnkStruct_020998EC *param2);
void EasyChatCategoriesContext_Free(EasyChatCategoriesContext *ctx);
void EasyChatCategories_DrawInterface(EasyChatCategoriesContext *ctx, NARC *narc);
void ov20_021D3E48(EasyChatCategoriesContext *ctx, BOOL param1);
void EasyChatCategories_DrawCursor(EasyChatCategoriesContext *ctx, u32 selectedIndex);
void ov20_021D3EF8(EasyChatCategoriesContext *ctx);
BOOL ov20_021D3F10(EasyChatCategoriesContext *ctx);
void ov20_021D3F60(EasyChatCategoriesContext *ctx);
BOOL ov20_021D3F84(EasyChatCategoriesContext *ctx);
void ov20_021D3FD0(EasyChatCategoriesContext *ctx);
void ov20_021D3FE0(EasyChatCategoriesContext *ctx);
BOOL ov20_021D3FF8(EasyChatCategoriesContext *ctx);
void ov20_021D4004(EasyChatCategoriesContext *ctx);
BOOL ov20_021D4020(EasyChatCategoriesContext *ctx);
void ov20_021D403C(EasyChatCategoriesContext *ctx);
BOOL ov20_021D4078(EasyChatCategoriesContext *ctx);
void ov20_021D4084(EasyChatCategoriesContext *ctx);
void ov20_021D40A8(EasyChatCategoriesContext *ctx);
BOOL ov20_021D40DC(EasyChatCategoriesContext *ctx);

#endif // POKEPLATINUM_APPLICATIONS_EASY_CHAT_CATEGORIES_H
