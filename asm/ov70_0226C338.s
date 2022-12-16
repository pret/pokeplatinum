	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov70_0226C338
ov70_0226C338: ; 0x0226C338
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x60
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x60
	add r4, r0, #0
	bl sub_020D5124
	mov r1, #0xa
	ldr r2, _0226C394 ; =0x0226E678
	mul r1, r5
	add r0, r4, #0
	add r1, r2, r1
	bl ov70_0226C568
	ldr r2, _0226C398 ; =0x0226E670
	lsl r1, r6, #1
	add r0, r4, #0
	add r1, r2, r1
	bl ov70_0226C58C
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x3c
_0226C36E:
	add r1, r1, #1
	str r0, [r2, #0x48]
	add r2, r2, #4
	cmp r1, #2
	blt _0226C36E
	mov r2, #0
	add r1, r4, #0
	mov r0, #0x3c
_0226C37E:
	add r2, r2, #1
	str r0, [r1, #0x50]
	add r1, r1, #4
	cmp r2, #4
	blt _0226C37E
	add r0, r4, #0
	bl ov70_0226C598
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0226C394: .word 0x0226E678
_0226C398: .word 0x0226E670
	thumb_func_end ov70_0226C338

	thumb_func_start ov70_0226C39C
ov70_0226C39C: ; 0x0226C39C
	ldr r3, _0226C3A0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226C3A0: .word sub_020181C4
	thumb_func_end ov70_0226C39C

	thumb_func_start ov70_0226C3A4
ov70_0226C3A4: ; 0x0226C3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	mov r0, #0
	add r6, r4, #0
	add r5, r4, #0
	add r7, r0, #0
	add r6, #0x30
	add r5, #0x18
_0226C3B8:
	ldr r1, [r4, #0x48]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C3D4
	str r1, [r4, #0x48]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0226C50C
	mov r0, #1
_0226C3D4:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #2
	blt _0226C3B8
	ldr r4, [sp, #4]
	mov r1, #0
	add r7, r4, #0
	add r6, r4, #0
	add r5, r4, #0
	str r1, [sp, #8]
	add r7, #8
	add r6, #0x38
	add r5, #0x20
_0226C3F2:
	ldr r1, [r4, #0x50]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C40E
	str r1, [r4, #0x50]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x50]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0226C50C
	mov r0, #1
_0226C40E:
	ldr r1, [sp, #8]
	add r4, r4, #4
	add r1, r1, #1
	add r7, r7, #4
	add r6, r6, #4
	add r5, r5, #4
	str r1, [sp, #8]
	cmp r1, #4
	blt _0226C3F2
	cmp r0, #0
	beq _0226C42A
	ldr r0, [sp, #4]
	bl ov70_0226C598
_0226C42A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C3A4

	thumb_func_start ov70_0226C430
ov70_0226C430: ; 0x0226C430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	ldr r2, _0226C49C ; =0x0226E678
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #1]
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #3]
	strb r0, [r5, #0x1b]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r0, #0xa
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	bl ov70_0226C4E8
	add r6, r4, #2
	add r4, r5, #0
	mov r7, #0
	add r4, #0x38
_0226C462:
	ldrb r1, [r5, #8]
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #9]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xa]
	add r0, #0x22
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xb]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x50]
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_0226C4E8
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #2
	add r4, r4, #4
	cmp r7, #4
	blt _0226C462
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C49C: .word 0x0226E678
	thumb_func_end ov70_0226C430

	thumb_func_start ov70_0226C4A0
ov70_0226C4A0: ; 0x0226C4A0
	ldrb r2, [r0, #4]
	ldr r3, _0226C4C0 ; =ov70_0226C4E8
	lsl r1, r1, #1
	strb r2, [r0, #0x1c]
	ldrb r2, [r0, #5]
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #6]
	strb r2, [r0, #0x1e]
	ldrb r2, [r0, #7]
	strb r2, [r0, #0x1f]
	mov r2, #0
	str r2, [r0, #0x4c]
	ldr r2, _0226C4C4 ; =0x0226E670
	add r0, #0x34
	add r1, r2, r1
	bx r3
	; .align 2, 0
_0226C4C0: .word ov70_0226C4E8
_0226C4C4: .word 0x0226E670
	thumb_func_end ov70_0226C4A0

	thumb_func_start ov70_0226C4C8
ov70_0226C4C8: ; 0x0226C4C8
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C4C8

	thumb_func_start ov70_0226C4CC
ov70_0226C4CC: ; 0x0226C4CC
	push {r3, r4}
	mov r3, #0
	mov r2, #2
	ldrsb r4, [r0, r3]
	ldrsb r2, [r0, r2]
	mov r3, #1
	ldrsb r0, [r0, r3]
	lsl r2, r2, #0xa
	lsl r0, r0, #5
	orr r0, r4
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0226C4CC

	thumb_func_start ov70_0226C4E8
ov70_0226C4E8: ; 0x0226C4E8
	push {r3, r4}
	ldrh r3, [r1]
	mov r2, #0x1f
	and r3, r2
	strb r3, [r0]
	ldrh r4, [r1]
	lsl r3, r2, #5
	and r3, r4
	asr r3, r3, #5
	strb r3, [r0, #1]
	ldrh r3, [r1]
	lsl r1, r2, #0xa
	and r1, r3
	asr r1, r1, #0xa
	strb r1, [r0, #2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C4E8

	thumb_func_start ov70_0226C50C
ov70_0226C50C: ; 0x0226C50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	add r6, r3, #0
	sub r0, r2, r0
	str r0, [sp, #4]
	mov r0, #2
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	sub r0, r2, r0
	str r0, [sp]
	mov r0, #0
	ldrsb r7, [r5, r0]
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	sub r0, r0, r7
	mul r0, r6
	bl sub_020E1F6C
	add r0, r7, r0
	strb r0, [r4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl sub_020E1F6C
	mov r1, #1
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #1]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl sub_020E1F6C
	mov r1, #2
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C50C

	thumb_func_start ov70_0226C568
ov70_0226C568: ; 0x0226C568
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_0226C4E8
	mov r6, #0
	add r4, r4, #2
	add r5, #8
_0226C578:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226C4E8
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _0226C578
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226C568

	thumb_func_start ov70_0226C58C
ov70_0226C58C: ; 0x0226C58C
	ldr r3, _0226C594 ; =ov70_0226C4E8
	add r0, r0, #4
	bx r3
	nop
_0226C594: .word ov70_0226C4E8
	thumb_func_end ov70_0226C58C

	thumb_func_start ov70_0226C598
ov70_0226C598: ; 0x0226C598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #4
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r7, #2
	add r6, sp, #4
_0226C5A8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov70_0226C4CC
	ldrh r1, [r6, #2]
	add r0, r4, #0
	bl sub_020AF558
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226C5A8
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #8
	add r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0xc
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl sub_020AF56C
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x10
	add r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x14
	str r0, [sp]
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl sub_020AF590
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C598

	.rodata


	.global Unk_ov70_0226E670
Unk_ov70_0226E670: ; 0x0226E670
	.incbin "incbin/overlay70_rodata.bin", 0x11A4, 0x11AC - 0x11A4

	.global Unk_ov70_0226E678
Unk_ov70_0226E678: ; 0x0226E678
	.incbin "incbin/overlay70_rodata.bin", 0x11AC, 0x3C

