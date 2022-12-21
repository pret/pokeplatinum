	.include "macros/function.inc"
	.include "include/unk_020AF760.inc"

	

	.text


	arm_func_start sub_020AF760
sub_020AF760: ; 0x020AF760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	movs r5, r1
	mov r4, r2
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
_020AF77C:
	ldrb r1, [r5, #0x19]
	cmp r4, r1
	bhs _020AF7BC
	add r1, r5, r4, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _020AF7BC
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _020AF7BC
	mov r0, r6
	mov r1, r5
	and r2, r2, #0xff
	blx r3
	mov r0, r7
_020AF7BC:
	ldr r5, [r5, #0x10]
	cmp r5, #0
	bne _020AF77C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AF760

	arm_func_start sub_020AF7CC
sub_020AF7CC: ; 0x020AF7CC
	cmp r3, #0
	beq _020AF7FC
	ldr r1, [r0, #0]
	add r1, r1, r2
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r2
	str r1, [r0, #8]
	bx lr
_020AF7FC:
	ldr r3, [r1, #0]
	ldr ip, [r0]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0, #0]
	ldr r3, [r1, #4]
	ldr ip, [r0, #4]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0, #4]
	ldr r1, [r1, #8]
	ldr r3, [r0, #8]
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020AF7CC

	arm_func_start sub_020AF83C
sub_020AF83C: ; 0x020AF83C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	movs sb, r1
	mov sl, r0
	mov r8, r2
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sb, #0x10]
	cmp r2, #0
	bne _020AF8C8
	ldrb r2, [sb, #0x19]
	cmp r8, r2
	bhs _020AF8BC
	add r2, sb, r8, lsl #1
	ldrh r4, [r2, #0x1a]
	and r2, r4, #0x300
	cmp r2, #0x100
	bne _020AF8B0
	ldr r3, [sb, #0xc]
	cmp r3, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	and r2, r4, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8B0:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8BC:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF8C8:
	mov r5, #0
	mov r3, r5
	mov r6, r5
	mov r2, sb
_020AF8D8:
	ldrb r0, [r2, #0x19]
	cmp r8, r0
	bhs _020AF918
	add r0, r2, r8, lsl #1
	ldrh r0, [r0, #0x1a]
	and r0, r0, #0x300
	cmp r0, #0x100
	bne _020AF918
	ldr r0, [r2, #4]
	cmp r0, #0x1000
	addgt r5, r5, #0x1000
	bgt _020AF910
	cmp r0, #0
	addgt r5, r5, r0
_020AF910:
	mov r1, r2
	add r3, r3, #1
_020AF918:
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AF8D8
	cmp r5, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, #1
	bne _020AF970
	ldr r3, [r1, #0xc]
	add r0, r1, r8, lsl #1
	cmp r3, #0
	ldrh r2, [r0, #0x1a]
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	and r2, r2, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AF970:
	mov r1, sl
	mov r0, #0
	mov r2, #0x58
	bl sub_020C4BB8
	mvn r0, #0
	str r0, [sl]
	add fp, sp, #0x40
	add r4, sp, #0x18
_020AF990:
	ldrb r0, [sb, #0x19]
	cmp r8, r0
	bhs _020AFB74
	add r0, sb, r8, lsl #1
	ldrh r1, [r0, #0x1a]
	and r0, r1, #0x300
	cmp r0, #0x100
	bne _020AFB74
	ldr r0, [sb, #4]
	cmp r0, #0
	ble _020AFB74
	ldr r3, [sb, #0xc]
	cmp r3, #0
	beq _020AFB74
	and r2, r1, #0xff
	mov r0, r4
	mov r1, sb
	blx r3
	cmp r6, #0
	bne _020AFA00
	mov r0, fp
	add r1, sp, #0xc
	mov r2, #0xc
	bl sub_020C4B68
	add r0, sp, #0x58
	add r1, sp, #0
	mov r2, #0xc
	bl sub_020C4B68
_020AFA00:
	cmp r5, #0x1000
	ldreq r7, [sb, #4]
	beq _020AFA1C
	ldr r0, [sb, #4]
	mov r1, r5
	bl sub_020BCFD0
	mov r7, r0
_020AFA1C:
	ldr r3, [sp, #0x18]
	add r0, sl, #4
	add r1, sp, #0x1c
	mov r2, r7
	and r3, r3, #1
	bl sub_020AF7CC
	ldr r3, [sp, #0x18]
	add r0, sl, #0x10
	add r1, sp, #0x28
	mov r2, r7
	and r3, r3, #8
	bl sub_020AF7CC
	ldr r3, [sp, #0x18]
	add r0, sl, #0x1c
	add r1, sp, #0x34
	mov r2, r7
	and r3, r3, #0x10
	bl sub_020AF7CC
	ldr r0, [sp, #0x18]
	tst r0, #4
	bne _020AFAC4
	ldr r2, [sl, #0x4c]
	ldr r0, [sp, #0x64]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x4c]
	ldr r2, [sl, #0x50]
	ldr r0, [sp, #0x68]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x50]
	ldr r2, [sl, #0x54]
	ldr r0, [sp, #0x6c]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x54]
_020AFAC4:
	ldr r0, [sp, #0x18]
	tst r0, #2
	bne _020AFB4C
	ldr r1, [sl, #0x28]
	ldr r0, [sp, #0x40]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x28]
	ldr r1, [sl, #0x2c]
	ldr r0, [sp, #0x44]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x2c]
	ldr r1, [sl, #0x30]
	ldr r0, [sp, #0x48]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x30]
	ldr r1, [sl, #0x34]
	ldr r0, [sp, #0x4c]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x34]
	ldr r1, [sl, #0x38]
	ldr r0, [sp, #0x50]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x38]
	ldr r1, [sl, #0x3c]
	ldr r0, [sp, #0x54]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x3c]
	b _020AFB64
_020AFB4C:
	ldr r0, [sl, #0x28]
	add r0, r0, r7
	str r0, [sl, #0x28]
	ldr r0, [sl, #0x38]
	add r0, r0, r7
	str r0, [sl, #0x38]
_020AFB64:
	ldr r1, [sl]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	str r0, [sl]
_020AFB74:
	ldr sb, [sb, #0x10]
	add r6, r6, #1
	cmp sb, #0
	bne _020AF990
	add r0, sl, #0x28
	add r1, sl, #0x34
	add r2, sl, #0x40
	bl sub_020BD298
	ldr r0, [sl, #0x28]
	cmp r0, #0
	ldreq r0, [sl, #0x2c]
	cmpeq r0, #0
	ldreq r0, [sl, #0x30]
	cmpeq r0, #0
	bne _020AFBC4
	add r0, sp, #0xc
	add r1, sl, #0x28
	mov r2, #0xc
	bl sub_020C4B68
	b _020AFBD0
_020AFBC4:
	add r0, sl, #0x28
	mov r1, r0
	bl sub_020BD3E4
_020AFBD0:
	ldr r0, [sl, #0x40]
	cmp r0, #0
	ldreq r0, [sl, #0x44]
	cmpeq r0, #0
	ldreq r0, [sl, #0x48]
	cmpeq r0, #0
	bne _020AFC00
	add r0, sp, #0
	add r1, sl, #0x40
	mov r2, #0xc
	bl sub_020C4B68
	b _020AFC0C
_020AFC00:
	add r0, sl, #0x40
	mov r1, r0
	bl sub_020BD3E4
_020AFC0C:
	add r0, sl, #0x40
	add r1, sl, #0x28
	add r2, sl, #0x34
	bl sub_020BD298
	mov r0, #1
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020AF83C

	arm_func_start sub_020AFC28
sub_020AFC28: ; 0x020AFC28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0
	mov r6, r1
	mov r5, r2
	str r0, [r7, #0]
	add r4, sp, #0
	mov r8, #1
_020AFC4C:
	ldrb r1, [r6, #0x19]
	cmp r5, r1
	bhs _020AFC9C
	add r1, r6, r5, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _020AFC9C
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _020AFC9C
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	blx r3
	ldr r2, [r7, #0]
	ldr r1, [sp]
	mov r0, r8
	orr r1, r2, r1
	str r1, [r7, #0]
_020AFC9C:
	ldr r6, [r6, #0x10]
	cmp r6, #0
	bne _020AFC4C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020AFC28

	.data


	.global Unk_02100EC8
Unk_02100EC8: ; 0x02100EC8
	.incbin "incbin/arm9_data.bin", 0x21E8, 0x21EC - 0x21E8

	.global Unk_02100ECC
Unk_02100ECC: ; 0x02100ECC
	.incbin "incbin/arm9_data.bin", 0x21EC, 0x21F0 - 0x21EC

	.global Unk_02100ED0
Unk_02100ED0: ; 0x02100ED0
	.incbin "incbin/arm9_data.bin", 0x21F0, 0x21F4 - 0x21F0

	.global Unk_02100ED4
Unk_02100ED4: ; 0x02100ED4
	.incbin "incbin/arm9_data.bin", 0x21F4, 0x21F8 - 0x21F4

	.global Unk_02100ED8
Unk_02100ED8: ; 0x02100ED8
	.incbin "incbin/arm9_data.bin", 0x21F8, 0x21FC - 0x21F8

	.global Unk_02100EDC
Unk_02100EDC: ; 0x02100EDC
	.incbin "incbin/arm9_data.bin", 0x21FC, 0x2200 - 0x21FC

	.global Unk_02100EE0
Unk_02100EE0: ; 0x02100EE0
	.incbin "incbin/arm9_data.bin", 0x2200, 0x2204 - 0x2200

	.global Unk_02100EE4
Unk_02100EE4: ; 0x02100EE4
	.incbin "incbin/arm9_data.bin", 0x2204, 0x2208 - 0x2204

	.global Unk_02100EE8
Unk_02100EE8: ; 0x02100EE8
	.incbin "incbin/arm9_data.bin", 0x2208, 0x220C - 0x2208

	.global Unk_02100EEC
Unk_02100EEC: ; 0x02100EEC
	.incbin "incbin/arm9_data.bin", 0x220C, 0x50

