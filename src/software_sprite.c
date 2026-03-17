#include "software_sprite.h"

#include <nitro/gx/g3imm.h>
#include <nnsys/g2d/g2d_Image.h>
#include <nnsys/g2d/g2d_Softsprite.h>
#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>

#include "constants/colors.h"
#include "constants/graphics.h"
#include "constants/heap.h"

#include "heap.h"

struct SoftwareSpriteChars {
    NNSGfdTexKey vramKey;
    NNSG2dImageProxy proxy;
};

struct SoftwareSpritePalette {
    NNSGfdPlttKey vramKey;
    NNSG2dImagePaletteProxy proxy;
};

struct SoftwareSprite {
    NNSG2dSVec2 position;
    NNSG2dSVec2 center;
    NNSG2dSVec2 dimensions;
    fx32 scaleX;
    fx32 scaleY;
    int priority;
    int rotation;
    BOOL inUse;
    BOOL visible;
    NNSG2dImageAttr *attributes;
    u32 vramAddressChars;
    u32 vramAddressPalette;
    u32 paletteSlot;
    BOOL flipH;
    BOOL flipV;
    GXRgb diffuse;
    u8 alpha;
};

struct SoftwareSpriteManager {
    SoftwareSprite *sprites;
    int numSprites;
    SoftwareSpriteChars *chars;
    int numChars;
    SoftwareSpritePalette *palettes;
    int numPalettes;
};

static SoftwareSprite *NewSprites(int count, enum HeapID heapID);
static SoftwareSpriteChars *NewSpriteChars(int count, enum HeapID heapID);
static SoftwareSpritePalette *NewSpritePalettes(int count, enum HeapID heapID);

static void ZeroSprite(SoftwareSprite *sprite);
static void ZeroChars(SoftwareSpriteChars *chars);
static void ZeroPalette(SoftwareSpritePalette *palette);

static SoftwareSprite *FindAvailableSprite(SoftwareSpriteManager *softSpriteMan);
static SoftwareSpriteChars *FindAvailableChars(SoftwareSpriteManager *softSpriteMan);
static SoftwareSpritePalette *FindAvailablePalette(SoftwareSpriteManager *softSpriteMan);

static NNSGfdTexKey AllocateVRAM_Chars(NNSG2dCharacterData *charsData);
static NNSGfdPlttKey AllocateVRAM_Palette(int paletteSlot);
static void LoadProxy_Chars(NNSG2dCharacterData *charsData, NNSGfdTexKey vramKey, NNSG2dImageProxy *proxy);
static void LoadProxy_Palette(NNSG2dPaletteData *paletteData, NNSGfdPlttKey vramKey, NNSG2dImagePaletteProxy *proxy);

static void DrawSprite(SoftwareSprite *sprite);
static void LoadSprite(SoftwareSprite *sprite, const SoftwareSpriteTemplate *template);

SoftwareSpriteManager *SoftwareSpriteManager_New(const SoftwareSpriteManagerTemplate *template)
{
    SoftwareSpriteManager *softSpriteMan = Heap_Alloc(template->heapID, sizeof(SoftwareSpriteManager));
    GF_ASSERT(softSpriteMan);

    softSpriteMan->sprites = NewSprites(template->numSprites, template->heapID);
    softSpriteMan->numSprites = template->numSprites;
    softSpriteMan->chars = NewSpriteChars(template->numChars, template->heapID);
    softSpriteMan->numChars = template->numChars;
    softSpriteMan->palettes = NewSpritePalettes(template->numPalettes, template->heapID);
    softSpriteMan->numPalettes = template->numPalettes;

    return softSpriteMan;
}

void SoftwareSpriteManager_Free(SoftwareSpriteManager *softSpriteMan)
{
    GF_ASSERT(softSpriteMan);
    GF_ASSERT(softSpriteMan->sprites);
    GF_ASSERT(softSpriteMan->chars);
    GF_ASSERT(softSpriteMan->palettes);

    Heap_Free(softSpriteMan->sprites);
    Heap_Free(softSpriteMan->chars);
    Heap_Free(softSpriteMan->palettes);
    Heap_Free(softSpriteMan);

    softSpriteMan = NULL;
}

void SoftwareSpriteManager_DrawVisible(SoftwareSpriteManager *manager)
{
    G3_PushMtx();

    for (int i = 0; i < manager->numSprites; i++) {
        if (manager->sprites[i].visible) {
            DrawSprite(manager->sprites + i);
        }
    }

    G3_PopMtx(1);
}

SoftwareSpriteChars *SoftwareSprite_LoadChars(const SoftwareSpriteCharsTemplate *template)
{
    SoftwareSpriteChars *chars = FindAvailableChars(template->softSpriteMan);
    GF_ASSERT(chars);
    GF_ASSERT(template->charsData->mappingType == GX_OBJVRAMMODE_CHAR_2D);

    chars->vramKey = AllocateVRAM_Chars(template->charsData);
    GF_ASSERT(chars->vramKey);

    LoadProxy_Chars(template->charsData, chars->vramKey, &chars->proxy);
    return chars;
}

void SoftwareSprite_FreeChars(SoftwareSpriteChars *chars)
{
    NNS_GfdFreeTexVram(chars->vramKey);
    ZeroChars(chars);
}

void SoftwareSpriteManager_FreeAllChars(SoftwareSpriteManager *softSpriteMan)
{
    for (int i = 0; i < softSpriteMan->numChars; i++) {
        if (softSpriteMan->chars[i].vramKey) {
            SoftwareSprite_FreeChars(softSpriteMan->chars + i);
        }
    }
}

SoftwareSpritePalette *SoftwareSprite_LoadPalette(const SoftwareSpritePaletteTemplate *template)
{
    SoftwareSpritePalette *palette = FindAvailablePalette(template->softSpriteMan);
    GF_ASSERT(palette);

    palette->vramKey = AllocateVRAM_Palette(template->paletteSlot);
    GF_ASSERT(palette->vramKey);

    LoadProxy_Palette(template->paletteData, palette->vramKey, &palette->proxy);
    return palette;
}

void SoftwareSprite_FreePalette(SoftwareSpritePalette *palette)
{
    NNS_GfdFreePlttVram(palette->vramKey);
    ZeroPalette(palette);
}

void SoftwareSpriteManager_FreeAllPalettes(SoftwareSpriteManager *softSpriteMan)
{
    for (int i = 0; i < softSpriteMan->numPalettes; i++) {
        if (softSpriteMan->palettes[i].vramKey) {
            SoftwareSprite_FreePalette(softSpriteMan->palettes + i);
        }
    }
}

SoftwareSprite *SoftwareSprite_Load(const SoftwareSpriteTemplate *template)
{
    SoftwareSprite *sprite = FindAvailableSprite(template->softSpriteMan);
    GF_ASSERT(sprite);

    LoadSprite(sprite, template);
    sprite->inUse = TRUE;
    sprite->visible = TRUE;
    return sprite;
}

void SoftwareSprite_Reset(SoftwareSprite *sprite)
{
    ZeroSprite(sprite);
}

void SoftwareSprite_SetVisible(SoftwareSprite *sprite, BOOL visible)
{
    GF_ASSERT(sprite);
    sprite->visible = visible;
}

void SoftwareSprite_SetPosition(SoftwareSprite *sprite, s16 x, s16 y)
{
    sprite->position.x = x;
    sprite->position.y = y;
}

NNSG2dSVec2 SoftwareSprite_GetPosition(SoftwareSprite *sprite)
{
    return sprite->position;
}

void SoftwareSprite_SetCenter(SoftwareSprite *sprite, s16 x, s16 y)
{
    sprite->center.x = x;
    sprite->center.y = y;
}

void SoftwareSprite_SetScalingFactors(SoftwareSprite *sprite, fx32 scaleX, fx32 scaleY)
{
    sprite->scaleX = scaleX;
    sprite->scaleY = scaleY;
}

void SoftwareSprite_SetDimensions(SoftwareSprite *sprite, int x, int y)
{
    sprite->dimensions.x = x;
    sprite->dimensions.y = y;
}

NNSG2dSVec2 SoftwareSprite_GetDimensions(SoftwareSprite *sprite)
{
    return sprite->dimensions;
}

void SoftwareSprite_SetPriority(SoftwareSprite *sprite, int priority)
{
    sprite->priority = priority;
}

int SoftwareSprite_GetPriority(SoftwareSprite *sprite)
{
    return sprite->priority;
}

void SoftwareSprite_SetAlpha(SoftwareSprite *sprite, u8 alpha)
{
    sprite->alpha = alpha;
}

void SoftwareSprite_SetDiffuse(SoftwareSprite *sprite, GXRgb diffuse)
{
    sprite->diffuse = diffuse;
}

void SoftwareSprite_SetAttributes(SoftwareSprite *sprite, NNSG2dImageAttr *attributes)
{
    sprite->attributes = attributes;
}

void SoftwareSprite_SetVRAMAddress_Chars(SoftwareSprite *sprite, u32 address)
{
    sprite->vramAddressChars = address;
}

void SoftwareSprite_SetVRAMAddress_Palette(SoftwareSprite *sprite, u32 address)
{
    sprite->vramAddressPalette = address;
}

void SoftwareSprite_SetPaletteSlot(SoftwareSprite *sprite, u32 offset)
{
    sprite->paletteSlot = offset;
}

void SoftwareSprite_SetFlip(SoftwareSprite *sprite, int direction, BOOL flip)
{
    if (direction == SPRITE_FLIP_H) {
        sprite->flipH = flip;
    } else {
        sprite->flipV = flip;
    }
}

void SoftwareSprite_SetRotation(SoftwareSprite *sprite, u16 rotation)
{
    sprite->rotation = rotation;
}

static void ZeroSprite(SoftwareSprite *sprite)
{
    memset(sprite, 0, sizeof(SoftwareSprite));
    sprite->alpha = 31;
    sprite->diffuse = COLOR_WHITE;
}

static void ZeroChars(SoftwareSpriteChars *chars)
{
    chars->vramKey = 0;
    NNS_G2dInitImageProxy(&chars->proxy);
}

static void ZeroPalette(SoftwareSpritePalette *palette)
{
    palette->vramKey = 0;
    NNS_G2dInitImagePaletteProxy(&palette->proxy);
}

static SoftwareSprite *NewSprites(int count, enum HeapID heapID)
{
    SoftwareSprite *sprites = Heap_Alloc(heapID, sizeof(SoftwareSprite) * count);
    GF_ASSERT(sprites);

    for (int i = 0; i < count; i++) {
        ZeroSprite(sprites + i);
    }

    return sprites;
}

static SoftwareSpriteChars *NewSpriteChars(int count, enum HeapID heapID)
{
    SoftwareSpriteChars *chars = Heap_Alloc(heapID, sizeof(SoftwareSpriteChars) * count);
    GF_ASSERT(chars);

    for (int i = 0; i < count; i++) {
        ZeroChars(chars + i);
    }

    return chars;
}

static SoftwareSpritePalette *NewSpritePalettes(int count, enum HeapID heapID)
{
    SoftwareSpritePalette *palettes = Heap_Alloc(heapID, sizeof(SoftwareSpritePalette) * count);
    GF_ASSERT(palettes);

    for (int i = 0; i < count; i++) {
        ZeroPalette(palettes + i);
    }

    return palettes;
}

static SoftwareSprite *FindAvailableSprite(SoftwareSpriteManager *softSpriteMan)
{
    for (int i = 0; i < softSpriteMan->numSprites; i++) {
        if (softSpriteMan->sprites[i].inUse == FALSE) {
            return softSpriteMan->sprites + i;
        }
    }

    return NULL;
}

static SoftwareSpriteChars *FindAvailableChars(SoftwareSpriteManager *softSpriteMan)
{
    for (int i = 0; i < softSpriteMan->numSprites; i++) {
        if (softSpriteMan->chars[i].vramKey == 0) {
            return softSpriteMan->chars + i;
        }
    }

    return NULL;
}

static SoftwareSpritePalette *FindAvailablePalette(SoftwareSpriteManager *softSpriteMan)
{
    for (int i = 0; i < softSpriteMan->numSprites; i++) {
        if (softSpriteMan->palettes[i].vramKey == 0) {
            return softSpriteMan->palettes + i;
        }
    }

    return NULL;
}

static NNSGfdTexKey AllocateVRAM_Chars(NNSG2dCharacterData *charsData)
{
    return NNS_GfdAllocTexVram(charsData->szByte, FALSE, 0);
}

static NNSGfdPlttKey AllocateVRAM_Palette(int paletteSlot)
{
    return NNS_GfdAllocPlttVram(PLTT_OFFSET(paletteSlot), FALSE, 0);
}

static void LoadProxy_Chars(NNSG2dCharacterData *charsData, NNSGfdTexKey vramKey, NNSG2dImageProxy *proxy)
{
    NNS_G2dLoadImage2DMapping(charsData, NNS_GfdGetTexKeyAddr(vramKey), NNS_G2D_VRAM_TYPE_3DMAIN, proxy);
}

static void LoadProxy_Palette(NNSG2dPaletteData *paletteData, NNSGfdPlttKey vramKey, NNSG2dImagePaletteProxy *proxy)
{
    int size = paletteData->szByte;
    paletteData->szByte = NNS_GfdGetPlttKeySize(vramKey);

    NNS_G2dLoadPalette(paletteData, NNS_GfdGetPlttKeyAddr(vramKey), NNS_G2D_VRAM_TYPE_3DMAIN, proxy);
    paletteData->szByte = size;
}

static void DrawSprite(SoftwareSprite *sprite)
{
    G3_PushMtx();
    G3_MaterialColorDiffAmb(sprite->diffuse, COLOR_WHITE, TRUE);
    G3_MaterialColorSpecEmi(COLOR_GRAY, COLOR_BLACK, FALSE);
    G3_TexImageParam(
        sprite->attributes->fmt,
        GX_TEXGEN_TEXCOORD,
        sprite->attributes->sizeS,
        sprite->attributes->sizeT,
        GX_TEXREPEAT_NONE,
        GX_TEXFLIP_NONE,
        sprite->attributes->plttUse,
        sprite->vramAddressChars);
    G3_TexPlttBase(sprite->vramAddressPalette + PLTT_OFFSET(sprite->paletteSlot), sprite->attributes->fmt);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 0, sprite->alpha, 0);

    NNSG2dSVec2 uv0, uv1;
    if (sprite->flipH) {
        uv0.x = sprite->dimensions.x;
        uv1.x = 0;
    } else {
        uv1.x = sprite->dimensions.x;
        uv0.x = 0;
    }

    if (sprite->flipV) {
        uv0.y = sprite->dimensions.y;
        uv1.y = 0;
    } else {
        uv1.y = sprite->dimensions.y;
        uv0.y = 0;
    }

    G3_Translate(
        (sprite->position.x + sprite->center.x) * FX32_ONE,
        (sprite->position.y + sprite->center.y) * FX32_ONE,
        sprite->priority * FX32_ONE);
    G3_RotZ(FX_SinIdx(sprite->rotation), FX_CosIdx(sprite->rotation));
    G3_Scale(sprite->scaleX, sprite->scaleY, FX32_ONE);
    G3_Translate(-sprite->center.x * FX32_ONE, -sprite->center.y * FX32_ONE, 0);
    NNS_G2dDrawSpriteFast(0, 0, 0, sprite->dimensions.x, sprite->dimensions.y, uv0.x, uv0.y, uv1.x, uv1.y);
    G3_PopMtx(1);
}

static void LoadSprite(SoftwareSprite *sprite, const SoftwareSpriteTemplate *template)
{
    int dimenX = 8;
    for (int i = 0; i < template->chars->proxy.attr.sizeS; i++) {
        dimenX *= 2;
    }

    int dimenY = 8;
    for (int i = 0; i < template->chars->proxy.attr.sizeT; i++) {
        dimenY *= 2;
    }

    SoftwareSprite_SetPosition(sprite, template->xPos, template->yPos);
    SoftwareSprite_SetCenter(sprite, dimenX / 2, dimenY / 2);

    sprite->scaleX = FX32_ONE;
    sprite->scaleY = FX32_ONE;

    SoftwareSprite_SetDimensions(sprite, dimenX, dimenY);
    SoftwareSprite_SetPriority(sprite, template->priority);
    SoftwareSprite_SetAlpha(sprite, template->alpha);
    SoftwareSprite_SetAttributes(sprite, &template->chars->proxy.attr);
    SoftwareSprite_SetVRAMAddress_Chars(sprite, NNS_G2dGetImageLocation(&template->chars->proxy, NNS_G2D_VRAM_TYPE_3DMAIN));
    SoftwareSprite_SetVRAMAddress_Palette(sprite, NNS_G2dGetImagePaletteLocation(&template->palette->proxy, NNS_G2D_VRAM_TYPE_3DMAIN));
    SoftwareSprite_SetPaletteSlot(sprite, template->paletteSlot);
    SoftwareSprite_SetFlip(sprite, SPRITE_FLIP_H, FALSE);
    SoftwareSprite_SetFlip(sprite, SPRITE_FLIP_V, FALSE);
    SoftwareSprite_SetRotation(sprite, template->rotation);
}
