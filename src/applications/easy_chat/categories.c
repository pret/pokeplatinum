#include "applications/easy_chat/categories.h"

#include <nitro.h>

#include "struct_decls/struct_020998EC_decl.h"

#include "applications/easy_chat/abc_mode.h"
#include "applications/easy_chat/defs.h"
#include "applications/easy_chat/main.h"
#include "applications/easy_chat/ov20_021D2098.h"
#include "applications/easy_chat/ov20_021D4E38.h"
#include "applications/easy_chat/struct_ov20_021D2128_decl.h"
#include "applications/easy_chat/struct_ov20_021D4E8C.h"
#include "applications/easy_chat/struct_ov20_021D4FF0.h"

#include "bg_window.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_020998EC.h"

#include "res/text/bank/easy_chat_groups.h"

#define GROUP_MODE_BG_X_OFFSET -4
#define ABC_MODE_BG_X_OFFSET   252

#define GROUP_WINDOW_WIDTH  9
#define GROUP_WINDOW_HEIGHT 2

#define ABC_MODE_WINDOW_WIDTH  25
#define ABC_MODE_WINDOW_HEIGHT 8

#define CANCEL_WINDOW_WIDTH  8
#define CANCEL_WINDOW_HEIGHT 2

static u32 EasyChatCategories_PrintGroups(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile);
static u32 EasyChatCategories_PrintABCModeSelection(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile);
static u32 EasyChatCategories_PrintCancelText(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile);
static void ov20_021D3E0C(EasyChatCategoriesContext *ctx);

EasyChatCategoriesContext *EasyChatCategoriesContext_New(UnkStruct_ov20_021D2128 *param0, const EasyChatApp *easyChatApp, const UnkStruct_020998EC *param2)
{
    EasyChatCategoriesContext *ctx = Heap_Alloc(HEAP_ID_35, sizeof(EasyChatCategoriesContext));

    ctx->unk_00 = param0;
    ctx->easyChatApp = easyChatApp;
    ctx->unk_08 = param2;
    ctx->bgConfig = ov20_021D2E04(param0);
    ctx->unk_10 = 0;
    ctx->dummy = 0;
    ctx->cursorSprite = NULL;

    return ctx;
}

void EasyChatCategoriesContext_Free(EasyChatCategoriesContext *ctx)
{
    if (ctx->cursorSprite) {
        Sprite_Delete(ctx->cursorSprite);
    }

    Heap_Free(ctx);
}

void EasyChatCategories_DrawInterface(EasyChatCategoriesContext *ctx, NARC *narc)
{
    BgConfig *bgConfig = ov20_021D2E04(ctx->unk_00);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 2, bgConfig, BG_LAYER_MAIN_1, 0, 0, TRUE, HEAP_ID_35);

    u32 baseTile = Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 3, bgConfig, BG_LAYER_MAIN_1, 0, 0, TRUE, HEAP_ID_35);
    baseTile /= TILE_SIZE_4BPP;
    baseTile = EasyChatCategories_PrintGroups(ctx, bgConfig, baseTile);
    baseTile = EasyChatCategories_PrintABCModeSelection(ctx, bgConfig, baseTile);

    EasyChatCategories_PrintCancelText(ctx, bgConfig, baseTile);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, GROUP_MODE_BG_X_OFFSET);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 2);
    ov20_021D3E0C(ctx);

    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG1, -10);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL, TRUE);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, TRUE);
    G2_SetWnd0Position(0, 0, 255, 160);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_1);
}

static u32 EasyChatCategories_PrintGroups(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile)
{
    int tilemapLeft, tilemapTop;

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_EASY_CHAT_GROUPS, HEAP_ID_35);

    tilemapLeft = 1;
    tilemapTop = 9;

    for (int i = 0; i < EASY_CHAT_GROUP_COUNT; i++) {
        if (i != 0 && i % 3 == 0) {
            tilemapLeft = 1;
            tilemapTop += GROUP_WINDOW_HEIGHT + 1;
        }

        String *string;
        TextColor color;

        if (sub_02099CA0(ctx->unk_08, i)) {
            string = MessageLoader_GetNewString(loader, i);
            color = TEXT_COLOR(1, 2, 15);
        } else {
            string = MessageLoader_GetNewString(loader, EasyChatGroups_Text_QuestionMarks);
            color = TEXT_COLOR(3, 4, 15);
        }

        GF_ASSERT(baseTile < 1024 - GROUP_WINDOW_WIDTH * GROUP_WINDOW_HEIGHT);

        Window window;

        Window_Add(bgConfig, &window, BG_LAYER_MAIN_1, tilemapLeft, tilemapTop, GROUP_WINDOW_WIDTH, GROUP_WINDOW_HEIGHT, 11, baseTile);
        Window_FillTilemap(&window, 15);

        u32 xOffset = (GROUP_WINDOW_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0)) / 2;

        Text_AddPrinterWithParamsAndColor(&window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
        Window_PutToTilemap(&window);
        Window_LoadTiles(&window);
        String_Free(string);
        Window_Remove(&window);

        baseTile += GROUP_WINDOW_WIDTH * GROUP_WINDOW_HEIGHT;
        tilemapLeft += GROUP_WINDOW_WIDTH + 1;
    }

    MessageLoader_Free(loader);

    return baseTile;
}

static u32 EasyChatCategories_PrintABCModeSelection(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile)
{
    GF_ASSERT(baseTile < 1024 - ABC_MODE_WINDOW_WIDTH * ABC_MODE_WINDOW_HEIGHT);

    Window window;
    Window_Add(bgConfig, &window, BG_LAYER_MAIN_1, 34, 10, ABC_MODE_WINDOW_WIDTH, ABC_MODE_WINDOW_HEIGHT, 11, baseTile);
    baseTile += ABC_MODE_WINDOW_WIDTH * ABC_MODE_WINDOW_HEIGHT;

    String *string = String_Init(4, HEAP_ID_35);

    Window_FillTilemap(&window, 15);

    u32 count = EasyChatABCMode_GetCharCount();

    for (u32 i = 0; i < count; i++) {
        u32 x, y;
        EasyChatABCMode_GetCharCode(i, string);
        EasyChatABCMode_GetCharPos(i, &x, &y);

        TextColor color;
        if (sub_02099CDC(ctx->unk_08, i)) {
            color = TEXT_COLOR(1, 2, 15);
        } else {
            color = TEXT_COLOR(3, 4, 15);
        }

        Text_AddPrinterWithParamsAndColor(&window, FONT_SYSTEM, string, x + 3, y, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    Window_LoadTiles(&window);
    Window_PutToTilemap(&window);

    String_Free(string);
    Window_Remove(&window);

    return baseTile;
}

static u32 EasyChatCategories_PrintCancelText(EasyChatCategoriesContext *ctx, BgConfig *bgConfig, u32 baseTile)
{
    static const struct {
        u16 tilemapLeft;
        u16 tilemapTop;
    } windowPositions[] = {
        { .tilemapLeft = 12, .tilemapTop = 21 },
        { .tilemapLeft = 44, .tilemapTop = 21 },
    };

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_EASY_CHAT_GROUPS, HEAP_ID_35);
    String *string = MessageLoader_GetNewString(loader, EasyChatGroups_Text_Cancel);
    int xOffset = (8 * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0)) / 2;

    for (int i = 0; i < NELEMS(windowPositions); i++) {
        GF_ASSERT(baseTile < 1024 - CANCEL_WINDOW_WIDTH * CANCEL_WINDOW_HEIGHT);

        Window window;

        Window_Add(bgConfig, &window, BG_LAYER_MAIN_1, windowPositions[i].tilemapLeft, windowPositions[i].tilemapTop, CANCEL_WINDOW_WIDTH, CANCEL_WINDOW_HEIGHT, 11, baseTile);
        Window_FillTilemap(&window, 15);
        Text_AddPrinterWithParamsAndColor(&window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
        Window_PutToTilemap(&window);
        Window_LoadTiles(&window);
        Window_Remove(&window);

        baseTile += CANCEL_WINDOW_WIDTH * CANCEL_WINDOW_HEIGHT;
    }

    String_Free(string);
    MessageLoader_Free(loader);

    return baseTile;
}

static void ov20_021D3E0C(EasyChatCategoriesContext *ctx)
{
    SpriteResourcesHeader v0;

    ov20_021D2E0C(ctx->unk_00, &v0, 0, 1);
    ctx->cursorSprite = ov20_021D2E50(ctx->unk_00, &v0, 48, 54, 2, NNS_G2D_VRAM_TYPE_2DMAIN);
    Sprite_SetAnim(ctx->cursorSprite, 4);
    Sprite_SetDrawFlag(ctx->cursorSprite, FALSE);
}

void ov20_021D3E48(EasyChatCategoriesContext *ctx, BOOL param1)
{
    Sprite_SetDrawFlag(ctx->cursorSprite, param1);

    if (param1) {
        if (EasyChat_GetMode(ctx->easyChatApp) == GROUP_MODE) {
            Sprite_SetAnim(ctx->cursorSprite, 4);
        } else {
            Sprite_SetAnim(ctx->cursorSprite, 6);
        }
    }
}

void EasyChatCategories_DrawCursor(EasyChatCategoriesContext *ctx, u32 selectedIndex)
{
    u32 mode = EasyChat_GetMode(ctx->easyChatApp);

    VecFx32 position;
    position.z = 0;

    u32 animID;

    if (selectedIndex == EASY_CHAT_CANCEL) {
        position.x = 132;
        position.y = 150;
        animID = 16;
    } else {
        if (mode == GROUP_MODE) {
            position.x = 48 + 80 * (selectedIndex % 3);
            position.y = 54 + 24 * (selectedIndex / 3);
            animID = 4;
        } else {
            u32 x, y;
            EasyChatABCMode_GetCharPos(selectedIndex, &x, &y);

            position.x = 26 + x;
            position.y = 62 + y;
            animID = 6;
        }
    }

    position.x *= FX32_ONE;
    position.y *= FX32_ONE;

    Sprite_SetPosition(ctx->cursorSprite, &position);
    Sprite_SetAnim(ctx->cursorSprite, animID);
}

void ov20_021D3EF8(EasyChatCategoriesContext *ctx)
{
    ctx->unk_14 = 0;
    ov20_021D4FB0(&(ctx->unk_1C), GX_BLEND_PLANEMASK_BG1, -10, 0, 16);
}

BOOL ov20_021D3F10(EasyChatCategoriesContext *ctx)
{
    switch (ctx->unk_14) {
    case 0:
        if (ov20_021D4FF0(&ctx->unk_1C)) {
            ov20_021D4E38(&(ctx->unk_3C), ctx->bgConfig, 1, 1, 24, 6);
            ctx->unk_14++;
        }
        break;
    case 1:
        return ov20_021D4E8C(&(ctx->unk_3C));
    }

    return 0;
}

void ov20_021D3F60(EasyChatCategoriesContext *ctx)
{
    ctx->unk_14 = 0;
    ov20_021D4E38(&(ctx->unk_3C), ctx->bgConfig, 1, 1, -24, 6);
}

BOOL ov20_021D3F84(EasyChatCategoriesContext *ctx)
{
    switch (ctx->unk_14) {
    case 0:
        if (ov20_021D4E8C(&(ctx->unk_3C))) {
            ov20_021D4FB0(&(ctx->unk_1C), GX_BLEND_PLANEMASK_BG1, 0, -10, 16);
            ctx->unk_14++;
        }
        break;
    case 1:
        return ov20_021D4FF0(&ctx->unk_1C);
    }

    return 0;
}

void ov20_021D3FD0(EasyChatCategoriesContext *ctx)
{
    Bg_SetOffset(ctx->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 2);
}

void ov20_021D3FE0(EasyChatCategoriesContext *ctx)
{
    ov20_021D4FB0(&ctx->unk_1C, GX_BLEND_PLANEMASK_BG1, 0, -10, 16);
}

BOOL ov20_021D3FF8(EasyChatCategoriesContext *ctx)
{
    return ov20_021D4FF0(&ctx->unk_1C);
}

void ov20_021D4004(EasyChatCategoriesContext *ctx)
{
    ov20_021D4F1C(&ctx->unk_1C, GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 124, 0, (6 * 2));
}

BOOL ov20_021D4020(EasyChatCategoriesContext *ctx)
{
    if (ov20_021D4F4C(&ctx->unk_1C)) {
        Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
        return TRUE;
    }

    return FALSE;
}

void ov20_021D403C(EasyChatCategoriesContext *ctx)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 0, 16);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
    ov20_021D4F1C(&ctx->unk_1C, GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 0, 124, (6 * 2));
}

BOOL ov20_021D4078(EasyChatCategoriesContext *ctx)
{
    return ov20_021D4F4C(&ctx->unk_1C);
}

void ov20_021D4084(EasyChatCategoriesContext *ctx)
{
    int val;

    if (EasyChat_GetMode(ctx->easyChatApp) == GROUP_MODE) {
        val = GROUP_MODE_BG_X_OFFSET;
    } else {
        val = ABC_MODE_BG_X_OFFSET;
    }

    Bg_SetOffset(ctx->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, val);
}

void ov20_021D40A8(EasyChatCategoriesContext *ctx)
{
    int v0;

    if (EasyChat_GetMode(ctx->easyChatApp) == GROUP_MODE) {
        v0 = GROUP_MODE_BG_X_OFFSET - ABC_MODE_BG_X_OFFSET;
    } else {
        v0 = ABC_MODE_BG_X_OFFSET - GROUP_MODE_BG_X_OFFSET;
    }

    ov20_021D4E38(&ctx->unk_3C, ctx->bgConfig, 1, 0, v0, 16);
}

BOOL ov20_021D40DC(EasyChatCategoriesContext *ctx)
{
    return ov20_021D4E8C(&ctx->unk_3C);
}
