	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02246BF4
ov6_02246BF4: ; 0x02246BF4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202D834
	bl sub_0202D9CC
	ldrb r1, [r0]
	cmp r1, #0
	beq _02246C20
	sub r1, r1, #1
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _02246C20
	mov r1, #0x7f
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r4, pc}
_02246C20:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02246BF4