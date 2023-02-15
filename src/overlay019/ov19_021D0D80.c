#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02073C74_sub1.h"
#include "struct_decls/struct_02075874_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "constdata/const_020F410C.h"
#include "overlay084/const_ov84_02241130.h"
#include "constdata/const_020F2DAC.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02098D38.h"
#include "overlay019/struct_ov19_021D3CFC.h"
#include "overlay019/struct_ov19_021D4DE4.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4EE4.h"
#include "overlay019/struct_ov19_021D4F34.h"
#include "overlay019/struct_ov19_021D4F5C.h"
#include "overlay019/struct_ov19_021D5594.h"
#include "overlay019/struct_ov19_021D5BAC.h"
#include "overlay019/struct_ov19_021D5D20.h"
#include "overlay019/struct_ov19_021D5FAC.h"
#include "overlay019/struct_ov19_021D6104.h"

#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02023FCC.h"
#include "unk_0202440C.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_0202CC64.h"
#include "unk_0202D778.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_0208694C.h"
#include "unk_0208C324.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D603C.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DF964.h"

FS_EXTERN_OVERLAY(overlay84);

static const UnkUnion_020225E0 Unk_ov19_021DFDF6[] = {
    {0xFE, 0x0, 0xB8, 0x28},
    {0xFE, 0xFF, 0xB8, 0x28},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_020225E0 Unk_ov19_021DFE02[] = {
    {0xFE, 0x0, 0xB8, 0x28},
    {0xFE, 0xFF, 0xB8, 0x28},
    {0xFE, 0x80, 0xB2, 0xC},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_020225E0 Unk_ov19_021DFE12[] = {
    {0xFE, 0x98, 0xA8, 0x10},
    {0xFE, 0xA3, 0x86, 0x10},
    {0xFE, 0xB8, 0x68, 0x10},
    {0xFE, 0xD8, 0x54, 0x10},
    {0xFE, 0xF0, 0x34, 0x10},
    {0xFE, 0xF0, 0x10, 0x10},
    {0xFF, 0x0, 0x0, 0x0}
};

static const u16 Unk_ov19_021DFDF0[] = {
    0x39,
    0x1AF,
    0x7F
};

typedef struct {
    u32 unk_00;
    u8 unk_04;
    s8 unk_05;
    u16 unk_06;
} UnkStruct_ov19_021D4468;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[NELEMS(Unk_ov19_021DFDF0)];
    u16 unk_08[NELEMS(Unk_ov19_021DFDF0)];
    BoxPokemon *unk_10;
    UnkStruct_020797DC * unk_14;
    Party * unk_18;
    BOOL unk_1C;
} UnkStruct_ov19_021D38E0;

typedef struct UnkStruct_ov19_021D5DF8_t {
    UnkStruct_ov19_021D4DF0 unk_00;
    UnkStruct_ov19_021D61B0 * unk_114;
    UnkStruct_02042434 * unk_118;
    UnkStruct_021C0794 * unk_11C;
    UnkStruct_020797DC * unk_120;
    Party * unk_124;
    UnkStruct_0208737C * unk_128;
    UnkStruct_02098D38 unk_12C;
    UnkStruct_ov19_021D38E0 unk_15C;
    UnkStruct_02023FCC * unk_17C;
    UnkStruct_02023FCC * unk_180;
    u32 unk_184;
    u32 unk_188;
    UnkStruct_0200B144 * unk_18C;
    UnkStruct_0200B144 * unk_190;
    UnkStruct_0200B144 * unk_194;
    UnkStruct_0200B144 * unk_198;
    UnkStruct_0200B358 * unk_19C;
    Pokemon *unk_1A0;
    UnkStruct_020279FC * unk_1A4;
    int (* unk_1A8)(struct UnkStruct_ov19_021D5DF8_t * param0);
    void (* unk_1AC)(struct UnkStruct_ov19_021D5DF8_t * param0, u32 * param1);
    u32 unk_1B0;
    u32 unk_1B4;
    s32 unk_1B8;
    UnkStruct_ov19_021D4468 unk_1BC;
    u32 unk_1C4;
    UnkStruct_ov19_021D6104 unk_1C8;
    int unk_1FC;
    u32 unk_200;
    BOOL unk_204;
    BOOL unk_208;
    int unk_20C;
    UnkStruct_020067E8 * unk_210;
    void * unk_214;
    u32 unk_218;
} UnkStruct_ov19_021D5DF8;

typedef int (* UnkFuncPtr_ov19_021D0EA0)(UnkStruct_ov19_021D5DF8 *);
typedef void (* UnkFuncPtr_ov19_021D0EB0)(UnkStruct_ov19_021D5DF8 *, u32 *);

static void ov19_021D0EA0(UnkStruct_ov19_021D5DF8 * param0, UnkFuncPtr_ov19_021D0EA0 param1);
static void ov19_021D0EB0(UnkStruct_ov19_021D5DF8 * param0, UnkFuncPtr_ov19_021D0EB0 param1);
static void ov19_021D0EC0(UnkStruct_ov19_021D5DF8 * param0);
static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D0F14(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D0F88(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 * param0);
static int ov19_021D0FF0(UnkStruct_ov19_021D5DF8 * param0);
static BOOL ov19_021D1238(UnkStruct_ov19_021D5DF8 * param0, int * param1);
static int ov19_021D1270(UnkStruct_ov19_021D5DF8 * param0);
static int ov19_021D15C0(UnkStruct_ov19_021D5DF8 * param0);
static int ov19_021D17AC(UnkStruct_ov19_021D5DF8 * param0);
static int ov19_021D19B8(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D1C84(UnkStruct_ov19_021D5DF8 * param0);
static int ov19_021D1DAC(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D1DEC(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D1F5C(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D20A4(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2308(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2694(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D27E8(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2890(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2A5C(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2B54(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static BOOL ov19_021D2DD0(const UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D2E1C(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D2F14(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D3010(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D30D0(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D3294(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static BOOL ov19_021D34E4(UnkStruct_ov19_021D5DF8 * param0);
static BOOL ov19_021D357C(UnkStruct_ov19_021D5DF8 * param0, int * param1);
static void ov19_021D35F8(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D38E0(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D3978(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov19_021D3AC8(BoxPokemon *boxMon, u16 param1);
static void ov19_021D3B34(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D3C28(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D3CFC(UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1);
static void ov19_021D3D44(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D3FB0(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D4184(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D4390(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D443C(UnkStruct_ov19_021D5DF8 * param0, u32 param1, u32 param2);
static void ov19_021D4458(UnkStruct_ov19_021D5DF8 * param0);
static BOOL ov19_021D4468(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D45A8(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D4640(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static void ov19_021D4938(UnkStruct_ov19_021D5DF8 * param0, u32 * param1);
static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D4BB0(u32 param0, u32 param1, void * param2);
static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_02042434 * param1);
static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D4DE4(UnkStruct_ov19_021D4DE4 * param0, int param1);
static void ov19_021D4DF0(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D4E30(UnkStruct_ov19_021D5594 * param0);
static void ov19_021D4E50(UnkStruct_ov19_021D5594 * param0);
static void ov19_021D4E5C(UnkStruct_020797DC * param0, UnkStruct_ov19_021D4F5C * param1);
static void ov19_021D4E7C(UnkStruct_ov19_021D4F5C * param0);
static void ov19_021D4E88(UnkStruct_ov19_021D5BAC * param0);
static void ov19_021D4EC0(UnkStruct_ov19_021D5BAC * param0);
static void ov19_021D4EE4(UnkStruct_ov19_021D4EE4 * param0);
static void ov19_021D4F18(UnkStruct_ov19_021D4EE4 * param0);
static void ov19_021D4F34(UnkStruct_ov19_021D4F34 * param0);
static void ov19_021D4F40(const UnkStruct_020797DC * param0, UnkStruct_ov19_021D4F5C * param1);
static void ov19_021D4F5C(UnkStruct_ov19_021D4DF0 * param0, UnkStruct_020797DC * param1);
static BOOL ov19_021D4F74(u32 param0, UnkStruct_ov19_021D5DF8 * param1);
static BOOL ov19_021D4FDC(UnkStruct_ov19_021D4DF0 * param0, int param1, int param2);
static int ov19_021D5150(u32 param0, UnkStruct_ov19_021D5DF8 * param1);
static int ov19_021D51CC(UnkStruct_ov19_021D4DF0 * param0, int param1, int param2);
static void ov19_021D5290(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D52D0(UnkStruct_ov19_021D5DF8 * param0);
static BOOL ov19_021D52F4(UnkStruct_ov19_021D5DF8 * param0);
static BOOL ov19_021D538C(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D53B8(u32 param0, u32 param1, void * param2);
static void ov19_021D5408(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5410(UnkStruct_ov19_021D4DF0 * param0, u32 param1, u32 param2);
static void ov19_021D5420(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D54A4(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D5594(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D55B0(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D55C4(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D56AC(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static void ov19_021D5734(UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1);
static BOOL ov19_021D57D8(UnkStruct_ov19_021D5DF8 * param0, u32 param1);
static BOOL ov19_021D5800(UnkStruct_ov19_021D5DF8 * param0, u32 param1);
static void ov19_021D5834(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D584C(UnkStruct_ov19_021D5DF8 * param0);
static void ov19_021D5888(UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2);
static void ov19_021D58AC(UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2);
static void ov19_021D59F4(UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2);
static void ov19_021D5B70(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5BA0(UnkStruct_ov19_021D4DF0 * param0, BOOL param1);
static void ov19_021D5BA8(UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon);
static void ov19_021D5BAC(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5BE8(UnkStruct_ov19_021D4DF0 * param0, u16 param1, UnkStruct_ov19_021D5DF8 * param2);
static void ov19_021D5CBC(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5CE8(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5D08(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5D20(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5D28(UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1);
static void ov19_021D5D54(UnkStruct_ov19_021D4DF0 * param0);
static void ov19_021D5D60(UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1);
static void ov19_021D5D78(UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1);
static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5DA4(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 * param0, int param1);
static void ov19_021D5DB4(UnkStruct_ov19_021D4DF0 * param0, u32 param1);
static void ov19_021D5DD8(UnkStruct_ov19_021D4DF0 * param0);
static u32 ov19_021D5FD0(UnkStruct_ov19_021D4DF0 * param0, int param1, void * param2);
static u32 ov19_021D6014(UnkStruct_ov19_021D4DF0 * param0, int param1, void * param2);

int ov19_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov19_021D5DF8 * v0;

    Heap_Create(3, 9, 16384);
    Heap_Create(3, 10, 245760);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov19_021D5DF8), 9);

    if (v0 != NULL) {
        ov19_021D4BE0(v0, sub_02006840(param0));
        ov19_021D61B0(&(v0->unk_114), &v0->unk_00, v0);

        v0->unk_1B0 = 0;
        v0->unk_1A8 = ov19_021D0ECC(v0);

        ov19_021D0EB0(v0, ov19_021D0F20);
    }

    return 1;
}

int ov19_021D0DEC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov19_021D5DF8 * v0 = sub_0200682C(param0);

    if (v0->unk_1AC != NULL) {
        v0->unk_1AC(v0, &(v0->unk_1B4));
        return 0;
    } else {
        if (v0->unk_1A8 != NULL) {
            if (Unk_021BF67C.unk_48 & PAD_BUTTON_Y) {
                if (ov19_021D6628(v0->unk_114) == 1) {
                    ov19_021D5DD8(&v0->unk_00);
                    ov19_021D6594(v0->unk_114, 43);
                    return 0;
                }
            }

            return v0->unk_1A8(v0);
        }
    }

    GF_ASSERT(0);
    return 1;
}

int ov19_021D0E58 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov19_021D5DF8 * v0 = sub_0200682C(param0);

    if (Party_HasSpecies(v0->unk_124, 441) == 0) {
        UnkStruct_0202CC84 * v1 = sub_0202CC98(v0->unk_11C);

        sub_0202CCA8(v1);
    }

    ov19_021D64A0(v0->unk_114);
    ov19_021D4D58(v0);

    Heap_Destroy(9);
    Heap_Destroy(10);

    return 1;
}

static void ov19_021D0EA0 (UnkStruct_ov19_021D5DF8 * param0, UnkFuncPtr_ov19_021D0EA0 param1)
{
    param0->unk_1A8 = param1;
    param0->unk_1B0 = 0;
}

static void ov19_021D0EB0 (UnkStruct_ov19_021D5DF8 * param0, UnkFuncPtr_ov19_021D0EB0 param1)
{
    param0->unk_1AC = param1;
    param0->unk_1B4 = 0;
}

static void ov19_021D0EC0 (UnkStruct_ov19_021D5DF8 * param0)
{
    param0->unk_1AC = NULL;
}

static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (ov19_021D5E10(&(param0->unk_00))) {
    case 0:
    default:
        return ov19_021D0FF0;
    case 1:
        return ov19_021D1270;
    case 2:
        return ov19_021D15C0;
    case 4:
        return ov19_021D17AC;
    case 3:
        return ov19_021D19B8;
    }
}

static void ov19_021D0F14 (UnkStruct_ov19_021D5DF8 * param0)
{
    param0->unk_118->unk_08 = 1;
}

static void ov19_021D0F20 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 1);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 1)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D0F88 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 2)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static inline void inline_ov19_021D0FF0_sub1 (UnkStruct_ov19_021D5DF8 * wk)
{
    ov19_021D5B70(&wk->unk_00);
    ov19_021D5888(&wk->unk_00, wk->unk_00.unk_08.unk_00, wk);
    ov19_021D6594(wk->unk_114, 49);
    ov19_021D6594(wk->unk_114, 6);
}

static inline int inline_ov19_021D0FF0 (UnkStruct_ov19_021D5DF8 * param0)
{
    if (ov19_021D538C(param0)) {
        if (ov19_021D5E08(&param0->unk_00) != 4) {
            switch (param0->unk_184) {
            case 0:
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            case 1:
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    sub_02005748(1523);
                }
                break;
            }
        } else {
            switch (param0->unk_184) {
            case 0:
                if ((ov19_021D5F9C(&param0->unk_00) == 0) && (ov19_021D5E34(&param0->unk_00) == 1)) {
                    sub_02005748(1501);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    sub_02005748(1523);
                }
                break;
            case 1:
                if ((ov19_021D5F9C(&param0->unk_00) == 1) && (ov19_021D5E34(&param0->unk_00) == 1)) {
                    sub_02005748(1501);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    sub_02005748(1523);
                }
                break;
            case 2:
                sub_02005748(1501);
                ov19_021D5B80(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 50);
                return 1;
            }
        }
    }

    return 0;
}

static int ov19_021D0FF0 (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            if (ov19_021D5E4C(&param0->unk_00)) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_L) {
            ov19_021D5CE8(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_R) {
            ov19_021D5CBC(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(Unk_021BF67C.unk_44, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0++;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 2;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov19_021D1238 (UnkStruct_ov19_021D5DF8 * param0, int * param1)
{
    if (Item_IsMail(ov19_021D5E74(&param0->unk_00))) {
        *param1 = 30;
        return 1;
    }

    if (ov19_021D5FD0(&param0->unk_00, 162, NULL) != 0) {
        *param1 = 29;
        return 1;
    }

    return 0;
}

static int ov19_021D1270 (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            if (ov19_021D5E2C(&param0->unk_00) == 6) {
                param0->unk_1B0 = 2;
                break;
            }

            if (ov19_021D5E4C(&param0->unk_00)) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
            break;
        }

        if ((Unk_021BF67C.unk_48 & PAD_BUTTON_B) || ((Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) && (ov19_021D5E2C(&param0->unk_00) & 1)) || ((Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) && (ov19_021D5E2C(&param0->unk_00) == 6))) {
            param0->unk_1B0 = 2;
            break;
        }

        if (ov19_021D4F74(Unk_021BF67C.unk_44, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 6;
            break;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_021D5E08(&param0->unk_00) == 0) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            param0->unk_1B0 = 0;
        } else {
            int v0;

            if ((ov19_021D5E38(&param0->unk_00) != 1) && (ov19_021D1238(param0, &v0))) {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, v0);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            } else {
                ov19_021D6594(param0->unk_114, 36);
                param0->unk_1B0 = 3;
            }
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_021D52D0(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static int ov19_021D15C0 (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (Unk_021BF67C.unk_44 & (PAD_KEY_LEFT | PAD_BUTTON_L)) {
            ov19_021D5CE8(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (Unk_021BF67C.unk_44 & (PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            ov19_021D5CBC(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            ov19_021D0EB0(param0, ov19_021D2694);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (ov19_021D4F74(Unk_021BF67C.unk_44, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D17AC (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            ov19_021D0EB0(param0, ov19_021D1DEC);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_L) {
            ov19_021D5CE8(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_R) {
            ov19_021D5CBC(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(Unk_021BF67C.unk_44, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 2;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D19B8 (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            if (ov19_021D5E08(&param0->unk_00) != 1) {
                ov19_021D6594(param0->unk_114, 34);
                param0->unk_1B0 = 1;
            } else {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, 18);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            }
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_L) {
            ov19_021D5CE8(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (Unk_021BF67C.unk_44 & PAD_BUTTON_R) {
            ov19_021D5CBC(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(Unk_021BF67C.unk_44, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            ov19_021D6594(param0->unk_114, 35);
            param0->unk_1B0 = 2;
        }

        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_021D5290(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static void ov19_021D1C84 (UnkStruct_ov19_021D5DF8 * param0)
{
    static const u8 v0[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    if (ov19_021D5E38(&param0->unk_00) == 2) {
        UnkStruct_ov19_021D5594 * v1 = &param0->unk_00.unk_14;

        param0->unk_12C.unk_00 = param0->unk_00.unk_14.unk_00;
        param0->unk_12C.unk_11 = (v1->unk_0B) ? 0 : 2;
        param0->unk_12C.unk_13 = 1;
        param0->unk_12C.unk_14 = 0;
        param0->unk_12C.unk_12 = 0;
        param0->unk_12C.unk_18 = 0;
        param0->unk_12C.unk_04 = param0->unk_1A4;
    } else if (ov19_021D5E10(&param0->unk_00) == 0) {
        param0->unk_12C.unk_00 = sub_02079C9C(param0->unk_120, sub_0207999C(param0->unk_120), 0);
        param0->unk_12C.unk_11 = 2;
        param0->unk_12C.unk_13 = (5 * 6);
        param0->unk_12C.unk_14 = ov19_021D5E24(&param0->unk_00);
        param0->unk_12C.unk_12 = 0;
        param0->unk_12C.unk_18 = 0;
    } else {
        param0->unk_12C.unk_00 = param0->unk_124;
        param0->unk_12C.unk_11 = 1;
        param0->unk_12C.unk_13 = Party_GetCurrentCount(param0->unk_124);
        param0->unk_12C.unk_14 = ov19_021D5E2C(&param0->unk_00);
        param0->unk_12C.unk_12 = 0;
        param0->unk_12C.unk_18 = 0;
    }

    param0->unk_12C.unk_28 = NULL;
    param0->unk_12C.unk_1C = sub_0207A274(param0->unk_11C);
    param0->unk_12C.unk_2C = sub_0208C324(param0->unk_11C);
    param0->unk_12C.unk_20 = sub_0202D79C(param0->unk_11C);

    sub_0208D720(&(param0->unk_12C), v0);
    sub_0208E9C0(&(param0->unk_12C), sub_02025E38(param0->unk_11C));
}

static int ov19_021D1DAC (UnkStruct_ov19_021D5DF8 * param0)
{
    switch (param0->unk_1B0) {
    case 0:
        ov19_021D6594(param0->unk_114, 51);
        param0->unk_1B0++;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            return 1;
        }
    }

    return 0;
}

static void  ov19_021D1DEC (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        if ((ov19_021D5E08(&(param0->unk_00)) == 3) && (ov19_021D5F7C(&(param0->unk_00)) != 0)) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }

        if (ov19_021D5E38(&(param0->unk_00)) != 1) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 17);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
            break;
        } else {
            ov19_021D6594(param0->unk_114, 34);
            (*param1) = 1;
        }

        break;

    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            sub_02005748(1501);
            ov19_021D5408(&param0->unk_00, 11);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 2;
        }
        break;
    case 2:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D1F5C (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        if (ov19_021D5E38(&(param0->unk_00)) != 1) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 17);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 2;
            break;
        } else if ((ov19_021D5E08(&param0->unk_00) == 3) && (ov19_021D5F7C(&param0->unk_00) != 0)) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        } else {
            sub_02005748(1501);
            ov19_021D5408(&param0->unk_00, 12);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 5;
        }
        break;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D20A4 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        sub_0200B5CC(param0->unk_19C, 0, ov19_021D5E9C(&param0->unk_00));
        ov19_021D5408(&param0->unk_00, 0);
        ov19_021DF990(&param0->unk_00);

        if (ov19_021D5EE0(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_43:
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_34:
            if ((ov19_021D5E10(&param0->unk_00) == 0) && (ov19_021D5EE0(&param0->unk_00) == 1)) {
                ov19_021D0EB0(param0, ov19_021D2B54);
            } else {
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D0EB0(param0, ov19_021D2E1C);
            }
            break;
        case UnkEnum_021DFB94_35:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D2F14);
            break;
        case UnkEnum_021DFB94_36:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D3010);
            break;
        case UnkEnum_021DFB94_38:
            ov19_021D0EB0(param0, ov19_021D30D0);
            break;
        case UnkEnum_021DFB94_39:
            ov19_021D0EB0(param0, ov19_021D3294);
            break;
        case UnkEnum_021DFB94_41:
            ov19_021D0EB0(param0, ov19_021D2A5C);
            break;
        case UnkEnum_021DFB94_42:
            ov19_021D0EB0(param0, ov19_021D35F8);
            break;
        case UnkEnum_021DFB94_37:
            ov19_021D0EB0(param0, ov19_021D3C28);
            break;
        case UnkEnum_021DFB94_40:
        {
            if (ov19_021D5E74(&param0->unk_00) == 0) {
                ov19_021D0EB0(param0, ov19_021D3D44);
            } else {
                ov19_021D0EB0(param0, ov19_021D3FB0);
            }
        }
        break;
        case UnkEnum_021DFB94_52:
        case UnkEnum_021DFB94_53:
            ov19_021D5B70(&param0->unk_00);
            ov19_021D5888(&param0->unk_00, param0->unk_00.unk_08.unk_00, param0);
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 48);
            ov19_021D6594(param0->unk_114, 6);
            sub_02005748(1501);
            (*param1) = 5;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2308 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
    {
        u32 v0 = ov19_021D5F7C(&param0->unk_00);

        if (v0 != 0) {
            sub_0200B70C(param0->unk_19C, 0, v0);
            ov19_021D5408(&param0->unk_00, 25);
        } else {
            v0 = ov19_021D5E74(&param0->unk_00);

            if (v0 != 0) {
                sub_0200B70C(param0->unk_19C, 0, v0);
                ov19_021D5408(&param0->unk_00, 25);
            } else {
                ov19_021D5408(&param0->unk_00, 28);
            }
        }

        ov19_021DFAD0(&param0->unk_00);
    }

        if (ov19_021D5FC8(&param0->unk_00)) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 34);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        } else if (ov19_021D5EE0(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_51:
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            sub_02005748(1501);
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_46:
            if ((ov19_021D5F7C(&param0->unk_00) == 112) && (sub_02074570(param0->unk_00.unk_4C.unk_00, MON_DATA_SPECIES, NULL) != 487)) {
                sub_0200B70C(param0->unk_19C, 0, 112);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else if (ov19_021D5F7C(&param0->unk_00) != 0) {
                ov19_021D5D60(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 20);
                sub_02005748(1501);
                (*param1) = 5;
            } else {
                ov19_021D0EB0(param0, ov19_021D3D44);
            }

            break;
        case UnkEnum_021DFB94_47:
            if (Item_IsMail(ov19_021D5E74(&param0->unk_00))) {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, 24);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else {
                ov19_021D5D28(&param0->unk_00, param0);
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 19);
                sub_02005748(1501);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_48:
            ov19_021D0EB0(param0, ov19_021D4390);
            break;
        case UnkEnum_021DFB94_49:
            if (Item_IsMail(ov19_021D5E74(&param0->unk_00))) {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, 24);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else if ((param0->unk_00.unk_112 == 112) && (sub_02074570(param0->unk_00.unk_4C.unk_00, MON_DATA_SPECIES, NULL) != 487)) {
                sub_0200B70C(param0->unk_19C, 0, 112);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else {
                ov19_021D5D78(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 21);
                sub_02005748(1501);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_50:
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D6594(param0->unk_114, 6);
            ov19_021D6594(param0->unk_114, 22);
            *param1 = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    }
}

static void ov19_021D2694 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        ov19_021D5408(&param0->unk_00, 7);
        ov19_021DFB50(&param0->unk_00);

        if (ov19_021D5EE0(&param0->unk_00)) {
            sub_02005748(1501);
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_00:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D27E8);
            break;
        case UnkEnum_021DFB94_01:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 7;
            break;
        case UnkEnum_021DFB94_02:
            ov19_021D0EB0(param0, ov19_021D3B34);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EB0(param0, ov19_021D2890);
        }
        break;
    }
}

static void ov19_021D27E8 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        ov19_021D443C(param0, ov19_021D5E68(&param0->unk_00), 8);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if ((param0->unk_1BC.unk_05 == -1) || (param0->unk_1BC.unk_05 == ov19_021D5E68(&param0->unk_00))) {
            (*param1) = 2;
        } else {
            ov19_021D5D08(&param0->unk_00, param0->unk_1BC.unk_05);
            sub_02079A94(param0->unk_120, param0->unk_1BC.unk_05);
            ov19_021D6594(param0->unk_114, 4);
            (*param1) = 2;
        }

        ov19_021D6594(param0->unk_114, 26);
        ov19_021D6594(param0->unk_114, 32);
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2890 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        param0->unk_1B8 = UnkEnum_021DFB94_04;
        (*param1) = 1;
    case 1:
        ov19_021D5408(&param0->unk_00, 9);
        ov19_021DFB94(&param0->unk_00, param0->unk_1B8);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
        default:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
            break;
        case UnkEnum_021DFB94_04:
        case UnkEnum_021DFB94_05:
        case UnkEnum_021DFB94_06:
        case UnkEnum_021DFB94_07:
        case UnkEnum_021DFB94_08:
        case UnkEnum_021DFB94_09:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);
            ov19_021D5408(&param0->unk_00, 10);
            ov19_021DFC04(&param0->unk_00, param0->unk_1B8);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 4;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            (*param1) = 1;
            break;
        default:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);

            if ((param0->unk_1B8 >= UnkEnum_021DFB94_10) && (param0->unk_1B8 <= UnkEnum_021DFB94_33)) {
                sub_02079AC4(param0->unk_120, 0xffffffff, (param0->unk_1B8 - UnkEnum_021DFB94_10));
                ov19_021D4F5C(&param0->unk_00, param0->unk_120);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            } else {
                GF_ASSERT(0);
                (*param1) = 1;
            }
        }
        break;
    case 6:
        ov19_021D6594(param0->unk_114, 33);
        (*param1) = 8;
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            (*param1) = 1;
        }
        break;
    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2A5C (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        ov19_021DFC80(&param0->unk_00);
        ov19_021D5408(&param0->unk_00, 1);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        } else {
            u32 v0 = ov19_021DFD2C(&(param0->unk_00));

            switch (v0) {
            case -3:
                break;
            case -2:
                ov19_021D6594(param0->unk_114, 28);
                break;
            case -1:
            case UnkEnum_021DFB94_45:
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 2;
                break;
            case UnkEnum_021DFB94_44:
                ov19_021D5BAC(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 7);
                ov19_021D6594(param0->unk_114, 39);
                (*param1) = 2;
                break;
            default:
                if ((v0 >= UnkEnum_021DFB94_56) && (v0 <= UnkEnum_021DFB94_61)) {
                    v0 -= UnkEnum_021DFB94_56;
                    ov19_021DFCE4(&param0->unk_00, v0);
                    ov19_021D6594(param0->unk_114, 29);
                }
                break;
            }
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

asm static void ov19_021D2B54 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    push {r3, r4, r5, lr}
    add r5, r1, #0
    ldr r1, [r5, #0]
    add r4, r0, #0
    cmp r1, #5
    bls _021D2B62
    b _021D2DB6
 _021D2B62:
    add r1, r1, r1
    add r1, pc
    ldrh r1, [r1, #6]
    lsl r1, r1, #0x10
    asr r1, r1, #0x10
    add pc, r1
 _021D2B6E:
    dcd 0x3a000a
    dcd 0x21e00dc
    dcd 0x1ea0232
 _021D2B7A:
    ldr r1, = Unk_021BF67C
    ldr r2, [r1, #0x44]
    mov r1, #1
    tst r1, r2
    beq _021D2BA2
    add r1, r4, #0
    bl ov19_021D5594
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x2c
    bl ov19_021D6594
    ldr r0, = 0x5DC
    bl sub_02005748
    mov r0, #1
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2BA2:
    ldr r1, = ov19_021D2E1C
    bl ov19_021D0EB0
    pop {r3, r4, r5, pc}
 _021D2BAA:
    ldr r1, = Unk_021BF67C
    ldr r2, [r1, #0x44]
    mov r1, #1
    tst r1, r2
    beq _021D2C0E
    add r0, r2, #0
    add r1, r4, #0
    bl ov19_021D5150
    cmp r0, #1
    beq _021D2BDC
    cmp r0, #2
    bne _021D2CAE
    ldr r1, = Unk_021BF67C
    mov r0, #0xf0
    ldr r2, [r1, #0x44]
    ldr r1, [r1, #0x48]
    and r2, r0
    and r0, r1
    cmp r2, r0
    bne _021D2CAE
    ldr r0, = 0x5F3
    bl sub_02005748
    pop {r3, r4, r5, pc}
 _021D2BDC:
    add r0, r4, #0
    add r1, r4, #0
    bl ov19_021D55B0
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x2e
    bl ov19_021D6594
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #5
    bl ov19_021D6594
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #6
    bl ov19_021D6594
    mov r0, #3
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2C0E:
    bl ov19_021D5F20
    cmp r0, #0
    beq _021D2C2C
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x2d
    bl ov19_021D6594
    ldr r1, = ov19_021D2E1C
    add r0, r4, #0
    bl ov19_021D0EB0
    pop {r3, r4, r5, pc}
 _021D2C2C:
    add r0, r4, #0
    add r1, r4, #0
    bl ov19_021D54A4
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x2f
    bl ov19_021D6594
    ldr r0, = 0x5EB
    bl sub_02005748
    mov r0, #2
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2C4C:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ov19_021D6628
    cmp r0, #0
    beq _021D2CAE
    ldr r0, = Unk_021BF67C
    add r1, r4, #0
    ldr r0, [r0, #0x44]
    bl ov19_021D5150
    cmp r0, #4
    bhi _021D2CAE
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
 _021D2C74:
    lsl r2, r3, #2
    dcd 0x80020
    dcd 0x700046
 _021D2C7E:
    ldr r1, = Unk_021BF67C
    mov r0, #0xf0
    ldr r2, [r1, #0x44]
    ldr r1, [r1, #0x48]
    and r2, r0
    and r0, r1
    cmp r2, r0
    bne _021D2CAE
    ldr r0, = 0x5F3
    bl sub_02005748
    pop {r3, r4, r5, pc}
 _021D2C96:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #5
    bl ov19_021D6594
    add r0, r4, #0
    bl ov19_021D5E38
    mov r1, #6
    tst r0, r1
    beq _021D2CB0
 _021D2CAE:
    b _021D2DB6
 _021D2CB0:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ov19_021D6594
    pop {r3, r4, r5, pc}
 _021D2CBC:
    add r0, r4, #0
    bl ov19_021D5CE8
    add r0, r4, #0
    bl ov19_021D5E68
    add r1, r0, #0
    mov r0, #0x12
    lsl r0, r0, #4
    ldr r0, [r4, r0]
    bl sub_02079A94
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #4
    bl ov19_021D6594
    mov r0, #5
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2CE6:
    add r0, r4, #0
    bl ov19_021D5CBC
    add r0, r4, #0
    bl ov19_021D5E68
    add r1, r0, #0
    mov r0, #0x12
    lsl r0, r0, #4
    ldr r0, [r4, r0]
    bl sub_02079A94
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #4
    bl ov19_021D6594
    mov r0, #5
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2D10:
    ldr r0, = Unk_021BF67C
    ldr r1, [r0, #0x48]
    mov r0, #1
    tst r0, r1
    beq _021D2D4C
    add r0, r4, #0
    bl ov19_021D2DD0
    cmp r0, #0
    beq _021D2D44
    add r0, r4, #0
    add r1, r4, #0
    bl ov19_021D56AC
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0xa
    bl ov19_021D6594
    ldr r0, = 0x5EA
    bl sub_02005748
    mov r0, #4
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2D44:
    ldr r0, = 0x5F3
    bl sub_02005748
    pop {r3, r4, r5, pc}
 _021D2D4C:
    mov r0, #2
    tst r0, r1
    beq _021D2DB6
    ldr r0, = 0x5F3
    bl sub_02005748
    pop {r3, r4, r5, pc}
 _021D2D5A:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #4
    bl ov19_021D6600
    cmp r0, #0
    beq _021D2DB6
    add r0, r4, #0
    bl ov19_021D5E38
    mov r1, #6
    tst r0, r1
    bne _021D2D88
    add r0, r4, #0
    bl ov19_021D52F4
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #6
    bl ov19_021D6594
 _021D2D88:
    mov r0, #2
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2D8E:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ov19_021D6628
    cmp r0, #0
    beq _021D2DB6
    mov r0, #1
    str r0, [r5, #0]
    pop {r3, r4, r5, pc}
 _021D2DA2:
    mov r0, #0x45
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ov19_021D6628
    cmp r0, #0
    beq _021D2DB6
    add r0, r4, #0
    bl ov19_021D0EC0
 _021D2DB6:
    pop {r3, r4, r5, pc}
}

static BOOL ov19_021D2DD0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    BoxPokemon *v0;
    int v1, v2, v3, v4;
    const UnkStruct_ov19_021D3CFC * v5 = &param0->unk_08;
    const UnkStruct_ov19_021D5594 * v6 = &param0->unk_14;

    v3 = ov19_021D5F3C(param0);
    v2 = v6->unk_09;

    for (v1 = 0; v1 < v6->unk_08; v1++) {
        v4 = v3 + (v6->unk_0C[v1] - v2);
        v0 = sub_02079C9C(param0->unk_00, 0xffffffff, v4);

        if (sub_02074570(v0, MON_DATA_172, NULL)) {
            return 0;
        }
    }

    return 1;
}

static void ov19_021D2E1C (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        if (ov19_021D5E10(&param0->unk_00) == 1) {
            if (ov19_021D34E4(param0) == 0) {
                sub_02005748(1515);
                ov19_021D5420(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            } else {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, 6);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 2;
            }
        } else {
            sub_02005748(1515);
            ov19_021D5420(param0, &param0->unk_00);
            ov19_021D6594(param0->unk_114, 9);
            (*param1) = 3;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D52F4(param0);
            ov19_021D6594(param0->unk_114, 37);
            (*param1) = 3;
        }
        break;
    case 2:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2F14 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        ov19_021D55C4(param0, &param0->unk_00);
        ov19_021D6594(param0->unk_114, 10);
        sub_02005748(1514);

        if ((ov19_021D5E10(&param0->unk_00) == 1)) {
            u32 v0, v1;

            v0 = ov19_021D5E2C(&param0->unk_00);
            v1 = Party_GetCurrentCount(param0->unk_124);

            if (v0 != (v1 - 1)) {
                (*param1) = 1;
                ov19_021D52F4(param0);
                break;
            }
        }
        (*param1) = 2;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D52F4(param0);
            ov19_021D6594(param0->unk_114, 38);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D2FC8 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    if (ov19_021D34E4(param0)) {
        if (ov19_021D5FD0(&param0->unk_00, 173, NULL)) {
            *param1 = 6;
            return 1;
        }

        if (ov19_021D5E3C(&param0->unk_00)) {
            if (ov19_021D5FD0(&param0->unk_00, 163, NULL) == 0) {
                *param1 = 6;
                return 1;
            }
        }
    }

    return 0;
}

static void ov19_021D3010 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
    {
        u32 v0;

        if (ov19_021D2FC8(param0, &v0)) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, v0);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 1;
        } else {
            ov19_021D5734(param0, &param0->unk_00);
            sub_02005748(1500);
            ov19_021D6594(param0->unk_114, 11);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
    }
    break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D30D0 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        if (Party_GetCurrentCount(param0->unk_124) != 6) {
            ov19_021D6594(param0->unk_114, 26);

            if (ov19_021D5E38(&param0->unk_00) == 2) {
                ov19_021D6594(param0->unk_114, 35);
                (*param1) = 2;
            } else {
                sub_02005748(1515);
                ov19_021D5420(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            }
        } else {
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D5408(&param0->unk_00, 5);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 9)) {
            ov19_021D6594(param0->unk_114, 35);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_021D5290(param0);
            ov19_021D6594(param0->unk_114, 5);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D55C4(param0, &param0->unk_00);
            ov19_021D0F14(param0);
            ov19_021D6594(param0->unk_114, 10);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 10)) {
            ov19_021D6594(param0->unk_114, 36);
            (*param1) = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_021D52D0(param0);
            ov19_021D6594(param0->unk_114, 5);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 8;
        }
        break;
    case 7:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
        }
        break;

    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3294 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        if ((ov19_021D5E38(&param0->unk_00) == 1) && (ov19_021D34E4(param0) == 1)) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 6);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 3;
        } else {
            int v0;

            if (ov19_021D1238(param0, &v0)) {
                sub_02005748(1523);
                ov19_021D5408(&param0->unk_00, v0);
                ov19_021D6594(param0->unk_114, 27);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 3;
            } else {
                ov19_021D443C(param0, param0->unk_00.unk_110, 19);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 1;
            }
        }
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if (param0->unk_1BC.unk_05 == -1) {
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 32);
            (*param1) = 6;
            break;
        }

        param0->unk_00.unk_110 = param0->unk_1BC.unk_05;

        if (ov19_021D5E38(&param0->unk_00) == 2) {
            if (ov19_021D57D8(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 4;
                break;
            }
        } else {
            if (ov19_021D5800(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 5;
                break;
            }
        }

        sub_02005748(1523);
        ov19_021D5408(&param0->unk_00, 13);
        ov19_021D6594(param0->unk_114, 24);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D4458(param0);
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 12);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 13);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D34E4 (UnkStruct_ov19_021D5DF8 * param0)
{
    Pokemon *v0;
    int v1, v2, v3;
    BOOL v4;

    v3 = Party_GetCurrentCount(param0->unk_124);

    for (v1 = 0, v2 = 0; v1 < v3; v1++) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_124, v1);
        v4 = sub_02073C88(v0);

        if ((GetMonData(v0, MON_DATA_173, NULL) == 0) && (GetMonData(v0, MON_DATA_163, NULL) != 0)) {
            v2++;
        }

        sub_02073CD4(v0, v4);

        if (v2 >= 2) {
            return 0;
        }
    }

    if (ov19_021D6014(&param0->unk_00, 173, NULL)) {
        return 0;
    }

    if (ov19_021D6014(&param0->unk_00, 163, NULL) == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov19_021D357C (UnkStruct_ov19_021D5DF8 * param0, int * param1)
{
    if (ov19_021D5FD0(&param0->unk_00, 173, NULL)) {
        *param1 = 31;
        return 0;
    }

    {
        u16 v0 = ov19_021D5E74(&param0->unk_00);

        if (Item_IsMail(ov19_021D5E74(&param0->unk_00))) {
            *param1 = 30;
            return 0;
        }
    }

    if (ov19_021D5FD0(&param0->unk_00, 162, NULL) != 0) {
        *param1 = 29;
        return 0;
    }

    if (ov19_021D5E38(&param0->unk_00) == 1) {
        if (ov19_021D5E10(&param0->unk_00) == 1) {
            if (ov19_021D34E4(param0)) {
                *param1 = 6;
                return 0;
            }
        }
    }

    return 1;
}

static void ov19_021D35F8 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
    {
        int v0;

        if (ov19_021D357C(param0, &v0)) {
            ov19_021D5408(&param0->unk_00, 2);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        } else {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, v0);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 8;
        }
    }
    break;

    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 26)) {
            sub_0200B5CC(param0->unk_19C, 0, ov19_021D5E9C(&param0->unk_00));
            ov19_021D38E0(param0);

            if (ov19_021D5E38(&param0->unk_00) == 2) {
                ov19_021D6594(param0->unk_114, 14);
                param0->unk_1B8 = 0;
            } else {
                if (ov19_021D5E10(&param0->unk_00) == 0) {
                    ov19_021D6594(param0->unk_114, 15);
                    param0->unk_1B8 = 1;
                } else {
                    ov19_021D6594(param0->unk_114, 16);
                    param0->unk_1B8 = 2;
                }
            }
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (ov19_021D5E38(&param0->unk_00) == 2) {
                    ov19_021D5834(param0);
                } else {
                    ov19_021D584C(param0);
                }

                ov19_021D5408(&param0->unk_00, 3);
                (*param1) = 5;
            } else {
                ov19_021D5408(&param0->unk_00, 32);
                (*param1) = 4;
            }

            ov19_021D6594(param0->unk_114, 24);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D5408(&param0->unk_00, 4);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D5408(&param0->unk_00, 33);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 7;
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (param0->unk_1B8 == 2) {
                    ov19_021D6594(param0->unk_114, 37);
                }

                ov19_021D0F14(param0);
            }

            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 9;
        }
        break;
    case 8:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
        }
        break;
    case 9:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D38E0 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D38E0 * v0 = &(param0->unk_15C);
    int v1, v2;

    v0->unk_10 = param0->unk_00.unk_4C.unk_00;

    for (v1 = 0, v2 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
        v0->unk_04[v1] = ov19_021D3AC8(v0->unk_10, Unk_ov19_021DFDF0[v1]);

        if (v0->unk_04[v1]) {
            v2++;
        }
    }

    if (v2 == 0) {
        v0->unk_00 = 1;
        v0->unk_01 = 1;
        return;
    } else {
        v0->unk_00 = 0;
        v0->unk_01 = 0;
        v0->unk_02 = 0;
        v0->unk_03 = 0;
        v0->unk_14 = param0->unk_120;
        v0->unk_18 = param0->unk_124;
        v0->unk_1C = (ov19_021D5E38(&param0->unk_00) != 1);

        for (v1 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
            v0->unk_08[v1] = 0;
        }

        sub_0200D9E8(ov19_021D3978, v0, 0);
    }
}

static void ov19_021D3978 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021D38E0 * v0 = param1;
    BoxPokemon *v1;
    int v2, v3;

    if (v0->unk_02 < 18) {
        int v4 = v0->unk_03 + 15;

        if (v4 > (5 * 6)) {
            v4 = (5 * 6);
        }

        for (v2 = v0->unk_03; v2 < v4; v2++) {
            v1 = sub_02079C9C(v0->unk_14, v0->unk_02, v2);

            if (sub_02074570(v1, MON_DATA_172, NULL)) {
                for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                    if (ov19_021D3AC8(v1, Unk_ov19_021DFDF0[v3])) {
                        v0->unk_08[v3]++;
                    }
                }
            }
        }

        if (v4 == (5 * 6)) {
            v0->unk_03 = 0;
            v0->unk_02++;
        } else {
            v0->unk_03 = v4;
        }
    } else {
        int v5 = Party_GetCurrentCount(v0->unk_18);

        for (v2 = 0; v2 < v5; v2++) {
            v1 = (BoxPokemon *)Party_GetPokemonBySlotIndex(v0->unk_18, v2);

            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (ov19_021D3AC8(v1, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        if (v0->unk_1C) {
            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (ov19_021D3AC8(v0->unk_10, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        v0->unk_01 = 1;

        for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
            if ((v0->unk_08[v3] == 1) && (v0->unk_04[v3] == 1)) {
                v0->unk_01 = 0;
                break;
            }
        }

        v0->unk_00 = 1;
        sub_0200DA58(param0);
    }
}

static BOOL ov19_021D3AC8 (BoxPokemon *boxMon, u16 param1)
{
    BOOL v0, v1;

    v0 = 0;
    v1 = sub_02073D20(boxMon);

    if (sub_02074570(boxMon, MON_DATA_173, NULL) == 0) {
        int v2;

        for (v2 = 0; v2 < 4; v2++) {
            if (sub_02074570(boxMon, 54 + v2, NULL) == param1) {
                v0 = 1;
                break;
            }
        }
    }

    sub_02073D48(boxMon, v1);
    return v0;
}

BOOL ov19_021D3B18 (const UnkStruct_ov19_021D5DF8 * param0)
{
    const UnkStruct_ov19_021D38E0 * v0 = &(param0->unk_15C);
    return v0->unk_00;
}

BOOL ov19_021D3B20 (const UnkStruct_ov19_021D5DF8 * param0)
{
    const UnkStruct_ov19_021D38E0 * v0 = &(param0->unk_15C);

    if (v0->unk_00) {
        return v0->unk_01;
    }

    return 0;
}

static void ov19_021D3B34 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(10);
            sub_02079AF4(param0->unk_120, sub_0207999C(param0->unk_120), param0->unk_128->unk_18);
            param0->unk_210 = sub_020067E8(&Unk_020F2DAC, param0->unk_128, 9);
            (*param1)++;
        }
        break;
    case 2:
        if (sub_02006844(param0->unk_210)) {
            u32 v0 = sub_0207999C(param0->unk_120);

            sub_02006814(param0->unk_210);
            Heap_Create(3, 10, 245760);
            sub_02079B24(param0->unk_120, v0, param0->unk_128->unk_18);

            ov19_021D4F40(param0->unk_120, &param0->unk_00.unk_40);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
        }
        break;
    }
}

static void ov19_021D3C28 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch ((*param1)) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(10);
            ov19_021D1C84(param0);
            param0->unk_210 = sub_020067E8(&Unk_020F410C, &(param0->unk_12C), 9);
            (*param1)++;
        }
        break;
    case 2:
        if (sub_02006844(param0->unk_210)) {
            u32 v0 = sub_0207999C(param0->unk_120);

            sub_02006814(param0->unk_210);
            Heap_Create(3, 10, 245760);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D3CFC(&(param0->unk_00), param0);
            }

            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
            ov19_021D0F14(param0);
        }
    }
}

static void ov19_021D3CFC (UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1)
{
    UnkStruct_ov19_021D3CFC * v0 = &param0->unk_08;

    switch (v0->unk_04) {
    case 0:
        v0->unk_07 = param1->unk_12C.unk_14;
        v0->unk_05 = v0->unk_07 % 6;
        v0->unk_06 = v0->unk_07 / 6;
        break;
    case 1:
        v0->unk_08 = param1->unk_12C.unk_14;
        break;
    default:
        return;
    }

    ov19_021D52F4(param1);
}

static void ov19_021D3D44 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    FS_EXTERN_OVERLAY(overlay84);

    static const u8 v0[] = {
        0, 1, 2, 3, 4, 6, 7, 0xff
    };
    static u32 v1;

    switch ((*param1)) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            UnkStruct_0207D3C0 * v2;

            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(10);

            v2 = sub_0207D990(param0->unk_11C);
            param0->unk_214 = sub_0207D824(v2, v0, 9);
            sub_0207CB2C(param0->unk_214, param0->unk_11C, 1, NULL);
            Overlay_LoadByID(FS_OVERLAY_ID(overlay84), 2);
            param0->unk_210 = sub_020067E8(&Unk_ov84_02241130, param0->unk_214, 9);
            (*param1)++;
        }
        break;
    case 2:
        if (sub_02006844(param0->unk_210)) {
            v1 = sub_0207CB94((UnkStruct_0207CB08 *)(param0->unk_214));

            sub_02006814(param0->unk_210);
            Heap_FreeToHeap(param0->unk_214);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay84));

            if ((v1 == 112) && (sub_02074570(param0->unk_00.unk_4C.unk_00, MON_DATA_SPECIES, NULL) != 487)) {
                (void)0;
            } else if (v1 != 0) {
                sub_0207D60C(sub_0207D990(param0->unk_11C), v1, 1, 9);
                ov19_021D5BE8(&param0->unk_00, v1, param0);
                ov19_021D0F14(param0);
            }

            Heap_Create(3, 10, 245760);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D6594(param0->unk_114, 0);
            (*param1)++;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 2)) {
            if (v1 == 0) {
                ov19_021D0EC0(param0);
            } else if ((v1 == 112) && (sub_02074570(param0->unk_00.unk_4C.unk_00, MON_DATA_SPECIES, NULL) != 487)) {
                sub_0200B70C(param0->unk_19C, 0, v1);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            } else {
                sub_0200B70C(param0->unk_19C, 0, v1);
                ov19_021D5408(&param0->unk_00, 16);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            }
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_02005748(1501);
                ov19_021D6594(param0->unk_114, 26);
                (*param1)++;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3FB0 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    static u32 v0;

    switch (*param1) {
    case 0:
        v0 = ov19_021D5E74(&param0->unk_00);

        if (Item_IsMail(v0)) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 24);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
        } else {
            sub_0200B70C(param0->unk_19C, 0, v0);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D5408(&param0->unk_00, 23);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 5;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (sub_0207D570(sub_0207D990(param0->unk_11C), v0, 1, 9)) {
            ov19_021D5BE8(&param0->unk_00, 0, param0);
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            *param1 = 3;
        } else {
            ov19_021D5408(&param0->unk_00, 14);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D5408(&param0->unk_00, 15);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_02005748(1501);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 5;
            }
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4184 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    static u32 v0;

    switch (*param1) {
    case 0:
        v0 = ov19_021D5F88(&param0->unk_00);

        if (Item_IsMail(v0)) {
            sub_02005748(1523);
            ov19_021D5408(&param0->unk_00, 24);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 5;
        } else {
            sub_0200B70C(param0->unk_19C, 0, v0);
            ov19_021D5408(&param0->unk_00, 26);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (sub_0207D570(sub_0207D990(param0->unk_11C), v0, 1, 9)) {
            if (ov19_021D5F7C(&param0->unk_00) != 0) {
                ov19_021D5D54(&param0->unk_00);
                *param1 = 4;
            } else {
                ov19_021D5BE8(&param0->unk_00, 0, param0);
                *param1 = 3;
            }

            ov19_021D6594(param0->unk_114, 23);
        } else {
            ov19_021D5408(&param0->unk_00, 14);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 23)) {
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D5408(&param0->unk_00, 27);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_02005748(1501);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4390 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 26);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D6594(param0->unk_114, 17);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 17)) {
            (*param1)++;
        }
        break;
    case 3:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            ov19_021D6594(param0->unk_114, 18);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 18)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D443C (UnkStruct_ov19_021D5DF8 * param0, u32 param1, u32 param2)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_05 = param1;
    param0->unk_1BC.unk_06 = param2;
    param0->unk_1BC.unk_04 = 0;
}

static void ov19_021D4458 (UnkStruct_ov19_021D5DF8 * param0)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_04 = 1;
}

static BOOL ov19_021D4468 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4468 * v0 = &(param0->unk_1BC);

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_04 == 1) {
            v0->unk_00 = 1;
            break;
        }

        if (v0->unk_05 == -1) {
            v0->unk_05 = 0;
        }

        ov19_021D5D20(&param0->unk_00, v0->unk_05);
        ov19_021D6594(param0->unk_114, 30);
        v0->unk_00 = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 30)) {
            ov19_021D5408(&param0->unk_00, v0->unk_06);
            ov19_021D6594(param0->unk_114, 24);
            v0->unk_00 = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        v0->unk_00 = 3;
    case 3:
        if (ov19_021D6600(param0->unk_114, 31) == 0) {
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_KEY_LEFT | PAD_BUTTON_L)) {
            v0->unk_05--;

            if (v0->unk_05 < 0) {
                v0->unk_05 = 18 - 1;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (Unk_021BF67C.unk_48 & (PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            if (++(v0->unk_05) >= 18) {
                v0->unk_05 = 0;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1501);
            return 1;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_02005748(1501);
            v0->unk_05 = -1;
            return 1;
        }
        break;
    }

    return 0;
}

static void ov19_021D45A8 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        sub_02079A94(param0->unk_120, ov19_021D5E68(&param0->unk_00));
        ov19_021D52F4(param0);
        ov19_021D6594(param0->unk_114, 4);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if ((ov19_021D5E10(&param0->unk_00) == 0) && (ov19_021D5E38(&param0->unk_00) == 1)) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1)++;
            } else {
                ov19_021D0EC0(param0);
            }
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 6)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4640 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        sub_02005748(1508);
        ov19_021D5D94(&param0->unk_00, 1);
        ov19_021D5D9C(&(param0->unk_00), ov19_021D5E68(&param0->unk_00));
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 0, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_021D538C(param0)) {
            if (param0->unk_184 == 1) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    sub_02005748(1523);
                }
                break;
            }
        }

        if (Unk_021BF67C.unk_48 & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1501);
            ov19_021D5D94(&(param0->unk_00), 0);
            ov19_021D5D9C(&(param0->unk_00), ov19_021D5E68(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 5;
            break;
        }

        if (param0->unk_204) {
            if (param0->unk_208) {
                if (++(param0->unk_200) > 20) {
                    u32 v0 = ov19_021D5EB8(&param0->unk_00);

                    ov19_021D5D08(&param0->unk_00, v0);
                    sub_02079A94(param0->unk_120, v0);
                    ov19_021D52F4(param0);

                    if (ov19_021D5E38(&param0->unk_00) == 1) {
                        ov19_021D6594(param0->unk_114, 8);
                    }

                    ov19_021D6594(param0->unk_114, 4);
                    param0->unk_204 = 0;
                    param0->unk_200 = 0;
                    (*param1) = 3;
                    break;
                }
            }
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2:
        {
            int v1;

            v1 = ov19_021D614C(&param0->unk_1C8);

            if (v1 != param0->unk_20C) {
                int v2, v3;

                v2 = v1 - param0->unk_20C;
                v3 = ov19_021D5EB8(&param0->unk_00) + v2;

                if (v3 < 0) {
                    v3 += 18;
                } else if (v3 >= 18) {
                    v3 -= 18;
                }

                param0->unk_20C = v1;
                ov19_021D5D9C(&(param0->unk_00), v3);
                ov19_021D5DAC(&(param0->unk_00), v2);
                ov19_021D6594(param0->unk_114, 41);
                sub_02005748(1500);
                (*param1) = 2;
            }
        }
        break;
        case 3:
        {
            int v4, v5;

            v4 = ov19_021D5E68(&param0->unk_00);
            v5 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v4 != v5);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        }
        break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v6, v7;

                v6 = ov19_021D5E68(&param0->unk_00);
                v7 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v6 != v7);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if ((ov19_021D5E38(&param0->unk_00) == 1) && (ov19_021D5E34(&param0->unk_00))) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1) = 4;
            } else {
                (*param1) = 1;
            }
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 6)) {
            (*param1) = 1;
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4938 (UnkStruct_ov19_021D5DF8 * param0, u32 * param1)
{
    switch (*param1) {
    case 0:
        sub_02005748(1508);
        ov19_021D5D94(&param0->unk_00, 2);
        ov19_021D5DA4(&(param0->unk_00), 0);
        ov19_021D5D9C(&(param0->unk_00), 0);
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 255, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_021D538C(param0)) {
            if (param0->unk_184 == 0) {
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            }
        }

        if (Unk_021BF67C.unk_48 & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1501);
            ov19_021D5D94(&param0->unk_00, 0);
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 3;
        }

        if (ov19_021D4B88(param0)) {
            sub_02005748(1501);
            ov19_021D6594(param0->unk_114, 42);
            ov19_021D6594(param0->unk_114, 39);
            break;
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2:
        {
            int v0;

            v0 = ov19_021D614C(&param0->unk_1C8);

            if (v0 != param0->unk_20C) {
                int v1, v2;

                v1 = v0 - param0->unk_20C;
                v2 = ov19_021D5EB8(&param0->unk_00) + v1;

                if (v2 < 0) {
                    v2 += 8;
                } else if (v2 >= 8) {
                    v2 -= 8;
                }

                param0->unk_20C = v0;

                ov19_021D5D9C(&(param0->unk_00), v2);
                ov19_021D5DA4(&(param0->unk_00), v2);
                ov19_021D5DAC(&(param0->unk_00), v1);
                ov19_021D6594(param0->unk_114, 41);
                sub_02005748(1500);
                (*param1) = 2;
            }
        }
        break;
        case 3:
        {
            int v3, v4;

            v3 = ov19_021D5E68(&param0->unk_00);
            v4 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v3 != v4);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        }
        break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v5, v6;

                v5 = ov19_021D5E68(&param0->unk_00);
                v6 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v5 != v6);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D4B88 (UnkStruct_ov19_021D5DF8 * param0)
{
    param0->unk_188 = 8;

    sub_0202404C(param0->unk_180);

    if (param0->unk_188 != 8) {
        return 1;
    }

    return 0;
}

static void ov19_021D4BB0 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov19_021D5DF8 * v0 = (UnkStruct_ov19_021D5DF8 *)param2;

    if (v0->unk_188 == 8) {
        if (param1 == 0) {
            u32 v1 = ov19_021D5EC0(&v0->unk_00);

            v1 += param0;

            if (v1 >= 8) {
                v1 -= 8;
            }

            ov19_021D5DB4(&v0->unk_00, v1);
            v0->unk_188 = param0;
        }
    }
}

static void ov19_021D4BE0 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_02042434 * param1)
{
    param0->unk_120 = sub_02024420(param1->unk_00);
    param0->unk_11C = param1->unk_00;
    param0->unk_124 = Party_GetFromSavedata(param1->unk_00);
    param0->unk_1A4 = sub_02025E44(param1->unk_00);
    param0->unk_118 = param1;
    param1->unk_08 = 0;
    param0->unk_18C = sub_0200B144(0, 26, 19, 9);
    param0->unk_190 = sub_0200B144(1, 26, 412, 9);
    param0->unk_194 = sub_0200B144(0, 26, 202, 9);
    param0->unk_198 = sub_0200B144(0, 26, 610, 9);
    param0->unk_19C = sub_0200B358(9);
    param0->unk_1A0 = Heap_AllocFromHeap(9, sub_02073C70());

    GF_ASSERT(param0->unk_19C);
    param0->unk_128 = sub_0208712C(9, 2, 0, 8, param0->unk_1A4);

    if (param1->unk_04 != 4) {
        param0->unk_17C = sub_02023FCC(Unk_ov19_021DFDF6, NELEMS(Unk_ov19_021DFDF6), ov19_021D53B8, param0, 9);
    } else {
        param0->unk_17C = sub_02023FCC(Unk_ov19_021DFE02, NELEMS(Unk_ov19_021DFE02), ov19_021D53B8, param0, 9);
    }

    param0->unk_180 = sub_02023FCC(Unk_ov19_021DFE12, NELEMS(Unk_ov19_021DFE12), ov19_021D4BB0, param0, 9);
    param0->unk_00.unk_00 = param0->unk_120;
    param0->unk_00.unk_04 = param0->unk_124;
    param0->unk_00.unk_110 = 0;
    param0->unk_00.unk_112 = 0;

    ov19_021D4DE4(&(param0->unk_00.unk_48), param1->unk_04);
    ov19_021D4E88(&(param0->unk_00.unk_4C));
    ov19_021D4E5C(param0->unk_120, &(param0->unk_00.unk_40));
    ov19_021D4EE4(&(param0->unk_00.unk_A4));
    ov19_021D4DF0(param0);
    ov19_021D4E30(&(param0->unk_00.unk_14));
    ov19_021D4F34(&(param0->unk_00.unk_9C));
}

static void ov19_021D4D58 (UnkStruct_ov19_021D5DF8 * param0)
{
    sub_02024034(param0->unk_180);
    sub_02024034(param0->unk_17C);

    if (param0->unk_1A0) {
        Heap_FreeToHeap(param0->unk_1A0);
    }

    sub_0200B3F0(param0->unk_19C);
    sub_0200B190(param0->unk_18C);
    sub_0200B190(param0->unk_190);
    sub_0200B190(param0->unk_194);
    sub_0200B190(param0->unk_198);
    sub_0208716C(param0->unk_128);

    ov19_021D4EC0(&(param0->unk_00.unk_4C));
    ov19_021D4E50(&(param0->unk_00.unk_14));
    ov19_021D4E7C(&(param0->unk_00.unk_40));
    ov19_021D4F18(&(param0->unk_00.unk_A4));

    Heap_FreeToHeap(param0);
}

static void ov19_021D4DE4 (UnkStruct_ov19_021D4DE4 * param0, int param1)
{
    param0->unk_00 = param1;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
}

static void ov19_021D4DF0 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4DF0 * v0 = &(param0->unk_00);
    UnkStruct_ov19_021D3CFC * v1 = &(v0->unk_08);

    ov19_021D5410(v0, 0, 0);

    v1->unk_08 = 0;
    v1->unk_09 = 1;

    switch (v0->unk_48.unk_00) {
    case 0:
        v1->unk_04 = 1;
        break;
    case 4:
        v1->unk_04 = 2;
        break;
    default:
        v1->unk_04 = 0;
    }

    v1->unk_0B = 1;

    ov19_021D52F4(param0);
}

static void ov19_021D4E30 (UnkStruct_ov19_021D5594 * param0)
{
    param0->unk_00 = Heap_AllocFromHeap(9, (5 * 6) * sub_02076AF4());
    param0->unk_08 = 0;
    param0->unk_0B = 0;
}

static void ov19_021D4E50 (UnkStruct_ov19_021D5594 * param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov19_021D4E5C (UnkStruct_020797DC * param0, UnkStruct_ov19_021D4F5C * param1)
{
    param1->unk_00 = sub_0207999C(param0);
    param1->unk_04 = sub_02023790(20, 9);
    ov19_021D4F40(param0, param1);
}

static void ov19_021D4E7C (UnkStruct_ov19_021D4F5C * param0)
{
    sub_020237BC(param0->unk_04);
}

static void ov19_021D4E88 (UnkStruct_ov19_021D5BAC * param0)
{
    param0->unk_14 = sub_02023790(12, 9);
    param0->unk_18 = sub_02023790(12, 9);
    param0->unk_1C = sub_02023790(18, 9);
    param0->unk_20 = sub_02023790(12, 9);
    param0->unk_24 = sub_02023790(16, 9);
}

static void ov19_021D4EC0 (UnkStruct_ov19_021D5BAC * param0)
{
    sub_020237BC(param0->unk_14);
    sub_020237BC(param0->unk_18);
    sub_020237BC(param0->unk_1C);
    sub_020237BC(param0->unk_20);
    sub_020237BC(param0->unk_24);
}

static void ov19_021D4EE4 (UnkStruct_ov19_021D4EE4 * param0)
{
    int v0;

    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_04 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_02[v0] = 0;
        param0->unk_08[v0].unk_28 = sub_02023790(12, 9);
        param0->unk_08[v0].unk_2C = sub_02023790(12, 9);
    }
}

static void ov19_021D4F18 (UnkStruct_ov19_021D4EE4 * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_020237BC(param0->unk_08[v0].unk_28);
        sub_020237BC(param0->unk_08[v0].unk_2C);
    }
}

static void ov19_021D4F34 (UnkStruct_ov19_021D4F34 * param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->unk_01 = 0;
    param0->unk_04 = 0;
}

static void ov19_021D4F40 (const UnkStruct_020797DC * param0, UnkStruct_ov19_021D4F5C * param1)
{
    param1->unk_01 = sub_02079AA8(param0, param1->unk_00);
    sub_02079AF4(param0, param1->unk_00, param1->unk_04);
}

static void ov19_021D4F5C (UnkStruct_ov19_021D4DF0 * param0, UnkStruct_020797DC * param1)
{
    UnkStruct_ov19_021D4F5C * v0 = &(param0->unk_40);
    v0->unk_01 = sub_02079AA8(param1, v0->unk_00);
}

static BOOL ov19_021D4F74 (u32 param0, UnkStruct_ov19_021D5DF8 * param1)
{
    BOOL v0 = 0;

    do {
        if (param0 & PAD_KEY_LEFT) {
            v0 = ov19_021D4FDC(&(param1->unk_00), -1, 0);
            break;
        }

        if (param0 & PAD_KEY_RIGHT) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 1, 0);
            break;
        }

        if (param0 & PAD_KEY_UP) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 0, -1);
            break;
        }

        if (param0 & PAD_KEY_DOWN) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 0, 1);
            break;
        }
    } while (0);

    if (v0 == 1) {
        ov19_021D52F4(param1);
    }

    return v0;
}

static BOOL ov19_021D4FDC (UnkStruct_ov19_021D4DF0 * param0, int param1, int param2)
{
    UnkStruct_ov19_021D3CFC * v0 = &param0->unk_08;

    switch (v0->unk_04) {
    case 0:
        if (param1 != 0) {
            int v1 = v0->unk_05 += param1;

            if (v1 < 0) {
                v1 = 6 - 1;
            } else if (v1 >= 6) {
                v1 = 0;
            }

            ov19_021D5410(param0, v1, v0->unk_06);

            return 1;
        } else if (param2 != 0) {
            int v2 = v0->unk_06 + param2;

            if (v2 < 0) {
                v2 = 0;
                v0->unk_04 = 2;
            } else if (v2 > 4) {
                v2 = 4;
                v0->unk_04 = (((v0->unk_05) == (6 - 1)) ? 4 : 3);
            }

            ov19_021D5410(param0, v0->unk_05, v2);
            return 1;
        }

        break;

    case 2:
        if (param2 > 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 0);
            return 1;
        } else if (param2 < 0) {
            v0->unk_04 = (((v0->unk_05) == (6 - 1)) ? 4 : 3);
            return 1;
        }
        break;
    case 4:
        if (param2 < 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 4);
            return 1;
        } else if (param2 > 0) {
            v0->unk_04 = 2;
            return 1;
        } else if (param1 != 0) {
            v0->unk_04 = 3;
            return 1;
        }
        break;
    case 3:
        if (param2 < 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 4);
            return 1;
        }

        if (param2 > 0) {
            v0->unk_04 = 2;
            return 1;
        }

        if (param1 != 0) {
            v0->unk_04 = 4;
            return 1;
        }
        break;
    case 1:
    {
        u32 v3 = v0->unk_08;

        if (param2 < 0) {
            if (v3 == 6) {
                v0->unk_08 = 5;
            } else {
                v0->unk_08 -= 2;

                if (v0->unk_08 < 0) {
                    v0->unk_08 = 6;
                }
            }
        } else if (param2 > 0) {
            if (v3 == 6) {
                v0->unk_08 = 0;
            } else {
                v0->unk_08 += 2;

                if (v0->unk_08 >= 6) {
                    v0->unk_08 = 6;
                }
            }
        } else if (param1 < 0) {
            if (v3 & 1) {
                v0->unk_08 -= 1;
            }
        } else if (param1 > 0) {
            if (v3 != 6) {
                if ((v3 & 1) == 0) {
                    v0->unk_08 += 1;
                }
            }
        }

        if (v3 != v0->unk_08) {
            return 1;
        }
        break;
    }
    break;
    }

    return 0;
}

static int ov19_021D5150 (u32 param0, UnkStruct_ov19_021D5DF8 * param1)
{
    int v0 = 0;

    do {
        if (param0 & PAD_KEY_LEFT) {
            v0 = ov19_021D51CC(&(param1->unk_00), -1, 0);
            break;
        }

        if (param0 & PAD_KEY_RIGHT) {
            v0 = ov19_021D51CC(&(param1->unk_00), 1, 0);
            break;
        }

        if (param0 & PAD_KEY_UP) {
            v0 = ov19_021D51CC(&(param1->unk_00), 0, -1);
            break;
        }

        if (param0 & PAD_KEY_DOWN) {
            v0 = ov19_021D51CC(&(param1->unk_00), 0, 1);
            break;
        }

        if (param0 & PAD_BUTTON_L) {
            v0 = 3;
            break;
        }

        if (param0 & PAD_BUTTON_R) {
            v0 = 4;
            break;
        }
    } while (0);

    if (v0 == 1) {
        ov19_021D52F4(param1);
    }

    return v0;
}

static int ov19_021D51CC (UnkStruct_ov19_021D4DF0 * param0, int param1, int param2)
{
    UnkStruct_ov19_021D3CFC * v0 = &param0->unk_08;
    const UnkStruct_ov19_021D5594 * v1 = &param0->unk_14;

    if (v0->unk_04 == 0) {
        if (param1 != 0) {
            int v2 = v0->unk_05 + param1;

            if (ov19_021D5E38(param0) & 12) {
                int v3, v4;

                v3 = v4 = v2;

                if (v1->unk_06 > v1->unk_04) {
                    v3 -= (v1->unk_06 - v1->unk_04);
                } else {
                    v4 += (v1->unk_04 - v1->unk_06);
                }

                if (v3 < 0) {
                    return 3;
                }

                if (v4 >= 6) {
                    return 4;
                }
            } else {
                if ((v2 < 0) || (v2 >= 6)) {
                    return 2;
                }
            }

            ov19_021D5410(param0, v2, v0->unk_06);
            return 1;
        }

        if (param2 != 0) {
            int v5;

            v5 = v0->unk_06 + param2;

            if (ov19_021D5E38(param0) & 12) {
                int v6, v7;

                v6 = v7 = v5;

                if (v1->unk_07 > v1->unk_05) {
                    v6 -= (v1->unk_07 - v1->unk_05);
                } else {
                    v7 += (v1->unk_05 - v1->unk_07);
                }

                if ((v6 < 0) || (v7 >= 5)) {
                    return 2;
                }
            } else {
                if ((v5 < 0) || (v5 >= 5)) {
                    return 2;
                }
            }

            ov19_021D5410(param0, v0->unk_05, v5);
            return 1;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static void ov19_021D5290 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4DF0 * v0 = &param0->unk_00;
    UnkStruct_ov19_021D3CFC * v1 = &v0->unk_08;
    u32 v2;

    if (ov19_021D5E38(v0) == 2) {
        v1->unk_08 = Party_GetCurrentCount(param0->unk_124);

        if (v1->unk_08 >= 6) {
            v1->unk_08 = 6 - 1;
        }
    } else {
        v1->unk_08 = 0;
    }

    v1->unk_09 = v1->unk_04;
    v1->unk_04 = 1;

    ov19_021D52F4(param0);
}

static void ov19_021D52D0 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D3CFC * v0 = &(param0->unk_00.unk_08);

    v0->unk_04 = 0;

    if (v0->unk_09 != 0) {
        ov19_021D5410(&param0->unk_00, 0, 0);
    }

    ov19_021D52F4(param0);
}

static BOOL ov19_021D52F4 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4DF0 * v0 = &param0->unk_00;
    UnkStruct_ov19_021D5BAC * v1 = &v0->unk_4C;
    UnkStruct_ov19_021D3CFC * v2 = &v0->unk_08;
    u32 v3;

    v2->unk_0A = 0;

    switch (v2->unk_04) {
    case 0:
        v2->unk_00 = sub_02079C9C(v0->unk_00, 0xffffffff, v2->unk_07);
        break;
    case 1:
        if (v2->unk_08 < Party_GetCurrentCount(param0->unk_124)) {
            v2->unk_00 = Party_GetPokemonBySlotIndex(param0->unk_124, v2->unk_08);
        } else {
            v2->unk_00 = NULL;
        }

        break;
    case 2:
    case 4:
    case 3:
    default:
        v2->unk_00 = NULL;
        break;
    }

    if (v2->unk_00) {
        if (sub_02074570(v2->unk_00, MON_DATA_172, NULL)) {
            v2->unk_0A = 1;

            if (!(ov19_021D5E38(v0) & 6)) {
                ov19_021D5888(v0, v2->unk_00, param0);
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov19_021D538C (UnkStruct_ov19_021D5DF8 * param0)
{
    param0->unk_184 = 65535;
    sub_0202404C(param0->unk_17C);

    return param0->unk_184 != 65535;
}

static void ov19_021D53B8 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov19_021D5DF8 * v0 = (UnkStruct_ov19_021D5DF8 *)param2;

    if ((param1 == 0) && (v0->unk_184 == 65535)) {
        v0->unk_184 = param0;
    }

    if (ov19_021D5E08(&v0->unk_00) == 4) {
        if (param0 == 2) {
            switch (param1) {
            case 0:
                ov19_021D5BA0(&v0->unk_00, 1);
                break;
            case 1:
            case 3:
                ov19_021D5BA0(&v0->unk_00, 0);
                break;
            }
        }
    }
}

static void ov19_021D5408 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    param0->unk_10C = param1;
}

static void ov19_021D5410 (UnkStruct_ov19_021D4DF0 * param0, u32 param1, u32 param2)
{
    UnkStruct_ov19_021D3CFC * v0 = &param0->unk_08;

    v0->unk_05 = param1;
    v0->unk_06 = param2;
    v0->unk_07 = param2 * 6 + param1;
}

static void ov19_021D5420 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    UnkStruct_ov19_021D5594 * v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC * v1 = &param1->unk_08;

    if (ov19_021D5E10(param1) == 0) {
        MI_CpuCopy32(v1->unk_00, v0->unk_00, sub_02076AF4());
        sub_02079968(param0->unk_120, 0xffffffff, v1->unk_07);
        v0->unk_0B = 0;
    } else {
        MI_CpuCopy32(v1->unk_00, v0->unk_00, sub_02076AF0());
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
        v0->unk_0B = 1;
    }

    ov19_021D5BA8(param1, v0->unk_00);

    v0->unk_04 = v0->unk_06 = v1->unk_05;
    v0->unk_05 = v0->unk_07 = v1->unk_06;

    param1->unk_08.unk_0B = 2;
    param1->unk_08.unk_0A = 0;
}

static void ov19_021D54A4 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    u32 v0, v1, v2, v3, v4, v5, v6, v7, v8, v9;
    BoxPokemon *v10;
    UnkStruct_ov19_021D5594 * v11;
    void * v12;

    v11 = &param1->unk_14;

    v11->unk_0A = 1;
    v7 = ov19_021D5E24(param1);
    v9 = sub_02076AF4();
    v8 = 0;
    v12 = (void *)(v11->unk_00);

    ov19_021D5EE8(param1, &v2, &v3, &v4, &v5);

    for (v1 = v4; v1 <= v5; v1++) {
        v6 = v1 * 6 + v2;

        for (v0 = v2; v0 <= v3; v0++) {
            v10 = sub_02079C9C(param0->unk_120, 0xffffffff, v6);

            if (sub_02074570(v10, MON_DATA_172, NULL)) {
                MI_CpuCopy32(v10, v12, v9);
                sub_02079968(param0->unk_120, 0xffffffff, v6);
                (u8 *)v12 += v9;
                v11->unk_0C[v8++] = v6;

                if (v6 == v7) {
                    v11->unk_0A = 0;
                }
            }

            v6++;
        }
    }

    v11->unk_08 = v8;
    v11->unk_09 = v4 * 6 + v2;

    param1->unk_08.unk_0B = (param1->unk_08.unk_0A) ? 4 : 8;
    param1->unk_08.unk_0A = 0;
}

static void ov19_021D5594 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    UnkStruct_ov19_021D5594 * v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC * v1 = &param1->unk_08;

    v0->unk_04 = v0->unk_06 = v1->unk_05;
    v0->unk_05 = v0->unk_07 = v1->unk_06;
}

static void ov19_021D55B0 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    UnkStruct_ov19_021D5594 * v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC * v1 = &param1->unk_08;

    v0->unk_06 = v1->unk_05;
    v0->unk_07 = v1->unk_06;
}

static void ov19_021D55C4 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    UnkStruct_ov19_021D5594 * v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC * v1 = &param1->unk_08;
    BoxPokemon *v2;
    int v3 = 0, v4;
    BOOL v5;

    if (ov19_021D5E10(param1) == 0) {
        v4 = sub_02074570(v0->unk_00, MON_DATA_FORM, NULL);
        sub_02079914(param0->unk_120, 0xffffffff, v1->unk_07, v0->unk_00);
        v2 = sub_02079C9C(param0->unk_120, 0xffffffff, v1->unk_07);

        if ((sub_02074570(v2, MON_DATA_SPECIES, NULL) == 492) && (v4 == 1)) {
            v3 = 1;
        }
    } else {
        if (v0->unk_0B) {
            Party_AddPokemon(param0->unk_124, (Pokemon *)(v0->unk_00));
        } else {
            sub_020774C8(v0->unk_00, param0->unk_1A0);
            Party_AddPokemon(param0->unk_124, param0->unk_1A0);
        }

        v2 = (BoxPokemon *)Party_GetPokemonBySlotIndex(param0->unk_124, Party_GetCurrentCount(param0->unk_124) - 1);
    }

    ov19_021D5BA8(param1, v2);
    v5 = ov19_021D52F4(param0);

    if ((v5 == 0) && (v3 == 1)) {
        ov19_021D58AC(param1, v2, param0);
        ov19_021D6594(param0->unk_114, 6);
    }

    param1->unk_08.unk_0B = 1;
    param1->unk_08.unk_0A = 1;
}

static void ov19_021D56AC (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    BoxPokemon *v0;
    int v1, v2, v3, v4, v5;
    UnkStruct_ov19_021D3CFC * v6 = &param1->unk_08;
    UnkStruct_ov19_021D5594 * v7 = &param1->unk_14;

    v3 = ov19_021D5F3C(param1);
    v2 = v7->unk_09;
    v5 = sub_02076AF4();
    v0 = v7->unk_00;

    for (v1 = 0; v1 < v7->unk_08; v1++) {
        v4 = v3 + (v7->unk_0C[v1] - v2);
        sub_02079914(param0->unk_120, 0xffffffff, v4, v0);
        (u8 *)v0 += v5;
    }

    ov19_021D5BA8(param1, sub_02079C9C(param0->unk_120, 0xffffffff, ov19_021D5E24(param1)));
    ov19_021D52F4(param0);

    v7->unk_08 = 0;
    param1->unk_08.unk_0B = 1;
}

static void ov19_021D5734 (UnkStruct_ov19_021D5DF8 * param0, UnkStruct_ov19_021D4DF0 * param1)
{
    u32 v0;
    void * v1;
    UnkStruct_ov19_021D5594 * v2;
    UnkStruct_ov19_021D3CFC * v3;

    v2 = &param1->unk_14;
    v0 = sub_02076AF0();
    v1 = (u8 *)(v2->unk_00) + v0;
    v3 = &param1->unk_08;

    MI_CpuCopy32(v2->unk_00, v1, v0);
    MI_CpuCopy32(v3->unk_00, v2->unk_00, v0);

    if (ov19_021D5E10(param1) == 0) {
        sub_02079914(param0->unk_120, 0xffffffff, v3->unk_07, v1);
        v2->unk_0B = 0;
    } else {
        if (v2->unk_0B == 0) {
            sub_020774C8(v1, param0->unk_1A0);
        } else {
            MI_CpuCopy32(v1, param0->unk_1A0, v0);
        }

        sub_0207A128(param0->unk_124, v3->unk_08, param0->unk_1A0);
        v2->unk_0B = 1;
    }

    ov19_021D5888(param1, v2->unk_00, param0);
}

static BOOL ov19_021D57D8 (UnkStruct_ov19_021D5DF8 * param0, u32 param1)
{
    UnkStruct_ov19_021D4DF0 * v0;
    UnkStruct_ov19_021D3CFC * v1;
    UnkStruct_ov19_021D5594 * v2;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;
    v2 = &v0->unk_14;

    if (sub_020798A0(param0->unk_120, param1, v2->unk_00)) {
        v0->unk_08.unk_0B = 1;
        ov19_021D52F4(param0);
        return 1;
    }

    return 0;
}

static BOOL ov19_021D5800 (UnkStruct_ov19_021D5DF8 * param0, u32 param1)
{
    UnkStruct_ov19_021D4DF0 * v0;
    UnkStruct_ov19_021D3CFC * v1;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;

    if (sub_020798A0(param0->unk_120, param1, v1->unk_00)) {
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
        ov19_021D52F4(param0);
        return 1;
    }

    return 0;
}

static void ov19_021D5834 (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4DF0 * v0;
    UnkStruct_ov19_021D3CFC * v1;
    UnkStruct_ov19_021D5594 * v2;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;
    v2 = &v0->unk_14;

    sub_02073C54(v2->unk_00);
    v1->unk_0B = 1;
    ov19_021D52F4(param0);
}

static void ov19_021D584C (UnkStruct_ov19_021D5DF8 * param0)
{
    UnkStruct_ov19_021D4DF0 * v0 = &(param0->unk_00);
    UnkStruct_ov19_021D3CFC * v1 = &v0->unk_08;

    if (ov19_021D5E10(v0) == 0) {
        sub_02079968(param0->unk_120, 0xffffffff, v1->unk_07);
    } else {
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
    }

    ov19_021D52F4(param0);
}

static void ov19_021D5888 (UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2)
{
    ov19_021D58AC(param0, boxMon, param2);

    if (ov19_021D5E08(param0) == 4) {
        ov19_021D59F4(param0, boxMon, param2);
    }
}

static void ov19_021D58AC (UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2)
{
    UnkStruct_ov19_021D5BAC * v0 = &(param0->unk_4C);
    BOOL v1 = sub_02073D20(boxMon);
    UnkStruct_02075874 * v2;

    v0->unk_00 = boxMon;
    v0->unk_04 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v0->unk_06 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);
    v0->unk_08 = sub_0207A294(sub_0207A274(param2->unk_11C), v0->unk_04);
    v0->unk_0F = sub_02074570(boxMon, MON_DATA_173, NULL);
    v2 = sub_02075894(v0->unk_04, 9);
    v0->unk_0A = sub_02075B9C(v2, v0->unk_04, sub_02074570(boxMon, MON_DATA_EXP, NULL));
    v0->unk_0B = sub_02074570(boxMon, MON_DATA_11, NULL);
    v0->unk_0C = sub_02074570(boxMon, MON_DATA_177, NULL);
    v0->unk_0D = sub_02074570(boxMon, MON_DATA_178, NULL);

    if ((v0->unk_0F == 0) && sub_02074570(boxMon, MON_DATA_176, NULL)) {
        v0->unk_0E = sub_02075DD0(v2, v0->unk_04, sub_02074570(boxMon, MON_DATA_PERSONALITY, NULL));
    } else {
        v0->unk_0E = 255;
    }

    sub_02074570(boxMon, MON_DATA_119, v0->unk_14);

    if (v0->unk_0F == 0) {
        sub_0200B1B8(param2->unk_190, v0->unk_04, v0->unk_18);
    } else {
        sub_02023810(v0->unk_18, v0->unk_14);
        sub_020237E8(v0->unk_14);
    }

    if (v0->unk_06 != 0) {
        Item_GetNameIntoString(v0->unk_1C, v0->unk_06, 9);
    } else {
        sub_0200B1B8(param2->unk_18C, 20, v0->unk_1C);
    }

    {
        u32 v3 = sub_02075BD4(boxMon);

        sub_0200B1B8(param2->unk_194, v3, v0->unk_20);
        v3 = sub_02074570(boxMon, MON_DATA_10, NULL);
        sub_0200B1B8(param2->unk_198, v3, v0->unk_24);
    }

    sub_020759B8(v2);
    sub_02073D48(boxMon, v1);
}

static void ov19_021D59F4 (UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 * param2)
{
    UnkStruct_ov19_021D5BAC * v0 = &(param0->unk_4C);
    UnkStruct_ov19_021D5FAC * v1 = &(param0->unk_A4.unk_08[param0->unk_A4.unk_00]);
    BOOL v2;

    v1->unk_00 = boxMon;
    v1->unk_04 = v0->unk_04;
    v1->unk_06 = v0->unk_0F;
    v1->unk_08 = v0->unk_0A;

    if (v1->unk_06) {
        sub_02023810(v1->unk_28, v0->unk_18);
    } else {
        sub_02023810(v1->unk_28, v0->unk_14);
    }

    sub_02023810(v1->unk_2C, v0->unk_20);
    sub_020774C8(boxMon, param2->unk_1A0);

    v2 = sub_02073C88(param2->unk_1A0);

    v1->unk_0A = GetMonData(param2->unk_1A0, MON_DATA_164, NULL);
    v1->unk_0C = GetMonData(param2->unk_1A0, MON_DATA_165, NULL);
    v1->unk_0E = GetMonData(param2->unk_1A0, MON_DATA_166, NULL);
    v1->unk_10 = GetMonData(param2->unk_1A0, MON_DATA_168, NULL);
    v1->unk_12 = GetMonData(param2->unk_1A0, MON_DATA_169, NULL);
    v1->unk_14 = GetMonData(param2->unk_1A0, MON_DATA_167, NULL);
    v1->unk_16 = GetMonData(param2->unk_1A0, MON_DATA_COOL, NULL);
    v1->unk_18 = GetMonData(param2->unk_1A0, MON_DATA_BEAUTY, NULL);
    v1->unk_1A = GetMonData(param2->unk_1A0, MON_DATA_CUTE, NULL);
    v1->unk_1C = GetMonData(param2->unk_1A0, MON_DATA_SMART, NULL);
    v1->unk_1E = GetMonData(param2->unk_1A0, MON_DATA_TOUGH, NULL);
    v1->unk_20[0] = GetMonData(param2->unk_1A0, MON_DATA_MOVE1, NULL);
    v1->unk_20[1] = GetMonData(param2->unk_1A0, MON_DATA_MOVE2, NULL);
    v1->unk_20[2] = GetMonData(param2->unk_1A0, MON_DATA_MOVE3, NULL);
    v1->unk_20[3] = GetMonData(param2->unk_1A0, MON_DATA_MOVE4, NULL);
    v1->unk_07 = GetMonData(param2->unk_1A0, MON_DATA_FORM, NULL);

    sub_02073CD4(param2->unk_1A0, v2);

    param0->unk_A4.unk_02[param0->unk_A4.unk_00] = 1;
}

static void ov19_021D5B70 (UnkStruct_ov19_021D4DF0 * param0)
{
    param0->unk_A4.unk_00 ^= 1;
}

static void ov19_021D5B80 (UnkStruct_ov19_021D4DF0 * param0)
{
    if (++(param0->unk_A4.unk_01) >= 3) {
        param0->unk_A4.unk_01 = 0;
    }
}

static void ov19_021D5BA0 (UnkStruct_ov19_021D4DF0 * param0, BOOL param1)
{
    param0->unk_A4.unk_04 = param1;
}

static void ov19_021D5BA8 (UnkStruct_ov19_021D4DF0 * param0, BoxPokemon *boxMon)
{
    param0->unk_4C.unk_00 = boxMon;
}

static void ov19_021D5BAC (UnkStruct_ov19_021D4DF0 * param0)
{
    UnkStruct_ov19_021D5BAC * v0;
    u8 v1;

    v0 = &(param0->unk_4C);
    v1 = param0->unk_74.unk_22;
    v0->unk_0B = v1;

    SetBoxMonData(v0->unk_00, MON_DATA_11, &(v1));

    if ((ov19_021D5E10(param0) == 0) && (ov19_021D5E38(param0) == 1)) {
        sub_02024804();
    }
}

static void ov19_021D5BE8 (UnkStruct_ov19_021D4DF0 * param0, u16 param1, UnkStruct_ov19_021D5DF8 * param2)
{
    UnkStruct_ov19_021D5BAC * v0;

    v0 = &(param0->unk_4C);
    v0->unk_06 = param1;

    if (v0->unk_06 != 0) {
        Item_GetNameIntoString(v0->unk_1C, v0->unk_06, 9);
    } else {
        sub_0200B1B8(param2->unk_18C, 20, v0->unk_1C);
    }

    if ((ov19_021D5E10(param0) == 0) && (ov19_021D5E38(param0) == 1)) {
        u32 v1 = ov19_021D5E24(param0);
        sub_02079C50(param2->unk_120, 0xffffffff, v1, 6, &param1);
    }

    SetBoxMonData(v0->unk_00, MON_DATA_HELD_ITEM, &param1);

    {
        int v2 = sub_02074570(v0->unk_00, MON_DATA_SPECIES, NULL);

        if (v2 == 493) {
            sub_02077930(v0->unk_00);
            v0->unk_0C = sub_02074570(v0->unk_00, MON_DATA_177, NULL);
            v0->unk_0D = sub_02074570(v0->unk_00, MON_DATA_178, NULL);
        } else if (v2 == 487) {
            int v3;

            sub_02077A1C(v0->unk_00);
            v3 = sub_02074570(v0->unk_00, MON_DATA_10, NULL);
            sub_0200B1B8(param2->unk_198, v3, v0->unk_24);
        }
    }
}

static void ov19_021D5CBC (UnkStruct_ov19_021D4DF0 * param0)
{
    UnkStruct_ov19_021D4F5C * v0 = &(param0->unk_40);

    if (++(v0->unk_00) >= 18) {
        v0->unk_00 = 0;
    }

    ov19_021D4F40(param0->unk_00, v0);
}

static void ov19_021D5CE8 (UnkStruct_ov19_021D4DF0 * param0)
{
    UnkStruct_ov19_021D4F5C * v0 = &(param0->unk_40);

    if (v0->unk_00) {
        v0->unk_00--;
    } else {
        v0->unk_00 = 18 - 1;
    }

    ov19_021D4F40(param0->unk_00, v0);
}

static void ov19_021D5D08 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    UnkStruct_ov19_021D4F5C * v0 = &(param0->unk_40);

    v0->unk_00 = param1;
    ov19_021D4F40(param0->unk_00, v0);
}

static void ov19_021D5D20 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    UnkStruct_ov19_021D5D20 * v0 = &(param0->unk_98);
    v0->unk_00 = param1;
}

static void ov19_021D5D28 (UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1)
{
    UnkStruct_ov19_021D5BAC * v0 = &(param0->unk_4C);
    u16 v1 = 0;

    param0->unk_112 = v0->unk_06;

    sub_0200B1B8(param1->unk_18C, 20, v0->unk_1C);
    ov19_021D5BE8(param0, v1, param1);
}

static void ov19_021D5D54 (UnkStruct_ov19_021D4DF0 * param0)
{
    param0->unk_112 = 0;
}

static void ov19_021D5D60 (UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1)
{
    UnkStruct_ov19_021D5BAC * v0 = &(param0->unk_4C);
    u16 v1;

    v1 = param0->unk_112;
    param0->unk_112 = 0;

    ov19_021D5BE8(param0, v1, param1);
}

static void ov19_021D5D78 (UnkStruct_ov19_021D4DF0 * param0, UnkStruct_ov19_021D5DF8 * param1)
{
    UnkStruct_ov19_021D5BAC * v0 = &(param0->unk_4C);
    u16 v1;

    v1 = param0->unk_112;
    param0->unk_112 = v0->unk_06;

    ov19_021D5BE8(param0, v1, param1);
}

static void ov19_021D5D94 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    param0->unk_9C.unk_00 = param1;
}

static void ov19_021D5D9C (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    param0->unk_9C.unk_02 = param1;
}

static void ov19_021D5DA4 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    param0->unk_9C.unk_01 = param1;
}

static void ov19_021D5DAC (UnkStruct_ov19_021D4DF0 * param0, int param1)
{
    param0->unk_9C.unk_04 = param1;
}

static void ov19_021D5DB4 (UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    if (param1 == 0) {
        param0->unk_48.unk_02 = 0;
    } else {
        param0->unk_48.unk_02 ^= (1 << (param1 - 1));
    }
}

static void ov19_021D5DD8 (UnkStruct_ov19_021D4DF0 * param0)
{
    param0->unk_48.unk_01 ^= 1;
}

UnkStruct_0200B144 * ov19_021D5DE8 (const UnkStruct_ov19_021D5DF8 * param0)
{
    return param0->unk_18C;
}

const UnkStruct_0200B358 * ov19_021D5DF0 (const UnkStruct_ov19_021D5DF8 * param0)
{
    return param0->unk_19C;
}

int ov19_021D5DF8 (const UnkStruct_ov19_021D5DF8 * param0)
{
    return sub_02027B50(param0->unk_1A4);
}

u32 ov19_021D5E08 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_48.unk_00;
}

u32 ov19_021D5E10 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_04;
}

u32 ov19_021D5E14 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_05;
}

u32 ov19_021D5E1C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_06;
}

u32 ov19_021D5E24 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_07;
}

u32 ov19_021D5E2C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_08;
}

BOOL ov19_021D5E34 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_0A;
}

u32 ov19_021D5E38 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_08.unk_0B;
}

BOOL ov19_021D5E3C (const UnkStruct_ov19_021D4DF0 * param0)
{
    if (param0->unk_08.unk_0B) {
        return param0->unk_14.unk_0B;
    }

    return 0;
}

BOOL ov19_021D5E4C (const UnkStruct_ov19_021D4DF0 * param0)
{
    const UnkStruct_ov19_021D5594 * v0;
    const UnkStruct_ov19_021D3CFC * v1;

    v0 = &param0->unk_14;
    v1 = &param0->unk_08;

    if ((v1->unk_0B == 2) || (v1->unk_0B == 4)) {
        return 1;
    }

    if (param0->unk_08.unk_0A) {
        return 1;
    }

    return 0;
}

u32 ov19_021D5E68 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_40.unk_00;
}

const UnkStruct_ov19_021D5BAC * ov19_021D5E70 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return &(param0->unk_4C);
}

u32 ov19_021D5E74 (const UnkStruct_ov19_021D4DF0 * param0)
{
    if (ov19_021D5E4C(param0)) {
        return param0->unk_4C.unk_06;
    }

    return 0;
}

const UnkStruct_ov19_021D4F5C * ov19_021D5E8C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return &(param0->unk_40);
}

const UnkStruct_020797DC * ov19_021D5E90 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_00;
}

u32 ov19_021D5E94 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_10C;
}

BoxPokemon *ov19_021D5E9C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_4C.unk_00;
}

u32 ov19_021D5EA0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_4C.unk_0B;
}

u32 ov19_021D5EA8 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_98.unk_00;
}

s32 ov19_021D5EB0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_9C.unk_04;
}

u32 ov19_021D5EB8 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_9C.unk_02;
}

u32 ov19_021D5EC0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_9C.unk_01;
}

u32 ov19_021D5EC8 (const UnkStruct_ov19_021D4DF0 * param0)
{
    if (ov19_021D5E08(param0) != 3) {
        return param0->unk_48.unk_02;
    } else {
        return 1;
    }
}

BOOL ov19_021D5EE0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_48.unk_01;
}

void ov19_021D5EE8 (const UnkStruct_ov19_021D4DF0 * param0, u32 * param1, u32 * param2, u32 * param3, u32 * param4)
{
    const UnkStruct_ov19_021D5594 * v0;

    v0 = &param0->unk_14;

    if (v0->unk_04 <= v0->unk_06) {
        *param1 = v0->unk_04;
        *param2 = v0->unk_06;
    } else {
        *param1 = v0->unk_06;
        *param2 = v0->unk_04;
    }

    if (v0->unk_05 <= v0->unk_07) {
        *param3 = v0->unk_05;
        *param4 = v0->unk_07;
    } else {
        *param3 = v0->unk_07;
        *param4 = v0->unk_05;
    }
}

BOOL ov19_021D5F20 (const UnkStruct_ov19_021D4DF0 * param0)
{
    const UnkStruct_ov19_021D5594 * v0;

    v0 = &param0->unk_14;

    if ((v0->unk_04 == v0->unk_06) && (v0->unk_05 == v0->unk_07)) {
        return 1;
    }

    return 0;
}

u32 ov19_021D5F3C (const UnkStruct_ov19_021D4DF0 * param0)
{
    const UnkStruct_ov19_021D5594 * v0;
    int v1, v2;

    v0 = &param0->unk_14;
    v1 = param0->unk_08.unk_05;
    v2 = param0->unk_08.unk_06;

    if (v0->unk_06 > v0->unk_04) {
        v1 -= (v0->unk_06 - v0->unk_04);
    }

    if (v0->unk_07 > v0->unk_05) {
        v2 -= (v0->unk_07 - v0->unk_05);
    }

    return v2 * 6 + v1;
}

u32 ov19_021D5F6C (const UnkStruct_ov19_021D4DF0 * param0, u32 param1)
{
    const UnkStruct_ov19_021D5594 * v0 = &param0->unk_14;
    return v0->unk_0C[param1] - v0->unk_09;
}

u32 ov19_021D5F7C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_112;
}

u32 ov19_021D5F88 (const UnkStruct_ov19_021D4DF0 * param0)
{
    u32 v0 = ov19_021D5F7C(param0);

    if (v0 != 0) {
        return v0;
    }

    return ov19_021D5E74(param0);
}

u32 ov19_021D5F9C (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_A4.unk_00;
}

u32 ov19_021D5FA4 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_A4.unk_01;
}

const UnkStruct_ov19_021D5FAC * ov19_021D5FAC (const UnkStruct_ov19_021D4DF0 * param0, int param1)
{
    return &param0->unk_A4.unk_08[param1];
}

BOOL ov19_021D5FB8 (const UnkStruct_ov19_021D4DF0 * param0, int param1)
{
    return param0->unk_A4.unk_02[param1];
}

BOOL ov19_021D5FC0 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_A4.unk_04;
}

BOOL ov19_021D5FC8 (const UnkStruct_ov19_021D4DF0 * param0)
{
    return param0->unk_4C.unk_0F;
}

static u32 ov19_021D5FD0 (UnkStruct_ov19_021D4DF0 * param0, int param1, void * param2)
{
    if (ov19_021D5E38(param0) == 1) {
        if (ov19_021D5E10(param0) == 0) {
            return sub_02074570(param0->unk_4C.unk_00, param1, param2);
        }
    } else {
        UnkStruct_ov19_021D5594 * v0 = &param0->unk_14;

        if (v0->unk_0B == 0) {
            return sub_02074570(param0->unk_4C.unk_00, param1, param2);
        }
    }

    return GetMonData(param0->unk_4C.unk_00, param1, param2);
}

static u32 ov19_021D6014 (UnkStruct_ov19_021D4DF0 * param0, int param1, void * param2)
{
    if (ov19_021D5E10(param0) == 0) {
        return sub_02074570(param0->unk_4C.unk_00, param1, param2);
    } else {
        return GetMonData(param0->unk_08.unk_00, param1, param2);
    }
}
