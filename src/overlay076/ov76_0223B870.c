#include "overlay076/ov76_0223B870.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02081CF4.h"

#include "overlay012/ov12_02225864.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay076/const_ov76_0223EF3C.h"
#include "overlay076/ov76_0223D338.h"
#include "overlay076/struct_ov76_0223BBAC.h"
#include "overlay076/struct_ov76_0223C398.h"
#include "overlay076/struct_ov76_0223DE00.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02013A04.h"
#include "unk_02014000.h"
#include "unk_02018340.h"
#include "unk_0201E86C.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_0202C9F4.h"
#include "unk_02097B18.h"

typedef struct {
    UnkStruct_ov12_02225F6C unk_00[9];
    CellActorData *unk_144[8];
    BGL *unk_164;
    int unk_168;
    BOOL *unk_16C;
} UnkStruct_ov76_0223BCA0;

void ov76_0223BF74(BGL *param0, Window *param1, int param2, UnkStruct_ov76_0223DE00 *param3, int param4);
void ov76_0223C0EC(int param0, s16 *param1, s16 *param2);
void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C188(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C398(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C424(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C5A4(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *param10);
void ov76_0223C61C(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223C7E0(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2);
void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8EC(BGL *param0, PaletteData *param1, int param2);
void ov76_0223C974(BGL *param0, PaletteData *param1, int param2);
void ov76_0223CA30(Window *param0, int param1);
void ov76_0223CA98(BGL *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7);
void ov76_0223CB58(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223CDA4(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223CDC4(Window *param0, int param1);
void ov76_0223CE2C(void);
void ov76_0223CE44(void);
void ov76_0223CE64(void);
void ov76_0223CE84(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CF24(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CF88(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CFEC(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223D16C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D318(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D31C(UnkStruct_ov76_0223DE00 *param0);

static void ov76_0223B870(TouchScreenRect *rect, CellActorData *param1, int param2, int param3)
{
    s16 v0, v1;

    SpriteActor_GetSpritePositionXY(param1, &v0, &v1);

    rect->rect.top = v1 - param3;
    rect->rect.bottom = v1 + param3;
    rect->rect.left = v0 - param2;
    rect->rect.right = v0 + param2;
}

void ov76_0223B8A8(UnkStruct_ov76_0223DE00 *param0)
{
    param0->unk_D4.unk_160 = sub_02012744(2, 53);
    Font_InitManager(FONT_SUBSCREEN, 53);
}

void ov76_0223B8C4(UnkStruct_ov76_0223DE00 *param0)
{
    Font_Free(FONT_SUBSCREEN);
    sub_02012870(param0->unk_D4.unk_164[0]);
    sub_0201EE28(&param0->unk_D4.unk_16C[0]);
    sub_02012870(param0->unk_D4.unk_164[1]);
    sub_0201EE28(&param0->unk_D4.unk_16C[1]);
    sub_020127BC(param0->unk_D4.unk_160);
}

void ov76_0223B904(UnkStruct_ov76_0223DE00 *param0)
{
    sub_0200CD7C(param0->unk_D4.unk_14, 3, param0->unk_D4.unk_08, param0->unk_D4.unk_0C, 14, 7, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 30000);
}

void ov76_0223B940(UnkStruct_ov76_0223DE00 *param0)
{
    ov76_0223B904(param0);
    ov76_0223B98C(param0, 0, 104, 165, 0);
    ov76_0223B98C(param0, 1, 192, 165, 0);
}

void ov76_0223B96C(UnkStruct_ov76_0223DE00 *param0, BOOL param1)
{
    sub_020129D0(param0->unk_D4.unk_164[0], param1);
    sub_020129D0(param0->unk_D4.unk_164[1], param1);
}

void ov76_0223B98C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_020127E8 v0;
    Strbuf *v1;
    int v2;
    int v3;
    MessageLoader *v4;
    Window v5;

    v4 = MessageLoader_Init(0, 26, 8, 53);
    v1 = MessageLoader_GetNewStrbuf(v4, 5 + param1);

    {
        Window_Init(&v5);
        BGL_AddFramelessWindow(param0->unk_D4.unk_10, &v5, 10, 2, 0, 0);
        Text_AddPrinterWithParamsAndColor(&v5, FONT_SUBSCREEN, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 2), NULL);
    }

    v2 = 30000;
    v3 = sub_02012898(&v5, NNS_G2D_VRAM_TYPE_2DSUB, 53);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &param0->unk_D4.unk_16C[param1]);

    v0.unk_00 = param0->unk_D4.unk_160;
    v0.unk_04 = &v5;
    v0.unk_08 = sub_0200D9B0(param0->unk_D4.unk_0C);
    v0.unk_0C = sub_0200D04C(param0->unk_D4.unk_0C, v2);
    v0.unk_10 = NULL;
    v0.unk_14 = param0->unk_D4.unk_16C[param1].unk_04;
    v0.unk_18 = param2 - Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0) / 2;
    v0.unk_1C = param3 + 192;
    v0.unk_20 = 1;
    v0.unk_24 = 40;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.unk_2C = 53;
    param0->unk_D4.unk_164[param1] = sub_020127E8(&v0);

    sub_02012AC0(param0->unk_D4.unk_164[param1], param4);
    Strbuf_Free(v1);
    MessageLoader_Free(v4);
    BGL_DeleteWindow(&v5);
}

void ov76_0223BA90(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    BOOL v5;
    int v6;

    v2 = 0;
    v3 = 0;
    v4 = param1;
    v4 *= 8;

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_418.unk_08[v0] = 0;
    }

    for (v0 = 0; v0 < (80 + 1); v0++) {
        for (v1 = 0; v1 < 12; v1++) {
            v5 = sub_0202CA94(param0->unk_04[v1].unk_04, v0);

            if (v5) {
                break;
            }
        }

        v6 = param0->unk_80[v0];

        if ((v6 != 0) || (v5 == 1)) {
            v3++;

            if (v3 <= v4) {
                continue;
            }

            param0->unk_418.unk_08[v2] = (v0 + 1);
            v2++;

            if (v2 >= 8) {
                break;
            }
        }
    }
}

void ov76_0223BB04(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    SpriteRenderer *v2;
    SpriteGfxHandler *v3;
    PaletteData *v4;

    v2 = param0->unk_D4.unk_08;
    v3 = param0->unk_D4.unk_0C;
    v4 = param0->unk_D4.unk_14;

    for (v0 = 0; v0 < 8; v0++) {
        v1 = sub_02098140(param0->unk_418.unk_08[v0]);
        sub_0200CBDC(v2, v3, 91, v1, 1, NNS_G2D_VRAM_TYPE_2DSUB, (v0 + 25000));
    }

    sub_0200CD7C(v4, 3, v2, v3, 91, 293, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 292);
    sub_0200CE0C(v2, v3, 91, 180, 1, 27000 + 180);
    sub_0200CE3C(v2, v3, 91, 88, 1, 28000 + 88);
}

void ov76_0223BBAC(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate v2;
    SpriteRenderer *v3;
    SpriteGfxHandler *v4;
    PaletteData *v5;

    v3 = param0->unk_D4.unk_08;
    v4 = param0->unk_D4.unk_0C;
    v5 = param0->unk_D4.unk_14;
    v1 = &param0->unk_3E4;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 60;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v2.bgPriority = 1;
    v2.transferToVRAM = FALSE;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;
    v2.plttIdx = 0;
    v2.resources[1] = 26000 + 292;
    v2.resources[2] = 27000 + 180;
    v2.resources[3] = 28000 + 88;

    for (v0 = 0; v0 < 8; v0++) {
        v2.resources[0] = (v0 + 25000);
        v1->unk_00[v0] = SpriteActor_LoadResources(v3, v4, &v2);
    }

    {
        const s16 v6[][2] = {
            { 19, 23 },
            { 75, 23 },
            { 19, 47 },
            { 75, 47 },
            { 19, 71 },
            { 75, 71 },
            { 19, 95 },
            { 75, 95 },
        };

        for (v0 = 0; v0 < 8; v0++) {
            SpriteActor_SetSpritePositionXY(param0->unk_3E4.unk_00[v0], v6[v0][0], v6[v0][1] - 1);
            sub_0200D330(param0->unk_3E4.unk_00[v0]);
            sub_0200D3CC(param0->unk_3E4.unk_00[v0], 0);
        }
    }
}

void ov76_0223BC70(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        SpriteGfxHandler_UnloadCharObjById(param0->unk_D4.unk_0C, (v0 + 25000));
        sub_0200D0F4(param0->unk_3E4.unk_00[v0]);
    }
}

static void ov76_0223BCA0(SysTask *param0, void *param1)
{
    UnkStruct_ov76_0223BCA0 *v0 = (UnkStruct_ov76_0223BCA0 *)param1;
    BOOL v1 = 0;
    {
        int v2;

        for (v2 = 0; v2 < 8; v2++) {
            if (v0->unk_144[v2] == NULL) {
                continue;
            }

            if (ov12_02225C50(&v0->unk_00[v2], v0->unk_144[v2]) == 1) {
                v1 = 1;
            }
        }

        if (ov12_02225C14(&v0->unk_00[8]) == 1) {
            v1 = 1;
            sub_02019184(v0->unk_164, 5, 0, v0->unk_00[8].unk_00);
            sub_02019184(v0->unk_164, 5, 3, v0->unk_00[8].unk_02);
        }
    }

    if (v1 == 0) {
        *(v0->unk_16C) = 0;
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

void ov76_0223BD30(UnkStruct_ov76_0223DE00 *param0, s8 param1, int param2)
{
    UnkStruct_ov76_0223BCA0 *v0;

    v0 = Heap_AllocFromHeap(53, sizeof(UnkStruct_ov76_0223BCA0));
    v0->unk_164 = param0->unk_D4.unk_10;

    {
        int v1;
        s16 v2, v3;

        for (v1 = 0; v1 < 8; v1++) {
            if (param0->unk_324[v1].unk_00 == 0) {
                v0->unk_144[v1] = NULL;
                continue;
            }

            v0->unk_144[v1] = param0->unk_324[v1].unk_08;

            SpriteActor_GetSpritePositionXY(v0->unk_144[v1], &v2, &v3);
            ov12_02225BC8(&v0->unk_00[v1], v2, v2 + ((+7 * 8) * param1), v3, v3 + ((-2 * 8) * param1), param2);
            ov12_02225C50(&v0->unk_00[v1], v0->unk_144[v1]);
            ov12_02225C50(&v0->unk_00[v1], v0->unk_144[v1]);
        }
    }

    {
        int v4 = sub_020192EC(v0->unk_164, 5);
        int v5 = sub_020192F8(v0->unk_164, 5);
        ov12_02225BC8(&v0->unk_00[8], v4, v4 + (((+7 * 8) * param1) * -1), v5, v5 + (((-2 * 8) * param1) * -1), param2);
    }

    v0->unk_16C = &param0->unk_D4.unk_184;
    *(v0->unk_16C) = 1;

    SysTask_Start(ov76_0223BCA0, v0, 0x1000);
}

GenericPointerData *ov76_0223BE6C(void)
{
    GenericPointerData *v0;

    v0 = sub_02024220(53, 0, 2, 0, 2, ov76_0223BE8C);
    return v0;
}

void ov76_0223BE8C(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void ov76_0223BF10(void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * 4, 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    sub_02014000();
}

void ov76_0223BF50(void)
{
    int v0;
    const MtxFx43 *v1;

    sub_020241B4();

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    sub_020146C0();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov76_0223BF74(BGL *param0, Window *param1, int param2, UnkStruct_ov76_0223DE00 *param3, int param4)
{
    UnkStruct_02081CF4 v0;
    int v1;
    int v2, v3, v4, v5, v6, v7;
    int v8[4];

    v1 = ov76_0223D45C(param3, param4);
    v6 = ((9 * 8) + ((27 * 2) + (0 + ((1 + (18 + 12)) + 9))));
    v2 = 21;
    v4 = 9;

    switch (v1) {
    case 0:
        v3 = (15 - 2);
        v5 = (4 + 2);
        v8[0] = 0;
        v8[1] = 4;
        v8[2] = 1;
        break;
    case 1:
        v3 = 11;
        v5 = 8;
        v8[0] = 2;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    case 2:
        v3 = 11;
        v5 = 8;
        v8[0] = 3;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    case 3:
        v3 = 11;
        v5 = 8;
        v8[0] = 2;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    }

    v7 = (v5 / 2);

    Window_Init(param1);
    BGL_AddWindow(param0, param1, param2, v2, v3, v4, v5, 14, v6);

    param3->unk_D4.unk_C8 = sub_02013A04(v7, 53);

    {
        int v9;
        Strbuf *v10;
        MessageLoader *v11 = MessageLoader_Init(0, 26, 8, 53);

        for (v9 = 0; v9 < v7; v9++) {
            v10 = MessageLoader_GetNewStrbuf(v11, Unk_ov76_0223EF3C[v8[v9]].unk_00);

            sub_02013A6C(param3->unk_D4.unk_C8, v10, Unk_ov76_0223EF3C[v8[v9]].unk_04);
            Strbuf_Free(v10);
        }

        MessageLoader_Free(v11);
    }

    v0.unk_00 = param3->unk_D4.unk_C8;
    v0.unk_08 = 0;
    v0.unk_04 = param1;
    v0.unk_09 = 1;
    v0.unk_0A = v7;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 1;

    Window_Show(param1, 1, (1 + (18 + 12)), 13);
    param3->unk_D4.unk_CC = sub_02001B7C(&v0, 8, 0, 0, 53, PAD_BUTTON_B);
}

void ov76_0223C0EC(int param0, s16 *param1, s16 *param2)
{
    int v0;

    v0 = (param0 % 4);
    *param1 = 32 + 8 + (v0 * 56);
    v0 = (param0 >> 2);
    *param2 = 27 + (v0 * 53);
}

void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;

    v0 = param0->unk_D4.unk_08;
    v1 = param0->unk_D4.unk_0C;
    v2 = param0->unk_D4.unk_14;

    sub_0200CD7C(v2, 2, v0, v1, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 16000);

    {
        int v3 = PokeIcon64KCellsFileIndex();
        sub_0200CE0C(v0, v1, 19, v3, 0, 17000);
    }

    {
        int v4 = PokeIcon64KAnimationFileIndex();
        sub_0200CE3C(v0, v1, 19, v4, 0, 18000);
    }
}

void ov76_0223C188(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    Pokemon *v5;
    SpriteTemplate v6;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        v5 = param0->unk_00->unk_04[v0];

        sub_0200D888(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, 19, Pokemon_IconSpriteIndex(v5), 0, NNS_G2D_VRAM_TYPE_2DMAIN, (v0 + 15000));

        v6.x = 0;
        v6.y = 0;
        v6.z = 0;
        v6.animIdx = 0;
        v6.priority = 10;
        v6.plttIdx = 0;
        v6.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v6.bgPriority = 2;
        v6.transferToVRAM = FALSE;
        v6.resources[0] = (v0 + 15000);
        v6.resources[1] = 16000;
        v6.resources[2] = 17000;
        v6.resources[3] = 18000;
        v6.resources[4] = SPRITE_RESOURCE_NONE;
        v6.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_2FC[v0] = SpriteActor_LoadResources(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v6);

        v2 = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);
        v1 = Pokemon_GetValue(v5, MON_DATA_IS_EGG, NULL);
        v4 = Pokemon_GetValue(v5, MON_DATA_FORM, NULL);
        v3 = PokeIconPaletteIndex(v2, v4, v1);

        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_2FC[v0]->unk_00, v3);
        sub_0200D364(param0->unk_2FC[v0], 1);
    }
}

void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    s16 v2, v3;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        SpriteActor_EnableObject(param0->unk_2FC[v0], 0);
    }

    for (v0 = 0; v0 < 12; v0++) {
        v1 = param0->unk_04[v0].unk_00;

        if (v1 != 0xff) {
            ov76_0223C0EC(v0, &v2, &v3);
            SpriteActor_SetSpritePositionXY(param0->unk_2FC[v1], v2 + -16, v3 + (+12));
            SpriteActor_EnableObject(param0->unk_2FC[v1], 1);
        }
    }
}

void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        sub_0200D330(param0->unk_2FC[v0]);
    }
}

void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        sub_0200D0F4(param0->unk_2FC[v0]);
    }
}

void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    int v2 = 0;
    UnkStruct_0202CA28 *v3;

    for (v0 = 0; v0 < 12; v0++) {
        v3 = param0->unk_04[v0].unk_04;
        param0->unk_264[v0].unk_04 = ov76_0223D430(v3);
        param0->unk_264[v0].unk_00 = param0->unk_04[v0].unk_00;

        if ((param0->unk_264[v0].unk_04 == 0) && (param0->unk_264[v0].unk_00 != 0xff)) {
            ov76_0223E91C(param0, v0);
        }
    }
}

void ov76_0223C398(UnkStruct_ov76_0223C398 *param0)
{
    param0->unk_08 = sub_0200C6E4(53);
    {
        const UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const UnkStruct_ov104_022412F4 v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_08, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_0C = sub_0200C704(param0->unk_08);
        v2 = sub_0200C7C0(param0->unk_08, param0->unk_0C, (64 + 64));
        GF_ASSERT(v2);

        v2 = sub_0200CB30(param0->unk_08, param0->unk_0C, &v3);
        GF_ASSERT(v2);
    }
}

void ov76_0223C424(UnkStruct_ov76_0223C398 *param0)
{
    sub_0200D0B0(param0->unk_08, param0->unk_0C);
    sub_0200C8D4(param0->unk_08);
}

void ov76_0223C438(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 265, 1, 2, 45000);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 173, 1, 47000);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 81, 1, 48000);
}

void ov76_0223C4AC(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    SpriteTemplate v1;
    int v2[][3] = {
        { 136, 16, 1 },
        { 136, 128, 3 },
        { 240, 16, 0 },
        { 240, 128, 2 },
    };

    for (v0 = 0; v0 < 4; v0++) {
        v1.x = v2[v0][0];
        v1.y = v2[v0][1];
        v1.z = 0;
        v1.animIdx = 0;
        v1.priority = 40;
        v1.plttIdx = 2;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v1.bgPriority = 1;
        v1.transferToVRAM = FALSE;
        v1.resources[0] = 45000;
        v1.resources[1] = 26000 + 290;
        v1.resources[2] = 47000;
        v1.resources[3] = 48000;
        v1.resources[4] = SPRITE_RESOURCE_NONE;
        v1.resources[5] = SPRITE_RESOURCE_NONE;
        param0->unk_314[v0] = SpriteActor_LoadResources(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);

        sub_0200D7D4(param0->unk_314[v0], v2[v0][2]);
    }
}

void ov76_0223C544(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    if (param0->unk_D4.unk_04 == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D330(param0->unk_314[v0]);
    }
}

void ov76_0223C568(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        SpriteActor_EnableObject(param0->unk_314[v0], param1);
    }
}

void ov76_0223C588(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D0F4(param0->unk_314[v0]);
    }
}

void ov76_0223C5A4(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *param10)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param10, param3, 1, param7, (param3 + 11000));
    SpriteRenderer_LoadPalette(param2, param8, param0, param1, param10, param4, 0, param9, param7, (param4 + 11000));
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param10, param5, 1, (param5 + 11000));
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param10, param6, 1, (param6 + 11000));
}

void ov76_0223C61C(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    ov76_0223C5A4(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param0->unk_D4.unk_14, 266, 286, 174, 82, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, param1);
    ov76_0223C5A4(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param0->unk_D4.unk_14, 275, 291, 179, 87, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, param1);
    {
        int v0;
        SpriteTemplate v1;

        for (v0 = 0; v0 < 12; v0++) {
            v1.x = 0;
            v1.y = 0;
            v1.z = 0;
            v1.animIdx = param0->unk_264[v0].unk_04;
            v1.priority = 40 - v0;
            v1.plttIdx = 0;
            v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
            v1.bgPriority = 2;
            v1.transferToVRAM = FALSE;
            v1.resources[0] = (266 + 11000);
            v1.resources[1] = (286 + 11000);
            v1.resources[2] = (174 + 11000);
            v1.resources[3] = (82 + 11000);
            v1.resources[4] = SPRITE_RESOURCE_NONE;
            v1.resources[5] = SPRITE_RESOURCE_NONE;

            param0->unk_264[v0].unk_08 = SpriteActor_LoadResources(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);
            {
                s16 v2, v3;

                ov76_0223C0EC(v0, &v2, &v3);
                SpriteActor_SetSpritePositionXY(param0->unk_264[v0].unk_08, v2, v3);
            }
        }

        v1.x = 0;
        v1.y = 0;
        v1.z = 0;
        v1.animIdx = 0;
        v1.priority = 20;
        v1.plttIdx = 0;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.bgPriority = 2;
        v1.transferToVRAM = FALSE;
        v1.resources[0] = (275 + 11000);
        v1.resources[1] = (291 + 11000);
        v1.resources[2] = (179 + 11000);
        v1.resources[3] = (87 + 11000);
        v1.resources[4] = SPRITE_RESOURCE_NONE;
        v1.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_2F4[0] = SpriteActor_LoadResources(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);
        param0->unk_2F4[1] = SpriteActor_LoadResources(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);

        {
            s16 v4, v5;

            ov76_0223C0EC(param0->unk_3C4[0], &v4, &v5);
            SpriteActor_SetSpritePositionXY(param0->unk_2F4[0], v4, v5);
            SpriteActor_SetSpritePositionXY(param0->unk_2F4[1], v4, v5);
            sub_0200D474(param0->unk_2F4[1], 25);
            sub_0200D364(param0->unk_2F4[0], 0);
            sub_0200D364(param0->unk_2F4[1], 0);
        }
    }
}

void ov76_0223C7E0(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    ov76_0223C354(param0);
    ov76_0223C288(param0);

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_264[v0].unk_08 == NULL) {
            continue;
        }

        sub_0200D364(param0->unk_264[v0].unk_08, param0->unk_264[v0].unk_04);
    }
}

void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    UnkStruct_0202CA28 v5;

    v1 = param0->unk_04[param1].unk_00;
    v2 = param0->unk_04[param2].unk_00;

    if (v1 != 0xff) {
        v3 = param2 + 1;
        Pokemon_SetValue(param0->unk_00->unk_04[v1], 162, (u8 *)&v3);
    }

    if (v2 != 0xff) {
        v4 = param1 + 1;
        Pokemon_SetValue(param0->unk_00->unk_04[v2], 162, (u8 *)&v4);
    }

    v0 = param0->unk_04[param1].unk_00;
    param0->unk_04[param1].unk_00 = param0->unk_04[param2].unk_00;
    param0->unk_04[param2].unk_00 = v0;

    sub_0202CA10(param0->unk_04[param1].unk_04, &v5);
    sub_0202CA10(param0->unk_04[param2].unk_04, param0->unk_04[param1].unk_04);
    sub_0202CA10(&v5, param0->unk_04[param2].unk_04);
    ov76_0223C7E0(param0);
}

void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        sub_0200D330(param0->unk_264[v0].unk_08);
    }

    sub_0200D330(param0->unk_2F4[0]);
    sub_0200D330(param0->unk_2F4[1]);
}

void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        sub_0200D0F4(param0->unk_264[v0].unk_08);
    }

    sub_0200D0F4(param0->unk_2F4[0]);
    sub_0200D0F4(param0->unk_2F4[1]);
}

void ov76_0223C8EC(BGL *param0, PaletteData *param1, int param2)
{
    sub_0200DD0C(param0, 1, 1, 15, param2, 53);
    PaletteSys_LoadPalette(param1, 38, sub_0200DD08(param2), 53, 0, 0x20, 12 * 16);
    sub_0200DAA4(param0, 1, (1 + (18 + 12)), 13, 0, 53);
    PaletteSys_LoadPalette(param1, 38, Window_FramePalette(), 53, 0, 0x20, 13 * 16);
    PaletteSys_LoadPalette(param1, 14, 7, 53, 0, 0x20, 14 * 16);
}

void ov76_0223C974(BGL *param0, PaletteData *param1, int param2)
{
    sub_0200DD0C(param0, 4, 1, 15, param2, 53);
    PaletteSys_LoadPalette(param1, 38, sub_0200DD08(param2), 53, 1, 0x20, 12 * 16);
    sub_0200DAA4(param0, 4, (1 + (18 + 12)), 13, 0, 53);
    PaletteSys_LoadPalette(param1, 38, Window_FramePalette(), 53, 1, 0x20, 13 * 16);
    PaletteSys_LoadPalette(param1, 14, 7, 53, 1, 0x20, 14 * 16);
    PaletteSys_LoadPalette(param1, 14, 7, 53, 1, 0x20, 3 * 16);
    PaletteSys_LoadPalette(param1, 91, 294, 53, 1, 0x20, 11 * 16);
}

void ov76_0223CA30(Window *param0, int param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    if (param1 == 0xFFFF) {
        BGL_FillWindow(param0, 15);
        sub_0201A954(param0);
        return;
    }

    v0 = MessageLoader_Init(0, 26, 8, 53);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    BGL_FillWindow(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    sub_0201A954(param0);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

void ov76_0223CA98(BGL *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    Window_Init(param1);
    BGL_AddWindow(param0, param1, param2, param3, param4, param5, param6, 14, param7);
    sub_0200E060(param1, 1, 1, 12);
    BGL_FillWindow(param1, 15);
    sub_0201A954(param1);
}

static void ov76_0223CAFC(BGL *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    Window_Init(param1);
    BGL_AddWindow(param0, param1, param2, param3, param4, param5, param6, param8, param7);
    BGL_FillWindow(param1, 15);
    sub_0201A954(param1);
}

void ov76_0223CB58(UnkStruct_ov76_0223DE00 *param0)
{
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[3], 6, (4 - 1), 2, (3 + 1), 2, ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[4], 6, (11 - 1), 2, (3 + 1), 2, (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[5], 6, (4 - 1), 5, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[6], 6, (11 - 1), 5, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[7], 6, (4 - 1), 8, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[8], 6, (11 - 1), 8, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))))))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[9], 6, (4 - 1), 11, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))))))), 11);
    ov76_0223CAFC(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[10], 6, (11 - 1), 11, (3 + 1), 2, (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))))))))), 11);
}

void ov76_0223CC8C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    Strbuf *v4;
    Window *v5;

    for (v0 = 3; v0 < 11; v0++) {
        v5 = &param0->unk_D4.unk_18[v0];
        v1 = v0 - 3;
        v2 = param0->unk_418.unk_08[v1];

        if (v2 == 0) {
            BGL_FillWindow(v5, 0xEE);
            sub_0201A954(v5);
            continue;
        }

        BGL_FillWindow(v5, 0x0);

        v4 = Strbuf_Init(100, 53);
        v3 = sub_0202CA90(param0->unk_64, v2 - 1);

        Strbuf_FormatInt(v4, v3, 3, 1, 1);
        Text_AddPrinterWithParamsAndColor(v5, FONT_SYSTEM, v4, (-1 + 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        sub_0201A954(v5);
        Strbuf_Free(v4);
    }
}

void ov76_0223CD20(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    Strbuf *v4;
    Window *v5;

    v5 = &param0->unk_D4.unk_18[param1 + 3];
    v1 = param1;
    v2 = param0->unk_418.unk_08[v1];

    if (v2 == 0) {
        BGL_FillWindow(v5, 0xEE);
        sub_0201A954(v5);
        return;
    }

    BGL_FillWindow(v5, 0x0);

    v4 = Strbuf_Init(100, 53);
    v3 = sub_0202CA90(param0->unk_64, v2 - 1);

    Strbuf_FormatInt(v4, v3, 3, 1, 1);
    Text_AddPrinterWithParamsAndColor(v5, FONT_MESSAGE, v4, (-1 + 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A954(v5);
    Strbuf_Free(v4);
}

void ov76_0223CDA4(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 3; v0 < 11; v0++) {
        sub_0201ACF4(&param0->unk_D4.unk_18[v0]);
        BGL_DeleteWindow(&param0->unk_D4.unk_18[v0]);
    }
}

void ov76_0223CDC4(Window *param0, int param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    if (param1 == 0xFFFF) {
        BGL_FillWindow(param0, 15);
        sub_0201A954(param0);
        return;
    }

    v0 = MessageLoader_Init(0, 26, 12, 53);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    BGL_FillWindow(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    sub_0201A954(param0);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

void ov76_0223CE2C(void)
{
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov76_0223CE44(void)
{
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 53);
}

void ov76_0223CE64(void)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 53);
}

void ov76_0223CE84(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 268;
    int v2 = 284;
    int v3 = 288;
    int v4 = 2;

    sub_020070E8(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    sub_0200710C(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    PaletteSys_LoadPalette(param0->unk_D4.unk_14, v0, v3, 53, 0, 0x20 * 2, 0);

    v1 = 269;
    v2 = 285;
    v4 = 3;

    sub_020070E8(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    sub_0200710C(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
}

void ov76_0223CF24(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 283;
    int v3 = 287;
    int v4 = 5;

    sub_020070E8(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    sub_0200710C(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    PaletteSys_LoadPalette(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CF88(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 282;
    int v3 = 287;
    int v4 = 7;

    sub_020070E8(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    sub_0200710C(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, 53);
    PaletteSys_LoadPalette(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CFEC(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;

    v0 = param0->unk_D4.unk_08;
    v1 = param0->unk_D4.unk_0C;
    v2 = param0->unk_D4.unk_14;

    SpriteRenderer_LoadPalette(v2, 3, v0, v1, param1, 290, 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 290);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, param1, 273, 1, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 273);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, param1, 177, 1, 27000 + 177);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, param1, 85, 1, 28000 + 85);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, param1, 274, 1, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 274);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, param1, 178, 1, 27000 + 178);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, param1, 86, 1, 28000 + 86);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, param1, 270, 1, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 270);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, param1, 175, 1, 27000 + 175);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, param1, 83, 1, 28000 + 83);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, param1, 272, 1, NNS_G2D_VRAM_TYPE_2DSUB, 35000 + 272);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, param1, 176, 1, 27000 + 176);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, param1, 84, 1, 28000 + 84);
}

void ov76_0223D16C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate v2;
    SpriteRenderer *v3;
    SpriteGfxHandler *v4;
    PaletteData *v5;

    v3 = param0->unk_D4.unk_08;
    v4 = param0->unk_D4.unk_0C;
    v5 = param0->unk_D4.unk_14;
    v1 = &param0->unk_3E4;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 60;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v2.bgPriority = 1;
    v2.transferToVRAM = FALSE;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;

    v0 = 8;

    v2.plttIdx = 1;
    v2.resources[0] = 25000 + 273;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 177;
    v2.resources[3] = 28000 + 85;
    v1->unk_00[v0++] = SpriteActor_LoadResources(v3, v4, &v2);

    v2.resources[0] = 25000 + 274;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 178;
    v2.resources[3] = 28000 + 86;
    v1->unk_00[v0++] = SpriteActor_LoadResources(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 1;
    v2.resources[0] = 35000 + 272;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 176;
    v2.resources[3] = 28000 + 84;
    v1->unk_00[v0++] = SpriteActor_LoadResources(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 0;
    v2.resources[0] = 25000 + 270;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 175;
    v2.resources[3] = 28000 + 83;
    v1->unk_00[v0++] = SpriteActor_LoadResources(v3, v4, &v2);
    v1->unk_00[v0++] = SpriteActor_LoadResources(v3, v4, &v2);

    {
        const s16 v6[][2] = {
            { 20, 23 },
            { 20, 47 },
            { 20, 71 },
            { 20, 95 },
            { 76, 23 },
            { 76, 47 },
            { 76, 71 },
            { 76, 95 },
            { 27, 124 },
            { 67, 124 },
            { 32, 171 },
            { 104, 171 },
            { 192, 171 },
        };
        const s16 v7[][2] = {
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 13, 10 },
            { 13, 10 },
            { 16, 12 },
            { 28, 12 },
            { 28, 12 },
        };

        for (v0 = 8; v0 < 13; v0++) {
            SpriteActor_SetSpritePositionXY(param0->unk_3E4.unk_00[v0], v6[v0][0], v6[v0][1]);
            sub_0200D330(param0->unk_3E4.unk_00[v0]);
            sub_0200D3CC(param0->unk_3E4.unk_00[v0], 0);
            ov76_0223B870(&param0->unk_D4.unk_FC[v0], param0->unk_3E4.unk_00[v0], v7[v0][0], v7[v0][1]);
        }
    }
}

void ov76_0223D2F4(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 13; v0++) {
        if (param0->unk_3E4.unk_00[v0] == NULL) {
            continue;
        }

        SpriteActor_EnableObject(param0->unk_3E4.unk_00[v0], param1);
    }
}

void ov76_0223D318(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 13; v0++) {
        (void)0;
    }
}

void ov76_0223D31C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 8; v0 < 13; v0++) {
        sub_0200D0F4(param0->unk_3E4.unk_00[v0]);
    }
}
