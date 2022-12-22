	.include "macros/function.inc"
	.include "include/ov77_021D6670.inc"

	

	.text


	thumb_func_start ov77_021D6670
ov77_021D6670: ; 0x021D6670
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D669C ; =0x021D7920
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #1
	mov r1, #0x4c
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D669C: .word 0x021D7920
	thumb_func_end ov77_021D6670

	thumb_func_start ov77_021D66A0
ov77_021D66A0: ; 0x021D66A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r6, r2, #0
	str r1, [sp, #0xc]
	mov r2, #0x4b
	str r1, [sp, #0x10]
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r2]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, r6, #0
	bl sub_020093B4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	str r6, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov77_021D66A0

	thumb_func_start ov77_021D670C
ov77_021D670C: ; 0x021D670C
	push {r4, lr}
	mov r1, #0x7d
	mov r0, #0x4c
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x7d
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	add r0, r4, #0
	bl ov77_021D6800
	add r0, r4, #0
	bl ov77_021D6964
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov77_021D670C

	thumb_func_start ov77_021D6734
ov77_021D6734: ; 0x021D6734
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4c
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	mov r0, #0x4c
	add r1, r6, #0
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #4]
	bl memset
	str r5, [r4, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6734

	thumb_func_start ov77_021D6760
ov77_021D6760: ; 0x021D6760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _021D6786
	add r4, r6, #0
_021D676E:
	ldr r0, [r5, #4]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D677C
	bl sub_0200DA58
_021D677C:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _021D676E
_021D6786:
	ldr r0, [r5, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6760

	thumb_func_start ov77_021D6794
ov77_021D6794: ; 0x021D6794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r4, r0
	blt _021D67A4
	bl sub_02022974
_021D67A4:
	mov r0, #0xc
	ldr r1, [r5, #4]
	mul r0, r4
	add r0, r1, r0
	add r0, r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D6794

	thumb_func_start ov77_021D67B0
ov77_021D67B0: ; 0x021D67B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov77_021D691C
	mov r6, #0x73
	mov r4, #0
	lsl r6, r6, #2
_021D67BE:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67CC
	bl sub_0200DA58
_021D67CC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D67BE
	mov r6, #0x55
	mov r4, #0
	mov r7, #0xc
	lsl r6, r6, #2
_021D67DE:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67EE
	bl sub_0200DA58
_021D67EE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021D67DE
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D67B0

	thumb_func_start ov77_021D6800
ov77_021D6800: ; 0x021D6800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	add r7, r0, #0
	add r3, r1, #0
	ldr r0, _021D6910 ; =0xFFCFFFEF
	mov r1, #0x10
	and r3, r0
	orr r3, r1
	str r3, [r2, #0]
	ldr r3, _021D6914 ; =0x04001000
	ldr r2, [r3, #0]
	and r0, r2
	orr r0, r1
	str r0, [r3, #0]
	bl ov77_021D6670
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0xa
	add r1, r7, #4
	mov r2, #0x4c
	bl sub_020095C4
	ldr r4, _021D6918 ; =0x021D7930
	str r0, [r7, #0]
	mov r6, #0
	add r5, r7, #0
_021D6854:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #0x4c
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021D6854
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #4
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r7, r0]
	mov r1, #0x80
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #5
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #6
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r7, r1]
	sub r1, #0xc
	ldr r0, [r7, r1]
	bl sub_0200A328
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	bl sub_0200A5C8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6910: .word 0xFFCFFFEF
_021D6914: .word 0x04001000
_021D6918: .word 0x021D7930
	thumb_func_end ov77_021D6800

	thumb_func_start ov77_021D691C
ov77_021D691C: ; 0x021D691C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D693A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D693A
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov77_021D691C

	thumb_func_start ov77_021D6964
ov77_021D6964: ; 0x021D6964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r7, r0, #0
	mov r6, #0
	add r4, r6, #0
	add r5, r7, #0
_021D6970:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #0x30
	bl ov77_021D66A0
	add r0, sp, #0
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl sub_02021AA0
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #2
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, r0
	add r5, #0xc
	cmp r6, #0xa
	blt _021D6970
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6964

	thumb_func_start ov77_021D69B4
ov77_021D69B4: ; 0x021D69B4
	ldr r3, _021D69BC ; =sub_020219F8
	ldr r0, [r0, #0]
	bx r3
	nop
_021D69BC: .word sub_020219F8
	thumb_func_end ov77_021D69B4

	thumb_func_start ov77_021D69C0
ov77_021D69C0: ; 0x021D69C0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r1, #0xb4
	bne _021D69E2
	mov r2, #3
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov77_021D6A0C
	b _021D69FC
_021D69E2:
	ldr r0, _021D6A08 ; =0x0000011D
	cmp r1, r0
	bne _021D69FC
	mov r2, #3
	add r0, #0xb7
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov77_021D6A0C
_021D69FC:
	add r0, r4, #0
	bl ov77_021D69B4
	add sp, #8
	pop {r4, pc}
	nop
_021D6A08: .word 0x0000011D
	thumb_func_end ov77_021D69C0

	thumb_func_start ov77_021D6A0C
ov77_021D6A0C: ; 0x021D6A0C
	push {r4, lr}
	add r4, r0, #0
	strb r2, [r4]
	ldr r2, _021D6A3C ; =0xFFFFFFF8
	strb r3, [r4, #1]
	add r2, sp
	ldrb r0, [r2, #0x10]
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #3]
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	add r1, r4, #0
	mov r2, #0xa
	strb r0, [r4, #5]
	ldr r0, _021D6A40 ; =ov77_021D6B0C
	bl sub_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_021D6A3C: .word 0xFFFFFFF8
_021D6A40: .word ov77_021D6B0C
	thumb_func_end ov77_021D6A0C

	thumb_func_start ov77_021D6A44
ov77_021D6A44: ; 0x021D6A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp]
	cmp r2, #0
	bne _021D6A54
	mov r7, #0x40
	b _021D6A56
_021D6A54:
	mov r7, #0x20
_021D6A56:
	mov r5, #0
	cmp r6, #0
	bls _021D6AD2
_021D6A5C:
	ldr r0, [sp]
	mov r1, #0xa
	bl ov77_021D6ADC
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x19
	sub r2, r2, r1
	mov r0, #0x19
	ror r2, r0
	add r0, r1, r2
	add r0, #0x40
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1a
	sub r2, r2, r1
	mov r0, #0x1a
	ror r2, r0
	add r0, r1, r2
	add r0, r7, r0
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_02021C50
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _021D6AD8 ; =ov77_021D6B48
	add r1, r4, #0
	mov r2, #0x14
	bl sub_0200D9E8
	str r0, [r4, #8]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _021D6A5C
_021D6AD2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6AD8: .word ov77_021D6B48
	thumb_func_end ov77_021D6A44

	thumb_func_start ov77_021D6ADC
ov77_021D6ADC: ; 0x021D6ADC
	push {r4, lr}
	mov r4, #0
	mov r2, #0xc
_021D6AE2:
	add r1, r4, #0
	mul r1, r2
	add r3, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021D6AFA
	mov r0, #1
	strb r0, [r3]
	mov r0, #0
	strb r0, [r3, #1]
	add r0, r3, #0
	pop {r4, pc}
_021D6AFA:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0xa
	blo _021D6AE2
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov77_021D6ADC

	thumb_func_start ov77_021D6B0C
ov77_021D6B0C: ; 0x021D6B0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #4]
	add r5, r0, #0
	add r0, r1, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #1]
	cmp r1, r0
	blo _021D6B44
	ldrb r1, [r4]
	ldrb r2, [r4, #5]
	ldr r0, [r4, #0xc]
	bl ov77_021D6A44
	mov r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _021D6B44
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #8]
_021D6B44:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6B0C

	thumb_func_start ov77_021D6B48
ov77_021D6B48: ; 0x021D6B48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl sub_02021C50
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0x50
	blo _021D6B9C
	add r0, r5, #0
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
_021D6B9C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D6B48

	thumb_func_start ov77_021D6BA0
ov77_021D6BA0: ; 0x021D6BA0
	ldr r3, _021D6BA8 ; =ov77_021D6BAC
	add r2, r1, #0
	mov r1, #2
	bx r3
	; .align 2, 0
_021D6BA8: .word ov77_021D6BAC
	thumb_func_end ov77_021D6BA0

	thumb_func_start ov77_021D6BAC
ov77_021D6BAC: ; 0x021D6BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r4, _021D6C3C ; =0x00000000
	beq _021D6C36
_021D6BBE:
	ldr r0, [sp, #4]
	ldr r1, [r6, #0]
	bl ov77_021D6ADC
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	mov r1, #0xe0
	bl _s32_div_f
	add r1, #0xa
	lsl r0, r1, #0xc
	str r0, [sp, #8]
	bl sub_0201D2E8
	mov r1, #0x38
	bl _s32_div_f
	add r1, #0xfa
	lsl r0, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #4]
	bne _021D6C1A
	mov r1, #1
	bl sub_02021CAC
	b _021D6C20
_021D6C1A:
	mov r1, #0
	bl sub_02021CAC
_021D6C20:
	ldr r0, _021D6C40 ; =ov77_021D6C44
	add r1, r5, #0
	mov r2, #0x14
	bl sub_0200D9E8
	str r0, [r5, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _021D6BBE
_021D6C36:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6C3C: .word 0x00000000
_021D6C40: .word ov77_021D6C44
	thumb_func_end ov77_021D6BAC

	thumb_func_start ov77_021D6C44
ov77_021D6C44: ; 0x021D6C44
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4, #1]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrb r1, [r4, #1]
	cmp r1, #8
	blo _021D6C6C
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
_021D6C6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6C44

	.rodata


	.global Unk_ov77_021D7918
Unk_ov77_021D7918: ; 0x021D7918
	.incbin "incbin/overlay77_rodata.bin", 0x650, 0x654 - 0x650

	.global Unk_ov77_021D791C
Unk_ov77_021D791C: ; 0x021D791C
	.incbin "incbin/overlay77_rodata.bin", 0x654, 0x658 - 0x654

	.global Unk_ov77_021D7920
Unk_ov77_021D7920: ; 0x021D7920
	.incbin "incbin/overlay77_rodata.bin", 0x658, 0x668 - 0x658

	.global Unk_ov77_021D7930
Unk_ov77_021D7930: ; 0x021D7930
	.incbin "incbin/overlay77_rodata.bin", 0x668, 0x4

