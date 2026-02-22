#ifndef POKEPLATINUM_UNK_0202414C_H
#define POKEPLATINUM_UNK_0202414C_H

typedef struct BillboardTexPlttIndex {
    u8 textureIdx;
    u8 plttIdx;
} BillboardTexPlttIndex;

typedef struct BillboardGfxSequence {
    const u16 *startFrame;
    const u8 *textureIdx;
    const u8 *plttIdx;
    u32 seqCount;
} BillboardGfxSequence;

BillboardTexPlttIndex BillboardGfxSequence_GetTexPlttIndexAt(const BillboardGfxSequence *gfxSequence, const u16 index);
void BillboardGfxSequence_SetData(const void *data, BillboardGfxSequence *gfxSequence);

#endif // POKEPLATINUM_UNK_0202414C_H
