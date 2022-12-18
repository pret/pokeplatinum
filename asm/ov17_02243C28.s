	.include "macros/function.inc"
	.include "include/ov17_02243C28.inc"

	

	.text


	thumb_func_start ov17_02243C28
ov17_02243C28: ; 0x02243C28
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02243C60 ; =0x022539E4
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0x16
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _02243C64 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	mov r1, #0xc3
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02243C60: .word 0x022539E4
_02243C64: .word 0x00000123
	thumb_func_end ov17_02243C28

	thumb_func_start ov17_02243C68
ov17_02243C68: ; 0x02243C68
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C68

	thumb_func_start ov17_02243C80
ov17_02243C80: ; 0x02243C80
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	thumb_func_end ov17_02243C80

	thumb_func_start ov17_02243C94
ov17_02243C94: ; 0x02243C94
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02243C94

	thumb_func_start ov17_02243C98
ov17_02243C98: ; 0x02243C98
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C98

	thumb_func_start ov17_02243CB0
ov17_02243CB0: ; 0x02243CB0
	push {r3, r4, r5, lr}
	ldr r0, _02243CD8 ; =0x00001650
	add r5, r1, #0
	mov r1, #1
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	add r4, r2, #0
	bl sub_02094EDC
	cmp r0, #0
	bne _02243CD6
	mov r0, #0xc3
	lsl r0, r0, #4
	mov r2, #0
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
_02243CD6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243CD8: .word 0x00001650
	thumb_func_end ov17_02243CB0

	thumb_func_start ov17_02243CDC
ov17_02243CDC: ; 0x02243CDC
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243CDC

	thumb_func_start ov17_02243CF4
ov17_02243CF4: ; 0x02243CF4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x10
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02243D2C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02243D30 ; =ov17_02243D34
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02243D2C: .word 0x00007530
_02243D30: .word ov17_02243D34
	thumb_func_end ov17_02243CF4

	thumb_func_start ov17_02243D34
ov17_02243D34: ; 0x02243D34
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xf]
	add r5, r0, #0
	cmp r1, #0
	beq _02243D4C
	cmp r1, #1
	beq _02243D6A
	cmp r1, #2
	beq _02243D84
	b _02243D92
_02243D4C:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xf]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D6A:
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _02243DB0
	mov r0, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D84:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243DB0
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D92:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243DB0:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02243D34

	thumb_func_start ov17_02243DB4
ov17_02243DB4: ; 0x02243DB4
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243DB4

	thumb_func_start ov17_02243DCC
ov17_02243DCC: ; 0x02243DCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02243E24 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	add r0, r6, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x18]
	add r0, r6, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	add r0, r6, #0
	add r0, #0xda
	ldrh r0, [r0]
	add r6, #0xdc
	strh r0, [r4, #0x14]
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldr r0, _02243E28 ; =ov17_02243E2C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243E24: .word 0x00007530
_02243E28: .word ov17_02243E2C
	thumb_func_end ov17_02243DCC

	thumb_func_start ov17_02243E2C
ov17_02243E2C: ; 0x02243E2C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _02243ED2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243E46: ; jump table
	.short _02243E50 - _02243E46 - 2 ; case 0
	.short _02243E72 - _02243E46 - 2 ; case 1
	.short _02243E8C - _02243E46 - 2 ; case 2
	.short _02243EA6 - _02243E46 - 2 ; case 3
	.short _02243EC4 - _02243E46 - 2 ; case 4
_02243E50:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02243E62
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x12
	mov r3, #0
	bl ov17_02242E5C
_02243E62:
	ldr r0, _02243EF4 ; =0x000006F9
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E72:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02243E82
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02243EF0
_02243E82:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E8C:
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	cmp r0, #0x1e
	bls _02243EF0
	mov r0, #0
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EA6:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EC4:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02243EF0
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243ED2:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02243EF0:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243EF4: .word 0x000006F9
	thumb_func_end ov17_02243E2C

	thumb_func_start ov17_02243EF8
ov17_02243EF8: ; 0x02243EF8
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243EF8

	thumb_func_start ov17_02243F10
ov17_02243F10: ; 0x02243F10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	add r2, r4, #0
	mov r1, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	add r2, #0x16
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl ov17_022426E8
	ldr r0, _02243F60 ; =ov17_02243F68
	ldr r2, _02243F64 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	add r0, r6, #0
	bl ov17_02242DA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243F60: .word ov17_02243F68
_02243F64: .word 0x00007530
	thumb_func_end ov17_02243F10

	thumb_func_start ov17_02243F68
ov17_02243F68: ; 0x02243F68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x15]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	add r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bls _02243F88
	b _02244092
_02243F88:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243F94: ; jump table
	.short _02243F9C - _02243F94 - 2 ; case 0
	.short _02243FB8 - _02243F94 - 2 ; case 1
	.short _0224401A - _02243F94 - 2 ; case 2
	.short _02244034 - _02243F94 - 2 ; case 3
_02243F9C:
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x18]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	bgt _02243FAC
	b _022440B6
_02243FAC:
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02243FB8:
	ldrb r0, [r4, #0x15]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl sub_020765AC
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x25
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r2, #1
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r6, #0xac
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x2b
	lsl r0, r0, #0xa
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224401A:
	ldr r0, [r4, #0]
	ldrb r2, [r4, #0x15]
	ldr r1, [r0, #0]
	ldr r0, _022440B8 ; =0x00000123
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224402E
	ldr r0, _022440BC ; =0x000006F8
	bl sub_02005748
_0224402E:
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_02244034:
	ldr r1, [r4, #0xc]
	ldr r0, _022440C0 ; =0x000005B6
	sub r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, _022440C4 ; =0x00000892
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	asr r0, r0, #8
	cmp r0, #0xd8
	ble _02244054
	ldr r0, [r4, #0x10]
	asr r0, r0, #8
	cmp r0, #0x70
	bgt _02244066
_02244054:
	mov r0, #0x36
	lsl r0, r0, #0xa
	str r0, [r4, #0xc]
	mov r0, #7
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_02244066:
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r2, r2, #8
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r2, r5
	bl sub_02007DEC
	pop {r4, r5, r6, pc}
_02244092:
	ldrb r0, [r4, #0x16]
	cmp r0, #1
	bne _022440B6
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_022440B6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022440B8: .word 0x00000123
_022440BC: .word 0x000006F8
_022440C0: .word 0x000005B6
_022440C4: .word 0x00000892
	thumb_func_end ov17_02243F68

	thumb_func_start ov17_022440C8
ov17_022440C8: ; 0x022440C8
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022440C8

	thumb_func_start ov17_022440E0
ov17_022440E0: ; 0x022440E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	ldr r1, [r6, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	mov r0, #0x36
	lsl r0, r0, #0xa
	str r0, [r4, #0xc]
	mov r0, #7
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, _02244134 ; =ov17_0224413C
	ldr r2, _02244138 ; =0x00007530
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244134: .word ov17_0224413C
_02244138: .word 0x00007530
	thumb_func_end ov17_022440E0

	thumb_func_start ov17_0224413C
ov17_0224413C: ; 0x0224413C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldrb r0, [r5, #0x15]
	mov r1, #0
	lsl r4, r0, #2
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r4]
	bl sub_020765AC
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _02244160
	cmp r0, #1
	beq _022441D2
	b _022441FA
_02244160:
	ldr r1, [r5, #0xc]
	ldr r0, _0224421C ; =0x000005B6
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, _02244220 ; =0x00000892
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	asr r1, r0, #8
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bge _02244184
	ldr r0, [r5, #0x10]
	asr r0, r0, #8
	cmp r0, #0xac
	blt _022441A6
_02244184:
	ldr r0, [r5, #0]
	mov r1, #0x25
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #6
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r5, #0x14]
	add r0, r0, #1
	strb r0, [r5, #0x14]
_022441A6:
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	asr r2, r2, #8
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r2, r6
	bl sub_02007DEC
	pop {r3, r4, r5, r6, r7, pc}
_022441D2:
	ldrb r1, [r5, #0x15]
	ldr r0, [r5, #0]
	ldr r2, _02244224 ; =0x00001652
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r2, #1
	bne _022441F2
	add r0, #0xc
	bl ov17_02241524
	ldrb r0, [r5, #0x15]
	ldr r1, [r5, #0]
	mov r2, #0
	add r1, r1, r0
	ldr r0, _02244224 ; =0x00001652
	strb r2, [r1, r0]
_022441F2:
	ldrb r0, [r5, #0x14]
	add r0, r0, #1
	strb r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022441FA:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224421C: .word 0x000005B6
_02244220: .word 0x00000892
_02244224: .word 0x00001652
	thumb_func_end ov17_0224413C

	thumb_func_start ov17_02244228
ov17_02244228: ; 0x02244228
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244228

	thumb_func_start ov17_02244240
ov17_02244240: ; 0x02244240
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x1c
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	ldr r2, _022442A4 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0xe]
	add r0, r5, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x10]
	ldr r0, _022442A8 ; =ov17_022442AC
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022442A4: .word 0x00007530
_022442A8: .word ov17_022442AC
	thumb_func_end ov17_02244240

	thumb_func_start ov17_022442AC
ov17_022442AC: ; 0x022442AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _022443BA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022442C6: ; jump table
	.short _022442D8 - _022442C6 - 2 ; case 0
	.short _02244314 - _022442C6 - 2 ; case 1
	.short _02244322 - _022442C6 - 2 ; case 2
	.short _0224432A - _022442C6 - 2 ; case 3
	.short _0224434E - _022442C6 - 2 ; case 4
	.short _02244362 - _022442C6 - 2 ; case 5
	.short _0224436A - _022442C6 - 2 ; case 6
	.short _0224438E - _022442C6 - 2 ; case 7
	.short _0224439C - _022442C6 - 2 ; case 8
_022442D8:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _022443DC ; =0x00000242
	ldrsh r0, [r1, r0]
	bl ov17_02243174
	add r3, r0, #0
	cmp r3, #0
	ble _02244302
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x12
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov17_022431A0
	b _0224430A
_02244302:
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224430A:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244314:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _022443D8
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244322:
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224432A:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02244346
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244346:
	mov r0, #5
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224434E:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022443D8
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244362:
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224436A:
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	add r0, #0xc
	bl ov17_02241A8C
	add r3, r4, #0
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0]
	add r3, #0xf
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224438E:
	ldrb r1, [r4, #0xf]
	cmp r1, #1
	bne _022443D8
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224439C:
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #5
	bls _022443D8
	ldr r0, [r4, #0]
	add r0, #0xc
	bl ov17_02241B1C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022443BA:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022443D8:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022443DC: .word 0x00000242
	thumb_func_end ov17_022442AC

	thumb_func_start ov17_022443E0
ov17_022443E0: ; 0x022443E0
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022443E0

	thumb_func_start ov17_022443F8
ov17_022443F8: ; 0x022443F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x49
	mov r0, #0x15
	lsl r1, r1, #2
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x49
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r1, [r5]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	add r1, r5, r2
	ldrh r1, [r1, #0x10]
	strh r1, [r4, #0xe]
	add r1, r5, #0
	add r1, #0xe4
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xe2
	strb r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xd8
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xdc
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xda
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xde
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xdc
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe0
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe5
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	strb r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xde
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe4
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0xe6
	strh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xe2
	ldrh r1, [r1]
	add r0, #0xe8
	mov r2, #0x1e
	strh r1, [r4, r0]
_0224449E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224449E
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, _022444B8 ; =ov17_022444BC
	mov r2, #5
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022444B8: .word ov17_022444BC
	thumb_func_end ov17_022443F8

	thumb_func_start ov17_022444BC
ov17_022444BC: ; 0x022444BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r6, r0, #0
	add r2, r4, #0
	mov r5, #0x2c
	add r0, r1, #0
	add r2, #0x24
	mul r0, r5
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022444DA
	b _0224492A
_022444DA:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022444E6: ; jump table
	.short _02244504 - _022444E6 - 2 ; case 0
	.short _0224452C - _022444E6 - 2 ; case 1
	.short _02244540 - _022444E6 - 2 ; case 2
	.short _02244548 - _022444E6 - 2 ; case 3
	.short _0224456E - _022444E6 - 2 ; case 4
	.short _02244582 - _022444E6 - 2 ; case 5
	.short _0224458A - _022444E6 - 2 ; case 6
	.short _022445B2 - _022444E6 - 2 ; case 7
	.short _022445C8 - _022444E6 - 2 ; case 8
	.short _022445D0 - _022444E6 - 2 ; case 9
	.short _022445E4 - _022444E6 - 2 ; case 10
	.short _02244890 - _022444E6 - 2 ; case 11
	.short _022448E6 - _022444E6 - 2 ; case 12
	.short _02244906 - _022444E6 - 2 ; case 13
	.short _0224491C - _022444E6 - 2 ; case 14
_02244504:
	add r0, r5, #0
	add r0, #0xe2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02244524
	add r5, #0xdc
	ldr r0, [r4, #0]
	add r2, r4, r5
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244524:
	mov r0, #2
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224452C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244540:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244548:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244566
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244566:
	mov r0, #5
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224456E:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244582:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224458A:
	add r0, r5, #0
	add r0, #0xea
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022445AA
	add r5, #0xdc
	ldr r0, [r4, #0]
	add r2, r4, r5
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445AA:
	mov r0, #8
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445B2:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022445BE
_022445BC:
	b _02244948
_022445BE:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445C8:
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445D0:
	ldr r0, [r4, #0]
	ldrh r2, [r4, #0xe]
	add r5, #0xec
	ldr r0, [r0, #0]
	add r3, r4, r5
	bl ov17_022439C8
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022445E4:
	ldrb r0, [r4, #0xd]
	add r5, r0, #1
	cmp r5, #4
	blt _022445EE
	mov r5, #0
_022445EE:
	add r0, sp, #0xc0
	mov r1, #0
	mov r2, #0x58
	bl sub_020C4CF4
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0x90
	bl sub_020C4CF4
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #5
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x6f
	bl sub_02074470
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02075E0C
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	mov r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x70
	bl sub_02074470
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	lsl r5, r5, #2
	ldr r0, [r0, #0xc]
	mov r1, #5
	ldr r0, [r0, r5]
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #0x6f
	ldr r0, [r0, #0xc]
	mov r2, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl sub_02075E0C
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #0xc]
	mov r2, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	ldr r0, [r0, r5]
	bl sub_02074470
	mov r3, #0x47
	mov r1, #0
	add r2, sp, #0xc0
	strb r1, [r2]
	strb r1, [r2, #1]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldrh r0, [r4, r3]
	mov r5, #0xa
	strh r0, [r2, #2]
	mov r0, #1
	str r0, [sp, #0xc4]
	strh r5, [r2, #8]
	add r5, r3, #3
	ldrb r5, [r4, r5]
	add r3, r3, #4
	strh r5, [r2, #0xa]
	ldrb r3, [r4, r3]
	strh r3, [r2, #0xc]
	str r1, [sp, #0xd0]
	strh r1, [r2, #0x14]
	strh r0, [r2, #0x16]
	mov r0, #9
	str r0, [sp, #0x114]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
_022446E2:
	add r1, r1, #1
	strh r0, [r2, #0x18]
	add r2, r2, #2
	cmp r1, #4
	blt _022446E2
	ldr r0, [sp, #0x18]
	add r1, sp, #0xc0
	strh r0, [r1, #0x1a]
	ldr r0, [r4, #0]
	lsl r3, r7, #0x10
	ldr r0, [r0, #0x30]
	lsr r3, r3, #0x10
	str r0, [sp, #0x34]
	ldr r0, [r4, #0]
	str r3, [sp, #0x2c]
	ldr r0, [r0, #0x5c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x38]
	ldrb r0, [r4, #0xd]
	lsl r3, r3, #0x18
	ldr r1, [r4, #0]
	lsr r3, r3, #0x18
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r1, #0x64
	lsl r0, r0, #4
	add r0, r1, r0
	lsl r3, r3, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0]
	lsr r3, r3, #0x18
	mov ip, r3
	ldr r3, [sp, #0x1c]
	add r0, #0xa4
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	lsl r3, r3, #0x18
	mov r6, #0
	add r1, r0, #0
	add r2, r0, #0
	lsr r7, r3, #0x18
_02244734:
	mov r3, #0xff
	strb r3, [r0, #0x1c]
	ldr r3, [sp, #0x2c]
	add r5, r0, #0
	strh r3, [r1, #0x34]
	ldr r3, [sp, #0x24]
	add r5, #0x3c
	strb r3, [r5]
	add r5, r0, #0
	add r5, #0x40
	mov r3, ip
	strb r3, [r5]
	add r3, r0, #0
	add r3, #0x44
	strb r7, [r3]
	ldr r3, [sp, #8]
	add r6, r6, #1
	str r3, [r2, #0x48]
	mov r3, #0
	str r3, [r2, #0x58]
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #4
	cmp r6, #4
	blt _02244734
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, sp, #0x30
	str r0, [sp, #0x88]
	add r0, r3, #0
	strb r0, [r2, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x18]
	strb r0, [r2, #0x1d]
	strh r1, [r2, #0x36]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x50
	strb r1, [r2, #0x1d]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x70
	strb r1, [r2, #1]
	ldr r1, [sp, #0xc]
	strb r1, [r2, #5]
	ldr r1, [sp, #4]
	str r1, [sp, #0x7c]
	ldrb r1, [r4, #0xd]
	ldr r2, [r4, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x50]
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _022447A4
	add r0, r3, #0
_022447A4:
	lsl r5, r0, #2
	ldr r0, [r4, #0]
	mov r2, #0x57
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r1, #8
	str r1, [sp, #0x98]
	mov r1, #0x2d
	str r1, [sp, #0x9c]
	mov r1, #1
	str r1, [sp, #0xa0]
	mov r1, #0x1e
	str r0, [sp, #0x54]
	mov r0, #0
	str r1, [sp, #0xa4]
	mov r1, #2
	str r0, [sp, #0x60]
	str r0, [sp, #0xac]
	mov r0, #3
	str r1, [sp, #0xa8]
	str r0, [sp, #0xb0]
	ldr r0, [r4, #0]
	lsl r2, r2, #2
	ldr r0, [r0, #0x24]
	add r3, sp, #0x30
	str r0, [sp, #0x30]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, r2]
	sub r2, #0x40
	str r0, [sp, #0xb4]
	ldr r0, [r4, #0]
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0x2c]
	add r1, sp, #0xc0
	bl ov12_0221FE30
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020765AC
	add r6, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0224494C ; =0xDFFBFF3F
	cmp r1, r0
	beq _02244824
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #6
	bl sub_02007DEC
_02244824:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0x25
	bl sub_02007DEC
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #0]
	mov r2, #0xd8
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl sub_02007DEC
	ldrb r0, [r4, #0xd]
	add r6, #0x70
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0x25
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0x50
	bl sub_02007DEC
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	mov r2, #0x2a
	bl sub_02007DEC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244890:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_0222016C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_02220188
	cmp r0, #0
	bne _02244948
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	bl ov12_02220198
	add r1, r5, #0
	add r1, #0xf2
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _022448DC
	sub r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	sub r0, r1, #6
	ldr r2, [r4, r0]
	ldr r0, _02244950 ; =0x200400C0
	cmp r2, r0
	bne _022448D4
	ldr r2, _0224494C ; =0xDFFBFF3F
	sub r0, r1, #6
	str r2, [r4, r0]
_022448D4:
	mov r0, #0xa
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448DC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448E6:
	add r5, #0xf0
	ldrh r0, [r4, r5]
	cmp r0, #0x90
	beq _022448F2
	cmp r0, #0xa4
	bne _022448FC
_022448F2:
	ldr r0, [r4, #0]
	mov r2, #1
	add r1, r0, r1
	ldr r0, _02244954 ; =0x00001652
	strb r2, [r1, r0]
_022448FC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244906:
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, #0x10
	bl ov17_022426E8
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224491C:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02244948
	add r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224492A:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02244948:
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224494C: .word 0xDFFBFF3F
_02244950: .word 0x200400C0
_02244954: .word 0x00001652
	thumb_func_end ov17_022444BC

	thumb_func_start ov17_02244958
ov17_02244958: ; 0x02244958
	push {r3, lr}
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	mov r3, #0
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244958

	thumb_func_start ov17_02244970
ov17_02244970: ; 0x02244970
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x15
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldrh r0, [r5]
	mov r2, #0x64
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r6, #0xc]
	ldr r0, _022449B0 ; =0x00000123
	ldrb r0, [r1, r0]
	add r1, r4, #0
	strb r0, [r4, #0xd]
	ldr r0, _022449B4 ; =ov17_022449B8
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_022449B0: .word 0x00000123
_022449B4: .word ov17_022449B8
	thumb_func_end ov17_02244970

	thumb_func_start ov17_022449B8
ov17_022449B8: ; 0x022449B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	bls _022449C8
	b _02244B56
_022449C8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022449D4: ; jump table
	.short _022449EA - _022449D4 - 2 ; case 0
	.short _02244A04 - _022449D4 - 2 ; case 1
	.short _02244A62 - _022449D4 - 2 ; case 2
	.short _02244A72 - _022449D4 - 2 ; case 3
	.short _02244AAC - _022449D4 - 2 ; case 4
	.short _02244AC0 - _022449D4 - 2 ; case 5
	.short _02244AC6 - _022449D4 - 2 ; case 6
	.short _02244AFA - _022449D4 - 2 ; case 7
	.short _02244B0A - _022449D4 - 2 ; case 8
	.short _02244B2E - _022449D4 - 2 ; case 9
	.short _02244B50 - _022449D4 - 2 ; case 10
_022449EA:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #1
	add r3, r2, #0
	bl ov17_0223F9C4
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A04:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #2
	add r3, r2, #0
	bl ov17_0223F9C4
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r2, r0, #1
	cmp r2, #4
	bne _02244A26
	mov r1, #3
	b _02244A28
_02244A26:
	mov r1, #2
_02244A28:
	add r0, sp, #0
	strb r2, [r0, #0xa]
	add r2, sp, #4
	ldr r0, [r4, #0]
	add r2, #2
	mov r3, #0
	bl ov17_02242E5C
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r0, r0, #1
	cmp r0, #4
	bne _02244A58
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _02244A58
	ldr r0, _02244BA4 ; =0x000006F6
	bl sub_02005748
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_02244A58:
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A62:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244A86
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244A72:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02244A88
_02244A86:
	b _02244B9C
_02244A88:
	ldr r0, [r4, #0]
	add r1, #0x36
	ldr r2, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x10]
	ldr r0, _02244BA8 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AAC:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC0:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC6:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #3
	add r3, r2, #0
	bl ov17_0223F9C4
	mov r0, #0x23
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r2, sp, #0
	mov r3, #0
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AFA:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244B9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B0A:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02244B9C
	strh r0, [r4, #0x12]
	ldr r0, _02244BA8 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B2E:
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrh r0, [r4, #0x12]
	cmp r0, #3
	bne _02244B4A
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B4A:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B50:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244B56:
	ldr r0, [r4, #0]
	ldr r1, _02244BAC ; =0x00000171
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _02244B6C
	mov r2, #0
	mov r1, #0x2e
	add r3, r2, #0
	bl ov17_02242E5C
_02244B6C:
	mov r0, #0xc3
	add r2, r4, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r2, #0x10
	mov r3, #4
	bl ov17_0224F26C
	ldr r1, [r4, #0]
	ldr r0, _02244BA0 ; =0x0000081C
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov17_0223F9C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02244B9C:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02244BA0: .word 0x0000081C
_02244BA4: .word 0x000006F6
_02244BA8: .word 0x000005DD
_02244BAC: .word 0x00000171
	thumb_func_end ov17_022449B8

	thumb_func_start ov17_02244BB0
ov17_02244BB0: ; 0x02244BB0
	push {r4, r5}
	ldr r0, [sp, #8]
	lsl r2, r0, #2
	ldr r5, [r3, r2]
	lsl r2, r0, #1
	ldrh r4, [r5]
	add r3, r1, r2
	ldr r2, _02244BD0 ; =0x00000236
	add r0, r1, r0
	strh r4, [r3, r2]
	ldrh r3, [r5, #2]
	add r2, #8
	strb r3, [r0, r2]
	pop {r4, r5}
	bx lr
	nop
_02244BD0: .word 0x00000236
	thumb_func_end ov17_02244BB0

	thumb_func_start ov17_02244BD4
ov17_02244BD4: ; 0x02244BD4
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BD4

	thumb_func_start ov17_02244BEC
ov17_02244BEC: ; 0x02244BEC
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02244BEC

	thumb_func_start ov17_02244BF0
ov17_02244BF0: ; 0x02244BF0
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BF0

	thumb_func_start ov17_02244C08
ov17_02244C08: ; 0x02244C08
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244C46:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02244C46
	ldr r0, [r5, #0]
	ldr r2, _02244C60 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02244C64 ; =ov17_02244C68
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244C60: .word 0x00007530
_02244C64: .word ov17_02244C68
	thumb_func_end ov17_02244C08

	thumb_func_start ov17_02244C68
ov17_02244C68: ; 0x02244C68
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r3, r4, #0
	add r2, r1, #0
	mov r0, #0x2c
	ldrb r1, [r4, #0xc]
	add r3, #0x24
	mul r2, r0
	add r2, r3, r2
	cmp r1, #4
	bhi _02244D00
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02244C8E: ; jump table
	.short _02244C98 - _02244C8E - 2 ; case 0
	.short _02244CA8 - _02244C8E - 2 ; case 1
	.short _02244CAE - _02244C8E - 2 ; case 2
	.short _02244CE6 - _02244C8E - 2 ; case 3
	.short _02244D00 - _02244C8E - 2 ; case 4
_02244C98:
	mov r0, #0x1a
	ldrsh r1, [r2, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CA8:
	add r0, r1, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CAE:
	add r0, #0xdc
	mov r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _02244CE0
	add r0, r3, #0
	add r0, #0xf0
	ldrsh r1, [r4, r0]
	add r0, r3, #0
	add r0, #0xf0
	add r1, #0xa
	strh r1, [r4, r0]
	add r3, #0xf0
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE0:
	mov r0, #4
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE6:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244D1E
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244D00:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02244D1E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02244C68

	thumb_func_start ov17_02244D20
ov17_02244D20: ; 0x02244D20
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244D20

	thumb_func_start ov17_02244D38
ov17_02244D38: ; 0x02244D38
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244D76:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02244D76
	ldr r0, [r5, #0]
	ldr r2, _02244D90 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02244D94 ; =ov17_02244D98
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244D90: .word 0x00007530
_02244D94: .word ov17_02244D98
	thumb_func_end ov17_02244D38

	thumb_func_start ov17_02244D98
ov17_02244D98: ; 0x02244D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	str r0, [sp, #4]
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bls _02244DB4
	b _02244F8C
_02244DB4:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244DC0: ; jump table
	.short _02244DE2 - _02244DC0 - 2 ; case 0
	.short _02244DF4 - _02244DC0 - 2 ; case 1
	.short _02244E1A - _02244DC0 - 2 ; case 2
	.short _02244E2E - _02244DC0 - 2 ; case 3
	.short _02244E32 - _02244DC0 - 2 ; case 4
	.short _02244E38 - _02244DC0 - 2 ; case 5
	.short _02244E6A - _02244DC0 - 2 ; case 6
	.short _02244E88 - _02244DC0 - 2 ; case 7
	.short _02244E8C - _02244DC0 - 2 ; case 8
	.short _02244EB8 - _02244DC0 - 2 ; case 9
	.short _02244F0A - _02244DC0 - 2 ; case 10
	.short _02244F26 - _02244DC0 - 2 ; case 11
	.short _02244F2A - _02244DC0 - 2 ; case 12
	.short _02244F30 - _02244DC0 - 2 ; case 13
	.short _02244F80 - _02244DC0 - 2 ; case 14
	.short _02244F86 - _02244DC0 - 2 ; case 15
	.short _02244F8C - _02244DC0 - 2 ; case 16
_02244DE2:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244DF4:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244E12
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E12:
	mov r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E1A:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244E78
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E2E:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E32:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E38:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02244E62
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E62:
	mov r0, #7
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E6A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bgt _02244E7A
_02244E78:
	b _02244FAA
_02244E7A:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E88:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244E8C:
	ldr r0, [r3, #0x28]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02244EB0
	ldrb r0, [r3, #3]
	add sp, #8
	add r1, r4, r0
	mov r0, #0xe4
	ldrsb r1, [r1, r0]
	add r0, #0x26
	strh r1, [r4, r0]
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB0:
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB8:
	mov r0, #0x10
	ldrsb r0, [r4, r0]
	mov r6, #0
	add r5, r6, #0
	add r0, r0, #1
	strb r0, [r4, #0x10]
	mov r7, #0xe7
_02244EC6:
	mov r2, #0x10
	ldrsb r3, [r4, r2]
	add r1, r4, r5
	mov r0, #0xe4
	mov r2, #0xa
	ldrsb r0, [r1, r0]
	mul r2, r3
	sub r2, r0, r2
	ldrsb r0, [r1, r7]
	cmp r0, r2
	bgt _02244EEE
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r0, #0xc
	add r6, r6, #1
	bl ov17_022424D4
	ldr r0, _02244FB0 ; =0x000006DF
	bl sub_02005748
_02244EEE:
	add r5, r5, #1
	cmp r5, #3
	blt _02244EC6
	cmp r6, #0
	ble _02244F02
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F02:
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F0A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244FAA
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F26:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F2A:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F30:
	add r6, r4, #0
	mov r5, #0
	add r6, #0x4c
_02244F36:
	ldr r2, [r4, #0]
	ldr r0, _02244FB4 ; =0x00000231
	add r1, r2, r5
	ldrb r1, [r1, r0]
	mov r0, #0x2c
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r6, r7]
	lsl r1, r0, #0x1a
	lsl r3, r0, #0x16
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1e
	cmp r1, r3
	bne _02244F5E
	lsl r1, r0, #0x18
	lsl r0, r0, #0x14
	lsr r1, r1, #0x1e
	lsr r0, r0, #0x1e
	cmp r1, r0
	beq _02244F74
_02244F5E:
	add r2, #0xc
	add r0, r2, #0
	ldr r2, [r6, r7]
	add r1, r5, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bl ov17_022430AC
	ldr r0, _02244FB8 ; =0x000006E2
	bl sub_02005748
_02244F74:
	add r5, r5, #1
	cmp r5, #4
	blt _02244F36
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F80:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F86:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02244F8C:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	bl sub_0200DA58
_02244FAA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244FB0: .word 0x000006DF
_02244FB4: .word 0x00000231
_02244FB8: .word 0x000006E2
	thumb_func_end ov17_02244D98

	thumb_func_start ov17_02244FBC
ov17_02244FBC: ; 0x02244FBC
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244FBC

	thumb_func_start ov17_02244FD4
ov17_02244FD4: ; 0x02244FD4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245012:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245012
	ldr r0, [r5, #0]
	ldr r2, _0224502C ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245030 ; =ov17_02245034
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224502C: .word 0x00007530
_02245030: .word ov17_02245034
	thumb_func_end ov17_02244FD4

	thumb_func_start ov17_02245034
ov17_02245034: ; 0x02245034
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245104
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245058: ; jump table
	.short _0224506A - _02245058 - 2 ; case 0
	.short _0224507A - _02245058 - 2 ; case 1
	.short _0224509C - _02245058 - 2 ; case 2
	.short _022450AE - _02245058 - 2 ; case 3
	.short _022450B2 - _02245058 - 2 ; case 4
	.short _022450B8 - _02245058 - 2 ; case 5
	.short _022450E6 - _02245058 - 2 ; case 6
	.short _02245100 - _02245058 - 2 ; case 7
	.short _02245104 - _02245058 - 2 ; case 8
_0224506A:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224507A:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245096
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245096:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224509C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245122
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450AE:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022450B2:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022450B8:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _022450E0
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E0:
	mov r0, #7
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E6:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245122
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245100:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245104:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245122:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245034

	thumb_func_start ov17_02245124
ov17_02245124: ; 0x02245124
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245124

	thumb_func_start ov17_0224513C
ov17_0224513C: ; 0x0224513C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_0224517A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224517A
	ldr r0, [r5, #0]
	ldr r2, _02245194 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245198 ; =ov17_0224519C
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245194: .word 0x00007530
_02245198: .word ov17_0224519C
	thumb_func_end ov17_0224513C

	thumb_func_start ov17_0224519C
ov17_0224519C: ; 0x0224519C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r6, r0, #0
	add r3, r4, #0
	add r2, r1, #0
	mov r0, #0x2c
	ldrb r1, [r4, #0xc]
	add r3, #0x24
	mul r2, r0
	add r5, r3, r2
	cmp r1, #0x19
	bls _022451BA
	b _022454DC
_022451BA:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022451C6: ; jump table
	.short _022451FA - _022451C6 - 2 ; case 0
	.short _02245210 - _022451C6 - 2 ; case 1
	.short _02245254 - _022451C6 - 2 ; case 2
	.short _02245264 - _022451C6 - 2 ; case 3
	.short _02245268 - _022451C6 - 2 ; case 4
	.short _02245290 - _022451C6 - 2 ; case 5
	.short _022452A4 - _022451C6 - 2 ; case 6
	.short _022452A8 - _022451C6 - 2 ; case 7
	.short _022452DC - _022451C6 - 2 ; case 8
	.short _022452FA - _022451C6 - 2 ; case 9
	.short _022452FE - _022451C6 - 2 ; case 10
	.short _02245304 - _022451C6 - 2 ; case 11
	.short _02245370 - _022451C6 - 2 ; case 12
	.short _02245388 - _022451C6 - 2 ; case 13
	.short _022453A2 - _022451C6 - 2 ; case 14
	.short _022453C2 - _022451C6 - 2 ; case 15
	.short _022453EA - _022451C6 - 2 ; case 16
	.short _02245400 - _022451C6 - 2 ; case 17
	.short _02245404 - _022451C6 - 2 ; case 18
	.short _02245430 - _022451C6 - 2 ; case 19
	.short _0224543E - _022451C6 - 2 ; case 20
	.short _02245442 - _022451C6 - 2 ; case 21
	.short _02245454 - _022451C6 - 2 ; case 22
	.short _02245498 - _022451C6 - 2 ; case 23
	.short _022454B4 - _022451C6 - 2 ; case 24
	.short _022454DC - _022451C6 - 2 ; case 25
_022451FA:
	ldrb r0, [r5, #3]
	add sp, #8
	add r1, r4, r0
	mov r0, #0xe4
	ldrsb r1, [r1, r0]
	add r0, #0x26
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245210:
	ldrb r1, [r5, #3]
	mov r0, #0xe7
	add r3, r4, r1
	ldrsb r2, [r3, r0]
	mov r0, #0xe4
	ldrsb r0, [r3, r0]
	cmp r2, r0
	ble _0224524C
	cmp r2, #0x32
	blt _02245228
	mov r6, #3
	b _0224522A
_02245228:
	mov r6, #2
_0224522A:
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r0, #0xc
	bl ov17_02241A8C
	ldr r3, _02245504 ; =0x0000010E
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224524C:
	mov r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245254:
	add r0, #0xe2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _022452EA
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245264:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245268:
	add r0, r4, #0
	add r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245288
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xec
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245288:
	mov r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245290:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022452EA
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452A4:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_022452A8:
	ldrb r0, [r5, #3]
	add r2, r4, r0
	mov r0, #0xe7
	ldrsb r1, [r2, r0]
	mov r0, #0xe4
	ldrsb r0, [r2, r0]
	cmp r1, r0
	ble _022452CE
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x11
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #0
	mov r3, #0x46
	bl ov17_022431A0
	b _022452D2
_022452CE:
	mov r0, #1
	strb r0, [r4, #0x11]
_022452D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452DC:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bgt _022452EC
_022452EA:
	b _02245500
_022452EC:
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452FA:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_022452FE:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245304:
	ldrb r0, [r5, #3]
	add r3, r4, r0
	mov r0, #0xe7
	ldrsb r1, [r3, r0]
	add r0, #0x23
	ldrsh r0, [r4, r0]
	cmp r0, r1
	beq _02245368
	mov r2, #0xe4
	ldrsb r0, [r3, r2]
	sub r0, r1, r0
	cmp r0, #0
	ble _0224533C
	add r0, r2, #0
	add r0, #0x26
	ldrsh r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x26
	add r1, #0xa
	strh r1, [r4, r0]
	add r2, #0x26
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	add r0, #0xc
	bl ov17_022424D4
	b _0224535E
_0224533C:
	add r0, r2, #0
	add r0, #0x26
	ldrsh r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x26
	sub r1, #0xa
	strh r1, [r4, r0]
	add r2, #0x26
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	add r0, #0xc
	bl ov17_022424D4
	ldr r0, _02245508 ; =0x000006DF
	bl sub_02005748
_0224535E:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245368:
	mov r0, #0xe
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245370:
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	add r0, #0xc
	bl ov17_022424A8
	cmp r0, #1
	bne _022453F4
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245388:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _022453F4
	mov r0, #0
	strb r0, [r4, #0xf]
	mov r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453A2:
	add r0, #0xde
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _022453B8
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	bl ov17_0224365C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
_022453B8:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453C2:
	add r0, r4, #0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _022453E2
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xf2
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453E2:
	mov r0, #0x11
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453EA:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022453F6
_022453F4:
	b _02245500
_022453F6:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245400:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245404:
	ldr r0, _0224550C ; =0x0000010A
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _02245428
	add r0, r4, #0
	add r0, #0x12
	str r0, [sp]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrb r3, [r5, #3]
	ldr r0, [r4, #0]
	bl ov17_022436D0
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245428:
	mov r0, #0x14
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245430:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02245500
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224543E:
	add r0, r1, #1
	strb r0, [r4, #0xc]
_02245442:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245454:
	add r0, #0xdc
	mov r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bge _02245488
	add r0, r3, #0
	add r0, #0xf0
	ldrsh r1, [r4, r0]
	add r0, r3, #0
	add r0, #0xf0
	add r1, #0xa
	strh r1, [r4, r0]
	add r3, #0xf0
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245488:
	ldr r0, [r4, #0]
	add r0, #0xc
	bl ov17_02241B1C
	mov r0, #0x18
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245498:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245500
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454B4:
	add r1, r0, #0
	add r1, #0xde
	ldrsh r1, [r4, r1]
	cmp r1, #0x32
	blt _022454D2
	add r0, #0xe4
	ldr r0, [r4, r0]
	bl ov17_02243690
	ldr r0, [r4, #0]
	ldrb r1, [r5, #3]
	add r0, #0xc
	mov r2, #0
	bl ov17_022424D4
_022454D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454DC:
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bne _02245500
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02245500:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245504: .word 0x0000010E
_02245508: .word 0x000006DF
_0224550C: .word 0x0000010A
	thumb_func_end ov17_0224519C

	thumb_func_start ov17_02245510
ov17_02245510: ; 0x02245510
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245510

	thumb_func_start ov17_02245528
ov17_02245528: ; 0x02245528
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245566:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245566
	ldr r0, [r5, #0]
	ldr r2, _02245580 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245584 ; =ov17_02245588
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245580: .word 0x00007530
_02245584: .word ov17_02245588
	thumb_func_end ov17_02245528

	thumb_func_start ov17_02245588
ov17_02245588: ; 0x02245588
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245658
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022455AC: ; jump table
	.short _022455BE - _022455AC - 2 ; case 0
	.short _022455CE - _022455AC - 2 ; case 1
	.short _022455F0 - _022455AC - 2 ; case 2
	.short _02245602 - _022455AC - 2 ; case 3
	.short _02245606 - _022455AC - 2 ; case 4
	.short _0224560C - _022455AC - 2 ; case 5
	.short _0224563A - _022455AC - 2 ; case 6
	.short _02245654 - _022455AC - 2 ; case 7
	.short _02245658 - _022455AC - 2 ; case 8
_022455BE:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455CE:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _022455EA
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455EA:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455F0:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245676
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245602:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245606:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0224560C:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _0224562E
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	b _02245632
_0224562E:
	mov r0, #7
	strb r0, [r4, #0xc]
_02245632:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224563A:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245676
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245654:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245658:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245676:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245588

	thumb_func_start ov17_02245678
ov17_02245678: ; 0x02245678
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245678

	thumb_func_start ov17_02245690
ov17_02245690: ; 0x02245690
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xf7
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x43
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_022456C6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022456C6
	ldr r0, [r6, #0]
	ldr r2, _022456E0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _022456E4 ; =ov17_022456E8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022456E0: .word 0x00007530
_022456E4: .word ov17_022456E8
	thumb_func_end ov17_02245690

	thumb_func_start ov17_022456E8
ov17_022456E8: ; 0x022456E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _02245944 ; =0x00000106
	add r4, r1, #0
	ldrb r0, [r4, r0]
	mov r7, #0
	add r0, r4, r0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #4
	beq _02245724
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x20
	mul r0, r1
	add r5, r2, r0
	ldr r3, [r4, #0]
	ldr r6, _02245948 ; =0x00000231
	add r2, r7, #0
_02245710:
	ldrb r0, [r3, r6]
	cmp r1, r0
	bne _0224571A
	add r7, r2, #0
	b _02245726
_0224571A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blt _02245710
	b _02245726
_02245724:
	add r5, r7, #0
_02245726:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x11
	bls _0224572E
	b _02245922
_0224572E:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224573A: ; jump table
	.short _0224575E - _0224573A - 2 ; case 0
	.short _0224576C - _0224573A - 2 ; case 1
	.short _022457C0 - _0224573A - 2 ; case 2
	.short _022457D0 - _0224573A - 2 ; case 3
	.short _022457D4 - _0224573A - 2 ; case 4
	.short _022457FC - _0224573A - 2 ; case 5
	.short _02245812 - _0224573A - 2 ; case 6
	.short _02245816 - _0224573A - 2 ; case 7
	.short _02245840 - _0224573A - 2 ; case 8
	.short _02245854 - _0224573A - 2 ; case 9
	.short _02245858 - _0224573A - 2 ; case 10
	.short _02245880 - _0224573A - 2 ; case 11
	.short _02245894 - _0224573A - 2 ; case 12
	.short _02245898 - _0224573A - 2 ; case 13
	.short _022458AA - _0224573A - 2 ; case 14
	.short _022458DC - _0224573A - 2 ; case 15
	.short _022458F8 - _0224573A - 2 ; case 16
	.short _02245922 - _0224573A - 2 ; case 17
_0224575E:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xea
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_0224576C:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _0224577E
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r6, #4
	bl sub_02005748
	b _022457A8
_0224577E:
	cmp r0, #1
	bne _0224578C
	ldr r0, _0224594C ; =0x000006EF
	mov r6, #5
	bl sub_02005748
	b _022457A8
_0224578C:
	cmp r0, #2
	bne _0224579A
	ldr r0, _02245950 ; =0x000006EE
	mov r6, #6
	bl sub_02005748
	b _022457A8
_0224579A:
	mov r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _02245954 ; =0x000006DF
	bl sub_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022457A8:
	ldr r3, _02245958 ; =0x00000107
	ldrb r1, [r5, #3]
	ldr r0, [r4, #0]
	add r2, r6, #0
	add r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457C0:
	ldr r1, _02245958 ; =0x00000107
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02245806
	add r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457D0:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_022457D4:
	ldrb r1, [r5, #0x12]
	cmp r1, #0
	beq _022457F4
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r5, #0x13]
	add r5, #0xc
	ldr r0, [r4, #0]
	add r3, r5, #0
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457F4:
	mov r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457FC:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	beq _02245808
_02245806:
	b _02245940
_02245808:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245812:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245816:
	add r0, r4, #0
	add r0, #0xf4
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245838
	add r2, r4, #0
	add r3, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xe8
	add r3, #0xf8
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245838:
	mov r0, #9
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245840:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245854:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245858:
	add r0, r4, #0
	add r0, #0xf5
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245878
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xee
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245878:
	mov r0, #0xc
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245880:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245894:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245898:
	mov r0, #0x1a
	ldrsh r1, [r5, r0]
	add r0, #0xea
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458AA:
	mov r3, #0x41
	lsl r3, r3, #2
	mov r2, #0x18
	ldrsh r0, [r4, r3]
	ldrsh r2, [r5, r2]
	cmp r0, r2
	bge _022458CA
	add r0, #0xa
	strh r0, [r4, r3]
	ldr r0, [r4, #0]
	ldrsh r3, [r4, r3]
	add r0, #0xc
	add r2, r7, #0
	bl ov17_02241F34
	b _022458D2
_022458CA:
	mov r0, #0x10
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458DC:
	mov r0, #0xd
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xd]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245940
	mov r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add sp, #8
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458F8:
	ldr r0, _02245944 ; =0x00000106
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	bhs _02245918
	add r0, r4, r0
	add r0, #0xf9
	ldrb r0, [r0]
	cmp r0, #4
	beq _02245918
	mov r0, #0xd
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245918:
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245922:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	bl sub_0200DA58
_02245940:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245944: .word 0x00000106
_02245948: .word 0x00000231
_0224594C: .word 0x000006EF
_02245950: .word 0x000006EE
_02245954: .word 0x000006DF
_02245958: .word 0x00000107
	thumb_func_end ov17_022456E8

	thumb_func_start ov17_0224595C
ov17_0224595C: ; 0x0224595C
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_0224595C

	thumb_func_start ov17_02245974
ov17_02245974: ; 0x02245974
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r6]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_022459B2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022459B2
	ldr r0, [r5, #0]
	ldr r2, _022459CC ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _022459D0 ; =ov17_022459D4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022459CC: .word 0x00007530
_022459D0: .word ov17_022459D4
	thumb_func_end ov17_02245974

	thumb_func_start ov17_022459D4
ov17_022459D4: ; 0x022459D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	add r2, r4, #0
	mov r0, #0x2c
	add r2, #0x24
	mul r0, r1
	add r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022459EE
	b _02245B26
_022459EE:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022459FA: ; jump table
	.short _02245A18 - _022459FA - 2 ; case 0
	.short _02245A28 - _022459FA - 2 ; case 1
	.short _02245A4A - _022459FA - 2 ; case 2
	.short _02245A5C - _022459FA - 2 ; case 3
	.short _02245A60 - _022459FA - 2 ; case 4
	.short _02245A84 - _022459FA - 2 ; case 5
	.short _02245A96 - _022459FA - 2 ; case 6
	.short _02245A9A - _022459FA - 2 ; case 7
	.short _02245ABE - _022459FA - 2 ; case 8
	.short _02245AD0 - _022459FA - 2 ; case 9
	.short _02245AD4 - _022459FA - 2 ; case 10
	.short _02245ADA - _022459FA - 2 ; case 11
	.short _02245B08 - _022459FA - 2 ; case 12
	.short _02245B22 - _022459FA - 2 ; case 13
	.short _02245B26 - _022459FA - 2 ; case 14
_02245A18:
	mov r0, #0x1a
	ldrsh r1, [r3, r0]
	add r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A28:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245A44
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4, #0]
	add r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A44:
	mov r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A4A:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A5C:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245A60:
	add r0, r4, #0
	add r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245A7E
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xec
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A7E:
	mov r0, #6
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A84:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A96:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245A9A:
	add r0, r4, #0
	add r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245AB8
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0xf2
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AB8:
	mov r0, #9
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245ABE:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AD0:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245AD4:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245ADA:
	mov r5, #0x42
	lsl r5, r5, #2
	mov r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02245AFC
	add r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	add r0, #0xc
	bl ov17_02241F34
	b _02245B00
_02245AFC:
	mov r0, #0xd
	strb r0, [r4, #0xc]
_02245B00:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B08:
	mov r0, #0xf
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245B44
	mov r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B22:
	add r0, r0, #1
	strb r0, [r4, #0xc]
_02245B26:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245B44:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_022459D4

	thumb_func_start ov17_02245B48
ov17_02245B48: ; 0x02245B48
	push {r3, lr}
	mov r0, #0xf4
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245B48

	thumb_func_start ov17_02245B60
ov17_02245B60: ; 0x02245B60
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x15
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xff
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x45
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r7, #0xc]
	ldr r0, _02245BBC ; =0x00000123
	ldrb r0, [r1, r0]
	strb r0, [r4, #0xd]
	ldrb r0, [r6, #1]
	strb r0, [r4, #0xe]
_02245BA2:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02245BA2
	ldr r0, [r6, #0]
	ldr r2, _02245BC0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _02245BC4 ; =ov17_02245BC8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245BBC: .word 0x00000123
_02245BC0: .word 0x00007530
_02245BC4: .word ov17_02245BC8
	thumb_func_end ov17_02245B60

	thumb_func_start ov17_02245BC8
ov17_02245BC8: ; 0x02245BC8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xd]
	add r2, r4, #0
	mov r1, #0x2c
	add r2, #0x24
	mul r1, r0
	add r2, r2, r1
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _02245BEC
	cmp r1, #1
	beq _02245C0C
	cmp r1, #2
	beq _02245C20
	b _02245C28
_02245BEC:
	mov r1, #0x18
	ldrsh r1, [r2, r1]
	add r2, sp, #0
	bl ov17_0224314C
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C0C:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245C46
	ldrb r0, [r4, #0xc]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C20:
	add r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C28:
	mov r0, #0xc3
	mov r2, #0
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245C46:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02245BC8

	thumb_func_start ov17_02245C4C
ov17_02245C4C: ; 0x02245C4C
	push {r3, lr}
	mov r1, #0xf4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02245C4C

	thumb_func_start ov17_02245C60
ov17_02245C60: ; 0x02245C60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x15
	mov r1, #0x28
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020C4CF4
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _02245C9C ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02245CA0 ; =ov17_02245CA4
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245C9C: .word 0x00007530
_02245CA0: .word ov17_02245CA4
	thumb_func_end ov17_02245C60

	thumb_func_start ov17_02245CA4
ov17_02245CA4: ; 0x02245CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02245D7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245CC2: ; jump table
	.short _02245CCA - _02245CC2 - 2 ; case 0
	.short _02245CEE - _02245CC2 - 2 ; case 1
	.short _02245D30 - _02245CC2 - 2 ; case 2
	.short _02245D7A - _02245CC2 - 2 ; case 3
_02245CCA:
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x27
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #0x46
	bl ov17_022431A0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245CEE:
	add r7, r4, #0
	mov r5, #0
	add r6, r4, #0
	add r7, #0x23
_02245CF6:
	ldr r0, [r4, #0]
	ldr r1, _02245DA0 ; =0x00000231
	add r2, r0, r5
	ldrb r1, [r2, r1]
	bl ov17_0224145C
	str r0, [r6, #0x10]
	ldr r1, [r4, #0]
	add r3, r7, r5
	str r0, [sp]
	add r0, r1, #0
	add r2, r1, r5
	ldr r1, _02245DA0 ; =0x00000231
	ldrb r1, [r2, r1]
	add r2, r5, #0
	bl ov17_0224331C
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _02245CF6
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D30:
	mov r7, #0
	add r6, r7, #0
	add r5, r4, #0
_02245D36:
	add r0, r4, r6
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _02245D4C
	ldr r0, [r5, #0x10]
	bl ov17_022414BC
	cmp r0, #0
	bne _02245D4C
	add r7, r7, #1
_02245D4C:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02245D36
	cmp r7, #4
	bne _02245D9C
	mov r6, #0
	add r5, r4, #0
_02245D5C:
	ldr r0, [r5, #0x10]
	bl ov17_02241494
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02245D5C
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D7A:
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _02245D9C
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245D9C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245DA0: .word 0x00000231
	thumb_func_end ov17_02245CA4

	thumb_func_start ov17_02245DA4
ov17_02245DA4: ; 0x02245DA4
	push {r3, lr}
	mov r0, #0xf8
	str r0, [sp]
	mov r0, #0xc3
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	add r0, r1, r0
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245DA4

	thumb_func_start ov17_02245DBC
ov17_02245DBC: ; 0x02245DBC
	push {r4, r5, r6, lr}
	mov r0, #0x23
	add r5, r1, #0
	lsl r0, r0, #4
	add r4, r2, #0
	add r6, r5, r0
	mov r2, #0x1f
_02245DCA:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _02245DCA
	add r0, r5, #0
	add r0, #0xc
	bl ov17_02241EF0
	add r0, r5, #0
	add r0, #0xc
	bl ov17_022430F8
	add r0, r5, #0
	bl ov17_02242FE8
	add r0, r5, #0
	bl ov17_02241428
	mov r0, #0xc3
	lsl r0, r0, #4
	mov r2, #0
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02245DBC

	thumb_func_start ov17_02245E00
ov17_02245E00: ; 0x02245E00
	push {r3, lr}
	mov r1, #0xf4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_02245E00

	thumb_func_start ov17_02245E14
ov17_02245E14: ; 0x02245E14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x15
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	ldr r2, _02245E84 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	add r0, r5, #0
	add r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0xe7
	ldrb r0, [r0]
	add r5, #0xe6
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _02245E88 ; =ov17_02245E8C
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245E84: .word 0x00007530
_02245E88: .word ov17_02245E8C
	thumb_func_end ov17_02245E14

	thumb_func_start ov17_02245E8C
ov17_02245E8C: ; 0x02245E8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02245EA2
	cmp r0, #1
	beq _02245EC2
	cmp r0, #2
	beq _02245ED4
	b _02245EF8
_02245EA2:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02245EBC
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x14
	mov r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EBC:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EC2:
	ldr r0, [r4, #0]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245F10
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245ED4:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02245EE8
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EE8:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02245F10
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EF8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02245F10:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02245E8C

	.rodata


	.global Unk_ov17_022539E4
Unk_ov17_022539E4: ; 0x022539E4
	.incbin "incbin/overlay17_rodata.bin", 0xC58, 0x108

