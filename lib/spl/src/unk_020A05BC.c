#include "spl.h"

#include <nitro/fx/fx.h>


void sub_020A05BC(SPLParticle *ptcl, SPLEmitter *emtr, void *list)
{
    SPLParticle *chld;
    fx32 velBase, velRand;
    u32 rng;
    int i;
    UnkSPLStruct14 *chldRes = emtr->p_res->unk_14;
    fx32 vel = FX_MUL((fx32)(chldRes->unk_08.unk_00_0 << FX32_SHIFT), FX32_CONST(1 / 256.0f));

    for (i = 0; i < chldRes->unk_0C.unk_00_0; i++) {
        chld = (SPLParticle *)sub_020A22B8(list);
        if (chld == NULL) {
            return;
        }
        sub_020A2304((SPLList *)&emtr->unk_4C, (SPLNode *)chld);

        chld->unk_08 = ptcl->unk_08;

        velBase = FX_MUL(ptcl->unk_14.x, vel);
        velRand = (fx32)(chldRes->unk_02 * rng_next(0x17) - chldRes->unk_02 * 256) >> 8;
        chld->unk_14.x = velBase + velRand;

        velBase = FX_MUL(ptcl->unk_14.y, vel);
        velRand = (fx32)(chldRes->unk_02 * rng_next(0x17) - chldRes->unk_02 * 256) >> 8;
        chld->unk_14.y = velBase + velRand;

        velBase = FX_MUL(ptcl->unk_14.z, vel);
        velRand = (fx32)(chldRes->unk_02 * rng_next(0x17) - chldRes->unk_02 * 256) >> 8;
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

asm static void sub_020A08DC(SPLEmitter *emtr, SPLList *list)
{
    stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov sb, r0
	ldr r0, [sb, #0x20]
	ldrsh r3, [sb, #0x4e]
	str r0, [sp, #4]
	ldr r0, [sb, #0x58]
	ldr r2, _020A15E8
	add r3, r0, r3
	ldr r0, [sp, #4]
	str r1, [sp]
	ldr r8, [r0]
	and r0, r3, r2
	strh r0, [sb, #0x4e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r1, r0, lsr #0x1c
	mov r0, r3, asr #0xc
	cmp r1, #2
	str r0, [sp, #0xc]
	beq _020A0944
	cmp r1, #3
	beq _020A0944
	sub r0, r1, #5
	cmp r0, #4
	bhi _020A094C
_020A0944:
	mov r0, sb
	bl sub_020A1768
_020A094C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	addle sp, sp, #0xc4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0x1000
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	ldr r6, _020A15EC
	ldr r4, _020A15F0
	ldr r5, _020A15F4
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
_020A099C:
	ldr r0, [sp]
	bl sub_020A22B8
	movs r7, r0
	addeq sp, sp, #0xc4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	add r0, sb, #8
	mov r1, r7
	bl sub_020A2304
	ldr r0, [r8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020A10DC
_020A09D8:
	b _020A0A00
	b _020A0A1C
	b _020A0A8C
	b _020A0AF4
	b _020A0B88
	b _020A0C88
	b _020A0F80
	b _020A1004
	b _020A0D44
	b _020A0E14
_020A0A00:
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	str r0, [r7, #8]
	b _020A10DC
_020A0A1C:
	add r0, r7, #8
	bl sub_020A23B0
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0A8C:
	add r0, sp, #0x58
	bl sub_020A2354
	ldr r2, [sp, #0x58]
	ldr r0, [sb, #0x5c]
	mov r1, #0x800
	smull r3, r0, r2, r0
	adds r2, r3, r1
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x20]
	str r2, [sp, #0x5c]
	str r1, [sp, #0x60]
	add r1, sp, #0x58
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0AF4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	bl _s32_div_f
	ldr r1, [sp, #0x18]
	mov r0, r0, asr #4
	add r1, r1, #0x10000
	mov r2, r0, lsl #1
	str r1, [sp, #0x18]
	ldr r0, _020A15F8
	mov r1, r2, lsl #1
	ldrsh r0, [r0, r1]
	add r1, r2, #1
	mov r2, r1, lsl #1
	ldr r1, _020A15F8
	ldrsh r3, [r1, r2]
	ldr r2, [sb, #0x5c]
	mov r1, #0x800
	smull sl, r2, r0, r2
	adds sl, sl, r1
	adc r0, r2, #0
	mov r2, sl, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x64]
	ldr r2, [sb, #0x5c]
	add r0, r7, #8
	smull sl, r2, r3, r2
	adds r3, sl, r1
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x24]
	str r2, [sp, #0x68]
	str r1, [sp, #0x6c]
	add r1, sp, #0x64
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0B88:
	add r0, r7, #8
	bl sub_020A23B0
	ldr r1, [r6, #0]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #8
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0C88:
	add r0, sp, #0x70
	bl sub_020A2354
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x70]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	ldr r0, [sb, #0x5c]
	mov r2, #0x800
	smull sl, r0, r3, r0
	adds sl, sl, r2
	adc r3, r0, #0
	mov r0, sl, lsr #0xc
	orr r0, r0, r3, lsl #20
	mov r3, r1, lsr #0x17
	mov r3, r3, lsl #0xc
	sub r3, r3, #0x100000
	mov r3, r3, asr #8
	smull sl, r3, r0, r3
	adds sl, sl, r2
	adc r0, r3, #0
	mov r3, sl, lsr #0xc
	orr r3, r3, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r3, [sp, #0x70]
	mov r0, r0, lsr #0x17
	mov r0, r0, lsl #0xc
	sub r0, r0, #0x100000
	mov r1, r0, asr #8
	ldr sl, [sp, #0x74]
	ldr r3, [sb, #0x5c]
	add r0, r7, #8
	smull fp, r3, sl, r3
	adds sl, fp, r2
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	smull r3, r1, sl, r1
	adds r2, r3, r2
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x74]
	add r1, sp, #0x70
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A0D44:
	add r0, r7, #8
	bl sub_020A23B0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x44
	bl VEC_Fx16CrossProduct
	ldrsh r1, [sp, #0x46]
	ldrsh r0, [sp, #0x48]
	ldrsh r2, [sp, #0x44]
	str r1, [sp, #0x80]
	str r0, [sp, #0x84]
	add r0, sp, #0x7c
	add r1, r7, #8
	str r2, [sp, #0x7c]
	bl VEC_DotProduct
	cmp r0, #0
	bgt _020A0DAC
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020A0DAC:
	ldr r2, [r7, #8]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r2, [r7, #0xc]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r2, [r7, #0x10]
	ldr r1, [sb, #0x5c]
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0E14:
	add r0, r7, #8
	bl sub_020A23B0
	add r0, sb, #0x84
	add r1, sb, #0x8a
	add r2, sp, #0x4a
	bl VEC_Fx16CrossProduct
	ldrsh r1, [sp, #0x4c]
	ldrsh r0, [sp, #0x4e]
	ldrsh r2, [sp, #0x4a]
	str r1, [sp, #0x8c]
	str r0, [sp, #0x90]
	add r0, sp, #0x88
	add r1, r7, #8
	str r2, [sp, #0x88]
	bl VEC_DotProduct
	cmp r0, #0
	bge _020A0E7C
	ldr r0, [r7, #8]
	rsb r0, r0, #0
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	rsb r0, r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	rsb r0, r0, #0
	str r0, [r7, #0x10]
_020A0E7C:
	ldr r1, [r6, #0]
	mov r0, #0x800
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #8]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #8]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0xc]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0xc]
	ldr r1, [r6, #0]
	mla r2, r1, r4, r5
	str r2, [r6, #0]
	mov r1, r2, lsr #0x17
	mov r1, r1, lsl #0xc
	sub r1, r1, #0x100000
	mov r1, r1, asr #9
	add r1, r1, #0x800
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #0x5c]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r2, r1, r3, r1
	adds r2, r2, r0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x10]
	b _020A10DC
_020A0F80:
	add r0, r7, #0x14
	bl sub_020A2354
	ldr r2, [r7, #0x14]
	ldr r1, [sb, #0x5c]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r2, r3, r0
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x94]
	ldr r3, [r7, #0x18]
	ldr r2, [sb, #0x5c]
	ldr r1, [r6, #0]
	smull sl, r2, r3, r2
	adds r3, sl, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r2, [sp, #0x98]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0x9c]
	add r1, sp, #0x94
	mov r2, sb
	bl sub_020A1608
	b _020A10DC
_020A1004:
	add r0, r7, #0x14
	bl sub_020A2354
	ldr r0, [r6, #0]
	mov r3, #0x800
	mla r2, r0, r4, r5
	str r2, [r6, #0]
	ldr sl, [r7, #0x14]
	ldr r0, [sb, #0x5c]
	mov r1, r2, lsr #0x17
	smull fp, r0, sl, r0
	adds fp, fp, r3
	mov r1, r1, lsl #0xc
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	sub r1, r1, #0x100000
	orr r0, r0, sl, lsl #20
	mov r1, r1, asr #8
	smull sl, r1, r0, r1
	adds sl, sl, r3
	adc r0, r1, #0
	mov r1, sl, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0xa0]
	mla r1, r2, r4, r5
	str r1, [r6, #0]
	mov r2, r1, lsr #0x17
	mov r2, r2, lsl #0xc
	sub r2, r2, #0x100000
	ldr sl, [r7, #0x18]
	ldr r0, [sb, #0x5c]
	mov r2, r2, asr #8
	smull fp, r0, sl, r0
	adds fp, fp, r3
	adc sl, r0, #0
	mov r0, fp, lsr #0xc
	orr r0, r0, sl, lsl #20
	smull sl, r2, r0, r2
	adds r3, sl, r3
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	str r2, [sp, #0xa4]
	mov r1, r0, lsr #0x17
	ldr r2, [sb, #0x60]
	add r0, r7, #8
	mul r1, r2, r1
	sub r1, r1, r2, lsl #8
	mov r1, r1, asr #8
	str r1, [sp, #0xa8]
	add r1, sp, #0xa0
	mov r2, sb
	bl sub_020A1608
_020A10DC:
	ldr r1, [r6, #0]
	mla r0, r1, r4, r5
	str r0, [r6, #0]
	ldrb r2, [r8, #0x42]
	mov r1, r0, lsr #0x18
	ldr r3, [sb, #0x64]
	mul r1, r2, r1
	add r2, r2, #0xff
	sub r1, r2, r1, asr #7
	mul r1, r3, r1
	mov r1, r1, asr #8
	str r1, [sp, #0x10]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r2, [r8, #0x42]
	ldr r3, [sb, #0x68]
	ldr r1, [r8]
	mul r0, r2, r0
	add r2, r2, #0xff
	sub r0, r2, r0, asr #7
	mul r0, r3, r0
	mov r0, r0, asr #8
	str r0, [sp, #0x14]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #6
	bne _020A1228
	ldrsh r0, [sb, #0x84]
	ldr r1, [r7, #0x14]
	mov r2, #0x800
	smull r3, r0, r1, r0
	adds r1, r3, r2
	ldrsh r3, [sb, #0x8a]
	ldr lr, [r7, #0x18]
	mov ip, r1, lsr #0xc
	smull sl, r3, lr, r3
	adc r0, r0, #0
	adds sl, sl, r2
	orr ip, ip, r0, lsl #20
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r3, ip, sl
	str r3, [sp, #0xb8]
	ldrsh sl, [sb, #0x86]
	ldr r3, [r7, #0x14]
	ldrsh lr, [sb, #0x8c]
	smull ip, sl, r3, sl
	adds ip, ip, r2
	ldr fp, [r7, #0x18]
	adc sl, sl, #0
	smull r3, lr, fp, lr
	mov ip, ip, lsr #0xc
	adds r3, r3, r2
	orr ip, ip, sl, lsl #20
	adc sl, lr, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, sl, lsl #20
	add r3, ip, r3
	str r3, [sp, #0xbc]
	ldr sl, [r7, #0x18]
	ldrsh fp, [sb, #0x88]
	ldr r3, [r7, #0x14]
	str sl, [sp, #0x28]
	smull ip, fp, r3, fp
	ldrsh sl, [sb, #0x8e]
	ldr r3, [sp, #0x28]
	adds ip, ip, r2
	smull sl, lr, r3, sl
	adc r3, fp, #0
	adds r2, sl, r2
	mov sl, ip, lsr #0xc
	orr sl, sl, r3, lsl #20
	adc r3, lr, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r2, sl, r2
	add r0, sp, #0xb8
	add r1, sp, #0xac
	str r2, [sp, #0xc0]
	bl VEC_Normalize
	b _020A1264
_020A1228:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _020A1258
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _020A1258
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _020A1258
	add r0, sp, #0xac
	bl sub_020A23B0
	b _020A1264
_020A1258:
	add r0, r7, #8
	add r1, sp, #0xac
	bl VEC_Normalize
_020A1264:
	ldr r2, [sp, #0xac]
	ldr r1, [sp, #0x10]
	mov r0, #0x800
	smull sl, r1, r2, r1
	adds r2, sl, r0
	add sl, sb, #0x28
	str sl, [sp, #0x2c]
	add sl, r7, #0x38
	str sl, [sp, #0x30]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldrsh r1, [sb, #0x50]
	ldr sl, [sp, #0x14]
	ldr r3, [sb, #0x40]
	smull fp, sl, r1, sl
	adds fp, fp, r0
	adc r1, sl, #0
	mov sl, fp, lsr #0xc
	orr sl, sl, r1, lsl #20
	add r1, r2, sl
	add r1, r3, r1
	str r1, [r7, #0x14]
	ldr r3, [sp, #0xb0]
	ldr r1, [sp, #0x10]
	ldrsh sl, [sb, #0x52]
	smull fp, r1, r3, r1
	adds fp, fp, r0
	adc r3, r1, #0
	mov r1, fp, lsr #0xc
	orr r1, r1, r3, lsl #20
	ldr r3, [sp, #0x14]
	ldr r2, [sb, #0x44]
	smull fp, r3, sl, r3
	adds sl, fp, r0
	adc r3, r3, #0
	mov sl, sl, lsr #0xc
	orr sl, sl, r3, lsl #20
	add r1, r1, sl
	add r1, r2, r1
	str r1, [r7, #0x18]
	ldr r1, [sp, #0xb4]
	ldr r2, [sp, #0x10]
	ldrsh lr, [sb, #0x54]
	smull sl, r3, r1, r2
	ldr r1, [sp, #0x14]
	adds sl, sl, r0
	smull r2, r1, lr, r1
	adc r3, r3, #0
	adds r0, r2, r0
	mov r2, sl, lsr #0xc
	orr r2, r2, r3, lsl #20
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr ip, [sb, #0x48]
	add r0, r2, r0
	add r0, ip, r0
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x40]
	ldr r2, [sb, #0x6c]
	mul r0, r1, r0
	add r1, r1, #0xff
	sub r0, r1, r0, asr #7
	mul r0, r2, r0
	mov r0, r0, asr #8
	str r0, [r7, #0x30]
	ldr r0, [sp, #0x34]
	strh r0, [r7, #0x34]
	ldr r0, [r8]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _020A141C
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _020A141C
	ldr r0, [r6, #0]
	ldr r3, _020A15FC
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr r2, [r1, #8]
	ldr r1, _020A1600
	umull r1, sl, r0, r1
	mov sl, sl, lsr #1
	umull sl, fp, r3, sl
	ldrh r1, [r2]
	sub sl, r0, sl
	strh r1, [sp, #0x50]
	ldrh r0, [r8, #0x22]
	mov r1, sl, lsl #1
	strh r0, [sp, #0x52]
	ldrh r0, [r2, #2]
	strh r0, [sp, #0x54]
	add r0, sp, #0x50
	ldrh r0, [r0, r1]
	strh r0, [r7, #0x36]
	b _020A1424
_020A141C:
	ldrh r0, [r8, #0x22]
	strh r0, [r7, #0x36]
_020A1424:
	ldrh r1, [r7, #0x2e]
	ldrb r0, [sb, #0x81]
	bic r1, r1, #0x1f
	and r0, r0, #0x1f
	orr r0, r1, r0
	strh r0, [r7, #0x2e]
	ldrh r0, [r7, #0x2e]
	bic r0, r0, #0x3e0
	orr r0, r0, #0x3e0
	strh r0, [r7, #0x2e]
	ldr r0, [r8]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	strneh r1, [r7, #0x20]
	ldreqh r0, [sb, #0x56]
	streqh r0, [r7, #0x20]
	ldr r0, [r8]
	mov r0, r0, lsl #0x13
	movs r0, r0, lsr #0x1f
	ldreq r0, [sp, #0x38]
	streqh r0, [r7, #0x22]
	beq _020A14B4
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldrsh r2, [r8, #0x34]
	ldrsh r1, [r8, #0x36]
	sub r1, r1, r2
	mul r0, r1, r0
	add r0, r0, r2, lsl #12
	mov r0, r0, lsr #0xc
	strh r0, [r7, #0x22]
_020A14B4:
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x18
	ldrb r1, [r8, #0x41]
	ldrh r2, [sb, #0x70]
	mul r0, r1, r0
	mov r0, r0, asr #8
	rsb r0, r0, #0xff
	mul r0, r2, r0
	mov r0, r0, asr #8
	add r0, r0, #1
	strh r0, [r7, #0x24]
	ldr r0, [sp, #0x3c]
	strh r0, [r7, #0x26]
	ldr r0, [r8]
	mov r0, r0, lsl #0x14
	movs r1, r0, lsr #0x1f
	beq _020A1544
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _020A1544
	ldr r0, [r6, #0]
	mla r1, r0, r4, r5
	str r1, [r6, #0]
	mov r0, r1, lsr #0x14
	ldr r1, [sp, #4]
	ldr sl, [r1, #0x10]
	ldrb r1, [sl, #8]
	bl _u32_div_f
	ldrb r0, [sl, r1]
	strb r0, [r7, #0x2c]
	b _020A1574
_020A1544:
	cmp r1, #0
	beq _020A156C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r1, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	ldreqb r0, [r1]
	streqb r0, [r7, #0x2c]
	beq _020A1574
_020A156C:
	ldrb r0, [r8, #0x47]
	strb r0, [r7, #0x2c]
_020A1574:
	ldr r1, [sp, #4]
	ldr r0, _020A1604
	ldr r1, [r1, #0]
	ldrb r1, [r1, #0x48]
	bl _s32_div_f
	strh r0, [r7, #0x28]
	ldrh r1, [r7, #0x24]
	ldr r0, _020A1604
	bl _s32_div_f
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0x40]
	strb r0, [r7, #0x2d]
	ldr r0, [r8]
	mov r0, r0, lsl #0xb
	movs r0, r0, lsr #0x1f
	ldrne r0, [r6]
	mlane r1, r0, r4, r5
	strne r1, [r6]
	movne r0, r1, lsr #0x18
	strneb r0, [r7, #0x2d]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _020A099C
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
}

void sub_020A1608(VecFx32 *ptclPos, VecFx32 *pos, SPLEmitter *emtr)
{
    VecFx16 vec;
    VEC_Fx16CrossProduct(&emtr->unk_F4, &emtr->unk_FA, &vec);
    VEC_Fx16Normalize(&vec, &vec);

    ptclPos->x = FX_MUL(pos->x, emtr->unk_F4.x) + FX_MUL(pos->y, emtr->unk_FA.x) + FX_MUL(pos->z, vec.x);
    ptclPos->y = FX_MUL(pos->x, emtr->unk_F4.y) + FX_MUL(pos->y, emtr->unk_FA.y) + FX_MUL(pos->z, vec.y);
    ptclPos->z = FX_MUL(pos->x, emtr->unk_F4.z) + FX_MUL(pos->y, emtr->unk_FA.z) + FX_MUL(pos->z, vec.z);
}

extern VecFx16 Unk_02100DB0;

void sub_020A1768(SPLEmitter *emtr)
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
