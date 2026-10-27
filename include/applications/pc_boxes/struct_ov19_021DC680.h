#ifndef POKEPLATINUM_STRUCT_OV19_021DC680_H
#define POKEPLATINUM_STRUCT_OV19_021DC680_H

#include <nnsys.h>

#include "constants/pokemon.h"

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "bg_window.h"
#include "sprite.h"

typedef struct BoxPartyGraphics {
    BoxGraphics *boxGraphics;
    BgConfig *bgConfig;
    SpriteList *unread_08;
    const BoxApplication *boxApp;
    BoxView *boxView;
    void *panelScreenBuffer;
    NNSG2dScreenData *panelScreenData;
    VecFx32 *shiftPositions;
    fx32 moveStepX;
    fx32 moveStepY;
    u8 animSlot;
    u8 shiftCount;
    u8 animFrame;
    u8 hiddenRows;
    BOOL isAnimating;
    u32 tilemapLeft;
    int xOffset;
    MonIconHelper *monIconHelper;
    MonIcon monIcons[MAX_PARTY_SIZE];
    u8 releaseAnimStep;
    u8 padding_175[3];
} BoxPartyGraphics;

#endif // POKEPLATINUM_STRUCT_OV19_021DC680_H
