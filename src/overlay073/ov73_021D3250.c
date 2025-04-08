#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "system.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "strbuf.h"
#include "text.h"
#include "sound.h"
#include "unk_0200F174.h"
#include "system.h"

typedef struct {
    int heapID;
    BgConfig *unk_04;
    MessageLoader * unk_08;
    int unk_0C;
    Window unk_10;
    int unk_20;
    int unk_24;
} UnkStruct_ov73_021D342C;

void EnqueueApplication(FSOverlayID param0, const OverlayManagerTemplate *param1);
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
    int heapID = HEAP_ID_83;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov73_021D342C), heapID);
    memset(v0, 0, sizeof(UnkStruct_ov73_021D342C));

    v0->heapID = heapID;
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

        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        ov73_021D342C(v0);
        ov73_021D366C(v0);

        SetVBlankCallback(ov73_021D3420, (void *)v0);
        GXLayers_TurnBothDispOn();

        {
            u16 *v2 = (u16 *)GetHardwareMainBgPaletteAddress();

            BlendPalettes(v2, v2, 0xFFFC, 7, 0x0);
            GX_LoadBGPltt((const void *)v2, 0, 16 * 0x20);
        }

        v0->unk_24 = 2 * 30;
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            Sound_SetFieldBGM(SEQ_TV_HOUSOU);
            Sound_SetSceneAndPlayBGM(4, 1030, 1);

            v0->unk_24 = 3 * 30;
            *param1 = 2;
        }
        break;
    case 2:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            StartScreenTransition(0, 1, 1, 0x0, 6, 1, v0->heapID);
            *param1 = 3;
        }
        break;
    case 3:
        ov73_021D37AC(v0);

        if (IsScreenTransitionDone() == 1) {
            *param1 = 4;
        }
        break;
    case 4:
        ov73_021D37AC(v0);

        if (ov73_021D3698(v0, 0, 5 * 8, 6 * 8) == 1) {
            StartScreenTransition(0, 0, 0, 0x0, 6, 1, v0->heapID);
            *param1 = 5;
        }
        break;
    case 5:
        ov73_021D37AC(v0);

        if (IsScreenTransitionDone() == 1) {
            ov73_021D368C(v0);
            ov73_021D35F4(v0);
            SetVBlankCallback(NULL, NULL);

            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov73_021D3404 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov73_021D342C * v0 = OverlayManager_Data(param0);
    int heapID = v0->heapID;

    OverlayManager_FreeData(param0);
    Heap_Destroy(heapID);

    return 1;
}

static void ov73_021D3420 (void * param0)
{
    UnkStruct_ov73_021D342C * v0 = param0;
    Bg_RunScheduledUpdates(v0->unk_04);
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
        param0->unk_04 = BgConfig_New(param0->heapID);
    }
    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v1);
    }
    {
        int v2, v3, v4;
        {
            BgTemplate v5 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v5, 0);
            Bg_ClearTilesRange(v2, 32, 0, param0->heapID);
            Bg_ClearTilemap(param0->unk_04, v2);
        }
        {
            BgTemplate v6 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v6, 0);
            Graphics_LoadTilesToBgLayer(136, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(136, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
        {
            BgTemplate v7 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v7, 0);
            Graphics_LoadTilesToBgLayer(136, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(136, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
        {
            BgTemplate v8 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v8, 0);
            Graphics_LoadTilesToBgLayer(136, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(136, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
    }
    Graphics_LoadPalette(136, 6, 0, 0, 0, param0->heapID);
    Graphics_LoadPaletteWithSrcOffset(136, 9, 0, 0x20 * 2, 0x20 * 2, 0x20 * 14, param0->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->heapID);
    Bg_MaskPalette(0, 0x0);
    Bg_MaskPalette(4, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void ov73_021D35F4 (UnkStruct_ov73_021D342C * param0)
{
    Bg_ToggleLayer(0, 0);
    Bg_ToggleLayer(1, 0);
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
    Bg_ToggleLayer(4, 0);
    Bg_ToggleLayer(5, 0);
    Bg_ToggleLayer(6, 0);
    Bg_ToggleLayer(7, 0);

    G2_BlendNone();

    Bg_FreeTilemapBuffer(param0->unk_04, 3);
    Bg_FreeTilemapBuffer(param0->unk_04, 1);
    Bg_FreeTilemapBuffer(param0->unk_04, 0);
    Bg_FreeTilemapBuffer(param0->unk_04, 2);
    Heap_FreeToHeap(param0->unk_04);
}

static void ov73_021D366C (UnkStruct_ov73_021D342C * param0)
{
    param0->unk_08 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0607, param0->heapID);

    Text_ResetAllPrinters();
    param0->unk_0C = 0;
}

static void ov73_021D368C (UnkStruct_ov73_021D342C * param0)
{
    MessageLoader_Free(param0->unk_08);
}

static const WindowTemplate Unk_ov72_021D3A38 = {
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
    bl Bg_ToggleLayer
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
    bl Window_AddFromTemplate
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
    bl Window_FillRectWithColor
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
    bl Window_CopyToVRAM
    mov r0, #2
    mov r1, #1
    bl Bg_ToggleLayer
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
    ldr r0, = gSystem
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
    bl Window_Remove
    ldr r0, [r4, #4]
    mov r1, #2
    bl Bg_ClearTilemap
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
    Bg_SetOffset(param0->unk_04, 1, 3, param0->unk_20 >> 4);
}
