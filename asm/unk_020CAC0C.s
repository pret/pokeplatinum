	.include "macros/function.inc"
	.include "include/unk_020CAC0C.inc"

	

	.text


	arm_func_start sub_020CAC0C
sub_020CAC0C: ; 0x020CAC0C
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	ldr r1, _020CAC44 ; =0x021CECEC
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	beq _020CAC30
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, pc}
_020CAC30:
	mov r2, #1
	str r2, [r1, #0x1c]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAC44: .word 0x021CECEC
	arm_func_end sub_020CAC0C

	arm_func_start sub_020CAC48
sub_020CAC48: ; 0x020CAC48
	stmfd sp!, {r4, lr}
	ldr r0, _020CAC80 ; =0x021CECEC
	ldr r4, _020CAC84 ; =0x021CED08
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_020CAC60:
	bl sub_020C3DF0
	cmp r0, #0x80
	bne _020CAC70
	bl sub_020C6554
_020CAC70:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020CAC60
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CAC80: .word 0x021CECEC
_020CAC84: .word 0x021CED08
	arm_func_end sub_020CAC48

	arm_func_start sub_020CAC88
sub_020CAC88: ; 0x020CAC88
	str r0, [r1, #0]
	bx lr
	arm_func_end sub_020CAC88

	arm_func_start sub_020CAC90
sub_020CAC90: ; 0x020CAC90
	stmfd sp!, {r3, lr}
	ldr r2, _020CACCC ; =0x021CECEC
	ldr r1, [r2, #0x1c]
	ldr ip, [r2, #0x20]
	cmp r1, #0
	ldr r1, [r2, #0x24]
	movne r3, #0
	strne r3, [r2, #0x1c]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _020CACCC ; =0x021CECEC
	mov r3, #0
	str r3, [r2, #0x20]
	blx ip
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CACCC: .word 0x021CECEC
	arm_func_end sub_020CAC90

	arm_func_start sub_020CACD0
sub_020CACD0: ; 0x020CACD0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CAD60 ; =0x021CECEC
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	bl sub_020C6350
	mov r5, #8
	mov r4, #1
_020CAD04:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CAD04
	ldr r1, _020CAD64 ; =sub_020CAD74
	mov r0, #8
	bl sub_020C645C
	mov r3, #0
	ldr r0, _020CAD68 ; =0x021CED30
	mov r2, r3
_020CAD30:
	mov r1, r3, lsl #3
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #5
	blt _020CAD30
	ldr r0, _020CAD6C ; =0x021CED18
	bl sub_020C29C0
	ldr r1, _020CAD70 ; =0x027FFC3C
	ldr r0, _020CAD60 ; =0x021CECEC
	ldr r1, [r1, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CAD60: .word 0x021CECEC
_020CAD64: .word sub_020CAD74
_020CAD68: .word 0x021CED30
_020CAD6C: .word 0x021CED18
_020CAD70: .word 0x027FFC3C
	arm_func_end sub_020CACD0

	arm_func_start sub_020CAD74
sub_020CAD74: ; 0x020CAD74
	stmfd sp!, {r3, lr}
	cmp r2, #0
	beq _020CAD8C
	mov r0, #2
	bl sub_020CAC90
	ldmia sp!, {r3, pc}
_020CAD8C:
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r2, r0, lsr #0x10
	and r0, r1, #0xff
	cmp r2, #0x70
	blo _020CADDC
	cmp r2, #0x74
	bhi _020CADDC
	ldr r1, _020CAE30 ; =0x021CED34
	sub r2, r2, #0x70
	ldr r1, [r1, r2, lsl #3]
	and r0, r0, #0xff
	cmp r1, #0
	strneh r0, [r1]
	mov r1, r2, lsl #3
	ldr r0, _020CAE34 ; =0x021CED30
	mov r2, #1
	strh r2, [r0, r1]
	mov r0, #0
	b _020CAE28
_020CADDC:
	cmp r2, #0x60
	bne _020CADF4
	ldr r1, _020CAE38 ; =0x021CECEC
	mov r2, #1
	str r2, [r1, #4]
	b _020CAE28
_020CADF4:
	cmp r2, #0x62
	bne _020CAE0C
	ldr r1, _020CAE38 ; =0x021CECEC
	mov r2, #1
	str r2, [r1, #8]
	b _020CAE28
_020CAE0C:
	cmp r2, #0x67
	bne _020CAE28
	ldr r1, _020CAE38 ; =0x021CECEC
	ldr r1, [r1, #0x28]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
_020CAE28:
	bl sub_020CAC90
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAE30: .word 0x021CED34
_020CAE34: .word 0x021CED30
_020CAE38: .word 0x021CECEC
	arm_func_end sub_020CAD74

	arm_func_start sub_020CAE3C
sub_020CAE3C: ; 0x020CAE3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _020CAEC4 ; =0x021CECEC
	mov r2, #0
	ldr r0, _020CAEC8 ; =0x03006000
	str r2, [r1, #4]
	bl sub_020CB2F8
	ldr r0, _020CAEC4 ; =0x021CECEC
_020CAE70:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020CAE70
	ldr ip, _020CAEC4 ; =0x021CECEC
	mov r0, #0
	str r0, [ip, #4]
	mov r2, r0
	mov r1, #2
	mov r3, #1
	str r0, [ip, #8]
	bl sub_020CB564
	and r0, r5, #0xff
	orr r0, r0, #0x6100
	orr r0, r0, #0x2000000
	bl sub_020CB2F8
	ldr r1, _020CAECC ; =0x01010000
	mov r0, r4, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CAEC4: .word 0x021CECEC
_020CAEC8: .word 0x03006000
_020CAECC: .word 0x01010000
	arm_func_end sub_020CAE3C

	arm_func_start sub_020CAED0
sub_020CAED0: ; 0x020CAED0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsr #0x10
	and r0, r0, #0xff
	ldr r1, _020CAF28 ; =0x021CECEC
	orr r0, r0, #0x6300
	str r5, [r1, #0x20]
	orr r0, r0, #0x2000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	ldr r1, _020CAF2C ; =0x01010000
	mov r0, r6, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CAF28: .word 0x021CECEC
_020CAF2C: .word 0x01010000
	arm_func_end sub_020CAED0

	arm_func_start sub_020CAF30
sub_020CAF30: ; 0x020CAF30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020CAF90 ; =0x021CECEC
	and r0, r5, #0xff
	str r7, [r1, #0x20]
	orr r0, r0, #0x6500
	ldr r2, _020CAF94 ; =0x021CED30
	str r6, [r1, #0x24]
	mov r3, r5, lsl #3
	mov ip, #0
	ldr r1, _020CAF98 ; =0x021CED34
	strh ip, [r2, r3]
	orr r0, r0, #0x3000000
	str r4, [r1, r5, lsl #3]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CAF90: .word 0x021CECEC
_020CAF94: .word 0x021CED30
_020CAF98: .word 0x021CED34
	arm_func_end sub_020CAF30

	arm_func_start sub_020CAF9C
sub_020CAF9C: ; 0x020CAF9C
	stmfd sp!, {r3, lr}
	ldr r2, _020CAFC0 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CAF30
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAFC0: .word sub_020CAC88
	arm_func_end sub_020CAF9C

	arm_func_start sub_020CAFC4
sub_020CAFC4: ; 0x020CAFC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r0, r7, #0xff
	ldr r1, _020CB01C ; =0x021CECEC
	orr r0, r0, #0x6400
	str r5, [r1, #0x20]
	orr r0, r0, #0x2000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	ldr r1, _020CB020 ; =0x01010000
	mov r0, r6, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CB01C: .word 0x021CECEC
_020CB020: .word 0x01010000
	arm_func_end sub_020CAFC4

	arm_func_start sub_020CB024
sub_020CB024: ; 0x020CB024
	stmfd sp!, {r3, lr}
	ldr r2, _020CB048 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CAFC4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB048: .word sub_020CAC88
	arm_func_end sub_020CB024

	arm_func_start sub_020CB04C
sub_020CB04C: ; 0x020CB04C
	stmfd sp!, {r3, lr}
	cmp r0, #1
	beq _020CB06C
	cmp r0, #2
	beq _020CB07C
	cmp r0, #3
	beq _020CB074
	b _020CB084
_020CB06C:
	mov r0, #1
	b _020CB088
_020CB074:
	mov r0, #2
	b _020CB088
_020CB07C:
	mov r0, #3
	b _020CB088
_020CB084:
	mov r0, #0
_020CB088:
	cmp r0, #0
	ldreq r0, _020CB09C ; =0x0000FFFF
	ldmeqia sp!, {r3, pc}
	bl sub_020CAED0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB09C: .word 0x0000FFFF
	arm_func_end sub_020CB04C

	arm_func_start sub_020CB0A0
sub_020CB0A0: ; 0x020CB0A0
	stmfd sp!, {r3, lr}
	ldr r1, _020CB0C4 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB04C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB0C4: .word sub_020CAC88
	arm_func_end sub_020CB0A0

	arm_func_start sub_020CB0C8
sub_020CB0C8: ; 0x020CB0C8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mov ip, #0
	bne _020CB0EC
	cmp r1, #1
	moveq ip, #6
	cmp r1, #0
	moveq ip, #7
	b _020CB120
_020CB0EC:
	cmp r0, #1
	bne _020CB108
	cmp r1, #1
	moveq ip, #4
	cmp r1, #0
	moveq ip, #5
	b _020CB120
_020CB108:
	cmp r0, #2
	bne _020CB120
	cmp r1, #1
	moveq ip, #8
	cmp r1, #0
	moveq ip, #9
_020CB120:
	cmp ip, #0
	ldreq r0, _020CB140 ; =0x0000FFFF
	ldmeqia sp!, {r3, pc}
	mov r1, r2
	mov r0, ip
	mov r2, r3
	bl sub_020CAED0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB140: .word 0x0000FFFF
	arm_func_end sub_020CB0C8

	arm_func_start sub_020CB144
sub_020CB144: ; 0x020CB144
	stmfd sp!, {r3, lr}
	ldr r2, _020CB168 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CB0C8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB168: .word sub_020CAC88
	arm_func_end sub_020CB144

	arm_func_start sub_020CB16C
sub_020CB16C: ; 0x020CB16C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, _020CB214 ; =0x00996A00
	mov r6, r1
	bl sub_020C3E08
	bl sub_020CB67C
	cmp r0, #1
	beq _020CB1FC
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020CB29C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020CB1B4
	mov r0, #0
	mov r1, r0
	bl sub_020CB144
_020CB1B4:
	ldr r0, [sp]
	cmp r0, #0
	beq _020CB1CC
	mov r0, #1
	mov r1, #0
	bl sub_020CB144
_020CB1CC:
	mov r0, #1
	bl sub_020CB65C
	cmp r0, #0
	bne _020CB1FC
	ldr r5, _020CB214 ; =0x00996A00
	mov r4, #1
_020CB1E4:
	mov r0, r5
	bl sub_020C3E08
	mov r0, r4
	bl sub_020CB65C
	cmp r0, #0
	beq _020CB1E4
_020CB1FC:
	mov r1, r7
	mov r2, r6
	mov r0, #0xe
	bl sub_020CAED0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CB214: .word 0x00996A00
	arm_func_end sub_020CB16C

	arm_func_start sub_020CB218
sub_020CB218: ; 0x020CB218
	stmfd sp!, {r3, lr}
	ldr r0, _020CB23C ; =sub_020CAC88
	add r1, sp, #0
	bl sub_020CB16C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB23C: .word sub_020CAC88
	arm_func_end sub_020CB218

	arm_func_start sub_020CB240
sub_020CB240: ; 0x020CB240
	ldr r1, _020CB250 ; =0x021CECEC
	ldr ip, _020CB254 ; =sub_020CB258
	str r0, [r1, #0x14]
	bx ip
	; .align 2, 0
_020CB250: .word 0x021CECEC
_020CB254: .word sub_020CB258
	arm_func_end sub_020CB240

	arm_func_start sub_020CB258
sub_020CB258: ; 0x020CB258
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020CB67C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #2
	bl sub_020CB024
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CB258

	arm_func_start sub_020CB284
sub_020CB284: ; 0x020CB284
	ldr ip, _020CB298 ; =sub_020CB024
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #3
	bx ip
	; .align 2, 0
_020CB298: .word sub_020CB024
	arm_func_end sub_020CB284

	arm_func_start sub_020CB29C
sub_020CB29C: ; 0x020CB29C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	add r1, sp, #0
	mov r0, #0
	bl sub_020CAF9C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020CB2D8
	ldrh r1, [sp]
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	str r1, [r5, #0]
_020CB2D8:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r1, [sp]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CB29C

	arm_func_start sub_020CB2F8
sub_020CB2F8: ; 0x020CB2F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #8
	mov r4, #0
_020CB308:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020CB308
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020CB2F8

	arm_func_start sub_020CB324
sub_020CB324: ; 0x020CB324
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r3, _020CB548 ; =0x021CECEC
	mov sl, r0
	ldr r0, [r3, #0xc]
	mov sb, r1
	mov fp, r2
	mov r4, #0
	bl sub_020CB820
	ldr r1, _020CB54C ; =0x04000208
	mov r0, r4
	ldrh r8, [r1]
	strh r0, [r1]
	bl sub_020C3D98
	str r0, [sp, #8]
	ldr r0, _020CB550 ; =0x003FFFFF
	bl sub_020C164C
	str r0, [sp, #4]
	bl sub_020C3808
	cmp r0, #0
	movne r0, #8
	moveq r0, r4
	orr r0, r0, #0x40000
	bl sub_020C15F0
	ldr r0, [sp, #8]
	bl sub_020C3DAC
	ldr r2, _020CB54C ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	tst sl, #8
	strh r0, [r2]
	beq _020CB3B4
	ldr r0, _020CB554 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	biceq sl, sl, #8
_020CB3B4:
	tst sl, #0x10
	beq _020CB3C8
	bl sub_020D0A04
	cmp r0, #0
	biceq sl, sl, #0x10
_020CB3C8:
	mov r1, #0x4000000
	add r0, r1, #0x1000
	ldr r5, [r1, #0]
	ldr r6, [r0, #0]
	bl sub_020CB67C
	str r0, [sp]
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_020CB29C
	mov r0, #2
	mov r1, #0
	bl sub_020CB144
	ldr r2, _020CB558 ; =0x027FFC3C
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
_020CB404:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB404
	ldr r0, [r2, #0]
	mov r2, #0x4000000
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	add r1, r2, #0x1000
	bic r0, r0, #0x30000
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	bic r0, r0, #0x10000
	str r0, [r1, #0]
	ldr r2, _020CB558 ; =0x027FFC3C
_020CB440:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB440
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	ldr r2, _020CB558 ; =0x027FFC3C
_020CB45C:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _020CB45C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	orr r0, sl, r0, lsl #5
	orr r0, r0, r1, lsl #6
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r0, sb, fp
	mov r0, r0, lsl #0x10
	mov sb, r0, lsr #0x10
_020CB490:
	mov r0, r7
	mov r1, sb
	bl sub_020CAE3C
	cmp r0, #0
	bne _020CB490
	bl sub_020C42B8
	tst sl, #8
	beq _020CB4C0
	ldr r0, _020CB55C ; =0x04000214
	ldr r0, [r0, #0]
	tst r0, #0x100000
	movne r4, #1
_020CB4C0:
	cmp r4, #0
	bne _020CB500
	ldr r0, [sp]
	cmp r0, #1
	mov r0, #1
	bne _020CB4EC
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl sub_020CB564
	b _020CB4F0
_020CB4EC:
	bl sub_020CB0A0
_020CB4F0:
	mov r0, #0x4000000
	str r5, [r0, #0]
	add r0, r0, #0x1000
	str r6, [r0, #0]
_020CB500:
	ldr r0, _020CB560 ; =0x00708100
	bl sub_020C3E08
	bl sub_020C3D98
	ldr r0, [sp, #4]
	bl sub_020C15F0
	ldr r0, [sp, #8]
	bl sub_020C3DAC
	ldr r1, _020CB54C ; =0x04000208
	cmp r4, #0
	ldrh r0, [r1]
	strh r8, [r1]
	beq _020CB534
	bl sub_020CB218
_020CB534:
	ldr r0, _020CB548 ; =0x021CECEC
	ldr r0, [r0, #0x18]
	bl sub_020CB820
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CB548: .word 0x021CECEC
_020CB54C: .word 0x04000208
_020CB550: .word 0x003FFFFF
_020CB554: .word 0x027FFC40
_020CB558: .word 0x027FFC3C
_020CB55C: .word 0x04000214
_020CB560: .word 0x00708100
	arm_func_end sub_020CB324

	arm_func_start sub_020CB564
sub_020CB564: ; 0x020CB564
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r3
	cmp r0, #0
	beq _020CB5F4
	cmp r0, #1
	bne _020CB648
	cmp r2, #0
	bne _020CB5A8
	ldr r1, _020CB650 ; =0x027FFC3C
	ldr r0, _020CB654 ; =0x021CECEC
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	cmp r0, #7
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_020CB5A8:
	cmp r5, #0
	beq _020CB5D4
	cmp r4, #0
	beq _020CB5C4
	mov r0, r5
	bl sub_020CB0A0
	b _020CB5D4
_020CB5C4:
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl sub_020CB04C
_020CB5D4:
	ldr r2, _020CB658 ; =0x04000304
	ldr r0, _020CB654 ; =0x021CECEC
	ldrh r1, [r2]
	orr r1, r1, #1
	strh r1, [r2]
	ldr r0, [r0, #0x14]
	bl sub_020CB258
	b _020CB648
_020CB5F4:
	mov r0, #0
	bl sub_020CB258
	ldr r3, _020CB658 ; =0x04000304
	ldr r1, _020CB650 ; =0x027FFC3C
	ldrh r2, [r3]
	ldr r0, _020CB654 ; =0x021CECEC
	cmp r5, #0
	bic r2, r2, #1
	strh r2, [r3]
	ldr r1, [r1, #0]
	str r1, [r0, #0x10]
	beq _020CB648
	cmp r4, #0
	beq _020CB638
	mov r0, r5
	bl sub_020CB0A0
	b _020CB648
_020CB638:
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl sub_020CB04C
_020CB648:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CB650: .word 0x027FFC3C
_020CB654: .word 0x021CECEC
_020CB658: .word 0x04000304
	arm_func_end sub_020CB564

	arm_func_start sub_020CB65C
sub_020CB65C: ; 0x020CB65C
	ldr ip, _020CB678 ; =sub_020CB564
	mov r1, #0
	cmp r0, #1
	movne r0, #0
	mov r2, r1
	mov r3, #1
	bx ip
	; .align 2, 0
_020CB678: .word sub_020CB564
	arm_func_end sub_020CB65C

	arm_func_start sub_020CB67C
sub_020CB67C: ; 0x020CB67C
	ldr r0, _020CB694 ; =0x04000304
	ldrh r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_020CB694: .word 0x04000304
	arm_func_end sub_020CB67C

	arm_func_start sub_020CB698
sub_020CB698: ; 0x020CB698
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	and r0, r6, #0xff
	ldr r1, _020CB6DC ; =0x021CECEC
	orr r0, r0, #0x6600
	str r5, [r1, #0x20]
	orr r0, r0, #0x3000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB6DC: .word 0x021CECEC
	arm_func_end sub_020CB698

	arm_func_start sub_020CB6E0
sub_020CB6E0: ; 0x020CB6E0
	stmfd sp!, {r3, lr}
	ldr r1, _020CB704 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB698
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB704: .word sub_020CAC88
	arm_func_end sub_020CB6E0

	arm_func_start sub_020CB708
sub_020CB708: ; 0x020CB708
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _020CB748 ; =0x021CECEC
	ldr r0, _020CB74C ; =0x03006700
	str r5, [r1, #0x20]
	str r4, [r1, #0x24]
	str r6, [r1, #0x28]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB748: .word 0x021CECEC
_020CB74C: .word 0x03006700
	arm_func_end sub_020CB708

	arm_func_start sub_020CB750
sub_020CB750: ; 0x020CB750
	stmfd sp!, {r3, lr}
	ldr r1, _020CB774 ; =sub_020CAC88
	add r2, sp, #0
	bl sub_020CB708
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB774: .word sub_020CAC88
	arm_func_end sub_020CB750

	arm_func_start sub_020CB778
sub_020CB778: ; 0x020CB778
	cmp r0, #0
	ldrne r2, [r0]
	strne r2, [r1, #8]
	strne r1, [r0]
	bx lr
	arm_func_end sub_020CB778

	arm_func_start sub_020CB78C
sub_020CB78C: ; 0x020CB78C
	cmp r0, #0
	bxeq lr
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020CB7B0
	mov r2, #0
	str r2, [r1, #8]
	str r1, [r0, #0]
	bx lr
_020CB7B0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _020CB7CC
_020CB7BC:
	mov r2, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020CB7BC
_020CB7CC:
	str r0, [r1, #8]
	str r1, [r2, #8]
	bx lr
	arm_func_end sub_020CB78C

	arm_func_start sub_020CB7D8
sub_020CB7D8: ; 0x020CB7D8
	cmp r0, #0
	ldrne r2, [r0]
	movne r3, r2
	cmpne r2, #0
	bxeq lr
_020CB7EC:
	cmp r2, r1
	bne _020CB80C
	cmp r2, r3
	ldreq r1, [r2, #8]
	streq r1, [r0]
	ldrne r0, [r2, #8]
	strne r0, [r3, #8]
	bx lr
_020CB80C:
	mov r3, r2
	ldr r2, [r2, #8]
	cmp r2, #0
	bne _020CB7EC
	bx lr
	arm_func_end sub_020CB7D8

	arm_func_start sub_020CB820
sub_020CB820: ; 0x020CB820
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
_020CB82C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	blx r1
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _020CB82C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020CB820

	arm_func_start sub_020CB848
sub_020CB848: ; 0x020CB848
	ldr ip, _020CB858 ; =sub_020CB778
	mov r1, r0
	ldr r0, _020CB85C ; =0x021CECF8
	bx ip
	; .align 2, 0
_020CB858: .word sub_020CB778
_020CB85C: .word 0x021CECF8
	arm_func_end sub_020CB848

	arm_func_start sub_020CB860
sub_020CB860: ; 0x020CB860
	ldr ip, _020CB870 ; =sub_020CB78C
	mov r1, r0
	ldr r0, _020CB874 ; =0x021CED04
	bx ip
	; .align 2, 0
_020CB870: .word sub_020CB78C
_020CB874: .word 0x021CED04
	arm_func_end sub_020CB860

	arm_func_start sub_020CB878
sub_020CB878: ; 0x020CB878
	ldr ip, _020CB888 ; =sub_020CB7D8
	mov r1, r0
	ldr r0, _020CB88C ; =0x021CECF8
	bx ip
	; .align 2, 0
_020CB888: .word sub_020CB7D8
_020CB88C: .word 0x021CECF8
	arm_func_end sub_020CB878

	arm_func_start sub_020CB890
sub_020CB890: ; 0x020CB890
	ldr ip, _020CB8A0 ; =sub_020CB7D8
	mov r1, r0
	ldr r0, _020CB8A4 ; =0x021CED04
	bx ip
	; .align 2, 0
_020CB8A0: .word sub_020CB7D8
_020CB8A4: .word 0x021CED04
	arm_func_end sub_020CB890

	.bss


	.global Unk_021CECEC
Unk_021CECEC: ; 0x021CECEC
	.space 0x2

	.global Unk_021CECF0
Unk_021CECF0: ; 0x021CECF0
	.space 0x4

	.global Unk_021CECF4
Unk_021CECF4: ; 0x021CECF4
	.space 0x4

	.global Unk_021CECF8
Unk_021CECF8: ; 0x021CECF8
	.space 0x4

	.global Unk_021CECFC
Unk_021CECFC: ; 0x021CECFC
	.space 0x4

	.global Unk_021CED00
Unk_021CED00: ; 0x021CED00
	.space 0x4

	.global Unk_021CED04
Unk_021CED04: ; 0x021CED04
	.space 0x4

	.global Unk_021CED08
Unk_021CED08: ; 0x021CED08
	.space 0x10

	.global Unk_021CED18
Unk_021CED18: ; 0x021CED18
	.space 0x18

	.global Unk_021CED30
Unk_021CED30: ; 0x021CED30
	.space 0x28

