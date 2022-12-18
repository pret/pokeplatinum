	.include "macros/function.inc"
	.include "include/ov17_02252A70.inc"

	

	.text


	thumb_func_start ov17_02252A70
ov17_02252A70: ; 0x02252A70
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r6, #0
_02252A7A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A488
	cmp r0, #1
	bne _02252A92
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A580
	ldrb r0, [r7, r0]
	add r6, r6, r0
_02252A92:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02252A7A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02252A70

	thumb_func_start ov17_02252A9C
ov17_02252A9C: ; 0x02252A9C
	push {r3, lr}
	add r3, r0, #0
	mov r2, #0
	mov r0, #0x5a
	add r1, r1, #3
	str r2, [sp]
	bl sub_02006FE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02252A9C