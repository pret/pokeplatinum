#ifndef POKEPLATINUM_RENDER_OAM_H
#define POKEPLATINUM_RENDER_OAM_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/screen.h"

void RenderOam_Init(int mainOamStart,
    int mainOamCount,
    int mainAffineOamStart,
    int mainAffineOamCount,
    int subOamStart,
    int subOamCount,
    int subAffineOamStart,
    int subAffineOamCount,
    enum HeapId heapID);
void RenderOam_InitSurface(NNSG2dRenderSurface *surface, NNSG2dViewRect *viewRect, NNSG2dSurfaceType surfaceType, NNSG2dRendererInstance *renderer);

void RenderOam_Transfer(void);
void RenderOam_Free(void);
NNSG2dOamManagerInstance *RenderOam_GetScreenOam(enum DSScreen screen);
void RenderOam_ClearMain(enum HeapId heapID);
void RenderOam_ClearSub(enum HeapId heapID);

#endif // POKEPLATINUM_RENDER_OAM_H
