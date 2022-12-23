	.include "macros/function.inc"
	.include "overlay061/ov61_0222BC4C.inc"

	

	.text


	thumb_func_start ov61_0222BC4C
ov61_0222BC4C: ; 0x0222BC4C
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #5
	bhi _0222BC6E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BC60: ; jump table
	.short _0222BC6C - _0222BC60 - 2 ; case 0
	.short _0222BC6E - _0222BC60 - 2 ; case 1
	.short _0222BC6E - _0222BC60 - 2 ; case 2
	.short _0222BC6E - _0222BC60 - 2 ; case 3
	.short _0222BC6E - _0222BC60 - 2 ; case 4
	.short _0222BC6E - _0222BC60 - 2 ; case 5
_0222BC6C:
	mov r0, #1
_0222BC6E:
	bx lr
	thumb_func_end ov61_0222BC4C

	thumb_func_start ov61_0222BC70
ov61_0222BC70: ; 0x0222BC70
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BC8E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BC84: ; jump table
	.short _0222BC8C - _0222BC84 - 2 ; case 0
	.short _0222BC8E - _0222BC84 - 2 ; case 1
	.short _0222BC8E - _0222BC84 - 2 ; case 2
	.short _0222BC8E - _0222BC84 - 2 ; case 3
_0222BC8C:
	mov r0, #1
_0222BC8E:
	bx lr
	thumb_func_end ov61_0222BC70

	thumb_func_start ov61_0222BC90
ov61_0222BC90: ; 0x0222BC90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	blx ov61_0222DE80
	add r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, r4
	ble _0222BCA4
	add r0, r4, #0
_0222BCA4:
	add r3, r1, #4
	mov r2, #0
	cmp r0, #0
	ble _0222BCBC
	add r6, r5, #0
_0222BCAE:
	add r1, r3, #0
	add r1, #0xc
	add r2, r2, #1
	stmia r6!, {r1}
	add r3, #0xec
	cmp r2, r0
	blt _0222BCAE
_0222BCBC:
	cmp r2, r4
	bge _0222BCCE
	lsl r1, r2, #2
	add r3, r5, r1
	mov r1, #0
_0222BCC6:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, r4
	blt _0222BCC6
_0222BCCE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BC90

	thumb_func_start ov61_0222BCD0
ov61_0222BCD0: ; 0x0222BCD0
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #6
	bhi _0222BCF4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BCE4: ; jump table
	.short _0222BCF2 - _0222BCE4 - 2 ; case 0
	.short _0222BCF4 - _0222BCE4 - 2 ; case 1
	.short _0222BCF4 - _0222BCE4 - 2 ; case 2
	.short _0222BCF4 - _0222BCE4 - 2 ; case 3
	.short _0222BCF4 - _0222BCE4 - 2 ; case 4
	.short _0222BCF4 - _0222BCE4 - 2 ; case 5
	.short _0222BCF4 - _0222BCE4 - 2 ; case 6
_0222BCF2:
	mov r0, #1
_0222BCF4:
	bx lr
	; .align 2, 0
	thumb_func_end ov61_0222BCD0

	thumb_func_start ov61_0222BCF8
ov61_0222BCF8: ; 0x0222BCF8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BD16
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BD0C: ; jump table
	.short _0222BD14 - _0222BD0C - 2 ; case 0
	.short _0222BD16 - _0222BD0C - 2 ; case 1
	.short _0222BD16 - _0222BD0C - 2 ; case 2
	.short _0222BD16 - _0222BD0C - 2 ; case 3
_0222BD14:
	mov r0, #1
_0222BD16:
	bx lr
	thumb_func_end ov61_0222BCF8

	thumb_func_start ov61_0222BD18
ov61_0222BD18: ; 0x0222BD18
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	blx ov61_0222DE80
	ldr r4, [r0, #4]
	add r7, r0, #4
	cmp r4, r5
	ble _0222BD30
	add r4, r5, #0
	bl GF_AssertFail
_0222BD30:
	add r3, r7, #4
	mov r2, #0
	cmp r4, #0
	ble _0222BD4C
	mov r0, #0x8b
	add r7, r6, #0
	lsl r0, r0, #2
_0222BD3E:
	add r1, r3, #0
	add r1, #0x10
	add r2, r2, #1
	stmia r7!, {r1}
	add r3, r3, r0
	cmp r2, r4
	blt _0222BD3E
_0222BD4C:
	cmp r2, r5
	bge _0222BD5E
	lsl r0, r2, #2
	add r1, r6, r0
	mov r0, #0
_0222BD56:
	add r2, r2, #1
	stmia r1!, {r0}
	cmp r2, r5
	blt _0222BD56
_0222BD5E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BD18

	thumb_func_start ov61_0222BD64
ov61_0222BD64: ; 0x0222BD64
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #0
	beq _0222BD74
	cmp r1, #1
	beq _0222BD76
	cmp r1, #2
	bx lr
_0222BD74:
	mov r0, #1
_0222BD76:
	bx lr
	thumb_func_end ov61_0222BD64

	thumb_func_start ov61_0222BD78
ov61_0222BD78: ; 0x0222BD78
	push {r4, lr}
	add r4, r1, #0
	blx ov61_0222DE80
	add r0, r0, #4
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BD78

	thumb_func_start ov61_0222BD88
ov61_0222BD88: ; 0x0222BD88
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #5
	bhi _0222BDAA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BD9C: ; jump table
	.short _0222BDA8 - _0222BD9C - 2 ; case 0
	.short _0222BDAA - _0222BD9C - 2 ; case 1
	.short _0222BDAA - _0222BD9C - 2 ; case 2
	.short _0222BDAA - _0222BD9C - 2 ; case 3
	.short _0222BDAA - _0222BD9C - 2 ; case 4
	.short _0222BDAA - _0222BD9C - 2 ; case 5
_0222BDA8:
	mov r0, #1
_0222BDAA:
	bx lr
	thumb_func_end ov61_0222BD88

	thumb_func_start ov61_0222BDAC
ov61_0222BDAC: ; 0x0222BDAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	blx ov61_0222DE80
	add r1, r0, #4
	ldr r0, _0222BDC4 ; =0x00000558
	str r1, [r5, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_0222BDC4: .word 0x00000558
	thumb_func_end ov61_0222BDAC

	thumb_func_start ov61_0222BDC8
ov61_0222BDC8: ; 0x0222BDC8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #7
	bhi _0222BDEE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BDDC: ; jump table
	.short _0222BDEC - _0222BDDC - 2 ; case 0
	.short _0222BDEE - _0222BDDC - 2 ; case 1
	.short _0222BDEE - _0222BDDC - 2 ; case 2
	.short _0222BDEE - _0222BDDC - 2 ; case 3
	.short _0222BDEE - _0222BDDC - 2 ; case 4
	.short _0222BDEE - _0222BDDC - 2 ; case 5
	.short _0222BDEE - _0222BDDC - 2 ; case 6
	.short _0222BDEE - _0222BDDC - 2 ; case 7
_0222BDEC:
	mov r0, #1
_0222BDEE:
	bx lr
	thumb_func_end ov61_0222BDC8

	thumb_func_start ov61_0222BDF0
ov61_0222BDF0: ; 0x0222BDF0
	push {r3, lr}
	blx ov61_0222DE80
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r2, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BDF0

	thumb_func_start ov61_0222BE00
ov61_0222BE00: ; 0x0222BE00
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BE1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BE14: ; jump table
	.short _0222BE1C - _0222BE14 - 2 ; case 0
	.short _0222BE1E - _0222BE14 - 2 ; case 1
	.short _0222BE1E - _0222BE14 - 2 ; case 2
	.short _0222BE1E - _0222BE14 - 2 ; case 3
_0222BE1C:
	mov r0, #1
_0222BE1E:
	bx lr
	thumb_func_end ov61_0222BE00

	thumb_func_start ov61_0222BE20
ov61_0222BE20: ; 0x0222BE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	blx ov61_0222DE80
	ldr r1, [r0, #4]
	add r4, r0, #4
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	ble _0222BE40
	str r0, [sp, #0xc]
	bl GF_AssertFail
_0222BE40:
	ldr r0, [sp, #0xc]
	add r5, r4, #4
	mov r6, #0
	cmp r0, #0
	ble _0222BE9A
	ldr r4, [sp, #4]
_0222BE4C:
	add r2, r5, #0
	add r2, #0xc
	add r3, r2, #0
	str r2, [r4, #0]
	add r3, #0xd8
	ldr r3, [r3, #0]
	ldr r0, [r5, #8]
	mov ip, r3
	add r3, r2, #0
	add r3, #0xdc
	ldr r3, [r3, #0]
	add r7, r0, #0
	eor r7, r3
	ldr r1, [r5, #4]
	mov r3, ip
	eor r3, r1
	orr r3, r7
	beq _0222BE8E
	add r3, r2, #0
	add r3, #0xd8
	str r1, [r3, #0]
	add r2, #0xdc
	str r0, [r2, #0]
	ldr r0, [sp]
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r1, #0x80
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, [r4, #0]
	add r1, #0xe0
	strh r0, [r1]
_0222BE8E:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r5, #0xf0
	add r4, r4, #4
	cmp r6, r0
	blt _0222BE4C
_0222BE9A:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _0222BEB2
	ldr r0, [sp, #4]
	lsl r1, r6, #2
	add r2, r0, r1
	mov r1, #0
_0222BEA8:
	ldr r0, [sp, #8]
	add r6, r6, #1
	stmia r2!, {r1}
	cmp r6, r0
	blt _0222BEA8
_0222BEB2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov61_0222BE20

	thumb_func_start ov61_0222BEB8
ov61_0222BEB8: ; 0x0222BEB8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BED6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BECC: ; jump table
	.short _0222BED4 - _0222BECC - 2 ; case 0
	.short _0222BED6 - _0222BECC - 2 ; case 1
	.short _0222BED6 - _0222BECC - 2 ; case 2
	.short _0222BED6 - _0222BECC - 2 ; case 3
_0222BED4:
	mov r0, #1
_0222BED6:
	bx lr
	thumb_func_end ov61_0222BEB8

	thumb_func_start ov61_0222BED8
ov61_0222BED8: ; 0x0222BED8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	blx ov61_0222DE80
	add r4, r0, #0
	add r0, r4, #4
	add r0, #0xc
	str r0, [r5, #0]
	add r0, r4, #4
	add r0, #0xe4
	ldr r1, [r0, #0]
	add r0, r4, #4
	add r0, #0xe8
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0]
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _0222BF20
	add r0, r4, #4
	add r0, #0xe4
	str r3, [r0, #0]
	add r0, r4, #4
	add r0, #0xe8
	str r2, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	add r1, #0x80
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, [r5, #0]
	add r1, #0xe0
	strh r0, [r1]
_0222BF20:
	ldr r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BED8

	thumb_func_start ov61_0222BF24
ov61_0222BF24: ; 0x0222BF24
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BF42
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BF38: ; jump table
	.short _0222BF40 - _0222BF38 - 2 ; case 0
	.short _0222BF42 - _0222BF38 - 2 ; case 1
	.short _0222BF42 - _0222BF38 - 2 ; case 2
	.short _0222BF42 - _0222BF38 - 2 ; case 3
_0222BF40:
	mov r0, #1
_0222BF42:
	bx lr
	thumb_func_end ov61_0222BF24