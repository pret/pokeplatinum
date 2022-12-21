	.include "macros/function.inc"
	.include "include/unk_02025CB0.inc"

	

	.text


	thumb_func_start sub_02025CB0
sub_02025CB0: ; 0x02025CB0
	mov r0, #0x5c
	bx lr
	thumb_func_end sub_02025CB0

	thumb_func_start sub_02025CB4
sub_02025CB4: ; 0x02025CB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x5c
	bl sub_020C4BB8
	add r4, #0x10
	add r0, r4, #0
	bl sub_02025D84
	pop {r4, pc}
	thumb_func_end sub_02025CB4

	thumb_func_start sub_02025CCC
sub_02025CCC: ; 0x02025CCC
	ldr r3, _02025CD4 ; =sub_020245BC
	mov r1, #0
	bx r3
	nop
_02025CD4: .word sub_020245BC
	thumb_func_end sub_02025CCC

	thumb_func_start sub_02025CD8
sub_02025CD8: ; 0x02025CD8
	push {r3, lr}
	bl sub_02025CCC
	add r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02025CD8

	thumb_func_start sub_02025CE4
sub_02025CE4: ; 0x02025CE4
	push {r3, r4, lr}
	sub sp, #0x54
	add r4, r0, #0
	bl sub_020C4040
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #8
	str r1, [r4, #4]
	bl sub_020C3FA0
	add r0, sp, #0
	bl sub_020C3FBC
	add r0, sp, #0
	ldrb r1, [r0, #2]
	strb r1, [r4, #0xe]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xf]
	add sp, #0x54
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025CE4

	thumb_func_start sub_02025D10
sub_02025D10: ; 0x02025D10
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C3FA0
	mov r2, #0
	add r3, sp, #0
_02025D20:
	add r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #8]
	cmp r1, r0
	beq _02025D30
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02025D30:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #6
	blt _02025D20
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025D10

	thumb_func_start sub_02025D40
sub_02025D40: ; 0x02025D40
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C4040
	ldr r3, [r4, #0]
	ldr r2, [r4, #4]
	eor r0, r3
	eor r1, r2
	orr r0, r1
	bne _02025D58
	mov r0, #1
	pop {r4, pc}
_02025D58:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02025D40

	thumb_func_start sub_02025D5C
sub_02025D5C: ; 0x02025D5C
	ldrb r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_02025D5C

	thumb_func_start sub_02025D60
sub_02025D60: ; 0x02025D60
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_02025D60

	thumb_func_start sub_02025D64
sub_02025D64: ; 0x02025D64
	add r0, #0x48
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D64

	thumb_func_start sub_02025D6C
sub_02025D6C: ; 0x02025D6C
	add r0, #0x48
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D6C

	thumb_func_start sub_02025D74
sub_02025D74: ; 0x02025D74
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02025D74

	thumb_func_start sub_02025D78
sub_02025D78: ; 0x02025D78
	ldr r2, [r0, #0x4c]
	cmp r2, #0
	bne _02025D80
	str r1, [r0, #0x4c]
_02025D80:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D78

	thumb_func_start sub_02025D84
sub_02025D84: ; 0x02025D84
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r4, #0
	str r0, [r4, #0]
	add r0, r4, #4
	add r1, #0x14
	bl sub_0201384C
	add r0, r4, #4
	bl sub_020CC16C
	add r1, r4, #0
	str r0, [r4, #0x20]
	add r0, r4, #4
	add r1, #0x14
	bl sub_020CC218
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025D84

	thumb_func_start sub_02025DB8
sub_02025DB8: ; 0x02025DB8
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02025DC2
	mov r0, #1
	bx lr
_02025DC2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025DB8

	thumb_func_start sub_02025DC8
sub_02025DC8: ; 0x02025DC8
	mov r2, #0x5a
	ldr r3, [r0, #0x34]
	lsl r2, r2, #4
	cmp r3, r2
	bls _02025DD4
	str r2, [r0, #0x34]
_02025DD4:
	ldr r2, [r0, #0x34]
	cmp r2, r1
	bhs _02025DE0
	mov r1, #0
	str r1, [r0, #0x34]
	bx lr
_02025DE0:
	sub r1, r2, r1
	str r1, [r0, #0x34]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025DC8

	thumb_func_start sub_02025DE8
sub_02025DE8: ; 0x02025DE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #4
	add r1, r4, #0
	str r0, [r4, #0x34]
	add r0, r4, #4
	add r1, #0x14
	bl sub_0201384C
	add r0, r4, #4
	bl sub_020CC16C
	str r0, [r4, #0x20]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025DE8