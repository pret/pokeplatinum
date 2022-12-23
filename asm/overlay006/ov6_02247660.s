	.include "macros/function.inc"
	.include "overlay006/ov6_02247660.inc"

	

	.text


	thumb_func_start ov6_02247660
ov6_02247660: ; 0x02247660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02247676
	bl GF_AssertFail
_02247676:
	cmp r4, #0
	bne _02247680
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02247680:
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	bl sub_0202B428
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl sub_020615AC
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsr r0, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x48]
	mov r0, #0x6a
	mov r1, #1
	mov r2, #4
	bl sub_02006ADC
	str r0, [sp, #0xc]
	mov r4, #0
	ldr r0, [r0, #0]
	add r3, r4, #0
	cmp r0, #0
	ble _022476EA
_022476D6:
	ldr r1, [sp, #0xc]
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r1, [r1, #4]
	add r4, r4, r1
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, r0
	blt _022476D6
_022476EA:
	lsl r0, r0, #1
	add r0, r0, #2
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	str r0, [sp, #8]
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	mov r1, #1
	asr r0, r0, #2
	lsl r1, r1, #8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0224770C
	bl GF_AssertFail
_0224770C:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	mov r7, #0
	lsr r6, r0, #0x18
	add r5, r7, #0
_02247720:
	lsl r4, r5, #2
	add r0, sp, #0x3c
	ldr r0, [r0, r4]
	ldr r1, [sp, #0x10]
	bl _s32_div_f
	ldr r0, [sp, #0x10]
	add r2, r0, #0
	mul r2, r5
	add r0, r1, r2
	add r1, r7, r0
	add r0, sp, #0x2c
	str r1, [r0, r4]
	ldr r0, [r0, r4]
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	cmp r6, #0
	ldrh r1, [r0, r1]
	add r0, sp, #0x1c
	str r1, [r0, r4]
	beq _02247756
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02247756:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _02247720
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #5
	mul r0, r1
	ldr r2, [sp, #0x18]
	mov r3, #0
	add r2, r2, r0
	add r1, sp, #0x1c
_02247770:
	lsl r0, r3, #2
	ldr r0, [r1, r0]
	cmp r2, r0
	bne _0224777E
	mov r0, #1
	str r0, [sp, #4]
	b _02247788
_0224777E:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #4
	blo _02247770
_02247788:
	ldr r0, [sp, #0xc]
	bl sub_020181C4
	ldr r0, [sp, #4]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02247660

	thumb_func_start ov6_02247794
ov6_02247794: ; 0x02247794
	mov r2, #0x14
	strb r2, [r0]
	mov r0, #0xa
	strb r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02247794

	thumb_func_start ov6_022477A0
ov6_022477A0: ; 0x022477A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6a
	mov r1, #0
	mov r2, #4
	bl sub_02006ADC
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov6_022477A0