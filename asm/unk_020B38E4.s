	.include "macros/function.inc"
	.include "include/unk_020B38E4.inc"

	

	.text


	arm_func_start NNS_G3dGetResDataByName
NNS_G3dGetResDataByName: ; 0x020B38E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r5, [r0, #1]
	cmp r5, #0x10
	bhs _020B39B4
	ldmia r1, {r2, r3, ip, lr}
	cmp r5, #0
	mov r1, #0
	bls _020B3A9C
	mov r4, r1
	mov r7, r1
_020B3918:
	cmp r0, #0
	beq _020B3944
	ldrb r6, [r0, #1]
	cmp r1, r6
	bhs _020B3944
	ldrh r6, [r0, #6]
	add r8, r0, r6
	ldrh r6, [r8, #2]
	add r6, r8, r6
	add r8, r6, r4
	b _020B3948
_020B3944:
	mov r8, r7
_020B3948:
	ldr r6, [r8]
	cmp r6, r2
	ldreq r6, [r8, #4]
	cmpeq r6, r3
	ldreq r6, [r8, #8]
	cmpeq r6, ip
	ldreq r6, [r8, #0xc]
	cmpeq r6, lr
	bne _020B399C
	cmp r0, #0
	beq _020B3994
	cmp r1, r5
	bhs _020B3994
	ldrh r3, [r0, #6]
	ldrh r2, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r2, r1, r0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3994:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B399C:
	ldrb r6, [r0, #1]
	add r1, r1, #1
	add r4, r4, #0x10
	cmp r1, r6
	blo _020B3918
	b _020B3A9C
_020B39B4:
	add r4, r0, #8
	ldrb r3, [r4, #1]
	cmp r3, #0
	beq _020B3A9C
	ldrb r7, [r4, r3, lsl #2]
	ldrb r2, [r4]
	add r6, r4, r3, lsl #2
	cmp r2, r7
	bls _020B3A08
_020B39D8:
	mov r2, r7, asr #5
	ldr r3, [r1, r2, lsl #2]
	and r2, r7, #0x1f
	mov r2, r3, lsr r2
	and r2, r2, #1
	add r2, r6, r2
	ldrb r3, [r2, #1]
	ldrb r2, [r6]
	ldrb r7, [r4, r3, lsl #2]
	add r6, r4, r3, lsl #2
	cmp r2, r7
	bhi _020B39D8
_020B3A08:
	cmp r0, #0
	ldrb r2, [r6, #3]
	beq _020B3A34
	cmp r2, r5
	bhs _020B3A34
	ldrh r3, [r0, #6]
	add r4, r0, r3
	ldrh r3, [r4, #2]
	add r3, r4, r3
	add r6, r3, r2, lsl #4
	b _020B3A38
_020B3A34:
	mov r6, #0
_020B3A38:
	ldr r4, [r6, #0]
	ldr r3, [r1, #0]
	cmp r4, r3
	ldreq r4, [r6, #4]
	ldreq r3, [r1, #4]
	cmpeq r4, r3
	ldreq r4, [r6, #8]
	ldreq r3, [r1, #8]
	cmpeq r4, r3
	ldreq r3, [r6, #0xc]
	ldreq r1, [r1, #0xc]
	cmpeq r3, r1
	bne _020B3A9C
	cmp r0, #0
	beq _020B3A94
	cmp r2, r5
	bhs _020B3A94
	ldrh r3, [r0, #6]
	ldrh r1, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r1, r2, r0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3A94:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3A9C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_G3dGetResDataByName

	arm_func_start NNS_G3dGetResDictIdxByName
NNS_G3dGetResDictIdxByName: ; 0x020B3AA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #1]
	cmp r2, #0x10
	bhs _020B3B48
	cmp r2, #0
	ldmia r1, {r2, r3, ip, lr}
	mov r1, #0
	bls _020B3C04
	mov r4, r1
	mov r6, r1
_020B3AD8:
	cmp r0, #0
	beq _020B3B04
	ldrb r5, [r0, #1]
	cmp r1, r5
	bhs _020B3B04
	ldrh r5, [r0, #6]
	add r7, r0, r5
	ldrh r5, [r7, #2]
	add r5, r7, r5
	add r7, r5, r4
	b _020B3B08
_020B3B04:
	mov r7, r6
_020B3B08:
	ldr r5, [r7, #0]
	cmp r5, r2
	ldreq r5, [r7, #4]
	cmpeq r5, r3
	ldreq r5, [r7, #8]
	cmpeq r5, ip
	ldreq r5, [r7, #0xc]
	cmpeq r5, lr
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r0, #1]
	add r1, r1, #1
	add r4, r4, #0x10
	cmp r1, r5
	blo _020B3AD8
	b _020B3C04
_020B3B48:
	add r5, r0, #8
	ldrb r4, [r5, #1]
	cmp r4, #0
	beq _020B3C04
	ldrb r7, [r5, r4, lsl #2]
	ldrb r3, [r5]
	add r6, r5, r4, lsl #2
	cmp r3, r7
	bls _020B3B9C
_020B3B6C:
	mov r3, r7, asr #5
	ldr r4, [r1, r3, lsl #2]
	and r3, r7, #0x1f
	mov r3, r4, lsr r3
	and r3, r3, #1
	add r3, r6, r3
	ldrb r4, [r3, #1]
	ldrb r3, [r6]
	ldrb r7, [r5, r4, lsl #2]
	add r6, r5, r4, lsl #2
	cmp r3, r7
	bhi _020B3B6C
_020B3B9C:
	cmp r0, #0
	ldrb r3, [r6, #3]
	beq _020B3BC8
	cmp r3, r2
	bhs _020B3BC8
	ldrh r2, [r0, #6]
	add r2, r0, r2
	ldrh r0, [r2, #2]
	add r0, r2, r0
	add r4, r0, r3, lsl #4
	b _020B3BCC
_020B3BC8:
	mov r4, #0
_020B3BCC:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	ldreq r2, [r4, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	ldreq r2, [r4, #8]
	ldreq r0, [r1, #8]
	cmpeq r2, r0
	ldreq r2, [r4, #0xc]
	ldreq r0, [r1, #0xc]
	cmpeq r2, r0
	moveq r0, r3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020B3C04:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G3dGetResDictIdxByName

	arm_func_start NNS_G3dGetMdlSet
NNS_G3dGetMdlSet: ; 0x020B3C0C
	ldrh r1, [r0, #0xc]
	ldr r1, [r0, r1]
	add r0, r0, r1
	bx lr
	arm_func_end NNS_G3dGetMdlSet

	arm_func_start NNS_G3dGetTex
NNS_G3dGetTex: ; 0x020B3C1C
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r3, r0, r2
	cmp r1, #1
	bne _020B3C4C
	ldr r2, [r0, #0]
	ldr r1, _020B3C58 ; =0x30585442
	cmp r2, r1
	ldreq r1, [r3]
	addeq r0, r0, r1
	movne r0, #0
	bx lr
_020B3C4C:
	ldr r1, [r3, #4]
	add r0, r0, r1
	bx lr
	; .align 2, 0
_020B3C58: .word 0x30585442
	arm_func_end NNS_G3dGetTex

	arm_func_start NNS_G3dGetAnmByIdx
NNS_G3dGetAnmByIdx: ; 0x020B3C5C
	cmp r0, #0
	beq _020B3CB0
	ldrh r2, [r0, #0xc]
	ldr r2, [r0, r2]
	add ip, r0, r2
	adds r3, ip, #8
	beq _020B3C9C
	ldrb r0, [ip, #9]
	cmp r1, r0
	bhs _020B3C9C
	ldrh r2, [ip, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r1, r0, r1, r2
	b _020B3CA0
_020B3C9C:
	mov r1, #0
_020B3CA0:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bxne lr
_020B3CB0:
	mov r0, #0
	bx lr
	arm_func_end NNS_G3dGetAnmByIdx

	arm_func_start NNSi_G3dGetTexPatAnmTexNameByIdx
NNSi_G3dGetTexPatAnmTexNameByIdx: ; 0x020B3CB8
	cmp r0, #0
	beq _020B3CDC
	ldrb r2, [r0, #6]
	cmp r1, r2
	bhs _020B3CDC
	ldrh r2, [r0, #8]
	add r0, r0, r2
	add r0, r0, r1, lsl #4
	bx lr
_020B3CDC:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmTexNameByIdx

	arm_func_start NNSi_G3dGetTexPatAnmPlttNameByIdx
NNSi_G3dGetTexPatAnmPlttNameByIdx: ; 0x020B3CE4
	cmp r0, #0
	beq _020B3D08
	ldrb r2, [r0, #7]
	cmp r1, r2
	bhs _020B3D08
	ldrh r2, [r0, #0xa]
	add r0, r0, r2
	add r0, r0, r1, lsl #4
	bx lr
_020B3D08:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmPlttNameByIdx

	arm_func_start NNSi_G3dGetTexPatAnmFV
NNSi_G3dGetTexPatAnmFV: ; 0x020B3D10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl NNSi_G3dGetTexPatAnmDataByIdx
	ldrsh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mul r2, r1, r4
	add r3, r5, r3
	mov r2, r2, lsr #0xc
	b _020B3D3C
_020B3D38:
	sub r2, r2, #1
_020B3D3C:
	cmp r2, #0
	beq _020B3D54
	mov r1, r2, lsl #2
	ldrh r1, [r3, r1]
	cmp r1, r4
	bhs _020B3D38
_020B3D54:
	ldrh r1, [r0]
	b _020B3D60
_020B3D5C:
	add r2, r2, #1
_020B3D60:
	add r0, r2, #1
	cmp r0, r1
	bhs _020B3D7C
	add r0, r3, r2, lsl #2
	ldrh r0, [r0, #4]
	cmp r0, r4
	bls _020B3D5C
_020B3D7C:
	add r0, r3, r2, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dGetTexPatAnmFV

	arm_func_start NNSi_G3dGetTexPatAnmDataByIdx
NNSi_G3dGetTexPatAnmDataByIdx: ; 0x020B3D84
	adds r3, r0, #0xc
	beq _020B3DB0
	ldrb r2, [r0, #0xd]
	cmp r1, r2
	bhs _020B3DB0
	ldrh r0, [r0, #0x12]
	ldrh r2, [r3, r0]
	add r0, r3, r0
	add r0, r0, #4
	mla r0, r2, r1, r0
	bx lr
_020B3DB0:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmDataByIdx