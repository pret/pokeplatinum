#ifndef POKEPLATINUM_CHAR_TRANSFER_H
#define POKEPLATINUM_CHAR_TRANSFER_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "constants/heap.h"

typedef struct CharTransferTemplate {
    int maxTasks;
    int sizeMain;
    int sizeSub;
    enum HeapId heapID;
} CharTransferTemplate;

typedef struct CharTransferTaskTemplate {
    NNSG2dCharacterData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u32 resourceID;
    BOOL atEnd;
} CharTransferTaskTemplate;

typedef struct CharTransferAllocation {
    u32 size;
    u32 offset;
    u16 vramType;
    u16 atEnd;
} CharTransferAllocation;

void CharTransfer_Init(const CharTransferTemplate *template);
void CharTransfer_InitWithVramModes(const CharTransferTemplate *template, GXOBJVRamModeChar modeMain, GXOBJVRamModeChar modeSub);
void CharTransfer_Free(void);
void CharTransfer_ClearBuffers(void);
void CharTransfer_ReserveVramRange(u32 offset, u32 size, NNS_G2D_VRAM_TYPE vramType);
BOOL CharTransfer_Request(const CharTransferTaskTemplate *template);
BOOL CharTransfer_RequestWithHardwareMappingType(const CharTransferTaskTemplate *template);
BOOL CharTransfer_HasTask(int resourceID);
void CharTransfer_ReplaceCharData(int resourceID, NNSG2dCharacterData *data);
void CharTransfer_ResetTask(int resourceID);
void CharTransfer_ResetAllTasks(void);
NNSG2dImageProxy *CharTransfer_GetImageProxy(int resourceID);
NNSG2dImageProxy *CharTransfer_ResizeTaskRange(int resourceID, u32 size);
NNSG2dImageProxy *CharTransfer_CopyTask(const NNSG2dImageProxy *imageProxy);
void CharTransfer_DeleteTask(const NNSG2dImageProxy *imageProxy);
BOOL CharTransfer_AllocRange(int size, BOOL atEnd, NNS_G2D_VRAM_TYPE vramType, CharTransferAllocation *allocation);
void CharTransfer_ClearRange(CharTransferAllocation *allocation);
void *CharTransfer_PopTaskManager(void);
void CharTransfer_PushTaskManager(void *manager);
int CharTransfer_GetBlockSize(GXOBJVRamModeChar vramMode);

#endif // POKEPLATINUM_CHAR_TRANSFER_H
