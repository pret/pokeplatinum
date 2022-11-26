
	.include "macros/function.inc"
	.include "global.inc"

	.text

	arm_func_start sub_020BC618
sub_020BC618: ; 0x020BC618
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe8
	cmp r2, r1
	addeq sl, sp, #0xa8
	str r2, [sp]
	movne sl, r2
	ldr r4, [r0, #4]
	ldr r2, [r1, #0x10]
	ldr r5, [r0, #0]
	smull r8, r7, r4, r2
	ldr r2, [r1, #0]
	ldr r3, [r0, #8]
	smlal r8, r7, r5, r2
	ldr r6, [r1, #0x20]
	ldr r2, [r0, #0xc]
	smlal r8, r7, r3, r6
	ldr r6, [r1, #0x30]
	smlal r8, r7, r2, r6
	mov r6, r8, lsr #0xc
	orr r6, r6, r7, lsl #20
	str r6, [sl]
	ldr r6, [r1, #0x14]
	ldr r7, [r1, #4]
	smull sb, r8, r4, r6
	smlal sb, r8, r5, r7
	ldr r6, [r1, #0x24]
	ldr r7, [r1, #0x34]
	smlal sb, r8, r3, r6
	smlal sb, r8, r2, r7
	mov r6, sb, lsr #0xc
	orr r6, r6, r8, lsl #20
	str r6, [sl, #4]
	ldr r6, [r1, #0x1c]
	ldr r7, [r1, #0xc]
	smull sb, r8, r4, r6
	smlal sb, r8, r5, r7
	ldr r6, [r1, #0x2c]
	ldr r7, [r1, #0x3c]
	smlal sb, r8, r3, r6
	smlal sb, r8, r2, r7
	mov r6, sb, lsr #0xc
	orr r6, r6, r8, lsl #20
	str r6, [sl, #0xc]
	ldr fp, [r1, #0x18]
	ldr ip, [r1, #8]
	smull r7, r6, r4, fp
	ldr r8, [r1, #0x38]
	smlal r7, r6, r5, ip
	ldr sb, [r1, #0x28]
	mov lr, r8, asr #0x1f
	smlal r7, r6, r3, sb
	smlal r7, r6, r2, r8
	mov r2, r7, lsr #0xc
	orr r2, r2, r6, lsl #20
	str r2, [sl, #8]
	mov r2, fp, asr #0x1f
	str r2, [sp, #4]
	mov r2, ip, asr #0x1f
	str r2, [sp, #8]
	mov r2, sb, asr #0x1f
	str r2, [sp, #0x8c]
	ldr r6, [r0, #0x14]
	ldr r7, [r0, #0x10]
	mov r2, r6, asr #0x1f
	str r2, [sp, #0xc]
	mov r2, r7, asr #0x1f
	ldr r5, [r0, #0x18]
	str r2, [sp, #0x10]
	mov r2, r5, asr #0x1f
	ldr r4, [r0, #0x1c]
	str r2, [sp, #0x14]
	mov r2, r4, asr #0x1f
	str r2, [sp, #0x18]
	umull r2, r3, r4, r8
	str r2, [sp, #0x1c]
	mla r3, r4, lr, r3
	ldr r2, [sp, #0x18]
	mla r3, r2, r8, r3
	umull r8, r2, r5, sb
	str r8, [sp, #0x20]
	ldr r8, [sp, #0x8c]
	mla r2, r5, r8, r2
	ldr r8, [sp, #0x14]
	mla r2, r8, sb, r2
	ldr r8, [sp, #8]
	umull lr, sb, r7, ip
	mla sb, r7, r8, sb
	ldr r8, [sp, #0x10]
	mla sb, r8, ip, sb
	umull ip, r8, r6, fp
	adds lr, lr, ip
	ldr ip, [sp, #4]
	mla r8, r6, ip, r8
	ldr ip, [sp, #0xc]
	mla r8, ip, fp, r8
	adc sb, sb, r8
	ldr r8, [sp, #0x20]
	adds fp, r8, lr
	adc r8, r2, sb
	ldr r2, [sp, #0x1c]
	adds sb, r2, fp
	adc r2, r3, r8
	mov r3, sb, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sl, #0x18]
	ldr r2, [r1, #0x14]
	ldr r3, [r1, #4]
	smull fp, r2, r6, r2
	smlal fp, r2, r7, r3
	ldr r8, [r1, #0x24]
	ldr sb, [r1, #0x34]
	smlal fp, r2, r5, r8
	smlal fp, r2, r4, sb
	mov r3, fp, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sl, #0x14]
	ldr r2, [r1, #0x1c]
	ldr r3, [r1, #0xc]
	smull fp, r2, r6, r2
	smlal fp, r2, r7, r3
	ldr r8, [r1, #0x2c]
	ldr sb, [r1, #0x3c]
	smlal fp, r2, r5, r8
	smlal fp, r2, r4, sb
	mov r3, fp, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sl, #0x1c]
	ldr sb, [r1, #0x10]
	ldr fp, [r1, #0x30]
	smull ip, r8, r6, sb
	ldr r3, [r1, #0]
	ldr r2, [r1, #0x20]
	smlal ip, r8, r7, r3
	smlal ip, r8, r5, r2
	smlal ip, r8, r4, fp
	mov r4, ip, lsr #0xc
	orr r4, r4, r8, lsl #20
	str r4, [sl, #0x10]
	mov r4, r3, asr #0x1f
	mov r5, sb, asr #0x1f
	str r4, [sp, #0x28]
	mov r4, r2, asr #0x1f
	str r5, [sp, #0x24]
	ldr r7, [r0, #0x24]
	str r4, [sp, #0x2c]
	mov r4, r7, asr #0x1f
	ldr r8, [r0, #0x20]
	ldr r6, [r0, #0x28]
	ldr r5, [r0, #0x2c]
	mov lr, fp, asr #0x1f
	str r4, [sp, #0x90]
	mov r4, r8, asr #0x1f
	str r4, [sp, #0x30]
	mov r4, r6, asr #0x1f
	str r4, [sp, #0x34]
	mov r4, r5, asr #0x1f
	str r4, [sp, #0x38]
	umull ip, r4, r5, fp
	str ip, [sp, #0x3c]
	mla r4, r5, lr, r4
	ldr ip, [sp, #0x38]
	mla r4, ip, fp, r4
	umull fp, lr, r6, r2
	str fp, [sp, #0x40]
	ldr fp, [sp, #0x2c]
	mla lr, r6, fp, lr
	ldr fp, [sp, #0x34]
	mla lr, fp, r2, lr
	umull r2, ip, r8, r3
	str r2, [sp, #0x44]
	ldr r2, [sp, #0x28]
	mla ip, r8, r2, ip
	ldr r2, [sp, #0x30]
	mla ip, r2, r3, ip
	umull r3, fp, r7, sb
	ldr r2, [sp, #0x44]
	adds r3, r2, r3
	ldr r2, [sp, #0x24]
	mla fp, r7, r2, fp
	ldr r2, [sp, #0x90]
	mla fp, r2, sb, fp
	ldr r2, [sp, #0x40]
	adc sb, ip, fp
	adds fp, r2, r3
	ldr r2, [sp, #0x3c]
	adc r3, lr, sb
	adds sb, r2, fp
	adc r2, r4, r3
	mov r3, sb, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sl, #0x20]
	ldr r2, [r1, #0x14]
	ldr lr, [r1, #4]
	str r2, [sp, #0x48]
	ldr r3, [sp, #0x48]
	mov r2, r2, asr #0x1f
	umull ip, fp, r7, r3
	mla fp, r7, r2, fp
	ldr r2, [sp, #0x90]
	ldr r4, [r1, #0x24]
	mla fp, r2, r3, fp
	smlal ip, fp, r8, lr
	smlal ip, fp, r6, r4
	ldr sb, [r1, #0x34]
	smlal ip, fp, r5, sb
	mov r2, ip, lsr #0xc
	orr r2, r2, fp, lsl #20
	str r2, [sl, #0x24]
	ldr r2, [r1, #0x1c]
	ldr lr, [r1, #0xc]
	str r2, [sp, #0x4c]
	ldr r3, [sp, #0x4c]
	mov r2, r2, asr #0x1f
	umull ip, fp, r7, r3
	mla fp, r7, r2, fp
	ldr r2, [sp, #0x90]
	ldr r4, [r1, #0x2c]
	mla fp, r2, r3, fp
	smlal ip, fp, r8, lr
	smlal ip, fp, r6, r4
	ldr sb, [r1, #0x3c]
	smlal ip, fp, r5, sb
	mov r2, ip, lsr #0xc
	orr r2, r2, fp, lsl #20
	str r2, [sl, #0x2c]
	ldr fp, [r1, #0x18]
	ldr r3, [r1, #0x38]
	mov ip, fp, asr #0x1f
	str r3, [sp, #0x50]
	umull r4, r3, r7, fp
	mla r3, r7, ip, r3
	ldr r7, [sp, #0x90]
	ldr r2, [r1, #8]
	mla r3, r7, fp, r3
	smlal r4, r3, r8, r2
	ldr sb, [r1, #0x28]
	smlal r4, r3, r6, sb
	ldr r6, [sp, #0x50]
	smlal r4, r3, r5, r6
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	str r4, [sl, #0x28]
	ldr r4, [r0, #0x34]
	ldr r3, [r0, #0x30]
	smull r6, r5, r4, fp
	smlal r6, r5, r3, r2
	mov r2, r4, asr #0x1f
	str r2, [sp, #0x54]
	mov r2, r3, asr #0x1f
	str r2, [sp, #0x58]
	ldr r2, [r0, #0x38]
	ldr ip, [r0, #0x3c]
	smlal r6, r5, r2, sb
	ldr r0, [sp, #0x50]
	smlal r6, r5, ip, r0
	mov r0, r6, lsr #0xc
	orr r0, r0, r5, lsl #20
	str r0, [sl, #0x38]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x5c]
	mov r0, ip, asr #0x1f
	str r0, [sp, #0x60]
	ldr r8, [r1, #0x24]
	ldr r7, [r1, #4]
	mov r0, r8, asr #0x1f
	ldr sb, [r1, #0x34]
	str r0, [sp, #0x98]
	mov r0, r7, asr #0x1f
	ldr r6, [r1, #0x14]
	str r0, [sp, #0x6c]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x70]
	umull r0, fp, ip, sb
	mov lr, sb, asr #0x1f
	str r0, [sp, #0x64]
	mla fp, ip, lr, fp
	ldr r0, [sp, #0x60]
	add r5, sp, #0xa8
	mla fp, r0, sb, fp
	umull r0, sb, r2, r8
	str r0, [sp, #0x94]
	ldr r0, [sp, #0x98]
	mla sb, r2, r0, sb
	ldr r0, [sp, #0x5c]
	mla sb, r0, r8, sb
	umull r0, r8, r3, r7
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	mla r8, r3, r0, r8
	ldr r0, [sp, #0x58]
	mla r8, r0, r7, r8
	umull r7, lr, r4, r6
	ldr r0, [sp, #0x68]
	adds r7, r0, r7
	ldr r0, [sp, #0x70]
	mla lr, r4, r0, lr
	ldr r0, [sp, #0x54]
	mla lr, r0, r6, lr
	ldr r0, [sp, #0x94]
	adc r6, r8, lr
	adds r7, r0, r7
	ldr r0, [sp, #0x64]
	adc r6, sb, r6
	adds r7, r0, r7
	adc r0, fp, r6
	mov r6, r7, lsr #0xc
	orr r6, r6, r0, lsl #20
	str r6, [sl, #0x34]
	ldr r8, [r1, #0x20]
	ldr sb, [r1, #0x30]
	mov r0, r8, asr #0x1f
	ldr r7, [r1, #0]
	str r0, [sp, #0xa0]
	mov r0, r7, asr #0x1f
	ldr r6, [r1, #0x10]
	str r0, [sp, #0x7c]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x80]
	umull r0, fp, ip, sb
	mov lr, sb, asr #0x1f
	str r0, [sp, #0x74]
	mla fp, ip, lr, fp
	ldr r0, [sp, #0x60]
	mla fp, r0, sb, fp
	umull r0, sb, r2, r8
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0xa0]
	mla sb, r2, r0, sb
	ldr r0, [sp, #0x5c]
	mla sb, r0, r8, sb
	umull r0, r8, r3, r7
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x7c]
	mla r8, r3, r0, r8
	ldr r0, [sp, #0x58]
	mla r8, r0, r7, r8
	umull r7, lr, r4, r6
	ldr r0, [sp, #0x78]
	adds r7, r0, r7
	ldr r0, [sp, #0x80]
	mla lr, r4, r0, lr
	ldr r0, [sp, #0x54]
	mla lr, r0, r6, lr
	ldr r0, [sp, #0x9c]
	adc r6, r8, lr
	adds r7, r0, r7
	ldr r0, [sp, #0x74]
	adc r6, sb, r6
	adds r7, r0, r7
	adc r0, fp, r6
	mov r6, r7, lsr #0xc
	orr r6, r6, r0, lsl #20
	str r6, [sl, #0x30]
	ldr r8, [r1, #0x3c]
	ldr r6, [r1, #0xc]
	mov r0, r8, asr #0x1f
	str r0, [sp, #0x84]
	ldr r7, [r1, #0x2c]
	ldr fp, [sp, #0x84]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x88]
	ldr r0, [r1, #0x1c]
	mov lr, r6, asr #0x1f
	mov r1, r0, asr #0x1f
	str r1, [sp, #0xa4]
	umull sb, r1, ip, r8
	mla r1, ip, fp, r1
	ldr fp, [sp, #0x60]
	mla r1, fp, r8, r1
	ldr r8, [sp, #0x88]
	umull ip, fp, r2, r7
	mla fp, r2, r8, fp
	ldr r2, [sp, #0x5c]
	ldr r8, [sp, #0xa4]
	mla fp, r2, r7, fp
	umull r7, r2, r3, r6
	mla r2, r3, lr, r2
	ldr r3, [sp, #0x58]
	mla r2, r3, r6, r2
	umull r6, r3, r4, r0
	mla r3, r4, r8, r3
	ldr r4, [sp, #0x54]
	mla r3, r4, r0, r3
	adds r4, r7, r6
	adc r0, r2, r3
	adds r2, ip, r4
	adc r0, fp, r0
	adds r2, sb, r2
	adc r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	cmp sl, r5
	addne sp, sp, #0xe8
	str r1, [sl, #0x3c]
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [sp]
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	str r4, [sp]
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	str r4, [sp]
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	str r4, [sp]
	add sp, sp, #0xe8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020BC618

	arm_func_start sub_020BCC7C
sub_020BCC7C: ; 0x020BCC7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	bl sub_020BCFD0
	ldr r1, [sp, #0x18]
	ldr r2, _020BCDC4 ; =0x04000290
	mov r3, #0
	str r3, [r2, #0]
	mov r3, #0x1000
	str r3, [r2, #4]
	sub r1, r7, r1
	str r1, [r2, #8]
	mov r1, #0
	mov r4, r0
	str r1, [r2, #0xc]
	cmp r6, #0x1000
	beq _020BCCE4
	mul r1, r4, r1
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r4, r0, asr #0xc
_020BCCE4:
	mov r1, #0
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	str r4, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	rsb r0, r6, #0
	str r0, [r5, #0x2c]
	str r1, [r5, #0x30]
	str r1, [r5, #0x34]
	str r1, [r5, #0x3c]
	bl sub_020BD024
	ldr r2, _020BCDC4 ; =0x04000290
	mov r3, #0
	stmia r2, {r3, r4, r8}
	str r3, [r2, #0xc]
	cmp r6, #0x1000
	beq _020BCD60
	mov r2, r6, asr #0x1f
	umull r4, r3, r0, r6
	mla r3, r0, r2, r3
	mla r3, r1, r6, r3
	mov r0, r4
	mov r1, r3
	mov r2, #0x1000
	mov r3, #0
	bl sub_020E1D24
_020BCD60:
	ldr r4, [sp, #0x18]
	mov r2, r7, lsl #1
	add r6, r4, r7
	mov r3, r6, asr #0x1f
	umull r8, r7, r0, r6
	mla r7, r0, r3, r7
	smull r4, r3, r2, r4
	mla r7, r1, r6, r7
	adds r2, r8, #-0x80000000
	adc r7, r7, #0
	adds r4, r4, #0x800
	adc r2, r3, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	umull r6, r4, r0, r3
	mov r2, r3, asr #0x1f
	mla r4, r0, r2, r4
	mla r4, r1, r3, r4
	adds r0, r6, #-0x80000000
	str r7, [r5, #0x28]
	adc r0, r4, #0
	str r0, [r5, #0x38]
	bl sub_020BD048
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020BCDC4: .word 0x04000290
	arm_func_end sub_020BCC7C

	arm_func_start sub_020BCDC8
sub_020BCDC8: ; 0x020BCDC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	str r2, [sp]
	mov sl, r0
	ldr r0, [sp]
	mov r2, r3
	sub r0, r2, r0
	ldr r8, [sp, #0x3c]
	str r3, [sp, #4]
	mov fp, r1
	ldr sb, [sp, #0x38]
	bl sub_020BD080
	mov r0, #0
	str r0, [r8, #4]
	str r0, [r8, #8]
	str r0, [r8, #0xc]
	str r0, [r8, #0x10]
	str r0, [r8, #0x18]
	str r0, [r8, #0x1c]
	str r0, [r8, #0x20]
	str r0, [r8, #0x24]
	str r0, [r8, #0x2c]
	str sb, [r8, #0x3c]
	bl sub_020BD024
	mov r6, r1
	mov r4, r0
	ldr r1, _020BCFCC ; =0x04000290
	mov r3, #0
	mov r2, #0x1000
	str r3, [r1, #0]
	sub r0, sl, fp
	str r2, [r1, #4]
	str r0, [r1, #8]
	mov r0, r3
	cmp sb, #0x1000
	str r0, [r1, #0xc]
	beq _020BCE78
	mov r5, sb, asr #0x1f
	umull r0, r1, r4, sb
	mla r1, r4, r5, r1
	mla r1, r6, sb, r1
	bl sub_020E1D24
	mov r4, r0
	mov r6, r1
_020BCE78:
	mov r1, r6, lsl #0xd
	mov r0, #-0x80000000
	orr r1, r1, r4, lsr #19
	adds r0, r0, r4, lsl #13
	adc r0, r1, #0
	str r0, [r8]
	bl sub_020BD024
	mov r5, r0
	mov r7, r1
	mov r3, #0
	ldr ip, _020BCFCC ; =0x04000290
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r3, [ip]
	mov r2, #0x1000
	str r2, [ip, #4]
	sub r0, r1, r0
	mov lr, r3
	str r0, [ip, #8]
	cmp sb, #0x1000
	str lr, [ip, #0xc]
	beq _020BCEEC
	mov ip, sb, asr #0x1f
	umull r0, r1, r5, sb
	mla r1, r5, ip, r1
	mla r1, r7, sb, r1
	bl sub_020E1D24
	mov r5, r0
	mov r7, r1
_020BCEEC:
	mov r1, r7, lsl #0xd
	mov r0, #-0x80000000
	orr r1, r1, r5, lsr #19
	adds r0, r0, r5, lsl #13
	adc r0, r1, #0
	str r0, [r8, #0x14]
	bl sub_020BD024
	cmp sb, #0x1000
	beq _020BCF34
	mov r2, sb, asr #0x1f
	umull ip, r3, r0, sb
	mla r3, r0, r2, r3
	mla r3, r1, sb, r3
	mov r0, ip
	mov r1, r3
	mov r2, #0x1000
	mov r3, #0
	bl sub_020E1D24
_020BCF34:
	ldr r3, [sp, #4]
	ldr r2, [sp]
	add r2, r3, r2
	rsb ip, r2, #0
	add r2, sl, fp
	rsb r3, r2, #0
	ldr sl, [sp, #0x34]
	ldr r2, [sp, #0x30]
	mov sb, ip, asr #0x1f
	add r2, sl, r2
	umull fp, sl, r4, ip
	mla sl, r4, sb, sl
	mov r4, #-0x80000000
	mla sl, r6, ip, sl
	adds r4, r4, r0, lsl #13
	mov sb, r1, lsl #0xd
	mov r6, r3, asr #0x1f
	umull ip, r4, r5, r3
	mla r4, r5, r6, r4
	orr sb, sb, r0, lsr #19
	mla r4, r7, r3, r4
	adc r3, sb, #0
	str r3, [r8, #0x28]
	adds r3, fp, #-0x80000000
	adc r7, sl, #0
	adds r3, ip, #-0x80000000
	mov r3, r2, asr #0x1f
	umull r6, r5, r0, r2
	mla r5, r0, r3, r5
	adc r3, r4, #0
	str r7, [r8, #0x30]
	mla r5, r1, r2, r5
	adds r0, r6, #-0x80000000
	str r3, [r8, #0x34]
	adc r0, r5, #0
	str r0, [r8, #0x38]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020BCFCC: .word 0x04000290
	arm_func_end sub_020BCDC8

	arm_func_start sub_020BCFD0
sub_020BCFD0: ; 0x020BCFD0
	stmfd sp!, {r3, lr}
	bl sub_020BD0DC
	bl sub_020BD048
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BCFD0

	arm_func_start sub_020BCFE0
sub_020BCFE0: ; 0x020BCFE0
	stmfd sp!, {r3, lr}
	bl sub_020BD080
	bl sub_020BD048
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BCFE0

	arm_func_start sub_020BCFF0
sub_020BCFF0: ; 0x020BCFF0
	stmfd sp!, {r3, lr}
	cmp r0, #0
	movle r0, #0
	ldmleia sp!, {r3, pc}
	ldr r2, _020BD020 ; =0x040002B0
	mov r1, #1
	strh r1, [r2]
	mov r1, #0
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	bl sub_020BD0B0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BD020: .word 0x040002B0
	arm_func_end sub_020BCFF0

	arm_func_start sub_020BD024
sub_020BD024: ; 0x020BD024
	ldr r1, _020BD040 ; =0x04000280
_020BD028:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD028
	ldr r1, _020BD044 ; =0x040002A0
	ldmia r1, {r0, r1}
	bx lr
	; .align 2, 0
_020BD040: .word 0x04000280
_020BD044: .word 0x040002A0
	arm_func_end sub_020BD024

	arm_func_start sub_020BD048
sub_020BD048: ; 0x020BD048
	ldr r1, _020BD078 ; =0x04000280
_020BD04C:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD04C
	ldr r0, _020BD07C ; =0x040002A0
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	adds r2, r1, #0x80000
	adc r1, r0, #0
	mov r0, r2, lsr #0x14
	orr r0, r0, r1, lsl #12
	bx lr
	; .align 2, 0
_020BD078: .word 0x04000280
_020BD07C: .word 0x040002A0
	arm_func_end sub_020BD048

	arm_func_start sub_020BD080
sub_020BD080: ; 0x020BD080
	ldr r2, _020BD0AC ; =0x04000280
	mov r1, #1
	strh r1, [r2]
	mov r1, #0
	str r1, [r2, #0x10]
	mov r1, #0x1000
	str r1, [r2, #0x14]
	str r0, [r2, #0x18]
	mov r0, #0
	str r0, [r2, #0x1c]
	bx lr
	; .align 2, 0
_020BD0AC: .word 0x04000280
	arm_func_end sub_020BD080

	arm_func_start sub_020BD0B0
sub_020BD0B0: ; 0x020BD0B0
	ldr r1, _020BD0D4 ; =0x040002B0
_020BD0B4:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020BD0B4
	ldr r0, _020BD0D8 ; =0x040002B4
	ldr r0, [r0, #0]
	add r0, r0, #0x200
	mov r0, r0, lsr #0xa
	bx lr
	; .align 2, 0
_020BD0D4: .word 0x040002B0
_020BD0D8: .word 0x040002B4
	arm_func_end sub_020BD0B0

	arm_func_start sub_020BD0DC
sub_020BD0DC: ; 0x020BD0DC
	ldr r3, _020BD100 ; =0x04000280
	mov r2, #1
	strh r2, [r3]
	mov r2, #0
	str r2, [r3, #0x10]
	str r0, [r3, #0x14]
	str r1, [r3, #0x18]
	str r2, [r3, #0x1c]
	bx lr
	; .align 2, 0
_020BD100: .word 0x04000280
	arm_func_end sub_020BD0DC

	arm_func_start sub_020BD104
sub_020BD104: ; 0x020BD104
	ldr r2, _020BD138 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	str r1, [r2, #0x18]
	mov r0, r3
	str r0, [r2, #0x1c]
_020BD120:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD120
	ldr r0, _020BD13C ; =0x040002A0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020BD138: .word 0x04000280
_020BD13C: .word 0x040002A0
	arm_func_end sub_020BD104

	arm_func_start sub_020BD140
sub_020BD140: ; 0x020BD140
	ldr r2, _020BD174 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	str r1, [r2, #0x18]
	mov r0, r3
	str r0, [r2, #0x1c]
_020BD15C:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD15C
	ldr r0, _020BD178 ; =0x040002A8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020BD174: .word 0x04000280
_020BD178: .word 0x040002A8
	arm_func_end sub_020BD140

	arm_func_start sub_020BD17C
sub_020BD17C: ; 0x020BD17C
	ldr ip, [r0]
	ldr r3, [r1, #0]
	add r3, ip, r3
	str r3, [r2, #0]
	ldr ip, [r0, #4]
	ldr r3, [r1, #4]
	add r3, ip, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r3, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020BD17C

	arm_func_start sub_020BD1B0
sub_020BD1B0: ; 0x020BD1B0
	ldr ip, [r0]
	ldr r3, [r1, #0]
	sub r3, ip, r3
	str r3, [r2, #0]
	ldr ip, [r0, #4]
	ldr r3, [r1, #4]
	sub r3, ip, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	sub r0, r3, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020BD1B0

	arm_func_start sub_020BD1E4
sub_020BD1E4: ; 0x020BD1E4
	ldrsh ip, [r0]
	ldrsh r3, [r1]
	add r3, ip, r3
	strh r3, [r2]
	ldrsh ip, [r0, #2]
	ldrsh r3, [r1, #2]
	add r3, ip, r3
	strh r3, [r2, #2]
	ldrsh r3, [r0, #4]
	ldrsh r0, [r1, #4]
	add r0, r3, r0
	strh r0, [r2, #4]
	bx lr
	arm_func_end sub_020BD1E4

	arm_func_start sub_020BD218
sub_020BD218: ; 0x020BD218
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	ldr ip, [r0]
	smull r4, lr, r3, r2
	ldr r2, [r1, #0]
	ldr r3, [r0, #8]
	smlal r4, lr, ip, r2
	ldr r0, [r1, #8]
	smlal r4, lr, r3, r0
	adds r0, r4, #0x800
	adc r1, lr, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BD218

	arm_func_start sub_020BD254
sub_020BD254: ; 0x020BD254
	stmfd sp!, {r3, r4, r5, lr}
	ldrsh lr, [r0, #2]
	ldrsh ip, [r1, #2]
	ldrsh r3, [r0, #4]
	ldrsh r2, [r1, #4]
	ldrsh r5, [r0]
	ldrsh r4, [r1]
	smulbb r1, lr, ip
	smulbb r0, r3, r2
	add r0, r0, #0x800
	smlabb r1, r5, r4, r1
	adds r2, r1, r0
	mov r0, r0, asr #0x1f
	adc r1, r0, r1, asr #31
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BD254

	arm_func_start sub_020BD298
sub_020BD298: ; 0x020BD298
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldmia r0, {r5, lr}
	ldr r6, [r1, #8]
	ldr r0, [r0, #8]
	ldmia r1, {r4, ip}
	smull r8, r7, lr, r6
	smull r3, r1, r0, ip
	subs r3, r8, r3
	sbc r1, r7, r1
	adds r3, r3, #0x800
	smull r8, r7, r0, r4
	smull r6, r0, r5, r6
	adc r1, r1, #0
	subs r6, r8, r6
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	sbc r7, r7, r0
	adds r0, r6, #0x800
	smull ip, r6, r5, ip
	adc r5, r7, #0
	smull r4, r1, lr, r4
	mov r7, r0, lsr #0xc
	subs r4, ip, r4
	sbc r0, r6, r1
	adds r1, r4, #0x800
	str r3, [r2, #0]
	orr r7, r7, r5, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	str r7, [r2, #4]
	orr r1, r1, r0, lsl #20
	str r1, [r2, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BD298

	arm_func_start sub_020BD31C
sub_020BD31C: ; 0x020BD31C
	stmfd sp!, {r4, r5, r6, lr}
	ldrsh r4, [r1, #4]
	ldrsh ip, [r0, #2]
	ldrsh lr, [r0]
	ldrsh r3, [r1, #2]
	ldrsh r6, [r0, #4]
	ldrsh r1, [r1]
	smulbb r5, ip, r4
	smulbb r0, r6, r3
	sub r0, r5, r0
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	smulbb r5, r6, r1
	smulbb r4, lr, r4
	sub r4, r5, r4
	add r4, r4, #0x800
	smulbb r3, lr, r3
	smulbb r1, ip, r1
	sub r1, r3, r1
	add r1, r1, #0x800
	strh r0, [r2]
	mov r0, r4, asr #0xc
	strh r0, [r2, #2]
	mov r0, r1, asr #0xc
	strh r0, [r2, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BD31C

	arm_func_start sub_020BD384
sub_020BD384: ; 0x020BD384
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	smull ip, r3, r1, r1
	smlal ip, r3, r2, r2
	ldr r0, [r0, #8]
	ldr r2, _020BD3DC ; =0x040002B0
	smlal ip, r3, r0, r0
	mov r1, #1
	mov r0, r3, lsl #2
	strh r1, [r2]
	mov r1, ip, lsl #2
	str r1, [r2, #8]
	orr r0, r0, ip, lsr #30
	str r0, [r2, #0xc]
_020BD3BC:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020BD3BC
	ldr r0, _020BD3E0 ; =0x040002B4
	ldr r0, [r0, #0]
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
	; .align 2, 0
_020BD3DC: .word 0x040002B0
_020BD3E0: .word 0x040002B4
	arm_func_end sub_020BD384

	arm_func_start sub_020BD3E4
sub_020BD3E4: ; 0x020BD3E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, [r0, #4]
	ldr r3, [r0, #0]
	smull r6, r5, r2, r2
	smlal r6, r5, r3, r3
	ldr r2, [r0, #8]
	ldr r4, _020BD4F0 ; =0x04000280
	smlal r6, r5, r2, r2
	mov r3, #2
	strh r3, [r4]
	mov r3, #0
	str r3, [r4, #0x10]
	mov r3, #0x1000000
	str r3, [r4, #0x14]
	str r6, [r4, #0x18]
	mov r2, r5, lsl #2
	str r5, [r4, #0x1c]
	mov r3, #1
	strh r3, [r4, #0x30]
	mov r3, r6, lsl #2
	str r3, [r4, #0x38]
	orr r2, r2, r6, lsr #30
	str r2, [r4, #0x3c]
_020BD440:
	ldrh r2, [r4, #0x30]
	tst r2, #0x8000
	bne _020BD440
	ldr r2, _020BD4F4 ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020BD458:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020BD458
	ldr sb, _020BD4F8 ; =0x040002A0
	ldr r5, [r0, #0]
	ldr r8, [sb]
	mov r7, ip, asr #0x1f
	umull r3, r2, r8, ip
	umull r6, lr, r3, r5
	mov r4, r5, asr #0x1f
	mla r2, r8, r7, r2
	ldr r7, [sb, #4]
	mla lr, r3, r4, lr
	mla r2, r7, ip, r2
	mla lr, r2, r5, lr
	adds r4, r6, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	str r4, [r1, #0]
	ldr ip, [r0, #4]
	umull r5, lr, r3, ip
	mov r4, ip, asr #0x1f
	mla lr, r3, r4, lr
	mla lr, r2, ip, lr
	adds r4, r5, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	str r4, [r1, #4]
	ldr ip, [r0, #8]
	umull r4, lr, r3, ip
	mov r0, ip, asr #0x1f
	mla lr, r3, r0, lr
	mla lr, r2, ip, lr
	adds r0, r4, #0
	adc r0, lr, #0x1000
	mov r0, r0, asr #0xd
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BD4F0: .word 0x04000280
_020BD4F4: .word 0x040002B4
_020BD4F8: .word 0x040002A0
	arm_func_end sub_020BD3E4

	arm_func_start sub_020BD4FC
sub_020BD4FC: ; 0x020BD4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrsh r5, [r0]
	ldrsh r2, [r0, #2]
	ldrsh r3, [r0, #4]
	ldr r4, _020BD61C ; =0x04000280
	smulbb r6, r2, r2
	smulbb r8, r5, r5
	mov r2, #2
	strh r2, [r4]
	mov r2, #0
	str r2, [r4, #0x10]
	mov r2, #0x1000000
	smulbb r3, r3, r3
	mov r5, r6, asr #0x1f
	adds r7, r8, r6
	adc r6, r5, r8, asr #31
	adds r5, r7, r3
	str r2, [r4, #0x14]
	adc r3, r6, r3, asr #31
	str r5, [r4, #0x18]
	mov r2, r3, lsl #2
	str r3, [r4, #0x1c]
	mov r3, #1
	strh r3, [r4, #0x30]
	mov r3, r5, lsl #2
	str r3, [r4, #0x38]
	orr r2, r2, r5, lsr #30
	str r2, [r4, #0x3c]
_020BD56C:
	ldrh r2, [r4, #0x30]
	tst r2, #0x8000
	bne _020BD56C
	ldr r2, _020BD620 ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020BD584:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020BD584
	ldr sb, _020BD624 ; =0x040002A0
	ldrsh r5, [r0]
	ldr r8, [sb]
	mov r7, ip, asr #0x1f
	umull r3, r2, r8, ip
	umull r6, lr, r3, r5
	mov r4, r5, asr #0x1f
	mla r2, r8, r7, r2
	ldr r7, [sb, #4]
	mla lr, r3, r4, lr
	mla r2, r7, ip, r2
	mla lr, r2, r5, lr
	adds r4, r6, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	strh r4, [r1]
	ldrsh ip, [r0, #2]
	umull r5, lr, r3, ip
	mov r4, ip, asr #0x1f
	mla lr, r3, r4, lr
	mla lr, r2, ip, lr
	adds r4, r5, #0
	adc r4, lr, #0x1000
	mov r4, r4, asr #0xd
	strh r4, [r1, #2]
	ldrsh ip, [r0, #4]
	umull r4, lr, r3, ip
	mov r0, ip, asr #0x1f
	mla lr, r3, r0, lr
	mla lr, r2, ip, lr
	adds r0, r4, #0
	adc r0, lr, #0x1000
	mov r0, r0, asr #0xd
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BD61C: .word 0x04000280
_020BD620: .word 0x040002B4
_020BD624: .word 0x040002A0
	arm_func_end sub_020BD4FC

	arm_func_start sub_020BD628
sub_020BD628: ; 0x020BD628
	stmfd sp!, {r4, lr}
	ldr r4, [r1, #0]
	ldr lr, [r2]
	smull ip, r4, r0, r4
	mov ip, ip, lsr #0xc
	orr ip, ip, r4, lsl #20
	add r4, lr, ip
	str r4, [r3, #0]
	ldr ip, [r1, #4]
	ldr r4, [r2, #4]
	smull lr, ip, r0, ip
	mov lr, lr, lsr #0xc
	orr lr, lr, ip, lsl #20
	add r4, r4, lr
	str r4, [r3, #4]
	ldr r1, [r1, #8]
	ldr ip, [r2, #8]
	smull r2, r1, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r0, ip, r0
	str r0, [r3, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BD628

	arm_func_start sub_020BD684
sub_020BD684: ; 0x020BD684
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov lr, #0
	cmp r1, #1
	cmpeq r0, #0
	mov r2, #1
	moveq r1, lr
	ldreq r0, _020BD754 ; =0xB504F334
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	umull r3, ip, r0, r0
	mla ip, r0, r1, ip
	mla ip, r1, r0, ip
	ldr r4, _020BD758 ; =0x02317888
	ldr r5, _020BD75C ; =0x03C2857C
	umull r3, r8, ip, r4
	umull r3, r7, ip, r5
	mla r8, ip, lr, r8
	mov r3, lr
	mla r7, ip, lr, r7
	mla r8, r3, r4, r8
	subs sb, lr, r8
	mla r7, r3, r5, r7
	umull r4, r5, sb, r7
	mla r5, sb, r3, r5
	sbc r8, r2, #0
	mla r5, r8, r7, r5
	subs r8, lr, r5
	ldr r6, _020BD760 ; =0x07E54B84
	sbc r7, r2, #0
	umull r4, r5, ip, r6
	mla r5, ip, lr, r5
	mla r5, r3, r6, r5
	umull r4, r6, r8, r5
	mla r6, r8, r3, r6
	mla r6, r7, r5, r6
	subs r8, lr, r6
	sbc r7, r2, #0
	ldr r2, _020BD764 ; =0x14ABBCE6
	ldr r6, _020BD768 ; =0xC90FDAA2
	umull r4, r5, ip, r2
	mla r5, ip, lr, r5
	mla r5, r3, r2, r5
	umull r2, r4, r8, r5
	mla r4, r8, r3, r4
	mla r4, r7, r5, r4
	subs r6, r6, r4
	umull r2, r4, r6, r0
	mla r4, r6, r1, r4
	sbc r5, lr, #0
	mla r4, r5, r0, r4
	mov r0, r4
	mov r1, r3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BD754: .word 0xB504F334
_020BD758: .word 0x02317888
_020BD75C: .word 0x03C2857C
_020BD760: .word 0x07E54B84
_020BD764: .word 0x14ABBCE6
_020BD768: .word 0xC90FDAA2
	arm_func_end sub_020BD684

	arm_func_start sub_020BD76C
sub_020BD76C: ; 0x020BD76C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov ip, #0
	cmp r1, #1
	cmpeq r0, #0
	mov r2, #1
	moveq r1, ip
	ldreq r0, _020BD824 ; =0xB504F334
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	umull r4, r3, r0, r0
	mla r3, r0, r1, r3
	mla r3, r1, r0, r3
	ldr r1, _020BD828 ; =0x02D1E41D
	ldr lr, _020BD82C ; =0x054387AD
	umull r0, r6, r3, r1
	umull r0, r5, r3, lr
	mla r6, r3, ip, r6
	mov r0, ip
	mla r5, r3, ip, r5
	mla r6, r0, r1, r6
	subs r8, ip, r6
	mla r5, r0, lr, r5
	umull r1, r6, r8, r5
	ldr r4, _020BD830 ; =0x0D28D331
	mla r6, r8, r0, r6
	umull r1, lr, r3, r4
	mla lr, r3, ip, lr
	sbc r7, r2, #0
	mla r6, r7, r5, r6
	subs r6, ip, r6
	mla lr, r0, r4, lr
	umull r1, r4, r6, lr
	mla r4, r6, r0, r4
	sbc r5, r2, #0
	mla r4, r5, lr, r4
	subs r6, ip, r4
	ldr r1, _020BD834 ; =0x4EF4F327
	sbc r5, r2, #0
	umull r4, lr, r3, r1
	mla lr, r3, ip, lr
	mla lr, r0, r1, lr
	umull r1, r3, r6, lr
	mla r3, r6, r0, r3
	mla r3, r5, lr, r3
	subs r0, ip, r3
	sbc r1, r2, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020BD824: .word 0xB504F334
_020BD828: .word 0x02D1E41D
_020BD82C: .word 0x054387AD
_020BD830: .word 0x0D28D331
_020BD834: .word 0x4EF4F327
	arm_func_end sub_020BD76C

	arm_func_start sub_020BD838
sub_020BD838: ; 0x020BD838
	stmfd sp!, {r4, lr}
	cmp r0, #0
	bge _020BD858
	rsb r0, r0, #0
	bl sub_020BD838
	rsb r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, pc}
_020BD858:
	ldr r1, _020BD8CC ; =0x45F306DD
	mov r2, #1
	umull ip, lr, r0, r1
	mla lr, r0, r2, lr
	mov r0, r0, asr #0x1f
	mla lr, r0, r1, lr
	mov r3, #0
	mov ip, ip, lsr #0xc
	mov r4, lr, asr #0xc
	orr ip, ip, lr, lsl #20
	sub r0, r3, #1
	tst r4, #1
	and r1, r3, lr, asr #12
	and r0, ip, r0
	beq _020BD89C
	subs r0, r3, r0
	sbc r1, r2, r1
_020BD89C:
	add r2, r4, #1
	tst r2, #2
	beq _020BD8B0
	bl sub_020BD76C
	b _020BD8B4
_020BD8B0:
	bl sub_020BD684
_020BD8B4:
	and r2, r4, #7
	cmp r2, #3
	ldmleia sp!, {r4, pc}
	rsb r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BD8CC: .word 0x45F306DD
	arm_func_end sub_020BD838

	arm_func_start sub_020BD8D0
sub_020BD8D0: ; 0x020BD8D0
	stmfd sp!, {r4, lr}
	cmp r0, #0
	bge _020BD8E8
	rsb r0, r0, #0
	bl sub_020BD8D0
	ldmia sp!, {r4, pc}
_020BD8E8:
	ldr r1, _020BD960 ; =0x45F306DD
	mov r2, #1
	umull ip, lr, r0, r1
	mla lr, r0, r2, lr
	mov r0, r0, asr #0x1f
	mla lr, r0, r1, lr
	mov r3, #0
	mov ip, ip, lsr #0xc
	mov r4, lr, asr #0xc
	orr ip, ip, lr, lsl #20
	sub r0, r3, #1
	tst r4, #1
	and r1, r3, lr, asr #12
	and r0, ip, r0
	beq _020BD92C
	subs r0, r3, r0
	sbc r1, r2, r1
_020BD92C:
	add r2, r4, #1
	tst r2, #2
	beq _020BD940
	bl sub_020BD684
	b _020BD944
_020BD940:
	bl sub_020BD76C
_020BD944:
	add r2, r4, #2
	and r2, r2, #7
	cmp r2, #3
	ldmleia sp!, {r4, pc}
	rsb r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BD960: .word 0x45F306DD
	arm_func_end sub_020BD8D0

	arm_func_start sub_020BD964
sub_020BD964: ; 0x020BD964
	stmfd sp!, {r3, lr}
	cmp r0, #0
	blt _020BD9B8
	cmp r0, #0x1000
	ble _020BD99C
	bl sub_020BCFE0
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD99C:
	movge r0, #0x2000
	ldmgeia sp!, {r3, pc}
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	ldmia sp!, {r3, pc}
_020BD9B8:
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	bge _020BD9F0
	rsb r0, r0, #0
	bl sub_020BCFE0
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD9F0:
	movle r0, #0xe000
	ldmleia sp!, {r3, pc}
	rsb r0, r0, #0
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDA1C: .word 0x020FD83C
	arm_func_end sub_020BD964

	arm_func_start sub_020BDA20
sub_020BDA20: ; 0x020BDA20
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _020BDAB4
	cmp r1, #0
	ble _020BDA6C
	cmp r1, r0
	ble _020BDA4C
	mov r2, r0
	mov r4, #0
	mov r0, #1
	b _020BDB64
_020BDA4C:
	bge _020BDA64
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #0
	b _020BDB64
_020BDA64:
	mov r0, #0x2000
	ldmia sp!, {r4, pc}
_020BDA6C:
	bge _020BDAAC
	rsb r1, r1, #0
	cmp r1, r0
	bge _020BDA90
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #1
	b _020BDB64
_020BDA90:
	ble _020BDAA4
	mov r2, r0
	mov r4, #0x8000
	mov r0, #0
	b _020BDB64
_020BDAA4:
	mov r0, #0x6000
	ldmia sp!, {r4, pc}
_020BDAAC:
	mov r0, #0x4000
	ldmia sp!, {r4, pc}
_020BDAB4:
	bge _020BDB54
	cmp r1, #0
	rsb r0, r0, #0
	bge _020BDB08
	rsb r1, r1, #0
	cmp r1, r0
	ble _020BDAE4
	mov r4, #0x8000
	mov r2, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDAE4:
	bge _020BDB00
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #0
	b _020BDB64
_020BDB00:
	mov r0, #0xa000
	ldmia sp!, {r4, pc}
_020BDB08:
	cmp r1, #0
	ble _020BDB4C
	cmp r1, r0
	bge _020BDB30
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDB30:
	ble _020BDB44
	mov r4, #0
	mov r2, r0
	mov r0, r4
	b _020BDB64
_020BDB44:
	mov r0, #0xe000
	ldmia sp!, {r4, pc}
_020BDB4C:
	mov r0, #0xc000
	ldmia sp!, {r4, pc}
_020BDB54:
	cmp r1, #0
	movge r0, #0
	movlt r0, #0x8000
	ldmia sp!, {r4, pc}
_020BDB64:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0
	mov r0, r2
	beq _020BDBA0
	bl sub_020BCFD0
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
_020BDBA0:
	bl sub_020BCFD0
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BDBC4: .word 0x020FD83C
	arm_func_end sub_020BDA20

	arm_func_start sub_020BDBC8
sub_020BDBC8: ; 0x020BDBC8
	bx lr
	arm_func_end sub_020BDBC8

	arm_func_start sub_020BDBCC
sub_020BDBCC: ; 0x020BDBCC
	cmp r0, #0
	ldr r2, _020BDC04 ; =0x7FFFF000
	blt _020BDBE8
	and r3, r0, r2
	str r3, [r1, #0]
	and r0, r0, r2, lsr #19
	bx lr
_020BDBE8:
	rsb ip, r0, #0
	and r0, ip, r2
	rsb r3, r0, #0
	and r0, ip, r2, lsr #19
	str r3, [r1, #0]
	rsb r0, r0, #0
	bx lr
	; .align 2, 0
_020BDC04: .word 0x7FFFF000
	arm_func_end sub_020BDBCC

	arm_func_start sub_020BDC08
sub_020BDC08: ; 0x020BDC08
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020BDD30 ; =0x04000304
	ldr r0, _020BDD34 ; =0xFFFFFDF1
	ldrh r1, [r2]
	orr r1, r1, #0x8000
	strh r1, [r2]
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	orr r0, r0, #1
	strh r0, [r2]
	bl sub_020BDEEC
	ldr r5, _020BDD38 ; =0x021CCB9C
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020BDC7C
	mvn r4, #2
_020BDC58:
	bl sub_020C1A00
	mov r6, r0
	cmp r6, r4
	bne _020BDC6C
	bl sub_020C42A8
_020BDC6C:
	strh r6, [r5, #2]
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020BDC58
_020BDC7C:
	ldr r0, _020BDD3C ; =0x04000004
	mov r2, #0
	mov r3, #0x4000000
	strh r2, [r0]
	ldr r0, _020BDD40 ; =0x02101144
	str r2, [r3, #0]
	ldr r0, [r0, #4]
	sub r1, r3, #0x4000001
	cmp r0, r1
	beq _020BDCD4
	add r1, r3, #8
	mov r3, #0x60
	bl sub_020C42D4
	ldr r1, _020BDD44 ; =0x0400006C
	mov r2, #0
	ldr r0, _020BDD40 ; =0x02101144
	strh r2, [r1]
	ldr r0, [r0, #4]
	ldr r1, _020BDD48 ; =0x04001000
	mov r3, #0x70
	bl sub_020C42D4
	b _020BDCFC
_020BDCD4:
	mov r0, r2
	add r1, r3, #8
	mov r2, #0x60
	bl sub_020C4B4C
	ldr r3, _020BDD44 ; =0x0400006C
	mov r0, #0
	ldr r1, _020BDD48 ; =0x04001000
	mov r2, #0x70
	strh r0, [r3]
	bl sub_020C4B4C
_020BDCFC:
	ldr r0, _020BDD4C ; =0x04000020
	mov r2, #0x100
	strh r2, [r0]
	strh r2, [r0, #6]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x16]
	add r1, r0, #0x1000
	ldr r0, _020BDD50 ; =0x04001026
	strh r2, [r1]
	strh r2, [r0]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020BDD30: .word 0x04000304
_020BDD34: .word 0xFFFFFDF1
_020BDD38: .word 0x021CCB9C
_020BDD3C: .word 0x04000004
_020BDD40: .word 0x02101144
_020BDD44: .word 0x0400006C
_020BDD48: .word 0x04001000
_020BDD4C: .word 0x04000020
_020BDD50: .word 0x04001026
	arm_func_end sub_020BDC08

	arm_func_start sub_020BDD54
sub_020BDD54: ; 0x020BDD54
	ldr r2, _020BDD84 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r2]
	ldreqh r1, [r2]
	and r0, r0, #0x10
	biceq r1, r1, #0x10
	streqh r1, [r2]
	bxeq lr
	ldrh r1, [r2]
	orr r1, r1, #0x10
	strh r1, [r2]
	bx lr
	; .align 2, 0
_020BDD84: .word 0x04000004
	arm_func_end sub_020BDD54

	arm_func_start sub_020BDD88
sub_020BDD88: ; 0x020BDD88
	ldr r2, _020BDDB8 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r2]
	ldreqh r1, [r2]
	and r0, r0, #8
	biceq r1, r1, #8
	streqh r1, [r2]
	bxeq lr
	ldrh r1, [r2]
	orr r1, r1, #8
	strh r1, [r2]
	bx lr
	; .align 2, 0
_020BDDB8: .word 0x04000004
	arm_func_end sub_020BDD88

	arm_func_start sub_020BDDBC
sub_020BDDBC: ; 0x020BDDBC
	stmfd sp!, {r3, lr}
	mov lr, #0x4000000
	ldr ip, [lr]
	ldr r1, _020BDDF0 ; =0x02101144
	and r2, ip, #0x30000
	mov r3, #0
	ldr r0, _020BDDF4 ; =0x021CCB9C
	mov r2, r2, lsr #0x10
	strh r3, [r1]
	strh r2, [r0]
	bic r0, ip, #0x30000
	str r0, [lr]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDDF0: .word 0x02101144
_020BDDF4: .word 0x021CCB9C
	arm_func_end sub_020BDDBC

	arm_func_start sub_020BDDF8
sub_020BDDF8: ; 0x020BDDF8
	ldr r0, _020BDE38 ; =0x021CCB9C
	ldr r1, _020BDE3C ; =0x02101144
	ldrh r2, [r0]
	mov r0, #1
	strh r0, [r1]
	mov r1, #0x4000000
	cmp r2, #0
	ldreq r0, [r1]
	orreq r0, r0, #0x10000
	streq r0, [r1]
	bxeq lr
	ldr r0, [r1, #0]
	bic r0, r0, #0x30000
	orr r0, r0, r2, lsl #16
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020BDE38: .word 0x021CCB9C
_020BDE3C: .word 0x02101144
	arm_func_end sub_020BDDF8

	arm_func_start sub_020BDE40
sub_020BDE40: ; 0x020BDE40
	stmfd sp!, {r3, lr}
	ldr r3, _020BDE9C ; =0x02101144
	mov lr, #0x4000000
	ldrh ip, [r3]
	ldr lr, [lr]
	ldr r3, _020BDEA0 ; =0x021CCB9C
	cmp ip, #0
	strh r0, [r3]
	ldr r3, _020BDEA4 ; =0xFFF0FFF0
	moveq r0, #0
	and r3, lr, r3
	orr r0, r3, r0, lsl #16
	orr r0, r1, r0
	orr r1, r0, r2, lsl #3
	mov ip, #0x4000000
	ldr r0, _020BDEA0 ; =0x021CCB9C
	str r1, [ip]
	ldrh r0, [r0]
	cmp r0, #0
	ldreq r0, _020BDE9C ; =0x02101144
	moveq r1, #0
	streqh r1, [r0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDE9C: .word 0x02101144
_020BDEA0: .word 0x021CCB9C
_020BDEA4: .word 0xFFF0FFF0
	arm_func_end sub_020BDE40

	arm_func_start sub_020BDEA8
sub_020BDEA8: ; 0x020BDEA8
	ldr r2, _020BDEC0 ; =0x04001000
	ldr r1, [r2, #0]
	bic r1, r1, #7
	orr r0, r1, r0
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_020BDEC0: .word 0x04001000
	arm_func_end sub_020BDEA8

	arm_func_start sub_020BDEC4
sub_020BDEC4: ; 0x020BDEC4
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0]
	bxeq lr
	orrgt r1, r1, #0x4000
	strgth r1, [r0]
	rsble r1, r1, #0
	orrle r1, r1, #0x8000
	strleh r1, [r0]
	bx lr
	arm_func_end sub_020BDEC4

	arm_func_start sub_020BDEEC
sub_020BDEEC: ; 0x020BDEEC
	ldr r0, _020BDF44 ; =0x021CCBA0
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	ldr r1, _020BDF48 ; =0x04000240
	strh r2, [r0, #0x18]
	str r2, [r1, #0]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	strb r2, [r1, #6]
	strh r2, [r1, #8]
	bx lr
	; .align 2, 0
_020BDF44: .word 0x021CCBA0
_020BDF48: .word 0x04000240
	arm_func_end sub_020BDEEC

	arm_func_start sub_020BDF4C
sub_020BDF4C: ; 0x020BDF4C
	tst r0, #1
	ldrne r1, _020BDFE0 ; =0x04000240
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #2
	ldrne r1, _020BDFE4 ; =0x04000241
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #4
	ldrne r1, _020BDFE8 ; =0x04000242
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #8
	ldrne r1, _020BDFEC ; =0x04000243
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x10
	ldrne r1, _020BDFF0 ; =0x04000244
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x20
	ldrne r1, _020BDFF4 ; =0x04000245
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x40
	ldrne r1, _020BDFF8 ; =0x04000246
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x80
	ldrne r1, _020BDFFC ; =0x04000248
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x100
	ldrne r0, _020BE000 ; =0x04000249
	movne r1, #0x80
	strneb r1, [r0]
	bx lr
	; .align 2, 0
_020BDFE0: .word 0x04000240
_020BDFE4: .word 0x04000241
_020BDFE8: .word 0x04000242
_020BDFEC: .word 0x04000243
_020BDFF0: .word 0x04000244
_020BDFF4: .word 0x04000245
_020BDFF8: .word 0x04000246
_020BDFFC: .word 0x04000248
_020BE000: .word 0x04000249
	arm_func_end sub_020BDF4C

	arm_func_start sub_020BE004
sub_020BE004: ; 0x020BE004
	stmfd sp!, {r3, lr}
	ldr r1, _020BE274 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	cmp r0, #0x40
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #2]
	bgt _020BE0DC
	cmp r0, #0x40
	bge _020BE258
	cmp r0, #0x20
	bgt _020BE0D0
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020BE264
_020BE04C: ; jump table
	b _020BE264 ; case 0
	b _020BE178 ; case 1
	b _020BE144 ; case 2
	b _020BE16C ; case 3
	b _020BE11C ; case 4
	b _020BE1B4 ; case 5
	b _020BE138 ; case 6
	b _020BE160 ; case 7
	b _020BE100 ; case 8
	b _020BE1CC ; case 9
	b _020BE1E4 ; case 10
	b _020BE188 ; case 11
	b _020BE110 ; case 12
	b _020BE1A8 ; case 13
	b _020BE12C ; case 14
	b _020BE154 ; case 15
	b _020BE214 ; case 16
	b _020BE264 ; case 17
	b _020BE264 ; case 18
	b _020BE264 ; case 19
	b _020BE264 ; case 20
	b _020BE264 ; case 21
	b _020BE264 ; case 22
	b _020BE264 ; case 23
	b _020BE264 ; case 24
	b _020BE264 ; case 25
	b _020BE264 ; case 26
	b _020BE264 ; case 27
	b _020BE264 ; case 28
	b _020BE264 ; case 29
	b _020BE264 ; case 30
	b _020BE264 ; case 31
	b _020BE248 ; case 32
_020BE0D0:
	cmp r0, #0x30
	beq _020BE208
	b _020BE264
_020BE0DC:
	cmp r0, #0x60
	bgt _020BE0F4
	bge _020BE23C
	cmp r0, #0x50
	beq _020BE224
	b _020BE264
_020BE0F4:
	cmp r0, #0x70
	beq _020BE1FC
	b _020BE264
_020BE100:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE110:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x89
	strb r1, [r0]
_020BE11C:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE12C:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020BE138:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x89
	strb r1, [r0]
_020BE144:
	ldr r0, _020BE280 ; =0x04000241
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE154:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x99
	strb r1, [r0]
_020BE160:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x91
	strb r1, [r0]
_020BE16C:
	ldr r0, _020BE280 ; =0x04000241
	mov r1, #0x89
	strb r1, [r0]
_020BE178:
	ldr r0, _020BE284 ; =0x04000240
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE188:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #1]
	mov r0, #0x91
	strb r0, [r1, #3]
	b _020BE264
_020BE1A8:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020BE1B4:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _020BE264
_020BE1CC:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #3]
	b _020BE264
_020BE1E4:
	ldr r1, _020BE280 ; =0x04000241
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _020BE264
_020BE1FC:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_020BE208:
	ldr r0, _020BE28C ; =0x04000245
	mov r1, #0x91
	strb r1, [r0]
_020BE214:
	ldr r0, _020BE290 ; =0x04000244
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE224:
	ldr r1, _020BE288 ; =0x04000246
	mov r0, #0x91
	strb r0, [r1]
	mov r0, #0x81
	strb r0, [r1, #-2]
	b _020BE264
_020BE23C:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x89
	strb r1, [r0]
_020BE248:
	ldr r0, _020BE28C ; =0x04000245
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE258:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x81
	strb r1, [r0]
_020BE264:
	ldr r0, _020BE274 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE274: .word 0x021CCBA0
_020BE278: .word 0x04000243
_020BE27C: .word 0x04000242
_020BE280: .word 0x04000241
_020BE284: .word 0x04000240
_020BE288: .word 0x04000246
_020BE28C: .word 0x04000245
_020BE290: .word 0x04000244
	arm_func_end sub_020BE004

	arm_func_start sub_020BE294
sub_020BE294: ; 0x020BE294
	stmfd sp!, {r3, lr}
	ldr r1, _020BE3CC ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	cmp r0, #0x30
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #4]
	bgt _020BE2FC
	cmp r0, #0x30
	bge _020BE370
	cmp r0, #0x10
	bgt _020BE2F0
	bge _020BE37C
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020BE3BC
_020BE2E0: ; jump table
	b _020BE3BC ; case 0
	b _020BE344 ; case 1
	b _020BE354 ; case 2
	b _020BE338 ; case 3
_020BE2F0:
	cmp r0, #0x20
	beq _020BE3B0
	b _020BE3BC
_020BE2FC:
	cmp r0, #0x50
	bgt _020BE31C
	bge _020BE38C
	cmp r0, #0x40
	ldreq r0, _020BE3D0 ; =0x04000246
	moveq r1, #0x82
	streqb r1, [r0]
	b _020BE3BC
_020BE31C:
	cmp r0, #0x60
	bgt _020BE32C
	beq _020BE3A4
	b _020BE3BC
_020BE32C:
	cmp r0, #0x70
	beq _020BE364
	b _020BE3BC
_020BE338:
	ldr r0, _020BE3D4 ; =0x04000241
	mov r1, #0x8a
	strb r1, [r0]
_020BE344:
	ldr r0, _020BE3D8 ; =0x04000240
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE354:
	ldr r0, _020BE3D4 ; =0x04000241
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE364:
	ldr r0, _020BE3D0 ; =0x04000246
	mov r1, #0x9a
	strb r1, [r0]
_020BE370:
	ldr r0, _020BE3DC ; =0x04000245
	mov r1, #0x92
	strb r1, [r0]
_020BE37C:
	ldr r0, _020BE3E0 ; =0x04000244
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE38C:
	ldr r1, _020BE3D0 ; =0x04000246
	mov r0, #0x92
	strb r0, [r1]
	mov r0, #0x82
	strb r0, [r1, #-2]
	b _020BE3BC
_020BE3A4:
	ldr r0, _020BE3D0 ; =0x04000246
	mov r1, #0x8a
	strb r1, [r0]
_020BE3B0:
	ldr r0, _020BE3DC ; =0x04000245
	mov r1, #0x82
	strb r1, [r0]
_020BE3BC:
	ldr r0, _020BE3CC ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE3CC: .word 0x021CCBA0
_020BE3D0: .word 0x04000246
_020BE3D4: .word 0x04000241
_020BE3D8: .word 0x04000240
_020BE3DC: .word 0x04000245
_020BE3E0: .word 0x04000244
	arm_func_end sub_020BE294

	arm_func_start sub_020BE3E4
sub_020BE3E4: ; 0x020BE3E4
	stmfd sp!, {r3, lr}
	ldr r1, _020BE4D8 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xe]
	cmp r0, #0x20
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xe]
	bgt _020BE434
	cmp r0, #0x20
	bge _020BE498
	cmp r0, #0
	bgt _020BE428
	beq _020BE4B8
	b _020BE4C8
_020BE428:
	cmp r0, #0x10
	beq _020BE450
	b _020BE4C8
_020BE434:
	cmp r0, #0x40
	bgt _020BE444
	beq _020BE46C
	b _020BE4C8
_020BE444:
	cmp r0, #0x60
	beq _020BE48C
	b _020BE4C8
_020BE450:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	mov r0, #0x84
	orr r1, r1, #0x40000000
	str r1, [r2, #0]
	strb r0, [r2, #0x244]
	b _020BE4C8
_020BE46C:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE4DC ; =0x04000246
	orr r1, r1, #0x40000000
	str r1, [r2, #0]
	mov r1, #0x8c
	strb r1, [r0]
	b _020BE4C8
_020BE48C:
	ldr r0, _020BE4DC ; =0x04000246
	mov r1, #0x8c
	strb r1, [r0]
_020BE498:
	ldr r0, _020BE4E0 ; =0x04000245
	mov r1, #0x84
	strb r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	orr r0, r0, #0x40000000
	str r0, [r1, #0]
	b _020BE4C8
_020BE4B8:
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	bic r0, r0, #0x40000000
	str r0, [r1, #0]
_020BE4C8:
	ldr r0, _020BE4D8 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE4D8: .word 0x021CCBA0
_020BE4DC: .word 0x04000246
_020BE4E0: .word 0x04000245
	arm_func_end sub_020BE3E4

	arm_func_start sub_020BE4E4
sub_020BE4E4: ; 0x020BE4E4
	stmfd sp!, {r3, lr}
	ldr r1, _020BE584 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x10]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x10]
	beq _020BE564
	cmp r0, #0x20
	beq _020BE524
	cmp r0, #0x40
	beq _020BE544
	b _020BE574
_020BE524:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE588 ; =0x04000245
	orr r1, r1, #0x80000000
	str r1, [r2, #0]
	mov r1, #0x85
	strb r1, [r0]
	b _020BE574
_020BE544:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE58C ; =0x04000246
	orr r1, r1, #0x80000000
	str r1, [r2, #0]
	mov r1, #0x85
	strb r1, [r0]
	b _020BE574
_020BE564:
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	bic r0, r0, #0x80000000
	str r0, [r1, #0]
_020BE574:
	ldr r0, _020BE584 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE584: .word 0x021CCBA0
_020BE588: .word 0x04000245
_020BE58C: .word 0x04000246
	arm_func_end sub_020BE4E4

	arm_func_start sub_020BE590
sub_020BE590: ; 0x020BE590
	stmfd sp!, {r3, lr}
	ldr r1, _020BE74C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #8]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #8]
	ldr r2, _020BE750 ; =0x04000060
	bne _020BE5D4
	ldrh r1, [r2]
	ldr r0, _020BE754 ; =0x0000CFFE
	and r0, r1, r0
	strh r0, [r2]
	b _020BE73C
_020BE5D4:
	ldrh r1, [r2]
	cmp r0, #0xf
	bic r1, r1, #0x3000
	orr r1, r1, #1
	strh r1, [r2]
	addls pc, pc, r0, lsl #2
	b _020BE73C
_020BE5F0: ; jump table
	b _020BE73C ; case 0
	b _020BE730 ; case 1
	b _020BE6FC ; case 2
	b _020BE724 ; case 3
	b _020BE6D4 ; case 4
	b _020BE630 ; case 5
	b _020BE6F0 ; case 6
	b _020BE718 ; case 7
	b _020BE6B8 ; case 8
	b _020BE648 ; case 9
	b _020BE660 ; case 10
	b _020BE678 ; case 11
	b _020BE6C8 ; case 12
	b _020BE698 ; case 13
	b _020BE6E4 ; case 14
	b _020BE70C ; case 15
_020BE630:
	mov r1, #0x83
	ldr r0, _020BE758 ; =0x04000242
	strb r1, [r2, #0x1e0]
	mov r1, #0x8b
	strb r1, [r0]
	b _020BE73C
_020BE648:
	mov r1, #0x83
	ldr r0, _020BE75C ; =0x04000243
	strb r1, [r2, #0x1e0]
	mov r1, #0x8b
	strb r1, [r0]
	b _020BE73C
_020BE660:
	ldr r1, _020BE760 ; =0x04000241
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _020BE73C
_020BE678:
	mov r0, #0x83
	ldr r1, _020BE760 ; =0x04000241
	strb r0, [r2, #0x1e0]
	mov r0, #0x8b
	strb r0, [r1]
	mov r0, #0x93
	strb r0, [r1, #2]
	b _020BE73C
_020BE698:
	mov r0, #0x83
	ldr r1, _020BE758 ; =0x04000242
	strb r0, [r2, #0x1e0]
	mov r0, #0x8b
	strb r0, [r1]
	mov r0, #0x93
	strb r0, [r1, #1]
	b _020BE73C
_020BE6B8:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE6C8:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x8b
	strb r1, [r0]
_020BE6D4:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE6E4:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x93
	strb r1, [r0]
_020BE6F0:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x8b
	strb r1, [r0]
_020BE6FC:
	ldr r0, _020BE760 ; =0x04000241
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE70C:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x9b
	strb r1, [r0]
_020BE718:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_020BE724:
	ldr r0, _020BE760 ; =0x04000241
	mov r1, #0x8b
	strb r1, [r0]
_020BE730:
	ldr r0, _020BE764 ; =0x04000240
	mov r1, #0x83
	strb r1, [r0]
_020BE73C:
	ldr r0, _020BE74C ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE74C: .word 0x021CCBA0
_020BE750: .word 0x04000060
_020BE754: .word 0x0000CFFE
_020BE758: .word 0x04000242
_020BE75C: .word 0x04000243
_020BE760: .word 0x04000241
_020BE764: .word 0x04000240
	arm_func_end sub_020BE590

	arm_func_start sub_020BE768
sub_020BE768: ; 0x020BE768
	stmfd sp!, {r3, lr}
	ldr r1, _020BE840 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xa]
	cmp r0, #0x30
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xa]
	bgt _020BE7BC
	cmp r0, #0x30
	bge _020BE818
	cmp r0, #0x10
	bgt _020BE7B0
	bge _020BE824
	cmp r0, #0
	b _020BE830
_020BE7B0:
	cmp r0, #0x20
	beq _020BE7EC
	b _020BE830
_020BE7BC:
	cmp r0, #0x60
	bgt _020BE7D4
	bge _020BE7E0
	cmp r0, #0x40
	beq _020BE7FC
	b _020BE830
_020BE7D4:
	cmp r0, #0x70
	beq _020BE80C
	b _020BE830
_020BE7E0:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x8b
	strb r1, [r0]
_020BE7EC:
	ldr r0, _020BE848 ; =0x04000245
	mov r1, #0x83
	strb r1, [r0]
	b _020BE830
_020BE7FC:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x83
	strb r1, [r0]
	b _020BE830
_020BE80C:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x9b
	strb r1, [r0]
_020BE818:
	ldr r0, _020BE848 ; =0x04000245
	mov r1, #0x93
	strb r1, [r0]
_020BE824:
	ldr r0, _020BE84C ; =0x04000244
	mov r1, #0x83
	strb r1, [r0]
_020BE830:
	ldr r0, _020BE840 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE840: .word 0x021CCBA0
_020BE844: .word 0x04000246
_020BE848: .word 0x04000245
_020BE84C: .word 0x04000244
	arm_func_end sub_020BE768

	arm_func_start sub_020BE850
sub_020BE850: ; 0x020BE850
	stmfd sp!, {r3, lr}
	ldr r1, _020BE96C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xc]
	cmp r0, #0xc
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xc]
	addls pc, pc, r0, lsl #2
	b _020BE95C
_020BE880: ; jump table
	b _020BE90C ; case 0
	b _020BE920 ; case 1
	b _020BE8C0 ; case 2
	b _020BE8B4 ; case 3
	b _020BE940 ; case 4
	b _020BE95C ; case 5
	b _020BE95C ; case 6
	b _020BE95C ; case 7
	b _020BE8EC ; case 8
	b _020BE95C ; case 9
	b _020BE95C ; case 10
	b _020BE95C ; case 11
	b _020BE8E0 ; case 12
_020BE8B4:
	ldr r0, _020BE970 ; =0x04000240
	mov r1, #0x93
	strb r1, [r0]
_020BE8C0:
	ldr r0, _020BE974 ; =0x04000241
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE8E0:
	ldr r0, _020BE97C ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_020BE8EC:
	ldr r0, _020BE980 ; =0x04000243
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE90C:
	ldr r1, _020BE978 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE920:
	ldr r0, _020BE970 ; =0x04000240
	mov r1, #0x9b
	strb r1, [r0]
	sub r1, r0, #0x1e0
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE940:
	ldr r0, _020BE97C ; =0x04000242
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
_020BE95C:
	ldr r0, _020BE96C ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE96C: .word 0x021CCBA0
_020BE970: .word 0x04000240
_020BE974: .word 0x04000241
_020BE978: .word 0x04000060
_020BE97C: .word 0x04000242
_020BE980: .word 0x04000243
	arm_func_end sub_020BE850

	arm_func_start sub_020BE984
sub_020BE984: ; 0x020BE984
	stmfd sp!, {r3, lr}
	ldr r1, _020BEA24 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #6]
	cmp r0, #8
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #6]
	bgt _020BE9D8
	cmp r0, #8
	bge _020BEA08
	cmp r0, #4
	bgt _020BEA14
	cmp r0, #0
	blt _020BEA14
	beq _020BEA14
	cmp r0, #4
	beq _020BE9F8
	b _020BEA14
_020BE9D8:
	cmp r0, #0xc
	bne _020BEA14
	ldr r1, _020BEA28 ; =0x04000243
	mov r0, #0x8a
	strb r0, [r1]
	mov r0, #0x82
	strb r0, [r1, #-1]
	b _020BEA14
_020BE9F8:
	ldr r0, _020BEA2C ; =0x04000242
	mov r1, #0x82
	strb r1, [r0]
	b _020BEA14
_020BEA08:
	ldr r0, _020BEA28 ; =0x04000243
	mov r1, #0x82
	strb r1, [r0]
_020BEA14:
	ldr r0, _020BEA24 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEA24: .word 0x021CCBA0
_020BEA28: .word 0x04000243
_020BEA2C: .word 0x04000242
	arm_func_end sub_020BE984

	arm_func_start sub_020BEA30
sub_020BEA30: ; 0x020BEA30
	ldr r1, _020BEA48 ; =0x021CCBA0
	ldr ip, _020BEA4C ; =sub_020BDF4C
	ldrh r2, [r1]
	orr r2, r2, r0
	strh r2, [r1]
	bx ip
	; .align 2, 0
_020BEA48: .word 0x021CCBA0
_020BEA4C: .word sub_020BDF4C
	arm_func_end sub_020BEA30

	arm_func_start sub_020BEA50
sub_020BEA50: ; 0x020BEA50
	stmfd sp!, {r3, lr}
	ldr r1, _020BEAE8 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x12]
	cmp r0, #0x80
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x12]
	bgt _020BEAA4
	cmp r0, #0x80
	bge _020BEACC
	cmp r0, #4
	bgt _020BEAD8
	cmp r0, #0
	blt _020BEAD8
	beq _020BEAD8
	cmp r0, #4
	beq _020BEAB0
	b _020BEAD8
_020BEAA4:
	cmp r0, #0x180
	beq _020BEAC0
	b _020BEAD8
_020BEAB0:
	ldr r0, _020BEAEC ; =0x04000242
	mov r1, #0x84
	strb r1, [r0]
	b _020BEAD8
_020BEAC0:
	ldr r0, _020BEAF0 ; =0x04000249
	mov r1, #0x81
	strb r1, [r0]
_020BEACC:
	ldr r0, _020BEAF4 ; =0x04000248
	mov r1, #0x81
	strb r1, [r0]
_020BEAD8:
	ldr r0, _020BEAE8 ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEAE8: .word 0x021CCBA0
_020BEAEC: .word 0x04000242
_020BEAF0: .word 0x04000249
_020BEAF4: .word 0x04000248
	arm_func_end sub_020BEA50

	arm_func_start sub_020BEAF8
sub_020BEAF8: ; 0x020BEAF8
	stmfd sp!, {r3, lr}
	ldr r1, _020BEB5C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x14]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x14]
	beq _020BEB4C
	cmp r0, #8
	beq _020BEB40
	cmp r0, #0x100
	ldreq r0, _020BEB60 ; =0x04000249
	moveq r1, #0x82
	streqb r1, [r0]
	b _020BEB4C
_020BEB40:
	ldr r0, _020BEB64 ; =0x04000243
	mov r1, #0x84
	strb r1, [r0]
_020BEB4C:
	ldr r0, _020BEB5C ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEB5C: .word 0x021CCBA0
_020BEB60: .word 0x04000249
_020BEB64: .word 0x04000243
	arm_func_end sub_020BEAF8

	arm_func_start sub_020BEB68
sub_020BEB68: ; 0x020BEB68
	stmfd sp!, {r3, lr}
	ldr r1, _020BEBDC ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x16]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x16]
	beq _020BEBBC
	cmp r0, #0x80
	bne _020BEBCC
	ldr r3, _020BEBE0 ; =0x04001000
	ldr r0, _020BEBE4 ; =0x04000248
	ldr r2, [r3, #0]
	mov r1, #0x82
	orr r2, r2, #0x40000000
	str r2, [r3, #0]
	strb r1, [r0]
	b _020BEBCC
_020BEBBC:
	ldr r1, _020BEBE0 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x40000000
	str r0, [r1, #0]
_020BEBCC:
	ldr r0, _020BEBDC ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEBDC: .word 0x021CCBA0
_020BEBE0: .word 0x04001000
_020BEBE4: .word 0x04000248
	arm_func_end sub_020BEB68

	arm_func_start sub_020BEBE8
sub_020BEBE8: ; 0x020BEBE8
	stmfd sp!, {r3, lr}
	ldr r1, _020BEC5C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x18]
	beq _020BEC3C
	cmp r0, #0x100
	bne _020BEC4C
	ldr r3, _020BEC60 ; =0x04001000
	ldr r0, _020BEC64 ; =0x04000249
	ldr r2, [r3, #0]
	mov r1, #0x83
	orr r2, r2, #0x80000000
	str r2, [r3, #0]
	strb r1, [r0]
	b _020BEC4C
_020BEC3C:
	ldr r1, _020BEC60 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x80000000
	str r0, [r1, #0]
_020BEC4C:
	ldr r0, _020BEC5C ; =0x021CCBA0
	ldrh r0, [r0]
	bl sub_020BDF4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEC5C: .word 0x021CCBA0
_020BEC60: .word 0x04001000
_020BEC64: .word 0x04000249
	arm_func_end sub_020BEBE8

	arm_func_start sub_020BEC68
sub_020BEC68: ; 0x020BEC68
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r2, #0
	ldr r1, _020BEC98 ; =0x021CCBA0
	strh r2, [r0]
	ldrh r2, [r1]
	mov r0, r4
	orr r2, r2, r4
	strh r2, [r1]
	bl sub_020BDF4C
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BEC98: .word 0x021CCBA0
	arm_func_end sub_020BEC68

	arm_func_start sub_020BEC9C
sub_020BEC9C: ; 0x020BEC9C
	ldr ip, _020BECA8 ; =sub_020BEC68
	ldr r0, _020BECAC ; =0x021CCBA2
	bx ip
	; .align 2, 0
_020BECA8: .word sub_020BEC68
_020BECAC: .word 0x021CCBA2
	arm_func_end sub_020BEC9C

	arm_func_start sub_020BECB0
sub_020BECB0: ; 0x020BECB0
	ldr ip, _020BECBC ; =sub_020BEC68
	ldr r0, _020BECC0 ; =0x021CCBA4
	bx ip
	; .align 2, 0
_020BECBC: .word sub_020BEC68
_020BECC0: .word 0x021CCBA4
	arm_func_end sub_020BECB0

	arm_func_start sub_020BECC4
sub_020BECC4: ; 0x020BECC4
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BECE0 ; =sub_020BEC68
	bic r1, r1, #0x40000000
	ldr r0, _020BECE4 ; =0x021CCBAE
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BECE0: .word sub_020BEC68
_020BECE4: .word 0x021CCBAE
	arm_func_end sub_020BECC4

	arm_func_start sub_020BECE8
sub_020BECE8: ; 0x020BECE8
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BED04 ; =sub_020BEC68
	bic r1, r1, #0x80000000
	ldr r0, _020BED08 ; =0x021CCBB0
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BED04: .word sub_020BEC68
_020BED08: .word 0x021CCBB0
	arm_func_end sub_020BECE8

	arm_func_start sub_020BED0C
sub_020BED0C: ; 0x020BED0C
	ldr ip, _020BED18 ; =sub_020BEC68
	ldr r0, _020BED1C ; =0x021CCBA8
	bx ip
	; .align 2, 0
_020BED18: .word sub_020BEC68
_020BED1C: .word 0x021CCBA8
	arm_func_end sub_020BED0C

	arm_func_start sub_020BED20
sub_020BED20: ; 0x020BED20
	ldr ip, _020BED2C ; =sub_020BEC68
	ldr r0, _020BED30 ; =0x021CCBAA
	bx ip
	; .align 2, 0
_020BED2C: .word sub_020BEC68
_020BED30: .word 0x021CCBAA
	arm_func_end sub_020BED20

	arm_func_start sub_020BED34
sub_020BED34: ; 0x020BED34
	ldr ip, _020BED40 ; =sub_020BEC68
	ldr r0, _020BED44 ; =0x021CCBAC
	bx ip
	; .align 2, 0
_020BED40: .word sub_020BEC68
_020BED44: .word 0x021CCBAC
	arm_func_end sub_020BED34

	arm_func_start sub_020BED48
sub_020BED48: ; 0x020BED48
	ldr ip, _020BED54 ; =sub_020BEC68
	ldr r0, _020BED58 ; =0x021CCBB2
	bx ip
	; .align 2, 0
_020BED54: .word sub_020BEC68
_020BED58: .word 0x021CCBB2
	arm_func_end sub_020BED48

	arm_func_start sub_020BED5C
sub_020BED5C: ; 0x020BED5C
	ldr ip, _020BED68 ; =sub_020BEC68
	ldr r0, _020BED6C ; =0x021CCBB4
	bx ip
	; .align 2, 0
_020BED68: .word sub_020BEC68
_020BED6C: .word 0x021CCBB4
	arm_func_end sub_020BED5C

	arm_func_start sub_020BED70
sub_020BED70: ; 0x020BED70
	ldr r2, _020BED8C ; =0x04001000
	ldr ip, _020BED90 ; =sub_020BEC68
	ldr r1, [r2, #0]
	ldr r0, _020BED94 ; =0x021CCBB6
	bic r1, r1, #0x40000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BED8C: .word 0x04001000
_020BED90: .word sub_020BEC68
_020BED94: .word 0x021CCBB6
	arm_func_end sub_020BED70

	arm_func_start sub_020BED98
sub_020BED98: ; 0x020BED98
	ldr r2, _020BEDB4 ; =0x04001000
	ldr ip, _020BEDB8 ; =sub_020BEC68
	ldr r1, [r2, #0]
	ldr r0, _020BEDBC ; =0x021CCBB8
	bic r1, r1, #0x80000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEDB4: .word 0x04001000
_020BEDB8: .word sub_020BEC68
_020BEDBC: .word 0x021CCBB8
	arm_func_end sub_020BED98

	arm_func_start sub_020BEDC0
sub_020BEDC0: ; 0x020BEDC0
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	tst r4, #1
	ldrne r0, _020BEE78 ; =0x04000240
	strneb r1, [r0]
	tst r4, #2
	ldrne r0, _020BEE7C ; =0x04000241
	movne r1, #0
	strneb r1, [r0]
	tst r4, #4
	ldrne r0, _020BEE80 ; =0x04000242
	movne r1, #0
	strneb r1, [r0]
	tst r4, #8
	ldrne r0, _020BEE84 ; =0x04000243
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x10
	ldrne r0, _020BEE88 ; =0x04000244
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x20
	ldrne r0, _020BEE8C ; =0x04000245
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x40
	ldrne r0, _020BEE90 ; =0x04000246
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x80
	ldrne r0, _020BEE94 ; =0x04000248
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x100
	ldrne r0, _020BEE98 ; =0x04000249
	movne r1, #0
	strneb r1, [r0]
	ldr r1, _020BEE9C ; =0x021CCB9E
	mov r0, r4, lsl #0x10
	ldrh r1, [r1]
	mov r0, r0, lsr #0x10
	bl sub_020C4150
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BEE78: .word 0x04000240
_020BEE7C: .word 0x04000241
_020BEE80: .word 0x04000242
_020BEE84: .word 0x04000243
_020BEE88: .word 0x04000244
_020BEE8C: .word 0x04000245
_020BEE90: .word 0x04000246
_020BEE94: .word 0x04000248
_020BEE98: .word 0x04000249
_020BEE9C: .word 0x021CCB9E
	arm_func_end sub_020BEDC0

	arm_func_start sub_020BEEA0
sub_020BEEA0: ; 0x020BEEA0
	ldr ip, _020BEEAC ; =sub_020BEDC0
	ldr r0, _020BEEB0 ; =0x021CCBA2
	bx ip
	; .align 2, 0
_020BEEAC: .word sub_020BEDC0
_020BEEB0: .word 0x021CCBA2
	arm_func_end sub_020BEEA0

	arm_func_start sub_020BEEB4
sub_020BEEB4: ; 0x020BEEB4
	ldr ip, _020BEEC0 ; =sub_020BEDC0
	ldr r0, _020BEEC4 ; =0x021CCBA4
	bx ip
	; .align 2, 0
_020BEEC0: .word sub_020BEDC0
_020BEEC4: .word 0x021CCBA4
	arm_func_end sub_020BEEB4

	arm_func_start sub_020BEEC8
sub_020BEEC8: ; 0x020BEEC8
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BEEE4 ; =sub_020BEDC0
	bic r1, r1, #0x40000000
	ldr r0, _020BEEE8 ; =0x021CCBAE
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEEE4: .word sub_020BEDC0
_020BEEE8: .word 0x021CCBAE
	arm_func_end sub_020BEEC8

	arm_func_start sub_020BEEEC
sub_020BEEEC: ; 0x020BEEEC
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BEF08 ; =sub_020BEDC0
	bic r1, r1, #0x80000000
	ldr r0, _020BEF0C ; =0x021CCBB0
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEF08: .word sub_020BEDC0
_020BEF0C: .word 0x021CCBB0
	arm_func_end sub_020BEEEC

	arm_func_start sub_020BEF10
sub_020BEF10: ; 0x020BEF10
	ldr ip, _020BEF1C ; =sub_020BEDC0
	ldr r0, _020BEF20 ; =0x021CCBA8
	bx ip
	; .align 2, 0
_020BEF1C: .word sub_020BEDC0
_020BEF20: .word 0x021CCBA8
	arm_func_end sub_020BEF10

	arm_func_start sub_020BEF24
sub_020BEF24: ; 0x020BEF24
	ldr ip, _020BEF30 ; =sub_020BEDC0
	ldr r0, _020BEF34 ; =0x021CCBAA
	bx ip
	; .align 2, 0
_020BEF30: .word sub_020BEDC0
_020BEF34: .word 0x021CCBAA
	arm_func_end sub_020BEF24

	arm_func_start sub_020BEF38
sub_020BEF38: ; 0x020BEF38
	ldr ip, _020BEF44 ; =sub_020BEDC0
	ldr r0, _020BEF48 ; =0x021CCBAC
	bx ip
	; .align 2, 0
_020BEF44: .word sub_020BEDC0
_020BEF48: .word 0x021CCBAC
	arm_func_end sub_020BEF38

	arm_func_start sub_020BEF4C
sub_020BEF4C: ; 0x020BEF4C
	ldr ip, _020BEF58 ; =sub_020BEDC0
	ldr r0, _020BEF5C ; =0x021CCBA6
	bx ip
	; .align 2, 0
_020BEF58: .word sub_020BEDC0
_020BEF5C: .word 0x021CCBA6
	arm_func_end sub_020BEF4C

	arm_func_start sub_020BEF60
sub_020BEF60: ; 0x020BEF60
	ldr ip, _020BEF6C ; =sub_020BEDC0
	ldr r0, _020BEF70 ; =0x021CCBA0
	bx ip
	; .align 2, 0
_020BEF6C: .word sub_020BEDC0
_020BEF70: .word 0x021CCBA0
	arm_func_end sub_020BEF60

	arm_func_start sub_020BEF74
sub_020BEF74: ; 0x020BEF74
	ldr ip, _020BEF80 ; =sub_020BEDC0
	ldr r0, _020BEF84 ; =0x021CCBB2
	bx ip
	; .align 2, 0
_020BEF80: .word sub_020BEDC0
_020BEF84: .word 0x021CCBB2
	arm_func_end sub_020BEF74

	arm_func_start sub_020BEF88
sub_020BEF88: ; 0x020BEF88
	ldr ip, _020BEF94 ; =sub_020BEDC0
	ldr r0, _020BEF98 ; =0x021CCBB4
	bx ip
	; .align 2, 0
_020BEF94: .word sub_020BEDC0
_020BEF98: .word 0x021CCBB4
	arm_func_end sub_020BEF88

	arm_func_start sub_020BEF9C
sub_020BEF9C: ; 0x020BEF9C
	ldr r2, _020BEFB8 ; =0x04001000
	ldr ip, _020BEFBC ; =sub_020BEDC0
	ldr r1, [r2, #0]
	ldr r0, _020BEFC0 ; =0x021CCBB6
	bic r1, r1, #0x40000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEFB8: .word 0x04001000
_020BEFBC: .word sub_020BEDC0
_020BEFC0: .word 0x021CCBB6
	arm_func_end sub_020BEF9C

	arm_func_start sub_020BEFC4
sub_020BEFC4: ; 0x020BEFC4
	ldr r2, _020BEFE0 ; =0x04001000
	ldr ip, _020BEFE4 ; =sub_020BEDC0
	ldr r1, [r2, #0]
	ldr r0, _020BEFE8 ; =0x021CCBB8
	bic r1, r1, #0x80000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEFE0: .word 0x04001000
_020BEFE4: .word sub_020BEDC0
_020BEFE8: .word 0x021CCBB8
	arm_func_end sub_020BEFC4

	arm_func_start sub_020BEFEC
sub_020BEFEC: ; 0x020BEFEC
	ldr r0, _020BEFF8 ; =0x021CCBA0
	ldrh r0, [r0, #4]
	bx lr
	; .align 2, 0
_020BEFF8: .word 0x021CCBA0
	arm_func_end sub_020BEFEC

	arm_func_start sub_020BEFFC
sub_020BEFFC: ; 0x020BEFFC
	ldr r0, _020BF008 ; =0x021CCBA0
	ldrh r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020BF008: .word 0x021CCBA0
	arm_func_end sub_020BEFFC

	arm_func_start sub_020BF00C
sub_020BF00C: ; 0x020BF00C
	ldr r0, _020BF018 ; =0x021CCBA0
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020BF018: .word 0x021CCBA0
	arm_func_end sub_020BF00C

	arm_func_start sub_020BF01C
sub_020BF01C: ; 0x020BF01C
	ldr r0, _020BF028 ; =0x021CCBA0
	ldrh r0, [r0, #0x14]
	bx lr
	; .align 2, 0
_020BF028: .word 0x021CCBA0
	arm_func_end sub_020BF01C

	arm_func_start sub_020BF02C
sub_020BF02C: ; 0x020BF02C
	ldr r0, _020BF038 ; =0x021CCBA0
	ldrh r0, [r0, #0x18]
	bx lr
	; .align 2, 0
_020BF038: .word 0x021CCBA0
	arm_func_end sub_020BF02C

	arm_func_start sub_020BF03C
sub_020BF03C: ; 0x020BF03C
	ldr r1, _020BF06C ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	; .align 2, 0
_020BF06C: .word 0x04000008
	arm_func_end sub_020BF03C

	arm_func_start sub_020BF070
sub_020BF070: ; 0x020BF070
	ldr r0, _020BF08C ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF08C: .word 0x04001008
	arm_func_end sub_020BF070

	arm_func_start sub_020BF090
sub_020BF090: ; 0x020BF090
	ldr r1, _020BF0C0 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	; .align 2, 0
_020BF0C0: .word 0x0400000A
	arm_func_end sub_020BF090

	arm_func_start sub_020BF0C4
sub_020BF0C4: ; 0x020BF0C4
	ldr r0, _020BF0E0 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF0E0: .word 0x0400100A
	arm_func_end sub_020BF0C4

	arm_func_start sub_020BF0E4
sub_020BF0E4: ; 0x020BF0E4
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	ldrh r3, [r0, #0xc]
	ldr r0, [r0, #0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020BF160
_020BF118: ; jump table
	b _020BF134 ; case 0
	b _020BF134 ; case 1
	b _020BF134 ; case 2
	b _020BF134 ; case 3
	b _020BF134 ; case 4
	b _020BF140 ; case 5
	b _020BF158 ; case 6
_020BF134:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020BF140:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020BF158:
	mov r0, #0x6000000
	bx lr
_020BF160:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF0E4

	arm_func_start sub_020BF168
sub_020BF168: ; 0x020BF168
	ldr r1, _020BF1D8 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xc]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _020BF1D0
_020BF18C: ; jump table
	b _020BF1A8 ; case 0
	b _020BF1A8 ; case 1
	b _020BF1A8 ; case 2
	b _020BF1A8 ; case 3
	b _020BF1A8 ; case 4
	b _020BF1B4 ; case 5
	b _020BF1C8 ; case 6
_020BF1A8:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF1B4:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF1C8:
	mov r0, #0
	bx lr
_020BF1D0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF1D8: .word 0x04001000
	arm_func_end sub_020BF168

	arm_func_start sub_020BF1DC
sub_020BF1DC: ; 0x020BF1DC
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	ldrh r3, [r0, #0xe]
	ldr r0, [r0, #0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020BF258
_020BF210: ; jump table
	b _020BF22C ; case 0
	b _020BF22C ; case 1
	b _020BF22C ; case 2
	b _020BF238 ; case 3
	b _020BF238 ; case 4
	b _020BF238 ; case 5
	b _020BF250 ; case 6
_020BF22C:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020BF238:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020BF250:
	mov r0, #0
	bx lr
_020BF258:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF1DC

	arm_func_start sub_020BF260
sub_020BF260: ; 0x020BF260
	ldr r1, _020BF2D0 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xe]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _020BF2C8
_020BF284: ; jump table
	b _020BF2A0 ; case 0
	b _020BF2A0 ; case 1
	b _020BF2A0 ; case 2
	b _020BF2AC ; case 3
	b _020BF2AC ; case 4
	b _020BF2AC ; case 5
	b _020BF2C0 ; case 6
_020BF2A0:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF2AC:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF2C0:
	mov r0, #0
	bx lr
_020BF2C8:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF2D0: .word 0x04001000
	arm_func_end sub_020BF260

	arm_func_start sub_020BF2D4
sub_020BF2D4: ; 0x020BF2D4
	ldr r1, _020BF304 ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	; .align 2, 0
_020BF304: .word 0x04000008
	arm_func_end sub_020BF2D4

	arm_func_start sub_020BF308
sub_020BF308: ; 0x020BF308
	ldr r0, _020BF324 ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF324: .word 0x04001008
	arm_func_end sub_020BF308

	arm_func_start sub_020BF328
sub_020BF328: ; 0x020BF328
	ldr r1, _020BF358 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	; .align 2, 0
_020BF358: .word 0x0400000A
	arm_func_end sub_020BF328

	arm_func_start sub_020BF35C
sub_020BF35C: ; 0x020BF35C
	ldr r0, _020BF378 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF378: .word 0x0400100A
	arm_func_end sub_020BF35C

	arm_func_start sub_020BF37C
sub_020BF37C: ; 0x020BF37C
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	ldrh r2, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _020BF39C
	tst r2, #0x80
	bne _020BF3C4
_020BF39C:
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_020BF3C4:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF37C

	arm_func_start sub_020BF3CC
sub_020BF3CC: ; 0x020BF3CC
	ldr r1, _020BF408 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _020BF3EC
	tst r1, #0x80
	bne _020BF400
_020BF3EC:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_020BF400:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF408: .word 0x04001000
	arm_func_end sub_020BF3CC

	arm_func_start sub_020BF40C
sub_020BF40C: ; 0x020BF40C
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	ldrh r2, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _020BF434
	cmp r0, #6
	bge _020BF45C
	tst r2, #0x80
	bne _020BF45C
_020BF434:
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_020BF45C:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF40C

	arm_func_start sub_020BF464
sub_020BF464: ; 0x020BF464
	ldr r1, _020BF4A8 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _020BF48C
	cmp r0, #6
	bge _020BF4A0
	tst r1, #0x80
	bne _020BF4A0
_020BF48C:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_020BF4A0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF4A8: .word 0x04001000
	arm_func_end sub_020BF464

	arm_func_start sub_020BF4AC
sub_020BF4AC: ; 0x020BF4AC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r1, #4]
	ldr r5, [r1, #0]
	mov ip, r4, lsl #0xc
	mov r4, ip, asr #0x10
	mov ip, r5, lsl #0xc
	mov lr, r4, lsl #0x10
	mov r5, ip, asr #0x10
	mov r4, lr, lsr #0x10
	mov ip, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	orr r4, r4, ip, lsr #16
	str r4, [r0, #0]
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #8]
	mov ip, r4, lsl #0xc
	mov r4, ip, asr #0x10
	mov ip, r5, lsl #0xc
	mov lr, r4, lsl #0x10
	mov r6, ip, asr #0x10
	mov r5, lr, lsr #0x10
	ldr r4, [sp, #0x14]
	mov ip, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	orr r5, r5, ip, lsr #16
	str r5, [r0, #4]
	ldr r6, [sp, #0x10]
	ldr ip, [r1, #4]
	sub r5, r4, r3
	ldr r4, [r1, #0xc]
	mul lr, ip, lr
	mul r5, r4, r5
	ldr ip, [r1]
	sub r6, r6, r2
	ldr r4, [r1, #8]
	mla r1, ip, r6, lr
	mla r5, r4, r6, r5
	add r1, r1, r2, lsl #12
	add r2, r5, r3, lsl #12
	mov r1, r1, asr #4
	str r1, [r0, #8]
	mov r1, r2, asr #4
	str r1, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BF4AC

	arm_func_start sub_020BF55C
sub_020BF55C: ; 0x020BF55C
	ldr ip, [sp]
	orr r1, r1, #0x40
	orr r2, r1, r2, lsl #8
	orr r1, r3, ip, lsl #8
	orr r1, r2, r1, lsl #16
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020BF55C

	arm_func_start sub_020BF578
sub_020BF578: ; 0x020BF578
	cmp r2, #0
	orrge r1, r1, #0x80
	strgeh r1, [r0]
	strgeh r2, [r0, #4]
	bxge lr
	orr r1, r1, #0xc0
	strh r1, [r0]
	rsb r1, r2, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF578

	arm_func_start sub_020BF5A0
sub_020BF5A0: ; 0x020BF5A0
	stmfd sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr ip, [sp, #0xc]
	orr r3, r3, lr, lsl #8
	strh r3, [r0, #2]
	cmp ip, #0
	bge _020BF5D4
	orr r1, r1, #0xc0
	orr r1, r1, r2, lsl #8
	strh r1, [r0]
	rsb r1, ip, #0
	strh r1, [r0, #4]
	ldmia sp!, {r3, pc}
_020BF5D4:
	orr r1, r1, #0x80
	orr r1, r1, r2, lsl #8
	strh r1, [r0]
	strh ip, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF5A0

	arm_func_start sub_020BF5E8
sub_020BF5E8: ; 0x020BF5E8
	ldrh r3, [r0]
	cmp r1, #0
	and r2, r3, #0xc0
	bge _020BF614
	cmp r2, #0x80
	biceq r2, r3, #0xc0
	orreq r2, r2, #0xc0
	streqh r2, [r0]
	rsb r1, r1, #0
	strh r1, [r0, #4]
	bx lr
_020BF614:
	cmp r2, #0xc0
	biceq r2, r3, #0xc0
	orreq r2, r2, #0x80
	streqh r2, [r0]
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF5E8

	arm_func_start sub_020BF62C
sub_020BF62C: ; 0x020BF62C
	mov r3, r0
	ldr r0, [r3, #0]
	mov r2, #0x16
	str r2, [r0, #0]
	mov r0, r1
	ldr ip, _020BF64C ; =sub_020C4CC8
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020BF64C: .word sub_020C4CC8
	arm_func_end sub_020BF62C

	arm_func_start sub_020BF650
sub_020BF650: ; 0x020BF650
	ldr r1, [r0, #0]
	mov r2, #0x11
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF650

	arm_func_start sub_020BF670
sub_020BF670: ; 0x020BF670
	ldr r2, [r0, #0]
	mov r3, #0x12
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF670

	arm_func_start sub_020BF69C
sub_020BF69C: ; 0x020BF69C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020BF62C
	ldr r0, [r4, #4]
	add r0, r0, #0x40
	str r0, [r4, #0]
	add r0, r0, #4
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BF69C

	arm_func_start sub_020BF6C0
sub_020BF6C0: ; 0x020BF6C0
	ldr r2, [r0, #0]
	mov r3, #0x20
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF6C0

	arm_func_start sub_020BF6EC
sub_020BF6EC: ; 0x020BF6EC
	stmfd sp!, {r4, lr}
	mov r4, #0x21
	ldr lr, [r0]
	rsb ip, r4, #0x420
	str r4, [lr]
	mov lr, r3, asr #3
	and r3, ip, r1, asr #3
	mov r2, r2, asr #3
	mov r1, r2, lsl #0x16
	orr r2, r3, r1, lsr #12
	mov ip, lr, lsl #0x16
	ldr r1, [r0, #4]
	orr r2, r2, ip, lsr #2
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BF6EC

	arm_func_start sub_020BF73C
sub_020BF73C: ; 0x020BF73C
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov r2, r2, lsl #0x10
	mov lr, #0x23
	str lr, [ip]
	mov r2, r2, lsr #0x10
	mov ip, r2, lsl #0x10
	mov r2, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	ldr r3, [r0, #4]
	orr r1, ip, r1, lsr #16
	str r1, [r3, #0]
	ldr r1, [r0, #4]
	mov r2, r2, lsr #0x10
	str r2, [r1, #4]
	ldr r1, [r0, #4]
	add r1, r1, #8
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF73C

	arm_func_start sub_020BF790
sub_020BF790: ; 0x020BF790
	orr r1, r1, r2, lsl #4
	ldr r2, [r0, #0]
	mov ip, #0x29
	str ip, [r2]
	orr r1, r1, r3, lsl #6
	ldr r2, [sp, #8]
	ldr r3, [sp]
	orr r1, r2, r1
	orr r2, r1, r3, lsl #24
	ldr ip, [sp, #4]
	ldr r1, [r0, #4]
	orr r2, r2, ip, lsl #16
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF790

	arm_func_start sub_020BF7DC
sub_020BF7DC: ; 0x020BF7DC
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov lr, #0x30
	cmp r3, #0
	movne r3, #1
	str lr, [ip]
	orr r2, r1, r2, lsl #16
	moveq r3, #0
	ldr r1, [r0, #4]
	orr r2, r2, r3, lsl #15
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF7DC

	arm_func_start sub_020BF820
sub_020BF820: ; 0x020BF820
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov lr, #0x31
	cmp r3, #0
	movne r3, #1
	str lr, [ip]
	orr r2, r1, r2, lsl #16
	moveq r3, #0
	ldr r1, [r0, #4]
	orr r2, r2, r3, lsl #15
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF820

	arm_func_start sub_020BF864
sub_020BF864: ; 0x020BF864
	stmfd sp!, {r3, r4, r5, lr}
	ldrsh lr, [sp, #0x10]
	ldr ip, _020BF8BC ; =0x000003FF
	mov r3, r3, asr #3
	and ip, ip, r2, asr #3
	mov r2, r3, lsl #0x16
	mov lr, lr, asr #3
	ldr r4, [r0, #0]
	mov r5, #0x32
	str r5, [r4, #0]
	mov r3, lr, lsl #0x16
	orr r2, ip, r2, lsr #12
	orr r3, r2, r3, lsr #2
	ldr r2, [r0, #4]
	orr r1, r3, r1, lsl #30
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BF8BC: .word 0x000003FF
	arm_func_end sub_020BF864

	arm_func_start sub_020BF8C0
sub_020BF8C0: ; 0x020BF8C0
	ldr r3, [r0, #0]
	mov ip, #0x33
	str ip, [r3]
	ldr r3, [r0, #4]
	orr r1, r2, r1, lsl #30
	str r1, [r3, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF8C0

	arm_func_start sub_020BF8F0
sub_020BF8F0: ; 0x020BF8F0
	ldr r2, [r0, #0]
	mov r3, #0x40
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF8F0

	arm_func_start sub_020BF91C
sub_020BF91C: ; 0x020BF91C
	ldr r1, [r0, #0]
	mov r2, #0x41
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF91C

	arm_func_start sub_020BF93C
sub_020BF93C: ; 0x020BF93C
	ldr r1, _020BF950 ; =0x04000400
	mov r2, #0x16
	ldr ip, _020BF954 ; =sub_020C1298
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF950: .word 0x04000400
_020BF954: .word sub_020C1298
	arm_func_end sub_020BF93C

	arm_func_start sub_020BF958
sub_020BF958: ; 0x020BF958
	ldr r1, _020BF96C ; =0x04000400
	mov r2, #0x17
	ldr ip, _020BF970 ; =sub_020C1274
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF96C: .word 0x04000400
_020BF970: .word sub_020C1274
	arm_func_end sub_020BF958

	arm_func_start sub_020BF974
sub_020BF974: ; 0x020BF974
	ldr r1, _020BF988 ; =0x04000400
	mov r2, #0x19
	ldr ip, _020BF98C ; =sub_020C1274
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF988: .word 0x04000400
_020BF98C: .word sub_020C1274
	arm_func_end sub_020BF974

	arm_func_start sub_020BF990
sub_020BF990: ; 0x020BF990
	ldr r1, _020BF9A4 ; =0x04000400
	mov r2, #0x1a
	ldr ip, _020BF9A8 ; =sub_020C4C88
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF9A4: .word 0x04000400
_020BF9A8: .word sub_020C4C88
	arm_func_end sub_020BF990

	arm_func_start sub_020BF9AC
sub_020BF9AC: ; 0x020BF9AC
	stmfd sp!, {r3, lr}
	bl sub_020BFB24
	ldr r1, _020BFA98 ; =0x04000504
	mov r0, #0
	str r0, [r1, #0]
_020BF9C0:
	ldr r0, [r1, #0xfc]
	tst r0, #0x8000000
	bne _020BF9C0
	ldr r0, _020BFA9C ; =0x04000060
	mov r2, #0
	strh r2, [r0]
	str r2, [r1, #0xfc]
	str r2, [r0, #-0x50]
	ldrh ip, [r0]
	ldr r2, _020BFAA0 ; =0xFFFFCFFD
	ldr r3, _020BFAA4 ; =0x0000CFFB
	orr ip, ip, #0x2000
	strh ip, [r0]
	ldrh ip, [r0]
	orr ip, ip, #0x1000
	strh ip, [r0]
	ldrh ip, [r0]
	and r2, ip, r2
	strh r2, [r0]
	ldrh r2, [r0]
	bic r2, r2, #0x3000
	orr r2, r2, #0x10
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r2, r3
	strh r2, [r0]
	ldr r0, [r1, #0xfc]
	orr r0, r0, #0x8000
	str r0, [r1, #0xfc]
	ldr r0, [r1, #0xfc]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1, #0xfc]
	bl sub_020BFB4C
	ldr r1, _020BFAA8 ; =0x04000350
	mov r2, #0
	ldr r0, _020BFAAC ; =0x00007FFF
	str r2, [r1, #0]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	str r2, [r1, #8]
	strh r2, [r1, #0xc]
	sub r1, r1, #0x348
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	bl sub_020BFD80
	ldr r2, _020BFAB0 ; =0x001F0080
	ldr r1, _020BFAB4 ; =0x040004A4
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFA98: .word 0x04000504
_020BFA9C: .word 0x04000060
_020BFAA0: .word 0xFFFFCFFD
_020BFAA4: .word 0x0000CFFB
_020BFAA8: .word 0x04000350
_020BFAAC: .word 0x00007FFF
_020BFAB0: .word 0x001F0080
_020BFAB4: .word 0x040004A4
	arm_func_end sub_020BF9AC

	arm_func_start sub_020BFAB8
sub_020BFAB8: ; 0x020BFAB8
	stmfd sp!, {r3, lr}
	ldr r2, _020BFB14 ; =0x04000600
_020BFAC0:
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	bne _020BFAC0
	ldr r0, [r2, #0]
	ldr r1, _020BFB18 ; =0x04000060
	orr r0, r0, #0x8000
	str r0, [r2, #0]
	ldrh r0, [r1]
	orr r0, r0, #0x2000
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x1000
	strh r0, [r1]
	bl sub_020BFBE4
	ldr r2, _020BFB1C ; =0x001F0080
	ldr r1, _020BFB20 ; =0x040004A4
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFB14: .word 0x04000600
_020BFB18: .word 0x04000060
_020BFB1C: .word 0x001F0080
_020BFB20: .word 0x040004A4
	arm_func_end sub_020BFAB8

	arm_func_start sub_020BFB24
sub_020BFB24: ; 0x020BFB24
	stmfd sp!, {r3, lr}
	ldr r0, _020BFB44 ; =0x04000400
	bl sub_020BFEBC
	ldr r1, _020BFB48 ; =0x04000600
_020BFB34:
	ldr r0, [r1, #0]
	tst r0, #0x8000000
	bne _020BFB34
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFB44: .word 0x04000400
_020BFB48: .word 0x04000600
	arm_func_end sub_020BFB24

	arm_func_start sub_020BFB4C
sub_020BFB4C: ; 0x020BFB4C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020BFBD8 ; =0x04000600
	ldr r0, [r1, #0]
	orr r0, r0, #0x8000
	str r0, [r1, #0]
	add r4, sp, #4
_020BFB68:
	mov r0, r4
	bl sub_020BFE20
	cmp r0, #0
	bne _020BFB68
	add r4, sp, #0
_020BFB7C:
	mov r0, r4
	bl sub_020BFE50
	cmp r0, #0
	bne _020BFB7C
	ldr r1, _020BFBDC ; =0x04000440
	mov r0, #3
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1, #0]
	ldr r0, [sp]
	mov r2, #0
	cmp r0, #0
	strne r0, [r1, #8]
	ldr r1, _020BFBE0 ; =0x04000454
	mov r0, #2
	str r2, [r1, #0]
	str r0, [r1, #-0x14]
	ldr r0, [sp, #4]
	str r0, [r1, #-0xc]
	str r2, [r1, #0]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFBD8: .word 0x04000600
_020BFBDC: .word 0x04000440
_020BFBE0: .word 0x04000454
	arm_func_end sub_020BFB4C

	arm_func_start sub_020BFBE4
sub_020BFBE4: ; 0x020BFBE4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020BFC6C ; =0x04000600
	ldr r0, [r1, #0]
	orr r0, r0, #0x8000
	str r0, [r1, #0]
	add r4, sp, #4
_020BFC00:
	mov r0, r4
	bl sub_020BFE20
	cmp r0, #0
	bne _020BFC00
	add r4, sp, #0
_020BFC14:
	mov r0, r4
	bl sub_020BFE50
	cmp r0, #0
	bne _020BFC14
	ldr r1, _020BFC70 ; =0x04000440
	mov r0, #3
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r2, _020BFC70 ; =0x04000440
	cmp r0, #0
	strne r0, [r1, #8]
	mov r0, #2
	str r0, [r2, #0]
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [r2, #8]
	str r0, [r2, #0x14]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFC6C: .word 0x04000600
_020BFC70: .word 0x04000440
	arm_func_end sub_020BFBE4

	arm_func_start sub_020BFC74
sub_020BFC74: ; 0x020BFC74
	cmp r0, #0
	beq _020BFCA8
	ldr ip, _020BFCC0 ; =0x0400035C
	mov r0, r1, lsl #6
	strh r3, [ip]
	sub r3, ip, #0x2fc
	ldrh r1, [r3]
	orr r0, r0, r2, lsl #8
	orr r0, r0, #0x80
	bic r1, r1, #0x3f40
	orr r0, r1, r0
	strh r0, [r3]
	bx lr
_020BFCA8:
	ldr r2, _020BFCC4 ; =0x04000060
	ldr r0, _020BFCC8 ; =0x0000CF7F
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	bx lr
	; .align 2, 0
_020BFCC0: .word 0x0400035C
_020BFCC4: .word 0x04000060
_020BFCC8: .word 0x0000CF7F
	arm_func_end sub_020BFC74

	arm_func_start sub_020BFCCC
sub_020BFCCC: ; 0x020BFCCC
	stmfd sp!, {r3, lr}
	ldr r2, _020BFCF8 ; =0x04000600
	mov r1, r0
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x40
	bl sub_020C4CC8
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFCF8: .word 0x04000600
	arm_func_end sub_020BFCCC

	arm_func_start sub_020BFCFC
sub_020BFCFC: ; 0x020BFCFC
	stmfd sp!, {r3, lr}
	ldr r2, _020BFD28 ; =0x04000600
	mov r1, r0
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x80
	bl sub_020C4C88
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFD28: .word 0x04000600
	arm_func_end sub_020BFCFC

	arm_func_start sub_020BFD2C
sub_020BFD2C: ; 0x020BFD2C
	ldr ip, _020BFD3C ; =sub_020C4B18
	ldr r1, _020BFD40 ; =0x04000330
	mov r2, #0x10
	bx ip
	; .align 2, 0
_020BFD3C: .word sub_020C4B18
_020BFD40: .word 0x04000330
	arm_func_end sub_020BFD2C

	arm_func_start sub_020BFD44
sub_020BFD44: ; 0x020BFD44
	ldr ip, _020BFD50 ; =sub_020C4C6C
	ldr r1, _020BFD54 ; =0x04000360
	bx ip
	; .align 2, 0
_020BFD50: .word sub_020C4C6C
_020BFD54: .word 0x04000360
	arm_func_end sub_020BFD44

	arm_func_start sub_020BFD58
sub_020BFD58: ; 0x020BFD58
	ldr ip, [sp]
	orr r0, r0, r1, lsl #16
	orr r1, r0, r3, lsl #24
	cmp ip, #0
	ldr r0, _020BFD7C ; =0x04000350
	orrne r1, r1, #0x8000
	str r1, [r0, #0]
	strh r2, [r0, #4]
	bx lr
	; .align 2, 0
_020BFD7C: .word 0x04000350
	arm_func_end sub_020BFD58

	arm_func_start sub_020BFD80
sub_020BFD80: ; 0x020BFD80
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _020BFE10 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	ldr r1, _020BFE14 ; =0x04000330
	beq _020BFDD0
	mov r2, #0
	str r2, [sp]
	mov r3, #0x10
	str r2, [sp, #4]
	bl sub_020C4430
	ldr r0, _020BFE10 ; =0x02101148
	ldr r1, _020BFE18 ; =0x04000360
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #0x60
	bl sub_020C42D4
	b _020BFDEC
_020BFDD0:
	mov r0, #0
	mov r2, #0x10
	bl sub_020C4B4C
	ldr r1, _020BFE18 ; =0x04000360
	mov r0, #0
	mov r2, #0x60
	bl sub_020C4B4C
_020BFDEC:
	mov r2, #0
	ldr r0, _020BFE1C ; =0x040004D0
	mov r1, r2
_020BFDF8:
	add r2, r2, #1
	str r1, [r0, #0]
	cmp r2, #0x20
	blt _020BFDF8
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFE10: .word 0x02101148
_020BFE14: .word 0x04000330
_020BFE18: .word 0x04000360
_020BFE1C: .word 0x040004D0
	arm_func_end sub_020BFD80

	arm_func_start sub_020BFE20
sub_020BFE20: ; 0x020BFE20
	ldr r2, _020BFE4C ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #0x4000
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFE4C: .word 0x04000600
	arm_func_end sub_020BFE20

	arm_func_start sub_020BFE50
sub_020BFE50: ; 0x020BFE50
	ldr r2, _020BFE7C ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #0x4000
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #0x2000
	mov r1, r1, lsr #0xd
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFE7C: .word 0x04000600
	arm_func_end sub_020BFE50

	arm_func_start sub_020BFE80
sub_020BFE80: ; 0x020BFE80
	ldr r2, _020BFEA8 ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #1
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #2
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFEA8: .word 0x04000600
	arm_func_end sub_020BFE80

	arm_func_start sub_020BFEAC
sub_020BFEAC: ; 0x020BFEAC
	ldr r1, _020BFEB8 ; =0x04000010
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020BFEB8: .word 0x04000010
	arm_func_end sub_020BFEAC

	arm_func_start sub_020BFEBC
sub_020BFEBC: ; 0x020BFEBC
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	bx lr
	arm_func_end sub_020BFEBC

	arm_func_start sub_020BFF50
sub_020BFF50: ; 0x020BFF50
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x50
	ldr ip, [sp, #0x58]
	ldr lr, [sp, #0x5c]
	str ip, [sp]
	ldr r4, [sp, #0x68]
	ldr ip, [sp, #0x60]
	str lr, [sp, #4]
	cmp r4, #0
	addeq r4, sp, #0x10
	str ip, [sp, #8]
	str r4, [sp, #0xc]
	bl sub_020BCDC8
	ldr r0, [sp, #0x64]
	cmp r0, #0
	addeq sp, sp, #0x50
	ldmeqia sp!, {r4, pc}
	ldr r1, _020BFFB0 ; =0x04000440
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0]
	bl sub_020BF93C
	add sp, sp, #0x50
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFFB0: .word 0x04000440
	arm_func_end sub_020BFF50

	arm_func_start sub_020BFFB4
sub_020BFFB4: ; 0x020BFFB4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr r4, [sp, #0x40]
	mov r5, r3
	cmp r4, #0
	addeq r4, sp, #0
	mov r3, r4
	bl sub_020BC36C
	cmp r5, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _020BFFFC ; =0x04000440
	mov r2, #2
	mov r0, r4
	str r2, [r1, #0]
	bl sub_020BF958
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BFFFC: .word 0x04000440
	arm_func_end sub_020BFFB4

	arm_func_start sub_020C0000
sub_020C0000: ; 0x020C0000
	ldr r3, _020C0038 ; =0x04000468
	mov r2, #0x1000
	str r2, [r3, #0]
	mov r2, #0
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r1, [r3, #0]
	str r0, [r3, #0]
	str r2, [r3, #0]
	rsb r0, r0, #0
	str r0, [r3, #0]
	str r1, [r3, #0]
	bx lr
	; .align 2, 0
_020C0038: .word 0x04000468
	arm_func_end sub_020C0000

	arm_func_start sub_020C003C
sub_020C003C: ; 0x020C003C
	ldr ip, _020C0074 ; =0x04000468
	mov r3, #0
	str r1, [ip]
	str r3, [ip]
	rsb r2, r0, #0
	str r2, [ip]
	str r3, [ip]
	mov r2, #0x1000
	str r2, [ip]
	str r3, [ip]
	str r0, [ip]
	str r3, [ip]
	str r1, [ip]
	bx lr
	; .align 2, 0
_020C0074: .word 0x04000468
	arm_func_end sub_020C003C

	arm_func_start sub_020C0078
sub_020C0078: ; 0x020C0078
	ldr r3, _020C00B0 ; =0x04000468
	mov r2, #0
	str r1, [r3, #0]
	str r0, [r3, #0]
	str r2, [r3, #0]
	rsb r0, r0, #0
	str r0, [r3, #0]
	str r1, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	mov r0, #0x1000
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020C00B0: .word 0x04000468
	arm_func_end sub_020C0078

	arm_func_start sub_020C00B4
sub_020C00B4: ; 0x020C00B4
	stmfd sp!, {r4, lr}
	ldr r3, _020C0104 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C00F0
	cmp r3, #0x1c
	bls _020C00F0
	mov r1, r4
	add r2, lr, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r4, pc}
_020C00F0:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0104: .word 0x02101148
	arm_func_end sub_020C00B4

	arm_func_start sub_020C0108
sub_020C0108: ; 0x020C0108
	stmfd sp!, {r3, lr}
	ldr r3, _020C015C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C0144
	cmp r3, #0x1c
	bls _020C0144
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C0144:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C015C: .word 0x02101148
	arm_func_end sub_020C0108

	arm_func_start sub_020C0160
sub_020C0160: ; 0x020C0160
	stmfd sp!, {r3, lr}
	ldr r3, _020C01B4 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C019C
	cmp r3, #0x1c
	bls _020C019C
	add r2, r1, #0x200
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C019C:
	add r1, r1, #0x200
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C01B4: .word 0x02101148
	arm_func_end sub_020C0160

	arm_func_start sub_020C01B8
sub_020C01B8: ; 0x020C01B8
	stmfd sp!, {r3, lr}
	ldr r3, _020C020C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C01F4
	cmp r3, #0x1c
	bls _020C01F4
	add r2, r1, #0x600
	mov r1, lr
	add r2, r2, #0x5000000
	bl sub_020C43C4
	ldmia sp!, {r3, pc}
_020C01F4:
	add r1, r1, #0x600
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl sub_020C4B18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C020C: .word 0x02101148
	arm_func_end sub_020C01B8

	arm_func_start sub_020C0210
sub_020C0210: ; 0x020C0210
	stmfd sp!, {r4, lr}
	ldr r3, _020C0260 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C024C
	cmp r3, #0x30
	bls _020C024C
	mov r1, r4
	add r2, lr, #0x7000000
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C024C:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x7000000
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0260: .word 0x02101148
	arm_func_end sub_020C0210

	arm_func_start sub_020C0264
sub_020C0264: ; 0x020C0264
	stmfd sp!, {r3, lr}
	ldr r3, _020C02B8 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C02A0
	cmp r3, #0x30
	bls _020C02A0
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x7000000
	bl sub_020C4354
	ldmia sp!, {r3, pc}
_020C02A0:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x7000000
	bl sub_020C4B68
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C02B8: .word 0x02101148
	arm_func_end sub_020C0264

	arm_func_start sub_020C02BC
sub_020C02BC: ; 0x020C02BC
	stmfd sp!, {r4, lr}
	ldr r3, _020C0310 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6400000
	beq _020C02FC
	cmp r3, #0x30
	bls _020C02FC
	mov r1, r4
	add r2, ip, lr
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C02FC:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0310: .word 0x02101148
	arm_func_end sub_020C02BC

	arm_func_start sub_020C0314
sub_020C0314: ; 0x020C0314
	stmfd sp!, {r4, lr}
	ldr r3, _020C0368 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6600000
	beq _020C0354
	cmp r3, #0x30
	bls _020C0354
	mov r1, r4
	add r2, ip, lr
	bl sub_020C4354
	ldmia sp!, {r4, pc}
_020C0354:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl sub_020C4B68
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0368: .word 0x02101148
	arm_func_end sub_020C0314

	arm_func_start sub_020C036C
sub_020C036C: ; 0x020C036C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF03C
	ldr r1, _020C03C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C03B4
	cmp r4, #0x1c
	bls _020C03B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C03B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C03C8: .word 0x02101148
	arm_func_end sub_020C036C

	arm_func_start sub_020C03CC
sub_020C03CC: ; 0x020C03CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF070
	ldr r1, _020C0428 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0414
	cmp r4, #0x1c
	bls _020C0414
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0414:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0428: .word 0x02101148
	arm_func_end sub_020C03CC

	arm_func_start sub_020C042C
sub_020C042C: ; 0x020C042C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF090
	ldr r1, _020C0488 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0474
	cmp r4, #0x1c
	bls _020C0474
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0474:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0488: .word 0x02101148
	arm_func_end sub_020C042C

	arm_func_start sub_020C048C
sub_020C048C: ; 0x020C048C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF0C4
	ldr r1, _020C04E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C04D4
	cmp r4, #0x1c
	bls _020C04D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C04D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C04E8: .word 0x02101148
	arm_func_end sub_020C048C

	arm_func_start sub_020C04EC
sub_020C04EC: ; 0x020C04EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF0E4
	ldr r1, _020C0548 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0534
	cmp r4, #0x1c
	bls _020C0534
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0534:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0548: .word 0x02101148
	arm_func_end sub_020C04EC

	arm_func_start sub_020C054C
sub_020C054C: ; 0x020C054C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF168
	ldr r1, _020C05A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0594
	cmp r4, #0x1c
	bls _020C0594
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0594:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C05A8: .word 0x02101148
	arm_func_end sub_020C054C

	arm_func_start sub_020C05AC
sub_020C05AC: ; 0x020C05AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF1DC
	ldr r1, _020C0608 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C05F4
	cmp r4, #0x1c
	bls _020C05F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C05F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0608: .word 0x02101148
	arm_func_end sub_020C05AC

	arm_func_start sub_020C060C
sub_020C060C: ; 0x020C060C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF260
	ldr r1, _020C0668 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0654
	cmp r4, #0x1c
	bls _020C0654
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C43C4
	ldmia sp!, {r4, r5, r6, pc}
_020C0654:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0668: .word 0x02101148
	arm_func_end sub_020C060C

	arm_func_start sub_020C066C
sub_020C066C: ; 0x020C066C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF2D4
	ldr r1, _020C06C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C06B4
	cmp r4, #0x30
	bls _020C06B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C06B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C06C8: .word 0x02101148
	arm_func_end sub_020C066C

	arm_func_start sub_020C06CC
sub_020C06CC: ; 0x020C06CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF308
	ldr r1, _020C0728 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0714
	cmp r4, #0x30
	bls _020C0714
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0714:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0728: .word 0x02101148
	arm_func_end sub_020C06CC

	arm_func_start sub_020C072C
sub_020C072C: ; 0x020C072C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF328
	ldr r1, _020C0788 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0774
	cmp r4, #0x30
	bls _020C0774
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0774:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0788: .word 0x02101148
	arm_func_end sub_020C072C

	arm_func_start sub_020C078C
sub_020C078C: ; 0x020C078C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF35C
	ldr r1, _020C07E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C07D4
	cmp r4, #0x30
	bls _020C07D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C07D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C07E8: .word 0x02101148
	arm_func_end sub_020C078C

	arm_func_start sub_020C07EC
sub_020C07EC: ; 0x020C07EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF37C
	ldr r1, _020C0848 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0834
	cmp r4, #0x30
	bls _020C0834
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0834:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0848: .word 0x02101148
	arm_func_end sub_020C07EC

	arm_func_start sub_020C084C
sub_020C084C: ; 0x020C084C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF3CC
	ldr r1, _020C08A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0894
	cmp r4, #0x30
	bls _020C0894
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0894:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C08A8: .word 0x02101148
	arm_func_end sub_020C084C

	arm_func_start sub_020C08AC
sub_020C08AC: ; 0x020C08AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF40C
	ldr r1, _020C0908 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C08F4
	cmp r4, #0x30
	bls _020C08F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C08F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0908: .word 0x02101148
	arm_func_end sub_020C08AC

	arm_func_start sub_020C090C
sub_020C090C: ; 0x020C090C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BF464
	ldr r1, _020C0968 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0954
	cmp r4, #0x30
	bls _020C0954
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl sub_020C4354
	ldmia sp!, {r4, r5, r6, pc}
_020C0954:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0968: .word 0x02101148
	arm_func_end sub_020C090C

	arm_func_start sub_020C096C
sub_020C096C: ; 0x020C096C
	stmfd sp!, {r3, lr}
	bl sub_020BECC4
	ldr r1, _020C09FC ; =0x021CCBBC
	cmp r0, #0x20
	str r0, [r1, #0x14]
	bgt _020C09A0
	cmp r0, #0x20
	bge _020C09E4
	cmp r0, #0
	ldmleia sp!, {r3, pc}
	cmp r0, #0x10
	beq _020C09BC
	ldmia sp!, {r3, pc}
_020C09A0:
	cmp r0, #0x40
	bgt _020C09B0
	beq _020C09D0
	ldmia sp!, {r3, pc}
_020C09B0:
	cmp r0, #0x60
	beq _020C09E4
	ldmia sp!, {r3, pc}
_020C09BC:
	ldr r2, _020C0A00 ; =0x06880000
	mov r0, #0
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09D0:
	ldr r2, _020C0A04 ; =0x06894000
	mov r0, #0x4000
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09E4:
	ldr r2, _020C0A08 ; =0x06890000
	ldr r0, _020C09FC ; =0x021CCBBC
	mov r1, #0
	str r2, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C09FC: .word 0x021CCBBC
_020C0A00: .word 0x06880000
_020C0A04: .word 0x06894000
_020C0A08: .word 0x06890000
	arm_func_end sub_020C096C

	arm_func_start sub_020C0A0C
sub_020C0A0C: ; 0x020C0A0C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr ip, _020C0A74 ; =0x021CCBBC
	ldr r3, _020C0A78 ; =0x02101148
	ldr lr, [ip, #0x10]
	ldr r4, [ip, #0xc]
	add r5, lr, r1
	ldr lr, [r3]
	mvn ip, #0
	mov r1, r0
	mov r3, r2
	cmp lr, ip
	sub r4, r5, r4
	beq _020C0A64
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r2, r4
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020C0A64:
	mov r1, r4
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C0A74: .word 0x021CCBBC
_020C0A78: .word 0x02101148
	arm_func_end sub_020C0A0C

	arm_func_start sub_020C0A7C
sub_020C0A7C: ; 0x020C0A7C
	stmfd sp!, {r3, lr}
	ldr r0, _020C0ABC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0A98
	bl sub_020C458C
_020C0A98:
	ldr r0, _020C0AC0 ; =0x021CCBBC
	ldr r0, [r0, #0x14]
	bl sub_020BE3E4
	ldr r0, _020C0AC0 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0ABC: .word 0x02101148
_020C0AC0: .word 0x021CCBBC
	arm_func_end sub_020C0A7C

	arm_func_start sub_020C0AC4
sub_020C0AC4: ; 0x020C0AC4
	stmfd sp!, {r3, lr}
	bl sub_020BECE8
	ldr r1, _020C0B00 ; =0x021CCBBC
	cmp r0, #0
	str r0, [r1, #8]
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x20
	beq _020C0AF4
	cmp r0, #0x40
	ldreq r0, _020C0B04 ; =0x06894000
	streq r0, [r1, #4]
	ldmia sp!, {r3, pc}
_020C0AF4:
	ldr r0, _020C0B08 ; =0x06890000
	str r0, [r1, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0B00: .word 0x021CCBBC
_020C0B04: .word 0x06894000
_020C0B08: .word 0x06890000
	arm_func_end sub_020C0AC4

	arm_func_start sub_020C0B0C
sub_020C0B0C: ; 0x020C0B0C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _020C0B70 ; =0x02101148
	ldr lr, _020C0B74 ; =0x021CCBBC
	ldr r4, [r3, #0]
	mvn ip, #0
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmp r4, ip
	ldr lr, [lr, #4]
	beq _020C0B60
	mov ip, #0
	str ip, [sp]
	mov r0, r4
	mov r1, r6
	add r2, lr, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_020C0B60:
	add r1, lr, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0B70: .word 0x02101148
_020C0B74: .word 0x021CCBBC
	arm_func_end sub_020C0B0C

	arm_func_start sub_020C0B78
sub_020C0B78: ; 0x020C0B78
	stmfd sp!, {r3, lr}
	ldr r0, _020C0BB4 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0B94
	bl sub_020C458C
_020C0B94:
	ldr r0, _020C0BB8 ; =0x021CCBBC
	ldr r0, [r0, #8]
	bl sub_020BE4E4
	ldr r0, _020C0BB8 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BB4: .word 0x02101148
_020C0BB8: .word 0x021CCBBC
	arm_func_end sub_020C0B78

	arm_func_start sub_020C0BBC
sub_020C0BBC: ; 0x020C0BBC
	stmfd sp!, {r3, lr}
	bl sub_020BED70
	ldr r1, _020C0BD0 ; =0x021CCBBC
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BD0: .word 0x021CCBBC
	arm_func_end sub_020C0BBC

	arm_func_start sub_020C0BD4
sub_020C0BD4: ; 0x020C0BD4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0C34 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0C20
	add r2, r1, #0x98000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6800000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0C20:
	add r1, r1, #0x98000
	add r1, r1, #0x6800000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0C34: .word 0x02101148
	arm_func_end sub_020C0BD4

	arm_func_start sub_020C0C38
sub_020C0C38: ; 0x020C0C38
	stmfd sp!, {r3, lr}
	ldr r0, _020C0C70 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0C54
	bl sub_020C458C
_020C0C54:
	ldr r0, _020C0C74 ; =0x021CCBBC
	ldr r0, [r0, #0]
	bl sub_020BEB68
	ldr r0, _020C0C74 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C70: .word 0x02101148
_020C0C74: .word 0x021CCBBC
	arm_func_end sub_020C0C38

	arm_func_start sub_020C0C78
sub_020C0C78: ; 0x020C0C78
	stmfd sp!, {r3, lr}
	bl sub_020BED98
	ldr r1, _020C0C8C ; =0x021CCBBC
	str r0, [r1, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C8C: .word 0x021CCBBC
	arm_func_end sub_020C0C78

	arm_func_start sub_020C0C90
sub_020C0C90: ; 0x020C0C90
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0CF0 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0CDC
	add r2, r1, #0x8a0000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6000000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0CDC:
	add r1, r1, #0x8a0000
	add r1, r1, #0x6000000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0CF0: .word 0x02101148
	arm_func_end sub_020C0C90

	arm_func_start sub_020C0CF4
sub_020C0CF4: ; 0x020C0CF4
	stmfd sp!, {r3, lr}
	ldr r0, _020C0D2C ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0D10
	bl sub_020C458C
_020C0D10:
	ldr r0, _020C0D30 ; =0x021CCBBC
	ldr r0, [r0, #0x18]
	bl sub_020BEBE8
	ldr r0, _020C0D30 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0D2C: .word 0x02101148
_020C0D30: .word 0x021CCBBC
	arm_func_end sub_020C0CF4

	arm_func_start sub_020C0D34
sub_020C0D34: ; 0x020C0D34
	stmfd sp!, {r3, lr}
	bl sub_020BED0C
	mov r1, #6
	mul lr, r0, lr
	ldr r2, _020C0D80 ; =0x020FD950
	ldr r1, _020C0D84 ; =0x020FD952
	ldrh ip, [r2, lr]
	ldr r2, _020C0D88 ; =0x020FD954
	ldrh r3, [r1, lr]
	ldr r1, _020C0D8C ; =0x021CCBD8
	ldrh r2, [r2, lr]
	str r0, [r1, #0x14]
	mov r0, ip, lsl #0xc
	str r0, [r1, #4]
	mov r0, r3, lsl #0xc
	str r0, [r1, #0x18]
	mov r0, r2, lsl #0xc
	str r0, [r1, #0x1c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0D80: .word 0x020FD950
_020C0D84: .word 0x020FD952
_020C0D88: .word 0x020FD954
_020C0D8C: .word 0x021CCBD8
	arm_func_end sub_020C0D34

	arm_func_start sub_020C0D90
sub_020C0D90: ; 0x020C0D90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _020C0EC8 ; =0x021CCBD8
	mov r7, r0
	ldr r4, [r3, #0x18]
	mov ip, r1
	cmp r4, #0
	ldreq r0, [r3, #4]
	mov r6, r2
	addeq r2, r0, ip
	beq _020C0E7C
	ldr r2, [r3, #0x1c]
	add r0, ip, r6
	cmp r0, r2
	ldrlo r0, [r3, #4]
	addlo r2, r0, ip
	blo _020C0E7C
	cmp ip, r2
	addhs r0, r4, ip
	subhs r2, r0, r2
	bhs _020C0E7C
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	sub r5, r2, ip
	cmp r0, r1
	ldr lr, [r3, #4]
	beq _020C0E1C
	cmp r5, #0x30
	bls _020C0E1C
	mov r1, r7
	mov r3, r5
	add r2, lr, ip
	bl sub_020C4354
	b _020C0E2C
_020C0E1C:
	mov r0, r7
	mov r2, r5
	add r1, lr, ip
	bl sub_020C4B68
_020C0E2C:
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0E64
	mov ip, #0
	str ip, [sp]
	mov r2, r4
	add r1, r7, r5
	sub r3, r6, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0E64:
	mov r1, r4
	add r0, r7, r5
	sub r2, r6, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0E7C:
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0EB0
	mov r4, #0
	str r4, [sp]
	mov r1, r7
	mov r3, r6
	str r4, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0EB0:
	mov r1, r2
	mov r0, r7
	mov r2, r6
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C0EC8: .word 0x021CCBD8
_020C0ECC: .word 0x02101148
	arm_func_end sub_020C0D90

	arm_func_start sub_020C0ED0
sub_020C0ED0: ; 0x020C0ED0
	stmfd sp!, {r3, lr}
	ldr r0, _020C0F14 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0EEC
	bl sub_020C458C
_020C0EEC:
	ldr r0, _020C0F18 ; =0x021CCBD8
	ldr r0, [r0, #0x14]
	bl sub_020BE590
	ldr r0, _020C0F18 ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0F14: .word 0x02101148
_020C0F18: .word 0x021CCBD8
	arm_func_end sub_020C0ED0

	arm_func_start sub_020C0F1C
sub_020C0F1C: ; 0x020C0F1C
	stmfd sp!, {r3, lr}
	bl sub_020BED20
	mov r3, r0, asr #4
	ldr r1, _020C0F48 ; =0x021CCBD8
	ldr r2, _020C0F4C ; =0x020FD940
	mov r3, r3, lsl #1
	ldrh r2, [r2, r3]
	str r0, [r1, #0xc]
	mov r0, r2, lsl #0xc
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0F48: .word 0x021CCBD8
_020C0F4C: .word 0x020FD940
	arm_func_end sub_020C0F1C

	arm_func_start sub_020C0F50
sub_020C0F50: ; 0x020C0F50
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _020C0FB4 ; =0x02101148
	ldr lr, _020C0FB8 ; =0x021CCBD8
	ldr r4, [r3, #0]
	mvn ip, #0
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmp r4, ip
	ldr lr, [lr, #8]
	beq _020C0FA4
	mov ip, #0
	str ip, [sp]
	mov r0, r4
	mov r1, r6
	add r2, lr, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_020C0FA4:
	add r1, lr, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0FB4: .word 0x02101148
_020C0FB8: .word 0x021CCBD8
	arm_func_end sub_020C0F50

	arm_func_start sub_020C0FBC
sub_020C0FBC: ; 0x020C0FBC
	stmfd sp!, {r3, lr}
	ldr r0, _020C0FF8 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0FD8
	bl sub_020C458C
_020C0FD8:
	ldr r0, _020C0FFC ; =0x021CCBD8
	ldr r0, [r0, #0xc]
	bl sub_020BE768
	ldr r0, _020C0FFC ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0FF8: .word 0x02101148
_020C0FFC: .word 0x021CCBD8
	arm_func_end sub_020C0FBC

	arm_func_start sub_020C1000
sub_020C1000: ; 0x020C1000
	stmfd sp!, {r3, lr}
	bl sub_020BED34
	ldr r1, _020C1080 ; =0x021CCBD8
	cmp r0, #0xc
	str r0, [r1, #0]
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_020C101C: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020C1068 ; case 1
	b _020C1050 ; case 2
	b _020C1050 ; case 3
	b _020C1074 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	ldmia sp!, {r3, pc} ; case 6
	ldmia sp!, {r3, pc} ; case 7
	b _020C105C ; case 8
	ldmia sp!, {r3, pc} ; case 9
	ldmia sp!, {r3, pc} ; case 10
	ldmia sp!, {r3, pc} ; case 11
	b _020C105C ; case 12
_020C1050:
	mov r0, #0x6800000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C105C:
	ldr r0, _020C1084 ; =0x06840000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C1068:
	ldr r0, _020C1088 ; =0x067E0000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C1074:
	ldr r0, _020C108C ; =0x06820000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1080: .word 0x021CCBD8
_020C1084: .word 0x06840000
_020C1088: .word 0x067E0000
_020C108C: .word 0x06820000
	arm_func_end sub_020C1000

	arm_func_start sub_020C1090
sub_020C1090: ; 0x020C1090
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _020C10F0 ; =0x02101148
	ldr ip, _020C10F4 ; =0x021CCBD8
	ldr lr, [r2]
	mvn r2, #0
	mov r4, r0
	mov r3, r1
	cmp lr, r2
	ldr r2, [ip, #0x10]
	beq _020C10DC
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C10DC:
	mov r1, r2
	mov r2, r3
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C10F0: .word 0x02101148
_020C10F4: .word 0x021CCBD8
	arm_func_end sub_020C1090

	arm_func_start sub_020C10F8
sub_020C10F8: ; 0x020C10F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _020C115C ; =0x02101148
	ldr ip, _020C1160 ; =0x021CCBD8
	ldr lr, [r2]
	mvn r2, #0
	mov r5, r0
	mov r3, r1
	cmp lr, r2
	ldr r4, [ip, #0x10]
	beq _020C1148
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r5
	add r2, r4, #0x20000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020C1148:
	mov r2, r3
	add r1, r4, #0x20000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C115C: .word 0x02101148
_020C1160: .word 0x021CCBD8
	arm_func_end sub_020C10F8

	arm_func_start sub_020C1164
sub_020C1164: ; 0x020C1164
	stmfd sp!, {r3, lr}
	ldr r0, _020C11A0 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C1180
	bl sub_020C458C
_020C1180:
	ldr r0, _020C11A4 ; =0x021CCBD8
	ldr r0, [r0, #0]
	bl sub_020BE850
	ldr r0, _020C11A4 ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C11A0: .word 0x02101148
_020C11A4: .word 0x021CCBD8
	arm_func_end sub_020C1164

	arm_func_start sub_020C11A8
sub_020C11A8: ; 0x020C11A8
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020C11A8

	arm_func_start sub_020C11C8
sub_020C11C8: ; 0x020C11C8
	ldr r3, [r0, #0]
	ldr r2, [r0, #8]
	cmp r2, r3
	moveq r0, #0
	bxeq lr
	and r1, r3, #3
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020C123C
_020C11EC: ; jump table
	b _020C11FC ; case 0
	b _020C1204 ; case 1
	b _020C1214 ; case 2
	b _020C1228 ; case 3
_020C11FC:
	sub r0, r3, r2
	bx lr
_020C1204:
	add r1, r3, #1
	str r1, [r0, #0]
	mov r1, #0
	strb r1, [r3]
_020C1214:
	ldr r3, [r0, #0]
	mov r1, #0
	add r2, r3, #1
	str r2, [r0, #0]
	strb r1, [r3]
_020C1228:
	ldr r3, [r0, #0]
	mov r1, #0
	add r2, r3, #1
	str r2, [r0, #0]
	strb r1, [r3]
_020C123C:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020C1260
	ldr r3, [r0, #4]
	mov r1, #0
	add r2, r3, #4
	str r2, [r0, #4]
	str r1, [r3, #0]
	str r1, [r0, #0x10]
_020C1260:
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	bx lr
	arm_func_end sub_020C11C8

	arm_func_start sub_020C1274
sub_020C1274: ; 0x020C1274
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1, {r2, r3, ip}
	bx lr
	arm_func_end sub_020C1274

	arm_func_start sub_020C1298
sub_020C1298: ; 0x020C1298
	stmfd sp!, {r4, r5, r6, r7, r8}
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, ip}
	stmia r1, {r2, r3, r4, r5, r6, r7, r8, ip}
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, ip}
	stmia r1, {r2, r3, r4, r5, r6, r7, r8, ip}
	ldmia sp!, {r4, r5, r6, r7, r8}
	bx lr
	arm_func_end sub_020C1298

	arm_func_start sub_020C12B4
sub_020C12B4: ; 0x020C12B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	cmp r5, #0
	beq _020C12E4
	ldr r1, _020C1320 ; =0x027E0000
	mvn r2, r4
	add r1, r1, #0x3000
	ldr r3, [r1, #0xff8]
	and r2, r3, r2
	str r2, [r1, #0xff8]
_020C12E4:
	bl sub_020C3DAC
	ldr r1, _020C1320 ; =0x027E0000
	add r0, r1, #0x3000
	ldr r0, [r0, #0xff8]
	tst r4, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r1, #0x3f8
	ldr r5, _020C1324 ; =0x027E0060
	add r6, r0, #0x3c00
_020C1308:
	mov r0, r5
	bl sub_020C2218
	ldr r0, [r6, #0]
	tst r4, r0
	beq _020C1308
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C1320: .word 0x027E0000
_020C1324: .word 0x027E0060
	arm_func_end sub_020C12B4

	arm_func_start sub_020C1328
sub_020C1328: ; 0x020C1328
	bx lr
	arm_func_end sub_020C1328

	arm_func_start sub_020C132C
sub_020C132C: ; 0x020C132C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mul r5, r0, r5
	ldr r2, _020C13A0 ; =0x021CCBF8
	ldr r3, _020C13A4 ; =0x0210114C
	mov r4, r0, lsl #1
	ldr r1, [r2, r5]
	mov r0, #0
	ldrh r3, [r3, r4]
	mov r4, #1
	str r0, [r2, r5]
	cmp r1, #0
	mov r4, r4, lsl r3
	beq _020C1370
	ldr r0, _020C13A8 ; =0x021CCC00
	ldr r0, [r0, r5]
	blx r1
_020C1370:
	ldr r0, _020C13AC ; =0x027E0000
	ldr r1, _020C13B0 ; =0x021CCBFC
	add r0, r0, #0x3000
	ldr r2, [r0, #0xff8]
	ldr r1, [r1, r5]
	orr r2, r2, r4
	str r2, [r0, #0xff8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_020C164C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C13A0: .word 0x021CCBF8
_020C13A4: .word 0x0210114C
_020C13A8: .word 0x021CCC00
_020C13AC: .word 0x027E0000
_020C13B0: .word 0x021CCBFC
	arm_func_end sub_020C132C

	arm_func_start sub_020C13B4
sub_020C13B4: ; 0x020C13B4
	ldr ip, _020C13C0 ; =sub_020C132C
	mov r0, #0
	bx ip
	; .align 2, 0
_020C13C0: .word sub_020C132C
	arm_func_end sub_020C13B4

	arm_func_start sub_020C13C4
sub_020C13C4: ; 0x020C13C4
	ldr ip, _020C13D0 ; =sub_020C132C
	mov r0, #1
	bx ip
	; .align 2, 0
_020C13D0: .word sub_020C132C
	arm_func_end sub_020C13C4

	arm_func_start sub_020C13D4
sub_020C13D4: ; 0x020C13D4
	ldr ip, _020C13E0 ; =sub_020C132C
	mov r0, #2
	bx ip
	; .align 2, 0
_020C13E0: .word sub_020C132C
	arm_func_end sub_020C13D4

	arm_func_start sub_020C13E4
sub_020C13E4: ; 0x020C13E4
	ldr ip, _020C13F0 ; =sub_020C132C
	mov r0, #3
	bx ip
	; .align 2, 0
_020C13F0: .word sub_020C132C
	arm_func_end sub_020C13E4

	arm_func_start sub_020C13F4
sub_020C13F4: ; 0x020C13F4
	ldr ip, _020C1400 ; =sub_020C132C
	mov r0, #4
	bx ip
	; .align 2, 0
_020C1400: .word sub_020C132C
	arm_func_end sub_020C13F4

	arm_func_start sub_020C1404
sub_020C1404: ; 0x020C1404
	ldr ip, _020C1410 ; =sub_020C132C
	mov r0, #5
	bx ip
	; .align 2, 0
_020C1410: .word sub_020C132C
	arm_func_end sub_020C1404

	arm_func_start sub_020C1414
sub_020C1414: ; 0x020C1414
	ldr ip, _020C1420 ; =sub_020C132C
	mov r0, #6
	bx ip
	; .align 2, 0
_020C1420: .word sub_020C132C
	arm_func_end sub_020C1414

	arm_func_start sub_020C1424
sub_020C1424: ; 0x020C1424
	ldr ip, _020C1430 ; =sub_020C132C
	mov r0, #7
	bx ip
	; .align 2, 0
_020C1430: .word sub_020C132C
	arm_func_end sub_020C1424

	arm_func_start sub_020C1434
sub_020C1434: ; 0x020C1434
	ldr r0, _020C1448 ; =0x027E0060
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020C1448: .word 0x027E0060
	arm_func_end sub_020C1434

	arm_func_start sub_020C144C
sub_020C144C: ; 0x020C144C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	mov r2, #0xc
	ldr r4, _020C14CC ; =0x027E0000
	ldr r6, _020C14D0 ; =0x021CCBF8
	mov r7, r8
	mov lr, r8
	mov ip, #1
	mov r3, r2
_020C1470:
	tst r0, #1
	beq _020C14B8
	mov sb, r7
	cmp r8, #8
	blt _020C1494
	cmp r8, #0xb
	suble r5, r8, #8
	mlale sb, r5, r3, r6
	ble _020C14B0
_020C1494:
	cmp r8, #3
	blt _020C14AC
	cmp r8, #6
	addle r5, r8, #1
	mlale sb, r5, r2, r6
	ble _020C14B0
_020C14AC:
	str r1, [r4, r8, lsl #2]
_020C14B0:
	cmp sb, #0
	stmneia sb, {r1, ip, lr}
_020C14B8:
	add r8, r8, #1
	cmp r8, #0x16
	mov r0, r0, lsr #1
	blt _020C1470
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020C14CC: .word 0x027E0000
_020C14D0: .word 0x021CCBF8
	arm_func_end sub_020C144C

	arm_func_start sub_020C14D4
sub_020C14D4: ; 0x020C14D4
	ldr r2, _020C1558 ; =0x027E0000
	mov r1, #0
_020C14DC:
	tst r0, #1
	beq _020C153C
	cmp r1, #8
	blt _020C150C
	cmp r1, #0xb
	bgt _020C150C
	sub r1, r1, #8
	mov r0, #0xc
	mul r2, r1, r2
	ldr r0, _020C155C ; =0x021CCBF8
	ldr r0, [r0, r2]
	bx lr
_020C150C:
	cmp r1, #3
	blt _020C1534
	cmp r1, #6
	bgt _020C1534
	add r1, r1, #1
	mov r0, #0xc
	mul r2, r1, r2
	ldr r0, _020C155C ; =0x021CCBF8
	ldr r0, [r0, r2]
	bx lr
_020C1534:
	ldr r0, [r2, #0]
	bx lr
_020C153C:
	add r1, r1, #1
	cmp r1, #0x16
	mov r0, r0, lsr #1
	add r2, r2, #4
	blt _020C14DC
	mov r0, #0
	bx lr
	; .align 2, 0
_020C1558: .word 0x027E0000
_020C155C: .word 0x021CCBF8
	arm_func_end sub_020C14D4

	arm_func_start sub_020C1560
sub_020C1560: ; 0x020C1560
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0xc
	mul r6, r0, r6
	ldr ip, _020C159C ; =0x021CCBF8
	add r4, r0, #8
	mov r5, #1
	mov r0, r5, lsl r4
	ldr r3, _020C15A0 ; =0x021CCC00
	str r1, [ip, r6]
	str r2, [r3, r6]
	bl sub_020C161C
	and r1, r0, r5, lsl r4
	ldr r0, _020C15A4 ; =0x021CCBFC
	str r1, [r0, r6]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C159C: .word 0x021CCBF8
_020C15A0: .word 0x021CCC00
_020C15A4: .word 0x021CCBFC
	arm_func_end sub_020C1560

	arm_func_start sub_020C15A8
sub_020C15A8: ; 0x020C15A8
	stmfd sp!, {r4, lr}
	mov r3, #0xc
	mul r4, r0, r4
	ldr ip, _020C15E4 ; =0x021CCC28
	add r0, r0, #3
	mov r3, #1
	mov r0, r3, lsl r0
	ldr r3, _020C15E8 ; =0x021CCC30
	str r1, [ip, r4]
	str r2, [r3, r4]
	bl sub_020C161C
	ldr r0, _020C15EC ; =0x021CCC2C
	mov r1, #1
	str r1, [r0, r4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C15E4: .word 0x021CCC28
_020C15E8: .word 0x021CCC30
_020C15EC: .word 0x021CCC2C
	arm_func_end sub_020C15A8

	arm_func_start sub_020C15F0
sub_020C15F0: ; 0x020C15F0
	ldr r3, _020C1618 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C1618: .word 0x04000208
	arm_func_end sub_020C15F0

	arm_func_start sub_020C161C
sub_020C161C: ; 0x020C161C
	ldr r3, _020C1648 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	orr r0, r1, r0
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C1648: .word 0x04000208
	arm_func_end sub_020C161C

	arm_func_start sub_020C164C
sub_020C164C: ; 0x020C164C
	ldr ip, _020C1678 ; =0x04000208
	mov r2, #0
	ldrh r3, [ip]
	mvn r1, r0
	strh r2, [ip]
	ldr r0, [ip, #8]
	and r1, r0, r1
	str r1, [ip, #8]
	ldrh r1, [ip]
	strh r3, [ip]
	bx lr
	; .align 2, 0
_020C1678: .word 0x04000208
	arm_func_end sub_020C164C

	arm_func_start sub_020C167C
sub_020C167C: ; 0x020C167C
	ldr r3, _020C16A4 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #0xc]
	str r0, [r3, #0xc]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C16A4: .word 0x04000208
	arm_func_end sub_020C167C

	arm_func_start sub_020C16A8
sub_020C16A8: ; 0x020C16A8
	ldr ip, _020C16CC ; =0x027E0000
	ldr r3, _020C16D0 ; =0xFDDB597D
	add r0, ip, #0x3000
	ldr r2, _020C16D4 ; =0x7BF9DD5B
	ldr r1, _020C16D8 ; =0x00000800
	str r3, [r0, #0xf7c]
	add r0, ip, #0x3f80
	str r2, [r0, -r1]
	bx lr
	; .align 2, 0
_020C16CC: .word 0x027E0000
_020C16D0: .word 0xFDDB597D
_020C16D4: .word 0x7BF9DD5B
_020C16D8: .word 0x00000800
	arm_func_end sub_020C16A8

	arm_func_start sub_020C16DC
sub_020C16DC: ; 0x020C16DC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020C1798 ; =0x021CCC58
	ldr r0, [r3, #0]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _020C179C ; =0x027FFFF0
	mov r4, #1
	mov r2, #0
	mov r0, #0x7e
	str r4, [r3, #0]
	str r2, [r1, #0]
	bl sub_020C17F4
	ldr r5, _020C179C ; =0x027FFFF0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _020C1734
	mov r4, #0x400
_020C1720:
	mov r0, r4
	bl sub_02000522
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _020C1720
_020C1734:
	ldr ip, _020C17A0 ; =0x027FFFB0
	mvn r0, #0
	str r0, [ip]
	mov r3, r0, lsl #0x10
	add r1, ip, #0x10
	mov r0, #0
	mov r2, #0x28
	str r3, [ip, #4]
	bl sub_020C4B4C
	ldr ip, _020C17A4 ; =0x04000204
	ldr r1, _020C179C ; =0x027FFFF0
	ldrh r3, [ip]
	mov r0, #0x7e
	mov r2, #0
	orr r3, r3, #0x800
	strh r3, [ip]
	ldrh r3, [ip]
	orr r3, r3, #0x80
	strh r3, [ip]
	bl sub_020C1878
	ldr r1, _020C179C ; =0x027FFFF0
	mov r0, #0x7f
	mov r2, #0
	bl sub_020C17F4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C1798: .word 0x021CCC58
_020C179C: .word 0x027FFFF0
_020C17A0: .word 0x027FFFB0
_020C17A4: .word 0x04000204
	arm_func_end sub_020C16DC

	arm_func_start sub_020C17A8
sub_020C17A8: ; 0x020C17A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020C1888
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0x400
_020C17CC:
	mov r0, r4
	bl sub_02000522
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_020C1888
	cmp r0, #0
	bgt _020C17CC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C17A8

	arm_func_start sub_020C17F4
sub_020C17F4: ; 0x020C17F4
	ldr ip, _020C1800 ; =sub_020C17A8
	mov r3, #0
	bx ip
	; .align 2, 0
_020C1800: .word sub_020C17A8
	arm_func_end sub_020C17F4

	arm_func_start sub_020C1804
sub_020C1804: ; 0x020C1804
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldrh r1, [r7, #4]
	mov r6, r2
	mov r5, r3
	cmp r0, r1
	mvnne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _020C1834
	bl sub_020C3DC4
	b _020C1838
_020C1834:
	bl sub_020C3D98
_020C1838:
	mov r4, r0
	mov r0, #0
	strh r0, [r7, #4]
	cmp r6, #0
	beq _020C1850
	blx r6
_020C1850:
	mov r0, #0
	str r0, [r7, #0]
	cmp r5, #0
	mov r0, r4
	beq _020C186C
	bl sub_020C3DD8
	b _020C1870
_020C186C:
	bl sub_020C3DAC
_020C1870:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C1804

	arm_func_start sub_020C1878
sub_020C1878: ; 0x020C1878
	ldr ip, _020C1884 ; =sub_020C1804
	mov r3, #0
	bx ip
	; .align 2, 0
_020C1884: .word sub_020C1804
	arm_func_end sub_020C1878

	arm_func_start sub_020C1888
sub_020C1888: ; 0x020C1888
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r6, r3
	mov sb, r0
	mov r8, r1
	mov r7, r2
	beq _020C18A8
	bl sub_020C3DC4
	b _020C18AC
_020C18A8:
	bl sub_020C3D98
_020C18AC:
	mov r5, r0
	mov r0, sb
	mov r1, r8
	bl sub_020C4F40
	movs r4, r0
	bne _020C18D4
	cmp r7, #0
	beq _020C18D0
	blx r7
_020C18D0:
	strh sb, [r8, #4]
_020C18D4:
	cmp r6, #0
	mov r0, r5
	beq _020C18E8
	bl sub_020C3DD8
	b _020C18EC
_020C18E8:
	bl sub_020C3DAC
_020C18EC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C1888

	arm_func_start sub_020C18F4
sub_020C18F4: ; 0x020C18F4
	ldr ip, _020C1908 ; =sub_020C17A8
	ldr r1, _020C190C ; =0x027FFFE8
	ldr r2, _020C1910 ; =sub_020C1960
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1908: .word sub_020C17A8
_020C190C: .word 0x027FFFE8
_020C1910: .word sub_020C1960
	arm_func_end sub_020C18F4

	arm_func_start sub_020C1914
sub_020C1914: ; 0x020C1914
	ldr ip, _020C1928 ; =sub_020C1804
	ldr r1, _020C192C ; =0x027FFFE8
	ldr r2, _020C1930 ; =sub_020C1978
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1928: .word sub_020C1804
_020C192C: .word 0x027FFFE8
_020C1930: .word sub_020C1978
	arm_func_end sub_020C1914

	arm_func_start sub_020C1934
sub_020C1934: ; 0x020C1934
	ldr r1, _020C193C ; =sub_020C1914
	bx r1
	; .align 2, 0
_020C193C: .word sub_020C1914
	arm_func_end sub_020C1934

	arm_func_start sub_020C1940
sub_020C1940: ; 0x020C1940
	ldr ip, _020C1954 ; =sub_020C1888
	ldr r1, _020C1958 ; =0x027FFFE8
	ldr r2, _020C195C ; =sub_020C1960
	mov r3, #1
	bx ip
	; .align 2, 0
_020C1954: .word sub_020C1888
_020C1958: .word 0x027FFFE8
_020C195C: .word sub_020C1960
	arm_func_end sub_020C1940

	arm_func_start sub_020C1960
sub_020C1960: ; 0x020C1960
	ldr r1, _020C1974 ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C1974: .word 0x04000204
	arm_func_end sub_020C1960

	arm_func_start sub_020C1978
sub_020C1978: ; 0x020C1978
	ldr r1, _020C198C ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x80
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C198C: .word 0x04000204
	arm_func_end sub_020C1978

	arm_func_start sub_020C1990
sub_020C1990: ; 0x020C1990
	ldr ip, _020C19A0 ; =sub_020C17F4
	ldr r1, _020C19A4 ; =0x027FFFE0
	ldr r2, _020C19A8 ; =sub_020C19C8
	bx ip
	; .align 2, 0
_020C19A0: .word sub_020C17F4
_020C19A4: .word 0x027FFFE0
_020C19A8: .word sub_020C19C8
	arm_func_end sub_020C1990

	arm_func_start sub_020C19AC
sub_020C19AC: ; 0x020C19AC
	ldr ip, _020C19BC ; =sub_020C1878
	ldr r1, _020C19C0 ; =0x027FFFE0
	ldr r2, _020C19C4 ; =sub_020C19E0
	bx ip
	; .align 2, 0
_020C19BC: .word sub_020C1878
_020C19C0: .word 0x027FFFE0
_020C19C4: .word sub_020C19E0
	arm_func_end sub_020C19AC

	arm_func_start sub_020C19C8
sub_020C19C8: ; 0x020C19C8
	ldr r1, _020C19DC ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x800
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C19DC: .word 0x04000204
	arm_func_end sub_020C19C8

	arm_func_start sub_020C19E0
sub_020C19E0: ; 0x020C19E0
	ldr r1, _020C19F4 ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x800
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C19F4: .word 0x04000204
	arm_func_end sub_020C19E0

	arm_func_start sub_020C19F8
sub_020C19F8: ; 0x020C19F8
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end sub_020C19F8

	arm_func_start sub_020C1A00
sub_020C1A00: ; 0x020C1A00
	ldr r3, _020C1A60 ; =0x027FFFB0
	ldr r1, [r3, #0]
	clz r2, r1
	cmp r2, #0x20
	bne _020C1A18
	b _020C1A1C
_020C1A18:
	mov r0, #0x40
_020C1A1C:
	bne _020C1A44
	add r3, r3, #4
	ldr r1, [r3, #0]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _020C1A64 ; =0xFFFFFFFD
	beq _020C1A3C
	b _020C1A40
_020C1A3C:
	bx lr
_020C1A40:
	mov r0, #0x60
_020C1A44:
	add r0, r0, r2
	mov r1, #-0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3, #0]
	bic r2, r2, r1
	str r2, [r3, #0]
	bx lr
	; .align 2, 0
_020C1A60: .word 0x027FFFB0
_020C1A64: .word 0xFFFFFFFD
	arm_func_end sub_020C1A00

	arm_func_start sub_020C1A68
sub_020C1A68: ; 0x020C1A68
	ldr r3, _020C1AAC ; =0x027FFFB0
	cmp r0, #0x60
	bpl _020C1A78
	b _020C1A7C
_020C1A78:
	add r3, r3, #4
_020C1A7C:
	bpl _020C1A84
	b _020C1A88
_020C1A84:
	sub r0, r0, #0x60
_020C1A88:
	bmi _020C1A90
	b _020C1A94
_020C1A90:
	sub r0, r0, #0x40
_020C1A94:
	mov r1, #-0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3, #0]
	orr r2, r2, r1
	str r2, [r3, #0]
	bx lr
	; .align 2, 0
_020C1AAC: .word 0x027FFFB0
	arm_func_end sub_020C1A68

	arm_func_start sub_020C1AB0
sub_020C1AB0: ; 0x020C1AB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl sub_020C1AD8
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C1AB0

	arm_func_start sub_020C1AD8
sub_020C1AD8: ; 0x020C1AD8
	ldr ip, _020C1AEC ; =sub_020C1B18
	mov r3, r2
	mov r2, r1
	mvn r1, #0x80000000
	bx ip
	; .align 2, 0
_020C1AEC: .word sub_020C1B18
	arm_func_end sub_020C1AD8

	arm_func_start sub_020C1AF0
sub_020C1AF0: ; 0x020C1AF0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl sub_020C1B18
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C1AF0

	arm_func_start sub_020C1B18
sub_020C1B18: ; 0x020C1B18
	ldr ip, _020C1B20 ; =sub_020D3524
	bx ip
	; .align 2, 0
_020C1B20: .word sub_020D3524
	arm_func_end sub_020C1B18

	arm_func_start sub_020C1B24
sub_020C1B24: ; 0x020C1B24
	ldr r1, _020C1B38 ; =0x021CCC5C
	ldr r0, [r1, #0x20]
	add r0, r0, #1
	str r0, [r1, #0x20]
	bx lr
	; .align 2, 0
_020C1B38: .word 0x021CCC5C
	arm_func_end sub_020C1B24

	arm_func_start sub_020C1B3C
sub_020C1B3C: ; 0x020C1B3C
	ldr ip, [r0]
	b _020C1B50
_020C1B44:
	cmp ip, r1
	bxeq lr
	ldr ip, [ip, #0x80]
_020C1B50:
	cmp ip, #0
	beq _020C1B68
	ldr r3, [ip, #0x70]
	ldr r2, [r1, #0x70]
	cmp r3, r2
	bls _020C1B44
_020C1B68:
	cmp ip, #0
	bne _020C1B94
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	mov r2, #0
	str r2, [r1, #0x80]
	str r1, [r0, #4]
	bx lr
_020C1B94:
	ldr r2, [ip, #0x7c]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	str ip, [r1, #0x80]
	str r1, [ip, #0x7c]
	bx lr
	arm_func_end sub_020C1B3C

	arm_func_start sub_020C1BB4
sub_020C1BB4: ; 0x020C1BB4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1BE0
	ldr r1, [r2, #0x80]
	str r1, [r0, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x7c]
	moveq r1, #0
	streq r1, [r0, #4]
	streq r1, [r2, #0x78]
_020C1BE0:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1BB4

	arm_func_start sub_020C1BE8
sub_020C1BE8: ; 0x020C1BE8
	ldr ip, [r0]
	mov r2, ip
	cmp ip, #0
	beq _020C1C34
_020C1BF8:
	cmp r2, r1
	ldr r3, [r2, #0x80]
	bne _020C1C28
	cmp ip, r2
	ldr ip, [r2, #0x7c]
	streq r3, [r0]
	strne r3, [ip, #0x80]
	ldr r1, [r0, #4]
	cmp r1, r2
	streq ip, [r0, #4]
	strne ip, [r3, #0x7c]
	b _020C1C34
_020C1C28:
	mov r2, r3
	cmp r3, #0
	bne _020C1BF8
_020C1C34:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1BE8

	arm_func_start sub_020C1C3C
sub_020C1C3C: ; 0x020C1C3C
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1C64
	ldr r1, [r2, #0x10]
	str r1, [r0, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	moveq r1, #0
	streq r1, [r0, #4]
_020C1C64:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1C3C

	arm_func_start sub_020C1C6C
sub_020C1C6C: ; 0x020C1C6C
	stmfd sp!, {r3, lr}
	ldr r1, _020C1CC8 ; =0x021CCC5C
	mov ip, #0
	ldr lr, [r1, #0x2c]
	mov r3, lr
	b _020C1C8C
_020C1C84:
	mov ip, r3
	ldr r3, [r3, #0x68]
_020C1C8C:
	cmp r3, #0
	beq _020C1CA4
	ldr r2, [r3, #0x70]
	ldr r1, [r0, #0x70]
	cmp r2, r1
	blo _020C1C84
_020C1CA4:
	cmp ip, #0
	ldrne r1, [ip, #0x68]
	strne r1, [r0, #0x68]
	strne r0, [ip, #0x68]
	ldmneia sp!, {r3, pc}
	ldr r1, _020C1CC8 ; =0x021CCC5C
	str lr, [r0, #0x68]
	str r0, [r1, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1CC8: .word 0x021CCC5C
	arm_func_end sub_020C1C6C

	arm_func_start sub_020C1CCC
sub_020C1CCC: ; 0x020C1CCC
	ldr r1, _020C1D10 ; =0x021CCC5C
	mov r2, #0
	ldr r1, [r1, #0x2c]
	b _020C1CE4
_020C1CDC:
	mov r2, r1
	ldr r1, [r1, #0x68]
_020C1CE4:
	cmp r1, #0
	cmpne r1, r0
	bne _020C1CDC
	cmp r2, #0
	ldrne r0, [r0, #0x68]
	strne r0, [r2, #0x68]
	bxne lr
	ldr r1, [r0, #0x68]
	ldr r0, _020C1D10 ; =0x021CCC5C
	str r1, [r0, #0x2c]
	bx lr
	; .align 2, 0
_020C1D10: .word 0x021CCC5C
	arm_func_end sub_020C1CCC

	arm_func_start sub_020C1D14
sub_020C1D14: ; 0x020C1D14
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r0, #0x26]
	ldr r4, _020C1DD8 ; =0x021CCC80
	cmp r0, #0
	bne _020C1D44
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _020C1D50
_020C1D44:
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
_020C1D50:
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r6, [r0, #0]
	bl sub_020C22F8
	mov r5, r0
	cmp r6, r5
	cmpne r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x64]
	cmp r0, #2
	beq _020C1D8C
	mov r0, r6
	bl sub_020C2698
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_020C1D8C:
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1DA8
	mov r0, r6
	mov r1, r5
	blx r2
_020C1DA8:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _020C1DC0
	mov r0, r6
	mov r1, r5
	blx r2
_020C1DC0:
	ldr r1, _020C1DD4 ; =0x021CCC5C
	mov r0, r5
	str r5, [r1, #0x28]
	bl sub_020C26E4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C1DD4: .word 0x021CCC5C
_020C1DD8: .word 0x021CCC80
	arm_func_end sub_020C1D14

	arm_func_start sub_020C1DDC
sub_020C1DDC: ; 0x020C1DDC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _020C1EEC ; =0x021CCC5C
	ldr r1, [r0, #0xc]
	cmp r1, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, pc}
	mov r2, #1
	ldr r1, _020C1EF0 ; =0x021CCC84
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	mov r1, #0x10
	str r1, [r0, #0x164]
	mov r3, #0
	str r3, [r0, #0x160]
	str r2, [r0, #0x158]
	str r3, [r0, #0x15c]
	ldr r2, _020C1EF4 ; =0x00000000
	ldr r1, _020C1EF8 ; =0x021CCD50
	str r3, [r0, #0x168]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x28]
	cmp r2, #0
	ldrle r0, _020C1EFC ; =0x027E0080
	ble _020C1E50
	ldr r1, _020C1F00 ; =0x027E0000
	ldr r0, _020C1F04 ; =0x00000800
	add r1, r1, #0x3f80
	sub r0, r1, r0
_020C1E50:
	ldr r1, _020C1F00 ; =0x027E0000
	sub ip, r0, r2
	add r2, r1, #0x3f80
	ldr r0, _020C1F04 ; =0x00000800
	ldr r1, _020C1EEC ; =0x021CCC5C
	sub r3, r2, r0
	str r3, [r1, #0x188]
	str ip, [r1, #0x184]
	mov r0, #0
	ldr r2, _020C1F08 ; =0xFDDB597D
	str r0, [r1, #0x18c]
	str r2, [r3, #-4]
	ldr r2, [r1, #0x184]
	ldr ip, _020C1F0C ; =0x7BF9DD5B
	ldr r3, _020C1F10 ; =0x021CCC80
	str ip, [r2]
	str r0, [r1, #0x194]
	str r0, [r1, #0x190]
	strh r0, [r1, #0x24]
	ldr r2, _020C1F14 ; =0x027FFFA0
	strh r0, [r1, #0x26]
	str r3, [r2, #0]
	bl sub_020C256C
	mov r2, #0xc8
	str r2, [sp]
	mov ip, #0x1f
	ldr r0, _020C1F18 ; =0x021CCC90
	ldr r1, _020C1F1C ; =sub_020C2594
	ldr r3, _020C1F20 ; =0x021CCED8
	mov r2, #0
	str ip, [sp, #4]
	bl sub_020C1F34
	ldr r0, _020C1EEC ; =0x021CCC5C
	mov r1, #0x20
	str r1, [r0, #0xa4]
	mov r1, #1
	str r1, [r0, #0x98]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1EEC: .word 0x021CCC5C
_020C1EF0: .word 0x021CCC84
_020C1EF4: .word 0x00000000
_020C1EF8: .word 0x021CCD50
_020C1EFC: .word 0x027E0080
_020C1F00: .word 0x027E0000
_020C1F04: .word 0x00000800
_020C1F08: .word 0xFDDB597D
_020C1F0C: .word 0x7BF9DD5B
_020C1F10: .word 0x021CCC80
_020C1F14: .word 0x027FFFA0
_020C1F18: .word 0x021CCC90
_020C1F1C: .word sub_020C2594
_020C1F20: .word 0x021CCED8
	arm_func_end sub_020C1DDC

	arm_func_start sub_020C1F24
sub_020C1F24: ; 0x020C1F24
	ldr r0, _020C1F30 ; =0x021CCC68
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020C1F30: .word 0x021CCC68
	arm_func_end sub_020C1F24

	arm_func_start sub_020C1F34
sub_020C1F34: ; 0x020C1F34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r6, r3
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C1B24
	ldr r2, [sp, #0x1c]
	mov r1, #0
	str r2, [r8, #0x70]
	str r0, [r8, #0x6c]
	str r1, [r8, #0x64]
	mov r0, r8
	str r1, [r8, #0x74]
	bl sub_020C1C6C
	ldr r0, [sp, #0x18]
	mov r1, r5
	str r6, [r8, #0x94]
	sub r5, r6, r0
	sub r2, r6, #4
	mov ip, #0
	str r5, [r8, #0x90]
	str ip, [r8, #0x98]
	ldr r6, _020C2024 ; =0xFDDB597D
	ldr r0, [r8, #0x94]
	ldr r3, _020C2028 ; =0x7BF9DD5B
	str r6, [r0, #-4]
	ldr r0, [r8, #0x90]
	str r3, [r0, #0]
	str ip, [r8, #0xa0]
	mov r0, r8
	str ip, [r8, #0x9c]
	bl sub_020C2614
	ldr r2, _020C202C ; =sub_020C2030
	str r7, [r8, #4]
	str r2, [r8, #0x3c]
	ldr r2, [sp, #0x18]
	add r1, r5, #4
	mov r0, #0
	sub r2, r2, #8
	bl sub_020C4B4C
	mov r1, #0
	str r1, [r8, #0x84]
	str r1, [r8, #0x88]
	mov r0, r8
	str r1, [r8, #0x8c]
	bl sub_020C260C
	mov r0, #0
	str r0, [r8, #0x78]
	str r0, [r8, #0x80]
	add r1, r8, #0xa4
	mov r2, #0xc
	str r0, [r8, #0x7c]
	bl sub_020C4B4C
	mov r1, #0
	mov r0, r4
	str r1, [r8, #0xb0]
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C2024: .word 0xFDDB597D
_020C2028: .word 0x7BF9DD5B
_020C202C: .word sub_020C2030
	arm_func_end sub_020C1F34

	arm_func_start sub_020C2030
sub_020C2030: ; 0x020C2030
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	ldr r0, _020C204C ; =0x021CCC5C
	mov r1, #0
	ldr r0, [r0, #0x28]
	bl sub_020C2050
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C204C: .word 0x021CCC5C
	arm_func_end sub_020C2030

	arm_func_start sub_020C2050
sub_020C2050: ; 0x020C2050
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020C20A4 ; =0x021CCC5C
	mov r5, r0
	ldr r2, [r2, #0x1c]
	mov r4, r1
	cmp r2, #0
	beq _020C2098
	ldr r1, _020C20A8 ; =sub_020C20AC
	bl sub_020C2614
	str r4, [r5, #4]
	ldr r1, [r5, #0]
	mov r0, r5
	orr r1, r1, #0x80
	str r1, [r5, #0]
	mov r1, #1
	str r1, [r5, #0x64]
	bl sub_020C26E4
	ldmia sp!, {r3, r4, r5, pc}
_020C2098:
	mov r0, r4
	bl sub_020C20AC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C20A4: .word 0x021CCC5C
_020C20A8: .word sub_020C20AC
	arm_func_end sub_020C2050

	arm_func_start sub_020C20AC
sub_020C20AC: ; 0x020C20AC
	stmfd sp!, {r3, lr}
	ldr r1, _020C20E0 ; =0x021CCC5C
	ldr r1, [r1, #8]
	ldr r3, [r1, #0]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _020C20D8
	mov r1, #0
	str r1, [r3, #0xb4]
	blx r2
	bl sub_020C3D98
_020C20D8:
	bl sub_020C20E4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C20E0: .word 0x021CCC5C
	arm_func_end sub_020C20AC

	arm_func_start sub_020C20E4
sub_020C20E4: ; 0x020C20E4
	stmfd sp!, {r4, lr}
	ldr r0, _020C213C ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r4, [r0, #0]
	bl sub_020C25A4
	mov r0, r4
	bl sub_020C2AB8
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _020C2114
	mov r1, r4
	bl sub_020C1BE8
_020C2114:
	mov r0, r4
	bl sub_020C1CCC
	mov r1, #2
	add r0, r4, #0x9c
	str r1, [r4, #0x64]
	bl sub_020C2268
	bl sub_020C25D8
	bl sub_020C2320
	bl sub_020C42A8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C213C: .word 0x021CCC5C
	arm_func_end sub_020C20E4

	arm_func_start sub_020C2140
sub_020C2140: ; 0x020C2140
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C21B8 ; =0x021CCC5C
	mov r4, r0
	ldr r0, [r1, #0x28]
	cmp r0, r5
	bne _020C2164
	bl sub_020C20E4
_020C2164:
	bl sub_020C25A4
	mov r0, r5
	bl sub_020C2AB8
	mov r0, r5
	bl sub_020C21BC
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _020C218C
	mov r1, r5
	bl sub_020C1BE8
_020C218C:
	mov r0, r5
	bl sub_020C1CCC
	mov r1, #2
	add r0, r5, #0x9c
	str r1, [r5, #0x64]
	bl sub_020C2268
	bl sub_020C25D8
	mov r0, r4
	bl sub_020C3DAC
	bl sub_020C2320
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C21B8: .word 0x021CCC5C
	arm_func_end sub_020C2140

	arm_func_start sub_020C21BC
sub_020C21BC: ; 0x020C21BC
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0xb0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020C3BB4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C21BC

	arm_func_start sub_020C21D4
sub_020C21D4: ; 0x020C21D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, [r5, #0x64]
	mov r4, r0
	cmp r1, #2
	beq _020C21F8
	add r0, r5, #0x9c
	bl sub_020C2218
_020C21F8:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C21D4

	arm_func_start sub_020C2204
sub_020C2204: ; 0x020C2204
	ldr r0, [r0, #0x64]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020C2204

	arm_func_start sub_020C2218
sub_020C2218: ; 0x020C2218
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, _020C2264 ; =0x021CCC5C
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r6, #0
	ldr r5, [r0, #0]
	beq _020C224C
	mov r0, r6
	mov r1, r5
	str r6, [r5, #0x78]
	bl sub_020C1B3C
_020C224C:
	mov r0, #0
	str r0, [r5, #0x64]
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C2264: .word 0x021CCC5C
	arm_func_end sub_020C2218

	arm_func_start sub_020C2268
sub_020C2268: ; 0x020C2268
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_020C3D98
	ldr r1, [r7, #0]
	mov r6, r0
	cmp r1, #0
	beq _020C22C4
	beq _020C22B4
	mov r5, #1
	mov r4, #0
_020C2290:
	mov r0, r7
	bl sub_020C1BB4
	str r5, [r0, #0x64]
	str r4, [r0, #0x78]
	str r4, [r0, #0x80]
	str r4, [r0, #0x7c]
	ldr r0, [r7, #0]
	cmp r0, #0
	bne _020C2290
_020C22B4:
	mov r0, #0
	str r0, [r7, #4]
	str r0, [r7, #0]
	bl sub_020C1D14
_020C22C4:
	mov r0, r6
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2268

	arm_func_start sub_020C22D0
sub_020C22D0: ; 0x020C22D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r1, #1
	mov r4, r0
	str r1, [r5, #0x64]
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C22D0

	arm_func_start sub_020C22F8
sub_020C22F8: ; 0x020C22F8
	ldr r0, _020C231C ; =0x021CCC5C
	ldr r0, [r0, #0x2c]
	b _020C2308
_020C2304:
	ldr r0, [r0, #0x68]
_020C2308:
	cmp r0, #0
	ldrne r1, [r0, #0x64]
	cmpne r1, #1
	bne _020C2304
	bx lr
	; .align 2, 0
_020C231C: .word 0x021CCC5C
	arm_func_end sub_020C22F8

	arm_func_start sub_020C2320
sub_020C2320: ; 0x020C2320
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C2320

	arm_func_start sub_020C233C
sub_020C233C: ; 0x020C233C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _020C23F0 ; =0x021CCC5C
	mov r4, #0
	mov r5, r4
	mov r6, r4
	ldr r8, [r0, #0x28]
	bl sub_020C3D98
	ldr r1, _020C23F0 ; =0x021CCC5C
	mov r7, r0
	ldr r1, [r1, #0x2c]
	mov r0, r4
	cmp r1, #0
	beq _020C239C
	ldr r2, [r8, #0x70]
_020C2374:
	cmp r1, r8
	moveq r4, r0
	ldr r0, [r1, #0x70]
	cmp r2, r0
	moveq r5, r1
	mov r0, r1
	ldr r1, [r1, #0x68]
	addeq r6, r6, #1
	cmp r1, #0
	bne _020C2374
_020C239C:
	cmp r6, #1
	ble _020C23AC
	cmp r5, r8
	bne _020C23B8
_020C23AC:
	mov r0, r7
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C23B8:
	cmp r4, #0
	ldrne r0, [r8, #0x68]
	strne r0, [r4, #0x68]
	bne _020C23D4
	ldr r1, [r8, #0x68]
	ldr r0, _020C23F0 ; =0x021CCC5C
	str r1, [r0, #0x2c]
_020C23D4:
	ldr r0, [r5, #0x68]
	str r0, [r8, #0x68]
	str r8, [r5, #0x68]
	bl sub_020C1D14
	mov r0, r7
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C23F0: .word 0x021CCC5C
	arm_func_end sub_020C233C

	arm_func_start sub_020C23F4
sub_020C23F4: ; 0x020C23F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020C2494 ; =0x021CCC5C
	mov r7, r0
	mov r6, r1
	ldr r8, [r2, #0x2c]
	mov r4, #0
	bl sub_020C3D98
	mov r5, r0
	b _020C2420
_020C2418:
	mov r4, r8
	ldr r8, [r8, #0x68]
_020C2420:
	cmp r8, #0
	cmpne r8, r7
	bne _020C2418
	cmp r8, #0
	ldrne r0, _020C2498 ; =0x021CCC90
	cmpne r8, r0
	bne _020C244C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C244C:
	ldr r0, [r8, #0x70]
	cmp r0, r6
	beq _020C2484
	cmp r4, #0
	ldrne r0, [r7, #0x68]
	strne r0, [r4, #0x68]
	bne _020C2474
	ldr r1, [r7, #0x68]
	ldr r0, _020C2494 ; =0x021CCC5C
	str r1, [r0, #0x2c]
_020C2474:
	mov r0, r7
	str r6, [r7, #0x70]
	bl sub_020C1C6C
	bl sub_020C1D14
_020C2484:
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C2494: .word 0x021CCC5C
_020C2498: .word 0x021CCC90
	arm_func_end sub_020C23F4

	arm_func_start sub_020C249C
sub_020C249C: ; 0x020C249C
	ldr r0, [r0, #0x70]
	bx lr
	arm_func_end sub_020C249C

	arm_func_start sub_020C24A4
sub_020C24A4: ; 0x020C24A4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	mov r4, r0
	add r0, sp, #8
	bl sub_020C3A0C
	ldr r0, _020C2540 ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	bl sub_020C3D98
	ldr r1, _020C2544 ; =0x000082EA
	mov r2, #0
	umull r5, r3, r4, r1
	mla r3, r4, r2, r3
	mla r3, r2, r1, r3
	mov r1, r5, lsr #6
	mov r4, r0
	ldr r5, [sp, #4]
	add r0, sp, #8
	add r2, sp, #4
	str r0, [r5, #0xb0]
	str r2, [sp]
	mov r2, r3, lsr #6
	orr r1, r1, r3, lsl #26
	ldr r3, _020C2548 ; =sub_020C254C
	bl sub_020C3B48
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020C2530
	mov r5, #0
_020C251C:
	mov r0, r5
	bl sub_020C2218
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020C251C
_020C2530:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020C2540: .word 0x021CCC5C
_020C2544: .word 0x000082EA
_020C2548: .word sub_020C254C
	arm_func_end sub_020C24A4

	arm_func_start sub_020C254C
sub_020C254C: ; 0x020C254C
	ldr r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr ip, _020C2568 ; =sub_020C22D0
	mov r0, r2
	str r1, [r2, #0xb0]
	bx ip
	; .align 2, 0
_020C2568: .word sub_020C22D0
	arm_func_end sub_020C254C

	arm_func_start sub_020C256C
sub_020C256C: ; 0x020C256C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2590 ; =0x021CCC5C
	ldr r4, [r1, #0x30]
	str r5, [r1, #0x30]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C2590: .word 0x021CCC5C
	arm_func_end sub_020C256C

	arm_func_start sub_020C2594
sub_020C2594: ; 0x020C2594
	stmfd sp!, {r3, lr}
	bl sub_020C3D84
_020C259C:
	bl sub_020C42B8
	b _020C259C
	arm_func_end sub_020C2594

	arm_func_start sub_020C25A4
sub_020C25A4: ; 0x020C25A4
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r2, _020C25D4 ; =0x021CCC5C
	mvn r1, #0
	ldr r3, [r2, #4]
	cmp r3, r1
	addlo r1, r3, #1
	movlo r4, r3
	strlo r1, [r2, #4]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C25D4: .word 0x021CCC5C
	arm_func_end sub_020C25A4

	arm_func_start sub_020C25D8
sub_020C25D8: ; 0x020C25D8
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C2608 ; =0x021CCC5C
	mov r4, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	subne r2, r3, #1
	movne r4, r3
	strne r2, [r1, #4]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C2608: .word 0x021CCC5C
	arm_func_end sub_020C25D8

	arm_func_start sub_020C260C
sub_020C260C: ; 0x020C260C
	str r1, [r0, #0xb4]
	bx lr
	arm_func_end sub_020C260C

	arm_func_start sub_020C2614
sub_020C2614: ; 0x020C2614
	add r1, r1, #4
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	sub r2, r2, #0x40
	tst r2, #4
	bne _020C2630
	b _020C2634
_020C2630:
	sub r2, r2, #4
_020C2634:
	str r2, [r0, #0x38]
	ands r1, r1, #1
	bne _020C2644
	b _020C2648
_020C2644:
	mov r1, #0x3f
_020C2648:
	beq _020C2650
	b _020C2654
_020C2650:
	mov r1, #0x1f
_020C2654:
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end sub_020C2614

	arm_func_start sub_020C2698
sub_020C2698: ; 0x020C2698
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _020C26E0 ; =sub_020C99FC
	blx r1
	ldmia sp!, {r0, lr}
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1, #0], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	add r0, pc, #0x8 ; =_020C26E0
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
	; .align 2, 0
_020C26E0: .word sub_020C99FC
	arm_func_end sub_020C2698

	arm_func_start sub_020C26E4
sub_020C26E4: ; 0x020C26E4
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _020C2724 ; =sub_020C9A3C
	blx r1
	ldmia sp!, {r0, lr}
	mrs r1, cpsr
	bic r1, r1, #0x1f
	orr r1, r1, #0xd3
	msr cpsr_c, r1
	ldr r1, [r0, #0], #4
	msr spsr_fsxc, r1
	ldr sp, [r0, #0x40]
	ldr lr, [r0, #0x3c]
	ldmia r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	subs pc, lr, #4
	; .align 2, 0
_020C2724: .word sub_020C9A3C
	arm_func_end sub_020C26E4

	arm_func_start sub_020C2728
sub_020C2728: ; 0x020C2728
	mov r0, #0
	bx lr
	arm_func_end sub_020C2728

	arm_func_start sub_020C2730
sub_020C2730: ; 0x020C2730
	ldr r0, _020C2740 ; =0x82000001
	ldr r1, _020C2744 ; =0x0210115C
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020C2740: .word 0x82000001
_020C2744: .word 0x0210115C
	arm_func_end sub_020C2730

	arm_func_start sub_020C2748
sub_020C2748: ; 0x020C2748
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #0]
	str r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	bx lr
	arm_func_end sub_020C2748

	arm_func_start sub_020C2770
sub_020C2770: ; 0x020C2770
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	mov r6, r0
	cmp r1, r2
	bgt _020C27CC
	and r7, r7, #1
_020C279C:
	cmp r7, #0
	bne _020C27B4
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C27B4:
	mov r0, r5
	bl sub_020C2218
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	cmp r1, r2
	ble _020C279C
_020C27CC:
	ldr r0, [r5, #0x18]
	add r0, r0, r2
	bl sub_020E1F6C
	ldr r2, [r5, #0x10]
	add r0, r5, #8
	str r4, [r2, r1, lsl #2]
	ldr r1, [r5, #0x1c]
	add r1, r1, #1
	str r1, [r5, #0x1c]
	bl sub_020C2268
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2770

	arm_func_start sub_020C2804
sub_020C2804: ; 0x020C2804
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _020C2858
	and r7, r7, #1
_020C282C:
	cmp r7, #0
	bne _020C2844
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C2844:
	add r0, r6, #8
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _020C282C
_020C2858:
	cmp r5, #0
	beq _020C2870
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x18]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r5, #0]
_020C2870:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	mov r0, r6
	sub r1, r1, #1
	str r1, [r6, #0x1c]
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2804

	arm_func_start sub_020C28A8
sub_020C28A8: ; 0x020C28A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x1c]
	mov r4, r0
	cmp r1, r2
	bgt _020C2904
	and r7, r7, #1
_020C28D4:
	cmp r7, #0
	bne _020C28EC
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C28EC:
	mov r0, r6
	bl sub_020C2218
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x1c]
	cmp r1, r0
	ble _020C28D4
_020C2904:
	ldr r0, [r6, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	bl sub_020E1F6C
	str r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	str r5, [r0, r1, lsl #2]
	ldr r1, [r6, #0x1c]
	add r0, r6, #8
	add r1, r1, #1
	str r1, [r6, #0x1c]
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C28A8

	arm_func_start sub_020C2944
sub_020C2944: ; 0x020C2944
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _020C2998
	and r7, r7, #1
_020C296C:
	cmp r7, #0
	bne _020C2984
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C2984:
	add r0, r6, #8
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _020C296C
_020C2998:
	cmp r5, #0
	beq _020C29B0
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x18]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r5, #0]
_020C29B0:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2944

	arm_func_start sub_020C29C0
sub_020C29C0: ; 0x020C29C0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_020C29C0

	arm_func_start sub_020C29D8
sub_020C29D8: ; 0x020C29D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2A58 ; =0x021CCC80
	mov r4, r0
	ldr r7, [r1, #4]
	mov r6, #0
_020C29F4:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _020C2A20
	str r7, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r0, r7
	add r2, r1, #1
	mov r1, r5
	str r2, [r5, #0xc]
	bl sub_020C2B68
	b _020C2A4C
_020C2A20:
	cmp r0, r7
	bne _020C2A38
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020C2A4C
_020C2A38:
	mov r0, r5
	str r5, [r7, #0x84]
	bl sub_020C2218
	str r6, [r7, #0x84]
	b _020C29F4
_020C2A4C:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C2A58: .word 0x021CCC80
	arm_func_end sub_020C29D8

	arm_func_start sub_020C2A5C
sub_020C2A5C: ; 0x020C2A5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2AB4 ; =0x021CCC80
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _020C2AA8
	ldr r1, [r5, #0xc]
	subs r1, r1, #1
	str r1, [r5, #0xc]
	bne _020C2AA8
	mov r1, r5
	bl sub_020C2B8C
	mov r1, #0
	mov r0, r5
	str r1, [r5, #8]
	bl sub_020C2268
_020C2AA8:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C2AB4: .word 0x021CCC80
	arm_func_end sub_020C2A5C

	arm_func_start sub_020C2AB8
sub_020C2AB8: ; 0x020C2AB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x88]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C2AD0:
	add r0, r5, #0x88
	bl sub_020C1C3C
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	bl sub_020C2268
	ldr r0, [r5, #0x88]
	cmp r0, #0
	bne _020C2AD0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C2AB8

	arm_func_start sub_020C2AF4
sub_020C2AF4: ; 0x020C2AF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r2, [r5, #8]
	ldr r1, _020C2B64 ; =0x021CCC80
	mov r4, r0
	cmp r2, #0
	ldr r0, [r1, #4]
	bne _020C2B38
	str r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r1, r5
	add r2, r2, #1
	str r2, [r5, #0xc]
	bl sub_020C2B68
	mov r6, #1
	b _020C2B54
_020C2B38:
	cmp r2, r0
	movne r6, #0
	bne _020C2B54
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
_020C2B54:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C2B64: .word 0x021CCC80
	arm_func_end sub_020C2AF4

	arm_func_start sub_020C2B68
sub_020C2B68: ; 0x020C2B68
	ldr r2, [r0, #0x8c]
	cmp r2, #0
	streq r1, [r0, #0x88]
	strne r1, [r2, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0
	str r2, [r1, #0x10]
	str r1, [r0, #0x8c]
	bx lr
	arm_func_end sub_020C2B68

	arm_func_start sub_020C2B8C
sub_020C2B8C: ; 0x020C2B8C
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	streq r1, [r0, #0x8c]
	strne r1, [r2, #0x14]
	cmp r1, #0
	streq r2, [r0, #0x88]
	strne r2, [r1, #0x10]
	bx lr
	arm_func_end sub_020C2B8C

	arm_func_start sub_020C2BB0
sub_020C2BB0: ; 0x020C2BB0
	mov r0, #0
	mcr p15, 0, r0, c7, c6, 0
	bx lr
	arm_func_end sub_020C2BB0

	arm_func_start sub_020C2BBC
sub_020C2BBC: ; 0x020C2BBC
	mov r1, #0
_020C2BC0:
	mov r0, #0
_020C2BC4:
	orr r2, r1, r0
	mcr p15, 0, r2, c7, c10, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BC4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BC0
	bx lr
	arm_func_end sub_020C2BBC

	arm_func_start sub_020C2BE8
sub_020C2BE8: ; 0x020C2BE8
	mov ip, #0
	mov r1, #0
_020C2BF0:
	mov r0, #0
_020C2BF4:
	orr r2, r1, r0
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BF4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BF0
	bx lr
	arm_func_end sub_020C2BE8

	arm_func_start sub_020C2C1C
sub_020C2C1C: ; 0x020C2C1C
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C24:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C24
	bx lr
	arm_func_end sub_020C2C1C

	arm_func_start sub_020C2C38
sub_020C2C38: ; 0x020C2C38
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C40:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C40
	bx lr
	arm_func_end sub_020C2C38

	arm_func_start sub_020C2C54
sub_020C2C54: ; 0x020C2C54
	mov ip, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C60:
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C60
	bx lr
	arm_func_end sub_020C2C54

	arm_func_start sub_020C2C78
sub_020C2C78: ; 0x020C2C78
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end sub_020C2C78

	arm_func_start sub_020C2C84
sub_020C2C84: ; 0x020C2C84
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
	arm_func_end sub_020C2C84

	arm_func_start sub_020C2C90
sub_020C2C90: ; 0x020C2C90
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C98:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C98
	bx lr
	arm_func_end sub_020C2C90

	arm_func_start sub_020C2CAC
sub_020C2CAC: ; 0x020C2CAC
	mov ip, #0x4000000
	ldr r1, [ip, #0x208]
	str ip, [ip, #0x208]
_020C2CB8:
	ldrh r0, [ip, #6]
	cmp r0, #0
	bne _020C2CB8
	str r1, [ip, #0x208]
	bx lr
	arm_func_end sub_020C2CAC

	arm_func_start sub_020C2CCC
sub_020C2CCC: ; 0x020C2CCC
	stmfd sp!, {r3, lr}
	bl sub_020C2D14
	bl sub_020C6350
	bl sub_020C16DC
	bl sub_020C2E18
	bl sub_020C1434
	bl sub_020C16A8
	bl sub_020C3560
	bl sub_020C50BC
	bl sub_020C3D3C
	bl sub_020C405C
	bl sub_020C1DDC
	bl sub_020C3E30
	bl sub_020D0FB4
	bl sub_020CD6F8
	bl sub_020CACD0
	bl sub_020C2CAC
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C2CCC

	arm_func_start sub_020C2D14
sub_020C2D14: ; 0x020C2D14
	stmfd sp!, {r3, lr}
	ldr r1, _020C2E14 ; =0x021CCED8
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	mov r0, #0
	str r2, [r1, #0]
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #0
	bl sub_020C3038
	mov r0, #0
	bl sub_020C2F90
	mov r1, r0
	mov r0, #0
	bl sub_020C304C
	mov r0, #2
	mov r1, #0
	bl sub_020C304C
	mov r0, #2
	mov r1, #0
	bl sub_020C3038
	mov r0, #3
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #3
	bl sub_020C3038
	mov r0, #3
	bl sub_020C2F90
	mov r1, r0
	mov r0, #3
	bl sub_020C304C
	mov r0, #4
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #4
	bl sub_020C3038
	mov r0, #4
	bl sub_020C2F90
	mov r1, r0
	mov r0, #4
	bl sub_020C304C
	mov r0, #5
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #5
	bl sub_020C3038
	mov r0, #5
	bl sub_020C2F90
	mov r1, r0
	mov r0, #5
	bl sub_020C304C
	mov r0, #6
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #6
	bl sub_020C3038
	mov r0, #6
	bl sub_020C2F90
	mov r1, r0
	mov r0, #6
	bl sub_020C304C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2E14: .word 0x021CCED8
	arm_func_end sub_020C2D14

	arm_func_start sub_020C2E18
sub_020C2E18: ; 0x020C2E18
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl sub_020C2EAC
	mov r1, r0
	mov r0, #2
	bl sub_020C3038
	mov r0, #2
	bl sub_020C2F90
	mov r1, r0
	mov r0, #2
	bl sub_020C304C
	ldr r0, _020C2E78 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2E64
	bl sub_020C2730
	and r0, r0, #3
	cmp r0, #1
	ldmneia sp!, {r3, pc}
_020C2E64:
	ldr r0, _020C2E7C ; =0x0200002B
	bl sub_020C3550
	ldr r0, _020C2E80 ; =0x023E0021
	bl sub_020C3558
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2E78: .word 0x021CCED8
_020C2E7C: .word 0x0200002B
_020C2E80: .word 0x023E0021
	arm_func_end sub_020C2E18

	arm_func_start sub_020C2E84
sub_020C2E84: ; 0x020C2E84
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xdc4]
	bx lr
	arm_func_end sub_020C2E84

	arm_func_start sub_020C2E98
sub_020C2E98: ; 0x020C2E98
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xda0]
	bx lr
	arm_func_end sub_020C2E98

	arm_func_start sub_020C2EAC
sub_020C2EAC: ; 0x020C2EAC
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020C2F68
_020C2EBC: ; jump table
	b _020C2ED8 ; case 0
	b _020C2F68 ; case 1
	b _020C2EE0 ; case 2
	b _020C2F10 ; case 3
	b _020C2F18 ; case 4
	b _020C2F58 ; case 5
	b _020C2F60 ; case 6
_020C2ED8:
	ldr r0, _020C2F70 ; =0x023E0000
	ldmia sp!, {r3, pc}
_020C2EE0:
	ldr r0, _020C2F74 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2F00
	bl sub_020C2730
	and r0, r0, #3
	cmp r0, #1
	bne _020C2F08
_020C2F00:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C2F08:
	mov r0, #0x2700000
	ldmia sp!, {r3, pc}
_020C2F10:
	mov r0, #0x2000000
	ldmia sp!, {r3, pc}
_020C2F18:
	ldr r0, _020C2F78 ; =0x027E0000
	ldr r1, _020C2F7C ; =0x00000000
	ldr r2, _020C2F80 ; =0x00000800
	add r3, r0, #0x3f80
	cmp r1, #0
	sub r2, r3, r2
	bne _020C2F44
	ldr r1, _020C2F84 ; =0x027E0080
	cmp r0, r1
	movlo r0, r1
	ldmia sp!, {r3, pc}
_020C2F44:
	cmp r1, #0
	ldrlt r0, _020C2F84 ; =0x027E0080
	sublt r0, r0, r1
	subge r0, r2, r1
	ldmia sp!, {r3, pc}
_020C2F58:
	ldr r0, _020C2F88 ; =0x027FF680
	ldmia sp!, {r3, pc}
_020C2F60:
	ldr r0, _020C2F8C ; =0x037F8000
	ldmia sp!, {r3, pc}
_020C2F68:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2F70: .word 0x023E0000
_020C2F74: .word 0x021CCED8
_020C2F78: .word 0x027E0000
_020C2F7C: .word 0x00000000
_020C2F80: .word 0x00000800
_020C2F84: .word 0x027E0080
_020C2F88: .word 0x027FF680
_020C2F8C: .word 0x037F8000
	arm_func_end sub_020C2EAC

	arm_func_start sub_020C2F90
sub_020C2F90: ; 0x020C2F90
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020C3014
_020C2FA0: ; jump table
	b _020C2FBC ; case 0
	b _020C3014 ; case 1
	b _020C2FC4 ; case 2
	b _020C2FF4 ; case 3
	b _020C2FFC ; case 4
	b _020C3004 ; case 5
	b _020C300C ; case 6
_020C2FBC:
	ldr r0, _020C301C ; =0x02270BC0
	ldmia sp!, {r3, pc}
_020C2FC4:
	ldr r0, _020C3020 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2FE4
	bl sub_020C2730
	and r0, r0, #3
	cmp r0, #1
	bne _020C2FEC
_020C2FE4:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C2FEC:
	ldr r0, _020C3024 ; =0x023E0000
	ldmia sp!, {r3, pc}
_020C2FF4:
	ldr r0, _020C3028 ; =0x01FF8680
	ldmia sp!, {r3, pc}
_020C2FFC:
	ldr r0, _020C302C ; =0x027E0080
	ldmia sp!, {r3, pc}
_020C3004:
	ldr r0, _020C3030 ; =0x027FF000
	ldmia sp!, {r3, pc}
_020C300C:
	ldr r0, _020C3034 ; =0x037F8000
	ldmia sp!, {r3, pc}
_020C3014:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C301C: .word 0x02270BC0
_020C3020: .word 0x021CCED8
_020C3024: .word 0x023E0000
_020C3028: .word 0x01FF8680
_020C302C: .word 0x027E0080
_020C3030: .word 0x027FF000
_020C3034: .word 0x037F8000
	arm_func_end sub_020C2F90

	arm_func_start sub_020C3038
sub_020C3038: ; 0x020C3038
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xdc4]
	bx lr
	arm_func_end sub_020C3038

	arm_func_start sub_020C304C
sub_020C304C: ; 0x020C304C
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xda0]
	bx lr
	arm_func_end sub_020C304C

	arm_func_start sub_020C3060
sub_020C3060: ; 0x020C3060
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C2E98
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, r5
	sub r1, r5, #1
	mvn r2, r1
	sub r0, r0, #1
	and r4, r2, r0
	add r0, r4, r6
	add r0, r0, r5
	sub r1, r0, #1
	mov r0, r7
	and r5, r2, r1
	bl sub_020C2E84
	cmp r5, r0
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl sub_020C304C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C3060

	arm_func_start sub_020C30CC
sub_020C30CC: ; 0x020C30CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C2E84
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	sub r1, r5, #1
	mvn r2, r1
	and r0, r0, r2
	sub r1, r0, r6
	mov r0, r4
	and r5, r1, r2
	bl sub_020C2E98
	cmp r5, r0
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl sub_020C3038
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C30CC

	arm_func_start sub_020C3128
sub_020C3128: ; 0x020C3128
	str r0, [r1, #4]
	mov r2, #0
	str r2, [r1, #0]
	cmp r0, #0
	strne r1, [r0]
	mov r0, r1
	bx lr
	arm_func_end sub_020C3128

	arm_func_start sub_020C3144
sub_020C3144: ; 0x020C3144
	ldr r3, [r1, #4]
	cmp r3, #0
	ldrne r2, [r1]
	strne r2, [r3]
	ldr r2, [r1, #0]
	cmp r2, #0
	ldreq r0, [r1, #4]
	ldrne r1, [r1, #4]
	strne r1, [r2, #4]
	bx lr
	arm_func_end sub_020C3144

	arm_func_start sub_020C316C
sub_020C316C: ; 0x020C316C
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r0, #0
	mov ip, #0
	beq _020C3198
_020C3180:
	cmp r1, lr
	bls _020C3198
	mov ip, lr
	ldr lr, [lr, #4]
	cmp lr, #0
	bne _020C3180
_020C3198:
	stmia r1, {ip, lr}
	cmp lr, #0
	beq _020C31D4
	str r1, [lr]
	ldr r3, [r1, #8]
	add r2, r1, r3
	cmp r2, lr
	bne _020C31D4
	ldr r2, [lr, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr lr, [lr, #4]
	str lr, [r1, #4]
	cmp lr, #0
	strne r1, [lr]
_020C31D4:
	cmp ip, #0
	beq _020C320C
	str r1, [ip, #4]
	ldr r2, [ip, #8]
	add r3, ip, r2
	cmp r3, r1
	ldmneia sp!, {r3, pc}
	ldr r1, [r1, #8]
	cmp lr, #0
	add r1, r2, r1
	str r1, [ip, #8]
	str lr, [ip, #4]
	strne ip, [lr]
	ldmia sp!, {r3, pc}
_020C320C:
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C316C

	arm_func_start sub_020C3214
sub_020C3214: ; 0x020C3214
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, _020C3318 ; =0x021CCEE0
	mov r6, r0
	ldr r1, [r1, r4, lsl #2]
	cmp r1, #0
	bne _020C3248
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C3248:
	cmp r5, #0
	ldrlt r5, [r1]
	ldr r1, [r1, #0x10]
	mov r0, #0xc
	mla r4, r5, r0, r1
	ldr r0, [r4, #4]
	add r1, r7, #0x3f
	mov r5, r0
	cmp r0, #0
	bic r7, r1, #0x1f
	beq _020C328C
_020C3274:
	ldr r1, [r5, #8]
	cmp r7, r1
	ble _020C328C
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _020C3274
_020C328C:
	cmp r5, #0
	bne _020C32A4
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C32A4:
	ldr r1, [r5, #8]
	sub r1, r1, r7
	cmp r1, #0x40
	bhs _020C32C4
	mov r1, r5
	bl sub_020C3144
	str r0, [r4, #4]
	b _020C32F8
_020C32C4:
	str r7, [r5, #8]
	add r2, r5, r7
	str r1, [r2, #8]
	ldr r0, [r5, #0]
	str r0, [r5, r7]
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	cmp r0, #0
	strne r2, [r0]
	ldr r0, [r2, #0]
	cmp r0, #0
	strne r2, [r0, #4]
	streq r2, [r4, #4]
_020C32F8:
	ldr r0, [r4, #8]
	mov r1, r5
	bl sub_020C3128
	str r0, [r4, #8]
	mov r0, r6
	bl sub_020C3DAC
	add r0, r5, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3318: .word 0x021CCEE0
	arm_func_end sub_020C3214

	arm_func_start sub_020C331C
sub_020C331C: ; 0x020C331C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C3D98
	ldr r1, _020C3380 ; =0x021CCEE0
	mov r4, r0
	ldr r0, [r1, r7, lsl #2]
	cmp r6, #0
	ldrlt r6, [r0]
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mla r7, r6, r0, r1
	sub r5, r5, #0x20
	ldr r0, [r7, #8]
	mov r1, r5
	bl sub_020C3144
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r1, r5
	bl sub_020C316C
	str r0, [r7, #4]
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3380: .word 0x021CCEE0
	arm_func_end sub_020C331C

	arm_func_start sub_020C3384
sub_020C3384: ; 0x020C3384
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl sub_020C3D98
	ldr r1, _020C33B0 ; =0x021CCEE0
	ldr r1, [r1, r4, lsl #2]
	ldr r4, [r1, #0]
	str r5, [r1, #0]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C33B0: .word 0x021CCEE0
	arm_func_end sub_020C3384

	arm_func_start sub_020C33B4
sub_020C33B4: ; 0x020C33B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl sub_020C3D98
	ldr r2, _020C3458 ; =0x021CCEE0
	mov r1, #0xc
	str r5, [r2, r7, lsl #2]
	add r2, r5, #0x14
	str r2, [r5, #0x10]
	mul r1, r6, r1
	str r6, [r5, #4]
	cmp r6, #0
	mov lr, #0
	ble _020C3428
	mov r6, lr
	mvn ip, #0
	mov r3, lr
_020C3400:
	ldr r2, [r5, #0x10]
	add lr, lr, #1
	str ip, [r2, r6]
	add r2, r2, r6
	str r3, [r2, #8]
	str r3, [r2, #4]
	ldr r2, [r5, #4]
	add r6, r6, #0xc
	cmp lr, r2
	blt _020C3400
_020C3428:
	mvn r2, #0
	str r2, [r5, #0]
	ldr r3, [r5, #0x10]
	bic r2, r4, #0x1f
	add r1, r3, r1
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	bl sub_020C3DAC
	ldr r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3458: .word 0x021CCEE0
	arm_func_end sub_020C33B4

	arm_func_start sub_020C345C
sub_020C345C: ; 0x020C345C
	ldr r1, _020C346C ; =0x021CCEE0
	mov r2, #0
	str r2, [r1, r0, lsl #2]
	bx lr
	; .align 2, 0
_020C346C: .word 0x021CCEE0
	arm_func_end sub_020C345C

	arm_func_start sub_020C3470
sub_020C3470: ; 0x020C3470
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C3D98
	ldr r2, _020C3504 ; =0x021CCEE0
	add r1, r6, #0x1f
	ldr r2, [r2, r4, lsl #2]
	bic r6, r1, #0x1f
	ldr ip, [r2, #4]
	bic r5, r5, #0x1f
	cmp ip, #0
	mov r4, #0
	ble _020C34F8
	ldr r3, [r2, #0x10]
_020C34AC:
	ldr r1, [r3, #0]
	cmp r1, #0
	bge _020C34E8
	sub r1, r5, r6
	str r1, [r3, #0]
	mov r2, #0
	str r2, [r6, #0]
	str r2, [r6, #4]
	ldr r1, [r3, #0]
	str r1, [r6, #8]
	str r6, [r3, #4]
	str r2, [r3, #8]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020C34E8:
	add r4, r4, #1
	cmp r4, ip
	add r3, r3, #0xc
	blt _020C34AC
_020C34F8:
	bl sub_020C3DAC
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C3504: .word 0x021CCEE0
	arm_func_end sub_020C3470

	arm_func_start sub_020C3508
sub_020C3508: ; 0x020C3508
	mrc p15, 0, r0, c9, c1, 0
	ldr r1, _020C3518 ; =0xFFFFF000
	and r0, r0, r1
	bx lr
	; .align 2, 0
_020C3518: .word 0xFFFFF000
	arm_func_end sub_020C3508

	arm_func_start sub_020C351C
sub_020C351C: ; 0x020C351C
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end sub_020C351C

	arm_func_start sub_020C352C
sub_020C352C: ; 0x020C352C
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end sub_020C352C

	arm_func_start sub_020C353C
sub_020C353C: ; 0x020C353C
	mrc p15, 0, r2, c5, c0, 2
	bic r2, r2, r0
	orr r2, r2, r1
	mcr p15, 0, r2, c5, c0, 2
	bx lr
	arm_func_end sub_020C353C

	arm_func_start sub_020C3550
sub_020C3550: ; 0x020C3550
	mcr p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end sub_020C3550

	arm_func_start sub_020C3558
sub_020C3558: ; 0x020C3558
	mcr p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end sub_020C3558

	arm_func_start sub_020C3560
sub_020C3560: ; 0x020C3560
	ldr r0, _020C35C0 ; =0x027FFD9C
	ldr r1, [r0, #0]
	cmp r1, #0x2600000
	blo _020C3580
	cmp r1, #0x2800000
	ldrlo r0, _020C35C4 ; =0x021CCF04
	strlo r1, [r0]
	blo _020C358C
_020C3580:
	ldr r0, _020C35C4 ; =0x021CCF04
	mov r1, #0
	str r1, [r0, #0]
_020C358C:
	ldr r0, _020C35C4 ; =0x021CCF04
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020C35B0
	ldr r2, _020C35C8 ; =sub_020C35D0
	ldr r1, _020C35C0 ; =0x027FFD9C
	ldr r0, _020C35CC ; =0x027E3000
	str r2, [r1, #0]
	str r2, [r0, #0xfdc]
_020C35B0:
	ldr r0, _020C35C4 ; =0x021CCF04
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_020C35C0: .word 0x027FFD9C
_020C35C4: .word 0x021CCF04
_020C35C8: .word sub_020C35D0
_020C35CC: .word 0x027E3000
	arm_func_end sub_020C3560

	arm_func_start sub_020C35D0
sub_020C35D0: ; 0x020C35D0
	ldr ip, _020C364C ; =0x021CCF04
	ldr ip, [ip]
	cmp ip, #0
	bne _020C35E4
	b _020C35E8
_020C35E4:
	mov lr, pc
_020C35E8:
	bne _020C35F0
	b _020C35F4
_020C35F0:
	bx ip
_020C35F4:
	ldr ip, _020C3650 ; =sub_02000000
	stmdb ip!, {r0, r1, r2, r3, sp, lr}
	and r0, sp, #1
	mov sp, ip
	mrs r1, cpsr
	and r1, r1, #0x1f
	teq r1, #0x17
	bne _020C361C
	bl sub_020C3654
	b _020C3628
_020C361C:
	teq r1, #0x1b
	bne _020C3628
	bl sub_020C3654
_020C3628:
	ldr ip, _020C364C ; =0x021CCF04
	ldr ip, [ip]
	cmp ip, #0
_020C3634:
	beq _020C3634
_020C3638:
	mov r0, r0
	b _020C3638
_020C3640:
	.byte 0x0F, 0x50, 0xBD, 0xE8, 0x0C, 0xD0, 0xA0, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1
_020C364C: .word 0x021CCF04
_020C3650: .word 0x02000000
	arm_func_end sub_020C35D0

	arm_func_start sub_020C3654
sub_020C3654: ; 0x020C3654
	stmfd sp!, {r0, lr}
	bl sub_020C3668
	bl sub_020C36F8
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end sub_020C3654

	arm_func_start sub_020C3668
sub_020C3668: ; 0x020C3668
	ldr r1, _020C36F4 ; =0x021CCF30
	mrs r2, cpsr
	str r2, [r1, #0x74]
	str r0, [r1, #0x6c]
	ldr r0, [ip]
	str r0, [r1, #4]
	ldr r0, [ip, #4]
	str r0, [r1, #8]
	ldr r0, [ip, #8]
	str r0, [r1, #0xc]
	ldr r0, [ip, #0xc]
	str r0, [r1, #0x10]
	ldr r2, [ip, #0x10]
	bic r2, r2, #1
	add r0, r1, #0x14
	stmia r0, {r4, r5, r6, r7, r8, sb, sl, fp}
	str ip, [r1, #0x70]
	ldr r0, [r2, #0]
	str r0, [r1, #0x64]
	ldr r3, [r2, #4]
	str r3, [r1, #0]
	ldr r0, [r2, #8]
	str r0, [r1, #0x34]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x40]
	mrs r0, cpsr
	orr r3, r3, #0x80
	bic r3, r3, #0x20
	msr cpsr_fsxc, r3
	str sp, [r1, #0x38]
	str lr, [r1, #0x3c]
	mrs r2, spsr
	str r2, [r1, #0x7c]
	msr cpsr_fsxc, r0
	bx lr
	; .align 2, 0
_020C36F4: .word 0x021CCF30
	arm_func_end sub_020C3668

	arm_func_start sub_020C36F8
sub_020C36F8: ; 0x020C36F8
	stmfd sp!, {r3, lr}
	ldr r0, _020C375C ; =0x021CCF04
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mrs r2, cpsr
	mov r0, sp
	ldr r1, _020C3760 ; =0x0000009F
	msr cpsr_fsxc, r1
	mov r1, sp
	mov sp, r0
	stmfd sp!, {r1, r2}
	bl sub_020C351C
	ldr r0, _020C3764 ; =0x021CCF30
	ldr r1, _020C3768 ; =0x021CCF08
	ldr r1, [r1, #0]
	ldr ip, _020C376C ; =0x021CCF0C
	ldr ip, [ip]
	ldr lr, _020C3770 ; =0x020C3748
	bx ip
_020C3748:
	.byte 0x77, 0xFF, 0xFF, 0xEB, 0x06, 0x00, 0xBD, 0xE8
	.byte 0x01, 0xD0, 0xA0, 0xE1, 0x02, 0xF0, 0x2F, 0xE1, 0x08, 0x80, 0xBD, 0xE8
_020C375C: .word 0x021CCF04
_020C3760: .word 0x0000009F
_020C3764: .word 0x021CCF30
_020C3768: .word 0x021CCF08
_020C376C: .word 0x021CCF0C
_020C3770: .word 0x020C3748
	arm_func_end sub_020C36F8

	arm_func_start sub_020C3774
sub_020C3774: ; 0x020C3774
	ldr r1, _020C378C ; =0x021CCFB0
	mov r2, #1
	ldrh r3, [r1]
	orr r0, r3, r2, lsl r0
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C378C: .word 0x021CCFB0
	arm_func_end sub_020C3774

	arm_func_start sub_020C3790
sub_020C3790: ; 0x020C3790
	stmfd sp!, {r3, lr}
	ldr r1, _020C37FC ; =0x021CCFB4
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	mov r0, #0
	strh r2, [r1]
	bl sub_020C3774
	ldr r0, _020C37FC ; =0x021CCFB4
	mov r2, #0
	str r2, [r0, #8]
	ldr r3, _020C3800 ; =0x04000102
	str r2, [r0, #0xc]
	strh r2, [r3]
	ldr r1, _020C3804 ; =sub_020C3818
	strh r2, [r3, #-2]
	mov r2, #0xc1
	mov r0, #8
	strh r2, [r3]
	bl sub_020C144C
	mov r0, #8
	bl sub_020C161C
	ldr r0, _020C37FC ; =0x021CCFB4
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C37FC: .word 0x021CCFB4
_020C3800: .word 0x04000102
_020C3804: .word sub_020C3818
	arm_func_end sub_020C3790

	arm_func_start sub_020C3808
sub_020C3808: ; 0x020C3808
	ldr r0, _020C3814 ; =0x021CCFB4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C3814: .word 0x021CCFB4
	arm_func_end sub_020C3808

	arm_func_start sub_020C3818
sub_020C3818: ; 0x020C3818
	ldr r0, _020C3870 ; =0x021CCFB4
	mov r3, #0
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	adds r2, r2, #1
	str r2, [r0, #8]
	adc r1, r1, #0
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C385C
	ldr r2, _020C3874 ; =0x04000102
	mov r1, #0xc1
	strh r3, [r2]
	strh r3, [r2, #-2]
	strh r1, [r2]
	str r3, [r0, #4]
_020C385C:
	ldr ip, _020C3878 ; =sub_020C15A8
	mov r0, #0
	ldr r1, _020C387C ; =sub_020C3818
	mov r2, r0
	bx ip
	; .align 2, 0
_020C3870: .word 0x021CCFB4
_020C3874: .word 0x04000102
_020C3878: .word sub_020C15A8
_020C387C: .word sub_020C3818
	arm_func_end sub_020C3818

	arm_func_start sub_020C3880
sub_020C3880: ; 0x020C3880
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	bl sub_020C3D98
	ldr lr, _020C3914 ; =0x04000100
	ldr r2, _020C3918 ; =0x0000FFFF
	ldrh ip, [lr]
	ldr r3, _020C391C ; =0x021CCFB4
	sub r1, r2, #0x10000
	strh ip, [sp]
	ldr ip, [r3, #8]
	ldr r3, [r3, #0xc]
	and ip, ip, r1
	and r1, r3, r2
	str ip, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [lr, #0x114]
	tst r1, #8
	beq _020C38EC
	ldrh r1, [sp]
	tst r1, #0x8000
	bne _020C38EC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r2, #1
	adc r1, r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
_020C38EC:
	bl sub_020C3DAC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldrh r0, [sp]
	mov r1, r1, lsl #0x10
	orr r1, r1, r2, lsr #16
	orr r1, r1, r0, asr #31
	orr r0, r0, r2, lsl #16
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020C3914: .word 0x04000100
_020C3918: .word 0x0000FFFF
_020C391C: .word 0x021CCFB4
	arm_func_end sub_020C3880

	arm_func_start sub_020C3920
sub_020C3920: ; 0x020C3920
	ldr r0, _020C392C ; =0x04000100
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C392C: .word 0x04000100
	arm_func_end sub_020C3920

	arm_func_start sub_020C3930
sub_020C3930: ; 0x020C3930
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_020C3880
	ldr r3, _020C39AC ; =0x04000106
	mov r2, #0
	strh r2, [r3]
	ldr ip, [r4, #0xc]
	ldr r3, [r4, #0x10]
	subs r5, ip, r0
	sbc r4, r3, r1
	ldr r1, _020C39B0 ; =sub_020C3C3C
	mov r0, #1
	bl sub_020C15A8
	subs r0, r5, #0
	mov r3, #0
	sbc r0, r4, #0
	ldrlt r3, _020C39B4 ; =0x0000FFFE
	blt _020C3990
	subs r0, r5, #0x10000
	sbc r0, r4, r3
	bge _020C3990
	mvn r0, r5
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
_020C3990:
	ldr r2, _020C39B8 ; =0x04000104
	mov r1, #0xc1
	strh r3, [r2]
	mov r0, #0x10
	strh r1, [r2, #2]
	bl sub_020C161C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C39AC: .word 0x04000106
_020C39B0: .word sub_020C3C3C
_020C39B4: .word 0x0000FFFE
_020C39B8: .word 0x04000104
	arm_func_end sub_020C3930

	arm_func_start sub_020C39BC
sub_020C39BC: ; 0x020C39BC
	stmfd sp!, {r3, lr}
	ldr r1, _020C39F8 ; =0x021CCFC4
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	strh r0, [r1]
	bl sub_020C3774
	ldr r1, _020C39F8 ; =0x021CCFC4
	mov r2, #0
	str r2, [r1, #4]
	mov r0, #0x10
	str r2, [r1, #8]
	bl sub_020C164C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C39F8: .word 0x021CCFC4
	arm_func_end sub_020C39BC

	arm_func_start sub_020C39FC
sub_020C39FC: ; 0x020C39FC
	ldr r0, _020C3A08 ; =0x021CCFC4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C3A08: .word 0x021CCFC4
	arm_func_end sub_020C39FC

	arm_func_start sub_020C3A0C
sub_020C3A0C: ; 0x020C3A0C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020C3A0C

	arm_func_start sub_020C3A1C
sub_020C3A1C: ; 0x020C3A1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0x1c]
	cmp r0, #0
	mov r7, r1
	mov r6, r2
	cmpeq r3, #0
	beq _020C3A90
	bl sub_020C3880
	ldr r6, [r8, #0x28]
	ldr r7, [r8, #0x24]
	cmp r6, r1
	cmpeq r7, r0
	bhs _020C3A90
	ldr r5, [r8, #0x1c]
	ldr r4, [r8, #0x20]
	subs r0, r0, r7
	mov r2, r5
	mov r3, r4
	sbc r1, r1, r6
	bl sub_020E1ED4
	adds r2, r0, #1
	adc r0, r1, #0
	umull r3, r1, r5, r2
	mla r1, r5, r0, r1
	mla r1, r4, r2, r1
	adds r7, r7, r3
	adc r6, r6, r1
_020C3A90:
	str r7, [r8, #0xc]
	ldr r0, _020C3B44 ; =0x021CCFC4
	str r6, [r8, #0x10]
	ldr r5, [r0, #4]
	cmp r5, #0
	beq _020C3B0C
	mov r2, #0
	mov r1, r2
_020C3AB0:
	ldr r3, [r5, #0xc]
	ldr r0, [r5, #0x10]
	subs r4, r7, r3
	sbc r3, r6, r0
	subs r0, r4, r1
	sbc r0, r3, r2
	bge _020C3B00
	ldr r0, [r5, #0x14]
	str r0, [r8, #0x14]
	str r8, [r5, #0x14]
	str r5, [r8, #0x18]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020C3B44 ; =0x021CCFC4
	mov r0, r8
	str r8, [r1, #4]
	bl sub_020C3930
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C3B00:
	ldr r5, [r5, #0x18]
	cmp r5, #0
	bne _020C3AB0
_020C3B0C:
	ldr r1, _020C3B44 ; =0x021CCFC4
	mov r0, #0
	str r0, [r8, #0x18]
	ldr r0, [r1, #8]
	str r8, [r1, #8]
	str r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	str r8, [r1, #8]
	mov r0, r8
	str r8, [r1, #4]
	bl sub_020C3930
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C3B44: .word 0x021CCFC4
	arm_func_end sub_020C3A1C

	arm_func_start sub_020C3B48
sub_020C3B48: ; 0x020C3B48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, r3
	beq _020C3B6C
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _020C3B70
_020C3B6C:
	bl sub_020C42A8
_020C3B70:
	bl sub_020C3D98
	mov r1, #0
	str r1, [r6, #0x1c]
	str r1, [r6, #0x20]
	str r7, [r6, #0]
	ldr r1, [sp, #0x18]
	mov r7, r0
	str r1, [r6, #4]
	bl sub_020C3880
	adds r3, r5, r0
	adc r2, r4, r1
	mov r0, r6
	mov r1, r3
	bl sub_020C3A1C
	mov r0, r7
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C3B48

	arm_func_start sub_020C3BB4
sub_020C3BB4: ; 0x020C3BB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, [r5, #0]
	mov r4, r0
	cmp r1, #0
	bne _020C3BD8
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
_020C3BD8:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ldrne r1, [r5, #0x14]
	strne r1, [r0, #0x14]
	bne _020C3BF8
	ldr r2, [r5, #0x14]
	ldr r1, _020C3C38 ; =0x021CCFC4
	str r2, [r1, #8]
_020C3BF8:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	bne _020C3C1C
	ldr r1, _020C3C38 ; =0x021CCFC4
	cmp r0, #0
	str r0, [r1, #4]
	beq _020C3C1C
	bl sub_020C3930
_020C3C1C:
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #0x1c]
	mov r0, r4
	str r1, [r5, #0x20]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3C38: .word 0x021CCFC4
	arm_func_end sub_020C3BB4

	arm_func_start sub_020C3C3C
sub_020C3C3C: ; 0x020C3C3C
	stmfd sp!, {r0, lr}
	bl sub_020C3C4C
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end sub_020C3C3C

	arm_func_start sub_020C3C4C
sub_020C3C4C: ; 0x020C3C4C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3D30 ; =0x04000106
	mov r2, #0
	mov r0, #0x10
	strh r2, [r1]
	bl sub_020C164C
	ldr r0, _020C3D34 ; =0x027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #0x10
	str r1, [r0, #0xff8]
	bl sub_020C3880
	ldr r2, _020C3D38 ; =0x021CCFC4
	ldr r4, [r2, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #0x10]
	ldr ip, [r4, #0xc]
	cmp r1, r3
	cmpeq r0, ip
	bhs _020C3CAC
	mov r0, r4
	bl sub_020C3930
	ldmia sp!, {r3, r4, r5, pc}
_020C3CAC:
	ldr r1, [r4, #0x18]
	mov r0, #0
	str r1, [r2, #4]
	cmp r1, #0
	streq r0, [r2, #8]
	strne r0, [r1, #0x14]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	ldr r5, [r4, #0]
	mov r0, #0
	cmpeq r1, #0
	streq r0, [r4]
	cmp r5, #0
	beq _020C3CF0
	ldr r0, [r4, #4]
	blx r5
_020C3CF0:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	cmpeq r1, #0
	mov r1, #0
	beq _020C3D18
	mov r0, r4
	mov r2, r1
	str r5, [r4, #0]
	bl sub_020C3A1C
_020C3D18:
	ldr r0, _020C3D38 ; =0x021CCFC4
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020C3930
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3D30: .word 0x04000106
_020C3D34: .word 0x027E0000
_020C3D38: .word 0x021CCFC4
	arm_func_end sub_020C3C4C

	arm_func_start sub_020C3D3C
sub_020C3D3C: ; 0x020C3D3C
	stmfd sp!, {r3, lr}
	ldr r1, _020C3D80 ; =0x021CCFD0
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	strh r0, [r1]
	mov r2, #0
	str r2, [r1, #0xc]
	mov r0, #4
	str r2, [r1, #0x10]
	bl sub_020C164C
	ldr r0, _020C3D80 ; =0x021CCFD0
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C3D80: .word 0x021CCFD0
	arm_func_end sub_020C3D3C

	arm_func_start sub_020C3D84
sub_020C3D84: ; 0x020C3D84
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3D84

	arm_func_start sub_020C3D98
sub_020C3D98: ; 0x020C3D98
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3D98

	arm_func_start sub_020C3DAC
sub_020C3DAC: ; 0x020C3DAC
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end sub_020C3DAC

	arm_func_start sub_020C3DC4
sub_020C3DC4: ; 0x020C3DC4
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end sub_020C3DC4

	arm_func_start sub_020C3DD8
sub_020C3DD8: ; 0x020C3DD8
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end sub_020C3DD8

	arm_func_start sub_020C3DF0
sub_020C3DF0: ; 0x020C3DF0
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3DF0

	arm_func_start sub_020C3DFC
sub_020C3DFC: ; 0x020C3DFC
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end sub_020C3DFC

	arm_func_start sub_020C3E08
sub_020C3E08:
	sub r0, r0, #4
	bhs sub_020C3E08
	bx lr
	arm_func_end sub_020C3E08

	arm_func_start sub_020C3E14
sub_020C3E14: ; 0x020C3E14
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl sub_02000522
	mov r0, #1
	mov r1, r0
	bl sub_020C12B4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C3E14

	arm_func_start sub_020C3E30
sub_020C3E30: ; 0x020C3E30
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C3E7C ; =0x021CCFE4
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0, #2]
	bl sub_020C6350
	mov r5, #0xc
	mov r4, #1
_020C3E58:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020C3E58
	ldr r1, _020C3E80 ; =sub_020C3E84
	mov r0, #0xc
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3E7C: .word 0x021CCFE4
_020C3E80: .word sub_020C3E84
	arm_func_end sub_020C3E30

	arm_func_start sub_020C3E84
sub_020C3E84: ; 0x020C3E84
	stmfd sp!, {r3, lr}
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r0, #0x10
	bne _020C3EAC
	ldr r0, _020C3EB4 ; =0x021CCFE4
	mov r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
_020C3EAC:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C3EB4: .word 0x021CCFE4
	arm_func_end sub_020C3E84

	arm_func_start sub_020C3EB8
sub_020C3EB8: ; 0x020C3EB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0, lsl #8
	mov r5, #0xc
	mov r4, #0
_020C3EC8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020C3EC8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C3EB8

	arm_func_start sub_020C3EE4
sub_020C3EE4: ; 0x020C3EE4
	stmfd sp!, {r4, lr}
	ldr r1, _020C3F74 ; =0x027FFC40
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C3F0C
	bl sub_020C42A8
_020C3F0C:
	bl sub_020C1A00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_020CC854
	ldr r0, _020C3F78 ; =0x00000000
	bl sub_020C45F4
	ldr r0, _020C3F7C ; =0x00000001
	bl sub_020C45F4
	ldr r0, _020C3F80 ; =0x00000002
	bl sub_020C45F4
	ldr r0, _020C3F84 ; =0x00000003
	bl sub_020C45F4
	ldr r0, _020C3F88 ; =0x00040000
	bl sub_020C15F0
	ldr r0, _020C3F8C ; =0xFFFFFFFF
	bl sub_020C167C
	ldr r1, _020C3F90 ; =0x027FFC20
	ldr r0, _020C3F94 ; =0x00000010
	str r4, [r1, #0]
	bl sub_020C3EB8
	ldr r0, _020C3F98 ; =0x027E3F80
	ldr r1, _020C3F9C ; =0x00000800
	sub r0, r0, r1
	mov sp, r0
	bl sub_01FF81E4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C3F74: .word 0x027FFC40
_020C3F78: .word 0x00000000
_020C3F7C: .word 0x00000001
_020C3F80: .word 0x00000002
_020C3F84: .word 0x00000003
_020C3F88: .word 0x00040000
_020C3F8C: .word 0xFFFFFFFF
_020C3F90: .word 0x027FFC20
_020C3F94: .word 0x00000010
_020C3F98: .word 0x027E3F80
_020C3F9C: .word 0x00000800
	arm_func_end sub_020C3EE4

	arm_func_start sub_020C3FA0
sub_020C3FA0: ; 0x020C3FA0
	ldr ip, _020C3FB4 ; =sub_020C4DB0
	mov r1, r0
	ldr r0, _020C3FB8 ; =0x027FFCF4
	mov r2, #6
	bx ip
	; .align 2, 0
_020C3FB4: .word sub_020C4DB0
_020C3FB8: .word 0x027FFCF4
	arm_func_end sub_020C3FA0

	arm_func_start sub_020C3FBC
sub_020C3FBC: ; 0x020C3FBC
	stmfd sp!, {r4, lr}
	ldr ip, _020C403C ; =0x027FFC80
	mov r4, r0
	ldrh r2, [ip, #0x64]
	add r0, ip, #6
	add r1, r4, #4
	mov r2, r2, lsl #0x1d
	mov r2, r2, lsr #0x1d
	strb r2, [r4]
	ldrb r3, [ip, #2]
	mov r2, #0x14
	mov r3, r3, lsl #0x1c
	mov r3, r3, lsr #0x1c
	strb r3, [r4, #1]
	ldrb r3, [ip, #3]
	strb r3, [r4, #2]
	ldrb r3, [ip, #4]
	strb r3, [r4, #3]
	ldrb r3, [ip, #0x1a]
	strh r3, [r4, #0x1a]
	ldrb r3, [ip, #0x50]
	strh r3, [r4, #0x52]
	bl sub_020C4B18
	ldr r0, _020C403C ; =0x027FFC80
	add r1, r4, #0x1c
	add r0, r0, #0x1c
	mov r2, #0x34
	bl sub_020C4B18
	mov r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x50]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C403C: .word 0x027FFC80
	arm_func_end sub_020C3FBC

	arm_func_start sub_020C4040
sub_020C4040: ; 0x020C4040
	ldr r1, _020C4050 ; =0x027FFC80
	ldr r0, [r1, #0x68]
	ldr r1, [r1, #0x6c]
	bx lr
	; .align 2, 0
_020C4050: .word 0x027FFC80
	arm_func_end sub_020C4040

	arm_func_start sub_020C4054
sub_020C4054: ; 0x020C4054
	clz r0, r0
	bx lr
	arm_func_end sub_020C4054

	arm_func_start sub_020C405C
sub_020C405C: ; 0x020C405C
	ldr r0, _020C4088 ; =0x021CCFE8
	mov r3, #0
	str r3, [r0, #0]
	ldr r0, _020C408C ; =0x021CCFEC
	mov r2, r3
_020C4070:
	mov r1, r3, lsl #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #9
	blt _020C4070
	bx lr
	; .align 2, 0
_020C4088: .word 0x021CCFE8
_020C408C: .word 0x021CCFEC
	arm_func_end sub_020C405C

	arm_func_start sub_020C4090
sub_020C4090: ; 0x020C4090
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r8, r1
	bl sub_020C3D98
	ldr r1, _020C4144 ; =0x021CCFE8
	mov r6, r0
	ldr r0, [r1, #0]
	ldr sb, _020C4148 ; =0x021CCFEC
	and r5, r7, r0
	mov r4, #1
_020C40B8:
	mov r0, r5
	bl sub_020C4054
	rsb r1, r0, #0x1f
	bmi _020C40F0
	mov r0, r1, lsl #1
	ldrh r0, [sb, r0]
	mvn r1, r4, lsl r1
	cmp r8, r0
	and r5, r5, r1
	beq _020C40B8
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C40F0:
	ldr r0, _020C414C ; =0x000001FF
	ldr r4, _020C4148 ; =0x021CCFEC
	ldr sb, _020C4144 ; =0x021CCFE8
	and r7, r7, r0
	mov r5, #1
_020C4104:
	mov r0, r7
	bl sub_020C4054
	rsb r1, r0, #0x1f
	bmi _020C4134
	ldr r0, [sb]
	mvn r2, r5, lsl r1
	orr r0, r0, r5, lsl r1
	mov r1, r1, lsl #1
	strh r8, [r4, r1]
	str r0, [sb]
	and r7, r7, r2
	b _020C4104
_020C4134:
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020C4144: .word 0x021CCFE8
_020C4148: .word 0x021CCFEC
_020C414C: .word 0x000001FF
	arm_func_end sub_020C4090

	arm_func_start sub_020C4150
sub_020C4150: ; 0x020C4150
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov sl, r1
	bl sub_020C3D98
	ldr r4, _020C41CC ; =0x021CCFE8
	ldr r1, _020C41D0 ; =0x000001FF
	ldr r2, [r4, #0]
	mov sb, r0
	and r0, r5, r2
	ldr r6, _020C41D4 ; =0x021CCFEC
	and r8, r0, r1
	mov r7, #1
	mov r5, #0
_020C4184:
	mov r0, r8
	bl sub_020C4054
	rsb r2, r0, #0x1f
	bmi _020C41C0
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	mvn r2, r7, lsl r2
	cmp sl, r0
	and r8, r8, r2
	bne _020C4184
	ldr r0, [r4, #0]
	strh r5, [r6, r1]
	and r0, r0, r2
	str r0, [r4, #0]
	b _020C4184
_020C41C0:
	mov r0, sb
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020C41CC: .word 0x021CCFE8
_020C41D0: .word 0x000001FF
_020C41D4: .word 0x021CCFEC
	arm_func_end sub_020C4150

	arm_func_start sub_020C41D8
sub_020C41D8: ; 0x020C41D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C4298 ; =0x04000006
	mov r5, r0
	ldrh r6, [r1]
	ldr r4, _020C429C ; =0x027FFC00
	bl sub_020C3920
	orr r0, r0, r6, lsl #16
	str r0, [r5, #0]
	ldr r1, _020C42A0 ; =0x021CCFBC
	ldrh ip, [r4, #0xf8]
	ldr r3, [r1, #0]
	ldr r2, [r1, #4]
	mov r0, r4
	eor r2, r3, ip, lsl #16
	str r2, [r5, #4]
	ldr r2, [r1, #0]
	ldr r3, [r0, #0x3c]
	ldr r2, [r1, #4]
	ldr r1, [r4, #0xf4]
	ldr ip, _020C42A4 ; =0x04000600
	eor r1, r2, r1
	eor r2, r3, r1
	str r2, [r5, #8]
	ldr r1, [ip]
	eor r1, r2, r1
	str r1, [r5, #8]
	ldr r2, [r0, #0x1e8]
	add r1, r0, #0x300
	str r2, [r5, #0xc]
	ldr r3, [r0, #0x1ec]
	sub r2, ip, #0x4d0
	str r3, [r5, #0x10]
	ldr r3, [r0, #0x390]
	ldrh r4, [r1, #0x94]
	add r0, r0, #0x3a8
	eor r3, r3, r4, lsl #16
	str r3, [r5, #0x14]
	ldrh r4, [r1, #0xaa]
	ldrh r3, [r1, #0xac]
	orr r3, r3, r4, lsl #16
	str r3, [r5, #0x18]
	ldrh r2, [r2]
	ldrh r0, [r0]
	ldrh r1, [r1, #0x98]
	orr r0, r2, r0
	orr r0, r0, r1, lsl #16
	str r0, [r5, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C4298: .word 0x04000006
_020C429C: .word 0x027FFC00
_020C42A0: .word 0x021CCFBC
_020C42A4: .word 0x04000600
	arm_func_end sub_020C41D8

	arm_func_start sub_020C42A8
sub_020C42A8: ; 0x020C42A8
	stmfd sp!, {r3, lr}
_020C42AC:
	bl sub_020C3D98
	bl sub_020C42B8
	b _020C42AC
	arm_func_end sub_020C42A8

	arm_func_start sub_020C42B8
sub_020C42B8: ; 0x020C42B8
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end sub_020C42B8

	arm_func_start sub_020C42C4
sub_020C42C4: ; 0x020C42C4
	ldr r1, _020C42D0 ; =0x04000247
	strb r0, [r1]
	bx lr
	; .align 2, 0
_020C42D0: .word 0x04000247
	arm_func_end sub_020C42C4

	arm_func_start sub_020C42D4
sub_020C42D4: ; 0x020C42D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, r8, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r5, r0, #0x4000000
_020C4300:
	ldr r0, [r5, #0]
	tst r0, #-0x80000000
	bne _020C4300
	bl sub_020C3D98
	mov r2, r8, lsl #2
	add r1, r2, #0xe0
	mov r3, r4, lsr #2
	mov r4, r0
	add ip, r2, #0x4000000
	mov r0, r8
	mov r2, r7
	add r1, r1, #0x4000000
	orr r3, r3, #0x85000000
	str r6, [ip, #0xe0]
	bl sub_01FF8554
	mov r0, r4
	bl sub_020C3DAC
_020C4344:
	ldr r0, [r5, #0]
	tst r0, #-0x80000000
	bne _020C4344
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C42D4

	arm_func_start sub_020C4354
sub_020C4354: ; 0x020C4354
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r6, r2
	mov r2, r5
	mov r3, #0
	mov r8, r0
	mov r7, r1
	bl sub_020C46F4
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, r8, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r4, r0, #0x4000000
_020C4390:
	ldr r0, [r4, #0]
	tst r0, #-0x80000000
	bne _020C4390
	mov r3, r5, lsr #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x84000000
	bl sub_01FF84C0
_020C43B4:
	ldr r0, [r4, #0]
	tst r0, #-0x80000000
	bne _020C43B4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C4354

	arm_func_start sub_020C43C4
sub_020C43C4: ; 0x020C43C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r2, r5
	mov r3, #0
	bl sub_020C46F4
	add r0, r8, r8, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r4, r0, #0x4000000
_020C43FC:
	ldr r0, [r4, #0]
	tst r0, #-0x80000000
	bne _020C43FC
	mov r3, r5, lsr #1
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x80000000
	bl sub_01FF84C0
_020C4420:
	ldr r0, [r4, #0]
	tst r0, #-0x80000000
	bne _020C4420
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C43C4

	arm_func_start sub_020C4430
sub_020C4430: ; 0x020C4430
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r8, [sp, #0x18]
	bne _020C4460
	cmp r8, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x1c]
	blx r8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C4460:
	bl sub_020C458C
	cmp r8, #0
	beq _020C44B8
	ldr r2, [sp, #0x1c]
	mov r0, r7
	mov r1, r8
	bl sub_020C1560
	bl sub_020C3D98
	mov r3, r4, lsr #2
	mov r2, r7, lsl #2
	add r1, r2, #0xe0
	add r2, r2, #0x4000000
	str r5, [r2, #0xe0]
	mov r4, r0
	mov r0, r7
	mov r2, r6
	add r1, r1, #0x4000000
	orr r3, r3, #0xc5000000
	bl sub_01FF8530
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C44B8:
	bl sub_020C3D98
	mov r2, r7, lsl #2
	add r1, r2, #0xe0
	mov r3, r4, lsr #2
	mov r4, r0
	add ip, r2, #0x4000000
	mov r0, r7
	mov r2, r6
	add r1, r1, #0x4000000
	orr r3, r3, #0x85000000
	str r5, [ip, #0xe0]
	bl sub_01FF8530
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C4430

	arm_func_start sub_020C44F4
sub_020C44F4: ; 0x020C44F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r6, r2
	mov r2, r5
	mov r3, #0
	mov r8, r0
	mov r7, r1
	ldr r4, [sp, #0x18]
	bl sub_020C46F4
	cmp r5, #0
	bne _020C4534
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x1c]
	blx r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C4534:
	mov r0, r8
	bl sub_020C458C
	cmp r4, #0
	beq _020C4570
	ldr r2, [sp, #0x1c]
	mov r0, r8
	mov r1, r4
	bl sub_020C1560
	mov r3, r5, lsr #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0xc4000000
	bl sub_01FF8480
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C4570:
	mov r3, r5, lsr #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x84000000
	bl sub_01FF8480
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C44F4

	arm_func_start sub_020C458C
sub_020C458C: ; 0x020C458C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	add r1, r4, r4, lsl #1
	add r1, r1, #2
	mov r1, r1, lsl #2
	add r1, r1, #0xb0
	add r2, r1, #0x4000000
_020C45AC:
	ldr r1, [r2, #0]
	tst r1, #-0x80000000
	bne _020C45AC
	cmp r4, #0
	bne _020C45E8
	mov r1, #0xc
	mul r2, r4, r2
	add r1, r2, #0xb0
	add r2, r2, #0x4000000
	mov r3, #0
	str r3, [r2, #0xb0]
	add r2, r1, #0x4000000
	ldr r1, _020C45F0 ; =0x81400001
	str r3, [r2, #4]
	str r1, [r2, #8]
_020C45E8:
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C45F0: .word 0x81400001
	arm_func_end sub_020C458C

	arm_func_start sub_020C45F4
sub_020C45F4: ; 0x020C45F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	mov r1, #6
	mul r1, r4, r1
	add r1, r1, #5
	mov r1, r1, lsl #1
	add r1, r1, #0x4000000
	ldrh r2, [r1, #0xb0]
	cmp r4, #0
	bic r2, r2, #0x3a00
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x8000
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	ldrh r1, [r1, #0xb0]
	bne _020C4664
	mov r1, #0xc
	mul r2, r4, r2
	add r1, r2, #0xb0
	add r2, r2, #0x4000000
	mov r3, #0
	str r3, [r2, #0xb0]
	add r2, r1, #0x4000000
	ldr r1, _020C466C ; =0x81400001
	str r3, [r2, #4]
	str r1, [r2, #8]
_020C4664:
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C466C: .word 0x81400001
	arm_func_end sub_020C45F4

	arm_func_start sub_020C4670
sub_020C4670: ; 0x020C4670
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020C46F0 ; =0x040000B8
	mov r7, r0
	mov r6, r1
	mov r4, #0
_020C4684:
	cmp r4, r7
	beq _020C46DC
	ldr r0, [r5, #0]
	tst r0, #-0x80000000
	andne r0, r0, #0x38000000
	cmpne r0, r6
	beq _020C46DC
	cmp r0, #0x8000000
	cmpeq r6, #0x10000000
	beq _020C46DC
	cmp r0, #0x10000000
	cmpeq r6, #0x8000000
	beq _020C46DC
	cmp r0, #0x18000000
	cmpne r0, #0x20000000
	cmpne r0, #0x28000000
	cmpne r0, #0x30000000
	cmpne r0, #0x38000000
	cmpne r0, #0x8000000
	cmpne r0, #0x10000000
	bne _020C46DC
	bl sub_020C42A8
_020C46DC:
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #0xc
	blt _020C4684
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C46F0: .word 0x040000B8
	arm_func_end sub_020C4670

	arm_func_start sub_020C46F4
sub_020C46F4: ; 0x020C46F4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	cmp r3, #0
	and ip, r1, #0xff000000
	beq _020C4718
	cmp r3, #0x800000
	subeq r1, r1, r2
	b _020C471C
_020C4718:
	add r1, r1, r2
_020C471C:
	cmp ip, #0x4000000
	and r0, r1, #0xff000000
	beq _020C4740
	cmp ip, #0x8000000
	bhs _020C4740
	cmp r0, #0x4000000
	beq _020C4740
	cmp r0, #0x8000000
	ldmloia sp!, {r3, pc}
_020C4740:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C46F4

	arm_func_start sub_020C4748
sub_020C4748: ; 0x020C4748
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r4, r3
	mov r1, #0x10000000
	mov r5, r2
	bl sub_020C4670
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl sub_020C458C
	ldr r3, _020C47A4 ; =0x96600000
	mov r0, r7
	mov r1, r6
	mov r2, r5
	orr r3, r3, r4, lsr #2
	bl sub_01FF8480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C47A4: .word 0x96600000
	arm_func_end sub_020C4748

	arm_func_start sub_020C47A8
sub_020C47A8: ; 0x020C47A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r4, r3
	mov r1, #0x10000000
	mov r5, r2
	bl sub_020C4670
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl sub_020C458C
	ldr r3, _020C4804 ; =0x92600000
	mov r0, r7
	mov r1, r6
	mov r2, r5
	orr r3, r3, r4, lsr #1
	bl sub_01FF8480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C4804: .word 0x92600000
	arm_func_end sub_020C47A8

	arm_func_start sub_020C4808
sub_020C4808: ; 0x020C4808
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r2, #0
	bne _020C482C
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #8]
	blx r3
	ldmia sp!, {r4, pc}
_020C482C:
	ldr r0, _020C48F4 ; =0x021CD000
_020C4830:
	ldr ip, [r0]
	cmp ip, #0
	bne _020C4830
	ldr ip, _020C48F8 ; =0x04000600
_020C4840:
	ldr r0, [ip]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	tst r0, #2
	beq _020C4840
	ldr ip, _020C48F4 ; =0x021CD000
	mov r0, #1
	str r0, [ip]
	str r4, [ip, #4]
	str r1, [ip, #8]
	str r2, [ip, #0xc]
	str r3, [ip, #0x10]
	ldr lr, [sp, #8]
	mov r0, r4
	mov r3, #0
	str lr, [ip, #0x14]
	bl sub_020C46F4
	mov r0, r4
	bl sub_020C458C
	bl sub_020C3D98
	ldr r1, _020C48F8 ; =0x04000600
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _020C48F4 ; =0x021CD000
	and r0, r0, #0xc0000000
	mov r2, r0, lsr #0x1e
	mov r0, #0x200000
	str r2, [r1, #0x18]
	bl sub_020C14D4
	ldr r1, _020C48F4 ; =0x021CD000
	ldr r2, _020C48F8 ; =0x04000600
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0]
	ldr r1, _020C48FC ; =sub_020C4900
	bic r0, r0, #0xc0000000
	orr r3, r0, #0x40000000
	mov r0, #0x200000
	str r3, [r2, #0]
	bl sub_020C144C
	mov r0, #0x200000
	bl sub_020C161C
	bl sub_020C4900
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C48F4: .word 0x021CD000
_020C48F8: .word 0x04000600
_020C48FC: .word sub_020C4900
	arm_func_end sub_020C4808

	arm_func_start sub_020C4900
sub_020C4900: ; 0x020C4900
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C499C ; =0x021CD000
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020C499C ; =0x021CD000
	cmp r5, #0x1d8
	ldr r1, [r0, #0xc]
	movhs r5, #0x1d8
	ldr r4, [r0, #8]
	subs r1, r1, r5
	str r1, [r0, #0xc]
	add r1, r4, r5
	str r1, [r0, #8]
	bne _020C4978
	ldr r0, [r0, #4]
	ldr r1, _020C49A0 ; =sub_020C49AC
	mov r2, #0
	bl sub_020C1560
	ldr r0, _020C499C ; =0x021CD000
	mov r3, #0x3bc00000
	rsb r3, r3, #0
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl sub_01FF8480
	mov r0, #0x200000
	bl sub_020C167C
	ldmia sp!, {r3, r4, r5, pc}
_020C4978:
	ldr r3, _020C49A8 ; =0x84400000
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl sub_01FF8480
	mov r0, #0x200000
	bl sub_020C167C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C499C: .word 0x021CD000
_020C49A0: .word sub_020C49AC
_020C49A4: .word 0x04000400
_020C49A8: .word 0x84400000
	arm_func_end sub_020C4900

	arm_func_start sub_020C49AC
sub_020C49AC: ; 0x020C49AC
	stmfd sp!, {r3, lr}
	mov r0, #0x200000
	bl sub_020C164C
	ldr r2, _020C4A04 ; =0x04000600
	ldr r0, _020C4A08 ; =0x021CD000
	ldr r1, [r2, #0]
	ldr r3, [r0, #0x18]
	bic r1, r1, #0xc0000000
	orr r1, r1, r3, lsl #30
	str r1, [r2, #0]
	ldr r1, [r0, #0x1c]
	mov r0, #0x200000
	bl sub_020C144C
	ldr r0, _020C4A08 ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4A04: .word 0x04000600
_020C4A08: .word 0x021CD000
	arm_func_end sub_020C49AC

	arm_func_start sub_020C4A0C
sub_020C4A0C: ; 0x020C4A0C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _020C4A34
	cmp r3, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0x10]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
_020C4A34:
	ldr r0, _020C4AB8 ; =0x021CD000
_020C4A38:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020C4A38
	ldr r2, _020C4AB8 ; =0x021CD000
	mov r0, #1
	str r0, [r2, #0]
	str r6, [r2, #4]
	ldr ip, [sp, #0x10]
	str r3, [r2, #0x10]
	mov r0, r6
	mov r1, #0x38000000
	str ip, [r2, #0x14]
	bl sub_020C4670
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	mov r0, r6
	bl sub_020C458C
	mov r0, r6
	ldr r1, _020C4ABC ; =sub_020C4AC4
	mov r2, #0
	bl sub_020C1560
	mov r0, r6
	mov r1, r5
	ldr r2, _020C4AC0 ; =0x04000400
	mov r3, #0x3c00000
	rsb r3, r3, #0
	orr r3, r3, r4, lsr #2
	bl sub_01FF8480
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C4AB8: .word 0x021CD000
_020C4ABC: .word sub_020C4AC4
_020C4AC0: .word 0x04000400
	arm_func_end sub_020C4A0C

	arm_func_start sub_020C4AC4
sub_020C4AC4: ; 0x020C4AC4
	stmfd sp!, {r3, lr}
	ldr r0, _020C4AEC ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4AEC: .word 0x021CD000
	arm_func_end sub_020C4AC4

	arm_func_start sub_020C4AF0
sub_020C4AF0: ; 0x020C4AF0
	mov r3, #0
_020C4AF4:
	cmp r3, r2
	blt _020C4B00
	b _020C4B04
_020C4B00:
	strh r0, [r1, r3]
_020C4B04:
	blt _020C4B0C
	b _020C4B10
_020C4B0C:
	add r3, r3, #2
_020C4B10:
	blt _020C4AF4
	bx lr
	arm_func_end sub_020C4AF0

	arm_func_start sub_020C4B18
sub_020C4B18: ; 0x020C4B18
	mov ip, #0
_020C4B1C:
	cmp ip, r2
	blt _020C4B28
	b _020C4B2C
_020C4B28:
	ldrh r3, [r0, ip]
_020C4B2C:
	blt _020C4B34
	b _020C4B38
_020C4B34:
	strh r3, [r1, ip]
_020C4B38:
	blt _020C4B40
	b _020C4B44
_020C4B40:
	add ip, ip, #2
_020C4B44:
	blt _020C4B1C
	bx lr
	arm_func_end sub_020C4B18

	arm_func_start sub_020C4B4C
sub_020C4B4C: ; 0x020C4B4C
	add ip, r1, r2
_020C4B50:
	cmp r1, ip
	blt _020C4B5C
	b _020C4B60
_020C4B5C:
	stmia r1!, {r0}
_020C4B60:
	blt _020C4B50
	bx lr
	arm_func_end sub_020C4B4C

	arm_func_start sub_020C4B68
sub_020C4B68: ; 0x020C4B68
	add ip, r1, r2
_020C4B6C:
	cmp r1, ip
	blt _020C4B78
	b _020C4B7C
_020C4B78:
	ldmia r0!, {r2}
_020C4B7C:
	blt _020C4B84
	b _020C4B88
_020C4B84:
	stmia r1!, {r2}
_020C4B88:
	blt _020C4B6C
	bx lr
	arm_func_end sub_020C4B68

	arm_func_start sub_020C4B90
sub_020C4B90: ; 0x020C4B90
	add ip, r0, r2
_020C4B94:
	cmp r0, ip
	blt _020C4BA0
	b _020C4BA4
_020C4BA0:
	ldmia r0!, {r2}
_020C4BA4:
	blt _020C4BAC
	b _020C4BB0
_020C4BAC:
	str r2, [r1, #0]
_020C4BB0:
	blt _020C4B94
	bx lr
	arm_func_end sub_020C4B90

	arm_func_start sub_020C4BB8
sub_020C4BB8: ; 0x020C4BB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb}
	add sb, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
	mov r2, r0
	mov r3, r2
	mov r4, r2
	mov r5, r2
	mov r6, r2
	mov r7, r2
	mov r8, r2
_020C4BE4:
	cmp r1, ip
	blt _020C4BF0
	b _020C4BF4
_020C4BF0:
	stmia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
_020C4BF4:
	blt _020C4BE4
_020C4BF8:
	cmp r1, sb
	blt _020C4C04
	b _020C4C08
_020C4C04:
	stmia r1!, {r0}
_020C4C08:
	blt _020C4BF8
	ldmia sp!, {r4, r5, r6, r7, r8, sb}
	bx lr
	arm_func_end sub_020C4BB8

	arm_func_start sub_020C4C14
sub_020C4C14: ; 0x020C4C14
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl}
	add sl, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
_020C4C24:
	cmp r1, ip
	blt _020C4C30
	b _020C4C34
_020C4C30:
	ldmia r0!, {r2, r3, r4, r5, r6, r7, r8, sb}
_020C4C34:
	blt _020C4C3C
	b _020C4C40
_020C4C3C:
	stmia r1!, {r2, r3, r4, r5, r6, r7, r8, sb}
_020C4C40:
	blt _020C4C24
_020C4C44:
	cmp r1, sl
	blt _020C4C50
	b _020C4C54
_020C4C50:
	ldmia r0!, {r2}
_020C4C54:
	blt _020C4C5C
	b _020C4C60
_020C4C5C:
	stmia r1!, {r2}
_020C4C60:
	blt _020C4C44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl}
	bx lr
	arm_func_end sub_020C4C14

	arm_func_start sub_020C4C6C
sub_020C4C6C: ; 0x020C4C6C
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3}
	stmia r1!, {r2, r3}
	bx lr
	arm_func_end sub_020C4C6C

	arm_func_start sub_020C4C88
sub_020C4C88: ; 0x020C4C88
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end sub_020C4C88

	arm_func_start sub_020C4CA4
sub_020C4CA4: ; 0x020C4CA4
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end sub_020C4CA4

	arm_func_start sub_020C4CC8
sub_020C4CC8: ; 0x020C4CC8
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0, {r0, r2, r3, ip}
	stmia r1!, {r0, r2, r3, ip}
	bx lr
	arm_func_end sub_020C4CC8

	arm_func_start sub_020C4CF4
sub_020C4CF4: ; 0x020C4CF4
	cmp r2, #0
	beq _020C4D00
	b _020C4D04
_020C4D00:
	bx lr
_020C4D04:
	tst r0, #1
	beq _020C4D30
	ldrh ip, [r0, #-1]
	and ip, ip, #0xff
	orr r3, ip, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	beq _020C4D2C
	b _020C4D30
_020C4D2C:
	bx lr
_020C4D30:
	cmp r2, #2
	blo _020C4D88
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _020C4D58
	strh r1, [r0], #2
	subs r2, r2, #2
	beq _020C4D54
	b _020C4D58
_020C4D54:
	bx lr
_020C4D58:
	orr r1, r1, r1, lsl #16
	bic r3, r2, #3
	beq _020C4D78
	sub r2, r2, r3
	add ip, r3, r0
_020C4D6C:
	str r1, [r0, #0], #4
	cmp r0, ip
	blo _020C4D6C
_020C4D78:
	tst r2, #2
	bne _020C4D84
	b _020C4D88
_020C4D84:
	strh r1, [r0], #2
_020C4D88:
	tst r2, #1
	beq _020C4D94
	b _020C4D98
_020C4D94:
	bx lr
_020C4D98:
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end sub_020C4CF4

	arm_func_start sub_020C4DB0
sub_020C4DB0: ; 0x020C4DB0
	cmp r2, #0
	beq _020C4DBC
	b _020C4DC0
_020C4DBC:
	bx lr
_020C4DC0:
	tst r1, #1
	beq _020C4E18
	ldrh ip, [r1, #-1]
	and ip, ip, #0xff
	tst r0, #1
	bne _020C4DDC
	b _020C4DE0
_020C4DDC:
	ldrh r3, [r0, #-1]
_020C4DE0:
	bne _020C4DE8
	b _020C4DEC
_020C4DE8:
	mov r3, r3, lsr #8
_020C4DEC:
	beq _020C4DF4
	b _020C4DF8
_020C4DF4:
	ldrh r3, [r0]
_020C4DF8:
	orr r3, ip, r3, lsl #8
	strh r3, [r1, #-1]
	add r0, r0, #1
	add r1, r1, #1
	subs r2, r2, #1
	beq _020C4E14
	b _020C4E18
_020C4E14:
	bx lr
_020C4E18:
	eor ip, r1, r0
	tst ip, #1
	beq _020C4E74
	bic r0, r0, #1
	ldrh ip, [r0], #2
	mov r3, ip, lsr #8
	subs r2, r2, #2
	blo _020C4E50
_020C4E38:
	ldrh ip, [r0], #2
	orr ip, r3, ip, lsl #8
	strh ip, [r1], #2
	mov r3, ip, lsr #0x10
	subs r2, r2, #2
	bhs _020C4E38
_020C4E50:
	tst r2, #1
	beq _020C4E5C
	b _020C4E60
_020C4E5C:
	bx lr
_020C4E60:
	ldrh ip, [r1]
	and ip, ip, #0xff00
	orr ip, ip, r3
	strh ip, [r1]
	bx lr
_020C4E74:
	tst ip, #2
	beq _020C4EA0
	bic r3, r2, #1
	beq _020C4F04
	sub r2, r2, r3
	add ip, r3, r1
_020C4E8C:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, ip
	blo _020C4E8C
	b _020C4F04
_020C4EA0:
	cmp r2, #2
	blo _020C4F04
	tst r1, #2
	beq _020C4EC8
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	beq _020C4EC4
	b _020C4EC8
_020C4EC4:
	bx lr
_020C4EC8:
	bic r3, r2, #3
	beq _020C4EE8
	sub r2, r2, r3
	add ip, r3, r1
_020C4ED8:
	ldr r3, [r0, #0], #4
	str r3, [r1, #0], #4
	cmp r1, ip
	blo _020C4ED8
_020C4EE8:
	tst r2, #2
	bne _020C4EF4
	b _020C4EF8
_020C4EF4:
	ldrh r3, [r0], #2
_020C4EF8:
	bne _020C4F00
	b _020C4F04
_020C4F00:
	strh r3, [r1], #2
_020C4F04:
	tst r2, #1
	beq _020C4F10
	b _020C4F14
_020C4F10:
	bx lr
_020C4F14:
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end sub_020C4DB0
