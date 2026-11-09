#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_ICON_HELPER_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_ICON_HELPER_H

#include <nnsys.h>

#include "applications/pc_boxes/defs.h"

#include "narc.h"
#include "pokemon.h"
#include "sprite.h"

enum MonIconAnim {
    MON_ICON_ANIM_IDLE = 0,
    MON_ICON_ANIM_RELEASE,
    MON_ICON_ANIM_RELEASE_REJECTED,
};

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

BOOL MonIconHelper_Init(MonIconHelper *iconHelper, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc);
void MonIconHelper_Free(MonIconHelper *iconHelper);
void MonIconHelper_InitIcons(MonIconHelper *unused, MonIcon *monIcon, u32 count);
void MonIconHelper_DeleteIcons(MonIconHelper *unused, MonIcon *monIcon, u32 count);
void MonIcon_Copy(const MonIcon *src, MonIcon *dest, u32 count);
void MonIconHelper_CreateIcon(MonIconHelper *iconHelper, BoxPokemon *boxMon, s32 x, s32 y, u32 headerPriority, u32 priority, u32 tileOffset, MonIcon *monIcon);
void MonIconHelper_CreateIconFromTiles(MonIconHelper *iconHelper, BoxPokemon *boxMon, u32 species, u32 spriteIndex, u8 *tileData, s32 x, s32 y, u32 headerPriority, u32 priority, u32 tileOffset, MonIcon *monIcon);
void MonIconHelper_UpdateTransparency(MonIconHelper *unused, MonIcon *monIcon, u32 mask);
void MonIconHelper_SetMarkings(MonIconHelper *unused, MonIcon *monIcon, u32 markings);
void MonIconHelper_SetHeldItem(MonIconHelper *unused, MonIcon *monIcon, u32 heldItem);
void MonIconHelper_UpdateIconForm(MonIconHelper *iconHelper, MonIcon *monIcon, BOOL isStored);
void MonIconHelper_ReadIconData(MonIconHelper *iconHelper, void *dest, u32 spriteIndex, u32 size);
void MonIconHelper_MoveIconTiles(MonIconHelper *iconHelper, MonIcon *monIcon, u32 tileOffset);
void MonIconHelper_SetIconAnim(MonIconHelper *unused, MonIcon *monIcon, enum MonIconAnim anim);
BOOL MonIconHelper_IsIconAnimDone(MonIconHelper *unused, MonIcon *monIcon);
void MonIconHelper_SetMultiSelectShading(MonIconHelper *unused, MonIcon *monIcon, BOOL isSelected);
NNSG2dCellDataBank *MonIconHelper_GetIconCellBank(MonIconHelper *iconHelper);
NNSG2dAnimBankData *MonIconHelper_GetIconAnimBank(MonIconHelper *iconHelper);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_ICON_HELPER_H
