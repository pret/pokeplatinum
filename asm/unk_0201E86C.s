	.include "macros/function.inc"
	.include "include/unk_0201E86C.inc"

	

	.text


	thumb_func_start sub_0201E86C
sub_0201E86C: ; 0x0201E86C
	ldr r1, _0201E880 ; =0x04001000
	ldr r2, [r1, #0]
	ldr r1, _0201E884 ; =0x00300010
	lsl r3, r1, #0x16
	ldr r3, [r3, #0]
	and r2, r1
	and r1, r3
	ldr r3, _0201E888 ; =sub_0201E88C
	bx r3
	nop
_0201E880: .word 0x04001000
_0201E884: .word 0x00300010
_0201E888: .word sub_0201E88C
	thumb_func_end sub_0201E86C

	thumb_func_start sub_0201E88C
sub_0201E88C: ; 0x0201E88C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0201E94C ; =0x021C0760
	str r1, [sp]
	ldr r0, [r0, #0]
	str r2, [sp, #4]
	cmp r0, #0
	bne _0201E946
	ldr r0, [r5, #0xc]
	mov r1, #0x3c
	bl sub_02018144
	add r1, r0, #0
	ldr r0, _0201E94C ; =0x021C0760
	mov r2, #0x3c
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C4B4C
	ldr r1, _0201E94C ; =0x021C0760
	ldr r2, [r5, #0]
	ldr r0, [r1, #0]
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	ldr r0, [r5, #0xc]
	ldr r2, [r1, #4]
	mov r1, #0x54
	mul r1, r2
	bl sub_02018144
	ldr r7, _0201E94C ; =0x021C0760
	mov r6, #0
	ldr r1, [r7, #0]
	str r0, [r1, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _0201E8EE
	add r4, r6, #0
_0201E8DA:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	add r0, r0, r4
	bl sub_0201EED4
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0x54
	cmp r6, r0
	blt _0201E8DA
_0201E8EE:
	ldr r0, [sp]
	bl sub_0201F6F4
	ldr r1, _0201E94C ; =0x021C0760
	ldr r1, [r1, #0]
	str r0, [r1, #0x2c]
	ldr r0, [sp, #4]
	bl sub_0201F6F4
	ldr r2, _0201E94C ; =0x021C0760
	mov r3, #1
	ldr r1, [r2, #0]
	lsl r3, r3, #0x1a
	str r0, [r1, #0x30]
	ldr r0, [r3, #0]
	ldr r1, _0201E950 ; =0xFFCFFFEF
	add r4, r0, #0
	ldr r0, [sp]
	and r4, r1
	orr r0, r4
	str r0, [r3, #0]
	ldr r3, _0201E954 ; =0x04001000
	ldr r0, [r3, #0]
	and r1, r0
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r3, #0]
	ldr r1, [r2, #0]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	ldr r1, _0201E94C ; =0x021C0760
	add r4, r0, #0
	ldr r1, [r1, #0]
	ldr r0, [r5, #8]
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0201F47C
_0201E946:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E94C: .word 0x021C0760
_0201E950: .word 0xFFCFFFEF
_0201E954: .word 0x04001000
	thumb_func_end sub_0201E88C

	thumb_func_start sub_0201E958
sub_0201E958: ; 0x0201E958
	push {r3, lr}
	ldr r0, _0201E990 ; =0x021C0760
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201E98E
	ldr r0, [r0, #0x34]
	bl sub_0201F4E4
	ldr r0, _0201E990 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0201F4E4
	bl sub_0201EBA0
	ldr r0, _0201E990 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201E990 ; =0x021C0760
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201E990 ; =0x021C0760
	mov r1, #0
	str r1, [r0, #0]
_0201E98E:
	pop {r3, pc}
	; .align 2, 0
_0201E990: .word 0x021C0760
	thumb_func_end sub_0201E958

	thumb_func_start sub_0201E994
sub_0201E994: ; 0x0201E994
	push {r3, lr}
	ldr r0, _0201E9BC ; =0x021C0760
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0]
	str r2, [r1, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x34]
	bl sub_0201F524
	ldr r0, _0201E9BC ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0201F524
	bl sub_0201F30C
	pop {r3, pc}
	nop
_0201E9BC: .word 0x021C0760
	thumb_func_end sub_0201E994

	thumb_func_start sub_0201E9C0
sub_0201E9C0: ; 0x0201E9C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r3, r1, #0
	cmp r2, #1
	add r0, sp, #4
	bne _0201E9F6
	str r0, [sp]
	ldr r0, _0201EA20 ; =0x021C0760
	add r2, r3, #0
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	add r3, sp, #8
	bl sub_0201F818
	ldr r3, [sp, #4]
	cmp r3, #0
	ble _0201EA1C
	mov r2, #0
	str r2, [sp]
	ldr r1, [sp, #8]
	mov r0, #1
	bl sub_0201F18C
	add sp, #0xc
	pop {r3, r4, pc}
_0201E9F6:
	str r0, [sp]
	ldr r0, _0201EA20 ; =0x021C0760
	add r2, r3, #0
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	add r3, sp, #8
	bl sub_0201F818
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201EA1C
	str r0, [sp]
	mov r1, #0
	ldr r2, [sp, #8]
	mov r0, #2
	add r3, r1, #0
	bl sub_0201F18C
_0201EA1C:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0201EA20: .word 0x021C0760
	thumb_func_end sub_0201E9C0

	thumb_func_start sub_0201EA24
sub_0201EA24: ; 0x0201EA24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0201EAD8
	cmp r0, #1
	bne _0201EA36
	bl sub_02022974
_0201EA36:
	bl sub_0201F2D0
	add r4, r0, #0
	bne _0201EA46
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EA46:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201EEF8
	cmp r0, #0
	bne _0201EA56
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EA56:
	add r0, r4, #0
	bl sub_0201EF68
	cmp r0, #0
	bne _0201EA6A
	ldr r0, [r4, #0xc]
	bl sub_0201EB50
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EA6A:
	ldr r0, _0201EA78 ; =0x021C0760
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201EA78: .word 0x021C0760
	thumb_func_end sub_0201EA24

	thumb_func_start sub_0201EA7C
sub_0201EA7C: ; 0x0201EA7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0201EAD8
	cmp r0, #1
	bne _0201EA8E
	bl sub_02022974
_0201EA8E:
	bl sub_0201F2D0
	add r4, r0, #0
	bne _0201EA9E
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EA9E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201EEF8
	cmp r0, #0
	bne _0201EAAE
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EAAE:
	mov r0, #1
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl sub_0201EF68
	cmp r0, #0
	bne _0201EAC6
	ldr r0, [r4, #0xc]
	bl sub_0201EB50
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EAC6:
	ldr r0, _0201EAD4 ; =0x021C0760
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201EAD4: .word 0x021C0760
	thumb_func_end sub_0201EA7C

	thumb_func_start sub_0201EAD8
sub_0201EAD8: ; 0x0201EAD8
	push {r3, r4}
	ldr r1, _0201EB04 ; =0x021C0760
	mov r2, #0
	ldr r4, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0201EAFE
	ldr r3, [r4, #0]
_0201EAE8:
	ldr r1, [r3, #0xc]
	cmp r0, r1
	bne _0201EAF4
	mov r0, #1
	pop {r3, r4}
	bx lr
_0201EAF4:
	ldr r1, [r4, #4]
	add r2, r2, #1
	add r3, #0x54
	cmp r2, r1
	blt _0201EAE8
_0201EAFE:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0201EB04: .word 0x021C0760
	thumb_func_end sub_0201EAD8

	thumb_func_start sub_0201EB08
sub_0201EB08: ; 0x0201EB08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bne _0201EB14
	bl sub_02022974
_0201EB14:
	add r0, r4, #0
	bl sub_0201F03C
	add r4, r0, #0
	bne _0201EB22
	bl sub_02022974
_0201EB22:
	str r5, [r4, #0]
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201EB38
	ldr r1, [r4, #0x34]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x13
	bl sub_0201DC68
_0201EB38:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201EB4C
	ldr r1, [r4, #0x38]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x23
	bl sub_0201DC68
_0201EB4C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201EB08

	thumb_func_start sub_0201EB50
sub_0201EB50: ; 0x0201EB50
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r5, #1
	mov r7, #0
_0201EB58:
	add r0, r6, #0
	bl sub_0201F03C
	add r4, r0, #0
	bne _0201EB66
	bl sub_02022974
_0201EB66:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #4
	bne _0201EB7A
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201ED1C
	b _0201EB7C
_0201EB7A:
	add r5, r7, #0
_0201EB7C:
	cmp r5, #0
	bne _0201EB58
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0201EB9A
	add r0, r4, #0
	bl sub_0201F024
	ldr r0, _0201EB9C ; =0x021C0760
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	str r0, [r1, #8]
_0201EB9A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201EB9C: .word 0x021C0760
	thumb_func_end sub_0201EB50

	thumb_func_start sub_0201EBA0
sub_0201EBA0: ; 0x0201EBA0
	push {r4, r5, r6, lr}
	ldr r6, _0201EBD8 ; =0x021C0760
	mov r4, #0
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0201EBD6
	add r5, r4, #0
_0201EBB0:
	ldr r1, [r1, #0]
	add r0, r1, r5
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0201EBCA
	add r0, r1, r5
	bl sub_0201F024
	ldr r1, [r6, #0]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	str r0, [r1, #8]
_0201EBCA:
	ldr r1, [r6, #0]
	add r4, r4, #1
	ldr r0, [r1, #4]
	add r5, #0x54
	cmp r4, r0
	blt _0201EBB0
_0201EBD6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201EBD8: .word 0x021C0760
	thumb_func_end sub_0201EBA0

	thumb_func_start sub_0201EBDC
sub_0201EBDC: ; 0x0201EBDC
	push {r4, lr}
	bl sub_0201F03C
	add r4, r0, #0
	bne _0201EBEA
	bl sub_02022974
_0201EBEA:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201EBF8
	mov r0, #0
	pop {r4, pc}
_0201EBF8:
	add r4, #0x10
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201EBDC

	thumb_func_start sub_0201EC00
sub_0201EC00: ; 0x0201EC00
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r1, #0
	bl sub_0201F03C
	add r4, r0, #0
	bne _0201EC12
	bl sub_02022974
_0201EC12:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201EC22
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EC22:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r5, #0
	bl sub_0201F0B0
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #3
	bne _0201EC46
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201EC46:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x3c
	strb r1, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_0201F15C
	mov r0, #1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl sub_0201F26C
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_0201F18C
	add r4, #0x10
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201EC00

	thumb_func_start sub_0201EC84
sub_0201EC84: ; 0x0201EC84
	push {r3, r4, r5, lr}
	sub sp, #0x18
	bl sub_0201EF1C
	add r4, r0, #0
	bne _0201EC94
	bl sub_02022974
_0201EC94:
	bl sub_0201F2D0
	add r5, r0, #0
	bne _0201ECA0
	bl sub_02022974
_0201ECA0:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #3
	beq _0201ECB0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201ECB0:
	add r3, r5, #0
	mov r2, #0xa
_0201ECB4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0201ECB4
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r5, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r5, #4]
	mov r1, #1
	tst r1, r0
	beq _0201ECD4
	ldr r3, [r5, #0x4c]
	b _0201ECD6
_0201ECD4:
	ldr r3, [r5, #0x50]
_0201ECD6:
	add r1, sp, #0xc
	str r1, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl sub_0201F0B0
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201F15C
	mov r0, #1
	str r0, [r5, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x50]
	add r0, r5, #0
	bl sub_0201F26C
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_0201F18C
	add r5, #0x10
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201EC84

	thumb_func_start sub_0201ED1C
sub_0201ED1C: ; 0x0201ED1C
	push {r4, r5, r6, lr}
	ldr r2, _0201ED90 ; =0x021C0760
	mov r1, #0
	ldr r5, [r2, #0]
	ldr r4, [r5, #4]
	cmp r4, #0
	ble _0201ED5A
	ldr r2, [r5, #0]
	add r3, r1, #0
_0201ED2E:
	add r6, r2, #0
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #3
	beq _0201ED44
	ldr r6, [r5, #0]
	add r6, r6, r3
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #4
	bne _0201ED4E
_0201ED44:
	ldr r6, [r5, #0]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _0201ED5A
_0201ED4E:
	ldr r6, [r5, #4]
	add r1, r1, #1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _0201ED2E
_0201ED5A:
	cmp r1, r4
	bge _0201ED8E
	mov r0, #0x54
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl sub_0201F670
	ldr r0, _0201ED90 ; =0x021C0760
	ldr r1, [r0, #0]
	ldr r2, [r1, #0]
	add r2, #0x3c
	ldrb r1, [r2, r4]
	cmp r1, #3
	bne _0201ED80
	mov r0, #2
	strb r0, [r2, r4]
	pop {r4, r5, r6, pc}
_0201ED80:
	mov r1, #0
	strb r1, [r2, r4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add r0, r0, r4
	bl sub_0201EED4
_0201ED8E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201ED90: .word 0x021C0760
	thumb_func_end sub_0201ED1C

	thumb_func_start sub_0201ED94
sub_0201ED94: ; 0x0201ED94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r1, #0
	bne _0201EDCE
	add r1, r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_0201F76C
	add r7, r0, #0
	beq _0201EE1E
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201F7BC
	strh r5, [r4, #8]
	str r6, [r4, #0]
	cmp r5, #1
	bne _0201EDC4
	ldr r0, [sp, #0x14]
	b _0201EDC6
_0201EDC4:
	ldr r0, [sp, #0x10]
_0201EDC6:
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0xa]
	b _0201EE1E
_0201EDCE:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r6, #0
	bl sub_0201F0B0
	add r7, r0, #0
	beq _0201EE1E
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_0201F18C
	strh r5, [r4, #8]
	cmp r5, #1
	bne _0201EE0A
	ldr r0, [sp, #0xc]
	str r0, [r4, #0]
	ldr r0, _0201EE24 ; =0x021C0760
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	b _0201EE16
_0201EE0A:
	ldr r0, [sp, #8]
	str r0, [r4, #0]
	ldr r0, _0201EE24 ; =0x021C0760
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
_0201EE16:
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #0xa]
_0201EE1E:
	add r0, r7, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201EE24: .word 0x021C0760
	thumb_func_end sub_0201ED94

	thumb_func_start sub_0201EE28
sub_0201EE28: ; 0x0201EE28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0201EE96
	ldrh r1, [r4, #8]
	mov r0, #1
	tst r0, r1
	beq _0201EE64
	ldr r1, _0201EE98 ; =0x021C0760
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	add r5, r0, #0
	ldr r0, _0201EE98 ; =0x021C0760
	ldr r1, [r4, #4]
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	sub r0, r1, r0
	ldr r1, [r2, #0x2c]
	bl sub_0201F754
	ldr r2, _0201EE98 ; =0x021C0760
	add r1, r5, #0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x34]
	bl sub_0201F620
_0201EE64:
	ldrh r1, [r4, #8]
	mov r0, #2
	tst r0, r1
	beq _0201EE96
	ldr r1, _0201EE98 ; =0x021C0760
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	add r5, r0, #0
	ldr r0, _0201EE98 ; =0x021C0760
	ldr r1, [r4, #4]
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x20]
	sub r0, r1, r0
	ldr r1, [r2, #0x30]
	bl sub_0201F754
	ldr r2, _0201EE98 ; =0x021C0760
	add r1, r5, #0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x38]
	bl sub_0201F620
_0201EE96:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201EE98: .word 0x021C0760
	thumb_func_end sub_0201EE28

	thumb_func_start sub_0201EE9C
sub_0201EE9C: ; 0x0201EE9C
	push {r3, lr}
	ldr r0, _0201EEB4 ; =0x021C0760
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201EEAA
	bl sub_02022974
_0201EEAA:
	ldr r1, _0201EEB4 ; =0x021C0760
	mov r2, #0
	ldr r0, [r1, #0]
	str r2, [r1, #0]
	pop {r3, pc}
	; .align 2, 0
_0201EEB4: .word 0x021C0760
	thumb_func_end sub_0201EE9C

	thumb_func_start sub_0201EEB8
sub_0201EEB8: ; 0x0201EEB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201EED0 ; =0x021C0760
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201EEC8
	bl sub_02022974
_0201EEC8:
	ldr r0, _0201EED0 ; =0x021C0760
	str r4, [r0, #0]
	pop {r4, pc}
	nop
_0201EED0: .word 0x021C0760
	thumb_func_end sub_0201EEB8

	thumb_func_start sub_0201EED4
sub_0201EED4: ; 0x0201EED4
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	strb r2, [r0, #8]
	sub r1, r2, #1
	str r1, [r0, #0xc]
	str r2, [r0, #0x34]
	add r1, r0, #0
	str r2, [r0, #0x38]
	add r1, #0x3c
	strb r2, [r1]
	str r2, [r0, #0x40]
	ldr r3, _0201EEF4 ; =sub_020A818C
	add r0, #0x10
	bx r3
	nop
_0201EEF4: .word sub_020A818C
	thumb_func_end sub_0201EED4

	thumb_func_start sub_0201EEF8
sub_0201EEF8: ; 0x0201EEF8
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldr r2, [r0, #8]
	str r2, [r1, #0xc]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r1, #0]
	ldr r2, [r2, #0xc]
	lsr r2, r2, #8
	strb r2, [r1, #8]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0x44]
	mov r0, #0
	str r0, [r1, #0x48]
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r0, #1
	bx lr
	thumb_func_end sub_0201EEF8

	thumb_func_start sub_0201EF1C
sub_0201EF1C: ; 0x0201EF1C
	push {r3, r4, r5, r6}
	ldr r2, _0201EF64 ; =0x021C0760
	mov r1, #0
	ldr r5, [r2, #0]
	ldr r4, [r5, #4]
	cmp r4, #0
	ble _0201EF4E
	ldr r2, [r5, #0]
	add r3, r1, #0
_0201EF2E:
	add r6, r2, #0
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #0
	beq _0201EF42
	ldr r6, [r5, #0]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _0201EF4E
_0201EF42:
	ldr r6, [r5, #4]
	add r1, r1, #1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _0201EF2E
_0201EF4E:
	cmp r1, r4
	blt _0201EF58
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0201EF58:
	mov r0, #0x54
	ldr r2, [r5, #0]
	mul r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0201EF64: .word 0x021C0760
	thumb_func_end sub_0201EF1C

	thumb_func_start sub_0201EF68
sub_0201EF68: ; 0x0201EF68
	push {r3, lr}
	ldrb r1, [r0, #8]
	mov r2, #1
	cmp r1, #0
	beq _0201EF7A
	mov r1, #2
	add r0, #0x3c
	strb r1, [r0]
	b _0201EF94
_0201EF7A:
	add r1, r0, #0
	add r1, #0x3c
	strb r2, [r1]
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _0201EF8E
	bl sub_0201EF98
	add r2, r0, #0
	b _0201EF94
_0201EF8E:
	bl sub_0201EFCC
	add r2, r0, #0
_0201EF94:
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end sub_0201EF68

	thumb_func_start sub_0201EF98
sub_0201EF98: ; 0x0201EF98
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r0, [r0, #0x10]
	add r2, sp, #4
	add r3, sp, #0
	bl sub_0201F76C
	add r4, r0, #0
	beq _0201EFC4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_0201F09C
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r0, [r0, #0x10]
	bl sub_0201F7BC
_0201EFC4:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201EF98

	thumb_func_start sub_0201EFCC
sub_0201EFCC: ; 0x0201EFCC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r3, [r4, #0]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl sub_0201F0B0
	cmp r0, #0
	bne _0201EFF2
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_0201EFF2:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_0201F15C
	mov r0, #1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl sub_0201F1F4
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_0201F18C
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end sub_0201EFCC

	thumb_func_start sub_0201F024
sub_0201F024: ; 0x0201F024
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _0201F032
	bl sub_0201F670
_0201F032:
	add r0, r4, #0
	bl sub_0201EED4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201F024

	thumb_func_start sub_0201F03C
sub_0201F03C: ; 0x0201F03C
	push {r4, r5}
	ldr r2, _0201F070 ; =0x021C0760
	mov r1, #0
	ldr r5, [r2, #0]
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0201F068
	ldr r2, [r5, #0]
	add r4, r2, #0
_0201F04E:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0201F05E
	mov r0, #0x54
	mul r0, r1
	add r0, r2, r0
	pop {r4, r5}
	bx lr
_0201F05E:
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r4, #0x54
	cmp r1, r3
	blt _0201F04E
_0201F068:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0201F070: .word 0x021C0760
	thumb_func_end sub_0201F03C

	thumb_func_start sub_0201F074
sub_0201F074: ; 0x0201F074
	cmp r1, #1
	bne _0201F080
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r2, [r1, #0]
	b _0201F084
_0201F080:
	ldr r1, _0201F094 ; =0x04001000
	ldr r2, [r1, #0]
_0201F084:
	ldr r1, _0201F098 ; =0x00300010
	and r2, r1
	ldr r1, [r0, #0]
	str r2, [r1, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx lr
	nop
_0201F094: .word 0x04001000
_0201F098: .word 0x00300010
	thumb_func_end sub_0201F074

	thumb_func_start sub_0201F09C
sub_0201F09C: ; 0x0201F09C
	push {r3, lr}
	str r1, [r0, #0x34]
	str r2, [r0, #0x38]
	ldrb r1, [r0, #8]
	cmp r1, #0
	bne _0201F0AC
	bl sub_0201F1F4
_0201F0AC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201F09C

	thumb_func_start sub_0201F0B0
sub_0201F0B0: ; 0x0201F0B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r6, r2, #0
	str r0, [sp, #0x1c]
	mov r2, #1
	add r0, r5, #0
	add r4, r1, #0
	str r3, [sp]
	ldr r7, [sp, #0x18]
	tst r0, r2
	beq _0201F108
	ldr r1, _0201F158 ; =0x021C0760
	add r0, r3, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x2c]
	bl sub_0201F734
	ldr r1, _0201F158 ; =0x021C0760
	str r0, [r7, #0]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	ldr r1, _0201F158 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x34]
	bl sub_0201F598
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0]
	cmp r0, r1
	bne _0201F0FC
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F0FC:
	ldr r1, _0201F158 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x2c]
	bl sub_0201F764
	str r0, [r4, #0]
_0201F108:
	mov r0, #2
	tst r0, r5
	beq _0201F152
	ldr r1, _0201F158 ; =0x021C0760
	ldr r0, [sp]
	ldr r1, [r1, #0]
	mov r2, #1
	ldr r1, [r1, #0x30]
	bl sub_0201F734
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r1, _0201F158 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	ldr r1, _0201F158 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x38]
	bl sub_0201F598
	mov r1, #0
	mvn r1, r1
	str r0, [r6, #0]
	cmp r0, r1
	bne _0201F146
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F146:
	ldr r1, _0201F158 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x30]
	bl sub_0201F764
	str r0, [r6, #0]
_0201F152:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F158: .word 0x021C0760
	thumb_func_end sub_0201F0B0

	thumb_func_start sub_0201F15C
sub_0201F15C: ; 0x0201F15C
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r3, #1
	tst r3, r4
	beq _0201F170
	ldr r3, _0201F188 ; =0x021C0760
	ldr r3, [r3, #0]
	ldr r3, [r3, #0x1c]
	add r1, r1, r3
	str r1, [r0, #0x34]
_0201F170:
	ldr r3, [r0, #4]
	mov r1, #2
	tst r1, r3
	beq _0201F182
	ldr r1, _0201F188 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x20]
	add r1, r2, r1
	str r1, [r0, #0x38]
_0201F182:
	pop {r3, r4}
	bx lr
	nop
_0201F188: .word 0x021C0760
	thumb_func_end sub_0201F15C

	thumb_func_start sub_0201F18C
sub_0201F18C: ; 0x0201F18C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	tst r0, r5
	beq _0201F1C0
	ldr r1, _0201F1F0 ; =0x021C0760
	add r0, r3, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	ldr r1, _0201F1F0 ; =0x021C0760
	add r7, r0, #0
	ldr r1, [r1, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	ldr r2, _0201F1F0 ; =0x021C0760
	add r1, r7, #0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x34]
	bl sub_0201F53C
_0201F1C0:
	mov r0, #2
	tst r0, r5
	beq _0201F1EC
	ldr r1, _0201F1F0 ; =0x021C0760
	ldr r0, [sp, #0x18]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	ldr r1, _0201F1F0 ; =0x021C0760
	add r4, r0, #0
	ldr r1, [r1, #0]
	add r0, r6, #0
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	ldr r2, _0201F1F0 ; =0x021C0760
	add r1, r4, #0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x38]
	bl sub_0201F53C
_0201F1EC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F1F0: .word 0x021C0760
	thumb_func_end sub_0201F18C

	thumb_func_start sub_0201F1F4
sub_0201F1F4: ; 0x0201F1F4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020A818C
	ldr r1, [r4, #4]
	cmp r1, #3
	beq _0201F20C
	add r0, r4, #0
	bl sub_0201F220
	pop {r4, pc}
_0201F20C:
	add r0, r4, #0
	mov r1, #1
	bl sub_0201F220
	add r0, r4, #0
	mov r1, #2
	bl sub_0201F220
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201F1F4

	thumb_func_start sub_0201F220
sub_0201F220: ; 0x0201F220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x40]
	add r4, r1, #0
	cmp r2, #0
	beq _0201F232
	bl sub_0201F074
	b _0201F234
_0201F232:
	add r0, r4, #0
_0201F234:
	cmp r4, #1
	bne _0201F242
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r5, #0x34]
	ldr r2, [r2, #0]
	b _0201F248
_0201F242:
	ldr r2, _0201F268 ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r2, [r2, #0]
_0201F248:
	cmp r0, #0
	ldr r0, [r5, #0]
	bne _0201F25A
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020A8450
	pop {r3, r4, r5, pc}
_0201F25A:
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020A8224
	pop {r3, r4, r5, pc}
	nop
_0201F268: .word 0x04001000
	thumb_func_end sub_0201F220

	thumb_func_start sub_0201F26C
sub_0201F26C: ; 0x0201F26C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020A818C
	ldr r1, [r4, #4]
	cmp r1, #3
	beq _0201F284
	add r0, r4, #0
	bl sub_0201F298
	pop {r4, pc}
_0201F284:
	add r0, r4, #0
	mov r1, #1
	bl sub_0201F298
	add r0, r4, #0
	mov r1, #2
	bl sub_0201F298
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201F26C

	thumb_func_start sub_0201F298
sub_0201F298: ; 0x0201F298
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x40]
	add r4, r1, #0
	cmp r2, #0
	beq _0201F2A8
	bl sub_0201F074
_0201F2A8:
	cmp r4, #1
	bne _0201F2B6
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r5, #0x34]
	ldr r0, [r0, #0]
	b _0201F2BC
_0201F2B6:
	ldr r0, _0201F2CC ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0]
_0201F2BC:
	ldr r0, [r5, #0]
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020A867C
	pop {r3, r4, r5, pc}
	nop
_0201F2CC: .word 0x04001000
	thumb_func_end sub_0201F298

	thumb_func_start sub_0201F2D0
sub_0201F2D0: ; 0x0201F2D0
	push {r3, r4}
	ldr r1, _0201F308 ; =0x021C0760
	mov r0, #0
	ldr r4, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0201F300
	ldr r1, [r4, #0]
	add r3, r1, #0
_0201F2E2:
	add r2, r3, #0
	add r2, #0x3c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201F2F6
	mov r2, #0x54
	mul r2, r0
	add r0, r1, r2
	pop {r3, r4}
	bx lr
_0201F2F6:
	ldr r2, [r4, #4]
	add r0, r0, #1
	add r3, #0x54
	cmp r0, r2
	blt _0201F2E2
_0201F300:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0201F308: .word 0x021C0760
	thumb_func_end sub_0201F2D0

	thumb_func_start sub_0201F30C
sub_0201F30C: ; 0x0201F30C
	push {r3, lr}
	bl sub_020BEFEC
	cmp r0, #0x30
	bgt _0201F33C
	bge _0201F384
	cmp r0, #0x10
	bgt _0201F336
	bge _0201F378
	cmp r0, #3
	bhi _0201F3B4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201F32E: ; jump table
	.short _0201F356 - _0201F32E - 2 ; case 0
	.short _0201F39C - _0201F32E - 2 ; case 1
	.short _0201F39C - _0201F32E - 2 ; case 2
	.short _0201F3A8 - _0201F32E - 2 ; case 3
_0201F336:
	cmp r0, #0x20
	beq _0201F360
	b _0201F3B4
_0201F33C:
	cmp r0, #0x50
	bgt _0201F348
	bge _0201F384
	cmp r0, #0x40
	beq _0201F360
	b _0201F3B4
_0201F348:
	cmp r0, #0x60
	bgt _0201F350
	beq _0201F36C
	b _0201F3B4
_0201F350:
	cmp r0, #0x70
	beq _0201F390
	b _0201F3B4
_0201F356:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F360:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F36C:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F378:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F384:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #5
	ldr r0, [r0, #0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F390:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #6
	ldr r0, [r0, #0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F39C:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F3A8:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0x12
	str r1, [r0, #0x14]
	b _0201F3BC
_0201F3B4:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x14]
_0201F3BC:
	bl sub_020BF01C
	cmp r0, #0
	beq _0201F3D2
	cmp r0, #8
	beq _0201F3E6
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _0201F3DC
	b _0201F3F2
_0201F3D2:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x18]
	b _0201F3FA
_0201F3DC:
	ldr r0, _0201F45C ; =0x021C0760
	lsl r1, r1, #6
	ldr r0, [r0, #0]
	str r1, [r0, #0x18]
	b _0201F3FA
_0201F3E6:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x18]
	b _0201F3FA
_0201F3F2:
	ldr r0, _0201F45C ; =0x021C0760
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x18]
_0201F3FA:
	ldr r0, _0201F45C ; =0x021C0760
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x2c]
	bl sub_0201F764
	ldr r1, _0201F45C ; =0x021C0760
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x14]
	sub r0, r2, r0
	str r0, [r3, #0x1c]
	ldr r1, [r1, #0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_0201F764
	ldr r1, _0201F45C ; =0x021C0760
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x18]
	sub r0, r2, r0
	str r0, [r3, #0x20]
	ldr r1, [r1, #0]
	mov r2, #0
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	blt _0201F436
	ldr r0, [r1, #0x20]
	cmp r0, #0
	blt _0201F436
	mov r2, #1
_0201F436:
	cmp r2, #0
	bne _0201F43E
	bl sub_02022974
_0201F43E:
	ldr r0, _0201F45C ; =0x021C0760
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	blt _0201F452
	ldr r0, [r1, #0x20]
	cmp r0, #0
	blt _0201F452
	mov r2, #1
_0201F452:
	cmp r2, #0
	bne _0201F45A
	bl sub_02022974
_0201F45A:
	pop {r3, pc}
	; .align 2, 0
_0201F45C: .word 0x021C0760
	thumb_func_end sub_0201F30C

	thumb_func_start sub_0201F460
sub_0201F460: ; 0x0201F460
	push {r3, lr}
	ldr r0, _0201F478 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x34]
	bl sub_0201F524
	ldr r0, _0201F478 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0201F524
	pop {r3, pc}
	; .align 2, 0
_0201F478: .word 0x021C0760
	thumb_func_end sub_0201F460

	thumb_func_start sub_0201F47C
sub_0201F47C: ; 0x0201F47C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0201F4E0 ; =0x021C0760
	add r4, r1, #0
	ldr r1, [r0, #0]
	add r6, r2, #0
	str r5, [r1, #0x24]
	ldr r1, [r0, #0]
	str r4, [r1, #0x28]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _0201F49A
	bl sub_020181C4
_0201F49A:
	ldr r0, _0201F4E0 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0201F4A8
	bl sub_020181C4
_0201F4A8:
	ldr r0, _0201F4E0 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0201F4C0
	add r0, r6, #0
	lsr r1, r5, #3
	bl sub_02018144
	ldr r1, _0201F4E0 ; =0x021C0760
	ldr r1, [r1, #0]
	str r0, [r1, #0x34]
_0201F4C0:
	ldr r0, _0201F4E0 ; =0x021C0760
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0201F4D8
	add r0, r6, #0
	lsr r1, r4, #3
	bl sub_02018144
	ldr r1, _0201F4E0 ; =0x021C0760
	ldr r1, [r1, #0]
	str r0, [r1, #0x38]
_0201F4D8:
	bl sub_0201F460
	pop {r4, r5, r6, pc}
	nop
_0201F4E0: .word 0x021C0760
	thumb_func_end sub_0201F47C

	thumb_func_start sub_0201F4E4
sub_0201F4E4: ; 0x0201F4E4
	push {r3, lr}
	cmp r0, #0
	beq _0201F506
	ldr r1, _0201F508 ; =0x021C0760
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _0201F4FE
	mov r1, #0
	str r1, [r2, #0x24]
	bl sub_020181C4
	pop {r3, pc}
_0201F4FE:
	mov r1, #0
	str r1, [r2, #0x28]
	bl sub_020181C4
_0201F506:
	pop {r3, pc}
	; .align 2, 0
_0201F508: .word 0x021C0760
	thumb_func_end sub_0201F4E4

	thumb_func_start sub_0201F50C
sub_0201F50C: ; 0x0201F50C
	ldr r1, _0201F520 ; =0x021C0760
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _0201F51A
	ldr r0, [r2, #0x24]
	bx lr
_0201F51A:
	ldr r0, [r2, #0x28]
	bx lr
	nop
_0201F520: .word 0x021C0760
	thumb_func_end sub_0201F50C

	thumb_func_start sub_0201F524
sub_0201F524: ; 0x0201F524
	push {r4, lr}
	add r4, r0, #0
	beq _0201F53A
	bl sub_0201F50C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #3
	bl sub_020D5124
_0201F53A:
	pop {r4, pc}
	thumb_func_end sub_0201F524

	thumb_func_start sub_0201F53C
sub_0201F53C: ; 0x0201F53C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	beq _0201F592
	add r0, r4, #0
	bl sub_0201F50C
	add r6, r5, r6
	add r7, r0, #0
	cmp r5, r6
	bhs _0201F592
_0201F556:
	cmp r5, r7
	bhs _0201F592
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0201F80C
	add r0, sp, #0
	ldrb r1, [r0]
	mov r0, #1
	lsl r0, r1
	ldr r1, [sp, #4]
	ldrb r1, [r4, r1]
	tst r0, r1
	beq _0201F578
	bl sub_02022974
_0201F578:
	add r2, sp, #0
	ldrb r3, [r2]
	ldr r1, [sp, #4]
	mov r2, #1
	lsl r2, r3
	lsl r2, r2, #0x18
	ldrb r0, [r4, r1]
	lsr r2, r2, #0x18
	add r5, r5, #1
	orr r0, r2
	strb r0, [r4, r1]
	cmp r5, r6
	blo _0201F556
_0201F592:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201F53C

	thumb_func_start sub_0201F598
sub_0201F598: ; 0x0201F598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r1, [sp]
	cmp r1, #0
	beq _0201F616
	add r0, r1, #0
	bl sub_0201F50C
	mov r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	bls _0201F616
_0201F5B2:
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0201F80C
	add r0, sp, #8
	ldrb r1, [r0]
	mov r0, #1
	mov r4, #0
	lsl r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _0201F5F4
_0201F5CC:
	add r5, r6, r4
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0201F80C
	add r0, sp, #8
	ldrb r1, [r0]
	mov r0, #1
	lsl r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	cmp r5, r1
	blo _0201F5F2
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0201F5F2:
	add r4, r4, #1
_0201F5F4:
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _0201F602
	cmp r4, r7
	bls _0201F5CC
_0201F602:
	cmp r4, r7
	bls _0201F60C
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F60C:
	add r0, r6, r4
	add r6, r0, #1
	ldr r0, [sp, #4]
	cmp r6, r0
	blo _0201F5B2
_0201F616:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201F598

	thumb_func_start sub_0201F620
sub_0201F620: ; 0x0201F620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	beq _0201F66A
	add r6, r5, r1
	cmp r5, r6
	bhs _0201F66A
	add r7, sp, #0
_0201F632:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0201F80C
	ldrb r1, [r7]
	mov r0, #1
	lsl r0, r1
	ldr r1, [sp, #4]
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0201F64E
	bl sub_02022974
_0201F64E:
	ldrb r0, [r7]
	mov r1, #1
	ldr r3, [sp, #4]
	lsl r1, r0
	mov r0, #0xff
	eor r0, r1
	lsl r0, r0, #0x18
	ldrb r2, [r4, r3]
	lsr r0, r0, #0x18
	add r5, r5, #1
	and r0, r2
	strb r0, [r4, r3]
	cmp r5, r6
	blo _0201F632
_0201F66A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201F620

	thumb_func_start sub_0201F670
sub_0201F670: ; 0x0201F670
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	tst r0, r1
	beq _0201F6AE
	add r0, r4, #0
	add r0, #0x10
	bl sub_020A81B0
	ldr r1, _0201F6F0 ; =0x021C0760
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x1c]
	sub r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl sub_0201F754
	ldr r1, _0201F6F0 ; =0x021C0760
	add r5, r0, #0
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #0x2c]
	bl sub_0201F754
	ldr r2, _0201F6F0 ; =0x021C0760
	add r1, r0, #0
	ldr r2, [r2, #0]
	add r0, r5, #0
	ldr r2, [r2, #0x34]
	bl sub_0201F620
_0201F6AE:
	ldr r0, [r4, #4]
	mov r1, #2
	tst r0, r1
	beq _0201F6E8
	add r0, r4, #0
	add r0, #0x10
	bl sub_020A81B0
	ldr r1, _0201F6F0 ; =0x021C0760
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x20]
	sub r0, r0, r1
	ldr r1, [r2, #0x30]
	bl sub_0201F754
	ldr r1, _0201F6F0 ; =0x021C0760
	add r5, r0, #0
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #0x30]
	bl sub_0201F754
	ldr r2, _0201F6F0 ; =0x021C0760
	add r1, r0, #0
	ldr r2, [r2, #0]
	add r0, r5, #0
	ldr r2, [r2, #0x38]
	bl sub_0201F620
_0201F6E8:
	mov r0, #0
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
	nop
_0201F6F0: .word 0x021C0760
	thumb_func_end sub_0201F670

	thumb_func_start sub_0201F6F4
sub_0201F6F4: ; 0x0201F6F4
	ldr r1, _0201F728 ; =0x00100010
	cmp r0, r1
	bgt _0201F702
	bge _0201F718
	cmp r0, #0x10
	beq _0201F714
	b _0201F724
_0201F702:
	ldr r1, _0201F72C ; =0x00200010
	cmp r0, r1
	bgt _0201F70C
	beq _0201F71C
	b _0201F724
_0201F70C:
	ldr r1, _0201F730 ; =0x00300010
	cmp r0, r1
	beq _0201F720
	b _0201F724
_0201F714:
	mov r0, #1
	bx lr
_0201F718:
	mov r0, #2
	bx lr
_0201F71C:
	mov r0, #4
	bx lr
_0201F720:
	mov r0, #8
	bx lr
_0201F724:
	mov r0, #1
	bx lr
	; .align 2, 0
_0201F728: .word 0x00100010
_0201F72C: .word 0x00200010
_0201F730: .word 0x00300010
	thumb_func_end sub_0201F6F4

	thumb_func_start sub_0201F734
sub_0201F734: ; 0x0201F734
	push {r4, r5, r6, lr}
	add r4, r1, #0
	lsl r4, r4, #5
	add r1, r4, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_020E1F6C
	cmp r1, #0
	beq _0201F750
	sub r5, r5, r1
	cmp r6, #1
	bne _0201F750
	add r5, r5, r4
_0201F750:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201F734

	thumb_func_start sub_0201F754
sub_0201F754: ; 0x0201F754
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	ldr r3, _0201F760 ; =sub_020E1F6C
	asr r0, r2, #5
	bx r3
	; .align 2, 0
_0201F760: .word sub_020E1F6C
	thumb_func_end sub_0201F754

	thumb_func_start sub_0201F764
sub_0201F764: ; 0x0201F764
	mul r1, r0
	lsl r0, r1, #5
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201F764

	thumb_func_start sub_0201F76C
sub_0201F76C: ; 0x0201F76C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	mov r0, #1
	add r2, r4, #0
	add r7, r3, #0
	tst r2, r0
	beq _0201F796
	ldr r2, _0201F7B8 ; =0x021C0760
	ldr r2, [r2, #0]
	ldr r6, [r2, #0xc]
	ldr r2, [r2, #0x1c]
	add r3, r6, r5
	cmp r3, r2
	bls _0201F794
	bl sub_02022974
	mov r0, #0
	b _0201F796
_0201F794:
	str r6, [r1, #0]
_0201F796:
	mov r1, #2
	tst r1, r4
	beq _0201F7B4
	ldr r1, _0201F7B8 ; =0x021C0760
	ldr r1, [r1, #0]
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #0x20]
	add r2, r3, r5
	cmp r2, r1
	bls _0201F7B2
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F7B2:
	str r3, [r7, #0]
_0201F7B4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F7B8: .word 0x021C0760
	thumb_func_end sub_0201F76C

	thumb_func_start sub_0201F7BC
sub_0201F7BC: ; 0x0201F7BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r2, #1
	add r0, r4, #0
	tst r0, r2
	beq _0201F7E4
	ldr r0, _0201F808 ; =0x021C0760
	ldr r3, [r0, #0]
	ldr r1, [r3, #0xc]
	add r1, r1, r5
	str r1, [r3, #0xc]
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x2c]
	bl sub_0201F734
	ldr r1, _0201F808 ; =0x021C0760
	ldr r1, [r1, #0]
	str r0, [r1, #0xc]
_0201F7E4:
	mov r0, #2
	tst r0, r4
	beq _0201F806
	ldr r0, _0201F808 ; =0x021C0760
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x10]
	add r1, r1, r5
	str r1, [r2, #0x10]
	ldr r1, [r0, #0]
	mov r2, #1
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x30]
	bl sub_0201F734
	ldr r1, _0201F808 ; =0x021C0760
	ldr r1, [r1, #0]
	str r0, [r1, #0x10]
_0201F806:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201F808: .word 0x021C0760
	thumb_func_end sub_0201F7BC

	thumb_func_start sub_0201F80C
sub_0201F80C: ; 0x0201F80C
	asr r3, r0, #3
	str r3, [r1, #0]
	mov r1, #7
	and r0, r1
	strb r0, [r2]
	bx lr
	thumb_func_end sub_0201F80C

	thumb_func_start sub_0201F818
sub_0201F818: ; 0x0201F818
	push {r3, r4}
	sub r0, r1, r0
	ldr r4, [sp, #8]
	str r0, [r3, #0]
	bpl _0201F82E
	add r0, r2, r0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0201F82E:
	str r2, [r4, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0201F818

	.bss


	.global Unk_021C0760
Unk_021C0760: ; 0x021C0760
	.space 0x4

