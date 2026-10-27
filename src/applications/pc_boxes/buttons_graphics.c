#include "applications/pc_boxes/buttons_graphics.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/graphics.h"

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sprite.h"

BOOL BoxButtonsGraphics_Init(BoxButtonsGraphics *buttonsGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc)
{
    buttonsGraphics->boxGraphics = boxGraphics;
    buttonsGraphics->unread_3C = spriteList;
    buttonsGraphics->unread_40 = boxApp;
    buttonsGraphics->spriteList = spriteList;
    buttonsGraphics->sprite = NULL;
    buttonsGraphics->cellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 10, TRUE, &buttonsGraphics->cellBank, HEAP_ID_BOX_GRAPHICS);
    buttonsGraphics->animBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 11, TRUE, &buttonsGraphics->animBank, HEAP_ID_BOX_GRAPHICS);

    if (buttonsGraphics->cellBankBuffer == NULL || buttonsGraphics->animBankBuffer == NULL) {
        return FALSE;
    }

    return TRUE;
}

void BoxButtonsGraphics_CreateSprite(BoxButtonsGraphics *buttonsGraphics, NARC *narc)
{
    SpriteResourcesHeader srHeader;

    NNS_G2dInitImageProxy(&buttonsGraphics->imageProxy);

    Graphics_LoadImageMappingFromOpenNARC(narc, 9, TRUE, IMAGE_MAPPING_LAYOUT_1D, 0, NNS_G2D_VRAM_TYPE_2DMAIN, BOX_BUTTONS_TILE_BASE * TILE_SIZE_4BPP, HEAP_ID_BOX_GRAPHICS, &buttonsGraphics->imageProxy);
    SpriteResourcesHeader_InitFromProxies(&srHeader, &buttonsGraphics->imageProxy, BoxGraphics_GetImagePaletteProxy(buttonsGraphics->boxGraphics), buttonsGraphics->cellBank, buttonsGraphics->animBank, 2);
    buttonsGraphics->sprite = BoxGraphics_CreateSprite(buttonsGraphics->spriteList, &srHeader, BOX_BUTTONS_X + BoxGraphics_GetCompareModeXOffset(buttonsGraphics->boxGraphics), BOX_BUTTONS_Y, 44, NNS_G2D_VRAM_TYPE_2DMAIN);
    Sprite_SetExplicitPalette(buttonsGraphics->sprite, 1);
}

void BoxButtonsGraphics_Free(BoxButtonsGraphics *buttonsGraphics)
{
    if (buttonsGraphics->cellBankBuffer != NULL) {
        Heap_Free(buttonsGraphics->cellBankBuffer);
        buttonsGraphics->cellBankBuffer = NULL;
    }

    if (buttonsGraphics->animBankBuffer != NULL) {
        Heap_Free(buttonsGraphics->animBankBuffer);
        buttonsGraphics->animBankBuffer = NULL;
    }
}

void BoxButtonsGraphics_SetPressedButton(BoxButtonsGraphics *buttonsGraphics, enum BoxButtonsAnim button)
{
    switch (button) {
    case BOX_BUTTONS_ANIM_NONE_PRESSED:
        Sprite_SetAnim(buttonsGraphics->sprite, BOX_BUTTONS_ANIM_NONE_PRESSED);
        break;
    case BOX_BUTTONS_ANIM_PARTY_PRESSED:
        Sprite_SetAnim(buttonsGraphics->sprite, BOX_BUTTONS_ANIM_PARTY_PRESSED);
        break;
    case BOX_BUTTONS_ANIM_CLOSE_PRESSED:
        Sprite_SetAnim(buttonsGraphics->sprite, BOX_BUTTONS_ANIM_CLOSE_PRESSED);
        break;
    }
}
