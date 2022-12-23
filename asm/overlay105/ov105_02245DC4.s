	.include "macros/function.inc"
	.include "overlay105/ov105_02245DC4.inc"

	

	.text


	thumb_func_start ov105_02245DC4
ov105_02245DC4: ; 0x02245DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	str r5, [r4, #0]
	str r6, [r4, #4]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	str r1, [sp, #4]
	add r0, r7, #0
	add r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #8]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov105_02245E30
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_02245DC4

	thumb_func_start ov105_02245E1C
ov105_02245E1C: ; 0x02245E1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02245E1C

	thumb_func_start ov105_02245E30
ov105_02245E30: ; 0x02245E30
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	thumb_func_end ov105_02245E30

	thumb_func_start ov105_02245E48
ov105_02245E48: ; 0x02245E48
	ldr r3, _02245E50 ; =sub_02021FD0
	ldr r0, [r0, #8]
	bx r3
	nop
_02245E50: .word sub_02021FD0
	thumb_func_end ov105_02245E48