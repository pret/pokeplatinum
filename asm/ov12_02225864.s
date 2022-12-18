	.include "macros/function.inc"
	.include "include/ov12_02225864.inc"

	

	.text


	thumb_func_start ov12_02225864
ov12_02225864: ; 0x02225864
	push {r3, r4, r5, r6}
	cmp r2, #0
	beq _0222587A
	mov r4, #0x18
	add r6, r0, #0
	mul r6, r4
	ldr r4, _02225890 ; =0x02239E34
	lsl r5, r1, #2
	add r4, r4, r6
	ldrsh r4, [r5, r4]
	strh r4, [r2]
_0222587A:
	cmp r3, #0
	beq _0222588C
	mov r2, #0x18
	mul r2, r0
	ldr r0, _02225894 ; =0x02239E36
	lsl r1, r1, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	strh r0, [r3]
_0222588C:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02225890: .word 0x02239E34
_02225894: .word 0x02239E36
	thumb_func_end ov12_02225864

	thumb_func_start ov12_02225898
ov12_02225898: ; 0x02225898
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022258B8
	mov r0, #0
	add r1, r5, #2
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
_022258B8:
	add r0, r7, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022258D0
	mov r0, #1
	sub r1, r5, #2
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
_022258D0:
	mov r0, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225864
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225898

	thumb_func_start ov12_022258E0
ov12_022258E0: ; 0x022258E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r2, #0
	bl ov12_02235254
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_02223364
	cmp r0, #1
	bne _022258FA
	mov r5, #1
	b _022258FC
_022258FA:
	mov r5, #0
_022258FC:
	add r0, r7, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02225908
	add r4, r4, #2
_02225908:
	cmp r6, #3
	bhi _02225940
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225918: ; jump table
	.short _02225920 - _02225918 - 2 ; case 0
	.short _02225930 - _02225918 - 2 ; case 1
	.short _02225920 - _02225918 - 2 ; case 2
	.short _02225930 - _02225918 - 2 ; case 3
_02225920:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _02225948 ; =0x02239E34
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02225930:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _0222594C ; =0x02239E36
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02225940:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225948: .word 0x02239E34
_0222594C: .word 0x02239E36
	thumb_func_end ov12_022258E0

	thumb_func_start ov12_02225950
ov12_02225950: ; 0x02225950
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov12_02225950

	thumb_func_start ov12_02225964
ov12_02225964: ; 0x02225964
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #1
	bl ov12_0223525C
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_0221FDD4
	cmp r0, #0
	beq _02225982
	cmp r4, #3
	bne _02225988
	sub r5, r5, #2
	b _02225988
_02225982:
	cmp r4, #4
	bne _02225988
	sub r5, r5, #2
_02225988:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225964

	thumb_func_start ov12_0222598C
ov12_0222598C: ; 0x0222598C
	push {r4, lr}
	mov r4, #1
	bl ov12_0223525C
	cmp r0, #4
	bne _0222599A
	sub r4, r4, #2
_0222599A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222598C

	thumb_func_start ov12_022259A0
ov12_022259A0: ; 0x022259A0
	ldr r3, _022259A8 ; =sub_020BCFD0
	sub r0, r1, r0
	lsl r1, r2, #0xc
	bx r3
	; .align 2, 0
_022259A8: .word sub_020BCFD0
	thumb_func_end ov12_022259A0

	thumb_func_start ov12_022259AC
ov12_022259AC: ; 0x022259AC
	push {r3, lr}
	sub r0, r1, r0
	add r1, r2, #0
	bl sub_020BCFD0
	add r1, sp, #0
	str r0, [sp]
	bl sub_020BDBCC
	cmp r0, #0
	beq _022259CC
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
_022259CC:
	ldr r0, [sp]
	cmp r0, #0
	bge _022259D4
	neg r0, r0
_022259D4:
	str r0, [sp]
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022259AC

	thumb_func_start ov12_022259DC
ov12_022259DC: ; 0x022259DC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r1, r2, r1
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end ov12_022259DC

	thumb_func_start ov12_022259FC
ov12_022259FC: ; 0x022259FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_0200D6E8
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_022259FC

	thumb_func_start ov12_02225A18
ov12_02225A18: ; 0x02225A18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r3, #0
	ldrsh r3, [r5, r1]
	add r0, r4, #0
	add r2, r2, r3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, r2
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225A18

	thumb_func_start ov12_02225A3C
ov12_02225A3C: ; 0x02225A3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0
	add r4, r1, #0
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225A3C

	thumb_func_start ov12_02225A5C
ov12_02225A5C: ; 0x02225A5C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r3, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r4, [r5, #0x10]
	str r0, [r5, #0x14]
	sub r0, r2, r1
	add r1, r3, #0
	bl sub_020E1F6C
	str r0, [r5, #0x18]
	add r0, sp, #0
	ldrh r0, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	sub r0, r0, r4
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225A5C

	thumb_func_start ov12_02225A8C
ov12_02225A8C: ; 0x02225A8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02225A9E
	bl sub_02022974
_02225A9E:
	cmp r4, r7
	bls _02225AAA
	add r0, sp, #8
	ldrh r1, [r0, #0x1c]
	neg r1, r1
	strh r1, [r0, #0x1c]
_02225AAA:
	add r1, sp, #8
	mov r0, #0x1c
	ldrsh r6, [r1, r0]
	lsl r0, r4, #0xc
	lsl r1, r7, #0xc
	lsl r2, r6, #0xc
	bl ov12_022259AC
	str r0, [r5, #4]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	str r6, [r5, #0x18]
	add r0, sp, #8
	ldrh r1, [r0, #0x10]
	ldr r0, [sp]
	sub r0, r1, r0
	ldr r1, [r5, #4]
	bl sub_020E1F6C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225A8C

	thumb_func_start ov12_02225AE0
ov12_02225AE0: ; 0x02225AE0
	push {r4, lr}
	add r4, r0, #0
	bne _02225AEA
	bl sub_02022974
_02225AEA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225B6E
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02225B74 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x14]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02225B74 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225B6E:
	mov r0, #0
	pop {r4, pc}
	nop
_02225B74: .word 0x020F983C
	thumb_func_end ov12_02225AE0

	thumb_func_start ov12_02225B78
ov12_02225B78: ; 0x02225B78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02225AE0
	cmp r0, #0
	beq _02225B9A
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02225B9A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225B78

	thumb_func_start ov12_02225BA0
ov12_02225BA0: ; 0x02225BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02225AE0
	cmp r0, #0
	beq _02225BC2
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02225BC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225BA0

	thumb_func_start ov12_02225BC8
ov12_02225BC8: ; 0x02225BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp]
	cmp r5, #0
	bne _02225BDC
	bl sub_02022974
_02225BDC:
	strh r4, [r5]
	strh r6, [r5, #2]
	add r0, sp, #0x10
	ldrh r7, [r0, #0x14]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	str r7, [r5, #4]
	ldr r1, [sp]
	add r2, r7, #0
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #8]
	lsl r4, r6, #0xc
	add r2, sp, #0x10
	mov r1, #0x10
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	add r2, r7, #0
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225BC8

	thumb_func_start ov12_02225C14
ov12_02225C14: ; 0x02225C14
	push {r4, lr}
	add r4, r0, #0
	bne _02225C1E
	bl sub_02022974
_02225C1E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225C4A
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225C4A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C14

	thumb_func_start ov12_02225C50
ov12_02225C50: ; 0x02225C50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225C14
	cmp r0, #0
	beq _02225C6E
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225C6E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C50

	thumb_func_start ov12_02225C74
ov12_02225C74: ; 0x02225C74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225C14
	cmp r0, #0
	beq _02225C92
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225C92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225C74

	thumb_func_start ov12_02225C98
ov12_02225C98: ; 0x02225C98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, sp, #0x10
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	str r1, [sp]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	bl ov12_02225BC8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _02225CDC ; =0x0000BFFF
	strh r1, [r5, #2]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	ldrh r0, [r0, #0x18]
	ldr r3, _02225CE0 ; =0x00003FFF
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02225A5C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02225CDC: .word 0x0000BFFF
_02225CE0: .word 0x00003FFF
	thumb_func_end ov12_02225C98

	thumb_func_start ov12_02225CE4
ov12_02225CE4: ; 0x02225CE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02225CF2
	bl sub_02022974
_02225CF2:
	cmp r4, #0
	bne _02225CFA
	bl sub_02022974
_02225CFA:
	add r0, r5, #0
	bl ov12_02225C14
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02225AE0
	mov r2, #0
	ldrsh r3, [r5, r2]
	ldrsh r1, [r4, r2]
	add r1, r3, r1
	strh r1, [r5]
	mov r1, #2
	ldrsh r3, [r5, r1]
	ldrsh r1, [r4, r1]
	add r1, r3, r1
	strh r1, [r5, #2]
	cmp r6, r0
	bne _02225D28
	cmp r6, #0
	bne _02225D28
	add r0, r2, #0
	pop {r4, r5, r6, pc}
_02225D28:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225CE4

	thumb_func_start ov12_02225D2C
ov12_02225D2C: ; 0x02225D2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov12_02225CE4
	cmp r0, #0
	beq _02225D4A
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_022259DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02225D4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225D2C

	thumb_func_start ov12_02225D50
ov12_02225D50: ; 0x02225D50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02225D62
	bl sub_02022974
_02225D62:
	str r6, [r5, #0]
	lsl r0, r6, #0xc
	lsl r1, r7, #0xc
	add r2, r4, #0
	str r4, [r5, #4]
	bl ov12_022259A0
	asr r0, r0, #0xc
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225D50

	thumb_func_start ov12_02225D78
ov12_02225D78: ; 0x02225D78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02225D8A
	bl sub_02022974
_02225D8A:
	str r6, [r5, #0]
	lsl r6, r6, #0xc
	add r0, r6, #0
	lsl r1, r7, #0xc
	add r2, r4, #0
	str r4, [r5, #4]
	bl ov12_022259A0
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225D78

	thumb_func_start ov12_02225DA0
ov12_02225DA0: ; 0x02225DA0
	push {r4, lr}
	add r4, r0, #0
	bne _02225DAA
	bl sub_02022974
_02225DAA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225DC2
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225DC2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225DA0

	thumb_func_start ov12_02225DC8
ov12_02225DC8: ; 0x02225DC8
	push {r4, lr}
	add r4, r0, #0
	bne _02225DD2
	bl sub_02022974
_02225DD2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225DEE
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0xc]
	asr r0, r0, #0xc
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_02225DEE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02225DC8

	thumb_func_start ov12_02225DF4
ov12_02225DF4: ; 0x02225DF4
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	add r5, r0, #0
	str r4, [r5, #4]
	str r1, [r5, #8]
	sub r0, r2, r1
	add r1, r4, #0
	str r3, [r5, #0xc]
	bl sub_020E2178
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02225DF4

	thumb_func_start ov12_02225E0C
ov12_02225E0C: ; 0x02225E0C
	push {r4, lr}
	add r4, r0, #0
	bne _02225E16
	bl sub_02022974
_02225E16:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225E5E
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02225E64 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02225E5E:
	mov r0, #0
	pop {r4, pc}
	nop
_02225E64: .word 0x020F983C
	thumb_func_end ov12_02225E0C

	thumb_func_start ov12_02225E68
ov12_02225E68: ; 0x02225E68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	bne _02225E7A
	bl sub_02022974
_02225E7A:
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [r4, #4]
	lsl r0, r5, #8
	bl sub_020E1F6C
	add r5, r0, #0
	lsl r0, r7, #8
	add r1, r6, #0
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x18]
	lsl r0, r5, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r4, #8]
	lsl r0, r5, #0x10
	asr r0, r0, #0x10
	strh r0, [r4]
	strh r0, [r4, #2]
	mov r0, #0
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225E68

	thumb_func_start ov12_02225EB8
ov12_02225EB8: ; 0x02225EB8
	push {r4, lr}
	add r4, r0, #0
	bne _02225EC2
	bl sub_02022974
_02225EC2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225EEC
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225EEC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02225EB8

	thumb_func_start ov12_02225EF0
ov12_02225EF0: ; 0x02225EF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02225F02
	bl sub_02022974
_02225F02:
	ldr r0, [sp, #0x20]
	add r1, sp, #8
	str r0, [r5, #4]
	mov r0, #0x14
	ldrsh r4, [r1, r0]
	lsl r0, r6, #8
	add r1, r4, #0
	bl sub_020E1F6C
	add r6, r0, #0
	lsl r0, r7, #8
	add r1, r4, #0
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	lsl r0, r6, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #8]
	ldr r0, [sp]
	add r1, r4, #0
	lsl r0, r0, #8
	bl sub_020E1F6C
	add r7, r0, #0
	add r1, sp, #8
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	add r1, r4, #0
	lsl r0, r0, #8
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	lsl r0, r7, #0xc
	lsl r1, r1, #0xc
	bl ov12_022259A0
	str r0, [r5, #0xc]
	strh r6, [r5]
	strh r7, [r5, #2]
	mov r0, #0
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	mov r0, #2
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02225EF0

	thumb_func_start ov12_02225F6C
ov12_02225F6C: ; 0x02225F6C
	push {r4, lr}
	add r4, r0, #0
	bne _02225F76
	bl sub_02022974
_02225F76:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02225FA0
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asr r0, r0, #0xc
	strh r0, [r4]
	ldr r0, [r4, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, pc}
_02225FA0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02225F6C

	thumb_func_start ov12_02225FA4
ov12_02225FA4: ; 0x02225FA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020E17B4
	ldr r1, _02225FD0 ; =0x43800000
	bl sub_020E1304
	str r0, [r4, #0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	bl sub_020E17B4
	ldr r1, _02225FD0 ; =0x43800000
	bl sub_020E1304
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	nop
_02225FD0: .word 0x43800000
	thumb_func_end ov12_02225FA4

	thumb_func_start ov12_02225FD4
ov12_02225FD4: ; 0x02225FD4
	push {r3, r4, lr}
	sub sp, #4
	lsl r1, r1, #1
	mov r0, #0x50
	sub r0, r0, r1
	lsl r4, r0, #0xc
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #9
	bl sub_020BCFD0
	sub r0, r4, r0
	add r1, sp, #0
	bl sub_020BDBCC
	cmp r0, #0
	beq _02226012
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
_02226012:
	ldr r1, [sp]
	add r0, r1, r0
	asr r1, r0, #0xc
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02225FD4

	thumb_func_start ov12_02226024
ov12_02226024: ; 0x02226024
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r3, #0
	bl ov12_02225FD4
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0222604E
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	sub r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0222604E:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, r2
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02226024

	thumb_func_start ov12_0222605C
ov12_0222605C: ; 0x0222605C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r3, #0
	bl ov12_02225FD4
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02226086
	mov r0, #0
	mvn r0, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	sub r0, r5, r7
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_02226086:
	add r1, sp, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r2, r5, r4
	lsl r2, r2, #0x10
	add r0, r6, #0
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222605C

	thumb_func_start ov12_022260A8
ov12_022260A8: ; 0x022260A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225EB8
	cmp r0, #0
	beq _022260C2
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022259FC
	mov r0, #1
	pop {r3, r4, r5, pc}
_022260C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260A8

	thumb_func_start ov12_022260C8
ov12_022260C8: ; 0x022260C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225EB8
	cmp r0, #0
	beq _022260E2
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225A3C
	mov r0, #1
	pop {r3, r4, r5, pc}
_022260E2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260C8

	thumb_func_start ov12_022260E8
ov12_022260E8: ; 0x022260E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02225F6C
	cmp r0, #0
	beq _02226102
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225A3C
	mov r0, #1
	pop {r3, r4, r5, pc}
_02226102:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022260E8

	thumb_func_start ov12_02226108
ov12_02226108: ; 0x02226108
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0222611A
	bl sub_02022974
_0222611A:
	str r7, [r5, #4]
	ldr r0, [sp, #0x18]
	str r7, [r5, #8]
	str r0, [r5, #0xc]
	mov r1, #0
	str r1, [r5, #0x10]
	str r6, [r5, #0x14]
	str r4, [r5, #0x18]
	neg r0, r6
	str r0, [r5, #0x1c]
	neg r0, r4
	str r0, [r5, #0x20]
	strh r1, [r5]
	strh r1, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02226108

	thumb_func_start ov12_02226138
ov12_02226138: ; 0x02226138
	push {r4, lr}
	add r4, r0, #0
	bne _02226142
	bl sub_02022974
_02226142:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02226196
	ldr r0, [r4, #4]
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _02226192
	mov r2, #0
	str r2, [r4, #4]
	ldrsh r0, [r4, r2]
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x1c]
	cmp r1, #0
	bne _02226166
	strh r2, [r4]
	b _0222616A
_02226166:
	neg r0, r1
	strh r0, [r4]
_0222616A:
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x20]
	str r0, [r4, #0x20]
	cmp r1, #0
	bne _0222617A
	mov r0, #0
	b _0222617C
_0222617A:
	neg r0, r1
_0222617C:
	strh r0, [r4, #2]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #4
	blt _02226192
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
_02226192:
	mov r0, #1
	pop {r4, pc}
_02226196:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226138

	thumb_func_start ov12_0222619C
ov12_0222619C: ; 0x0222619C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02226138
	cmp r0, #0
	beq _022261BE
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02225A18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022261BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222619C

	thumb_func_start ov12_022261C4
ov12_022261C4: ; 0x022261C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	strh r3, [r7]
	add r0, sp, #8
	mov r1, #0x10
	ldrsh r1, [r0, r1]
	mov r6, #0
	strh r1, [r7, #2]
	add r1, r7, #0
	add r1, #0x94
	str r2, [r1, #0]
	add r1, r7, #0
	ldrh r2, [r0, #0x14]
	add r1, #0xa8
	strh r2, [r1]
	add r1, r7, #0
	add r1, #0xaa
	strh r6, [r1]
	ldrb r1, [r0, #0x18]
	add r2, r7, #0
	add r2, #0xac
	mov ip, r1
	strb r1, [r2]
	add r1, r7, #0
	add r1, #0xad
	strb r6, [r1]
	ldrb r1, [r0, #0x1c]
	add r0, r7, #0
	add r0, #0xae
	strb r1, [r0]
	mov r0, ip
	cmp r0, #0
	ble _02226226
	add r5, r7, #0
_0222620A:
	ldr r4, [sp]
	add r3, r5, #4
	mov r2, #4
_02226210:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02226210
	ldr r0, [r4, #0]
	add r6, r6, #1
	str r0, [r3, #0]
	mov r0, ip
	add r5, #0x24
	cmp r6, r0
	blt _0222620A
_02226226:
	add r0, r7, #0
	ldr r1, [sp, #0x28]
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x30]
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r7, #0
	ldr r1, [sp, #0x34]
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r7, #0
	add r0, #0xac
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #0
	ble _02226270
	add r4, r7, #0
	add r6, r5, #0
_02226256:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D3F4
	add r0, r7, #0
	add r0, #0xac
	ldrb r0, [r0]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _02226256
_02226270:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022261C4

	thumb_func_start ov12_02226274
ov12_02226274: ; 0x02226274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	add r2, sp, #0x10
	mov r1, #1
_02226280:
	add r0, r0, #1
	stmia r2!, {r1}
	cmp r0, #4
	blt _02226280
	add r0, r5, #0
	add r0, #0xa8
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0xaa
	ldrh r0, [r0]
	cmp r2, r0
	bhi _022262C0
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xad
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xaa
	strh r1, [r0]
_022262C0:
	add r0, r5, #0
	add r0, #0xad
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldrb r0, [r0]
	cmp r1, r0
	bhs _022262DE
	add r0, r5, #0
	add r0, #0xaa
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
_022262DE:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	ble _0222637E
	add r0, sp, #0x10
	add r7, r5, #4
	str r0, [sp, #4]
	add r6, r5, #0
	add r4, r5, #0
_022262F6:
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r7, #0
	blx r1
	ldr r1, [sp, #4]
	cmp r0, #0
	str r0, [r1, #0]
	beq _02226354
	add r0, r5, #0
	add r0, #0xae
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222633A
	mov r1, #0
	mov r2, #4
	ldrsh r1, [r5, r1]
	ldrsh r2, [r6, r2]
	add r0, r4, #0
	add r0, #0x98
	add r1, r1, r2
	mov r2, #2
	ldrsh r3, [r5, r2]
	mov r2, #6
	ldrsh r2, [r6, r2]
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	b _02226360
_0222633A:
	add r0, r7, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl sub_0200D6E8
	b _02226360
_02226354:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_02226360:
	ldr r0, [sp, #4]
	add r7, #0x24
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, #0x24
	add r0, r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xad
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, r4, #4
	cmp r0, r1
	blt _022262F6
_0222637E:
	add r5, #0xac
	ldrb r2, [r5]
	mov r3, #0
	cmp r2, #0
	ble _0222639E
	add r1, sp, #0x10
_0222638A:
	ldr r0, [r1, #0]
	cmp r0, #1
	bne _02226396
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02226396:
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, r2
	blt _0222638A
_0222639E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02226274

	thumb_func_start ov12_022263A4
ov12_022263A4: ; 0x022263A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _022263D4 ; =0x0000FFFF
	add r4, r1, #0
	mov r1, #2
	str r3, [sp]
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, _022263D8 ; =0xFFFF8000
	add r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	add r2, r3, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #4]
	add r1, r0, #0
	mul r1, r4
	str r1, [r5, #4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022263D4: .word 0x0000FFFF
_022263D8: .word 0xFFFF8000
	thumb_func_end ov12_022263A4

	thumb_func_start ov12_022263DC
ov12_022263DC: ; 0x022263DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_02225C14
	cmp r0, #0
	bne _022263F8
	mov r0, #1
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_022263F8:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _02226402
	strh r0, [r4]
_02226402:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222640E
	mov r0, #0
	strh r0, [r4, #2]
_0222640E:
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02226420 ; =0x04000052
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02226420: .word 0x04000052
	thumb_func_end ov12_022263DC

	thumb_func_start ov12_02226424
ov12_02226424: ; 0x02226424
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, sp, #8
	mov r5, #0x10
	ldrsh r5, [r6, r5]
	add r4, r0, #0
	str r5, [sp]
	ldr r5, [sp, #0x1c]
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	str r5, [sp, #4]
	bl ov12_02225BC8
	mov r2, #0
	ldr r0, _02226450 ; =ov12_022263DC
	add r1, r4, #0
	str r2, [r4, #0x24]
	bl sub_0200D9E8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02226450: .word ov12_022263DC
	thumb_func_end ov12_02226424

	thumb_func_start ov12_02226454
ov12_02226454: ; 0x02226454
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov12_02226454

	thumb_func_start ov12_02226458
ov12_02226458: ; 0x02226458
	push {r3, lr}
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0222646C
	mov r0, #1
	str r0, [r1, #0xc]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x10]
	blx r1
	pop {r3, pc}
_0222646C:
	bl sub_02013BA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02226458

	thumb_func_start ov12_02226474
ov12_02226474: ; 0x02226474
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222648E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222648E
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_0222648E:
	pop {r4, pc}
	thumb_func_end ov12_02226474

	thumb_func_start ov12_02226490
ov12_02226490: ; 0x02226490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _022264A2
	bl sub_02022974
_022264A2:
	mov r0, #1
	str r0, [r5, #8]
	mov r2, #0
	str r2, [r5, #0xc]
	str r4, [r5, #0x18]
	str r6, [r5, #0x10]
	ldr r0, _022264C8 ; =ov12_02226458
	str r7, [r5, #0x14]
	add r1, r5, #0
	bl sub_0200DA3C
	str r0, [r5, #4]
	ldr r0, _022264CC ; =ov12_02226474
	add r1, r5, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022264C8: .word ov12_02226458
_022264CC: .word ov12_02226474
	thumb_func_end ov12_02226490

	thumb_func_start ov12_022264D0
ov12_022264D0: ; 0x022264D0
	push {r4, lr}
	add r4, r0, #0
	bne _022264DA
	bl sub_02022974
_022264DA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022264E4
	bl sub_0200DA58
_022264E4:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022264EE
	bl sub_0200DA58
_022264EE:
	bl sub_02013BA8
	pop {r4, pc}
	thumb_func_end ov12_022264D0

	thumb_func_start ov12_022264F4
ov12_022264F4: ; 0x022264F4
	push {r4, lr}
	add r4, r0, #0
	bne _022264FE
	bl sub_02022974
_022264FE:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov12_022264F4

	thumb_func_start ov12_02226504
ov12_02226504: ; 0x02226504
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B68
	add r5, r0, #0
	bl sub_02013BA8
	mov r1, #0x62
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #4
	mov r3, #1
	bl sub_02013BB8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02226504

	thumb_func_start ov12_02226528
ov12_02226528: ; 0x02226528
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013B94
	add r0, r4, #0
	bl ov12_02226504
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226528

	thumb_func_start ov12_0222653C
ov12_0222653C: ; 0x0222653C
	ldr r3, _02226540 ; =ov12_02226504
	bx r3
	; .align 2, 0
_02226540: .word ov12_02226504
	thumb_func_end ov12_0222653C

	thumb_func_start ov12_02226544
ov12_02226544: ; 0x02226544
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	ldr r1, _022265B4 ; =0x00000624
	add r0, r7, #0
	bl sub_02018144
	ldr r2, _022265B4 ; =0x00000624
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	cmp r4, #0
	bne _02226566
	bl sub_02022974
_02226566:
	mov r2, #0x32
	add r1, r4, #0
	lsl r2, r2, #4
	add r0, r7, #0
	add r1, #0x20
	add r2, r4, r2
	bl sub_02013B10
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _02226580
	bl sub_02022974
_02226580:
	mov r0, #0x62
	lsl r0, r0, #4
	add r1, r4, #0
	mov r2, #3
	str r5, [r4, r0]
	add r0, r6, #0
	add r1, #0x20
	lsl r2, r2, #8
	bl sub_020C4B4C
	mov r2, #0x32
	lsl r2, r2, #4
	add r1, r4, r2
	add r0, r6, #0
	sub r2, #0x20
	bl sub_020C4B4C
	ldr r2, _022265B8 ; =ov12_02226528
	ldr r3, _022265BC ; =ov12_0222653C
	add r0, r4, #0
	add r1, r4, #0
	bl ov12_02226490
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022265B4: .word 0x00000624
_022265B8: .word ov12_02226528
_022265BC: .word ov12_0222653C
	thumb_func_end ov12_02226544

	thumb_func_start ov12_022265C0
ov12_022265C0: ; 0x022265C0
	push {r4, lr}
	add r4, r0, #0
	bne _022265CA
	bl sub_02022974
_022265CA:
	add r0, r4, #0
	bl ov12_022264D0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022265DA
	bl sub_02013B40
_022265DA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265C0

	thumb_func_start ov12_022265E4
ov12_022265E4: ; 0x022265E4
	push {r4, lr}
	add r4, r0, #0
	bne _022265EE
	bl sub_02022974
_022265EE:
	ldr r0, [r4, #0x1c]
	bl sub_02013B54
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265E4

	thumb_func_start ov12_022265F8
ov12_022265F8: ; 0x022265F8
	push {r4, lr}
	add r4, r0, #0
	bne _02226602
	bl sub_02022974
_02226602:
	add r0, r4, #0
	bl ov12_022264F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022265F8

	thumb_func_start ov12_0222660C
ov12_0222660C: ; 0x0222660C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02013DA4
	ldr r0, [r4, #0x1c]
	bl sub_02013DDC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222660C

	thumb_func_start ov12_02226620
ov12_02226620: ; 0x02226620
	ldr r3, _02226628 ; =sub_02013DDC
	ldr r0, [r0, #0x1c]
	bx r3
	nop
_02226628: .word sub_02013DDC
	thumb_func_end ov12_02226620

	thumb_func_start ov12_0222662C
ov12_0222662C: ; 0x0222662C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x40]
	mov r1, #0x20
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226648
	bl sub_02022974
_02226648:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	ldr r0, [sp, #0x34]
	bl ov12_022266F0
	add r6, r0, #0
	ldr r0, [sp, #0x40]
	bl sub_02013BE0
	str r0, [r4, #0x1c]
	str r5, [sp]
	add r1, sp, #0x20
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_02013C10
	ldr r2, _02226694 ; =ov12_0222660C
	ldr r3, _02226698 ; =ov12_02226620
	add r0, r4, #0
	add r1, r4, #0
	bl ov12_02226490
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02226694: .word ov12_0222660C
_02226698: .word ov12_02226620
	thumb_func_end ov12_0222662C

	thumb_func_start ov12_0222669C
ov12_0222669C: ; 0x0222669C
	push {r4, lr}
	add r4, r0, #0
	bne _022266A6
	bl sub_02022974
_022266A6:
	add r0, r4, #0
	bl ov12_022264D0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022266B6
	bl sub_02013D74
_022266B6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222669C

	thumb_func_start ov12_022266C0
ov12_022266C0: ; 0x022266C0
	push {r4, lr}
	add r4, r0, #0
	bne _022266CA
	bl sub_02022974
_022266CA:
	ldr r0, [r4, #0x1c]
	bl sub_02013D94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022266C0

	thumb_func_start ov12_022266D4
ov12_022266D4: ; 0x022266D4
	push {r4, lr}
	add r4, r0, #0
	bne _022266DE
	bl sub_02022974
_022266DE:
	add r0, r4, #0
	bl ov12_022264F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022266D4

	thumb_func_start ov12_022266E8
ov12_022266E8: ; 0x022266E8
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022266E8

	thumb_func_start ov12_022266F0
ov12_022266F0: ; 0x022266F0
	cmp r0, #3
	bhi _02226716
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02226700: ; jump table
	.short _02226708 - _02226700 - 2 ; case 0
	.short _0222670C - _02226700 - 2 ; case 1
	.short _02226710 - _02226700 - 2 ; case 2
	.short _02226714 - _02226700 - 2 ; case 3
_02226708:
	ldr r0, _02226718 ; =0x04000010
	bx lr
_0222670C:
	ldr r0, _0222671C ; =0x04000014
	bx lr
_02226710:
	ldr r0, _02226720 ; =0x04000018
	bx lr
_02226714:
	ldr r0, _02226724 ; =0x0400001C
_02226716:
	bx lr
	; .align 2, 0
_02226718: .word 0x04000010
_0222671C: .word 0x04000014
_02226720: .word 0x04000018
_02226724: .word 0x0400001C
	thumb_func_end ov12_022266F0

	thumb_func_start ov12_02226728
ov12_02226728: ; 0x02226728
	add r2, r0, r2
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	ldr r0, [sp]
	add r1, r1, r3
	strh r2, [r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02226728

	thumb_func_start ov12_02226744
ov12_02226744: ; 0x02226744
	push {r3, lr}
	sub r1, r1, r3
	neg r1, r1
	sub r0, r0, r2
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r1, #0
	asr r0, r0, #0x10
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02226744

	thumb_func_start ov12_0222676C
ov12_0222676C: ; 0x0222676C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	sub r0, r1, r3
	neg r0, r0
	lsl r0, r0, #0x10
	sub r1, r6, r2
	asr r4, r0, #0x10
	lsl r1, r1, #0x10
	ldr r5, [sp, #0x10]
	lsl r0, r4, #0xc
	asr r1, r1, #4
	bl sub_020BDA20
	strh r0, [r5]
	ldrh r1, [r5]
	cmp r1, #0
	beq _0222679C
	cmp r4, #0
	bge _0222679C
	ldr r0, _022267A0 ; =0x00007FFF
	sub r1, r1, r0
	ldr r0, _022267A4 ; =0x0000FFFF
	mul r0, r1
	strh r0, [r5]
_0222679C:
	pop {r4, r5, r6, pc}
	nop
_022267A0: .word 0x00007FFF
_022267A4: .word 0x0000FFFF
	thumb_func_end ov12_0222676C

	thumb_func_start ov12_022267A8
ov12_022267A8: ; 0x022267A8
	cmp r2, #0
	ldr r3, [r0, #0]
	bge _022267C0
	add r2, r3, r2
	cmp r2, r1
	ble _022267BA
	str r2, [r0, #0]
	mov r0, #0
	bx lr
_022267BA:
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_022267C0:
	add r2, r3, r2
	cmp r2, r1
	bge _022267CC
	str r2, [r0, #0]
	mov r0, #0
	bx lr
_022267CC:
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022267A8

	thumb_func_start ov12_022267D4
ov12_022267D4: ; 0x022267D4
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02226844
	mov r0, #0x17
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0x17]
	ldrsb r1, [r4, r0]
	mov r0, #0x16
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blt _02226844
	mov r0, #0
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x14]
	str r0, [sp]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #4]
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #8]
	bl sub_020039B0
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x14]
	cmp r1, r3
	bne _0222681A
	mov r0, #0
	add sp, #8
	str r0, [r4, #0]
	pop {r4, pc}
_0222681A:
	mov r0, #0x15
	ldrsb r2, [r4, r0]
	add r1, r1, r2
	lsl r0, r1, #0x18
	asr r0, r0, #0x18
	cmp r2, #0
	ble _02226838
	cmp r0, r3
	ble _02226832
	add sp, #8
	strb r3, [r4, #0x14]
	pop {r4, pc}
_02226832:
	add sp, #8
	strb r1, [r4, #0x14]
	pop {r4, pc}
_02226838:
	cmp r0, r3
	bge _02226842
	add sp, #8
	strb r3, [r4, #0x14]
	pop {r4, pc}
_02226842:
	strb r1, [r4, #0x14]
_02226844:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_022267D4

	thumb_func_start ov12_02226848
ov12_02226848: ; 0x02226848
	push {r4, lr}
	add r4, r0, #0
	bne _02226852
	bl sub_02022974
_02226852:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226848

	thumb_func_start ov12_02226858
ov12_02226858: ; 0x02226858
	push {r4, lr}
	add r4, r0, #0
	bne _02226862
	bl sub_02022974
_02226862:
	ldr r0, [r4, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02226858

	thumb_func_start ov12_02226870
ov12_02226870: ; 0x02226870
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1c
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226888
	bl sub_02022974
_02226888:
	str r5, [r4, #0x18]
	str r6, [r4, #8]
	strh r7, [r4, #0xc]
	add r1, sp, #8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xe]
	ldrh r0, [r1, #0x24]
	strh r0, [r4, #0x10]
	ldrb r2, [r1, #0x1c]
	add r0, sp, #0x28
	ldrb r0, [r0]
	strb r2, [r4, #0x12]
	strb r0, [r4, #0x13]
	strb r2, [r4, #0x14]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	ldrb r2, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r2, r0
	bhs _022268BA
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	b _022268C0
_022268BA:
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	neg r0, r0
_022268C0:
	strb r0, [r4, #0x15]
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, _022268D8 ; =ov12_022267D4
	ldr r2, [sp, #0x30]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022268D8: .word ov12_022267D4
	thumb_func_end ov12_02226870

	thumb_func_start ov12_022268DC
ov12_022268DC: ; 0x022268DC
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r1, #0
	ble _0222691E
	mov r2, #0x97
_022268E6:
	ldrh r6, [r0]
	mov r3, #0x1f
	add r7, r7, #1
	asr r4, r6, #0xa
	and r4, r3
	add r5, r4, #0
	mov r3, #0x1d
	mul r5, r3
	mov r3, #0x1f
	and r3, r6
	mov r4, #0x4c
	mul r4, r3
	asr r6, r6, #5
	mov r3, #0x1f
	and r3, r6
	add r6, r3, #0
	mul r6, r2
	add r3, r4, r6
	add r3, r5, r3
	asr r5, r3, #8
	lsl r4, r5, #0xa
	lsl r3, r5, #5
	orr r3, r4
	orr r3, r5
	strh r3, [r0]
	add r0, r0, #2
	cmp r7, r1
	blt _022268E6
_0222691E:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022268DC

	thumb_func_start ov12_02226924
ov12_02226924: ; 0x02226924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_0222332C
	mov r1, #0
	bl sub_0200316C
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226948
	add r0, r4, #0
	mov r1, #0x30
	bl ov12_022268DC
	pop {r3, r4, r5, pc}
_02226948:
	add r0, r4, #0
	mov r1, #0x80
	bl ov12_022268DC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02226924

	thumb_func_start ov12_02226954
ov12_02226954: ; 0x02226954
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov12_0222332C
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02226980
	mov r1, #0
	str r1, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003120
	add sp, #8
	pop {r3, r4, r5, pc}
_02226980:
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003120
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02226954

	.rodata


	.global Unk_ov12_02239E34
Unk_ov12_02239E34: ; 0x02239E34
	.incbin "incbin/overlay12_rodata.bin", 0x18A0, 0x30

