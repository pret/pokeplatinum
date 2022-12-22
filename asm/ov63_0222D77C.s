	.include "macros/function.inc"
	.include "include/ov63_0222D77C.inc"

	

	.text


	thumb_func_start ov63_0222D77C
ov63_0222D77C: ; 0x0222D77C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _0222D792
	bl sub_02022974
_0222D792:
	add r1, r5, #1
	str r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #3
	bl sub_02018144
	str r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #0
	lsl r2, r2, #3
	bl memset
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D77C

	thumb_func_start ov63_0222D7B4
ov63_0222D7B4: ; 0x0222D7B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D7B4

	thumb_func_start ov63_0222D7C8
ov63_0222D7C8: ; 0x0222D7C8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, r0, #1
	bl _u32_div_f
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _0222D7E8
	add r0, r5, #0
	add r1, sp, #0
	bl ov63_0222D810
_0222D7E8:
	ldrh r0, [r5, #0xa]
	ldr r3, [r5, #0]
	lsl r2, r0, #3
	ldrh r0, [r4]
	add r1, r3, r2
	strh r0, [r3, r2]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	ldrh r0, [r5, #0xa]
	ldr r1, [r5, #4]
	add r0, r0, #1
	bl _u32_div_f
	strh r1, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222D7C8

	thumb_func_start ov63_0222D810
ov63_0222D810: ; 0x0222D810
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, r2
	bne _0222D820
	mov r0, #0
	pop {r4, pc}
_0222D820:
	ldr r3, [r4, #0]
	lsl r0, r2, #3
	add r2, r3, r0
	ldrh r0, [r3, r0]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	ldrh r0, [r2, #6]
	strh r0, [r1, #6]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	add r0, r0, #1
	bl _u32_div_f
	strh r1, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D810

	thumb_func_start ov63_0222D848
ov63_0222D848: ; 0x0222D848
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _0222D85E
	bl sub_02022974
_0222D85E:
	add r1, r5, #1
	str r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D848

	thumb_func_start ov63_0222D880
ov63_0222D880: ; 0x0222D880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D880

	thumb_func_start ov63_0222D894
ov63_0222D894: ; 0x0222D894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, r0, #1
	bl _u32_div_f
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _0222D8B2
	add r0, r5, #0
	add r1, sp, #0
	bl ov63_0222D8D0
_0222D8B2:
	ldrh r0, [r5, #0xa]
	ldr r3, [r5, #0]
	lsl r2, r0, #2
	ldrh r0, [r4]
	add r1, r3, r2
	strh r0, [r3, r2]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5, #0xa]
	ldr r1, [r5, #4]
	add r0, r0, #1
	bl _u32_div_f
	strh r1, [r5, #0xa]
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222D894

	thumb_func_start ov63_0222D8D0
ov63_0222D8D0: ; 0x0222D8D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, r2
	bne _0222D8E0
	mov r0, #0
	pop {r4, pc}
_0222D8E0:
	ldr r3, [r4, #0]
	lsl r0, r2, #2
	add r2, r3, r0
	ldrh r0, [r3, r0]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	add r0, r0, #1
	bl _u32_div_f
	strh r1, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D8D0