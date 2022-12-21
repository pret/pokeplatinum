	.include "macros/function.inc"
	.include "include/unk_020E4144.inc"

	

	.text


	arm_func_start sub_020E4144
sub_020E4144: ; 0x020E4144
	ldr ip, _020E414C ; =sub_020D3DA0
	bx ip
	; .align 2, 0
_020E414C: .word sub_020D3DA0
	arm_func_end sub_020E4144

	arm_func_start sub_020E4150
sub_020E4150: ; 0x020E4150
	ldr ip, _020E4158 ; =sub_020E415C
	bx ip
	; .align 2, 0
_020E4158: .word sub_020E415C
	arm_func_end sub_020E4150

	arm_func_start sub_020E415C
sub_020E415C: ; 0x020E415C
	stmfd sp!, {r3, lr}
	ldr r0, _020E4170 ; =0x02101D0C
	ldr r0, [r0, #0]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E4170: .word 0x02101D0C
	arm_func_end sub_020E415C

	arm_func_start sub_020E4174
sub_020E4174: ; 0x020E4174
	stmfd sp!, {r3, lr}
	ldr r0, _020E4188 ; =0x02101D0C
	ldr r0, [r0, #4]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020E4188: .word 0x02101D0C
	arm_func_end sub_020E4174

	arm_func_start sub_020E418C
sub_020E418C: ; 0x020E418C
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r3, r1
	cmp r1, #0
	str ip, [r2]
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb ip, [r1]
	cmp ip, #0x50
	bne _020E41F0
	ldrb ip, [r3, #1]!
	cmp ip, #0x56
	addeq r3, r3, #1
	ldrb ip, [r3]
	cmp ip, #0x4b
	addeq r3, r3, #1
	ldrb r3, [r3]
	cmp r3, #0x76
	bne _020E41EC
	ldrb r3, [r0]
	cmp r3, #0x50
	cmpne r3, #0x2a
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020E41EC:
	mov r3, r1
_020E41F0:
	ldrb ip, [r0]
	cmp ip, #0x21
	cmpne ip, #0x2a
	bne _020E42F0
	ldrb lr, [r0], #1
	ldrb ip, [r3], #1
	cmp lr, ip
	movne r0, #0
	ldmneia sp!, {r3, pc}
_020E4214:
	ldrb lr, [r0]
	ldrb ip, [r3], #1
	cmp lr, ip
	bne _020E4268
	cmp lr, #0x21
	add r0, r0, #1
	bne _020E4214
	ldrb r1, [r0]
	mov lr, #0
	cmp r1, #0x21
	beq _020E425C
	mov r1, #0xa
_020E4244:
	ldrb ip, [r0]
	ldrb r3, [r0, #1]!
	mla ip, lr, r1, ip
	cmp r3, #0x21
	sub lr, ip, #0x30
	bne _020E4244
_020E425C:
	str lr, [r2]
	mov r0, #1
	ldmia sp!, {r3, pc}
_020E4268:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _020E4268
_020E4274:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _020E4274
	ldrb r3, [r0]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r3, r1, #1
	b _020E4214
_020E4298:
	ldrb r1, [r3, #1]!
	add r0, r0, #1
	cmp r1, #0x4b
	bne _020E42B8
	ldrb r1, [r0]
	add r3, r3, #1
	cmp r1, #0x4b
	addeq r0, r0, #1
_020E42B8:
	ldrb r2, [r0]
	cmp r2, #0x4b
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r3]
	cmp r1, #0x56
	bne _020E42E0
	cmp r2, #0x56
	addeq r0, r0, #1
	add r3, r3, #1
_020E42E0:
	ldrb r1, [r0]
	cmp r1, #0x56
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_020E42F0:
	ldrb r2, [r0]
	cmp r2, #0x50
	cmpne r2, #0x52
	bne _020E430C
	ldrb r1, [r3]
	cmp r2, r1
	beq _020E4298
_020E430C:
	ldrb r1, [r3]
	cmp r2, r1
	bne _020E4334
_020E4318:
	cmp r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r0, #1]!
	ldrb r1, [r3, #1]!
	cmp r2, r1
	beq _020E4318
_020E4334:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020E418C

	arm_func_start sub_020E433C
sub_020E433C: ; 0x020E433C
	stmfd sp!, {r4, lr}
	ldrb r1, [r0, #0x6a]
	ldr ip, [r0, #0x60]
	mov r4, #0xf
	cmp r1, #0
	ldr r1, [r0, #0x18]
	movne r2, #0x10
	moveq r2, #0
	add r1, r1, ip
	sub lr, r1, r2
	mov r3, #1
_020E4368:
	ldrh r1, [r0, #0x68]
	tst r1, r3, lsl r4
	ldrne r2, [lr, #-4]!
	addne r1, r0, r4, lsl #2
	strne r2, [r1, #0x1c]
	subs r4, r4, #1
	bpl _020E4368
	ldr r1, [r0, #0x18]
	add r1, r1, ip
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x54]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020E433C

	arm_func_start sub_020E4398
sub_020E4398: ; 0x020E4398
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r1, #4]
	mov r6, r0
	ldrb r0, [r1]
	ands r4, r0, #0x40
	movne r2, #1
	moveq r2, #0
	strb r2, [r6, #0x6b]
	tst r0, #0x20
	movne r2, #1
	moveq r2, #0
	ands r5, r0, #0x80
	movne r0, #1
	strb r2, [r6, #0x6a]
	moveq r0, #0
	strb r0, [r6, #0x6c]
	ldrb r2, [r1, #1]
	add r0, r1, #2
	add r1, r6, #0x60
	mov r2, r2, lsl #4
	strh r2, [r6, #0x68]
	ldrh r2, [r6, #0x68]
	orr r2, r2, #0x4000
	strh r2, [r6, #0x68]
	bl sub_020E2A0C
	cmp r4, #0
	beq _020E440C
	add r1, r6, #0x64
	bl sub_020E2A0C
_020E440C:
	cmp r4, #0
	beq _020E442C
	cmp r5, #0
	ldrne r0, [r6, #0x38]
	strne r0, [r6, #0x18]
	ldreq r0, [r6, #0x48]
	streq r0, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
_020E442C:
	ldr r0, [r6, #0x14]
	str r0, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020E4398

	arm_func_start sub_020E4438
sub_020E4438: ; 0x020E4438
	ldr r2, _020E4450 ; =0x020E4670
	ldr r1, _020E4454 ; =0x020E4C40
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r0, #1
	bx lr
	; ; .align 2, 0
_020E4450: .word 0x020E4670
_020E4454: .word 0x020E4C40
	arm_func_end sub_020E4438

	arm_func_start sub_020E4458
sub_020E4458: ; 0x020E4458
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrb r4, [r0], #2
	add r1, sp, #0
	bl sub_020E2A0C
	tst r4, #0x40
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	add r1, sp, #0
	bl sub_020E2A0C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020E4458

	arm_func_start sub_020E4488
sub_020E4488: ; 0x020E4488
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	ldr r6, [r0, #0x34]
	ldr r7, [r0, #0x38]
	ldr r8, [r0, #0x3c]
	ldr sb, [r0, #0x40]
	ldr sl, [r0, #0x44]
	ldr fp, [r0, #0x48]
	ldr sp, [r0, #0x5c]
	ldr ip, [r0, #0x64]
	sub sp, sp, ip
	bx r2
	arm_func_end sub_020E4488

	arm_func_start sub_020E44B8
sub_020E44B8: ; 0x020E44B8
	mov ip, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str sb, [sp, #0x40]
	str sl, [sp, #0x44]
	str fp, [sp, #0x48]
	str ip, [sp, #0x14]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x10]
	str r0, [sp, #0]
	str r1, [sp, #0x4]
	str r2, [sp, #0x8]
	mov r0, sp
	b sub_020E3D74
	arm_func_end sub_020E44B8

	arm_func_start sub_020E4500
sub_020E4500: ; 0x020E4500
	mov ip, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str sb, [sp, #0x40]
	str sl, [sp, #0x44]
	str fp, [sp, #0x48]
	str ip, [sp, #0x14]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x10]
	mov ip, #0x0
	str ip, [sp, #0]
	str ip, [sp, #0x4]
	str ip, [sp, #0x8]
	mov r0, sp
	b sub_020E3D74
	arm_func_end sub_020E4500

	.data


	.global Unk_02101D0C
Unk_02101D0C: ; 0x02101D0C
	.incbin "incbin/arm9_data.bin", 0x302C, 0x3030 - 0x302C

	.global Unk_02101D10
Unk_02101D10: ; 0x02101D10
	.incbin "incbin/arm9_data.bin", 0x3030, 0x4

