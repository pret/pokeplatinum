#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_BUTTONS_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_BUTTONS_GRAPHICS_H

#include <nnsys.h>

#include "applications/pc_boxes/defs.h"

#include "narc.h"
#include "sprite.h"

#define BOX_BUTTONS_TILE_BASE 1256
#define BOX_BUTTONS_X         183
#define BOX_BUTTONS_Y         176

enum BoxButtonsAnim {
    BOX_BUTTONS_ANIM_NONE_PRESSED = 0,
    BOX_BUTTONS_ANIM_PARTY_PRESSED,
    BOX_BUTTONS_ANIM_CLOSE_PRESSED,
};

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

BOOL BoxButtonsGraphics_Init(BoxButtonsGraphics *buttonsGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc);
void BoxButtonsGraphics_CreateSprite(BoxButtonsGraphics *buttonsGraphics, NARC *narc);
void BoxButtonsGraphics_Free(BoxButtonsGraphics *buttonsGraphics);
void BoxButtonsGraphics_SetPressedButton(BoxButtonsGraphics *buttonsGraphics, enum BoxButtonsAnim button);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_BUTTONS_GRAPHICS_H
