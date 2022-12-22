	.include "macros/function.inc"
	.include "include/ov4_02203BD4.inc"

	

	.text


	arm_func_start ov4_02203BD4
ov4_02203BD4: ; 0x02203BD4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r1, #0
	mov r2, #0x28
	mov r6, r0
	bl MI_CpuFill8
	ldr r0, _02203C5C ; =0x000134DF
	mov r1, #0
	str r0, [r6, #4]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	str r5, [r6, #0x34]
	str r4, [r6, #0x38]
	str r1, [r6, #0x7c]
	str r1, [r6, #0x80]
	str r1, [r6, #0x84]
	str r1, [r6, #0x88]
	str r0, [r6, #0x8c]
	str r1, [r6, #0x90]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x44]
	str r1, [r6, #0x48]
	str r1, [r6, #0x6c]
	str r1, [r6, #0x70]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	str r1, [r6, #0x58]
	mov r0, #1
	str r0, [r6, #0x5c]
	str r1, [r6, #0x3c]
	str r1, [r6, #0x40]
	str r1, [r6, #0x30]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02203C5C: .word 0x000134DF
	arm_func_end ov4_02203BD4

	arm_func_start ov4_02203C60
ov4_02203C60: ; 0x02203C60
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02203C80
	bl ov4_0220523C
	mov r0, #0
	str r0, [r4, #0x3c]
_02203C80:
	mvn r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02203C60

	arm_func_start ov4_02203C8C
ov4_02203C8C: ; 0x02203C8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r4, r1
	cmp r0, #0
	beq _02203CA8
	bl ov4_0220523C
_02203CA8:
	str r4, [r5, #0x3c]
	ldr r0, [r5, #0x34]
	bl ov4_02203B5C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02203C8C

	arm_func_start ov4_02203CB8
ov4_02203CB8: ; 0x02203CB8
	ldr r2, _02203CD4 ; =0x00010001
	strh r1, [r0, #0x68]
	str r2, [r0, #0x64]
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x5c]
	bx lr
	; .align 2, 0
_02203CD4: .word 0x00010001
	arm_func_end ov4_02203CB8

	arm_func_start ov4_02203CD8
ov4_02203CD8: ; 0x02203CD8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh ip, [r6, #0x68]
	mov r4, r2
	ldr r3, _02203DA8 ; =0x00000BB8
	sub r2, r4, ip
	mov r2, r2, lsl #0x10
	mov r5, r1
	cmp r3, r2, lsr #16
	mov r2, r2, lsr #0x10
	bls _02203D1C
	cmp r4, ip
	ldrlo r0, [r6, #0x60]
	addlo r0, r0, #0x10000
	strlo r0, [r6, #0x60]
	strh r4, [r6, #0x68]
	b _02203D94
_02203D1C:
	ldr r1, _02203DAC ; =0x0000FF9C
	cmp r2, r1
	bhi _02203D68
	ldr r1, [r6, #0x64]
	cmp r4, r1
	bne _02203D50
	mov r1, r4
	bl ov4_02203CB8
	sub r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x54]
	b _02203D94
_02203D50:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x64]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02203D68:
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x60]
	add r0, r0, #0x39c
	add r1, r4, r1
	add r0, r0, #0xfc00
	cmp r1, r0
	bls _02203D94
	sub r0, r1, #0x10000
	str r0, [r5, #0x18]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02203D94:
	ldr r1, [r6, #0x60]
	mov r0, #1
	add r1, r4, r1
	str r1, [r5, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02203DA8: .word 0x00000BB8
_02203DAC: .word 0x0000FF9C
	arm_func_end ov4_02203CD8

	arm_func_start ov4_02203DB0
ov4_02203DB0: ; 0x02203DB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r2, [r7, #0x5c]
	mov r6, r1
	cmp r2, #0
	mov r5, #0
	beq _02203DE0
	ldr r1, [r6, #0x18]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov4_02203CB8
	b _02203E78
_02203DE0:
	ldr r2, [r6, #0x18]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl ov4_02203CD8
	cmp r0, #0
	bne _02203E0C
	ldr r1, [r7, #0x14]
	mov r0, r5
	add r1, r1, #1
	str r1, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02203E0C:
	ldr r0, [r6, #0x18]
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x18]
	ldr r2, [r7, #0x54]
	cmp r2, r1
	bne _02203E38
	ldr r1, [r7, #0x14]
	mov r0, r5
	add r1, r1, #1
	str r1, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02203E38:
	add r0, r2, #1
	cmp r0, r1
	beq _02203E78
	ldr r0, [r6, #0x45c]
	cmp r0, #0
	bne _02203E78
	subs r0, r1, r2
	rsbmi r0, r0, #0
	cmp r0, #0x64
	strgt r1, [r7, #0x54]
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r2, r1
	ldrhi r0, [r7, #0x1c]
	addhi r0, r0, #1
	strhi r0, [r7, #0x1c]
_02203E78:
	ldr r0, [r6, #0x18]
	str r0, [r7, #0x54]
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bne _02203EB0
	ldr r1, [r6, #0x460]
	add r0, r6, #0x64
	str r1, [r7, #0x4c]
	add r1, r0, #0x400
	add r0, r7, #0x44
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	mov r0, #0
	str r0, [r7, #0x6c]
_02203EB0:
	ldr r2, [r6, #0x460]
	ldr r0, [r7, #0x4c]
	ldr r3, [r6, #0x464]
	ldr r1, [r7, #0x44]
	sub r0, r2, r0
	ldr r2, [r7, #0x80]
	mov r0, r0, lsl #6
	subs r1, r3, r1
	subs r4, r0, r1
	cmp r2, #0
	beq _02203EE8
	ldr r1, [r6, #0x45c]
	cmp r1, #0
	beq _02203EF0
_02203EE8:
	str r4, [r7, #0x80]
	b _02203F64
_02203EF0:
	str r4, [r7, #0x80]
	subs r1, r4, r2
	ldr r2, [r7, #0x7c]
	rsbmi r1, r1, #0
	add r2, r2, #0x318
	add r2, r2, #0x8800
	mov ip, r2, lsl #1
	ldr r3, _02204140 ; =0x0000CC8D
	mov r2, #0
	adds r3, ip, r3
	mov lr, r1, asr #0x1f
	adc r2, r2, ip, asr #31
	cmp lr, r2
	cmpeq r1, r3
	bls _02203F44
	ldr ip, _02204144 ; =0x75CA82CB
	mov r2, r1, lsr #0x1f
	smull r3, lr, ip, r1
	add lr, r2, lr, asr #14
	add r2, lr, #2
	str r2, [r7, #0x84]
_02203F44:
	ldr r2, [r7, #0x84]
	cmp r2, #0
	bgt _02203F64
	ldr r2, [r7, #0x7c]
	sub r1, r1, r2
	add r1, r2, r1, asr #4
	str r1, [r7, #0x7c]
	str r1, [r7, #0x18]
_02203F64:
	ldr r2, [r7, #0x44]
	ldr r3, [r7, #4]
	ldr r1, [r7, #0x48]
	adds r2, r0, r2
	adc r0, r1, #0
	adds r1, r3, r2
	str r1, [r6, #0x46c]
	adc r0, r0, #0
	str r0, [r6, #0x470]
	bl OS_GetTick
	ldr ip, [r6, #0x46c]
	ldr r2, _02204148 ; =0x00008B18
	ldr lr, [r6, #0x470]
	adds r6, ip, r2
	adc r3, lr, #0
	cmp r3, r1
	mov r3, #0
	cmpeq r6, r0
	movlo r0, r3
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0220414C ; =0x0007FD88
	adds r6, r0, r6
	adc r0, r1, r3
	cmp lr, r0
	cmpeq ip, r6
	movhi r0, r3
	ldmhiia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x84]
	cmp r0, #0
	bgt _0220412C
	ldr r0, [r7, #0x7c]
	ldr r6, _02204144 ; =0x75CA82CB
	add ip, r0, r0, lsl #1
	smull r1, r0, r6, ip
	ldr r6, [r7, #0x8c]
	mov r1, ip, lsr #0x1f
	cmp ip, r6
	add r0, r1, r0, asr #14
	bls _02204038
	add r1, r0, #1
	mul r6, r1, r2
	mul r1, r0, r2
	add r0, r6, #0xdf
	add r2, r0, #0x13400
	ldr r0, _02204150 ; =0xFFFF2F5C
	add r1, r1, #0xdf
	str r2, [r7, #0x8c]
	add r0, r2, r0
	str r0, [r7, #0x88]
	add r0, r1, #0x13400
	str r0, [r7, #4]
	str r3, [r7, #0x90]
	b _02204098
_02204038:
	ldr r1, [r7, #0x88]
	cmp ip, r1
	bge _02204098
	ldr r1, [r7, #0x90]
	add r1, r1, #1
	str r1, [r7, #0x90]
	cmp r1, #0x46
	bls _02204098
	add r1, r0, #1
	mul ip, r1, r2
	add r1, ip, #0xdf
	add r1, r1, #0x13400
	ldr r6, _02204154 ; =0xFFFFBA74
	str r1, [r7, #0x8c]
	ldr r1, _02204148 ; =0x00008B18
	mlas r2, r0, r2, r6
	str r2, [r7, #0x88]
	mul r1, r0, r1
	add r0, r1, #0xdf
	strmi r3, [r7, #0x88]
	add r0, r0, #0x13400
	mov r2, #0
	str r0, [r7, #4]
	str r2, [r7, #0x90]
_02204098:
	ldr r1, [r7, #4]
	ldr r0, _02204158 ; =0x00068520
	cmp r1, r0
	strhi r0, [r7, #4]
	ldr r0, [r7, #0x6c]
	cmp r0, #0x10
	bhs _022040C8
	add r0, r0, #1
	str r0, [r7, #0x6c]
	str r4, [r7, #0x74]
	str r4, [r7, #0x78]
	b _022040E4
_022040C8:
	ldr r0, [r7, #0x74]
	rsb r0, r0, r0, lsl #5
	add r1, r4, r0
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r7, #0x74]
_022040E4:
	ldr r2, [r7, #0x78]
	ldr r1, [r7, #0x74]
	ldr r0, _0220415C ; =0x00008701
	sub r1, r2, r1
	cmp r1, r0
	mvn r0, #0x8700
	movgt r5, #1
	str r1, [r7, #0xc]
	cmp r1, r0
	bge _0220411C
	ldr r1, [r7, #0x70]
	add r5, r0, #0x8700
	add r0, r1, #1
	str r0, [r7, #0x70]
_0220411C:
	cmp r5, #0
	movne r0, #0
	strne r0, [r7, #0x6c]
	strne r0, [r7, #0x4c]
_0220412C:
	ldr r1, [r7, #0x84]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r7, #0x84]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02204140: .word 0x0000CC8D
_02204144: .word 0x75CA82CB
_02204148: .word 0x00008B18
_0220414C: .word 0x0007FD88
_02204150: .word 0xFFFF2F5C
_02204154: .word 0xFFFFBA74
_02204158: .word 0x00068520
_0220415C: .word 0x00008701
	arm_func_end ov4_02203DB0