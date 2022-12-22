	.include "macros/function.inc"
	.include "include/ov6_02242984.inc"

	

	.text


	thumb_func_start ov6_02242984
ov6_02242984: ; 0x02242984
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl sub_0203A640
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #4
_02242994:
	lsl r2, r0, #3
	add r2, r4, r2
	ldr r3, [r2, #8]
	lsl r2, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r3, [r1, r2]
	cmp r0, #0xc
	blo _02242994
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #1
	bl sub_0202D814
	add r1, sp, #0x20
	str r1, [sp]
	ldr r2, [r5, #0x1c]
	add r1, r6, #0
	ldr r2, [r2, #0]
	add r3, sp, #0x1c
	bl ov6_02242F74
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0x10
	bl ov6_02240C9C
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl ov6_022477B8
	bl sub_0201D2E8
	ldr r1, _02242A0C ; =0x00001556
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _02242A00
	bl GF_AssertFail
_02242A00:
	lsl r1, r4, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02242A0C: .word 0x00001556
	thumb_func_end ov6_02242984

	thumb_func_start ov6_02242A10
ov6_02242A10: ; 0x02242A10
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #0x34
	bl sub_02018184
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #0xb
	str r0, [r5, #0x2c]
	mov r0, #0x6a
	mov r2, #4
	bl sub_02006ADC
	add r7, r0, #0
	mov r4, #0
_02242A2E:
	bl sub_0201D2E8
	ldr r1, _02242A88 ; =0x0000071D
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x24
	blo _02242A44
	bl GF_AssertFail
_02242A44:
	lsl r0, r6, #0x18
	lsr r2, r0, #0x16
	add r1, r7, r2
	ldrh r2, [r7, r2]
	lsl r3, r4, #2
	add r0, r5, r3
	strh r2, [r5, r3]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _02242A2E
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	strh r0, [r5, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	strh r0, [r5, #0x16]
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, #0x30]
	add r0, r7, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242A88: .word 0x0000071D
	thumb_func_end ov6_02242A10

	thumb_func_start ov6_02242A8C
ov6_02242A8C: ; 0x02242A8C
	ldr r3, _02242A90 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02242A90: .word sub_020181C4
	thumb_func_end ov6_02242A8C

	thumb_func_start ov6_02242A94
ov6_02242A94: ; 0x02242A94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02242AB6
	lsl r2, r5, #2
	ldrh r1, [r4, r2]
	add r2, r4, r2
	ldrh r2, [r2, #2]
	lsl r1, r1, #0xb
	mov r0, #0xf0
	lsl r2, r2, #0xb
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02039F10
	b _02242AD2
_02242AB6:
	cmp r5, #5
	bne _02242ABE
	ldr r0, [r4, #0x30]
	b _02242AD2
_02242ABE:
	lsl r2, r5, #2
	ldrh r1, [r4, r2]
	add r2, r4, r2
	ldr r0, [r4, #0x2c]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #5
	lsr r2, r2, #5
	bl sub_02039E30
_02242AD2:
	lsl r3, r5, #2
	add r1, r4, r3
	ldrh r2, [r1, #2]
	ldrh r1, [r4, r3]
	str r0, [r4, #0x18]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r2, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02242A94

	thumb_func_start ov6_02242AEC
ov6_02242AEC: ; 0x02242AEC
	add r0, #0x18
	bx lr
	thumb_func_end ov6_02242AEC