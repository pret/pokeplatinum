	.include "macros/function.inc"
	.include "include/ov5_021EEC68.inc"

	

	.text


	thumb_func_start ov5_021EEC68
ov5_021EEC68: ; 0x021EEC68
	push {r3, r4, r5, r6}
	ldr r4, [r0, #0]
	ldr r3, [r1, #0]
	cmp r4, r3
	bgt _021EEC78
	add r3, r0, #0
	add r4, r1, #0
	b _021EEC7C
_021EEC78:
	add r3, r1, #0
	add r4, r0, #0
_021EEC7C:
	ldr r6, [r0, #4]
	ldr r5, [r1, #4]
	cmp r6, r5
	bgt _021EEC8A
	add r5, r0, #4
	add r0, r1, #4
	b _021EEC8E
_021EEC8A:
	add r5, r1, #4
	add r0, r0, #4
_021EEC8E:
	ldr r6, [r2, #0]
	ldr r1, [r3, #0]
	cmp r1, r6
	bgt _021EECB0
	ldr r1, [r4, #0]
	cmp r6, r1
	bgt _021EECB0
	ldr r2, [r2, #4]
	ldr r1, [r5, #0]
	cmp r1, r2
	bgt _021EECB0
	ldr r0, [r0, #0]
	cmp r2, r0
	bgt _021EECB0
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021EECB0:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EEC68

	thumb_func_start ov5_021EECB8
ov5_021EECB8: ; 0x021EECB8
	push {r4, r5}
	lsl r3, r1, #3
	ldr r1, [r0, #0]
	ldr r5, [r0, #0x10]
	ldrh r1, [r1, r3]
	lsl r4, r1, #3
	add r1, r5, r4
	ldr r4, [r5, r4]
	ldr r1, [r1, #4]
	str r4, [r2, #0]
	str r1, [r2, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0]
	add r0, r0, r3
	ldrh r0, [r0, #2]
	lsl r3, r0, #3
	add r0, r1, r3
	ldr r1, [r1, r3]
	ldr r0, [r0, #4]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EECB8

	thumb_func_start ov5_021EECE8
ov5_021EECE8: ; 0x021EECE8
	push {r3, r4}
	ldr r4, [r0, #0]
	ldr r3, [r0, #0x14]
	lsl r0, r1, #3
	add r0, r4, r0
	ldrh r1, [r0, #4]
	mov r0, #0xc
	mul r0, r1
	add r3, r3, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EECE8

	thumb_func_start ov5_021EED08
ov5_021EED08: ; 0x021EED08
	push {r3, r4}
	ldr r4, [r0, #0]
	ldr r3, [r0, #4]
	lsl r0, r1, #3
	add r0, r4, r0
	ldrh r0, [r0, #6]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EED08

	thumb_func_start ov5_021EED20
ov5_021EED20: ; 0x021EED20
	mov r3, #0
	add r2, r3, #0
	sub r1, r3, #1
_021EED26:
	str r2, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #0xa
	blt _021EED26
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EED20

	thumb_func_start ov5_021EED38
ov5_021EED38: ; 0x021EED38
	push {r3, r4, r5, r6}
	cmp r1, #0
	bne _021EED44
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021EED44:
	cmp r1, #1
	bne _021EED52
	mov r0, #0
	strh r0, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021EED52:
	sub r1, r1, #1
	lsr r5, r1, #0x1f
	add r5, r1, r5
	mov r4, #0
	asr r5, r5, #1
_021EED5C:
	lsl r6, r5, #3
	ldr r6, [r0, r6]
	cmp r6, r2
	ble _021EED7E
	sub r1, r1, #1
	cmp r1, r4
	ble _021EED76
	add r6, r4, r5
	add r1, r5, #0
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	b _021EED5C
_021EED76:
	strh r5, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021EED7E:
	add r4, r4, #1
	cmp r4, r1
	bge _021EED90
	add r6, r5, r1
	add r4, r5, #0
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	b _021EED5C
_021EED90:
	add r0, r5, #1
	strh r0, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EED38

	thumb_func_start ov5_021EED9C
ov5_021EED9C: ; 0x021EED9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	str r0, [sp]
	ldr r0, [sp, #0xe0]
	add r4, r3, #0
	str r0, [sp, #0xe0]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021EEDB4
	add sp, #0xc8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEDB4:
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	add r0, sp, #0x50
	mov r5, #0
	bl ov5_021EED20
	ldr r1, [r4, #0x1c]
	ldr r6, [r4, #8]
	lsl r1, r1, #0x10
	ldr r2, [sp, #0x30]
	add r0, r6, #0
	lsr r1, r1, #0x10
	add r3, sp, #0x24
	bl ov5_021EED38
	cmp r0, #0
	bne _021EEDDC
	add sp, #0xc8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEDDC:
	add r0, sp, #0x24
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r1, r6, r0
	ldrh r0, [r1, #4]
	str r0, [sp, #0x14]
	ldrh r1, [r1, #6]
	add r0, r5, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bls _021EEEA2
	lsl r0, r1, #1
	add r7, sp, #0x50
	str r0, [sp, #0x10]
_021EEDFA:
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0xc]
	lsl r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r6, [r1, r0]
	add r0, r4, #0
	add r2, sp, #0x40
	add r1, r6, #0
	bl ov5_021EECB8
	add r0, sp, #0x40
	add r1, sp, #0x48
	add r2, sp, #0x2c
	bl ov5_021EEC68
	cmp r0, #1
	bne _021EEE92
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x34
	bl ov5_021EECE8
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x28
	bl ov5_021EED08
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #8]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	mov ip, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	ldr r3, [sp, #8]
	ldr r2, _021EEF30 ; =0x00000000
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	mov r2, #2
	lsl r2, r2, #0xa
	str r3, [sp, #8]
	add r3, r6, r2
	ldr r2, _021EEF30 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r2, r3, #0xc
	orr r2, r1
	add r1, r0, r2
	mov r0, ip
	add r0, r0, r1
	ldr r1, [sp, #0x38]
	neg r0, r0
	bl sub_020BCFD0
	str r0, [r7, #0]
	add r5, r5, #1
	add r7, #0xc
	cmp r5, #0xa
	bge _021EEEA2
_021EEE92:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	str r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	blo _021EEDFA
_021EEEA2:
	cmp r5, #1
	ble _021EEF0A
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #0x50]
	bl sub_0201E198
	add r4, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x50]
	bl sub_0201E190
	sub r6, r4, r0
	mov r4, #1
	cmp r5, #1
	ble _021EEEF6
_021EEEC4:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r1, sp, #0x50
	ldr r0, [sp]
	ldr r1, [r1, r7]
	bl sub_0201E198
	add r1, sp, #0x50
	str r0, [sp, #0x20]
	ldr r0, [sp]
	ldr r1, [r1, r7]
	bl sub_0201E190
	ldr r1, [sp, #0x20]
	sub r0, r1, r0
	cmp r6, r0
	ble _021EEEEC
	add r6, r0, #0
	str r4, [sp, #0xc]
_021EEEEC:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _021EEEC4
_021EEEF6:
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	mul r1, r0
	add r0, sp, #0x50
	ldr r1, [r0, r1]
	ldr r0, [sp, #0xe0]
	add sp, #0xc8
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEF0A:
	bne _021EEF18
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0xe0]
	add sp, #0xc8
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEF18:
	cmp r5, #0
	beq _021EEF28
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0xe0]
	add sp, #0xc8
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEF28:
	mov r0, #0
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEF30: .word 0x00000000
	thumb_func_end ov5_021EED9C