#ifndef POKEPLATINUM_POKEMON_SPRITE_H
#define POKEPLATINUM_POKEMON_SPRITE_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "struct_defs/sprite_animation_frame.h"

#define MAX_MON_SPRITES 4

enum PokemonSpriteAttribute {
    MON_SPRITE_X_CENTER = 0,
    MON_SPRITE_Y_CENTER,
    MON_SPRITE_Z_CENTER,
    MON_SPRITE_X_OFFSET,
    MON_SPRITE_Y_OFFSET,
    MON_SPRITE_Z_OFFSET,
    MON_SPRITE_HIDE,
    MON_SPRITE_ROTATION_X,
    MON_SPRITE_ROTATION_Y,
    MON_SPRITE_ROTATION_Z,
    MON_SPRITE_X_PIVOT,
    MON_SPRITE_Y_PIVOT,
    MON_SPRITE_SCALE_X,
    MON_SPRITE_SCALE_Y,
    MON_SPRITE_PARTIAL_DRAW,
    MON_SPRITE_DRAW_X_OFFSET,
    MON_SPRITE_DRAW_Y_OFFSET,
    MON_SPRITE_DRAW_WIDTH,
    MON_SPRITE_DRAW_HEIGHT,
    MON_SPRITE_SHADOW_X,
    MON_SPRITE_SHADOW_Y,
    MON_SPRITE_SHADOW_X_OFFSET,
    MON_SPRITE_SHADOW_Y_OFFSET,
    MON_SPRITE_ALPHA,
    MON_SPRITE_DIFFUSE_R,
    MON_SPRITE_DIFFUSE_G,
    MON_SPRITE_DIFFUSE_B,
    MON_SPRITE_AMBIENT_R,
    MON_SPRITE_AMBIENT_G,
    MON_SPRITE_AMBIENT_B,
    MON_SPRITE_FADE_ACTIVE,
    MON_SPRITE_FADE_TARGET_COLOR,
    MON_SPRITE_FADE_INIT_ALPHA,
    MON_SPRITE_FADE_TARGET_ALPHA,
    MON_SPRITE_FADE_DELAY_COUNTER,
    MON_SPRITE_FLIP_H,
    MON_SPRITE_FLIP_V,
    MON_SPRITE_HIDE_2,
    MON_SPRITE_CURR_SPRITE_FRAME,
    MON_SPRITE_DUMMY,
    MON_SPRITE_MOSAIC_INTENSITY,
    MON_SPRITE_SHADOW_HEIGHT,
    MON_SPRITE_SHADOW_PLTT_SLOT,
    MON_SPRITE_SHADOW_SHOULD_FOLLOW_X,
    MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y,
    MON_SPRITE_SHADOW_IS_AFFINE,
    MON_SPRITE_SHADOW_SIZE,
};

typedef struct PokemonSprite PokemonSprite;
typedef struct PokemonSpriteTransforms PokemonSpriteTransforms;

typedef void(PokemonSpriteCallback)(PokemonSprite *, PokemonSpriteTransforms *);

typedef struct PokemonSpriteTemplate {
    u16 narcID; //< ID of the sprite archive
    u16 character; //< File index to pull from the archive for the character data (tiles)
    u16 palette; //< File index to pull from the archive for the palette data
    u16 spindaSpots; //< Simple flag denoting whether the rendered sprite should be pseudo-randomized with splotches (only for Spinda's front-sprite).

    u8 dummy; //< Dummy value; never used or set to anything other than 0.

    u32 personality; //< Cached personality value for Pokemon front-sprites. Specifically used for Spinda spots.
} PokemonSpriteTemplate;

struct PokemonSpriteTransforms {
    s16 xCenter;
    s16 yCenter;
    int zCenter;
    s16 xOffset;
    s16 yOffset;
    int zOffset;
    s16 scaleX; // Negative values flip the sprite.
    s16 scaleY;
    u16 rotationX;
    u16 rotationY;
    u16 rotationZ;
    u16 padding_1A;
    s16 xPivot;
    s16 yPivot;
    u8 drawXOffset; // Offset from the sprite origin to begin drawing in partial mode.
    u8 drawYOffset;
    u8 drawWidth; // Determines how much of the sprite actually gets drawn in partial mode.
    u8 drawHeight;
    u8 fadeInitAlpha;
    u8 fadeTargetAlpha;
    u8 fadeDelayCounter;
    u8 fadeDelayLength;
    u32 fadeTargetColor;
    u32 diffuseR : 5;
    u32 diffuseG : 5;
    u32 diffuseB : 5;
    u32 ambientR : 5;
    u32 ambientG : 5;
    u32 ambientB : 5;
    u32 padding_2C_30 : 2;
    u32 hide : 1;
    u32 partialDraw : 1; // When enabled, only draws a part of the sprite. Disables shadows and affine scaling when in use.
    u32 alpha : 5;
    u32 padding_30_07 : 2;
    u32 flipH : 1;
    u32 flipV : 1;
    u32 hide2 : 1; // It's unclear why there are 2 members that do the same thing.
    u32 fadeActive : 1;
    u32 mosaicIntensity : 4;
    u32 padding_30_17 : 15;
};

typedef struct PokemonSpriteShadow {
    u16 plttSlot : 2;
    u16 shouldFollowX : 1;
    u16 shouldFollowY : 1;
    u16 isAffine : 1;
    u16 size : 2;
    u16 padding_00 : 9;
    s8 height;
    u8 padding_03;
    s16 x;
    s16 y;
    s16 xOffset;
    s16 yOffset;
} PokemonSpriteShadow;

struct PokemonSprite {
    u32 active : 1;
    u32 polygonID : 6;
    u32 needReloadChar : 1;
    u32 needReloadPltt : 1;
    u32 padding_00_9 : 23;
    PokemonSpriteTemplate template;
    PokemonSpriteTemplate templateBackup;
    PokemonSpriteTransforms transforms;
    u8 animActive;
    u8 currAnimFrame;
    u8 animFrameDelay;
    u8 currSpriteFrame;
    u8 animLoopTimers[MAX_ANIMATION_FRAMES];
    u8 padding_66[2];
    PokemonSpriteCallback *callback;
    PokemonSpriteShadow shadow;
    PokemonSpriteShadow shadowBackup;
    SpriteAnimationFrame animFrames[MAX_ANIMATION_FRAMES];
};

typedef struct PokemonSpriteManager {
    PokemonSprite sprites[MAX_MON_SPRITES];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy plttProxy;
    enum HeapID heapID;
    u32 charBaseAddr;
    u32 charSize;
    u32 plttBaseAddr;
    u32 plttSize;
    u8 *charRawData;
    u16 *plttRawData;
    u16 *plttRawDataUnfaded;
    NNSG2dCharacterData charData;
    NNSG2dPaletteData plttData;
    u8 dummy330;
    u8 needLoadChar;
    u8 needLoadPltt;
    u8 excludeIdentity;
    u32 hideShadows; // curiously, this field is treated like a bitmask, but it only ever uses a value of 0 or 1
} PokemonSpriteManager;

// used to run PokemonSprite animations in a task independent
// of the PokemonSpriteManager
typedef struct {
    u8 active;
    u8 currSpriteFrame;
    u8 currAnimFrame;
    u8 frameDelay;
    u8 loopTimers[MAX_ANIMATION_FRAMES];
    u8 padding_0E[2];
    const SpriteAnimationFrame *animFrames;
} PokemonSpriteTaskAnim;

void *PokemonSpriteManager_New(enum HeapID heapID);
void PokemonSpriteManager_DrawSprites(PokemonSpriteManager *monSpriteMan);
void PokemonSpriteManager_Free(PokemonSpriteManager *monSpriteMan);
void PokemonSprite_InitAnim(PokemonSprite *monSprite, int dummy);
void PokemonSprite_SetAnim(PokemonSprite *monSprite, SpriteAnimationFrame *animFrames);
BOOL PokemonSprite_IsAnimActive(PokemonSprite *monSprite);
PokemonSprite *PokemonSpriteManager_CreateSprite(PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int polygonID, SpriteAnimationFrame *animFrames, PokemonSpriteCallback *callback);
PokemonSprite *PokemonSpriteManager_CreateSpriteAtIndex(PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int polygonID, int index, SpriteAnimationFrame *animFrames, PokemonSpriteCallback *callback);
void PokemonSprite_Delete(PokemonSprite *monSprite);
void PokemonSpriteManager_DeleteAll(PokemonSpriteManager *monSpriteMan);
void PokemonSprite_SetAttribute(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute, int value);
int PokemonSprite_GetAttribute(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute);
void PokemonSprite_AddAttribute(PokemonSprite *monSprite, enum PokemonSpriteAttribute attribute, int delta);
void PokemonSprite_SetPartialDraw(PokemonSprite *monSprite, int xOffset, int yOffset, int width, int height);
void PokemonSprite_StartFade(PokemonSprite *monSprite, int initAlpha, int targetAlpha, int delay, int color);
void PokemonSpriteManager_StartFadeAll(PokemonSpriteManager *monSpriteMan, int initAlpha, int targetAlpha, int delay, int color);
void PokemonSprite_ClearFade(PokemonSprite *monSprite);
BOOL PokemonSprite_IsFadeActive(PokemonSprite *monSprite);
void PokemonSprite_CalcScaledYOffset(PokemonSprite *monSprite, int height);
void PokemonSpriteTaskAnim_Init(PokemonSpriteTaskAnim *anim, const SpriteAnimationFrame *animFrames);
int PokemonSpriteTaskAnim_Tick(PokemonSpriteTaskAnim *anim);
void PokemonSprite_ScheduleReloadFromNARC(PokemonSprite *monSprite);
void PokemonSprite_Push(PokemonSprite *monSprite);
void PokemonSprite_Pop(PokemonSprite *monSprite);
void PokemonSpriteManager_SetCharBaseAddrAndSize(PokemonSpriteManager *monSpriteMan, u32 addr, u32 size);
void PokemonSpriteManager_SetPlttBaseAddrAndSize(PokemonSpriteManager *monSpriteMan, u32 addr, u32 size);
PokemonSpriteTemplate *PokemonSprite_GetTemplate(PokemonSprite *monSprite);
void PokemonSpriteManager_UpdateCharAndPltt(PokemonSpriteManager *monSpriteMan);
void PokemonSpriteManager_SetExcludeIdentity(PokemonSpriteManager *monSpriteMan, int value);
BOOL PokemonSprite_IsActive(PokemonSprite *monSprite);
void PokemonSpriteManager_SetHideShadows(PokemonSpriteManager *monSpriteMan, u32 value);
void PokemonSpriteManager_ClearHideShadows(PokemonSpriteManager *monSpriteMan, u32 value);
void PokemonSprite_DrawSpindaSpots(u8 *rawCharData, u32 personality, BOOL isAnimated);
void PokemonSprite_DecryptPt(u8 *rawCharData);
void PokemonSprite_DecryptDP(u8 *rawCharData);
void PokemonSprite_Decrypt(u8 *rawCharData, enum NarcID narcID);

inline void PokemonSpriteManager_HideShadows(PokemonSpriteManager *monSpriteMan)
{
    PokemonSpriteManager_SetHideShadows(monSpriteMan, 1);
}

inline void PokemonSpriteManager_ShowShadows(PokemonSpriteManager *monSpriteMan)
{
    PokemonSpriteManager_ClearHideShadows(monSpriteMan, 1);
}

#endif // POKEPLATINUM_POKEMON_SPRITE_H
