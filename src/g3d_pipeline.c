#include "g3d_pipeline.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>

#include "constants/graphics.h"

#include "gx_layers.h"
#include "heap.h"

#define TEXTURE_VRAM_BLOCK_SIZE 0x20000
#define PALETTE_VRAM_BLOCK_SIZE 0x2000

static void SetupDefaultPipelineState(void);

G3DPipelineBuffers *G3DPipeline_InitEx(enum HeapId heapID, enum VramManagerType texVramManagerType, enum TextureVramSize texVramSize, enum VramManagerType plttVramManagerType, enum PaletteVramSize plttVramSize, G3DPipelineSetupCallback cb)
{
    G3DPipelineBuffers *buffers = Heap_AllocFromHeap(heapID, sizeof(G3DPipelineBuffers));
    buffers->heapID = heapID;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);

    if (texVramManagerType == VRAM_MANAGER_TYPE_LINKED_LIST) {
        int bufferSize = NNS_GfdGetLnkTexVramManagerWorkSize(128 * texVramSize);
        buffers->textureBuffer = Heap_AllocFromHeap(buffers->heapID, bufferSize);
        NNS_GfdInitLnkTexVramManager(texVramSize * TEXTURE_VRAM_BLOCK_SIZE, 0, buffers->textureBuffer, bufferSize, TRUE);
    } else {
        NNS_GfdInitFrmTexVramManager(texVramSize, TRUE);
    }

    if (plttVramManagerType == VRAM_MANAGER_TYPE_LINKED_LIST) {
        int bufferSize = NNS_GfdGetLnkPlttVramManagerWorkSize(256 * plttVramSize);
        buffers->paletteBuffer = Heap_AllocFromHeap(buffers->heapID, bufferSize);
        NNS_GfdInitLnkPlttVramManager(plttVramSize * PALETTE_VRAM_BLOCK_SIZE, buffers->paletteBuffer, bufferSize, TRUE);
    } else {
        // BUG: This should be NNS_GfdInitFrmPlttVramManager
        NNS_GfdInitFrmTexVramManager(plttVramSize * PALETTE_VRAM_BLOCK_SIZE, TRUE);
    }

    if (cb != NULL) {
        cb();
    } else {
        SetupDefaultPipelineState();
    }

    return buffers;
}

void G3DPipelineBuffers_Free(G3DPipelineBuffers *state)
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
    G3X_SetClearColor(COLOR_BLACK, 0, G3X_DEPTH_MAX, 63, FALSE);
    G3_ViewPort(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);
}
