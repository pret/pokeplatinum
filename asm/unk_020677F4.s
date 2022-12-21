	.include "macros/function.inc"
	.include "include/unk_020677F4.inc"

	

	.text


	thumb_func_start sub_020677F4
sub_020677F4: ; 0x020677F4
	cmp r0, #0x64
	bne _020677FC
	mov r0, #1
	bx lr
_020677FC:
	mov r0, #0
	bx lr
	thumb_func_end sub_020677F4

	thumb_func_start sub_02067800
sub_02067800: ; 0x02067800
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A78
	ldrh r0, [r0]
	cmp r0, #0
	bne _02067812
	ldr r0, _02067830 ; =0x0000FFFF
	pop {r4, pc}
_02067812:
	add r0, r4, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206782C
	add r0, r4, #0
	bl sub_02062AF0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206782C
	ldr r0, [r0, #0]
	pop {r4, pc}
_0206782C:
	ldr r0, _02067830 ; =0x0000FFFF
	pop {r4, pc}
	; .align 2, 0
_02067830: .word 0x0000FFFF
	thumb_func_end sub_02067800

	thumb_func_start sub_02067834
sub_02067834: ; 0x02067834
	push {r3, lr}
	bl sub_02062A78
	mov r1, #1
	strh r1, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_02067834

	thumb_func_start sub_02067840
sub_02067840: ; 0x02067840
	push {r3, lr}
	mov r1, #4
	bl sub_02062A54
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02067840

	thumb_func_start sub_02067850
sub_02067850: ; 0x02067850
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F00
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067850

	thumb_func_start sub_0206786C
sub_0206786C: ; 0x0206786C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206786C

	thumb_func_start sub_02067870
sub_02067870: ; 0x02067870
	push {r4, lr}
	mov r1, #0x14
	add r4, r0, #0
	bl sub_02062ACC
	ldr r1, _0206788C ; =0x0000FFFF
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	add r0, r4, #0
	bl ov5_021F20D4
	pop {r4, pc}
	nop
_0206788C: .word 0x0000FFFF
	thumb_func_end sub_02067870

	thumb_func_start sub_02067890
sub_02067890: ; 0x02067890
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F00
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _02067948
	ldr r0, [r4, #4]
	cmp r6, r0
	beq _02067914
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECFD8
	add r0, r5, #0
	bl sub_02062C00
	add r1, r5, #0
	bl sub_02055F20
	add r1, r6, #0
	bl sub_020679FC
	ldr r1, _0206794C ; =0x0000FFFF
	str r0, [r4, #0]
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _02067900
	cmp r0, #0
	beq _020678F2
	add r0, r5, #0
	bl ov5_021F22BC
_020678F2:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECEB4
	b _02067910
_02067900:
	cmp r0, #0
	beq _02067910
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _02067910
	add r0, r5, #0
	bl ov5_021F22BC
_02067910:
	mov r0, #0
	strh r0, [r7, #2]
_02067914:
	add r0, r5, #0
	str r6, [r4, #4]
	bl ov5_021EDD94
	cmp r0, #1
	beq _02067948
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02067948
	add r0, r5, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _02067940
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_02021368
_02067940:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov5_021EDED8
_02067948:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206794C: .word 0x0000FFFF
	thumb_func_end sub_02067890

	thumb_func_start sub_02067950
sub_02067950: ; 0x02067950
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r2, r0, #0
	add r1, r2, #0
	ldr r2, [r2, #0]
	add r0, r4, #0
	add r1, #8
	bl ov5_021ECFD8
	pop {r4, pc}
	thumb_func_end sub_02067950

	thumb_func_start sub_02067968
sub_02067968: ; 0x02067968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02067980
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED01C
_02067980:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECFD8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067968

	thumb_func_start sub_02067998
sub_02067998: ; 0x02067998
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _020679F6
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020679D6
	ldr r2, [r4, #0]
	ldr r0, _020679F8 ; =0x0000FFFF
	cmp r2, r0
	beq _020679C6
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECEB4
	b _020679D0
_020679C6:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_020679D0:
	add r0, r5, #0
	bl ov5_021F20D4
_020679D6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020679F6
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED03C
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_020679F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020679F8: .word 0x0000FFFF
	thumb_func_end sub_02067998

	thumb_func_start sub_020679FC
sub_020679FC: ; 0x020679FC
	push {r3, lr}
	cmp r1, #0
	beq _02067A08
	cmp r1, #1
	beq _02067A0C
	b _02067A10
_02067A08:
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
_02067A0C:
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
_02067A10:
	sub r2, r0, #1
	mov r0, #0xc
	ldr r3, _02067A54 ; =0x021FB67C
	mul r0, r2
	add r2, r3, r0
	cmp r1, #5
	bhi _02067A48
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02067A2A: ; jump table
	.short _02067A48 - _02067A2A - 2 ; case 0
	.short _02067A48 - _02067A2A - 2 ; case 1
	.short _02067A36 - _02067A2A - 2 ; case 2
	.short _02067A3C - _02067A2A - 2 ; case 3
	.short _02067A40 - _02067A2A - 2 ; case 4
	.short _02067A44 - _02067A2A - 2 ; case 5
_02067A36:
	mov r0, #1
	lsl r0, r0, #0xc
	pop {r3, pc}
_02067A3C:
	ldr r0, [r2, #0]
	pop {r3, pc}
_02067A40:
	ldr r0, [r2, #4]
	pop {r3, pc}
_02067A44:
	ldr r0, [r2, #8]
	pop {r3, pc}
_02067A48:
	bl sub_02022974
	ldr r0, _02067A50 ; =0x0000FFFF
	pop {r3, pc}
	; .align 2, 0
_02067A50: .word 0x0000FFFF
_02067A54: .word 0x021FB67C
	thumb_func_end sub_020679FC

	thumb_func_start sub_02067A58
sub_02067A58: ; 0x02067A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062920
	bl sub_020677F4
	cmp r0, #0
	bne _02067A6E
	bl sub_02022974
_02067A6E:
	add r0, r5, #0
	bl sub_02062D4C
	cmp r0, #1
	bne _02067A80
	add r0, r5, #0
	bl sub_02062AF0
	ldr r4, [r0, #8]
_02067A80:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067A58