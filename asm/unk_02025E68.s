	.include "macros/function.inc"
	.include "include/unk_02025E68.inc"

	

	.text


	thumb_func_start sub_02025E68
sub_02025E68: ; 0x02025E68
	mov r0, #0x20
	bx lr
	thumb_func_end sub_02025E68

	thumb_func_start sub_02025E6C
sub_02025E6C: ; 0x02025E6C
	push {r4, lr}
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	bl sub_02025E8C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025E6C

	thumb_func_start sub_02025E80
sub_02025E80: ; 0x02025E80
	ldr r3, _02025E88 ; =sub_020C4DB0
	mov r2, #0x20
	bx r3
	nop
_02025E88: .word sub_020C4DB0
	thumb_func_end sub_02025E80

	thumb_func_start sub_02025E8C
sub_02025E8C: ; 0x02025E8C
	push {r4, lr}
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #2
	strb r0, [r4, #0x19]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02025FD0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025E8C

	thumb_func_start sub_02025EA8
sub_02025EA8: ; 0x02025EA8
	mov r2, #0
_02025EAA:
	ldrh r1, [r0]
	cmp r1, #0
	beq _02025EB4
	mov r0, #0
	bx lr
_02025EB4:
	add r2, r2, #1
	add r0, r0, #2
	cmp r2, #8
	blt _02025EAA
	mov r0, #1
	bx lr
	thumb_func_end sub_02025EA8

	thumb_func_start sub_02025EC0
sub_02025EC0: ; 0x02025EC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020021F0
	cmp r0, #8
	blt _02025ED4
	bl sub_02022974
_02025ED4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020021B0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02025EC0

	thumb_func_start sub_02025EE0
sub_02025EE0: ; 0x02025EE0
	ldr r3, _02025EEC ; =sub_02023DF0
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #8
	bx r3
	; .align 2, 0
_02025EEC: .word sub_02023DF0
	thumb_func_end sub_02025EE0

	thumb_func_start sub_02025EF0
sub_02025EF0: ; 0x02025EF0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025EF0

	thumb_func_start sub_02025EF4
sub_02025EF4: ; 0x02025EF4
	ldr r3, _02025F00 ; =sub_02023D28
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_02025F00: .word sub_02023D28
	thumb_func_end sub_02025EF4

	thumb_func_start sub_02025F04
sub_02025F04: ; 0x02025F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #8
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02025EF4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02025F04

	thumb_func_start sub_02025F1C
sub_02025F1C: ; 0x02025F1C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_02025F1C

	thumb_func_start sub_02025F20
sub_02025F20: ; 0x02025F20
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02025F20

	thumb_func_start sub_02025F24
sub_02025F24: ; 0x02025F24
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02025F24

	thumb_func_start sub_02025F2C
sub_02025F2C: ; 0x02025F2C
	strb r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_02025F2C

	thumb_func_start sub_02025F30
sub_02025F30: ; 0x02025F30
	ldrb r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02025F30

	thumb_func_start sub_02025F34
sub_02025F34: ; 0x02025F34
	ldrb r3, [r0, #0x1a]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	bne _02025F44
	mov r0, #0
_02025F44:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F34

	thumb_func_start sub_02025F48
sub_02025F48: ; 0x02025F48
	ldrb r3, [r0, #0x1a]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F48

	thumb_func_start sub_02025F58
sub_02025F58: ; 0x02025F58
	ldrb r3, [r0, #0x1a]
	mov r2, #0
	cmp r3, #0
	beq _02025F6E
	mov r0, #1
_02025F62:
	add r1, r3, #0
	tst r1, r0
	beq _02025F6A
	add r2, r2, #1
_02025F6A:
	lsr r3, r3, #1
	bne _02025F62
_02025F6E:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F58

	thumb_func_start sub_02025F74
sub_02025F74: ; 0x02025F74
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02025F74

	thumb_func_start sub_02025F78
sub_02025F78: ; 0x02025F78
	ldr r2, _02025F88 ; =0x000F423F
	cmp r1, r2
	bls _02025F80
	add r1, r2, #0
_02025F80:
	str r1, [r0, #0x14]
	add r0, r1, #0
	bx lr
	nop
_02025F88: .word 0x000F423F
	thumb_func_end sub_02025F78

	thumb_func_start sub_02025F8C
sub_02025F8C: ; 0x02025F8C
	ldrb r0, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02025F8C

	thumb_func_start sub_02025F90
sub_02025F90: ; 0x02025F90
	strb r1, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02025F90

	thumb_func_start sub_02025F94
sub_02025F94: ; 0x02025F94
	ldr r2, _02025FB4 ; =0x000F423F
	cmp r1, r2
	bls _02025F9E
	str r2, [r0, #0x14]
	b _02025FA4
_02025F9E:
	ldr r2, [r0, #0x14]
	add r1, r2, r1
	str r1, [r0, #0x14]
_02025FA4:
	ldr r2, [r0, #0x14]
	ldr r1, _02025FB4 ; =0x000F423F
	cmp r2, r1
	bls _02025FAE
	str r1, [r0, #0x14]
_02025FAE:
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02025FB4: .word 0x000F423F
	thumb_func_end sub_02025F94

	thumb_func_start sub_02025FB8
sub_02025FB8: ; 0x02025FB8
	ldr r2, [r0, #0x14]
	cmp r2, r1
	bhs _02025FC2
	mov r1, #0
	b _02025FC4
_02025FC2:
	sub r1, r2, r1
_02025FC4:
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FB8

	thumb_func_start sub_02025FCC
sub_02025FCC: ; 0x02025FCC
	ldrb r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02025FCC

	thumb_func_start sub_02025FD0
sub_02025FD0: ; 0x02025FD0
	strb r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02025FD0

	thumb_func_start sub_02025FD4
sub_02025FD4: ; 0x02025FD4
	mov r0, #0
	bx lr
	thumb_func_end sub_02025FD4

	thumb_func_start sub_02025FD8
sub_02025FD8: ; 0x02025FD8
	ldrb r0, [r0, #0x19]
	bx lr
	thumb_func_end sub_02025FD8

	thumb_func_start sub_02025FDC
sub_02025FDC: ; 0x02025FDC
	strb r1, [r0, #0x19]
	bx lr
	thumb_func_end sub_02025FDC

	thumb_func_start sub_02025FE0
sub_02025FE0: ; 0x02025FE0
	ldrb r2, [r0, #0x1d]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0, #0x1d]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FE0

	thumb_func_start sub_02025FF0
sub_02025FF0: ; 0x02025FF0
	ldrb r0, [r0, #0x1d]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02025FF0

	thumb_func_start sub_02025FF8
sub_02025FF8: ; 0x02025FF8
	ldrb r2, [r0, #0x1d]
	mov r1, #2
	orr r1, r2
	strb r1, [r0, #0x1d]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FF8

	thumb_func_start sub_02026004
sub_02026004: ; 0x02026004
	ldrb r0, [r0, #0x1d]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02026004

	thumb_func_start sub_0202600C
sub_0202600C: ; 0x0202600C
	push {r3, r4, r5, lr}
	mov r2, #7
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02002238
	cmp r0, #0
	bne _02026028
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _02026028
	mov r0, #1
	pop {r3, r4, r5, pc}
_02026028:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202600C