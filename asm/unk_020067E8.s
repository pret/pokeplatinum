	.include "macros/function.inc"
	.include "include/unk_020067E8.inc"

	

	.text


	thumb_func_start sub_020067E8
sub_020067E8: ; 0x020067E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0x28
	bl sub_02018144
	add r3, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	str r4, [r3, #0x18]
	str r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	str r0, [r3, #0x24]
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020067E8

	thumb_func_start sub_02006814
sub_02006814: ; 0x02006814
	ldr r3, _02006818 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02006818: .word sub_020181C4
	thumb_func_end sub_02006814

	thumb_func_start sub_0200681C
sub_0200681C: ; 0x0200681C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_02018144
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200681C

	thumb_func_start sub_0200682C
sub_0200682C: ; 0x0200682C
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0200682C

	thumb_func_start sub_02006830
sub_02006830: ; 0x02006830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_02006830

	thumb_func_start sub_02006840
sub_02006840: ; 0x02006840
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02006840

	thumb_func_start sub_02006844
sub_02006844: ; 0x02006844
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #3
	bhi _020068C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200685A: ; jump table
	.short _02006862 - _0200685A - 2 ; case 0
	.short _02006876 - _0200685A - 2 ; case 1
	.short _0200688E - _0200685A - 2 ; case 2
	.short _020068A4 - _0200685A - 2 ; case 3
_02006862:
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _02006872
	mov r1, #2
	bl sub_02006590
_02006872:
	mov r0, #1
	str r0, [r4, #0x10]
_02006876:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r0, #2
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _020068C2
_0200688E:
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r0, #3
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _020068C2
_020068A4:
	add r1, r4, #0
	ldr r2, [r4, #8]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _020068BE
	bl sub_02006514
_020068BE:
	mov r0, #1
	pop {r4, pc}
_020068C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006844