	.include "macros/function.inc"
	.include "overlay018/ov18_0222BE30.inc"

	

	.text


	arm_func_start ov18_0222BE30
ov18_0222BE30: ; 0x0222BE30
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r5, sp, #0x1c
	mov r4, #0
	strh r4, [r5, #4]
	mov r3, #0x11
	strh r4, [r5, #6]
	mov r2, #0x12
	mov r0, #0x128
	mov r1, #4
	strh r4, [r5]
	strh r4, [r5, #2]
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov18_02245068
	ldr r8, _0222C17C ; =0x0225329C
	mov r1, #0xff
	str r0, [r8]
	strb r1, [r0, #0x11c]
	ldr r0, [r8]
	mov r6, r4
	strb r6, [r0, #0x121]
	mov r5, r4
	ldr r0, [r8]
	mov r1, #1
	strb r1, [r0, #0x123]
	ldr r0, [r8]
	ldr r7, _0222C180 ; =0xC1FFFCFF
	strb r1, [r0, #0x124]
	mov r4, #0x34
_0222BEA8:
	mov r0, r5
	mov r1, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x30]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r1, #0]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1, #0]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x30]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #0x2f
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222BEA8
	mov r6, #0
	ldr r5, _0222C184 ; =0x02248D38
	ldr r8, _0222C17C ; =0x0225329C
	ldr r7, _0222C180 ; =0xC1FFFCFF
	mov r4, r6
_0222BF18:
	ldrb r1, [r5], #1
	mov r0, r4
	bl ov18_02243F60
	ldr r1, [r8]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0xec]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	ldr r0, [r1, #0]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1, #0]
	ldr r0, [r8]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #4
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _0222BF18
	mov sl, #0
	ldr sb, _0222C188 ; =0x02248D30
	ldr r4, _0222C17C ; =0x0225329C
	mov r8, sl
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov fp, sl
_0222BF94:
	ldrb r1, [sb], #1
	mov r0, r8
	mov r2, r7
	bl ov18_02243F8C
	ldr r2, [r4, #0]
	mov r1, r6
	add r2, r2, sl, lsl #2
	str r0, [r2, #0xfc]
	ldr r0, [r4, #0]
	mov r2, r5
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0xfc]
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4, #0]
	mov r1, r6
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #2
	blt _0222BF94
	mov sl, #0
	strh sl, [sp, #0x16]
_0222BFF8:
	mov sb, #0
	ldr r6, _0222C18C ; =0x02249B54
	ldr r4, _0222C17C ; =0x0225329C
	str sb, [sp, #0x10]
	mov fp, #2
_0222C00C:
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0x1c
	mov r2, #2
	mov r3, r0
	bl ov18_02244574
	ldr r1, [r4, #0]
	mov r2, sb, lsl #2
	add r1, r1, sl, lsl #4
	str r0, [r1, sb, lsl #2]
	mov r0, #0
	ldr r7, [sp, #0x10]
	strh r0, [sp, #0x1c]
	mov r8, r0
	add r5, r2, sl, lsl #4
_0222C050:
	ldr r1, [r6, sl, lsl #2]
	mov r0, r7, lsl #1
	ldrh r1, [r1, r0]
	ldrh r0, [sp, #0x22]
	strh r1, [sp, #0x14]
	stmia sp, {r0, fp}
	mov r0, #0x480
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldrh r1, [sp, #0x1c]
	ldrh r2, [sp, #0x1e]
	ldrh r3, [sp, #0x20]
	ldr r0, [r0, r5]
	bl ov18_02244A9C
	ldrh r0, [sp, #0x1c]
	add r8, r8, #1
	cmp r8, #0xc
	add r0, r0, #0x12
	add r7, r7, #1
	strh r0, [sp, #0x1c]
	blt _0222C050
	cmp sl, #0
	bne _0222C0D0
	ldr r1, [sp, #0x18]
	mov r0, #0
	mov r2, #1
	bl ov18_022439E0
	ldr r1, [r4, #0]
	add r1, r1, sb, lsl #2
	str r0, [r1, #0x104]
_0222C0D0:
	ldr r0, [sp, #0x10]
	add sb, sb, #1
	add r0, r0, #0xc
	str r0, [sp, #0x10]
	cmp sb, #4
	blt _0222C00C
	add sl, sl, #1
	cmp sl, #3
	blt _0222BFF8
	mov r0, #0
	mov r1, #0x40
	mov r2, #1
	bl ov18_02243F8C
	ldr r3, _0222C17C ; =0x0225329C
	mvn r1, #0
	ldr r4, [r3, #0]
	mov r2, #0x200
	str r0, [r4, #0x114]
	ldr r0, [r3, #0]
	mov r3, #0
	ldr r0, [r0, #0x114]
	bl ov18_02243BD0
	ldr r0, _0222C17C ; =0x0225329C
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #2
	ldr r0, [r0, #0x114]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222C190 ; =ov18_0222C220
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r3, _0222C17C ; =0x0225329C
	mov r1, #0
	ldr r4, [r3, #0]
	mov r2, #0xc0
	str r0, [r4, #0x118]
	ldr r0, [r3, #0]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222C17C: .word 0x0225329C
_0222C180: .word 0xC1FFFCFF
_0222C184: .word 0x02248D38
_0222C188: .word 0x02248D30
_0222C18C: .word 0x02249B54
_0222C190: .word ov18_0222C220
	arm_func_end ov18_0222BE30

	arm_func_start ov18_0222C194
ov18_0222C194: ; 0x0222C194
	stmfd sp!, {r3, lr}
	ldr r0, _0222C1C0 ; =0x0225329C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x114]
	bl ov18_02243B3C
	ldr r0, _0222C1C0 ; =0x0225329C
	ldr r1, _0222C1C4 ; =ov18_0222D7A8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x118]
	bl ov18_022463A4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222C1C0: .word 0x0225329C
_0222C1C4: .word ov18_0222D7A8
	arm_func_end ov18_0222C194

	arm_func_start ov18_0222C1C8
ov18_0222C1C8: ; 0x0222C1C8
	ldr r0, _0222C1D8 ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x11c]
	bx lr
	; .align 2, 0
_0222C1D8: .word 0x0225329C
	arm_func_end ov18_0222C1C8

	arm_func_start ov18_0222C1DC
ov18_0222C1DC: ; 0x0222C1DC
	ldr r1, _0222C1EC ; =0x0225329C
	ldr r1, [r1, #0]
	strb r0, [r1, #0x123]
	bx lr
	; .align 2, 0
_0222C1EC: .word 0x0225329C
	arm_func_end ov18_0222C1DC

	arm_func_start ov18_0222C1F0
ov18_0222C1F0: ; 0x0222C1F0
	ldr r1, _0222C200 ; =0x0225329C
	ldr r1, [r1, #0]
	strb r0, [r1, #0x124]
	bx lr
	; .align 2, 0
_0222C200: .word 0x0225329C
	arm_func_end ov18_0222C1F0

	arm_func_start ov18_0222C204
ov18_0222C204: ; 0x0222C204
	ldr r0, _0222C21C ; =0x0225329C
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0222C21C: .word 0x0225329C
	arm_func_end ov18_0222C204

	arm_func_start ov18_0222C220
ov18_0222C220: ; 0x0222C220
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C2A8 ; =0x0225329C
	mov r4, r0
	ldr r3, [r2, #0]
	ldr r1, _0222C2AC ; =0x01FF0000
	ldr r0, [r3, #0x30]
	ldr r0, [r0, #0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	mov r0, r1, lsr #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x51
	ldrb r0, [r3, #0x11d]
	mov r1, #0
	ble _0222C274
	bl ov18_0222CECC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222C274:
	mov r2, #0x51
	bl ov18_0222CECC
	ldr r0, _0222C2A8 ; =0x0225329C
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C2B0 ; =ov18_0222C2B4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222C2A8: .word 0x0225329C
_0222C2AC: .word 0x01FF0000
_0222C2B0: .word ov18_0222C2B4
	arm_func_end ov18_0222C220

	arm_func_start ov18_0222C2B4
ov18_0222C2B4: ; 0x0222C2B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C33C ; =0x0225329C
	mov r4, r0
	ldr r3, [r2, #0]
	ldr r1, _0222C340 ; =0x01FF0000
	ldr r0, [r3, #0x60]
	ldr r0, [r0, #0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	mov r0, r1, lsr #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x67
	ldrb r0, [r3, #0x11d]
	mov r1, #1
	ble _0222C308
	bl ov18_0222CECC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222C308:
	mov r2, #0x67
	bl ov18_0222CECC
	ldr r0, _0222C33C ; =0x0225329C
	mov r1, #2
	ldr r0, [r0, #0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C344 ; =ov18_0222C348
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222C33C: .word 0x0225329C
_0222C340: .word 0x01FF0000
_0222C344: .word ov18_0222C348
	arm_func_end ov18_0222C2B4

	arm_func_start ov18_0222C348
ov18_0222C348: ; 0x0222C348
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C3D0 ; =0x0225329C
	mov r4, r0
	ldr r3, [r2, #0]
	ldr r1, _0222C3D4 ; =0x01FF0000
	ldr r0, [r3, #0x90]
	ldr r0, [r0, #0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	mov r0, r1, lsr #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x7d
	ldrb r0, [r3, #0x11d]
	mov r1, #2
	ble _0222C39C
	bl ov18_0222CECC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222C39C:
	mov r2, #0x7d
	bl ov18_0222CECC
	ldr r0, _0222C3D0 ; =0x0225329C
	mov r1, #3
	ldr r0, [r0, #0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C3D8 ; =ov18_0222C3DC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222C3D0: .word 0x0225329C
_0222C3D4: .word 0x01FF0000
_0222C3D8: .word ov18_0222C3DC
	arm_func_end ov18_0222C348

	arm_func_start ov18_0222C3DC
ov18_0222C3DC: ; 0x0222C3DC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222C464 ; =0x0225329C
	mov r4, r0
	ldr r3, [r2, #0]
	ldr r1, _0222C468 ; =0x01FF0000
	ldr r0, [r3, #0xc0]
	ldr r0, [r0, #0]
	and r1, r0, r1
	and r0, r0, #0xff
	sub r2, r0, #0xc
	mov r0, r1, lsr #0x10
	str r0, [sp, #4]
	str r2, [sp]
	cmp r2, #0x93
	ldrb r0, [r3, #0x11d]
	mov r1, #3
	ble _0222C430
	bl ov18_0222CECC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222C430:
	mov r2, #0x93
	bl ov18_0222CECC
	ldr r0, _0222C464 ; =0x0225329C
	mov r1, #4
	ldr r0, [r0, #0]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	ldr r1, _0222C46C ; =ov18_0222C470
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222C464: .word 0x0225329C
_0222C468: .word 0x01FF0000
_0222C46C: .word ov18_0222C470
	arm_func_end ov18_0222C3DC

	arm_func_start ov18_0222C470
ov18_0222C470: ; 0x0222C470
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222C4F4 ; =0x0225329C
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #0xfc]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	mov r1, #4
	sub r2, r0, #0xc
	str r2, [sp]
	cmp r2, #0xaa
	ble _0222C4C8
	ldr r0, _0222C4F4 ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0222C4C8:
	ldr r0, _0222C4F4 ; =0x0225329C
	mov r2, #0xaa
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x11d]
	bl ov18_0222CECC
	bl ov18_0222D294
	ldr r1, _0222C4F8 ; =ov18_0222C4FC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222C4F4: .word 0x0225329C
_0222C4F8: .word ov18_0222C4FC
	arm_func_end ov18_0222C470

	arm_func_start ov18_0222C4FC
ov18_0222C4FC: ; 0x0222C4FC
	stmfd sp!, {r3, lr}
	bl ov18_0222C514
	bl ov18_0222C6FC
	bl ov18_0222CA44
	bl ov18_0222CC9C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222C4FC

	arm_func_start ov18_0222C514
ov18_0222C514: ; 0x0222C514
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222C6D8 ; =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C6DC ; =0x0225329C
	mvn r1, #0
	ldr r0, [r0, #0]
	ldr r7, _0222C6E0 ; =0x02248D80
	ldr r6, _0222C6E4 ; =0x02248D44
	strb r1, [r0, #0x11e]
	mov r4, #0
	add r5, sp, #0
_0222C550:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C5B0
	ldr r0, _0222C6DC ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _0222C594
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C594:
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222C6DC ; =0x0225329C
	add sp, sp, #8
	ldr r0, [r0, #0]
	strb r4, [r0, #0x11e]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C5B0:
	add r4, r4, #1
	cmp r4, #0x2f
	add r7, r7, #4
	blt _0222C550
	ldr r6, _0222C6E8 ; =0x02248D70
	ldr r7, _0222C6EC ; =0x02248D60
	mov r4, #0
	add r5, sp, #0
_0222C5D0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C65C
	cmp r4, #3
	bne _0222C60C
	ldr r0, _0222C6DC ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x123]
	cmp r0, #0
	beq _0222C628
_0222C60C:
	cmp r4, #2
	bne _0222C638
	ldr r0, _0222C6DC ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _0222C638
_0222C628:
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C638:
	ldr r0, _0222C6F0 ; =0x02249B60
	ldr r0, [r0, r4, lsl #2]
	bl ov18_0223E994
	ldr r0, _0222C6DC ; =0x0225329C
	add r1, r4, #0x2f
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C65C:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222C5D0
	ldr r6, _0222C6F4 ; =0x02248D58
	ldr r5, _0222C6F8 ; =0x02248D40
	mov r7, #0
	add r4, sp, #0
_0222C680:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	beq _0222C6C0
	mov r0, #0
	bl ov18_0223E994
	ldr r0, _0222C6DC ; =0x0225329C
	add r1, r7, #0x33
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C6C0:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222C680
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C6D8: .word 0x02249734
_0222C6DC: .word 0x0225329C
_0222C6E0: .word 0x02248D80
_0222C6E4: .word 0x02248D44
_0222C6E8: .word 0x02248D70
_0222C6EC: .word 0x02248D60
_0222C6F0: .word 0x02249B60
_0222C6F4: .word 0x02248D58
_0222C6F8: .word 0x02248D40
	arm_func_end ov18_0222C514

	arm_func_start ov18_0222C6FC
ov18_0222C6FC: ; 0x0222C6FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0222C9A8 ; =0x0225329C
	ldr r0, _0222C9AC ; =0x02249734
	ldr r1, [r1, #0]
	mov r2, #0
	strb r2, [r1, #0x11c]
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0222C9B0 ; =0x02248D80
	ldr r6, _0222C9B4 ; =0x02248D44
	mov r4, #0
	add r5, sp, #0
_0222C738:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C7B8
	ldr r1, _0222C9A8 ; =0x0225329C
	ldr r3, [r1, #0]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r4
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r3, #0x11d]
	ldr r0, _0222C9B8 ; =0x02249B48
	ldr r0, [r0, r2, lsl #2]
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222C7A0
	mov r0, #0
	bl ov18_0222D148
_0222C7A0:
	ldr r0, _0222C9A8 ; =0x0225329C
	ldr r0, [r0, #0]
	strb r4, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C7B8:
	add r4, r4, #1
	cmp r4, #0x2f
	add r7, r7, #4
	blt _0222C738
	ldr r6, _0222C9BC ; =0x02248D78
	ldr r7, _0222C9C0 ; =0x02248D68
	mov r4, #2
	add r5, sp, #0
_0222C7D8:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C858
	ldr r1, _0222C9A8 ; =0x0225329C
	add r2, r4, #0x2f
	ldr r3, [r1, #0]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9C4 ; =0x02248FE4
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222C83C
	mov r0, #0
	bl ov18_0222D148
_0222C83C:
	ldr r0, _0222C9A8 ; =0x0225329C
	add r1, r4, #0x2f
	ldr r0, [r0, #0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C858:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222C7D8
	ldr r7, _0222C9C8 ; =0x02248D58
	ldr r6, _0222C9CC ; =0x02248D40
	mov r4, #0
	add r5, sp, #0
_0222C87C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C8DC
	ldr r1, _0222C9A8 ; =0x0225329C
	add r2, r4, #0x33
	ldr r3, [r1, #0]
	add r0, r3, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9D0 ; =0x02248D34
	ldrb r0, [r0, r4]
	strb r0, [r3, #0x11c]
	ldr r0, [r1, #0]
	strb r2, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C8DC:
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #4
	blt _0222C87C
	ldr r0, _0222C9D4 ; =0x02248D60
	ldr r1, _0222C9D8 ; =0x02248D70
	add r2, sp, #0
	bl ov18_02244C50
	add r0, sp, #0
	bl ov18_022456C8
	cmp r0, #0
	beq _0222C948
	ldr r0, _0222C9A8 ; =0x0225329C
	ldr r0, [r0, #0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x2f
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov18_0222C9E4
	ldr r0, _0222C9A8 ; =0x0225329C
	mov r1, #0x2f
	ldr r0, [r0, #0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222C948:
	ldr r0, _0222C9DC ; =0x02248D64
	ldr r1, _0222C9E0 ; =0x02248D74
	add r2, sp, #0
	bl ov18_02244C50
	add r0, sp, #0
	bl ov18_022456C8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222C9A8 ; =0x0225329C
	ldr r0, [r0, #0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x30
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov18_0222CA14
	ldr r0, _0222C9A8 ; =0x0225329C
	mov r1, #0x30
	ldr r0, [r0, #0]
	strb r1, [r0, #0x121]
	bl ov18_0222D294
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C9A8: .word 0x0225329C
_0222C9AC: .word 0x02249734
_0222C9B0: .word 0x02248D80
_0222C9B4: .word 0x02248D44
_0222C9B8: .word 0x02249B48
_0222C9BC: .word 0x02248D78
_0222C9C0: .word 0x02248D68
_0222C9C4: .word 0x02248FE4
_0222C9C8: .word 0x02248D58
_0222C9CC: .word 0x02248D40
_0222C9D0: .word 0x02248D34
_0222C9D4: .word 0x02248D60
_0222C9D8: .word 0x02248D70
_0222C9DC: .word 0x02248D64
_0222C9E0: .word 0x02248D74
	arm_func_end ov18_0222C6FC

	arm_func_start ov18_0222C9E4
ov18_0222C9E4: ; 0x0222C9E4
	stmfd sp!, {r3, lr}
	ldr r0, _0222CA10 ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #2
	moveq r0, #0
	movne r0, #2
	bl ov18_0222D148
	mov r0, #1
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222CA10: .word 0x0225329C
	arm_func_end ov18_0222C9E4

	arm_func_start ov18_0222CA14
ov18_0222CA14: ; 0x0222CA14
	stmfd sp!, {r3, lr}
	ldr r0, _0222CA40 ; =0x0225329C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_0222D148
	mov r0, #1
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222CA40: .word 0x0225329C
	arm_func_end ov18_0222CA14

	arm_func_start ov18_0222CA44
ov18_0222CA44: ; 0x0222CA44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _0222CC28 ; =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0222CC08
	ldr r7, _0222CC2C ; =0x02248D80
	ldr r5, _0222CC30 ; =0x02248D44
	mov r6, #0
	add r4, sp, #0
_0222CA6C:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222CAB0
	ldr r0, _0222CC34 ; =0x0225329C
	ldr r0, [r0, #0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r6
	bne _0222CC08
	mov r0, r6
	bl ov18_0222CC48
	b _0222CC10
_0222CAB0:
	add r6, r6, #1
	cmp r6, #0x2f
	add r7, r7, #4
	blt _0222CA6C
	ldr r6, _0222CC38 ; =0x02248D78
	ldr r7, _0222CC3C ; =0x02248D68
	mov r4, #2
	add r5, sp, #0
_0222CAD0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02244C50
	mov r0, r5
	bl ov18_02245530
	cmp r0, #0
	beq _0222CB90
	ldr r1, _0222CC34 ; =0x0225329C
	add r0, r4, #0x2f
	ldr r1, [r1, #0]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _0222CC08
	bl ov18_0222CC48
	cmp r4, #3
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222CC34 ; =0x0225329C
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x122]
	add r1, r1, #1
	strb r1, [r2, #0x122]
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x122]
	cmp r1, #0x28
	addlo sp, sp, #8
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, #0x123]
	cmp r1, #0
	bne _0222CB70
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222CC34 ; =0x0225329C
	mvn r1, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	strb r1, [r0, #0x11e]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222CB70:
	mov r1, #0x80
	strb r1, [r2, #0x11c]
	ldr r1, [r0, #0]
	add sp, sp, #8
	ldrb r0, [r1, #0x122]
	sub r0, r0, #7
	strb r0, [r1, #0x122]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222CB90:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #4
	add r7, r7, #4
	blt _0222CAD0
	ldr r6, _0222CC40 ; =0x02248D58
	ldr r5, _0222CC44 ; =0x02248D40
	mov r7, #0
	add r4, sp, #0
_0222CBB4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02244C50
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	beq _0222CBF8
	ldr r1, _0222CC34 ; =0x0225329C
	add r0, r7, #0x33
	ldr r1, [r1, #0]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _0222CC08
	bl ov18_0222CC48
	b _0222CC10
_0222CBF8:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #4
	blt _0222CBB4
_0222CC08:
	mvn r0, #0
	bl ov18_0222CC48
_0222CC10:
	ldr r0, _0222CC34 ; =0x0225329C
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x122]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222CC28: .word 0x02249734
_0222CC2C: .word 0x02248D80
_0222CC30: .word 0x02248D44
_0222CC34: .word 0x0225329C
_0222CC38: .word 0x02248D78
_0222CC3C: .word 0x02248D68
_0222CC40: .word 0x02248D58
_0222CC44: .word 0x02248D40
	arm_func_end ov18_0222CA44

	arm_func_start ov18_0222CC48
ov18_0222CC48: ; 0x0222CC48
	stmfd sp!, {r4, lr}
	ldr r1, _0222CC98 ; =0x0225329C
	mov r4, r0
	ldr r1, [r1, #0]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1f]
	cmp r4, r1
	ldmeqia sp!, {r4, pc}
	mov r1, #1
	bl ov18_0222D1CC
	ldr r0, _0222CC98 ; =0x0225329C
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1f]
	bl ov18_0222D1CC
	ldr r0, _0222CC98 ; =0x0225329C
	ldr r0, [r0, #0]
	strb r4, [r0, #0x11f]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222CC98: .word 0x0225329C
	arm_func_end ov18_0222CC48

	arm_func_start ov18_0222CC9C
ov18_0222CC9C: ; 0x0222CC9C
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCB8
	mov r0, #0
	bl ov18_0222D370
_0222CCB8:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCD0
	mov r0, #1
	bl ov18_0222D370
_0222CCD0:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CCE8
	mov r0, #2
	bl ov18_0222D370
_0222CCE8:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CD00
	mov r0, #3
	bl ov18_0222D370
_0222CD00:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0222CE18
	ldr r2, _0222CEBC ; =0x0225329C
	ldr r0, [r2, #0]
	add r1, r0, #0x100
	ldrsb r4, [r1, #0x21]
	cmp r4, #0x2f
	bge _0222CD70
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _0222CD40
	mov r0, #9
	bl ov18_0223E994
	ldmia sp!, {r4, pc}
_0222CD40:
	ldrb r3, [r0, #0x11d]
	ldr r1, _0222CEC0 ; =0x02249B48
	ldr r1, [r1, r3, lsl #2]
	ldrb r1, [r1, r4]
	strb r1, [r0, #0x11c]
	ldr r0, [r2, #0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, #0
	bl ov18_0222D148
	ldmia sp!, {r4, pc}
_0222CD70:
	sub r1, r4, #0x2f
	cmp r1, #4
	bge _0222CE08
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0222CDD8
_0222CD88: ; jump table
	b _0222CD98 ; case 0
	b _0222CDA0 ; case 1
	b _0222CDA8 ; case 2
	b _0222CDC0 ; case 3
_0222CD98:
	bl ov18_0222C9E4
	ldmia sp!, {r4, pc}
_0222CDA0:
	bl ov18_0222CA14
	ldmia sp!, {r4, pc}
_0222CDA8:
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _0222CDD8
	mov r0, #9
	bl ov18_0223E994
	ldmia sp!, {r4, pc}
_0222CDC0:
	ldrb r1, [r0, #0x123]
	cmp r1, #0
	bne _0222CDD8
	mov r0, #9
	bl ov18_0223E994
	ldmia sp!, {r4, pc}
_0222CDD8:
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _0222CDEC
	mov r0, #0
	bl ov18_0222D148
_0222CDEC:
	ldr r1, _0222CEC4 ; =0x02248FE4
	sub r2, r4, #0x2f
	ldr r0, _0222CEBC ; =0x0225329C
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0]
	strb r1, [r0, #0x11c]
	ldmia sp!, {r4, pc}
_0222CE08:
	ldr r1, _0222CEC8 ; =0x02248D34
	sub r2, r4, #0x33
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x11c]
_0222CE18:
	mov r0, #2
	bl ov18_022454B0
	cmp r0, #0
	beq _0222CE70
	ldr r0, _0222CEBC ; =0x0225329C
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _0222CE64
	ldrb r0, [r1, #0x125]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _0222CEBC ; =0x0225329C
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x125]
	ldmia sp!, {r4, pc}
_0222CE64:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	b _0222CE90
_0222CE70:
	mov r0, #2
	bl ov18_022454F0
	cmp r0, #0
	beq _0222CE90
	ldr r0, _0222CEBC ; =0x0225329C
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x125]
_0222CE90:
	mov r0, #0x400
	bl ov18_02245470
	cmp r0, #0
	beq _0222CEA4
	bl ov18_0222C9E4
_0222CEA4:
	mov r0, #0x800
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov18_0222CA14
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222CEBC: .word 0x0225329C
_0222CEC0: .word 0x02249B48
_0222CEC4: .word 0x02248FE4
_0222CEC8: .word 0x02248D34
	arm_func_end ov18_0222CC9C

	arm_func_start ov18_0222CECC
ov18_0222CECC: ; 0x0222CECC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r3, _0222D12C ; =0x02248D3C
	mov sl, r1
	ldrb r5, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r1, #0xc
	mul r1, sl, r1
	strb r5, [sp, #0x12]
	strb r4, [sp, #0x13]
	ldrb r4, [r3, #0x14]
	ldrb r5, [r3, #0x13]
	str r1, [sp, #4]
	strb r4, [sp, #0x15]
	strb r5, [sp, #0x14]
	ldrb r1, [r3, #0x15]
	mov sb, r2
	add r4, sp, #0x12
	strb r1, [sp, #0x16]
	ldrb r1, [r4, sl]
	ldrb r6, [r3, #0x16]
	ldrb r2, [r3, #0x17]
	cmp r1, #0
	ldr r5, [sp, #4]
	strb r6, [sp, #0xd]
	strb r2, [sp, #0xe]
	ldrb r7, [r3, #0x18]
	ldrb r2, [r3, #0x19]
	mov r6, #0
	strb r7, [sp, #0xf]
	strb r2, [sp, #0x10]
	ldrb r1, [r3, #0x1a]
	strb r1, [sp, #0x11]
	ldrb r2, [r3, #0xc]
	ldrb r1, [r3, #0xd]
	strb r2, [sp, #8]
	strb r1, [sp, #9]
	ldrb r2, [r3, #0xe]
	ldrb r1, [r3, #0xf]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	ldrb r1, [r3, #0x10]
	strb r1, [sp, #0xc]
	ble _0222CFE8
	ldr r1, _0222D130 ; =0x02248D80
	ldr fp, _0222D134 ; =0x0225329C
	ldr lr, _0222D138 ; =0xC1FFFCFF
	ldr r8, _0222D13C ; =0xFE00FF00
	and r7, sb, #0xff
_0222CF90:
	ldr r2, [fp]
	mov r3, r5, lsl #2
	add r2, r2, r5, lsl #2
	ldr r2, [r2, #0x30]
	ldrh r3, [r1, r3]
	ldr ip, [r2]
	add r6, r6, #1
	and ip, ip, lr
	str ip, [r2]
	mov r2, r3, lsl #0x17
	ldr r3, [fp]
	add r3, r3, r5, lsl #2
	ldr r3, [r3, #0x30]
	add r5, r5, #1
	ldr ip, [r3]
	and ip, ip, r8
	orr ip, ip, r7
	orr r2, ip, r2, lsr #7
	str r2, [r3, #0]
	ldrb r2, [r4, sl]
	cmp r6, r2
	blt _0222CF90
_0222CFE8:
	cmp sl, #4
	bge _0222D028
	ldr r1, _0222D134 ; =0x0225329C
	ldr r3, _0222D130 ; =0x02248D80
	ldr r4, [r1, #0]
	ldr r1, [sp, #4]
	mov r2, #2
	mov r1, r1, lsl #2
	str r2, [sp]
	add r0, r4, r0, lsl #4
	add r2, r4, sl, lsl #2
	ldrh r1, [r3, r1]
	ldr r3, [r2, #0x104]
	ldr r0, [r0, sl, lsl #2]
	mov r2, sb
	bl ov18_02244B70
_0222D028:
	add r0, sl, #3
	mov r1, #4
	bl FX_ModS32
	add r3, sp, #0xd
	ldrb r1, [r3, sl]
	mov r5, #0
	cmp r1, #0
	ble _0222D0B0
	ldr r2, _0222D140 ; =0x02248D60
	mov r1, r0, lsl #2
	ldrh r0, [r2, r1]
	ldr r8, _0222D134 ; =0x0225329C
	ldr r6, _0222D138 ; =0xC1FFFCFF
	ldr r7, _0222D13C ; =0xFE00FF00
	and r4, sb, #0xff
	mov r2, r0, lsl #0x17
_0222D068:
	ldr r0, [r8]
	add r5, r5, #1
	add r0, r1, r0
	ldr fp, [r0, #0xec]
	ldr r0, [fp]
	and r0, r0, r6
	str r0, [fp]
	ldr r0, [r8]
	add r0, r1, r0
	ldr r0, [r0, #0xec]
	ldr fp, [r0]
	and fp, fp, r7
	orr fp, fp, r4
	orr fp, fp, r2, lsr #7
	str fp, [r0]
	ldrb r0, [r3, sl]
	cmp r5, r0
	blt _0222D068
_0222D0B0:
	add r7, sp, #8
	ldrb r0, [r7, sl]
	mov r8, #0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _0222D144 ; =0x02248D58
	ldr r4, _0222D134 ; =0x0225329C
	mvn r6, #0
	mov fp, r8
_0222D0D8:
	ldr r0, [r4, #0]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, fp
	mov r3, fp
	bl ov18_02243BD0
	ldr r0, [r4, #0]
	mov r1, r8, lsl #2
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0xfc]
	ldrh r2, [r5, r1]
	mov r1, r6
	mov r3, sb
	bl ov18_02243CF4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0222D0D8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222D12C: .word 0x02248D3C
_0222D130: .word 0x02248D80
_0222D134: .word 0x0225329C
_0222D138: .word 0xC1FFFCFF
_0222D13C: .word 0xFE00FF00
_0222D140: .word 0x02248D60
_0222D144: .word 0x02248D58
	arm_func_end ov18_0222CECC

	arm_func_start ov18_0222D148
ov18_0222D148: ; 0x0222D148
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _0222D1C4 ; =0x0225329C
	mov r5, #0
	ldr r1, [r1, #0]
	mov r8, r0
	ldr sb, _0222D1C8 ; =0x02248D80
	mov r6, r5
	mov r4, r5
	mov r7, r5
	strb r8, [r1, #0x11d]
_0222D170:
	add r0, sb, r7, lsl #2
	ldrh r2, [r0, #2]
	mov r0, r8
	mov r1, r4
	bl ov18_0222CECC
	add r4, r4, #1
	cmp r4, #4
	add r7, r7, #0xc
	blt _0222D170
	cmp r8, #2
	moveq r5, #1
	beq _0222D1A8
	cmp r8, #1
	moveq r6, #1
_0222D1A8:
	mov r1, r5
	mov r0, #0x2f
	bl ov18_0222D1CC
	mov r1, r6
	mov r0, #0x30
	bl ov18_0222D1CC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0222D1C4: .word 0x0225329C
_0222D1C8: .word 0x02248D80
	arm_func_end ov18_0222D148

	arm_func_start ov18_0222D1CC
ov18_0222D1CC: ; 0x0222D1CC
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltia sp!, {r3, pc}
	cmp r0, #0x2f
	bge _0222D218
	ldr r2, _0222D288 ; =0x0225329C
	ldr r3, _0222D28C ; =0x02248D28
	ldr r2, [r2, #0]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x30]
	ldr r0, [r2, #0]
	bic r0, r0, #0xc00
	str r0, [r2, #0]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmia sp!, {r3, pc}
_0222D218:
	sub ip, r0, #0x2f
	cmp ip, #4
	bge _0222D25C
	ldr r0, _0222D288 ; =0x0225329C
	ldr r2, _0222D28C ; =0x02248D28
	ldr r3, [r0, #0]
	ldrb r0, [r2, r1]
	add r1, r3, ip, lsl #2
	ldr r2, [r1, #0xec]
	ldr r1, [r2, #0]
	bic r1, r1, #0xc00
	str r1, [r2, #0]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmia sp!, {r3, pc}
_0222D25C:
	ldr r2, _0222D288 ; =0x0225329C
	ldr r3, _0222D290 ; =0x02248D2C
	ldr r2, [r2, #0]
	sub r0, r0, #0x33
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0xfc]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D288: .word 0x0225329C
_0222D28C: .word 0x02248D28
_0222D290: .word 0x02248D2C
	arm_func_end ov18_0222D1CC

	arm_func_start ov18_0222D294
ov18_0222D294: ; 0x0222D294
	stmfd sp!, {r4, lr}
	ldr r0, _0222D364 ; =0x0225329C
	ldr r1, [r0, #0]
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x21]
	sub r0, r0, #0x2f
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0222D2F8
_0222D2B8: ; jump table
	b _0222D2D0 ; case 0
	b _0222D2D8 ; case 1
	b _0222D2E0 ; case 2
	b _0222D2E8 ; case 3
	b _0222D2F0 ; case 4
	b _0222D2F0 ; case 5
_0222D2D0:
	mov r4, #0x42
	b _0222D2FC
_0222D2D8:
	mov r4, #0x41
	b _0222D2FC
_0222D2E0:
	mov r4, #0x43
	b _0222D2FC
_0222D2E8:
	mov r4, #0x41
	b _0222D2FC
_0222D2F0:
	mov r4, #0x45
	b _0222D2FC
_0222D2F8:
	mov r4, #0x40
_0222D2FC:
	ldr r0, [r1, #0x114]
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	mov r1, r4
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222D364 ; =0x0225329C
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #2
	ldr r0, [r0, #0x114]
	bl ov18_02243DE4
	ldr r0, _0222D364 ; =0x0225329C
	ldr r2, _0222D368 ; =0x02248E3C
	ldr r3, [r0, #0]
	mvn r1, #0
	add r0, r3, #0x100
	ldrsb ip, [r0, #0x21]
	ldr r0, [r3, #0x114]
	ldr r3, _0222D36C ; =0x02248E3E
	mov ip, ip, lsl #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D364: .word 0x0225329C
_0222D368: .word 0x02248E3C
_0222D36C: .word 0x02248E3E
	arm_func_end ov18_0222D294

	arm_func_start ov18_0222D370
ov18_0222D370: ; 0x0222D370
	stmfd sp!, {r3, lr}
	ldr r2, _0222D7A0 ; =0x0225329C
	ldr r3, _0222D7A4 ; =0x02248F10
	ldr ip, [r2]
	add r1, ip, #0x100
	ldrsb lr, [r1, #0x21]
	add r1, r3, lr, lsl #2
	ldrsb r1, [r0, r1]
	strb r1, [ip, #0x121]
	ldr r1, [r2, #0]
	add r2, r1, #0x100
	ldrsb r3, [r2, #0x21]
	cmp r3, #0x2e
	cmpeq r0, #3
	streqb lr, [r1, #0x120]
	beq _0222D790
	cmp r3, #0x33
	bne _0222D3C8
	cmp r0, #1
	cmpne r0, #3
	streqb lr, [r1, #0x120]
	beq _0222D790
_0222D3C8:
	cmp r3, #0x34
	bne _0222D3E8
	cmp r0, #1
	cmpne r0, #3
	bne _0222D3E8
	cmp lr, #0x2e
	strneb lr, [r1, #0x120]
	b _0222D790
_0222D3E8:
	mvn r2, #0
	cmp r3, r2
	bne _0222D418
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	cmpne r0, #0x32
	moveq r0, #0x23
	streqb r0, [r1, #0x121]
	movne r0, #0x22
	strneb r0, [r1, #0x121]
	b _0222D790
_0222D418:
	sub r0, r2, #1
	cmp r3, r0
	bne _0222D4D8
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _0222D470
	bge _0222D4A8
	cmp r0, #5
	bgt _0222D464
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D4CC
_0222D44C: ; jump table
	b _0222D490 ; case 0
	b _0222D49C ; case 1
	b _0222D4CC ; case 2
	b _0222D4A8 ; case 3
	b _0222D4B4 ; case 4
	b _0222D4C0 ; case 5
_0222D464:
	cmp r0, #0x24
	beq _0222D49C
	b _0222D4CC
_0222D470:
	cmp r0, #0x28
	bgt _0222D488
	bge _0222D4C0
	cmp r0, #0x27
	beq _0222D4B4
	b _0222D4CC
_0222D488:
	cmp r0, #0x31
	bne _0222D4CC
_0222D490:
	mov r0, #0x31
	strb r0, [r1, #0x121]
	b _0222D790
_0222D49C:
	mov r0, #0x24
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4A8:
	mov r0, #0x26
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4B4:
	mov r0, #0x27
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4C0:
	mov r0, #0x28
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4CC:
	mov r0, #0x25
	strb r0, [r1, #0x121]
	b _0222D790
_0222D4D8:
	sub r0, r2, #2
	cmp r3, r0
	bne _0222D5D0
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _0222D548
	bge _0222D5B8
	cmp r0, #0xb
	bgt _0222D53C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D5C4
_0222D50C: ; jump table
	b _0222D5C4 ; case 0
	b _0222D5C4 ; case 1
	b _0222D5C4 ; case 2
	b _0222D5C4 ; case 3
	b _0222D5C4 ; case 4
	b _0222D5C4 ; case 5
	b _0222D588 ; case 6
	b _0222D594 ; case 7
	b _0222D5C4 ; case 8
	b _0222D5A0 ; case 9
	b _0222D5AC ; case 10
	b _0222D5B8 ; case 11
_0222D53C:
	cmp r0, #0x22
	beq _0222D5B8
	b _0222D5C4
_0222D548:
	cmp r0, #0x2a
	bgt _0222D560
	bge _0222D594
	cmp r0, #0x29
	beq _0222D588
	b _0222D5C4
_0222D560:
	cmp r0, #0x32
	bgt _0222D5C4
	cmp r0, #0x2c
	blt _0222D5C4
	beq _0222D5A0
	cmp r0, #0x2d
	beq _0222D5AC
	cmp r0, #0x32
	beq _0222D5B8
	b _0222D5C4
_0222D588:
	mov r0, #0x29
	strb r0, [r1, #0x121]
	b _0222D790
_0222D594:
	mov r0, #0x2a
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5A0:
	mov r0, #0x2c
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5AC:
	mov r0, #0x2d
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5B8:
	mov r0, #0x2e
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5C4:
	mov r0, #0x2b
	strb r0, [r1, #0x121]
	b _0222D790
_0222D5D0:
	sub r0, r2, #3
	cmp r3, r0
	bne _0222D690
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _0222D628
	bge _0222D660
	cmp r0, #5
	bgt _0222D61C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D684
_0222D604: ; jump table
	b _0222D648 ; case 0
	b _0222D654 ; case 1
	b _0222D684 ; case 2
	b _0222D660 ; case 3
	b _0222D66C ; case 4
	b _0222D678 ; case 5
_0222D61C:
	cmp r0, #0x24
	beq _0222D654
	b _0222D684
_0222D628:
	cmp r0, #0x28
	bgt _0222D640
	bge _0222D678
	cmp r0, #0x27
	beq _0222D66C
	b _0222D684
_0222D640:
	cmp r0, #0x31
	bne _0222D684
_0222D648:
	mov r0, #0
	strb r0, [r1, #0x121]
	b _0222D790
_0222D654:
	mov r0, #1
	strb r0, [r1, #0x121]
	b _0222D790
_0222D660:
	mov r0, #3
	strb r0, [r1, #0x121]
	b _0222D790
_0222D66C:
	mov r0, #4
	strb r0, [r1, #0x121]
	b _0222D790
_0222D678:
	mov r0, #5
	strb r0, [r1, #0x121]
	b _0222D790
_0222D684:
	mov r0, #2
	strb r0, [r1, #0x121]
	b _0222D790
_0222D690:
	sub r0, r2, #4
	cmp r3, r0
	bne _0222D790
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _0222D700
	bge _0222D77C
	cmp r0, #0xb
	bgt _0222D6F4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222D788
_0222D6C4: ; jump table
	b _0222D788 ; case 0
	b _0222D788 ; case 1
	b _0222D788 ; case 2
	b _0222D788 ; case 3
	b _0222D788 ; case 4
	b _0222D788 ; case 5
	b _0222D740 ; case 6
	b _0222D74C ; case 7
	b _0222D788 ; case 8
	b _0222D758 ; case 9
	b _0222D764 ; case 10
	b _0222D770 ; case 11
_0222D6F4:
	cmp r0, #0x22
	beq _0222D770
	b _0222D788
_0222D700:
	cmp r0, #0x2a
	bgt _0222D718
	bge _0222D74C
	cmp r0, #0x29
	beq _0222D740
	b _0222D788
_0222D718:
	cmp r0, #0x32
	bgt _0222D788
	cmp r0, #0x2c
	blt _0222D788
	beq _0222D758
	cmp r0, #0x2d
	beq _0222D764
	cmp r0, #0x32
	beq _0222D77C
	b _0222D788
_0222D740:
	mov r0, #6
	strb r0, [r1, #0x121]
	b _0222D790
_0222D74C:
	mov r0, #7
	strb r0, [r1, #0x121]
	b _0222D790
_0222D758:
	mov r0, #9
	strb r0, [r1, #0x121]
	b _0222D790
_0222D764:
	mov r0, #0xa
	strb r0, [r1, #0x121]
	b _0222D790
_0222D770:
	mov r0, #0xb
	strb r0, [r1, #0x121]
	b _0222D790
_0222D77C:
	mov r0, #0x32
	strb r0, [r1, #0x121]
	b _0222D790
_0222D788:
	mov r0, #8
	strb r0, [r1, #0x121]
_0222D790:
	bl ov18_0222D294
	mov r0, #8
	bl ov18_0223E994
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D7A0: .word 0x0225329C
_0222D7A4: .word 0x02248F10
	arm_func_end ov18_0222D370

	arm_func_start ov18_0222D7A8
ov18_0222D7A8: ; 0x0222D7A8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D820 ; =0x0225329C
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0xfc]
	bl ov18_02243BBC
	ldr r3, [r0, #0]
	ldr r1, _0222D820 ; =0x0225329C
	ldr r0, _0222D824 ; =0x01FF0000
	and r2, r3, #0xff
	and r0, r3, r0
	mov r3, r0, lsr #0x10
	ldr r1, [r1, #0]
	add r2, r2, #0xc
	ldrb r0, [r1, #0x11d]
	str r2, [sp]
	mov r1, #4
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222D828 ; =ov18_0222D82C
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D820: .word 0x0225329C
_0222D824: .word 0x01FF0000
_0222D828: .word ov18_0222D82C
	arm_func_end ov18_0222D7A8

	arm_func_start ov18_0222D82C
ov18_0222D82C: ; 0x0222D82C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D894 ; =0x0225329C
	ldr r2, _0222D898 ; =0x01FF0000
	ldr r3, [r1, #0]
	mov r4, r0
	ldr r1, [r3, #0xc0]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #3
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	mov r3, ip, lsr #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222D89C ; =ov18_0222D8A0
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D894: .word 0x0225329C
_0222D898: .word 0x01FF0000
_0222D89C: .word ov18_0222D8A0
	arm_func_end ov18_0222D82C

	arm_func_start ov18_0222D8A0
ov18_0222D8A0: ; 0x0222D8A0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D908 ; =0x0225329C
	ldr r2, _0222D90C ; =0x01FF0000
	ldr r3, [r1, #0]
	mov r4, r0
	ldr r1, [r3, #0x90]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #2
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	mov r3, ip, lsr #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222D910 ; =ov18_0222D914
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D908: .word 0x0225329C
_0222D90C: .word 0x01FF0000
_0222D910: .word ov18_0222D914
	arm_func_end ov18_0222D8A0

	arm_func_start ov18_0222D914
ov18_0222D914: ; 0x0222D914
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D97C ; =0x0225329C
	ldr r2, _0222D980 ; =0x01FF0000
	ldr r3, [r1, #0]
	mov r4, r0
	ldr r1, [r3, #0x60]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #1
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	mov r3, ip, lsr #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222D984 ; =ov18_0222D988
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D97C: .word 0x0225329C
_0222D980: .word 0x01FF0000
_0222D984: .word ov18_0222D988
	arm_func_end ov18_0222D914

	arm_func_start ov18_0222D988
ov18_0222D988: ; 0x0222D988
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222D9F0 ; =0x0225329C
	ldr r2, _0222D9F4 ; =0x01FF0000
	ldr r3, [r1, #0]
	mov r4, r0
	ldr r1, [r3, #0x30]
	ldrb r0, [r3, #0x11d]
	ldr ip, [r1]
	mov r1, #0
	and r3, ip, #0xff
	and ip, ip, r2
	add r2, r3, #0xc
	mov r3, ip, lsr #0x10
	str r2, [sp]
	str r3, [sp, #4]
	bl ov18_0222CECC
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222D9F8 ; =ov18_0222D9FC
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222D9F0: .word 0x0225329C
_0222D9F4: .word 0x01FF0000
_0222D9F8: .word ov18_0222D9FC
	arm_func_end ov18_0222D988

	arm_func_start ov18_0222D9FC
ov18_0222D9FC: ; 0x0222D9FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	mov r5, #0
	ldr r7, _0222DAD4 ; =0x0225329C
	mov r4, r5
_0222DA18:
	mov r6, r4
_0222DA1C:
	ldr r0, [r7, #0]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, r6, lsl #2]
	bl ov18_02244650
	cmp r5, #0
	bne _0222DA44
	ldr r0, [r7, #0]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x104]
	bl ov18_02243B3C
_0222DA44:
	add r6, r6, #1
	cmp r6, #4
	blt _0222DA1C
	add r5, r5, #1
	cmp r5, #3
	blt _0222DA18
	ldr r4, _0222DAD4 ; =0x0225329C
	mov r5, #0
_0222DA64:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xfc]
	bl ov18_02243B3C
	add r5, r5, #1
	cmp r5, #2
	blt _0222DA64
	ldr r4, _0222DAD4 ; =0x0225329C
	mov r5, #0
_0222DA88:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xec]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #4
	blt _0222DA88
	ldr r4, _0222DAD4 ; =0x0225329C
	mov r5, #0
_0222DAAC:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x30]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #0x2f
	blt _0222DAAC
	ldr r0, _0222DAD8 ; =0x0225329C
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DAD4: .word 0x0225329C
_0222DAD8: .word 0x0225329C
	arm_func_end ov18_0222D9FC

	.rodata


	.global Unk_ov18_02248D28
Unk_ov18_02248D28: ; 0x02248D28
	.incbin "incbin/overlay18_rodata.bin", 0x28F4, 0x28F8 - 0x28F4

	.global Unk_ov18_02248D2C
Unk_ov18_02248D2C: ; 0x02248D2C
	.incbin "incbin/overlay18_rodata.bin", 0x28F8, 0x28FC - 0x28F8

	.global Unk_ov18_02248D30
Unk_ov18_02248D30: ; 0x02248D30
	.incbin "incbin/overlay18_rodata.bin", 0x28FC, 0x2900 - 0x28FC

	.global Unk_ov18_02248D34
Unk_ov18_02248D34: ; 0x02248D34
	.incbin "incbin/overlay18_rodata.bin", 0x2900, 0x2904 - 0x2900

	.global Unk_ov18_02248D38
Unk_ov18_02248D38: ; 0x02248D38
	.incbin "incbin/overlay18_rodata.bin", 0x2904, 0x2908 - 0x2904

	.global Unk_ov18_02248D3C
Unk_ov18_02248D3C: ; 0x02248D3C
	.incbin "incbin/overlay18_rodata.bin", 0x2908, 0x290C - 0x2908

	.global Unk_ov18_02248D40
Unk_ov18_02248D40: ; 0x02248D40
	.incbin "incbin/overlay18_rodata.bin", 0x290C, 0x2910 - 0x290C

	.global Unk_ov18_02248D44
Unk_ov18_02248D44: ; 0x02248D44
	.incbin "incbin/overlay18_rodata.bin", 0x2910, 0x2914 - 0x2910

	.global Unk_ov18_02248D48
Unk_ov18_02248D48: ; 0x02248D48
	.incbin "incbin/overlay18_rodata.bin", 0x2914, 0x2919 - 0x2914

	.global Unk_ov18_02248D4D
Unk_ov18_02248D4D: ; 0x02248D4D
	.incbin "incbin/overlay18_rodata.bin", 0x2919, 0x291E - 0x2919

	.global Unk_ov18_02248D52
Unk_ov18_02248D52: ; 0x02248D52
	.incbin "incbin/overlay18_rodata.bin", 0x291E, 0x2924 - 0x291E

	.global Unk_ov18_02248D58
Unk_ov18_02248D58: ; 0x02248D58
	.incbin "incbin/overlay18_rodata.bin", 0x2924, 0x292C - 0x2924

	.global Unk_ov18_02248D60
Unk_ov18_02248D60: ; 0x02248D60
	.incbin "incbin/overlay18_rodata.bin", 0x292C, 0x293C - 0x292C

	.global Unk_ov18_02248D70
Unk_ov18_02248D70: ; 0x02248D70
	.incbin "incbin/overlay18_rodata.bin", 0x293C, 0x294C - 0x293C

	.global Unk_ov18_02248D80
Unk_ov18_02248D80: ; 0x02248D80
	.incbin "incbin/overlay18_rodata.bin", 0x294C, 0x2A08 - 0x294C

	.global Unk_ov18_02248E3C
Unk_ov18_02248E3C: ; 0x02248E3C
	.incbin "incbin/overlay18_rodata.bin", 0x2A08, 0x2ADC - 0x2A08

	.global Unk_ov18_02248F10
Unk_ov18_02248F10: ; 0x02248F10
	.incbin "incbin/overlay18_rodata.bin", 0x2ADC, 0x2BB0 - 0x2ADC

	.global Unk_ov18_02248FE4
Unk_ov18_02248FE4: ; 0x02248FE4
	.incbin "incbin/overlay18_rodata.bin", 0x2BB0, 0x5



	.data


	.global Unk_ov18_02249B48
Unk_ov18_02249B48: ; 0x02249B48
	.incbin "incbin/overlay18_data.bin", 0x3E8, 0x3F4 - 0x3E8

	.global Unk_ov18_02249B54
Unk_ov18_02249B54: ; 0x02249B54
	.incbin "incbin/overlay18_data.bin", 0x3F4, 0x400 - 0x3F4

	.global Unk_ov18_02249B60
Unk_ov18_02249B60: ; 0x02249B60
	.incbin "incbin/overlay18_data.bin", 0x400, 0x410 - 0x400

	.global Unk_ov18_02249B70
Unk_ov18_02249B70: ; 0x02249B70
	.incbin "incbin/overlay18_data.bin", 0x410, 0x472 - 0x410

	.global Unk_ov18_02249BD2
Unk_ov18_02249BD2: ; 0x02249BD2
	.incbin "incbin/overlay18_data.bin", 0x472, 0x4D4 - 0x472

	.global Unk_ov18_02249C34
Unk_ov18_02249C34: ; 0x02249C34
	.incbin "incbin/overlay18_data.bin", 0x4D4, 0x538 - 0x4D4

	.global Unk_ov18_02249C98
Unk_ov18_02249C98: ; 0x02249C98
	.incbin "incbin/overlay18_data.bin", 0x538, 0x568 - 0x538

	.global Unk_ov18_02249CC8
Unk_ov18_02249CC8: ; 0x02249CC8
	.incbin "incbin/overlay18_data.bin", 0x568, 0x598 - 0x568

	.global Unk_ov18_02249CF8
Unk_ov18_02249CF8: ; 0x02249CF8
	.incbin "incbin/overlay18_data.bin", 0x598, 0x30



	.bss


	.global Unk_ov18_0225329C
Unk_ov18_0225329C: ; 0x0225329C
	.space 0x4

