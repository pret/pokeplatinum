#ifndef POKEPLATINUM_STRUCT_OV19_021DA384_H
#define POKEPLATINUM_STRUCT_OV19_021DA384_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "narc.h"
#include "sprite.h"

#define MON_ICON_TILE_COUNT       (4 * 4)
#define MON_ICON_TILE_DATA_SIZE   (MON_ICON_TILE_COUNT * TILE_SIZE_4BPP)
#define MON_ICON_FILE_HEADER_SIZE 0x80
#define MON_ICON_FILE_SIZE        (MON_ICON_FILE_HEADER_SIZE + MON_ICON_TILE_DATA_SIZE)

typedef struct MonIconHelper {
    void *iconAnimBankBuffer;
    NNSG2dAnimBankData *iconAnimBank;
    void *iconCellBankBuffer;
    u8 unused_0C;
    NNSG2dCellDataBank *iconCellBank;
    void *itemIconCellBankBuffer;
    void *itemIconAnimBankBuffer;
    NNSG2dCellDataBank *itemIconCellBank;
    NNSG2dAnimBankData *itemIconAnimBank;
    SpriteList *spriteList;
    u8 unused_28[24];
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
    NARC *iconNarc;
    u8 iconCharBuffer[MON_ICON_FILE_SIZE];
} MonIconHelper;

#endif // POKEPLATINUM_STRUCT_OV19_021DA384_H
