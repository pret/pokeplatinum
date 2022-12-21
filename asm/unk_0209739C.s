	.include "macros/function.inc"
	.include "include/unk_0209739C.inc"

	

	.text


	thumb_func_start sub_0209739C
sub_0209739C: ; 0x0209739C
	ldr r3, _020973A4 ; =sub_02006C24
	add r1, r0, #0
	mov r0, #0x44
	bx r3
	; .align 2, 0
_020973A4: .word sub_02006C24
	thumb_func_end sub_0209739C

	thumb_func_start sub_020973A8
sub_020973A8: ; 0x020973A8
	ldr r3, _020973AC ; =sub_02006CB8
	bx r3
	; .align 2, 0
_020973AC: .word sub_02006CB8
	thumb_func_end sub_020973A8

	thumb_func_start sub_020973B0
sub_020973B0: ; 0x020973B0
	ldr r3, _020973B4 ; =sub_02006CA8
	bx r3
	; .align 2, 0
_020973B4: .word sub_02006CA8
	thumb_func_end sub_020973B0

	thumb_func_start sub_020973B8
sub_020973B8: ; 0x020973B8
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _020973C4 ; =sub_02006AC0
	mov r0, #0x44
	bx r3
	; .align 2, 0
_020973C4: .word sub_02006AC0
	thumb_func_end sub_020973B8

	thumb_func_start sub_020973C8
sub_020973C8: ; 0x020973C8
	ldr r3, _020973D0 ; =sub_020973B8
	sub r0, #0x95
	bx r3
	nop
_020973D0: .word sub_020973B8
	thumb_func_end sub_020973C8

	thumb_func_start sub_020973D4
sub_020973D4: ; 0x020973D4
	cmp r1, #0xa
	bhi _02097426
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020973E4: ; jump table
	.short _020973FA - _020973E4 - 2 ; case 0
	.short _020973FE - _020973E4 - 2 ; case 1
	.short _02097402 - _020973E4 - 2 ; case 2
	.short _02097406 - _020973E4 - 2 ; case 3
	.short _0209740A - _020973E4 - 2 ; case 4
	.short _0209740E - _020973E4 - 2 ; case 5
	.short _02097412 - _020973E4 - 2 ; case 6
	.short _02097416 - _020973E4 - 2 ; case 7
	.short _0209741A - _020973E4 - 2 ; case 8
	.short _0209741E - _020973E4 - 2 ; case 9
	.short _02097422 - _020973E4 - 2 ; case 10
_020973FA:
	ldrh r0, [r0]
	bx lr
_020973FE:
	ldrb r0, [r0, #2]
	bx lr
_02097402:
	ldrb r0, [r0, #3]
	bx lr
_02097406:
	ldrb r0, [r0, #4]
	bx lr
_0209740A:
	ldrb r0, [r0, #5]
	bx lr
_0209740E:
	ldrb r0, [r0, #6]
	bx lr
_02097412:
	ldrb r0, [r0, #7]
	bx lr
_02097416:
	ldrb r0, [r0, #8]
	bx lr
_0209741A:
	ldrb r0, [r0, #9]
	bx lr
_0209741E:
	ldrb r0, [r0, #0xa]
	bx lr
_02097422:
	ldrb r0, [r0, #0xb]
	bx lr
_02097426:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020973D4

	thumb_func_start sub_0209742C
sub_0209742C: ; 0x0209742C
	push {r3, r4, r5, lr}
	mov r2, #0x6a
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209742C

	thumb_func_start sub_02097454
sub_02097454: ; 0x02097454
	push {r3, r4, r5, lr}
	ldr r2, _02097478 ; =0x000001A7
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02097478: .word 0x000001A7
	thumb_func_end sub_02097454