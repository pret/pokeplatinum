	.include "macros/function.inc"
	.include "include/unk_0205578C.inc"

	

	.text


	thumb_func_start sub_0205578C
sub_0205578C: ; 0x0205578C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020557AA
	cmp r1, #1
	beq _020557CA
	b _020557D8
_020557AA:
	ldr r0, [r4, #8]
	add r1, r5, #0
	add r2, r4, #4
	bl ov5_021DDBE8
	ldr r1, [r4, #0xc]
	mov r0, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020557D8
_020557CA:
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _020557D8
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020557D8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205578C

	thumb_func_start sub_020557DC
sub_020557DC: ; 0x020557DC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r1, _02055804 ; =sub_0205578C
	add r0, r6, #0
	str r4, [r2, #0xc]
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02055804: .word sub_0205578C
	thumb_func_end sub_020557DC