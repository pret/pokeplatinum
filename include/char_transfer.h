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

void CharTransfer_Init(const CharTransferTemplate *param0);
void CharTransfer_InitWithVramModes(const CharTransferTemplate *param0, GXOBJVRamModeChar param1, GXOBJVRamModeChar param2);
void CharTransfer_Free(void);
void CharTransfer_ClearBuffers(void);
void CharTransfer_ReserveVramRange(u32 param0, u32 param1, u32 param2);
BOOL CharTransfer_Request(const CharTransferTaskTemplate *param0);
BOOL CharTransfer_RequestWithHardwareMappingType(const CharTransferTaskTemplate *param0);
BOOL CharTransfer_HasTask(int param0);
void CharTransfer_ReplaceCharData(int param0, NNSG2dCharacterData *param1);
void CharTransfer_ResetTask(int param0);
void CharTransfer_ResetAllTasks(void);
NNSG2dImageProxy *CharTransfer_GetImageProxy(int param0);
NNSG2dImageProxy *CharTransfer_ResizeTaskRange(int param0, u32 param1);
NNSG2dImageProxy *CharTransfer_CopyTask(const NNSG2dImageProxy *param0);
void CharTransfer_DeleteTask(const NNSG2dImageProxy *param0);
BOOL CharTransfer_AllocRange(int param0, int param1, int param2, CharTransferAllocation *param3);
void CharTransfer_ClearRange(CharTransferAllocation *param0);
void *CharTransfer_PopTaskManager(void);
void CharTransfer_PushTaskManager(void *param0);
int CharTransfer_GetBlockSize(int param0);

#endif // POKEPLATINUM_CHAR_TRANSFER_H
