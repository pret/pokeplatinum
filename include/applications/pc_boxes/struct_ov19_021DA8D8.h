#ifndef POKEPLATINUM_STRUCT_OV19_021DA8D8_H
#define POKEPLATINUM_STRUCT_OV19_021DA8D8_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "sprite.h"

// The "PARTY POKEMON" and "CLOSE" buttons
typedef struct BoxButtonsGraphics {
    SpriteList *spriteList;
    Sprite *sprite;
    void *cellBankBuffer;
    void *animBankBuffer;
    NNSG2dCellDataBank *cellBank;
    NNSG2dAnimBankData *animBank;
    NNSG2dImageProxy imageProxy;
    SpriteList *unread_3C;
    const BoxApplication *unread_40;
    BoxGraphics *boxGraphics;
} BoxButtonsGraphics;

#endif // POKEPLATINUM_STRUCT_OV19_021DA8D8_H
