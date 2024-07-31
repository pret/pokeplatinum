#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/gx/g3.h>
#include <nitro/gx/g3imm.h>

#include "spl_emitter.h"
#include "spl_texture.h"
#include "spl_manager.h"
#include "spl_particle.h"
#include "spl_internal.h"
#include "spl_list.h"


typedef void(*DrawFunc)(SPLManager *mgr, SPLParticle *ptcl);
typedef void(*SetTexFunc)(SPLTexture *tex);

typedef struct FieldFunc {
    void (*func)(SPLParticle *, SPLResource *, int);
    BOOL loop;
} FieldFunc;

typedef struct FieldFunc8 {
    void (*func)(SPLParticle *, SPLResource *, u8);
    BOOL loop;
} FieldFunc8;

static void sub_0209DC68(SPLTexture *tex); // spl_set_tex
static void sub_0209DC64(SPLTexture *tex); // spl_set_tex_dummy
static void sub_0209D064(SPLManager *mgr);
static void sub_0209CF7C(SPLManager *mgr);
void sub_0209D998(SPLEmitter *emtr, SPLResource *res, const VecFx32 *param2);
void sub_0209CF00(SPLManager *mgr);
void sub_0209D150(SPLManager *mgr, SPLEmitter *emtr);

static void sub_0209DC68(SPLTexture *tex)
{
    SPLTextureParam param = tex->param;

    G3_TexImageParam(
        param.val2_00_0,
        GX_TEXGEN_TEXCOORD,
        param.s,
        param.t,
        param.val2_01_4,
        param.val2_01_6,
        param.val2_02_0,
        tex->unk_04);

    G3_TexPlttBase(tex->unk_08, param.val2_00_0);
    G3_MtxMode(GX_MTXMODE_TEXTURE);
    G3_Identity();
    G3_Scale(tex->width * FX32_ONE, tex->height * FX32_ONE, 0);
    G3_MtxMode(GX_MTXMODE_POSITION);
}

static void sub_0209DC64(SPLTexture *tex)
{
}

void sub_0209D998(SPLEmitter *emtr, SPLResource *res, const VecFx32 *pos)
{
    emtr->p_res = res;
    emtr->unk_94.all = 0;

    emtr->unk_98.x = pos->x + emtr->p_res->header->unk_04.x;
    emtr->unk_98.y = pos->y + emtr->p_res->header->unk_04.y;
    emtr->unk_98.z = pos->z + emtr->p_res->header->unk_04.z;

    emtr->unk_B0.x = 0;
    emtr->unk_B0.y = 0;
    emtr->unk_B0.z = 0;
    emtr->unk_A4.x = emtr->unk_A4.y = emtr->unk_A4.z = 0;

    emtr->unk_BC = 0;
    emtr->unk_BE = 0;

    emtr->unk_C0 = emtr->p_res->header->unk_1C;
    emtr->unk_C6 = emtr->p_res->header->unk_38;
    emtr->unk_C8 = emtr->p_res->header->unk_10;
    emtr->unk_CC = emtr->p_res->header->unk_14;
    emtr->unk_D0 = emtr->p_res->header->unk_18;
    emtr->unk_D4 = emtr->p_res->header->unk_24;
    emtr->unk_D8 = emtr->p_res->header->unk_28;
    emtr->unk_DC = emtr->p_res->header->unk_2C;
    emtr->unk_E0 = emtr->p_res->header->unk_40;

    emtr->unk_E2 = GX_RGB(31, 31, 31);
    emtr->unk_F0.unk_00_0 = emtr->p_res->header->unk_48.unk_00_0;
    emtr->unk_F0.unk_01_0 = emtr->p_res->header->unk_48.unk_01_0;
    emtr->unk_F0.unk_02_0 = 0;
    emtr->unk_F0.unk_02_3 = 0;
    emtr->collisionPlaneHeight = FX32_MIN;
    emtr->unk_E8 = FX32_ONE << emtr->p_res->header->unk_48.unk_07_0;
    emtr->unk_EA = FX32_ONE << emtr->p_res->header->unk_48.unk_07_2;

    if (emtr->p_res->header->unk_48.unk_08_0) {
        emtr->unk_E8 *= -1;
    }

    if (emtr->p_res->header->unk_48.unk_08_1) {
        emtr->unk_EA *= -1;
    }

    if (emtr->p_res->header->flags.hasChildResource) {
        emtr->unk_EC = FX32_ONE << emtr->p_res->childResource->unk_0C.unk_04_0;
        emtr->unk_EE = FX32_ONE << emtr->p_res->childResource->unk_0C.unk_04_2;

        if (emtr->p_res->childResource->unk_0C.unk_04_4) {
            emtr->unk_EC *= -1;
        }

        if (emtr->p_res->childResource->unk_0C.unk_04_5) {
            emtr->unk_EE *= -1;
        }
    }

    emtr->unk_00 = emtr->unk_04 = NULL;
    emtr->unk_08.first = emtr->unk_4C.first = NULL;
    emtr->unk_08.count = emtr->unk_4C.count = 0;
    emtr->unk_100 = NULL;
    emtr->unk_104 = NULL;
    emtr->unk_108.unk_108_val1 = 0;
}

void sub_0209D150(SPLManager *mgr, SPLEmitter *emtr)
{
    SPLParticle *ptcl;
    SPLParticle *next;
    SPLResource *res;
    SPLResourceHeader *resBase;
    SPLChildResource *child;
    SPLResourceFlags resFlags;
    FieldFunc fieldFuncs[4];
    FieldFunc fieldFuncs2[4];
    int i, fieldIndex, fldNum;
    int airResistance;
    u8 lifeRates[2];
    VecFx32 vec;
    int idx;

    res = emtr->p_res;
    child = res->childResource;
    fieldIndex = 0;
    resBase = res->header;
    resFlags = resBase->flags;
    fldNum = res->behaviorCount;
    airResistance = resBase->unk_48.unk_02_0 + 0x180;

    if (emtr->unk_100) {
        emtr->unk_100(emtr, FALSE);
    }

    if (resBase->unk_3C == 0 || emtr->unk_BC < resBase->unk_3C) {
        if (emtr->unk_BC % emtr->unk_F0.unk_00_0 == 0) {
            if (!emtr->unk_94.terminate && !emtr->unk_94.stop_generate && emtr->unk_94.started) {
                sub_020A08DC(emtr, (SPLList *)(&mgr->inactiveParticles));
            }
        }
    }

    if (resFlags.hasScaleAnim) { // ScaleAnim
        fieldFuncs[fieldIndex].func = sub_020A1DA0;
        fieldFuncs[fieldIndex++].loop = res->scaleAnim->unk_08.unk_00_0;
    }

    if (resFlags.hasColorAnim && !res->colorAnim->unk_08.unk_00_0) { // ColorAnim
        fieldFuncs[fieldIndex].func = sub_020A1BD4;
        fieldFuncs[fieldIndex++].loop = res->colorAnim->unk_08.unk_00_1;
    }

    if (resFlags.hasAlphaAnim) { // AlphaAnim
        fieldFuncs[fieldIndex].func = sub_020A1AF8;
        fieldFuncs[fieldIndex++].loop = res->alphaAnim->unk_02.unk_01_0;
    }

    if (resFlags.hasTexAnim && !res->texAnim->unk_08.unk_02_0) { // TexAnim
        fieldFuncs[fieldIndex].func = sub_020A1A94;
        fieldFuncs[fieldIndex++].loop = res->texAnim->unk_08.unk_02_1;
    }

    for (ptcl = emtr->unk_08.first; ptcl != NULL; ptcl = next) {
        next = ptcl->next;
        lifeRates[0] = ptcl->unk_2A * ptcl->age >> 8;
        lifeRates[1] = ptcl->unk_2C.unk_01 + (ptcl->unk_28 * ptcl->age >> 8);

        for (i = 0; i < fieldIndex; i++) {
            fieldFuncs[i].func(ptcl, res, lifeRates[fieldFuncs[i].loop]);
        }

        vec.x = vec.y = vec.z = 0;

        if (resFlags.unk_05_7) {
            ptcl->emitterPos = emtr->unk_98;
        }

        for (i = 0; i < fldNum; i++) {
            res->behaviors[i].apply(res->behaviors[i].object, ptcl, &vec, emtr);
        }

        ptcl->unk_20 += ptcl->unk_22;

        ptcl->velocity.x = (ptcl->velocity.x * airResistance >> 9);
        ptcl->velocity.y = (ptcl->velocity.y * airResistance >> 9);
        ptcl->velocity.z = (ptcl->velocity.z * airResistance >> 9);

        ptcl->velocity.x += vec.x;
        ptcl->velocity.y += vec.y;
        ptcl->velocity.z += vec.z;

        ptcl->position.x += ptcl->velocity.x + emtr->unk_A4.x;
        ptcl->position.y += ptcl->velocity.y + emtr->unk_A4.y;
        ptcl->position.z += ptcl->velocity.z + emtr->unk_A4.z;

        if (resFlags.hasChildResource) {
            fx32 x = FX_MUL((fx32)ptcl->lifeTime << FX32_SHIFT, (fx32)child->unk_0C.unk_01_0 << FX32_SHIFT);
            fx32 a = (fx32)ptcl->age * FX32_ONE;
            fx32 diff = a - (x >> 8);

            if (diff >= 0) {
                if ((diff >> FX32_SHIFT) % child->unk_0C.unk_02_0 == 0) {
                    sub_020A05BC(ptcl, emtr, (SPLList *)&mgr->inactiveParticles);
                }
            }
        }

        if (emtr->p_res->header->flags.unk_07_6) {
            ptcl->unk_2E.unk_01_2 = mgr->polygonID.fix;
        } else {
            ptcl->unk_2E.unk_01_2 = mgr->polygonID.current;
            mgr->polygonID.current += 1;

            if (mgr->polygonID.current > mgr->polygonID.max) {
                mgr->polygonID.current = mgr->polygonID.min;
            }
        }

        ptcl->age += 1;

        if (ptcl->age > ptcl->lifeTime) {
            SPLNode *node = SPLList_Erase((SPLList *)(&emtr->unk_08), (SPLNode *)ptcl);
            SPLList_PushFront((SPLList *)&mgr->inactiveParticles, node);
        }
    }

    if (resFlags.hasChildResource) {
        fieldIndex = 0;
        if (child->unk_00.unk_02_1) {
            fieldFuncs2[fieldIndex].func = sub_020A1A48;
            fieldFuncs2[fieldIndex++].loop = FALSE;
        }

        if (child->unk_00.unk_02_2) {
            fieldFuncs2[fieldIndex].func = sub_020A19F0;
            fieldFuncs2[fieldIndex++].loop = FALSE;
        }

        if (!child->unk_00.unk_02_0) {
            fldNum = 0;
        }

        for (ptcl = emtr->unk_4C.first; ptcl != NULL; ptcl = next) {
            next = ptcl->next;
            lifeRates[0] = (ptcl->age << 8) / ptcl->lifeTime;
            for (i = 0; i < fieldIndex; i++) {
                u8 lifeRate = lifeRates[0];
                fieldFuncs2[i].func(ptcl, res, lifeRate);
            }

            vec.x = vec.y = vec.z = 0;

            if (child->unk_00.unk_02_5) {
                ptcl->emitterPos = emtr->unk_98;
            }

            for (i = 0; i < fldNum; i++) {
                res->behaviors[i].apply(res->behaviors[i].object, ptcl, &vec, emtr);
            }

            ptcl->unk_20 += ptcl->unk_22;

            ptcl->velocity.x = ptcl->velocity.x * airResistance >> 9;
            ptcl->velocity.y = ptcl->velocity.y * airResistance >> 9;
            ptcl->velocity.z = ptcl->velocity.z * airResistance >> 9;

            ptcl->velocity.x += vec.x;
            ptcl->velocity.y += vec.y;
            ptcl->velocity.z += vec.z;

            ptcl->position.x += ptcl->velocity.x + emtr->unk_A4.x;
            ptcl->position.y += ptcl->velocity.y + emtr->unk_A4.y;
            ptcl->position.z += ptcl->velocity.z + emtr->unk_A4.z;

            if (emtr->p_res->header->flags.unk_07_7) {
                ptcl->unk_2E.unk_01_2 = mgr->polygonID.fix;
            } else {
                ptcl->unk_2E.unk_01_2 = mgr->polygonID.current;
                mgr->polygonID.current += 1;

                if (mgr->polygonID.current > mgr->polygonID.max) {
                    mgr->polygonID.current = mgr->polygonID.min;
                }
            }

            ptcl->age += 1;

            if (ptcl->age > ptcl->lifeTime) {
                SPLList_PushFront((SPLList *)&mgr->inactiveParticles, SPLList_Erase((SPLList *)(&emtr->unk_4C), (SPLNode *)ptcl));
            }
        }
    }

    emtr->unk_BC += 1;

    if (emtr->unk_100) {
        emtr->unk_100(emtr, TRUE);
    }
}

static void sub_0209D064(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLResourceHeader *resBase;
    SPLParticle *ptcl;
    DrawFunc drawFunc;
    SetTexFunc setTexFunc;

    emtr = mgr->unk_40.unk_00;
    resBase = emtr->p_res->header;
    drawFunc = NULL;

    sub_0209DC68(mgr->textures + resBase->unk_48.unk_03_0);

    switch (resBase->flags.unk_04_4) {
    case 0:
        drawFunc = sub_0209FF0C;
        break;
    case 1:
        drawFunc = sub_0209F3D0;
        break;
    case 2:
        drawFunc = sub_0209E9A0;
        break;
    case 3:
        drawFunc = sub_0209E1D4;
        break;
    case 4:
        drawFunc = sub_0209E1D4;
        break;
    }

    setTexFunc = resBase->flags.hasTexAnim ? sub_0209DC68 : sub_0209DC64;
    ptcl = emtr->unk_08.first;

    while (ptcl != NULL) {
        setTexFunc(mgr->textures + ptcl->unk_2C.unk_00);
        drawFunc(mgr, ptcl);
        ptcl = ptcl->next;
    }
}

static void sub_0209CF7C(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLResource *res;
    DrawFunc drawFunc;
    SPLParticle *ptcl;

    emtr = mgr->unk_40.unk_00;
    drawFunc = NULL;
    res = emtr->p_res;

    if (!res->header->flags.hasChildResource) {
        return;
    }

    sub_0209DC68(mgr->textures + res->childResource->unk_0C.unk_03_0);

    switch (res->childResource->unk_00.unk_02_7) {
    case 0:
        drawFunc = sub_0209FAB8;
        break;
    case 1:
        drawFunc = sub_0209ECF0;
        break;
    case 2:
        drawFunc = sub_0209E650;
        break;
    case 3:
        drawFunc = sub_0209DD54;
        break;
    case 4:
        drawFunc = sub_0209DD54;
        break;
    }

    ptcl = emtr->unk_4C.first;
    while (ptcl != NULL) {
        drawFunc(mgr, ptcl);
        ptcl = ptcl->next;
    }
}

void sub_0209CF00(SPLManager *mgr)
{
    SPLResourceHeader *resBase;

    resBase = mgr->unk_40.unk_00->p_res->header;
    if (resBase->flags.unk_06_5) {
        sub_0209CF7C(mgr);

        if (!resBase->flags.unk_06_6) {
            sub_0209D064(mgr);
        }
    } else {
        if (!resBase->flags.unk_06_6) {
            sub_0209D064(mgr);
        }

        sub_0209CF7C(mgr);
    }
}

void spl_generate(SPLEmitter *emtr, SPLList *list)
{
    sub_020A08DC(emtr, list);
}

void SPL_Util_SetCylinderEmiterDirection(SPLEmitter *emtr, VecFx32 *p1, VecFx32 *p2)
{
    VecFx32 vex;

    if (emtr->p_res->header->flags.unk_04_0 == 6 || emtr->p_res->header->flags.unk_04_0 == 7) {
        emtr->unk_98.x = (p2->x + p1->x) / 2;
        emtr->unk_98.y = (p2->y + p1->y) / 2;
        emtr->unk_98.z = (p2->z + p1->z) / 2;
        emtr->unk_D0 = VEC_Distance(p1, p2) / 2;

        vex.x = p2->x - p1->x;
        vex.y = p2->y - p1->y;
        vex.z = p2->z - p1->z;
        VEC_Normalize(&vex, &vex);

        emtr->unk_C0.x = (fx16)vex.x;
        emtr->unk_C0.y = (fx16)vex.y;
        emtr->unk_C0.z = (fx16)vex.z;
    }
}
