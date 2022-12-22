	.include "macros/function.inc"
	.include "include/unk_02014A84.inc"

	

	.text


	thumb_func_start sub_02014A84
sub_02014A84: ; 0x02014A84
	ldr r1, _02014A98 ; =0x0000FFFF
	mov r2, #0
	strh r1, [r0]
_02014A8A:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02014A8A
	bx lr
	nop
_02014A98: .word 0x0000FFFF
	thumb_func_end sub_02014A84

	thumb_func_start sub_02014A9C
sub_02014A9C: ; 0x02014A9C
	strh r1, [r0]
	mov r2, #0
	ldr r1, _02014AB0 ; =0x0000FFFF
	strh r2, [r0, #2]
_02014AA4:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02014AA4
	bx lr
	; .align 2, 0
_02014AB0: .word 0x0000FFFF
	thumb_func_end sub_02014A9C

	thumb_func_start sub_02014AB4
sub_02014AB4: ; 0x02014AB4
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_02014A9C
	mov r0, #5
	strh r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end sub_02014AB4

	thumb_func_start sub_02014AC4
sub_02014AC4: ; 0x02014AC4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #4
	blo _02014AD2
	bl GF_AssertFail
_02014AD2:
	cmp r6, #4
	bhs _02014B18
	mov r0, #0xa
	add r4, r6, #0
	mul r4, r0
	ldr r1, _02014B1C ; =0x020E54A2
	add r0, r5, #0
	ldrb r1, [r1, r4]
	bl sub_02014A9C
	ldr r0, _02014B20 ; =0x020E54A3
	mov r1, #0
	ldrb r0, [r0, r4]
	mvn r1, r1
	strh r0, [r5, #2]
	ldr r0, _02014B24 ; =0x020E54A4
	ldrsh r0, [r0, r4]
	cmp r0, r1
	beq _02014B02
	ldr r1, _02014B28 ; =0x020E54A6
	ldrh r1, [r1, r4]
	bl sub_02014DFC
	strh r0, [r5, #4]
_02014B02:
	ldr r0, _02014B2C ; =0x020E54A8
	mov r1, #0
	ldrsh r0, [r0, r4]
	mvn r1, r1
	cmp r0, r1
	beq _02014B18
	ldr r1, _02014B30 ; =0x020E54AA
	ldrh r1, [r1, r4]
	bl sub_02014DFC
	strh r0, [r5, #6]
_02014B18:
	pop {r4, r5, r6, pc}
	nop
_02014B1C: .word 0x020E54A2
_02014B20: .word 0x020E54A3
_02014B24: .word 0x020E54A4
_02014B28: .word 0x020E54A6
_02014B2C: .word 0x020E54A8
_02014B30: .word 0x020E54AA
	thumb_func_end sub_02014AC4

	thumb_func_start sub_02014B34
sub_02014B34: ; 0x02014B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl sub_0200B358
	ldr r5, [sp]
	ldr r7, _02014B98 ; =0x0000FFFF
	add r6, r0, #0
	mov r4, #0
_02014B4A:
	ldrh r2, [r5, #4]
	cmp r2, r7
	beq _02014B60
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200BE48
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #2
	blt _02014B4A
_02014B60:
	ldr r2, [sp]
	mov r0, #1
	ldrh r2, [r2]
	mov r1, #0x1a
	lsl r3, r2, #1
	ldr r2, _02014B9C ; =0x020E5498
	ldrh r2, [r2, r3]
	ldr r3, [sp, #4]
	bl sub_0200B144
	add r5, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200B29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02014B98: .word 0x0000FFFF
_02014B9C: .word 0x020E5498
	thumb_func_end sub_02014B34

	thumb_func_start sub_02014BA0
sub_02014BA0: ; 0x02014BA0
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	ldrh r1, [r4]
	mov r0, #0x1a
	lsl r2, r1, #1
	ldr r1, _02014BB8 ; =0x020E5498
	ldrh r1, [r1, r2]
	ldrh r2, [r4, #2]
	bl sub_0200B010
	pop {r4, pc}
	; .align 2, 0
_02014BB8: .word 0x020E5498
	thumb_func_end sub_02014BA0

	thumb_func_start sub_02014BBC
sub_02014BBC: ; 0x02014BBC
	ldrh r1, [r0]
	ldr r0, _02014BCC ; =0x0000FFFF
	cmp r1, r0
	beq _02014BC8
	mov r0, #1
	bx lr
_02014BC8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02014BCC: .word 0x0000FFFF
	thumb_func_end sub_02014BBC

	thumb_func_start sub_02014BD0
sub_02014BD0: ; 0x02014BD0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02014C00
	mov r3, #0
	cmp r0, #0
	bls _02014BF6
	ldr r1, _02014BFC ; =0x0000FFFF
_02014BE4:
	ldrh r2, [r4, #4]
	cmp r2, r1
	bne _02014BEE
	mov r0, #0
	pop {r4, pc}
_02014BEE:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _02014BE4
_02014BF6:
	mov r0, #1
	pop {r4, pc}
	nop
_02014BFC: .word 0x0000FFFF
	thumb_func_end sub_02014BD0

	thumb_func_start sub_02014C00
sub_02014C00: ; 0x02014C00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #5
	blo _02014C0E
	bl GF_AssertFail
_02014C0E:
	add r0, r5, #0
	bl sub_02014CD4
	cmp r4, r0
	blo _02014C1C
	bl GF_AssertFail
_02014C1C:
	ldr r1, _02014C70 ; =0x020E5498
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r0, #0x1a
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B010
	str r0, [sp]
	bl sub_02023E2C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _02014C74 ; =0x0000FFFF
	mov r5, #0
	cmp r1, r0
	beq _02014C64
	add r7, r0, #0
	sub r6, r0, #1
_02014C42:
	cmp r1, r6
	bne _02014C5C
	add r0, r4, #0
	bl sub_0201D108
	cmp r0, #0
	beq _02014C52
	add r5, r5, #1
_02014C52:
	add r0, r4, #0
	bl sub_0201D0C8
	add r4, r0, #0
	b _02014C5E
_02014C5C:
	add r4, r4, #2
_02014C5E:
	ldrh r1, [r4]
	cmp r1, r7
	bne _02014C42
_02014C64:
	ldr r0, [sp]
	bl sub_020237BC
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014C70: .word 0x020E5498
_02014C74: .word 0x0000FFFF
	thumb_func_end sub_02014C00

	thumb_func_start sub_02014C78
sub_02014C78: ; 0x02014C78
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_02014C78

	thumb_func_start sub_02014C80
sub_02014C80: ; 0x02014C80
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_02014C80

	thumb_func_start sub_02014C84
sub_02014C84: ; 0x02014C84
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_02014C84

	thumb_func_start sub_02014C88
sub_02014C88: ; 0x02014C88
	push {r3, r4}
	ldrh r3, [r0]
	ldrh r2, [r1]
	cmp r3, r2
	bne _02014C9A
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	beq _02014CA0
_02014C9A:
	mov r0, #0
	pop {r3, r4}
	bx lr
_02014CA0:
	mov r4, #0
_02014CA2:
	ldrh r3, [r0, #4]
	ldrh r2, [r1, #4]
	cmp r3, r2
	beq _02014CB0
	mov r0, #0
	pop {r3, r4}
	bx lr
_02014CB0:
	add r4, r4, #1
	add r1, r1, #2
	add r0, r0, #2
	cmp r4, #2
	blt _02014CA2
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02014C88

	thumb_func_start sub_02014CC0
sub_02014CC0: ; 0x02014CC0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014CC0

	thumb_func_start sub_02014CD4
sub_02014CD4: ; 0x02014CD4
	cmp r0, #5
	bhs _02014CDC
	mov r0, #0x14
	bx lr
_02014CDC:
	mov r0, #0
	bx lr
	thumb_func_end sub_02014CD4

	thumb_func_start sub_02014CE0
sub_02014CE0: ; 0x02014CE0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #5
	blo _02014CF0
	bl GF_AssertFail
_02014CF0:
	strh r4, [r5]
	strh r6, [r5, #2]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02014CE0

	thumb_func_start sub_02014CF8
sub_02014CF8: ; 0x02014CF8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02014D08
	bl GF_AssertFail
_02014D08:
	lsl r0, r4, #1
	add r0, r5, r0
	strh r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02014CF8

	thumb_func_start sub_02014D10
sub_02014D10: ; 0x02014D10
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02014C00
	cmp r0, #2
	bhs _02014D30
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _02014D34 ; =0x0000FFFF
_02014D26:
	add r0, r0, #1
	strh r1, [r2, #4]
	add r2, r2, #2
	cmp r0, #2
	blo _02014D26
_02014D30:
	pop {r4, pc}
	nop
_02014D34: .word 0x0000FFFF
	thumb_func_end sub_02014D10

	.rodata


	.global Unk_020E5498
Unk_020E5498: ; 0x020E5498
	.incbin "incbin/arm9_rodata.bin", 0x858, 0x862 - 0x858

	.global Unk_020E54A2
Unk_020E54A2: ; 0x020E54A2
	.incbin "incbin/arm9_rodata.bin", 0x862, 0x28

