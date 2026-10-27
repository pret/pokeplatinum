#ifndef POKEPLATINUM_OV19_021DA270_H
#define POKEPLATINUM_OV19_021DA270_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "narc.h"
#include "pokemon.h"
#include "sprite.h"

enum MonIconAnim {
    MON_ICON_ANIM_IDLE = 0,
    MON_ICON_ANIM_RELEASE,
    MON_ICON_ANIM_RELEASE_REJECTED,
};

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

#endif // POKEPLATINUM_OV19_021DA270_H
