#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "struct_decls/struct_02015064_decl.h"
#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_decls/struct_02015214_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_020425E0.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021E7F40.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "message.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015064.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201C970.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "unk_020279FC.h"
#include "unk_02073C2C.h"
#include "overlay078/ov78_021D0D80.h"

typedef struct {
    NNSG3dRenderObj unk_00;
    void * unk_54;
    NNSG3dResMdlSet * unk_58;
    NNSG3dResMdl * unk_5C;
    NNSG3dResTex * unk_60;
    void * unk_64;
    void * unk_68;
    NNSG3dAnmObj * unk_6C;
    fx32 unk_70;
    BOOL unk_74;
    VecFx32 unk_78;
    VecFx32 unk_84;
    u16 unk_90;
    u16 unk_92;
    u16 unk_94;
} UnkStruct_ov78_021D15CC;

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} UnkStruct_ov78_021D2108;

typedef struct {
    UnkStruct_ov78_021D2108 unk_00;
    UnkStruct_ov78_021D2108 unk_10;
    UnkStruct_ov78_021D2108 unk_20;
    UnkStruct_020203AC * unk_30;
    VecFx32 * unk_34;
    s32 unk_38;
    BOOL unk_3C;
    UnkStruct_0201CD38 * unk_40;
} UnkStruct_ov78_021D213C;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov78_021D235C;

typedef struct {
    UnkStruct_02022550 * unk_00;
    UnkStruct_02009DC8 * unk_04[6];
    VecFx32 unk_1C;
    UnkStruct_0201CD38 * unk_28;
    UnkStruct_ov78_021D235C unk_2C;
} UnkStruct_ov78_021D2350;

typedef struct {
    UnkStruct_ov78_021D2108 unk_00;
    UnkStruct_ov78_021D2108 unk_10;
    UnkStruct_ov78_021D2108 unk_20;
    int unk_30;
    int unk_34;
} UnkStruct_ov78_021D2448_sub1;

typedef struct {
    UnkStruct_02015128 * unk_00;
    UnkStruct_020151A4 * unk_04;
    UnkStruct_02015214 * unk_08;
    void * unk_0C;
    void * unk_10;
    NNSG2dCharacterData * unk_14;
    NNSG2dPaletteData * unk_18;
    UnkStruct_ov78_021D2448_sub1 unk_1C;
    UnkStruct_0201CD38 * unk_54;
} UnkStruct_ov78_021D2448;

typedef struct {
    UnkStruct_02007C7C * unk_00;
    UnkStruct_ov78_021D2448_sub1 unk_04;
    UnkStruct_0201CD38 * unk_3C;
} UnkStruct_ov78_021D26B4;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    UnkStruct_ov78_021D213C unk_10;
    int unk_54;
    int unk_58[3][3];
    int unk_7C[3][2];
    UnkStruct_02018340 * unk_94;
    UnkStruct_0205AA50 * unk_98;
    UnkStruct_0205AA50 * unk_9C[3];
    int unk_A8;
    Strbuf* unk_AC;
    UnkStruct_ov61_0222C884 unk_B0;
    UnkStruct_02001AF4 * unk_B8;
    UnkStruct_0200C738 unk_BC;
    UnkStruct_020218BC * unk_248;
    UnkStruct_02009714 * unk_24C[6];
    UnkStruct_02007768 * unk_264;
    UnkStruct_02007C7C * unk_268[3];
    UnkStruct_ov78_021D26B4 unk_274;
    NNSFndAllocator unk_2B4;
    UnkStruct_ov78_021D15CC unk_2C4[6];
    UnkStruct_020203AC * unk_648;
    VecFx32 unk_64C;
    UnkStruct_ov78_021D2350 unk_658;
    GXRgb unk_694[8];
    UnkStruct_02015064 * unk_6A4;
    UnkStruct_ov78_021D2448 unk_6A8;
    int unk_700;
    u32 unk_704;
    u8 unk_708;
    u8 unk_709[3];
} UnkStruct_ov78_021D107C;

static void ov78_021D1058(void * param0);
static void ov78_021D107C(UnkStruct_ov78_021D107C * param0);
static void ov78_021D109C(UnkStruct_ov78_021D107C * param0);
static BOOL ov78_021D10BC(UnkStruct_ov78_021D107C * param0);
static u16 ov78_021D291C(u16 param0);
static BOOL ov78_021D1978(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D19D4(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1AAC(UnkStruct_ov78_021D107C * param0);
static void ov78_021D10C4(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D10DC(void);
static void ov78_021D10F0(void);
static void ov78_021D1110(int param0);
static void ov78_021D1168(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1218(void);
static void ov78_021D1224(UnkStruct_02018340 * param0, int param1);
static void ov78_021D12EC(UnkStruct_02018340 * param0);
static void ov78_021D1308(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D13A0(UnkStruct_ov78_021D107C * param0);
static u8 ov78_021D1FB4(UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4, u32 param5);
static u8 ov78_021D201C(UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4, u32 param5, Strbuf **param6);
static void ov78_021D2090(UnkStruct_ov78_021D107C * param0);
static void ov78_021D27CC(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D2884(UnkStruct_ov78_021D107C * param0);
static void ov78_021D28A8(UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4);
static void ov78_021D2904(UnkStruct_ov78_021D107C * param0);
static void ov78_021D20A4(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D13B8(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D14BC(UnkStruct_ov78_021D107C * param0);
static void ov78_021D14E8(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1518(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1528(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1594(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1B20(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1B3C(UnkStruct_020203AC * param0, VecFx32 * param1);
static void ov78_021D1B90(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1834(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1908(UnkStruct_ov78_021D107C * param0);
static void ov78_021D192C(UnkStruct_ov78_021D107C * param0);
static void ov78_021D2204(UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1, int param2);
static void ov78_021D2290(UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1);
static void ov78_021D22D4(UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1, int param2);
static void ov78_021D2350(UnkStruct_ov78_021D2350 * param0);
static void ov78_021D2430(UnkStruct_ov78_021D2350 * param0, BOOL param1);
static void ov78_021D243C(UnkStruct_ov78_021D2350 * param0, int param1, int param2);
static void ov78_021D1BA0(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1C28(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1CA8(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1DF0(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1E28(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1E44(UnkStruct_ov78_021D107C * param0, int param1);
static void ov78_021D1468(UnkStruct_02007C7C ** param0, UnkStruct_ov78_021D107C * param1, int param2);
static void ov78_021D15CC(UnkStruct_ov78_021D15CC * param0, int param1, int param2, int param3, NNSFndAllocator * param4);
static void ov78_021D1604(UnkStruct_ov78_021D15CC * param0, int param1, int param2);
static void ov78_021D16D8(UnkStruct_ov78_021D15CC * param0, NNSFndAllocator * param1);
static void ov78_021D1708(UnkStruct_ov78_021D15CC * param0);
static void ov78_021D17A4(UnkStruct_ov78_021D15CC * param0, BOOL param1);
static void ov78_021D17A8(UnkStruct_ov78_021D15CC * param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17B4(UnkStruct_ov78_021D15CC * param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17CC(UnkStruct_ov78_021D15CC * param0, u16 param1, u16 param2, u16 param3);
static BOOL ov78_021D17E4(UnkStruct_ov78_021D15CC * param0);
static void ov78_021D180C(UnkStruct_ov78_021D15CC * param0);
static void ov78_021D182C(UnkStruct_ov78_021D15CC * param0, fx32 param1);
static void ov78_021D1630(UnkStruct_ov78_021D15CC * param0, int param1, int param2);
static void ov78_021D1694(UnkStruct_ov78_021D15CC * param0, int param1, int param2, NNSFndAllocator * param3);
static void ov78_021D2448(UnkStruct_ov78_021D2448 * param0, UnkStruct_ov78_021D107C * param1, int param2);
static void ov78_021D24E4(UnkStruct_ov78_021D2448 * param0);
static void ov78_021D2508(UnkStruct_ov78_021D2448 * param0, BOOL param1);
static void ov78_021D2514(UnkStruct_ov78_021D2448 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7);
static void ov78_021D256C(UnkStruct_ov78_021D2448 * param0);
static void ov78_021D25A0(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov78_021D2608(UnkStruct_ov78_021D2448 * param0);
static void ov78_021D2618(UnkStruct_ov78_021D107C * param0);
static void ov78_021D2688(UnkStruct_ov78_021D107C * param0);
static BOOL ov78_021D26A4(UnkStruct_ov78_021D107C * param0);
static void ov78_021D26B4(UnkStruct_ov78_021D26B4 * param0, UnkStruct_02007C7C * param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8);
static void ov78_021D270C(UnkStruct_ov78_021D26B4 * param0);
static void ov78_021D2740(UnkStruct_0201CD38 * param0, void * param1);
static void ov78_021D1C58(UnkStruct_ov78_021D107C * param0);
static void ov78_021D1C98(UnkStruct_ov78_021D107C * param0, int param1);
static int ov78_021D1CA4(UnkStruct_ov78_021D107C * param0);
static void ov78_021D2108(UnkStruct_ov78_021D2108 * param0, s32 param1, s32 param2, s32 param3);
static BOOL ov78_021D2114(UnkStruct_ov78_021D2108 * param0, s32 param1);
static void ov78_021D235C(UnkStruct_ov78_021D235C * param0, fx32 param1, int param2);
static void ov78_021D2368(UnkStruct_ov78_021D235C * param0);
static void ov78_021D213C(UnkStruct_ov78_021D213C * param0, UnkStruct_020203AC * param1, VecFx32 * param2);
static void ov78_021D219C(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov78_021D2200(UnkStruct_ov78_021D213C * param0);
static void ov78_021D23B8(UnkStruct_ov78_021D2350 * param0);
static void ov78_021D23E8(UnkStruct_0201CD38 * param0, void * param1);
static void ov78_021D241C(UnkStruct_ov78_021D2350 * param0);

int ov78_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov78_021D107C * v0;
    UnkStruct_020425E0 * v1;
    UnkStruct_ov84_0223BA5C v2;
    BOOL v3;

    Heap_Create(3, 47, 0x40000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov78_021D107C), 47);
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov78_021D107C));

    Heap_FndInitAllocatorForExpHeap(&v0->unk_2B4, 47, 32);

    v1 = sub_02006840(param0);
    v0->unk_700 = sub_02027B50(v1->unk_04);
    v0->unk_704 = sub_02027AC0(v1->unk_04);

    sub_0201DBEC(8, 47);
    sub_02017798(ov78_021D1058, v0);
    sub_020177A4();
    sub_0201E3D8();

    v3 = sub_0201E450(4);
    GF_ASSERT(v3 == 1);

    sub_02002AC8(1);
    sub_02002AE4(0);
    sub_02002B20(0);

    ov78_021D10C4(v0, 47);

    v0->unk_94 = sub_02018340(47);
    v2.unk_00 = GX_DISPMODE_GRAPHICS;
    v2.unk_04 = GX_BGMODE_0;
    v2.unk_08 = GX_BGMODE_1;
    v2.unk_0C = GX_BG0_AS_3D;

    sub_02018368(&v2);
    ov78_021D1224(v0->unk_94, 47);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

    ov78_021D1308(v0, 47);
    ov78_021D20A4(v0, 47);
    ov78_021D27CC(v0, 47);
    ov78_021D13B8(v0, 47);
    ov78_021D14E8(v0, 47);
    ov78_021D1528(v0, 47);
    ov78_021D1834(v0, 47);
    ov78_021D1B20(v0, 47);

    ov78_021D1BA0(v0);
    ov78_021D1C28(v0);
    ov78_021D2204(v0, &v0->unk_658, 47);
    ov78_021D22D4(v0, &v0->unk_658, 47);
    ov78_021D23B8(&v0->unk_658);
    ov78_021D2448(&v0->unk_6A8, v0, 47);

    sub_02004550(60, 0, 0);

    return 1;
}

int ov78_021D0EF4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov78_021D107C * v0 = sub_0200682C(param0);
    BOOL v1;
    short v2 = 0x8c3;

    switch (*param1) {
    case 0:
        ov78_021D107C(v0);
        GX_LoadBGPltt(&v2, 0, sizeof(short));
        (*param1)++;
        break;
    case 1:
        if (ov78_021D10BC(v0)) {
            sub_0200F32C(0);
            sub_0200F32C(1);
            (*param1)++;
        }
        break;
    case 2:
        v1 = ov78_021D1978(v0, 47);
        ov78_021D19D4(v0, 47);

        if (v1 == 1) {
            (*param1)++;
        }
        break;
    case 3:
        ov78_021D109C(v0);
        (*param1)++;
        break;
    case 4:
        if (ov78_021D10BC(v0)) {
            sub_0200F32C(0);
            sub_0200F32C(1);

            return 1;
        }
        break;
    }

    ov78_021D1AAC(v0);

    return 0;
}

int ov78_021D0FA8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov78_021D107C * v0 = sub_0200682C(param0);
    UnkStruct_020425E0 * v1 = sub_02006840(param0);
    BOOL v2;

    sub_02017798(NULL, NULL);

    v1->unk_00 = ov78_021D291C(v0->unk_54);

    v2 = sub_0201E530();
    GF_ASSERT(v2 == 1);

    ov78_021D24E4(&v0->unk_6A8);
    ov78_021D2350(&v0->unk_658);
    ov78_021D2290(v0, &v0->unk_658);
    ov78_021D241C(&v0->unk_658);

    ov78_021D1B90(v0);
    ov78_021D1908(v0);
    ov78_021D1594(v0);
    ov78_021D14BC(v0);
    ov78_021D1518(v0);
    ov78_021D13A0(v0);
    ov78_021D2884(v0);

    ov78_021D12EC(v0->unk_94);
    Heap_FreeToHeap(v0->unk_94);
    ov78_021D10DC();

    sub_0201DC3C();
    sub_02006830(param0);
    Heap_Destroy(47);

    return 1;
}

static void ov78_021D1058 (void * param0)
{
    UnkStruct_ov78_021D107C * v0 = param0;

    sub_0200A858();
    sub_0201C2B8(v0->unk_94);
    sub_02008A94(v0->unk_264);
    sub_0201DCAC();
}

static void ov78_021D107C (UnkStruct_ov78_021D107C * param0)
{
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 47);
}

static void ov78_021D109C (UnkStruct_ov78_021D107C * param0)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 47);
}

static BOOL ov78_021D10BC (UnkStruct_ov78_021D107C * param0)
{
    return sub_0200F2AC();
}

static void ov78_021D10C4 (UnkStruct_ov78_021D107C * param0, int param1)
{
    ov78_021D10F0();
    ov78_021D1110(param1);
    ov78_021D1168(param0);
}

static void ov78_021D10DC (void)
{
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov78_021D1218();
}

static void ov78_021D10F0 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&v0);
}

static void ov78_021D1110 (int param0)
{
    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, param0);

    {
        UnkStruct_ov22_022559F8 v0 = {
            32, 0x14000, 0x4000,
        };

        v0.unk_0C = param0;

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(32, param0);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov78_021D1168 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_694[v0] = GX_RGB(4, 4, 4);
    }

    G3X_SetEdgeColorTable(param0->unk_694);
    G3X_SetClearColor(GX_RGB(31, 31, 16), 0, 0x7fff, 63, 0);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ov78_021D1218 (void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

static void ov78_021D1224 (UnkStruct_02018340 * param0, int param1)
{
    G2_SetBG0Priority(1);

    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v0, 0);
        sub_02019690(1, 32, 0, param1);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v1, 0);
        sub_02019690(2, 32, 0, param1);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v2, 0);
        sub_02019690(3, 32, 0, param1);
        sub_02019EBC(param0, 3);
    }
}

static void ov78_021D12EC (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
}

static void ov78_021D1308 (UnkStruct_ov78_021D107C * param0, int param1)
{
    param0->unk_98 = sub_0201A778(param1, 1);

    sub_0201A7A0(param0->unk_98);
    sub_0201A7E8(param0->unk_94, param0->unk_98, 1, 4, 19, 23, 4, 2, (18 + 12) + 1);
    sub_0201ADA4(param0->unk_98, 15);
    sub_0200DD0C(param0->unk_94, 1, 512, 0, param0->unk_700, param1);
    sub_02006E84(82, 16, 0, 2 * 32, 32, param1);
    sub_0200E060(param0->unk_98, 0, 512, 0);
}

static void ov78_021D13A0 (UnkStruct_ov78_021D107C * param0)
{
    sub_0201A8FC(param0->unk_98);
    Heap_FreeToHeap(param0->unk_98);
}

static void ov78_021D13B8 (UnkStruct_ov78_021D107C * param0, int param1)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    int v2;

    param0->unk_264 = sub_0200762C(param1);

    v0 = NNS_GfdAllocTexVram(0x8000, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    sub_02008A78(param0->unk_264, NNS_GfdGetTexKeyAddr(v0), NNS_GfdGetTexKeySize(v0));
    sub_02008A84(param0->unk_264, NNS_GfdGetPlttKeyAddr(v1), NNS_GfdGetPlttKeySize(v1));

    ov78_021D1468(&param0->unk_268[0], param0, 387);
    ov78_021D1468(&param0->unk_268[1], param0, 390);
    ov78_021D1468(&param0->unk_268[2], param0, 393);

    for (v2 = 0; v2 < 3; v2++) {
        sub_02007DEC(param0->unk_268[v2], 6, 1);
    }
}

static void ov78_021D1468 (UnkStruct_02007C7C ** param0, UnkStruct_ov78_021D107C * param1, int param2)
{
    UnkStruct_02008A90 v0;
    int v1;

    v1 = sub_02075DAC(param2, 0);

    sub_02075FB4(&v0, param2, v1, 2, 0, NULL, NULL);

    *param0 = sub_02007C34(param1->unk_264, &v0, 128, 96, 1023, 0, NULL, NULL);
}

static void ov78_021D14BC (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_268[v0]) {
            sub_02007DC8(param0->unk_268[v0]);
        }
    }

    sub_02007B6C(param0->unk_264);
}

static void ov78_021D14E8 (UnkStruct_ov78_021D107C * param0, int param1)
{
    UnkStruct_ov22_022550D4 v0 = {
        1, 1, 1, 0
    };

    v0.unk_0C = param1;
    param0->unk_6A4 = sub_02015064(&v0);
}

static void ov78_021D1518 (UnkStruct_ov78_021D107C * param0)
{
    sub_020150A8(param0->unk_6A4);
}

static void ov78_021D1528 (UnkStruct_ov78_021D107C * param0, int param1)
{
    param0->unk_248 = sub_020095C4(2, &param0->unk_BC, param1);
    param0->unk_24C[0] = sub_02009714(2, 0, param1);
    param0->unk_24C[1] = sub_02009714(2, 1, param1);
    param0->unk_24C[2] = sub_02009714(2, 2, param1);
    param0->unk_24C[3] = sub_02009714(2, 3, param1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov78_021D1594 (UnkStruct_ov78_021D107C * param0)
{
    sub_02021964(param0->unk_248);
    sub_02009754(param0->unk_24C[0]);
    sub_02009754(param0->unk_24C[1]);
    sub_02009754(param0->unk_24C[2]);
    sub_02009754(param0->unk_24C[3]);
}

static void ov78_021D15CC (UnkStruct_ov78_021D15CC * param0, int param1, int param2, int param3, NNSFndAllocator * param4)
{
    memset(param0, 0, sizeof(UnkStruct_ov78_021D15CC));

    ov78_021D1630(param0, param1, param3);
    ov78_021D1694(param0, param2, param3, param4);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1604 (UnkStruct_ov78_021D15CC * param0, int param1, int param2)
{
    memset(param0, 0, sizeof(UnkStruct_ov78_021D15CC));

    ov78_021D1630(param0, param1, param2);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1630 (UnkStruct_ov78_021D15CC * param0, int param1, int param2)
{
    param0->unk_54 = sub_02006FE8(82, param1, 0, param2, 0);
    param0->unk_58 = NNS_G3dGetMdlSet(param0->unk_54);
    param0->unk_5C = NNS_G3dGetMdlByIdx(param0->unk_58, 0);
    param0->unk_60 = NNS_G3dGetTex(param0->unk_54);

    sub_0201CBCC(param0->unk_60);
    sub_0201CBB0(param0->unk_54, param0->unk_60);

    NNS_G3dRenderObjInit(&param0->unk_00, param0->unk_5C);
}

static void ov78_021D1694 (UnkStruct_ov78_021D15CC * param0, int param1, int param2, NNSFndAllocator * param3)
{
    param0->unk_64 = sub_02006FE8(82, param1, 0, param2, 0);
    param0->unk_68 = NNS_G3dGetAnmByIdx(param0->unk_64, 0);
    param0->unk_6C = NNS_G3dAllocAnmObj(param3, param0->unk_68, param0->unk_5C);

    NNS_G3dAnmObjInit(param0->unk_6C, param0->unk_68, param0->unk_5C, param0->unk_60);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param0->unk_6C);
}

static void ov78_021D16D8 (UnkStruct_ov78_021D15CC * param0, NNSFndAllocator * param1)
{
    if (param0->unk_54) {
        Heap_FreeToHeap(param0->unk_54);
    }

    if (param0->unk_64) {
        NNS_G3dFreeAnmObj(param1, param0->unk_6C);
        Heap_FreeToHeap(param0->unk_64);
    }

    memset(param0, 0, sizeof(UnkStruct_ov78_021D15CC));
}

static void ov78_021D1708 (UnkStruct_ov78_021D15CC * param0)
{
    MtxFx33 v0;
    MtxFx33 v1;

    MTX_Identity33(&v0);
    MTX_RotX33(&v1, FX_SinIdx(param0->unk_90), FX_CosIdx(param0->unk_90));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotY33(&v1, FX_SinIdx(param0->unk_92), FX_CosIdx(param0->unk_92));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotZ33(&v1, FX_SinIdx(param0->unk_94), FX_CosIdx(param0->unk_94));
    MTX_Concat33(&v1, &v0, &v0);

    if (param0->unk_74) {
        sub_0201CA74(&param0->unk_00, &param0->unk_78, &v0, &param0->unk_84);
    }
}

static void ov78_021D17A4 (UnkStruct_ov78_021D15CC * param0, BOOL param1)
{
    param0->unk_74 = param1;
}

static void ov78_021D17A8 (UnkStruct_ov78_021D15CC * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_78.x = param1;
    param0->unk_78.y = param2;
    param0->unk_78.z = param3;
}

static void ov78_021D17B4 (UnkStruct_ov78_021D15CC * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_84.x = param1;
    param0->unk_84.y = param2;
    param0->unk_84.z = param3;
}

static void ov78_021D17CC (UnkStruct_ov78_021D15CC * param0, u16 param1, u16 param2, u16 param3)
{
    param0->unk_90 = param1;
    param0->unk_92 = param2;
    param0->unk_94 = param3;
}

static BOOL ov78_021D17E4 (UnkStruct_ov78_021D15CC * param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_6C);
    BOOL v1;

    if ((param0->unk_70 + FX32_ONE) < v0) {
        param0->unk_70 += FX32_ONE;
        v1 = 0;
    } else {
        param0->unk_70 = v0;
        v1 = 1;
    }

    NNS_G3dAnmObjSetFrame(param0->unk_6C, param0->unk_70);

    return v1;
}

static void ov78_021D180C (UnkStruct_ov78_021D15CC * param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_6C);

    param0->unk_70 = (param0->unk_70 + FX32_ONE) % v0;
    NNS_G3dAnmObjSetFrame(param0->unk_6C, param0->unk_70);
}

static void ov78_021D182C (UnkStruct_ov78_021D15CC * param0, fx32 param1)
{
    param0->unk_70 = param1;
    NNS_G3dAnmObjSetFrame(param0->unk_6C, param1);
}

static void ov78_021D1834 (UnkStruct_ov78_021D107C * param0, int param1)
{
    int v0;

    ov78_021D15CC(&param0->unk_2C4[0], 1, 0, param1, &param0->unk_2B4);
    ov78_021D17A4(&param0->unk_2C4[0], 1);

    ov78_021D1604(&param0->unk_2C4[1], 8, param1);
    ov78_021D17A4(&param0->unk_2C4[1], 0);

    for (v0 = 2; v0 <= 4; v0++) {
        ov78_021D15CC(&param0->unk_2C4[v0], 3 + (v0 - 2) * 2, 2 + (v0 - 2) * 2, param1, &param0->unk_2B4);
        ov78_021D17A4(&param0->unk_2C4[v0], 0);
    }

    ov78_021D1604(&param0->unk_2C4[5], 9, param1);
    ov78_021D17A4(&param0->unk_2C4[5], 1);

    ov78_021D17A8(&param0->unk_2C4[5], 0, (-28 * FX32_ONE), (40 * FX32_ONE));
    ov78_021D17B4(&param0->unk_2C4[5], (FX32_CONST(3.50f)), (FX32_ONE), (FX32_CONST(3.50f)));
    ov78_021D17CC(&param0->unk_2C4[5], (((0 * 0xffff) / 360)), (((180 * 0xffff) / 360)), (((0 * 0xffff) / 360)));
}

static void ov78_021D1908 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov78_021D16D8(&param0->unk_2C4[v0], &param0->unk_2B4);
    }
}

static void ov78_021D192C (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);

    for (v0 = 0; v0 < 6; v0++) {
        ov78_021D1708(&param0->unk_2C4[v0]);
    }
}

static BOOL ov78_021D1978 (UnkStruct_ov78_021D107C * param0, int param1)
{
    if (param0->unk_08 == 1) {
        return 0;
    }

    switch (ov78_021D1CA4(param0)) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        ov78_021D1C58(param0);

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            ov78_021D1C98(param0, 1);

            sub_02005748(1500);
        }
        break;
    case 4:
        break;
    case 5:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov78_021D19D4 (UnkStruct_ov78_021D107C * param0, int param1)
{
    switch (ov78_021D1CA4(param0)) {
    case 0:

        param0->unk_08 = 1;
        param0->unk_0C = 36;
        ov78_021D1C98(param0, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, 10, 16 - 10);
        break;
    case 1:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1C98(param0, 1);
            sub_02005748(1738);
        }
        break;
    case 2:
        if (ov78_021D17E4(&param0->unk_2C4[0])) {
            ov78_021D17A4(&param0->unk_2C4[0], 0);
            ov78_021D17A4(&param0->unk_2C4[1], 1);
            ov78_021D17A4(&param0->unk_2C4[2], 1);
            ov78_021D17A4(&param0->unk_2C4[3], 1);
            ov78_021D17A4(&param0->unk_2C4[4], 1);
            ov78_021D1C98(param0, 1);
        }
        break;
    case 3:
        ov78_021D1CA8(param0, param1);
        break;
    case 4:
        ov78_021D1E44(param0, param1);
        break;
    case 5:
        G2_BlendNone();
        break;
    default:
        break;
    }
}

static void ov78_021D1AAC (UnkStruct_ov78_021D107C * param0)
{
    sub_020241B4();

    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        sub_02007768(param0->unk_264);
        sub_020150EC(param0->unk_6A4);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        sub_020203EC();
        ov78_021D192C(param0);
    }

    NNS_G3dGePopMtx(1);

    sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    sub_020219F8(param0->unk_248);
}

static void ov78_021D1B20 (UnkStruct_ov78_021D107C * param0, int param1)
{
    param0->unk_648 = sub_020203AC(param1);
    ov78_021D1B3C(param0->unk_648, &param0->unk_64C);
}

static void ov78_021D1B3C (UnkStruct_020203AC * param0, VecFx32 * param1)
{
    UnkStruct_ov115_0226527C v0;
    VecFx32 v1;

    param1->x = 0;
    param1->y = 0;
    param1->z = 0;

    v0.unk_00 = (((-30 * 0xffff) / 360));
    v0.unk_02 = (((0 * 0xffff) / 360));
    v0.unk_04 = (((0 * 0xffff) / 360));

    sub_020206D0(param1, (300 << FX32_SHIFT), &v0, (((22 * 0xffff) / 360)), 0, 1, param0);

    v1.x = 0;
    v1.y = FX32_ONE;
    v1.z = 0;

    sub_02020680(&v1, param0);
    sub_020203D4(param0);
}

static void ov78_021D1B90 (UnkStruct_ov78_021D107C * param0)
{
    sub_020203B8(param0->unk_648);
}

static void ov78_021D1BA0 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        switch (v0) {
        case 0:
            param0->unk_58[v0][0] = -44;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 32;
            break;
        case 1:
            param0->unk_58[v0][0] = 0;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 62;
            break;
        case 2:
            param0->unk_58[v0][0] = 38;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 26;
            break;
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        switch (v0) {
        case 0:
            param0->unk_7C[v0][0] = 78;
            param0->unk_7C[v0][1] = 55;
            break;
        case 1:
            param0->unk_7C[v0][0] = 130;
            param0->unk_7C[v0][1] = 82;
            break;
        case 2:
            param0->unk_7C[v0][0] = 172;
            param0->unk_7C[v0][1] = 50;
            break;
        }
    }
}

static void ov78_021D1C28 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov78_021D17A8(&param0->unk_2C4[v0 + 2], param0->unk_58[v0][0] << FX32_SHIFT, param0->unk_58[v0][1] << FX32_SHIFT, param0->unk_58[v0][2] << FX32_SHIFT);
    }
}

static void ov78_021D1C58 (UnkStruct_ov78_021D107C * param0)
{
    if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
        if (param0->unk_54 - 1 >= 0) {
            param0->unk_54 -= 1;
            sub_02005748(1500);
        }
    }

    if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
        if (param0->unk_54 + 1 < 3) {
            param0->unk_54 += 1;
            sub_02005748(1500);
        }
    }
}

static void ov78_021D1C98 (UnkStruct_ov78_021D107C * param0, int param1)
{
    param0->unk_00 += param1;
    param0->unk_04 = 0;
}

static int ov78_021D1CA4 (UnkStruct_ov78_021D107C * param0)
{
    return param0->unk_00;
}

static void ov78_021D1CA8 (UnkStruct_ov78_021D107C * param0, int param1)
{
    switch (param0->unk_04) {
    case 0:
        ov78_021D213C(&param0->unk_10, param0->unk_648, &param0->unk_64C);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        param0->unk_04++;
        break;
    case 1:
        if (ov78_021D2200(&param0->unk_10)) {
            param0->unk_0C = 6;
            param0->unk_04++;
        }
        break;
    case 2:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1E28(param0);
            param0->unk_04++;
        }
        break;
    case 3:
        param0->unk_708 = ov78_021D201C(param0->unk_98, param1, 360, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0))), param0->unk_704, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 4:
        if (sub_0201D724(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 5:
        param0->unk_708 = ov78_021D201C(param0->unk_98, param1, 360, 7, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0))), param0->unk_704, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 6:
        if (sub_0201D724(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 7:
        ov78_021D2430(&param0->unk_658, 1);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 8:
        ov78_021D1DF0(param0);
        ov78_021D1E28(param0);
        break;
    }
}

static void ov78_021D1DF0 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_54 == v0) {
            ov78_021D180C(&param0->unk_2C4[2 + v0]);
        } else {
            ov78_021D182C(&param0->unk_2C4[2 + v0], 0);
        }
    }
}

static void ov78_021D1E28 (UnkStruct_ov78_021D107C * param0)
{
    ov78_021D243C(&param0->unk_658, param0->unk_7C[param0->unk_54][0], param0->unk_7C[param0->unk_54][1]);
}

static void ov78_021D1E44 (UnkStruct_ov78_021D107C * param0, int param1)
{
    u32 v0;

    switch (param0->unk_04) {
    case 0:
        ov78_021D2430(&param0->unk_658, 0);
        ov78_021D1E28(param0);
        ov78_021D2904(param0);
        ov78_021D2618(param0);
        param0->unk_04++;
        param0->unk_08 = 1;
        break;
    case 1:
        ov78_021D2508(&param0->unk_6A8, 1);
        sub_02007DEC(param0->unk_268[param0->unk_54], 6, 0);

        if (ov78_021D26A4(param0)) {
            sub_02005844(ov78_021D291C(param0->unk_54), 0);

            param0->unk_04++;
        }
        break;
    case 2:
        ov78_021D1FB4(param0->unk_98, param1, 360, 1 + param0->unk_54, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0))), 0xff);
        param0->unk_B8 = sub_02002100(param0->unk_94, &param0->unk_B0, (512 + (18 + 12) + 128), 1, param1);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 3:
        v0 = sub_02002114(param0->unk_B8, param1);

        switch (v0) {
        case 0xffffffff:
            break;
        case 0:
            ov78_021D1C98(param0, 1);
            break;
        case 0xfffffffe:
            param0->unk_04++;
            ov78_021D2688(param0);
            break;
        }
        break;
    case 4:
        if (ov78_021D26A4(param0)) {
            ov78_021D1C98(param0, -1);
            param0->unk_04 = 7;
            ov78_021D2508(&param0->unk_6A8, 0);
            sub_02007DEC(param0->unk_268[param0->unk_54], 6, 1);
            param0->unk_708 = ov78_021D1FB4(param0->unk_98, param1, 360, 7, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0))), 0xff);
        }
        break;
    }
}

static u8 ov78_021D1FB4 (UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4, u32 param5)
{
    MessageLoader * v0;
    Strbuf* v1;
    u8 v2;

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    sub_0201ADA4(param0, 15);
    v2 = sub_0201D78C(param0, 1, v1, 0, 0, param5, param4, NULL);
    sub_0200E060(param0, 0, 512, 0);

    Strbuf_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static u8 ov78_021D201C (UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4, u32 param5, Strbuf **param6)
{
    MessageLoader * v0;
    u8 v1;

    GF_ASSERT((*param6) == NULL);

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);

    *param6 = MessageLoader_GetNewStrbuf(v0, param3);
    sub_0201ADA4(param0, 15);
    v1 = sub_0201D78C(param0, 1, *param6, 0, 0, param5, param4, NULL);

    sub_0200E060(param0, 0, 512, 0);
    MessageLoader_Free(v0);

    return v1;
}

static void ov78_021D2090 (UnkStruct_ov78_021D107C * param0)
{
    Strbuf_Free(param0->unk_AC);
    param0->unk_AC = NULL;
}

static void ov78_021D20A4 (UnkStruct_ov78_021D107C * param0, int param1)
{
    param0->unk_B0.unk_00 = 1;
    param0->unk_B0.unk_01 = 23;
    param0->unk_B0.unk_02 = 12;
    param0->unk_B0.unk_03 = 5;
    param0->unk_B0.unk_04 = 4;
    param0->unk_B0.unk_05 = 3;
    param0->unk_B0.unk_06 = ((18 + 12) + 9 + 128);

    sub_0200DAA4(param0->unk_94, 1, (512 + (18 + 12) + 128), 1, 0, param1);
    sub_02002E7C(0, 3 * 32, param1);
}

static void ov78_021D2108 (UnkStruct_ov78_021D2108 * param0, s32 param1, s32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0C = param3;
}

static BOOL ov78_021D2114 (UnkStruct_ov78_021D2108 * param0, s32 param1)
{
    s32 v0;
    BOOL v1;
    s32 v2;

    if (param1 >= param0->unk_0C) {
        v0 = param0->unk_0C;
        v1 = 1;
    } else {
        v0 = param1;
        v1 = 0;
    }

    v2 = param0->unk_08 * param1;
    v2 = v2 / param0->unk_0C;
    v2 += param0->unk_04;

    param0->unk_00 = v2;

    return v1;
}

static void ov78_021D213C (UnkStruct_ov78_021D213C * param0, UnkStruct_020203AC * param1, VecFx32 * param2)
{
    GF_ASSERT(param0->unk_40 == NULL);

    ov78_021D2108(&param0->unk_00, (((-30 * 0xffff) / 360)), (((-50 * 0xffff) / 360)), 6);
    ov78_021D2108(&param0->unk_10, (300 << FX32_SHIFT), (200 << FX32_SHIFT), 6);
    ov78_021D2108(&param0->unk_20, 0, (36 * FX32_ONE), 6);

    param0->unk_3C = 0;
    param0->unk_30 = param1;
    param0->unk_34 = param2;
    param0->unk_38 = 0;

    sub_0200D9E8(ov78_021D219C, param0, 0);
}

static void ov78_021D219C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov78_021D213C * v0 = param1;
    BOOL v1;
    UnkStruct_ov115_0226527C v2;

    v1 = ov78_021D2114(&v0->unk_00, v0->unk_38);
    ov78_021D2114(&v0->unk_10, v0->unk_38);
    ov78_021D2114(&v0->unk_20, v0->unk_38);

    v2.unk_00 = v0->unk_00.unk_00;
    v2.unk_02 = (((0 * 0xffff) / 360));
    v2.unk_04 = (((0 * 0xffff) / 360));

    sub_020209D4(&v2, v0->unk_30);
    sub_02020A50(v0->unk_10.unk_00, v0->unk_30);

    v0->unk_34->z = v0->unk_20.unk_00;
    v0->unk_38++;

    if (v1 == 1) {
        sub_0200DA58(param0);
        v0->unk_40 = NULL;
        v0->unk_3C = 1;
    }
}

static BOOL ov78_021D2200 (UnkStruct_ov78_021D213C * param0)
{
    return param0->unk_3C;
}

static void ov78_021D2204 (UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1, int param2)
{
    param1->unk_04[0] = sub_0200985C(param0->unk_24C[0], 82, 10, 0, 10, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param1->unk_04[0]);
    sub_02009D4C(param1->unk_04[0]);

    param1->unk_04[1] = sub_020098B8(param0->unk_24C[1], 82, 11, 0, 11, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param1->unk_04[1]);
    sub_02009D4C(param1->unk_04[1]);

    param1->unk_04[2] = sub_02009918(param0->unk_24C[2], 82, 12, 0, 12, 2, param2);
    param1->unk_04[3] = sub_02009918(param0->unk_24C[3], 82, 13, 0, 13, 3, param2);
}

static void ov78_021D2290 (UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1)
{
    sub_0200A4E4(param1->unk_04[0]);
    sub_0200A6DC(param1->unk_04[1]);

    sub_02009D68(param0->unk_24C[0], param1->unk_04[0]);
    sub_02009D68(param0->unk_24C[1], param1->unk_04[1]);
    sub_02009D68(param0->unk_24C[2], param1->unk_04[2]);
    sub_02009D68(param0->unk_24C[3], param1->unk_04[3]);
}

static void ov78_021D22D4 (UnkStruct_ov78_021D107C * param0, UnkStruct_ov78_021D2350 * param1, int param2)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;

    sub_020093B4(&v0, 10, 11, 12, 13, 0xffffffff, 0xffffffff, 0, 1, param0->unk_24C[0], param0->unk_24C[1], param0->unk_24C[2], param0->unk_24C[3], NULL, NULL);

    v1.unk_00 = param0->unk_248;
    v1.unk_04 = &v0;
    v1.unk_14 = 32;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_1C = param2;

    v1.unk_08.x = 0;
    v1.unk_08.y = 0;

    param1->unk_00 = sub_02021B90(&v1);
    sub_02021CAC(param1->unk_00, 0);

    param1->unk_1C.x = 0;
    param1->unk_1C.y = 0;
}

static void ov78_021D2350 (UnkStruct_ov78_021D2350 * param0)
{
    sub_02021BD4(param0->unk_00);
}

static void ov78_021D235C (UnkStruct_ov78_021D235C * param0, fx32 param1, int param2)
{
    param0->unk_00 = 0;
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_0C = 0;
}

static void ov78_021D2368 (UnkStruct_ov78_021D235C * param0)
{
    u16 v0;
    int v1;

    v1 = ((360 * 0xffff) / 360) * param0->unk_0C;
    v1 = v1 / param0->unk_08;
    v0 = v1;

    param0->unk_00 = FX_Mul(FX_SinIdx(v0), param0->unk_04);
    param0->unk_0C = (param0->unk_0C + 1) % param0->unk_08;
}

static void ov78_021D23B8 (UnkStruct_ov78_021D2350 * param0)
{
    GF_ASSERT(param0->unk_28 == NULL);

    ov78_021D235C(&param0->unk_2C, (8 * FX32_ONE), 32);
    param0->unk_28 = sub_0200D9E8(ov78_021D23E8, param0, 0);
}

static void ov78_021D23E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov78_021D2350 * v0 = param1;
    VecFx32 v1;

    ov78_021D2368(&v0->unk_2C);

    v1 = v0->unk_1C;
    v1.y += v0->unk_2C.unk_00;

    sub_02021C50(v0->unk_00, &v1);
}

static void ov78_021D241C (UnkStruct_ov78_021D2350 * param0)
{
    if (param0->unk_28) {
        sub_0200DA58(param0->unk_28);
        param0->unk_28 = NULL;
    }
}

static void ov78_021D2430 (UnkStruct_ov78_021D2350 * param0, BOOL param1)
{
    sub_02021CAC(param0->unk_00, param1);
}

static void ov78_021D243C (UnkStruct_ov78_021D2350 * param0, int param1, int param2)
{
    param0->unk_1C.x = param1 << FX32_SHIFT;
    param0->unk_1C.y = param2 << FX32_SHIFT;
}

static void ov78_021D2448 (UnkStruct_ov78_021D2448 * param0, UnkStruct_ov78_021D107C * param1, int param2)
{
    UnkStruct_ov22_022557A0 v0;
    UnkStruct_ov22_02255800 v1;
    UnkStruct_ov21_021E7F40 v2;

    param0->unk_0C = sub_02006F50(82, 14, 0, &param0->unk_14, param2);
    param0->unk_10 = sub_02006F88(82, 15, &param0->unk_18, param2);

    v0.unk_00 = param1->unk_6A4;
    v0.unk_04 = param0->unk_14;

    param0->unk_00 = sub_02015128(&v0);

    v1.unk_00 = param1->unk_6A4;
    v1.unk_04 = param0->unk_18;
    v1.unk_08 = 1;

    param0->unk_04 = sub_020151A4(&v1);

    v2.unk_00 = param1->unk_6A4;
    v2.unk_04 = param0->unk_00;
    v2.unk_08 = param0->unk_04;
    v2.unk_0C = 0;
    v2.unk_0E = 0;
    v2.unk_10 = 0;
    v2.unk_14 = 31;
    v2.unk_18 = 1022;
    v2.unk_1C = 0;

    param0->unk_08 = sub_02015214(&v2);

    sub_02015240(param0->unk_08, 0);
    sub_02015268(param0->unk_08, 128 / 2, 128 / 2);
}

static void ov78_021D24E4 (UnkStruct_ov78_021D2448 * param0)
{
    sub_02015238(param0->unk_08);
    sub_02015164(param0->unk_00);
    sub_020151D4(param0->unk_04);
    Heap_FreeToHeap(param0->unk_0C);
    Heap_FreeToHeap(param0->unk_10);
}

static void ov78_021D2508 (UnkStruct_ov78_021D2448 * param0, BOOL param1)
{
    sub_02015240(param0->unk_08, param1);
}

static void ov78_021D2514 (UnkStruct_ov78_021D2448 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7)
{
    GF_ASSERT(param0->unk_54 == NULL);

    ov78_021D2108(&param0->unk_1C.unk_00, param1, param2, param7);
    ov78_021D2108(&param0->unk_1C.unk_10, param3, param4, param7);
    ov78_021D2108(&param0->unk_1C.unk_20, param5, param6, param7);

    param0->unk_1C.unk_30 = 0;
    param0->unk_1C.unk_34 = 1;
    param0->unk_54 = sub_0200D9E8(ov78_021D25A0, param0, 0);
}

static void ov78_021D256C (UnkStruct_ov78_021D2448 * param0)
{
    GF_ASSERT(param0->unk_54 == NULL);

    param0->unk_1C.unk_34 = -2;

    if (param0->unk_1C.unk_30 >= param0->unk_1C.unk_00.unk_0C) {
        param0->unk_1C.unk_30 = param0->unk_1C.unk_00.unk_0C + param0->unk_1C.unk_34;
    }

    param0->unk_54 = sub_0200D9E8(ov78_021D25A0, param0, 0);
}

static void ov78_021D25A0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov78_021D2448 * v0 = param1;
    BOOL v1;
    fx32 v2, v3;

    v1 = ov78_021D2114(&v0->unk_1C.unk_00, v0->unk_1C.unk_30);

    ov78_021D2114(&v0->unk_1C.unk_10, v0->unk_1C.unk_30);
    ov78_021D2114(&v0->unk_1C.unk_20, v0->unk_1C.unk_30);

    v2 = v0->unk_1C.unk_00.unk_00 - ((128 / 2) * FX32_ONE);
    v3 = v0->unk_1C.unk_10.unk_00 - ((128 / 2) * FX32_ONE);

    sub_02015254(v0->unk_08, v2 >> FX32_SHIFT, v3 >> FX32_SHIFT);
    sub_02015270(v0->unk_08, v0->unk_1C.unk_20.unk_00, v0->unk_1C.unk_20.unk_00);

    if ((v1 == 1) || (v0->unk_1C.unk_30 < 0)) {
        sub_0200DA58(param0);
        v0->unk_54 = NULL;
    }

    v0->unk_1C.unk_30 += v0->unk_1C.unk_34;
}

static BOOL ov78_021D2608 (UnkStruct_ov78_021D2448 * param0)
{
    if (param0->unk_54) {
        return 0;
    }

    return 1;
}

static void ov78_021D2618 (UnkStruct_ov78_021D107C * param0)
{
    fx32 v0, v1;

    v0 = param0->unk_7C[param0->unk_54][0] << FX32_SHIFT;
    v1 = (param0->unk_7C[param0->unk_54][1] + 48) << FX32_SHIFT;

    ov78_021D2514(&param0->unk_6A8, v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, (FX32_CONST(0.40f)), (FX32_CONST(1.0f)), 6);
    ov78_021D26B4(&param0->unk_274, param0->unk_268[param0->unk_54], v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, (FX32_CONST(0.40f)), (FX32_CONST(1.0f)), 6);
}

static void ov78_021D2688 (UnkStruct_ov78_021D107C * param0)
{
    ov78_021D256C(&param0->unk_6A8);
    ov78_021D270C(&param0->unk_274);
}

static BOOL ov78_021D26A4 (UnkStruct_ov78_021D107C * param0)
{
    return ov78_021D2608(&param0->unk_6A8);
}

static void ov78_021D26B4 (UnkStruct_ov78_021D26B4 * param0, UnkStruct_02007C7C * param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8)
{
    GF_ASSERT(param0->unk_3C == NULL);

    ov78_021D2108(&param0->unk_04.unk_00, param2, param3, param8);
    ov78_021D2108(&param0->unk_04.unk_10, param4, param5, param8);
    ov78_021D2108(&param0->unk_04.unk_20, param6, param7, param8);

    param0->unk_00 = param1;
    param0->unk_04.unk_30 = 0;
    param0->unk_04.unk_34 = 1;
    param0->unk_3C = sub_0200D9E8(ov78_021D2740, param0, 0);
}

static void ov78_021D270C (UnkStruct_ov78_021D26B4 * param0)
{
    GF_ASSERT(param0->unk_3C == NULL);

    param0->unk_04.unk_34 = -2;

    if (param0->unk_04.unk_30 >= param0->unk_04.unk_00.unk_0C) {
        param0->unk_04.unk_30 = param0->unk_04.unk_00.unk_0C + param0->unk_04.unk_34;
    }

    param0->unk_3C = sub_0200D9E8(ov78_021D2740, param0, 0);
}

static void ov78_021D2740 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov78_021D26B4 * v0 = param1;
    BOOL v1;
    u32 v2;

    v1 = ov78_021D2114(&v0->unk_04.unk_00, v0->unk_04.unk_30);

    ov78_021D2114(&v0->unk_04.unk_10, v0->unk_04.unk_30);
    ov78_021D2114(&v0->unk_04.unk_20, v0->unk_04.unk_30);

    v2 = FX_Mul(0x100 * FX32_ONE, v0->unk_04.unk_20.unk_00) >> FX32_SHIFT;

    sub_02007DEC(v0->unk_00, 0, v0->unk_04.unk_00.unk_00 >> FX32_SHIFT);
    sub_02007DEC(v0->unk_00, 1, v0->unk_04.unk_10.unk_00 >> FX32_SHIFT);
    sub_02007DEC(v0->unk_00, 12, v2);
    sub_02007DEC(v0->unk_00, 13, v2);

    if ((v1 == 1) || (v0->unk_04.unk_30 < 0)) {
        sub_0200DA58(param0);
        v0->unk_3C = NULL;
    }

    v0->unk_04.unk_30 += v0->unk_04.unk_34;
}

static void ov78_021D27CC (UnkStruct_ov78_021D107C * param0, int param1)
{
    int v0;
    int v1, v2;

    sub_02006E84(82, 17, 0, 5 * 32, 32, param1);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_9C[v0] = sub_0201A778(param1, 1);
        sub_0201A7A0(param0->unk_9C[v0]);

        switch (v0) {
        case 0:
            v1 = 12;
            v2 = 4;
            break;
        case 1:
            v1 = 4;
            v2 = 14;
            break;
        case 2:
            v1 = 20;
            v2 = 13;
            break;
        }

        sub_0201A7E8(param0->unk_94, param0->unk_9C[v0], 3, v1, v2, 11, 4, 5, 1 + (64 * v0));
        ov78_021D28A8(param0->unk_9C[v0], param1, 360, 4 + v0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0xa & 0xff) << 0))));
    }
}

static void ov78_021D2884 (UnkStruct_ov78_021D107C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0201A8FC(param0->unk_9C[v0]);
        Heap_FreeToHeap(param0->unk_9C[v0]);
    }
}

static void ov78_021D28A8 (UnkStruct_0205AA50 * param0, int param1, int param2, int param3, u32 param4)
{
    MessageLoader * v0;
    Strbuf* v1;

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    sub_0201ADA4(param0, (((param4) >> 0) & 0xff));
    sub_0201D78C(param0, 0, v1, 1, 0, 0xff, param4, NULL);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

static void ov78_021D2904 (UnkStruct_ov78_021D107C * param0)
{
    sub_0201ACF4(param0->unk_9C[param0->unk_A8]);
}

static u16 ov78_021D291C (u16 param0)
{
    switch (param0) {
    case 0:
        return 387;
    case 1:
        return 390;
    case 2:
        return 393;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
