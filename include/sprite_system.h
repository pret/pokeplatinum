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

SpriteSystem *SpriteSystem_Alloc(int param0);
SpriteManager *SpriteManager_New(SpriteSystem *param0);
G2dRenderer *SpriteSystem_GetRenderer(SpriteSystem *param0);
BOOL SpriteSystem_Init(SpriteSystem *param0, const RenderOamTemplate *param1, const CharTransferTemplateWithModes *param2, int param3);
BOOL SpriteSystem_InitSprites(SpriteSystem *param0, SpriteManager *param1, int param2);
void SpriteSystem_DeleteSprite(CellActor *param0);
void SpriteSystem_DrawSprites(SpriteManager *param0);
void SpriteSystem_TransferOam(void);
void SpriteSystem_UpdateTransfer(void);
void SpriteManager_DeleteAllSprites(SpriteManager *param0);
void SpriteManager_FreeResourceHeaders(SpriteManager *param0);
void SpriteManager_FreeResources(SpriteManager *param0);
void SpriteSystem_FreeVramTransfers(SpriteSystem *param0);
void SpriteSystem_FreeSpriteManager(SpriteSystem *param0, SpriteManager *param1);
void SpriteSystem_DestroySpriteManager(SpriteSystem *param0, SpriteManager *param1);
void SpriteSystem_Free(SpriteSystem *param0);
BOOL SpriteSystem_LoadResourceDataFromFilepaths(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceDataPaths *param2);
CellActor *SpriteSystem_NewSpriteFromResourceHeader(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplateFromResourceHeader *param2);
BOOL SpriteSystem_InitManagerWithCapacities(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceCapacities *param2);
BOOL SpriteSystem_LoadCharResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int vram, int resID);
s8 SpriteSystem_LoadPlttResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5, int param6, int param7);
s8 SpriteSystem_LoadPlttResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, int param4, int param5, int param6, int param7);
u8 SpriteSystem_LoadPaletteBuffer(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, int param4, int param5, int param6, int param7, int param8, int param9);
u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(PaletteData *palette, enum PaletteBufferID paletteBuffer, SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int palID, int vram, int resID);
BOOL SpriteSystem_LoadCellResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5);
BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
BOOL SpriteSystem_LoadAnimResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5);
BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
CellActorData *SpriteSystem_NewSprite(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplate *param2);
const NNSG2dImagePaletteProxy *SpriteManager_FindPlttResourceProxy(SpriteManager *param0, int param1);
u32 SpriteManager_FindPlttResourceOffset(SpriteManager *param0, int param1, NNS_G2D_VRAM_TYPE param2);
BOOL SpriteManager_UnloadCharObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadPlttObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadCellObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadAnimObjById(SpriteManager *param0, int param1);
void SpriteSystem_FreeResourcesAndManager(SpriteSystem *param0, SpriteManager *param1);
void Sprite_DeleteAndFreeResources(CellActorData *param0);
void Sprite_TickFrame(CellActor *param0);
void Sprite_TickOneFrame(CellActorData *param0);
void Sprite_TickTwoFrame(CellActorData *param0);
void Sprite_TickNFrames(CellActorData *param0, fx32 param1);
u32 Sprite_GetNumFrames(CellActorData *param0);
void Sprite_SetAnim(CellActorData *param0, u32 param1);
void Sprite_SetAnimNoRestart(CellActorData *param0, u32 param1);
u32 Sprite_GetActiveAnim(CellActorData *param0);
void Sprite_SetAnimateFlag(CellActorData *param0, int param1);
void Sprite_SetAnimationSpeed(CellActorData *param0, fx32 param1);
BOOL Sprite_IsAnimated(CellActorData *param0);
void Sprite_SetAnimationFrame(CellActorData *param0, u16 param1);
u16 Sprite_GetAnimationFrame(CellActorData *param0);
void Sprite_SetDrawFlag(CellActor *param0, int param1);
void Sprite_SetDrawFlag2(CellActorData *param0, int param1);
int Sprite_GetDrawFlag(CellActor *param0);
int Sprite_GetDrawFlag2(CellActorData *param0);
void Sprite_SetExplicitPalette(CellActor *param0, int param1);
void Sprite_SetExplicitPalette2(CellActorData *param0, int param1);
void Sprite_SetExplicitPaletteOffset(CellActorData *param0, int param1);
int Sprite_GetExplicitPaletteOffset(CellActorData *param0);
int Sprite_GetExplicitPriority(CellActorData *param0);
void Sprite_SetExplicitPriority(CellActorData *param0, int param1);
void Sprite_SetPriority(CellActorData *param0, int param1);
u32 Sprite_GetPriority(CellActorData *param0);
void Sprite_SetPositionXY(CellActor *param0, s16 param1, s16 param2);
void Sprite_SetPositionXY2(CellActorData *param0, s16 param1, s16 param2);
void Sprite_SetPositionXYWithSubscreenOffset(CellActor *param0, s16 param1, s16 param2, fx32 param3);
void Sprite_SetPositionXYWithSubscreenOffset2(CellActorData *param0, s16 param1, s16 param2, fx32 param3);
void Sprite_GetPositionXY(CellActor *param0, s16 *param1, s16 *param2);
void Sprite_GetPositionXY2(CellActorData *param0, s16 *param1, s16 *param2);
void Sprite_GetPositionXYWithSubscreenOffset(CellActor *param0, s16 *param1, s16 *param2, fx32 param3);
void Sprite_GetPositionXYWithSubscreenOffset2(CellActorData *param0, s16 *param1, s16 *param2, fx32 param3);
void Sprite_OffsetPositionXY(CellActor *param0, s16 param1, s16 param2);
void Sprite_OffsetPositionXY2(CellActorData *param0, s16 param1, s16 param2);
void Sprite_OffsetPositionFxXY(CellActorData *param0, fx32 param1, fx32 param2);
void Sprite_SetPositionFxXY(CellActorData *param0, fx32 param1, fx32 param2);
void Sprite_GetPositionFxXY(CellActorData *param0, fx32 *param1, fx32 *param2);
void Sprite_SetPositionFxXYWithSubscreenOffset(CellActorData *param0, fx32 param1, fx32 param2, fx32 param3);
void Sprite_GetPositionFxXYWithSubscreenOffset(CellActorData *param0, fx32 *param1, fx32 *param2, fx32 param3);
void Sprite_SetAffineOverwriteMode(CellActorData *param0, int param1);
void Sprite_SetAffineScale(CellActorData *param0, f32 param1, f32 param2);
void Sprite_OffsetAffineScale(CellActorData *param0, f32 param1, f32 param2);
void Sprite_GetAffineScale(CellActorData *param0, f32 *param1, f32 *param2);
void Sprite_SetAffineZRotation(CellActorData *param0, u16 param1);
void Sprite_OffsetAffineZRotation(CellActorData *param0, s32 param1);
void Sprite_SetFlipMode(CellActor *param0, int param1);
void Sprite_SetFlipMode2(CellActorData *param0, int param1);
void Sprite_SetAffineTranslation(CellActorData *param0, s16 param1, s16 param2);
void Sprite_SetPixelated(CellActorData *param0, BOOL param1);
void Sprite_SetExplicitOamMode(CellActor *param0, GXOamMode param1);
void Sprite_SetExplicitOamMode2(CellActorData *param0, GXOamMode param1);
u32 Sprite_SetUserAttrForCurrentAnimFrame(CellActorData *param0);
BOOL SpriteSystem_LoadCharResObjWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5, int param6);
void SpriteSystem_ReplaceCharResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5);
void SpriteSystem_ReplacePlttResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5);
CellActorCollection *SpriteManager_GetSpriteList(SpriteManager *param0);
void SpriteSystem_ReplaceCharResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5);

#endif // POKEPLATINUM_SPRITE_SYSTEM_H
