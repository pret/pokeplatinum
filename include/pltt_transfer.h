#ifndef POKEPLATINUM_PLTT_TRANSFER_H
#define POKEPLATINUM_PLTT_TRANSFER_H

#include <nnsys.h>

typedef struct PlttTransferTaskTemplate {
    NNSG2dPaletteData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u32 plttIndex;
    u32 resourceID;
} PlttTransferTaskTemplate;

void sub_0201F834(int param0, int param1);
void sub_0201F890(u16 param0, u32 param1);
void sub_0201F8B4(void);
void sub_0201F8E4(void);
BOOL sub_0201F90C(const PlttTransferTaskTemplate *param0);
BOOL sub_0201F950(const PlttTransferTaskTemplate *param0);
void sub_0201F990(int param0, NNSG2dPaletteData *param1);
BOOL sub_0201F9DC(int param0);
void sub_0201F9F0(int param0);
void sub_0201FA18(void);
NNSG2dImagePaletteProxy *sub_0201FA58(int param0);
NNSG2dImagePaletteProxy *sub_0201FA80(int param0, NNSG2dImageProxy *param1);
u32 sub_0201FAB4(const NNSG2dImagePaletteProxy *param0, u32 param1);

#endif // POKEPLATINUM_PLTT_TRANSFER_H
