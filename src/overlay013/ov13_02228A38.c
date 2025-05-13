#include "overlay013/ov13_02228A38.h"

#include <nitro.h>
#include <string.h>

#include "battle/ov16_0226DB7C.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "overlay013/struct_ov13_02228A50_decl.h"

#include "cursor_info.h"
#include "heap.h"
#include "sound_playback.h"
#include "system.h"

struct UnkStruct_ov13_02228A50_t {
    UnkStruct_ov16_0226DC24 *unk_00;
    const CursorInfo *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u32 unk_0C;
};

UnkStruct_ov13_02228A50 *ov13_02228A38(u32 heapID)
{
    UnkStruct_ov13_02228A50 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov13_02228A50));
    memset(v0, 0, sizeof(UnkStruct_ov13_02228A50));
    return v0;
}

void ov13_02228A50(UnkStruct_ov13_02228A50 *param0)
{
    Heap_FreeToHeap(param0);
}

UnkStruct_ov16_0226DC24 *ov13_02228A58(UnkStruct_ov13_02228A50 *param0)
{
    return param0->unk_00;
}

u8 ov13_02228A5C(UnkStruct_ov13_02228A50 *param0)
{
    return param0->unk_08;
}

void ov13_02228A60(UnkStruct_ov13_02228A50 *param0, u8 param1)
{
    param0->unk_08 = param1;
}

void ov13_02228A64(UnkStruct_ov13_02228A50 *param0, UnkStruct_ov16_0226DC24 *param1)
{
    param0->unk_00 = param1;
}

void ov13_02228A68(UnkStruct_ov13_02228A50 *param0, u8 param1)
{
    param0->unk_09 = param1;

    if (param0->unk_08 == 1) {
        ov16_0226DD7C(param0->unk_00, param0->unk_04[param0->unk_09].xCoord, param0->unk_04[param0->unk_09].subXCoord, param0->unk_04[param0->unk_09].yCoord, param0->unk_04[param0->unk_09].subYCoord);
    }
}

void ov13_02228A90(UnkStruct_ov13_02228A50 *param0)
{
    param0->unk_09 = 0;
    param0->unk_0A = 0xff;
}

void ov13_02228A9C(UnkStruct_ov13_02228A50 *param0, const CursorInfo *param1)
{
    ov13_02228A90(param0);

    param0->unk_04 = param1;
    param0->unk_0C = 0xffffffff;

    if (param0->unk_08 == 1) {
        ov16_0226DD7C(param0->unk_00, param0->unk_04[0].xCoord, param0->unk_04[0].subXCoord, param0->unk_04[0].yCoord, param0->unk_04[0].subYCoord);
    }
}

void ov13_02228AC8(UnkStruct_ov13_02228A50 *param0, u32 param1)
{
    param0->unk_0C = param1;
}

static u8 ov13_02228ACC(UnkStruct_ov13_02228A50 *param0)
{
    if (param0->unk_08 == 1) {
        return 1;
    }

    if (gSystem.pressedKeys & (PAD_KEY | PAD_BUTTON_B | PAD_BUTTON_A)) {
        param0->unk_08 = 1;

        ov16_0226DD7C(param0->unk_00, param0->unk_04[param0->unk_09].xCoord, param0->unk_04[param0->unk_09].subXCoord, param0->unk_04[param0->unk_09].yCoord, param0->unk_04[param0->unk_09].subYCoord);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 0;
}

static BOOL ov13_02228B18(const CursorInfo *byteFlagSet, u8 direction)
{
    switch (direction) {
    case CURSOR_INFO_DIRECTION_UP:
        if (byteFlagSet->downIndex & 0x80) {
            return TRUE;
        }
        break;
    case CURSOR_INFO_DIRECTION_DOWN:
        if (byteFlagSet->upIndex & 0x80) {
            return TRUE;
        }
        break;
    case CURSOR_INFO_DIRECTION_LEFT:
        if (byteFlagSet->rightIndex & 0x80) {
            return TRUE;
        }
        break;
    case CURSOR_INFO_DIRECTION_RIGHT:
        if (byteFlagSet->leftIndex & 0x80) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

u32 ov13_02228B64(UnkStruct_ov13_02228A50 *param0)
{
    u8 v0, v1, v2, v3;
    u8 v4;
    u8 v5;

    if (ov13_02228ACC(param0) == 0) {
        return 0xffffffff;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        v4 = ReadCursorCoords(param0->unk_04, NULL, NULL, NULL, NULL, param0->unk_09, CURSOR_INFO_DIRECTION_UP);
        v5 = CURSOR_INFO_DIRECTION_UP;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        v4 = ReadCursorCoords(param0->unk_04, NULL, NULL, NULL, NULL, param0->unk_09, CURSOR_INFO_DIRECTION_DOWN);
        v5 = CURSOR_INFO_DIRECTION_DOWN;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        v4 = ReadCursorCoords(param0->unk_04, NULL, NULL, NULL, NULL, param0->unk_09, CURSOR_INFO_DIRECTION_LEFT);
        v5 = CURSOR_INFO_DIRECTION_LEFT;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        v4 = ReadCursorCoords(param0->unk_04, NULL, NULL, NULL, NULL, param0->unk_09, CURSOR_INFO_DIRECTION_RIGHT);
        v5 = CURSOR_INFO_DIRECTION_RIGHT;
    } else {
        v4 = 0xffffffff;
    }

    if (v4 != 0xff) {
        u8 v6 = 1;

        if (v4 & 0x80) {
            if (param0->unk_0A != 0xff) {
                v4 = param0->unk_0A;
            } else {
                v4 ^= 0x80;
            }
        }

        while (TRUE) {
            u8 v7;

            if (param0->unk_0C & (1 << v4)) {
                break;
            }

            v6 = 0;
            v7 = ReadCursorCoords(param0->unk_04, NULL, NULL, NULL, NULL, v4, v5) & (0xff ^ 0x80);

            if ((v7 == v4) || (v7 == param0->unk_09)) {
                v4 = param0->unk_09;
                break;
            }

            v4 = v7;
        }

        if (param0->unk_09 != v4) {
            ReadCursorXYCoords(&param0->unk_04[v4], &v0, &v1);
            ReadCursorSubXYCoords(&param0->unk_04[v4], &v2, &v3);

            if ((ov13_02228B18(&param0->unk_04[v4], v5) == TRUE) && (v6 != 0)) {
                param0->unk_0A = param0->unk_09;
            } else {
                param0->unk_0A = 0xff;
            }

            param0->unk_09 = v4;

            ov16_0226DD7C(param0->unk_00, v0, v2, v1, v3);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        return 0xffffffff;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        return param0->unk_09;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 0xfffffffe;
    }

    return 0xffffffff;
}
