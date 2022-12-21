	.include "macros/function.inc"
	.include "include/unk_0202602C.inc"

	

	.text


	thumb_func_start sub_0202602C
sub_0202602C: ; 0x0202602C
	mov r0, #0x20
	bx lr
	thumb_func_end sub_0202602C

	thumb_func_start sub_02026030
sub_02026030: ; 0x02026030
	mov r0, #0x20
	bx lr
	thumb_func_end sub_02026030

	thumb_func_start sub_02026034
sub_02026034: ; 0x02026034
	ldr r3, _0202603C ; =sub_020C4DB0
	mov r2, #0x20
	bx r3
	nop
_0202603C: .word sub_020C4DB0
	thumb_func_end sub_02026034

	thumb_func_start sub_02026040
sub_02026040: ; 0x02026040
	ldr r3, _02026048 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x20
	bx r3
	; .align 2, 0
_02026048: .word sub_020D5124
	thumb_func_end sub_02026040

	thumb_func_start sub_0202604C
sub_0202604C: ; 0x0202604C
	ldr r3, _02026058 ; =sub_02023D8C
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xc
	bx r3
	; .align 2, 0
_02026058: .word sub_02023D8C
	thumb_func_end sub_0202604C

	thumb_func_start sub_0202605C
sub_0202605C: ; 0x0202605C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	bl sub_02023790
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02023D28
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202605C

	thumb_func_start sub_02026074
sub_02026074: ; 0x02026074
	mov r2, #0
	cmp r1, #0xc
	bhi _02026106
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02026086: ; jump table
	.short _02026106 - _02026086 - 2 ; case 0
	.short _020260A0 - _02026086 - 2 ; case 1
	.short _020260A4 - _02026086 - 2 ; case 2
	.short _020260A8 - _02026086 - 2 ; case 3
	.short _020260AC - _02026086 - 2 ; case 4
	.short _020260B4 - _02026086 - 2 ; case 5
	.short _020260BA - _02026086 - 2 ; case 6
	.short _020260CE - _02026086 - 2 ; case 7
	.short _020260D4 - _02026086 - 2 ; case 8
	.short _020260E8 - _02026086 - 2 ; case 9
	.short _020260F0 - _02026086 - 2 ; case 10
	.short _020260F8 - _02026086 - 2 ; case 11
	.short _02026100 - _02026086 - 2 ; case 12
_020260A0:
	ldrb r2, [r0, #0x1a]
	b _02026106
_020260A4:
	ldrb r2, [r0, #0x1b]
	b _02026106
_020260A8:
	ldrh r2, [r0, #0x18]
	b _02026106
_020260AC:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1f
	b _02026106
_020260B4:
	mov r1, #0x1c
	ldrsb r2, [r0, r1]
	b _02026106
_020260BA:
	mov r1, #0x1c
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _020260C6
	mov r2, #1
	b _02026106
_020260C6:
	bge _02026106
	add r2, r1, #0
	sub r2, #0x1d
	b _02026106
_020260CE:
	mov r1, #0x1d
	ldrsb r2, [r0, r1]
	b _02026106
_020260D4:
	mov r1, #0x1d
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _020260E0
	mov r2, #1
	b _02026106
_020260E0:
	bge _02026106
	add r2, r1, #0
	sub r2, #0x1e
	b _02026106
_020260E8:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1f
	b _02026106
_020260F0:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1d
	lsr r2, r0, #0x1f
	b _02026106
_020260F8:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1e
	lsr r2, r0, #0x1f
	b _02026106
_02026100:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1f
_02026106:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026074

	thumb_func_start sub_0202610C
sub_0202610C: ; 0x0202610C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #1
	blt _0202611A
	bl sub_02022974
_0202611A:
	add r0, r4, #0
	mov r1, #0xd
	bl sub_020245BC
	add r4, r0, #0
	lsl r5, r5, #5
	add r0, r4, r5
	mov r1, #1
	bl sub_02026074
	cmp r0, #0
	beq _02026136
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_02026136:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202610C

	thumb_func_start sub_0202613C
sub_0202613C: ; 0x0202613C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0xd
	bl sub_020245BC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02026034
	pop {r4, pc}
	thumb_func_end sub_0202613C