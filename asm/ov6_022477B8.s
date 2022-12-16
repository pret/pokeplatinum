	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_022477B8
ov6_022477B8: ; 0x022477B8
	cmp r1, #0
	beq _0224782A
	ldr r1, _0224782C ; =0x021BF6DC
	ldrb r1, [r1, #6]
	cmp r1, #5
	bhi _0224782A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022477D0: ; jump table
	.short _0224782A - _022477D0 - 2 ; case 0
	.short _022477DC - _022477D0 - 2 ; case 1
	.short _022477EC - _022477D0 - 2 ; case 2
	.short _022477FC - _022477D0 - 2 ; case 3
	.short _0224780C - _022477D0 - 2 ; case 4
	.short _0224781C - _022477D0 - 2 ; case 5
_022477DC:
	add r1, r0, #0
	add r1, #0xac
	ldr r1, [r1, #0]
	add r0, #0xb0
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_022477EC:
	add r1, r0, #0
	add r1, #0xa4
	ldr r1, [r1, #0]
	add r0, #0xa8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_022477FC:
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, #0xb8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_0224780C:
	add r1, r0, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	add r0, #0xc0
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	bx lr
_0224781C:
	add r1, r0, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, #0xc8
	str r1, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
_0224782A:
	bx lr
	; .align 2, 0
_0224782C: .word 0x021BF6DC
	thumb_func_end ov6_022477B8