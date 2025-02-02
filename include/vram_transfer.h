#ifndef POKEPLATINUM_VRAM_TRANSFER_H
#define POKEPLATINUM_VRAM_TRANSFER_H

void VRAMTransferManager_New(u32 param0, int param1);
void VRAMTransferManager_Destroy(void);
BOOL sub_0201DC68(NNS_GFD_DST_TYPE param0, u32 param1, void *param2, u32 param3);
void sub_0201DCAC(void);

#endif // POKEPLATINUM_VRAM_TRANSFER_H
