#include "unk_02024220.h"

#include <nitro.h>

#include "constants/graphics.h"
#include "gx_layers.h"
#include "heap.h"

#define TEXTURE_VRAM_BLOCK_SIZE 0x20000
#define PALETTE_VRAM_BLOCK_SIZE 0x2000

static void SetupDefaultPipelineState(void);

G3DPipelineState *G3DPipelineState_NewEx(enum HeapId heapID, enum VramManagerType texVramManagerType, enum TextureVramSize texVramSize, enum VramManagerType plttVramManagerType, enum PaletteVramSize plttVramSize, G3DPipelineSetupCallback cb)
{
    G3DPipelineState *state = Heap_AllocFromHeap(heapID, sizeof(G3DPipelineState));
    state->heapID = heapID;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);

    if (texVramManagerType == VRAM_MANAGER_TYPE_LINKED_LIST) {
        int bufferSize = NNS_GfdGetLnkTexVramManagerWorkSize(128 * texVramSize);
        state->textureBuffer = Heap_AllocFromHeap(state->heapID, bufferSize);
        NNS_GfdInitLnkTexVramManager(texVramSize * TEXTURE_VRAM_BLOCK_SIZE, 0, state->textureBuffer, bufferSize, TRUE);
    } else {
        NNS_GfdInitFrmTexVramManager(texVramSize, TRUE);
    }

    if (plttVramManagerType == VRAM_MANAGER_TYPE_LINKED_LIST) {
        int bufferSize = NNS_GfdGetLnkPlttVramManagerWorkSize(256 * plttVramSize);
        state->paletteBuffer = Heap_AllocFromHeap(state->heapID, bufferSize);
        NNS_GfdInitLnkPlttVramManager(plttVramSize * PALETTE_VRAM_BLOCK_SIZE, state->paletteBuffer, bufferSize, TRUE);
    } else {
        // BUG: This should be NNS_GfdInitFrmPlttVramManager
        NNS_GfdInitFrmTexVramManager(plttVramSize * PALETTE_VRAM_BLOCK_SIZE, TRUE);
    }

    if (cb != NULL) {
        cb();
    } else {
        SetupDefaultPipelineState();
    }

    return state;
}

void G3DPipelineState_Free(G3DPipelineState *state)
{
    Heap_Free(state->paletteBuffer);
    Heap_Free(state->textureBuffer);
    Heap_Free(state);
}

static void SetupDefaultPipelineState(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(0);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(FALSE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(FALSE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(COLOR_BLACK, 0, 0x7FFF, 63, FALSE);
    G3_ViewPort(0, 0, 255, 191);
}
