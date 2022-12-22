	.include "macros/function.inc"
	.include "include/ov4_021E8BA8.inc"

	

	.text


	arm_func_start ov4_021E8BA8
ov4_021E8BA8: ; 0x021E8BA8
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end ov4_021E8BA8

	arm_func_start ov4_021E8BBC
ov4_021E8BBC: ; 0x021E8BBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x410
	ldr r1, _021E8E8C ; =0x0221AE40
	mov r6, r0
	ldr r0, [r1, #0]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl DC_InvalidateRange
	ldrh r0, [r6, #2]
	cmp r0, #0
	ldreqh r0, [r6, #8]
	cmpeq r0, #5
	bne _021E8E50
	ldrh r0, [r6, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _021E8E50
_021E8C00:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #0x40]
	cmp r1, #1
	ldreq r2, [r0, #0x44]
	ldreq r1, _021E8E90 ; =0x00000857
	cmpeq r2, r1
	bne _021E8E40
	ldr r1, _021E8E8C ; =0x0221AE40
	mov r4, #0
	ldr ip, [r1]
	mov r3, r4
	add r2, ip, #0x1000
	ldr r1, [r2, #0xa88]
	cmp r1, #0
	bls _021E8C6C
	ldrh r7, [r0, #0x48]
_021E8C44:
	add r1, ip, r3, lsl #1
	add r1, r1, #0x1a00
	ldrh r1, [r1, #0x68]
	cmp r1, r7
	moveq r4, #1
	beq _021E8C6C
	ldr r1, [r2, #0xa88]
	add r3, r3, #1
	cmp r3, r1
	blo _021E8C44
_021E8C6C:
	cmp r4, #1
	beq _021E8E40
	ldr r1, _021E8E8C ; =0x0221AE40
	mov r2, #0x70
	ldr r1, [r1, #0]
	add r0, r0, #0x50
	add r3, r1, #0x1000
	add r1, r1, #0x348
	ldr r3, [r3, #0xa8c]
	add r1, r1, #0x1000
	mla r1, r3, r2, r1
	bl MI_CpuCopy8
	ldr r0, _021E8E94 ; =0x0221597C
	add r1, sp, #0
	mov r2, #4
	bl MI_CpuCopy8
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	add r1, sp, #4
	add r0, r0, #6
	mov r2, #4
	bl MI_CpuCopy8
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl CRYPTO_RC4FastInit
	ldr r0, _021E8E8C ; =0x0221AE40
	mov r2, #0x70
	ldr r3, [r0, #0]
	add r0, sp, #8
	add r1, r3, #0x348
	add r4, r1, #0x1000
	add r1, r3, #0x1000
	ldr r1, [r1, #0xa8c]
	mul r3, r1, r2
	add r1, r4, r3
	add r3, r4, r3
	bl CRYPTO_RC4FastEncrypt
	ldr r0, _021E8E8C ; =0x0221AE40
	mov r1, #0x70
	ldr ip, [r0]
	mov r3, #0x6e
	add r0, ip, #0x348
	add r4, r0, #0x1000
	add r0, ip, #0x1000
	ldr r2, [r0, #0xa8c]
	add r0, ip, #0x96
	mul r7, r2, r1
	add r1, ip, #0x294
	add r0, r0, #0x1a00
	add r1, r1, #0x1800
	add r2, r4, r7
	bl MATHi_CRC16UpdateRev
	ldr r0, _021E8E8C ; =0x0221AE40
	add r1, r4, r7
	ldr r0, [r0, #0]
	mov r2, #0x6e
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl MATH_CalcCRC16
	ldr r1, _021E8E8C ; =0x0221AE40
	mov r2, #0x70
	ldr r4, [r1, #0]
	add r1, r4, #0x1000
	ldr r1, [r1, #0xa8c]
	mul r3, r1, r2
	add r1, r4, r3
	add r1, r1, #0x1300
	ldrh r1, [r1, #0xb6]
	cmp r0, r1
	cmpne r1, #0
	beq _021E8DA4
	add r0, r4, #0x348
	add r0, r0, #0x1000
	add r0, r0, r3
	mov r1, #0
	bl MI_CpuFill8
	b _021E8E40
_021E8DA4:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl ov4_021E8BA8
	add r1, r4, #0x1000
	ldr r1, [r1, #0xa8c]
	ldr r3, _021E8E8C ; =0x0221AE40
	add r1, r4, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r2, [r3, #0]
	add r1, r6, r5, lsl #2
	add r0, r2, #0x1000
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r3, #0]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r3, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r3, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_021E8E40:
	ldrh r0, [r6, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _021E8C00
_021E8E50:
	ldr r1, _021E8E8C ; =0x0221AE40
	mov r2, #2
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	addeq sp, sp, #0x410
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r1
	add sp, sp, #0x410
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E8E8C: .word 0x0221AE40
_021E8E90: .word 0x00000857
_021E8E94: .word 0x0221597C
	arm_func_end ov4_021E8BBC

	arm_func_start ov4_021E8E98
ov4_021E8E98: ; 0x021E8E98
	ldr r0, _021E8EA0 ; =0x00001CA0
	bx lr
	; .align 2, 0
_021E8EA0: .word 0x00001CA0
	arm_func_end ov4_021E8E98

	arm_func_start ov4_021E8EA4
ov4_021E8EA4: ; 0x021E8EA4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _021E8F2C ; =0x0221AE40
	str r0, [r1, #0]
	bl ov4_021E8E98
	ldr r1, _021E8F2C ; =0x0221AE40
	mov r2, r0
	ldr r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r2, _021E8F2C ; =0x0221AE40
	mov r3, #0
	ldr r0, [r2, #0]
	ldr r1, _021E8F30 ; =0x0000A001
	add r0, r0, #0x1000
	str r3, [r0, #0xa90]
	ldr r0, [r2, #0]
	add r0, r0, #0x1a00
	strh r3, [r0, #0x94]
	ldr r0, [r2, #0]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl MATHi_CRC16InitTableRev
	ldr r0, _021E8F2C ; =0x0221AE40
	mov r1, r5
	ldr r0, [r0, #0]
	mov r2, r4
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E8F2C: .word 0x0221AE40
_021E8F30: .word 0x0000A001
	arm_func_end ov4_021E8EA4

	arm_func_start ov4_021E8F34
ov4_021E8F34: ; 0x021E8F34
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _021E8F70 ; =0x0221AE40
	mov ip, #3
	ldr r1, [r2, #0]
	mov r3, #0
	add r1, r1, #0x1000
	str ip, [r1, #0xa90]
	str r3, [r2, #0]
	bl WM_End
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E8F70: .word 0x0221AE40
	arm_func_end ov4_021E8F34

	arm_func_start ov4_021E8F74
ov4_021E8F74: ; 0x021E8F74
	stmfd sp!, {r4, lr}
	movs r4, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E9034 ; =0x0221AE40
	mov r2, #0x400
	ldr r0, [r1, #0]
	add r3, r0, #0xf00
	add r0, r0, #0x1000
	str r3, [r0, #0x300]
	ldr r0, [r1, #0]
	add r0, r0, #0x1300
	strh r2, [r0, #4]
	bl WM_GetAllowedChannel
	ldr r1, _021E9034 ; =0x0221AE40
	ldr r1, [r1, #0]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	bl WM_GetDispersionScanPeriod
	ldr r3, _021E9034 ; =0x0221AE40
	mov ip, #1
	ldr r2, [r3, #0]
	mov r1, #0xff
	add r2, r2, #0x1300
	strh r0, [r2, #8]
	ldr r0, [r3, #0]
	mov r2, #6
	add r0, r0, #0x1300
	strh ip, [r0, #0x10]
	ldr r0, [r3, #0]
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl MI_CpuFill8
	ldr r2, _021E9034 ; =0x0221AE40
	mov r3, #1
	ldr r1, [r2, #0]
	ldr r0, _021E9038 ; =ov4_021E8BBC
	add r1, r1, #0x1000
	str r4, [r1, #0x344]
	ldr r1, [r2, #0]
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	ldr r1, [r2, #0]
	add r1, r1, #0x1300
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E9034: .word 0x0221AE40
_021E9038: .word ov4_021E8BBC
	arm_func_end ov4_021E8F74

	arm_func_start ov4_021E903C
ov4_021E903C: ; 0x021E903C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _021E9070 ; =0x0221AE40
	mov r2, #2
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	bl WM_EndScan
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E9070: .word 0x0221AE40
	arm_func_end ov4_021E903C

	arm_func_start ov4_021E9074
ov4_021E9074: ; 0x021E9074
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021E910C ; =0x0221AE40
	mov r5, r0
	ldr r0, [r2, #0]
	mov r4, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	blt _021E90B0
	ldr r0, [r0, #0xa88]
	cmp r5, r0
	blt _021E90B8
_021E90B0:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E90B8:
	mov r0, r4
	mov r1, #0
	mov r2, #0x78
	bl MI_CpuFill8
	mov r0, #1
	ldr r3, _021E910C ; =0x0221AE40
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	mov r2, #0x70
	add r0, r0, r5, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r4, #6
	strh r0, [r4, #4]
	ldr r0, [r3, #0]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r5, r2, r0
	bl MI_CpuCopy8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E910C: .word 0x0221AE40
	arm_func_end ov4_021E9074

	arm_func_start ov4_021E9110
ov4_021E9110: ; 0x021E9110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _021E91B0 ; =0x0221AE40
	mov r5, r0
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x780
	bl MI_CpuFill8
	mov r0, #0
	mov r1, r5
	mov r4, r0
_021E914C:
	add r0, r0, #1
	cmp r0, #0x10
	str r4, [r1, #0], #0x78
	blt _021E914C
	ldr r7, _021E91B0 ; =0x0221AE40
	ldr r0, [r7, #0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _021E91A8
	mvn r6, #0
_021E9178:
	mov r0, r4
	mov r1, r5
	bl ov4_021E9074
	cmp r0, r6
	beq _021E91A8
	ldr r0, [r7, #0]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	add r5, r5, #0x78
	cmp r4, r0
	blt _021E9178
_021E91A8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E91B0: .word 0x0221AE40
	arm_func_end ov4_021E9110

	.rodata


	.global Unk_ov4_0221597C
Unk_ov4_0221597C: ; 0x0221597C
	.incbin "incbin/overlay4_rodata.bin", 0x114, 0x4



	.bss


	.global Unk_ov4_0221AE40
Unk_ov4_0221AE40: ; 0x0221AE40
	.space 0x4

