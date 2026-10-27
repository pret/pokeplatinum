#ifndef POKEPLATINUM_STRUCT_OV19_021DBA9C_H
#define POKEPLATINUM_STRUCT_OV19_021DBA9C_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "pc_boxes.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

#define BOX_THUMBNAIL_SIZE       32
#define BOX_THUMBNAIL_PLTT_SLOT  13
#define BOX_THUMBNAIL_TILE_BASE  1584
#define BOX_THUMBNAIL_TILE_COUNT 32

#define BOX_THUMBNAIL_FADE_STEPS       8
#define BOX_THUMBNAIL_FADE_MAX_BLEND   16
#define BOX_THUMBNAIL_FADE_PLTT_COLORS (3 * PALETTE_SIZE)
#define BOX_THUMBNAIL_FADE_PLTT_SIZE   (BOX_THUMBNAIL_FADE_PLTT_COLORS * sizeof(u16))

typedef struct BoxPopupGraphics {
    BoxGraphics *boxGraphics;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    const BoxApplication *boxApp;
    Window *windows;
    void *thumbnailCharDataBuffer;
    NNSG2dCharacterData *thumbnailCharData;
    void *thumbnailCellBankBuffer;
    NNSG2dCellDataBank *thumbnailCellBank;
    u8 unused_24[8];
    void *boxSelectionScreenBuffer;
    NNSG2dScreenData *boxSelectionScreenData;
    void *itemInfoScreenBuffer;
    NNSG2dScreenData *itemInfoScreenData;
    Bitmap thumbnailBitmap;
    FontSpecialCharsContext *monCountChars;
    Sprite *thumbnailSprites[MAX_PC_BOXES];
    Sprite *itemIconSprite;
    u32 boxMonCounts[MAX_PC_BOXES];
    SysTask *animTask;
    s32 selectedBoxID;
    u16 thumbnailFadePltts[BOX_THUMBNAIL_FADE_STEPS][BOX_THUMBNAIL_FADE_PLTT_COLORS];
    u8 thumbnailCache[MAX_PC_BOXES][BOX_THUMBNAIL_SIZE * BOX_THUMBNAIL_SIZE];
    u8 isThumbnailCached[MAX_PC_BOXES];
    u8 padding_4BF6[2];
    MessageLoader *itemDescriptionsLoader;
    String *string;
} BoxPopupGraphics;

#endif // POKEPLATINUM_STRUCT_OV19_021DBA9C_H
