	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_022489E4
ov6_022489E4: ; 0x022489E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x61
	add r6, r0, #0
	add r4, r3, #0
	lsl r1, r1, #2
	add r0, r2, #0
	add r2, r4, r1
	lsl r1, r6, #8
	add r1, r2, r1
	add r2, r5, #0
	bl sub_020C4DB0
	ldr r2, _02248A5C ; =0x00000584
	ldrb r0, [r4, r2]
	add r0, r0, #1
	strb r0, [r4, r2]
	ldr r0, _02248A60 ; =0x00000127
	ldrb r2, [r4, r2]
	ldrb r1, [r4, r0]
	cmp r2, r1
	blo _02248A56
	mov r3, #0
	cmp r1, #0
	ble _02248A32
	add r0, #0x5d
	add r5, r4, r0
	mov r0, #1
	lsl r0, r0, #8
	add r2, r0, #0
	add r6, sp, #4
	add r2, #0x27
_02248A26:
	stmia r6!, {r5}
	ldrb r1, [r4, r2]
	add r3, r3, #1
	add r5, r5, r0
	cmp r3, r1
	blt _02248A26
_02248A32:
	add r0, sp, #4
	add r2, sp, #0
	bl ov6_02248A94
	mov r1, #0x47
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, sp, #0
	ldrb r2, [r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	lsl r2, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r2]
	ldrb r2, [r0, #2]
	add r0, r1, #6
	strb r2, [r4, r0]
_02248A56:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02248A5C: .word 0x00000584
_02248A60: .word 0x00000127
	thumb_func_end ov6_022489E4

	thumb_func_start ov6_02248A64
ov6_02248A64: ; 0x02248A64
	push {r3, lr}
	ldr r1, _02248A90 ; =0x00000125
	add r3, sp, #0
	ldrb r2, [r0, r1]
	strb r2, [r3]
	sub r2, r1, #2
	ldrb r2, [r0, r2]
	sub r1, r1, #3
	strb r2, [r3, #1]
	ldrb r0, [r0, r1]
	add r1, sp, #0
	mov r2, #4
	strb r0, [r3, #2]
	mov r0, #0x1a
	bl sub_020359DC
	cmp r0, #1
	bne _02248A8C
	mov r0, #1
	pop {r3, pc}
_02248A8C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02248A90: .word 0x00000125
	thumb_func_end ov6_02248A64

	thumb_func_start ov6_02248A94
ov6_02248A94: ; 0x02248A94
	push {r4, r5, r6, r7}
	mov r5, #0
	add r4, r5, #0
	cmp r1, #0
	ble _02248AB8
	add r6, r0, #0
_02248AA0:
	lsl r3, r5, #2
	ldr r3, [r0, r3]
	ldr r7, [r6, #0]
	ldrb r3, [r3]
	ldrb r7, [r7]
	cmp r3, r7
	bhs _02248AB0
	add r5, r4, #0
_02248AB0:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r1
	blt _02248AA0
_02248AB8:
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	ldrb r0, [r0]
	strb r0, [r2]
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02248A94

	thumb_func_start ov6_02248AC8
ov6_02248AC8: ; 0x02248AC8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02073C70
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_020C4DB0
	ldr r0, _02248AEC ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_02248AEC: .word 0x00000584
	thumb_func_end ov6_02248AC8

	thumb_func_start ov6_02248AF0
ov6_02248AF0: ; 0x02248AF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02073C70
	add r4, r0, #0
	mov r0, #0x14
	add r1, r4, #1
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C4DB0
	mov r0, #0x1b
	add r1, r5, #0
	add r2, r4, #1
	strb r6, [r5, r4]
	bl sub_020359DC
	cmp r0, #1
	bne _02248B24
	mov r4, #1
	b _02248B26
_02248B24:
	mov r4, #0
_02248B26:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02248AF0

	thumb_func_start ov6_02248B30
ov6_02248B30: ; 0x02248B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02073C70
	mov r7, #0
	ldr r4, [sp, #4]
	add r6, r0, #0
	add r5, r7, #0
_02248B44:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, r6
	cmp r7, #4
	blt _02248B44
	ldr r1, _02248B6C ; =0x00000584
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #4]
	strb r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248B6C: .word 0x00000584
	thumb_func_end ov6_02248B30

	thumb_func_start ov6_02248B70
ov6_02248B70: ; 0x02248B70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02073C70
	add r6, r0, #0
	lsl r0, r6, #2
	str r0, [sp]
	ldr r0, _02248BBC ; =0x00000585
	mov r7, #0
	add r0, r4, r0
	str r0, [sp, #4]
	add r4, r7, #0
_02248B8C:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, r4
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, r6
	add r5, r5, #4
	cmp r7, #4
	blt _02248B8C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r0, #0x1c
	bl sub_0203597C
	cmp r0, #1
	bne _02248BB6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248BB6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248BBC: .word 0x00000585
	thumb_func_end ov6_02248B70

	thumb_func_start ov6_02248BC0
ov6_02248BC0: ; 0x02248BC0
	push {r3, r4, r5, lr}
	add r0, r2, #0
	add r2, #0x30
	ldrb r1, [r2]
	add r4, r3, #0
	add r5, r4, #0
	mov r2, #0x30
	add r3, r1, #0
	add r5, #0x10
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	ldr r0, _02248BE4 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248BE4: .word 0x00000584
	thumb_func_end ov6_02248BC0

	thumb_func_start ov6_02248BE8
ov6_02248BE8: ; 0x02248BE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x14
	mov r1, #0x31
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x30
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x30
	strb r5, [r0]
	mov r0, #0x1d
	add r1, r4, #0
	mov r2, #0x31
	bl sub_020359DC
	cmp r0, #1
	bne _02248C1A
	mov r5, #1
	b _02248C1C
_02248C1A:
	mov r5, #0
_02248C1C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248BE8

	thumb_func_start ov6_02248C28
ov6_02248C28: ; 0x02248C28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r2, #0
	str r3, [sp]
	mov r4, #0
	add r5, #0xd0
	mov r7, #8
_02248C36:
	lsl r0, r4, #3
	add r0, r6, r0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _02248C36
	ldrb r2, [r6, #0x18]
	ldr r1, _02248C60 ; =0x0000011E
	ldr r0, [sp]
	strb r2, [r0, r1]
	ldr r1, _02248C64 ; =0x00000584
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248C60: .word 0x0000011E
_02248C64: .word 0x00000584
	thumb_func_end ov6_02248C28

	thumb_func_start ov6_02248C68
ov6_02248C68: ; 0x02248C68
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x14
	mov r1, #0x19
	add r5, r2, #0
	bl sub_02018144
	add r6, r0, #0
	mov r4, #0
	mov r7, #8
_02248C7C:
	lsl r1, r4, #3
	add r0, r5, #0
	add r1, r6, r1
	add r2, r7, #0
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _02248C7C
	ldr r1, _02248CB8 ; =0x0000011E
	ldr r0, [sp]
	mov r2, #0x19
	ldrb r0, [r0, r1]
	add r1, r6, #0
	strb r0, [r6, #0x18]
	mov r0, #0x1e
	bl sub_020359DC
	cmp r0, #1
	bne _02248CAA
	mov r4, #1
	b _02248CAC
_02248CAA:
	mov r4, #0
_02248CAC:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CB8: .word 0x0000011E
	thumb_func_end ov6_02248C68

	thumb_func_start ov6_02248CBC
ov6_02248CBC: ; 0x02248CBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	ldrb r0, [r5]
	add r6, r3, #0
	add r4, r6, #0
	add r4, #0xe8
	lsl r7, r0, #2
	ldr r0, [r4, r7]
	bl sub_020237E8
	ldr r0, [r4, r7]
	add r1, r5, #4
	bl sub_02023D28
	ldr r0, _02248CE4 ; =0x00000584
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CE4: .word 0x00000584
	thumb_func_end ov6_02248CBC

	thumb_func_start ov6_02248CE8
ov6_02248CE8: ; 0x02248CE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r0, r2, #0
	add r1, sp, #0
	mov r2, #8
	bl sub_02023DF0
	mov r0, #0x14
	add r1, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #4
	mov r2, #0x10
	bl sub_020C4DB0
	strb r5, [r4]
	mov r0, #0x10
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #0x1f
	add r1, r4, #0
	mov r2, #0x14
	bl sub_020359DC
	cmp r0, #1
	bne _02248D2A
	mov r5, #1
	b _02248D2C
_02248D2A:
	mov r5, #0
_02248D2C:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02248CE8

	thumb_func_start ov6_02248D38
ov6_02248D38: ; 0x02248D38
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202CC64
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	add r3, r4, r1
	mov r1, #0x57
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020C4DB0
	ldr r0, _02248D60 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248D60: .word 0x00000584
	thumb_func_end ov6_02248D38

	thumb_func_start ov6_02248D64
ov6_02248D64: ; 0x02248D64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_0202CC64
	add r5, r0, #0
	ldr r0, _02248D9C ; =0x00000585
	add r4, r4, r0
	cmp r6, #0
	beq _02248D84
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020C4DB0
_02248D84:
	mov r0, #0x24
	add r1, r4, #0
	add r2, r5, #1
	strb r7, [r4, r5]
	bl sub_0203597C
	cmp r0, #1
	bne _02248D98
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248D98:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248D9C: .word 0x00000585
	thumb_func_end ov6_02248D64

	thumb_func_start ov6_02248DA0
ov6_02248DA0: ; 0x02248DA0
	push {r3, r4, r5, r6}
	ldrb r1, [r2, #6]
	ldrb r4, [r2]
	mov r5, #0x42
	add r0, r3, r1
	lsl r5, r5, #2
	strb r4, [r0, r5]
	ldrb r6, [r2, #1]
	add r4, r5, #4
	strb r6, [r0, r4]
	add r4, r5, #0
	ldrb r6, [r2, #2]
	add r4, #8
	add r5, #0xc
	strb r6, [r0, r4]
	lsl r0, r1, #1
	ldrh r2, [r2, #4]
	add r0, r3, r0
	strh r2, [r0, r5]
	ldr r0, _02248DD4 ; =0x00000584
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02248DD4: .word 0x00000584
	thumb_func_end ov6_02248DA0

	thumb_func_start ov6_02248DD8
ov6_02248DD8: ; 0x02248DD8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x14
	mov r1, #7
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #6
	bl sub_020C4DB0
	mov r0, #0x25
	add r1, r4, #0
	mov r2, #7
	strb r5, [r4, #6]
	bl sub_020359DC
	cmp r0, #1
	bne _02248E06
	mov r5, #1
	b _02248E08
_02248E06:
	mov r5, #0
_02248E08:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02248DD8