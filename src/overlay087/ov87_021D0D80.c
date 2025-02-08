#include "overlay087/ov87_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202DF8C.h"

#include "overlay087/ov87_021D106C.h"
#include "overlay087/struct_ov87_021D106C_decl.h"
#include "overlay087/struct_ov87_021D12C0.h"

#include "heap.h"
#include "overlay_manager.h"
#include "strbuf.h"
#include "system.h"
#include "unk_0202DF8C.h"

typedef struct UnkStruct_ov87_021D0D80_t {
    UnkStruct_ov87_021D12C0 unk_00;
    UnkStruct_ov87_021D106C *unk_C8;
    HallOfFame *unk_CC;
    int unk_D0;
    int unk_D4;
    BOOL unk_D8;
} UnkStruct_ov87_021D0D80;

static void ov87_021D0F38(UnkStruct_ov87_021D0D80 *param0, int param1);
static BOOL ov87_021D0F4C(UnkStruct_ov87_021D0D80 *param0);
static BOOL ov87_021D0F88(UnkStruct_ov87_021D0D80 *param0);
static void ov87_021D0FC4(UnkStruct_ov87_021D12C0 *param0, HallOfFame *param1);
static void ov87_021D1000(UnkStruct_ov87_021D12C0 *param0);
static void ov87_021D101C(UnkStruct_ov87_021D12C0 *param0, HallOfFame *param1, int param2);

int ov87_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov87_021D0D80 *v0;

    Heap_Create(3, 60, 16384);
    Heap_Create(3, 61, 114688);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov87_021D0D80), 60);

    if (v0) {
        v0->unk_CC = OverlayManager_Args(param0);
        v0->unk_D4 = 0;
        v0->unk_D0 = sub_0202E148(v0->unk_CC);

        ov87_021D0FC4(&(v0->unk_00), v0->unk_CC);

        v0->unk_C8 = ov87_021D106C(v0, &(v0->unk_00));
        v0->unk_D8 = ov87_021D11D0(v0->unk_C8, 0);
    }

    return 1;
}

int ov87_021D0DFC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov87_021D0D80 *v0 = OverlayManager_Data(param0);

    ov87_021D1140(v0->unk_C8);
    ov87_021D1000(&(v0->unk_00));
    OverlayManager_FreeData(param0);
    Heap_Destroy(61);
    Heap_Destroy(60);

    return 1;
}

int ov87_021D0E2C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov87_021D0D80 *v0 = OverlayManager_Data(param0);

    if (v0->unk_D8) {
        if (ov87_021D11F8(v0->unk_C8) == 0) {
            return 0;
        }

        v0->unk_D8 = 0;
    }

    switch (*param1) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ov87_021D0F38(v0, 1);
            (*param1)++;
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            v0->unk_00.unk_1C ^= 1;
            ov87_021D0F38(v0, 4);
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            if (ov87_021D0F4C(v0)) {
                ov87_021D0F38(v0, 3);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            if (ov87_021D0F88(v0)) {
                ov87_021D0F38(v0, 3);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_UP) {
            if (--(v0->unk_00.unk_18) < 0) {
                if (ov87_021D0F4C(v0)) {
                    v0->unk_00.unk_18 = v0->unk_00.unk_14 - 1;
                    ov87_021D0F38(v0, 3);
                }
            } else {
                ov87_021D0F38(v0, 2);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            if (++(v0->unk_00.unk_18) >= v0->unk_00.unk_14) {
                if (ov87_021D0F88(v0)) {
                    ov87_021D0F38(v0, 3);
                }
            } else {
                ov87_021D0F38(v0, 2);
            }
            break;
        }
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void ov87_021D0F38(UnkStruct_ov87_021D0D80 *param0, int param1)
{
    param0->unk_D8 = ov87_021D11D0(param0->unk_C8, param1);
}

static BOOL ov87_021D0F4C(UnkStruct_ov87_021D0D80 *param0)
{
    if (++(param0->unk_D4) >= param0->unk_D0) {
        param0->unk_D4 = 0;
    }

    ov87_021D101C(&(param0->unk_00), param0->unk_CC, param0->unk_D4);

    return 1;
}

static BOOL ov87_021D0F88(UnkStruct_ov87_021D0D80 *param0)
{
    if (--(param0->unk_D4) < 0) {
        param0->unk_D4 = param0->unk_D0 - 1;
    }

    ov87_021D101C(&(param0->unk_00), param0->unk_CC, param0->unk_D4);

    return 1;
}

static void ov87_021D0FC4(UnkStruct_ov87_021D12C0 *param0, HallOfFame *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_20[v0].unk_00 = Strbuf_Init(12, 60);
        param0->unk_20[v0].unk_04 = Strbuf_Init(8, 60);
    }

    param0->unk_1C = UnkEnum_ov87_021D12C0_0;

    ov87_021D101C(param0, param1, 0);
}

static void ov87_021D1000(UnkStruct_ov87_021D12C0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Strbuf_Free(param0->unk_20[v0].unk_00);
        Strbuf_Free(param0->unk_20[v0].unk_04);
    }
}

static void ov87_021D101C(UnkStruct_ov87_021D12C0 *param0, HallOfFame *param1, int param2)
{
    int v0;

    param0->unk_00 = sub_0202E174(param1, param2);
    param0->unk_14 = sub_0202E1A8(param1, param2);

    sub_0202E274(param1, param2, &(param0->unk_04));

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        sub_0202E1F4(param1, param2, v0, &(param0->unk_20[v0]));
    }

    param0->unk_18 = 0;
}
