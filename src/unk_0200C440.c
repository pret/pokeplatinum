#include "unk_0200C440.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "debug.h"
#include "graphics.h"
#include "heap.h"

#define CHARCODE_NUM_ZERO 0xa2
#define CHARCODE_NUM_NINE 0xab

#define BTIMAP_SIZE 0x20

typedef struct UnkStruct_0200C440_t {
    void *unk_00;
    NNSG2dCharacterData *unk_04;
    charcode_t charcodes[16];
    u32 unk_28;
} UnkStruct_0200C440;

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_020E4FEC[] = {
    { 0x140, 0x8 },
    { 0x160, 0x10 },
    { 0x1A0, 0x10 },
    { 0x1E0, 0x10 },
    { 0x220, 0x10 },
    { 0x260, 0x10 },
    { 0x2A0, 0x10 }
};

UnkStruct_0200C440 *sub_0200C440(u32 param0, u32 param1, u32 param2, u32 heapID)
{
    UnkStruct_0200C440 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0200C440));

    if (v0) {
        u32 v1;
        u8 *v2;

        v0->unk_00 = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_FONT, 4, 1, &v0->unk_04, heapID);
        v2 = v0->unk_04->pRawData;

        for (v1 = 0; v1 < v0->unk_04->szByte; v1++) {
            switch (v2[v1]) {
            case 0:
                v2[v1] = (param2 << 4) | (param2);
                break;
            case 1:
                v2[v1] = (param2 << 4) | (param0);
                break;
            case 2:
                v2[v1] = (param2 << 4) | (param1);
                break;
            case 16:
                v2[v1] = (param0 << 4) | (param2);
                break;
            case 17:
                v2[v1] = (param0 << 4) | (param0);
                break;
            case 18:
                v2[v1] = (param0 << 4) | (param1);
                break;
            case 32:
                v2[v1] = (param1 << 4) | (param2);
                break;
            case 33:
                v2[v1] = (param1 << 4) | (param0);
                break;
            case 34:
                v2[v1] = (param1 << 4) | (param1);
                break;
            }
        }

        v0->unk_28 = param2;
    }

    return v0;
}

void sub_0200C560(UnkStruct_0200C440 *param0)
{
    if (param0) {
        if (param0->unk_00) {
            Heap_Free(param0->unk_00);
        }

        Heap_Free(param0);
    }
}

void sub_0200C578(UnkStruct_0200C440 *param0, int param1, Window *param2, u32 param3, u32 param4)
{
    EmulatorLog("sub_0200C578");
    Window_BlitBitmapRect(param2, (u8 *)(param0->unk_04->pRawData) + Unk_020E4FEC[param1].unk_00, 0, 0, Unk_020E4FEC[param1].unk_02, 8, param3, param4, Unk_020E4FEC[param1].unk_02, 8);
}

// SOMETHING to do with drawing party (in a battle)
void sub_0200C5BC(UnkStruct_0200C440 *param0, s32 param1, u32 param2, int param3, Window *param4, u32 param5, u32 param6)
{
    EmulatorLog("sub_0200C5BC");
    int v0;

    CharCode_FromInt(param0->charcodes, param1, param3, param2);

    for (v0 = 0; param0->charcodes[v0] != 0xffff; v0++) {
        if ((param0->charcodes[v0] >= CHARCODE_NUM_ZERO) && (param0->charcodes[v0] <= CHARCODE_NUM_NINE)) {
            Window_BlitBitmapRect(param4, (u8 *)(param0->unk_04->pRawData) + ((param0->charcodes[v0] - CHARCODE_NUM_ZERO) * 0x20), 0, 0, 8, 8, param5, param6, 8, 8);
        } else {
            Window_FillRectWithColor(param4, param0->unk_28, param5, param6, 8, 8);
        }

        param5 += 8;
    }
}

void sub_0200C648(UnkStruct_0200C440 *param0, int param1, s32 param2, u32 param3, int param4, Window *param5, u32 param6, u32 param7)
{
    EmulatorLog("sub_0200C648");
    sub_0200C578(param0, param1, param5, param6, param7);
    sub_0200C5BC(param0, param2, param3, param4, param5, param6 + 16, param7);
}

// something to do with updating local HP values after taking damage
// this DISPLAYS the data from the main window function for the main battle screen
void sub_0200C67C(UnkStruct_0200C440 *param0, s32 displayNum, u32 numDigits, enum PaddingMode paddingMode, void *displayPtr)
{
    EmulatorLog("sub_0200C67C");
    int idx;
    u8 transparent;
    u8 *byteDisplay = displayPtr;
    transparent = param0->unk_28 | (param0->unk_28 << 4);

    // Store the current number (e.g., current HP, max HP, level) as a charcode array
    CharCode_FromInt(param0->charcodes, displayNum, paddingMode, numDigits);

    // Iterate over each charcode until we reach EOS
    for (idx = 0; param0->charcodes[idx] != CHAR_EOS; idx++) {
        if ((param0->charcodes[idx] >= CHARCODE_NUM_ZERO) && (param0->charcodes[idx] <= CHARCODE_NUM_NINE)) {
            // Draw the current charcode based on pixel storage in pRawData
            MI_CpuCopy32((u8 *)(param0->unk_04->pRawData) + ((param0->charcodes[idx] - CHARCODE_NUM_ZERO) * BTIMAP_SIZE), &byteDisplay[idx * BTIMAP_SIZE], BTIMAP_SIZE);
        } else {
            // Fill current number slot with a transparent bitmap
            MI_CpuFill8(&byteDisplay[idx * BTIMAP_SIZE], transparent, BTIMAP_SIZE);
        }
    }
}
