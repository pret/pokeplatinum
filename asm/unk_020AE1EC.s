	.include "macros/function.inc"
	.include "include/unk_020AE1EC.inc"

	

	.text


	arm_func_start NNSi_G2dGetUnpackedFont
NNSi_G2dGetUnpackedFont: ; 0x020AE1EC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, #0
	beq _020AE264
	cmp r6, #0
	beq _020AE21C
	ldr r1, [r6, #0]
	ldr r0, _020AE334 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _020AE220
_020AE21C:
	mov r0, #0
_020AE220:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AE268
	cmp r6, #0
	beq _020AE250
	ldrh r1, [r6, #6]
	ldr r0, _020AE338 ; =0x00000101
	cmp r1, r0
	movhs r0, #1
	bhs _020AE254
_020AE250:
	mov r0, #0
_020AE254:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _020AE268
_020AE264:
	mov r0, r4
_020AE268:
	cmp r0, #0
	bne _020AE2E8
	cmp r6, #0
	beq _020AE2D4
	beq _020AE290
	ldr r1, [r6, #0]
	ldr r0, _020AE334 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _020AE294
_020AE290:
	mov r0, #0
_020AE294:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AE2D8
	cmp r6, #0
	beq _020AE2C0
	ldrh r0, [r6, #6]
	cmp r0, #0x100
	movhs r0, #1
	bhs _020AE2C4
_020AE2C0:
	mov r0, #0
_020AE2C4:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _020AE2D8
_020AE2D4:
	mov r0, #0
_020AE2D8:
	cmp r0, #0
	bne _020AE2E4
	bl OS_Terminate
_020AE2E4:
	mov r4, #1
_020AE2E8:
	mov r0, r6
	bl NNSi_G2dUnpackNFT
	ldr r1, _020AE33C ; =0x46494E46
	mov r0, r6
	bl NNS_G2dFindBinaryBlock
	cmp r0, #0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #8
	str r0, [r5, #0]
	cmp r4, #0
	beq _020AE32C
	ldr r0, [r5, #0]
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #7]
_020AE32C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AE334: .word 0x4E465452
_020AE338: .word 0x00000101
_020AE33C: .word 0x46494E46
	arm_func_end NNSi_G2dGetUnpackedFont

	arm_func_start NNSi_G2dUnpackNFT
NNSi_G2dUnpackNFT: ; 0x020AE340
	stmfd sp!, {r4, r5, r6, lr}
	ldrh r1, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	mov r2, #0
	add r1, r0, r1
	cmp r3, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r3, _020AE40C ; =0x46494E46
	ldr ip, _020AE410 ; =0x43574448
	ldr r4, _020AE414 ; =0x434D4150
	ldr lr, _020AE418 ; =0x43474C50
_020AE36C:
	ldr r5, [r1, #0]
	cmp r5, r4
	bhi _020AE384
	bhs _020AE3E0
	cmp r5, lr
	b _020AE3F0
_020AE384:
	cmp r5, ip
	bhi _020AE394
	beq _020AE3CC
	b _020AE3F0
_020AE394:
	cmp r5, r3
	bne _020AE3F0
	ldr r5, [r1, #0x10]
	add r5, r5, r0
	str r5, [r1, #0x10]
	ldr r5, [r1, #0x14]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x14]
	ldr r5, [r1, #0x18]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x18]
	b _020AE3F0
_020AE3CC:
	ldr r5, [r1, #0xc]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0xc]
	b _020AE3F0
_020AE3E0:
	ldr r5, [r1, #0x10]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x10]
_020AE3F0:
	ldrh r5, [r0, #0xe]
	ldr r6, [r1, #4]
	add r2, r2, #1
	cmp r2, r5
	add r1, r1, r6
	blt _020AE36C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AE40C: .word 0x46494E46
_020AE410: .word 0x43574448
_020AE414: .word 0x434D4150
_020AE418: .word 0x43474C50
	arm_func_end NNSi_G2dUnpackNFT