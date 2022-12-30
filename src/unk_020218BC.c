#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020095C4.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02017728.h"
#include "unk_02017E74.h"
#include "unk_020218BC.h"

typedef struct {
    const NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
} UnkStruct_02021D44;

typedef struct {
    NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
    u32 unk_60;
} UnkStruct_02021BD4;

typedef struct {
    const NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dMultiCellAnimation unk_08;
    const NNSG2dMultiCellDataBank * unk_6C;
    const NNSG2dMultiCellAnimBankData * unk_70;
    NNSG2dNode * unk_74;
    NNSG2dCellAnimation * unk_78;
} UnkStruct_02021E2C;

typedef struct UnkStruct_02022550_t {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    u16 unk_24;
    u8 unk_26;
    u8 unk_27;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    BOOL unk_2C;
    GXOamMode unk_30;
    u8 unk_34;
    u8 unk_35;
    fx32 unk_38;
    UnkStruct_020218BC * unk_3C;
    u32 unk_40[29];
    NNSG2dImageProxy unk_B4;
    NNSG2dImagePaletteProxy unk_D8;
    u32 unk_EC;
    u16 unk_F0;
    u8 unk_F2;
    u16 unk_F4;
    NNS_G2D_VRAM_TYPE unk_F8;
    struct UnkStruct_02022550_t * unk_FC;
    struct UnkStruct_02022550_t * unk_100;
} UnkStruct_02022550;

typedef struct UnkStruct_020218BC_t {
    UnkStruct_02022550 * unk_00;
    int unk_04;
    UnkStruct_02022550 ** unk_08;
    int unk_0C;
    UnkStruct_02022550 unk_10;
    NNSG2dRendererInstance * unk_110;
    void * unk_114;
    NNSG2dCellAnimBankData * unk_118;
    u32 unk_11C;
} UnkStruct_020218BC;

typedef void (* UnkFuncPtr_020219F8)(const UnkStruct_020218BC *, UnkStruct_02022550 *);
typedef void (* UnkFuncPtr_020219F8_1)(UnkStruct_02022550 *);

static void sub_02021A50(UnkStruct_020218BC * param0);
static u32 sub_020221B8(const UnkStruct_ov19_021DA864 * param0);
static void sub_020221D0(const NNSG2dCellDataBank * param0, UnkStruct_02022550 * param1);
static void sub_020221D4(const NNSG2dCellAnimBankData * param0, UnkStruct_02022550 * param1);
static void sub_020221D8(const NNSG2dMultiCellDataBank * param0, UnkStruct_02022550 * param1);
static void sub_020221E0(const NNSG2dMultiCellAnimBankData * param0, UnkStruct_02022550 * param1);
static void sub_020221E8(UnkStruct_02022550 * param0, int param1);
static void sub_02022208(const UnkStruct_ov19_021DA864 * param0, UnkStruct_02022550 * param1, int param2);
static void sub_02022264(UnkStruct_02022550 * param0, int param1);
static BOOL sub_02022110(const UnkStruct_020218BC * param0, const UnkStruct_ov19_021DA864 * param1, UnkStruct_02022550 * param2, int param3);
static u32 sub_020222C4(const NNSG2dImagePaletteProxy * param0, u32 param1);
static void sub_020222F4(const UnkStruct_020218BC * param0, UnkStruct_02022550 * param1);
static void sub_02022450(const UnkStruct_020218BC * param0, UnkStruct_02022550 * param1);
static void sub_02022454(UnkStruct_02022550 * param0);
static void sub_02022460(UnkStruct_02022550 * param0);
static void sub_02022464(UnkStruct_020218BC * param0, UnkStruct_02022550 * param1);
static void sub_020224FC(UnkStruct_02022550 * param0);
static void sub_02022518(UnkStruct_020218BC * param0);
static UnkStruct_02022550 * sub_02022550(UnkStruct_020218BC * param0);
static BOOL sub_0202256C(UnkStruct_020218BC * param0, UnkStruct_02022550 * param1);

UnkStruct_020218BC * sub_020218BC (const UnkStruct_020095C4 * param0)
{
    UnkStruct_020218BC * v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04);

    v0 = sub_02018144(param0->unk_08, sizeof(UnkStruct_020218BC));
    GF_ASSERT(v0);

    sub_02021A50(v0);

    v0->unk_00 = sub_02018144(param0->unk_08, sizeof(UnkStruct_02022550) * param0->unk_00);
    GF_ASSERT(v0->unk_00);
    v0->unk_04 = param0->unk_00;

    v0->unk_08 = sub_02018144(param0->unk_08, sizeof(UnkStruct_02022550 *) * param0->unk_00);
    GF_ASSERT(v0->unk_08);

    sub_02022518(v0);
    sub_02021A78(&v0->unk_10);

    v0->unk_10.unk_FC = &v0->unk_10;
    v0->unk_10.unk_100 = &v0->unk_10;
    v0->unk_110 = param0->unk_04;
    v0->unk_114 = sub_02017A40(param0->unk_08, "data/clact_default.NANR");

    NNS_G2dGetUnpackedAnimBank(v0->unk_114, &v0->unk_118);
    v0->unk_11C = 1;

    return v0;
}

BOOL sub_02021964 (UnkStruct_020218BC * param0)
{
    if (param0 == NULL) {
        return 0;
    }

    if (param0->unk_00 == NULL) {
        return 1;
    }

    sub_020219C0(param0);

    sub_020181C4(param0->unk_114);
    sub_020181C4(param0->unk_08);
    sub_020181C4(param0->unk_00);

    sub_02021A50(param0);
    sub_020181C4(param0);

    param0 = NULL;

    return 1;
}

BOOL sub_020219A4 (UnkStruct_020218BC * param0, u8 param1)
{
    if (param0 == NULL) {
        return 0;
    }

    if (param0->unk_00 == NULL) {
        return 0;
    }

    param0->unk_11C = param1;

    return 1;
}

BOOL sub_020219C0 (UnkStruct_020218BC * param0)
{
    UnkStruct_02022550 * v0;
    UnkStruct_02022550 * v1;

    if (param0 == NULL) {
        return 0;
    }

    if (param0->unk_00 == NULL) {
        return 1;
    }

    v0 = param0->unk_10.unk_100;

    while (v0 != &param0->unk_10) {
        v1 = v0->unk_100;
        sub_02021BD4(v0);
        v0 = v1;
    }

    return 1;
}

void sub_020219F8 (const UnkStruct_020218BC * param0)
{
    UnkStruct_02022550 * v0;
    static const UnkFuncPtr_020219F8 v1[] = {
        sub_02022450,
        sub_020222F4
    };
    static const UnkFuncPtr_020219F8_1 v2[] = {
        sub_02022460,
        sub_02022454
    };

    GF_ASSERT(param0);

    if (param0->unk_11C == 0) {
        return;
    }

    v0 = param0->unk_10.unk_100;

    while (v0 != &param0->unk_10) {
        v1[v0->unk_34](param0, v0);
        v2[v0->unk_35](v0);
        v0 = v0->unk_100;
    }
}

static void sub_02021A50 (UnkStruct_020218BC * param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = 0;
    param0->unk_08 = NULL;
    param0->unk_0C = 0;
    param0->unk_110 = NULL;

    sub_02021A78(&param0->unk_10);
    param0->unk_11C = 0;
}

void sub_02021A78 (UnkStruct_02022550 * param0)
{
    int v0;

    param0->unk_3C = NULL;
    memset(param0, 0, sizeof(UnkStruct_02022550));

    NNS_G2dInitImageProxy(&param0->unk_B4);
    NNS_G2dInitImagePaletteProxy(&param0->unk_D8);

    param0->unk_30 = GX_OAM_MODE_NORMAL;
}

UnkStruct_02022550 * sub_02021AA0 (const UnkStruct_ov115_02261520 * param0)
{
    UnkStruct_02022550 * v0;

    v0 = sub_02022550(param0->unk_00);

    if (v0 == NULL) {
        return NULL;
    }

    v0->unk_3C = param0->unk_00;
    v0->unk_F0 = 0;
    v0->unk_00 = param0->unk_08;
    v0->unk_18 = param0->unk_14;
    v0->unk_24 = param0->unk_20;
    v0->unk_F8 = param0->unk_28;
    v0->unk_F4 = param0->unk_24;
    v0->unk_26 = 0;
    v0->unk_27 = 0;
    v0->unk_2C = 0;
    v0->unk_30 = GX_OAM_MODE_NORMAL;
    v0->unk_28 = NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS | NNS_G2D_RND_OVERWRITE_PRIORITY;

    NNS_G2dSetRndCoreAffineOverwriteMode(&(param0->unk_00->unk_110->rendererCore), v0->unk_26);
    NNS_G2dSetRndCoreFlipMode(&(param0->unk_00->unk_110->rendererCore), v0->unk_27 & 1, v0->unk_27 & 2);

    v0->unk_34 = 1;
    v0->unk_35 = 0;
    v0->unk_38 = (FX32_ONE * 2);

    if (sub_02022110(param0->unk_00, param0->unk_04, v0, param0->unk_2C) == 0) {
        sub_02021BD4(v0);
        return NULL;
    }

    v0->unk_2A = sub_020222C4(&v0->unk_D8, v0->unk_F8);
    v0->unk_29 = v0->unk_2A;

    sub_02022464(param0->unk_00, v0);

    return v0;
}

UnkStruct_02022550 * sub_02021B90 (const UnkStruct_ov83_0223D9A8 * param0)
{
    UnkStruct_ov115_02261520 v0;

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = param0->unk_04;
    v0.unk_08 = param0->unk_08;
    v0.unk_14.x = FX32_ONE;
    v0.unk_14.y = FX32_ONE;
    v0.unk_14.z = FX32_ONE;
    v0.unk_20 = 0;
    v0.unk_24 = param0->unk_14;
    v0.unk_28 = param0->unk_18;
    v0.unk_2C = param0->unk_1C;

    return sub_02021AA0(&v0);
}

void sub_02021BD4 (UnkStruct_02022550 * param0)
{
    UnkStruct_020218BC * v0;

    if (param0->unk_EC != 0) {
        UnkStruct_02021D44 * v1 = (UnkStruct_02021D44 *)&param0->unk_40;

        if (param0->unk_FC != NULL) {
            sub_020224FC(param0);
        }

        if (param0->unk_EC == 3) {
            UnkStruct_02021BD4 * v2 = (UnkStruct_02021BD4 *)&param0->unk_40;

            if (NNS_G2dGetImageLocation(&param0->unk_B4, param0->unk_F8) != NNS_G2D_VRAM_ADDR_NONE) {
                NNS_G2dFreeCellTransferStateHandle(v2->unk_60);
            }
        }

        if (param0->unk_EC == 2) {
            UnkStruct_02021E2C * v3 = (UnkStruct_02021E2C *)&param0->unk_40;

            if (v3->unk_74 != NULL) {
                sub_020181C4(v3->unk_74);
            }

            if (v3->unk_78 != NULL) {
                sub_020181C4(v3->unk_78);
            }
        }

        param0->unk_EC = 0;

        v0 = (UnkStruct_020218BC *)param0->unk_3C;
        sub_0202256C(v0, param0);
    }
}

void sub_02021C50 (UnkStruct_02022550 * param0, const VecFx32 * param1)
{
    param0->unk_00 = *param1;
}

void sub_02021C60 (UnkStruct_02022550 * param0, const VecFx32 * param1)
{
    param0->unk_0C = *param1;
}

void sub_02021C70 (UnkStruct_02022550 * param0, const VecFx32 * param1)
{
    param0->unk_18 = *param1;
}

void sub_02021C80 (UnkStruct_02022550 * param0, const VecFx32 * param1, int param2)
{
    sub_02021C70(param0, param1);
    sub_02021CF8(param0, param2);
}

void sub_02021C94 (UnkStruct_02022550 * param0, u16 param1)
{
    param0->unk_24 = param1;
}

void sub_02021C98 (UnkStruct_02022550 * param0, u16 param1, int param2)
{
    sub_02021C94(param0, param1);
    sub_02021CF8(param0, param2);
}

void sub_02021CAC (UnkStruct_02022550 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 2);

    param0->unk_34 = param1;
}

void sub_02021CC8 (UnkStruct_02022550 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 2);

    param0->unk_35 = param1;
}

void sub_02021CE4 (UnkStruct_02022550 * param0, fx32 param1)
{
    GF_ASSERT(param0);

    param0->unk_38 = param1;
}

void sub_02021CF8 (UnkStruct_02022550 * param0, int param1)
{
    GF_ASSERT(param0);

    param0->unk_26 = param1;
}

void sub_02021D0C (UnkStruct_02022550 * param0, int param1)
{
    GF_ASSERT(param0);

    param0->unk_27 = param1;
    param0->unk_26 = 0;
}

const VecFx32 * sub_02021D28 (const UnkStruct_02022550 * param0)
{
    return &param0->unk_00;
}

const VecFx32 * sub_02021D2C (const UnkStruct_02022550 * param0)
{
    return &param0->unk_18;
}

u16 sub_02021D30 (const UnkStruct_02022550 * param0)
{
    return param0->unk_24;
}

int sub_02021D34 (const UnkStruct_02022550 * param0)
{
    return param0->unk_34;
}

int sub_02021D3C (const UnkStruct_02022550 * param0)
{
    return param0->unk_35;
}

u32 sub_02021D44 (const UnkStruct_02022550 * param0)
{
    u32 v0;

    GF_ASSERT(param0);

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v1 = (UnkStruct_02021D44 *)&param0->unk_40;
        v0 = v1->unk_04->numSequences;
    } else {
        UnkStruct_02021E2C * v2 = (UnkStruct_02021E2C *)&param0->unk_40;
        v0 = v2->unk_70->numSequences;
    }

    return v0;
}

void sub_02021D6C (UnkStruct_02022550 * param0, u32 param1)
{
    const NNSG2dAnimSequence * v0;

    GF_ASSERT(sub_02021D44(param0) > param1);
    param0->unk_F0 = param1;

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v1 = (UnkStruct_02021D44 *)&param0->unk_40;

        v0 = NNS_G2dGetAnimSequenceByIdx(v1->unk_04, param1);
        NNS_G2dSetCellAnimationSequence(&v1->unk_08, v0);
        NNS_G2dStartAnimCtrl(&v1->unk_08.animCtrl);
    } else {
        UnkStruct_02021E2C * v2 = (UnkStruct_02021E2C *)&param0->unk_40;

        v0 = NNS_G2dGetAnimSequenceByIdx(v2->unk_70, param1);
        NNS_G2dSetAnimSequenceToMCAnimation(&v2->unk_08, v0);
        NNS_G2dStartAnimCtrl(&v2->unk_08.animCtrl);
    }
}

void sub_02021DCC (UnkStruct_02022550 * param0, u32 param1)
{
    if (param0->unk_F0 != param1) {
        sub_02021D6C(param0, param1);
    }
}

void sub_02021DE0 (UnkStruct_02022550 * param0)
{
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v0 = (UnkStruct_02021D44 *)&param0->unk_40;

        NNS_G2dResetAnimCtrlState(&v0->unk_08.animCtrl);
        NNS_G2dStartAnimCtrl(&v0->unk_08.animCtrl);
        sub_02021E50(param0, 0);
    } else {
        UnkStruct_02021E2C * v1 = (UnkStruct_02021E2C *)&param0->unk_40;

        NNS_G2dResetAnimCtrlState(&v1->unk_08.animCtrl);
        NNS_G2dStartAnimCtrl(&v1->unk_08.animCtrl);
        sub_02021E50(param0, 0);
    }
}

u32 sub_02021E24 (const UnkStruct_02022550 * param0)
{
    return param0->unk_F0;
}

void sub_02021E2C (UnkStruct_02022550 * param0, fx32 param1)
{
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v0 = (UnkStruct_02021D44 *)&param0->unk_40;
        NNS_G2dTickCellAnimation(&v0->unk_08, param1);
    } else {
        UnkStruct_02021E2C * v1 = (UnkStruct_02021E2C *)&param0->unk_40;
        NNS_G2dTickMCAnimation(&v1->unk_08, param1);
    }
}

void sub_02021E50 (UnkStruct_02022550 * param0, u16 param1)
{
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v0 = (UnkStruct_02021D44 *)&param0->unk_40;
        NNS_G2dSetCellAnimationCurrentFrame(&v0->unk_08, param1);
    } else {
        UnkStruct_02021E2C * v1 = (UnkStruct_02021E2C *)&param0->unk_40;
        NNS_G2dSetMCAnimationCurrentFrame(&v1->unk_08, param1);
    }
}

u16 sub_02021E74 (const UnkStruct_02022550 * param0)
{
    NNSG2dAnimController * v0;

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v1 = (UnkStruct_02021D44 *)&param0->unk_40;
        v0 = NNS_G2dGetCellAnimationAnimCtrl(&v1->unk_08);
    } else {
        UnkStruct_02021E2C * v2 = (UnkStruct_02021E2C *)&param0->unk_40;
        v0 = NNS_G2dGetMCAnimAnimCtrl(&v2->unk_08);
    }

    return NNS_G2dGetAnimCtrlCurrentFrame(v0);
}

void sub_02021E80 (UnkStruct_02022550 * param0, u8 param1)
{
    param0->unk_F2 = param1;
}

u8 sub_02021E88 (const UnkStruct_02022550 * param0)
{
    return param0->unk_F2;
}

void sub_02021E90 (UnkStruct_02022550 * param0, u32 param1)
{
    GF_ASSERT(param0);

    param0->unk_29 = param1;
    param0->unk_28 |= NNS_G2D_RND_OVERWRITE_PLTTNO;
    param0->unk_28 &= ~NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
}

void sub_02021EC4 (UnkStruct_02022550 * param0, u32 param1)
{
    sub_02021E90(param0, param1);
    param0->unk_29 += sub_020222C4(&param0->unk_D8, param0->unk_F8);
}

u32 sub_02021EE8 (const UnkStruct_02022550 * param0)
{
    return param0->unk_29;
}

void sub_02021EF0 (UnkStruct_02022550 * param0, u32 param1)
{
    GF_ASSERT(param0);

    param0->unk_2A = param1;
    param0->unk_28 |= NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
    param0->unk_28 &= ~NNS_G2D_RND_OVERWRITE_PLTTNO;
}

void sub_02021F24 (UnkStruct_02022550 * param0, u32 param1)
{
    sub_02021EF0(param0, param1);
    param0->unk_2A += sub_020222C4(&param0->unk_D8, param0->unk_F8);
}

u32 sub_02021F48 (const UnkStruct_02022550 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_2A;
}

void sub_02021F58 (UnkStruct_02022550 * param0, u32 param1)
{
    UnkStruct_020218BC * v0 = (UnkStruct_020218BC *)param0->unk_3C;

    param0->unk_F4 = param1;

    sub_020224FC(param0);
    sub_02022464(v0, param0);
}

u32 sub_02021F74 (const UnkStruct_02022550 * param0)
{
    return param0->unk_F4;
}

void sub_02021F7C (UnkStruct_02022550 * param0, const NNSG2dImageProxy * param1)
{
    param0->unk_B4 = *param1;
}

NNSG2dImageProxy * sub_02021F98 (UnkStruct_02022550 * param0)
{
    return &param0->unk_B4;
}

NNSG2dImagePaletteProxy * sub_02021F9C (UnkStruct_02022550 * param0)
{
    return &param0->unk_D8;
}

void sub_02021FA0 (UnkStruct_02022550 * param0, BOOL param1)
{
    param0->unk_2C = param1;

    if (param1 == 1) {
        param0->unk_28 |= NNS_G2D_RND_OVERWRITE_MOSAIC;
    } else {
        param0->unk_28 ^= NNS_G2D_RND_OVERWRITE_MOSAIC;
    }
}

NNS_G2D_VRAM_TYPE sub_02021FC8 (const UnkStruct_02022550 * param0)
{
    return param0->unk_F8;
}

BOOL sub_02021FD0 (UnkStruct_02022550 * param0)
{
    GF_ASSERT(param0);

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v0 = (UnkStruct_02021D44 *)&param0->unk_40;
        return NNS_G2dIsAnimCtrlActive(&v0->unk_08.animCtrl);
    } else {
        UnkStruct_02021E2C * v1 = (UnkStruct_02021E2C *)&param0->unk_40;
        return NNS_G2dIsAnimCtrlActive(&v1->unk_08.animCtrl);
    }
}

void sub_02021FE0 (UnkStruct_02022550 * param0, GXOamMode param1)
{
    GF_ASSERT(param0);

    param0->unk_30 = param1;

    if (param1 == GX_OAM_MODE_NORMAL) {
        param0->unk_28 ^= NNS_G2D_RND_OVERWRITE_OBJMODE;
    } else {
        param0->unk_28 |= NNS_G2D_RND_OVERWRITE_OBJMODE;
    }
}

void sub_02022014 (int param0)
{
    void * v0;

    v0 = sub_02018144(param0, sizeof(GXOamAttr) * 128);

    MI_CpuFill16(v0, 0x2C0, sizeof(GXOamAttr) * 128);
    DC_FlushRange(v0, sizeof(GXOamAttr) * 128);
    GX_LoadOAM(v0, 0, sizeof(GXOamAttr) * 128);

    sub_020181C4(v0);
}

void sub_0202204C (int param0)
{
    void * v0;

    v0 = sub_02018144(param0, sizeof(GXOamAttr) * 128);

    MI_CpuFill16(v0, 0x2C0, sizeof(GXOamAttr) * 128);
    GXS_LoadOAM(v0, 0, sizeof(GXOamAttr) * 128);

    sub_020181C4(v0);
}

u32 sub_0202207C (const UnkStruct_02022550 * param0, u32 param1, u32 param2)
{
    const NNSG2dAnimBankData * v0;
    const NNSG2dUserExAnimAttrBank * v1;
    const NNSG2dUserExAnimSequenceAttr * v2;
    const NNSG2dUserExAnimFrameAttr * v3;

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        UnkStruct_02021D44 * v4 = (UnkStruct_02021D44 *)&param0->unk_40;
        v0 = v4->unk_04;
    } else {
        UnkStruct_02021E2C * v5 = (UnkStruct_02021E2C *)&param0->unk_40;
        v0 = v5->unk_70;
    }

    v1 = NNS_G2dGetUserExAnimAttrBank(v0);

    if (v1) {
        v2 = NNS_G2dGetUserExAnimSequenceAttr(v1, param1);

        if (v2) {
            v3 = NNS_G2dGetUserExAnimFrameAttr(v2, param2);

            if (v3) {
                return NNS_G2dGetUserExAnimFrmAttrValue(v3);
            }
        }
    }

    return 0;
}

u32 sub_020220F4 (const UnkStruct_02022550 * param0)
{
    u32 v0;
    u32 v1;

    v0 = sub_02021E24(param0);
    v1 = sub_02021E74(param0);

    return sub_0202207C(param0, v0, v1);
}

static BOOL sub_02022110 (const UnkStruct_020218BC * param0, const UnkStruct_ov19_021DA864 * param1, UnkStruct_02022550 * param2, int param3)
{
    param2->unk_EC = sub_020221B8(param1);
    param2->unk_B4 = *param1->unk_00;
    param2->unk_D8 = *param1->unk_08;

    sub_020221D0(param1->unk_0C, param2);

    if (param1->unk_10) {
        sub_020221D4(param1->unk_10, param2);
    } else {
        sub_020221D4(param0->unk_118, param2);
    }

    if (param2->unk_EC == 2) {
        sub_020221D8(param1->unk_14, param2);
        sub_020221E0(param1->unk_18, param2);
        sub_02022264(param2, param3);
    } else {
        if (param2->unk_EC == 3) {
            UnkStruct_02021BD4 * v0 = (UnkStruct_02021BD4 *)&param2->unk_40;
            sub_02022208(param1, param2, param3);
        } else {
            sub_020221E8(param2, param3);
        }
    }

    param2->unk_F2 = param1->unk_20;

    return 1;
}

static u32 sub_020221B8 (const UnkStruct_ov19_021DA864 * param0)
{
    if (param0->unk_14 != NULL) {
        return 2;
    }

    if (param0->unk_1C == 1) {
        return 3;
    }

    return 1;
}

static void sub_020221D0 (const NNSG2dCellDataBank * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_02021D44 * v0;

    v0 = (UnkStruct_02021D44 *)&param1->unk_40;
    v0->unk_00 = param0;
}

static void sub_020221D4 (const NNSG2dCellAnimBankData * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_02021D44 * v0;

    v0 = (UnkStruct_02021D44 *)&param1->unk_40;
    v0->unk_04 = param0;
}

static void sub_020221D8 (const NNSG2dMultiCellDataBank * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_02021E2C * v0;

    v0 = (UnkStruct_02021E2C *)&param1->unk_40;
    v0->unk_6C = param0;
}

static void sub_020221E0 (const NNSG2dMultiCellAnimBankData * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_02021E2C * v0;

    v0 = (UnkStruct_02021E2C *)&param1->unk_40;
    v0->unk_70 = param0;
}

static void sub_020221E8 (UnkStruct_02022550 * param0, int param1)
{
    UnkStruct_02021D44 * v0;

    v0 = (UnkStruct_02021D44 *)&param0->unk_40;
    NNS_G2dInitCellAnimation((NNSG2dCellAnimation *)&v0->unk_08, NNS_G2dGetAnimSequenceByIdx(v0->unk_04, 0), v0->unk_00);
}

static void sub_02022208 (const UnkStruct_ov19_021DA864 * param0, UnkStruct_02022550 * param1, int param2)
{
    UnkStruct_02021BD4 * v0;
    const NNSG2dCharacterData * v1;

    v0 = (UnkStruct_02021BD4 *)&param1->unk_40;
    v0->unk_60 = NNS_G2dGetNewCellTransferStateHandle();
    v1 = param0->unk_04;

    NNS_G2dInitCellAnimationVramTransfered((NNSG2dCellAnimation *)&v0->unk_08, NNS_G2dGetAnimSequenceByIdx(v0->unk_04, 0), v0->unk_00, v0->unk_60, NNS_G2D_VRAM_ADDR_NONE, NNS_G2dGetImageLocation(&param1->unk_B4, NNS_G2D_VRAM_TYPE_2DMAIN), NNS_G2dGetImageLocation(&param1->unk_B4, NNS_G2D_VRAM_TYPE_2DSUB), v1->pRawData, NULL, v1->szByte);
}

static void sub_02022264 (UnkStruct_02022550 * param0, int param1)
{
    UnkStruct_02021E2C * v0;
    const NNSG2dMultiCellAnimSequence * v1;
    u16 v2;

    v0 = (UnkStruct_02021E2C *)&param0->unk_40;
    v1 = NNS_G2dGetAnimSequenceByIdx(v0->unk_70, 0);
    v2 = NNS_G2dGetMCBankNumNodesRequired(v0->unk_6C);

    v0->unk_74 = sub_02018144(param1, sizeof(NNSG2dNode) * v2);
    v0->unk_78 = sub_02018144(param1, sizeof(NNSG2dCellAnimation) * v2);

    NNS_G2dInitMCAnimation((NNSG2dMultiCellAnimation *)&v0->unk_08, v0->unk_74, v0->unk_78, v2, v0->unk_04, v0->unk_00, v0->unk_6C);
    NNS_G2dSetAnimSequenceToMCAnimation((NNSG2dMultiCellAnimation *)&v0->unk_08, v1);
}

static u32 sub_020222C4 (const NNSG2dImagePaletteProxy * param0, u32 param1)
{
    u32 v0;
    u32 v1;

    if (param0->bExtendedPlt) {
        v0 = 32 * 16;
    } else {
        if (param0->fmt == GX_TEXFMT_PLTT256) {
            v0 = 0;
        } else {
            v0 = 32;
        }
    }

    if (v0 != 0) {
        v1 = NNS_G2dGetImagePaletteLocation(param0, param1);
        v1 /= v0;
    } else {
        v1 = 0;
    }

    return v1;
}

static void sub_020222F4 (const UnkStruct_020218BC * param0, UnkStruct_02022550 * param1)
{
    VecFx32 v0 = param1->unk_00;

    NNS_G2dSetRendererImageProxy(param0->unk_110, &param1->unk_B4, &param1->unk_D8);
    NNS_G2dBeginRendering(param0->unk_110);
    NNS_G2dPushMtx();

    {
        NNS_G2dSetRndCoreAffineOverwriteMode(&(param0->unk_110->rendererCore), param1->unk_26);

        if (param1->unk_26 == 0) {
            NNS_G2dSetRndCoreFlipMode(&(param0->unk_110->rendererCore), param1->unk_27 & 1, param1->unk_27 & 2);
        } else {
            NNS_G2dSetRndCoreFlipMode(&(param0->unk_110->rendererCore), 0, 0);
        }

        NNS_G2dTranslate(v0.x, v0.y, v0.z);

        if (param1->unk_26 != 0) {
            NNS_G2dTranslate(param1->unk_0C.x, param1->unk_0C.y, param1->unk_0C.z);
            NNS_G2dScale(param1->unk_18.x, param1->unk_18.y, param1->unk_18.z);
            NNS_G2dRotZ(FX_SinIdx(param1->unk_24), FX_CosIdx(param1->unk_24));
            NNS_G2dTranslate(-param1->unk_0C.x, -param1->unk_0C.y, -param1->unk_0C.z);
        }

        NNS_G2dSetRendererOverwriteEnable(param0->unk_110, param1->unk_28);
        NNS_G2dSetRendererOverwriteDisable(param0->unk_110, ~param1->unk_28);
        NNS_G2dSetRendererOverwritePlttNo(param0->unk_110, param1->unk_29);
        NNS_G2dSetRendererOverwritePlttNoOffset(param0->unk_110, param1->unk_2A);
        NNS_G2dSetRendererOverwriteMosaicFlag(param0->unk_110, param1->unk_2C);
        NNS_G2dSetRendererOverwriteOBJMode(param0->unk_110, param1->unk_30);
        NNS_G2dSetRendererOverwritePriority(param0->unk_110, param1->unk_F2);

        if ((param1->unk_EC == 1) || (param1->unk_EC == 3)) {
            UnkStruct_02021D44 * v1 = (UnkStruct_02021D44 *)&param1->unk_40;
            NNS_G2dDrawCellAnimation(&v1->unk_08);
        } else {
            UnkStruct_02021E2C * v2 = (UnkStruct_02021E2C *)&param1->unk_40;
            NNS_G2dDrawMultiCellAnimation(&v2->unk_08);
        }
    }

    NNS_G2dPopMtx();
    NNS_G2dEndRendering();
}

static void sub_02022450 (const UnkStruct_020218BC * param0, UnkStruct_02022550 * param1)
{
    return;
}

static void sub_02022454 (UnkStruct_02022550 * param0)
{
    sub_02021E2C(param0, param0->unk_38);
}

static void sub_02022460 (UnkStruct_02022550 * param0)
{
    return;
}

static void sub_02022464 (UnkStruct_020218BC * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_02022550 * v0;

    if (param0->unk_10.unk_100 == &param0->unk_10) {
        param0->unk_10.unk_100 = param1;
        param0->unk_10.unk_FC = param1;
        param1->unk_FC = &param0->unk_10;
        param1->unk_100 = &param0->unk_10;
    } else {
        if (param0->unk_10.unk_FC->unk_F4 <= param1->unk_F4) {
            param1->unk_FC = param0->unk_10.unk_FC;
            param0->unk_10.unk_FC->unk_100 = param1;
            param1->unk_100 = &param0->unk_10;
            param0->unk_10.unk_FC = param1;
        } else {
            v0 = param0->unk_10.unk_100;

            while (v0 != &param0->unk_10) {
                if (v0->unk_F4 > param1->unk_F4) {
                    v0->unk_FC->unk_100 = param1;
                    param1->unk_FC = v0->unk_FC;
                    v0->unk_FC = param1;
                    param1->unk_100 = v0;
                    break;
                }

                v0 = v0->unk_100;
            }
        }
    }
}

static void sub_020224FC (UnkStruct_02022550 * param0)
{
    param0->unk_FC->unk_100 = param0->unk_100;
    param0->unk_100->unk_FC = param0->unk_FC;
}

static void sub_02022518 (UnkStruct_020218BC * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        sub_02021A78(&param0->unk_00[v0]);
        param0->unk_08[v0] = param0->unk_00 + v0;
    }

    param0->unk_0C = 0;
}

static UnkStruct_02022550 * sub_02022550 (UnkStruct_020218BC * param0)
{
    UnkStruct_02022550 * v0;

    if (param0->unk_0C >= param0->unk_04) {
        return NULL;
    }

    v0 = param0->unk_08[param0->unk_0C];
    param0->unk_0C++;

    return v0;
}

static BOOL sub_0202256C (UnkStruct_020218BC * param0, UnkStruct_02022550 * param1)
{
    if (param0->unk_0C <= 0) {
        return 0;
    }

    sub_02021A78(param1);

    param0->unk_0C--;
    param0->unk_08[param0->unk_0C] = param1;

    return 1;
}
