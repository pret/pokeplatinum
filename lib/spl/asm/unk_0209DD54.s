	.include "macros/function.inc"
	.include "include/unk_0209DD54.inc"

	.extern FX_SinCosTable_

	.text


	arm_func_start sub_0209DD54
sub_0209DD54: ; 0x0209DD54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E1B0 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0xf0
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E1B4 ; =0x020F983C
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E1B8 ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl MTX_Identity43_
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x10]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _0209DE34
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl VEC_Normalize
	b _0209DE64
_0209DE34:
	add r1, sp, #0x90
	add r0, r4, #8
	bl VEC_Normalize
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_0209DE64:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl VEC_DotProduct
	ldr r1, _0209E1BC ; =0x00000CCD
	cmp r0, r1
	bgt _0209DE9C
	ldr r1, _0209E1C0 ; =0xFFFFF333
	cmp r0, r1
	bge _0209DEB0
_0209DE9C:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_0209DEB0:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl VEC_CrossProduct
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl VEC_CrossProduct
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209DF80
	cmp r0, #1
	beq _0209DFBC
	cmp r0, #2
	beq _0209DFD8
	b _0209DFFC
_0209DF80:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209DFFC
_0209DFBC:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209DFFC
_0209DFD8:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209DFFC:
	add r0, sp, #0x60
	mov r3, r2
	bl MTX_Scale43_
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E078
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl G3_LoadMtx43
	add r0, sp, #0
	bl G3_MultMtx43
	b _0209E11C
_0209E078:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E1C4 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E1C8 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl G3_MultMtx43
	add r0, sp, #0
	bl G3_MultMtx43
_0209E11C:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209E1CC ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r5, [r5, #0x40]
	ldr r4, _0209E1D0 ; =0x02100DA0
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E1B0: .word 0x040004A4
_0209E1B4: .word FX_SinCosTable_
_0209E1B8: .word Unk_02100DA8
_0209E1BC: .word 0x00000CCD
_0209E1C0: .word 0xFFFFF333
_0209E1C4: .word 0x04000454
_0209E1C8: .word 0x04000470
_0209E1CC: .word 0x04000480
_0209E1D0: .word Unk_02100DA0
	arm_func_end sub_0209DD54

	arm_func_start sub_0209E1D4
sub_0209E1D4: ; 0x0209E1D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xf0
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E62C ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0xf0
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E630 ; =0x020F983C
	ldr r0, [r0, #0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0, #0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E634 ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	add r0, sp, #0xc0
	bl MTX_Identity43_
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x48]
	movs r0, r0, lsr #0x1f
	bne _0209E2B0
	add r1, sp, #0x90
	add r0, r4, #0x14
	bl VEC_Normalize
	b _0209E2E0
_0209E2B0:
	add r1, sp, #0x90
	add r0, r4, #8
	bl VEC_Normalize
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r0, [sp, #0x98]
	rsb r2, r2, #0
	rsb r1, r1, #0
	rsb r0, r0, #0
	str r2, [sp, #0x90]
	str r1, [sp, #0x94]
	str r0, [sp, #0x98]
_0209E2E0:
	mov r3, #0
	mov r2, #0x1000
	add r0, sp, #0x90
	add r1, sp, #0xb4
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r3, [sp, #0xbc]
	bl VEC_DotProduct
	ldr r1, _0209E638 ; =0x00000CCD
	cmp r0, r1
	bgt _0209E318
	ldr r1, _0209E63C ; =0xFFFFF333
	cmp r0, r1
	bge _0209E32C
_0209E318:
	mov r0, #0
	mov r1, #0x1000
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
_0209E32C:
	add r0, sp, #0x90
	add r1, sp, #0xb4
	add r2, sp, #0x9c
	bl VEC_CrossProduct
	add r0, sp, #0x90
	add r1, sp, #0x9c
	add r2, sp, #0xa8
	bl VEC_CrossProduct
	ldr r7, [sp, #0x9c]
	ldr r6, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	str r7, [sp, #0xc0]
	ldr r7, [sp, #0xa8]
	str r6, [sp, #0xc4]
	ldr r6, [sp, #0xac]
	str r3, [sp, #0xc8]
	ldr r3, [sp, #0xb0]
	str r0, [sp, #0xcc]
	str r1, [sp, #0xd0]
	add r0, sp, #0x30
	str r2, [sp, #0xd4]
	add r1, sp, #0xc0
	mov r2, r0
	str r7, [sp, #0xd8]
	str r6, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r0, r0, lsl #1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209E3FC
	cmp r0, #1
	beq _0209E438
	cmp r0, #2
	beq _0209E454
	b _0209E478
_0209E3FC:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209E478
_0209E438:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209E478
_0209E454:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209E478:
	add r0, sp, #0x60
	mov r3, r2
	bl MTX_Scale43_
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E4F4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl G3_LoadMtx43
	add r0, sp, #0
	bl G3_MultMtx43
	b _0209E598
_0209E4F4:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E640 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E644 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl G3_MultMtx43
	add r0, sp, #0
	bl G3_MultMtx43
_0209E598:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _0209E648 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r5, #0x40]
	ldr r4, _0209E64C ; =0x02100DA0
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0xf0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E62C: .word 0x040004A4
_0209E630: .word FX_SinCosTable_
_0209E634: .word Unk_02100DA8
_0209E638: .word 0x00000CCD
_0209E63C: .word 0xFFFFF333
_0209E640: .word 0x04000454
_0209E644: .word 0x04000470
_0209E648: .word 0x04000480
_0209E64C: .word Unk_02100DA0
	arm_func_end sub_0209E1D4

	arm_func_start sub_0209E650
sub_0209E650: ; 0x0209E650
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209E984 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0x90
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209E988 ; =0x020F983C
	ldr r0, [r0, #0x14]
	mov r1, r1, asr #4
	ldrh r0, [r0]
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0x15
	mov r3, r0, lsr #0x1e
	ldr r2, _0209E98C ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209E754
	cmp r0, #1
	beq _0209E790
	cmp r0, #2
	beq _0209E7AC
	b _0209E7D0
_0209E754:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209E7D0
_0209E790:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209E7D0
_0209E7AC:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209E7D0:
	add r0, sp, #0x60
	mov r3, r2
	bl MTX_Scale43_
	add r0, sp, #0x30
	add r1, sp, #0x60
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209E84C
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl G3_LoadMtx43
	add r0, sp, #0
	bl G3_MultMtx43
	b _0209E8F0
_0209E84C:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209E990 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209E994 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl G3_MultMtx43
	add r0, sp, #0
	bl G3_MultMtx43
_0209E8F0:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, ip, #0x7c00
	mul ip, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209E998 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r5, [r5, #0x40]
	ldr r4, _0209E99C ; =0x02100DA0
	ldr r1, [r5, #0x20]
	ldrsh r0, [r5, #0x7c]
	ldr r3, [r1, #0x14]
	ldrsh r1, [r5, #0x7e]
	ldrh r5, [r3]
	mov r3, r2
	mov r5, r5, lsl #0x14
	mov r5, r5, lsr #0x1f
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209E984: .word 0x040004A4
_0209E988: .word FX_SinCosTable_
_0209E98C: .word Unk_02100DA8
_0209E990: .word 0x04000454
_0209E994: .word 0x04000470
_0209E998: .word 0x04000480
_0209E99C: .word Unk_02100DA0
	arm_func_end sub_0209E650

	arm_func_start sub_0209E9A0
sub_0209E9A0: ; 0x0209E9A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r1
	ldrh r2, [r4, #0x2e]
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r1, r2, lsl #0x16
	mov r3, r2, lsl #0x1b
	mov r1, r1, lsr #0x1b
	mov r3, r3, lsr #0x1b
	add r1, r1, #1
	mul r6, r3, r1
	mov r1, r2, lsl #0x10
	movs r2, r6, asr #5
	mov r1, r1, lsr #0x1a
	orr r0, r0, #0xc0
	orr r1, r0, r1, lsl #24
	ldr r0, _0209ECD4 ; =0x040004A4
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0]
	addeq sp, sp, #0x90
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r5, #0x40]
	ldrh r1, [r4, #0x20]
	ldr r0, [r0, #0x20]
	ldr r6, _0209ECD8 ; =0x020F983C
	ldr r0, [r0, #0]
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	ldr r0, [r0, #0]
	add r1, r2, #1
	mov r7, r2, lsl #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #0xd
	mov r3, r0, lsr #0x1e
	ldr r2, _0209ECDC ; =0x02100DA8
	ldrsh r0, [r6, r7]
	ldr r3, [r2, r3, lsl #2]
	ldrsh r1, [r6, r1]
	add r2, sp, #0x30
	blx r3
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0x30]
	ldr r0, [r0, #0x20]
	mov ip, #0x800
	ldr r0, [r0, #0]
	mov r3, r2, asr #0x1f
	ldrsh r1, [r0, #0x30]
	ldr r0, [r0, #0x48]
	mov lr, #0
	smull r6, r1, r2, r1
	adds r7, r6, ip
	adc r6, r1, #0
	mov r1, r7, lsr #0xc
	mov r0, r0, lsl #1
	orr r1, r1, r6, lsl #20
	movs r0, r0, lsr #0x1d
	beq _0209EAA4
	cmp r0, #1
	beq _0209EAE0
	cmp r0, #2
	beq _0209EAFC
	b _0209EB20
_0209EAA4:
	ldrsh r0, [r4, #0x34]
	mov r8, r0, asr #0x1f
	umull r7, r6, r2, r0
	mla r6, r2, r8, r6
	smull r8, r2, r1, r0
	adds r1, r8, ip
	adc r8, r2, lr
	adds r2, r7, ip
	mla r6, r3, r0, r6
	mov r1, r1, lsr #0xc
	adc r0, r6, lr
	mov r2, r2, lsr #0xc
	orr r1, r1, r8, lsl #20
	orr r2, r2, r0, lsl #20
	b _0209EB20
_0209EAE0:
	ldrsh r0, [r4, #0x34]
	smull r3, r0, r1, r0
	adds r1, r3, ip
	adc r0, r0, lr
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	b _0209EB20
_0209EAFC:
	ldrsh r6, [r4, #0x34]
	mov r0, r6, asr #0x1f
	umull r8, r7, r2, r6
	mla r7, r2, r0, r7
	adds r2, r8, ip
	mla r7, r3, r6, r7
	adc r0, r7, lr
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
_0209EB20:
	add r0, sp, #0x60
	mov r3, r2
	bl MTX_Scale43_
	add r0, sp, #0x60
	add r1, sp, #0x30
	add r2, sp, #0
	bl MTX_Concat43
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209EB9C
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x44]
	bl G3_LoadMtx43
	add r0, sp, #0
	bl G3_MultMtx43
	b _0209EC40
_0209EB9C:
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x38]
	ldr r0, [r3, #4]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x40]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x3c]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #8]
	ldr r0, _0209ECE0 ; =0x04000454
	sub r1, r2, r1
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x40]
	ldr r3, [r4, #0x10]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x40]
	ldr r1, [r1, #0]
	add r3, r3, r2
	ldr r2, [r1, #0xc]
	mov r1, #0
	sub r2, r3, r2
	str r2, [sp, #0x2c]
	str r1, [r0, #0]
	ldr r1, [r5, #0x40]
	ldr r0, _0209ECE4 ; =0x04000470
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0]
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #0]
	str r2, [r0, #0]
	str r3, [r0, #0]
	ldr r0, [r5, #0x44]
	bl G3_MultMtx43
	add r0, sp, #0
	bl G3_MultMtx43
_0209EC40:
	ldr r0, [r5, #0x40]
	ldrh r4, [r4, #0x36]
	ldrh ip, [r0, #0x72]
	ldr r1, _0209ECE8 ; =0x04000480
	and r2, r4, #0x1f
	and r0, ip, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, ip, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, ip, #0x7c00
	mul ip, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, ip, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r5, #0x40]
	ldr r4, _0209ECEC ; =0x02100DA0
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr ip, [r1]
	ldrsh r1, [r2, #0x7a]
	ldr r3, [ip]
	ldrsh r2, [ip, #0x50]
	mov r3, r3, lsl #0xc
	mov r5, r3, lsr #0x1f
	ldrsh r3, [ip, #0x52]
	ldr r4, [r4, r5, lsl #2]
	blx r4
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0209ECD4: .word 0x040004A4
_0209ECD8: .word FX_SinCosTable_
_0209ECDC: .word Unk_02100DA8
_0209ECE0: .word 0x04000454
_0209ECE4: .word 0x04000470
_0209ECE8: .word 0x04000480
_0209ECEC: .word Unk_02100DA0
	arm_func_end sub_0209E9A0

	arm_func_start sub_0209ECF0
sub_0209ECF0: ; 0x0209ECF0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _0209F3C0 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1, #0]
	addeq sp, sp, #0x88
	ldr r1, [r1, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209EDB8
	cmp r0, #1
	beq _0209EDF4
	cmp r0, #2
	beq _0209EE10
	b _0209EE34
_0209EDB8:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209EE34
_0209EDF4:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209EE34
_0209EE10:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209EE34:
	ldr r0, [r2, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209F09C
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209EED8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209EED8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209EED8:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _0209F3C4 ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2, #0]
	bl G3_MultMtx43
	b _0209F348
_0209F09C:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0, #0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F160
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F160
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F160:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _0209F3C4 ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0, #0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209F3C8 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl G3_MultMtx43
_0209F348:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209F3CC ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_020A0500
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209F3C0: .word 0x040004A4
_0209F3C4: .word 0x04000454
_0209F3C8: .word 0x04000470
_0209F3CC: .word 0x04000480
	arm_func_end sub_0209ECF0

	arm_func_start sub_0209F3D0
sub_0209F3D0: ; 0x0209F3D0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x88
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	movs r3, r3, asr #5
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	orr r2, r1, r2, lsl #24
	ldrsh r0, [r4, #0x30]
	ldr r8, [r7, #0x44]
	ldr r1, _0209FAA8 ; =0x040004A4
	orr r2, r2, r3, lsl #16
	str r2, [r1, #0]
	addeq sp, sp, #0x88
	ldr r1, [r1, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r1, [r7, #0x40]
	smull r2, r5, r4, r0
	ldr r0, [r1, #0x20]
	mov r3, #0x800
	adds r1, r2, r3
	ldr r2, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r2, #0x48]
	mov r5, r1, lsr #0xc
	mov r0, r0, lsl #1
	mov r1, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209F498
	cmp r0, #1
	beq _0209F4D4
	cmp r0, #2
	beq _0209F4F0
	b _0209F514
_0209F498:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r1, r0, sl
	adds r0, lr, r3
	adc lr, r4, sb
	adds r1, ip, r3
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r1, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209F514
_0209F4D4:
	ldrsh r0, [r6, #0x34]
	smull r1, r0, r5, r0
	adds r1, r1, r3
	adc r0, r0, sb
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209F514
_0209F4F0:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r3, lr, r3
	mla ip, r1, sl, ip
	adc r0, ip, sb
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209F514:
	ldr r0, [r2, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209F77C
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x38]
	add sb, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	ldr r1, [r6, #0x3c]
	add r0, r6, #0x14
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x40]
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F5B8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F5B8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F5B8:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr ip, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov lr, r2, lsr #0xc
	orr lr, lr, r0, lsl #20
	smull r0, r4, ip, r5
	adds r8, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, lr
	adc r4, r4, #0
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	adds r3, r3, sb
	smull lr, r2, ip, lr
	str r8, [sp, #0x54]
	adc r0, r0, #0
	adds r8, sl, sb
	adc r4, r5, #0
	adds r5, lr, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, r8, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r4, #0x1000
	ldr r2, _0209FAAC ; =0x04000454
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	add r0, sp, #0x54
	str r5, [sp, #0x64]
	str r1, [sp, #0x6c]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r2, #0]
	bl G3_MultMtx43
	b _0209FA28
_0209F77C:
	ldr r3, [r6, #8]
	ldr r1, [r6, #0x38]
	ldr r0, [r2, #4]
	add r1, r3, r1
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x3c]
	ldr r0, [r0, #0]
	add r1, r2, r1
	ldr r0, [r0, #8]
	add sb, sp, #0x18
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x40]
	ldr r2, [r6, #0x10]
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0]
	add r2, r2, r1
	ldr r1, [r0, #0xc]
	add r0, r6, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2}
	stmia sb, {r0, r1, r2}
	ldr r0, [r8, #8]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, sb
	str r2, [sp, #0x28]
	ldr r3, [r8, #0x20]
	mov r2, sb
	str r3, [sp, #0x2c]
	bl VEC_CrossProduct
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0209F840
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0209F840
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
_0209F840:
	add r0, sp, #0x18
	mov r1, r0
	bl VEC_Normalize
	add r1, sp, #0x30
	mov r0, r8
	bl MI_Copy36B
	add r0, sp, #0x18
	add r1, sp, #0x30
	mov r2, r0
	bl MTX_MultVec33
	add r0, sp, #0xc
	mov r1, r8
	mov r2, r0
	bl MTX_MultVec43
	add r0, r6, #0x14
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r1, r3
	bl VEC_Normalize
	ldr r0, [r8, #0x20]
	ldr r1, [sp, #8]
	rsb r0, r0, #0
	smull r3, r0, r1, r0
	mov r2, #0x800
	adds r1, r3, r2
	ldr r3, [r8, #0x14]
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r8, #8]
	ldr sb, [sp]
	rsb r0, r0, #0
	smull r8, r0, sb, r0
	adds sb, r8, r2
	adc r8, r0, #0
	mov r0, sb, lsr #0xc
	orr r0, r0, r8, lsl #20
	ldr r8, [sp, #4]
	rsb r3, r3, #0
	smull sb, r3, r8, r3
	adds r8, sb, r2
	adc r2, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	rsbmi r1, r1, #0
	ldr r0, [r0, #0x20]
	rsb r2, r1, #0x1000
	ldr r0, [r0, #0]
	mov sb, #0x800
	ldr r0, [r0, #0x48]
	ldr lr, [sp, #0x18]
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	smull r8, r0, r2, r0
	adds r2, r8, sb
	adc r0, r0, #0
	mov r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x1000
	smull r2, r0, r4, r0
	adds r2, r2, sb
	adc r0, r0, #0
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r0, r4, lr, r5
	adds ip, r0, sb
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	rsb r2, r3, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x10]
	smull sl, r5, r3, r5
	str r0, [sp, #0x7c]
	smull r3, r0, r2, r8
	adc r4, r4, #0
	mov ip, ip, lsr #0xc
	adds r3, r3, sb
	orr ip, ip, r4, lsl #20
	adc r0, r0, #0
	adds sl, sl, sb
	smull r8, r2, lr, r8
	adc r4, r5, #0
	adds r5, r8, sb
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r8, sl, lsr #0xc
	orr r8, r8, r4, lsl #20
	ldr r3, [sp, #0x14]
	adc r0, r2, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	mov r4, #0x1000
	ldr r0, _0209FAAC ; =0x04000454
	str ip, [sp, #0x54]
	str sb, [sp, #0x60]
	str r8, [sp, #0x58]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x64]
	str r1, [sp, #0x70]
	str r1, [sp, #0x5c]
	str r1, [sp, #0x68]
	str r4, [sp, #0x74]
	str r3, [sp, #0x80]
	str r1, [r0, #0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209FAB0 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0x54
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl G3_MultMtx43
_0209FA28:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	ldr r1, _0209FAB4 ; =0x04000480
	and r2, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r2, r0
	and r2, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r2, r0
	and r4, r4, #0x7c00
	and r2, r5, #0x7c00
	mul r5, r4, r2
	mov r2, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r2, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [r7, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1, #0]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_020A0500
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209FAA8: .word 0x040004A4
_0209FAAC: .word 0x04000454
_0209FAB0: .word 0x04000470
_0209FAB4: .word 0x04000480
	arm_func_end sub_0209F3D0

	arm_func_start sub_0209FAB8
sub_0209FAB8: ; 0x0209FAB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x40
	mov r6, r1
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	ldr r4, [r7, #0x40]
	mov r0, r1, lsl #0x16
	mov r2, r1, lsl #0x1b
	mov r0, r0, lsr #0x1b
	mov r2, r2, lsr #0x1b
	add r0, r0, #1
	mul r3, r2, r0
	ldr r2, [r4, #0x20]
	ldr r0, [r7, #0x3c]
	ldr r4, [r2, #0]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1a
	orr r1, r0, #0xc0
	ldrsh r0, [r4, #0x30]
	movs r4, r3, asr #5
	orr r3, r1, r2, lsl #24
	ldr r1, [r7, #0x44]
	ldr r2, _0209FEF8 ; =0x040004A4
	orr r3, r3, r4, lsl #16
	str r3, [r2, #0]
	addeq sp, sp, #0x40
	ldr r2, [r2, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r4, [r6, #0x30]
	ldr r2, [r7, #0x40]
	smull r3, r5, r4, r0
	ldr r0, [r2, #0x20]
	mov r8, #0x800
	adds r2, r3, r8
	ldr r3, [r0, #0]
	adc sb, r5, #0
	ldr r0, [r3, #0x48]
	mov r5, r2, lsr #0xc
	mov r0, r0, lsl #1
	mov r2, r4, asr #0x1f
	orr r5, r5, sb, lsl #20
	movs r0, r0, lsr #0x1d
	mov sb, #0
	beq _0209FB80
	cmp r0, #1
	beq _0209FBBC
	cmp r0, #2
	beq _0209FBD8
	b _0209FBFC
_0209FB80:
	ldrsh r0, [r6, #0x34]
	mov lr, r0, asr #0x1f
	umull ip, sl, r4, r0
	mla sl, r4, lr, sl
	smull lr, r4, r5, r0
	mla sl, r2, r0, sl
	adds r0, lr, r8
	adc lr, r4, sb
	adds r2, ip, r8
	mov r5, r0, lsr #0xc
	adc r0, sl, sb
	mov r4, r2, lsr #0xc
	orr r5, r5, lr, lsl #20
	orr r4, r4, r0, lsl #20
	b _0209FBFC
_0209FBBC:
	ldrsh r0, [r6, #0x34]
	smull r2, r0, r5, r0
	adds r2, r2, r8
	adc r0, r0, sb
	mov r5, r2, lsr #0xc
	orr r5, r5, r0, lsl #20
	b _0209FBFC
_0209FBD8:
	ldrsh sl, [r6, #0x34]
	mov r0, sl, asr #0x1f
	umull lr, ip, r4, sl
	mla ip, r4, r0, ip
	adds r4, lr, r8
	mla ip, r2, sl, ip
	adc r0, ip, sb
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
_0209FBFC:
	ldr r0, [r3, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _0209FD1C
	ldr r3, [r6, #8]
	ldr r2, [r6, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr r8, [r6, #0xc]
	ldr r3, [r6, #0x3c]
	mov r2, r0
	add r3, r8, r3
	str r3, [sp, #4]
	ldr r8, [r6, #0x10]
	ldr r3, [r6, #0x40]
	add r3, r8, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r6, #0x20]
	ldr r2, _0209FEFC ; =0x020F983C
	mov sb, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov lr, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull ip, sl, r1, r5
	str lr, [sp, #0x2c]
	rsb r8, r1, #0
	ldr r1, [sp, #8]
	smull lr, r5, r0, r5
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, lr, r3
	adc r5, r5, #0
	adds ip, ip, r3
	mov lr, r2, lsr #0xc
	orr lr, lr, r5, lsl #20
	smull r5, r2, r8, r4
	adc sl, sl, #0
	mov r8, ip, lsr #0xc
	orr r8, r8, sl, lsl #20
	adds r5, r5, r3
	smull sl, r4, r0, r4
	adc r0, r2, #0
	adds r2, sl, r3
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	mov r3, r2, lsr #0xc
	adc r0, r4, #0
	orr r3, r3, r0, lsl #20
	ldr r2, _0209FF00 ; =0x04000454
	str lr, [sp, #0xc]
	add r0, sp, #0xc
	str r8, [sp, #0x10]
	str sb, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	str sb, [sp, #0x20]
	str sb, [sp, #0x24]
	str sb, [sp, #0x28]
	str r1, [sp, #0x38]
	str sb, [r2]
	bl G3_MultMtx43
	b _0209FE80
_0209FD1C:
	ldr r8, [r6, #8]
	ldr r2, [r6, #0x38]
	ldr r0, [r3, #4]
	add r2, r8, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x3c]
	ldr r2, [r2, #0]
	add r3, r8, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r7, #0x40]
	ldr r8, [r6, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r6, #0x40]
	ldr r2, [r2, #0]
	add r8, r8, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, r8, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r6, #0x20]
	ldr r2, _0209FEFC ; =0x020F983C
	mov lr, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	mov sl, #0x1000
	ldr r3, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0x30]
	smull sb, r8, r1, r5
	str sl, [sp, #0x2c]
	rsb ip, r1, #0
	smull sl, r5, r0, r5
	ldr r1, [sp, #8]
	mov r3, #0x800
	str r2, [sp, #0x34]
	adds r2, sl, r3
	adc r5, r5, #0
	mov sl, r2, lsr #0xc
	orr sl, sl, r5, lsl #20
	str r1, [sp, #0x38]
	adds sb, sb, r3
	str sl, [sp, #0xc]
	adc sl, r8, #0
	smull r5, r2, ip, r4
	mov r8, sb, lsr #0xc
	orr r8, r8, sl, lsl #20
	smull sb, r4, r0, r4
	adds r5, r5, r3
	adc r0, r2, #0
	adds r2, sb, r3
	mov r3, r5, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r0, r4, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, _0209FF00 ; =0x04000454
	str r8, [sp, #0x10]
	str lr, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x24]
	str lr, [sp, #0x28]
	str lr, [r0]
	ldr r0, [r7, #0x40]
	ldr r1, _0209FF04 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2, #0]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r4, [r1, #0]
	bl G3_MultMtx43
_0209FE80:
	ldr r0, [r7, #0x40]
	ldrh r4, [r6, #0x36]
	ldrh r5, [r0, #0x72]
	mov r2, #0
	and r1, r4, #0x1f
	and r0, r5, #0x1f
	mul r3, r1, r0
	and r1, r4, #0x3e0
	and r0, r5, #0x3e0
	mul r0, r1, r0
	and r4, r4, #0x7c00
	and r1, r5, #0x7c00
	mul r5, r4, r1
	mov r1, r3, asr #5
	mov r0, r0, asr #0xf
	mov r3, r5, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r3, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _0209FF08 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r1, [r7, #0x40]
	mov r3, r2
	ldrsh r0, [r1, #0x7c]
	ldrsh r1, [r1, #0x7e]
	bl sub_020A0500
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	; .align 2, 0
_0209FEF8: .word 0x040004A4
_0209FEFC: .word FX_SinCosTable_
_0209FF00: .word 0x04000454
_0209FF04: .word 0x04000470
_0209FF08: .word 0x04000480
	arm_func_end sub_0209FAB8

	arm_func_start sub_0209FF0C
sub_0209FF0C: ; 0x0209FF0C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r8, r1
	ldrh r3, [r8, #0x2e]
	mov sb, r0
	ldr r1, [sb, #0x40]
	mov r0, r3, lsl #0x16
	mov r2, r3, lsl #0x1b
	mov r0, r0, lsr #0x1b
	ldr r4, [r1, #0x20]
	mov r2, r2, lsr #0x1b
	ldr r5, [r4, #0]
	add r0, r0, #1
	mul r0, r2, r0
	movs fp, r0, asr #5
	mov r3, r3, lsl #0x10
	ldr r2, [sb, #0x3c]
	mov r6, r3, lsr #0x1a
	orr r3, r2, #0xc0
	ldr r4, [r5, #0x48]
	ldrsh r7, [r5, #0x30]
	mov r2, r4, lsl #1
	ldrh r4, [r1, #0x72]
	orr r3, r3, r6, lsl #24
	ldrsh sl, [r8, #0x34]
	ldrh r5, [r8, #0x36]
	ldr r1, [sb, #0x44]
	ldr r0, _020A0344 ; =0x040004A4
	orr r3, r3, fp, lsl #16
	str r3, [r0, #0]
	mov r2, r2, lsr #0x1d
	addeq sp, sp, #0x3c
	and r3, r2, #0xff
	ldr r0, [r0, #0]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r6, [r8, #0x30]
	mov r0, #0x800
	smull r7, r2, r6, r7
	adds r7, r7, r0
	adc r2, r2, #0
	mov r7, r7, lsr #0xc
	cmp r3, #0
	mov lr, r6, asr #0x1f
	orr r7, r7, r2, lsl #20
	mov r2, #0
	bne _020A0000
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	smull r6, sl, r7, sl
	adds r6, r6, r0
	adc sl, sl, r2
	adds fp, fp, r0
	adc r0, r3, r2
	mov r7, r6, lsr #0xc
	mov r6, fp, lsr #0xc
	orr r7, r7, sl, lsl #20
	orr r6, r6, r0, lsl #20
	b _020A0040
_020A0000:
	cmp r3, #1
	bne _020A0020
	smull sl, r3, r7, sl
	adds r7, sl, r0
	adc r0, r3, r2
	mov r7, r7, lsr #0xc
	orr r7, r7, r0, lsl #20
	b _020A0040
_020A0020:
	mov ip, sl, asr #0x1f
	umull fp, r3, r6, sl
	adds r0, fp, r0
	mla r3, r6, ip, r3
	mla r3, lr, sl, r3
	adc r2, r3, r2
	mov r6, r0, lsr #0xc
	orr r6, r6, r2, lsl #20
_020A0040:
	ldr r0, [sb, #0x40]
	ldr r0, [r0, #0x20]
	ldr sl, [r0]
	ldr r0, [sl]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	bne _020A016C
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	add r0, sp, #0
	add r2, r3, r2
	str r2, [sp]
	ldr sl, [r8, #0xc]
	ldr r3, [r8, #0x3c]
	mov r2, r0
	add r3, sl, r3
	str r3, [sp, #4]
	ldr sl, [r8, #0x10]
	ldr r3, [r8, #0x40]
	add r3, sl, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r8, #0x20]
	ldr r2, _020A0348 ; =0x020F983C
	ldr ip, [sp]
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	ldr r2, [sp, #4]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	str r2, [sp, #0x34]
	mov r8, #0
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	adds r3, ip, r2
	smull sl, r6, r0, r6
	adc r0, r1, #0
	adds r1, sl, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	mov r2, r1, lsr #0xc
	adc r0, r6, #0
	orr r2, r2, r0, lsl #20
	ldr r1, _020A034C ; =0x04000454
	str fp, [sp, #0xc]
	add r0, sp, #0xc
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r1]
	bl G3_MultMtx43
	b _020A02D0
_020A016C:
	ldr r3, [r8, #8]
	ldr r2, [r8, #0x38]
	ldr r0, [sl, #4]
	add r2, r3, r2
	sub r0, r2, r0
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0xc]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x3c]
	ldr r2, [r2, #0]
	add r3, sl, r3
	ldr r2, [r2, #8]
	add r0, sp, #0
	sub r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [sb, #0x40]
	ldr sl, [r8, #0x10]
	ldr r2, [r2, #0x20]
	ldr r3, [r8, #0x40]
	ldr r2, [r2, #0]
	add sl, sl, r3
	ldr r3, [r2, #0xc]
	mov r2, r0
	sub r3, sl, r3
	str r3, [sp, #8]
	bl MTX_MultVec43
	ldrh r0, [r8, #0x20]
	ldr r2, _020A0348 ; =0x020F983C
	mov r8, #0
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	ldr ip, [sp]
	ldr r2, [sp, #4]
	str ip, [sp, #0x30]
	mov ip, #0x1000
	str r2, [sp, #0x34]
	smull fp, sl, r1, r7
	str ip, [sp, #0x2c]
	rsb r3, r1, #0
	ldr r1, [sp, #8]
	smull ip, r7, r0, r7
	mov r2, #0x800
	str r1, [sp, #0x38]
	adds r1, ip, r2
	adc ip, r7, #0
	adds r7, fp, r2
	mov fp, r1, lsr #0xc
	orr fp, fp, ip, lsl #20
	smull ip, r1, r3, r6
	adc sl, sl, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, sl, lsl #20
	smull sl, r6, r0, r6
	adds r3, ip, r2
	adc r0, r1, #0
	adds r1, sl, r2
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	adc r0, r6, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x1c]
	ldr r0, _020A034C ; =0x04000454
	str fp, [sp, #0xc]
	str r7, [sp, #0x10]
	str r8, [sp, #0x14]
	str r2, [sp, #0x18]
	str r8, [sp, #0x20]
	str r8, [sp, #0x24]
	str r8, [sp, #0x28]
	str r8, [r0]
	ldr r0, [sb, #0x40]
	ldr r1, _020A0350 ; =0x04000470
	ldr r2, [r0, #0x20]
	add r0, sp, #0xc
	ldr r2, [r2, #0]
	ldr r6, [r2, #0xc]
	ldr r3, [r2, #8]
	ldr r2, [r2, #4]
	str r2, [r1, #0]
	str r3, [r1, #0]
	str r6, [r1, #0]
	bl G3_MultMtx43
_020A02D0:
	and r1, r5, #0x1f
	and r0, r4, #0x1f
	mul r2, r1, r0
	and r1, r5, #0x3e0
	and r0, r4, #0x3e0
	mul r0, r1, r0
	and r3, r5, #0x7c00
	and r1, r4, #0x7c00
	mul r4, r3, r1
	mov r1, r2, asr #5
	mov r0, r0, asr #0xf
	mov r2, r4, asr #0x19
	orr r0, r1, r0, lsl #5
	orr r0, r0, r2, lsl #10
	mov r0, r0, lsl #0x10
	ldr r1, _020A0354 ; =0x04000480
	mov r0, r0, lsr #0x10
	str r0, [r1, #0]
	ldr r2, [sb, #0x40]
	ldr r1, [r2, #0x20]
	ldrsh r0, [r2, #0x78]
	ldr r3, [r1, #0]
	ldrsh r1, [r2, #0x7a]
	ldrsh r2, [r3, #0x50]
	ldrsh r3, [r3, #0x52]
	bl sub_020A0500
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_020A0344: .word 0x040004A4
_020A0348: .word FX_SinCosTable_
_020A034C: .word 0x04000454
_020A0350: .word 0x04000470
_020A0354: .word 0x04000480
	arm_func_end sub_0209FF0C

	arm_func_start sub_020A0358
sub_020A0358: ; 0x020A0358
	str r1, [r2, #0]
	mov ip, #0
	str ip, [r2, #0xc]
	str r0, [r2, #0x18]
	str ip, [r2, #0x24]
	str ip, [r2, #4]
	mov r3, #0x1000
	str r3, [r2, #0x10]
	str ip, [r2, #0x1c]
	str ip, [r2, #0x28]
	rsb r0, r0, #0
	str r0, [r2, #8]
	str ip, [r2, #0x14]
	str r1, [r2, #0x20]
	str ip, [r2, #0x2c]
	bx lr
	arm_func_end sub_020A0358

	arm_func_start sub_020A0398
sub_020A0398: ; 0x020A0398
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r3, _020A043C ; =0x00000555
	rsb r7, r1, #0x1000
	ldr ip, _020A0440 ; =0x0000093D
	mov r4, #0
	umull sb, r8, r7, r3
	umull r6, r5, r0, ip
	mov lr, #0x800
	adds sb, sb, lr
	mla r8, r7, r4, r8
	mov r7, r7, asr #0x1f
	mla r8, r7, r3, r8
	adc r7, r8, #0
	mov r3, sb, lsr #0xc
	adds r6, r6, lr
	orr r3, r3, r7, lsl #20
	add r1, r3, r1
	mla r5, r0, r4, r5
	mov r0, r0, asr #0x1f
	mla r5, r0, ip, r5
	adc r0, r5, #0
	mov r5, r6, lsr #0xc
	orr r5, r5, r0, lsl #20
	str r1, [r2, #0]
	add ip, r3, r5
	str ip, [r2, #0xc]
	sub r0, r3, r5
	str r0, [r2, #0x18]
	str r4, [r2, #0x24]
	str r0, [r2, #4]
	str r1, [r2, #0x10]
	str ip, [r2, #0x1c]
	str r4, [r2, #0x28]
	str ip, [r2, #8]
	str r0, [r2, #0x14]
	str r1, [r2, #0x20]
	str r4, [r2, #0x2c]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	; .align 2, 0
_020A043C: .word 0x00000555
_020A0440: .word 0x0000093D
	arm_func_end sub_020A0398

	arm_func_start sub_020A0444
sub_020A0444: ; 0x020A0444
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub r7, r2, #0x1000
	add r5, r3, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr ip, _020A04EC ; =0x04000500
	mov r8, #1
	ldr r6, _020A04F0 ; =0x000003FF
	mov r2, r7, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _020A04F4 ; =0x04000488
	str r8, [ip]
	mov ip, #0
	and r2, r6, r2, asr #22
	and r7, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _020A04F8 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #20
	str r5, [r6, #0]
	str r1, [r3, #0]
	orr r5, lr, r7, lsl #20
	str r5, [r6, #0]
	orr r1, r1, r0, lsl #16
	str r1, [r3, #0]
	orr r1, lr, r4, lsl #20
	str r1, [r6, #0]
	mov r0, r0, lsl #0x10
	str r0, [r3, #0]
	orr r1, r2, r4, lsl #20
	ldr r0, _020A04FC ; =0x04000504
	str r1, [r6, #0]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_020A04EC: .word 0x04000500
_020A04F0: .word 0x000003FF
_020A04F4: .word 0x04000488
_020A04F8: .word 0x04000490
_020A04FC: .word 0x04000504
	arm_func_end sub_020A0444

	arm_func_start sub_020A0500
sub_020A0500: ; 0x020A0500
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	add ip, r3, #0x1000
	sub r5, r2, #0x1000
	add r4, r2, #0x1000
	mov r2, r0, lsl #8
	mov r0, r1, lsl #8
	sub r3, r3, #0x1000
	mov r0, r0, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr r7, _020A05A8 ; =0x04000500
	mov r8, #1
	ldr r6, _020A05AC ; =0x000003FF
	mov r2, ip, lsl #0x10
	mov lr, r5, lsl #0x10
	mov r4, r4, lsl #0x10
	mov r5, r3, lsl #0x10
	ldr r3, _020A05B0 ; =0x04000488
	str r8, [r7]
	mov ip, #0
	and r7, r6, r2, asr #22
	and r2, r6, lr, asr #22
	and lr, r6, r4, asr #22
	and r4, r6, r5, asr #22
	ldr r6, _020A05B4 ; =0x04000490
	str ip, [r3]
	orr r5, r2, r7, lsl #10
	str r5, [r6, #0]
	str r1, [r3, #0]
	orr r5, lr, r7, lsl #10
	str r5, [r6, #0]
	orr r1, r1, r0, lsl #16
	str r1, [r3, #0]
	orr r1, lr, r4, lsl #10
	str r1, [r6, #0]
	mov r0, r0, lsl #0x10
	str r0, [r3, #0]
	orr r1, r2, r4, lsl #10
	ldr r0, _020A05B8 ; =0x04000504
	str r1, [r6, #0]
	str ip, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_020A05A8: .word 0x04000500
_020A05AC: .word 0x000003FF
_020A05B0: .word 0x04000488
_020A05B4: .word 0x04000490
_020A05B8: .word 0x04000504
	arm_func_end sub_020A0500

	.data


	.global Unk_02100DA0
Unk_02100DA0: ; 0x02100DA0
	.word sub_020A0500
	.word sub_020A0444

	.global Unk_02100DA8
Unk_02100DA8: ; 0x02100DA8
	.word sub_020A0358
	.word sub_020A0398

