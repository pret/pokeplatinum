#ifndef POKEPLATINUM_STRUCT_DEFS_SPRITE_TEMPLATE_H
#define POKEPLATINUM_STRUCT_DEFS_SPRITE_TEMPLATE_H

#include <nnsys/g2d/g2d_Image.h>

#define MAX_SPRITE_RESOURCES 6
#define SPRITE_RESOURCE_NONE -1

typedef struct SpriteTemplate {
    s16 x; //!< Starting X-coordinate of the sprite
    s16 y; //!< Starting Y-coordinate of the sprite
    s16 z; //!< Starting Z-coordinate of the sprite
    u16 animIdx; //!< Index in the animation file to use
    int priority; //!< Priority layer to draw the sprite against
    int plttIdx; //!< Index in the palette file to use
    enum NNS_G2D_VRAM_TYPE vramType; //!< VRAM type which will own any loaded resources
    int resources[MAX_SPRITE_RESOURCES]; //!< Set of resource IDs to register as loaded into VRAM
    int bgPriority;
    BOOL transferToVRAM;
} SpriteTemplate;

#endif // POKEPLATINUM_STRUCT_DEFS_SPRITE_TEMPLATE_H
