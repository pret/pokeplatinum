	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov22_022578F4
ov22_022578F4: ; 0x022578F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	mov r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [r1, #4]
	str r0, [r4, #0x30]
	ldr r0, [r1, #8]
	str r0, [r4, #0x34]
	ldr r0, [r1, #0xc]
	str r0, [r4, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r4, #0x3c]
	ldr r0, [r1, #0x14]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x18]
	str r0, [r4, #0x44]
	str r2, [r4, #0x74]
	ldr r0, [r1, #0x1c]
	str r0, [r4, #0]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r2, [r4, #0x24]
	ldr r0, [r1, #0x20]
	add r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r1, #0x78
	mov r2, #3
	bl ov22_022594C0
	add r4, #0x14
	add r1, r4, #0
	bl ov22_02259520
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022578F4

	thumb_func_start ov22_02257948
ov22_02257948: ; 0x02257948
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022579F0
	add r0, r4, #0
	bl ov22_02257A98
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x88
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257948

	thumb_func_start ov22_02257964
ov22_02257964: ; 0x02257964
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	str r0, [sp]
	add r5, r2, #0
	add r0, r4, #0
	add r7, r3, #0
	ldr r1, [r4, #0x3c]
	add r0, #0x78
	add r2, r6, #0
	add r3, r5, #0
	bl ov22_022590C0
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x78
	bl ov22_022591D0
	add r4, #0x78
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov22_022591EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257964

	thumb_func_start ov22_02257998
ov22_02257998: ; 0x02257998
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	str r3, [sp]
	add r5, r1, #0
	add r4, r2, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov22_022590C0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257998

	thumb_func_start ov22_022579B4
ov22_022579B4: ; 0x022579B4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, r1, #0
	add r4, r2, #0
	add r0, r6, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov22_022590D4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022579B4

	thumb_func_start ov22_022579D8
ov22_022579D8: ; 0x022579D8
	ldr r3, _022579E4 ; =ov22_02259520
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x20]
	bx r3
	nop
_022579E4: .word ov22_02259520
	thumb_func_end ov22_022579D8

	thumb_func_start ov22_022579E8
ov22_022579E8: ; 0x022579E8
	ldr r3, _022579EC ; =ov22_02259530
	bx r3
	; .align 2, 0
_022579EC: .word ov22_02259530
	thumb_func_end ov22_022579E8

	thumb_func_start ov22_022579F0
ov22_022579F0: ; 0x022579F0
	ldr r3, _022579F8 ; =ov22_022591B8
	add r0, #0x78
	bx r3
	nop
_022579F8: .word ov22_022591B8
	thumb_func_end ov22_022579F0

	thumb_func_start ov22_022579FC
ov22_022579FC: ; 0x022579FC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	bge _02257A56
	ldr r0, [r4, #0x44]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	ldr r5, [r4, #0x30]
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x38]
	ldrb r0, [r0, r1]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl ov22_02254E20
	ldr r1, [sp, #0x30]
	add r5, r0, #0
	bl ov22_02254F6C
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov22_022594C0
	add r1, r4, #4
	bl ov22_02259520
	ldr r0, [r4, #0x24]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257A56:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022579FC

	thumb_func_start ov22_02257A5C
ov22_02257A5C: ; 0x02257A5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r5, [r4, #0x24]
	ldr r2, [r4, #0x28]
	cmp r5, r2
	bge _02257A7A
	mov r2, #1
	bl ov22_02257DEC
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257A7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02257A5C

	thumb_func_start ov22_02257A80
ov22_02257A80: ; 0x02257A80
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov22_02259530
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	bpl _02257A96
	bl sub_02022974
_02257A96:
	pop {r4, pc}
	thumb_func_end ov22_02257A80

	thumb_func_start ov22_02257A98
ov22_02257A98: ; 0x02257A98
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov22_02259540
	add r0, r4, #0
	add r0, #0x14
	bl ov22_02259540
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov22_02257A98

	thumb_func_start ov22_02257AB0
ov22_02257AB0: ; 0x02257AB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	add r4, r1, #0
	add r6, r2, #0
	bl ov22_022596EC
	add r5, #0x14
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov22_022596EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257AB0

	thumb_func_start ov22_02257ACC
ov22_02257ACC: ; 0x02257ACC
	ldr r3, _02257AD4 ; =ov22_022596EC
	add r0, #0x14
	bx r3
	nop
_02257AD4: .word ov22_022596EC
	thumb_func_end ov22_02257ACC

	thumb_func_start ov22_02257AD8
ov22_02257AD8: ; 0x02257AD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	neg r4, r2
	neg r7, r1
	add r0, r5, #4
	add r1, r7, #0
	add r2, r4, #0
	add r6, r3, #0
	bl ov22_022596EC
	ldr r2, [sp, #0x18]
	add r0, r5, #4
	add r1, r6, #0
	bl ov22_022596EC
	add r0, r5, #0
	add r0, #0x14
	add r1, r7, #0
	add r2, r4, #0
	bl ov22_022596EC
	add r5, #0x14
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov22_022596EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257AD8

	thumb_func_start ov22_02257B10
ov22_02257B10: ; 0x02257B10
	ldr r3, _02257B18 ; =ov22_02257B1C
	mov r1, #0
	mvn r1, r1
	bx r3
	; .align 2, 0
_02257B18: .word ov22_02257B1C
	thumb_func_end ov22_02257B10

	thumb_func_start ov22_02257B1C
ov22_02257B1C: ; 0x02257B1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	ldr r4, [r7, #0x1c]
	add r6, #0x14
	add r5, r1, #0
	cmp r4, r6
	beq _02257B4A
_02257B2C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B3C
	add r1, r5, #0
	bl ov22_02254F6C
	b _02257B42
_02257B3C:
	add r1, r5, #0
	bl ov22_022591D0
_02257B42:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02257B2C
_02257B4A:
	ldr r4, [r7, #0xc]
	add r6, r7, #4
	sub r5, #8
	cmp r4, r6
	beq _02257B72
_02257B54:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B64
	add r1, r5, #0
	bl ov22_02254F6C
	b _02257B6A
_02257B64:
	add r1, r5, #0
	bl ov22_022591D0
_02257B6A:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02257B54
_02257B72:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257B1C

	thumb_func_start ov22_02257B74
ov22_02257B74: ; 0x02257B74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	ldr r4, [r7, #0x1c]
	add r6, #0x14
	add r5, r1, #0
	cmp r4, r6
	beq _02257BB0
_02257B84:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B9C
	bl ov22_02254F78
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_02254F6C
	b _02257BAA
_02257B9C:
	bl ov22_022591E0
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_022591D0
_02257BAA:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257B84
_02257BB0:
	ldr r4, [r7, #0xc]
	add r6, r7, #4
	cmp r4, r6
	beq _02257BE4
_02257BB8:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257BD0
	bl ov22_02254F78
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_02254F6C
	b _02257BDE
_02257BD0:
	bl ov22_022591E0
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_022591D0
_02257BDE:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257BB8
_02257BE4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257B74

	thumb_func_start ov22_02257BE8
ov22_02257BE8: ; 0x02257BE8
	push {r3, lr}
	mov r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0x8f
	strb r1, [r0, #1]
	mov r1, #0x8a
	strb r1, [r0, #2]
	mov r1, #0xf6
	strb r1, [r0, #3]
	add r0, sp, #0
	bl sub_02022734
	pop {r3, pc}
	thumb_func_end ov22_02257BE8

	thumb_func_start ov22_02257C04
ov22_02257C04: ; 0x02257C04
	push {r3, lr}
	mov r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	mov r3, #0x8f
	strb r3, [r0, #1]
	mov r3, #0x8a
	strb r3, [r0, #2]
	mov r3, #0xf6
	strb r3, [r0, #3]
	add r0, sp, #0
	bl sub_02022830
	pop {r3, pc}
	thumb_func_end ov22_02257C04

	thumb_func_start ov22_02257C20
ov22_02257C20: ; 0x02257C20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [r0, #0x1c]
	str r0, [sp]
	str r0, [sp, #4]
	add r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #4]
	cmp r5, r0
	beq _02257C56
_02257C38:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C4E
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C4E:
	ldr r5, [r5, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02257C38
_02257C56:
	ldr r0, [sp]
	ldr r5, [r0, #0xc]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r5, r0
	beq _02257C80
_02257C62:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C78
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C78:
	ldr r5, [r5, #8]
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _02257C62
_02257C80:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257C20

	thumb_func_start ov22_02257C88
ov22_02257C88: ; 0x02257C88
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x19
	lsl r1, r4, #2
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x86
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x87
	str r0, [sp, #0xc]
	mov r0, #0x88
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #0
	add r1, #0x88
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x48
	add r1, sp, #0
	str r2, [sp, #0x2c]
	bl ov22_022597BC
	str r4, [r5, #0x74]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02257C88

	thumb_func_start ov22_02257CD4
ov22_02257CD4: ; 0x02257CD4
	ldr r3, _02257CDC ; =ov22_02259804
	add r0, #0x48
	bx r3
	nop
_02257CDC: .word ov22_02259804
	thumb_func_end ov22_02257CD4

	thumb_func_start ov22_02257CE0
ov22_02257CE0: ; 0x02257CE0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x78]
	add r4, r1, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_020080C0
	str r0, [r4, #0]
	ldr r0, [r5, #0x78]
	mov r1, #1
	bl sub_020080C0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02257CE0

	thumb_func_start ov22_02257D00
ov22_02257D00: ; 0x02257D00
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov22_02257D00

	thumb_func_start ov22_02257D04
ov22_02257D04: ; 0x02257D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r6, [r7, #0x1c]
	mov r4, #0
	add r7, #0x14
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r4, #0
	cmp r6, r7
	beq _02257D62
_02257D1A:
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257EC8
	cmp r4, #0
	bge _02257D2C
	neg r1, r4
	b _02257D2E
_02257D2C:
	add r1, r4, #0
_02257D2E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _02257D38
	neg r2, r0
	b _02257D3A
_02257D38:
	add r2, r0, #0
_02257D3A:
	cmp r2, r1
	ble _02257D40
	add r4, r0, #0
_02257D40:
	cmp r5, #0
	bge _02257D48
	neg r1, r5
	b _02257D4A
_02257D48:
	add r1, r5, #0
_02257D4A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02257D54
	neg r2, r0
	b _02257D56
_02257D54:
	add r2, r0, #0
_02257D56:
	cmp r2, r1
	ble _02257D5C
	add r5, r0, #0
_02257D5C:
	ldr r6, [r6, #8]
	cmp r6, r7
	bne _02257D1A
_02257D62:
	ldr r0, [sp]
	str r4, [r0, #0]
	ldr r0, [sp, #4]
	str r5, [r0, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257D04

	thumb_func_start ov22_02257D70
ov22_02257D70: ; 0x02257D70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r4, [r0, #0x1c]
	add r7, #0x14
	str r0, [sp]
	add r6, r1, #0
	cmp r4, r7
	beq _02257DCE
	asr r0, r6, #0xa
	mov r1, #0x1f
	and r0, r1
	str r0, [sp, #0xc]
	asr r0, r6, #5
	and r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	and r0, r1
	str r0, [sp, #4]
_02257D96:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257DA8
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl sub_0201529C
	b _02257DC8
_02257DA8:
	ldr r5, [r4, #0]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #0x18
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #8]
	mov r1, #0x19
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #4]
	mov r1, #0x1a
	bl sub_02007DEC
_02257DC8:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02257D96
_02257DCE:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	add r5, r0, #4
	cmp r4, r5
	beq _02257DE8
_02257DD8:
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl sub_0201529C
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257DD8
_02257DE8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257D70

	thumb_func_start ov22_02257DEC
ov22_02257DEC: ; 0x02257DEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x54
	add r2, sp, #0x50
	add r4, r3, #0
	bl ov22_02259648
	ldr r0, [sp, #0x10]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov22_02259698
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x44
	add r2, sp, #0x34
	add r3, sp, #0x40
	bl ov22_022596B0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	str r0, [sp, #0x20]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x44]
	add r1, r6, r0
	ldr r0, [sp, #0x34]
	add r4, r5, #0
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x30]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	add r0, #0x78
	str r0, [sp, #0x2c]
_02257E50:
	str r4, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	add r0, sp, #0x38
	str r0, [sp, #8]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	ldr r1, [sp, #0x18]
	add r2, r6, r7
	bl ov22_022577EC
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x20]
	bl ov22_022592F0
	add r4, r4, #1
	orr r5, r0
	cmp r4, #0x10
	blt _02257E50
	cmp r5, #0
	beq _02257EA6
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257E98
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0x14
	str r1, [sp, #0xc]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257E98:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x20]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EA6:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257EBA
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EBA:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x10]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257DEC

	thumb_func_start ov22_02257EC8
ov22_02257EC8: ; 0x02257EC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov22_02259698
	add r0, r6, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r2, r0, r1
	mov r1, #0x8a
	sub r2, r1, r2
	ldr r1, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x14]
	sub r1, #0xf6
	add r6, r0, r3
	mov r3, #0x12
	sub r3, r3, r6
	ldr r6, [sp, #0x1c]
	add r6, r0, r6
	ldr r0, [sp, #4]
	sub r6, r6, r0
	sub r6, #0x8f
	cmp r2, #0
	ble _02257F24
	str r2, [r5, #0]
	b _02257F32
_02257F24:
	cmp r1, #0
	ble _02257F2E
	neg r0, r1
	str r0, [r5, #0]
	b _02257F32
_02257F2E:
	mov r0, #0
	str r0, [r5, #0]
_02257F32:
	cmp r3, #0
	ble _02257F3C
	add sp, #0x24
	str r3, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_02257F3C:
	cmp r6, #0
	ble _02257F48
	neg r0, r6
	add sp, #0x24
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_02257F48:
	mov r0, #0
	str r0, [r4, #0]
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257EC8