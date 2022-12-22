	.include "macros/function.inc"
	.include "include/ov70_0226C60C.inc"

	

	.text


	thumb_func_start ov70_0226C60C
ov70_0226C60C: ; 0x0226C60C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x1c
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x1c
	mov r0, #0
_0226C622:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0226C622
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl ov66_0222E1B8
	bl ov70_0226C81C
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov66_0222E1D0
	bl ov70_0226C848
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl ov66_0222E1E8
	bl ov70_0226C87C
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl ov70_0226C338
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0226CE54
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl ov70_0226C8B4
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov70_0225CAEC
	ldr r0, [r4, #4]
	bl ov66_0222E158
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov66_0222E120
	ldr r0, [r4, #4]
	bl ov66_0222E170
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov66_0222E19C
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov66_0222E12C
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov66_0222E190
	cmp r5, #2
	bne _0226C6C8
	ldr r0, [r4, #8]
	bl ov70_0226260C
_0226C6C8:
	cmp r5, #1
	beq _0226C6DC
	cmp r5, #0
	bne _0226C6DC
	cmp r7, #1
	bne _0226C6DC
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov70_02262658
_0226C6DC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0226C6E8
	ldr r0, [r4, #8]
	bl ov70_0226246C
_0226C6E8:
	cmp r6, #1
	bne _0226C6F2
	add r0, r4, #0
	bl ov70_0226C8A8
_0226C6F2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C60C

	thumb_func_start ov70_0226C6F8
ov70_0226C6F8: ; 0x0226C6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov70_0226C914
	ldr r0, [r4, #0x14]
	bl ov70_0226CF38
	ldr r0, [r4, #0x10]
	bl ov70_0226C39C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C6F8

	thumb_func_start ov70_0226C718
ov70_0226C718: ; 0x0226C718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov66_0222E084
	cmp r0, #0
	beq _0226C744
	ldr r0, [r5, #4]
	bl ov66_0222E1B8
	bl ov70_0226C81C
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ov70_0226C430
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov70_0225CB08
_0226C744:
	ldr r0, [r5, #4]
	mov r1, #2
	bl ov66_0222E084
	cmp r0, #0
	beq _0226C762
	ldr r0, [r5, #4]
	bl ov66_0222E1D0
	bl ov70_0226C848
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4A0
_0226C762:
	ldr r0, [r5, #4]
	mov r1, #3
	bl ov66_0222E084
	cmp r0, #0
	beq _0226C780
	ldr r0, [r5, #4]
	bl ov66_0222E1E8
	bl ov70_0226C87C
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4C8
_0226C780:
	ldr r0, [r5, #4]
	bl ov66_0222E19C
	cmp r0, #1
	bne _0226C7A6
	ldr r0, [r5, #4]
	bl ov66_0222E158
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	bl ov70_0226271C
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	mov r1, #1
	bl ov70_02262658
_0226C7A6:
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov66_0222E084
	cmp r0, #0
	beq _0226C7CA
	ldr r0, [r5, #4]
	bl ov66_0222E158
	cmp r0, #1
	bne _0226C7CA
	ldr r0, [r5, #8]
	bl ov70_0226260C
	ldr r0, [r5, #8]
	mov r1, #2
	bl ov70_02262658
_0226C7CA:
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov66_0222E084
	cmp r0, #0
	beq _0226C7E6
	ldr r0, [r5, #4]
	bl ov66_0222E170
	cmp r0, #1
	bne _0226C7E6
	ldr r0, [r5, #8]
	bl ov70_0226246C
_0226C7E6:
	ldr r0, [r5, #4]
	bl ov66_0222E12C
	cmp r0, #1
	bne _0226C7FC
	ldr r0, [r5, #8]
	bl ov70_02262478
	add r0, r5, #0
	bl ov70_0226C8A8
_0226C7FC:
	ldr r0, [r5, #0x10]
	bl ov70_0226C3A4
	ldr r0, [r5, #0x14]
	bl ov70_0226CF40
	ldr r0, [r5, #0x18]
	bl ov70_0226C924
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226C718

	thumb_func_start ov70_0226C810
ov70_0226C810: ; 0x0226C810
	ldr r3, _0226C818 ; =ov70_0226CFFC
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0226C818: .word ov70_0226CFFC
	thumb_func_end ov70_0226C810

	thumb_func_start ov70_0226C81C
ov70_0226C81C: ; 0x0226C81C
	push {r3, lr}
	cmp r0, #6
	bhi _0226C840
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C82E: ; jump table
	.short _0226C840 - _0226C82E - 2 ; case 0
	.short _0226C83C - _0226C82E - 2 ; case 1
	.short _0226C83C - _0226C82E - 2 ; case 2
	.short _0226C83C - _0226C82E - 2 ; case 3
	.short _0226C83C - _0226C82E - 2 ; case 4
	.short _0226C83C - _0226C82E - 2 ; case 5
	.short _0226C83C - _0226C82E - 2 ; case 6
_0226C83C:
	sub r0, r0, #1
	pop {r3, pc}
_0226C840:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C81C

	thumb_func_start ov70_0226C848
ov70_0226C848: ; 0x0226C848
	push {r3, lr}
	cmp r0, #0xa
	bhi _0226C874
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C85A: ; jump table
	.short _0226C874 - _0226C85A - 2 ; case 0
	.short _0226C874 - _0226C85A - 2 ; case 1
	.short _0226C874 - _0226C85A - 2 ; case 2
	.short _0226C874 - _0226C85A - 2 ; case 3
	.short _0226C874 - _0226C85A - 2 ; case 4
	.short _0226C874 - _0226C85A - 2 ; case 5
	.short _0226C874 - _0226C85A - 2 ; case 6
	.short _0226C870 - _0226C85A - 2 ; case 7
	.short _0226C870 - _0226C85A - 2 ; case 8
	.short _0226C870 - _0226C85A - 2 ; case 9
	.short _0226C870 - _0226C85A - 2 ; case 10
_0226C870:
	sub r0, r0, #7
	pop {r3, pc}
_0226C874:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C848

	thumb_func_start ov70_0226C87C
ov70_0226C87C: ; 0x0226C87C
	push {r3, lr}
	add r1, r0, #0
	sub r1, #0xb
	cmp r1, #3
	bhi _0226C89E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C892: ; jump table
	.short _0226C89A - _0226C892 - 2 ; case 0
	.short _0226C89A - _0226C892 - 2 ; case 1
	.short _0226C89A - _0226C892 - 2 ; case 2
	.short _0226C89A - _0226C892 - 2 ; case 3
_0226C89A:
	sub r0, #0xb
	pop {r3, pc}
_0226C89E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C87C

	thumb_func_start ov70_0226C8A8
ov70_0226C8A8: ; 0x0226C8A8
	ldr r3, _0226C8B0 ; =NNS_G3dGlbLightColor
	mov r0, #2
	mov r1, #0
	bx r3
	; .align 2, 0
_0226C8B0: .word NNS_G3dGlbLightColor
	thumb_func_end ov70_0226C8A8