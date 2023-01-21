#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "overlay077/const_ov77_021D742C.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017248.h"
#include "struct_defs/struct_02017294.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02000C88.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200AC5C.h"
#include "unk_0200F174.h"
#include "unk_020170BC.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201C970.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201E190.h"
#include "unk_0201FE94.h"
#include "unk_02020020.h"
#include "unk_02023790.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay89);
FS_EXTERN_OVERLAY(overlay97);
FS_EXTERN_OVERLAY(d_startmenu);

typedef struct {
    int unk_00;
    NNSG3dRenderObj unk_04;
    NNSG3dResMdl * unk_58;
    NNSG3dResFileHeader * unk_5C;
    void * unk_60;
    void * unk_64;
    NNSG3dAnmObj * unk_68;
    NNSG3dAnmObj * unk_6C;
    NNSFndAllocator unk_70;
    VecFx32 unk_80;
    VecFx32 unk_8C;
    VecFx32 unk_98;
    UnkStruct_020203AC * unk_A4;
    UnkStruct_020203AC * unk_A8;
    int unk_AC;
    UnkStruct_02017294 unk_B0;
    UnkStruct_02017248 unk_128;
    UnkStruct_02017248 unk_13C;
    UnkStruct_020170F4 unk_150;
    UnkStruct_02017294 unk_160;
    UnkStruct_02017248 unk_1D8;
    UnkStruct_02017248 unk_1EC;
    UnkStruct_020170F4 unk_200;
    u32 unk_210;
    int unk_214;
    int unk_218;
    fx32 unk_21C;
    int unk_220;
    u8 unk_224;
    u8 unk_225;
} UnkStruct_ov77_021D1208;

typedef struct {
    int unk_00;
    UnkStruct_ov77_021D1208 unk_04;
} UnkStruct_ov77_021D17B4_sub1;

typedef struct {
    int unk_00;
    UnkStruct_ov77_021D1208 unk_04;
    u16 unk_22A;
    UnkStruct_0205AA50 unk_22C;
    VecFx32 unk_23C;
    VecFx32 unk_248;
    BOOL unk_254;
    VecFx32 unk_258;
    VecFx32 unk_264;
    VecFx32 unk_270;
    VecFx32 unk_27C;
    VecFx16 unk_288;
    VecFx16 unk_28E;
    u16 unk_294;
    u16 unk_296;
    fx32 unk_298;
    BOOL unk_29C;
    BOOL unk_2A0;
    int unk_2A4;
    int unk_2A8;
    int unk_2AC;
} UnkStruct_ov77_021D1568;

typedef struct {
    int unk_00;
    UnkStruct_02018340 * unk_04;
    UnkStruct_0207C690 * unk_08;
    UnkStruct_ov77_021D17B4_sub1 unk_0C;
    UnkStruct_ov77_021D1568 unk_238;
    u16 unk_4E8;
    int unk_4EC;
    int unk_4F0;
    int unk_4F4;
    int unk_4F8;
    int unk_4FC;
} UnkStruct_ov77_021D17B4;


extern const UnkStruct_0208BE5C Unk_020F8A48;
extern const UnkStruct_0208BE5C Unk_020F8AB4;
extern const UnkStruct_0208BE5C Unk_ov77_021D788C;

static void ov77_021D1D48(UnkStruct_02018340 * param0, int param1);
void sub_02000EC4(FSOverlayID param0, const UnkStruct_0208BE5C * param1);
static int ov77_021D0D80(UnkStruct_020067E8 * param0, int * param1);
static int ov77_021D0E3C(UnkStruct_020067E8 * param0, int * param1);
static int ov77_021D10FC(UnkStruct_020067E8 * param0, int * param1);
static void ov77_021D1178(void * param0);
static void ov77_021D1184(void);
static void ov77_021D17B4(UnkStruct_ov77_021D17B4 * param0);
static void ov77_021D1908(UnkStruct_ov77_021D17B4 * param0);
static void ov77_021D11CC(UnkStruct_ov77_021D17B4 * param0);
static void ov77_021D11FC(UnkStruct_ov77_021D17B4 * param0);
static void ov77_021D1208(UnkStruct_ov77_021D1208 * param0, int param1, int param2, int param3);
static void ov77_021D14E4(UnkStruct_ov77_021D1208 * param0);
static void ov77_021D1568(UnkStruct_ov77_021D1568 * param0, UnkStruct_ov77_021D1208 * param1);
static BOOL ov77_021D11A4(void);
static BOOL ov77_021D1A60(UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2);
static BOOL ov77_021D1DF0(UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2);
static BOOL ov77_021D20E4(UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2);
static BOOL ov77_021D21C0(UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2);
static void ov77_021D1300(UnkStruct_ov77_021D1208 * param0, int param1);
static void ov77_021D1514(UnkStruct_ov77_021D1208 * param0);
static void ov77_021D1704(UnkStruct_ov77_021D1208 * param0);
static void ov77_021D1984(UnkStruct_ov77_021D1568 * param0, UnkStruct_ov77_021D1208 * param1);
static void ov77_021D25AC(UnkStruct_020203AC * param0);
static void ov77_021D2214(UnkStruct_02018340 * param0, int param1, UnkStruct_ov77_021D1568 * param2);
static void ov77_021D2428(UnkStruct_02018340 * param0, int param1, UnkStruct_ov77_021D1568 * param2);
static void ov77_021D24C8(UnkStruct_ov77_021D1568 * param0);
static void ov77_021D2438(UnkStruct_ov77_021D1568 * param0);

const UnkStruct_0208BE5C Unk_ov77_021D742C = {
    ov77_021D0D80,
    ov77_021D0E3C,
    ov77_021D10FC,
    0xffffffff
};

static int ov77_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov77_021D17B4 * v0;
    int v1;

    v1 = 30;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    G2S_BlendNone();
    G2_BlendNone();

    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);

    sub_0201FF00();
    sub_0201FF68();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    sub_02017DD4(4, 8);
    CreateHeap(3, v1, 0x40000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov77_021D17B4), v1);
    memset(v0, 0, sizeof(UnkStruct_ov77_021D17B4));

    v0->unk_00 = v1;
    v0->unk_4E8 = 0;
    v0->unk_4F8 = 0;

    ov77_021D1184();
    ov77_021D17B4(v0);
    ov77_021D11CC(v0);

    sub_02017798(ov77_021D1178, (void *)v0);
    sub_0201FFD0();

    return 1;
}

static int ov77_021D0E3C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov77_021D17B4 * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        if (ov77_021D1A60(&v0->unk_238, v0->unk_04, v0->unk_00) == 1) {
            v0->unk_238.unk_00 = 0;

            if (Unk_021BF67C.unk_6C == 0) {
                v0->unk_4EC = 30 * 1;
                v0->unk_238.unk_29C = 1;
                v0->unk_238.unk_2A0 = 0;
                *param1 = 2;
            } else {
                v0->unk_4EC = 0;
                Unk_021BF67C.unk_6C = 0;
                v0->unk_238.unk_2A0 = 1;
                *param1 = 1;
            }
        }
        break;
    case 1:
        if (ov77_021D1DF0(&v0->unk_238, v0->unk_04, v0->unk_00) == 1) {
            v0->unk_238.unk_00 = 0;
            *param1 = 2;
        }
        break;
    case 2:
        sub_02004234(0);
        sub_02004550(1, 1173, 1);
        *param1 = 3;
        break;
    case 3:
        if (v0->unk_4EC) {
            v0->unk_4EC--;

            v0->unk_238.unk_254 = 0;
            ov77_021D20E4(&v0->unk_238, v0->unk_04, v0->unk_00);
            break;
        } else {
            v0->unk_238.unk_254 = 1;
            ov77_021D20E4(&v0->unk_238, v0->unk_04, v0->unk_00);
        }

        v0->unk_4F8++;

        if (((Unk_021BF67C.unk_48 & PAD_BUTTON_A) == PAD_BUTTON_A) || ((Unk_021BF67C.unk_48 & PAD_BUTTON_START) == PAD_BUTTON_START)) {
            v0->unk_4E8 = 1;
            sub_0200564C(0, 60);
            sub_02005844(487, 1);
            ov77_021D1D48(v0->unk_04, v0->unk_00);
            *param1 = 4;
            break;
        }

        if (((Unk_021BF67C.unk_44 & (PAD_BUTTON_B | PAD_KEY_UP | PAD_BUTTON_SELECT)) == (PAD_BUTTON_B | PAD_KEY_UP | PAD_BUTTON_SELECT))) {
            v0->unk_4E8 = 2;
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 6;
            break;
        }

        if (v0->unk_4F8 > 30 * 30) {
            v0->unk_4E8 = 3;
            Unk_021BF67C.unk_6C = 1;
            {sub_0201FF74(GX_PLANEMASK_BG0, 0);}
            sub_0200564C(0, 60);
            *param1 = 5;
            break;
        }
        break;
    case 4:
        v0->unk_238.unk_254 = 0;
        ov77_021D20E4(&v0->unk_238, v0->unk_04, v0->unk_00);

        if ((++v0->unk_4FC) == 10) {
            sub_0200F174(0, 0, 0, 0x7fff, 6, 1, v0->unk_00);
        }

        if ((sub_0200598C() == 0) && (sub_0200F2AC() == 1) && (v0->unk_4FC >= 10)) {
            sub_020055D0(1173, 0);

            sub_0201FF0C(GX_PLANEMASK_BG0, 0);
            sub_0201FF0C(GX_PLANEMASK_BG1, 0);
            sub_0201FF0C(GX_PLANEMASK_BG2, 0);
            sub_0201FF0C(GX_PLANEMASK_BG3, 0);
            sub_0201FF74(GX_PLANEMASK_BG0, 0);
            sub_0201FF74(GX_PLANEMASK_BG1, 0);
            sub_0201FF74(GX_PLANEMASK_BG2, 0);
            sub_0201FF74(GX_PLANEMASK_BG3, 0);
            sub_0200F174(0, 1, 1, 0x7fff, 6, 1, v0->unk_00);
            *param1 = 6;
        }
        break;
    case 5:
        v0->unk_238.unk_254 = 0;
        ov77_021D20E4(&v0->unk_238, v0->unk_04, v0->unk_00);

        if (sub_02005684() == 0) {
            sub_020055D0(1173, 0);
            sub_0200F174(0, 0, 0, 0x7fff, 6, 1, v0->unk_00);
            *param1 = 6;
        }
        break;
    case 6:
        if (sub_0200F2AC() == 1) {
            if (ov77_021D21C0(&v0->unk_238, v0->unk_04, v0->unk_00) == 1) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

static int ov77_021D10FC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov77_021D17B4 * v0 = sub_0200682C(param0);
    int v1 = v0->unk_00;
    int v2 = v0->unk_4E8;

    sub_02017798(NULL, NULL);

    ov77_021D11FC(v0);
    ov77_021D1908(v0);

    sub_02006830(param0);
    DestroyHeap(v1);

    switch (v2) {
    default:
    case 1:
        sub_02000EC4(0xffffffff, &Unk_020F8AB4);
        break;
    case 2:
        sub_02000EC4(0xffffffff, &Unk_020F8A48);
        break;
    case 3:
        sub_02004234(0);
        sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D788C);
        break;
    }

    return 1;
}

static void ov77_021D1178 (void * param0)
{
    UnkStruct_ov77_021D17B4 * v0 = param0;
    sub_0201C2B8(v0->unk_04);
}

static void ov77_021D1184 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_0123_H,
        GX_VRAM_OBJ_NONE,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_NONE,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    sub_0201FE94(&v0);
}

static BOOL ov77_021D11A4 (void)
{
    if (((Unk_021BF67C.unk_48 & PAD_BUTTON_A) == PAD_BUTTON_A) || ((Unk_021BF67C.unk_48 & PAD_BUTTON_START) == PAD_BUTTON_START) || ((Unk_021BF67C.unk_48 & PAD_BUTTON_SELECT) == PAD_BUTTON_SELECT)) {
        return 1;
    }

    return 0;
}

static void ov77_021D11CC (UnkStruct_ov77_021D17B4 * param0)
{
    param0->unk_08 = sub_02024220(param0->unk_00, 0, 1, 0, 4, NULL);
    G2_SetBG0Priority(1);
}

static void ov77_021D11FC (UnkStruct_ov77_021D17B4 * param0)
{
    sub_020242C4(param0->unk_08);
}

static void ov77_021D1208 (UnkStruct_ov77_021D1208 * param0, int param1, int param2, int param3)
{
    void * v0;
    void * v1;
    NNSG3dResTex * v2;

    GF_ExpHeap_FndInitAllocator(&param0->unk_70, param3, 4);

    param0->unk_5C = AllocAndReadWholeNarcMemberByIndexPair(48, param1, param3);
    param0->unk_60 = AllocAndReadWholeNarcMemberByIndexPair(48, param2, param3);
    param0->unk_64 = AllocAndReadWholeNarcMemberByIndexPair(48, 2, param3);

    sub_0201CA3C(&param0->unk_04, &param0->unk_58, &param0->unk_5C);

    v0 = NNS_G3dGetAnmByIdx(param0->unk_60, 0);
    v1 = NNS_G3dGetAnmByIdx(param0->unk_64, 0);

    param0->unk_68 = NNS_G3dAllocAnmObj(&param0->unk_70, v0, param0->unk_58);
    param0->unk_6C = NNS_G3dAllocAnmObj(&param0->unk_70, v1, param0->unk_58);

    v2 = NNS_G3dGetTex(param0->unk_5C);

    NNS_G3dAnmObjInit(param0->unk_68, v0, param0->unk_58, v2);
    NNS_G3dAnmObjInit(param0->unk_6C, v1, param0->unk_58, v2);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_04, param0->unk_68);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_04, param0->unk_6C);

    {
        VecFx32 v3 = {0, 0, 0};
        VecFx32 v4 = {FX32_ONE, FX32_ONE, FX32_ONE};
        VecFx32 v5 = {0, 0, 0};

        param0->unk_80 = v3;
        param0->unk_8C = v4;
        param0->unk_98 = v5;
    }

    param0->unk_AC = 0;

    ov77_021D1300(param0, param3);
}

static void ov77_021D1300 (UnkStruct_ov77_021D1208 * param0, int param1)
{
    NARC * v0;

    v0 = NARC_ctor(48, param1);

    {
        sub_020170D8(&param0->unk_150, v0, 19, param1);

        NNS_G3dMdlUseMdlAlpha(param0->unk_150.unk_08);
        NNS_G3dMdlUseMdlPolygonID(param0->unk_150.unk_08);

        sub_02017164(&param0->unk_128, &param0->unk_150, v0, 21, param1, &param0->unk_70);
        sub_02017240(&param0->unk_128, 0);

        sub_02017164(&param0->unk_13C, &param0->unk_150, v0, 20, param1, &param0->unk_70);
        sub_02017240(&param0->unk_13C, 0);

        sub_02017258(&param0->unk_B0, &param0->unk_150);

        sub_02017350(&param0->unk_B0, 0, 0, 0);
        sub_0201736C(&param0->unk_B0, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        sub_02017348(&param0->unk_B0, 1);

        sub_0201727C(&param0->unk_B0, &param0->unk_128);
        sub_0201727C(&param0->unk_B0, &param0->unk_13C);
    }

    {
        sub_020170D8(&param0->unk_200, v0, 16, param1);
        NNS_G3dMdlUseMdlAlpha(param0->unk_200.unk_08);
        NNS_G3dMdlUseMdlPolygonID(param0->unk_200.unk_08);

        sub_02017164(&param0->unk_1D8, &param0->unk_200, v0, 18, param1, &param0->unk_70);
        sub_02017240(&param0->unk_1D8, 0);

        sub_02017164(&param0->unk_1EC, &param0->unk_200, v0, 17, param1, &param0->unk_70);
        sub_02017240(&param0->unk_1EC, 0);

        sub_02017258(&param0->unk_160, &param0->unk_200);

        sub_02017350(&param0->unk_160, 0, 0, 0);
        sub_0201736C(&param0->unk_160, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        sub_02017348(&param0->unk_160, 1);

        sub_0201727C(&param0->unk_160, &param0->unk_1D8);
        sub_0201727C(&param0->unk_160, &param0->unk_1EC);
    }

    NARC_dtor(v0);

    param0->unk_214 = ((0x10000 - 0x3fef) - (0x10000 - 0x1c7d)) / 30;
    param0->unk_218 = (0x10000 - 0x1c7d);
    param0->unk_21C = (FX32_ONE);
    param0->unk_220 = (120 << 8);
}

static void ov77_021D14E4 (UnkStruct_ov77_021D1208 * param0)
{
    ov77_021D1514(param0);

    NNS_G3dFreeAnmObj(&param0->unk_70, param0->unk_68);
    NNS_G3dFreeAnmObj(&param0->unk_70, param0->unk_6C);

    FreeToHeap(param0->unk_60);
    FreeToHeap(param0->unk_64);
    FreeToHeap(param0->unk_5C);
}

static void ov77_021D1514 (UnkStruct_ov77_021D1208 * param0)
{
    sub_02017110(&param0->unk_150);
    sub_020171A0(&param0->unk_128, &param0->unk_70);
    sub_020171A0(&param0->unk_13C, &param0->unk_70);

    sub_02017110(&param0->unk_200);
    sub_020171A0(&param0->unk_1D8, &param0->unk_70);
    sub_020171A0(&param0->unk_1EC, &param0->unk_70);
}

static void ov77_021D1568 (UnkStruct_ov77_021D1568 * param0, UnkStruct_ov77_021D1208 * param1)
{
    MtxFx33 v0 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};

    if ((param0->unk_29C == 0) && (param0->unk_2A0 == 1)) {
        ov77_021D25AC(param1->unk_A8);
        sub_02020854(0, param1->unk_A8);
        sub_020203D4(param1->unk_A8);
    } else {
        sub_02020854(0, param1->unk_A4);
        sub_020203D4(param1->unk_A4);
    }

    {
        fx32 v1;

        param0->unk_2A8 += 2;
        param0->unk_2A8 %= 360;

        v1 = sub_0201D250(((param0->unk_2A8 * 0xffff) / 360));
        v1 *= 0.30;

        param1->unk_80.y -= v1;
    }

    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        sub_020241B4();
        sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        param1->unk_00 = 0;
        break;
    case 2:
        sub_020241B4();
        sub_020203EC();
        sub_0201E268(&v0, &param1->unk_98);

        if (param0->unk_29C == 0) {
            if (param0->unk_2A0 == 1) {
                ov77_021D1704(param1);
            } else {
                (void)0;
            }
        } else {
            DC_FlushAll();
            sub_0201CA74(&param1->unk_04, &param1->unk_80, &v0, &param1->unk_8C);
        }

        switch (param1->unk_AC) {
        case 0:
            param1->unk_68->frame = 0;
            param1->unk_6C->frame = 0;
            break;
        case 1:
            if (param1->unk_68->frame == 0) {
                param1->unk_AC = 0;
                break;
            }
        case 2:
            param1->unk_68->frame += (FX32_ONE);
            param1->unk_6C->frame += (FX32_ONE);

            if (param1->unk_68->frame == NNS_G3dAnmObjGetNumFrame(param1->unk_68)) {
                param1->unk_68->frame = 0;
            }

            if (param1->unk_6C->frame == NNS_G3dAnmObjGetNumFrame(param1->unk_6C)) {
                param1->unk_6C->frame = 0;
            }
            break;
        }

        sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        break;
    }
}

static void ov77_021D1704 (UnkStruct_ov77_021D1208 * param0)
{
    if (param0->unk_224 == 1) {
        if (sub_02017204(&param0->unk_128, FX32_ONE) == 1) {
            param0->unk_224 = 2;
        }
    }

    if (param0->unk_225 == 1) {
        if (sub_02017204(&param0->unk_13C, FX32_ONE) == 1) {
            param0->unk_225 = 2;
        }
    }

    sub_020171CC(&param0->unk_1D8, FX32_ONE);
    sub_020171CC(&param0->unk_1EC, FX32_ONE);

    NNS_G3dGePushMtx();

    {
        sub_02017294(&param0->unk_160);

        if ((param0->unk_224 != 2) || (param0->unk_225 != 2)) {
            sub_02017294(&param0->unk_B0);
        } else {
            sub_02017348(&param0->unk_B0, 0);
        }
    }

    NNS_G3dGePopMtx(1);
}

static void ov77_021D17B4 (UnkStruct_ov77_021D17B4 * param0)
{
    param0->unk_04 = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 4, &v1, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 5, &v2, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x3800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 6, &v3, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 1, &v4, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 3, &v5, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v6 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_04, 7, &v6, 0);
    }

    sub_0201FF0C(GX_PLANEMASK_BG0, 0);
    sub_0201FF0C(GX_PLANEMASK_BG1, 0);
    sub_0201FF0C(GX_PLANEMASK_BG2, 0);
    sub_0201FF0C(GX_PLANEMASK_BG3, 0);
    sub_0201FF74(GX_PLANEMASK_BG0, 0);
    sub_0201FF74(GX_PLANEMASK_BG1, 0);
    sub_0201FF74(GX_PLANEMASK_BG2, 0);
    sub_0201FF74(GX_PLANEMASK_BG3, 0);
    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);
}

static void ov77_021D1908 (UnkStruct_ov77_021D17B4 * param0)
{
    sub_0201FF0C(GX_PLANEMASK_BG0, 0);
    sub_0201FF0C(GX_PLANEMASK_BG1, 0);
    sub_0201FF0C(GX_PLANEMASK_BG2, 0);
    sub_0201FF0C(GX_PLANEMASK_BG3, 0);
    sub_0201FF74(GX_PLANEMASK_BG0, 0);
    sub_0201FF74(GX_PLANEMASK_BG1, 0);
    sub_0201FF74(GX_PLANEMASK_BG2, 0);
    sub_0201FF74(GX_PLANEMASK_BG3, 0);
    sub_02019044(param0->unk_04, 4);
    sub_02019044(param0->unk_04, 5);
    sub_02019044(param0->unk_04, 6);
    sub_02019044(param0->unk_04, 1);
    sub_02019044(param0->unk_04, 3);
    sub_02019044(param0->unk_04, 7);
    FreeToHeap(param0->unk_04);
}

static void ov77_021D1984 (UnkStruct_ov77_021D1568 * param0, UnkStruct_ov77_021D1208 * param1)
{
    VecFx32 v0 = {0, 0, 0};
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};
    int v2;

    if (param0->unk_29C == 1) {
        return;
    }

    if (param1->unk_210 < 60) {
        v0.z = -0xa00;
        sub_02020990(&v0, param1->unk_A8);
    }

    if (param1->unk_210 == 75) {
        param1->unk_224 = 1;
        param1->unk_225 = 1;
    }

    if (param1->unk_210 >= 250) {
        v1 = sub_02020A94(param1->unk_A8);
        v1.unk_00 = param1->unk_218;

        sub_020209D4(&v1, param1->unk_A8);

        param1->unk_218 += param1->unk_214;

        if (param1->unk_218 < ((0x10000 - 0x3fef))) {
            param1->unk_218 = (0x10000 - 0x3fef);

            sub_0202094C(-(param1->unk_220 >> 8), param1->unk_A8);
            param1->unk_220 -= 0x280;

            if (param1->unk_220 < (16 << 8)) {
                param1->unk_220 = (16 << 8);
            }
        }
    }

    if (param1->unk_218 >= ((0x10000 - 0x3fef))) {
        (void)0;
    }

    param1->unk_210++;
}

static const UnkStruct_ov61_0222C884 Unk_ov77_021D72D0 = {
    0x4,
    0x2,
    0x13,
    0x1C,
    0x2,
    0x2,
    0x1
};

static BOOL ov77_021D1A60 (UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2)
{
    ov77_021D24C8(param0);
    ov77_021D2214(param1, param2, param0);
    ov77_021D1208(&param0->unk_04, 1, 0, param2);

    G3X_AntiAlias(1);
    G3X_AlphaBlend(1);

    {
        param0->unk_23C.x = param0->unk_270.x;
        param0->unk_23C.y = param0->unk_270.y;
        param0->unk_23C.z = param0->unk_270.z;
        param0->unk_248.x = param0->unk_258.x;
        param0->unk_248.y = param0->unk_258.y;
        param0->unk_248.z = param0->unk_258.z;
        param0->unk_04.unk_A4 = sub_020203AC(param2);

        sub_02020784(&param0->unk_23C, &param0->unk_248, 0xb60, 0, 0, param0->unk_04.unk_A4);
        sub_020206BC(0, (FX32_ONE * 300), param0->unk_04.unk_A4);
        sub_02020854(0, param0->unk_04.unk_A4);
        sub_020203D4(param0->unk_04.unk_A4);
    }
    {
        static const UnkStruct_ov115_0226527C v0 = {
            (0x10000 - 0x1c7d),
            ((0 * 0xffff) / 360),
            ((0 * 0xffff) / 360),
        };
        VecFx32 v1 = {0, 0, 0};

        param0->unk_04.unk_A8 = sub_020203AC(param2);

        sub_020206D0(&v1, (160 << FX32_SHIFT), &v0, (((22 * 0xffff) / 360)), 0, 0, param0->unk_04.unk_A8);
        sub_020206BC(0, (FX32_ONE * 300), param0->unk_04.unk_A8);

        {
            VecFx32 v2 = {0, 0, (0xa00 * 60)};
            sub_02020990(&v2, param0->unk_04.unk_A8);
        }

        sub_020203D4(param0->unk_04.unk_A8);
    }
    {
        NNS_G3dGlbLightVector(0, param0->unk_288.x, param0->unk_288.y, param0->unk_288.z);
        NNS_G3dGlbLightColor(0, 0x7fff);
        NNS_G3dGlbLightVector(1, param0->unk_28E.x, param0->unk_28E.y, param0->unk_28E.z);
        NNS_G3dGlbLightColor(1, 0x7fff);
    }
    {
        G3X_AntiAlias(1);
    }

    Unk_021BF67C.unk_65 = 1;
    sub_0201FFE8();
    param0->unk_04.unk_00 = 2;

    return 1;
}

static void ov77_021D1C10 (UnkStruct_ov77_021D1568 * param0)
{
    BOOL v0 = 1;
    fx32 v1;
    fx32 v2 = 60;

    v1 = (param0->unk_27C.x - param0->unk_270.x) / v2;
    param0->unk_23C.x += (v1);

    v1 = (param0->unk_27C.y - param0->unk_270.y) / v2;
    param0->unk_23C.y += (v1);

    v1 = (param0->unk_27C.z - param0->unk_270.z) / v2;
    param0->unk_23C.z += (v1);

    v1 = (param0->unk_264.x - param0->unk_258.x) / v2;
    param0->unk_248.x += (v1);

    v1 = (param0->unk_264.y - param0->unk_258.y) / v2;
    param0->unk_248.y += (v1);

    v1 = (param0->unk_264.z - param0->unk_258.z) / v2;
    param0->unk_248.z += (v1);
}

static void ov77_021D1CC0 (UnkStruct_02018340 * param0, int param1)
{
    sub_02019044(param0, 5);
    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v0, 0);
    }

    sub_02006E3C(48, 23, param0, 5, 0, 0, 0, param1);
    sub_02006E60(48, 25, param0, 5, 0, 0, 0, param1);

    G2_BlendNone();
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 10, 10);

    sub_0201FF74(GX_PLANEMASK_BG1, 1);
}

static void ov77_021D1D48 (UnkStruct_02018340 * param0, int param1)
{
    sub_02019044(param0, 4);

    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x2800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v0, 0);
    }

    sub_02006E60(48, 22, param0, 4, 0, 0, 0, param1);

    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(0);
    G2S_SetBG3Priority(2);

    sub_02019184(param0, 6, 0, 0);
    sub_02019184(param0, 6, 3, +1);

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 26, 10);

    sub_0201FF74(GX_PLANEMASK_BG0, 1);
}

static BOOL ov77_021D1DF0 (UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2)
{
    BOOL v0 = 0;

    if (ov77_021D11A4() == 1) {
        param0->unk_29C = 1;
        param0->unk_2A0 = 0;
        sub_0200F2C0();
        sub_0200ABB0(3);
        return 1;
    }

    switch (param0->unk_00) {
    case 0:
        sub_0201FF0C(GX_PLANEMASK_BG0, 1);
        param0->unk_296 = 0;
        param0->unk_22A = 15 + 252;
        sub_0200F174(0, 1, 1, 0x0, 15, 3, param2);
        param0->unk_00 = 1;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            if (param0->unk_22A) {
                param0->unk_22A--;
            } else {
                param0->unk_22A = 2;
                param0->unk_00 = 2;
            }
        }
        break;
    case 2:
        if (((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1))) {
            if (param0->unk_22A) {
                sub_0200AAE0(10, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2), 1);
                sub_0200AAE0(10, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), 2);
                param0->unk_296 = 2;
                param0->unk_22A--;
                param0->unk_00 = 3;
            } else {
                param0->unk_22A = 0;
                param0->unk_00 = 4;
            }
        }
        break;
    case 3:
        if (((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1))) {
            sub_0200AAE0(10, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2), 1);
            sub_0200AAE0(10, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), 2);
            param0->unk_296 = 3;
            param0->unk_00 = 2;
        }
        break;
    case 4:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            param0->unk_22A = 1;
            param0->unk_00 = 5;
        }
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            if (param0->unk_22A) {
                sub_0200F174(0, 0, 0, 0x7fff, 5, 2, param2);
                param0->unk_296 = 2;
                param0->unk_22A--;
                param0->unk_00 = 6;
            } else {
                param0->unk_22A = 10;
                param0->unk_00 = 8;
                param0->unk_29C = 1;
                sub_0200F344(0, 0x0);
            }
        }
        break;
    case 6:
        if (sub_0200F2AC() == 1) {
            param0->unk_2A0 = 0;
            {sub_0201FF74(GX_PLANEMASK_BG1, 1);}
            param0->unk_04.unk_AC = 2;
            sub_0200F174(3, 1, 1, 0x7fff, 16, 3, param2);
            param0->unk_00 = 5;
        }
        break;
    case 8:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            param0->unk_00 = 7;
        }
        break;
    case 7:
        sub_0200F174(3, 1, 1, 0x0, 48, 1, param2);
        sub_0201FF0C(GX_PLANEMASK_BG3, 1);
        param0->unk_00 = 9;
        param0->unk_2A4 = 0;
        break;
    case 9:
    {
        ov77_021D1C10(param0);
        sub_02020ACC(&param0->unk_23C, param0->unk_04.unk_A4);
        sub_02020ADC(&param0->unk_248, param0->unk_04.unk_A4);

        param0->unk_2A4++;

        if (param0->unk_2A4 >= 60) {
            {sub_0201FF74(GX_PLANEMASK_BG2, 1);}
            {
                ov77_021D1CC0(param1, param2);
            }
            sub_0200F174(4, 1, 1, 0x7fff, 16, 3, param2);
            sub_0201FF0C(GX_PLANEMASK_BG1, 1);
            sub_0201FF74(GX_PLANEMASK_BG3, 1);
            param0->unk_22A = 90;
            param0->unk_00 = 10;
        }
    }
    break;
    case 10:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            if (sub_0200F2AC() == 1) {
                v0 = 1;
            }
        }
        break;
    }

    ov77_021D2438(param0);
    ov77_021D1984(param0, &param0->unk_04);
    ov77_021D1568(param0, &param0->unk_04);

    return v0;
}

static BOOL ov77_021D20E4 (UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2)
{
    BOOL v0 = 0;

    switch (param0->unk_00) {
    case 0:
        sub_02020ACC(&param0->unk_27C, param0->unk_04.unk_A4);
        sub_02020ADC(&param0->unk_264, param0->unk_04.unk_A4);
        sub_0201FF0C(GX_PLANEMASK_BG0, 1);
        sub_0201FF0C(GX_PLANEMASK_BG3, 1);
        sub_0201FF74(GX_PLANEMASK_BG3, 1);

        {
            sub_0201FF74(GX_PLANEMASK_BG2, 1);
        }

        {
            sub_0201FF0C(GX_PLANEMASK_BG1, 1);
        }

        sub_0200F338(0);
        sub_0200F338(1);

        param0->unk_04.unk_AC = 2;
        NNS_G3dGlbLightColor(1, 0x7fff);

        {
            ov77_021D1CC0(param1, param2);
        }

        param0->unk_22A = 0;
        param0->unk_00 = 1;
        break;
    case 1:
        if (param0->unk_254 == 1) {
            if (param0->unk_22A == 0) {
                {sub_0201FF74(GX_PLANEMASK_BG0, 1);}
            } else if (param0->unk_22A == 0x10) {
                {sub_0201FF74(GX_PLANEMASK_BG0, 0);}
            }
        } else {
            (void)0;
        }

        param0->unk_22A++;
        param0->unk_22A &= 0x1f;

        v0 = 1;
        break;
    }

    ov77_021D1568(param0, &param0->unk_04);

    return v0;
}

static BOOL ov77_021D21C0 (UnkStruct_ov77_021D1568 * param0, UnkStruct_02018340 * param1, int param2)
{
    sub_020203B8(param0->unk_04.unk_A4);
    sub_020203B8(param0->unk_04.unk_A8);

    ov77_021D14E4(&param0->unk_04);
    ov77_021D2428(param1, param2, param0);

    G2_BlendNone();
    G3X_EdgeMarking(0);

    Unk_021BF67C.unk_65 = 0;
    sub_0201FFE8();

    return 1;
}

static void ov77_021D2214 (UnkStruct_02018340 * param0, int param1, UnkStruct_ov77_021D1568 * param2)
{
    {
        int v0, v1;

        sub_02006E3C(48, 23, param0, 7, 0, 0, 0, param1);
        sub_02006E3C(48, 26, param0, 3, 0, 0, 0, param1);
        sub_02006E60(48, 24, param0, 7, 0, 0, 0, param1);
        sub_02006E60(48, 27, param0, 3, 0, 0, 0, param1);

        v0 = 7;
        v1 = 6;

        sub_02006E84(48, v0, 4, 0, 0, param1);
        sub_02006E84(48, v1, 0, 0, 0, param1);
    }
    {
        int v2, v3;

        v2 = 12;
        v3 = 11;

        sub_02006E3C(48, v2, param0, 6, 0, 0, 0, param1);
        sub_02006E84(48, v3, 6, 0x4000, 0, param1);
        sub_02006E60(48, 22, param0, 6, 0, 0, 0, param1);
    }
    {
        sub_02006E3C(128, 14, param0, 5, 0, 0, 0, param1);
        sub_02006E84(128, 13, 6, 0x2000, 0, param1);
        sub_02006E60(128, 12, param0, 5, 0, 0, 0, param1);
    }
    {
        sub_02006E3C(48, 5, param0, 1, 0, 0, 0, param1);
        sub_02006E60(48, 3, param0, 1, 0, 0, 0, param1);
        sub_02006E84(48, 4, 0, 32 * 1, 32 * 3, param1);
    }

    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);

    {
        UnkStruct_0200B144 * v4;
        UnkStruct_02023790 * v5;
        u32 v6;

        sub_02019690(4, 32, 0, param1);

        v4 = sub_0200B144(1, 26, 609, param1);
        v5 = sub_02023790(64, param1);

        sub_0201A8D4(param0, &param2->unk_22C, &Unk_ov77_021D72D0);
        sub_0201AE78(&param2->unk_22C, 0, 0, 0, 28 * 8, 2 * 8);
        sub_0200B1B8(v4, 0, v5);

        v6 = sub_02002EEC(0, v5, 1, param2->unk_22C.unk_07 * 8);

        sub_0201D7E0(&param2->unk_22C, 0, v5, v6, 0, 0, (u32)(((1 & 0xff) << 16) | ((1 & 0xff) << 8) | (((0 & 0xff) << 0))), 1, 0, NULL);
        sub_020237BC(v5);
        sub_0200B190(v4);

        {
            u16 v7 = 0x15;
            u16 v8 = 0x15;

            sub_0201972C(4, &v7, 2, (16 * 2) * 2 + 2 * 1);
            sub_0201972C(4, &v8, 2, (16 * 2) * 2 + 2 * 2);
        }
    }
}

static void ov77_021D2428 (UnkStruct_02018340 * param0, int param1, UnkStruct_ov77_021D1568 * param2)
{
    sub_0201A8FC(&param2->unk_22C);
}

static void ov77_021D2438 (UnkStruct_ov77_021D1568 * param0)
{
    switch (param0->unk_296) {
    case 0:
        param0->unk_294 = 5;
        param0->unk_296 = 1;
        break;
    case 1:
        break;
    case 2:
        param0->unk_294 += 2;

        if (param0->unk_294 >= 0x1f) {
            param0->unk_294 = 0x1f;
            param0->unk_296 = 1;
        }
        break;
    case 3:
        param0->unk_294 -= 2;

        if (param0->unk_294 <= 5) {
            param0->unk_294 = 5;
            param0->unk_296 = 1;
        }
        break;
    }

    NNS_G3dGlbLightColor(1, (((param0->unk_294 << 0) & 0x1f) | ((param0->unk_294 << 5) & 0x3e0) | ((param0->unk_294 << 10) & 0x7c00)));
}

static void ov77_021D24C8 (UnkStruct_ov77_021D1568 * param0)
{
    param0->unk_258.x = (((fx32)0x00001000L) * 0);
    param0->unk_258.y = (((fx32)0x00001000L) * 192);
    param0->unk_258.z = (((fx32)0x00001000L) * 600);

    param0->unk_264.x = (((fx32)0x00001000L) * -64);
    param0->unk_264.y = (((fx32)0x00001000L) * 192);
    param0->unk_264.z = (((fx32)0x00001000L) * 484);

    param0->unk_270.x = (((fx32)0x00001000L) * 0);
    param0->unk_270.y = (((fx32)0x00001000L) * 100);
    param0->unk_270.z = (((fx32)0x00001000L) * -18);

    param0->unk_27C.x = (((fx32)0x00001000L) * 0);
    param0->unk_27C.y = (((fx32)0x00001000L) * 100);
    param0->unk_27C.z = (((fx32)0x00001000L) * -18);

    param0->unk_288.x = 2267;
    param0->unk_288.y = -1953;
    param0->unk_288.z = -2797;

    param0->unk_28E.x = -2267;
    param0->unk_28E.y = 1953;
    param0->unk_28E.z = -2797;
    param0->unk_298 = (FX32_ONE * 3);

    {
        VecFx32 v0, v1;

        VEC_Subtract(&param0->unk_27C, &param0->unk_264, &v0);
        VEC_Normalize(&v0, &v1);

        param0->unk_288.x = v1.x;
        param0->unk_288.y = v1.y;
        param0->unk_288.z = v1.z;
    }
}

static void ov77_021D25AC (UnkStruct_020203AC * param0)
{
    return;
}
