#include "billboard_gfx_sequence.h"

BillboardTexPlttIndex BillboardGfxSequence_GetTexPlttIndexAt(const BillboardGfxSequence *gfxSequence, const u16 index)
{
    int i;
    for (i = 0; i < gfxSequence->seqCount - 1; i++) {
        if (gfxSequence->startFrame[i + 1] > index) {
            break;
        }
    }

    BillboardTexPlttIndex outIndexes;
    outIndexes.textureIdx = gfxSequence->textureIdx[i];
    outIndexes.plttIdx = gfxSequence->plttIdx[i];

    return outIndexes;
}

void BillboardGfxSequence_SetData(const void *data, BillboardGfxSequence *gfxSequence)
{
    const u8 *u8DataPtr = data;
    gfxSequence->seqCount = *((u32 *)u8DataPtr);

    u8DataPtr += sizeof(u32);
    gfxSequence->startFrame = (u16 *)u8DataPtr;

    u8DataPtr += sizeof(u16) * gfxSequence->seqCount;
    gfxSequence->textureIdx = u8DataPtr;

    u8DataPtr += sizeof(u8) * gfxSequence->seqCount;
    gfxSequence->plttIdx = u8DataPtr;
}
