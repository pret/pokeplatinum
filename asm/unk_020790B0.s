	.include "macros/function.inc"
	.include "include/unk_020790B0.inc"

	

	.text


	thumb_func_start sub_020790B0
sub_020790B0: ; 0x020790B0
	push {r3, lr}
	mov r1, #0x75
	lsl r1, r1, #6
	mov r2, #0
	str r1, [sp]
	mov r1, #9
	add r3, r2, #0
	bl sub_02006AFC
	pop {r3, pc}
	thumb_func_end sub_020790B0

	thumb_func_start sub_020790C4
sub_020790C4: ; 0x020790C4
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02079160
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02079104
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_020790C4

	thumb_func_start sub_020790DC
sub_020790DC: ; 0x020790DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r5, #3
	bls _020790E6
	mov r5, #3
_020790E6:
	mov r1, #5
	bl sub_020790C4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0x14
	mul r0, r4
	mul r0, r5
	mov r1, #0x64
	bl _s32_div_f
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020790DC

	thumb_func_start sub_02079104
sub_02079104: ; 0x02079104
	cmp r1, #0xb
	bhi _0207915C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02079114: ; jump table
	.short _0207912C - _02079114 - 2 ; case 0
	.short _02079130 - _02079114 - 2 ; case 1
	.short _02079134 - _02079114 - 2 ; case 2
	.short _02079138 - _02079114 - 2 ; case 3
	.short _0207913C - _02079114 - 2 ; case 4
	.short _02079140 - _02079114 - 2 ; case 5
	.short _02079144 - _02079114 - 2 ; case 6
	.short _02079148 - _02079114 - 2 ; case 7
	.short _0207914C - _02079114 - 2 ; case 8
	.short _02079152 - _02079114 - 2 ; case 9
	.short _02079156 - _02079114 - 2 ; case 10
	.short _0207915A - _02079114 - 2 ; case 11
_0207912C:
	ldrh r0, [r0]
	bx lr
_02079130:
	ldrb r0, [r0, #2]
	bx lr
_02079134:
	ldrb r0, [r0, #3]
	bx lr
_02079138:
	ldrb r0, [r0, #4]
	bx lr
_0207913C:
	ldrb r0, [r0, #5]
	bx lr
_02079140:
	ldrb r0, [r0, #6]
	bx lr
_02079144:
	ldrb r0, [r0, #7]
	bx lr
_02079148:
	ldrh r0, [r0, #8]
	bx lr
_0207914C:
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	bx lr
_02079152:
	ldrb r0, [r0, #0xb]
	bx lr
_02079156:
	ldrb r0, [r0, #0xc]
	bx lr
_0207915A:
	ldrb r0, [r0, #0xd]
_0207915C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02079104

	thumb_func_start sub_02079160
sub_02079160: ; 0x02079160
	ldr r3, _0207916C ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #9
	bx r3
	nop
_0207916C: .word sub_02006AA4
	thumb_func_end sub_02079160