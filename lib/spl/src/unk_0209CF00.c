#include "spl.h"

#include <nitro/fx/fx.h>


void sub_0209CF00(SPLManager *mgr)
{
    UnkSPLStruct9 *resBase;

    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    if (resBase->unk_00.unk_06_5) {
        sub_0209CF7C(mgr);

        if (!resBase->unk_00.unk_06_6) {
            sub_0209D064(mgr);
        }
    } else {
        if (!resBase->unk_00.unk_06_6) {
            sub_0209D064(mgr);
        }

        sub_0209CF7C(mgr);
    }
}

void sub_0209CF7C(SPLManager *mgr)
{
    SPLEmitter *emtr;
    UnkSPLStruct4 *res;
    DrawFunc drawFunc;
    SPLParticle *ptcl;

    emtr = mgr->unk_40.unk_00;
    drawFunc = NULL;
    res = emtr->p_res;

    if (!res->unk_00->unk_00.unk_06_0) {
        return;
    }

    sub_0209DC68(mgr->unk_2C + res->unk_14->unk_0C.unk_03_0);

    switch (res->unk_14->unk_00.unk_02_7) {
        case 0: drawFunc = sub_0209FAB8; break;
        case 1: drawFunc = sub_0209ECF0; break;
        case 2: drawFunc = sub_0209E650; break;
        case 3: drawFunc = sub_0209DD54; break;
        case 4: drawFunc = sub_0209DD54; break;
    }

    ptcl = emtr->unk_4C.unk_00;
    while (ptcl != NULL) {
        drawFunc(mgr, ptcl);
        ptcl = ptcl->unk_00;
    }
}

void sub_0209D064(SPLManager *mgr)
{
    SPLEmitter *emtr;
    UnkSPLStruct9 *resBase;
    SPLParticle *ptcl;
    DrawFunc drawFunc;
    SetTexFunc setTexFunc;

    emtr = mgr->unk_40.unk_00;
    resBase = emtr->p_res->unk_00;
    drawFunc = NULL;

    sub_0209DC68(mgr->unk_2C + resBase->unk_48.unk_03_0);

    switch (resBase->unk_00.unk_04_4) {
        case 0: drawFunc = sub_0209FF0C; break;
        case 1: drawFunc = sub_0209F3D0; break;
        case 2: drawFunc = sub_0209E9A0; break;
        case 3: drawFunc = sub_0209E1D4; break;
        case 4: drawFunc = sub_0209E1D4; break;
    }

    setTexFunc = resBase->unk_00.unk_05_3 ? sub_0209DC68 : sub_0209DC64;
    ptcl = emtr->unk_08.unk_00;

    while (ptcl != NULL) {
        setTexFunc(mgr->unk_2C + ptcl->unk_2C.unk_00);
        drawFunc(mgr, ptcl);
        ptcl = ptcl->unk_00;
    }
}

asm void sub_0209D150(SPLManager *mgr, SPLEmitter *emtr)
{
    stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sb, r1
	ldr r8, [sb, #0x20]
	mov sl, r0
	ldr r0, [r8, #0x14]
	ldr r4, [r8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r6, #0
	str r0, [sp, #0x24]
	ldrb r0, [r4, #0x46]
	ldr r2, [sb, #0x90]
	ldrh r7, [r8, #0x1c]
	add r0, r0, #0x180
	cmp r2, #0
	str r0, [sp, #8]
	beq _0209D1A4
	mov r0, sb
	mov r1, r6
	blx r2
_0209D1A4:
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	beq _0209D1BC
	ldrh r0, [sb, #0x4c]
	cmp r0, r1
	bhs _0209D204
_0209D1BC:
	ldrh r0, [sb, #0x4c]
	ldrb r1, [sb, #0x80]
	bl _s32_div_f
	cmp r1, #0
	bne _0209D204
	ldr r1, [sb, #0x24]
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _0209D204
	mov r0, r1, lsl #0x1e
	movs r0, r0, lsr #0x1f
	bne _0209D204
	mov r0, r1, lsl #0x1b
	movs r0, r0, lsr #0x1f
	beq _0209D204
	mov r0, sb
	add r1, sl, #0x1c
	bl sub_020A08DC
_0209D204:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x17
	movs r0, r0, lsr #0x1f
	beq _0209D234
	ldr r0, _0209D980 // =sub_020A1DA0
	add r6, r6, #1
	str r0, [sp, #0x28]
	ldr r0, [r8, #4]
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	str r0, [sp, #0x2c]
_0209D234:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x16
	movs r0, r0, lsr #0x1f
	beq _0209D280
	ldr r3, [r8, #8]
	ldrh r0, [r3, #8]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _0209D280
	ldr r2, _0209D984 // =sub_020A1BD4
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldrh r1, [r3, #8]
	mov r2, r6, lsl #3
	add r0, sp, #0x2c
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1f
	add r6, r6, #1
	str r1, [r0, r2]
_0209D280:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x15
	movs r0, r0, lsr #0x1f
	beq _0209D2BC
	ldr r2, _0209D988 // =sub_020A1AF8
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r8, #0xc]
	mov r2, r6, lsl #3
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	add r6, r6, #1
	mov r1, r1, lsl #0x17
	mov r1, r1, lsr #0x1f
	str r1, [r0, r2]
_0209D2BC:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x14
	movs r0, r0, lsr #0x1f
	beq _0209D304
	ldr r3, [r8, #0x10]
	ldr r0, [r3, #8]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	bne _0209D304
	ldr r2, _0209D98C // =sub_020A1A94
	add r1, sp, #0x28
	str r2, [r1, r6, lsl #3]
	ldr r1, [r3, #8]
	add r0, sp, #0x2c
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1f
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_0209D304:
	ldr r4, [sb, #8]
	cmp r4, #0
	beq _0209D640
	ldr r0, [sp, #0x24]
	add fp, sp, #0x28
	mov r2, r0, lsl #0x10
	mov r1, r0, lsl #0xf
	mov r0, r2, lsr #0x1f
	str r0, [sp, #0xc]
	mov r0, r1, lsr #0x1f
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x18]
_0209D338:
	ldr r0, [r4, #0]
	ldrh r1, [r4, #0x2a]
	str r0, [sp]
	ldrh r0, [r4, #0x26]
	cmp r6, #0
	ldr r5, [sp, #0x18]
	mul r2, r1, r0
	mov r1, r2, asr #8
	strb r1, [sp, #0x20]
	ldrh r1, [r4, #0x28]
	ldrb r2, [r4, #0x2d]
	mul r0, r1, r0
	add r0, r2, r0, asr #8
	strb r0, [sp, #0x21]
	ble _0209D3A0
_0209D374:
	add r2, fp, r5, lsl #3
	ldr ip, [r2, #4]
	add r2, sp, #0x20
	ldrb r2, [r2, ip]
	ldr r3, [fp, r5, lsl #3]
	mov r0, r4
	mov r1, r8
	blx r3
	add r5, r5, #1
	cmp r5, r6
	blt _0209D374
_0209D3A0:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x18]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addne r0, sb, #0x28
	addne r3, r4, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _0209D400
_0209D3D4:
	ldr r2, [r8, #0x18]
	mov r1, r4
	add r0, r2, r5, lsl #3
	ldr ip, [r2, r5, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx ip
	add r5, r5, #1
	cmp r5, r7
	blt _0209D3D4
_0209D400:
	ldr r0, [sp, #0x10]
	ldrh r1, [r4, #0x20]
	cmp r0, #0
	ldrsh r0, [r4, #0x22]
	add r0, r1, r0
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r4, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r4, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r4, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	beq _0209D538
	ldr r0, [sp, #4]
	ldrh r2, [r4, #0x24]
	ldrb r1, [r0, #0xd]
	ldrh r3, [r4, #0x26]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r0, r3, lsl #0xc
	smull r5, r3, r2, r1
	mov r1, #0x800
	adds r2, r5, r1
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, asr #8
	subs r0, r0, r1
	bmi _0209D538
	ldr r1, [sp, #4]
	mov r0, r0, asr #0xc
	ldrb r1, [r1, #0xe]
	bl _s32_div_f
	cmp r1, #0
	bne _0209D538
	mov r0, r4
	mov r1, sb
	add r2, sl, #0x1c
	bl sub_020A05BC
_0209D538:
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #1
	movs r0, r0, lsr #0x1f
	beq _0209D57C
	ldrh r0, [r4, #0x2e]
	ldr r1, [sl, #0x38]
	bic r0, r0, #0xfc00
	mov r1, r1, lsl #8
	mov r1, r1, lsr #0x1a
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	and r1, r1, #0x3f
	orr r0, r0, r1, lsl #10
	strh r0, [r4, #0x2e]
	b _0209D5FC
_0209D57C:
	ldrh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	add r1, sl, #0x38
	bic r0, r0, #0xfc00
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #10
	strh r0, [r4, #0x2e]
	ldr r2, [sl, #0x38]
	bic r0, r2, #0x3f000
	mov r2, r2, lsl #0xe
	mov r2, r2, lsr #0x1a
	add r2, r2, #1
	and r2, r2, #0x3f
	orr r0, r0, r2, lsl #12
	str r0, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r0, r2, lsl #0xe
	mov r3, r0, lsr #0x1a
	mov r0, r2, lsl #0x14
	cmp r3, r0, lsr #26
	bls _0209D5FC
	mov r0, r2, lsl #0x1a
	mov r0, r0, lsr #0x1a
	and r0, r0, #0x3f
	ldr r2, [r1, #0]
	bic r2, r2, #0x3f000
	orr r0, r2, r0, lsl #12
	str r0, [r1, #0]
_0209D5FC:
	ldrh r0, [r4, #0x26]
	add r0, r0, #1
	strh r0, [r4, #0x26]
	ldrh r1, [r4, #0x26]
	ldrh r0, [r4, #0x24]
	cmp r1, r0
	bls _0209D630
	mov r1, r4
	add r0, sb, #8
	bl sub_020A2238
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_020A2304
_0209D630:
	ldr r0, [sp]
	cmp r0, #0
	mov r4, r0
	bne _0209D338
_0209D640:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0xf
	movs r0, r0, lsr #0x1f
	beq _0209D948
	ldr r0, [sp, #4]
	mov r6, #0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	ldrne r0, _0209D990 // =sub_020A1A48
	strne r6, [sp, #0x4c]
	strne r0, [sp, #0x48]
	ldr r0, [sp, #4]
	addne r6, r6, #1
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	beq _0209D6A4
	ldr r2, _0209D994 // =sub_020A19F0
	add r1, sp, #0x48
	str r2, [r1, r6, lsl #3]
	add r0, sp, #0x4c
	mov r1, #0
	str r1, [r0, r6, lsl #3]
	add r6, r6, #1
_0209D6A4:
	ldr r0, [sp, #4]
	ldr r5, [sb, #0x14]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	moveq r7, #0
	cmp r5, #0
	beq _0209D948
	mov r0, #0
	str r0, [sp, #0x1c]
_0209D6CC:
	ldrh r2, [r5, #0x26]
	ldr r0, [r5, #0]
	ldrh r1, [r5, #0x24]
	str r0, [sp, #0x14]
	mov r0, r2, lsl #8
	bl _s32_div_f
	ldr r4, [sp, #0x1c]
	strb r0, [sp, #0x20]
	cmp r6, #0
	ble _0209D71C
	ldrb fp, [sp, #0x20]
_0209D6F8:
	add r3, sp, #0x48
	ldr r3, [r3, r4, lsl #3]
	mov r0, r5
	mov r1, r8
	mov r2, fp
	blx r3
	add r4, r4, #1
	cmp r4, r6
	blt _0209D6F8
_0209D71C:
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	str r0, [sp, #0x70]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1f
	addne r0, sb, #0x28
	addne r3, r5, #0x38
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	cmp r7, #0
	ble _0209D784
_0209D758:
	ldr r2, [r8, #0x18]
	mov r1, r5
	add r0, r2, r4, lsl #3
	ldr fp, [r2, r4, lsl #3]
	ldr r0, [r0, #4]
	add r2, sp, #0x68
	mov r3, sb
	blx fp
	add r4, r4, #1
	cmp r4, r7
	blt _0209D758
_0209D784:
	ldrh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	add r0, r1, r0
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #8]
	mul r0, r1, r0
	mov r0, r0, asr #9
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x68]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x6c]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x70]
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [sb, #0x34]
	ldr r2, [r5, #8]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x18]
	ldr r0, [sb, #0x38]
	ldr r2, [r5, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x1c]
	ldr r0, [sb, #0x3c]
	ldr r2, [r5, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	movs r0, r0, lsr #0x1f
	beq _0209D888
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	b _0209D908
_0209D888:
	ldr r0, [sl, #0x38]
	ldrh r1, [r5, #0x2e]
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x1a
	bic r1, r1, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	and r0, r0, #0x3f
	orr r0, r1, r0, lsl #10
	strh r0, [r5, #0x2e]
	ldr r1, [sl, #0x38]
	add r0, sl, #0x38
	bic r2, r1, #0x3f000
	mov r1, r1, lsl #0xe
	mov r1, r1, lsr #0x1a
	add r1, r1, #1
	and r1, r1, #0x3f
	orr r1, r2, r1, lsl #12
	str r1, [sl, #0x38]
	ldr r2, [sl, #0x38]
	mov r1, r2, lsl #0xe
	mov r3, r1, lsr #0x1a
	mov r1, r2, lsl #0x14
	cmp r3, r1, lsr #26
	bls _0209D908
	mov r1, r2, lsl #0x1a
	mov r1, r1, lsr #0x1a
	and r1, r1, #0x3f
	ldr r2, [r0, #0]
	bic r2, r2, #0x3f000
	orr r1, r2, r1, lsl #12
	str r1, [r0, #0]
_0209D908:
	ldrh r0, [r5, #0x26]
	add r0, r0, #1
	strh r0, [r5, #0x26]
	ldrh r1, [r5, #0x26]
	ldrh r0, [r5, #0x24]
	cmp r1, r0
	bls _0209D93C
	mov r1, r5
	add r0, sb, #0x14
	bl sub_020A2238
	mov r1, r0
	add r0, sl, #0x1c
	bl sub_020A2304
_0209D93C:
	ldr r5, [sp, #0x14]
	movs r0, r5
	bne _0209D6CC
_0209D948:
	ldrh r0, [sb, #0x4c]
	add r0, r0, #1
	strh r0, [sb, #0x4c]
	ldr r2, [sb, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x74
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, sb
	mov r1, #1
	blx r2
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0209D980: .word sub_020A1DA0
_0209D984: .word sub_020A1BD4
_0209D988: .word sub_020A1AF8
_0209D98C: .word sub_020A1A94
_0209D990: .word sub_020A1A48
_0209D994: .word sub_020A19F0
}

void sub_0209D998(SPLEmitter *emtr, UnkSPLStruct4 *res, const VecFx32 *pos)
{
    emtr->p_res = res;
    emtr->unk_94.all = 0;
    
    emtr->unk_98.x = pos->x + emtr->p_res->unk_00->unk_04.x;
    emtr->unk_98.y = pos->y + emtr->p_res->unk_00->unk_04.y;
    emtr->unk_98.z = pos->z + emtr->p_res->unk_00->unk_04.z;

    emtr->unk_B0.x = 0;
    emtr->unk_B0.y = 0;
    emtr->unk_B0.z = 0;
    emtr->unk_A4.x = emtr->unk_A4.y = emtr->unk_A4.z = 0;

    emtr->unk_BC = 0;
    emtr->unk_BE = 0;

    emtr->unk_C0 = emtr->p_res->unk_00->unk_1C;
    emtr->unk_C6 = emtr->p_res->unk_00->unk_38;
    emtr->unk_C8 = emtr->p_res->unk_00->unk_10;
    emtr->unk_CC = emtr->p_res->unk_00->unk_14;
    emtr->unk_D0 = emtr->p_res->unk_00->unk_18;
    emtr->unk_D4 = emtr->p_res->unk_00->unk_24;
    emtr->unk_D8 = emtr->p_res->unk_00->unk_28;
    emtr->unk_DC = emtr->p_res->unk_00->unk_2C;
    emtr->unk_E0 = emtr->p_res->unk_00->unk_40;
    
    emtr->unk_E2 = GX_RGB(31, 31, 31);
    emtr->unk_F0.unk_00_0 = emtr->p_res->unk_00->unk_48.unk_00_0;
    emtr->unk_F0.unk_01_0 = emtr->p_res->unk_00->unk_48.unk_01_0;
    emtr->unk_F0.unk_02_0 = 0;
    emtr->unk_F0.unk_02_3 = 0;
    emtr->unk_E4 = FX32_MIN;
    emtr->unk_E8 = FX32_ONE << emtr->p_res->unk_00->unk_48.unk_07_0;
    emtr->unk_EA = FX32_ONE << emtr->p_res->unk_00->unk_48.unk_07_2;

    if (emtr->p_res->unk_00->unk_48.unk_08_0) {
        emtr->unk_E8 *= -1;
    }

    if (emtr->p_res->unk_00->unk_48.unk_08_1) {
        emtr->unk_EA *= -1;
    }

    if (emtr->p_res->unk_00->unk_00.unk_06_0) {
        emtr->unk_EC = FX32_ONE << emtr->p_res->unk_14->unk_0C.unk_04_0;
        emtr->unk_EE = FX32_ONE << emtr->p_res->unk_14->unk_0C.unk_04_2;

        if (emtr->p_res->unk_14->unk_0C.unk_04_4) {
            emtr->unk_EC *= -1;
        }
    
        if (emtr->p_res->unk_14->unk_0C.unk_04_5) {
            emtr->unk_EE *= -1;
        }
    }

    emtr->unk_00 = emtr->unk_04 = NULL;
    emtr->unk_08.unk_00 = emtr->unk_4C.unk_00 = NULL;
    emtr->unk_08.unk_04 = emtr->unk_4C.unk_04 = 0;
    emtr->unk_100 = NULL;
    emtr->unk_104 = NULL;
    emtr->unk_108.unk_108_val1 = 0;
}

void sub_0209DC64(UnkSPLStruct5 *tex) { }

asm void sub_0209DC68(UnkSPLStruct5 *tex)
{
    stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r7, [r0, #0xc]
	ldr r3, _0209DD40 // =0x040004A8
	str r7, [sp]
	ldr r1, [r0, #4]
	mov r2, r7, lsl #0x1c
	mov lr, r2, lsr #0x1c
	mov r1, r1, lsr #3
	orr ip, r1, lr, lsl #26
	mov r4, r7, lsl #0x18
	mov r5, r7, lsl #0x14
	mov r2, r7, lsl #0xf
	mov r4, r4, lsr #0x1c
	orr ip, ip, #0x40000000
	mov r6, r7, lsl #0x12
	orr ip, ip, r4, lsl #20
	mov r5, r5, lsr #0x1c
	mov r1, r7, lsl #0x10
	orr ip, ip, r5, lsl #23
	mov r4, r6, lsr #0x1e
	mov r5, r1, lsr #0x1e
	orr r1, ip, r4, lsl #16
	mov r2, r2, lsr #0x1f
	orr r1, r1, r5, lsl #18
	orr r1, r1, r2, lsl #29
	str r1, [r3, #0]
	cmp lr, #2
	moveq r1, #1
	movne r1, #0
	ldr r2, [r0, #8]
	rsb r1, r1, #4
	mov r2, r2, lsr r1
	ldr r1, _0209DD44 // =0x040004AC
	ldr ip, _0209DD48 // =0x04000440
	str r2, [r1, #0]
	mov r2, #3
	ldr r1, _0209DD4C // =0x04000454
	str r2, [ip]
	mov r3, #0
	str r3, [r1, #0]
	ldrh r1, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	ldr r0, _0209DD50 // =0x0400046C
	mov r1, r1, lsl #0xc
	str r1, [r0, #0]
	mov r1, r2, lsl #0xc
	str r1, [r0, #0]
	str r3, [r0, #0]
	mov r0, #1
	str r0, [ip]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	// .align 2, 0
_0209DD40: .word 0x040004A8
_0209DD44: .word 0x040004AC
_0209DD48: .word 0x04000440
_0209DD4C: .word 0x04000454
_0209DD50: .word 0x0400046C
}
