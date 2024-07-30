#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_trig.h>

#include "spl_emitter.h"
#include "spl_list.h"
#include "spl_random.h"


#define IS_IN_RANGE(x, min, max) (((x) - (min)) <= ((max) - (min)))


static void sub_020A1768(SPLEmitter *emtr);
static void sub_020A1608(VecFx32 *ptclPos, VecFx32 *pos, SPLEmitter *emtr);

VecFx16 Unk_02100DB0 = { 0, FX16_ONE, 0 };


static void sub_020A1768(SPLEmitter *emtr)
{
    VecFx16 vec, axis;

    vec = Unk_02100DB0;

    switch (emtr->p_res->unk_00->unk_00.unk_04_6) {
    case 2:
        axis.x = FX32_ONE;
        axis.y = 0;
        axis.z = 0;
        break;
    case 1:
        axis.x = 0;
        axis.y = FX32_ONE;
        axis.z = 0;
        break;
    case 0:
        axis.x = 0;
        axis.y = 0;
        axis.z = FX32_ONE;
        break;
    default:
        VEC_Fx16Normalize(&emtr->unk_C0, &axis);
        break;
    }

    fx32 dot = VEC_Fx16DotProduct(&vec, &axis);
    if (dot == FX32_ONE || dot == -FX32_ONE) {
        vec.x = FX32_ONE;
        vec.y = 0;
        vec.z = 0;
    }

    emtr->unk_F4.x = FX_MUL(axis.y, vec.z) - FX_MUL(axis.z, vec.y);
    emtr->unk_F4.y = FX_MUL(axis.z, vec.x) - FX_MUL(axis.x, vec.z);
    emtr->unk_F4.z = FX_MUL(axis.x, vec.y) - FX_MUL(axis.y, vec.x);

    emtr->unk_FA.x = FX_MUL(axis.y, emtr->unk_F4.z) - FX_MUL(axis.z, emtr->unk_F4.y);
    emtr->unk_FA.y = FX_MUL(axis.z, emtr->unk_F4.x) - FX_MUL(axis.x, emtr->unk_F4.z);
    emtr->unk_FA.z = FX_MUL(axis.x, emtr->unk_F4.y) - FX_MUL(axis.y, emtr->unk_F4.x);

    VEC_Fx16Normalize(&emtr->unk_F4, &emtr->unk_F4);
    VEC_Fx16Normalize(&emtr->unk_FA, &emtr->unk_FA);
}

static void sub_020A1608(VecFx32 *ptclPos, VecFx32 *pos, SPLEmitter *emtr)
{
    VecFx16 vec;
    VEC_Fx16CrossProduct(&emtr->unk_F4, &emtr->unk_FA, &vec);
    VEC_Fx16Normalize(&vec, &vec);

    ptclPos->x = FX_MUL(pos->x, emtr->unk_F4.x) + FX_MUL(pos->y, emtr->unk_FA.x) + FX_MUL(pos->z, vec.x);
    ptclPos->y = FX_MUL(pos->x, emtr->unk_F4.y) + FX_MUL(pos->y, emtr->unk_FA.y) + FX_MUL(pos->z, vec.y);
    ptclPos->z = FX_MUL(pos->x, emtr->unk_F4.z) + FX_MUL(pos->y, emtr->unk_FA.z) + FX_MUL(pos->z, vec.z);
}

void sub_020A08DC(SPLEmitter *emtr, SPLList *list)
{
    UnkSPLStruct4 *res;
    UnkSPLStruct9 *resBase;
    int i, curGenNum;
    SPLParticle *ptcl;
    fx32 magPos;
    fx32 magAxis;

    res = emtr->p_res;
    resBase = res->unk_00;

    int temp = emtr->unk_C8 + FX32_CAST(emtr->unk_BE);
    curGenNum = temp >> FX32_SHIFT;
    emtr->unk_BE = temp & FX32_DEC_MASK;

    u32 initType = resBase->unk_00.unk_04_0;
    if (initType == 2 || initType == 3 || IS_IN_RANGE(initType, 5, 9)) {
        sub_020A1768(emtr);
    }

    i = 0;
    if (i < curGenNum) {
        fx32 genNum = 0;
        do {
            ptcl = (SPLParticle *)SPLList_PopFront(list);

            if (ptcl == NULL) {
                return;
            }

            SPLList_PushFront((SPLList *)&emtr->unk_08, (SPLNode *)ptcl);

            switch (resBase->unk_00.unk_04_0) {
            case 0:
                ptcl->unk_08.x = ptcl->unk_08.y = ptcl->unk_08.z = 0;
                break;

            case 1:
                SPLRandom_VecFx32(&ptcl->unk_08);
                ptcl->unk_08.x = FX_MUL(ptcl->unk_08.x, emtr->unk_CC);
                ptcl->unk_08.y = FX_MUL(ptcl->unk_08.y, emtr->unk_CC);
                ptcl->unk_08.z = FX_MUL(ptcl->unk_08.z, emtr->unk_CC);
                break;

            case 2: {
                VecFx32 pos;
                SPLRandom_VecFx32_XY(&pos);
                pos.x = FX_MUL(pos.x, emtr->unk_CC);
                pos.y = FX_MUL(pos.y, emtr->unk_CC);
                pos.z = 0;
                sub_020A1608(&ptcl->unk_08, &pos, emtr);
            } break;

            case 3: {
                VecFx32 pos;
                int idx = genNum / curGenNum;
                genNum += 0x10000;
                fx32 sin = FX_SinIdx(idx);
                fx32 cos = FX_CosIdx(idx);
                pos.x = FX_MUL(sin, emtr->unk_CC);
                pos.y = FX_MUL(cos, emtr->unk_CC);
                pos.z = 0;
                sub_020A1608(&ptcl->unk_08, &pos, emtr);
            } break;

            case 4:
                SPLRandom_VecFx32(&ptcl->unk_08);
                ptcl->unk_08.x = FX_MUL(FX_MUL(ptcl->unk_08.x, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                ptcl->unk_08.y = FX_MUL(FX_MUL(ptcl->unk_08.y, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                ptcl->unk_08.z = FX_MUL(FX_MUL(ptcl->unk_08.z, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                break;

            case 5: {
                VecFx32 pos;
                SPLRandom_VecFx32_XY(&pos);
                pos.x = FX_MUL(FX_MUL(pos.x, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                pos.y = FX_MUL(FX_MUL(pos.y, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                sub_020A1608(&ptcl->unk_08, &pos, emtr);
            } break;

            case 8: {
                VecFx32 pos;
                VecFx16 tmpUnitVec;
                SPLRandom_VecFx32(&ptcl->unk_08);
                VEC_Fx16CrossProduct(&emtr->unk_F4, &emtr->unk_FA, &tmpUnitVec);
                pos.x = tmpUnitVec.x;
                pos.y = tmpUnitVec.y;
                pos.z = tmpUnitVec.z;
                if (VEC_DotProduct(&pos, &ptcl->unk_08) <= 0) {
                    ptcl->unk_08.x = -ptcl->unk_08.x;
                    ptcl->unk_08.y = -ptcl->unk_08.y;
                    ptcl->unk_08.z = -ptcl->unk_08.z;
                }

                ptcl->unk_08.x = FX_MUL(ptcl->unk_08.x, emtr->unk_CC);
                ptcl->unk_08.y = FX_MUL(ptcl->unk_08.y, emtr->unk_CC);
                ptcl->unk_08.z = FX_MUL(ptcl->unk_08.z, emtr->unk_CC);
            } break;

            case 9: {
                VecFx32 pos;
                VecFx16 tmpUnitVec;
                SPLRandom_VecFx32(&ptcl->unk_08);
                VEC_Fx16CrossProduct(&emtr->unk_F4, &emtr->unk_FA, &tmpUnitVec);
                pos.x = tmpUnitVec.x;
                pos.y = tmpUnitVec.y;
                pos.z = tmpUnitVec.z;
                if (VEC_DotProduct(&pos, &ptcl->unk_08) < 0) {
                    ptcl->unk_08.x = -ptcl->unk_08.x;
                    ptcl->unk_08.y = -ptcl->unk_08.y;
                    ptcl->unk_08.z = -ptcl->unk_08.z;
                }

                ptcl->unk_08.x = FX_MUL(FX_MUL(ptcl->unk_08.x, emtr->unk_CC), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
                ptcl->unk_08.y = FX_MUL(FX_MUL(ptcl->unk_08.y, emtr->unk_CC), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
                ptcl->unk_08.z = FX_MUL(FX_MUL(ptcl->unk_08.z, emtr->unk_CC), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
            } break;

            case 6: {
                VecFx32 pos;
                SPLRandom_VecFx32_XY(&ptcl->unk_14);
                pos.x = FX_MUL(ptcl->unk_14.x, emtr->unk_CC);
                pos.y = FX_MUL(ptcl->unk_14.y, emtr->unk_CC);
                pos.z = SPLRandom_RangeFX32(emtr->unk_D0);
                sub_020A1608(&ptcl->unk_08, &pos, emtr);
            } break;

            case 7: {
                VecFx32 pos;
                SPLRandom_VecFx32_XY(&ptcl->unk_14);
                pos.x = FX_MUL(FX_MUL(ptcl->unk_14.x, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                pos.y = FX_MUL(FX_MUL(ptcl->unk_14.y, emtr->unk_CC), SPLRandom_RangeFX32(FX32_ONE));
                pos.z = SPLRandom_RangeFX32(emtr->unk_D0);
                sub_020A1608(&ptcl->unk_08, &pos, emtr);
            } break;
            }

            magPos = SPLRandom_DoubleScaledRangeFX32(emtr->unk_D4, resBase->unk_44.unk_02_0);
            magAxis = SPLRandom_DoubleScaledRangeFX32(emtr->unk_D8, resBase->unk_44.unk_02_0);

            VecFx32 posNorm;
            if (resBase->unk_00.unk_04_0 == 6) {
                VecFx32 tmp;
                tmp.x = FX_MUL(ptcl->unk_14.x, emtr->unk_F4.x) + FX_MUL(ptcl->unk_14.y, emtr->unk_FA.x);
                tmp.y = FX_MUL(ptcl->unk_14.x, emtr->unk_F4.y) + FX_MUL(ptcl->unk_14.y, emtr->unk_FA.y);
                tmp.z = FX_MUL(ptcl->unk_14.x, emtr->unk_F4.z) + FX_MUL(ptcl->unk_14.y, emtr->unk_FA.z);

                VEC_Normalize(&tmp, &posNorm);
            } else if (ptcl->unk_08.x == 0 && ptcl->unk_08.y == 0 && ptcl->unk_08.z == 0) {
                SPLRandom_VecFx32(&posNorm);
            } else {
                VEC_Normalize(&ptcl->unk_08, &posNorm);
            }

            ptcl->unk_14.x = FX_MUL(posNorm.x, magPos) + FX_MUL(emtr->unk_C0.x, magAxis) + emtr->unk_B0.x;
            ptcl->unk_14.y = FX_MUL(posNorm.y, magPos) + FX_MUL(emtr->unk_C0.y, magAxis) + emtr->unk_B0.y;
            ptcl->unk_14.z = FX_MUL(posNorm.z, magPos) + FX_MUL(emtr->unk_C0.z, magAxis) + emtr->unk_B0.z;

            ptcl->unk_38 = emtr->unk_98;

            ptcl->unk_30 = SPLRandom_DoubleScaledRangeFX32(emtr->unk_DC, resBase->unk_44.unk_00_0);
            ptcl->unk_34 = FX32_ONE;

            if (resBase->unk_00.unk_05_1 && res->unk_08->unk_08.unk_00_0) {
                u16 clr[3];
                u32 index = SPLRandom_S32(12);
                clr[0] = res->unk_08->unk_00;
                clr[1] = resBase->unk_22;
                clr[2] = res->unk_08->unk_02;
                ptcl->unk_36 = clr[index % 3];
            } else {
                ptcl->unk_36 = resBase->unk_22;
            }

            ptcl->unk_2E.unk_00_0 = emtr->unk_F0.unk_01_0;
            ptcl->unk_2E.unk_00_5 = 31;

            if (resBase->unk_00.unk_05_5) {
                ptcl->unk_20 = SPLRandom_S32(32);
            } else {
                ptcl->unk_20 = emtr->unk_C6;
            }

            if (resBase->unk_00.unk_05_4) {
                ptcl->unk_22 = (u32)SPLRandom_BetweenFX32(resBase->unk_34, resBase->unk_36) >> FX32_SHIFT;
            } else {
                ptcl->unk_22 = 0;
            }

            ptcl->unk_24 = SPLRandom_ScaledRangeFX32(emtr->unk_E0, resBase->unk_44.unk_01_0) + 1;
            ptcl->unk_26 = 0;

            if (resBase->unk_00.unk_05_3 && res->unk_10->unk_08.unk_02_0) {
                ptcl->unk_2C.unk_00 = res->unk_10->unk_00[SPLRandom_U32(12) % res->unk_10->unk_08.unk_00_0];
            } else if (resBase->unk_00.unk_05_3 && !res->unk_10->unk_08.unk_02_0) {
                ptcl->unk_2C.unk_00 = res->unk_10->unk_00[0];
            } else {
                ptcl->unk_2C.unk_00 = resBase->unk_48.unk_03_0;
            }

            ptcl->unk_28 = 0xFFFF / res->unk_00->unk_48.unk_04_0;
            ptcl->unk_2A = 0xFFFF / ptcl->unk_24;

            ptcl->unk_2C.unk_01 = 0;

            if (resBase->unk_00.unk_06_4) {
                ptcl->unk_2C.unk_01 = (u8)SPLRandom_S32(8);
            }
            i++;
        } while (i < curGenNum);
    }
}

void sub_020A05BC(SPLParticle *ptcl, SPLEmitter *emtr, SPLList *list)
{
    SPLParticle *chld;
    fx32 velBase, velRand;
    u32 rng;
    int i;
    UnkSPLStruct14 *chldRes = emtr->p_res->unk_14;
    fx32 vel = FX_MUL((fx32)(chldRes->unk_08.unk_00_0 << FX32_SHIFT), FX32_CONST(1 / 256.0f));

    for (i = 0; i < chldRes->unk_0C.unk_00_0; i++) {
        chld = (SPLParticle *)SPLList_PopFront(list);
        if (chld == NULL) {
            return;
        }
        SPLList_PushFront((SPLList *)&emtr->unk_4C, (SPLNode *)chld);

        chld->unk_08 = ptcl->unk_08;

        velBase = FX_MUL(ptcl->unk_14.x, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->unk_14.x = velBase + velRand;

        velBase = FX_MUL(ptcl->unk_14.y, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->unk_14.y = velBase + velRand;

        velBase = FX_MUL(ptcl->unk_14.z, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->unk_14.z = velBase + velRand;

        chld->unk_38 = ptcl->unk_38;

        // `unk_08.unk_00_0` and `unk_08.unk_01_0` in `UnkSPLStruct14`
        // could just be `u8 unk_08;` and `u8 unk_09;`
        // instead of an inner struct
        int idk = ptcl->unk_30 * ptcl->unk_34 >> FX32_SHIFT;
        chld->unk_30 = idk * (chldRes->unk_08.unk_01_0 + 1) >> 6;

        chld->unk_34 = FX32_ONE;

        if (chldRes->unk_00.unk_02_6) {
            chld->unk_36 = chldRes->unk_0A;
        } else {
            chld->unk_36 = ptcl->unk_36;
        }

        chld->unk_2E.unk_00_0 = (ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1)) >> 5;
        chld->unk_2E.unk_00_5 = 31;

        switch (chldRes->unk_00.unk_02_3) {
        case 0:
            chld->unk_20 = 0;
            chld->unk_22 = 0;
            break;
        case 1:
            chld->unk_20 = ptcl->unk_20;
            chld->unk_22 = 0;
            break;
        case 2:
            chld->unk_20 = ptcl->unk_20;
            chld->unk_22 = ptcl->unk_22;
            break;
        }

        chld->unk_24 = chldRes->unk_06;
        chld->unk_26 = 0;
        chld->unk_2C.unk_00 = chldRes->unk_0C.unk_03_0;

        chld->unk_28 = 0xFFFF / (ptcl->unk_24 / 2);
        chld->unk_2A = 0xFFFF / ptcl->unk_24;
        chld->unk_2C.unk_01 = 0;
    }
}
