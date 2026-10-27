#ifndef POKEPLATINUM_OV19_021DA814_H
#define POKEPLATINUM_OV19_021DA814_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA8D8.h"

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

BOOL BoxButtonsGraphics_Init(BoxButtonsGraphics *buttonsGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc);
void BoxButtonsGraphics_CreateSprite(BoxButtonsGraphics *buttonsGraphics, NARC *narc);
void BoxButtonsGraphics_Free(BoxButtonsGraphics *buttonsGraphics);
void BoxButtonsGraphics_SetPressedButton(BoxButtonsGraphics *buttonsGraphics, enum BoxButtonsAnim button);

#endif // POKEPLATINUM_OV19_021DA814_H
