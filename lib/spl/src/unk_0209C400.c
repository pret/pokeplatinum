#include "spl.h"

#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>
#include <nitro/fx/fx.h>

void SPL_0209C400(SPLManager *p0)
{
    SPLEmitter *next;
    SPLEmitter *emtr = p0->unk_04.unk_00;
    
    while (emtr != NULL) {
        next = emtr->unk_00;
        SPL_0209C444(p0, emtr);
        emtr = next;
    }
}

void SPL_0209C444(SPLManager *p0, SPLEmitter *p1)
{
    SPLEmitter *v0 = (SPLEmitter *)sub_020A22B8((SPLList *)&p1->unk_08);
    if (v0 != NULL) {
        do {
            sub_020A2304((SPLList *)&p0->unk_1C, (SPLNode *)v0);
            v0 = (SPLEmitter *)sub_020A22B8((SPLList *)&p1->unk_08);
        } while (v0 != NULL);
    }
    v0 = (SPLEmitter *)sub_020A22B8((SPLList *)&p1->unk_4C);
    if (v0 != NULL) {
        do {
            sub_020A2304((SPLList *)&p0->unk_1C, (SPLNode *)v0);
            v0 = (SPLEmitter *)sub_020A22B8((SPLList *)&p1->unk_4C);
        } while (v0 != NULL);
    }
    sub_020A2238((SPLList *)&p0->unk_04, (SPLNode *)p1);
    sub_020A2304((SPLList *)&p0->unk_10, (SPLNode *)p1);
}

SPLEmitter * SPL_0209C4D8(SPLManager *mgr, int resno, void(*fpcb)(SPLEmitter*))
{
    SPLEmitter *emtr;

    emtr = NULL;
    if (mgr->unk_10.unk_00 != NULL) {
        VecFx32 v0 = { 0, 0, 0 };
        emtr = (SPLEmitter*)sub_020A22B8((SPLList *)&mgr->unk_10);
        sub_0209D998(emtr, mgr->unk_28 + resno, &v0);
        if (fpcb != NULL) {
            fpcb(emtr);
        }
        sub_020A2304((SPLList *)&mgr->unk_04, (SPLNode *)emtr);
        if (emtr->p_res->unk_00->unk_00.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

SPLEmitter *SPL_0209C56C(SPLManager *mgr, int resno, const VecFx32 *pos)
{
    SPLEmitter *emtr = NULL;

    if (mgr->unk_10.unk_00 != NULL) {
        emtr = (SPLEmitter *)sub_020A22B8((SPLList *)&mgr->unk_10);
        sub_0209D998(emtr, mgr->unk_28 + resno, pos);
        sub_020A2304((SPLList *)&mgr->unk_04, (SPLNode *)emtr);
        if (emtr->p_res->unk_00->unk_00.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

void SPL_0209C5E0(SPLManager *mgr, const MtxFx43 *cmr)
{
    SPLEmitter *emtr;
    
    reg_G3X_DISP3DCNT = (reg_G3X_DISP3DCNT & ~(REG_G3X_DISP3DCNT_GO_MASK | REG_G3X_DISP3DCNT_RO_MASK)) | REG_G3X_DISP3DCNT_ABE_MASK;
    mgr->unk_40.unk_04 = cmr;
    if (!mgr->unk_38.unk_03_0) {
        emtr = mgr->unk_04.unk_00;

        while (emtr != NULL) {
            mgr->unk_40.unk_00 = emtr;
            if (!emtr->unk_94.stop_draw) {
                sub_0209CF00(mgr);
            }
            emtr = emtr->unk_00;
        }

        return;
    }

    emtr = mgr->unk_04.unk_08;
    while (emtr != NULL) {
        mgr->unk_40.unk_00 = emtr;
        if (!emtr->unk_94.stop_draw) {
            sub_0209CF00(mgr);
        }
        emtr = emtr->unk_04;
    }
}

void SPL_0209C6A8(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLEmitter *next;

    emtr = mgr->unk_04.unk_00;
    while (emtr != NULL) {
        UnkSPLStruct9 *base = emtr->p_res->unk_00;
        next = emtr->unk_00;

        if (!emtr->unk_94.started && emtr->unk_BC >= base->unk_32) {
            emtr->unk_94.started = TRUE;
            emtr->unk_BC = 0;
        }

        if (!emtr->unk_94.stop_calc) {
            if (emtr->unk_F0.unk_02_0 == 0 || mgr->unk_48 == emtr->unk_F0.unk_02_0 - 1) {
                sub_0209D150(mgr, emtr);
            }
        }

        if (((base->unk_00.unk_05_6 && base->unk_3C != 0 && emtr->unk_94.started && emtr->unk_BC > base->unk_3C)
            || emtr->unk_94.terminate) && emtr->unk_08.unk_04 == 0 && emtr->unk_4C.unk_04 == 0) {
            SPLEmitter *e0 = (SPLEmitter *)sub_020A2238((SPLList *)&mgr->unk_04, (SPLNode *)emtr);
            sub_020A2304((SPLList *)&mgr->unk_10, (SPLNode *)e0);
        }
        
        emtr = next;
    }

    mgr->unk_48 += 1;
    if (mgr->unk_48 > 1) {
        mgr->unk_48 = 0;
    }
}

int SPL_0209C7E0(SPLManager *mgr)
{
    return SPL_0209C808(mgr, sub_0209CE90);
}

int SPL_0209C7F4(SPLManager *mgr)
{
    return SPL_0209C8BC(mgr, sub_0209CEB4);
}

BOOL SPL_0209C808(SPLManager *mgr, u32 (*func)(u32, BOOL))
{
    s32 i;
    UnkSPLStruct5 *tex;
    UnkSPLStruct15 *hdr;
    u32 ofs;
    
    GX_BeginLoadTexPltt();

    for (i = 0; i < mgr->unk_32; i++) {
        ofs = 0;
        tex = &mgr->unk_2C[i];
        hdr = (UnkSPLStruct15 *)tex->unk_00;

        if (hdr->unk_10 != 0) {
            ofs = func(hdr->unk_10, hdr->unk_04.val2_00_0 == 2);
            GX_LoadTexPltt((u8 *)tex->unk_00 + hdr->unk_0C, ofs, hdr->unk_10);
        }

        tex->unk_08 = ofs;
    }

    GX_EndLoadTexPltt();
    return TRUE;
}

BOOL SPL_0209C8BC(SPLManager *mgr, u32 (*func)(u32, BOOL))
{
    int i;
    u32 addr;

    GX_BeginLoadTex();
    
    for (i = 0; i < mgr->unk_32; i++) {
        UnkSPLStruct5 *textures = mgr->unk_2C;
        UnkSPLStruct5 *tex = &textures[i];
        UnkSPLStruct15 *hdr = (UnkSPLStruct15 *)tex->unk_00;
        
        if (hdr->unk_04.val2_02_1) {
            tex->unk_04 = textures[hdr->unk_04.val2_02_2].unk_04;
        } else {
            addr = func(hdr->unk_08, hdr->unk_04.val2_00_0 == 5);
            GX_LoadTex(((UnkSPLStruct15 *)tex->unk_00) + 1, addr, hdr->unk_08);
            tex->unk_04 = addr;
        }
    }

    GX_EndLoadTex();
    return TRUE;
}

asm static void SPL_0209C988(SPLManager *mgr, void *spa)
{
    stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
    sub sp, sp, #0x2c
    mov sb, r1
    ldrh r1, [sb, #8]
    mov sl, r0
    mov r8, #0x20
    strh r1, [sl, #0x30]
    ldrh r0, [sb, #0xa]
    strh r0, [sl, #0x32]
    ldrh r0, [sl, #0x30]
    ldr r1, [sl]
    mov r0, r0, lsl #5
    blx r1
    str r0, [sl, #0x28]
    ldrh r2, [sl, #0x30]
    ldr r0, [sl, #0x28]
    mov r1, #0
    mov r2, r2, lsl #5
    bl MI_CpuFill8
    ldrh r1, [sl, #0x30]
    mov r0, #0
    str r0, [sp]
    cmp r1, #0
    ble _0209CC28
    mov r6, r0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    str r0, [sp, #0x18]
    str r0, [sp, #0x1c]
    str r0, [sp, #0x20]
    str r0, [sp, #0x24]
_0209CA04:
    ldr r1, [sl, #0x28]
    add r0, sb, r8
    str r0, [r1, r6]
    ldr r0, [r1, r6]
    add r8, r8, #0x58
    ldr r0, [r0, #0]
    add r7, r1, r6
    str r0, [sp, #0x28]
    mov r0, r0, lsl #0x17
    movs r0, r0, lsr #0x1f
    addne r0, sb, r8
    strne r0, [r7, #4]
    ldreq r0, [sp, #0x10]
    addne r8, r8, #0xc
    streq r0, [r7, #4]
    ldr r0, [sp, #0x28]
    mov r0, r0, lsl #0x16
    movs r0, r0, lsr #0x1f
    addne r0, sb, r8
    strne r0, [r7, #8]
    ldreq r0, [sp, #0x14]
    addne r8, r8, #0xc
    streq r0, [r7, #8]
    ldr r0, [sp, #0x28]
    mov r0, r0, lsl #0x15
    movs r0, r0, lsr #0x1f
    addne r0, sb, r8
    strne r0, [r7, #0xc]
    ldreq r0, [sp, #0x18]
    addne r8, r8, #8
    streq r0, [r7, #0xc]
    ldr r0, [sp, #0x28]
    mov r0, r0, lsl #0x14
    movs r0, r0, lsr #0x1f
    addne r0, sb, r8
    strne r0, [r7, #0x10]
    ldreq r0, [sp, #0x1c]
    addne r8, r8, #0xc
    streq r0, [r7, #0x10]
    ldr r0, [sp, #0x28]
    mov r0, r0, lsl #0xf
    movs r0, r0, lsr #0x1f
    addne r0, sb, r8
    strne r0, [r7, #0x14]
    ldreq r0, [sp, #0x20]
    addne r8, r8, #0x14
    streq r0, [r7, #0x14]
    ldr r0, [sp, #0x28]
    mov r1, r0, lsl #7
    mov r2, r0, lsl #6
    mov r5, r1, lsr #0x1f
    mov r4, r2, lsr #0x1f
    add r1, r5, r2, lsr #31
    mov r2, r0, lsl #5
    add r1, r1, r2, lsr #31
    mov r3, r0, lsl #4
    mov fp, r2, lsr #0x1f
    add r2, r1, r3, lsr #31
    mov r1, r3, lsr #0x1f
    mov ip, r0, lsl #3
    str r1, [sp, #4]
    mov r3, r0, lsl #2
    mov r0, ip, lsr #0x1f
    add r1, r2, ip, lsr #31
    str r0, [sp, #8]
    add r0, r1, r3, lsr #31
    strh r0, [r7, #0x1c]
    mov r0, r3, lsr #0x1f
    str r0, [sp, #0xc]
    ldrh r0, [r7, #0x1c]
    cmp r0, #0
    beq _0209CC04
    mov r0, r0, lsl #3
    ldr r1, [sl]
    blx r1
    str r0, [r7, #0x18]
    cmp r5, #0
    ldr r0, [r7, #0x18]
    beq _0209CB58
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCE8
    add r8, r8, #8
    str r1, [r0, #0]
    add r0, r0, #8
_0209CB58:
    cmp r4, #0
    beq _0209CB78
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCEC
    add r8, r8, #8
    str r1, [r0, #0]
    add r0, r0, #8
_0209CB78:
    cmp fp, #0
    beq _0209CB98
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCF0
    add r8, r8, #0x10
    str r1, [r0, #0]
    add r0, r0, #8
_0209CB98:
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _0209CBBC
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCF4
    add r8, r8, #4
    str r1, [r0, #0]
    add r0, r0, #8
_0209CBBC:
    ldr r1, [sp, #8]
    cmp r1, #0
    beq _0209CBE0
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCF8
    add r8, r8, #8
    str r1, [r0, #0]
    add r0, r0, #8
_0209CBE0:
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0209CC0C
    add r1, sb, r8
    str r1, [r0, #4]
    ldr r1, _0209CCFC
    add r8, r8, #0x10
    str r1, [r0, #0]
    b _0209CC0C
_0209CC04:
    ldr r0, [sp, #0x24]
    str r0, [r7, #0x18]
_0209CC0C:
    ldr r0, [sp]
    ldrh r1, [sl, #0x30]
    add r0, r0, #1
    add r6, r6, #0x20
    str r0, [sp]
    cmp r0, r1
    blt _0209CA04
_0209CC28:
    ldrh r2, [sl, #0x32]
    mov r0, #0x14
    ldr r1, [sl]
    mul r0, r2, r0
    blx r1
    str r0, [sl, #0x2c]
    ldrh r3, [sl, #0x32]
    mov r1, #0x14
    ldr r0, [sl, #0x2c]
    mul r2, r3, r1
    mov r1, #0
    bl MI_CpuFill8
    ldrh r0, [sl, #0x32]
    mov r3, #0
    cmp r0, #0
    addle sp, sp, #0x2c
    ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
    bxle lr
    mov r4, r3
    mov r0, #1
_0209CC78:
    ldr r2, [sl, #0x2c]
    add r1, sb, r8
    str r1, [r2, r4]
    ldr r5, [r1, #4]
    add r2, r2, r4
    mov r5, r5, lsl #0x18
    mov r5, r5, lsr #0x1c
    add r5, r5, #3
    mov r5, r0, lsl r5
    strh r5, [r2, #0x10]
    ldr r5, [r1, #4]
    add r3, r3, #1
    mov r5, r5, lsl #0x14
    mov r5, r5, lsr #0x1c
    add r5, r5, #3
    mov r5, r0, lsl r5
    strh r5, [r2, #0x12]
    ldr r5, [r1, #4]
    add r4, r4, #0x14
    str r5, [r2, #0xc]
    ldrh r2, [sl, #0x32]
    ldr r1, [r1, #0x1c]
    cmp r3, r2
    add r8, r8, r1
    blt _0209CC78
    add sp, sp, #0x2c
    ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
    bx lr
}

SPLManager *SPL_0209CD00(void *(*alloc)(u32), u16 max_emtr, u16 max_ptcl, u16 fixPolyID, u16 minPolyID, u16 maxPolyID)
{
    SPLManager *mgr;
    SPLEmitter *emtr;
    SPLParticle *ptcl;
    int i;

    mgr = alloc(sizeof(SPLManager));
    MI_CpuFill8(mgr, 0, sizeof(SPLManager));

    mgr->unk_34 = max_emtr;
    mgr->unk_36 = max_ptcl;

    mgr->unk_38.unk_00_0 = minPolyID;
    mgr->unk_38.unk_00_6 = maxPolyID;
    mgr->unk_38.unk_01_4 = mgr->unk_38.unk_00_0;
    mgr->unk_38.unk_02_2 = fixPolyID;
    mgr->unk_38.unk_03_0 = FALSE;
    mgr->unk_38.unk_03_7 = 0;

    mgr->unk_00 = alloc;
    
    mgr->unk_04.unk_04 = 0;
    mgr->unk_10.unk_04 = 0;
    mgr->unk_1C.unk_04 = 0;
    
    mgr->unk_04.unk_00 = NULL;
    mgr->unk_10.unk_00 = NULL;
    mgr->unk_1C.unk_00 = NULL;

    mgr->unk_3C = 0;
    mgr->unk_48 = 0;

    emtr = alloc(max_emtr * sizeof(SPLEmitter));
    MI_CpuFill8(emtr, 0, max_emtr * sizeof(SPLEmitter));

    for (i = 0; i < max_emtr; ++i) {
        sub_020A2304((SPLList *)&mgr->unk_10, (SPLNode *)&emtr[i]);
    }

    ptcl = alloc(max_ptcl * sizeof(SPLParticle));
    MI_CpuFill8(ptcl, 0, max_ptcl * sizeof(SPLParticle));

    for (i = 0; i < max_ptcl; ++i) {
        sub_020A2304((SPLList *)&mgr->unk_1C, (SPLNode *)&ptcl[i]);
    }

    mgr->unk_28 = NULL;
    mgr->unk_2C = NULL;
    mgr->unk_30 = mgr->unk_32 = 0;

    return mgr;
}

u32 sub_0209CE90(u32 size, BOOL is4Pltt)
{
    return (NNS_GfdAllocPlttVram(size, is4Pltt, 0) & 0xFFFF) * 8;
}

u32 sub_0209CEC8(u32 size, BOOL is4x4)
{
    return (NNS_GfdAllocTexVram(size, is4x4, 0) & 0xFFFF) * 8;
}
