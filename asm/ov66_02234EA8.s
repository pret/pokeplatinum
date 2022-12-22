	.include "macros/function.inc"
	.include "include/ov66_02234EA8.inc"

	

	.text


	thumb_func_start ov66_02234EA8
ov66_02234EA8: ; 0x02234EA8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x66
	add r1, r7, #0
	bl sub_02006C24
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r7, #0
	mov r2, #0xdb
	mov r3, #3
	add r4, r0, #0
	bl ov66_02234F2C
	add r0, sp, #8
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov66_02234F2C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x18
	mul r0, r1
	ldr r1, _02234F28 ; =0x0000FFFF
	bl _s32_div_f
	cmp r0, #0
	bge _02234EF6
	add r0, #0x18
_02234EF6:
	cmp r0, #0x18
	blt _02234F02
	mov r1, #0x18
	bl _s32_div_f
	add r0, r1, #0
_02234F02:
	add r2, sp, #4
	mov r1, #0
	str r1, [r2, #0]
	add r1, sp, #4
	strb r0, [r1]
	add r0, r2, #0
	add r1, sp, #0x30
	bl ov66_0223144C
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02234F28: .word 0x0000FFFF
	thumb_func_end ov66_02234EA8

	thumb_func_start ov66_02234F2C
ov66_02234F2C: ; 0x02234F2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r7, #0
	add r5, r2, #0
	str r7, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r1, #0x12
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r4, [sp, #0x30]
	bl sub_02007250
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #6
	bl _u32_div_f
	cmp r5, r0
	blt _02234F5E
	bl sub_02022974
_02234F5E:
	mov r0, #6
	add r1, r5, #0
	mul r1, r0
	ldrh r0, [r6, r1]
	cmp r0, #2
	beq _02234F74
	add r1, r6, r1
	mov r0, #4
	ldrsh r0, [r1, r0]
	mov r7, #1
	str r0, [r4, #0]
_02234F74:
	add r0, r6, #0
	bl sub_020181C4
	cmp r7, #0
	bne _02234FC0
	add r0, r5, #0
	bl sub_020996D4
	bl sub_02099764
	mov r2, #0
	add r1, r0, #0
	str r2, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_02007250
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	lsr r1, r0, #2
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _02234FB0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	b _02234FB8
_02234FB0:
	bl sub_02022974
	mov r0, #2
	ldrsh r0, [r5, r0]
_02234FB8:
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020181C4
_02234FC0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov66_02234F2C