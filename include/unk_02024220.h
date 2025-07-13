#ifndef POKEPLATINUM_UNK_02024220_H
#define POKEPLATINUM_UNK_02024220_H

#include "constants/heap.h"
#include "heap.h"

typedef struct G3DPipelineState {
    enum HeapId heapID;
    void *paletteBuffer;
    void *textureBuffer;
} G3DPipelineState;

enum VramManagerType {
    VRAM_MANAGER_TYPE_LINKED_LIST = 0,
    VRAM_MANAGER_TYPE_FRAME,
};

enum TextureVramSize {
    TEXTURE_VRAM_SIZE_128K = 1,
    TEXTURE_VRAM_SIZE_256K,
    TEXTURE_VRAM_SIZE_384K,
    TEXTURE_VRAM_SIZE_512K,
};

enum PaletteVramSize {
    PALETTE_VRAM_SIZE_16K = 1,
    PALETTE_VRAM_SIZE_32K,
    PALETTE_VRAM_SIZE_48K,
    PALETTE_VRAM_SIZE_64K,
    PALETTE_VRAM_SIZE_80K,
    PALETTE_VRAM_SIZE_96K,
};

typedef void (*G3DPipelineSetupCallback)(void);

G3DPipelineState *G3DPipelineState_NewEx(enum HeapId heapID, enum VramManagerType texVramManagerType, enum TextureVramSize texVramSize, enum VramManagerType plttVramManagerType, enum PaletteVramSize plttVramSize, G3DPipelineSetupCallback cb);
void G3DPipelineState_Free(G3DPipelineState *state);

static inline G3DPipelineState *G3DPipelineState_New(enum HeapId heapID, enum TextureVramSize texVramSize, enum PaletteVramSize plttVramSize, G3DPipelineSetupCallback cb)
{
    return G3DPipelineState_NewEx(heapID, VRAM_MANAGER_TYPE_LINKED_LIST, texVramSize, VRAM_MANAGER_TYPE_LINKED_LIST, plttVramSize, cb);
}

#endif // POKEPLATINUM_UNK_02024220_H
