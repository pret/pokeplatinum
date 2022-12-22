	.include "macros/function.inc"
	.include "include/unk_020302D0.inc"

	

	.text


	thumb_func_start sub_020302D0
sub_020302D0: ; 0x020302D0
	ldr r3, _020302D8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x74
	bx r3
	; .align 2, 0
_020302D8: .word MI_CpuFill8
	thumb_func_end sub_020302D0

	thumb_func_start sub_020302DC
sub_020302DC: ; 0x020302DC
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_020302DC

	thumb_func_start sub_020302EC
sub_020302EC: ; 0x020302EC
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020302EC

	thumb_func_start sub_020302F4
sub_020302F4: ; 0x020302F4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_020302F4

	thumb_func_start sub_02030308
sub_02030308: ; 0x02030308
	push {r4, lr}
	ldr r4, [sp, #8]
	cmp r1, #8
	bhi _02030392
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203031C: ; jump table
	.short _0203032E - _0203031C - 2 ; case 0
	.short _02030340 - _0203031C - 2 ; case 1
	.short _02030346 - _0203031C - 2 ; case 2
	.short _02030350 - _0203031C - 2 ; case 3
	.short _0203035E - _0203031C - 2 ; case 4
	.short _02030368 - _0203031C - 2 ; case 5
	.short _02030374 - _0203031C - 2 ; case 6
	.short _0203037E - _0203031C - 2 ; case 7
	.short _02030386 - _0203031C - 2 ; case 8
_0203032E:
	ldrb r3, [r0]
	ldrb r2, [r4]
	mov r1, #7
	bic r3, r1
	mov r1, #7
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_02030340:
	ldrb r1, [r4]
	strb r1, [r0, #1]
	pop {r4, pc}
_02030346:
	ldrh r3, [r4]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x22]
	pop {r4, pc}
_02030350:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, r0, r3
	ldrb r4, [r4]
	add r0, #0x2a
	strb r4, [r0]
	pop {r4, pc}
_0203035E:
	lsl r1, r2, #2
	ldr r3, [r4, #0]
	add r0, r0, r1
	str r3, [r0, #0x3c]
	pop {r4, pc}
_02030368:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r3, [r4]
	add r0, #0x4c
	strh r3, [r0]
	pop {r4, pc}
_02030374:
	ldrh r3, [r4]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #6]
	pop {r4, pc}
_0203037E:
	ldrb r1, [r4]
	add r0, r0, r2
	strb r1, [r0, #3]
	pop {r4, pc}
_02030386:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r3, [r4]
	add r0, #0x54
	strh r3, [r0]
	pop {r4, pc}
_02030392:
	bl sub_02022974
	pop {r4, pc}
	thumb_func_end sub_02030308

	thumb_func_start sub_02030398
sub_02030398: ; 0x02030398
	push {r3, lr}
	cmp r1, #8
	bhi _02030406
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020303AA: ; jump table
	.short _020303BC - _020303AA - 2 ; case 0
	.short _020303C4 - _020303AA - 2 ; case 1
	.short _020303C8 - _020303AA - 2 ; case 2
	.short _020303D0 - _020303AA - 2 ; case 3
	.short _020303DC - _020303AA - 2 ; case 4
	.short _020303E4 - _020303AA - 2 ; case 5
	.short _020303EE - _020303AA - 2 ; case 6
	.short _020303F6 - _020303AA - 2 ; case 7
	.short _020303FC - _020303AA - 2 ; case 8
_020303BC:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_020303C4:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_020303C8:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x22]
	pop {r3, pc}
_020303D0:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, r0, r3
	add r0, #0x2a
	ldrb r0, [r0]
	pop {r3, pc}
_020303DC:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
_020303E4:
	lsl r1, r2, #1
	add r0, r0, r1
	add r0, #0x4c
	ldrh r0, [r0]
	pop {r3, pc}
_020303EE:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #6]
	pop {r3, pc}
_020303F6:
	add r0, r0, r2
	ldrb r0, [r0, #3]
	pop {r3, pc}
_020303FC:
	lsl r1, r2, #1
	add r0, r0, r1
	add r0, #0x54
	ldrh r0, [r0]
	pop {r3, pc}
_02030406:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030398

	thumb_func_start sub_02030410
sub_02030410: ; 0x02030410
	ldr r3, _02030418 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_02030418: .word MI_CpuFill8
	thumb_func_end sub_02030410

	thumb_func_start sub_0203041C
sub_0203041C: ; 0x0203041C
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0203042C ; =0x00001620
	add r0, r0, r1
	pop {r3, pc}
	nop
_0203042C: .word 0x00001620
	thumb_func_end sub_0203041C

	thumb_func_start sub_02030430
sub_02030430: ; 0x02030430
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #9
	beq _0203043E
	cmp r1, #0xa
	beq _02030462
	b _02030468
_0203043E:
	ldrb r1, [r3]
	cmp r1, #1
	blo _02030450
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_02030450:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030462:
	mov r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
_02030468:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030430

	thumb_func_start sub_02030470
sub_02030470: ; 0x02030470
	push {r3, lr}
	cmp r1, #9
	beq _0203047C
	cmp r1, #0xa
	beq _02030488
	b _0203048C
_0203047C:
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_02030488:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_0203048C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02030470