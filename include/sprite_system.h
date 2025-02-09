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

SpriteSystem *sub_0200C6E4(int param0);
SpriteManager *sub_0200C704(SpriteSystem *param0);
G2dRenderer *sub_0200C738(SpriteSystem *param0);
BOOL sub_0200C73C(SpriteSystem *param0, const RenderOamTemplate *param1, const CharTransferTemplateWithModes *param2, int param3);
BOOL sub_0200C7C0(SpriteSystem *param0, SpriteManager *param1, int param2);
void sub_0200C7E4(CellActor *param0);
void sub_0200C7EC(SpriteManager *param0);
void OAMManager_ApplyAndResetBuffers(void);
void sub_0200C808(void);
void sub_0200C810(SpriteManager *param0);
void sub_0200C81C(SpriteManager *param0);
void sub_0200C82C(SpriteManager *param0);
void sub_0200C880(SpriteSystem *param0);
void sub_0200C8A0(SpriteSystem *param0, SpriteManager *param1);
void sub_0200C8B0(SpriteSystem *param0, SpriteManager *param1);
void sub_0200C8D4(SpriteSystem *param0);
BOOL sub_0200C8F0(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceDataPaths *param2);
CellActor *sub_0200CA08(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplateFromResourceHeader *param2);
CellActor *sub_0200CA44(SpriteSystem *param0, SpriteManager *param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13);
BOOL sub_0200CB30(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceCapacities *param2);
BOOL sub_0200CBDC(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int vram, int resID);
s8 sub_0200CC9C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5, int param6, int param7);
s8 sub_0200CD0C(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, int param4, int param5, int param6, int param7);
u8 sub_0200CD7C(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, int param4, int param5, int param6, int param7, int param8, int param9);
u8 SpriteSystem_LoadPalette(PaletteData *palette, enum PaletteBufferID paletteBuffer, SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int palID, int vram, int resID);
BOOL sub_0200CE0C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5);
BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
BOOL sub_0200CE3C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5);
BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *renderer, SpriteManager *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
CellActorData *SpriteActor_LoadResources(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplate *param2);
const NNSG2dImagePaletteProxy *sub_0200D04C(SpriteManager *param0, int param1);
u32 sub_0200D05C(SpriteManager *param0, int param1, NNS_G2D_VRAM_TYPE param2);
BOOL SpriteManager_UnloadCharObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadPlttObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadCellObjById(SpriteManager *param0, int param1);
BOOL SpriteManager_UnloadAnimObjById(SpriteManager *param0, int param1);
void sub_0200D0B0(SpriteSystem *param0, SpriteManager *param1);
void sub_0200D0F4(CellActorData *param0);
void SpriteActor_UpdateObject(CellActor *param0);
void sub_0200D330(CellActorData *param0);
void sub_0200D33C(CellActorData *param0);
void sub_0200D34C(CellActorData *param0, fx32 param1);
u32 sub_0200D358(CellActorData *param0);
void sub_0200D364(CellActorData *param0, u32 param1);
void sub_0200D370(CellActorData *param0, u32 param1);
u32 sub_0200D37C(CellActorData *param0);
void sub_0200D388(CellActor *param0, int param1);
void sub_0200D390(CellActorData *param0, int param1);
void sub_0200D39C(CellActor *param0, fx32 param1);
void sub_0200D3A4(CellActorData *param0, fx32 param1);
BOOL sub_0200D3B0(CellActor *param0);
BOOL sub_0200D3B8(CellActorData *param0);
void sub_0200D3C4(CellActor *param0, u16 param1);
void sub_0200D3CC(CellActorData *param0, u16 param1);
u16 sub_0200D3D8(CellActor *param0);
u16 sub_0200D3E0(CellActorData *param0);
void SpriteActor_DrawSprite(CellActor *param0, int param1);
void SpriteActor_EnableObject(CellActorData *param0, int param1);
int sub_0200D400(CellActor *param0);
int sub_0200D408(CellActorData *param0);
void sub_0200D414(CellActor *param0, int param1);
void sub_0200D41C(CellActorData *param0, int param1);
void sub_0200D428(CellActor *param0, int param1);
void sub_0200D430(CellActorData *param0, int param1);
int sub_0200D43C(CellActorData *param0);
void sub_0200D448(CellActor *param0, int param1);
int sub_0200D454(CellActorData *param0);
void sub_0200D460(CellActorData *param0, int param1);
void sub_0200D46C(CellActor *param0, int param1);
void sub_0200D474(CellActorData *param0, int param1);
u32 sub_0200D480(CellActor *param0);
u32 sub_0200D488(CellActorData *param0);
void SpriteActor_SetPositionXY(CellActor *param0, s16 param1, s16 param2);
void SpriteActor_SetSpritePositionXY(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D4D0(CellActor *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D500(CellActorData *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D50C(CellActor *param0, s16 *param1, s16 *param2);
void SpriteActor_GetSpritePositionXY(CellActorData *param0, s16 *param1, s16 *param2);
void sub_0200D55C(CellActor *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5A0(CellActorData *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5AC(CellActor *param0, s16 param1, s16 param2);
void sub_0200D5DC(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D5E8(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D614(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D638(CellActorData *param0, fx32 *param1, fx32 *param2);
void sub_0200D650(CellActorData *param0, fx32 param1, fx32 param2, fx32 param3);
void sub_0200D67C(CellActorData *param0, fx32 *param1, fx32 *param2, fx32 param3);
void sub_0200D69C(CellActor *param0, int param1);
void sub_0200D6A4(CellActorData *param0, int param1);
void sub_0200D6B0(CellActor *param0, f32 param1, f32 param2);
void sub_0200D6E8(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D6F4(CellActor *param0, f32 param1, f32 param2);
void sub_0200D74C(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D758(CellActor *param0, f32 *param1, f32 *param2);
void sub_0200D788(CellActorData *param0, f32 *param1, f32 *param2);
void sub_0200D794(CellActor *param0, u16 param1);
void sub_0200D79C(CellActorData *param0, u16 param1);
void sub_0200D7A8(CellActor *param0, s32 param1);
void sub_0200D7C0(CellActorData *param0, s32 param1);
void sub_0200D7CC(CellActor *param0, int param1);
void sub_0200D7D4(CellActorData *param0, int param1);
void sub_0200D7E0(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D7FC(CellActorData *param0, BOOL param1);
void sub_0200D808(CellActor *param0, GXOamMode param1);
void SpriteActor_SetOAMMode(CellActorData *param0, GXOamMode param1);
u32 sub_0200D81C(CellActorData *param0);
BOOL sub_0200D828(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D888(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D8E8(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5, int param6);
void sub_0200D948(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5);
void sub_0200D97C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5);
CellActorCollection *sub_0200D9B0(SpriteManager *param0);
void sub_0200D9B4(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5);

#endif // POKEPLATINUM_SPRITE_SYSTEM_H
