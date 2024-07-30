#ifndef SPL_INTERNAL_H
#define SPL_INTERNAL_H

#include <nitro/types.h>
#include <nitro/gx/gxcommon.h>

#include "spl_manager.h"
#include "spl_particle.h"
#include "spl_emitter.h"
#include "spl_resource.h"
#include "spl_list.h"


#define GX_RGB_R(RGB) (((RGB) >> GX_RGB_R_SHIFT) & 31)
#define GX_RGB_G(RGB) (((RGB) >> GX_RGB_G_SHIFT) & 31)
#define GX_RGB_B(RGB) (((RGB) >> GX_RGB_B_SHIFT) & 31)

#define GX_RGB_R_(rgb) (rgb & GX_RGB_R_MASK)
#define GX_RGB_G_(rgb) (rgb & GX_RGB_G_MASK)
#define GX_RGB_B_(rgb) (rgb & GX_RGB_B_MASK)


void sub_0209FAB8(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209ECF0(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209E650(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209DD54(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209FF0C(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209F3D0(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209E9A0(SPLManager *mgr, SPLParticle *ptcl);
void sub_0209E1D4(SPLManager *mgr, SPLParticle *ptcl);

void sub_020A1DA0(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_scl_in_out
void sub_020A1BD4(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_clr_in_out
void sub_020A1AF8(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_alp_in_out
void sub_020A1A94(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_tex_ptn_anm
void sub_020A1A48(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_chld_scl_out
void sub_020A19F0(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate); // spl_chld_alp_out

void sub_020A08DC(SPLEmitter *emtr, SPLList *list);
void sub_020A05BC(SPLParticle *ptcl, SPLEmitter *emtr, SPLList *list);

void sub_0209D150(SPLManager *mgr, SPLEmitter *emtr);
void sub_0209CF00(SPLManager *mgr);
void sub_0209D998(SPLEmitter *emtr, UnkSPLStruct4 *res, const VecFx32 *pos);
void spl_generate(SPLEmitter *emtr, SPLList *list);

#endif // SPL_INTERNAL_H
