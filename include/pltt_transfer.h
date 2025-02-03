#ifndef POKEPLATINUM_PLTT_TRANSFER_H
#define POKEPLATINUM_PLTT_TRANSFER_H

#include <nnsys.h>

typedef struct PlttTransferTaskTemplate {
    NNSG2dPaletteData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u32 plttIndex;
    u32 resourceID;
} PlttTransferTaskTemplate;

void PlttTransfer_Init(int param0, int param1);
void PlttTransfer_MarkReservedSlots(u16 param0, u32 param1);
void PlttTransfer_Free(void);
void PlttTransfer_Clear(void);
BOOL PlttTransfer_RequestWholeRange(const PlttTransferTaskTemplate *param0);
BOOL PlttTransfer_RequestFreeSpace(const PlttTransferTaskTemplate *param0);
void PlttTransfer_ReplacePlttData(int param0, NNSG2dPaletteData *param1);
BOOL PlttTransfer_HasTask(int param0);
void PlttTransfer_ResetTask(int param0);
void PlttTransfer_ResetAllTasks(void);
NNSG2dImagePaletteProxy *PlttTransfer_GetPaletteProxy(int param0);
NNSG2dImagePaletteProxy *PlttTransfer_ToggleExtPalette(int param0, NNSG2dImageProxy *param1);
u32 PlttTransfer_GetPlttOffset(const NNSG2dImagePaletteProxy *param0, u32 param1);

#endif // POKEPLATINUM_PLTT_TRANSFER_H
