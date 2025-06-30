#include "unk_0209B6F8.h"

#include <nitro.h>
#include <string.h>

#include "functypes/funcptr_0209B988.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0223C2D4.h"
#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"
#include "overlay104/struct_ov104_0223D3B0_sub1.h"
#include "overlay104/struct_ov104_0223D8F0.h"

#include "game_overlay.h"
#include "heap.h"
#include "overlay_manager.h"
#include "system.h"

#include "constdata/const_020F8BE0.h"

FS_EXTERN_OVERLAY(overlay63);
FS_EXTERN_OVERLAY(overlay104);
FS_EXTERN_OVERLAY(overlay105);

typedef struct UnkStruct_0209B75C_t {
    UnkStruct_ov104_02230BE4 *unk_00;
    ApplicationManager *appMan;
    void *unk_08;
    UnkFuncPtr_0209B988 unk_0C;
    u8 unk_10;
    UnkStruct_ov104_022320B4 *unk_14;
    UnkStruct_ov104_0223C4CC *unk_18;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u16 unk_20;
    u8 unk_22;
    UnkStruct_ov104_0223C688 unk_24[24];
    UnkStruct_ov104_0223C634 unk_6C[32];
    UnkStruct_ov104_0223D8F0 unk_78C[32];
    UnkStruct_ov104_0223D3B0 unk_98C;
} UnkStruct_0209B75C;

int sub_0209B6F8(ApplicationManager *appMan, int *param1);
int sub_0209B75C(ApplicationManager *appMan, int *param1);
int sub_0209B8A4(ApplicationManager *appMan, int *param1);
static void sub_0209B8C8(UnkStruct_0209B75C *param0);
static void sub_0209B8D8(UnkStruct_0209B75C *param0);
static void sub_0209B924(void);
static void sub_0209B94C(void);
static void sub_0209B8E8(UnkStruct_0209B75C *param0);

const ApplicationManagerTemplate Unk_020F8BE0 = {
    sub_0209B6F8,
    sub_0209B75C,
    sub_0209B8A4,
    0xffffffff
};

int sub_0209B6F8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209B75C *v0;
    int v1;

    sub_0209B924();

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_0209B75C), HEAP_ID_FIELDMAP);
    MI_CpuClear8(v0, sizeof(UnkStruct_0209B75C));

    sub_0209B8E8(v0);
    sub_0209B9EC(v0);

    v0->unk_00 = ApplicationManager_Args(appMan);
    GF_ASSERT(v0->unk_00 != NULL);

    v0->unk_14 = ov104_0222E63C(v0, HEAP_ID_FIELDMAP, v0->unk_00->unk_24);
    ov104_0222E748(v0->unk_14, v0->unk_00->unk_24, 0);

    sub_0209B8C8(v0);

    return 1;
}

int sub_0209B75C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209B75C *v0 = ApplicationManager_Data(appMan);
    int v1;

    switch (*param1) {
    case 0:
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_22 == 1) {
            *param1 = 2;
            break;
        }

        if (v0->unk_1D == 0) {
            break;
        }

        if (v0->unk_1E == 1) {
            *param1 = 5;
            break;
        }

        if (ov104_0222E6A8(v0->unk_14) == 1) {
            if (gSystem.pressedKeys & PAD_BUTTON_B) {
                *param1 = 2;
            }
        }

        if (v0->appMan != NULL) {
            *param1 = 3;
        }
        break;
    case 2:
        return 1;
    case 3:
        ov104_0223C634(v0->unk_18);
        sub_0209B8D8(v0);
        sub_0209B94C();
        *param1 = 4;
        break;
    case 4:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            ApplicationManager_Free(v0->appMan);
            sub_0209B924();

            if (v0->unk_0C != NULL) {
                v0->unk_0C(v0->unk_08);
            }

            if ((v0->unk_08 != NULL) && (v0->unk_10 == 1)) {
                Heap_FreeToHeap(v0->unk_08);
            }

            v0->appMan = NULL;
            v0->unk_0C = NULL;
            v0->unk_08 = NULL;

            sub_0209B8C8(v0);
            ov104_0223C688(v0->unk_18);
            *param1 = 1;
        }
        break;
    case 5:
        sub_0209B8D8(v0);
        sub_0209B8E8(v0);
        *param1 = 6;
        break;
    case 6:
        sub_0209B8C8(v0);

        if (v0->unk_20 == 0xffff) {
            ov104_0222E86C(v0->unk_14, v0->unk_00->unk_24, HEAP_ID_FIELDMAP);
        } else {
            UnkStruct_ov104_0222E8C8 *v2;

            v2 = ov104_0222E8C8(v0->unk_14, HEAP_ID_FIELDMAP);
            ov104_0222E710(v0->unk_14);

            v0->unk_14 = ov104_0222E63C(v0, HEAP_ID_FIELDMAP, v0->unk_00->unk_24);
            ov104_0222E748(v0->unk_14, v0->unk_00->unk_24, v0->unk_20);
            ov104_0222E8E8(v0->unk_14, v2);
        }

        v0->unk_1E = 0;
        *param1 = 1;
        break;
    }

    return 0;
}

int sub_0209B8A4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209B75C *v0 = ApplicationManager_Data(appMan);

    ov104_0222E710(v0->unk_14);

    sub_0209B8D8(v0);
    ApplicationManager_FreeData(appMan);
    sub_0209B94C();

    return 1;
}

static void sub_0209B8C8(UnkStruct_0209B75C *param0)
{
    param0->unk_18 = ov104_0223C2D4(param0);
    param0->unk_1D = 1;
}

static void sub_0209B8D8(UnkStruct_0209B75C *param0)
{
    ov104_0223C4CC(param0->unk_18);
    param0->unk_1D = 0;
}

static void sub_0209B8E8(UnkStruct_0209B75C *param0)
{
    int v0;

    for (v0 = 0; v0 < 24; v0++) {
        param0->unk_24[v0].unk_00 = 0xffff;
    }

    MI_CpuClear8(param0->unk_6C, sizeof(UnkStruct_ov104_0223C634) * 32);

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_6C[v0].unk_08.unk_04 = 0xffff;
    }
}

static void sub_0209B924(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay105), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);
}

static void sub_0209B94C(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay105));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));
}

UnkStruct_ov104_02230BE4 *sub_0209B970(UnkStruct_0209B75C *param0)
{
    return param0->unk_00;
}

UnkStruct_ov104_0223C4CC *sub_0209B974(UnkStruct_0209B75C *param0)
{
    return param0->unk_18;
}

void *sub_0209B978(UnkStruct_0209B75C *param0)
{
    return param0->unk_00->unk_00;
}

void sub_0209B980(UnkStruct_0209B75C *param0, void *param1)
{
    param0->unk_00->unk_00 = param1;
}

void sub_0209B988(UnkStruct_0209B75C *param0, const ApplicationManagerTemplate *param1, void *param2, int param3, UnkFuncPtr_0209B988 param4)
{
    GF_ASSERT(param0->appMan == NULL);
    param0->appMan = ApplicationManager_New(param1, param2, 11);
    param0->unk_08 = param2;
    param0->unk_10 = param3;
    param0->unk_0C = param4;
}

void sub_0209B9B4(UnkStruct_0209B75C *param0)
{
    param0->unk_22 = 1;
}

void sub_0209B9BC(UnkStruct_0209B75C *param0, u16 param1, u16 param2)
{
    param0->unk_00->unk_24 = param1;
    param0->unk_1E = 1;
    param0->unk_20 = param2;
}

UnkStruct_ov104_0223C688 *sub_0209B9CC(UnkStruct_0209B75C *param0)
{
    return param0->unk_24;
}

UnkStruct_ov104_0223C634 *sub_0209B9D0(UnkStruct_0209B75C *param0)
{
    return param0->unk_6C;
}

UnkStruct_ov104_0223C634 *sub_0209B9D4(UnkStruct_0209B75C *param0, int param1)
{
    return &param0->unk_6C[param1];
}

UnkStruct_ov104_0223D3B0 *sub_0209B9E0(UnkStruct_0209B75C *param0)
{
    return &param0->unk_98C;
}

void sub_0209B9EC(UnkStruct_0209B75C *param0)
{
    int v0;

    MI_CpuClear8(&param0->unk_98C, sizeof(UnkStruct_ov104_0223D3B0_sub1));

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_98C.unk_00[v0] = 0xffff;
    }
}
