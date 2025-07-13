#ifndef POKEPLATINUM_UNK_02024220_H
#define POKEPLATINUM_UNK_02024220_H

typedef struct G3DPipelineState {
    int heapID;
    void *unk_04;
    void *unk_08;
} G3DPipelineState;

typedef void (*G3DPipelineSetupCallback)(void);

G3DPipelineState *G3DPipelineState_New(u32 heapID, int param1, int param2, int param3, int param4, G3DPipelineSetupCallback cb);
void G3DPipelineState_Free(G3DPipelineState *state);

#endif // POKEPLATINUM_UNK_02024220_H
