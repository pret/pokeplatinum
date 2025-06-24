#include "overlay076/ov76_0223B870.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/seal_case.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay012/ov12_02225864.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay076/const_ov76_0223EF3C.h"
#include "overlay076/ov76_0223D338.h"
#include "overlay076/struct_ov76_0223BBAC.h"
#include "overlay076/struct_ov76_0223C398.h"
#include "overlay076/struct_ov76_0223DE00.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02012744.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_0202C9F4.h"
#include "unk_02097B18.h"

typedef struct {
    UnkStruct_ov12_02225F6C unk_00[9];
    ManagedSprite *unk_144[8];
    BgConfig *unk_164;
    int unk_168;
    BOOL *unk_16C;
} UnkStruct_ov76_0223BCA0;

void ov76_0223BF74(BgConfig *param0, Window *param1, int param2, UnkStruct_ov76_0223DE00 *param3, int param4);
void ov76_0223C0EC(int param0, s16 *param1, s16 *param2);
void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C188(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C398(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C424(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C5A4(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *param10);
void ov76_0223C61C(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223C7E0(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2);
void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8EC(BgConfig *param0, PaletteData *param1, int param2);
void ov76_0223C974(BgConfig *param0, PaletteData *param1, int param2);
void ov76_0223CA30(Window *param0, int param1);
void ov76_0223CA98(BgConfig *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7);
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

static void ov76_0223B870(TouchScreenRect *rect, ManagedSprite *param1, int param2, int param3)
{
    s16 v0, v1;

    ManagedSprite_GetPositionXY(param1, &v0, &v1);

    rect->rect.top = v1 - param3;
    rect->rect.bottom = v1 + param3;
    rect->rect.left = v0 - param2;
    rect->rect.right = v0 + param2;
}

void ov76_0223B8A8(UnkStruct_ov76_0223DE00 *param0)
{
    param0->unk_D4.unk_160 = sub_02012744(2, HEAP_ID_53);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_53);
}

void ov76_0223B8C4(UnkStruct_ov76_0223DE00 *param0)
{
    Font_Free(FONT_SUBSCREEN);
    sub_02012870(param0->unk_D4.unk_164[0]);
    CharTransfer_ClearRange(&param0->unk_D4.unk_16C[0]);
    sub_02012870(param0->unk_D4.unk_164[1]);
    CharTransfer_ClearRange(&param0->unk_D4.unk_16C[1]);
    sub_020127BC(param0->unk_D4.unk_160);
}

void ov76_0223B904(UnkStruct_ov76_0223DE00 *param0)
{
    SpriteSystem_LoadPaletteBuffer(param0->unk_D4.unk_14, 3, param0->unk_D4.unk_08, param0->unk_D4.unk_0C, 14, 7, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 30000);
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

    v4 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    v1 = MessageLoader_GetNewStrbuf(v4, 5 + param1);

    {
        Window_Init(&v5);
        Window_AddToTopLeftCorner(param0->unk_D4.unk_10, &v5, 10, 2, 0, 0);
        Text_AddPrinterWithParamsAndColor(&v5, FONT_SUBSCREEN, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 2), NULL);
    }

    v2 = 30000;
    v3 = sub_02012898(&v5, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_53);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &param0->unk_D4.unk_16C[param1]);

    v0.unk_00 = param0->unk_D4.unk_160;
    v0.unk_04 = &v5;
    v0.unk_08 = SpriteManager_GetSpriteList(param0->unk_D4.unk_0C);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(param0->unk_D4.unk_0C, v2);
    v0.unk_10 = NULL;
    v0.unk_14 = param0->unk_D4.unk_16C[param1].offset;
    v0.unk_18 = param2 - Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0) / 2;
    v0.unk_1C = param3 + 192;
    v0.unk_20 = 1;
    v0.unk_24 = 40;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = HEAP_ID_53;
    param0->unk_D4.unk_164[param1] = sub_020127E8(&v0);

    sub_02012AC0(param0->unk_D4.unk_164[param1], param4);
    Strbuf_Free(v1);
    MessageLoader_Free(v4);
    Window_Remove(&v5);
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
    SpriteSystem *v2 = param0->unk_D4.unk_08;
    SpriteManager *v3 = param0->unk_D4.unk_0C;
    PaletteData *v4 = param0->unk_D4.unk_14;

    for (v0 = 0; v0 < 8; v0++) {
        v1 = sub_02098140(param0->unk_418.unk_08[v0]);
        SpriteSystem_LoadCharResObj(v2, v3, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, v1, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, (v0 + 25000));
    }

    SpriteSystem_LoadPaletteBuffer(v4, PLTTBUF_SUB_OBJ, v2, v3, 91, 293, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 292);
    SpriteSystem_LoadCellResObj(v2, v3, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 180, TRUE, 27000 + 180);
    SpriteSystem_LoadAnimResObj(v2, v3, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 88, TRUE, 28000 + 88);
}

void ov76_0223BBAC(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate v2;
    SpriteSystem *v3 = param0->unk_D4.unk_08;
    SpriteManager *v4 = param0->unk_D4.unk_0C;
    PaletteData *v5 = param0->unk_D4.unk_14;
    v1 = &param0->unk_3E4;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 60;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v2.bgPriority = 1;
    v2.vramTransfer = FALSE;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;
    v2.plttIdx = 0;
    v2.resources[1] = 26000 + 292;
    v2.resources[2] = 27000 + 180;
    v2.resources[3] = 28000 + 88;

    for (v0 = 0; v0 < 8; v0++) {
        v2.resources[0] = (v0 + 25000);
        v1->unk_00[v0] = SpriteSystem_NewSprite(v3, v4, &v2);
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
            ManagedSprite_SetPositionXY(param0->unk_3E4.unk_00[v0], v6[v0][0], v6[v0][1] - 1);
            ManagedSprite_TickFrame(param0->unk_3E4.unk_00[v0]);
            ManagedSprite_SetAnimationFrame(param0->unk_3E4.unk_00[v0], 0);
        }
    }
}

void ov76_0223BC70(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        SpriteManager_UnloadCharObjById(param0->unk_D4.unk_0C, (v0 + 25000));
        Sprite_DeleteAndFreeResources(param0->unk_3E4.unk_00[v0]);
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
            Bg_SetOffset(v0->unk_164, BG_LAYER_SUB_1, 0, v0->unk_00[8].unk_00);
            Bg_SetOffset(v0->unk_164, BG_LAYER_SUB_1, 3, v0->unk_00[8].unk_02);
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
    UnkStruct_ov76_0223BCA0 *v0 = Heap_AllocFromHeap(HEAP_ID_53, sizeof(UnkStruct_ov76_0223BCA0));
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

            ManagedSprite_GetPositionXY(v0->unk_144[v1], &v2, &v3);
            ov12_02225BC8(&v0->unk_00[v1], v2, v2 + ((+7 * 8) * param1), v3, v3 + ((-2 * 8) * param1), param2);
            ov12_02225C50(&v0->unk_00[v1], v0->unk_144[v1]);
            ov12_02225C50(&v0->unk_00[v1], v0->unk_144[v1]);
        }
    }

    {
        int v4 = Bg_GetXOffset(v0->unk_164, 5);
        int v5 = Bg_GetYOffset(v0->unk_164, 5);
        ov12_02225BC8(&v0->unk_00[8], v4, v4 + (((+7 * 8) * param1) * -1), v5, v5 + (((-2 * 8) * param1) * -1), param2);
    }

    v0->unk_16C = &param0->unk_D4.unk_184;
    *(v0->unk_16C) = 1;

    SysTask_Start(ov76_0223BCA0, v0, 0x1000);
}

GenericPointerData *ov76_0223BE6C(void)
{
    return sub_02024220(HEAP_ID_53, 0, 2, 0, 2, ov76_0223BE8C);
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

    ParticleSystem_ZeroAll();
}

void ov76_0223BF50(void)
{
    int v0;
    const MtxFx43 *v1;

    sub_020241B4();

    v0 = ParticleSystem_DrawAll();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov76_0223BF74(BgConfig *param0, Window *param1, int param2, UnkStruct_ov76_0223DE00 *param3, int param4)
{
    MenuTemplate v0;
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
    Window_Add(param0, param1, param2, v2, v3, v4, v5, 14, v6);

    param3->unk_D4.unk_C8 = StringList_New(v7, 53);

    {
        int v9;
        Strbuf *v10;
        MessageLoader *v11 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);

        for (v9 = 0; v9 < v7; v9++) {
            v10 = MessageLoader_GetNewStrbuf(v11, Unk_ov76_0223EF3C[v8[v9]].unk_00);

            StringList_AddFromStrbuf(param3->unk_D4.unk_C8, v10, Unk_ov76_0223EF3C[v8[v9]].unk_04);
            Strbuf_Free(v10);
        }

        MessageLoader_Free(v11);
    }

    v0.choices = param3->unk_D4.unk_C8;
    v0.fontID = FONT_SYSTEM;
    v0.window = param1;
    v0.xSize = 1;
    v0.ySize = v7;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = TRUE;

    Window_DrawStandardFrame(param1, 1, (1 + (18 + 12)), 13);
    param3->unk_D4.unk_CC = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 53, PAD_BUTTON_B);
}

void ov76_0223C0EC(int param0, s16 *param1, s16 *param2)
{
    int v0 = (param0 % 4);
    *param1 = 32 + 8 + (v0 * 56);
    v0 = (param0 >> 2);
    *param2 = 27 + (v0 * 53);
}

void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0)
{
    SpriteSystem *v0 = param0->unk_D4.unk_08;
    SpriteManager *v1 = param0->unk_D4.unk_0C;
    PaletteData *v2 = param0->unk_D4.unk_14;

    SpriteSystem_LoadPaletteBuffer(v2, 2, v0, v1, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 16000);

    {
        int v3 = PokeIcon64KCellsFileIndex();
        SpriteSystem_LoadCellResObj(v0, v1, 19, v3, 0, 17000);
    }

    {
        int v4 = PokeIcon64KAnimationFileIndex();
        SpriteSystem_LoadAnimResObj(v0, v1, 19, v4, 0, 18000);
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

        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(v5), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, (v0 + 15000));

        v6.x = 0;
        v6.y = 0;
        v6.z = 0;
        v6.animIdx = 0;
        v6.priority = 10;
        v6.plttIdx = 0;
        v6.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v6.bgPriority = 2;
        v6.vramTransfer = FALSE;
        v6.resources[0] = (v0 + 15000);
        v6.resources[1] = 16000;
        v6.resources[2] = 17000;
        v6.resources[3] = 18000;
        v6.resources[4] = SPRITE_RESOURCE_NONE;
        v6.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_2FC[v0] = SpriteSystem_NewSprite(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v6);

        v2 = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);
        v1 = Pokemon_GetValue(v5, MON_DATA_IS_EGG, NULL);
        v4 = Pokemon_GetValue(v5, MON_DATA_FORM, NULL);
        v3 = PokeIconPaletteIndex(v2, v4, v1);

        Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_2FC[v0]->sprite, v3);
        ManagedSprite_SetAnim(param0->unk_2FC[v0], 1);
    }
}

void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    s16 v2, v3;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        ManagedSprite_SetDrawFlag(param0->unk_2FC[v0], 0);
    }

    for (v0 = 0; v0 < 12; v0++) {
        v1 = param0->unk_04[v0].unk_00;

        if (v1 != 0xff) {
            ov76_0223C0EC(v0, &v2, &v3);
            ManagedSprite_SetPositionXY(param0->unk_2FC[v1], v2 + -16, v3 + (+12));
            ManagedSprite_SetDrawFlag(param0->unk_2FC[v1], 1);
        }
    }
}

void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        ManagedSprite_TickFrame(param0->unk_2FC[v0]);
    }
}

void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_2FC[v0]);
    }
}

void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    int v1;
    int v2 = 0;
    BallCapsule *v3;

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
    param0->unk_08 = SpriteSystem_Alloc(53);
    {
        const RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const CharTransferTemplateWithModes v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        SpriteSystem_Init(param0->unk_08, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const SpriteResourceCapacities v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_0C = SpriteManager_New(param0->unk_08);
        v2 = SpriteSystem_InitSprites(param0->unk_08, param0->unk_0C, (64 + 64));
        GF_ASSERT(v2);

        v2 = SpriteSystem_InitManagerWithCapacities(param0->unk_08, param0->unk_0C, &v3);
        GF_ASSERT(v2);
    }
}

void ov76_0223C424(UnkStruct_ov76_0223C398 *param0)
{
    SpriteSystem_FreeResourcesAndManager(param0->unk_08, param0->unk_0C);
    SpriteSystem_Free(param0->unk_08);
}

void ov76_0223C438(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 265, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 45000);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 173, TRUE, 47000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, param1, 81, TRUE, 48000);
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
        v1.vramTransfer = FALSE;
        v1.resources[0] = 45000;
        v1.resources[1] = 26000 + 290;
        v1.resources[2] = 47000;
        v1.resources[3] = 48000;
        v1.resources[4] = SPRITE_RESOURCE_NONE;
        v1.resources[5] = SPRITE_RESOURCE_NONE;
        param0->unk_314[v0] = SpriteSystem_NewSprite(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);

        ManagedSprite_SetFlipMode(param0->unk_314[v0], v2[v0][2]);
    }
}

void ov76_0223C544(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    if (param0->unk_D4.unk_04 == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        ManagedSprite_TickFrame(param0->unk_314[v0]);
    }
}

void ov76_0223C568(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ManagedSprite_SetDrawFlag(param0->unk_314[v0], param1);
    }
}

void ov76_0223C588(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_314[v0]);
    }
}

void ov76_0223C5A4(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *param10)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param10, param3, TRUE, param7, (param3 + 11000));
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param2, param8, param0, param1, param10, param4, FALSE, param9, param7, (param4 + 11000));
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param10, param5, TRUE, (param5 + 11000));
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param10, param6, TRUE, (param6 + 11000));
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
            v1.vramTransfer = FALSE;
            v1.resources[0] = (266 + 11000);
            v1.resources[1] = (286 + 11000);
            v1.resources[2] = (174 + 11000);
            v1.resources[3] = (82 + 11000);
            v1.resources[4] = SPRITE_RESOURCE_NONE;
            v1.resources[5] = SPRITE_RESOURCE_NONE;

            param0->unk_264[v0].unk_08 = SpriteSystem_NewSprite(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);
            {
                s16 v2, v3;

                ov76_0223C0EC(v0, &v2, &v3);
                ManagedSprite_SetPositionXY(param0->unk_264[v0].unk_08, v2, v3);
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
        v1.vramTransfer = FALSE;
        v1.resources[0] = (275 + 11000);
        v1.resources[1] = (291 + 11000);
        v1.resources[2] = (179 + 11000);
        v1.resources[3] = (87 + 11000);
        v1.resources[4] = SPRITE_RESOURCE_NONE;
        v1.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_2F4[0] = SpriteSystem_NewSprite(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);
        param0->unk_2F4[1] = SpriteSystem_NewSprite(param0->unk_D4.unk_08, param0->unk_D4.unk_0C, &v1);

        {
            s16 v4, v5;

            ov76_0223C0EC(param0->unk_3C4[0], &v4, &v5);
            ManagedSprite_SetPositionXY(param0->unk_2F4[0], v4, v5);
            ManagedSprite_SetPositionXY(param0->unk_2F4[1], v4, v5);
            ManagedSprite_SetPriority(param0->unk_2F4[1], 25);
            ManagedSprite_SetAnim(param0->unk_2F4[0], 0);
            ManagedSprite_SetAnim(param0->unk_2F4[1], 0);
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

        ManagedSprite_SetAnim(param0->unk_264[v0].unk_08, param0->unk_264[v0].unk_04);
    }
}

void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    BallCapsule v5;

    v1 = param0->unk_04[param1].unk_00;
    v2 = param0->unk_04[param2].unk_00;

    if (v1 != 0xff) {
        v3 = param2 + 1;
        Pokemon_SetValue(param0->unk_00->unk_04[v1], MON_DATA_BALL_CAPSULE_ID, (u8 *)&v3);
    }

    if (v2 != 0xff) {
        v4 = param1 + 1;
        Pokemon_SetValue(param0->unk_00->unk_04[v2], MON_DATA_BALL_CAPSULE_ID, (u8 *)&v4);
    }

    v0 = param0->unk_04[param1].unk_00;
    param0->unk_04[param1].unk_00 = param0->unk_04[param2].unk_00;
    param0->unk_04[param2].unk_00 = v0;

    BallCapsule_Copy(param0->unk_04[param1].unk_04, &v5);
    BallCapsule_Copy(param0->unk_04[param2].unk_04, param0->unk_04[param1].unk_04);
    BallCapsule_Copy(&v5, param0->unk_04[param2].unk_04);
    ov76_0223C7E0(param0);
}

void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        ManagedSprite_TickFrame(param0->unk_264[v0].unk_08);
    }

    ManagedSprite_TickFrame(param0->unk_2F4[0]);
    ManagedSprite_TickFrame(param0->unk_2F4[1]);
}

void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_264[v0].unk_08);
    }

    Sprite_DeleteAndFreeResources(param0->unk_2F4[0]);
    Sprite_DeleteAndFreeResources(param0->unk_2F4[1]);
}

void ov76_0223C8EC(BgConfig *param0, PaletteData *param1, int param2)
{
    LoadMessageBoxGraphics(param0, BG_LAYER_MAIN_1, 1, 15, param2, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param1, 38, GetMessageBoxPaletteNARCMember(param2), 53, 0, 0x20, 12 * 16);
    LoadStandardWindowGraphics(param0, BG_LAYER_MAIN_1, (1 + (18 + 12)), 13, 0, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param1, 38, GetStandardWindowPaletteNARCMember(), 53, 0, 0x20, 13 * 16);
    PaletteData_LoadBufferFromFileStart(param1, 14, 7, 53, 0, 0x20, 14 * 16);
}

void ov76_0223C974(BgConfig *param0, PaletteData *param1, int param2)
{
    LoadMessageBoxGraphics(param0, BG_LAYER_SUB_0, 1, 15, param2, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param1, 38, GetMessageBoxPaletteNARCMember(param2), 53, 1, 0x20, 12 * 16);
    LoadStandardWindowGraphics(param0, BG_LAYER_SUB_0, (1 + (18 + 12)), 13, 0, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param1, 38, GetStandardWindowPaletteNARCMember(), 53, 1, 0x20, 13 * 16);
    PaletteData_LoadBufferFromFileStart(param1, 14, 7, 53, 1, 0x20, 14 * 16);
    PaletteData_LoadBufferFromFileStart(param1, 14, 7, 53, 1, 0x20, 3 * 16);
    PaletteData_LoadBufferFromFileStart(param1, 91, 294, 53, 1, 0x20, 11 * 16);
}

void ov76_0223CA30(Window *param0, int param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    if (param1 == 0xFFFF) {
        Window_FillTilemap(param0, 15);
        Window_CopyToVRAM(param0);
        return;
    }

    v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    Window_FillTilemap(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(param0);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

void ov76_0223CA98(BgConfig *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    Window_Init(param1);
    Window_Add(param0, param1, param2, param3, param4, param5, param6, 14, param7);
    Window_DrawMessageBoxWithScrollCursor(param1, 1, 1, 12);
    Window_FillTilemap(param1, 15);
    Window_CopyToVRAM(param1);
}

static void ov76_0223CAFC(BgConfig *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    Window_Init(param1);
    Window_Add(param0, param1, param2, param3, param4, param5, param6, param8, param7);
    Window_FillTilemap(param1, 15);
    Window_CopyToVRAM(param1);
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
            Window_FillTilemap(v5, 0xEE);
            Window_CopyToVRAM(v5);
            continue;
        }

        Window_FillTilemap(v5, 0x0);

        v4 = Strbuf_Init(100, HEAP_ID_53);
        v3 = SealCase_GetSealCount(param0->unk_64, v2 - 1);

        Strbuf_FormatInt(v4, v3, 3, 1, 1);
        Text_AddPrinterWithParamsAndColor(v5, FONT_SYSTEM, v4, (-1 + 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Window_CopyToVRAM(v5);
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
    Window *v5 = &param0->unk_D4.unk_18[param1 + 3];
    v1 = param1;
    v2 = param0->unk_418.unk_08[v1];

    if (v2 == 0) {
        Window_FillTilemap(v5, 0xEE);
        Window_CopyToVRAM(v5);
        return;
    }

    Window_FillTilemap(v5, 0x0);

    v4 = Strbuf_Init(100, HEAP_ID_53);
    v3 = SealCase_GetSealCount(param0->unk_64, v2 - 1);

    Strbuf_FormatInt(v4, v3, 3, 1, 1);
    Text_AddPrinterWithParamsAndColor(v5, FONT_MESSAGE, v4, (-1 + 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(v5);
    Strbuf_Free(v4);
}

void ov76_0223CDA4(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 3; v0 < 11; v0++) {
        Window_ClearAndCopyToVRAM(&param0->unk_D4.unk_18[v0]);
        Window_Remove(&param0->unk_D4.unk_18[v0]);
    }
}

void ov76_0223CDC4(Window *param0, int param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    if (param1 == 0xFFFF) {
        Window_FillTilemap(param0, 15);
        Window_CopyToVRAM(param0);
        return;
    }

    v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BALL_SEAL_NAMES, HEAP_ID_53);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    Window_FillTilemap(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(param0);
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
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_53);
}

void ov76_0223CE64(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_53);
}

void ov76_0223CE84(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 268;
    int v2 = 284;
    int v3 = 288;
    int v4 = 2;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 0, 0x20 * 2, 0);

    v1 = 269;
    v2 = 285;
    v4 = 3;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
}

void ov76_0223CF24(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 283;
    int v3 = 287;
    int v4 = 5;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CF88(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 282;
    int v3 = 287;
    int v4 = 7;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.unk_10, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CFEC(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    SpriteSystem *v0 = param0->unk_D4.unk_08;
    SpriteManager *v1 = param0->unk_D4.unk_0C;
    PaletteData *v2 = param0->unk_D4.unk_14;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v2, PLTTBUF_SUB_OBJ, v0, v1, param1, 290, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 290);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 273, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 273);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 177, TRUE, 27000 + 177);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 85, TRUE, 28000 + 85);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 274, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 274);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 178, TRUE, 27000 + 178);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 86, TRUE, 28000 + 86);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 270, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 270);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 175, TRUE, 27000 + 175);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 83, TRUE, 28000 + 83);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 272, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 35000 + 272);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 176, TRUE, 27000 + 176);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 84, TRUE, 28000 + 84);
}

void ov76_0223D16C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate v2;
    SpriteSystem *v3 = param0->unk_D4.unk_08;
    SpriteManager *v4 = param0->unk_D4.unk_0C;
    PaletteData *v5 = param0->unk_D4.unk_14;
    v1 = &param0->unk_3E4;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 60;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v2.bgPriority = 1;
    v2.vramTransfer = FALSE;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;

    v0 = 8;

    v2.plttIdx = 1;
    v2.resources[0] = 25000 + 273;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 177;
    v2.resources[3] = 28000 + 85;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.resources[0] = 25000 + 274;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 178;
    v2.resources[3] = 28000 + 86;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 1;
    v2.resources[0] = 35000 + 272;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 176;
    v2.resources[3] = 28000 + 84;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 0;
    v2.resources[0] = 25000 + 270;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 175;
    v2.resources[3] = 28000 + 83;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

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
            ManagedSprite_SetPositionXY(param0->unk_3E4.unk_00[v0], v6[v0][0], v6[v0][1]);
            ManagedSprite_TickFrame(param0->unk_3E4.unk_00[v0]);
            ManagedSprite_SetAnimationFrame(param0->unk_3E4.unk_00[v0], 0);
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

        ManagedSprite_SetDrawFlag(param0->unk_3E4.unk_00[v0], param1);
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
        Sprite_DeleteAndFreeResources(param0->unk_3E4.unk_00[v0]);
    }
}
