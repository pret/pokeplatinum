	.include "macros/function.inc"
	.include "include/unk_0201DD00.inc"

	

	.text


	thumb_func_start sub_0201DD00
sub_0201DD00: ; 0x0201DD00
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	mov r1, #0x14
	add r4, r0, #0
	add r0, r6, #0
	mul r1, r5
	bl sub_02018144
	str r0, [r4, #0]
	mov r6, #0
	str r5, [r4, #4]
	cmp r5, #0
	ble _0201DD38
	add r5, r6, #0
_0201DD26:
	ldr r0, [r4, #0]
	add r0, r0, r5
	bl sub_0201DDE4
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, #0x14
	cmp r6, r0
	blt _0201DD26
_0201DD38:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201DD00

	thumb_func_start sub_0201DD3C
sub_0201DD3C: ; 0x0201DD3C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DDB4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DD3C

	thumb_func_start sub_0201DD54
sub_0201DD54: ; 0x0201DD54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	add r7, r2, #0
	mov ip, r1
	add r6, r3, #0
	add r2, r4, #0
	cmp r0, #0
	ble _0201DD82
	ldr r5, [r5, #0]
	add r3, r5, #0
_0201DD6C:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _0201DD7A
	mov r0, #0x14
	mul r0, r2
	add r4, r5, r0
	b _0201DD82
_0201DD7A:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r0
	blt _0201DD6C
_0201DD82:
	cmp r4, #0
	bne _0201DD8A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201DD8A:
	mov r0, ip
	str r0, [r4, #0]
	str r7, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0xff
	strb r0, [r4, #0x10]
	lsl r1, r1, #4
	strb r0, [r4, #0x11]
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0201DDF4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201DD54

	thumb_func_start sub_0201DDAC
sub_0201DDAC: ; 0x0201DDAC
	ldr r3, _0201DDB0 ; =sub_0201DDE4
	bx r3
	; .align 2, 0
_0201DDB0: .word sub_0201DDE4
	thumb_func_end sub_0201DDAC

	thumb_func_start sub_0201DDB4
sub_0201DDB4: ; 0x0201DDB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0201DDD4
	add r4, r6, #0
_0201DDC2:
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl sub_0201DDE4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0201DDC2
_0201DDD4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201DDB4

	thumb_func_start sub_0201DDD8
sub_0201DDD8: ; 0x0201DDD8
	ldr r3, _0201DDE0 ; =sub_0201DDF4
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bx r3
	; .align 2, 0
_0201DDE0: .word sub_0201DDF4
	thumb_func_end sub_0201DDD8

	thumb_func_start sub_0201DDE4
sub_0201DDE4: ; 0x0201DDE4
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	bx lr
	thumb_func_end sub_0201DDE4

	thumb_func_start sub_0201DDF4
sub_0201DDF4: ; 0x0201DDF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0202414C
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, sp, #0
	add r1, #2
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	ldrb r3, [r4, #0x10]
	ldrb r0, [r2, #2]
	cmp r3, r0
	beq _0201DE22
	add r0, r4, #0
	bl sub_0201DE3C
_0201DE22:
	add r0, sp, #0
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0, #3]
	cmp r1, r0
	beq _0201DE36
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_0201DE68
_0201DE36:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DDF4

	thumb_func_start sub_0201DE3C
sub_0201DE3C: ; 0x0201DE3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201DE94
	ldr r3, [r5, #8]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _0201DE64 ; =0x7FFF0000
	mov r0, #0
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #4
	bl sub_0201DC68
	ldrb r0, [r4]
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_0201DE64: .word 0x7FFF0000
	thumb_func_end sub_0201DE3C

	thumb_func_start sub_0201DE68
sub_0201DE68: ; 0x0201DE68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201DEA0
	ldr r3, [r5, #0xc]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _0201DE90 ; =0xFFFF0000
	mov r0, #1
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #3
	bl sub_0201DC68
	ldrb r0, [r4, #1]
	strb r0, [r5, #0x11]
	pop {r4, r5, r6, pc}
	nop
_0201DE90: .word 0xFFFF0000
	thumb_func_end sub_0201DE68

	thumb_func_start sub_0201DE94
sub_0201DE94: ; 0x0201DE94
	ldr r3, _0201DE9C ; =sub_0201DEAC
	ldr r0, [r0, #4]
	ldrb r1, [r1]
	bx r3
	; .align 2, 0
_0201DE9C: .word sub_0201DEAC
	thumb_func_end sub_0201DE94

	thumb_func_start sub_0201DEA0
sub_0201DEA0: ; 0x0201DEA0
	ldr r3, _0201DEA8 ; =sub_0201DEFC
	ldr r0, [r0, #4]
	ldrb r1, [r1, #1]
	bx r3
	; .align 2, 0
_0201DEA8: .word sub_0201DEFC
	thumb_func_end sub_0201DEA0

	thumb_func_start sub_0201DEAC
sub_0201DEAC: ; 0x0201DEAC
	push {r3, r4}
	cmp r0, #0
	beq _0201DED8
	add r2, r0, #0
	add r2, #0x3c
	beq _0201DED4
	add r3, r0, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r1, r3
	bhs _0201DED4
	add r3, r0, #0
	add r3, #0x42
	ldrh r4, [r3]
	add r3, r2, r4
	ldrh r2, [r2, r4]
	add r3, r3, #4
	mul r1, r2
	add r3, r3, r1
	b _0201DEDA
_0201DED4:
	mov r3, #0
	b _0201DEDA
_0201DED8:
	mov r3, #0
_0201DEDA:
	cmp r3, #0
	bne _0201DEE4
	mov r0, #0
	pop {r3, r4}
	bx lr
_0201DEE4:
	ldr r1, [r0, #0x14]
	add r2, r0, r1
	ldr r1, [r3, #0]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DEAC

	thumb_func_start sub_0201DEFC
sub_0201DEFC: ; 0x0201DEFC
	push {r3, r4}
	cmp r0, #0
	beq _0201DF24
	ldrh r2, [r0, #0x34]
	cmp r2, #0
	beq _0201DF24
	add r4, r0, r2
	beq _0201DF20
	ldrb r2, [r4, #1]
	cmp r1, r2
	bhs _0201DF20
	ldrh r2, [r4, #6]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #4
	mul r1, r2
	add r2, r3, r1
	b _0201DF26
_0201DF20:
	mov r2, #0
	b _0201DF26
_0201DF24:
	mov r2, #0
_0201DF26:
	cmp r2, #0
	bne _0201DF30
	mov r0, #0
	pop {r3, r4}
	bx lr
_0201DF30:
	ldr r1, [r0, #0x38]
	add r1, r0, r1
	ldrh r0, [r2]
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201DEFC

	thumb_func_start sub_0201DF40
sub_0201DF40: ; 0x0201DF40
	ldr r1, [r1, #0]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0xd
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0201DF40

	thumb_func_start sub_0201DF50
sub_0201DF50: ; 0x0201DF50
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0201E140
	cmp r4, #0
	beq _0201DF6E
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl NNS_G3dGetResDataByName
	add r1, r0, #0
	b _0201DF70
_0201DF6E:
	mov r1, #0
_0201DF70:
	cmp r1, #0
	bne _0201DF7A
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_0201DF7A:
	add r0, r4, #0
	bl sub_0201DF40
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0201DF50

	thumb_func_start sub_0201DF84
sub_0201DF84: ; 0x0201DF84
	push {r3, lr}
	ldr r0, [r1, #0]
	mov r1, #7
	lsl r1, r1, #0x1a
	and r1, r0
	lsr r1, r1, #0x1a
	cmp r1, #6
	bhi _0201DFC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201DFA0: ; jump table
	.short _0201DFC2 - _0201DFA0 - 2 ; case 0
	.short _0201DFBA - _0201DFA0 - 2 ; case 1
	.short _0201DFAE - _0201DFA0 - 2 ; case 2
	.short _0201DFB2 - _0201DFA0 - 2 ; case 3
	.short _0201DFB6 - _0201DFA0 - 2 ; case 4
	.short _0201DFC2 - _0201DFA0 - 2 ; case 5
	.short _0201DFBE - _0201DFA0 - 2 ; case 6
_0201DFAE:
	mov r1, #4
	b _0201DFC6
_0201DFB2:
	mov r1, #2
	b _0201DFC6
_0201DFB6:
	mov r1, #1
	b _0201DFC6
_0201DFBA:
	mov r1, #1
	b _0201DFC6
_0201DFBE:
	mov r1, #1
	b _0201DFC6
_0201DFC2:
	mov r0, #0
	pop {r3, pc}
_0201DFC6:
	mov r3, #7
	lsl r3, r3, #0x14
	add r2, r0, #0
	and r2, r3
	lsl r3, r3, #3
	and r0, r3
	lsr r2, r2, #0x14
	lsr r0, r0, #0x17
	lsl r2, r2, #4
	lsl r0, r0, #4
	mul r0, r2
	bl _u32_div_f
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201DF84

	thumb_func_start sub_0201DFE4
sub_0201DFE4: ; 0x0201DFE4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0201E140
	cmp r4, #0
	beq _0201E002
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl NNS_G3dGetResDataByName
	add r1, r0, #0
	b _0201E004
_0201E002:
	mov r1, #0
_0201E004:
	add r0, r4, #0
	bl sub_0201DF84
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201DFE4