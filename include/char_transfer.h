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

void sub_0201E86C(const CharTransferTemplate *param0);
void sub_0201E88C(const CharTransferTemplate *param0, GXOBJVRamModeChar param1, GXOBJVRamModeChar param2);
void sub_0201E958(void);
void sub_0201E994(void);
void sub_0201E9C0(u32 param0, u32 param1, u32 param2);
BOOL sub_0201EA24(const CharTransferTaskTemplate *param0);
BOOL sub_0201EA7C(const CharTransferTaskTemplate *param0);
BOOL sub_0201EAD8(int param0);
void sub_0201EB08(int param0, NNSG2dCharacterData *param1);
void sub_0201EB50(int param0);
void sub_0201EBA0(void);
NNSG2dImageProxy *sub_0201EBDC(int param0);
NNSG2dImageProxy *sub_0201EC00(int param0, u32 param1);
NNSG2dImageProxy *sub_0201EC84(const NNSG2dImageProxy *param0);
void sub_0201ED1C(const NNSG2dImageProxy *param0);
BOOL sub_0201ED94(int param0, int param1, int param2, CharTransferAllocation *param3);
void sub_0201EE28(CharTransferAllocation *param0);
void *sub_0201EE9C(void);
void sub_0201EEB8(void *param0);
void sub_0201F460(void);
int sub_0201F6F4(int param0);

#endif // POKEPLATINUM_CHAR_TRANSFER_H
