	.include "macros/function.inc"
	.include "include/unk_020261E4.inc"

	

	.text


	thumb_func_start sub_020261E4
sub_020261E4: ; 0x020261E4
	mov r0, #0x1e
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020261E4

	thumb_func_start sub_020261EC
sub_020261EC: ; 0x020261EC
	push {r4, lr}
	mov r2, #0x1e
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	add r0, r4, #0
	bl sub_02073C54
	add r0, r4, #0
	add r0, #0xec
	bl sub_02073C54
	mov r0, #0x76
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020261EC

	thumb_func_start sub_02026218
sub_02026218: ; 0x02026218
	mov r2, #0xec
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_02026218

	thumb_func_start sub_02026220
sub_02026220: ; 0x02026220
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026220

	thumb_func_start sub_02026224
sub_02026224: ; 0x02026224
	add r0, #0x88
	bx lr
	thumb_func_end sub_02026224

	thumb_func_start sub_02026228
sub_02026228: ; 0x02026228
	add r0, #0xe8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026228

	thumb_func_start sub_02026230
sub_02026230: ; 0x02026230
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026230

	thumb_func_start sub_02026234
sub_02026234: ; 0x02026234
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02026242
	mov r0, #1
	bx lr
_02026242:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026234

	thumb_func_start sub_02026248
sub_02026248: ; 0x02026248
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02026248

	thumb_func_start sub_02026250
sub_02026250: ; 0x02026250
	mov r1, #0x77
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end sub_02026250

	thumb_func_start sub_02026258
sub_02026258: ; 0x02026258
	add r0, #0xe8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026258

	thumb_func_start sub_02026260
sub_02026260: ; 0x02026260
	add r2, r0, #0
	add r2, #0xe8
	ldr r2, [r2, #0]
	add r0, #0xe8
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026260

	thumb_func_start sub_02026270
sub_02026270: ; 0x02026270
	mov r2, #0x76
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02026270

	thumb_func_start sub_02026278
sub_02026278: ; 0x02026278
	mov r2, #0x77
	lsl r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end sub_02026278

	thumb_func_start sub_02026280
sub_02026280: ; 0x02026280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074570
	add r5, #0xec
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074570
	cmp r4, r0
	beq _020262A2
	mov r0, #1
	pop {r3, r4, r5, pc}
_020262A2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02026280

	thumb_func_start sub_020262A8
sub_020262A8: ; 0x020262A8
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x1d
_020262B0:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020262B0
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020262A8

	thumb_func_start sub_020262C0
sub_020262C0: ; 0x020262C0
	push {r3, r4}
	mov r1, #0
	add r2, r0, #0
	add r4, r1, #0
_020262C8:
	add r1, r1, #1
	strh r4, [r2, #0x38]
	add r2, r2, #2
	cmp r1, #8
	blt _020262C8
	add r3, r0, #0
	mov r2, #0
_020262D6:
	add r1, r3, #0
	add r1, #0x48
	add r4, r4, #1
	add r3, r3, #2
	strh r2, [r1]
	cmp r4, #0xb
	blt _020262D6
	ldr r1, _020262F0 ; =0x0000FFFF
	strh r1, [r0, #0x38]
	add r0, #0x48
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020262F0: .word 0x0000FFFF
	thumb_func_end sub_020262C0

	thumb_func_start sub_020262F4
sub_020262F4: ; 0x020262F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02073C54
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	add r4, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020262C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020262F4

	thumb_func_start sub_02026310
sub_02026310: ; 0x02026310
	ldr r3, _02026318 ; =sub_020245BC
	mov r1, #8
	bx r3
	nop
_02026318: .word sub_020245BC
	thumb_func_end sub_02026310