#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02000C88.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

FS_EXTERN_OVERLAY(overlay77);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    Strbuf *unk_10;
    BGL *unk_14;
    MessageLoader *unk_18;
    Window unk_1C;
    UIControlData *unk_2C;
    SaveData *unk_30;
    void *unk_34;
} UnkStruct_02099DFC;

void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate *param1);
int sub_02099DFC(OverlayManager *param0, int *param1);
int sub_02099E38(OverlayManager *param0, int *param1);
int sub_02099F54(OverlayManager *param0, int *param1);
static void sub_02099F74(void *param0);
static void sub_02099F80(UnkStruct_02099DFC *param0);
static void sub_0209A044(UnkStruct_02099DFC *param0);
static void sub_0209A098(UnkStruct_02099DFC *param0);
static void sub_0209A0E0(UnkStruct_02099DFC *param0);
static BOOL sub_0209A0F4(UnkStruct_02099DFC *param0);
static BOOL sub_0209A200(UnkStruct_02099DFC *param0, u32 param1, int param2, int param3);

extern const OverlayManagerTemplate Unk_ov77_021D742C;

const OverlayManagerTemplate Unk_020F8A48 = {
    sub_02099DFC,
    sub_02099E38,
    sub_02099F54,
    0xFFFFFFFF
};

static const UnkStruct_ov61_0222C884 Unk_020F89E4 = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x1,
    0x16D
};

static const UnkStruct_ov61_0222C884 Unk_020F89EC = {
    0x0,
    0x19,
    0xD,
    0x6,
    0x4,
    0x1,
    0x155
};

int sub_02099DFC(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0;
    int v1 = 88;

    Heap_Create(3, v1, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_02099DFC), v1);
    memset(v0, 0, sizeof(UnkStruct_02099DFC));

    v0->unk_00 = v1;
    v0->unk_04 = 0;
    v0->unk_30 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;

    return 1;
}

int sub_02099E38(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0 = OverlayManager_Data(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        sub_020055D0(1173, 0);
        sub_020053CC(0);
        sub_02004234(0);
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetMainCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetAutorepeat(4, 8);
        sub_02099F80(v0);
        sub_0209A098(v0);
        SetMainCallback(sub_02099F74, (void *)v0);
        GXLayers_TurnBothDispOn();
        sub_0200F174(0, 1, 1, 0, 6, 1, v0->unk_00);
        *param1 = 1;
        break;
    case 1:
        if (ScreenWipe_Done() == TRUE) {
            *param1 = 2;
        }
        break;
    case 2:
        if (sub_0209A0F4(v0) == TRUE) {
            sub_0200F174(0, 0, 0, 0, 6, 1, v0->unk_00);
            *param1 = 3;
        }
        break;
    case 3:
        if (ScreenWipe_Done() == TRUE) {
            sub_0209A0E0(v0);
            sub_0209A044(v0);
            SetMainCallback(NULL, NULL);
            v1 = 1;
        }
        break;
    }

    return v1;
}

int sub_02099F54(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0 = OverlayManager_Data(param0);
    int v1 = v0->unk_00;

    OverlayManager_FreeData(param0);
    Heap_Destroy(v1);
    OS_ResetSystem(0);

    return 1;
}

static void sub_02099F74(void *param0)
{
    UnkStruct_02099DFC *v0 = param0;
    sub_0201C2B8(v0->unk_14);
}

static void sub_02099F80(UnkStruct_02099DFC *param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_AB,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_NONE,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };
        GXLayers_SetBanks(&v0);
    }
    {
        param0->unk_14 = sub_02018340(param0->unk_00);
    }
    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };
        sub_02018368(&v1);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0
        };
        sub_020183C4(param0->unk_14, 0, &v2, 0);
        sub_02019EBC(param0->unk_14, 0);
    }

    sub_0200DD0C(param0->unk_14, 0, (512 - (18 + 12)), 2, 0, param0->unk_00);
    sub_0200DAA4(param0->unk_14, 0, 512 - (18 + 12) - 9, 3, 0, param0->unk_00);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->unk_00);
    sub_02019690(0, 32, 0, param0->unk_00);
    sub_0201975C(0, 0x6c21);
    sub_0201975C(4, 0x6c21);
}

static void sub_0209A044(UnkStruct_02099DFC *param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);
    sub_02019044(param0->unk_14, 0);
    Heap_FreeToHeap(param0->unk_14);
}

static void sub_0209A098(UnkStruct_02099DFC *param0)
{
    param0->unk_18 = MessageLoader_Init(1, 26, 4, param0->unk_00);
    Text_ResetAllPrinters();
    param0->unk_08 = 0;
    sub_0201A8D4(param0->unk_14, &param0->unk_1C, &Unk_020F89E4);
    BGL_WindowColor(&param0->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
}

static void sub_0209A0E0(UnkStruct_02099DFC *param0)
{
    BGL_DeleteWindow(&param0->unk_1C);
    MessageLoader_Free(param0->unk_18);
}

static BOOL sub_0209A0F4(UnkStruct_02099DFC *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_04) {
    case 0:
        if (sub_0209A200(param0, 0, 1, 4) == TRUE) {
            param0->unk_2C = sub_02002054(param0->unk_14, &Unk_020F89EC, 512 - (18 + 12) - 9, 3, 1, param0->unk_00);
            param0->unk_04 = 1;
        }
        break;
    case 1: {
        u32 v1 = sub_02002114(param0->unk_2C, param0->unk_00);

        switch (v1) {
        case 0:
            param0->unk_04 = 2;
            break;
        case 0xfffffffe:
            param0->unk_04 = 6;
            break;
        }
    } break;
    case 2:
        if (sub_0209A200(param0, 1, 1, 4) == TRUE) {
            param0->unk_2C = sub_02002054(param0->unk_14, &Unk_020F89EC, (512 - (18 + 12)) - 9, 3, 1, param0->unk_00);
            param0->unk_04 = 3;
        }
        break;
    case 3: {
        u32 v2 = sub_02002114(param0->unk_2C, param0->unk_00);

        switch (v2) {
        case 0:
            param0->unk_04 = 4;
            break;
        case 0xfffffffe:
            param0->unk_04 = 6;
            break;
        }
    } break;
    case 4:
        if (sub_0209A200(param0, 2, 1, 0) == TRUE) {
            param0->unk_34 = sub_0200E7FC(&param0->unk_1C, 512 - (18 + 12));
            param0->unk_04 = 5;
        }
        break;
    case 5:
        SaveData_Erase(param0->unk_30);
        DeleteWaitDial(param0->unk_34);
        param0->unk_04 = 6;
        break;
    case 6:
        sub_02019EBC(param0->unk_14, 0);
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL sub_0209A200(UnkStruct_02099DFC *param0, u32 param1, int param2, int param3)
{
    BOOL v0 = 0;

    switch (param0->unk_08) {
    case 0:
        BGL_WindowColor(&param0->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200E060(&param0->unk_1C, 0, 512 - (18 + 12), 2);

        param0->unk_10 = Strbuf_Init(0x400, param0->unk_00);
        MessageLoader_GetStrbuf(param0->unk_18, param1, param0->unk_10);
        param0->unk_0C = Text_AddPrinterWithParams(&param0->unk_1C, FONT_MESSAGE, param0->unk_10, 0, 0, param3, NULL);

        if (param3 == 0) {
            Strbuf_Free(param0->unk_10);
            param0->unk_08++;
        }

        param0->unk_08++;
        break;
    case 1:
        if (!(Text_IsPrinterActive(param0->unk_0C))) {
            Strbuf_Free(param0->unk_10);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((param2 != 0) || (gCoreSys.pressedKeys & 1)) {
            param0->unk_08 = 0;
            v0 = 1;
        }
    }

    return v0;
}
