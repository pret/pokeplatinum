#ifndef POKEPLATINUM_SOFTWARE_SPRITE_H
#define POKEPLATINUM_SOFTWARE_SPRITE_H

#include <nitro/gx.h>
#include <nnsys.h>

typedef struct SoftwareSpriteChars SoftwareSpriteChars;
typedef struct SoftwareSpritePalette SoftwareSpritePalette;
typedef struct SoftwareSprite SoftwareSprite;
typedef struct SoftwareSpriteManager SoftwareSpriteManager;

typedef struct SoftwareSpriteManagerTemplate {
    int numSprites;
    int numChars;
    int numPalettes;
    int heapID;
} SoftwareSpriteManagerTemplate;

typedef struct SoftwareSpriteCharsTemplate {
    SoftwareSpriteManager *softSpriteMan;
    NNSG2dCharacterData *charsData;
} SoftwareSpriteCharsTemplate;

typedef struct SoftwareSpritePaletteTemplate {
    SoftwareSpriteManager *softSpriteMan;
    NNSG2dPaletteData *paletteData;
    u32 paletteSlot;
} SoftwareSpritePaletteTemplate;

typedef struct SoftwareSpriteTemplate {
    SoftwareSpriteManager *softSpriteMan;
    SoftwareSpriteChars *chars;
    SoftwareSpritePalette *palette;
    s16 xPos;
    s16 yPos;
    u16 rotation;
    fx32 alpha;
    int priority;
    u16 paletteSlot;
} SoftwareSpriteTemplate;

#define SPRITE_FLIP_H 0
#define SPRITE_FLIP_V 1

SoftwareSpriteManager *SoftwareSpriteManager_New(const SoftwareSpriteManagerTemplate *template);
void SoftwareSpriteManager_Free(SoftwareSpriteManager *softSpriteMan);
SoftwareSpriteChars *SoftwareSprite_LoadChars(const SoftwareSpriteCharsTemplate *template);
void SoftwareSprite_FreeChars(SoftwareSpriteChars *chars);
void SoftwareSpriteManager_FreeAllChars(SoftwareSpriteManager *softSpriteMan);
SoftwareSpritePalette *SoftwareSprite_LoadPalette(const SoftwareSpritePaletteTemplate *template);
void SoftwareSprite_FreePalette(SoftwareSpritePalette *palette);
void SoftwareSpriteManager_FreeAllPalettes(SoftwareSpriteManager *softSpriteMan);

void SoftwareSpriteManager_DrawVisible(SoftwareSpriteManager *softSpriteMan);
SoftwareSprite *SoftwareSprite_Load(const SoftwareSpriteTemplate *template);
void SoftwareSprite_Reset(SoftwareSprite *sprite);

NNSG2dSVec2 SoftwareSprite_GetPosition(SoftwareSprite *sprite);
NNSG2dSVec2 SoftwareSprite_GetDimensions(SoftwareSprite *sprite);
int SoftwareSprite_GetPriority(SoftwareSprite *sprite);

void SoftwareSprite_SetVisible(SoftwareSprite *sprite, BOOL visible);
void SoftwareSprite_SetPosition(SoftwareSprite *sprite, s16 x, s16 y);
void SoftwareSprite_SetCenter(SoftwareSprite *sprite, s16 x, s16 y);
void SoftwareSprite_SetScalingFactors(SoftwareSprite *sprite, fx32 scaleX, fx32 scaleY);
void SoftwareSprite_SetDimensions(SoftwareSprite *sprite, int x, int y);
void SoftwareSprite_SetPriority(SoftwareSprite *sprite, int priority);
void SoftwareSprite_SetAlpha(SoftwareSprite *sprite, u8 alpha);
void SoftwareSprite_SetDiffuse(SoftwareSprite *sprite, GXRgb diffuse);
void SoftwareSprite_SetAttributes(SoftwareSprite *sprite, NNSG2dImageAttr *attributes);
void SoftwareSprite_SetVRAMAddress_Chars(SoftwareSprite *sprite, u32 address);
void SoftwareSprite_SetVRAMAddress_Palette(SoftwareSprite *sprite, u32 address);
void SoftwareSprite_SetPaletteSlot(SoftwareSprite *sprite, u32 slot);
void SoftwareSprite_SetFlip(SoftwareSprite *sprite, int direction, BOOL flip);
void SoftwareSprite_SetRotation(SoftwareSprite *sprite, u16 rotation);

#endif // POKEPLATINUM_SOFTWARE_SPRITE_H
