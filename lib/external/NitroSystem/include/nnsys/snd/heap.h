#ifndef NNS_SND_HEAP_H_
#define NNS_SND_HEAP_H_

#include <nitro/types.h>
#include <nitro/snd.h>
#include <nnsys/fnd.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_HEAP_INVALID_HANDLE NNS_FND_HEAP_INVALID_HANDLE

struct NNSSndHeap;

typedef void (* NNSSndHeapDisposeCallback)(void * mem, u32 size, u32 data1, u32 data2);
typedef struct NNSSndHeap * NNSSndHeapHandle;

NNSSndHeapHandle NNS_SndHeapCreate(void * startAddress, u32 size);
void NNS_SndHeapDestroy(NNSSndHeapHandle heap);

void * NNS_SndHeapAlloc(NNSSndHeapHandle heap, u32 size, NNSSndHeapDisposeCallback callback, u32 data1, u32 data2);
void NNS_SndHeapClear(NNSSndHeapHandle heap);

int NNS_SndHeapSaveState(NNSSndHeapHandle heap);
void NNS_SndHeapLoadState(NNSSndHeapHandle heap, int level);
int NNS_SndHeapGetCurrentLevel(NNSSndHeapHandle heap);

u32 NNS_SndHeapGetSize(NNSSndHeapHandle heap);
u32 NNS_SndHeapGetFreeSize(NNSSndHeapHandle heap);

#ifdef __cplusplus
}
#endif

#endif
