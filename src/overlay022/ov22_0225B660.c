#include "overlay022/ov22_0225B660.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_defs/struct_02041DC8.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay022/ov22_02255094.h"
#include "overlay022/ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225B1BC_decl.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0202419C.h"
#include "unk_020298BC.h"
#include "unk_02094EDC.h"

typedef struct {
    const UnkStruct_02029C68 *unk_00;
    const UnkStruct_02029C88 *unk_04;
    u32 unk_08;
    u32 unk_0C;
    UnkStruct_ov22_0225B1BC *unk_10;
    UnkStruct_ov22_0225A0E4 unk_14;
    CellActor *unk_1FC;
    Window *unk_200;
} UnkStruct_ov22_0225B85C;

static void ov22_0225B848(void *param0);
static void ov22_0225B85C(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225B910(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225B964(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BA00(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BA40(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BAA8(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BAD0(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BB00(UnkStruct_ov22_0225B85C *param0);
static void ov22_0225BC18(UnkStruct_ov22_0225B85C *param0);

int ov22_0225B660(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_0225B85C *v0;
    UnkStruct_02041DC8 *v1;

    Heap_Create(3, 13, 0x20000);
    Heap_Create(3, 14, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov22_0225B85C), 13);
    memset(v0, 0, sizeof(UnkStruct_ov22_0225B85C));

    SetMainCallback(ov22_0225B848, v0);
    DisableHBlank();

    v1 = OverlayManager_Args(param0);

    if (v1->unk_08 == 0) {
        v0->unk_00 = sub_02029CA8(v1->unk_00, v1->unk_04);
    } else {
        v0->unk_04 = sub_02029CD0(v1->unk_00, v1->unk_04);
    }

    v0->unk_08 = v1->unk_04;
    v0->unk_0C = v1->unk_08;

    ov22_02255094();
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
    ov22_022555D4(&v0->unk_14, 14);

    {
        UnkStruct_ov22_0225AF8C v2;

        v2.unk_00 = v0->unk_14.unk_40;
        v2.unk_04 = 72;
        v2.unk_08 = 16;
        v2.unk_0C = 14;

        if (v0->unk_0C == 0) {
            v0->unk_10 = ov22_0225AF8C(&v2, v0->unk_00);
        } else {
            v0->unk_10 = ov22_0225AFB0(&v2, v0->unk_04);
        }
    }

    ov22_0225B85C(v0);
    ov22_0225B910(v0);
    ov22_0225B964(v0);
    ov22_0225BA40(v0);
    ov22_0225BAD0(v0);

    return 1;
}

int ov22_0225B738(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_0225B85C *v0 = OverlayManager_Data(param0);

    {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
        ov22_0225AFF8(v0->unk_10);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    ov22_0225562C(&v0->unk_14);

    switch (*param1) {
    case 0:
        (*param1)++;
        break;
    case 1:
        sub_0200F174(
            0, 5, 1, 0x0, 6, 1, 13);
        (*param1)++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            (*param1)++;
        }
        break;
    case 3:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            (*param1)++;
        }
        break;
    case 4:
        sub_0200F174(0, 2, 0, 0x0, 6, 1, 13);
        (*param1)++;
        break;
    case 5:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    }

    return 0;
}

int ov22_0225B7FC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_0225B85C *v0 = OverlayManager_Data(param0);

    ov22_0225B020(v0->unk_10);
    ov22_0225BA00(v0);
    ov22_0225BAA8(v0);
    ov22_022555FC(&v0->unk_14);
    ov22_022550B4();

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    OverlayManager_FreeData(param0);
    Heap_Destroy(13);
    Heap_Destroy(14);

    return 1;
}

static void ov22_0225B848(void *param0)
{
    UnkStruct_ov22_0225B85C *v0 = param0;

    ov22_0225B06C(v0->unk_10);
    ov22_0225561C(&v0->unk_14);
}

static void ov22_0225B85C(UnkStruct_ov22_0225B85C *param0)
{
    void *v0;
    NNSG2dScreenData *v1;
    int v2;
    int v3;

    sub_02007130(param0->unk_14.unk_5C, 126, 0, 3 * 32, 64, 14);
    sub_020070E8(param0->unk_14.unk_5C, 125, param0->unk_14.unk_40, 1, 0, 0, 0, 14);

    if (param0->unk_0C == 0) {
        v2 = 128;
        v3 = 3 + 1;
    } else {
        v2 = 127;
        v3 = 3;
    }

    v0 = sub_020071D0(param0->unk_14.unk_5C, v2, 0, &v1, 14);

    sub_020198C0(param0->unk_14.unk_40, 1, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    sub_02019E2C(param0->unk_14.unk_40, 1, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8, v3);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_14.unk_40, 1);
}

static void ov22_0225B910(UnkStruct_ov22_0225B85C *param0)
{
    sub_02006E84(12, 12, 4, 0, 32, 14);
    sub_02006E60(12, 11, param0->unk_14.unk_40, 4, 0, 0, 1, 14);
    sub_02006E3C(12, 10, param0->unk_14.unk_40, 4, 0, 0, 1, 14);
}

static void ov22_0225B964(UnkStruct_ov22_0225B85C *param0)
{
    ov22_02255248(&param0->unk_14, param0->unk_14.unk_5C, 233, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    ov22_02255268(&param0->unk_14, param0->unk_14.unk_5C, 234, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 6, 1000);
    ov22_0225528C(&param0->unk_14, param0->unk_14.unk_5C, 232, 0, 1000);
    ov22_022552A8(&param0->unk_14, param0->unk_14.unk_5C, 231, 0, 1000);

    param0->unk_1FC = ov22_022551E4(&param0->unk_14, 1000, 0, 144, 100, NNS_G2D_VRAM_TYPE_2DMAIN);

    CellActor_SetExplicitPriority(param0->unk_1FC, 1);
}

static void ov22_0225BA00(UnkStruct_ov22_0225B85C *param0)
{
    ov22_022552C4(&param0->unk_14, 1000);
    ov22_022552D8(&param0->unk_14, 1000);
    ov22_022552EC(&param0->unk_14, 1000);
    ov22_02255300(&param0->unk_14, 1000);
    CellActor_Delete(param0->unk_1FC);
}

static void ov22_0225BA40(UnkStruct_ov22_0225B85C *param0)
{
    param0->unk_200 = sub_0201A778(14, 1);

    BGL_AddWindow(param0->unk_14.unk_40, param0->unk_200, 3, 0, 18, 32, 6, 5, 1);
    Font_LoadTextPalette(0, 5 * 32, 14);
    BGL_SetPriority(3, 0);
    BGL_SetPriority(0, 2);
    BGL_SetPriority(1, 1);
    sub_02019184(param0->unk_14.unk_40, 3, 3, 0);
}

static void ov22_0225BAA8(UnkStruct_ov22_0225B85C *param0)
{
    sub_0201ACF4(param0->unk_200);
    BGL_DeleteWindow(param0->unk_200);
    sub_0201A928(param0->unk_200, 1);
}

static void ov22_0225BAD0(UnkStruct_ov22_0225B85C *param0)
{
    BGL_FillWindow(param0->unk_200, 0);

    if (param0->unk_0C == 0) {
        ov22_0225BB00(param0);
    } else {
        ov22_0225BC18(param0);
    }

    sub_0201A954(param0->unk_200);
}

static void ov22_0225BB00(UnkStruct_ov22_0225B85C *param0)
{
    VecFx32 v0;
    int v1, v2;
    int v3;
    u16 v4;
    StringTemplate *v5;
    Strbuf *v6;
    Strbuf *v7;
    MessageLoader *v8;

    v8 = MessageLoader_Init(0, 26, 385, 13);
    GF_ASSERT(v8);
    v5 = StringTemplate_Default(13);

    CellActor_SetAnim(param0->unk_1FC, 5);
    v0.x = 48 << FX32_SHIFT;
    v0.y = 144 << FX32_SHIFT;
    v0.z = 0;
    CellActor_SetPosition(param0->unk_1FC, &v0);

    v7 = Strbuf_Init(12, 13);
    sub_0202A1A0(param0->unk_00, v7);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v7, 0);
    v1 = 128 - (v3 / 2);
    v2 = 7;

    Text_AddPrinterWithParamsAndColor(param0->unk_200, FONT_SYSTEM, v7, v1, v2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v7);

    v4 = sub_0202A1F4(param0->unk_00);
    StringTemplate_SetCustomMessageWord(v5, 0, v4);

    v7 = Strbuf_Init(200, 13);
    v6 = MessageLoader_GetNewStrbuf(v8, 45);
    StringTemplate_Format(v5, v7, v6);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v7, 0);
    v1 = 128 - (v3 / 2);
    v2 = 27;

    Text_AddPrinterWithParamsAndColor(param0->unk_200, FONT_SYSTEM, v7, v1, v2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v7);
    Strbuf_Free(v6);
    MessageLoader_Free(v8);
    StringTemplate_Free(v5);
}

static void ov22_0225BC18(UnkStruct_ov22_0225B85C *param0)
{
    int v0;
    StringTemplate *v1;
    Strbuf *v2;
    Strbuf *v3;
    int v4;
    Pokemon *v5;
    BoxPokemon *v6;
    MessageLoader *v7;
    int v8, v9;
    int v10;

    CellActor_SetAnim(param0->unk_1FC, param0->unk_08);

    v0 = sub_0202A5D0(param0->unk_04);
    v1 = StringTemplate_Default(13);
    v2 = Strbuf_Init(200, 13);

    StringTemplate_SetContestTypeName(v1, 0, sub_020958B8(param0->unk_08));
    StringTemplate_SetContestRankName(v1, 1, sub_02095888(v0));

    v4 = sub_0202A544(param0->unk_04);
    sub_0202A524(param0->unk_04, v2);
    StringTemplate_SetStrbuf(v1, 3, v2, v4, 1, GAME_LANGUAGE);

    v5 = Pokemon_New(13);
    sub_0202A560(param0->unk_04, v5);
    v6 = Pokemon_GetBoxPokemon(v5);
    StringTemplate_SetNickname(v1, 4, v6);
    Heap_FreeToHeap(v5);

    v7 = MessageLoader_Init(0, 26, 385, 13);
    GF_ASSERT(v7);

    v3 = MessageLoader_GetNewStrbuf(v7, 43);
    StringTemplate_Format(v1, v2, v3);
    Strbuf_Free(v3);
    v10 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v8 = 128 - (v10 / 2);
    v9 = 7;
    Text_AddPrinterWithParamsAndColor(param0->unk_200, FONT_SYSTEM, v2, v8, v9, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    v3 = MessageLoader_GetNewStrbuf(v7, 44);
    StringTemplate_Format(v1, v2, v3);
    Strbuf_Free(v3);
    v10 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v8 = 128 - (v10 / 2);
    v9 = 27;
    Text_AddPrinterWithParamsAndColor(param0->unk_200, FONT_SYSTEM, v2, v8, v9, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    Strbuf_Free(v2);
    MessageLoader_Free(v7);
    StringTemplate_Free(v1);
}
