#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
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
#include "strbuf.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_020241F0.h"

typedef struct {
    int unk_00;
    BGL * unk_04;
    MessageLoader * unk_08;
    int unk_0C;
    Window unk_10;
    int unk_20;
    int unk_24;
} UnkStruct_ov73_021D342C;

void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate * param1);
int ov73_021D3250(OverlayManager * param0, int * param1);
int ov73_021D3280(OverlayManager * param0, int * param1);
int ov73_021D3404(OverlayManager * param0, int * param1);
static void ov73_021D3420(void * param0);
static void ov73_021D342C(UnkStruct_ov73_021D342C * param0);
static void ov73_021D35F4(UnkStruct_ov73_021D342C * param0);
static void ov73_021D366C(UnkStruct_ov73_021D342C * param0);
static void ov73_021D368C(UnkStruct_ov73_021D342C * param0);
static BOOL ov73_021D3698(UnkStruct_ov73_021D342C * param0, int param1, int param2, int param3);
static void ov73_021D37AC(UnkStruct_ov73_021D342C * param0);

int ov73_021D3250 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov73_021D342C * v0;
    int v1 = 83;

    Heap_Create(3, v1, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov73_021D342C), v1);
    memset(v0, 0, sizeof(UnkStruct_ov73_021D342C));

    v0->unk_00 = v1;
    v0->unk_24 = 0;

    return 1;
}

int ov73_021D3280 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov73_021D342C * v0 = OverlayManager_Data(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);

        SetMainCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        ov73_021D342C(v0);
        ov73_021D366C(v0);

        SetMainCallback(ov73_021D3420, (void *)v0);
        GXLayers_TurnBothDispOn();

        {
            u16 * v2 = (u16 *)sub_020241F0();

            sub_020039F8(v2, v2, 0xFFFC, 7, 0x0);
            GX_LoadBGPltt((const void *)v2, 0, 16 * 0x20);
        }

        v0->unk_24 = 2 * 30;
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            sub_02004224(1030);
            sub_02004550(4, 1030, 1);

            v0->unk_24 = 3 * 30;
            *param1 = 2;
        }
        break;
    case 2:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
            *param1 = 3;
        }
        break;
    case 3:
        ov73_021D37AC(v0);

        if (ScreenWipe_Done() == 1) {
            *param1 = 4;
        }
        break;
    case 4:
        ov73_021D37AC(v0);

        if (ov73_021D3698(v0, 0, 5 * 8, 6 * 8) == 1) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 5;
        }
        break;
    case 5:
        ov73_021D37AC(v0);

        if (ScreenWipe_Done() == 1) {
            ov73_021D368C(v0);
            ov73_021D35F4(v0);
            SetMainCallback(NULL, NULL);

            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov73_021D3404 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov73_021D342C * v0 = OverlayManager_Data(param0);
    int v1 = v0->unk_00;

    OverlayManager_FreeData(param0);
    Heap_Destroy(v1);

    return 1;
}

static void ov73_021D3420 (void * param0)
{
    UnkStruct_ov73_021D342C * v0 = param0;
    sub_0201C2B8(v0->unk_04);
}

static void ov73_021D342C (UnkStruct_ov73_021D342C * param0)
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
        param0->unk_04 = sub_02018340(param0->unk_00);
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
        int v2, v3, v4;
        {
            UnkStruct_ov97_0222DB78 v5 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x18000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 2;

            sub_020183C4(param0->unk_04, v2, &v5, 0);
            sub_02019690(v2, 32, 0, param0->unk_00);
            sub_02019EBC(param0->unk_04, v2);
        }
        {
            UnkStruct_ov97_0222DB78 v6 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0800,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 0;
            v3 = 1;
            v4 = 4;

            sub_020183C4(param0->unk_04, v2, &v6, 0);
            sub_02006E3C(136, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(136, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
        {
            UnkStruct_ov97_0222DB78 v7 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 1;
            v3 = 2;
            v4 = 5;

            sub_020183C4(param0->unk_04, v2, &v7, 0);
            sub_02006E3C(136, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(136, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
        {
            UnkStruct_ov97_0222DB78 v8 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x1800,
                GX_BG_CHARBASE_0x20000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 3;
            v3 = 8;
            v4 = 7;

            sub_020183C4(param0->unk_04, v2, &v8, 0);
            sub_02006E3C(136, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(136, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
    }
    sub_02006E84(136, 6, 0, 0, 0, param0->unk_00);
    sub_02006E9C(136, 9, 0, 0x20 * 2, 0x20 * 2, 0x20 * 14, param0->unk_00);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->unk_00);
    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void ov73_021D35F4 (UnkStruct_ov73_021D342C * param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    G2_BlendNone();

    sub_02019044(param0->unk_04, 3);
    sub_02019044(param0->unk_04, 1);
    sub_02019044(param0->unk_04, 0);
    sub_02019044(param0->unk_04, 2);
    Heap_FreeToHeap(param0->unk_04);
}

static void ov73_021D366C (UnkStruct_ov73_021D342C * param0)
{
    param0->unk_08 = MessageLoader_Init(1, 26, 607, param0->unk_00);

    Text_ResetAllPrinters();
    param0->unk_0C = 0;
}

static void ov73_021D368C (UnkStruct_ov73_021D342C * param0)
{
    MessageLoader_Free(param0->unk_08);
}

static const UnkStruct_ov61_0222C884 Unk_ov72_021D3A38 = {
    0x2,
    0x0,
    0x0,
    0x20,
    0x18,
    0x1,
    0x1
};

// clang-format off
asm static BOOL ov73_021D3698 (UnkStruct_ov73_021D342C * param0, int param1, int param2, int param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r4, r0, #0
    ldr r0, [r4, #0xc]
    add r7, r1, #0
    mov r6, #0
    cmp r0, #3
    bhi _021D3798
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
 _021D36B4:
    dcd 0xa00006
    dcd 0xcc00b2
 _021D36BC:
    mov r0, #2
    add r1, r6, #0
    bl sub_02019120
    mov r0, #1
    ldr r1, [r4, #0]
    lsl r0, r0, #0xa
    bl Strbuf_Init
    add r5, r0, #0
    ldr r0, [r4, #8]
    add r1, r7, #0
    add r2, r5, #0
    bl MessageLoader_GetStrbuf
    add r1, r4, #0
    ldr r0, [r4, #4]
    ldr r2, = Unk_ov72_021D3A38
    add r1, #0x10
    bl sub_0201A8D4
    add r1, r6, #0
    mov r0, #1
    lsl r0, r0, #8
    str r0, [sp]
    mov r0, #0xc0
    str r0, [sp, #4]
    add r0, r4, #0
    add r0, #0x10
    add r2, r1, #0
    add r3, r1, #0
    bl BGL_WindowColor
    add r0, r6, #0
    add r1, r5, #0
    add r2, r0, #0
    bl Font_CalcMaxLineWidth
    mov r1, #1
    lsl r1, r1, #8
    sub r0, r1, r0
    lsr r7, r0, #1
    add r0, r5, #0
    bl Strbuf_NumLines
    lsl r1, r0, #4
    mov r0, #0xc0
    sub r0, r0, r1
    lsr r0, r0, #1
    str r0, [sp]
    add r1, r6, #0
    ldr r0, = 0xF0200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r4, #0
    add r0, #0x10
    add r2, r5, #0
    add r3, r7, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    add r0, r5, #0
    bl Strbuf_Free
    add r0, r4, #0
    add r0, #0x10
    bl sub_0201A954
    mov r0, #2
    mov r1, #1
    bl sub_02019120
    mov r0, #0xf0
    str r0, [r4, #0x24]
    mov r0, #1
    str r0, [r4, #0xc]
    b _021D3798
 _021D3756:
    ldr r0, [r4, #0x24]
    cmp r0, #0
    beq _021D3762
    sub r0, r0, #1
    str r0, [r4, #0x24]
    b _021D3798
 _021D3762:
    mov r0, #2
    str r0, [r4, #0xc]
    b _021D3798
 _021D3768:
    ldr r0, = gCoreSys
    ldr r1, [r0, #0x48]
    mov r0, #1
    and r0, r1
    cmp r0, #1
    beq _021D377C
    mov r0, #2
    and r0, r1
    cmp r0, #2
    bne _021D3798
 _021D377C:
    mov r0, #3
    str r0, [r4, #0xc]
    b _021D3798
 _021D3782:
    add r0, r4, #0
    add r0, #0x10
    bl BGL_DeleteWindow
    ldr r0, [r4, #4]
    mov r1, #2
    bl sub_02019EBC
    add r0, r6, #0
    str r0, [r4, #0xc]
    mov r6, #1
 _021D3798:
    add r0, r6, #0
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

static void ov73_021D37AC (UnkStruct_ov73_021D342C * param0)
{
    param0->unk_20 += 0x4;
    sub_02019184(param0->unk_04, 1, 3, param0->unk_20 >> 4);
}
