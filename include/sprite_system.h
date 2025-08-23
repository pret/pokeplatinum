#ifndef POKEPLATINUM_SPRITE_SYSTEM_H
#define POKEPLATINUM_SPRITE_SYSTEM_H

#include <nitro/gx.h>

#include "constants/heap.h"

#include "char_transfer.h"
#include "narc.h"
#include "palette.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

#define SPRITE_RESOURCE_NONE -1

typedef struct SpriteSystem {
    enum HeapId heapID;
    int spriteManagerCount;
    BOOL inUse;
    NNSG2dCellTransferState *cellTransferStates;
    G2dRenderer renderer;
} SpriteSystem;

typedef struct SpriteManager {
    SpriteList *sprites;
    SpriteResourcesHeaderList *resourceHeaders;
    SpriteResourceTable *resourcePaths;
    SpriteResourceCollection *ownedResources[SPRITE_RESOURCE_MAX];
    SpriteResourceList *unownedResources[SPRITE_RESOURCE_MAX];
    int loadedResourceCount[SPRITE_RESOURCE_MAX];
    int numResourceTypes;
} SpriteManager;

typedef struct SpriteTemplate {
    s16 x;
    s16 y;
    s16 z;
    u16 animIdx;
    int priority;
    int plttIdx;
    enum NNS_G2D_VRAM_TYPE vramType;
    int resources[SPRITE_RESOURCE_MAX];
    int bgPriority;
    BOOL vramTransfer;
} SpriteTemplate;

typedef struct SpriteTemplateFromResourceHeader {
    int resourceHeaderID;
    s16 x;
    s16 y;
    s16 z;
    u16 animIdx;
    int priority;
    int plttIdx;
    enum NNS_G2D_VRAM_TYPE vramType;
    int dummy18;
    int dummy1C;
    int dummy20;
    int dummy24;
} SpriteTemplateFromResourceHeader;

typedef union SpriteResourceDataPaths {
    const char *asArray[SPRITE_RESOURCE_MAX + 1];
    struct {
        const char *charResources;
        const char *plttResources;
        const char *cellResources;
        const char *animResources;
        const char *mcellResources;
        const char *manimResources;
        const char *spriteTable;
    } asStruct;
} SpriteResourceDataPaths;

typedef union SpriteResourceCapacities {
    int asArray[SPRITE_RESOURCE_MAX];
    struct {
        int charCapacity;
        int plttCapacity;
        int cellCapacity;
        int animCapacity;
        int mcellCapacity;
        int manimCapacity;
    } asStruct;
} SpriteResourceCapacities;

SpriteSystem *SpriteSystem_Alloc(enum HeapId heapID);
SpriteManager *SpriteManager_New(SpriteSystem *spriteSys);
G2dRenderer *SpriteSystem_GetRenderer(SpriteSystem *spriteSys);
BOOL SpriteSystem_Init(SpriteSystem *spriteSys, const RenderOamTemplate *oamTemplate, const CharTransferTemplateWithModes *transferTemplate, int plttCapacity);
BOOL SpriteSystem_InitSprites(SpriteSystem *spriteSys, SpriteManager *spriteMan, int maxSprites);
void Sprite_Delete2(Sprite *sprite);
void SpriteSystem_DrawSprites(SpriteManager *spriteMan);
void SpriteSystem_TransferOam(void);
void SpriteSystem_UpdateTransfer(void);
void SpriteManager_DeleteAllSprites(SpriteManager *spriteMan);
void SpriteManager_FreeResourceHeaders(SpriteManager *spriteMan);
void SpriteManager_FreeResources(SpriteManager *spriteMan);
void SpriteSystem_FreeVramTransfers(SpriteSystem *spriteSys);
void SpriteSystem_FreeSpriteManager(SpriteSystem *spriteSys, SpriteManager *spriteMan);
void SpriteSystem_DestroySpriteManager(SpriteSystem *spriteSys, SpriteManager *spriteMan);
void SpriteSystem_Free(SpriteSystem *spriteSys);
BOOL SpriteSystem_LoadResourceDataFromFilepaths(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteResourceDataPaths *paths);
Sprite *SpriteSystem_NewSpriteFromResourceHeader(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplateFromResourceHeader *template);
BOOL SpriteSystem_InitManagerWithCapacities(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteResourceCapacities *capacities);
BOOL SpriteSystem_LoadCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
s8 SpriteSystem_LoadPlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
s8 SpriteSystem_LoadPlttResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
u8 SpriteSystem_LoadPaletteBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCellResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadAnimResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);
ManagedSprite *SpriteSystem_NewSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplate *template);
const NNSG2dImagePaletteProxy *SpriteManager_FindPlttResourceProxy(SpriteManager *spriteMan, int resourceID);
u32 SpriteManager_FindPlttResourceOffset(SpriteManager *spriteMan, int resourceID, enum NNS_G2D_VRAM_TYPE vramType);
BOOL SpriteManager_UnloadCharObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadPlttObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadCellObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadAnimObjById(SpriteManager *spriteMan, int resourceID);
void SpriteSystem_FreeResourcesAndManager(SpriteSystem *spriteSys, SpriteManager *spriteMan);
void Sprite_DeleteAndFreeResources(ManagedSprite *managedSprite);
void Sprite_TickFrame(Sprite *sprite);
void ManagedSprite_TickFrame(ManagedSprite *managedSprite);
void ManagedSprite_TickTwoFrames(ManagedSprite *managedSprite);
void ManagedSprite_TickNFrames(ManagedSprite *managedSprite, fx32 frames);
u32 ManagedSprite_GetNumFrames(ManagedSprite *managedSprite);
void ManagedSprite_SetAnim(ManagedSprite *managedSprite, u32 animID);
void ManagedSprite_SetAnimNoRestart(ManagedSprite *managedSprite, u32 animID);
u32 ManagedSprite_GetActiveAnim(ManagedSprite *managedSprite);
void ManagedSprite_SetAnimateFlag(ManagedSprite *managedSprite, BOOL animate);
void ManagedSprite_SetAnimationSpeed(ManagedSprite *managedSprite, fx32 speed);
BOOL ManagedSprite_IsAnimated(ManagedSprite *managedSprite);
void ManagedSprite_SetAnimationFrame(ManagedSprite *managedSprite, u16 frame);
u16 ManagedSprite_GetAnimationFrame(ManagedSprite *managedSprite);
void Sprite_SetDrawFlag2(Sprite *sprite, BOOL draw);
void ManagedSprite_SetDrawFlag(ManagedSprite *managedSprite, BOOL draw);
int Sprite_GetDrawFlag2(Sprite *sprite);
int ManagedSprite_GetDrawFlag(ManagedSprite *managedSprite);
void Sprite_SetExplicitPalette2(Sprite *sprite, int palette);
void ManagedSprite_SetExplicitPalette(ManagedSprite *managedSprite, int palette);
void ManagedSprite_SetExplicitPaletteOffset(ManagedSprite *managedSprite, int paletteOffset);
int ManagedSprite_GetExplicitPaletteOffset(ManagedSprite *managedSprite);
int ManagedSprite_GetExplicitPriority(ManagedSprite *managedSprite);
void ManagedSprite_SetExplicitPriority(ManagedSprite *managedSprite, int priority);
void ManagedSprite_SetPriority(ManagedSprite *managedSprite, int priority);
u32 ManagedSprite_GetPriority(ManagedSprite *managedSprite);
void Sprite_SetPositionXY(Sprite *sprite, s16 x, s16 y);
void ManagedSprite_SetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
void Sprite_SetPositionXYWithSubscreenOffset(Sprite *sprite, s16 x, s16 y, fx32 offset);
void ManagedSprite_SetPositionXYWithSubscreenOffset(ManagedSprite *managedSprite, s16 x, s16 y, fx32 offset);
void Sprite_GetPositionXY(Sprite *sprite, s16 *outX, s16 *outY);
void ManagedSprite_GetPositionXY(ManagedSprite *managedSprite, s16 *outX, s16 *outY);
void ManagedSprite_GetPositionXYWithSubscreenOffset(Sprite *sprite, s16 *outX, s16 *outY, fx32 offset);
void Sprite_GetPositionXYWithSubscreenOffset2(ManagedSprite *managedSprite, s16 *outX, s16 *outY, fx32 offset);
void Sprite_OffsetPositionXY(Sprite *sprite, s16 x, s16 y);
void ManagedSprite_OffsetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
void ManagedSprite_OffsetPositionFxXY(ManagedSprite *managedSprite, fx32 x, fx32 y);
void ManagedSprite_SetPositionFxXY(ManagedSprite *managedSprite, fx32 x, fx32 y);
void ManagedSprite_GetPositionFxXY(ManagedSprite *managedSprite, fx32 *outX, fx32 *outY);
void ManagedSprite_SetPositionFxXYWithSubscreenOffset(ManagedSprite *managedSprite, fx32 x, fx32 y, fx32 offset);
void ManagedSprite_GetPositionFxXYWithSubscreenOffset(ManagedSprite *managedSprite, fx32 *outX, fx32 *outY, fx32 offset);
void ManagedSprite_SetAffineOverwriteMode(ManagedSprite *managedSprite, enum AffineOverwriteMode mode);
void ManagedSprite_SetAffineScale(ManagedSprite *managedSprite, f32 xScale, f32 yScale);
void ManagedSprite_OffsetAffineScale(ManagedSprite *managedSprite, f32 xScale, f32 yScale);
void ManagedSprite_GetAffineScale(ManagedSprite *managedSprite, f32 *outXScale, f32 *outYScale);
void ManagedSprite_SetAffineZRotation(ManagedSprite *managedSprite, u16 angle);
void ManagedSprite_OffsetAffineZRotation(ManagedSprite *managedSprite, s32 offset);
void Sprite_SetFlipMode2(Sprite *sprite, BOOL mode);
void ManagedSprite_SetFlipMode(ManagedSprite *managedSprite, BOOL mode);
void ManagedSprite_SetAffineTranslation(ManagedSprite *managedSprite, s16 x, s16 y);
void ManagedSprite_SetMosaicFlag(ManagedSprite *managedSprite, BOOL mosaic);
void Sprite_SetExplicitOamMode2(Sprite *sprite, GXOamMode mode);
void ManagedSprite_SetExplicitOamMode(ManagedSprite *managedSprite, GXOamMode mode);
u32 ManagedSprite_GetUserAttrForCurrentAnimFrame(ManagedSprite *managedSprite);
BOOL SpriteSystem_LoadCharResObjWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
void SpriteSystem_ReplaceCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int resourceID);
void SpriteSystem_ReplacePlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum NarcID narcID, int memberIdx, BOOL compressed, int resourceID);
SpriteList *SpriteManager_GetSpriteList(SpriteManager *spriteMan);
void SpriteSystem_ReplaceCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);

#endif // POKEPLATINUM_SPRITE_SYSTEM_H
