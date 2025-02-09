#ifndef POKEPLATINUM_SPRITE_SYSTEM_H
#define POKEPLATINUM_SPRITE_SYSTEM_H

#include <nitro/gx.h>

#include "constants/heap.h"

#include "cell_actor.h"
#include "char_transfer.h"
#include "narc.h"
#include "palette.h"
#include "render_oam.h"
#include "sprite_resource.h"
#include "sprite_util.h"

#define SPRITE_RESOURCE_NONE -1

typedef struct SpriteSystem {
    enum HeapId heapId;
    int spriteManagerCount;
    BOOL inUse;
    NNSG2dCellTransferState *cellTransferStates;
    G2dRenderer renderer;
} SpriteSystem;

typedef struct SpriteManager {
    CellActorCollection *sprites;
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
void SpriteSystem_DeleteSprite(CellActor *sprite);
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
CellActor *SpriteSystem_NewSpriteFromResourceHeader(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplateFromResourceHeader *template);
BOOL SpriteSystem_InitManagerWithCapacities(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteResourceCapacities *capacities);
BOOL SpriteSystem_LoadCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
s8 SpriteSystem_LoadPlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
s8 SpriteSystem_LoadPlttResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
u8 SpriteSystem_LoadPaletteBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCellResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadAnimResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID);
BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);
CellActorData *SpriteSystem_NewSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplate *template);
const NNSG2dImagePaletteProxy *SpriteManager_FindPlttResourceProxy(SpriteManager *spriteMan, int resourceID);
u32 SpriteManager_FindPlttResourceOffset(SpriteManager *spriteMan, int resourceID, enum NNS_G2D_VRAM_TYPE vramType);
BOOL SpriteManager_UnloadCharObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadPlttObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadCellObjById(SpriteManager *spriteMan, int resourceID);
BOOL SpriteManager_UnloadAnimObjById(SpriteManager *spriteMan, int resourceID);
void SpriteSystem_FreeResourcesAndManager(SpriteSystem *spriteSys, SpriteManager *spriteMan);
void Sprite_DeleteAndFreeResources(CellActorData *managedSprite);
void Sprite_TickFrame(CellActor *sprite);
void Sprite_TickOneFrame(CellActorData *managedSprite);
void Sprite_TickTwoFrame(CellActorData *managedSprite);
void Sprite_TickNFrames(CellActorData *managedSprite, fx32 frames);
u32 Sprite_GetNumFrames(CellActorData *managedSprite);
void Sprite_SetAnim(CellActorData *managedSprite, u32 animID);
void Sprite_SetAnimNoRestart(CellActorData *managedSprite, u32 animID);
u32 Sprite_GetActiveAnim(CellActorData *managedSprite);
void Sprite_SetAnimateFlag(CellActorData *managedSprite, BOOL animate);
void Sprite_SetAnimationSpeed(CellActorData *managedSprite, fx32 speed);
BOOL Sprite_IsAnimated(CellActorData *managedSprite);
void Sprite_SetAnimationFrame(CellActorData *managedSprite, u16 frame);
u16 Sprite_GetAnimationFrame(CellActorData *managedSprite);
void Sprite_SetDrawFlag(CellActor *sprite, BOOL draw);
void Sprite_SetDrawFlag2(CellActorData *managedSprite, BOOL draw);
int Sprite_GetDrawFlag(CellActor *sprite);
int Sprite_GetDrawFlag2(CellActorData *managedSprite);
void Sprite_SetExplicitPalette(CellActor *sprite, int palette);
void Sprite_SetExplicitPalette2(CellActorData *managedSprite, int palette);
void Sprite_SetExplicitPaletteOffset(CellActorData *managedSprite, int paletteOffset);
int Sprite_GetExplicitPaletteOffset(CellActorData *managedSprite);
int Sprite_GetExplicitPriority(CellActorData *managedSprite);
void Sprite_SetExplicitPriority(CellActorData *managedSprite, int priority);
void Sprite_SetPriority(CellActorData *managedSprite, int priority);
u32 Sprite_GetPriority(CellActorData *managedSprite);
void Sprite_SetPositionXY(CellActor *sprite, s16 x, s16 y);
void Sprite_SetPositionXY2(CellActorData *managedSprite, s16 x, s16 y);
void Sprite_SetPositionXYWithSubscreenOffset(CellActor *sprite, s16 x, s16 y, fx32 offset);
void Sprite_SetPositionXYWithSubscreenOffset2(CellActorData *managedSprite, s16 x, s16 y, fx32 offset);
void Sprite_GetPositionXY(CellActor *sprite, s16 *outX, s16 *outY);
void Sprite_GetPositionXY2(CellActorData *managedSprite, s16 *outX, s16 *outY);
void Sprite_GetPositionXYWithSubscreenOffset(CellActor *sprite, s16 *outX, s16 *outY, fx32 offset);
void Sprite_GetPositionXYWithSubscreenOffset2(CellActorData *managedSprite, s16 *outX, s16 *outY, fx32 offset);
void Sprite_OffsetPositionXY(CellActor *sprite, s16 x, s16 y);
void Sprite_OffsetPositionXY2(CellActorData *managedSprite, s16 x, s16 y);
void Sprite_OffsetPositionFxXY(CellActorData *managedSprite, fx32 x, fx32 y);
void Sprite_SetPositionFxXY(CellActorData *managedSprite, fx32 x, fx32 y);
void Sprite_GetPositionFxXY(CellActorData *managedSprite, fx32 *outX, fx32 *outY);
void Sprite_SetPositionFxXYWithSubscreenOffset(CellActorData *managedSprite, fx32 x, fx32 y, fx32 offset);
void Sprite_GetPositionFxXYWithSubscreenOffset(CellActorData *managedSprite, fx32 *outX, fx32 *outY, fx32 offset);
void Sprite_SetAffineOverwriteMode(CellActorData *managedSprite, enum AffineOverwriteMode mode);
void Sprite_SetAffineScale(CellActorData *managedSprite, f32 xScale, f32 yScale);
void Sprite_OffsetAffineScale(CellActorData *managedSprite, f32 xScale, f32 yScale);
void Sprite_GetAffineScale(CellActorData *managedSprite, f32 *outXScale, f32 *outYScale);
void Sprite_SetAffineZRotation(CellActorData *managedSprite, u16 angle);
void Sprite_OffsetAffineZRotation(CellActorData *managedSprite, s32 offset);
void Sprite_SetFlipMode(CellActor *sprite, BOOL mode);
void Sprite_SetFlipMode2(CellActorData *managedSprite, BOOL mode);
void Sprite_SetAffineTranslation(CellActorData *managedSprite, s16 x, s16 y);
void Sprite_SetPixelated(CellActorData *managedSprite, BOOL pixelated);
void Sprite_SetExplicitOamMode(CellActor *sprite, GXOamMode mode);
void Sprite_SetExplicitOamMode2(CellActorData *managedSprite, GXOamMode mode);
u32 Sprite_SetUserAttrForCurrentAnimFrame(CellActorData *managedSprite);
BOOL SpriteSystem_LoadCharResObjWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
BOOL SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID);
void SpriteSystem_ReplaceCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID);
void SpriteSystem_ReplacePlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID);
CellActorCollection *SpriteManager_GetSpriteList(SpriteManager *spriteMan);
void SpriteSystem_ReplaceCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID);

#endif // POKEPLATINUM_SPRITE_SYSTEM_H
