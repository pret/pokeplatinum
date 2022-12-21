	.include "macros/function.inc"
	.include "include/unk_02079FEC.inc"

	

	.text


	thumb_func_start sub_02079FEC
sub_02079FEC: ; 0x02079FEC
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02079FEC

	thumb_func_start sub_02079FF4
sub_02079FF4: ; 0x02079FF4
	push {r4, lr}
	mov r1, #0x59
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	bl sub_0207A008
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02079FF4

	thumb_func_start sub_0207A008
sub_0207A008: ; 0x0207A008
	ldr r3, _0207A010 ; =sub_0207A014
	mov r1, #6
	bx r3
	nop
_0207A010: .word sub_0207A014
	thumb_func_end sub_0207A008

	thumb_func_start sub_0207A014
sub_0207A014: ; 0x0207A014
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #6
	ble _0207A022
	bl sub_02022974
_0207A022:
	mov r2, #0x59
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	mov r4, #0
	str r4, [r5, #4]
	str r6, [r5, #0]
	add r5, #8
_0207A036:
	add r0, r5, #0
	bl sub_02073C2C
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0207A036
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207A014

	thumb_func_start sub_0207A048
sub_0207A048: ; 0x0207A048
	push {r4, r5}
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #4]
	ldr r0, [r3, #0]
	cmp r1, r0
	blt _0207A05C
	mov r0, #0
	pop {r4, r5}
	bx lr
_0207A05C:
	mov r0, #0xec
	mul r0, r1
	add r5, r3, r0
	add r5, #8
	mov r4, #0x1d
_0207A066:
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r4, r4, #1
	bne _0207A066
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	ldr r0, [r3, #4]
	add r0, r0, #1
	str r0, [r3, #4]
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A048

	thumb_func_start sub_0207A080
sub_0207A080: ; 0x0207A080
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	bpl _0207A08C
	bl sub_02022974
_0207A08C:
	ldr r0, [r7, #4]
	cmp r4, r0
	blt _0207A096
	bl sub_02022974
_0207A096:
	ldr r0, [r7, #0]
	cmp r4, r0
	blt _0207A0A0
	bl sub_02022974
_0207A0A0:
	ldr r0, [r7, #4]
	cmp r0, #0
	bgt _0207A0AA
	bl sub_02022974
_0207A0AA:
	ldr r0, [r7, #4]
	sub r0, r0, #1
	cmp r4, r0
	bge _0207A0DA
	mov r0, #0xec
	mul r0, r4
	add r6, r7, r0
_0207A0B8:
	add r5, r6, #0
	add r3, r6, #0
	add r5, #0xf4
	add r3, #8
	mov r2, #0x1d
_0207A0C2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207A0C2
	ldr r0, [r5, #0]
	add r4, r4, #1
	str r0, [r3, #0]
	ldr r0, [r7, #4]
	add r6, #0xec
	sub r0, r0, #1
	cmp r4, r0
	blt _0207A0B8
_0207A0DA:
	add r1, r7, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	bl sub_02073C2C
	ldr r0, [r7, #4]
	sub r0, r0, #1
	str r0, [r7, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A080

	thumb_func_start sub_0207A0F4
sub_0207A0F4: ; 0x0207A0F4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0207A0F4

	thumb_func_start sub_0207A0F8
sub_0207A0F8: ; 0x0207A0F8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0207A0F8

	thumb_func_start sub_0207A0FC
sub_0207A0FC: ; 0x0207A0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207A108
	bl sub_02022974
_0207A108:
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0207A112
	bl sub_02022974
_0207A112:
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _0207A11C
	bl sub_02022974
_0207A11C:
	mov r0, #0xec
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207A0FC

	thumb_func_start sub_0207A128
sub_0207A128: ; 0x0207A128
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bge _0207A138
	bl sub_02022974
_0207A138:
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0207A142
	bl sub_02022974
_0207A142:
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _0207A14C
	bl sub_02022974
_0207A14C:
	add r1, r5, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r4
	add r4, r1, r0
	add r0, r4, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074470
	sub r2, r7, r0
	mov r3, #0x1d
_0207A170:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0207A170
	ldr r0, [r6, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r0, r0, r2
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A128

	thumb_func_start sub_0207A184
sub_0207A184: ; 0x0207A184
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	cmp r5, #0
	bge _0207A194
	bl sub_02022974
_0207A194:
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _0207A19E
	bl sub_02022974
_0207A19E:
	ldr r0, [r4, #0]
	cmp r5, r0
	blt _0207A1A8
	bl sub_02022974
_0207A1A8:
	cmp r6, #0
	bge _0207A1B0
	bl sub_02022974
_0207A1B0:
	ldr r0, [r4, #4]
	cmp r6, r0
	blt _0207A1BA
	bl sub_02022974
_0207A1BA:
	ldr r0, [r4, #0]
	cmp r6, r0
	blt _0207A1C4
	bl sub_02022974
_0207A1C4:
	mov r0, #0
	mov r1, #0xec
	bl sub_02018144
	mov ip, r0
	add r1, r4, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r5
	add r3, r1, r0
	add r5, r3, #0
	mov r2, ip
	mov r7, #0x1d
_0207A1DE:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0207A1DE
	ldr r0, [r5, #0]
	add r4, #8
	str r0, [r2, #0]
	mov r0, #0xec
	mul r0, r6
	add r2, r4, r0
	add r5, r2, #0
	mov r4, #0x1d
_0207A1F6:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r4, r4, #1
	bne _0207A1F6
	ldr r0, [r5, #0]
	mov r4, ip
	str r0, [r3, #0]
	mov r3, #0x1d
_0207A206:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _0207A206
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, ip
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A184

	thumb_func_start sub_0207A21C
sub_0207A21C: ; 0x0207A21C
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0xb2
_0207A224:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207A224
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207A21C

	thumb_func_start sub_0207A230
sub_0207A230: ; 0x0207A230
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0207A25A
	add r5, r6, #0
	add r5, #8
_0207A242:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	beq _0207A25A
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xec
	cmp r4, r0
	blt _0207A242
_0207A25A:
	ldr r0, [r6, #4]
	cmp r4, r0
	beq _0207A264
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A264:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A230

	thumb_func_start sub_0207A268
sub_0207A268: ; 0x0207A268
	ldr r3, _0207A270 ; =sub_020245BC
	mov r1, #2
	bx r3
	nop
_0207A270: .word sub_020245BC
	thumb_func_end sub_0207A268