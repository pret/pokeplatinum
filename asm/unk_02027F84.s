	.include "macros/function.inc"
	.include "include/unk_02027F84.inc"

	

	.text


	thumb_func_start sub_02027F84
sub_02027F84: ; 0x02027F84
	mov r0, #0x22
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027F84

	thumb_func_start sub_02027F8C
sub_02027F8C: ; 0x02027F8C
	ldr r3, _02027F94 ; =sub_020245BC
	mov r1, #9
	bx r3
	nop
_02027F94: .word sub_020245BC
	thumb_func_end sub_02027F8C

	thumb_func_start sub_02027F98
sub_02027F98: ; 0x02027F98
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02027FB8 ; =0x0000FFFF
	add r5, r0, #0
	add r7, r4, #0
_02027FA2:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x88
	bl sub_020D5124
	strh r6, [r5]
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	blt _02027FA2
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02027FB8: .word 0x0000FFFF
	thumb_func_end sub_02027F98

	thumb_func_start sub_02027FBC
sub_02027FBC: ; 0x02027FBC
	mov r2, #0x88
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_02027FBC

	thumb_func_start sub_02027FC4
sub_02027FC4: ; 0x02027FC4
	add r0, r0, r1
	add r0, #0x68
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_02027FC4

	thumb_func_start sub_02027FCC
sub_02027FCC: ; 0x02027FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200220C
	cmp r0, #0
	bne _02027FE6
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _02027FE6
	mov r0, #1
	pop {r3, r4, r5, pc}
_02027FE6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02027FCC

	thumb_func_start sub_02027FEC
sub_02027FEC: ; 0x02027FEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #4]
	mov r1, #0x22
	str r0, [sp]
	add r0, r3, #0
	lsl r1, r1, #6
	str r2, [sp, #8]
	bl sub_02018144
	str r0, [sp, #0x10]
	bl sub_02027F98
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02028044
	ldr r7, [sp, #4]
	add r6, sp, #0x18
_02028014:
	mov r0, #0
	mvn r0, r0
	ldr r5, [sp]
	str r0, [r6, #0]
	mov r4, #0
_0202801E:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02027FCC
	cmp r0, #0
	beq _0202802C
	str r4, [r6, #0]
_0202802C:
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	blt _0202801E
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r7, #0x88
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02028014
_02028044:
	ldr r0, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	cmp r0, #0
	ble _0202808A
	ldr r5, [sp, #0x10]
	add r6, sp, #0x18
_02028052:
	ldr r3, [sp, #4]
	add r7, r5, #0
	mov r2, #0x11
_02028058:
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _02028058
	ldr r1, [r6, #0]
	cmp r1, #0
	blt _02028072
	add r2, r1, #0
	mov r0, #0x88
	mul r2, r0
	ldr r1, _020280DC ; =0x0000FFFF
	ldr r0, [sp]
	strh r1, [r0, r2]
_02028072:
	ldr r0, [sp, #4]
	add r5, #0x88
	add r0, #0x88
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r6, r6, #4
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _02028052
_0202808A:
	mov r0, #0
	mov ip, r0
	mov r0, #0x88
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	ldr r3, [sp]
	add r5, r0, r1
_0202809A:
	ldrh r1, [r3]
	ldr r0, _020280DC ; =0x0000FFFF
	cmp r1, r0
	beq _020280B8
	add r6, r3, #0
	add r7, r5, #0
	mov r2, #0x11
_020280A8:
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _020280A8
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	bge _020280C4
_020280B8:
	mov r0, ip
	add r0, r0, #1
	add r3, #0x88
	mov ip, r0
	cmp r0, #0x10
	blt _0202809A
_020280C4:
	mov r2, #0x22
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	lsl r2, r2, #6
	bl sub_020D50B8
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_020280DC: .word 0x0000FFFF
	thumb_func_end sub_02027FEC

	thumb_func_start sub_020280E0
sub_020280E0: ; 0x020280E0
	push {r3, r4, r5, r6}
	mov r3, #0
	add r4, r0, #0
_020280E6:
	ldr r2, [r4, #0x10]
	cmp r1, r2
	bne _020280F2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_020280F2:
	add r3, r3, #1
	add r4, #0x88
	cmp r3, #0x10
	blt _020280E6
	mov r6, #0
	add r3, r6, #0
_020280FE:
	add r4, r3, #0
	add r5, r0, #0
_02028102:
	ldr r2, [r5, #0x18]
	cmp r1, r2
	bne _0202810E
	add r0, r6, #2
	pop {r3, r4, r5, r6}
	bx lr
_0202810E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02028102
	add r6, r6, #1
	add r0, #0x88
	cmp r6, #0x10
	blt _020280FE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_020280E0