	.include "macros/function.inc"
	.include "include/unk_02015920.inc"

	

	.text


	thumb_func_start sub_02015920
sub_02015920: ; 0x02015920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9c
	bl sub_02018144
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02015A80
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015920

	thumb_func_start sub_02015938
sub_02015938: ; 0x02015938
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0201594E
	bl sub_02015A54
_0201594E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02015938

	thumb_func_start sub_02015958
sub_02015958: ; 0x02015958
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	str r2, [r5, #0x7c]
	add r2, r5, #0
	ldr r3, [r4, #4]
	add r2, #0x80
	str r3, [r2, #0]
	add r2, r5, #0
	ldrb r3, [r4, #0x10]
	add r2, #0x98
	strb r3, [r2]
	add r2, r5, #0
	ldrb r3, [r4, #0x11]
	add r2, #0x99
	strb r3, [r2]
	bl sub_02015AC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015AE4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015B14
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02015BA4
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r1, r0
	add r0, r5, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015958

	thumb_func_start sub_020159C0
sub_020159C0: ; 0x020159C0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x9b
	ldrb r2, [r1]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r4, #0
	add r1, #0x9b
	strb r2, [r1]
	bl sub_020159FC
	cmp r0, #0
	bne _020159FA
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bne _020159FA
	add r4, #0x9a
	ldrb r0, [r4]
	cmp r0, #0
	bne _020159F8
	mov r0, #3
	pop {r4, pc}
_020159F8:
	mov r0, #4
_020159FA:
	pop {r4, pc}
	thumb_func_end sub_020159C0

	thumb_func_start sub_020159FC
sub_020159FC: ; 0x020159FC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02015A10
	bl sub_02022974
_02015A10:
	add r0, r4, #0
	add r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #3
	bne _02015A20
	ldr r0, [r4, #0]
	bl sub_0202404C
_02015A20:
	add r1, r4, #0
	add r1, #0x9a
	ldrb r2, [r1]
	mov r0, #0
	cmp r2, #3
	beq _02015A3A
	add r1, r4, #0
	mov r0, #0x38
	add r1, #0xc
	mul r0, r2
	add r0, r1, r0
	bl sub_02015CC0
_02015A3A:
	cmp r0, #1
	bne _02015A4E
	add r4, #0x9a
	ldrb r0, [r4]
	cmp r0, #0
	bne _02015A4A
	mov r0, #1
	pop {r4, pc}
_02015A4A:
	mov r0, #2
	pop {r4, pc}
_02015A4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020159FC

	thumb_func_start sub_02015A54
sub_02015A54: ; 0x02015A54
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02024034
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_02015A64:
	add r0, r5, #0
	bl sub_02015D00
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #2
	blt _02015A64
	add r0, r6, #0
	add r6, #0x84
	ldr r1, [r6, #0]
	bl sub_02015A80
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02015A54

	thumb_func_start sub_02015A80
sub_02015A80: ; 0x02015A80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x9c
	bl memset
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	add r0, r5, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x9a
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015A80

	thumb_func_start sub_02015AC0
sub_02015AC0: ; 0x02015AC0
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r1, #8]
	mov r1, #1
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r2, [r3, #0x7c]
	add r3, #0x80
	ldr r3, [r3, #0]
	mov r0, #0x54
	bl sub_02015DCC
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_02015AC0

	thumb_func_start sub_02015AE4
sub_02015AE4: ; 0x02015AE4
	push {r3, lr}
	sub sp, #8
	add r3, r1, #0
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #4
	bhs _02015AF8
	mov r2, #0
	b _02015AFA
_02015AF8:
	mov r2, #4
_02015AFA:
	mov r1, #0x40
	str r1, [sp]
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r3, [r3, #0xc]
	mov r0, #0x54
	lsl r3, r3, #5
	bl sub_02015E1C
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_02015AE4

	thumb_func_start sub_02015B14
sub_02015B14: ; 0x02015B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	mov r3, #0
	add r4, r7, #0
_02015B1E:
	add r0, r4, #0
	add r3, r3, #1
	lsl r2, r3, #0xc
	add r0, #0x88
	add r4, r4, #4
	str r2, [r0, #0]
	cmp r3, #4
	blt _02015B1E
	ldr r0, [r7, #0x7c]
	mov r5, #0
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r4, r7, #0
	str r0, [sp, #4]
	mov r0, #0x54
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	add r6, r5, #0
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0xc]
	add r4, #0xc
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r0, #0x88
	str r0, [sp, #0x24]
	mov r0, #4
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r0, #0x98
	ldrb r1, [r0]
	add r0, sp, #0x20
	strb r1, [r0, #0xc]
_02015B62:
	mov r1, #0
	mov r2, #2
	add r3, sp, #0
_02015B68:
	add r0, r5, r2
	str r0, [r3, #0xc]
	add r1, r1, #1
	add r2, r2, #2
	add r3, r3, #4
	cmp r1, #4
	blt _02015B68
	add r0, r7, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r2, r7, #0
	add r2, #0x84
	add r1, r0, r6
	add r0, sp, #0x20
	strb r1, [r0, #0xd]
	ldr r0, [sp, #0x20]
	add r1, sp, #0
	add r0, r0, r5
	str r0, [sp, #0x20]
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_02015C38
	add r5, r5, #1
	add r6, r6, #5
	add r4, #0x38
	cmp r5, #2
	blt _02015B62
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015B14

	thumb_func_start sub_02015BA4
sub_02015BA4: ; 0x02015BA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	add r2, r4, #0
_02015BB0:
	add r3, r4, #0
	add r3, #0x99
	ldrb r3, [r3]
	add r0, r0, #1
	lsl r3, r3, #3
	add r3, r3, r1
	strb r3, [r2, #4]
	add r3, r4, #0
	add r3, #0x99
	ldrb r3, [r3]
	lsl r3, r3, #3
	add r3, r3, r1
	add r3, #0x20
	strb r3, [r2, #5]
	add r3, r4, #0
	add r3, #0x98
	ldrb r3, [r3]
	add r1, #0x28
	lsl r3, r3, #3
	strb r3, [r2, #6]
	add r3, r4, #0
	add r3, #0x98
	ldrb r3, [r3]
	lsl r3, r3, #3
	add r3, #0x30
	strb r3, [r2, #7]
	add r2, r2, #4
	cmp r0, #2
	blt _02015BB0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	ldr r2, _02015C04 ; =sub_02015C08
	str r0, [sp]
	add r0, r4, #4
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02015C04: .word sub_02015C08
	thumb_func_end sub_02015BA4

	thumb_func_start sub_02015C08
sub_02015C08: ; 0x02015C08
	push {r4, lr}
	add r3, r2, #0
	add r3, #0x9b
	ldrb r3, [r3]
	mov r4, #0xf0
	bic r3, r4
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x18
	orr r4, r3
	add r3, r2, #0
	add r3, #0x9b
	strb r4, [r3]
	cmp r1, #0
	bne _02015C32
	add r2, #0x9a
	strb r0, [r2]
	ldr r0, _02015C34 ; =0x000005E4
	bl sub_02005748
_02015C32:
	pop {r4, pc}
	; .align 2, 0
_02015C34: .word 0x000005E4
	thumb_func_end sub_02015C08

	thumb_func_start sub_02015C38
sub_02015C38: ; 0x02015C38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	add r0, #0x28
	bl sub_02015D8C
	ldr r1, [r5, #0]
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	str r1, [r0, #0]
	ldr r1, [r5, #4]
	ldr r4, [sp, #4]
	str r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x2c
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	add r6, #0x18
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	add r7, r5, #0
	add r0, #0x35
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #0xc]
_02015C7A:
	ldr r0, [sp, #8]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, [r7, #0xc]
	add r3, r6, #0
	bl sub_02006F6C
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	bl sub_02015F34
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x20]
	bl sub_02015F54
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	add r7, r7, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02015C7A
	ldr r0, [sp, #4]
	bl sub_02015D60
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x36
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02015C38

	thumb_func_start sub_02015CC0
sub_02015CC0: ; 0x02015CC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x28
	bl sub_02015DA0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, r4
	beq _02015CE2
	add r0, r5, #0
	bl sub_02015D60
	add r0, r5, #0
	add r0, #0x36
	strb r4, [r0]
_02015CE2:
	ldr r0, [r5, #0x2c]
	sub r0, r0, #1
	cmp r4, r0
	bne _02015CEE
	mov r0, #1
	pop {r3, r4, r5, pc}
_02015CEE:
	add r5, #0x28
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02015D98
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015CC0

	thumb_func_start sub_02015D00
sub_02015D00: ; 0x02015D00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, #0x35
	ldrb r0, [r0]
	ldr r1, [r6, #0x18]
	add r3, r6, #0
	str r0, [sp]
	ldrh r0, [r1]
	mov r2, #0
	add r3, #0x34
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r6, #4]
	ldrb r3, [r3]
	lsl r1, r1, #0x18
	ldr r0, [r6, #0]
	lsr r1, r1, #0x18
	bl sub_02019CB8
	ldr r1, [r6, #4]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	mov r4, #0
	add r5, r6, #0
_02015D44:
	ldr r0, [r5, #8]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02015D44
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x38
	bl memset
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015D00

	thumb_func_start sub_02015D60
sub_02015D60: ; 0x02015D60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x28
	bl sub_02015DA0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	lsl r2, r2, #2
	add r2, r4, r2
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r4, #0x34
	ldrb r3, [r4]
	ldr r2, [r2, #0x18]
	bl sub_02015EE8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02015D60

	thumb_func_start sub_02015D8C
sub_02015D8C: ; 0x02015D8C
	str r1, [r0, #0]
	str r2, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015D8C

	thumb_func_start sub_02015D98
sub_02015D98: ; 0x02015D98
	ldr r2, [r0, #8]
	add r1, r2, r1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02015D98

	thumb_func_start sub_02015DA0
sub_02015DA0: ; 0x02015DA0
	push {r4, r5}
	ldr r5, [r0, #4]
	mov r2, #0
	cmp r5, #0
	bls _02015DC4
	ldr r3, [r0, #0]
	ldr r4, [r0, #8]
_02015DAE:
	ldr r1, [r3, #0]
	cmp r1, r4
	blt _02015DBA
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02015DBA:
	ldr r1, [r0, #4]
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r1
	blo _02015DAE
_02015DC4:
	sub r0, r5, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02015DA0

	thumb_func_start sub_02015DCC
sub_02015DCC: ; 0x02015DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02015DE8:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02015DE8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #1
	add r3, r4, #4
	bl sub_02006F50
	str r0, [r4, #8]
	str r5, [r4, #0]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02015E18 ; =sub_02015E64
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015E18: .word sub_02015E64
	thumb_func_end sub_02015DCC

	thumb_func_start sub_02015E1C
sub_02015E1C: ; 0x02015E1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02015E36:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02015E36
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02006F88
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02015E60 ; =sub_02015EA0
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02015E60: .word sub_02015EA0
	thumb_func_end sub_02015E1C

	thumb_func_start sub_02015E64
sub_02015E64: ; 0x02015E64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201958C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02015E64

	thumb_func_start sub_02015EA0
sub_02015EA0: ; 0x02015EA0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02015EC4
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GX_LoadBGPltt
	b _02015ED4
_02015EC4:
	cmp r0, #4
	bne _02015ED4
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GXS_LoadBGPltt
_02015ED4:
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015EA0

	thumb_func_start sub_02015EE8
sub_02015EE8: ; 0x02015EE8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldrh r6, [r1]
	ldrh r3, [r1, #2]
	lsl r2, r2, #0x18
	lsl r6, r6, #0x15
	lsr r6, r6, #0x18
	lsl r3, r3, #0x15
	str r6, [sp]
	lsr r3, r3, #0x18
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r1, r4, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	add r5, r0, #0
	bl sub_020198E8
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02015EE8

	thumb_func_start sub_02015F34
sub_02015F34: ; 0x02015F34
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02015F50
_02015F42:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02015F42
_02015F50:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02015F34

	thumb_func_start sub_02015F54
sub_02015F54: ; 0x02015F54
	push {r4, r5}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r3, r2, #1
	mov r2, #0
	cmp r3, #0
	ble _02015F7A
	ldr r4, _02015F80 ; =0x00000FFF
	lsl r1, r1, #0xc
_02015F66:
	ldrh r5, [r0]
	add r2, r2, #1
	and r5, r4
	strh r5, [r0]
	ldrh r5, [r0]
	orr r5, r1
	strh r5, [r0]
	add r0, r0, #2
	cmp r2, r3
	blt _02015F66
_02015F7A:
	pop {r4, r5}
	bx lr
	nop
_02015F80: .word 0x00000FFF
	thumb_func_end sub_02015F54