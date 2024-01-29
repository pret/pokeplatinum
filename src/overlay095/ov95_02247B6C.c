#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/sprite_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "pokemon.h"
#include "overlay095/struct_ov95_02247628_decl.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02005474.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "unk_020393C8.h"
#include "pokemon.h"
#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"
#include "overlay095/ov95_02247B6C.h"

typedef struct {
    UnkStruct_ov95_02247628 * unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_02007768 * unk_0C;
    Sprite * unk_10;
    SpriteAnimationFrame unk_14[10];
    GraphicElementData * unk_3C[2];
    UnkStruct_ov95_02247568 unk_44;
    BGL * unk_54;
    Window unk_58;
    Strbuf* unk_68;
    Strbuf* unk_6C;
    UnkStruct_ov95_0224773C * unk_70;
    UnkStruct_ov95_02247958 * unk_74;
    SysTask * unk_78;
    SysTask * unk_7C;
    NARC * unk_80;
} UnkStruct_ov95_02247C6C;

typedef struct {
    UnkStruct_ov95_02247C6C * unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    int unk_10;
} UnkStruct_ov95_02248364;

typedef struct {
    UnkStruct_ov95_02247C6C * unk_00;
    UnkStruct_ov95_02247958 * unk_04;
    VecFx32 unk_08;
    VecFx16 unk_14;
    fx32 unk_1C;
    int unk_20;
    BOOL unk_24;
    int unk_28;
    fx16 unk_2C;
} UnkStruct_ov95_02248420;

static void ov95_02247C6C(UnkStruct_ov95_02247C6C * param0);
static int ov95_02247CB4(UnkStruct_ov95_02247C6C * param0, int * param1);
static int ov95_02247ED8(UnkStruct_ov95_02247C6C * param0, int * param1);
static int ov95_02247F04(UnkStruct_ov95_02247C6C * param0, int * param1);
static int ov95_02248090(UnkStruct_ov95_02247C6C * param0, int * param1);
static void ov95_02248174(UnkStruct_ov95_02247C6C * param0);
static Sprite * ov95_02248240(UnkStruct_ov95_02247C6C * param0);
static void ov95_0224829C(UnkStruct_ov95_02247C6C * param0);
static void ov95_02248340(UnkStruct_ov95_02247C6C * param0);
static void ov95_02248364(UnkStruct_ov95_02247C6C * param0, int param1, int param2, int param3);
static BOOL ov95_022483B4(UnkStruct_ov95_02247C6C * param0);
static void ov95_022483C4(UnkStruct_ov95_02247C6C * param0);
static void ov95_022483E4(SysTask * param0, void * param1);
static void ov95_02248420(UnkStruct_ov95_02247C6C * param0);
static BOOL ov95_0224846C(UnkStruct_ov95_02247C6C * param0);
static int ov95_0224847C(UnkStruct_ov95_02247C6C * param0);
static void ov95_02248490(UnkStruct_ov95_02247C6C * param0);
static void ov95_022484B0(SysTask * param0, void * param1);

void * ov95_02247B6C (UnkStruct_ov95_02247628 * param0)
{
    UnkStruct_ov95_02247C6C * v0 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_02247C6C));

    if (v0) {
        int v1;

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_54 = ov95_02247628(param0);
        v0->unk_0C = sub_0200762C(58);
        v0->unk_10 = NULL;
        v0->unk_68 = Strbuf_Init(300, 58);
        v0->unk_6C = Strbuf_Init(300, 58);
        v0->unk_78 = NULL;
        v0->unk_7C = NULL;
        v0->unk_80 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, 58);
    }

    return v0;
}

void ov95_02247BC8 (void * param0)
{
    UnkStruct_ov95_02247C6C * v0 = param0;

    if (v0) {
        int v1;

        ov95_022483C4(v0);
        ov95_02248490(v0);
        ov95_02248340(v0);

        Strbuf_Free(v0->unk_68);
        Strbuf_Free(v0->unk_6C);

        ov95_0224773C(v0->unk_70);

        sub_02019044(v0->unk_54, 1);
        sub_02019044(v0->unk_54, 2);
        sub_02019044(v0->unk_54, 6);
        BGL_DeleteWindow(&(v0->unk_58));
        NARC_dtor(v0->unk_80);

        if (v0->unk_10) {
            sub_02007DC8(v0->unk_10);
        }

        sub_02007B6C(v0->unk_0C);
        Heap_FreeToHeap(v0);
    }
}

BOOL ov95_02247C34 (void * param0, int * param1)
{
    static int(*const v0[])(UnkStruct_ov95_02247C6C *, int *) = {
        ov95_02247CB4,
        ov95_02247ED8,
        ov95_02247F04,
        ov95_02248090,
    };

    UnkStruct_ov95_02247C6C * v1 = param0;

    if ((*param1) < NELEMS(v0)) {
        if (v0[*param1](v1, &(v1->unk_04))) {
            (*param1)++;
            v1->unk_04 = 0;
        }

        ov95_02247C6C(v1);

        return 0;
    }

    return 1;
}

static void ov95_02247C6C (UnkStruct_ov95_02247C6C * param0)
{
    G3X_Reset();
    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        sub_02008A94(param0->unk_0C);
        sub_02007768(param0->unk_0C);
    }

    NNS_G3dGePopMtx(1);

    ov95_02247770(param0->unk_70);
    sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static int ov95_02247CB4 (UnkStruct_ov95_02247C6C * param0, int * param1)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const UnkStruct_ov97_0222DB78 v3 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x04000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    sub_02018368(&v1);

    sub_020183C4(param0->unk_54, 1, &v2, 0);
    sub_020183C4(param0->unk_54, 2, &v3, 0);
    sub_020183C4(param0->unk_54, 6, &v3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    sub_020196C0(param0->unk_54, 1, 0x0, 1, 0);
    sub_02019CB8(param0->unk_54, 1, 0x0, 0, 0, 32, 32, 0);
    sub_0200DD0C(param0->unk_54, 1, 109, 2, ov95_02247674(param0->unk_00), 58);
    BGL_AddWindow(param0->unk_54, &(param0->unk_58), 1, 2, 19, 27, 4, 1, 1);
    BGL_FillWindow(&(param0->unk_58), 0xf);

    sub_02006E84(14, 7, 0, 1 * 0x20, 0x20, 58);
    sub_02006E3C(93, 22, param0->unk_54, 2, 0, 0, 1, 58);
    sub_02006E60(93, 21, param0->unk_54, 2, 0, 0, 1, 58);
    sub_02006E84(93, 23, 0, 0 * 0x20, 0x20, 58);
    sub_02006E3C(93, 22, param0->unk_54, 6, 0, 0, 1, 58);
    sub_02006E60(93, 21, param0->unk_54, 6, 0, 0, 1, 58);
    sub_02006E84(93, 23, 4, 0 * 0x20, 0x20, 58);

    sub_02019448(param0->unk_54, 1);
    ov95_02248174(param0);

    param0->unk_70 = ov95_022476F0(1, 0, 0, 0);
    param0->unk_10 = ov95_02248240(param0);
    param0->unk_74 = ov95_022478B4(param0->unk_70, 0, 93, 27, 0, 147456 + 4294928384, 245760 + 227328, 0);

    {
        VecFx16 v4 = {0x0, 0xf000, 0x0};
        ov95_02247990(param0->unk_74, &v4);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    ov95_0224829C(param0);

    G2_BlendNone();

    sub_02039734();
    sub_020397C8(1, 57);
    sub_0200F174(0, 1, 1, 0x0, 16, 1, 58);

    return 1;
}

static int ov95_02247ED8 (UnkStruct_ov95_02247C6C * param0, int * param1)
{
    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            sub_02021D6C(param0->unk_3C[0], 1);
            sub_02021CAC(param0->unk_3C[0], 1);
            return 1;
        }
        break;
    }

    return 0;
}

static int ov95_02247F04 (UnkStruct_ov95_02247C6C * param0, int * param1)
{
    switch (*param1) {
    case 0:
        param0->unk_08 = 0;
        (*param1)++;
        break;
    case 1:
        if (++(param0->unk_08) > 10) {
            MessageLoader * v0 = ov95_02247630(param0->unk_00);
            UnkStruct_0200B358 * v1 = ov95_0224762C(param0->unk_00);
            int v2, v3;

            if (ov95_02247680(param0->unk_00) == 1) {
                v2 = 0;
                v3 = 2;
            } else {
                v2 = 4;
                v3 = 3;
            }

            MessageLoader_GetStrbuf(v0, v2, param0->unk_68);
            sub_0200C388(v1, param0->unk_6C, param0->unk_68);
            sub_0201D738(&(param0->unk_58), 1, param0->unk_6C, 0, 0, 0xff, NULL);
            sub_0200E010(&(param0->unk_58), 109, 2);
            sub_0201A954(&(param0->unk_58));
            param0->unk_08 = 0;
            (*param1) = v3;
        }
        break;
    case 2:
        if (++(param0->unk_08) > 60) {
            MessageLoader * v4 = ov95_02247630(param0->unk_00);
            UnkStruct_0200B358 * v5 = ov95_0224762C(param0->unk_00);

            MessageLoader_GetStrbuf(v4, 1, param0->unk_68);
            sub_0200C388(v5, param0->unk_6C, param0->unk_68);

            {
                const BoxPokemon * v6 = ov95_02247634(param0->unk_00);

                if (BoxPokemon_GetValue((BoxPokemon *)v6, MON_DATA_IS_EGG, NULL) == 0) {
                    u8 v7;

                    sub_02007B98(param0->unk_10, 1);
                    PokeSprite_LoadCryDelay(param0->unk_80, &v7, ov95_0224764C(param0->unk_00), 1);
                    sub_0200590C(ov95_0224764C(param0->unk_00), v7, ov95_02247654(param0->unk_00));
                }

                BGL_FillWindow(&(param0->unk_58), 0xf);
                sub_0201D738(&(param0->unk_58), 1, param0->unk_6C, 0, 0, 0xff, NULL);
                sub_0201ACCC(&(param0->unk_58));
                param0->unk_08 = 0;
                (*param1)++;
            }
        }
        break;
    case 3:
        if (++(param0->unk_08) > 60) {
            sub_0200E084(&(param0->unk_58), 0);
            param0->unk_08 = 0;
            (*param1)++;
        }
        break;
    case 4:
        if (++(param0->unk_08) > 20) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov95_02248090 (UnkStruct_ov95_02247C6C * param0, int * param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(1704);
        ov95_02248364(param0, 0, 16, 12);
        (*param1)++;
        break;
    case 1:
        if (ov95_022483B4(param0)) {
            sub_02007DC8(param0->unk_10);
            sub_02021D6C(param0->unk_3C[1], 0);
            sub_02021CAC(param0->unk_3C[1], 1);
            (*param1)++;
        }
        break;
    case 2:
        if (sub_02021FD0(param0->unk_3C[1]) == 0) {
            ov95_022479A8(param0->unk_74, 1);
            ov95_02248364(param0, 16, 0, 16);
            ov95_02248420(param0);
            (*param1)++;
        }
        break;
    case 3:
        if ((ov95_0224847C(param0) >= 2) || (ov95_0224846C(param0) == 1)) {
            sub_0200F174(0, 0, 0, 0x0, 24, 1, 58);
            (*param1)++;
        }
        break;
    case 4:
        if (ScreenWipe_Done()) {
            if (ov95_0224846C(param0)) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

static void ov95_02248174 (UnkStruct_ov95_02247C6C * param0)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);

    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    v0 = NNS_GfdAllocTexVram(0x4000, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    sub_02008A78(param0->unk_0C, NNS_GfdGetTexKeyAddr(v0), NNS_GfdGetTexKeySize(v0));
    sub_02008A84(param0->unk_0C, NNS_GfdGetPlttKeyAddr(v1), NNS_GfdGetPlttKeySize(v1));
}

static Sprite * ov95_02248240 (UnkStruct_ov95_02247C6C * param0)
{
    ArchivedSprite v0;
    BoxPokemon * v1;
    int v2;

    v1 = (BoxPokemon *)ov95_02247634(param0->unk_00);

    BoxPokemon_BuildArchivedSprite(&v0, v1, 2, 0);
    PokeSprite_LoadAnimationFrames(param0->unk_80, param0->unk_14, ov95_0224764C(param0->unk_00), 1);

    v2 = (100 - 20) + BoxPokemon_SpriteYOffset(v1, 2, 0);

    return sub_02007C34(param0->unk_0C, &v0, 128, v2, 0, 0, param0->unk_14, NULL);
}

static void ov95_0224829C (UnkStruct_ov95_02247C6C * param0)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;
    UnkStruct_ov19_021DA864 v2;

    ov95_02247568(&param0->unk_44, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    sub_02006F00(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v1);
    sub_02006EE0(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v0);

    ov95_022475C4(&v2, &param0->unk_44, &v1, &v0, 2);

    param0->unk_3C[0] = ov95_022475E4(param0->unk_00, &v2, 128, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
    param0->unk_3C[1] = ov95_022475E4(param0->unk_00, &v2, 128, 90, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    sub_02021E80(param0->unk_3C[1], 1);
    sub_02021CAC(param0->unk_3C[0], 0);
    sub_02021CAC(param0->unk_3C[1], 0);
}

static void ov95_02248340 (UnkStruct_ov95_02247C6C * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_3C[v0]) {
            sub_02021BD4(param0->unk_3C[v0]);
        }
    }

    ov95_022475A0(&param0->unk_44);
}

static void ov95_02248364 (UnkStruct_ov95_02247C6C * param0, int param1, int param2, int param3)
{
    UnkStruct_ov95_02248364 * v0 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_02248364));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param1 << 12;
        v0->unk_08 = param2 << 12;
        v0->unk_0C = (v0->unk_08 - v0->unk_04) / param3;
        v0->unk_10 = param3;
        param0->unk_78 = sub_0200DA04(ov95_022483E4, v0, 0);

        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, param1);
    }
}

static BOOL ov95_022483B4 (UnkStruct_ov95_02247C6C * param0)
{
    return param0->unk_78 == NULL;
}

static void ov95_022483C4 (UnkStruct_ov95_02247C6C * param0)
{
    if (param0->unk_78) {
        ov95_022476C8(sub_0201CED0(param0->unk_78));
        SysTask_Done(param0->unk_78);
        param0->unk_78 = NULL;
    }
}

static void ov95_022483E4 (SysTask * param0, void * param1)
{
    UnkStruct_ov95_02248364 * v0 = param1;
    int v1;

    if (--(v0->unk_10) > 0) {
        v0->unk_04 += v0->unk_0C;
        v1 = v0->unk_04 >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, v1);
    } else {
        v1 = v0->unk_08 >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, v1);
        ov95_022483C4(v0->unk_00);
    }
}

static void ov95_02248420 (UnkStruct_ov95_02247C6C * param0)
{
    UnkStruct_ov95_02248420 * v0 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_02248420));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_74;

        ov95_02247958(v0->unk_04, &(v0->unk_08));
        ov95_02247978(v0->unk_04, &(v0->unk_14));

        v0->unk_1C = 12128;
        v0->unk_20 = 0;
        v0->unk_2C = 0;
        v0->unk_24 = 0;
        v0->unk_28 = 0;

        param0->unk_7C = SysTask_Start(ov95_022484B0, v0, 0);
    }
}

static BOOL ov95_0224846C (UnkStruct_ov95_02247C6C * param0)
{
    return param0->unk_7C == NULL;
}

static int ov95_0224847C (UnkStruct_ov95_02247C6C * param0)
{
    if (param0->unk_7C) {
        UnkStruct_ov95_02248420 * v0 = sub_0201CED0(param0->unk_7C);
        return v0->unk_20;
    }

    return 0;
}

static void ov95_02248490 (UnkStruct_ov95_02247C6C * param0)
{
    if (param0->unk_7C) {
        Heap_FreeToHeap(sub_0201CED0(param0->unk_7C));
        SysTask_Done(param0->unk_7C);
        param0->unk_7C = NULL;
    }
}

static void ov95_022484B0 (SysTask * param0, void * param1)
{
    UnkStruct_ov95_02248420 * v0 = param1;
    BOOL v1 = 0;

    if (v0->unk_24 == 0) {
        v0->unk_08.y += v0->unk_1C;

        if (v0->unk_1C >= 0) {
            v0->unk_1C += -1920;
        } else {
            v0->unk_1C += -1920;

            if (v0->unk_08.y <= -16384) {
                v0->unk_08.y = -16384;
                v0->unk_1C = -((v0->unk_1C * 44) / 100);

                if (v0->unk_1C < 4000) {
                    v0->unk_24 = 1;
                }

                Sound_PlayEffect(1510);
                v0->unk_20++;

                switch (v0->unk_20) {
                case 1:
                    v0->unk_2C = 176;
                    break;
                case 3:
                    v0->unk_2C += 80;
                    break;
                }
            }
        }
    }

    v0->unk_14.x += v0->unk_2C;
    v0->unk_14.z -= v0->unk_2C;

    ov95_02247990(v0->unk_04, &(v0->unk_14));

    v0->unk_08.x += (v0->unk_2C * 5);
    v0->unk_08.z += (v0->unk_2C * 5);

    ov95_02247968(v0->unk_04, &(v0->unk_08));

    if (v0->unk_24) {
        v0->unk_2C -= 14;

        if (++(v0->unk_28) > 30) {
            ov95_02248490(v0->unk_00);
        }
    }
}
