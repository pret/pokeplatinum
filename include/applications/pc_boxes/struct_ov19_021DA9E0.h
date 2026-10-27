#ifndef POKEPLATINUM_STRUCT_OV19_021DA9E0_H
#define POKEPLATINUM_STRUCT_OV19_021DA9E0_H

#include <nnsys.h>

#include "struct_defs/species.h"

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

typedef struct PCMonPreviewDisplay {
    BOOL isActive;
    Window *windows;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
    FontSpecialCharsContext *dexNumChars;
    FontSpecialCharsContext *levelChars;
    PokemonSpriteManager *monSpriteManager;
    PokemonSprite *monSprite;
    void *infoFrameCellBankBuffer;
    NNSG2dCellDataBank *infoFrameCellBank;
    Sprite *infoFrameSprite;
    void *typeIconCellBankBuffer;
    NNSG2dCellDataBank *typeIconCellBank;
    Sprite *typeIconSprites[MAX_TYPES];
    String *maleGenderText;
    String *femaleGenderText;
    SysTask *rotationTask;
    u8 padding_50[4];
} PCMonPreviewDisplay;

#endif // POKEPLATINUM_STRUCT_OV19_021DA9E0_H
