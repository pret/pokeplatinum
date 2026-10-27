#ifndef POKEPLATINUM_STRUCT_OV19_021D8E00_H
#define POKEPLATINUM_STRUCT_OV19_021D8E00_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DC680.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"
#include "applications/pc_boxes/struct_ov19_021DE3E8_decl.h"

#include "sprite.h"

typedef struct BoxCursorGraphics {
    SpriteList *spriteList;
    Sprite *cursorSprite;
    Sprite *shadowSprite;
    Sprite *leftArrowSprite;
    Sprite *rightArrowSprite;
    void *cellBankBuffer;
    void *animBankBuffer;
    NNSG2dCellDataBank *cellBank;
    NNSG2dAnimBankData *animBank;
    NNSG2dImageProxy imageProxy;
    MonIconHelper *monIconHelper;
    MonIcon monIcon[MAX_MONS_PER_BOX];
    struct {
        fx32 x;
        fx32 y;
    } heldIconOffsets[MAX_MONS_PER_BOX];
    u32 heldIconCount;
    BoxView *box;
    BoxPartyGraphics *party;
    BoxItemIconGraphics *itemIconGraphics;
    s32 posX;
    s32 posY;
    s32 targetX;
    s32 targetY;
    s32 animX;
    s32 animY;
    s32 stepX;
    s32 stepY;
    u8 animPhase;
    u8 cursorLocation;
    u8 newCursorLocation;
    u8 moveStepsRemaining;
    u8 isAnimating;
    s8 boxCol;
    s8 boxRow;
    s8 partyPosition;
    u8 hasHeldMonIcon;
    u8 isHoldingItem;
    u8 shadowFollowsCursor;
    u8 padding_78F;
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
} BoxCursorGraphics;

#endif // POKEPLATINUM_STRUCT_OV19_021D8E00_H
