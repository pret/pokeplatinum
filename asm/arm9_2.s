	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0201E7FC
sub_0201E7FC: ; 0x0201E7FC
	push {r4, r5, r6, r7}
	mov r2, #0
	strh r2, [r0]
	add r3, r0, #0
	add r6, r2, #0
_0201E806:
	strh r6, [r3, #8]
	strh r6, [r3, #6]
	strh r6, [r3, #2]
	strh r6, [r3, #4]
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _0201E806
	ldr r2, _0201E864 ; =0x021C0704
	ldr r3, [r2, #8]
	cmp r3, #0
	bls _0201E860
	ldr r4, _0201E868 ; =0x021C0704
_0201E820:
	sub r3, r1, r3
	add r3, r6, r3
	add r3, r3, #1
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bpl _0201E832
	add r3, #9
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
_0201E832:
	lsl r3, r3, #3
	add r5, r4, r3
	ldrh r3, [r5, #0x12]
	cmp r3, #0
	bne _0201E858
	ldrh r3, [r0]
	ldrh r7, [r5, #0xc]
	lsl r3, r3, #3
	add r3, r0, r3
	strh r7, [r3, #2]
	ldrh r7, [r5, #0xe]
	strh r7, [r3, #4]
	ldrh r7, [r5, #0x10]
	strh r7, [r3, #6]
	ldrh r5, [r5, #0x12]
	strh r5, [r3, #8]
	ldrh r3, [r0]
	add r3, r3, #1
	strh r3, [r0]
_0201E858:
	ldr r3, [r2, #8]
	add r6, r6, #1
	cmp r6, r3
	blo _0201E820
_0201E860:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0201E864: .word 0x021C0704
_0201E868: .word 0x021C0704
	thumb_func_end sub_0201E7FC

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

	thumb_func_start sub_0201F834
sub_0201F834: ; 0x0201F834
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0201F88C ; =0x021C0764
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201F888
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02018144
	add r1, r0, #0
	ldr r0, _0201F88C ; =0x021C0764
	mov r2, #0x28
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C4B4C
	ldr r0, _0201F88C ; =0x021C0764
	mov r1, #0x30
	ldr r0, [r0, #0]
	mul r1, r6
	str r6, [r0, #4]
	add r0, r4, #0
	bl sub_02018144
	ldr r7, _0201F88C ; =0x021C0764
	mov r4, #0
	ldr r1, [r7, #0]
	cmp r6, #0
	str r0, [r1, #0]
	ble _0201F888
	add r5, r4, #0
_0201F876:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	add r0, r0, r5
	bl sub_0201FB20
	add r4, r4, #1
	add r5, #0x30
	cmp r4, r6
	blt _0201F876
_0201F888:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F88C: .word 0x021C0764
	thumb_func_end sub_0201F834

	thumb_func_start sub_0201F890
sub_0201F890: ; 0x0201F890
	cmp r1, #1
	bne _0201F8A0
	ldr r1, _0201F8B0 ; =0x021C0764
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0x24]
	orr r0, r1
	strh r0, [r2, #0x24]
	bx lr
_0201F8A0:
	cmp r1, #2
	bne _0201F8AE
	ldr r1, _0201F8B0 ; =0x021C0764
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0x26]
	orr r0, r1
	strh r0, [r2, #0x26]
_0201F8AE:
	bx lr
	; .align 2, 0
_0201F8B0: .word 0x021C0764
	thumb_func_end sub_0201F890

	thumb_func_start sub_0201F8B4
sub_0201F8B4: ; 0x0201F8B4
	push {r3, lr}
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201F8DA
	bl sub_0201FA18
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201F8DC ; =0x021C0764
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201F8DC ; =0x021C0764
	mov r1, #0
	str r1, [r0, #0]
_0201F8DA:
	pop {r3, pc}
	; .align 2, 0
_0201F8DC: .word 0x021C0764
	thumb_func_end sub_0201F8B4

	thumb_func_start sub_0201F8E0
sub_0201F8E0: ; 0x0201F8E0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201F8E0

	thumb_func_start sub_0201F8E4
sub_0201F8E4: ; 0x0201F8E4
	push {r3, lr}
	ldr r0, _0201F908 ; =0x021C0764
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0]
	str r2, [r1, #0x10]
	ldr r1, [r0, #0]
	str r2, [r1, #0x14]
	ldr r0, [r0, #0]
	str r2, [r0, #0x18]
	bl sub_0201FC8C
	ldr r0, _0201F908 ; =0x021C0764
	ldr r0, [r0, #0]
	bl sub_0201FD9C
	pop {r3, pc}
	; .align 2, 0
_0201F908: .word 0x021C0764
	thumb_func_end sub_0201F8E4

	thumb_func_start sub_0201F90C
sub_0201F90C: ; 0x0201F90C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201FC50
	add r4, r0, #0
	bne _0201F920
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F920:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FAEC
	cmp r0, #0
	bne _0201F930
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F930:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FB3C
	cmp r0, #0
	bne _0201F946
	ldr r0, [r5, #0xc]
	bl sub_0201F9F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F946:
	add r0, r4, #0
	bl sub_0201FDA4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201F90C

	thumb_func_start sub_0201F950
sub_0201F950: ; 0x0201F950
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201FC50
	add r4, r0, #0
	bne _0201F964
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F964:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FAEC
	cmp r0, #0
	bne _0201F974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F974:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FB94
	cmp r0, #0
	bne _0201F98A
	ldr r0, [r5, #0xc]
	bl sub_0201F9F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201F98A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201F950

	thumb_func_start sub_0201F990
sub_0201F990: ; 0x0201F990
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bne _0201F99C
	bl sub_02022974
_0201F99C:
	add r0, r4, #0
	bl sub_0201FC18
	add r4, r0, #0
	bne _0201F9AA
	bl sub_02022974
_0201F9AA:
	str r5, [r4, #0]
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201F9C2
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0xc]
	mov r0, #0xe
	lsl r3, r3, #5
	bl sub_0201DC68
_0201F9C2:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201F9D8
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0xc]
	mov r0, #0x1e
	lsl r3, r3, #5
	bl sub_0201DC68
_0201F9D8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201F990

	thumb_func_start sub_0201F9DC
sub_0201F9DC: ; 0x0201F9DC
	push {r3, lr}
	bl sub_0201FC18
	cmp r0, #0
	beq _0201F9EA
	mov r0, #1
	pop {r3, pc}
_0201F9EA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201F9DC

	thumb_func_start sub_0201F9F0
sub_0201F9F0: ; 0x0201F9F0
	push {r4, lr}
	bl sub_0201FC18
	add r4, r0, #0
	bne _0201F9FE
	bl sub_02022974
_0201F9FE:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0201FA14
	add r0, r4, #0
	bl sub_0201FDE0
	add r0, r4, #0
	bl sub_0201FAE4
_0201FA14:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201F9F0

	thumb_func_start sub_0201FA18
sub_0201FA18: ; 0x0201FA18
	push {r4, r5, r6, lr}
	ldr r6, _0201FA54 ; =0x021C0764
	mov r4, #0
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0201FA50
	add r5, r4, #0
_0201FA28:
	ldr r1, [r1, #0]
	add r0, r1, r5
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0201FA44
	add r0, r1, r5
	bl sub_0201FDE0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	add r0, r0, r5
	bl sub_0201FAE4
_0201FA44:
	ldr r1, [r6, #0]
	add r4, r4, #1
	ldr r0, [r1, #4]
	add r5, #0x30
	cmp r4, r0
	blt _0201FA28
_0201FA50:
	pop {r4, r5, r6, pc}
	nop
_0201FA54: .word 0x021C0764
	thumb_func_end sub_0201FA18

	thumb_func_start sub_0201FA58
sub_0201FA58: ; 0x0201FA58
	push {r3, lr}
	bl sub_0201FC18
	cmp r0, #0
	bne _0201FA6C
	bne _0201FA68
	bl sub_02022974
_0201FA68:
	mov r0, #0
	pop {r3, pc}
_0201FA6C:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	bne _0201FA7A
	add r0, #0x10
	pop {r3, pc}
_0201FA7A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201FA58

	thumb_func_start sub_0201FA80
sub_0201FA80: ; 0x0201FA80
	push {r4, lr}
	add r4, r1, #0
	bl sub_0201FC18
	cmp r0, #0
	bne _0201FA96
	bne _0201FA92
	bl sub_02022974
_0201FA92:
	mov r0, #0
	pop {r4, pc}
_0201FA96:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	beq _0201FAA4
	mov r0, #0
	pop {r4, pc}
_0201FAA4:
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0201FAB0
	mov r1, #1
	str r1, [r4, #0x18]
_0201FAB0:
	add r0, #0x10
	pop {r4, pc}
	thumb_func_end sub_0201FA80

	thumb_func_start sub_0201FAB4
sub_0201FAB4: ; 0x0201FAB4
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0201FAC2
	mov r4, #2
	lsl r4, r4, #8
	b _0201FACE
_0201FAC2:
	ldr r2, [r0, #0]
	cmp r2, #4
	bne _0201FACC
	mov r4, #0
	b _0201FACE
_0201FACC:
	mov r4, #0x20
_0201FACE:
	cmp r4, #0
	beq _0201FADE
	bl sub_020A81FC
	add r1, r4, #0
	bl sub_020E2178
	pop {r4, pc}
_0201FADE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201FAB4

	thumb_func_start sub_0201FAE4
sub_0201FAE4: ; 0x0201FAE4
	ldr r3, _0201FAE8 ; =sub_0201FB20
	bx r3
	; .align 2, 0
_0201FAE8: .word sub_0201FB20
	thumb_func_end sub_0201FAE4

	thumb_func_start sub_0201FAEC
sub_0201FAEC: ; 0x0201FAEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0201F9DC
	cmp r0, #1
	bne _0201FB08
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201FB08:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	add r1, #0x2c
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r5, #8]
	str r1, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201FAEC

	thumb_func_start sub_0201FB20
sub_0201FB20: ; 0x0201FB20
	push {r4, lr}
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	add r4, #0x10
	add r0, r4, #0
	bl sub_020A81D0
	pop {r4, pc}
	thumb_func_end sub_0201FB20

	thumb_func_start sub_0201FB3C
sub_0201FB3C: ; 0x0201FB3C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FB5C
	ldr r0, _0201FB90 ; =0x021C0764
	ldr r0, [r0, #0]
	add r4, r0, #0
	add r5, r0, #0
	ldr r3, [r0, #0x1c]
	add r4, #0x14
	add r5, #0x18
	ldr r0, [r0, #0x20]
	b _0201FB6C
_0201FB5C:
	ldr r0, _0201FB90 ; =0x021C0764
	mov r3, #2
	ldr r5, [r0, #0]
	lsl r3, r3, #8
	add r4, r5, #0
	add r4, #0xc
	add r5, #0x10
	add r0, r3, #0
_0201FB6C:
	str r0, [sp]
	ldr r1, [r4, #0]
	ldr r2, [r5, #0]
	add r0, r6, #0
	bl sub_0201FE1C
	add r0, r6, #0
	bl sub_0201FCD4
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0201FE68
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0201FB90: .word 0x021C0764
	thumb_func_end sub_0201FB3C

	thumb_func_start sub_0201FB94
sub_0201FB94: ; 0x0201FB94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FBA4
	bl sub_02022974
_0201FBA4:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FBC6
	ldr r0, _0201FC14 ; =0x021C0764
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x24]
	bl sub_0201FD5C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0201FBC6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201FBC6:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FBE8
	ldr r0, _0201FC14 ; =0x021C0764
	ldr r1, [r5, #8]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x26]
	bl sub_0201FD5C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0201FBE8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201FBE8:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FBF2
	str r6, [r5, #0x24]
_0201FBF2:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FBFC
	str r4, [r5, #0x28]
_0201FBFC:
	ldr r0, [r5, #8]
	lsl r1, r0, #5
	ldr r0, [r5, #0]
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_0201FCE4
	add r0, r5, #0
	bl sub_0201FDA4
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201FC14: .word 0x021C0764
	thumb_func_end sub_0201FB94

	thumb_func_start sub_0201FC18
sub_0201FC18: ; 0x0201FC18
	push {r4, r5}
	ldr r2, _0201FC4C ; =0x021C0764
	mov r1, #0
	ldr r5, [r2, #0]
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0201FC44
	ldr r2, [r5, #0]
	add r4, r2, #0
_0201FC2A:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0201FC3A
	mov r0, #0x30
	mul r0, r1
	add r0, r2, r0
	pop {r4, r5}
	bx lr
_0201FC3A:
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r4, #0x30
	cmp r1, r3
	blt _0201FC2A
_0201FC44:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0201FC4C: .word 0x021C0764
	thumb_func_end sub_0201FC18

	thumb_func_start sub_0201FC50
sub_0201FC50: ; 0x0201FC50
	push {r3, r4}
	ldr r1, _0201FC88 ; =0x021C0764
	mov r0, #0
	ldr r4, [r1, #0]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _0201FC80
	ldr r1, [r4, #0]
	add r3, r1, #0
_0201FC62:
	add r2, r3, #0
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201FC76
	mov r2, #0x30
	mul r2, r0
	add r0, r1, r2
	pop {r3, r4}
	bx lr
_0201FC76:
	ldr r2, [r4, #4]
	add r0, r0, #1
	add r3, #0x30
	cmp r0, r2
	blt _0201FC62
_0201FC80:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0201FC88: .word 0x021C0764
	thumb_func_end sub_0201FC50

	thumb_func_start sub_0201FC8C
sub_0201FC8C: ; 0x0201FC8C
	push {r3, lr}
	bl sub_020BEFFC
	cmp r0, #0x20
	beq _0201FC9A
	cmp r0, #0x40
	bne _0201FCA6
_0201FC9A:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	b _0201FCAE
_0201FCA6:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x1c]
_0201FCAE:
	bl sub_020BF02C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0201FCC4
	ldr r0, _0201FCD0 ; =0x021C0764
	lsl r1, r1, #5
	ldr r0, [r0, #0]
	str r1, [r0, #0x20]
	pop {r3, pc}
_0201FCC4:
	ldr r0, _0201FCD0 ; =0x021C0764
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x20]
	pop {r3, pc}
	nop
_0201FCD0: .word 0x021C0764
	thumb_func_end sub_0201FC8C

	thumb_func_start sub_0201FCD4
sub_0201FCD4: ; 0x0201FCD4
	ldr r1, [r0, #8]
	ldr r3, _0201FCE0 ; =sub_0201FCE4
	lsl r2, r1, #5
	ldr r1, [r0, #0]
	str r2, [r1, #8]
	bx r3
	; .align 2, 0
_0201FCE0: .word sub_0201FCE4
	thumb_func_end sub_0201FCD4

	thumb_func_start sub_0201FCE4
sub_0201FCE4: ; 0x0201FCE4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020A81D0
	ldr r0, [r4, #4]
	mov r2, #1
	tst r0, r2
	beq _0201FD02
	add r3, r4, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r3, #0x10
	bl sub_020A8850
_0201FD02:
	ldr r0, [r4, #4]
	mov r2, #2
	tst r0, r2
	beq _0201FD16
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r4, #0x10
	add r3, r4, #0
	bl sub_020A8850
_0201FD16:
	pop {r4, pc}
	thumb_func_end sub_0201FCE4

	thumb_func_start sub_0201FD18
sub_0201FD18: ; 0x0201FD18
	push {r4, r5, r6, r7}
	mov r3, #0
	cmp r1, #0
	ble _0201FD36
	mov r5, #1
_0201FD22:
	ldrh r7, [r0]
	add r4, r2, r3
	add r6, r5, #0
	lsl r6, r4
	add r4, r7, #0
	orr r4, r6
	add r3, r3, #1
	strh r4, [r0]
	cmp r3, r1
	blt _0201FD22
_0201FD36:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FD18

	thumb_func_start sub_0201FD3C
sub_0201FD3C: ; 0x0201FD3C
	push {r4, r5, r6, r7}
	mov r4, #0
	cmp r1, #0
	ble _0201FD58
	mov r6, #1
_0201FD46:
	add r5, r2, r4
	add r7, r6, #0
	ldrh r3, [r0]
	lsl r7, r5
	bic r3, r7
	add r4, r4, #1
	strh r3, [r0]
	cmp r4, r1
	blt _0201FD46
_0201FD58:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0201FD3C

	thumb_func_start sub_0201FD5C
sub_0201FD5C: ; 0x0201FD5C
	push {r4, r5, r6, r7}
	mov r3, #0
	mov r6, #1
	add r2, r3, #0
_0201FD64:
	add r4, r2, #0
	b _0201FD6E
_0201FD68:
	cmp r5, #0x10
	bge _0201FD7C
	add r4, r4, #1
_0201FD6E:
	add r5, r3, r4
	add r7, r6, #0
	lsl r7, r5
	tst r7, r0
	bne _0201FD7C
	cmp r4, r1
	blt _0201FD68
_0201FD7C:
	cmp r4, r1
	bge _0201FD88
	add r3, r3, r4
	add r3, r3, #1
	cmp r3, #0x10
	blt _0201FD64
_0201FD88:
	cmp r3, #0x10
	blt _0201FD94
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_0201FD94:
	lsl r0, r3, #5
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FD5C

	thumb_func_start sub_0201FD9C
sub_0201FD9C: ; 0x0201FD9C
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	thumb_func_end sub_0201FD9C

	thumb_func_start sub_0201FDA4
sub_0201FDA4: ; 0x0201FDA4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FDC0
	ldr r0, _0201FDDC ; =0x021C0764
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_0201FD18
_0201FDC0:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FDD8
	ldr r0, _0201FDDC ; =0x021C0764
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_0201FD18
_0201FDD8:
	pop {r4, pc}
	nop
_0201FDDC: .word 0x021C0764
	thumb_func_end sub_0201FDA4

	thumb_func_start sub_0201FDE0
sub_0201FDE0: ; 0x0201FDE0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201FDFC
	ldr r0, _0201FE18 ; =0x021C0764
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_0201FD3C
_0201FDFC:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201FE14
	ldr r0, _0201FE18 ; =0x021C0764
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_0201FD3C
_0201FE14:
	pop {r4, pc}
	nop
_0201FE18: .word 0x021C0764
	thumb_func_end sub_0201FDE0

	thumb_func_start sub_0201FE1C
sub_0201FE1C: ; 0x0201FE1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	mov r0, #1
	tst r2, r0
	beq _0201FE42
	ldr r2, [r5, #8]
	lsl r2, r2, #5
	add r2, r1, r2
	cmp r2, r3
	bls _0201FE40
	bl sub_02022974
	bl sub_0201F8E0
	mov r0, #0
	b _0201FE42
_0201FE40:
	str r1, [r5, #0x24]
_0201FE42:
	ldr r2, [r5, #4]
	mov r1, #2
	tst r1, r2
	beq _0201FE64
	ldr r1, [r5, #8]
	lsl r1, r1, #5
	add r2, r4, r1
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bls _0201FE62
	bl sub_02022974
	bl sub_0201F8E0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0201FE62:
	str r4, [r5, #0x28]
_0201FE64:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201FE1C

	thumb_func_start sub_0201FE68
sub_0201FE68: ; 0x0201FE68
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r3, #1
	tst r3, r4
	beq _0201FE7C
	ldr r3, [r0, #8]
	ldr r4, [r1, #0]
	lsl r3, r3, #5
	add r3, r4, r3
	str r3, [r1, #0]
_0201FE7C:
	ldr r3, [r0, #4]
	mov r1, #2
	tst r1, r3
	beq _0201FE8E
	ldr r0, [r0, #8]
	ldr r1, [r2, #0]
	lsl r0, r0, #5
	add r0, r1, r0
	str r0, [r2, #0]
_0201FE8E:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201FE68

	thumb_func_start sub_0201FE94
sub_0201FE94: ; 0x0201FE94
	push {r4, lr}
	add r4, r0, #0
	bl sub_020BEC9C
	bl sub_020BECC4
	bl sub_020BED48
	bl sub_020BED70
	bl sub_020BECB0
	bl sub_020BECE8
	bl sub_020BED5C
	bl sub_020BED98
	bl sub_020BED0C
	bl sub_020BED20
	ldr r0, [r4, #0]
	bl sub_020BE004
	ldr r0, [r4, #4]
	bl sub_020BE3E4
	ldr r0, [r4, #8]
	bl sub_020BEA50
	ldr r0, [r4, #0xc]
	bl sub_020BEB68
	ldr r0, [r4, #0x10]
	bl sub_020BE294
	ldr r0, [r4, #0x14]
	bl sub_020BE4E4
	ldr r0, [r4, #0x18]
	bl sub_020BEAF8
	ldr r0, [r4, #0x1c]
	bl sub_020BEBE8
	ldr r0, [r4, #0x20]
	bl sub_020BE590
	ldr r0, [r4, #0x24]
	bl sub_020BE768
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201FE94

	thumb_func_start sub_0201FF00
sub_0201FF00: ; 0x0201FF00
	ldr r0, _0201FF08 ; =0x021C0768
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_0201FF08: .word 0x021C0768
	thumb_func_end sub_0201FF00

	thumb_func_start sub_0201FF0C
sub_0201FF0C: ; 0x0201FF0C
	cmp r1, #1
	bne _0201FF1A
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r1, [r1, #4]
	tst r1, r0
	beq _0201FF22
	bx lr
_0201FF1A:
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r1, [r1, #4]
	tst r1, r0
	beq _0201FF3C
_0201FF22:
	ldr r1, _0201FF40 ; =0x021C0768
	ldr r2, [r1, #4]
	add r3, r2, #0
	eor r3, r0
	mov r2, #1
	lsl r2, r2, #0x1a
	str r3, [r1, #4]
	ldr r1, [r2, #0]
	ldr r0, _0201FF44 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
_0201FF3C:
	bx lr
	nop
_0201FF40: .word 0x021C0768
_0201FF44: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF0C

	thumb_func_start sub_0201FF48
sub_0201FF48: ; 0x0201FF48
	ldr r1, _0201FF60 ; =0x021C0768
	mov r3, #1
	str r0, [r1, #4]
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r1, _0201FF64 ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	nop
_0201FF60: .word 0x021C0768
_0201FF64: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF48

	thumb_func_start sub_0201FF68
sub_0201FF68: ; 0x0201FF68
	ldr r0, _0201FF70 ; =0x021C0768
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_0201FF70: .word 0x021C0768
	thumb_func_end sub_0201FF68

	thumb_func_start sub_0201FF74
sub_0201FF74: ; 0x0201FF74
	cmp r1, #1
	bne _0201FF82
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r1, [r1, #0]
	tst r1, r0
	beq _0201FF8A
	bx lr
_0201FF82:
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r1, [r1, #0]
	tst r1, r0
	beq _0201FFA2
_0201FF8A:
	ldr r1, _0201FFA4 ; =0x021C0768
	ldr r2, [r1, #0]
	add r3, r2, #0
	eor r3, r0
	ldr r2, _0201FFA8 ; =0x04001000
	str r3, [r1, #0]
	ldr r1, [r2, #0]
	ldr r0, _0201FFAC ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
_0201FFA2:
	bx lr
	; .align 2, 0
_0201FFA4: .word 0x021C0768
_0201FFA8: .word 0x04001000
_0201FFAC: .word 0xFFFFE0FF
	thumb_func_end sub_0201FF74

	thumb_func_start sub_0201FFB0
sub_0201FFB0: ; 0x0201FFB0
	ldr r1, _0201FFC4 ; =0x021C0768
	ldr r3, _0201FFC8 ; =0x04001000
	str r0, [r1, #0]
	ldr r2, [r3, #0]
	ldr r1, _0201FFCC ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_0201FFC4: .word 0x021C0768
_0201FFC8: .word 0x04001000
_0201FFCC: .word 0xFFFFE0FF
	thumb_func_end sub_0201FFB0

	thumb_func_start sub_0201FFD0
sub_0201FFD0: ; 0x0201FFD0
	push {r3, lr}
	bl sub_020BDDF8
	ldr r2, _0201FFE4 ; =0x04001000
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_0201FFE4: .word 0x04001000
	thumb_func_end sub_0201FFD0

	thumb_func_start sub_0201FFE8
sub_0201FFE8: ; 0x0201FFE8
	ldr r0, _02020008 ; =0x021BF6DC
	ldr r2, _0202000C ; =0x04000304
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0201FFFC
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201FFFC:
	ldrh r1, [r2]
	ldr r0, _02020010 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	bx lr
	nop
_02020008: .word 0x021BF6DC
_0202000C: .word 0x04000304
_02020010: .word 0xFFFF7FFF
	thumb_func_end sub_0201FFE8

	thumb_func_start sub_02020014
sub_02020014: ; 0x02020014
	ldr r0, _0202001C ; =0x021C0768
	ldr r0, [r0, #4]
	bx lr
	nop
_0202001C: .word 0x021C0768
	thumb_func_end sub_02020014

	thumb_func_start sub_02020020
sub_02020020: ; 0x02020020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020200FC ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020200FC ; =0x020F983C
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _020200FC ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020200FC ; =0x020F983C
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020200FC ; =0x020F983C
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	str r1, [r5, #0x18]
	add r0, #0x14
	add r5, #0x20
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020BD17C
	pop {r3, r4, r5, pc}
	nop
_020200FC: .word 0x020F983C
	thumb_func_end sub_02020020

	thumb_func_start sub_02020100
sub_02020100: ; 0x02020100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020201E0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020201E0 ; =0x020F983C
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x20]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _020201E0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020201E0 ; =0x020F983C
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x28]
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020201E0 ; =0x020F983C
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x20
	add r5, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020BD17C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020201E0: .word 0x020F983C
	thumb_func_end sub_02020100

	thumb_func_start sub_020201E4
sub_020201E4: ; 0x020201E4
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	asr r0, r0, #4
	lsl r3, r0, #1
	ldr r2, _02020228 ; =0x020F983C
	lsl r0, r3, #1
	ldrsh r0, [r2, r0]
	str r0, [r1, #0]
	add r0, r3, #1
	lsl r0, r0, #1
	ldrsh r0, [r2, r0]
	mov r2, #0
	str r0, [r1, #4]
	ldr r0, _0202022C ; =0x00001555
	str r0, [r1, #8]
	mov r0, #0x96
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	mov r0, #0xe1
	lsl r0, r0, #0xe
	str r0, [r1, #0x10]
	mov r0, #1
	str r2, [r1, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x54]
	str r2, [r1, #0x58]
	str r2, [r1, #0x5c]
	str r2, [r1, #0x60]
	str r2, [r1, #0x64]
	bx lr
	nop
_02020228: .word 0x020F983C
_0202022C: .word 0x00001555
	thumb_func_end sub_020201E4

	thumb_func_start sub_02020230
sub_02020230: ; 0x02020230
	ldr r2, [r0, #0x58]
	cmp r2, #0
	bne _0202023A
	mov r2, #0
	str r2, [r1, #0]
_0202023A:
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	bne _02020244
	mov r2, #0
	str r2, [r1, #4]
_02020244:
	ldr r0, [r0, #0x60]
	cmp r0, #0
	bne _0202024E
	mov r0, #0
	str r0, [r1, #8]
_0202024E:
	bx lr
	thumb_func_end sub_02020230

	thumb_func_start sub_02020250
sub_02020250: ; 0x02020250
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, [r5, #0x64]
	add r4, r1, #0
	add r6, r2, #0
	cmp r7, #0
	bne _02020268
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02020268:
	add r0, r7, #0
	str r0, [sp]
	add r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02020292
	add r2, r4, #0
	ldmia r2!, {r0, r1}
	add r3, r6, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	ldr r0, [r5, #0x64]
	ldr r2, [r7, #4]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bne _020202A6
	mov r1, #1
	str r1, [r0, #0x10]
	b _020202A6
_02020292:
	ldr r2, [r7, #4]
	mov r1, #0xc
	ldr r0, [r7, #0x20]
	mul r1, r2
	add r2, r0, r1
	ldmia r2!, {r0, r1}
	add r3, r6, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
_020202A6:
	ldr r1, [r5, #0x64]
	ldr r0, [r7, #4]
	ldr r1, [r1, #0]
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r7, #4]
	ldr r1, [sp]
	ldr r0, [r5, #0x64]
	ldr r2, [r1, #0]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	mul r1, r2
	add r3, r4, #0
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _020202EA
	ldr r0, [r4, #0]
	str r0, [r6, #0]
_020202EA:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _020202F6
	ldr r0, [r4, #4]
	str r0, [r6, #4]
_020202F6:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _02020302
	ldr r0, [r4, #8]
	str r0, [r6, #8]
_02020302:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020250

	thumb_func_start sub_02020304
sub_02020304: ; 0x02020304
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r0, #0x54]
	add r6, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _0202038E
	add r0, r7, #1
	cmp r0, r5
	ble _02020322
	bl sub_02022974
_02020322:
	ldr r0, [sp]
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0xc
	ldr r0, [sp]
	mul r1, r5
	bl sub_02018144
	mov r1, #0
	str r0, [r4, #0x20]
	cmp r5, #0
	ble _0202035A
	add r2, r1, #0
	add r0, r1, #0
_02020342:
	ldr r3, [r4, #0x20]
	add r1, r1, #1
	str r0, [r3, r2]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #4]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #8]
	add r2, #0xc
	cmp r1, r5
	blt _02020342
_0202035A:
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _02020376
	str r0, [r4, #0x14]
_02020376:
	mov r0, #2
	tst r0, r6
	beq _02020380
	mov r0, #1
	str r0, [r4, #0x18]
_02020380:
	mov r0, #4
	tst r0, r6
	beq _0202038A
	mov r0, #1
	str r0, [r4, #0x1c]
_0202038A:
	ldr r0, [sp, #0x18]
	str r4, [r0, #0x64]
_0202038E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020304

	thumb_func_start sub_02020390
sub_02020390: ; 0x02020390
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _020203AA
	ldr r0, [r0, #0x20]
	bl sub_020181C4
	ldr r0, [r4, #0x64]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x64]
_020203AA:
	pop {r4, pc}
	thumb_func_end sub_02020390

	thumb_func_start sub_020203AC
sub_020203AC: ; 0x020203AC
	ldr r3, _020203B4 ; =sub_02018144
	mov r1, #0x68
	bx r3
	nop
_020203B4: .word sub_02018144
	thumb_func_end sub_020203AC

	thumb_func_start sub_020203B8
sub_020203B8: ; 0x020203B8
	ldr r3, _020203BC ; =sub_020181C4
	bx r3
	; .align 2, 0
_020203BC: .word sub_020181C4
	thumb_func_end sub_020203B8

	thumb_func_start sub_020203C0
sub_020203C0: ; 0x020203C0
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0xd
_020203C8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020203C8
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020203C0

	thumb_func_start sub_020203D4
sub_020203D4: ; 0x020203D4
	ldr r1, _020203DC ; =0x021C0770
	str r0, [r1, #0]
	bx lr
	nop
_020203DC: .word 0x021C0770
	thumb_func_end sub_020203D4

	thumb_func_start sub_020203E0
sub_020203E0: ; 0x020203E0
	ldr r0, _020203E8 ; =0x021C0770
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020203E8: .word 0x021C0770
	thumb_func_end sub_020203E0

	thumb_func_start sub_020203EC
sub_020203EC: ; 0x020203EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _02020484 ; =0x021C0770
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202047E
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02020436
	add r1, #0x48
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, _02020484 ; =0x021C0770
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	bl sub_02020230
	ldr r0, _02020484 ; =0x021C0770
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_02020250
	ldr r1, _02020484 ; =0x021C0770
	add r0, sp, #0
	ldr r1, [r1, #0]
	bl sub_02020990
	ldr r0, _02020484 ; =0x021C0770
	ldr r3, [r0, #0]
	ldr r2, [r3, #0x54]
	add r3, #0x48
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
_02020436:
	ldr r0, _02020484 ; =0x021C0770
	ldr r5, _02020488 ; =0x021C5CCC
	ldr r4, [r0, #0]
	add r3, r4, #0
	add r2, r4, #0
	add r4, #0x14
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r2, #0x2c
	str r0, [r5, #0]
	add r6, r2, #0
	ldr r5, _0202048C ; =0x021C5CD8
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r3, #0x20
	str r0, [r5, #0]
	add r6, r3, #0
	ldr r5, _02020490 ; =0x021C5CE4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [r5, #0]
	ldr r3, _02020494 ; =0x021C5AD8
	add r0, r4, #0
	bl sub_020BC36C
	ldr r1, _02020498 ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_0202047E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02020484: .word 0x021C0770
_02020488: .word 0x021C5CCC
_0202048C: .word 0x021C5CD8
_02020490: .word 0x021C5CE4
_02020494: .word 0x021C5AD8
_02020498: .word 0x021C5B0C
	thumb_func_end sub_020203EC

	thumb_func_start sub_0202049C
sub_0202049C: ; 0x0202049C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r0, _02020664 ; =0x021C0770
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020204AA
	b _0202065E
_020204AA:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _020204B2
	b _02020618
_020204B2:
	add r1, #0x48
	add r2, sp, #0x34
	bl sub_020BD1B0
	ldr r0, _02020664 ; =0x021C0770
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	bl sub_02020230
	ldr r0, _02020664 ; =0x021C0770
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	add r2, sp, #0x28
	bl sub_02020250
	ldr r1, _02020664 ; =0x021C0770
	add r0, sp, #0x28
	ldr r1, [r1, #0]
	bl sub_02020990
	ldr r0, _02020664 ; =0x021C0770
	ldr r2, [r0, #0]
	ldr r4, [r2, #0x54]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r4, r2, #0
	str r0, [r3, #0]
	add r4, #0x14
	ldmia r4!, {r0, r1}
	add r3, sp, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r4, r2, #0
	str r0, [r3, #0]
	add r4, #0x2c
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldrh r0, [r2, #0x3c]
	ldr r6, [r2, #0x54]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02020668 ; =0x020F983C
	ldrsh r1, [r0, r1]
	str r1, [sp]
	ldrh r1, [r2, #0x3e]
	asr r1, r1, #4
	lsl r4, r1, #1
	add r1, r2, #0
	add r1, #0x40
	ldrh r1, [r1]
	ldr r2, [r2, #0x38]
	asr r1, r1, #4
	lsl r5, r1, #1
	add r1, r4, #1
	lsl r1, r1, #1
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r7, r0, #0x1f
	add r1, r7, #0
	str r0, [sp, #4]
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r0, #0xc
	orr r2, r1
	str r2, [sp, #0x24]
	ldr r0, [r6, #8]
	lsl r1, r5, #1
	add r0, r2, r0
	str r0, [sp, #0x24]
	ldr r0, _02020668 ; =0x020F983C
	ldr r2, [sp, #4]
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	ldr r1, [sp, #0x10]
	ldr r2, _02020668 ; =0x020F983C
	add r0, r1, r0
	add r1, r5, #1
	lsl r1, r1, #1
	str r0, [sp, #0x10]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x14]
	lsl r3, r4, #1
	add r0, r0, r1
	ldrsh r2, [r2, r3]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	add r4, r7, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x18]
	orr r1, r0
	sub r0, r2, r1
	add r3, sp, #0x1c
	str r0, [sp, #0x18]
	ldr r2, _0202066C ; =0x021C5CCC
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x10
	str r0, [r2, #0]
	ldr r2, _02020670 ; =0x021C5CD8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r6, #0
	str r0, [r2, #0]
	ldr r2, _02020674 ; =0x021C5CE4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02020678 ; =0x021C5AD8
	str r0, [r2, #0]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	add r2, r6, #0
	bl sub_020BC36C
	ldr r1, _0202067C ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	add sp, #0x40
	bic r2, r0
	str r2, [r1, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_02020618:
	add r2, r1, #0
	add r2, #0x14
	add r6, r2, #0
	add r4, r1, #0
	add r3, r1, #0
	ldr r5, _0202066C ; =0x021C5CCC
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r3, #0x2c
	str r0, [r5, #0]
	add r6, r3, #0
	ldr r5, _02020670 ; =0x021C5CD8
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r4, #0x20
	str r0, [r5, #0]
	add r6, r4, #0
	ldr r5, _02020674 ; =0x021C5CE4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r2, #0
	ldr r3, _02020678 ; =0x021C5AD8
	add r2, r4, #0
	bl sub_020BC36C
	ldr r1, _0202067C ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_0202065E:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02020664: .word 0x021C0770
_02020668: .word 0x020F983C
_0202066C: .word 0x021C5CCC
_02020670: .word 0x021C5CD8
_02020674: .word 0x021C5CE4
_02020678: .word 0x021C5AD8
_0202067C: .word 0x021C5B0C
	thumb_func_end sub_0202049C

	thumb_func_start sub_02020680
sub_02020680: ; 0x02020680
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020680

	thumb_func_start sub_02020690
sub_02020690: ; 0x02020690
	push {r3, r4}
	add r3, r1, #0
	add r4, r0, #0
	str r4, [r3, #0x54]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r3, #0x58]
	str r0, [r3, #0x5c]
	str r0, [r3, #0x60]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02020690

	thumb_func_start sub_020206B0
sub_020206B0: ; 0x020206B0
	mov r1, #0
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_020206B0

	thumb_func_start sub_020206BC
sub_020206BC: ; 0x020206BC
	str r0, [r2, #0xc]
	add r0, r2, #0
	str r1, [r2, #0x10]
	add r0, #0x44
	ldr r3, _020206CC ; =sub_02020854
	ldrb r0, [r0]
	add r1, r2, #0
	bx r3
	; .align 2, 0
_020206CC: .word sub_02020854
	thumb_func_end sub_020206BC

	thumb_func_start sub_020206D0
sub_020206D0: ; 0x020206D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x20]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_020201E4
	add r3, r6, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02020020
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_02020854
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02020736
	str r6, [r4, #0x54]
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_02020736:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020206D0

	thumb_func_start sub_02020738
sub_02020738: ; 0x02020738
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x1c]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_020201E4
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02020100
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_02020854
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020738

	thumb_func_start sub_02020784
sub_02020784: ; 0x02020784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, [sp, #0x54]
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020201E4
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r6, #0
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #0
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, sp, #0x30
	bl sub_020BD1B0
	add r0, sp, #0x30
	bl sub_020BD384
	str r0, [r4, #0x38]
	mov r6, #0
	add r0, sp, #0x24
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0x18
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0xc
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r3, sp, #0x30
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r6, [sp]
	str r0, [r2, #0]
	str r6, [sp, #4]
	str r6, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_0201E1A0
	strh r0, [r4, #0x3e]
	add r1, r6, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_0201E1A0
	strh r0, [r4, #0x3c]
	add r0, r4, #0
	add r1, r6, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02020854
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0202084E
	str r5, [r4, #0x54]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_0202084E:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020784

	thumb_func_start sub_02020854
sub_02020854: ; 0x02020854
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	cmp r0, #0
	bne _02020890
	ldr r0, [r5, #0x10]
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02020904 ; =0x021C5A94
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_020BCC7C
	ldr r1, _02020908 ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r1, #0
	ldr r0, _0202090C ; =0x02100844
	strb r1, [r5]
	str r1, [r0, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02020890:
	ldr r4, [r5, #0x38]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl sub_020BCFD0
	asr r1, r0, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	ldr r2, [r5, #8]
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r6, #0xc
	orr r3, r0
	ldr r0, [r5, #0xc]
	neg r1, r4
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	lsl r0, r2, #1
	str r0, [sp, #8]
	ldr r0, _02020904 ; =0x021C5A94
	neg r2, r3
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_020BCDC8
	ldr r1, _02020908 ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r0, #1
	strb r0, [r5]
	ldr r0, _0202090C ; =0x02100844
	mov r1, #0
	str r1, [r0, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02020904: .word 0x021C5A94
_02020908: .word 0x021C5B0C
_0202090C: .word 0x02100844
	thumb_func_end sub_02020854

	thumb_func_start sub_02020910
sub_02020910: ; 0x02020910
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	ldr r3, _02020944 ; =sub_02020854
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02020948 ; =0x020F983C
	ldrsh r2, [r0, r2]
	str r2, [r1, #0]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_02020944: .word sub_02020854
_02020948: .word 0x020F983C
	thumb_func_end sub_02020910

	thumb_func_start sub_0202094C
sub_0202094C: ; 0x0202094C
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	ldr r3, _02020988 ; =sub_02020854
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _0202098C ; =0x020F983C
	ldrsh r2, [r0, r2]
	str r2, [r1, #0]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_02020988: .word sub_02020854
_0202098C: .word 0x020F983C
	thumb_func_end sub_0202094C

	thumb_func_start sub_02020990
sub_02020990: ; 0x02020990
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020BD17C
	add r4, #0x20
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020BD17C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020990

	thumb_func_start sub_020209B0
sub_020209B0: ; 0x020209B0
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _020209D0 ; =sub_02020100
	add r0, r1, #0
	bx r3
	nop
_020209D0: .word sub_02020100
	thumb_func_end sub_020209B0

	thumb_func_start sub_020209D4
sub_020209D4: ; 0x020209D4
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _020209F4 ; =sub_02020020
	add r0, r1, #0
	bx r3
	nop
_020209F4: .word sub_02020020
	thumb_func_end sub_020209D4

	thumb_func_start sub_020209F8
sub_020209F8: ; 0x020209F8
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _02020A20 ; =sub_02020100
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_02020A20: .word sub_02020100
	thumb_func_end sub_020209F8

	thumb_func_start sub_02020A24
sub_02020A24: ; 0x02020A24
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _02020A4C ; =sub_02020020
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_02020A4C: .word sub_02020020
	thumb_func_end sub_02020A24

	thumb_func_start sub_02020A50
sub_02020A50: ; 0x02020A50
	ldr r3, _02020A58 ; =sub_02020020
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02020A58: .word sub_02020020
	thumb_func_end sub_02020A50

	thumb_func_start sub_02020A5C
sub_02020A5C: ; 0x02020A5C
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	add r0, r3, #0
	bl sub_02020020
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02020A5C

	thumb_func_start sub_02020A78
sub_02020A78: ; 0x02020A78
	ldr r2, [r1, #0x38]
	ldr r3, _02020A84 ; =sub_02020020
	add r0, r2, r0
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02020A84: .word sub_02020020
	thumb_func_end sub_02020A78

	thumb_func_start sub_02020A88
sub_02020A88: ; 0x02020A88
	add r0, #0x46
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020A88

	thumb_func_start sub_02020A90
sub_02020A90: ; 0x02020A90
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_02020A90

	thumb_func_start sub_02020A94
sub_02020A94: ; 0x02020A94
	ldrh r2, [r1, #0x3c]
	strh r2, [r0]
	ldrh r2, [r1, #0x3e]
	strh r2, [r0, #2]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	add r1, #0x42
	strh r2, [r0, #4]
	ldrh r1, [r1]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_02020A94

	thumb_func_start sub_02020AAC
sub_02020AAC: ; 0x02020AAC
	add r2, r1, #0
	add r2, #0x20
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02020AAC

	thumb_func_start sub_02020ABC
sub_02020ABC: ; 0x02020ABC
	add r2, r1, #0
	add r2, #0x14
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02020ABC

	thumb_func_start sub_02020ACC
sub_02020ACC: ; 0x02020ACC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020ACC

	thumb_func_start sub_02020ADC
sub_02020ADC: ; 0x02020ADC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020ADC

	thumb_func_start sub_02020AEC
sub_02020AEC: ; 0x02020AEC
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	str r2, [r0, #4]
	add r1, r0, #0
	str r2, [r0, #8]
	add r1, #0xd0
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd8
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xdc
	str r2, [r1, #0]
	strb r2, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020AEC

	thumb_func_start sub_02020B14
sub_02020B14: ; 0x02020B14
	mov r3, #0
	str r3, [r0, #0x28]
	add r1, r0, #0
	str r3, [r0, #0x2c]
	add r1, #0x84
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x88
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x8c
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0x90
	add r2, r0, #0
	str r3, [r1, #0]
	add r2, #0xa0
	mov r1, #0x10
_02020B38:
	strb r3, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02020B38
	add r2, r0, #0
	mov r1, #0
	add r2, #0x94
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x98
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x9c
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0xb0
	str r1, [r2, #0]
	str r1, [r0, #0]
	str r1, [r0, #4]
	mov r2, #1
	str r1, [r0, #8]
	lsl r2, r2, #0xc
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	add r2, r0, #0
	str r1, [r0, #0x18]
	add r2, #0xb6
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0xb4
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0xbc
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0xc0
	str r1, [r2, #0]
	add r2, r0, #0
	add r2, #0x24
	strb r1, [r2]
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020B14

	thumb_func_start sub_02020B90
sub_02020B90: ; 0x02020B90
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02020BCC ; =0x021C0774
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02020BA2
	bl sub_02022974
_02020BA2:
	mov r1, #0xe0
	add r0, r4, #0
	mul r1, r6
	bl sub_02018144
	ldr r7, _02020BCC ; =0x021C0774
	mov r4, #0
	str r0, [r7, #0]
	str r6, [r7, #4]
	cmp r6, #0
	ble _02020BCA
	add r5, r4, #0
_02020BBA:
	ldr r0, [r7, #0]
	add r0, r0, r5
	bl sub_02020AEC
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r6
	blt _02020BBA
_02020BCA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02020BCC: .word 0x021C0774
	thumb_func_end sub_02020B90

	thumb_func_start sub_02020BD0
sub_02020BD0: ; 0x02020BD0
	push {r4, r5, r6, lr}
	ldr r6, _02020C04 ; =0x021C0774
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _02020BF0
	add r5, r4, #0
_02020BDE:
	ldr r0, [r6, #0]
	add r0, r0, r5
	bl sub_02020CCC
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _02020BDE
_02020BF0:
	ldr r0, _02020C04 ; =0x021C0774
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02020C04 ; =0x021C0774
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	pop {r4, r5, r6, pc}
	nop
_02020C04: .word 0x021C0774
	thumb_func_end sub_02020BD0

	thumb_func_start sub_02020C08
sub_02020C08: ; 0x02020C08
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02020C40 ; =0x021C0774
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _02020C3C
	add r5, r4, #0
	mov r7, #2
_02020C18:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _02020C26
	bl sub_02020DA8
_02020C26:
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _02020C32
	strb r7, [r1, #3]
_02020C32:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _02020C18
_02020C3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02020C40: .word 0x021C0774
	thumb_func_end sub_02020C08

	thumb_func_start sub_02020C44
sub_02020C44: ; 0x02020C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02020D74
	add r4, r0, #0
	bne _02020C58
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02020C58:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r2, [r5, #0]
	mov r1, #0xc4
	ldr r0, [r5, #4]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xc
	bl sub_02020B14
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_020216A8
	ldr r0, [r5, #4]
	mov r1, #0x10
	bl sub_02018144
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [r5, #4]
	mov r2, #4
	bl sub_020182CC
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl sub_0201DD00
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020C44

	thumb_func_start sub_02020CCC
sub_02020CCC: ; 0x02020CCC
	push {r4, lr}
	add r4, r0, #0
	bne _02020CDA
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02020CDA:
	ldrb r1, [r4]
	cmp r1, #0
	beq _02020D0E
	bl sub_02020D14
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_0201DD3C
	add r0, r4, #0
	bl sub_02020AEC
_02020D0E:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02020CCC

	thumb_func_start sub_02020D14
sub_02020D14: ; 0x02020D14
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _02020D24
	bne _02020D20
	bl sub_02022974
_02020D20:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02020D24:
	ldrb r1, [r0]
	cmp r1, #0
	beq _02020D4A
	add r1, r0, #0
	add r1, #0xc8
	add r4, r0, #0
	ldr r1, [r1, #0]
	add r4, #0xc
	cmp r1, r4
	beq _02020D4A
_02020D38:
	add r0, r1, #0
	add r0, #0xbc
	ldr r5, [r0, #0]
	add r0, r1, #0
	bl sub_020211FC
	add r1, r5, #0
	cmp r5, r4
	bne _02020D38
_02020D4A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02020D14

	thumb_func_start sub_02020D50
sub_02020D50: ; 0x02020D50
	push {r4, lr}
	add r4, r0, #0
	bne _02020D5A
	bl sub_02022974
_02020D5A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _02020D64
	mov r0, #0
	pop {r4, pc}
_02020D64:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02020D50

	thumb_func_start sub_02020D68
sub_02020D68: ; 0x02020D68
	ldrb r1, [r0, #3]
	cmp r1, #2
	bne _02020D72
	mov r1, #0
	strb r1, [r0, #3]
_02020D72:
	bx lr
	thumb_func_end sub_02020D68

	thumb_func_start sub_02020D74
sub_02020D74: ; 0x02020D74
	push {r3, r4}
	ldr r0, _02020DA4 ; =0x021C0774
	mov r1, #0
	ldr r3, [r0, #4]
	cmp r3, #0
	ble _02020D9C
	ldr r4, [r0, #0]
	add r2, r4, #0
_02020D84:
	ldrb r0, [r2]
	cmp r0, #0
	bne _02020D94
	mov r0, #0xe0
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4}
	bx lr
_02020D94:
	add r1, r1, #1
	add r2, #0xe0
	cmp r1, r3
	blt _02020D84
_02020D9C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_02020DA4: .word 0x021C0774
	thumb_func_end sub_02020D74

	thumb_func_start sub_02020DA8
sub_02020DA8: ; 0x02020DA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bne _02020DB4
	bl sub_02022974
_02020DB4:
	add r0, sp, #0
	bl sub_020BB4C8
	add r0, r5, #0
	add r0, #0xc8
	ldr r4, [r0, #0]
	add r5, #0xc
	cmp r4, r5
	beq _02020E24
	add r6, sp, #0
_02020DC8:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020E1C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02020DDE
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	blx r2
_02020DDE:
	add r0, r4, #0
	bl sub_0202185C
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	bne _02020DF6
	add r0, r4, #0
	bl sub_0202144C
	b _02020E00
_02020DF6:
	cmp r0, #2
	bne _02020E00
	add r0, r4, #0
	bl sub_02021414
_02020E00:
	ldr r2, [r4, #0x18]
	cmp r2, #0
	bne _02020E08
	add r2, r6, #0
_02020E08:
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x30
	add r1, r4, #0
	add r3, #0xc
	bl sub_0201CA74
	add r0, r4, #0
	bl sub_0202187C
_02020E1C:
	add r4, #0xbc
	ldr r4, [r4, #0]
	cmp r4, r5
	bne _02020DC8
_02020E24:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02020DA8

	thumb_func_start sub_02020E28
sub_02020E28: ; 0x02020E28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021078
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020210F4
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020E5E
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02021744
_02020E5E:
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020E28

	thumb_func_start sub_02020E78
sub_02020E78: ; 0x02020E78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02020EA2
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_02020EA2:
	add r0, r5, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x24]
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021148
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202117C
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02020EDE
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02021744
_02020EDE:
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020E78

	thumb_func_start sub_02020EF8
sub_02020EF8: ; 0x02020EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020AE8C4
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020AE8D8
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020AEA04
	str r0, [sp]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02020F36
	ldr r3, _02020F88 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r2, r1, #0
	blx r3
	str r0, [r4, #0]
	cmp r0, #0
	bne _02020F3A
	bl sub_02022974
	b _02020F3A
_02020F36:
	mov r0, #0
	str r0, [r4, #0]
_02020F3A:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02020F56
	ldr r3, _02020F88 ; =0x02100DEC
	mov r1, #1
	ldr r3, [r3, #0]
	mov r2, #0
	blx r3
	str r0, [r6, #0]
	cmp r0, #0
	bne _02020F5A
	bl sub_02022974
	b _02020F5A
_02020F56:
	mov r0, #0
	str r0, [r6, #0]
_02020F5A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02020F7E
	ldr r3, _02020F8C ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	mov r2, #0
	blx r3
	str r0, [r7, #0]
	cmp r0, #0
	bne _02020F82
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02020F7E:
	mov r0, #0
	str r0, [r7, #0]
_02020F82:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02020F88: .word 0x02100DEC
_02020F8C: .word 0x02100DF4
	thumb_func_end sub_02020EF8

	thumb_func_start sub_02020F90
sub_02020F90: ; 0x02020F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_020AE9B8
	add r0, r5, #0
	bl sub_020AEA70
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020F90

	thumb_func_start sub_02020FA4
sub_02020FA4: ; 0x02020FA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r2, #0]
	ldr r2, [r3, #0]
	add r5, r0, #0
	bl sub_020AE8EC
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_020AEA18
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020AF1E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02020FA4

	thumb_func_start sub_02020FC8
sub_02020FC8: ; 0x02020FC8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02020FDA
	ldr r1, _02020FF4 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
_02020FDA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02020FE6
	ldr r1, _02020FF4 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
_02020FE6:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02020FF2
	ldr r1, _02020FF8 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
_02020FF2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02020FF4: .word 0x02100DF0
_02020FF8: .word 0x02100DF8
	thumb_func_end sub_02020FC8

	thumb_func_start sub_02020FFC
sub_02020FFC: ; 0x02020FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	beq _0202100C
	cmp r5, #0
	bne _02021012
_0202100C:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021012:
	bl sub_020AE8C4
	str r0, [sp]
	add r0, r4, #0
	bl sub_020AE8D8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020AEA04
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020AE8C4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020AE8D8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020AEA04
	ldr r1, [sp]
	cmp r1, r6
	bne _0202104E
	ldr r1, [sp, #4]
	cmp r1, r7
	bne _0202104E
	cmp r4, r0
	beq _02021054
_0202104E:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021054:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020FFC

	thumb_func_start sub_0202105C
sub_0202105C: ; 0x0202105C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02021074
	bl sub_0201DDAC
	mov r0, #0
	add r4, #0xb0
	str r0, [r4, #0]
_02021074:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202105C

	thumb_func_start sub_02021078
sub_02021078: ; 0x02021078
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r4, [r0, #0]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02021788
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0x30
	bl sub_020AE608
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	beq _020210BA
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_02020FFC
	b _020210BC
_020210BA:
	mov r0, #0
_020210BC:
	cmp r0, #0
	bne _020210F0
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _020210DA
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_020210DA:
	add r0, r5, #0
	add r0, #0x8c
	add r1, r5, #0
	add r2, r5, #0
	add r5, #0x9c
	ldr r0, [r0, #0]
	add r1, #0x94
	add r2, #0x98
	add r3, r5, #0
	bl sub_02020EF8
_020210F0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021078

	thumb_func_start sub_020210F4
sub_020210F4: ; 0x020210F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl sub_020217D4
	add r1, r5, #0
	add r1, #0x90
	add r3, r5, #0
	add r3, #0xa0
	str r0, [r1, #0]
	add r4, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r1, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp, #4]
	add r6, #0xdc
	add r2, #0x90
	add r3, #0x94
	ldr r0, [r6, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	bl sub_0201DD54
	add r5, #0xb0
	str r0, [r5, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020210F4

	thumb_func_start sub_02021148
sub_02021148: ; 0x02021148
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, r4, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02021788
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0x30
	bl sub_020AE608
	add r0, r4, #0
	bl sub_020217D4
	add r5, #0x90
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021148

	thumb_func_start sub_0202117C
sub_0202117C: ; 0x0202117C
	push {r3, r4}
	add r4, r0, #0
	add r2, r4, #0
	add r3, r1, #0
	add r3, #0xc
	add r2, #0xa0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r4, #0xb0
	str r0, [r4, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202117C

	thumb_func_start sub_0202119C
sub_0202119C: ; 0x0202119C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0]
	cmp r6, #0
	bne _020211AA
	mov r0, #0
	pop {r4, r5, r6, pc}
_020211AA:
	add r0, r6, #0
	bl sub_020216E0
	add r4, r0, #0
	bne _020211B8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020211B8:
	add r3, r5, #0
	str r6, [r4, #0x28]
	add r3, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r5, #0
	str r0, [r2, #0]
	add r3, #0x14
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0xb6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_020217E0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202119C

	thumb_func_start sub_020211FC
sub_020211FC: ; 0x020211FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _02021206
	bl sub_02022974
_02021206:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02021214
	bl sub_02022974
_02021214:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	ldr r4, [r5, #0x28]
	cmp r0, #0
	bne _02021224
	mov r0, #0
	pop {r3, r4, r5, pc}
_02021224:
	add r0, r5, #0
	bl sub_02021768
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02021244
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02020FC8
_02021244:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202105C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202170C
	mov r0, #1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020211FC

	thumb_func_start sub_0202125C
sub_0202125C: ; 0x0202125C
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4, #0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0202125C

	thumb_func_start sub_02021284
sub_02021284: ; 0x02021284
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4, #0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02021284

	thumb_func_start sub_020212A8
sub_020212A8: ; 0x020212A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _020212B6
	bl sub_02022974
_020212B6:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020212A8

	thumb_func_start sub_020212C0
sub_020212C0: ; 0x020212C0
	push {r4, lr}
	add r4, r0, #0
	bne _020212CA
	bl sub_02022974
_020212CA:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020212C0

	thumb_func_start sub_020212D0
sub_020212D0: ; 0x020212D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _020212DE
	bl sub_02022974
_020212DE:
	ldmia r5!, {r0, r1}
	add r4, #0xc
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020212D0

	thumb_func_start sub_020212EC
sub_020212EC: ; 0x020212EC
	push {r4, lr}
	add r4, r0, #0
	bne _020212F6
	bl sub_02022974
_020212F6:
	add r4, #0xc
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020212EC

	thumb_func_start sub_020212FC
sub_020212FC: ; 0x020212FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202130A
	bl sub_02022974
_0202130A:
	str r4, [r5, #0x18]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020212FC

	thumb_func_start sub_02021310
sub_02021310: ; 0x02021310
	push {r4, lr}
	add r4, r0, #0
	bne _0202131A
	bl sub_02022974
_0202131A:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021310

	thumb_func_start sub_02021320
sub_02021320: ; 0x02021320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202132E
	bl sub_02022974
_0202132E:
	add r5, #0x24
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021320

	thumb_func_start sub_02021334
sub_02021334: ; 0x02021334
	push {r4, lr}
	add r4, r0, #0
	bne _0202133E
	bl sub_02022974
_0202133E:
	add r4, #0x24
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021334

	thumb_func_start sub_02021344
sub_02021344: ; 0x02021344
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021352
	bl sub_02022974
_02021352:
	add r5, #0xb6
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021344

	thumb_func_start sub_02021358
sub_02021358: ; 0x02021358
	push {r4, lr}
	add r4, r0, #0
	bne _02021362
	bl sub_02022974
_02021362:
	add r4, #0xb6
	ldrh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021358

	thumb_func_start sub_02021368
sub_02021368: ; 0x02021368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021376
	bl sub_02022974
_02021376:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021804
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021368

	thumb_func_start sub_02021380
sub_02021380: ; 0x02021380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202138E
	bl sub_02022974
_0202138E:
	add r5, #0xb8
	str r4, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021380

	thumb_func_start sub_02021394
sub_02021394: ; 0x02021394
	push {r4, lr}
	add r4, r0, #0
	bne _0202139E
	bl sub_02022974
_0202139E:
	add r4, #0xb8
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02021394

	thumb_func_start sub_020213A4
sub_020213A4: ; 0x020213A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020213B2
	bl sub_02022974
_020213B2:
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r5, #0
	bl sub_020217F4
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r5, #0xb8
	add r0, r0, r4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020213A4

	thumb_func_start sub_020213D4
sub_020213D4: ; 0x020213D4
	push {r4, lr}
	add r4, r0, #0
	bne _020213DE
	bl sub_02022974
_020213DE:
	add r1, r4, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_020217F4
	add r4, #0xb8
	ldr r1, [r4, #0]
	sub r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020213D4

	thumb_func_start sub_020213F4
sub_020213F4: ; 0x020213F4
	push {r4, lr}
	add r4, r0, #0
	bne _020213FE
	bl sub_02022974
_020213FE:
	add r4, #0x88
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020213F4

	thumb_func_start sub_02021404
sub_02021404: ; 0x02021404
	push {r4, lr}
	add r4, r0, #0
	bne _0202140E
	bl sub_02022974
_0202140E:
	add r4, #0xb4
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021404

	thumb_func_start sub_02021414
sub_02021414: ; 0x02021414
	push {r3, lr}
	add r1, r0, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _0202142E
	add r0, r1, #0
	add r0, #0xb0
	add r1, #0xb8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0201DDD8
_0202142E:
	pop {r3, pc}
	thumb_func_end sub_02021414

	thumb_func_start sub_02021430
sub_02021430: ; 0x02021430
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021430

	thumb_func_start sub_02021438
sub_02021438: ; 0x02021438
	add r0, #0x8c
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021438

	thumb_func_start sub_02021440
sub_02021440: ; 0x02021440
	add r0, #0x30
	bx lr
	thumb_func_end sub_02021440

	thumb_func_start sub_02021444
sub_02021444: ; 0x02021444
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021444

	thumb_func_start sub_0202144C
sub_0202144C: ; 0x0202144C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r0, #0xa0
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl sub_0202414C
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	add r0, r4, #0
	add r0, #0x88
	ldrb r2, [r2, #2]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0202149C
	add r0, r4, #0
	add r2, sp, #0
	add r0, #0x88
	add r4, #0x90
	ldrb r2, [r2, #3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_020215A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202144C

	thumb_func_start sub_0202149C
sub_0202149C: ; 0x0202149C
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _020214AC
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020214AC
	add r6, r0, r3
	b _020214AE
_020214AC:
	mov r6, #0
_020214AE:
	ldrh r0, [r6]
	add r4, r6, r0
	cmp r1, #0
	beq _020214DC
	add r0, r1, #0
	add r0, #0x3c
	beq _020214D8
	add r3, r1, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r2, r3
	bhs _020214D8
	add r1, #0x42
	ldrh r1, [r1]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _020214DE
_020214D8:
	mov r0, #0
	b _020214DE
_020214DC:
	mov r0, #0
_020214DE:
	ldr r0, [r0, #0]
	mov r5, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4, #1]
	cmp r0, #0
	ble _02021520
_020214EC:
	cmp r4, #0
	beq _02021506
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02021506
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _02021508
_02021506:
	mov r1, #0
_02021508:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _02021518
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02021524
_02021518:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blt _020214EC
_02021520:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202149C

	thumb_func_start sub_02021524
sub_02021524: ; 0x02021524
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	ble _02021596
	add r7, r5, #4
_02021542:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _0202156E
	cmp r7, #0
	beq _02021562
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _02021562
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _02021564
_02021562:
	mov r0, #0
_02021564:
	cmp r0, #0
	beq _0202156E
	ldr r0, [r0, #0]
	add r4, r5, r0
	b _02021570
_0202156E:
	mov r4, #0
_02021570:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _0202159C ; =0x0000FFFF
	cmp r1, r0
	bls _02021584
	bl sub_02022974
_02021584:
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blt _02021542
_02021596:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202159C: .word 0x0000FFFF
	thumb_func_end sub_02021524

	thumb_func_start sub_020215A0
sub_020215A0: ; 0x020215A0
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _020215B0
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020215B0
	add r6, r0, r3
	b _020215B2
_020215B0:
	mov r6, #0
_020215B2:
	ldrh r0, [r6, #2]
	add r4, r6, r0
	cmp r1, #0
	beq _020215DE
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _020215DE
	add r0, r1, r0
	beq _020215DA
	ldrb r1, [r0, #1]
	cmp r2, r1
	bhs _020215DA
	ldrh r1, [r0, #6]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _020215E0
_020215DA:
	mov r0, #0
	b _020215E0
_020215DE:
	mov r0, #0
_020215E0:
	ldrh r1, [r0, #2]
	ldrh r7, [r0]
	mov r0, #1
	tst r0, r1
	bne _020215EC
	lsr r7, r7, #1
_020215EC:
	ldrb r0, [r4, #1]
	mov r5, #0
	cmp r0, #0
	bls _02021628
_020215F4:
	cmp r4, #0
	beq _0202160E
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0202160E
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _02021610
_0202160E:
	mov r1, #0
_02021610:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _02021620
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0202162C
_02021620:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _020215F4
_02021628:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020215A0

	thumb_func_start sub_0202162C
sub_0202162C: ; 0x0202162C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	bls _0202169E
	add r7, r5, #4
_0202164A:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _02021676
	cmp r7, #0
	beq _0202166A
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _0202166A
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _0202166C
_0202166A:
	mov r0, #0
_0202166C:
	cmp r0, #0
	beq _02021676
	ldr r0, [r0, #0]
	add r4, r5, r0
	b _02021678
_02021676:
	mov r4, #0
_02021678:
	ldrh r1, [r4, #0x1c]
	ldr r0, _020216A4 ; =0x00001FFF
	and r1, r0
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _020216A4 ; =0x00001FFF
	cmp r1, r0
	bls _0202168C
	bl sub_02022974
_0202168C:
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	strh r0, [r4, #0x1c]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blo _0202164A
_0202169E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020216A4: .word 0x00001FFF
	thumb_func_end sub_0202162C

	thumb_func_start sub_020216A8
sub_020216A8: ; 0x020216A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r7, #0
	cmp r0, #0
	ble _020216D8
	add r4, r7, #0
	add r6, r7, #0
_020216B8:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl sub_02020B14
	ldr r0, [r5, #4]
	add r7, r7, #1
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r4, #0xc4
	str r1, [r0, r6]
	ldr r0, [r5, #8]
	add r6, r6, #4
	cmp r7, r0
	blt _020216B8
_020216D8:
	mov r0, #0
	add r5, #0xd4
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020216A8

	thumb_func_start sub_020216E0
sub_020216E0: ; 0x020216E0
	add r1, r0, #0
	add r1, #0xd4
	ldr r3, [r1, #0]
	ldr r1, [r0, #8]
	cmp r3, r1
	blt _020216F0
	mov r0, #0
	bx lr
_020216F0:
	add r1, r0, #0
	add r1, #0xd0
	ldr r2, [r1, #0]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, #0xd4
	add r1, r1, #1
	str r1, [r0, #0]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020216E0

	thumb_func_start sub_0202170C
sub_0202170C: ; 0x0202170C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r4, r1, #0
	cmp r0, #0
	bgt _0202171E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202171E:
	add r0, r4, #0
	bl sub_02020B14
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xd0
	add r5, #0xd4
	ldr r1, [r0, #0]
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202170C

	thumb_func_start sub_02021744
sub_02021744: ; 0x02021744
	add r2, r0, #0
	add r2, #0xc0
	ldr r3, [r2, #0]
	add r2, r1, #0
	add r2, #0xc0
	str r3, [r2, #0]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r2, #0xbc
	str r1, [r2, #0]
	add r2, r1, #0
	add r2, #0xbc
	str r0, [r2, #0]
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021744

	thumb_func_start sub_02021768
sub_02021768: ; 0x02021768
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r1, #0xbc
	str r2, [r1, #0]
	add r1, r0, #0
	add r0, #0xbc
	add r1, #0xc0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02021768

	thumb_func_start sub_02021788
sub_02021788: ; 0x02021788
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	bl sub_0202189C
	add r7, r0, #0
	bl sub_020B3C0C
	add r4, r0, #0
	beq _020217BE
	add r1, r4, #0
	add r1, #8
	beq _020217B2
	ldrb r0, [r4, #9]
	cmp r0, #0
	bls _020217B2
	ldrh r0, [r4, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _020217B4
_020217B2:
	mov r0, #0
_020217B4:
	cmp r0, #0
	beq _020217BE
	ldr r0, [r0, #0]
	add r0, r4, r0
	b _020217C0
_020217BE:
	mov r0, #0
_020217C0:
	str r0, [r6, #0]
	cmp r5, #0
	beq _020217CE
	add r0, r7, #0
	bl sub_020B3C1C
	str r0, [r5, #0]
_020217CE:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02021788

	thumb_func_start sub_020217D4
sub_020217D4: ; 0x020217D4
	ldr r3, _020217DC ; =sub_0202189C
	mov r1, #1
	bx r3
	nop
_020217DC: .word sub_0202189C
	thumb_func_end sub_020217D4

	thumb_func_start sub_020217E0
sub_020217E0: ; 0x020217E0
	push {r3, lr}
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	bne _020217EE
	bl sub_02020E28
	pop {r3, pc}
_020217EE:
	bl sub_02020E78
	pop {r3, pc}
	thumb_func_end sub_020217E0

	thumb_func_start sub_020217F4
sub_020217F4: ; 0x020217F4
	push {r3, lr}
	ldr r0, [r0, #0x2c]
	bl sub_020218B4
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020217F4

	thumb_func_start sub_02021804
sub_02021804: ; 0x02021804
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	bl sub_020218B4
	add r5, #0xb8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02021824
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021804

	thumb_func_start sub_02021824
sub_02021824: ; 0x02021824
	push {r3, r4, r5, r6}
	ldr r4, [r0, #0]
	ldr r6, [r1, #0]
	lsl r4, r4, #0xc
	mov r3, #0
	cmp r4, r6
	bgt _0202183A
	ldr r5, [r0, #4]
	lsl r5, r5, #0xc
	cmp r5, r6
	bge _0202183E
_0202183A:
	str r4, [r1, #0]
	b _02021856
_0202183E:
	add r2, r6, r2
	cmp r5, r2
	bge _02021854
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0202184E
	str r4, [r1, #0]
	b _02021856
_0202184E:
	mov r3, #1
	str r5, [r1, #0]
	b _02021856
_02021854:
	str r2, [r1, #0]
_02021856:
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02021824

	thumb_func_start sub_0202185C
sub_0202185C: ; 0x0202185C
	push {r3, lr}
	add r3, r0, #0
	add r0, #0x9c
	str r0, [sp]
	add r0, r3, #0
	add r1, r3, #0
	add r2, r3, #0
	add r0, #0x8c
	add r1, #0x84
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, #0x94
	add r3, #0x98
	bl sub_02020FA4
	pop {r3, pc}
	thumb_func_end sub_0202185C

	thumb_func_start sub_0202187C
sub_0202187C: ; 0x0202187C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020AF298
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0
	bl sub_02020F90
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0202187C

	thumb_func_start sub_0202189C
sub_0202189C: ; 0x0202189C
	cmp r1, #0
	beq _020218A6
	cmp r1, #1
	beq _020218AA
	b _020218AE
_020218A6:
	ldr r0, [r0, #0]
	bx lr
_020218AA:
	ldr r0, [r0, #4]
	bx lr
_020218AE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202189C

	thumb_func_start sub_020218B4
sub_020218B4: ; 0x020218B4
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_020218B4

	thumb_func_start sub_020218BC
sub_020218BC: ; 0x020218BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _020218C6
	bl sub_02022974
_020218C6:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _020218D0
	bl sub_02022974
_020218D0:
	mov r1, #0x49
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bne _020218E2
	bl sub_02022974
_020218E2:
	add r0, r4, #0
	bl sub_02021A50
	ldr r2, [r5, #0]
	ldr r0, [r5, #8]
	lsl r1, r2, #6
	add r1, r2, r1
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #0]
	cmp r0, #0
	bne _02021900
	bl sub_02022974
_02021900:
	ldr r0, [r5, #0]
	str r0, [r4, #4]
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _02021918
	bl sub_02022974
_02021918:
	add r0, r4, #0
	bl sub_02022518
	add r0, r4, #0
	add r0, #0x10
	bl sub_02021A78
	add r2, r4, #0
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, #0x10
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #4]
	add r1, #8
	str r0, [r4, r1]
	ldr r0, [r5, #8]
	ldr r1, _02021960 ; =0x02100848
	bl sub_02017A40
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r1, r4, r1
	bl sub_020A6D88
	mov r0, #0x12
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02021960: .word 0x02100848
	thumb_func_end sub_020218BC

	thumb_func_start sub_02021964
sub_02021964: ; 0x02021964
	push {r4, lr}
	add r4, r0, #0
	bne _0202196E
	mov r0, #0
	pop {r4, pc}
_0202196E:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _02021978
	mov r0, #1
	pop {r4, pc}
_02021978:
	bl sub_020219C0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02021A50
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021964

	thumb_func_start sub_020219A4
sub_020219A4: ; 0x020219A4
	cmp r0, #0
	bne _020219AC
	mov r0, #0
	bx lr
_020219AC:
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020219B6
	mov r0, #0
	bx lr
_020219B6:
	mov r2, #0x12
	lsl r2, r2, #4
	str r1, [r0, r2]
	mov r0, #1
	bx lr
	thumb_func_end sub_020219A4

	thumb_func_start sub_020219C0
sub_020219C0: ; 0x020219C0
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _020219CA
	mov r0, #0
	pop {r4, r5, r6, pc}
_020219CA:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020219D4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020219D4:
	mov r1, #0x11
	lsl r1, r1, #4
	add r4, r0, #0
	ldr r1, [r0, r1]
	add r4, #0x10
	cmp r1, r4
	beq _020219F4
	mov r6, #1
	lsl r6, r6, #8
_020219E6:
	ldr r5, [r1, r6]
	add r0, r1, #0
	bl sub_02021BD4
	add r1, r5, #0
	cmp r5, r4
	bne _020219E6
_020219F4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020219C0

	thumb_func_start sub_020219F8
sub_020219F8: ; 0x020219F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02021A02
	bl sub_02022974
_02021A02:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02021A44
	sub r0, #0x10
	add r6, r5, #0
	ldr r4, [r5, r0]
	add r6, #0x10
	cmp r4, r6
	beq _02021A44
	ldr r7, _02021A48 ; =0x020E56E4
_02021A1A:
	add r2, r4, #0
	add r2, #0x34
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	add r1, r4, #0
	add r1, #0x35
	ldrb r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02021A4C ; =0x020E56EC
	ldr r1, [r1, r2]
	blx r1
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r4, r0]
	cmp r4, r6
	bne _02021A1A
_02021A44:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021A48: .word 0x020E56E4
_02021A4C: .word 0x020E56EC
	thumb_func_end sub_020219F8

	thumb_func_start sub_02021A50
sub_02021A50: ; 0x02021A50
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #0x45
	str r1, [r4, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x10
	bl sub_02021A78
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021A50

	thumb_func_start sub_02021A78
sub_02021A78: ; 0x02021A78
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	str r1, [r4, #0x3c]
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xb4
	bl sub_020A818C
	add r0, r4, #0
	add r0, #0xd8
	bl sub_020A81D0
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021A78

	thumb_func_start sub_02021AA0
sub_02021AA0: ; 0x02021AA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02022550
	add r4, r0, #0
	bne _02021AB2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021AB2:
	ldr r0, [r5, #0]
	add r6, r5, #0
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xf0
	add r6, #8
	strh r2, [r0]
	ldmia r6!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, r5, #0
	str r0, [r3, #0]
	add r6, #0x14
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldrh r0, [r5, #0x20]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldr r1, [r5, #0x28]
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0xf4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x27
	strb r2, [r0]
	str r2, [r4, #0x2c]
	add r0, r4, #0
	str r2, [r4, #0x30]
	mov r1, #0x11
	add r0, #0x28
	strb r1, [r0]
	mov r0, #0x45
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x26
	ldrb r1, [r1]
	bl sub_020AC3AC
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	mov r3, #2
	and r1, r2
	and r2, r3
	bl sub_020AC46C
	add r0, r4, #0
	mov r2, #1
	add r0, #0x34
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	lsl r0, r2, #0xd
	str r0, [r4, #0x38]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x2c]
	add r2, r4, #0
	bl sub_02022110
	cmp r0, #0
	bne _02021B62
	add r0, r4, #0
	bl sub_02021BD4
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021B62:
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02022464
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02021AA0

	thumb_func_start sub_02021B90
sub_02021B90: ; 0x02021B90
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldr r0, [r2, #0]
	add r4, r2, #0
	str r0, [sp]
	ldr r0, [r2, #4]
	add r4, #8
	str r0, [sp, #4]
	ldmia r4!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [r3, #0]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [r2, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [r2, #0x18]
	str r0, [sp, #0x28]
	ldr r0, [r2, #0x1c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02021AA0
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021B90

	thumb_func_start sub_02021BD4
sub_02021BD4: ; 0x02021BD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xec
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02021C4C
	add r1, r5, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02021BF0
	bl sub_020224FC
_02021BF0:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _02021C1A
	add r1, r5, #0
	add r1, #0xf8
	add r0, r5, #0
	add r4, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xb4
	add r4, #0x40
	bl sub_020A81B0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02021C1A
	ldr r0, [r4, #0x60]
	bl sub_020AB424
_02021C1A:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02021C3C
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02021C32
	bl sub_020181C4
_02021C32:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02021C3C
	bl sub_020181C4
_02021C3C:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	ldr r0, [r5, #0x3c]
	add r1, r5, #0
	bl sub_0202256C
_02021C4C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021BD4

	thumb_func_start sub_02021C50
sub_02021C50: ; 0x02021C50
	add r2, r1, #0
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021C50

	thumb_func_start sub_02021C60
sub_02021C60: ; 0x02021C60
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02021C60

	thumb_func_start sub_02021C70
sub_02021C70: ; 0x02021C70
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02021C70

	thumb_func_start sub_02021C80
sub_02021C80: ; 0x02021C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02021C70
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021CF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021C80

	thumb_func_start sub_02021C94
sub_02021C94: ; 0x02021C94
	strh r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02021C94

	thumb_func_start sub_02021C98
sub_02021C98: ; 0x02021C98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02021C94
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021CF8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021C98

	thumb_func_start sub_02021CAC
sub_02021CAC: ; 0x02021CAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CBA
	bl sub_02022974
_02021CBA:
	cmp r4, #2
	blt _02021CC2
	bl sub_02022974
_02021CC2:
	add r5, #0x34
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CAC

	thumb_func_start sub_02021CC8
sub_02021CC8: ; 0x02021CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CD6
	bl sub_02022974
_02021CD6:
	cmp r4, #2
	blt _02021CDE
	bl sub_02022974
_02021CDE:
	add r5, #0x35
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CC8

	thumb_func_start sub_02021CE4
sub_02021CE4: ; 0x02021CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021CF2
	bl sub_02022974
_02021CF2:
	str r4, [r5, #0x38]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021CE4

	thumb_func_start sub_02021CF8
sub_02021CF8: ; 0x02021CF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021D06
	bl sub_02022974
_02021D06:
	add r5, #0x26
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021CF8

	thumb_func_start sub_02021D0C
sub_02021D0C: ; 0x02021D0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021D1A
	bl sub_02022974
_02021D1A:
	add r0, r5, #0
	add r0, #0x27
	strb r4, [r0]
	mov r0, #0
	add r5, #0x26
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021D0C

	thumb_func_start sub_02021D28
sub_02021D28: ; 0x02021D28
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D28

	thumb_func_start sub_02021D2C
sub_02021D2C: ; 0x02021D2C
	add r0, #0x18
	bx lr
	thumb_func_end sub_02021D2C

	thumb_func_start sub_02021D30
sub_02021D30: ; 0x02021D30
	ldrh r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_02021D30

	thumb_func_start sub_02021D34
sub_02021D34: ; 0x02021D34
	add r0, #0x34
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D34

	thumb_func_start sub_02021D3C
sub_02021D3C: ; 0x02021D3C
	add r0, #0x35
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021D3C

	thumb_func_start sub_02021D44
sub_02021D44: ; 0x02021D44
	push {r4, lr}
	add r4, r0, #0
	bne _02021D4E
	bl sub_02022974
_02021D4E:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021D5C
	cmp r0, #3
	bne _02021D62
_02021D5C:
	ldr r0, [r4, #0x44]
	ldrh r0, [r0]
	pop {r4, pc}
_02021D62:
	add r4, #0xb0
	ldr r0, [r4, #0]
	ldrh r0, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021D44

	thumb_func_start sub_02021D6C
sub_02021D6C: ; 0x02021D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021D44
	cmp r0, r4
	bhi _02021D7E
	bl sub_02022974
_02021D7E:
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	add r0, #0xf0
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021D96
	cmp r0, #3
	bne _02021DB2
_02021D96:
	add r5, #0x40
	lsl r1, r4, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl sub_020A6EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl sub_020A8D48
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_02021DB2:
	add r5, #0x40
	ldr r0, [r5, #0x70]
	bl sub_020A6EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl sub_020A9380
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021D6C

	thumb_func_start sub_02021DCC
sub_02021DCC: ; 0x02021DCC
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xf0
	ldrh r2, [r2]
	cmp r2, r1
	beq _02021DDC
	bl sub_02021D6C
_02021DDC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02021DCC

	thumb_func_start sub_02021DE0
sub_02021DE0: ; 0x02021DE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02021DF0
	cmp r0, #3
	bne _02021E0A
_02021DF0:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl sub_020A788C
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E50
	pop {r3, r4, r5, pc}
_02021E0A:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl sub_020A788C
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E50
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021DE0

	thumb_func_start sub_02021E24
sub_02021E24: ; 0x02021E24
	add r0, #0xf0
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E24

	thumb_func_start sub_02021E2C
sub_02021E2C: ; 0x02021E2C
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2, #0]
	cmp r2, #1
	beq _02021E3C
	cmp r2, #3
	bne _02021E46
_02021E3C:
	add r0, #0x40
	add r0, #8
	bl sub_020A8D60
	pop {r3, pc}
_02021E46:
	add r0, #0x40
	add r0, #8
	bl sub_020A952C
	pop {r3, pc}
	thumb_func_end sub_02021E2C

	thumb_func_start sub_02021E50
sub_02021E50: ; 0x02021E50
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2, #0]
	cmp r2, #1
	beq _02021E60
	cmp r2, #3
	bne _02021E6A
_02021E60:
	add r0, #0x40
	add r0, #8
	bl sub_020A8D80
	pop {r3, pc}
_02021E6A:
	add r0, #0x40
	add r0, #8
	bl sub_020A960C
	pop {r3, pc}
	thumb_func_end sub_02021E50

	thumb_func_start sub_02021E74
sub_02021E74: ; 0x02021E74
	ldr r3, _02021E7C ; =sub_020A7818
	add r0, #0x40
	add r0, #8
	bx r3
	; .align 2, 0
_02021E7C: .word sub_020A7818
	thumb_func_end sub_02021E74

	thumb_func_start sub_02021E80
sub_02021E80: ; 0x02021E80
	add r0, #0xf2
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E80

	thumb_func_start sub_02021E88
sub_02021E88: ; 0x02021E88
	add r0, #0xf2
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021E88

	thumb_func_start sub_02021E90
sub_02021E90: ; 0x02021E90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021E9E
	bl sub_02022974
_02021E9E:
	add r0, r5, #0
	add r0, #0x29
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021E90

	thumb_func_start sub_02021EC4
sub_02021EC4: ; 0x02021EC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021E90
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r4, #0x29
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021EC4

	thumb_func_start sub_02021EE8
sub_02021EE8: ; 0x02021EE8
	add r0, #0x29
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021EE8

	thumb_func_start sub_02021EF0
sub_02021EF0: ; 0x02021EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02021EFE
	bl sub_02022974
_02021EFE:
	add r0, r5, #0
	add r0, #0x2a
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021EF0

	thumb_func_start sub_02021F24
sub_02021F24: ; 0x02021F24
	push {r4, lr}
	add r4, r0, #0
	bl sub_02021EF0
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0xd8
	bl sub_020222C4
	add r1, r4, #0
	add r1, #0x2a
	ldrb r1, [r1]
	add r4, #0x2a
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021F24

	thumb_func_start sub_02021F48
sub_02021F48: ; 0x02021F48
	push {r4, lr}
	add r4, r0, #0
	bne _02021F52
	bl sub_02022974
_02021F52:
	add r4, #0x2a
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02021F48

	thumb_func_start sub_02021F58
sub_02021F58: ; 0x02021F58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	ldr r4, [r5, #0x3c]
	add r2, #0xf4
	strh r1, [r2]
	bl sub_020224FC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02022464
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02021F58

	thumb_func_start sub_02021F74
sub_02021F74: ; 0x02021F74
	add r0, #0xf4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021F74

	thumb_func_start sub_02021F7C
sub_02021F7C: ; 0x02021F7C
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #0xb4
	mov r2, #4
_02021F86:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02021F86
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021F7C

	thumb_func_start sub_02021F98
sub_02021F98: ; 0x02021F98
	add r0, #0xb4
	bx lr
	thumb_func_end sub_02021F98

	thumb_func_start sub_02021F9C
sub_02021F9C: ; 0x02021F9C
	add r0, #0xd8
	bx lr
	thumb_func_end sub_02021F9C

	thumb_func_start sub_02021FA0
sub_02021FA0: ; 0x02021FA0
	str r1, [r0, #0x2c]
	cmp r1, #1
	bne _02021FB6
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	add r0, #0x28
	orr r1, r2
	strb r1, [r0]
	bx lr
_02021FB6:
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	eor r1, r2
	add r0, #0x28
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021FA0

	thumb_func_start sub_02021FC8
sub_02021FC8: ; 0x02021FC8
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02021FC8

	thumb_func_start sub_02021FD0
sub_02021FD0: ; 0x02021FD0
	push {r4, lr}
	add r4, r0, #0
	bne _02021FDA
	bl sub_02022974
_02021FDA:
	ldr r0, [r4, #0x54]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02021FD0

	thumb_func_start sub_02021FE0
sub_02021FE0: ; 0x02021FE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02021FEE
	bl sub_02022974
_02021FEE:
	str r5, [r4, #0x30]
	cmp r5, #0
	bne _02022004
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	add r4, #0x28
	eor r0, r1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02022004:
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	orr r0, r1
	add r4, #0x28
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02021FE0

	thumb_func_start sub_02022014
sub_02022014: ; 0x02022014
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_020C4AF0
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020C2C54
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020C0210
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02022014

	thumb_func_start sub_0202204C
sub_0202204C: ; 0x0202204C
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_020C4AF0
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020C0264
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202204C

	thumb_func_start sub_0202207C
sub_0202207C: ; 0x0202207C
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xec
	ldr r3, [r3, #0]
	cmp r3, #1
	beq _0202208C
	cmp r3, #3
	bne _02022090
_0202208C:
	ldr r0, [r0, #0x44]
	b _02022094
_02022090:
	add r0, #0xb0
	ldr r0, [r0, #0]
_02022094:
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _020220A2
	ldr r3, [r4, #0]
	ldr r0, _020220F0 ; =0x55414154
	cmp r3, r0
	beq _020220A4
_020220A2:
	mov r4, #0
_020220A4:
	cmp r4, #0
	beq _020220AC
	add r4, #8
	b _020220AE
_020220AC:
	mov r4, #0
_020220AE:
	cmp r4, #0
	beq _020220EA
	lsl r0, r1, #0x10
	lsr r3, r0, #0x10
	ldrh r0, [r4]
	cmp r3, r0
	bhs _020220C6
	mov r0, #0xc
	ldr r1, [r4, #4]
	mul r0, r3
	add r1, r1, r0
	b _020220C8
_020220C6:
	mov r1, #0
_020220C8:
	cmp r1, #0
	beq _020220EA
	ldrh r0, [r1]
	cmp r0, #0
	beq _020220DC
	lsl r0, r2, #0x10
	ldr r1, [r1, #8]
	lsr r0, r0, #0xe
	add r0, r1, r0
	b _020220DE
_020220DC:
	mov r0, #0
_020220DE:
	cmp r0, #0
	beq _020220EA
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	pop {r3, r4}
	bx lr
_020220EA:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020220F0: .word 0x55414154
	thumb_func_end sub_0202207C

	thumb_func_start sub_020220F4
sub_020220F4: ; 0x020220F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02021E24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02021E74
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202207C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020220F4

	thumb_func_start sub_02022110
sub_02022110: ; 0x02022110
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r0, r5, #0
	add r7, r3, #0
	bl sub_020221B8
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r3, r4, #0
	ldr r6, [r5, #0]
	add r3, #0xb4
	mov r2, #4
_0202212E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202212E
	ldr r0, [r6, #0]
	add r2, r4, #0
	str r0, [r3, #0]
	ldr r3, [r5, #8]
	add r2, #0xd8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	ldr r0, [r5, #0xc]
	bl sub_020221D0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02022162
	add r1, r4, #0
	bl sub_020221D4
	b _02022170
_02022162:
	mov r1, #0x47
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	bl sub_020221D4
_02022170:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02022194
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_020221D8
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_020221E0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02022264
	b _020221AC
_02022194:
	cmp r0, #3
	bne _020221A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02022208
	b _020221AC
_020221A4:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020221E8
_020221AC:
	add r5, #0x20
	ldrb r0, [r5]
	add r4, #0xf2
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022110

	thumb_func_start sub_020221B8
sub_020221B8: ; 0x020221B8
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _020221C2
	mov r0, #2
	bx lr
_020221C2:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _020221CC
	mov r0, #3
	bx lr
_020221CC:
	mov r0, #1
	bx lr
	thumb_func_end sub_020221B8

	thumb_func_start sub_020221D0
sub_020221D0: ; 0x020221D0
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_020221D0

	thumb_func_start sub_020221D4
sub_020221D4: ; 0x020221D4
	str r0, [r1, #0x44]
	bx lr
	thumb_func_end sub_020221D4

	thumb_func_start sub_020221D8
sub_020221D8: ; 0x020221D8
	add r1, #0xac
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020221D8

	thumb_func_start sub_020221E0
sub_020221E0: ; 0x020221E0
	add r1, #0xb0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020221E0

	thumb_func_start sub_020221E8
sub_020221E8: ; 0x020221E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_020A6EF0
	add r4, #8
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	add r0, r4, #0
	bl sub_020A8C88
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020221E8

	thumb_func_start sub_02022208
sub_02022208: ; 0x02022208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x40
	add r5, r0, #0
	bl sub_020AB3CC
	str r0, [r4, #0x60]
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r5, [r5, #4]
	bl sub_020A6EF0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #1
	bl sub_020A81B0
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #2
	bl sub_020A81B0
	mov r1, #0
	mvn r1, r1
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r2, [r6, #0x40]
	ldr r3, [r4, #0x60]
	add r0, #8
	bl sub_020A8CC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02022208

	thumb_func_start sub_02022264
sub_02022264: ; 0x02022264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x70]
	add r7, r1, #0
	mov r1, #0
	bl sub_020A6EF0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	bl sub_020A9438
	add r6, r0, #0
	mov r1, #0x28
	add r0, r7, #0
	mul r1, r6
	bl sub_02018144
	mov r1, #0x58
	str r0, [r4, #0x74]
	add r0, r7, #0
	mul r1, r6
	bl sub_02018144
	str r0, [r4, #0x78]
	ldr r0, [r4, #4]
	add r3, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x40]
	str r0, [sp, #4]
	ldr r0, [r4, #0x6c]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0x78]
	add r0, #8
	bl sub_020A96C0
	add r4, #8
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_020A9380
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022264

	thumb_func_start sub_020222C4
sub_020222C4: ; 0x020222C4
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _020222D2
	mov r4, #2
	lsl r4, r4, #8
	b _020222DE
_020222D2:
	ldr r2, [r0, #0]
	cmp r2, #4
	bne _020222DC
	mov r4, #0
	b _020222DE
_020222DC:
	mov r4, #0x20
_020222DE:
	cmp r4, #0
	beq _020222EE
	bl sub_020A81FC
	add r1, r4, #0
	bl sub_020E2178
	pop {r4, pc}
_020222EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020222C4

	thumb_func_start sub_020222F4
sub_020222F4: ; 0x020222F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r3, r4, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xb4
	add r2, #0xd8
	bl sub_020AB034
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020AA51C
	bl sub_020AAA48
	add r1, r4, #0
	mov r0, #0x45
	add r1, #0x26
	lsl r0, r0, #2
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl sub_020AC3AC
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0202235C
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	mov r3, #2
	and r1, r2
	and r2, r3
	bl sub_020AC46C
	b _0202236A
_0202235C:
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_020AC46C
_0202236A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_020AACBC
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _020223B8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl sub_020AACBC
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	bl sub_020AADB8
	ldrh r0, [r4, #0x24]
	ldr r2, _0202244C ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl sub_020AAF0C
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	neg r0, r0
	neg r1, r1
	neg r2, r2
	bl sub_020AACBC
_020223B8:
	add r0, r4, #0
	add r0, #0x28
	ldrb r3, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	add r2, #0x84
	orr r1, r3
	str r1, [r2, #0]
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	mvn r6, r1
	ldr r1, [r5, r0]
	add r2, r1, #0
	add r2, #0x84
	ldr r3, [r2, #0]
	mvn r2, r6
	and r2, r3
	add r1, #0x84
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0x29
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x8a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x2a
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x94
	strh r2, [r1]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x2c]
	add r1, #0x90
	str r2, [r1, #0]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x30]
	add r1, #0x8c
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xf2
	ldr r0, [r5, r0]
	ldrb r1, [r1]
	add r0, #0x88
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0202242A
	cmp r0, #3
	bne _02022436
_0202242A:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl sub_020AA630
	b _02022440
_02022436:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl sub_020AA96C
_02022440:
	bl sub_020AAC6C
	bl sub_020AA5C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0202244C: .word 0x020F983C
	thumb_func_end sub_020222F4

	thumb_func_start sub_02022450
sub_02022450: ; 0x02022450
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022450

	thumb_func_start sub_02022454
sub_02022454: ; 0x02022454
	ldr r3, _0202245C ; =sub_02021E2C
	ldr r1, [r0, #0x38]
	bx r3
	nop
_0202245C: .word sub_02021E2C
	thumb_func_end sub_02022454

	thumb_func_start sub_02022460
sub_02022460: ; 0x02022460
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022460

	thumb_func_start sub_02022464
sub_02022464: ; 0x02022464
	push {r4, r5, r6, r7}
	mov r2, #0x11
	lsl r2, r2, #4
	add r4, r0, #0
	ldr r5, [r0, r2]
	add r4, #0x10
	cmp r5, r4
	bne _02022488
	str r1, [r0, r2]
	sub r3, r2, #4
	str r1, [r0, r3]
	add r0, r1, #0
	add r0, #0xfc
	str r4, [r0, #0]
	sub r2, #0x10
	str r4, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_02022488:
	add r3, r1, #0
	add r3, #0xf4
	ldrh r6, [r3]
	sub r3, r2, #4
	ldr r3, [r0, r3]
	add r7, r3, #0
	add r7, #0xf4
	ldrh r7, [r7]
	cmp r7, r6
	bhi _020224BA
	add r5, r1, #0
	add r5, #0xfc
	str r3, [r5, #0]
	sub r3, r2, #4
	ldr r5, [r0, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r1, [r5, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r4, [r1, r3]
	sub r2, r2, #4
	str r1, [r0, r2]
	pop {r4, r5, r6, r7}
	bx lr
_020224BA:
	cmp r5, r4
	beq _020224F6
	add r0, r2, #0
	sub r0, #0x10
_020224C2:
	add r2, r5, #0
	add r2, #0xf4
	ldrh r2, [r2]
	cmp r2, r6
	bls _020224F0
	add r0, r5, #0
	add r0, #0xfc
	mov r2, #1
	ldr r0, [r0, #0]
	lsl r2, r2, #8
	str r1, [r0, r2]
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	add r0, r1, #0
	add r0, #0xfc
	str r3, [r0, #0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
	str r5, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_020224F0:
	ldr r5, [r5, r0]
	cmp r5, r4
	bne _020224C2
_020224F6:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022464

	thumb_func_start sub_020224FC
sub_020224FC: ; 0x020224FC
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #8
	add r1, #0xfc
	ldr r3, [r0, r2]
	ldr r1, [r1, #0]
	str r3, [r1, r2]
	add r1, r0, #0
	add r1, #0xfc
	ldr r0, [r0, r2]
	ldr r1, [r1, #0]
	add r0, #0xfc
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020224FC

	thumb_func_start sub_02022518
sub_02022518: ; 0x02022518
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r7, #0
	cmp r0, #0
	ble _02022548
	add r4, r7, #0
	add r6, r7, #0
_02022528:
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl sub_02021A78
	ldr r0, [r5, #0]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #8]
	str r1, [r0, r6]
	mov r0, #0x41
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [r5, #4]
	add r6, r6, #4
	cmp r7, r0
	blt _02022528
_02022548:
	mov r0, #0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022518

	thumb_func_start sub_02022550
sub_02022550: ; 0x02022550
	ldr r3, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0202255C
	mov r0, #0
	bx lr
_0202255C:
	ldr r2, [r0, #8]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	str r1, [r0, #0xc]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022550

	thumb_func_start sub_0202256C
sub_0202256C: ; 0x0202256C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	bgt _0202257C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202257C:
	add r0, r4, #0
	bl sub_02021A78
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202256C

	thumb_func_start sub_02022594
sub_02022594: ; 0x02022594
	push {r4, r5, r6, r7}
	ldrb r3, [r0]
	mov r4, #0
	cmp r3, #0xff
	beq _020225D6
_0202259E:
	ldrb r7, [r0, #2]
	ldrb r3, [r0, #3]
	ldrb r5, [r0]
	sub r6, r1, r7
	sub r3, r3, r7
	cmp r6, r3
	bhs _020225B0
	mov r6, #1
	b _020225B2
_020225B0:
	mov r6, #0
_020225B2:
	ldrb r7, [r0, #1]
	sub r3, r2, r5
	sub r5, r7, r5
	cmp r3, r5
	bhs _020225C0
	mov r3, #1
	b _020225C2
_020225C0:
	mov r3, #0
_020225C2:
	tst r3, r6
	beq _020225CC
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
_020225CC:
	add r0, r0, #4
	ldrb r3, [r0]
	add r4, r4, #1
	cmp r3, #0xff
	bne _0202259E
_020225D6:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022594

	thumb_func_start sub_020225E0
sub_020225E0: ; 0x020225E0
	push {r3, r4}
	ldrb r3, [r0, #1]
	sub r4, r3, r1
	ldrb r1, [r0, #2]
	sub r3, r1, r2
	ldrb r2, [r0, #3]
	add r1, r4, #0
	add r0, r3, #0
	mul r1, r4
	mul r0, r3
	add r1, r1, r0
	add r0, r2, #0
	mul r0, r2
	cmp r1, r0
	bhs _02022604
	mov r0, #1
	pop {r3, r4}
	bx lr
_02022604:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020225E0

	thumb_func_start sub_0202260C
sub_0202260C: ; 0x0202260C
	push {r4, r5}
	ldrb r5, [r0, #2]
	ldrb r3, [r0]
	sub r4, r1, r5
	ldrb r1, [r0, #3]
	sub r1, r1, r5
	cmp r4, r1
	bhs _02022620
	mov r4, #1
	b _02022622
_02022620:
	mov r4, #0
_02022622:
	ldrb r0, [r0, #1]
	sub r1, r2, r3
	sub r0, r0, r3
	cmp r1, r0
	bhs _02022630
	mov r0, #1
	b _02022632
_02022630:
	mov r0, #0
_02022632:
	tst r0, r4
	beq _0202263C
	mov r0, #1
	pop {r4, r5}
	bx lr
_0202263C:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202260C

	thumb_func_start sub_02022644
sub_02022644: ; 0x02022644
	push {r3, lr}
	ldr r2, _02022660 ; =0x021BF6BC
	ldrh r1, [r2, #0x22]
	cmp r1, #0
	beq _02022658
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_02022594
	pop {r3, pc}
_02022658:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02022660: .word 0x021BF6BC
	thumb_func_end sub_02022644

	thumb_func_start sub_02022664
sub_02022664: ; 0x02022664
	push {r3, lr}
	ldr r2, _02022680 ; =0x021BF6BC
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _02022678
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_02022594
	pop {r3, pc}
_02022678:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02022680: .word 0x021BF6BC
	thumb_func_end sub_02022664

	thumb_func_start sub_02022684
sub_02022684: ; 0x02022684
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _020226D8 ; =0x021BF6BC
	add r5, r0, #0
	ldrh r0, [r7, #0x22]
	cmp r0, #0
	beq _020226D0
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _020226D0
	add r4, r5, #0
_0202269A:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _020226B2
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_020225E0
	cmp r0, #0
	beq _020226C4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020226B2:
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_0202260C
	cmp r0, #0
	beq _020226C4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020226C4:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _0202269A
_020226D0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020226D8: .word 0x021BF6BC
	thumb_func_end sub_02022684

	thumb_func_start sub_020226DC
sub_020226DC: ; 0x020226DC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02022730 ; =0x021BF6BC
	add r5, r0, #0
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	beq _02022728
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _02022728
	add r4, r5, #0
_020226F2:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _0202270A
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_020225E0
	cmp r0, #0
	beq _0202271C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202270A:
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_0202260C
	cmp r0, #0
	beq _0202271C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202271C:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _020226F2
_02022728:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02022730: .word 0x021BF6BC
	thumb_func_end sub_020226DC

	thumb_func_start sub_02022734
sub_02022734: ; 0x02022734
	push {r3, lr}
	ldr r2, _0202275C ; =0x021BF6BC
	ldrh r1, [r2, #0x22]
	cmp r1, #0
	beq _02022756
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x1c]
	bne _0202274E
	ldrh r2, [r2, #0x1e]
	bl sub_020225E0
	pop {r3, pc}
_0202274E:
	ldrh r2, [r2, #0x1e]
	bl sub_0202260C
	pop {r3, pc}
_02022756:
	mov r0, #0
	pop {r3, pc}
	nop
_0202275C: .word 0x021BF6BC
	thumb_func_end sub_02022734

	thumb_func_start sub_02022760
sub_02022760: ; 0x02022760
	push {r3, lr}
	ldr r2, _02022788 ; =0x021BF6BC
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _02022782
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x1c]
	bne _0202277A
	ldrh r2, [r2, #0x1e]
	bl sub_020225E0
	pop {r3, pc}
_0202277A:
	ldrh r2, [r2, #0x1e]
	bl sub_0202260C
	pop {r3, pc}
_02022782:
	mov r0, #0
	pop {r3, pc}
	nop
_02022788: .word 0x021BF6BC
	thumb_func_end sub_02022760

	thumb_func_start sub_0202278C
sub_0202278C: ; 0x0202278C
	ldr r0, _02022794 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	bx lr
	nop
_02022794: .word 0x021BF6BC
	thumb_func_end sub_0202278C

	thumb_func_start sub_02022798
sub_02022798: ; 0x02022798
	ldr r0, _020227A0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	bx lr
	nop
_020227A0: .word 0x021BF6BC
	thumb_func_end sub_02022798

	thumb_func_start sub_020227A4
sub_020227A4: ; 0x020227A4
	ldr r2, _020227BC ; =0x021BF6BC
	ldrh r3, [r2, #0x22]
	cmp r3, #0
	beq _020227B8
	ldrh r3, [r2, #0x1c]
	str r3, [r0, #0]
	ldrh r0, [r2, #0x1e]
	str r0, [r1, #0]
	mov r0, #1
	bx lr
_020227B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_020227BC: .word 0x021BF6BC
	thumb_func_end sub_020227A4

	thumb_func_start sub_020227C0
sub_020227C0: ; 0x020227C0
	ldr r2, _020227D8 ; =0x021BF6BC
	ldrh r3, [r2, #0x20]
	cmp r3, #0
	beq _020227D4
	ldrh r3, [r2, #0x1c]
	str r3, [r0, #0]
	ldrh r0, [r2, #0x1e]
	str r0, [r1, #0]
	mov r0, #1
	bx lr
_020227D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020227D8: .word 0x021BF6BC
	thumb_func_end sub_020227C0

	thumb_func_start sub_020227DC
sub_020227DC: ; 0x020227DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0xff
	beq _0202282A
	add r4, r5, #0
_020227F0:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _02022808
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020225E0
	cmp r0, #0
	beq _0202281A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_02022808:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0202260C
	cmp r0, #0
	beq _0202281A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_0202281A:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5]
	add r4, r4, #4
	cmp r0, #0xff
	bne _020227F0
_0202282A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020227DC

	thumb_func_start sub_02022830
sub_02022830: ; 0x02022830
	push {r3, lr}
	ldrb r3, [r0]
	cmp r3, #0xfe
	bne _0202283E
	bl sub_020225E0
	pop {r3, pc}
_0202283E:
	bl sub_0202260C
	pop {r3, pc}
	thumb_func_end sub_02022830

	thumb_func_start sub_02022844
sub_02022844: ; 0x02022844
	push {r3, lr}
	ldr r0, _0202286C ; =0x021C077C
	mov r2, #0
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r1, _02022870 ; =0x0400010E
	str r2, [r0, #0]
	strh r2, [r1]
	sub r0, r1, #2
	strh r2, [r0]
	mov r0, #0xc1
	strh r0, [r1]
	ldr r1, _02022874 ; =sub_02022878
	mov r0, #0x40
	bl sub_020C144C
	mov r0, #0x40
	bl sub_020C161C
	pop {r3, pc}
	; .align 2, 0
_0202286C: .word 0x021C077C
_02022870: .word 0x0400010E
_02022874: .word sub_02022878
	thumb_func_end sub_02022844

	thumb_func_start sub_02022878
sub_02022878: ; 0x02022878
	ldr r0, _020228B0 ; =0x021C077C
	mov r3, #0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	add r1, r1, #1
	adc r2, r3
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202289C
	ldr r2, _020228B4 ; =0x0400010E
	strh r3, [r2]
	sub r1, r2, #2
	strh r3, [r1]
	mov r1, #0xc1
	strh r1, [r2]
	str r3, [r0, #0]
_0202289C:
	ldr r3, _020228B8 ; =0x027E0000
	ldr r1, _020228BC ; =0x00003FF8
	mov r0, #0x40
	ldr r2, [r3, r1]
	orr r2, r0
	str r2, [r3, r1]
	ldr r3, _020228C0 ; =sub_020C144C
	ldr r1, _020228C4 ; =sub_02022878
	bx r3
	nop
_020228B0: .word 0x021C077C
_020228B4: .word 0x0400010E
_020228B8: .word 0x027E0000
_020228BC: .word 0x00003FF8
_020228C0: .word sub_020C144C
_020228C4: .word sub_02022878
	thumb_func_end sub_02022878

	thumb_func_start sub_020228C8
sub_020228C8: ; 0x020228C8
	push {r4, r5, lr}
	sub sp, #0xc
	bl sub_020C3D98
	ldr r1, _0202292C ; =0x0400010C
	add r3, sp, #0
	ldrh r1, [r1]
	ldr r2, _02022930 ; =0x0000FFFF
	strh r1, [r3]
	ldr r1, _02022934 ; =0x021C077C
	ldr r5, [r1, #4]
	ldr r4, [r1, #8]
	mov r1, #0
	mvn r1, r1
	and r1, r5
	str r1, [sp, #4]
	and r2, r4
	ldr r1, _02022938 ; =0x04000214
	str r2, [sp, #8]
	ldr r2, [r1, #0]
	mov r1, #0x40
	tst r2, r1
	beq _0202290C
	ldrh r2, [r3]
	lsl r1, r1, #9
	tst r1, r2
	bne _0202290C
	ldr r2, [sp, #4]
	mov r1, #0
	ldr r3, [sp, #8]
	add r2, r2, #1
	adc r3, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
_0202290C:
	bl sub_020C3DAC
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r2, #0x10
	lsl r1, r1, #0x10
	orr r1, r0
	add r0, sp, #0
	lsl r3, r2, #0x10
	ldrh r2, [r0]
	asr r0, r2, #0x1f
	orr r1, r0
	add r0, r3, #0
	orr r0, r2
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0202292C: .word 0x0400010C
_02022930: .word 0x0000FFFF
_02022934: .word 0x021C077C
_02022938: .word 0x04000214
	thumb_func_end sub_020228C8

	thumb_func_start sub_0202293C
sub_0202293C: ; 0x0202293C
	ldr r3, _02022940 ; =sub_020228C8
	bx r3
	; .align 2, 0
_02022940: .word sub_020228C8
	thumb_func_end sub_0202293C

	thumb_func_start sub_02022944
sub_02022944: ; 0x02022944
	push {r3, lr}
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _02022958 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	bl sub_020E1ED4
	pop {r3, pc}
	; .align 2, 0
_02022958: .word 0x000082EA
	thumb_func_end sub_02022944

	thumb_func_start sub_0202295C
sub_0202295C: ; 0x0202295C
	push {r3, lr}
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _02022970 ; =0x01FF6210
	lsl r0, r0, #6
	mov r3, #0
	bl sub_020E1ED4
	pop {r3, pc}
	; .align 2, 0
_02022970: .word 0x01FF6210
	thumb_func_end sub_0202295C

	thumb_func_start sub_02022974
sub_02022974: ; 0x02022974
	push {r3, lr}
	bl sub_02036780
	cmp r0, #0
	beq _0202298A
	bl sub_020C3DFC
	cmp r0, #0x12
	beq _0202298A
	bl sub_0209B49C
_0202298A:
	pop {r3, pc}
	thumb_func_end sub_02022974

	thumb_func_start sub_0202298C
sub_0202298C: ; 0x0202298C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02018144
	add r6, r0, #0
	bne _020229A2
	bl sub_02022974
_020229A2:
	add r0, r4, #0
	lsl r1, r7, #3
	bl sub_02018144
	str r0, [r6, #0]
	cmp r0, #0
	bne _020229B4
	bl sub_02022974
_020229B4:
	mov r4, #0
	cmp r7, #0
	ble _020229CC
	add r5, r4, #0
_020229BC:
	ldr r0, [r6, #0]
	add r0, r0, r5
	bl sub_02022BC0
	add r4, r4, #1
	add r5, #8
	cmp r4, r7
	blt _020229BC
_020229CC:
	str r7, [r6, #4]
	mov r0, #0
	str r0, [r6, #8]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202298C

	thumb_func_start sub_020229D8
sub_020229D8: ; 0x020229D8
	push {r4, lr}
	add r4, r0, #0
	bne _020229E2
	bl sub_02022974
_020229E2:
	add r0, r4, #0
	bl sub_02022AE4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020229D8

	thumb_func_start sub_020229F8
sub_020229F8: ; 0x020229F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022A06
	bl sub_02022974
_02022A06:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022B20
	cmp r0, #0
	bne _02022A16
	mov r0, #1
	pop {r3, r4, r5, pc}
_02022A16:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020229F8

	thumb_func_start sub_02022A1C
sub_02022A1C: ; 0x02022A1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02022A2C
	bl sub_02022974
_02022A2C:
	add r0, r5, #0
	bl sub_02022B90
	add r4, r0, #0
	bne _02022A3A
	bl sub_02022974
_02022A3A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020229F8
	cmp r0, #1
	beq _02022A4A
	bl sub_02022974
_02022A4A:
	str r7, [r4, #4]
	str r6, [r4, #0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022A1C

	thumb_func_start sub_02022A58
sub_02022A58: ; 0x02022A58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02022A6A
	bl sub_02022974
_02022A6A:
	cmp r6, #0
	bne _02022A72
	bl sub_02022974
_02022A72:
	add r0, r5, #0
	bl sub_02022B90
	add r4, r0, #0
	bne _02022A80
	bl sub_02022974
_02022A80:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020229F8
	cmp r0, #1
	beq _02022A90
	bl sub_02022974
_02022A90:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02017A40
	str r0, [r4, #4]
	cmp r0, #0
	bne _02022AA2
	bl sub_02022974
_02022AA2:
	str r7, [r4, #0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022A58

	thumb_func_start sub_02022AB0
sub_02022AB0: ; 0x02022AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022ABE
	bl sub_02022974
_02022ABE:
	cmp r4, #0
	bne _02022AC6
	bl sub_02022974
_02022AC6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02022AD4
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
_02022AD4:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02022AB0

	thumb_func_start sub_02022AE4
sub_02022AE4: ; 0x02022AE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02022AEE
	bl sub_02022974
_02022AEE:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02022AF8
	bl sub_02022974
_02022AF8:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02022B1E
	add r4, r6, #0
	sub r7, r6, #1
_02022B04:
	ldr r1, [r5, #0]
	ldr r0, [r1, r4]
	cmp r0, r7
	beq _02022B14
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02022AB0
_02022B14:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02022B04
_02022B1E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022AE4

	thumb_func_start sub_02022B20
sub_02022B20: ; 0x02022B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022B2E
	bl sub_02022974
_02022B2E:
	ldr r6, [r5, #4]
	mov r1, #0
	cmp r6, #0
	ble _02022B4E
	ldr r3, [r5, #0]
	add r2, r3, #0
_02022B3A:
	ldr r0, [r2, #0]
	cmp r4, r0
	bne _02022B46
	lsl r0, r1, #3
	add r0, r3, r0
	pop {r4, r5, r6, pc}
_02022B46:
	add r1, r1, #1
	add r2, #8
	cmp r1, r6
	blt _02022B3A
_02022B4E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02022B20

	thumb_func_start sub_02022B54
sub_02022B54: ; 0x02022B54
	push {r4, lr}
	add r4, r0, #0
	bne _02022B5E
	bl sub_02022974
_02022B5E:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022B54

	thumb_func_start sub_02022B64
sub_02022B64: ; 0x02022B64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022B72
	bl sub_02022974
_02022B72:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02022B7C
	bl sub_020181C4
_02022B7C:
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022B64

	thumb_func_start sub_02022B80
sub_02022B80: ; 0x02022B80
	push {r4, lr}
	add r4, r0, #0
	bne _02022B8A
	bl sub_02022974
_02022B8A:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022B80

	thumb_func_start sub_02022B90
sub_02022B90: ; 0x02022B90
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02022B9A
	bl sub_02022974
_02022B9A:
	ldr r5, [r4, #4]
	mov r2, #0
	cmp r5, #0
	ble _02022BBC
	ldr r4, [r4, #0]
	sub r0, r2, #1
	add r3, r4, #0
_02022BA8:
	ldr r1, [r3, #0]
	cmp r1, r0
	bne _02022BB4
	lsl r0, r2, #3
	add r0, r4, r0
	pop {r3, r4, r5, pc}
_02022BB4:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _02022BA8
_02022BBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022B90

	thumb_func_start sub_02022BC0
sub_02022BC0: ; 0x02022BC0
	push {r4, lr}
	add r4, r0, #0
	bne _02022BCA
	bl sub_02022974
_02022BCA:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022BC0

	thumb_func_start sub_02022BD8
sub_02022BD8: ; 0x02022BD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202298C
	mov r1, #0x18
	str r0, [r7, #0]
	add r0, r4, #0
	mul r1, r6
	bl sub_02018144
	mov r4, #0
	str r0, [r7, #4]
	cmp r6, #0
	ble _02022C16
	add r5, r4, #0
_02022C06:
	ldr r0, [r7, #4]
	add r0, r0, r5
	bl sub_02022F5C
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _02022C06
_02022C16:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022BD8

	thumb_func_start sub_02022C1C
sub_02022C1C: ; 0x02022C1C
	push {r4, lr}
	add r4, r0, #0
	bne _02022C26
	bl sub_02022974
_02022C26:
	add r0, r4, #0
	bl sub_02022D58
	ldr r0, [r4, #0]
	bl sub_020229D8
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02022C1C

	thumb_func_start sub_02022C40
sub_02022C40: ; 0x02022C40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022C4E
	bl sub_02022974
_02022C4E:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020229F8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022C40

	thumb_func_start sub_02022C58
sub_02022C58: ; 0x02022C58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	str r2, [sp]
	cmp r5, #0
	bne _02022C6A
	bl sub_02022974
_02022C6A:
	add r0, r5, #0
	bl sub_02022F2C
	add r4, r0, #0
	strh r7, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _02022C88
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	bl sub_02023060
	add r1, r0, #0
	str r6, [r4, #0x10]
	b _02022C8E
_02022C88:
	mov r0, #0
	add r1, r6, #0
	str r0, [r4, #0x10]
_02022C8E:
	ldr r0, [r5, #0]
	ldr r2, [sp]
	bl sub_02022A1C
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022C58

	thumb_func_start sub_02022C9C
sub_02022C9C: ; 0x02022C9C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_02022C58
	add r4, r0, #0
	bl sub_02022EBC
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02022C9C

	thumb_func_start sub_02022CB4
sub_02022CB4: ; 0x02022CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022CC2
	bl sub_02022974
_02022CC2:
	cmp r4, #0
	bne _02022CCA
	bl sub_02022974
_02022CCA:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _02022CE0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _02022CE0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	strh r0, [r4, #0x16]
_02022CE0:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02022CEC
	ldr r0, [r5, #0]
	bl sub_02022AB0
_02022CEC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02022D00
	ldr r1, _02022D30 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D00
	bl sub_02022974
_02022D00:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02022D14
	ldr r1, _02022D30 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D14
	bl sub_02022974
_02022D14:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02022D28
	ldr r1, _02022D34 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D28
	bl sub_02022974
_02022D28:
	add r0, r4, #0
	bl sub_02022F5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02022D30: .word 0x02100DF0
_02022D34: .word 0x02100DF8
	thumb_func_end sub_02022CB4

	thumb_func_start sub_02022D38
sub_02022D38: ; 0x02022D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022D46
	bl sub_02022974
_02022D46:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02022CB4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022D38

	thumb_func_start sub_02022D58
sub_02022D58: ; 0x02022D58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _02022D62
	bl sub_02022974
_02022D62:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02022D6C
	bl sub_02022974
_02022D6C:
	ldr r0, [r5, #0]
	mov r6, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _02022D94
	add r4, r6, #0
_02022D78:
	ldr r1, [r5, #4]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02022D88
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02022CB4
_02022D88:
	ldr r0, [r5, #0]
	add r6, r6, #1
	ldr r0, [r0, #4]
	add r4, #0x18
	cmp r6, r0
	blt _02022D78
_02022D94:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02022D58

	thumb_func_start sub_02022D98
sub_02022D98: ; 0x02022D98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	cmp r6, #0
	bne _02022DA6
	bl sub_02022974
_02022DA6:
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _02022DDA
	add r5, r4, #0
_02022DB2:
	ldr r1, [r6, #4]
	ldr r0, [r1, r5]
	cmp r0, #0
	beq _02022DCE
	add r0, r1, r5
	bl sub_02022DE0
	cmp r0, r7
	bne _02022DCE
	mov r0, #0x18
	ldr r1, [r6, #4]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02022DCE:
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, #4]
	add r5, #0x18
	cmp r4, r0
	blt _02022DB2
_02022DDA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022D98

	thumb_func_start sub_02022DE0
sub_02022DE0: ; 0x02022DE0
	push {r4, lr}
	add r4, r0, #0
	bne _02022DEA
	bl sub_02022974
_02022DEA:
	ldr r0, [r4, #0]
	bl sub_02022B80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022DE0

	thumb_func_start sub_02022DF4
sub_02022DF4: ; 0x02022DF4
	push {r4, lr}
	add r4, r0, #0
	bne _02022DFE
	bl sub_02022974
_02022DFE:
	add r0, r4, #0
	bl sub_02022F70
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022DF4

	thumb_func_start sub_02022E08
sub_02022E08: ; 0x02022E08
	push {r4, lr}
	add r4, r0, #0
	bne _02022E12
	bl sub_02022974
_02022E12:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022E1C
	bl sub_02022974
_02022E1C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02022E28
	bl sub_02022974
	pop {r4, pc}
_02022E28:
	add r0, r4, #0
	bl sub_02022F80
	add r1, r4, #0
	bl sub_02023008
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022E08

	thumb_func_start sub_02022E38
sub_02022E38: ; 0x02022E38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022E46
	bl sub_02022974
_02022E46:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	bl sub_02022E08
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022E38

	thumb_func_start sub_02022E54
sub_02022E54: ; 0x02022E54
	push {r4, lr}
	add r4, r0, #0
	bne _02022E5E
	bl sub_02022974
_02022E5E:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _02022E6A
	bl sub_02022974
	pop {r4, pc}
_02022E6A:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022E76
	bl sub_02022974
	pop {r4, pc}
_02022E76:
	add r0, r4, #0
	bl sub_02022F80
	bl sub_02023048
	add r0, r4, #0
	bl sub_02022F70
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_02023034
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strh r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_02022E54

	thumb_func_start sub_02022EA0
sub_02022EA0: ; 0x02022EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022EAE
	bl sub_02022974
_02022EAE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	bl sub_02022E54
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022EA0

	thumb_func_start sub_02022EBC
sub_02022EBC: ; 0x02022EBC
	push {r4, lr}
	add r4, r0, #0
	bne _02022EC6
	bl sub_02022974
_02022EC6:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022ED0
	bl sub_02022974
_02022ED0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02022EDC
	bl sub_02022974
	pop {r4, pc}
_02022EDC:
	add r0, r4, #0
	bl sub_02022F80
	add r2, r4, #0
	add r1, r4, #4
	add r4, #0xc
	add r2, #8
	add r3, r4, #0
	bl sub_02022F98
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022EBC

	thumb_func_start sub_02022EF4
sub_02022EF4: ; 0x02022EF4
	push {r4, lr}
	add r4, r0, #0
	bne _02022EFE
	bl sub_02022974
_02022EFE:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022EF4

	thumb_func_start sub_02022F04
sub_02022F04: ; 0x02022F04
	push {r4, lr}
	add r4, r0, #0
	bne _02022F0E
	bl sub_02022974
_02022F0E:
	ldr r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022F04

	thumb_func_start sub_02022F14
sub_02022F14: ; 0x02022F14
	push {r4, lr}
	add r4, r0, #0
	bne _02022F1E
	bl sub_02022974
_02022F1E:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022F14

	thumb_func_start sub_02022F24
sub_02022F24: ; 0x02022F24
	ldr r3, _02022F28 ; =sub_02023084
	bx r3
	; .align 2, 0
_02022F28: .word sub_02023084
	thumb_func_end sub_02022F24

	thumb_func_start sub_02022F2C
sub_02022F2C: ; 0x02022F2C
	push {r3, r4}
	ldr r1, [r0, #0]
	mov r2, #0
	ldr r4, [r1, #4]
	cmp r4, #0
	ble _02022F54
	ldr r3, [r0, #4]
_02022F3A:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02022F4C
	ldr r1, [r0, #4]
	mov r0, #0x18
	mul r0, r2
	add r0, r1, r0
	pop {r3, r4}
	bx lr
_02022F4C:
	add r2, r2, #1
	add r3, #0x18
	cmp r2, r4
	blt _02022F3A
_02022F54:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022F2C

	thumb_func_start sub_02022F5C
sub_02022F5C: ; 0x02022F5C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022F5C

	thumb_func_start sub_02022F70
sub_02022F70: ; 0x02022F70
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_02022B54
	bl sub_020B3C1C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02022F70

	thumb_func_start sub_02022F80
sub_02022F80: ; 0x02022F80
	push {r3, lr}
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	bne _02022F90
	ldr r0, [r0, #0]
	bl sub_02022B54
	b _02022F92
_02022F90:
	ldr r0, [r0, #0x10]
_02022F92:
	bl sub_020B3C1C
	pop {r3, pc}
	thumb_func_end sub_02022F80

	thumb_func_start sub_02022F98
sub_02022F98: ; 0x02022F98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_020AE8C4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020AE8D8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020AEA04
	add r4, r0, #0
	cmp r7, #0
	beq _02022FCE
	ldr r3, _02023000 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r7, #0
	add r2, r1, #0
	blx r3
	ldr r1, [sp]
	str r0, [r1, #0]
_02022FCE:
	cmp r6, #0
	beq _02022FE2
	ldr r3, _02023000 ; =0x02100DEC
	add r0, r6, #0
	ldr r3, [r3, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	ldr r1, [sp, #4]
	str r0, [r1, #0]
_02022FE2:
	cmp r4, #0
	beq _02022FFC
	ldr r3, _02023004 ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	add r0, r4, #0
	mov r2, #0
	blx r3
	ldr r1, [sp, #8]
	str r0, [r1, #0]
_02022FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02023000: .word 0x02100DEC
_02023004: .word 0x02100DF4
	thumb_func_end sub_02022F98

	thumb_func_start sub_02023008
sub_02023008: ; 0x02023008
	push {r4, lr}
	add r3, r1, #0
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	add r4, r0, #0
	bl sub_02023034
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl sub_020C2C54
	add r0, r4, #0
	mov r1, #1
	bl sub_020AE900
	add r0, r4, #0
	mov r1, #1
	bl sub_020AEA20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023008

	thumb_func_start sub_02023034
sub_02023034: ; 0x02023034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_020AE8EC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020AEA18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023034

	thumb_func_start sub_02023048
sub_02023048: ; 0x02023048
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020AE9B8
	add r0, r4, #0
	bl sub_020AEA70
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02023048

	thumb_func_start sub_02023060
sub_02023060: ; 0x02023060
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02023084
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018144
	add r1, r6, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_020D50B8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02023060

	thumb_func_start sub_02023084
sub_02023084: ; 0x02023084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020B3C1C
	add r4, r0, #0
	bne _02023094
	bl sub_02022974
_02023094:
	ldr r0, [r4, #0x14]
	add r0, r4, r0
	sub r0, r0, r5
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023084

	thumb_func_start sub_0202309C
sub_0202309C: ; 0x0202309C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020AA3F4
	add r5, #0x80
	str r4, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202309C

	thumb_func_start sub_020230AC
sub_020230AC: ; 0x020230AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020AA4C0
	add r2, r5, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r6, [r5, #0x28]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x2c]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020230DC
	add r1, r5, #0
	bl sub_020AA4B0
_020230DC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020230AC

	thumb_func_start sub_020230E0
sub_020230E0: ; 0x020230E0
	add r3, r0, #0
	add r2, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020230E0

	thumb_func_start sub_020230F0
sub_020230F0: ; 0x020230F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [r5, #0x10]
	ldr r3, [r6, #0]
	add r2, r0, #0
	sub r3, r4, r3
	ldrh r1, [r0, #2]
	mov r0, #0x3f
	str r3, [sp, #0x18]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	ldr r4, [r5, #0x14]
	ldr r3, [r6, #4]
	add r2, #8
	sub r3, r4, r3
	str r3, [sp, #0x14]
	asr r3, r1, #0xb
	mov r1, #1
	and r1, r3
	lsr r0, r0, #0x18
	cmp r1, #1
	bne _02023144
	mov r0, #6
	ldrsh r0, [r2, r0]
	lsl r4, r0, #0xc
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #4
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02023150
_02023144:
	neg r1, r0
	lsl r0, r0, #0xc
	lsl r4, r1, #0xc
	str r0, [sp, #0x10]
	str r4, [sp, #0xc]
	str r0, [sp, #8]
_02023150:
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x1c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x20]
	asr r0, r4, #0x1f
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x28]
	asr r0, r0, #0x1f
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	bl sub_020E1F1C
	add r7, r1, #0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #0x30]
	mov r4, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r7, r4
	lsl r1, r7, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r4
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r1, r0, r2
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x34]
	bl sub_020E1F1C
	str r0, [sp, #0x38]
	add r4, r1, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl sub_020E1F1C
	mov r2, #2
	ldr r3, [sp, #0x38]
	lsl r2, r2, #0xa
	add r2, r3, r2
	ldr r3, _020232DC ; =0x00000000
	adc r4, r3
	lsl r3, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	ldr r0, _020232DC ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	ldr r0, [sp, #0x14]
	add r1, r2, r1
	add r4, r0, r1
	ldr r0, [r5, #8]
	str r0, [sp, #0x3c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	asr r0, r0, #0x1f
	str r0, [sp, #0x44]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	asr r0, r0, #0x1f
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_020E1F1C
	str r0, [sp, #0x50]
	add r5, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_020E1F1C
	mov r2, #2
	ldr r3, [sp, #0x50]
	lsl r2, r2, #0xa
	add r2, r3, r2
	ldr r3, _020232DC ; =0x00000000
	adc r5, r3
	lsl r3, r5, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	ldr r0, _020232DC ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	ldr r0, [sp, #0x18]
	add r1, r2, r1
	add r5, r0, r1
	ldr r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0x54]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_020E1F1C
	str r0, [sp, #0x58]
	str r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_020E1F1C
	mov ip, r0
	add r2, r1, #0
	mov r0, #2
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xa
	add r3, r1, r0
	ldr r1, [sp, #4]
	ldr r0, _020232DC ; =0x00000000
	adc r1, r0
	str r1, [sp, #4]
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	mov r3, ip
	add r0, r3, r0
	ldr r3, _020232DC ; =0x00000000
	adc r2, r3
	lsl r2, r2, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #0x5c]
	cmp r4, r1
	bge _020232B0
	add r1, r4, #0
	ldr r4, [sp, #0x5c]
	str r1, [sp, #0x5c]
_020232B0:
	cmp r0, r5
	bge _020232BA
	add r1, r0, #0
	add r0, r5, #0
	add r5, r1, #0
_020232BA:
	cmp r4, #0
	ble _020232D6
	ldr r2, [r6, #0xc]
	ldr r1, [sp, #0x5c]
	cmp r1, r2
	bge _020232D6
	cmp r0, #0
	ble _020232D6
	ldr r0, [r6, #8]
	cmp r5, r0
	bge _020232D6
	add sp, #0x60
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020232D6:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020232DC: .word 0x00000000
	thumb_func_end sub_020230F0

	thumb_func_start sub_020232E0
sub_020232E0: ; 0x020232E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x78
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	beq _02023310
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #4]
	str r1, [sp]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02023350
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02023424
_02023310:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020232E0

	thumb_func_start sub_02023318
sub_02023318: ; 0x02023318
	push {r4, lr}
	add r4, r0, #0
	bl sub_02023478
	add r0, r4, #0
	bl sub_02023408
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023318

	thumb_func_start sub_02023330
sub_02023330: ; 0x02023330
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	add r6, r2, #0
	cmp r1, r4
	beq _0202334C
	bl sub_02023478
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02023424
_0202334C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02023330

	thumb_func_start sub_02023350
sub_02023350: ; 0x02023350
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x18]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02006C24
	str r0, [r5, #0x54]
	cmp r0, #0
	beq _020233F6
	add r1, r5, #0
	add r1, #0x5c
	str r1, [sp]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x10
	bl sub_02006DC8
	str r6, [r5, #0x6c]
	cmp r6, #0
	beq _02023388
	mov r0, #0
	str r0, [r5, #0x74]
	ldr r0, _020233FC ; =sub_020236C8
	str r0, [r5, #0x70]
	b _020233B0
_02023388:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	bne _02023392
	bl sub_02022974
_02023392:
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #0x64]
	bl sub_02018144
	str r0, [r5, #0x74]
	ldr r0, _02023400 ; =sub_020236B0
	add r1, r4, #0
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x74]
	str r0, [sp]
	ldr r0, [r5, #0x54]
	ldr r2, [r5, #0x60]
	ldr r3, [r5, #0x64]
	bl sub_02006DC8
_020233B0:
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	bhi _020233C4
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #2
	bls _020233C8
_020233C4:
	bl sub_02022974
_020233C8:
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	ldr r2, _02023404 ; =0x020E56F4
	sub r0, r0, #1
	lsl r3, r0, #1
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r2, r3
	ldrb r0, [r1, r0]
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x6b
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	lsl r0, r0, #4
	mul r0, r1
	str r0, [r5, #0xc]
	str r4, [r5, #0x58]
_020233F6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020233FC: .word sub_020236C8
_02023400: .word sub_020236B0
_02023404: .word 0x020E56F4
	thumb_func_end sub_02023350

	thumb_func_start sub_02023408
sub_02023408: ; 0x02023408
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02023416
	bl sub_020181C4
_02023416:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _02023420
	bl sub_02006CA8
_02023420:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023408

	thumb_func_start sub_02023424
sub_02023424: ; 0x02023424
	push {r3, lr}
	add r3, r1, #0
	add r1, r2, #0
	str r3, [r0, #0]
	ldr r2, _02023438 ; =0x020E56F8
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02023438: .word 0x020E56F8
	thumb_func_end sub_02023424

	thumb_func_start sub_0202343C
sub_0202343C: ; 0x0202343C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x64]
	add r4, r2, #0
	mul r4, r0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0x10]
	ldr r0, _02023468 ; =sub_020234BC
	add r3, r4, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	bl sub_02006DC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023468: .word sub_020234BC
	thumb_func_end sub_0202343C

	thumb_func_start sub_0202346C
sub_0202346C: ; 0x0202346C
	ldr r1, _02023474 ; =sub_02023564
	str r1, [r0, #4]
	bx lr
	nop
_02023474: .word sub_02023564
	thumb_func_end sub_0202346C

	thumb_func_start sub_02023478
sub_02023478: ; 0x02023478
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _02023488 ; =0x020E5700
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02023488: .word 0x020E5700
	thumb_func_end sub_02023478

	thumb_func_start sub_0202348C
sub_0202348C: ; 0x0202348C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end sub_0202348C

	thumb_func_start sub_0202349C
sub_0202349C: ; 0x0202349C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202349C

	thumb_func_start sub_020234A0
sub_020234A0: ; 0x020234A0
	push {r3, lr}
	ldr r3, [r0, #0x64]
	cmp r1, r3
	bhi _020234B0
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	b _020234B2
_020234B0:
	ldr r1, _020234B8 ; =0x000001AB
_020234B2:
	ldr r3, [r0, #4]
	blx r3
	pop {r3, pc}
	; .align 2, 0
_020234B8: .word 0x000001AB
	thumb_func_end sub_020234A0

	thumb_func_start sub_020234BC
sub_020234BC: ; 0x020234BC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [r7, #0xc]
	add r5, r0, #0
	ldr r0, [r7, #8]
	add r6, r2, #0
	mul r5, r1
	ldr r4, [r7, #0x10]
	cmp r0, #3
	bhi _0202354A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020234E0: ; jump table
	.short _020234E8 - _020234E0 - 2 ; case 0
	.short _020234F2 - _020234E0 - 2 ; case 1
	.short _02023508 - _020234E0 - 2 ; case 2
	.short _0202351E - _020234E0 - 2 ; case 3
_020234E8:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	b _0202354A
_020234F2:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x40
	bl sub_0201DAA0
	b _0202354A
_02023508:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x20
	bl sub_0201DAA0
	b _0202354A
_0202351E:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x20
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x20
	add r1, #0x40
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x30
	add r1, #0x60
	bl sub_0201DAA0
_0202354A:
	ldr r1, [sp]
	ldr r2, [r7, #0x70]
	add r0, r7, #0
	blx r2
	add r1, r6, #0
	add r1, #0x80
	add r7, #0x69
	strb r0, [r1]
	ldrb r0, [r7]
	add r6, #0x81
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020234BC

	thumb_func_start sub_02023564
sub_02023564: ; 0x02023564
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r6, [r4, #0xc]
	add r0, #0x14
	str r0, [sp]
	add r7, r1, #0
	add r5, r2, #0
	add r2, r7, #0
	ldr r3, [r4, #0x5c]
	mul r2, r6
	add r2, r3, r2
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	add r3, r6, #0
	bl sub_02006DC8
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02023608
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02023596: ; jump table
	.short _0202359E - _02023596 - 2 ; case 0
	.short _020235AA - _02023596 - 2 ; case 1
	.short _020235C2 - _02023596 - 2 ; case 2
	.short _020235DA - _02023596 - 2 ; case 3
_0202359E:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	b _02023608
_020235AA:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x40
	bl sub_0201DAA0
	b _02023608
_020235C2:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x20
	bl sub_0201DAA0
	b _02023608
_020235DA:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x20
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x34
	add r1, #0x40
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x44
	add r1, #0x60
	bl sub_0201DAA0
_02023608:
	ldr r2, [r4, #0x70]
	add r0, r4, #0
	add r1, r7, #0
	blx r2
	add r1, r5, #0
	add r1, #0x80
	add r4, #0x69
	strb r0, [r1]
	ldrb r0, [r4]
	add r5, #0x81
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023564

	thumb_func_start sub_02023620
sub_02023620: ; 0x02023620
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _02023664 ; =0x0000FFFF
	add r7, r2, #0
	mov r6, #0
	cmp r1, r0
	beq _0202365E
_02023632:
	ldr r0, _02023668 ; =0x0000FFFE
	cmp r1, r0
	bne _02023648
	add r0, r4, #0
	bl sub_0201D0C8
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _02023664 ; =0x0000FFFF
	cmp r1, r0
	beq _0202365E
_02023648:
	ldr r2, [r5, #0x70]
	add r0, r5, #0
	sub r1, r1, #1
	blx r2
	add r4, r4, #2
	add r0, r7, r0
	add r6, r6, r0
	ldrh r1, [r4]
	ldr r0, _02023664 ; =0x0000FFFF
	cmp r1, r0
	bne _02023632
_0202365E:
	sub r0, r6, r7
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023664: .word 0x0000FFFF
_02023668: .word 0x0000FFFE
	thumb_func_end sub_02023620

	thumb_func_start sub_0202366C
sub_0202366C: ; 0x0202366C
	push {r3, r4, r5, r6, r7, lr}
	ldrh r2, [r1]
	add r5, r0, #0
	ldr r0, _020236AC ; =0x0000FFFF
	cmp r2, r0
	beq _020236A8
	add r6, r0, #0
	add r7, r0, #0
	sub r4, r0, #1
_0202367E:
	cmp r2, r4
	bne _02023694
	add r0, r1, #0
	bl sub_0201D0C8
	add r1, r0, #0
	ldrh r2, [r1]
	cmp r2, r6
	bne _02023694
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02023694:
	ldr r0, [r5, #0x64]
	sub r2, r2, #1
	cmp r2, r0
	blo _020236A0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020236A0:
	add r1, r1, #2
	ldrh r2, [r1]
	cmp r2, r7
	bne _0202367E
_020236A8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020236AC: .word 0x0000FFFF
	thumb_func_end sub_0202366C

	thumb_func_start sub_020236B0
sub_020236B0: ; 0x020236B0
	ldr r2, [r0, #0x64]
	cmp r1, r2
	bhs _020236BC
	ldr r0, [r0, #0x74]
	ldrb r0, [r0, r1]
	bx lr
_020236BC:
	ldr r1, [r0, #0x74]
	ldr r0, _020236C4 ; =0x000001AB
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020236C4: .word 0x000001AB
	thumb_func_end sub_020236B0

	thumb_func_start sub_020236C8
sub_020236C8: ; 0x020236C8
	add r0, #0x68
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020236C8

	thumb_func_start sub_020236D0
sub_020236D0: ; 0x020236D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r7, r0, #0
	mov r4, #0
	ldr r0, _02023730 ; =0x0000FFFF
	add r6, r2, #0
	str r4, [sp]
	cmp r1, r0
	beq _02023722
_020236E4:
	ldr r0, _02023734 ; =0x0000FFFE
	cmp r1, r0
	bne _020236F4
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0202371A
_020236F4:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _0202370C
	ldr r0, [sp]
	sub r1, r4, r6
	cmp r0, r1
	bhs _02023706
	str r1, [sp]
_02023706:
	mov r4, #0
	add r5, r5, #2
	b _0202371A
_0202370C:
	ldr r2, [r7, #0x70]
	add r0, r7, #0
	sub r1, r1, #1
	blx r2
	add r0, r6, r0
	add r4, r4, r0
	add r5, r5, #2
_0202371A:
	ldrh r1, [r5]
	ldr r0, _02023730 ; =0x0000FFFF
	cmp r1, r0
	bne _020236E4
_02023722:
	ldr r0, [sp]
	sub r1, r4, r6
	cmp r0, r1
	bhs _0202372C
	str r1, [sp]
_0202372C:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023730: .word 0x0000FFFF
_02023734: .word 0x0000FFFE
	thumb_func_end sub_020236D0

	thumb_func_start sub_02023738
sub_02023738: ; 0x02023738
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r6, r0, #0
	ldr r0, _02023788 ; =0x0000FFFF
	mov r4, #0
	cmp r1, r0
	beq _02023784
	sub r7, r0, #1
_0202374A:
	cmp r1, r7
	bne _02023770
	add r0, r5, #0
	bl sub_0201D0F0
	ldr r1, _0202378C ; =0x00000203
	cmp r0, r1
	bne _02023766
	add r0, r5, #0
	mov r1, #0
	bl sub_0201D134
	add r4, r0, #0
	sub r4, #0xc
_02023766:
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0202377C
_02023770:
	ldr r2, [r6, #0x70]
	add r0, r6, #0
	sub r1, r1, #1
	blx r2
	add r4, r4, r0
	add r5, r5, #2
_0202377C:
	ldrh r1, [r5]
	ldr r0, _02023788 ; =0x0000FFFF
	cmp r1, r0
	bne _0202374A
_02023784:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023788: .word 0x0000FFFF
_0202378C: .word 0x00000203
	thumb_func_end sub_02023738

	thumb_func_start sub_02023790
sub_02023790: ; 0x02023790
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	lsl r1, r4, #1
	add r1, #0xa
	bl sub_02018144
	cmp r0, #0
	beq _020237B0
	ldr r1, _020237B4 ; =0xB6F8D2EC
	str r1, [r0, #4]
	strh r4, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	ldr r1, _020237B8 ; =0x0000FFFF
	strh r1, [r0, #8]
_020237B0:
	pop {r4, pc}
	nop
_020237B4: .word 0xB6F8D2EC
_020237B8: .word 0x0000FFFF
	thumb_func_end sub_02023790

	thumb_func_start sub_020237BC
sub_020237BC: ; 0x020237BC
	push {r4, lr}
	add r4, r0, #0
	bne _020237C6
	bl sub_02022974
_020237C6:
	ldr r1, [r4, #4]
	ldr r0, _020237E0 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020237D2
	bl sub_02022974
_020237D2:
	ldr r0, _020237E4 ; =0xB6F8D2ED
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_020237E0: .word 0xB6F8D2EC
_020237E4: .word 0xB6F8D2ED
	thumb_func_end sub_020237BC

	thumb_func_start sub_020237E8
sub_020237E8: ; 0x020237E8
	push {r4, lr}
	add r4, r0, #0
	bne _020237F2
	bl sub_02022974
_020237F2:
	ldr r1, [r4, #4]
	ldr r0, _02023808 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020237FE
	bl sub_02022974
_020237FE:
	mov r0, #0
	strh r0, [r4, #2]
	ldr r0, _0202380C ; =0x0000FFFF
	strh r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_02023808: .word 0xB6F8D2EC
_0202380C: .word 0x0000FFFF
	thumb_func_end sub_020237E8

	thumb_func_start sub_02023810
sub_02023810: ; 0x02023810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202381E
	bl sub_02022974
_0202381E:
	ldr r1, [r5, #4]
	ldr r0, _02023864 ; =0xB6F8D2EC
	cmp r1, r0
	beq _0202382A
	bl sub_02022974
_0202382A:
	cmp r4, #0
	bne _02023832
	bl sub_02022974
_02023832:
	ldr r1, [r4, #4]
	ldr r0, _02023864 ; =0xB6F8D2EC
	cmp r1, r0
	beq _0202383E
	bl sub_02022974
_0202383E:
	ldrh r2, [r4, #2]
	ldrh r0, [r5]
	cmp r0, r2
	bls _0202385C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, #1
	add r0, #8
	add r1, #8
	lsl r2, r2, #1
	bl sub_020D50B8
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	pop {r3, r4, r5, pc}
_0202385C:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02023864: .word 0xB6F8D2EC
	thumb_func_end sub_02023810

	thumb_func_start sub_02023868
sub_02023868: ; 0x02023868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023876
	bl sub_02022974
_02023876:
	ldr r1, [r5, #4]
	ldr r0, _0202389C ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023882
	bl sub_02022974
_02023882:
	ldrh r0, [r5, #2]
	add r1, r4, #0
	add r0, r0, #1
	bl sub_02023790
	add r4, r0, #0
	beq _02023896
	add r1, r5, #0
	bl sub_02023810
_02023896:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0202389C: .word 0xB6F8D2EC
	thumb_func_end sub_02023868

	thumb_func_start sub_020238A0
sub_020238A0: ; 0x020238A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	add r7, r3, #0
	str r2, [sp]
	str r0, [sp, #0x20]
	cmp r5, #0
	bne _020238B8
	bl sub_02022974
_020238B8:
	ldr r1, [r5, #4]
	ldr r0, _020239B8 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020238C4
	bl sub_02022974
_020238C4:
	cmp r6, #0
	bge _020238CC
	mov r4, #1
	b _020238CE
_020238CC:
	mov r4, #0
_020238CE:
	ldr r0, [sp]
	ldrh r1, [r5]
	add r0, r0, r4
	cmp r1, r0
	bls _020239B0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020238E4
	ldr r0, _020239BC ; =0x020E5744
	str r0, [sp, #4]
	b _020238E8
_020238E4:
	ldr r0, _020239C0 ; =0x020E5730
	str r0, [sp, #4]
_020238E8:
	add r0, r5, #0
	bl sub_020237E8
	cmp r4, #0
	beq _02023910
	mov r0, #0
	mvn r0, r0
	mul r6, r0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02023902
	mov r0, #0xf1
	b _02023904
_02023902:
	ldr r0, _020239C4 ; =0x000001BE
_02023904:
	ldrh r2, [r5, #2]
	add r1, r2, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
_02023910:
	ldr r0, [sp]
	lsl r1, r0, #2
	ldr r0, _020239C8 ; =0x020E5754
	ldr r4, [r0, r1]
	cmp r4, #0
	beq _020239A2
_0202391C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	mul r0, r1
	sub r6, r6, r0
	cmp r7, #2
	bne _02023950
	cmp r1, #0xa
	bhs _0202393E
	ldr r0, [sp, #4]
	lsl r1, r1, #1
	ldrh r1, [r0, r1]
	b _02023940
_0202393E:
	mov r1, #0xe2
_02023940:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
	b _02023996
_02023950:
	cmp r1, #0
	bne _02023958
	cmp r4, #1
	bne _02023978
_02023958:
	mov r7, #2
	cmp r1, #0xa
	bhs _02023966
	ldr r0, [sp, #4]
	lsl r1, r1, #1
	ldrh r1, [r0, r1]
	b _02023968
_02023966:
	mov r1, #0xe2
_02023968:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
	b _02023996
_02023978:
	cmp r7, #1
	bne _02023996
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02023986
	mov r1, #1
	b _02023988
_02023986:
	ldr r1, _020239CC ; =0x000001E2
_02023988:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
_02023996:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	bne _0202391C
_020239A2:
	ldrh r0, [r5, #2]
	ldr r1, _020239D0 ; =0x0000FFFF
	add sp, #8
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_020239B0:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020239B8: .word 0xB6F8D2EC
_020239BC: .word 0x020E5744
_020239C0: .word 0x020E5730
_020239C4: .word 0x000001BE
_020239C8: .word 0x020E5754
_020239CC: .word 0x000001E2
_020239D0: .word 0x0000FFFF
	thumb_func_end sub_020238A0

	thumb_func_start sub_020239D4
sub_020239D4: ; 0x020239D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r3, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x2c]
	cmp r5, #0
	bne _020239F0
	bl sub_02022974
_020239F0:
	ldr r1, [r5, #4]
	ldr r0, _02023B20 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020239FC
	bl sub_02022974
_020239FC:
	ldrh r0, [r5]
	cmp r0, r4
	bhi _02023A04
	b _02023B18
_02023A04:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02023A10
	ldr r0, _02023B24 ; =0x020E5708
	str r0, [sp, #0x10]
	b _02023A14
_02023A10:
	ldr r0, _02023B28 ; =0x020E571C
	str r0, [sp, #0x10]
_02023A14:
	add r0, r5, #0
	bl sub_020237E8
	ldr r1, _02023B2C ; =0x020E5778
	lsl r2, r4, #3
	add r0, r1, r2
	ldr r6, [r1, r2]
	ldr r0, [r0, #4]
	mov r1, #0
	str r0, [sp, #0xc]
	eor r1, r0
	mov r2, #0
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	beq _02023B0A
_02023A34:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r2, r6, #0
	bl sub_020E1ED4
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020E1F1C
	ldr r2, [sp]
	sub r0, r2, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	sbc r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	cmp r0, #2
	bne _02023A86
	mov r1, #0
	mov r0, #0xa
	sub r0, r4, r0
	sbc r7, r1
	bhs _02023A74
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	b _02023A76
_02023A74:
	mov r0, #0xe2
_02023A76:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
	b _02023AEA
_02023A86:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r4
	orr r0, r1
	bne _02023AA2
	ldr r0, [sp, #0xc]
	mov r1, #0
	eor r1, r0
	mov r2, #1
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	bne _02023ACA
_02023AA2:
	mov r0, #2
	str r0, [sp, #0x28]
	mov r1, #0
	mov r0, #0xa
	sub r0, r4, r0
	sbc r7, r1
	bhs _02023AB8
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	b _02023ABA
_02023AB8:
	mov r0, #0xe2
_02023ABA:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
	b _02023AEA
_02023ACA:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _02023AEA
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02023ADA
	mov r0, #1
	b _02023ADC
_02023ADA:
	ldr r0, _02023B30 ; =0x000001DE
_02023ADC:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
_02023AEA:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	str r1, [sp, #0xc]
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0
	eor r1, r0
	mov r2, #0
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	bne _02023A34
_02023B0A:
	ldrh r0, [r5, #2]
	ldr r1, _02023B34 ; =0x0000FFFF
	add sp, #0x14
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r4, r5, r6, r7, pc}
_02023B18:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02023B20: .word 0xB6F8D2EC
_02023B24: .word 0x020E5708
_02023B28: .word 0x020E571C
_02023B2C: .word 0x020E5778
_02023B30: .word 0x000001DE
_02023B34: .word 0x0000FFFF
	thumb_func_end sub_020239D4

	thumb_func_start sub_02023B38
sub_02023B38: ; 0x02023B38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	add r5, r1, #0
	ldrh r1, [r0, #2]
	mov r7, #1
	cmp r1, #0x12
	bls _02023B56
	ldr r0, [sp, #8]
	add sp, #0x10
	add r1, r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02023B56:
	sub r1, r1, #1
	str r1, [sp, #4]
	bmi _02023BCC
	lsl r1, r1, #1
	add r4, r0, r1
_02023B60:
	ldrh r6, [r4, #8]
	mov r3, #0xa
	mov r0, #0
	add r1, r6, #0
	sub r1, #0xa2
	asr r2, r1, #0x1f
	sub r3, r1, r3
	mov ip, r2
	mov r3, ip
	sbc r3, r0
	blo _02023B98
	ldr r0, _02023BDC ; =0x00000121
	mov r3, #0xa
	sub r1, r6, r0
	asr r2, r1, #0x1f
	mov r0, #0
	sub r3, r1, r3
	mov ip, r2
	mov r3, ip
	sbc r3, r0
	blo _02023B98
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02023B98:
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020E1F1C
	add r2, r1, #0
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adc r0, r2
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r5, r1, #0
	sub r4, r4, #2
	sub r0, r0, #1
	str r0, [sp, #4]
	bpl _02023B60
_02023BCC:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023BDC: .word 0x00000121
	thumb_func_end sub_02023B38

	thumb_func_start sub_02023BE0
sub_02023BE0: ; 0x02023BE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023BEE
	bl sub_02022974
_02023BEE:
	ldr r1, [r5, #4]
	ldr r0, _02023C34 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023BFA
	bl sub_02022974
_02023BFA:
	cmp r4, #0
	bne _02023C02
	bl sub_02022974
_02023C02:
	ldr r1, [r4, #4]
	ldr r0, _02023C34 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C0E
	bl sub_02022974
_02023C0E:
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _02023C2E
	ldr r0, _02023C38 ; =0x0000FFFF
_02023C18:
	ldrh r1, [r5, #8]
	cmp r1, r0
	bne _02023C22
	mov r0, #0
	pop {r3, r4, r5, pc}
_02023C22:
	add r5, r5, #2
	add r4, r4, #2
	ldrh r2, [r5, #8]
	ldrh r1, [r4, #8]
	cmp r2, r1
	beq _02023C18
_02023C2E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02023C34: .word 0xB6F8D2EC
_02023C38: .word 0x0000FFFF
	thumb_func_end sub_02023BE0

	thumb_func_start sub_02023C3C
sub_02023C3C: ; 0x02023C3C
	push {r4, lr}
	add r4, r0, #0
	bne _02023C46
	bl sub_02022974
_02023C46:
	ldr r1, [r4, #4]
	ldr r0, _02023C58 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C52
	bl sub_02022974
_02023C52:
	ldrh r0, [r4, #2]
	pop {r4, pc}
	nop
_02023C58: .word 0xB6F8D2EC
	thumb_func_end sub_02023C3C

	thumb_func_start sub_02023C5C
sub_02023C5C: ; 0x02023C5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02023C66
	bl sub_02022974
_02023C66:
	ldr r1, [r4, #4]
	ldr r0, _02023C98 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C72
	bl sub_02022974
_02023C72:
	ldrh r1, [r4, #2]
	mov r3, #0
	mov r0, #1
	cmp r1, #0
	ble _02023C94
	mov r1, #0xe
	add r5, r4, #0
	lsl r1, r1, #0xc
_02023C82:
	ldrh r2, [r5, #8]
	cmp r2, r1
	bne _02023C8A
	add r0, r0, #1
_02023C8A:
	ldrh r2, [r4, #2]
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, r2
	blt _02023C82
_02023C94:
	pop {r3, r4, r5, pc}
	nop
_02023C98: .word 0xB6F8D2EC
	thumb_func_end sub_02023C5C

	thumb_func_start sub_02023C9C
sub_02023C9C: ; 0x02023C9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02023CAC
	bl sub_02022974
_02023CAC:
	ldr r1, [r5, #4]
	ldr r0, _02023D24 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023CB8
	bl sub_02022974
_02023CB8:
	cmp r7, #0
	bne _02023CC0
	bl sub_02022974
_02023CC0:
	ldr r1, [r7, #4]
	ldr r0, _02023D24 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023CCC
	bl sub_02022974
_02023CCC:
	mov r4, #0
	cmp r6, #0
	beq _02023CF6
	ldrh r0, [r5, #2]
	cmp r0, #0
	ble _02023CF6
	mov r1, #0xe
	add r0, r5, #0
	lsl r1, r1, #0xc
_02023CDE:
	ldrh r2, [r0, #8]
	cmp r2, r1
	bne _02023CEC
	sub r6, r6, #1
	bne _02023CEC
	add r4, r4, #1
	b _02023CF6
_02023CEC:
	ldrh r2, [r5, #2]
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, r2
	blt _02023CDE
_02023CF6:
	add r0, r7, #0
	bl sub_020237E8
	ldrh r0, [r5, #2]
	cmp r4, r0
	bge _02023D20
	lsl r0, r4, #1
	add r6, r5, r0
_02023D06:
	ldrh r1, [r6, #8]
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r1, r0
	beq _02023D20
	add r0, r7, #0
	bl sub_02023EB0
	ldrh r0, [r5, #2]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02023D06
_02023D20:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023D24: .word 0xB6F8D2EC
	thumb_func_end sub_02023C9C

	thumb_func_start sub_02023D28
sub_02023D28: ; 0x02023D28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023D36
	bl sub_02022974
_02023D36:
	ldr r1, [r5, #4]
	ldr r0, _02023D84 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023D42
	bl sub_02022974
_02023D42:
	mov r0, #0
	strh r0, [r5, #2]
	ldrh r1, [r4]
	ldr r0, _02023D88 ; =0x0000FFFF
	cmp r1, r0
	beq _02023D76
	add r1, r0, #0
_02023D50:
	ldrh r2, [r5]
	ldrh r0, [r5, #2]
	sub r2, r2, #1
	cmp r0, r2
	blt _02023D60
	bl sub_02022974
	b _02023D76
_02023D60:
	add r2, r0, #0
	add r2, r2, #1
	strh r2, [r5, #2]
	ldrh r2, [r4]
	lsl r0, r0, #1
	add r0, r5, r0
	add r4, r4, #2
	strh r2, [r0, #8]
	ldrh r0, [r4]
	cmp r0, r1
	bne _02023D50
_02023D76:
	ldrh r0, [r5, #2]
	ldr r1, _02023D88 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
	nop
_02023D84: .word 0xB6F8D2EC
_02023D88: .word 0x0000FFFF
	thumb_func_end sub_02023D28

	thumb_func_start sub_02023D8C
sub_02023D8C: ; 0x02023D8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _02023D9C
	bl sub_02022974
_02023D9C:
	ldr r1, [r5, #4]
	ldr r0, _02023DE8 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023DA8
	bl sub_02022974
_02023DA8:
	ldrh r0, [r5]
	cmp r4, r0
	bhi _02023DE2
	lsl r6, r4, #1
	add r0, r5, #0
	add r0, #8
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020D50B8
	mov r2, #0
	cmp r4, #0
	bls _02023DD4
	ldr r0, _02023DEC ; =0x0000FFFF
	add r3, r5, #0
_02023DC6:
	ldrh r1, [r3, #8]
	cmp r1, r0
	beq _02023DD4
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r4
	blo _02023DC6
_02023DD4:
	strh r2, [r5, #2]
	cmp r2, r4
	bne _02023DE6
	ldr r1, _02023DEC ; =0x0000FFFF
	add r0, r5, r6
	strh r1, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02023DE2:
	bl sub_02022974
_02023DE6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023DE8: .word 0xB6F8D2EC
_02023DEC: .word 0x0000FFFF
	thumb_func_end sub_02023D8C

	thumb_func_start sub_02023DF0
sub_02023DF0: ; 0x02023DF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _02023E00
	bl sub_02022974
_02023E00:
	ldr r1, [r5, #4]
	ldr r0, _02023E28 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E0C
	bl sub_02022974
_02023E0C:
	ldrh r0, [r5, #2]
	add r2, r0, #1
	cmp r2, r4
	bhi _02023E22
	add r5, #8
	add r0, r6, #0
	add r1, r5, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	pop {r4, r5, r6, pc}
_02023E22:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02023E28: .word 0xB6F8D2EC
	thumb_func_end sub_02023DF0

	thumb_func_start sub_02023E2C
sub_02023E2C: ; 0x02023E2C
	push {r4, lr}
	add r4, r0, #0
	bne _02023E36
	bl sub_02022974
_02023E36:
	ldr r1, [r4, #4]
	ldr r0, _02023E48 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E42
	bl sub_02022974
_02023E42:
	add r4, #8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02023E48: .word 0xB6F8D2EC
	thumb_func_end sub_02023E2C

	thumb_func_start sub_02023E4C
sub_02023E4C: ; 0x02023E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023E5A
	bl sub_02022974
_02023E5A:
	ldr r1, [r5, #4]
	ldr r0, _02023EAC ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E66
	bl sub_02022974
_02023E66:
	cmp r4, #0
	bne _02023E6E
	bl sub_02022974
_02023E6E:
	ldr r1, [r4, #4]
	ldr r0, _02023EAC ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E7A
	bl sub_02022974
_02023E7A:
	ldrh r2, [r4, #2]
	ldrh r0, [r5, #2]
	add r1, r0, r2
	add r3, r1, #1
	ldrh r1, [r5]
	cmp r3, r1
	bgt _02023EA6
	add r1, r5, #0
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	add r1, r4, #0
	add r2, r2, #1
	add r1, #8
	lsl r2, r2, #1
	bl sub_020D50B8
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r5, #2]
	pop {r3, r4, r5, pc}
_02023EA6:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023EAC: .word 0xB6F8D2EC
	thumb_func_end sub_02023E4C

	thumb_func_start sub_02023EB0
sub_02023EB0: ; 0x02023EB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023EBE
	bl sub_02022974
_02023EBE:
	ldr r1, [r5, #4]
	ldr r0, _02023EF0 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023ECA
	bl sub_02022974
_02023ECA:
	ldrh r2, [r5, #2]
	ldrh r0, [r5]
	add r1, r2, #1
	cmp r1, r0
	bge _02023EE8
	lsl r0, r2, #1
	strh r1, [r5, #2]
	add r0, r5, r0
	strh r4, [r0, #8]
	ldrh r0, [r5, #2]
	ldr r1, _02023EF4 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02023EE8:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02023EF0: .word 0xB6F8D2EC
_02023EF4: .word 0x0000FFFF
	thumb_func_end sub_02023EB0

	thumb_func_start sub_02023EF8
sub_02023EF8: ; 0x02023EF8
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02023F0C
	ldrh r1, [r0, #8]
	mov r0, #0xf1
	lsl r0, r0, #8
	cmp r1, r0
	bne _02023F0C
	mov r0, #1
	bx lr
_02023F0C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02023EF8

	thumb_func_start sub_02023F10
sub_02023F10: ; 0x02023F10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_02023EF8
	cmp r0, #0
	beq _02023F7A
	ldr r0, [sp]
	ldr r1, [sp]
	ldrh r0, [r0, #2]
	add r1, #8
	ldr r7, _02023F84 ; =0x000001FF
	lsl r0, r0, #1
	add r3, r1, r0
	mov r0, #0
	add r4, #0xa
	add r1, r0, #0
_02023F34:
	ldrh r2, [r4]
	asr r2, r0
	and r2, r7
	lsl r2, r2, #0x10
	add r0, #9
	lsr r2, r2, #0x10
	cmp r0, #0xf
	blt _02023F5C
	add r4, r4, #2
	sub r0, #0xf
	beq _02023F5C
	ldrh r6, [r4]
	mov r5, #9
	sub r5, r5, r0
	lsl r6, r5
	ldr r5, _02023F84 ; =0x000001FF
	and r5, r6
	orr r2, r5
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
_02023F5C:
	ldr r5, _02023F84 ; =0x000001FF
	cmp r2, r5
	beq _02023F6A
	strh r2, [r3]
	add r3, r3, #2
	add r1, r1, #1
	b _02023F34
_02023F6A:
	ldr r0, _02023F88 ; =0x0000FFFF
	strh r0, [r3]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
	add r1, r0, r1
	ldr r0, [sp]
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02023F7A:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02023E4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023F84: .word 0x000001FF
_02023F88: .word 0x0000FFFF
	thumb_func_end sub_02023F10

	thumb_func_start sub_02023F8C
sub_02023F8C: ; 0x02023F8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023F9A
	bl sub_02022974
_02023F9A:
	ldr r1, [r5, #4]
	ldr r0, _02023FC4 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023FA6
	bl sub_02022974
_02023FA6:
	ldrh r0, [r5, #2]
	cmp r0, r4
	ble _02023FC2
	add r5, #8
	lsl r2, r4, #1
	ldrh r1, [r5, r2]
	ldr r0, _02023FC8 ; =0x00000145
	cmp r1, r0
	blo _02023FC2
	add r0, #0x19
	cmp r1, r0
	bhi _02023FC2
	sub r1, #0x1a
	strh r1, [r5, r2]
_02023FC2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023FC4: .word 0xB6F8D2EC
_02023FC8: .word 0x00000145
	thumb_func_end sub_02023F8C

	thumb_func_start sub_02023FCC
sub_02023FCC: ; 0x02023FCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r7, #0
	bne _02023FDE
	bl sub_02022974
_02023FDE:
	ldr r0, [sp, #0x18]
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	beq _02024024
	str r5, [r4, #0]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	bl sub_02018144
	str r0, [r4, #0x10]
	cmp r0, #0
	beq _0202401C
	mov r6, #0
	cmp r7, #0
	bls _02024024
	add r5, r6, #0
_0202400A:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	bl sub_02024028
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0202400A
	b _02024024
_0202401C:
	add r0, r4, #0
	bl sub_020181C4
	mov r4, #0
_02024024:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023FCC

	thumb_func_start sub_02024028
sub_02024028: ; 0x02024028
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024028

	thumb_func_start sub_02024034
sub_02024034: ; 0x02024034
	push {r4, lr}
	add r4, r0, #0
	bne _0202403E
	bl sub_02022974
_0202403E:
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02024034

	thumb_func_start sub_0202404C
sub_0202404C: ; 0x0202404C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0202278C
	str r0, [sp]
	cmp r0, #0
	beq _02024098
	bl sub_02022798
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bls _020240B6
	add r4, r6, #0
_0202406C:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldr r0, [r5, #0]
	beq _02024080
	add r0, r0, r4
	bl sub_02022734
	b _02024086
_02024080:
	add r0, r0, r4
	bl sub_02022760
_02024086:
	ldr r1, [r5, #0x10]
	add r6, r6, #1
	add r1, r1, r4
	strb r0, [r1, #1]
	ldr r0, [r5, #4]
	add r4, r4, #4
	cmp r6, r0
	blo _0202406C
	b _020240B6
_02024098:
	ldr r0, [r5, #4]
	mov r3, #0
	str r3, [sp, #4]
	cmp r0, #0
	bls _020240B6
	add r2, r3, #0
	add r1, r3, #0
_020240A6:
	ldr r0, [r5, #0x10]
	add r3, r3, #1
	add r0, r0, r2
	strb r1, [r0, #1]
	ldr r0, [r5, #4]
	add r2, r2, #4
	cmp r3, r0
	blo _020240A6
_020240B6:
	mov r4, #0
	cmp r0, #0
	bls _020240EC
	add r7, r4, #0
_020240BE:
	ldr r3, [r5, #0x10]
	ldr r1, [sp]
	add r0, r3, r7
	ldrb r3, [r3, r7]
	ldr r2, [sp, #4]
	lsl r6, r3, #2
	ldr r3, _020240F0 ; =0x020E5820
	ldr r3, [r3, r6]
	blx r3
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _020240E2
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r4, #0
	blx r3
_020240E2:
	ldr r0, [r5, #4]
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, r0
	blo _020240BE
_020240EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020240F0: .word 0x020E5820
	thumb_func_end sub_0202404C

	thumb_func_start sub_020240F4
sub_020240F4: ; 0x020240F4
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _0202410A
	cmp r2, #0
	beq _0202410A
	mov r1, #1
	bl sub_02024144
	mov r0, #0
	pop {r3, pc}
_0202410A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_020240F4

	thumb_func_start sub_02024110
sub_02024110: ; 0x02024110
	push {r3, lr}
	ldrb r2, [r0, #1]
	cmp r2, #0
	beq _02024128
	ldrh r2, [r0, #2]
	ldr r1, _02024140 ; =0x0000FFFF
	cmp r2, r1
	bhs _02024124
	add r1, r2, #1
	strh r1, [r0, #2]
_02024124:
	mov r0, #2
	pop {r3, pc}
_02024128:
	cmp r1, #0
	beq _02024136
	mov r1, #0
	bl sub_02024144
	mov r0, #3
	pop {r3, pc}
_02024136:
	mov r1, #0
	bl sub_02024144
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02024140: .word 0x0000FFFF
	thumb_func_end sub_02024110

	thumb_func_start sub_02024144
sub_02024144: ; 0x02024144
	strb r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_02024144

	thumb_func_start sub_0202414C
sub_0202414C: ; 0x0202414C
	push {r3, r4}
	ldr r3, [r0, #0xc]
	mov r2, #0
	sub r3, r3, #1
	beq _0202416A
	ldr r4, [r0, #0]
_02024158:
	ldrh r3, [r4, #2]
	cmp r3, r1
	bhi _0202416A
	ldr r3, [r0, #0xc]
	add r2, r2, #1
	sub r3, r3, #1
	add r4, r4, #2
	cmp r2, r3
	blo _02024158
_0202416A:
	ldr r1, [r0, #4]
	ldrb r3, [r1, r2]
	add r1, sp, #0
	strb r3, [r1]
	ldr r0, [r0, #8]
	ldrb r2, [r0, r2]
	strb r2, [r1, #1]
	ldrb r0, [r1]
	lsl r1, r2, #8
	orr r0, r1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202414C

	thumb_func_start sub_02024184
sub_02024184: ; 0x02024184
	ldr r2, [r0, #0]
	str r2, [r1, #0xc]
	add r2, r0, #4
	str r2, [r1, #0]
	ldr r0, [r1, #0xc]
	lsl r0, r0, #1
	add r2, r2, r0
	str r2, [r1, #4]
	ldr r0, [r1, #0xc]
	add r0, r2, r0
	str r0, [r1, #8]
	bx lr
	thumb_func_end sub_02024184

	thumb_func_start sub_0202419C
sub_0202419C: ; 0x0202419C
	ldr r0, _020241AC ; =0x021C0788
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _020241B0 ; =0x021C0788
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020241AC: .word 0x021C0788
_020241B0: .word 0x021C0788
	thumb_func_end sub_0202419C

	thumb_func_start sub_020241B4
sub_020241B4: ; 0x020241B4
	ldr r3, _020241B8 ; =sub_020BFAB8
	bx r3
	; .align 2, 0
_020241B8: .word sub_020BFAB8
	thumb_func_end sub_020241B4

	thumb_func_start sub_020241BC
sub_020241BC: ; 0x020241BC
	ldr r2, _020241C8 ; =0x021C0788
	str r0, [r2, #4]
	str r1, [r2, #8]
	mov r0, #1
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_020241C8: .word 0x021C0788
	thumb_func_end sub_020241BC

	thumb_func_start sub_020241CC
sub_020241CC: ; 0x020241CC
	ldr r0, _020241E8 ; =0x021C0788
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020241E4
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	lsl r1, r1, #1
	orr r2, r1
	ldr r1, _020241EC ; =0x04000540
	str r2, [r1, #0]
	mov r1, #0
	str r1, [r0, #0]
_020241E4:
	bx lr
	nop
_020241E8: .word 0x021C0788
_020241EC: .word 0x04000540
	thumb_func_end sub_020241CC

	thumb_func_start sub_020241F0
sub_020241F0: ; 0x020241F0
	mov r0, #5
	lsl r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_020241F0

	thumb_func_start sub_020241F8
sub_020241F8: ; 0x020241F8
	mov r0, #2
	lsl r0, r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020241F8

	thumb_func_start sub_02024200
sub_02024200: ; 0x02024200
	ldr r0, _02024204 ; =0x05000400
	bx lr
	; .align 2, 0
_02024204: .word 0x05000400
	thumb_func_end sub_02024200

	thumb_func_start sub_02024208
sub_02024208: ; 0x02024208
	mov r0, #2
	lsl r0, r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024208

	thumb_func_start sub_02024210
sub_02024210: ; 0x02024210
	ldr r0, _02024214 ; =0x05000200
	bx lr
	; .align 2, 0
_02024214: .word 0x05000200
	thumb_func_end sub_02024210

	thumb_func_start sub_02024218
sub_02024218: ; 0x02024218
	ldr r0, _0202421C ; =0x05000600
	bx lr
	; .align 2, 0
_0202421C: .word 0x05000600
	thumb_func_end sub_02024218

	thumb_func_start sub_02024220
sub_02024220: ; 0x02024220
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0xc
	add r6, r0, #0
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #0]
	bl sub_020B28CC
	bl sub_020BFB4C
	mov r1, #2
	ldr r0, _020242C0 ; =0x04000540
	cmp r7, #0
	str r1, [r0, #0]
	bne _0202426C
	lsl r0, r5, #7
	bl sub_020A6824
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_02018144
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #8]
	lsl r0, r5, #0x11
	mov r1, #0
	add r3, r6, #0
	bl sub_020A682C
	b _02024276
_0202426C:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_020A5A94
_02024276:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020242A0
	ldr r0, [sp, #0x20]
	lsl r0, r0, #8
	bl sub_020A6B84
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02018144
	str r0, [r4, #4]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	lsl r0, r0, #0xd
	add r2, r5, #0
	mov r3, #1
	bl sub_020A6B8C
	b _020242AC
_020242A0:
	ldr r0, [sp, #0x20]
	mov r1, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	bl sub_020A5A94
_020242AC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020242B6
	blx r0
	b _020242BA
_020242B6:
	bl sub_020242DC
_020242BA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020242C0: .word 0x04000540
	thumb_func_end sub_02024220

	thumb_func_start sub_020242C4
sub_020242C4: ; 0x020242C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_020242C4

	thumb_func_start sub_020242DC
sub_020242DC: ; 0x020242DC
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02024340 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02024344 ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _02024348 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	and r1, r3
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #8
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0202434C ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _02024350 ; =0xBFFF0000
	ldr r0, _02024354 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02024340: .word 0x04000008
_02024344: .word 0xFFFFCFFD
_02024348: .word 0x0000CFEF
_0202434C: .word 0x00007FFF
_02024350: .word 0xBFFF0000
_02024354: .word 0x04000580
	thumb_func_end sub_020242DC

	thumb_func_start sub_02024358
sub_02024358: ; 0x02024358
	push {r3, lr}
	bl sub_020C7D90
	cmp r0, #0
	bne _02024368
	bl sub_020C42A8
	pop {r3, pc}
_02024368:
	ldr r0, _020243C4 ; =0x027FF00C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02024392
	bl sub_020CD6F8
	mov r2, #0x16
	ldr r0, _020243C8 ; =0x027FFE00
	ldr r1, _020243CC ; =0x027FF000
	lsl r2, r2, #4
	bl sub_020C4DB0
	mov r2, #0x16
	ldr r0, _020243C8 ; =0x027FFE00
	ldr r1, _020243D0 ; =0x027FFA80
	lsl r2, r2, #4
	bl sub_020C4DB0
	ldr r1, _020243D4 ; =0x4A414441
	ldr r0, _020243C4 ; =0x027FF00C
	str r1, [r0, #0]
_02024392:
	ldr r0, _020243D8 ; =0x020E5828
	mov r1, #3
	bl sub_020C7760
	ldr r1, _020243CC ; =0x027FF000
	ldr r2, [r1, #0x48]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x4c]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x40]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x44]
	str r2, [r0, #0x38]
	ldr r2, [r1, #0xc]
	ldr r0, _020243D4 ; =0x4A414441
	cmp r2, r0
	bne _020243BC
	ldrh r1, [r1, #0x10]
	ldr r0, _020243DC ; =0x00003130
	cmp r1, r0
	beq _020243C0
_020243BC:
	bl sub_020C42A8
_020243C0:
	pop {r3, pc}
	nop
_020243C4: .word 0x027FF00C
_020243C8: .word 0x027FFE00
_020243CC: .word 0x027FF000
_020243D0: .word 0x027FFA80
_020243D4: .word 0x4A414441
_020243D8: .word 0x020E5828
_020243DC: .word 0x00003130
	thumb_func_end sub_02024358

	thumb_func_start sub_020243E0
sub_020243E0: ; 0x020243E0
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020C8080
	cmp r0, #0
	beq _02024404
	ldr r1, [sp, #0x24]
	ldr r0, _02024408 ; =0x027FFC2C
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C3EE4
_02024404:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_02024408: .word 0x027FFC2C
	thumb_func_end sub_020243E0

	thumb_func_start sub_0202440C
sub_0202440C: ; 0x0202440C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1b
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202440C

	thumb_func_start sub_02024420
sub_02024420: ; 0x02024420
	ldr r3, _02024428 ; =sub_020245BC
	mov r1, #0x25
	bx r3
	nop
_02024428: .word sub_020245BC
	thumb_func_end sub_02024420

	thumb_func_start sub_0202442C
sub_0202442C: ; 0x0202442C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202442C

	thumb_func_start sub_02024440
sub_02024440: ; 0x02024440
	ldr r3, _02024448 ; =sub_020245BC
	mov r1, #0x20
	bx r3
	nop
_02024448: .word sub_020245BC
	thumb_func_end sub_02024440

	thumb_func_start sub_0202444C
sub_0202444C: ; 0x0202444C
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0
	bl sub_02025680
	pop {r3, pc}
	thumb_func_end sub_0202444C

	thumb_func_start sub_02024458
sub_02024458: ; 0x02024458
	ldr r3, _02024460 ; =sub_02025428
	add r2, r1, #0
	mov r1, #0
	bx r3
	; .align 2, 0
_02024460: .word sub_02025428
	thumb_func_end sub_02024458

	thumb_func_start sub_02024464
sub_02024464: ; 0x02024464
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, r3, #2
	add r3, r4, #0
	bl sub_020257E8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02024464

	thumb_func_start sub_0202447C
sub_0202447C: ; 0x0202447C
	add r3, r1, #0
	add r1, r2, #2
	add r2, r3, #0
	ldr r3, _02024488 ; =sub_02025574
	bx r3
	nop
_02024488: .word sub_02025574
	thumb_func_end sub_0202447C

	thumb_func_start sub_0202448C
sub_0202448C: ; 0x0202448C
	push {r3, lr}
	sub sp, #8
	add r3, r2, #0
	add r2, sp, #4
	str r2, [sp]
	mov r2, #1
	bl sub_020257E8
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_0202448C

	thumb_func_start sub_020244A0
sub_020244A0: ; 0x020244A0
	ldr r3, _020244A8 ; =sub_02025574
	add r2, r1, #0
	mov r1, #1
	bx r3
	; .align 2, 0
_020244A8: .word sub_02025574
	thumb_func_end sub_020244A0

	thumb_func_start sub_020244AC
sub_020244AC: ; 0x020244AC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _02024590 ; =0x000202CC
	mov r0, #1
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _02024590 ; =0x000202CC
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	ldr r0, _02024594 ; =0x021C0794
	str r4, [r0, #0]
	bl sub_02025A3C
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _02024598 ; =0x00020024
	add r0, r4, r0
	bl sub_020251DC
	ldr r0, _0202459C ; =0x00020284
	ldr r1, _02024598 ; =0x00020024
	add r0, r4, r0
	add r1, r4, r1
	bl sub_02025258
	ldr r1, _020245A0 ; =0x00020018
	mov r0, #0
	add r1, r4, r1
	mov r2, #8
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02024ABC
	add r5, r0, #0
	mov r0, #0
	str r0, [r4, #0x10]
	cmp r5, #3
	bhi _02024588
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02024514: ; jump table
	.short _02024582 - _02024514 - 2 ; case 0
	.short _0202451C - _02024514 - 2 ; case 1
	.short _0202451E - _02024514 - 2 ; case 2
	.short _0202457A - _02024514 - 2 ; case 3
_0202451C:
	str r0, [r4, #0xc]
_0202451E:
	add r0, r4, #0
	bl sub_02024DBC
	mov r1, #1
	mov r0, #0
	str r1, [r4, #4]
	str r0, [r4, #8]
	cmp r5, #2
	bne _02024536
	ldr r0, [r4, #0x10]
	orr r0, r1
	str r0, [r4, #0x10]
_02024536:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02024CD4
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _02024550
	ldr r1, [r4, #0x10]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0x10]
	b _0202455C
_02024550:
	cmp r0, #2
	bne _0202455C
	ldr r1, [r4, #0x10]
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0x10]
_0202455C:
	ldr r0, [sp]
	cmp r0, #3
	bne _0202456C
	ldr r1, [r4, #0x10]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4, #0x10]
	b _02024588
_0202456C:
	cmp r0, #2
	bne _02024588
	ldr r1, [r4, #0x10]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #0x10]
	b _02024588
_0202457A:
	ldr r1, [r4, #0x10]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x10]
_02024582:
	add r0, r4, #0
	bl sub_0202479C
_02024588:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02024590: .word 0x000202CC
_02024594: .word 0x021C0794
_02024598: .word 0x00020024
_0202459C: .word 0x00020284
_020245A0: .word 0x00020018
	thumb_func_end sub_020244AC

	thumb_func_start sub_020245A4
sub_020245A4: ; 0x020245A4
	push {r3, lr}
	ldr r0, _020245B8 ; =0x021C0794
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020245B2
	bl sub_02022974
_020245B2:
	ldr r0, _020245B8 ; =0x021C0794
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_020245B8: .word 0x021C0794
	thumb_func_end sub_020245A4

	thumb_func_start sub_020245BC
sub_020245BC: ; 0x020245BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x26
	blt _020245CA
	bl sub_02022974
_020245CA:
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _020245DC ; =0x0002002C
	add r2, r5, #0
	ldr r0, [r1, r0]
	add r2, #0x14
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	nop
_020245DC: .word 0x0002002C
	thumb_func_end sub_020245BC

	thumb_func_start sub_020245E0
sub_020245E0: ; 0x020245E0
	ldr r3, _020245E4 ; =sub_020245BC
	bx r3
	; .align 2, 0
_020245E4: .word sub_020245BC
	thumb_func_end sub_020245E0

	thumb_func_start sub_020245E8
sub_020245E8: ; 0x020245E8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #1
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #0xc
	bl sub_02018184
	add r6, r0, #0
	mov r0, #1
	bl sub_02017B7C
	ldr r1, _020246A0 ; =0x00020020
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0202460C
	mov r2, #1
	b _0202460E
_0202460C:
	mov r2, #0
_0202460E:
	ldr r0, [sp]
	mov r1, #0
	bl sub_0202516C
	ldr r1, _020246A4 ; =0x00020021
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02024624
	mov r2, #1
	b _02024626
_02024624:
	mov r2, #0
_02024626:
	ldr r0, [sp]
	mov r1, #1
	bl sub_0202516C
	ldr r0, [sp]
	ldr r3, _020246A0 ; =0x00020020
	add r2, r0, #0
	ldrb r2, [r2, r3]
	mov r1, #0
	bl sub_0202516C
	ldr r0, [sp]
	ldr r3, _020246A4 ; =0x00020021
	add r2, r0, #0
	ldrb r2, [r2, r3]
	mov r1, #1
	bl sub_0202516C
	mov r0, #0
	mov r2, #1
	mvn r0, r0
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_020C4BB8
	mov r4, #0
	mov r7, #1
	add r5, r4, #0
	lsl r7, r7, #0xc
_02024660:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02025A9C
	add r0, r4, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02025A9C
	mov r0, #1
	lsl r0, r0, #0xc
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #0x40
	blt _02024660
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0202479C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	bl sub_02017B8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020246A0: .word 0x00020020
_020246A4: .word 0x00020021
	thumb_func_end sub_020245E8

	thumb_func_start sub_020246A8
sub_020246A8: ; 0x020246A8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020246BA
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020246BA:
	bl sub_02024DBC
	cmp r0, #0
	beq _020246DA
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02024CD4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020246DA:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_020246A8

	thumb_func_start sub_020246E0
sub_020246E0: ; 0x020246E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020246EE
	mov r0, #3
	pop {r4, pc}
_020246EE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02024744
	mov r0, #1
	bl sub_02017B7C
	ldr r0, _02024758 ; =0x00020020
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02024706
	mov r2, #1
	b _02024708
_02024706:
	mov r2, #0
_02024708:
	add r0, r4, #0
	mov r1, #0
	bl sub_0202516C
	ldr r0, _0202475C ; =0x00020021
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0202471C
	mov r2, #1
	b _0202471E
_0202471C:
	mov r2, #0
_0202471E:
	add r0, r4, #0
	mov r1, #1
	bl sub_0202516C
	ldr r2, _02024758 ; =0x00020020
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #0
	bl sub_0202516C
	ldr r2, _0202475C ; =0x00020021
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	bl sub_0202516C
	mov r0, #1
	bl sub_02017B8C
_02024744:
	add r0, r4, #0
	bl sub_0202513C
	cmp r0, #2
	bne _02024756
	mov r1, #1
	str r1, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
_02024756:
	pop {r4, pc}
	; .align 2, 0
_02024758: .word 0x00020020
_0202475C: .word 0x00020021
	thumb_func_end sub_020246E0

	thumb_func_start sub_02024760
sub_02024760: ; 0x02024760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	blt _0202476E
	bl sub_02022974
_0202476E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02024778
	bl sub_02022974
_02024778:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _02024782
	bl sub_02022974
_02024782:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02024814
_0202478A:
	add r0, r5, #0
	bl sub_02024828
	cmp r0, #0
	beq _0202478A
	cmp r0, #1
	beq _0202478A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02024760

	thumb_func_start sub_0202479C
sub_0202479C: ; 0x0202479C
	add r2, r0, #0
	mov r0, #1
	str r0, [r2, #8]
	ldr r1, _020247B0 ; =0x00020024
	str r0, [r2, #0xc]
	add r0, r2, #0
	ldr r3, _020247B4 ; =sub_020252EC
	add r0, #0x14
	add r1, r2, r1
	bx r3
	; .align 2, 0
_020247B0: .word 0x00020024
_020247B4: .word sub_020252EC
	thumb_func_end sub_0202479C

	thumb_func_start sub_020247B8
sub_020247B8: ; 0x020247B8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020247B8

	thumb_func_start sub_020247BC
sub_020247BC: ; 0x020247BC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_020247BC

	thumb_func_start sub_020247C0
sub_020247C0: ; 0x020247C0
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020247C0

	thumb_func_start sub_020247C4
sub_020247C4: ; 0x020247C4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020247C4

	thumb_func_start sub_020247C8
sub_020247C8: ; 0x020247C8
	push {r3, lr}
	bl sub_0202783C
	bl sub_020278CC
	pop {r3, pc}
	thumb_func_end sub_020247C8

	thumb_func_start sub_020247D4
sub_020247D4: ; 0x020247D4
	push {r3, lr}
	bl sub_0202783C
	bl sub_020278B8
	pop {r3, pc}
	thumb_func_end sub_020247D4

	thumb_func_start sub_020247E0
sub_020247E0: ; 0x020247E0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020247C4
	cmp r0, #0
	beq _020247FA
	add r0, r4, #0
	bl sub_020247C0
	cmp r0, #0
	beq _020247FA
	mov r0, #1
	pop {r4, pc}
_020247FA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020247E0

	thumb_func_start sub_02024800
sub_02024800: ; 0x02024800
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02024800

	thumb_func_start sub_02024804
sub_02024804: ; 0x02024804
	ldr r0, _02024810 ; =0x021C0794
	mov r1, #1
	ldr r0, [r0, #0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02024810: .word 0x021C0794
	thumb_func_end sub_02024804

	thumb_func_start sub_02024814
sub_02024814: ; 0x02024814
	add r2, r1, #0
	ldr r1, _02024820 ; =0x0002029C
	ldr r3, _02024824 ; =sub_02024EC8
	add r1, r0, r1
	bx r3
	nop
_02024820: .word 0x0002029C
_02024824: .word sub_02024EC8
	thumb_func_end sub_02024814

	thumb_func_start sub_02024828
sub_02024828: ; 0x02024828
	push {r3, r4, r5, lr}
	ldr r1, _0202484C ; =0x0002029C
	add r5, r0, #0
	add r1, r5, r1
	bl sub_02024F44
	add r4, r0, #0
	beq _02024848
	cmp r4, #1
	beq _02024848
	ldr r1, _0202484C ; =0x0002029C
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl sub_0202506C
_02024848:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202484C: .word 0x0002029C
	thumb_func_end sub_02024828

	thumb_func_start sub_02024850
sub_02024850: ; 0x02024850
	ldr r1, _02024858 ; =0x0002029C
	ldr r3, _0202485C ; =sub_020250DC
	add r1, r0, r1
	bx r3
	; .align 2, 0
_02024858: .word 0x0002029C
_0202485C: .word sub_020250DC
	thumb_func_end sub_02024850

	thumb_func_start sub_02024860
sub_02024860: ; 0x02024860
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024860

	thumb_func_start sub_0202486C
sub_0202486C: ; 0x0202486C
	ldr r3, _02024874 ; =sub_0201D628
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_02024874: .word sub_0201D628
	thumb_func_end sub_0202486C

	thumb_func_start sub_02024878
sub_02024878: ; 0x02024878
	ldr r3, _02024884 ; =sub_0201D628
	sub r2, #0x14
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_02024884: .word sub_0201D628
	thumb_func_end sub_02024878

	thumb_func_start sub_02024888
sub_02024888: ; 0x02024888
	cmp r0, #0
	bne _02024890
	mov r2, #0
	b _02024894
_02024890:
	mov r2, #1
	lsl r2, r2, #0x12
_02024894:
	ldr r0, [r1, #4]
	add r0, r2, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024888

	thumb_func_start sub_0202489C
sub_0202489C: ; 0x0202489C
	push {r3, r4, r5, lr}
	ldr r3, _020248C0 ; =0x00020284
	add r3, r0, r3
	mov r0, #0xc
	mul r0, r2
	add r5, r3, r0
	ldr r0, [r5, #4]
	add r4, r1, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _020248B6
	bl sub_02022974
_020248B6:
	ldr r0, [r5, #8]
	add r0, r4, r0
	sub r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_020248C0: .word 0x00020284
	thumb_func_end sub_0202489C

	thumb_func_start sub_020248C4
sub_020248C4: ; 0x020248C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02024918 ; =0x00020284
	add r3, r0, #0
	add r3, r3, r4
	add r5, r2, #0
	mov r4, #0xc
	mul r4, r5
	str r0, [sp]
	add r7, r1, #0
	add r6, r3, r4
	bl sub_0202489C
	add r4, r0, #0
	ldr r2, [r6, #8]
	ldr r0, [r4, #8]
	ldr r1, [r6, #4]
	cmp r0, r2
	beq _020248EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020248EC:
	ldr r3, [r4, #0xc]
	ldr r0, _0202491C ; =0x20060623
	cmp r3, r0
	beq _020248F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020248F8:
	ldrb r0, [r4, #0x10]
	cmp r0, r5
	beq _02024902
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024902:
	ldr r0, [sp]
	add r1, r7, r1
	bl sub_02024878
	ldrh r1, [r4, #0x12]
	cmp r1, r0
	bne _02024914
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02024914:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024918: .word 0x00020284
_0202491C: .word 0x20060623
	thumb_func_end sub_020248C4

	thumb_func_start sub_02024920
sub_02024920: ; 0x02024920
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	str r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r3, #0
	bl sub_0202489C
	add r4, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020248C4
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02024920

	thumb_func_start sub_0202494C
sub_0202494C: ; 0x0202494C
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _02024990 ; =0x00020284
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0xc
	add r3, r5, r3
	mul r4, r7
	str r1, [sp]
	add r6, r3, r4
	bl sub_0202489C
	ldr r2, _02024994 ; =0x00020014
	add r4, r0, #0
	ldr r0, [r5, r2]
	ldr r1, [r6, #4]
	add r2, r2, #4
	str r0, [r4, #0]
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, r2]
	ldr r2, [sp]
	str r0, [r4, #4]
	ldr r0, [r6, #8]
	add r1, r2, r1
	str r0, [r4, #8]
	ldr r0, _02024998 ; =0x20060623
	str r0, [r4, #0xc]
	strb r7, [r4, #0x10]
	ldr r2, [r6, #8]
	add r0, r5, #0
	bl sub_02024878
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024990: .word 0x00020284
_02024994: .word 0x00020014
_02024998: .word 0x20060623
	thumb_func_end sub_0202494C

	thumb_func_start sub_0202499C
sub_0202499C: ; 0x0202499C
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bne _020249AC
	cmp r1, #0
	bne _020249AC
	add r0, r2, #0
	bx lr
_020249AC:
	cmp r0, #0
	bne _020249BC
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	bne _020249BC
	mov r0, #1
	bx lr
_020249BC:
	cmp r0, r1
	bls _020249C4
	mov r0, #1
	bx lr
_020249C4:
	cmp r0, r1
	bhs _020249CC
	mov r0, #1
	b _020249CE
_020249CC:
	mov r0, #0
_020249CE:
	neg r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202499C

	thumb_func_start sub_020249D4
sub_020249D4: ; 0x020249D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [r7, #4]
	ldr r1, [r6, #4]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202499C
	str r0, [sp]
	ldr r0, [r7, #8]
	ldr r1, [r6, #8]
	bl sub_0202499C
	ldr r2, [r7, #0]
	cmp r2, #0
	beq _02024A4E
	ldr r1, [r6, #0]
	cmp r1, #0
	beq _02024A4E
	ldr r1, [sp]
	cmp r1, #0
	ble _02024A14
	cmp r0, #0
	bgt _02024A0A
	bl sub_02022974
_02024A0A:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
	b _02024A4A
_02024A14:
	bge _02024A28
	cmp r0, #0
	blt _02024A1E
	bl sub_02022974
_02024A1E:
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _02024A4A
_02024A28:
	cmp r0, #0
	ble _02024A36
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
	b _02024A4A
_02024A36:
	bge _02024A42
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _02024A4A
_02024A42:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0]
_02024A4A:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02024A4E:
	cmp r2, #0
	beq _02024A64
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02024A64
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02024A64:
	cmp r2, #0
	bne _02024A78
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _02024A78
	mov r0, #1
	str r0, [r5, #0]
	mov r1, #2
	str r1, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02024A78:
	mov r0, #2
	str r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020249D4

	thumb_func_start sub_02024A84
sub_02024A84: ; 0x02024A84
	push {r3, r4, r5, r6}
	mov r4, #0xc
	add r5, r3, #0
	mul r5, r4
	add r6, r1, r5
	ldr r5, [r6, #4]
	ldr r1, _02024AB8 ; =0x00020014
	str r5, [r0, r1]
	ldr r6, [r6, #8]
	add r5, r1, #4
	str r6, [r0, r5]
	ldr r5, [sp, #0x10]
	mul r4, r5
	add r2, r2, r4
	ldr r4, [r2, #8]
	add r2, r1, #0
	add r2, #8
	str r4, [r0, r2]
	add r2, r1, #0
	add r2, #0xc
	strb r3, [r0, r2]
	add r1, #0xd
	strb r5, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02024AB8: .word 0x00020014
	thumb_func_end sub_02024A84

	thumb_func_start sub_02024ABC
sub_02024ABC: ; 0x02024ABC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	mov r1, #2
	add r5, r0, #0
	mov r0, #3
	lsl r1, r1, #0x10
	bl sub_02018184
	mov r1, #2
	add r6, r0, #0
	mov r0, #3
	lsl r1, r1, #0x10
	bl sub_02018184
	mov r2, #2
	add r4, r0, #0
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0x10
	bl sub_02025AC0
	cmp r0, #0
	add r0, sp, #0x2c
	beq _02024B04
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02024920
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_02024920
	b _02024B0E
_02024B04:
	bl sub_02024860
	add r0, sp, #0x14
	bl sub_02024860
_02024B0E:
	mov r0, #1
	lsl r0, r0, #0x12
	add r1, r4, #0
	lsr r2, r0, #1
	bl sub_02025AC0
	cmp r0, #0
	add r0, sp, #0x38
	beq _02024B38
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_02024920
	add r0, sp, #0x20
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02024920
	b _02024B42
_02024B38:
	bl sub_02024860
	add r0, sp, #0x20
	bl sub_02024860
_02024B42:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, sp, #0x2c
	add r1, sp, #0x38
	add r2, sp, #0x10
	add r3, sp, #8
	bl sub_020249D4
	add r4, r0, #0
	add r0, sp, #0x14
	add r1, sp, #0x20
	add r2, sp, #0xc
	add r3, sp, #4
	bl sub_020249D4
	cmp r4, #0
	bne _02024B76
	cmp r0, #0
	bne _02024B76
	add sp, #0x44
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02024B76:
	cmp r4, #0
	beq _02024B7E
	cmp r0, #0
	bne _02024B84
_02024B7E:
	add sp, #0x44
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02024B84:
	cmp r4, #2
	bne _02024BC8
	cmp r0, #2
	bne _02024BC8
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0xc
	add r4, r3, #0
	mul r4, r2
	add r0, sp, #0x30
	ldr r0, [r0, r4]
	add r4, r1, #0
	mul r4, r2
	add r2, sp, #0x18
	ldr r2, [r2, r4]
	cmp r0, r2
	str r1, [sp]
	add r1, sp, #0x2c
	bne _02024BB8
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024BB8:
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024BC8:
	cmp r4, #1
	bne _02024C1E
	cmp r0, #2
	bne _02024C1E
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r4, #0xc
	add r2, r3, #0
	add r6, r0, #0
	mul r2, r4
	add r1, sp, #0x30
	ldr r2, [r1, r2]
	mul r6, r4
	add r1, sp, #0x18
	ldr r6, [r1, r6]
	cmp r2, r6
	bne _02024BFC
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024BFC:
	ldr r0, [sp, #4]
	mul r4, r0
	ldr r1, [r1, r4]
	cmp r2, r1
	bne _02024C18
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024C18:
	add sp, #0x44
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02024C1E:
	cmp r4, #2
	bne _02024C62
	cmp r0, #1
	bne _02024C62
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0xc
	add r4, r3, #0
	mul r4, r2
	add r0, sp, #0x30
	ldr r0, [r0, r4]
	add r4, r1, #0
	mul r4, r2
	add r2, sp, #0x18
	ldr r2, [r2, r4]
	cmp r0, r2
	str r1, [sp]
	add r1, sp, #0x2c
	bne _02024C52
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024C52:
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02024C62:
	cmp r4, #1
	bne _02024CA0
	cmp r0, #1
	bne _02024CA0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	cmp r2, r0
	bne _02024CA0
	add r3, r2, #0
	mov r1, #0xc
	mul r3, r1
	add r2, sp, #0x30
	mul r1, r0
	add r0, sp, #0x18
	ldr r2, [r2, r3]
	ldr r0, [r0, r1]
	cmp r2, r0
	beq _02024C8A
	bl sub_02022974
_02024C8A:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x2c
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	add sp, #0x44
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02024CA0:
	ldr r1, [sp, #0x10]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r1, sp, #0x30
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x18
	ldr r0, [r0, r2]
	cmp r3, r0
	beq _02024CBE
	bl sub_02022974
_02024CBE:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x2c
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, sp, #0x14
	bl sub_02024A84
	mov r0, #2
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02024ABC

	thumb_func_start sub_02024CD4
sub_02024CD4: ; 0x02024CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202783C
	add r7, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_020247C8
	cmp r0, #0
	beq _02024D9E
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020279A8
	mov r0, #0
	ldr r1, [sp, #0xc]
	mvn r0, r0
	cmp r1, r0
	bne _02024D14
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02024D42
_02024D14:
	add r0, sp, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	add r3, sp, #0x14
	bl sub_020257E8
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02024D34
	mov r0, #3
	str r0, [r4, #0]
	b _02024D42
_02024D34:
	cmp r0, #1
	bne _02024D42
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02024D42
	mov r0, #2
	str r0, [r4, #0]
_02024D42:
	mov r4, #2
_02024D44:
	add r0, sp, #4
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020279A8
	mov r0, #0
	ldr r1, [sp, #0xc]
	mvn r0, r0
	cmp r1, r0
	bne _02024D64
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02024D98
_02024D64:
	add r0, sp, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	add r3, sp, #0x14
	bl sub_020257E8
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02024D84
	mov r0, #3
	str r0, [r5, #0]
	b _02024D98
_02024D84:
	cmp r0, #1
	bne _02024D98
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02024D98
	ldr r0, [r5, #0]
	cmp r0, #3
	beq _02024D98
	mov r0, #2
	str r0, [r5, #0]
_02024D98:
	add r4, r4, #1
	cmp r4, #5
	ble _02024D44
_02024D9E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02024CD4

	thumb_func_start sub_02024DA4
sub_02024DA4: ; 0x02024DA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02024888
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r1, r4, r1
	bl sub_02025AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02024DA4

	thumb_func_start sub_02024DBC
sub_02024DBC: ; 0x02024DBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02024E20 ; =0x00020284
	add r7, r6, #0
	mov r4, #0
	add r5, r6, r0
	add r7, #0x14
_02024DCA:
	ldr r0, _02024E24 ; =0x00020020
	add r1, r6, r4
	ldrb r0, [r1, r0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02024DA4
	cmp r0, #0
	bne _02024DE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024DE0:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020248C4
	cmp r0, #0
	bne _02024DF2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02024DF2:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #2
	blt _02024DCA
	ldr r7, _02024E28 ; =0x00020030
	mov r5, #0
	add r4, r6, #0
_02024E00:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020245BC
	ldr r1, _02024E2C ; =0x00020028
	ldr r1, [r4, r1]
	bl sub_0201D628
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x26
	blt _02024E00
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02024E20: .word 0x00020284
_02024E24: .word 0x00020020
_02024E28: .word 0x00020030
_02024E2C: .word 0x00020028
	thumb_func_end sub_02024DBC

	thumb_func_start sub_02024E30
sub_02024E30: ; 0x02024E30
	push {r4, r5, r6, lr}
	add r3, r1, #0
	ldr r1, _02024E64 ; =0x00020284
	add r5, r0, #0
	add r6, r2, #0
	add r2, r5, r1
	mov r1, #0xc
	mul r1, r3
	add r4, r2, r1
	add r1, r5, #0
	add r1, #0x14
	add r2, r3, #0
	bl sub_0202494C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02024888
	ldr r2, [r4, #8]
	ldr r1, [r4, #4]
	add r5, #0x14
	add r1, r5, r1
	sub r2, #0x14
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02024E64: .word 0x00020284
	thumb_func_end sub_02024E30

	thumb_func_start sub_02024E68
sub_02024E68: ; 0x02024E68
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02024E94 ; =0x00020284
	add r3, r6, r0
	mov r0, #0xc
	mul r0, r1
	add r4, r3, r0
	add r0, r2, #0
	add r1, r4, #0
	ldr r5, [r4, #8]
	bl sub_02024888
	ldr r1, [r4, #4]
	add r0, r5, r0
	add r1, r6, r1
	sub r0, #0x14
	add r1, r1, r5
	mov r2, #0x14
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	nop
_02024E94: .word 0x00020284
	thumb_func_end sub_02024E68

	thumb_func_start sub_02024E98
sub_02024E98: ; 0x02024E98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02024EC4 ; =0x00020284
	add r3, r5, r0
	mov r0, #0xc
	mul r0, r1
	add r6, r3, r0
	add r0, r2, #0
	add r1, r6, #0
	ldr r4, [r6, #8]
	bl sub_02024888
	add r0, r4, r0
	ldr r1, [r6, #4]
	add r5, #8
	add r1, r5, r1
	sub r0, #0xc
	add r1, r1, r4
	mov r2, #8
	bl sub_02025B3C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02024EC4: .word 0x00020284
	thumb_func_end sub_02024E98

	thumb_func_start sub_02024EC8
sub_02024EC8: ; 0x02024EC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02024F3C ; =0x00020018
	add r4, r1, #0
	mov ip, r2
	mov r1, #0
	add r2, r0, #0
	add r3, r4, #0
	add r6, r7, #0
_02024ED8:
	ldr r5, _02024F3C ; =0x00020018
	add r1, r1, #1
	ldr r5, [r2, r5]
	str r5, [r3, #0x1c]
	ldr r5, [r2, r7]
	add r3, r3, #4
	add r5, r5, #1
	str r5, [r2, r6]
	add r2, r2, #4
	cmp r1, #2
	blt _02024ED8
	mov r1, #0
	str r1, [r4, #0x14]
	str r1, [r4, #0]
	mov r2, ip
	str r1, [r4, #0x24]
	cmp r2, #2
	bne _02024F26
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _02024F1C
	mov r2, #1
	str r2, [r4, #0]
	ldr r2, _02024F40 ; =0x00020014
	ldr r3, [r0, r2]
	str r3, [r4, #0x18]
	ldr r3, [r0, r2]
	add r3, r3, #1
	str r3, [r0, r2]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	b _02024F34
_02024F1C:
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	b _02024F34
_02024F26:
	mov r0, ip
	str r0, [r4, #4]
	mov r0, ip
	str r0, [r4, #8]
	mov r0, ip
	add r0, r0, #1
	str r0, [r4, #0xc]
_02024F34:
	mov r0, #1
	bl sub_02017B7C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02024F3C: .word 0x00020018
_02024F40: .word 0x00020014
	thumb_func_end sub_02024EC8

	thumb_func_start sub_02024F44
sub_02024F44: ; 0x02024F44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #5
	bls _02024F52
	b _02025062
_02024F52:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02024F5E: ; jump table
	.short _02024F6A - _02024F5E - 2 ; case 0
	.short _02024F92 - _02024F5E - 2 ; case 1
	.short _02024FB4 - _02024F5E - 2 ; case 2
	.short _02024FDC - _02024F5E - 2 ; case 3
	.short _0202500C - _02024F5E - 2 ; case 4
	.short _02025034 - _02024F5E - 2 ; case 5
_02024F6A:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02024F7A
	mov r2, #1
	b _02024F7C
_02024F7A:
	mov r2, #0
_02024F7C:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E30
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024F92:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02024FAE
	mov r0, #3
	pop {r3, r4, r5, pc}
_02024FAE:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024FB4:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02024FC4
	mov r2, #1
	b _02024FC6
_02024FC4:
	mov r2, #0
_02024FC6:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E98
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02024FDC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02024FF8
	mov r0, #3
	pop {r3, r4, r5, pc}
_02024FF8:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	add r1, r0, #1
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0202500C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202500C:
	ldr r1, [r4, #8]
	ldr r0, _02025068 ; =0x00020020
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0202501C
	mov r2, #1
	b _0202501E
_0202501C:
	mov r2, #0
_0202501E:
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02024E68
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_02025034:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025062
	mov r2, #0
	str r2, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, #0
	bne _02025050
	mov r0, #3
	pop {r3, r4, r5, pc}
_02025050:
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _02025060
	mov r0, #2
	pop {r3, r4, r5, pc}
_02025060:
	str r2, [r4, #0x14]
_02025062:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02025068: .word 0x00020020
	thumb_func_end sub_02024F44

	thumb_func_start sub_0202506C
sub_0202506C: ; 0x0202506C
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	add r0, r1, #0
	cmp r2, #3
	bne _02025096
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02025082
	ldr r2, [r0, #0x18]
	ldr r1, _020250D0 ; =0x00020014
	str r2, [r3, r1]
_02025082:
	ldr r1, _020250D4 ; =0x00020018
	mov r4, #0
_02025086:
	ldr r2, [r0, #0x1c]
	add r4, r4, #1
	str r2, [r3, r1]
	add r0, r0, #4
	add r3, r3, #4
	cmp r4, #2
	blt _02025086
	b _020250C6
_02025096:
	ldr r6, [r0, #4]
	ldr r1, [r0, #0xc]
	cmp r6, r1
	bge _020250BC
	ldr r1, _020250D8 ; =0x00020020
	mov r7, #1
	add r2, r1, #0
_020250A4:
	add r5, r3, r6
	ldrb r4, [r5, r2]
	cmp r4, #0
	bne _020250B0
	add r4, r7, #0
	b _020250B2
_020250B0:
	mov r4, #0
_020250B2:
	strb r4, [r5, r1]
	ldr r4, [r0, #0xc]
	add r6, r6, #1
	cmp r6, r4
	blt _020250A4
_020250BC:
	mov r0, #1
	str r0, [r3, #4]
	mov r0, #0
	str r0, [r3, #8]
	str r0, [r3, #0xc]
_020250C6:
	mov r0, #1
	bl sub_02017B8C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020250D0: .word 0x00020014
_020250D4: .word 0x00020018
_020250D8: .word 0x00020020
	thumb_func_end sub_0202506C

	thumb_func_start sub_020250DC
sub_020250DC: ; 0x020250DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020250EC
	ldr r2, [r4, #0x18]
	ldr r1, _02025134 ; =0x00020014
	str r2, [r0, r1]
_020250EC:
	ldr r1, _02025138 ; =0x00020018
	mov r3, #0
	add r5, r4, #0
_020250F2:
	ldr r2, [r5, #0x1c]
	add r3, r3, #1
	str r2, [r0, r1]
	add r5, r5, #4
	add r0, r0, #4
	cmp r3, #2
	blt _020250F2
	bl sub_020CD050
	cmp r0, #0
	bne _0202510C
	bl sub_020CD05C
_0202510C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0202512A
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	mov r0, #0
	str r0, [r4, #0x24]
_0202512A:
	mov r0, #1
	bl sub_02017B8C
	pop {r3, r4, r5, pc}
	nop
_02025134: .word 0x00020014
_02025138: .word 0x00020018
	thumb_func_end sub_020250DC

	thumb_func_start sub_0202513C
sub_0202513C: ; 0x0202513C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r1, sp, #0
	mov r2, #2
	add r5, r0, #0
	bl sub_02024EC8
	add r6, sp, #0
_0202514C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02024F44
	add r4, r0, #0
	beq _0202514C
	cmp r4, #1
	beq _0202514C
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0202506C
	add r0, r4, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202513C

	thumb_func_start sub_0202516C
sub_0202516C: ; 0x0202516C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r2, _020251A0 ; =0x00020284
	add r2, r0, r2
	mov r0, #0xc
	mul r0, r1
	add r5, r2, r0
	add r0, sp, #0
	mov r1, #0xff
	mov r2, #0x14
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02024888
	ldr r1, [r5, #8]
	mov r2, #0x14
	add r0, r1, r0
	sub r0, #0x14
	add r1, sp, #0
	bl sub_02025A9C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_020251A0: .word 0x00020284
	thumb_func_end sub_0202516C

	thumb_func_start sub_020251A4
sub_020251A4: ; 0x020251A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020251D4 ; =0x020E5830
	ldr r4, _020251D8 ; =0x020E5894
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _020251B6
	bl sub_02022974
_020251B6:
	lsl r0, r5, #4
	add r0, r4, r0
	ldr r0, [r0, #8]
	blx r0
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r2, r3, r2
	mov r1, #4
	sub r1, r1, r2
	add r0, r0, r1
	add r0, r0, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020251D4: .word 0x020E5830
_020251D8: .word 0x020E5894
	thumb_func_end sub_020251A4

	thumb_func_start sub_020251DC
sub_020251DC: ; 0x020251DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02025250 ; =0x020E5830
	ldr r4, _02025254 ; =0x020E5894
	ldr r0, [r0, #0]
	mov r7, #0
	str r0, [sp]
	cmp r0, #0x26
	beq _020251F4
	bl sub_02022974
_020251F4:
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	ble _02025240
	sub r0, r0, #1
	str r0, [sp, #4]
_02025200:
	ldr r0, [r4, #0]
	cmp r6, r0
	beq _0202520A
	bl sub_02022974
_0202520A:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_020251A4
	str r0, [r5, #4]
	str r7, [r5, #8]
	mov r0, #0
	strh r0, [r5, #0xc]
	ldr r0, [r4, #4]
	strh r0, [r5, #0xe]
	ldr r0, [r5, #4]
	add r7, r7, r0
	ldr r0, [sp, #4]
	cmp r6, r0
	beq _02025232
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _02025234
_02025232:
	add r7, #0x14
_02025234:
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, r0
	blt _02025200
_02025240:
	mov r0, #2
	lsl r0, r0, #0x10
	cmp r7, r0
	ble _0202524C
	bl sub_02022974
_0202524C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025250: .word 0x020E5830
_02025254: .word 0x020E5894
	thumb_func_end sub_020251DC

	thumb_func_start sub_02025258
sub_02025258: ; 0x02025258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov ip, r0
	add r4, r0, #0
	add r3, r0, #0
	ldr r0, _020252E4 ; =0x020E5830
	ldr r6, [sp]
	ldr r7, [r0, #0]
	add r5, r1, #0
_02025270:
	add r2, r6, #0
	strb r3, [r6]
	mov r0, #0
	str r0, [r6, #8]
	add r2, #8
	b _02025288
_0202527C:
	ldr r0, [r5, #4]
	ldr r1, [r2, #0]
	add r5, #0x10
	add r0, r1, r0
	str r0, [r2, #0]
	add r4, r4, #1
_02025288:
	ldrh r0, [r5, #0xe]
	cmp r3, r0
	bne _02025292
	cmp r4, r7
	blt _0202527C
_02025292:
	ldr r0, [r6, #8]
	add r3, r3, #1
	add r0, #0x14
	str r0, [r6, #8]
	ldr r0, [sp, #4]
	strb r0, [r6, #1]
	mov r0, ip
	str r0, [r6, #4]
	ldr r1, [r6, #8]
	ldr r0, _020252E8 ; =0x00000FFF
	add r0, r1, r0
	lsr r0, r0, #0xc
	strb r0, [r6, #2]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	mov r1, ip
	add r0, r1, r0
	add r6, #0xc
	mov ip, r0
	cmp r3, #2
	blt _02025270
	ldr r0, [sp]
	ldrb r1, [r0, #0xd]
	ldrb r0, [r0, #0xe]
	add r1, r1, r0
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _020252D4
	bl sub_02022974
_020252D4:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	ble _020252DE
	bl sub_02022974
_020252DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020252E4: .word 0x020E5830
_020252E8: .word 0x00000FFF
	thumb_func_end sub_02025258

	thumb_func_start sub_020252EC
sub_020252EC: ; 0x020252EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r2, #2
	add r5, r1, #0
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0x10
	ldr r4, _02025338 ; =0x020E5894
	bl sub_020C4BB8
	ldr r0, _0202533C ; =0x020E5830
	mov r7, #0
	ldr r0, [r0, #0]
	str r0, [sp]
	cmp r0, #0
	ble _02025332
_0202530E:
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, #0
	add r1, r6, r1
	bl sub_020C4BB8
	ldr r0, [sp, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, r0
	blx r1
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x10
	add r4, #0x10
	cmp r7, r0
	blt _0202530E
_02025332:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02025338: .word 0x020E5894
_0202533C: .word 0x020E5830
	thumb_func_end sub_020252EC

	thumb_func_start sub_02025340
sub_02025340: ; 0x02025340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r5, _020253AC ; =0x020E5834
	bl sub_020247C8
	cmp r0, #1
	beq _020253A8
	ldr r0, _020253B0 ; =0x020E582C
	mov r7, #0
	ldr r0, [r0, #0]
	str r0, [sp]
	cmp r0, #0
	ble _020253A2
_0202535C:
	ldr r2, [r5, #0]
	cmp r2, #0
	beq _02025398
	add r0, r6, #0
	mov r1, #3
	add r3, sp, #4
	bl sub_02025680
	add r4, r0, #0
	bne _02025374
	bl sub_02022974
_02025374:
	ldr r0, [r5, #8]
	blx r0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	blx r1
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02025428
	add r0, r4, #0
	bl sub_020181C4
_02025398:
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x10
	cmp r7, r0
	blt _0202535C
_020253A2:
	add r0, r6, #0
	bl sub_020247D4
_020253A8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020253AC: .word 0x020E5834
_020253B0: .word 0x020E582C
	thumb_func_end sub_02025340

	thumb_func_start sub_020253B4
sub_020253B4: ; 0x020253B4
	push {r3, r4, r5, lr}
	ldr r5, _020253D8 ; =0x20060623
	add r4, r1, r3
	str r5, [r1, r3]
	ldr r5, _020253DC ; =0x000202C8
	ldr r0, [r0, r5]
	add r0, r0, #1
	str r0, [r4, #4]
	str r3, [r4, #8]
	add r3, #0xe
	add r0, r1, #0
	add r1, r3, #0
	strh r2, [r4, #0xc]
	bl sub_0201D628
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
	nop
_020253D8: .word 0x20060623
_020253DC: .word 0x000202C8
	thumb_func_end sub_020253B4

	thumb_func_start sub_020253E0
sub_020253E0: ; 0x020253E0
	push {r3, r4, r5, lr}
	ldr r5, [r1, r3]
	ldr r0, _0202541C ; =0x20060623
	add r4, r1, r3
	cmp r5, r0
	beq _020253F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_020253F0:
	ldr r0, [r4, #8]
	cmp r0, r3
	beq _020253FA
	mov r0, #0
	pop {r3, r4, r5, pc}
_020253FA:
	ldrh r0, [r4, #0xc]
	cmp r0, r2
	beq _02025404
	mov r0, #0
	pop {r3, r4, r5, pc}
_02025404:
	add r3, #0xe
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0201D628
	ldrh r1, [r4, #0xe]
	cmp r1, r0
	bne _02025418
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025418:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202541C: .word 0x20060623
	thumb_func_end sub_020253E0

	thumb_func_start sub_02025420
sub_02025420: ; 0x02025420
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025420

	thumb_func_start sub_02025428
sub_02025428: ; 0x02025428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #1
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02017B7C
	ldr r0, _02025568 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _02025444
	bl sub_02022974
_02025444:
	ldr r1, _0202556C ; =0x020E5834
	lsl r0, r5, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r5
	beq _02025454
	bl sub_02022974
_02025454:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #4]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02025570 ; =0x000202C4
	ldr r0, [r7, r0]
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _020254DA
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202549C
	bl sub_02022974
_0202549C:
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	ldr r1, [sp]
	orr r0, r1
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202554A
	bl sub_02022974
	b _0202554A
_020254DA:
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _02025510
	bl sub_02022974
_02025510:
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025A9C
	ldr r1, [sp]
	orr r0, r1
	str r0, [sp]
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202554A
	bl sub_02022974
_0202554A:
	ldr r0, [sp]
	cmp r0, #1
	bne _0202555C
	mov r0, #1
	bl sub_02017B8C
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0202555C:
	mov r0, #1
	bl sub_02017B8C
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025568: .word 0x020E582C
_0202556C: .word 0x020E5834
_02025570: .word 0x000202C4
	thumb_func_end sub_02025428

	thumb_func_start sub_02025574
sub_02025574: ; 0x02025574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	mov r0, #1
	add r5, r1, #0
	add r7, r2, #0
	bl sub_02017B7C
	ldr r0, _02025678 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r5, r0
	blt _02025590
	bl sub_02022974
_02025590:
	ldr r1, _0202567C ; =0x020E5834
	lsl r0, r5, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r5
	beq _020255A0
	bl sub_02022974
_020255A0:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_020259F8
_020255BA:
	ldr r0, [sp, #0x14]
	bl sub_0201D30C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020255BA
	add r0, sp, #0xc
	ldrb r1, [r0]
	mov r0, #1
	add r2, r6, #0
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	bl sub_02025A18
	str r6, [r7, #0]
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, [r4, #8]
	bne _02025626
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_02025A9C
	add r6, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202565C
	bl sub_02022974
	b _0202565C
_02025626:
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253B4
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_02025A9C
	add r6, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020253E0
	cmp r0, #1
	beq _0202565C
	bl sub_02022974
_0202565C:
	cmp r6, #1
	bne _0202566C
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0202566C:
	mov r0, #1
	bl sub_02017B8C
	mov r0, #3
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025678: .word 0x020E582C
_0202567C: .word 0x020E5834
	thumb_func_end sub_02025574

	thumb_func_start sub_02025680
sub_02025680: ; 0x02025680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _020257DC ; =0x020E582C
	add r7, r2, #0
	ldr r0, [r0, #0]
	add r6, r1, #0
	str r3, [sp]
	cmp r7, r0
	blt _02025698
	bl sub_02022974
_02025698:
	ldr r1, _020257E0 ; =0x020E5834
	lsl r0, r7, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _020256A8
	bl sub_02022974
_020256A8:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_02018144
	add r6, r0, #0
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020253E0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	blx r0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025420
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x10]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020253E0
	add r7, r0, #0
	ldr r0, [r4, #8]
	blx r0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025420
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02025744
	cmp r7, #0
	bne _02025744
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02025744:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0202576E
	cmp r7, #1
	bne _0202576E
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0202576E:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _020257C4
	cmp r7, #1
	bne _020257C4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0202499C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	ldr r0, _020257E4 ; =0x000202C4
	beq _020257A6
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020257A6:
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r0, #0x40
	lsl r0, r0, #0xc
	bl sub_02025AC0
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020257C4:
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0, #0]
	ldr r0, _020257E4 ; =0x000202C4
	mov r1, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020257DC: .word 0x020E582C
_020257E0: .word 0x020E5834
_020257E4: .word 0x000202C4
	thumb_func_end sub_02025680

	thumb_func_start sub_020257E8
sub_020257E8: ; 0x020257E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	ldr r7, [sp, #0x48]
	bl sub_0202783C
	str r0, [sp, #0xc]
	ldr r0, _020259F0 ; =0x020E582C
	ldr r0, [r0, #0]
	cmp r6, r0
	blt _02025808
	bl sub_02022974
_02025808:
	cmp r6, #0
	bne _02025810
	bl sub_02022974
_02025810:
	ldr r1, _020259F4 ; =0x020E5834
	lsl r0, r6, #4
	add r4, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r6
	beq _02025820
	bl sub_02022974
_02025820:
	ldr r0, [r4, #8]
	blx r0
	str r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl sub_02018144
	add r5, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, sp, #0x24
	add r3, sp, #0x20
	bl sub_020259F8
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020253E0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #4
	bl sub_020C4DB0
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	ldr r0, [r4, #8]
	blx r0
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020253E0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x28
	mov r2, #4
	bl sub_020C4DB0
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldr r1, [sp, #0x14]
	str r0, [r7, #0]
	cmp r1, #1
	bne _020258E0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _020258E0
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _020258E0
	add r1, sp, #0x1c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020258CE
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
_020258CE:
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020258E0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02025924
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02025924
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bne _02025924
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02025910
	ldr r2, [sp, #0x20]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
_02025910:
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025924:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _020259D4
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _020259D4
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02025986
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _02025952
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025952:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x28]
	cmp r2, r1
	bne _020259D4
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025986:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r2, r1
	bne _020259A2
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	add r0, #0x40
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020259A2:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	bne _020259D4
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02025A18
	mov r0, #1
	str r0, [r7, #0]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	add r1, r5, #0
	bl sub_02025AC0
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020259D4:
	ldr r0, [sp, #8]
	mov r1, #2
	str r1, [r0, #0]
	mov r2, #0
	str r2, [sp]
	sub r2, r2, #1
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0]
	add r3, r2, #0
	bl sub_020279D0
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020259F0: .word 0x020E582C
_020259F4: .word 0x020E5834
	thumb_func_end sub_020257E8

	thumb_func_start sub_020259F8
sub_020259F8: ; 0x020259F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202783C
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r1, [sp]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_020279A8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020259F8

	thumb_func_start sub_02025A18
sub_02025A18: ; 0x02025A18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202783C
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	add r2, r4, #0
	add r3, r6, #0
	str r1, [sp]
	add r1, r5, #0
	bl sub_020279D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02025A18

	thumb_func_start sub_02025A3C
sub_02025A3C: ; 0x02025A3C
	push {r3, r4, r5, lr}
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025A50
	bl sub_02022974
_02025A50:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	ldr r0, _02025A94 ; =0x00001302
	bl sub_020CCF0C
	cmp r0, #0
	beq _02025A66
	ldr r5, _02025A94 ; =0x00001302
	b _02025A76
_02025A66:
	ldr r0, _02025A98 ; =0x00001202
	bl sub_020CCF0C
	cmp r0, #0
	beq _02025A74
	ldr r5, _02025A98 ; =0x00001202
	b _02025A76
_02025A74:
	mov r5, #0
_02025A76:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	cmp r5, #0
	beq _02025A8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025A8E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02025A94: .word 0x00001302
_02025A98: .word 0x00001202
	thumb_func_end sub_02025A3C

	thumb_func_start sub_02025A9C
sub_02025A9C: ; 0x02025A9C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	bl sub_02025B3C
	add r5, r0, #0
	mov r4, #1
	add r6, sp, #0
_02025AAA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02025BB8
	cmp r0, #0
	beq _02025AAA
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02025A9C

	thumb_func_start sub_02025AC0
sub_02025AC0: ; 0x02025AC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025ADC
	bl sub_02022974
_02025ADC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r3, [sp, #0x10]
	bl sub_020CCE10
	bl sub_020CD044
	add r5, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	cmp r5, #0
	bne _02025B26
	ldr r0, _02025B2C ; =0x021C0794
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #1
	bl sub_0209A74C
_02025B26:
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02025B2C: .word 0x021C0794
	thumb_func_end sub_02025AC0

	thumb_func_start sub_02025B30
sub_02025B30: ; 0x02025B30
	ldr r0, _02025B38 ; =0x021C0794
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02025B38: .word 0x021C0794
	thumb_func_end sub_02025B30

	thumb_func_start sub_02025B3C
sub_02025B3C: ; 0x02025B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020C1A00
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _02025B58
	bl sub_02022974
_02025B58:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC88C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r1, sp, #0x14
	mov r2, #4
	add r3, r0, #0
	str r0, [sp, #0x10]
	bl sub_020CCE10
	cmp r0, #0
	bne _02025B86
	add r0, r4, #0
	mov r1, #1
	bl sub_02025C1C
_02025B86:
	ldr r0, _02025BB0 ; =0x021C0794
	mov r1, #0
	str r1, [r0, #4]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r3, _02025BB4 ; =sub_02025B30
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020CCE10
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02025BB0: .word 0x021C0794
_02025BB4: .word sub_02025B30
	thumb_func_end sub_02025B3C

	thumb_func_start sub_02025BB8
sub_02025BB8: ; 0x02025BB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02025C18 ; =0x021C0794
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _02025C14
	cmp r1, #0
	bne _02025BCE
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025BCE:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020CC89C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	bl sub_020CC840
	cmp r0, #0
	beq _02025BF0
	cmp r0, #4
	beq _02025BFA
	cmp r0, #6
	beq _02025C04
	b _02025BF6
_02025BF0:
	mov r0, #1
	str r0, [r4, #0]
	b _02025C10
_02025BF6:
	bl sub_02022974
_02025BFA:
	mov r1, #0
	add r0, r5, #0
	str r1, [r4, #0]
	bl sub_02025C1C
_02025C04:
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_02025C1C
_02025C10:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025C14:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02025C18: .word 0x021C0794
	thumb_func_end sub_02025BB8

	thumb_func_start sub_02025C1C
sub_02025C1C: ; 0x02025C1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r4, r1, #0
	bl sub_020CC89C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020C1A68
	ldr r0, _02025C44 ; =0x021C0794
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #1
	add r1, r4, #0
	bl sub_0209AA74
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02025C44: .word 0x021C0794
	thumb_func_end sub_02025C1C

	thumb_func_start sub_02025C48
sub_02025C48: ; 0x02025C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020245A4
	add r1, r5, #0
	bl sub_020245BC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020251A4
	sub r5, r0, #4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201D628
	lsr r1, r5, #0x1f
	add r1, r5, r1
	asr r1, r1, #1
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	cmp r0, r1
	bne _02025C7A
	mov r0, #1
	pop {r3, r4, r5, pc}
_02025C7A:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02025C48

	thumb_func_start sub_02025C84
sub_02025C84: ; 0x02025C84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020245A4
	add r1, r5, #0
	bl sub_020245BC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020251A4
	sub r5, r0, #4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201D628
	lsr r1, r5, #0x1f
	add r1, r5, r1
	asr r1, r1, #1
	lsl r1, r1, #1
	strh r0, [r4, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02025C84

	thumb_func_start sub_02025CB0
sub_02025CB0: ; 0x02025CB0
	mov r0, #0x5c
	bx lr
	thumb_func_end sub_02025CB0

	thumb_func_start sub_02025CB4
sub_02025CB4: ; 0x02025CB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x5c
	bl sub_020C4BB8
	add r4, #0x10
	add r0, r4, #0
	bl sub_02025D84
	pop {r4, pc}
	thumb_func_end sub_02025CB4

	thumb_func_start sub_02025CCC
sub_02025CCC: ; 0x02025CCC
	ldr r3, _02025CD4 ; =sub_020245BC
	mov r1, #0
	bx r3
	nop
_02025CD4: .word sub_020245BC
	thumb_func_end sub_02025CCC

	thumb_func_start sub_02025CD8
sub_02025CD8: ; 0x02025CD8
	push {r3, lr}
	bl sub_02025CCC
	add r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02025CD8

	thumb_func_start sub_02025CE4
sub_02025CE4: ; 0x02025CE4
	push {r3, r4, lr}
	sub sp, #0x54
	add r4, r0, #0
	bl sub_020C4040
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #8
	str r1, [r4, #4]
	bl sub_020C3FA0
	add r0, sp, #0
	bl sub_020C3FBC
	add r0, sp, #0
	ldrb r1, [r0, #2]
	strb r1, [r4, #0xe]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xf]
	add sp, #0x54
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025CE4

	thumb_func_start sub_02025D10
sub_02025D10: ; 0x02025D10
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C3FA0
	mov r2, #0
	add r3, sp, #0
_02025D20:
	add r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #8]
	cmp r1, r0
	beq _02025D30
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02025D30:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #6
	blt _02025D20
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025D10

	thumb_func_start sub_02025D40
sub_02025D40: ; 0x02025D40
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C4040
	ldr r3, [r4, #0]
	ldr r2, [r4, #4]
	eor r0, r3
	eor r1, r2
	orr r0, r1
	bne _02025D58
	mov r0, #1
	pop {r4, pc}
_02025D58:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02025D40

	thumb_func_start sub_02025D5C
sub_02025D5C: ; 0x02025D5C
	ldrb r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_02025D5C

	thumb_func_start sub_02025D60
sub_02025D60: ; 0x02025D60
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_02025D60

	thumb_func_start sub_02025D64
sub_02025D64: ; 0x02025D64
	add r0, #0x48
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D64

	thumb_func_start sub_02025D6C
sub_02025D6C: ; 0x02025D6C
	add r0, #0x48
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D6C

	thumb_func_start sub_02025D74
sub_02025D74: ; 0x02025D74
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02025D74

	thumb_func_start sub_02025D78
sub_02025D78: ; 0x02025D78
	ldr r2, [r0, #0x4c]
	cmp r2, #0
	bne _02025D80
	str r1, [r0, #0x4c]
_02025D80:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025D78

	thumb_func_start sub_02025D84
sub_02025D84: ; 0x02025D84
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r4, #0
	str r0, [r4, #0]
	add r0, r4, #4
	add r1, #0x14
	bl sub_0201384C
	add r0, r4, #4
	bl sub_020CC16C
	add r1, r4, #0
	str r0, [r4, #0x20]
	add r0, r4, #4
	add r1, #0x14
	bl sub_020CC218
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025D84

	thumb_func_start sub_02025DB8
sub_02025DB8: ; 0x02025DB8
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02025DC2
	mov r0, #1
	bx lr
_02025DC2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025DB8

	thumb_func_start sub_02025DC8
sub_02025DC8: ; 0x02025DC8
	mov r2, #0x5a
	ldr r3, [r0, #0x34]
	lsl r2, r2, #4
	cmp r3, r2
	bls _02025DD4
	str r2, [r0, #0x34]
_02025DD4:
	ldr r2, [r0, #0x34]
	cmp r2, r1
	bhs _02025DE0
	mov r1, #0
	str r1, [r0, #0x34]
	bx lr
_02025DE0:
	sub r1, r2, r1
	str r1, [r0, #0x34]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025DC8

	thumb_func_start sub_02025DE8
sub_02025DE8: ; 0x02025DE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #4
	add r1, r4, #0
	str r0, [r4, #0x34]
	add r0, r4, #4
	add r1, #0x14
	bl sub_0201384C
	add r0, r4, #4
	bl sub_020CC16C
	str r0, [r4, #0x20]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025DE8

	thumb_func_start sub_02025E08
sub_02025E08: ; 0x02025E08
	mov r0, #0x2c
	bx lr
	thumb_func_end sub_02025E08

	thumb_func_start sub_02025E0C
sub_02025E0C: ; 0x02025E0C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x2c
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02027A1C
	add r0, r4, #4
	bl sub_02025E8C
	add r0, r4, #0
	add r0, #0x24
	bl sub_0202B594
	add r4, #0x26
	add r0, r4, #0
	bl sub_0202CBE4
	pop {r4, pc}
	thumb_func_end sub_02025E0C

	thumb_func_start sub_02025E38
sub_02025E38: ; 0x02025E38
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, r0, #4
	pop {r3, pc}
	thumb_func_end sub_02025E38

	thumb_func_start sub_02025E44
sub_02025E44: ; 0x02025E44
	ldr r3, _02025E4C ; =sub_020245BC
	mov r1, #1
	bx r3
	nop
_02025E4C: .word sub_020245BC
	thumb_func_end sub_02025E44

	thumb_func_start sub_02025E50
sub_02025E50: ; 0x02025E50
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, #0x24
	pop {r3, pc}
	thumb_func_end sub_02025E50

	thumb_func_start sub_02025E5C
sub_02025E5C: ; 0x02025E5C
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, #0x26
	pop {r3, pc}
	thumb_func_end sub_02025E5C

	thumb_func_start sub_02025E68
sub_02025E68: ; 0x02025E68
	mov r0, #0x20
	bx lr
	thumb_func_end sub_02025E68

	thumb_func_start sub_02025E6C
sub_02025E6C: ; 0x02025E6C
	push {r4, lr}
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	bl sub_02025E8C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025E6C

	thumb_func_start sub_02025E80
sub_02025E80: ; 0x02025E80
	ldr r3, _02025E88 ; =sub_020C4DB0
	mov r2, #0x20
	bx r3
	nop
_02025E88: .word sub_020C4DB0
	thumb_func_end sub_02025E80

	thumb_func_start sub_02025E8C
sub_02025E8C: ; 0x02025E8C
	push {r4, lr}
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #2
	strb r0, [r4, #0x19]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02025FD0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02025E8C

	thumb_func_start sub_02025EA8
sub_02025EA8: ; 0x02025EA8
	mov r2, #0
_02025EAA:
	ldrh r1, [r0]
	cmp r1, #0
	beq _02025EB4
	mov r0, #0
	bx lr
_02025EB4:
	add r2, r2, #1
	add r0, r0, #2
	cmp r2, #8
	blt _02025EAA
	mov r0, #1
	bx lr
	thumb_func_end sub_02025EA8

	thumb_func_start sub_02025EC0
sub_02025EC0: ; 0x02025EC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020021F0
	cmp r0, #8
	blt _02025ED4
	bl sub_02022974
_02025ED4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020021B0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02025EC0

	thumb_func_start sub_02025EE0
sub_02025EE0: ; 0x02025EE0
	ldr r3, _02025EEC ; =sub_02023DF0
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #8
	bx r3
	; .align 2, 0
_02025EEC: .word sub_02023DF0
	thumb_func_end sub_02025EE0

	thumb_func_start sub_02025EF0
sub_02025EF0: ; 0x02025EF0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025EF0

	thumb_func_start sub_02025EF4
sub_02025EF4: ; 0x02025EF4
	ldr r3, _02025F00 ; =sub_02023D28
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_02025F00: .word sub_02023D28
	thumb_func_end sub_02025EF4

	thumb_func_start sub_02025F04
sub_02025F04: ; 0x02025F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #8
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02025EF4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02025F04

	thumb_func_start sub_02025F1C
sub_02025F1C: ; 0x02025F1C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_02025F1C

	thumb_func_start sub_02025F20
sub_02025F20: ; 0x02025F20
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02025F20

	thumb_func_start sub_02025F24
sub_02025F24: ; 0x02025F24
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_02025F24

	thumb_func_start sub_02025F2C
sub_02025F2C: ; 0x02025F2C
	strb r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_02025F2C

	thumb_func_start sub_02025F30
sub_02025F30: ; 0x02025F30
	ldrb r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02025F30

	thumb_func_start sub_02025F34
sub_02025F34: ; 0x02025F34
	ldrb r3, [r0, #0x1a]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	bne _02025F44
	mov r0, #0
_02025F44:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F34

	thumb_func_start sub_02025F48
sub_02025F48: ; 0x02025F48
	ldrb r3, [r0, #0x1a]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F48

	thumb_func_start sub_02025F58
sub_02025F58: ; 0x02025F58
	ldrb r3, [r0, #0x1a]
	mov r2, #0
	cmp r3, #0
	beq _02025F6E
	mov r0, #1
_02025F62:
	add r1, r3, #0
	tst r1, r0
	beq _02025F6A
	add r2, r2, #1
_02025F6A:
	lsr r3, r3, #1
	bne _02025F62
_02025F6E:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025F58

	thumb_func_start sub_02025F74
sub_02025F74: ; 0x02025F74
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02025F74

	thumb_func_start sub_02025F78
sub_02025F78: ; 0x02025F78
	ldr r2, _02025F88 ; =0x000F423F
	cmp r1, r2
	bls _02025F80
	add r1, r2, #0
_02025F80:
	str r1, [r0, #0x14]
	add r0, r1, #0
	bx lr
	nop
_02025F88: .word 0x000F423F
	thumb_func_end sub_02025F78

	thumb_func_start sub_02025F8C
sub_02025F8C: ; 0x02025F8C
	ldrb r0, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02025F8C

	thumb_func_start sub_02025F90
sub_02025F90: ; 0x02025F90
	strb r1, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02025F90

	thumb_func_start sub_02025F94
sub_02025F94: ; 0x02025F94
	ldr r2, _02025FB4 ; =0x000F423F
	cmp r1, r2
	bls _02025F9E
	str r2, [r0, #0x14]
	b _02025FA4
_02025F9E:
	ldr r2, [r0, #0x14]
	add r1, r2, r1
	str r1, [r0, #0x14]
_02025FA4:
	ldr r2, [r0, #0x14]
	ldr r1, _02025FB4 ; =0x000F423F
	cmp r2, r1
	bls _02025FAE
	str r1, [r0, #0x14]
_02025FAE:
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02025FB4: .word 0x000F423F
	thumb_func_end sub_02025F94

	thumb_func_start sub_02025FB8
sub_02025FB8: ; 0x02025FB8
	ldr r2, [r0, #0x14]
	cmp r2, r1
	bhs _02025FC2
	mov r1, #0
	b _02025FC4
_02025FC2:
	sub r1, r2, r1
_02025FC4:
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FB8

	thumb_func_start sub_02025FCC
sub_02025FCC: ; 0x02025FCC
	ldrb r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02025FCC

	thumb_func_start sub_02025FD0
sub_02025FD0: ; 0x02025FD0
	strb r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02025FD0

	thumb_func_start sub_02025FD4
sub_02025FD4: ; 0x02025FD4
	mov r0, #0
	bx lr
	thumb_func_end sub_02025FD4

	thumb_func_start sub_02025FD8
sub_02025FD8: ; 0x02025FD8
	ldrb r0, [r0, #0x19]
	bx lr
	thumb_func_end sub_02025FD8

	thumb_func_start sub_02025FDC
sub_02025FDC: ; 0x02025FDC
	strb r1, [r0, #0x19]
	bx lr
	thumb_func_end sub_02025FDC

	thumb_func_start sub_02025FE0
sub_02025FE0: ; 0x02025FE0
	ldrb r2, [r0, #0x1d]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0, #0x1d]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FE0

	thumb_func_start sub_02025FF0
sub_02025FF0: ; 0x02025FF0
	ldrb r0, [r0, #0x1d]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02025FF0

	thumb_func_start sub_02025FF8
sub_02025FF8: ; 0x02025FF8
	ldrb r2, [r0, #0x1d]
	mov r1, #2
	orr r1, r2
	strb r1, [r0, #0x1d]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02025FF8

	thumb_func_start sub_02026004
sub_02026004: ; 0x02026004
	ldrb r0, [r0, #0x1d]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02026004

	thumb_func_start sub_0202600C
sub_0202600C: ; 0x0202600C
	push {r3, r4, r5, lr}
	mov r2, #7
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02002238
	cmp r0, #0
	bne _02026028
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _02026028
	mov r0, #1
	pop {r3, r4, r5, pc}
_02026028:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202600C

	thumb_func_start sub_0202602C
sub_0202602C: ; 0x0202602C
	mov r0, #0x20
	bx lr
	thumb_func_end sub_0202602C

	thumb_func_start sub_02026030
sub_02026030: ; 0x02026030
	mov r0, #0x20
	bx lr
	thumb_func_end sub_02026030

	thumb_func_start sub_02026034
sub_02026034: ; 0x02026034
	ldr r3, _0202603C ; =sub_020C4DB0
	mov r2, #0x20
	bx r3
	nop
_0202603C: .word sub_020C4DB0
	thumb_func_end sub_02026034

	thumb_func_start sub_02026040
sub_02026040: ; 0x02026040
	ldr r3, _02026048 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x20
	bx r3
	; .align 2, 0
_02026048: .word sub_020D5124
	thumb_func_end sub_02026040

	thumb_func_start sub_0202604C
sub_0202604C: ; 0x0202604C
	ldr r3, _02026058 ; =sub_02023D8C
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xc
	bx r3
	; .align 2, 0
_02026058: .word sub_02023D8C
	thumb_func_end sub_0202604C

	thumb_func_start sub_0202605C
sub_0202605C: ; 0x0202605C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	bl sub_02023790
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02023D28
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202605C

	thumb_func_start sub_02026074
sub_02026074: ; 0x02026074
	mov r2, #0
	cmp r1, #0xc
	bhi _02026106
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02026086: ; jump table
	.short _02026106 - _02026086 - 2 ; case 0
	.short _020260A0 - _02026086 - 2 ; case 1
	.short _020260A4 - _02026086 - 2 ; case 2
	.short _020260A8 - _02026086 - 2 ; case 3
	.short _020260AC - _02026086 - 2 ; case 4
	.short _020260B4 - _02026086 - 2 ; case 5
	.short _020260BA - _02026086 - 2 ; case 6
	.short _020260CE - _02026086 - 2 ; case 7
	.short _020260D4 - _02026086 - 2 ; case 8
	.short _020260E8 - _02026086 - 2 ; case 9
	.short _020260F0 - _02026086 - 2 ; case 10
	.short _020260F8 - _02026086 - 2 ; case 11
	.short _02026100 - _02026086 - 2 ; case 12
_020260A0:
	ldrb r2, [r0, #0x1a]
	b _02026106
_020260A4:
	ldrb r2, [r0, #0x1b]
	b _02026106
_020260A8:
	ldrh r2, [r0, #0x18]
	b _02026106
_020260AC:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1f
	b _02026106
_020260B4:
	mov r1, #0x1c
	ldrsb r2, [r0, r1]
	b _02026106
_020260BA:
	mov r1, #0x1c
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _020260C6
	mov r2, #1
	b _02026106
_020260C6:
	bge _02026106
	add r2, r1, #0
	sub r2, #0x1d
	b _02026106
_020260CE:
	mov r1, #0x1d
	ldrsb r2, [r0, r1]
	b _02026106
_020260D4:
	mov r1, #0x1d
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _020260E0
	mov r2, #1
	b _02026106
_020260E0:
	bge _02026106
	add r2, r1, #0
	sub r2, #0x1e
	b _02026106
_020260E8:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1f
	b _02026106
_020260F0:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1d
	lsr r2, r0, #0x1f
	b _02026106
_020260F8:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1e
	lsr r2, r0, #0x1f
	b _02026106
_02026100:
	ldrb r0, [r0, #0x1e]
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1f
_02026106:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026074

	thumb_func_start sub_0202610C
sub_0202610C: ; 0x0202610C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #1
	blt _0202611A
	bl sub_02022974
_0202611A:
	add r0, r4, #0
	mov r1, #0xd
	bl sub_020245BC
	add r4, r0, #0
	lsl r5, r5, #5
	add r0, r4, r5
	mov r1, #1
	bl sub_02026074
	cmp r0, #0
	beq _02026136
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_02026136:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202610C

	thumb_func_start sub_0202613C
sub_0202613C: ; 0x0202613C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0xd
	bl sub_020245BC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02026034
	pop {r4, pc}
	thumb_func_end sub_0202613C

	thumb_func_start sub_02026150
sub_02026150: ; 0x02026150
	push {r3, lr}
	cmp r1, #5
	bhs _0202615E
	ldr r2, _02026168 ; =0x02100880
	lsl r0, r1, #5
	add r0, r2, r0
	pop {r3, pc}
_0202615E:
	mov r1, #0xd
	bl sub_020245BC
	pop {r3, pc}
	nop
_02026168: .word 0x02100880
	thumb_func_end sub_02026150

	thumb_func_start sub_0202616C
sub_0202616C: ; 0x0202616C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, #5
	bhs _02026194
	ldr r2, _020261A4 ; =0x00000161
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, #0x46
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
_02026194:
	mov r1, #0
	bl sub_0202610C
	add r1, r4, #0
	bl sub_0202604C
	pop {r4, r5, r6, pc}
	nop
_020261A4: .word 0x00000161
	thumb_func_end sub_0202616C

	thumb_func_start sub_020261A8
sub_020261A8: ; 0x020261A8
	ldr r0, _020261AC ; =0x02100860
	bx lr
	; .align 2, 0
_020261AC: .word 0x02100860
	thumb_func_end sub_020261A8

	thumb_func_start sub_020261B0
sub_020261B0: ; 0x020261B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bne _020261BA
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_020261BA:
	ldr r5, _020261E0 ; =0x02100880
	mov r4, #0
	mov r7, #0x20
_020261C0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_020D5190
	cmp r0, #0
	bne _020261D2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020261D2:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #5
	blo _020261C0
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020261E0: .word 0x02100880
	thumb_func_end sub_020261B0

	thumb_func_start sub_020261E4
sub_020261E4: ; 0x020261E4
	mov r0, #0x1e
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020261E4

	thumb_func_start sub_020261EC
sub_020261EC: ; 0x020261EC
	push {r4, lr}
	mov r2, #0x1e
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	add r0, r4, #0
	bl sub_02073C54
	add r0, r4, #0
	add r0, #0xec
	bl sub_02073C54
	mov r0, #0x76
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020261EC

	thumb_func_start sub_02026218
sub_02026218: ; 0x02026218
	mov r2, #0xec
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_02026218

	thumb_func_start sub_02026220
sub_02026220: ; 0x02026220
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026220

	thumb_func_start sub_02026224
sub_02026224: ; 0x02026224
	add r0, #0x88
	bx lr
	thumb_func_end sub_02026224

	thumb_func_start sub_02026228
sub_02026228: ; 0x02026228
	add r0, #0xe8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026228

	thumb_func_start sub_02026230
sub_02026230: ; 0x02026230
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026230

	thumb_func_start sub_02026234
sub_02026234: ; 0x02026234
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02026242
	mov r0, #1
	bx lr
_02026242:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026234

	thumb_func_start sub_02026248
sub_02026248: ; 0x02026248
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02026248

	thumb_func_start sub_02026250
sub_02026250: ; 0x02026250
	mov r1, #0x77
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end sub_02026250

	thumb_func_start sub_02026258
sub_02026258: ; 0x02026258
	add r0, #0xe8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026258

	thumb_func_start sub_02026260
sub_02026260: ; 0x02026260
	add r2, r0, #0
	add r2, #0xe8
	ldr r2, [r2, #0]
	add r0, #0xe8
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026260

	thumb_func_start sub_02026270
sub_02026270: ; 0x02026270
	mov r2, #0x76
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02026270

	thumb_func_start sub_02026278
sub_02026278: ; 0x02026278
	mov r2, #0x77
	lsl r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end sub_02026278

	thumb_func_start sub_02026280
sub_02026280: ; 0x02026280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074570
	add r5, #0xec
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074570
	cmp r4, r0
	beq _020262A2
	mov r0, #1
	pop {r3, r4, r5, pc}
_020262A2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02026280

	thumb_func_start sub_020262A8
sub_020262A8: ; 0x020262A8
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x1d
_020262B0:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020262B0
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020262A8

	thumb_func_start sub_020262C0
sub_020262C0: ; 0x020262C0
	push {r3, r4}
	mov r1, #0
	add r2, r0, #0
	add r4, r1, #0
_020262C8:
	add r1, r1, #1
	strh r4, [r2, #0x38]
	add r2, r2, #2
	cmp r1, #8
	blt _020262C8
	add r3, r0, #0
	mov r2, #0
_020262D6:
	add r1, r3, #0
	add r1, #0x48
	add r4, r4, #1
	add r3, r3, #2
	strh r2, [r1]
	cmp r4, #0xb
	blt _020262D6
	ldr r1, _020262F0 ; =0x0000FFFF
	strh r1, [r0, #0x38]
	add r0, #0x48
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020262F0: .word 0x0000FFFF
	thumb_func_end sub_020262C0

	thumb_func_start sub_020262F4
sub_020262F4: ; 0x020262F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02073C54
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	add r4, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020262C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020262F4

	thumb_func_start sub_02026310
sub_02026310: ; 0x02026310
	ldr r3, _02026318 ; =sub_020245BC
	mov r1, #8
	bx r3
	nop
_02026318: .word sub_020245BC
	thumb_func_end sub_02026310

	thumb_func_start sub_0202631C
sub_0202631C: ; 0x0202631C
	mov r0, #0xc9
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202631C

	thumb_func_start sub_02026324
sub_02026324: ; 0x02026324
	push {r4, lr}
	mov r1, #0xc9
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_02026D6C
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02026324

	thumb_func_start sub_02026338
sub_02026338: ; 0x02026338
	ldr r3, _02026340 ; =sub_020C4DB0
	mov r2, #0xc9
	lsl r2, r2, #2
	bx r3
	; .align 2, 0
_02026340: .word sub_020C4DB0
	thumb_func_end sub_02026338

	thumb_func_start sub_02026344
sub_02026344: ; 0x02026344
	push {r3, lr}
	cmp r0, #0
	beq _02026350
	ldr r1, _0202635C ; =0x000001ED
	cmp r0, r1
	bls _02026358
_02026350:
	bl sub_02022974
	mov r0, #1
	pop {r3, pc}
_02026358:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202635C: .word 0x000001ED
	thumb_func_end sub_02026344

	thumb_func_start sub_02026360
sub_02026360: ; 0x02026360
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bne _0202639E
	cmp r4, #2
	blo _02026374
	bl sub_02022974
_02026374:
	ldr r0, [sp]
	add r2, r5, #0
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r3, r1, #0
	mov r0, #7
	and r3, r0
	mov r6, #1
	lsl r6, r3
	add r2, #0xc4
	asr r1, r1, #3
	ldrb r0, [r2, r1]
	mvn r6, r6
	and r0, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	ldrb r6, [r2, r1]
	lsl r0, r3
	orr r0, r6
	strb r0, [r2, r1]
_0202639E:
	cmp r4, #2
	blo _020263A6
	bl sub_02022974
_020263A6:
	ldr r0, [sp]
	add r5, #0x84
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #7
	add r2, r3, #0
	and r2, r0
	lsl r0, r7, #6
	add r1, r5, r0
	asr r0, r3, #3
	mov r3, #1
	lsl r3, r2
	ldrb r5, [r1, r0]
	mvn r3, r3
	and r3, r5
	strb r3, [r1, r0]
	add r3, r4, #0
	ldrb r5, [r1, r0]
	lsl r3, r2
	add r2, r5, #0
	orr r2, r3
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02026360

	thumb_func_start sub_020263D8
sub_020263D8: ; 0x020263D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	bls _020263EA
	bl sub_02022974
_020263EA:
	cmp r4, #2
	bne _020263F0
	mov r4, #0
_020263F0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02026360
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020263D8

	thumb_func_start sub_02026400
sub_02026400: ; 0x02026400
	mov r1, #0x43
	mov r3, #0
	lsl r1, r1, #2
_02026406:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _02026414
	add r3, r3, #1
	cmp r3, #0x1c
	blt _02026406
_02026414:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02026400

	thumb_func_start sub_02026418
sub_02026418: ; 0x02026418
	push {r3, r4}
	mov r2, #0x43
	mov r4, #0
	lsl r2, r2, #2
_02026420:
	add r3, r0, r4
	ldrb r3, [r3, r2]
	cmp r1, r3
	bne _0202642E
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202642E:
	add r4, r4, #1
	cmp r4, #0x1c
	blt _02026420
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026418

	thumb_func_start sub_0202643C
sub_0202643C: ; 0x0202643C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_02026418
	cmp r0, #0
	bne _02026460
	add r0, r5, #0
	bl sub_02026400
	cmp r0, #0x1c
	bge _02026460
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	strb r4, [r1, r0]
_02026460:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202643C

	thumb_func_start sub_02026464
sub_02026464: ; 0x02026464
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02026508 ; =0x000001A6
	add r5, r0, #0
	cmp r4, r1
	beq _02026488
	add r0, r1, #1
	cmp r4, r0
	beq _02026488
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _02026488
	add r1, #0x41
	cmp r4, r1
	beq _02026488
	bl sub_02022974
_02026488:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202649A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202649A:
	ldr r1, _0202650C ; =0x000001E7
	cmp r4, r1
	bhi _020264C4
	bhs _020264E0
	add r0, r1, #0
	sub r0, #0x40
	cmp r4, r0
	bhi _020264E4
	add r0, r1, #0
	sub r0, #0x41
	cmp r4, r0
	blo _020264E4
	add r0, r1, #0
	sub r0, #0x41
	cmp r4, r0
	beq _020264CC
	add r0, r1, #0
	sub r0, #0x40
	cmp r4, r0
	beq _020264D2
	b _020264E4
_020264C4:
	add r0, r1, #5
	cmp r4, r0
	beq _020264D8
	b _020264E4
_020264CC:
	sub r1, #0xdf
	add r6, r5, r1
	b _020264E4
_020264D2:
	sub r1, #0xde
	add r6, r5, r1
	b _020264E4
_020264D8:
	mov r0, #0x32
	lsl r0, r0, #4
	add r6, r5, r0
	b _020264E4
_020264E0:
	ldr r0, _02026510 ; =0x00000321
	add r6, r5, r0
_020264E4:
	ldrb r1, [r6]
	mov r2, #1
	add r0, r1, #0
	tst r0, r2
	bne _020264F0
	mov r2, #0
_020264F0:
	mov r0, #2
	tst r0, r1
	beq _020264FA
	mov r0, #1
	b _020264FC
_020264FA:
	mov r0, #0
_020264FC:
	cmp r2, r0
	bne _02026504
	mov r0, #1
	pop {r4, r5, r6, pc}
_02026504:
	mov r0, #2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02026508: .word 0x000001A6
_0202650C: .word 0x000001E7
_02026510: .word 0x00000321
	thumb_func_end sub_02026464

	thumb_func_start sub_02026514
sub_02026514: ; 0x02026514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _020265DC ; =0x000001A6
	add r7, r0, #0
	add r6, r2, #0
	cmp r5, r1
	beq _0202653A
	add r0, r1, #1
	cmp r5, r0
	beq _0202653A
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _0202653A
	add r1, #0x41
	cmp r5, r1
	beq _0202653A
	bl sub_02022974
_0202653A:
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202654C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202654C:
	ldr r0, _020265E0 ; =0x000001E7
	cmp r5, r0
	bhi _02026576
	bhs _02026592
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	bhi _02026596
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	blo _02026596
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	beq _0202657E
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	beq _02026584
	b _02026596
_02026576:
	add r0, r0, #5
	cmp r5, r0
	beq _0202658A
	b _02026596
_0202657E:
	sub r0, #0xdf
	add r4, r7, r0
	b _02026596
_02026584:
	sub r0, #0xde
	add r4, r7, r0
	b _02026596
_0202658A:
	mov r0, #0x32
	lsl r0, r0, #4
	add r4, r7, r0
	b _02026596
_02026592:
	ldr r0, _020265E4 ; =0x00000321
	add r4, r7, r0
_02026596:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02026464
	mov r5, #0
	cmp r0, #0
	bls _020265D8
	mov r1, #1
_020265A6:
	add r2, r5, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	sub r2, r2, #1
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	add r7, r3, #0
	mov r2, #7
	asr r3, r3, #3
	and r7, r2
	add r2, r1, #0
	ldrb r3, [r4, r3]
	lsl r2, r7
	tst r2, r3
	beq _020265C8
	add r2, r1, #0
	b _020265CA
_020265C8:
	mov r2, #0
_020265CA:
	cmp r2, r6
	bne _020265D2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020265D2:
	add r5, r5, #1
	cmp r5, r0
	blo _020265A6
_020265D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020265DC: .word 0x000001A6
_020265E0: .word 0x000001E7
_020265E4: .word 0x00000321
	thumb_func_end sub_02026514

	thumb_func_start sub_020265E8
sub_020265E8: ; 0x020265E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _020266EC ; =0x000001A6
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, r1
	beq _0202660E
	add r0, r1, #1
	cmp r5, r0
	beq _0202660E
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _0202660E
	add r1, #0x41
	cmp r5, r1
	beq _0202660E
	bl sub_02022974
_0202660E:
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02026514
	cmp r0, #0
	bne _020266E8
	ldr r0, _020266F0 ; =0x000001E7
	cmp r5, r0
	bhi _02026648
	bhs _02026664
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	bhi _02026668
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	blo _02026668
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	beq _02026650
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	beq _02026656
	b _02026668
_02026648:
	add r0, r0, #5
	cmp r5, r0
	beq _0202665C
	b _02026668
_02026650:
	sub r0, #0xdf
	add r4, r6, r0
	b _02026668
_02026656:
	sub r0, #0xde
	add r4, r6, r0
	b _02026668
_0202665C:
	mov r0, #0x32
	lsl r0, r0, #4
	add r4, r6, r0
	b _02026668
_02026664:
	ldr r0, _020266F4 ; =0x00000321
	add r4, r6, r0
_02026668:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02026464
	add r5, r0, #0
	cmp r5, #2
	bge _020266E8
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	blo _02026688
	bl sub_02022974
_02026688:
	sub r0, r6, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r2, r1, #0
	mov r0, #7
	and r2, r0
	asr r1, r1, #3
	mov r3, #1
	lsl r3, r2
	ldrb r0, [r4, r1]
	mvn r3, r3
	and r0, r3
	strb r0, [r4, r1]
	lsl r0, r7, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	ldrb r3, [r4, r1]
	lsl r0, r2
	orr r0, r3
	strb r0, [r4, r1]
	cmp r5, #0
	bne _020266E8
	add r0, r5, #2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r6, #2
	blo _020266C2
	bl sub_02022974
_020266C2:
	sub r0, r5, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #7
	add r1, r2, #0
	and r1, r0
	asr r0, r2, #3
	mov r2, #1
	lsl r2, r1
	ldrb r3, [r4, r0]
	mvn r2, r2
	and r2, r3
	strb r2, [r4, r0]
	add r2, r6, #0
	ldrb r3, [r4, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r4, r0]
_020266E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020266EC: .word 0x000001A6
_020266F0: .word 0x000001E7
_020266F4: .word 0x00000321
	thumb_func_end sub_020265E8

	thumb_func_start sub_020266F8
sub_020266F8: ; 0x020266F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	cmp r4, r0
	beq _02026710
	add r0, r0, #1
	cmp r4, r0
	beq _02026710
	bl sub_02022974
_02026710:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _02026722
	mov r0, #0
	pop {r3, r4, r5, pc}
_02026722:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r4, r0
	bne _0202672E
	sub r0, #0x92
	b _02026730
_0202672E:
	sub r0, #0x91
_02026730:
	add r1, r5, r0
	mov r0, #0
	mov r3, #3
_02026736:
	lsl r2, r0, #0x10
	lsr r5, r2, #0x10
	asr r2, r5, #2
	ldrb r4, [r1, r2]
	lsl r2, r5, #0x1e
	lsr r2, r2, #0x1d
	asr r4, r2
	add r2, r4, #0
	and r2, r3
	cmp r2, #3
	beq _02026752
	add r0, r0, #1
	cmp r0, #3
	blt _02026736
_02026752:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020266F8

	thumb_func_start sub_02026754
sub_02026754: ; 0x02026754
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x67
	add r5, r1, #0
	lsl r0, r0, #2
	add r4, r2, #0
	cmp r5, r0
	beq _0202676E
	add r0, r0, #1
	cmp r5, r0
	beq _0202676E
	bl sub_02022974
_0202676E:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _02026780
	mov r0, #0
	pop {r4, r5, r6, pc}
_02026780:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r5, r0
	bne _0202678C
	sub r0, #0x92
	b _0202678E
_0202678C:
	sub r0, #0x91
_0202678E:
	add r1, r6, r0
	mov r0, #0
	mov r3, #3
_02026794:
	lsl r2, r0, #0x10
	lsr r6, r2, #0x10
	asr r2, r6, #2
	ldrb r5, [r1, r2]
	lsl r2, r6, #0x1e
	lsr r2, r2, #0x1d
	asr r5, r2
	add r2, r5, #0
	and r2, r3
	cmp r2, r4
	bne _020267AE
	mov r0, #1
	pop {r4, r5, r6, pc}
_020267AE:
	add r0, r0, #1
	cmp r0, #3
	blt _02026794
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02026754

	thumb_func_start sub_020267B8
sub_020267B8: ; 0x020267B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x67
	add r5, r1, #0
	lsl r0, r0, #2
	add r7, r2, #0
	cmp r5, r0
	beq _020267D2
	add r0, r0, #1
	cmp r5, r0
	beq _020267D2
	bl sub_02022974
_020267D2:
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02026754
	cmp r0, #0
	bne _02026830
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r5, r0
	bne _020267EE
	sub r0, #0x92
	b _020267F0
_020267EE:
	sub r0, #0x91
_020267F0:
	add r4, r6, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020266F8
	add r5, r0, #0
	cmp r5, #3
	bge _02026830
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _0202680C
	bl sub_02022974
_0202680C:
	lsl r0, r5, #0x10
	lsr r2, r0, #0x10
	lsl r0, r2, #0x1e
	lsr r1, r0, #0x1d
	asr r0, r2, #2
	mov r2, #3
	lsl r2, r1
	ldrb r3, [r4, r0]
	mvn r2, r2
	and r2, r3
	strb r2, [r4, r0]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	ldrb r3, [r4, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r4, r0]
_02026830:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020267B8

	thumb_func_start sub_02026834
sub_02026834: ; 0x02026834
	push {r3, r4}
	lsl r2, r2, #2
	add r2, #0x18
	mov r3, #0xf
	lsl r3, r2
	ldr r4, [r0, #0x3c]
	mvn r3, r3
	lsl r1, r2
	and r3, r4
	orr r1, r3
	str r1, [r0, #0x3c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026834

	thumb_func_start sub_02026850
sub_02026850: ; 0x02026850
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blo _02026860
	bl sub_02022974
_02026860:
	cmp r6, #0xf
	bls _02026868
	bl sub_02022974
_02026868:
	cmp r4, #2
	bhs _02026878
	add r0, r5, #4
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02026834
	pop {r4, r5, r6, pc}
_02026878:
	sub r2, r4, #2
	add r5, #0x44
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02026834
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026850

	thumb_func_start sub_0202688C
sub_0202688C: ; 0x0202688C
	cmp r1, #2
	bhs _020268A0
	ldr r2, [r0, #0x40]
	lsl r0, r1, #2
	add r0, #0x18
	add r1, r2, #0
	lsr r1, r0
	mov r0, #0xf
	and r0, r1
	bx lr
_020268A0:
	add r0, #0x80
	ldr r2, [r0, #0]
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r0, #0x18
	add r1, r2, #0
	lsr r1, r0
	mov r0, #0xf
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202688C

	thumb_func_start sub_020268B8
sub_020268B8: ; 0x020268B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_020268BE:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	cmp r0, #0xf
	beq _020268D2
	add r4, r4, #1
	cmp r4, #4
	blt _020268BE
_020268D2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020268B8

	thumb_func_start sub_020268D8
sub_020268D8: ; 0x020268D8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_020268E0:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	cmp r5, r0
	bne _020268F2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020268F2:
	add r4, r4, #1
	cmp r4, #4
	blt _020268E0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020268D8

	thumb_func_start sub_020268FC
sub_020268FC: ; 0x020268FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02026938 ; =0x00000182
	cmp r6, r0
	bne _02026936
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020268D8
	cmp r0, #0
	bne _02026936
	add r0, r5, #0
	bl sub_020268B8
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_02026850
_02026936:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02026938: .word 0x00000182
	thumb_func_end sub_020268FC

	thumb_func_start sub_0202693C
sub_0202693C: ; 0x0202693C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xf
_02026944:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02026850
	add r4, r4, #1
	cmp r4, #4
	blt _02026944
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202693C

	thumb_func_start sub_02026958
sub_02026958: ; 0x02026958
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020269A0 ; =0x000001DF
	add r5, r1, #0
	cmp r5, r0
	beq _02026968
	bl sub_02022974
_02026968:
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202697A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202697A:
	mov r2, #0xc7
	lsl r2, r2, #2
	mov r0, #0
	ldr r5, [r4, r2]
	add r1, r0, #0
	mov r3, #7
_02026986:
	lsl r2, r1, #1
	add r2, r1, r2
	add r4, r5, #0
	lsr r4, r2
	add r2, r4, #0
	and r2, r3
	cmp r2, #7
	beq _0202699E
	add r1, r1, #1
	add r0, r0, #1
	cmp r1, #6
	blt _02026986
_0202699E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020269A0: .word 0x000001DF
	thumb_func_end sub_02026958

	thumb_func_start sub_020269A4
sub_020269A4: ; 0x020269A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _020269FC ; =0x000001DF
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, r0
	beq _020269B6
	bl sub_02022974
_020269B6:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _020269C8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020269C8:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02026958
	mov r1, #0
	cmp r0, #0
	bls _020269F8
	mov r2, #0xc7
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	mov r5, #7
_020269DE:
	lsl r3, r1, #1
	add r3, r1, r3
	add r6, r2, #0
	lsr r6, r3
	add r3, r6, #0
	and r3, r5
	cmp r3, r4
	bne _020269F2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020269F2:
	add r1, r1, #1
	cmp r1, r0
	blo _020269DE
_020269F8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020269FC: .word 0x000001DF
	thumb_func_end sub_020269A4

	thumb_func_start sub_02026A00
sub_02026A00: ; 0x02026A00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02026A5C ; =0x000001DF
	add r6, r1, #0
	add r4, r2, #0
	cmp r6, r0
	beq _02026A12
	bl sub_02022974
_02026A12:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_020269A4
	cmp r0, #0
	bne _02026A58
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02026958
	add r6, r0, #0
	cmp r6, #6
	bge _02026A58
	cmp r4, #7
	blo _02026A38
	bl sub_02022974
_02026A38:
	lsl r0, r6, #1
	mov r1, #0xc7
	lsl r1, r1, #2
	add r0, r6, r0
	mov r2, #7
	lsl r2, r0
	ldr r3, [r5, r1]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r1]
	add r2, r4, #0
	ldr r3, [r5, r1]
	lsl r2, r0
	add r0, r3, #0
	orr r0, r2
	str r0, [r5, r1]
_02026A58:
	pop {r4, r5, r6, pc}
	nop
_02026A5C: .word 0x000001DF
	thumb_func_end sub_02026A00

	thumb_func_start sub_02026A60
sub_02026A60: ; 0x02026A60
	push {r4, r5, r6, lr}
	ldr r3, _02026B84 ; =0x000001A6
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, r3
	bgt _02026AA2
	bge _02026B0E
	add r6, r3, #0
	sub r6, #0x24
	cmp r4, r6
	bgt _02026A82
	sub r3, #0x24
	cmp r4, r3
	bge _02026B3A
	cmp r4, #0xc9
	beq _02026AD2
	pop {r4, r5, r6, pc}
_02026A82:
	add r0, r3, #0
	sub r0, #9
	cmp r4, r0
	bgt _02026B80
	add r0, r3, #0
	sub r0, #0xa
	cmp r4, r0
	blt _02026B80
	add r0, r3, #0
	sub r0, #0xa
	cmp r4, r0
	beq _02026AE2
	sub r3, #9
	cmp r4, r3
	beq _02026AF8
	pop {r4, r5, r6, pc}
_02026AA2:
	add r0, r3, #0
	add r0, #0x39
	cmp r4, r0
	bgt _02026ABA
	add r0, r3, #0
	add r0, #0x39
	cmp r4, r0
	bge _02026B6C
	add r0, r3, #1
	cmp r4, r0
	beq _02026B24
	pop {r4, r5, r6, pc}
_02026ABA:
	add r0, r3, #0
	add r0, #0x41
	cmp r4, r0
	bgt _02026ACA
	add r3, #0x41
	cmp r4, r3
	beq _02026B56
	pop {r4, r5, r6, pc}
_02026ACA:
	add r3, #0x46
	cmp r4, r3
	beq _02026B40
	pop {r4, r5, r6, pc}
_02026AD2:
	add r0, r2, #0
	bl sub_02076AF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202643C
	pop {r4, r5, r6, pc}
_02026AE2:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020267B8
	pop {r4, r5, r6, pc}
_02026AF8:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020267B8
	pop {r4, r5, r6, pc}
_02026B0E:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B24:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B3A:
	bl sub_020268FC
	pop {r4, r5, r6, pc}
_02026B40:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B56:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B6C:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026A00
_02026B80:
	pop {r4, r5, r6, pc}
	nop
_02026B84: .word 0x000001A6
	thumb_func_end sub_02026A60

	thumb_func_start sub_02026B88
sub_02026B88: ; 0x02026B88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_020986CC
	cmp r0, #6
	beq _02026BAA
	mov r1, #0x4a
	lsl r1, r1, #2
	add r3, r5, r1
	ldrb r2, [r3, r4]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	strb r0, [r3, r4]
_02026BAA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02026B88

	thumb_func_start sub_02026BAC
sub_02026BAC: ; 0x02026BAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020759F0
	cmp r0, #0xff
	bne _02026BCE
	cmp r4, #0
	bne _02026BC8
	mov r0, #2
	pop {r4, r5, r6, pc}
_02026BC8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02026BCE:
	sub r0, r6, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r1, #1
	mov r0, #7
	add r3, r2, #0
	and r3, r0
	add r0, r1, #0
	lsl r0, r3
	asr r3, r2, #3
	add r3, r5, r3
	add r3, #0x84
	ldrb r3, [r3]
	tst r0, r3
	bne _02026BEE
	mov r1, #0
_02026BEE:
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	cmp r4, #1
	bne _02026C1E
	add r4, r2, #0
	asr r2, r2, #3
	add r2, r5, r2
	mov r0, #7
	add r2, #0xc4
	mov r3, #1
	and r4, r0
	add r0, r3, #0
	ldrb r2, [r2]
	lsl r0, r4
	tst r0, r2
	bne _02026C10
	mov r3, #0
_02026C10:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	bne _02026C20
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02026C1E:
	add r0, r1, #0
_02026C20:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026BAC

	thumb_func_start sub_02026C24
sub_02026C24: ; 0x02026C24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _02026CC0 ; =0x000001A6
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, r1
	beq _02026C4A
	add r0, r1, #1
	cmp r4, r0
	beq _02026C4A
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _02026C4A
	add r1, #0x41
	cmp r4, r1
	beq _02026C4A
	bl sub_02022974
_02026C4A:
	cmp r7, #2
	blt _02026C52
	bl sub_02022974
_02026C52:
	ldr r0, _02026CC4 ; =0x000001E7
	cmp r4, r0
	bhi _02026C7C
	bhs _02026C98
	add r1, r0, #0
	sub r1, #0x40
	cmp r4, r1
	bhi _02026C9C
	add r1, r0, #0
	sub r1, #0x41
	cmp r4, r1
	blo _02026C9C
	add r1, r0, #0
	sub r1, #0x41
	cmp r4, r1
	beq _02026C84
	add r1, r0, #0
	sub r1, #0x40
	cmp r4, r1
	beq _02026C8A
	b _02026C9C
_02026C7C:
	add r0, r0, #5
	cmp r4, r0
	beq _02026C90
	b _02026C9C
_02026C84:
	sub r0, #0xdf
	add r6, r5, r0
	b _02026C9C
_02026C8A:
	sub r0, #0xde
	add r6, r5, r0
	b _02026C9C
_02026C90:
	mov r0, #0x32
	lsl r0, r0, #4
	add r6, r5, r0
	b _02026C9C
_02026C98:
	ldr r0, _02026CC8 ; =0x00000321
	add r6, r5, r0
_02026C9C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r3
	add r2, r0, #0
	lsl r2, r1
	asr r1, r3, #3
	ldrb r1, [r6, r1]
	tst r1, r2
	bne _02026CBC
	mov r0, #0
_02026CBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026CC0: .word 0x000001A6
_02026CC4: .word 0x000001E7
_02026CC8: .word 0x00000321
	thumb_func_end sub_02026C24

	thumb_func_start sub_02026CCC
sub_02026CCC: ; 0x02026CCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02026CF8 ; =0x000001DF
	add r4, r2, #0
	cmp r1, r0
	beq _02026CDC
	bl sub_02022974
_02026CDC:
	cmp r4, #6
	blt _02026CE4
	bl sub_02022974
_02026CE4:
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r4, #1
	add r0, r4, r0
	lsr r1, r0
	mov r0, #7
	and r0, r1
	pop {r3, r4, r5, pc}
	nop
_02026CF8: .word 0x000001DF
	thumb_func_end sub_02026CCC

	thumb_func_start sub_02026CFC
sub_02026CFC: ; 0x02026CFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	add r6, r2, #0
	cmp r4, r0
	beq _02026D16
	add r0, r0, #1
	cmp r4, r0
	beq _02026D16
	bl sub_02022974
_02026D16:
	cmp r6, #3
	blt _02026D1E
	bl sub_02022974
_02026D1E:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r4, r0
	bne _02026D2A
	sub r0, #0x92
	b _02026D2C
_02026D2A:
	sub r0, #0x91
_02026D2C:
	add r1, r5, r0
	lsl r0, r6, #0x10
	lsr r2, r0, #0x10
	asr r0, r2, #2
	ldrb r1, [r1, r0]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #3
	and r0, r1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026CFC

	thumb_func_start sub_02026D44
sub_02026D44: ; 0x02026D44
	push {r4, r5}
	mov r3, #0
	ldr r5, _02026D64 ; =0x020E5AF4
	mov r4, #1
	add r1, r3, #0
_02026D4E:
	ldrh r2, [r5]
	cmp r0, r2
	bne _02026D56
	add r4, r1, #0
_02026D56:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #0xb
	blt _02026D4E
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02026D64: .word 0x020E5AF4
	thumb_func_end sub_02026D44

	thumb_func_start sub_02026D68
sub_02026D68: ; 0x02026D68
	mov r0, #1
	bx lr
	thumb_func_end sub_02026D68

	thumb_func_start sub_02026D6C
sub_02026D6C: ; 0x02026D6C
	push {r4, lr}
	mov r2, #0xc9
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _02026DC8 ; =0xBEEFCAFE
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, _02026DCC ; =0x0000031B
	mov r2, #0x1c
	strb r1, [r4, r0]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xff
	bl sub_020D5124
	mov r0, #0xff
	add r1, r0, #0
	add r1, #9
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xa
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xb
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xc
	strb r0, [r4, r1]
	mov r2, #0
	mov r1, #0xc7
	mvn r2, r2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r2, r1, #4
	strb r0, [r4, r2]
	add r1, r1, #5
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_0202693C
	pop {r4, pc}
	nop
_02026DC8: .word 0xBEEFCAFE
_02026DCC: .word 0x0000031B
	thumb_func_end sub_02026D6C

	thumb_func_start sub_02026DD0
sub_02026DD0: ; 0x02026DD0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026E04 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026DE0
	bl sub_02022974
_02026DE0:
	ldr r7, _02026E08 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026DE6:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026DF6
	add r5, r5, #1
_02026DF6:
	add r4, r4, #1
	cmp r4, r7
	ble _02026DE6
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026E04: .word 0xBEEFCAFE
_02026E08: .word 0x000001ED
	thumb_func_end sub_02026DD0

	thumb_func_start sub_02026E0C
sub_02026E0C: ; 0x02026E0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026E40 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026E1C
	bl sub_02022974
_02026E1C:
	ldr r7, _02026E44 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026E22:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026E32
	add r5, r5, #1
_02026E32:
	add r4, r4, #1
	cmp r4, r7
	ble _02026E22
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026E40: .word 0xBEEFCAFE
_02026E44: .word 0x000001ED
	thumb_func_end sub_02026E0C

	thumb_func_start sub_02026E48
sub_02026E48: ; 0x02026E48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027474
	cmp r0, #0
	beq _02026E5C
	add r0, r4, #0
	bl sub_02026E0C
	pop {r4, pc}
_02026E5C:
	add r0, r4, #0
	bl sub_02026EAC
	pop {r4, pc}
	thumb_func_end sub_02026E48

	thumb_func_start sub_02026E64
sub_02026E64: ; 0x02026E64
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026EA4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026E74
	bl sub_02022974
_02026E74:
	ldr r7, _02026EA8 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026E7A:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026E96
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026E96
	add r5, r5, #1
_02026E96:
	add r4, r4, #1
	cmp r4, r7
	ble _02026E7A
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026EA4: .word 0xBEEFCAFE
_02026EA8: .word 0x000001ED
	thumb_func_end sub_02026E64

	thumb_func_start sub_02026EAC
sub_02026EAC: ; 0x02026EAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026EEC ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026EBC
	bl sub_02022974
_02026EBC:
	ldr r7, _02026EF0 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026EC2:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026EDE
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026EDE
	add r5, r5, #1
_02026EDE:
	add r4, r4, #1
	cmp r4, r7
	ble _02026EC2
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026EEC: .word 0xBEEFCAFE
_02026EF0: .word 0x000001ED
	thumb_func_end sub_02026EAC

	thumb_func_start sub_02026EF4
sub_02026EF4: ; 0x02026EF4
	push {r3, lr}
	bl sub_02026F20
	ldr r1, _02026F08 ; =0x000001E2
	cmp r0, r1
	blo _02026F04
	mov r0, #1
	pop {r3, pc}
_02026F04:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02026F08: .word 0x000001E2
	thumb_func_end sub_02026EF4

	thumb_func_start sub_02026F0C
sub_02026F0C: ; 0x02026F0C
	push {r3, lr}
	bl sub_02026F58
	cmp r0, #0xd2
	blo _02026F1A
	mov r0, #1
	pop {r3, pc}
_02026F1A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02026F0C

	thumb_func_start sub_02026F20
sub_02026F20: ; 0x02026F20
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02026F54 ; =0x000001ED
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_02026F2A:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026F4A
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02026D44
	cmp r0, #1
	bne _02026F4A
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02026F4A:
	add r4, r4, #1
	cmp r4, r7
	ble _02026F2A
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02026F54: .word 0x000001ED
	thumb_func_end sub_02026F20

	thumb_func_start sub_02026F58
sub_02026F58: ; 0x02026F58
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02026F98 ; =0x000001ED
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_02026F62:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026F8E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026F8E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02026D68
	cmp r0, #1
	bne _02026F8E
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02026F8E:
	add r4, r4, #1
	cmp r4, r7
	ble _02026F62
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02026F98: .word 0x000001ED
	thumb_func_end sub_02026F58

	thumb_func_start sub_02026F9C
sub_02026F9C: ; 0x02026F9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02026FE4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026FAE
	bl sub_02022974
_02026FAE:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _02026FBC
	mov r0, #0
	pop {r3, r4, r5, pc}
_02026FBC:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r2
	add r3, r0, #0
	lsl r3, r1
	asr r1, r2, #3
	add r2, r5, r1
	ldrb r1, [r2, #4]
	tst r1, r3
	beq _02026FDE
	add r2, #0x44
	ldrb r1, [r2]
	tst r1, r3
	bne _02026FE0
_02026FDE:
	mov r0, #0
_02026FE0:
	pop {r3, r4, r5, pc}
	nop
_02026FE4: .word 0xBEEFCAFE
	thumb_func_end sub_02026F9C

	thumb_func_start sub_02026FE8
sub_02026FE8: ; 0x02026FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027028 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026FFA
	bl sub_02022974
_02026FFA:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _02027008
	mov r0, #0
	pop {r3, r4, r5, pc}
_02027008:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r3
	add r2, r0, #0
	lsl r2, r1
	asr r1, r3, #3
	add r1, r5, r1
	add r1, #0x44
	ldrb r1, [r1]
	tst r1, r2
	bne _02027026
	mov r0, #0
_02027026:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027028: .word 0xBEEFCAFE
	thumb_func_end sub_02026FE8

	thumb_func_start sub_0202702C
sub_0202702C: ; 0x0202702C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027054 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202703E
	bl sub_02022974
_0202703E:
	cmp r4, #0
	bne _0202704A
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	b _0202704E
_0202704A:
	bl sub_02022974
_0202704E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02027054: .word 0xBEEFCAFE
	thumb_func_end sub_0202702C

	thumb_func_start sub_02027058
sub_02027058: ; 0x02027058
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020270A8 ; =0xBEEFCAFE
	add r6, r2, #0
	cmp r1, r0
	beq _0202706C
	bl sub_02022974
_0202706C:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _0202707C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0202707C:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r3, r2, #0
	asr r2, r2, #3
	add r2, r5, r2
	mov r0, #7
	add r2, #0x44
	mov r1, #1
	and r3, r0
	ldrb r2, [r2]
	lsl r1, r3
	tst r1, r2
	beq _020270A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02026BAC
	pop {r4, r5, r6, pc}
_020270A4:
	sub r0, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020270A8: .word 0xBEEFCAFE
	thumb_func_end sub_02027058

	thumb_func_start sub_020270AC
sub_020270AC: ; 0x020270AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020270D8 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020270BE
	bl sub_02022974
_020270BE:
	add r0, r5, #0
	bl sub_02026400
	cmp r0, r4
	bgt _020270CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020270CE:
	mov r0, #0x43
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020270D8: .word 0xBEEFCAFE
	thumb_func_end sub_020270AC

	thumb_func_start sub_020270DC
sub_020270DC: ; 0x020270DC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020270F4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020270EC
	bl sub_02022974
_020270EC:
	add r0, r4, #0
	bl sub_02026400
	pop {r4, pc}
	; .align 2, 0
_020270F4: .word 0xBEEFCAFE
	thumb_func_end sub_020270DC

	thumb_func_start sub_020270F8
sub_020270F8: ; 0x020270F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027128 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202710A
	bl sub_02022974
_0202710A:
	ldr r1, _0202712C ; =0x000001A6
	add r0, r5, #0
	bl sub_02026464
	cmp r0, r4
	bgt _0202711C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0202711C:
	ldr r1, _0202712C ; =0x000001A6
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027128: .word 0xBEEFCAFE
_0202712C: .word 0x000001A6
	thumb_func_end sub_020270F8

	thumb_func_start sub_02027130
sub_02027130: ; 0x02027130
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202714C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027140
	bl sub_02022974
_02027140:
	ldr r1, _02027150 ; =0x000001A6
	add r0, r4, #0
	bl sub_02026464
	pop {r4, pc}
	nop
_0202714C: .word 0xBEEFCAFE
_02027150: .word 0x000001A6
	thumb_func_end sub_02027130

	thumb_func_start sub_02027154
sub_02027154: ; 0x02027154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027184 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027166
	bl sub_02022974
_02027166:
	ldr r1, _02027188 ; =0x000001A7
	add r0, r5, #0
	bl sub_02026464
	cmp r0, r4
	bgt _02027178
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02027178:
	ldr r1, _02027188 ; =0x000001A7
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027184: .word 0xBEEFCAFE
_02027188: .word 0x000001A7
	thumb_func_end sub_02027154

	thumb_func_start sub_0202718C
sub_0202718C: ; 0x0202718C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020271A8 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202719C
	bl sub_02022974
_0202719C:
	ldr r1, _020271AC ; =0x000001A7
	add r0, r4, #0
	bl sub_02026464
	pop {r4, pc}
	nop
_020271A8: .word 0xBEEFCAFE
_020271AC: .word 0x000001A7
	thumb_func_end sub_0202718C

	thumb_func_start sub_020271B0
sub_020271B0: ; 0x020271B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020271E4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020271C2
	bl sub_02022974
_020271C2:
	mov r1, #0x67
	add r0, r5, #0
	lsl r1, r1, #2
	bl sub_020266F8
	cmp r0, r4
	bgt _020271D6
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020271D6:
	mov r1, #0x67
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_02026CFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020271E4: .word 0xBEEFCAFE
	thumb_func_end sub_020271B0

	thumb_func_start sub_020271E8
sub_020271E8: ; 0x020271E8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027204 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020271F8
	bl sub_02022974
_020271F8:
	mov r1, #0x67
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020266F8
	pop {r4, pc}
	; .align 2, 0
_02027204: .word 0xBEEFCAFE
	thumb_func_end sub_020271E8

	thumb_func_start sub_02027208
sub_02027208: ; 0x02027208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027238 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202721A
	bl sub_02022974
_0202721A:
	ldr r1, _0202723C ; =0x0000019D
	add r0, r5, #0
	bl sub_020266F8
	cmp r0, r4
	bgt _0202722C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0202722C:
	ldr r1, _0202723C ; =0x0000019D
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026CFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027238: .word 0xBEEFCAFE
_0202723C: .word 0x0000019D
	thumb_func_end sub_02027208

	thumb_func_start sub_02027240
sub_02027240: ; 0x02027240
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202725C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027250
	bl sub_02022974
_02027250:
	ldr r1, _02027260 ; =0x0000019D
	add r0, r4, #0
	bl sub_020266F8
	pop {r4, pc}
	nop
_0202725C: .word 0xBEEFCAFE
_02027260: .word 0x0000019D
	thumb_func_end sub_02027240

	thumb_func_start sub_02027264
sub_02027264: ; 0x02027264
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027284 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027276
	bl sub_02022974
_02027276:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	pop {r3, r4, r5, pc}
	nop
_02027284: .word 0xBEEFCAFE
	thumb_func_end sub_02027264

	thumb_func_start sub_02027288
sub_02027288: ; 0x02027288
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020272A0 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027298
	bl sub_02022974
_02027298:
	add r0, r4, #0
	bl sub_020268B8
	pop {r4, pc}
	; .align 2, 0
_020272A0: .word 0xBEEFCAFE
	thumb_func_end sub_02027288

	thumb_func_start sub_020272A4
sub_020272A4: ; 0x020272A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r1, #0
	ldr r0, [sp]
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02075D6C
	add r6, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _02027364 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020272DA
	bl sub_02022974
_020272DA:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	bne _0202735E
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r1, #1
	mov r0, #7
	add r2, r7, #0
	and r2, r0
	add r0, r1, #0
	asr r3, r7, #3
	lsl r0, r2
	add r2, r5, r3
	add r2, #0x44
	ldrb r2, [r2]
	tst r2, r0
	bne _0202731E
	ldr r1, _02027368 ; =0x00000147
	cmp r4, r1
	bne _0202730E
	ldr r0, [sp, #4]
	sub r1, #0x43
	str r0, [r5, r1]
_0202730E:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r4, #0
	bl sub_020263D8
	b _02027340
_0202731E:
	add r2, r5, r3
	add r2, #0x84
	ldrb r2, [r2]
	tst r0, r2
	bne _0202732A
	mov r1, #0
_0202732A:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	beq _02027340
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, r4, #0
	bl sub_020263D8
_02027340:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026A60
	mov r1, #7
	add r5, #0x44
	asr r0, r7, #3
	ldrb r3, [r5, r0]
	mov r2, #1
	and r1, r7
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r5, r0]
_0202735E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02027364: .word 0xBEEFCAFE
_02027368: .word 0x00000147
	thumb_func_end sub_020272A4

	thumb_func_start sub_0202736C
sub_0202736C: ; 0x0202736C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r7, #0
	bl sub_02075D6C
	add r6, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _0202744C ; =0xBEEFCAFE
	cmp r1, r0
	beq _020273AE
	bl sub_02022974
_020273AE:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	bne _02027448
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r2, #1
	mov r0, #7
	and r0, r3
	add r1, r2, #0
	lsl r1, r0
	asr r0, r3, #3
	add r3, r5, r0
	add r3, #0x44
	ldrb r3, [r3]
	tst r3, r1
	bne _020273F0
	ldr r1, _02027450 ; =0x00000147
	cmp r4, r1
	bne _020273E0
	ldr r0, [sp]
	sub r1, #0x43
	str r0, [r5, r1]
_020273E0:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r4, #0
	bl sub_020263D8
	b _02027412
_020273F0:
	add r0, r5, r0
	add r0, #0x84
	ldrb r0, [r0]
	tst r0, r1
	bne _020273FC
	mov r2, #0
_020273FC:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	beq _02027412
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, r4, #0
	bl sub_020263D8
_02027412:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02026A60
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026B88
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r1, r5, #4
	asr r0, r6, #3
	mov r2, #7
	ldrb r4, [r1, r0]
	mov r3, #1
	and r2, r6
	lsl r3, r2
	add r2, r4, #0
	orr r2, r3
	add r5, #0x44
	strb r2, [r1, r0]
	ldrb r1, [r5, r0]
	orr r1, r3
	strb r1, [r5, r0]
_02027448:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202744C: .word 0xBEEFCAFE
_02027450: .word 0x00000147
	thumb_func_end sub_0202736C

	thumb_func_start sub_02027454
sub_02027454: ; 0x02027454
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202746C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027464
	bl sub_02022974
_02027464:
	ldr r0, _02027470 ; =0x0000031B
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0202746C: .word 0xBEEFCAFE
_02027470: .word 0x0000031B
	thumb_func_end sub_02027454

	thumb_func_start sub_02027474
sub_02027474: ; 0x02027474
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202748C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027484
	bl sub_02022974
_02027484:
	ldr r0, _02027490 ; =0x0000031B
	ldrb r0, [r4, r0]
	pop {r4, pc}
	nop
_0202748C: .word 0xBEEFCAFE
_02027490: .word 0x0000031B
	thumb_func_end sub_02027474

	thumb_func_start sub_02027494
sub_02027494: ; 0x02027494
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020274AC ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274A4
	bl sub_02022974
_020274A4:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_020274AC: .word 0xBEEFCAFE
	thumb_func_end sub_02027494

	thumb_func_start sub_020274B0
sub_020274B0: ; 0x020274B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020274CC ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274C0
	bl sub_02022974
_020274C0:
	mov r0, #0xc6
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_020274CC: .word 0xBEEFCAFE
	thumb_func_end sub_020274B0

	thumb_func_start sub_020274D0
sub_020274D0: ; 0x020274D0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #8
	blo _020274E0
	bl sub_02022974
_020274E0:
	ldr r1, [r5, #0]
	ldr r0, _02027504 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274EC
	bl sub_02022974
_020274EC:
	add r0, r6, #0
	bl sub_020986CC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x4a
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	and r0, r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02027504: .word 0xBEEFCAFE
	thumb_func_end sub_020274D0

	thumb_func_start sub_02027508
sub_02027508: ; 0x02027508
	ldr r1, _02027510 ; =0x00000319
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02027510: .word 0x00000319
	thumb_func_end sub_02027508

	thumb_func_start sub_02027514
sub_02027514: ; 0x02027514
	ldr r1, _0202751C ; =0x00000319
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202751C: .word 0x00000319
	thumb_func_end sub_02027514

	thumb_func_start sub_02027520
sub_02027520: ; 0x02027520
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027538 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027530
	bl sub_02022974
_02027530:
	ldr r0, _0202753C ; =0x0000031A
	ldrb r0, [r4, r0]
	pop {r4, pc}
	nop
_02027538: .word 0xBEEFCAFE
_0202753C: .word 0x0000031A
	thumb_func_end sub_02027520

	thumb_func_start sub_02027540
sub_02027540: ; 0x02027540
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027558 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027550
	bl sub_02022974
_02027550:
	ldr r0, _0202755C ; =0x0000031A
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02027558: .word 0xBEEFCAFE
_0202755C: .word 0x0000031A
	thumb_func_end sub_02027540

	thumb_func_start sub_02027560
sub_02027560: ; 0x02027560
	ldr r3, _02027568 ; =sub_020245BC
	mov r1, #7
	bx r3
	nop
_02027568: .word sub_020245BC
	thumb_func_end sub_02027560

	thumb_func_start sub_0202756C
sub_0202756C: ; 0x0202756C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r1, [r6, #0]
	ldr r0, _020276B8 ; =0xBEEFCAFE
	add r4, r2, #0
	cmp r1, r0
	beq _02027580
	bl sub_02022974
_02027580:
	ldr r1, _020276BC ; =0x000001A6
	cmp r5, r1
	bgt _020275BC
	bge _02027604
	add r0, r1, #0
	sub r0, #0x24
	cmp r5, r0
	bgt _0202759C
	sub r1, #0x24
	cmp r5, r1
	bge _02027654
	cmp r5, #0xc9
	beq _020275F0
	b _020276B2
_0202759C:
	add r0, r1, #0
	sub r0, #9
	cmp r5, r0
	bgt _020275BA
	add r0, r1, #0
	sub r0, #0xa
	cmp r5, r0
	blt _020275BA
	add r0, r1, #0
	sub r0, #0xa
	cmp r5, r0
	beq _0202762C
	sub r1, #9
	cmp r5, r1
	beq _02027640
_020275BA:
	b _020276B2
_020275BC:
	add r0, r1, #0
	add r0, #0x39
	cmp r5, r0
	bgt _020275D4
	add r0, r1, #0
	add r0, #0x39
	cmp r5, r0
	bge _0202769A
	add r0, r1, #1
	cmp r5, r0
	beq _02027618
	b _020276B2
_020275D4:
	add r0, r1, #0
	add r0, #0x41
	cmp r5, r0
	bgt _020275E6
	add r0, r1, #0
	add r0, #0x41
	cmp r5, r0
	beq _02027682
	b _020276B2
_020275E6:
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _02027668
	b _020276B2
_020275F0:
	add r0, r6, #0
	bl sub_020270DC
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020270AC
	pop {r4, r5, r6, pc}
_02027604:
	add r0, r6, #0
	bl sub_02027130
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020270F8
	pop {r4, r5, r6, pc}
_02027618:
	add r0, r6, #0
	bl sub_0202718C
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027154
	pop {r4, r5, r6, pc}
_0202762C:
	add r0, r6, #0
	bl sub_020271E8
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020271B0
	pop {r4, r5, r6, pc}
_02027640:
	add r0, r6, #0
	bl sub_02027240
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027208
	pop {r4, r5, r6, pc}
_02027654:
	add r0, r6, #0
	bl sub_02027288
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027264
	pop {r4, r5, r6, pc}
_02027668:
	add r0, r6, #0
	add r1, #0x46
	bl sub_02026464
	cmp r4, r0
	bge _020276B2
	mov r1, #0x7b
	add r0, r6, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_02026C24
	pop {r4, r5, r6, pc}
_02027682:
	add r0, r6, #0
	add r1, #0x41
	bl sub_02026464
	cmp r4, r0
	bge _020276B2
	ldr r1, _020276C0 ; =0x000001E7
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r4, r5, r6, pc}
_0202769A:
	add r0, r6, #0
	add r1, #0x39
	bl sub_02026958
	cmp r4, r0
	bge _020276B2
	ldr r1, _020276C4 ; =0x000001DF
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02026CCC
	pop {r4, r5, r6, pc}
_020276B2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020276B8: .word 0xBEEFCAFE
_020276BC: .word 0x000001A6
_020276C0: .word 0x000001E7
_020276C4: .word 0x000001DF
	thumb_func_end sub_0202756C

	thumb_func_start sub_020276C8
sub_020276C8: ; 0x020276C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _0202779C ; =0xBEEFCAFE
	cmp r1, r0
	beq _020276DA
	bl sub_02022974
_020276DA:
	ldr r1, _020277A0 ; =0x000001A6
	cmp r4, r1
	bgt _02027716
	bge _02027752
	add r0, r1, #0
	sub r0, #0x24
	cmp r4, r0
	bgt _020276F6
	sub r1, #0x24
	cmp r4, r1
	bge _02027772
	cmp r4, #0xc9
	beq _0202774A
	b _02027798
_020276F6:
	add r0, r1, #0
	sub r0, #9
	cmp r4, r0
	bgt _02027798
	add r0, r1, #0
	sub r0, #0xa
	cmp r4, r0
	blt _02027798
	add r0, r1, #0
	sub r0, #0xa
	cmp r4, r0
	beq _02027762
	sub r1, #9
	cmp r4, r1
	beq _0202776A
	b _02027798
_02027716:
	add r0, r1, #0
	add r0, #0x39
	cmp r4, r0
	bgt _0202772E
	add r0, r1, #0
	add r0, #0x39
	cmp r4, r0
	bge _0202778E
	add r0, r1, #1
	cmp r4, r0
	beq _0202775A
	b _02027798
_0202772E:
	add r0, r1, #0
	add r0, #0x41
	cmp r4, r0
	bgt _02027740
	add r0, r1, #0
	add r0, #0x41
	cmp r4, r0
	beq _02027784
	b _02027798
_02027740:
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _0202777A
	b _02027798
_0202774A:
	add r0, r5, #0
	bl sub_020270DC
	pop {r3, r4, r5, pc}
_02027752:
	add r0, r5, #0
	bl sub_02027130
	pop {r3, r4, r5, pc}
_0202775A:
	add r0, r5, #0
	bl sub_0202718C
	pop {r3, r4, r5, pc}
_02027762:
	add r0, r5, #0
	bl sub_020271E8
	pop {r3, r4, r5, pc}
_0202776A:
	add r0, r5, #0
	bl sub_02027240
	pop {r3, r4, r5, pc}
_02027772:
	add r0, r5, #0
	bl sub_02027288
	pop {r3, r4, r5, pc}
_0202777A:
	add r0, r5, #0
	add r1, #0x46
	bl sub_02026464
	pop {r3, r4, r5, pc}
_02027784:
	add r0, r5, #0
	add r1, #0x41
	bl sub_02026464
	pop {r3, r4, r5, pc}
_0202778E:
	add r0, r5, #0
	add r1, #0x39
	bl sub_02026958
	pop {r3, r4, r5, pc}
_02027798:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202779C: .word 0xBEEFCAFE
_020277A0: .word 0x000001A6
	thumb_func_end sub_020276C8

	thumb_func_start sub_020277A4
sub_020277A4: ; 0x020277A4
	ldr r0, _020277A8 ; =0x0000078C
	bx lr
	; .align 2, 0
_020277A8: .word 0x0000078C
	thumb_func_end sub_020277A4

	thumb_func_start sub_020277AC
sub_020277AC: ; 0x020277AC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _0202781C ; =0x0000078C
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02027B70
	mov r0, #7
	lsl r0, r0, #8
	add r0, r4, r0
	bl sub_02027F50
	ldr r1, _02027820 ; =0x00000724
	ldr r0, _02027824 ; =0x0000FFFF
	add r1, r4, r1
	mov r2, #8
	bl sub_020C4AF0
	ldr r1, _02027828 ; =0x00000734
	ldr r0, _02027824 ; =0x0000FFFF
	add r1, r4, r1
	mov r2, #0xb
	bl sub_020C4AF0
	ldr r0, _0202782C ; =0x00000754
	mov r1, #4
	add r0, r4, r0
	bl sub_02014A9C
	ldr r0, _02027830 ; =0x00000756
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, _02027834 ; =0x000001B9
	mov r1, #0x63
	bl sub_02014DFC
	ldr r1, _02027838 ; =0x00000758
	ldr r2, _02027824 ; =0x0000FFFF
	strh r0, [r4, r1]
	add r0, r1, #2
	strh r2, [r4, r0]
	mov r3, #0
	add r0, r1, #4
	sub r2, r3, #1
	add r1, #0x18
_0202780C:
	str r2, [r4, r0]
	str r2, [r4, r1]
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #5
	blt _0202780C
	pop {r4, pc}
	nop
_0202781C: .word 0x0000078C
_02027820: .word 0x00000724
_02027824: .word 0x0000FFFF
_02027828: .word 0x00000734
_0202782C: .word 0x00000754
_02027830: .word 0x00000756
_02027834: .word 0x000001B9
_02027838: .word 0x00000758
	thumb_func_end sub_020277AC

	thumb_func_start sub_0202783C
sub_0202783C: ; 0x0202783C
	ldr r3, _02027844 ; =sub_020245BC
	mov r1, #0xa
	bx r3
	nop
_02027844: .word sub_020245BC
	thumb_func_end sub_0202783C

	thumb_func_start sub_02027848
sub_02027848: ; 0x02027848
	ldr r3, _02027850 ; =sub_020245E0
	mov r1, #0xa
	bx r3
	nop
_02027850: .word sub_020245E0
	thumb_func_end sub_02027848

	thumb_func_start sub_02027854
sub_02027854: ; 0x02027854
	ldr r3, _0202785C ; =sub_020245BC
	mov r1, #0xa
	bx r3
	nop
_0202785C: .word sub_020245BC
	thumb_func_end sub_02027854

	thumb_func_start sub_02027860
sub_02027860: ; 0x02027860
	push {r3, lr}
	mov r1, #0xa
	bl sub_020245BC
	mov r1, #7
	lsl r1, r1, #8
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02027860

	thumb_func_start sub_02027870
sub_02027870: ; 0x02027870
	ldr r1, _02027878 ; =0x00000724
	add r0, r0, r1
	bx lr
	nop
_02027878: .word 0x00000724
	thumb_func_end sub_02027870

	thumb_func_start sub_0202787C
sub_0202787C: ; 0x0202787C
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, _0202788C ; =0x00000724
	ldr r3, _02027890 ; =sub_02023DF0
	add r1, r2, r1
	mov r2, #8
	bx r3
	nop
_0202788C: .word 0x00000724
_02027890: .word sub_02023DF0
	thumb_func_end sub_0202787C

	thumb_func_start sub_02027894
sub_02027894: ; 0x02027894
	ldr r1, _0202789C ; =0x00000734
	add r0, r0, r1
	bx lr
	nop
_0202789C: .word 0x00000734
	thumb_func_end sub_02027894

	thumb_func_start sub_020278A0
sub_020278A0: ; 0x020278A0
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, _020278B0 ; =0x00000734
	ldr r3, _020278B4 ; =sub_02023DF0
	add r1, r2, r1
	mov r2, #0xb
	bx r3
	nop
_020278B0: .word 0x00000734
_020278B4: .word sub_02023DF0
	thumb_func_end sub_020278A0

	thumb_func_start sub_020278B8
sub_020278B8: ; 0x020278B8
	ldr r2, _020278C8 ; =0x0000074D
	mov r1, #1
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
_020278C8: .word 0x0000074D
	thumb_func_end sub_020278B8

	thumb_func_start sub_020278CC
sub_020278CC: ; 0x020278CC
	ldr r1, _020278D8 ; =0x0000074D
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	nop
_020278D8: .word 0x0000074D
	thumb_func_end sub_020278CC

	thumb_func_start sub_020278DC
sub_020278DC: ; 0x020278DC
	push {r4, r5}
	ldr r4, _02027910 ; =0x0000074A
	mov r5, #0x7f
	strh r1, [r0, r4]
	add r1, r4, #2
	ldrb r1, [r0, r1]
	lsl r2, r2, #0x18
	bic r1, r5
	lsr r5, r2, #0x18
	mov r2, #0x7f
	and r2, r5
	orr r2, r1
	add r1, r4, #2
	strb r2, [r0, r1]
	ldrb r1, [r0, r1]
	mov r2, #0x80
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r4, #2
	strb r2, [r0, r1]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02027910: .word 0x0000074A
	thumb_func_end sub_020278DC

	thumb_func_start sub_02027914
sub_02027914: ; 0x02027914
	push {r4, r5}
	ldr r4, _02027934 ; =0x0000074A
	ldrh r5, [r0, r4]
	str r5, [r1, #0]
	add r1, r4, #2
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	str r1, [r2, #0]
	add r1, r4, #2
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02027934: .word 0x0000074A
	thumb_func_end sub_02027914

	thumb_func_start sub_02027938
sub_02027938: ; 0x02027938
	ldr r2, _02027954 ; =0x00000754
	ldrh r3, [r0, r2]
	strh r3, [r1]
	add r3, r2, #2
	ldrh r3, [r0, r3]
	strh r3, [r1, #2]
	add r3, r2, #4
	ldrh r3, [r0, r3]
	add r2, r2, #6
	strh r3, [r1, #4]
	ldrh r0, [r0, r2]
	strh r0, [r1, #6]
	bx lr
	nop
_02027954: .word 0x00000754
	thumb_func_end sub_02027938

	thumb_func_start sub_02027958
sub_02027958: ; 0x02027958
	push {r3, r4}
	ldrh r3, [r1]
	ldr r2, _02027978 ; =0x00000754
	strh r3, [r0, r2]
	ldrh r4, [r1, #2]
	add r3, r2, #2
	strh r4, [r0, r3]
	ldrh r4, [r1, #4]
	add r3, r2, #4
	strh r4, [r0, r3]
	ldrh r3, [r1, #6]
	add r1, r2, #6
	strh r3, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_02027978: .word 0x00000754
	thumb_func_end sub_02027958

	thumb_func_start sub_0202797C
sub_0202797C: ; 0x0202797C
	ldr r2, _02027988 ; =0x0000074D
	ldrb r0, [r0, r2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	strb r0, [r1]
	bx lr
	; .align 2, 0
_02027988: .word 0x0000074D
	thumb_func_end sub_0202797C

	thumb_func_start sub_0202798C
sub_0202798C: ; 0x0202798C
	push {r3, r4}
	ldr r3, _020279A4 ; =0x0000074D
	lsl r1, r1, #0x1c
	ldrb r4, [r0, r3]
	mov r2, #0x1e
	lsr r1, r1, #0x1b
	bic r4, r2
	orr r1, r4
	strb r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_020279A4: .word 0x0000074D
	thumb_func_end sub_0202798C

	thumb_func_start sub_020279A8
sub_020279A8: ; 0x020279A8
	push {r3, r4, r5, r6}
	sub r4, r1, #1
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r5, _020279CC ; =0x0000075C
	add r0, r0, r4
	ldr r6, [r1, r5]
	str r6, [r2, #0]
	add r2, r5, #0
	add r2, #0x14
	ldr r1, [r1, r2]
	add r5, #0x28
	str r1, [r3, #0]
	ldrb r1, [r0, r5]
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_020279CC: .word 0x0000075C
	thumb_func_end sub_020279A8

	thumb_func_start sub_020279D0
sub_020279D0: ; 0x020279D0
	push {r4, r5}
	sub r1, r1, #1
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r4, _020279F4 ; =0x0000075C
	add r0, r0, r1
	str r2, [r5, r4]
	add r2, r4, #0
	add r2, #0x14
	str r3, [r5, r2]
	ldr r2, _020279F8 ; =0xFFFFFFF8
	add r4, #0x28
	add r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, r4]
	pop {r4, r5}
	bx lr
	nop
_020279F4: .word 0x0000075C
_020279F8: .word 0xFFFFFFF8
	thumb_func_end sub_020279D0

	thumb_func_start sub_020279FC
sub_020279FC: ; 0x020279FC
	push {r4, lr}
	mov r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_02027A1C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020279FC

	thumb_func_start sub_02027A10
sub_02027A10: ; 0x02027A10
	ldr r3, _02027A18 ; =sub_020C4DB0
	mov r2, #2
	bx r3
	nop
_02027A18: .word sub_020C4DB0
	thumb_func_end sub_02027A10

	thumb_func_start sub_02027A1C
sub_02027A1C: ; 0x02027A1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #2
	bl sub_020C4CF4
	ldrh r1, [r4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x30
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	mov r0, #0x80
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	ldr r0, _02027A60 ; =0xFFFFFCFF
	and r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	ldr r0, _02027A64 ; =0xFFFF83FF
	and r0, r1
	strh r0, [r4]
	pop {r4, pc}
	nop
_02027A60: .word 0xFFFFFCFF
_02027A64: .word 0xFFFF83FF
	thumb_func_end sub_02027A1C

	thumb_func_start sub_02027A68
sub_02027A68: ; 0x02027A68
	push {r3, lr}
	cmp r0, #0
	beq _02027A78
	bl sub_02025E44
	bl sub_02027B30
	add r1, r0, #0
_02027A78:
	cmp r1, #0
	beq _02027A96
	cmp r1, #1
	beq _02027A86
	cmp r1, #2
	beq _02027A8E
	b _02027A96
_02027A86:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #1
	str r1, [r0, #0x34]
	pop {r3, pc}
_02027A8E:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #3
	str r1, [r0, #0x34]
	pop {r3, pc}
_02027A96:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x34]
	pop {r3, pc}
	nop
_02027AA0: .word 0x021BF67C
	thumb_func_end sub_02027A68

	thumb_func_start sub_02027AA4
sub_02027AA4: ; 0x02027AA4
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
	thumb_func_end sub_02027AA4

	thumb_func_start sub_02027AAC
sub_02027AAC: ; 0x02027AAC
	ldrh r3, [r0]
	mov r2, #0xf
	lsl r1, r1, #0x10
	bic r3, r2
	lsr r2, r1, #0x10
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027AAC

	thumb_func_start sub_02027AC0
sub_02027AC0: ; 0x02027AC0
	push {r3, lr}
	bl sub_02027AA4
	cmp r0, #0
	bne _02027ACE
	mov r0, #8
	pop {r3, pc}
_02027ACE:
	cmp r0, #1
	bne _02027AD6
	mov r0, #4
	pop {r3, pc}
_02027AD6:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02027AC0

	thumb_func_start sub_02027ADC
sub_02027ADC: ; 0x02027ADC
	ldrh r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_02027ADC

	thumb_func_start sub_02027AE4
sub_02027AE4: ; 0x02027AE4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	ldrh r3, [r0]
	mov r2, #0x30
	lsr r1, r1, #0x1a
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027AE4

	thumb_func_start sub_02027AF8
sub_02027AF8: ; 0x02027AF8
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02027AF8

	thumb_func_start sub_02027B00
sub_02027B00: ; 0x02027B00
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	ldrh r3, [r0]
	mov r2, #0x80
	lsr r1, r1, #0x18
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027B00

	thumb_func_start sub_02027B14
sub_02027B14: ; 0x02027B14
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02027B14

	thumb_func_start sub_02027B1C
sub_02027B1C: ; 0x02027B1C
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	ldrh r3, [r0]
	mov r2, #0x40
	lsr r1, r1, #0x19
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027B1C

	thumb_func_start sub_02027B30
sub_02027B30: ; 0x02027B30
	ldrh r0, [r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_02027B30

	thumb_func_start sub_02027B38
sub_02027B38: ; 0x02027B38
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	ldrh r3, [r0]
	ldr r2, _02027B4C ; =0xFFFFFCFF
	lsr r1, r1, #0x16
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	bx lr
	; .align 2, 0
_02027B4C: .word 0xFFFFFCFF
	thumb_func_end sub_02027B38

	thumb_func_start sub_02027B50
sub_02027B50: ; 0x02027B50
	ldrh r0, [r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	bx lr
	thumb_func_end sub_02027B50

	thumb_func_start sub_02027B58
sub_02027B58: ; 0x02027B58
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1b
	ldrh r3, [r0]
	ldr r2, _02027B6C ; =0xFFFF83FF
	lsr r1, r1, #0x11
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	bx lr
	; .align 2, 0
_02027B6C: .word 0xFFFF83FF
	thumb_func_end sub_02027B58

	thumb_func_start sub_02027B70
sub_02027B70: ; 0x02027B70
	push {r4, lr}
	mov r2, #7
	mov r1, #0
	lsl r2, r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	add r0, r1, #0
_02027B82:
	strb r0, [r4, #1]
	strb r0, [r4]
	add r1, r1, #1
	add r4, #0xe
	cmp r1, #0x80
	blt _02027B82
	pop {r4, pc}
	thumb_func_end sub_02027B70

	thumb_func_start sub_02027B90
sub_02027B90: ; 0x02027B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02027BF4
	mov r4, #0
	str r0, [sp, #8]
	add r6, r4, #0
	b _02027BDE
_02027BA8:
	add r0, r5, #0
	bl sub_02027C50
	ldr r0, [sp]
	lsl r1, r6, #1
	add r7, r0, r1
	ldrh r0, [r0, r1]
	sub r0, #0x94
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5, #1]
	ldrb r1, [r5]
	ldrb r2, [r5, #0xc]
	ldr r0, [sp, #8]
	bl sub_02027C7C
	lsl r0, r0, #2
	strh r0, [r5, #2]
	ldrh r0, [r7, #2]
	add r6, r6, #2
	add r4, r4, #1
	strh r0, [r5, #8]
	mov r0, #0x64
	strb r0, [r5, #0xa]
	mov r0, #3
	strb r0, [r5, #0xb]
	add r5, #0xe
_02027BDE:
	cmp r4, #0x80
	blt _02027BA8
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02027BA8
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02027B90

	thumb_func_start sub_02027BF4
sub_02027BF4: ; 0x02027BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl sub_0209739C
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0xc0
	bl sub_02018144
	str r0, [sp, #4]
	mov r6, #0
	add r5, r0, #0
_02027C0E:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020973A8
	add r4, r0, #0
	mov r1, #3
	bl sub_020973D4
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #4
	bl sub_020973D4
	strb r0, [r5, #1]
	add r0, r4, #0
	mov r1, #2
	bl sub_020973D4
	strb r0, [r5, #2]
	add r0, r4, #0
	bl sub_020181C4
	add r6, r6, #1
	add r5, r5, #3
	cmp r6, #0x40
	blt _02027C0E
	ldr r0, [sp]
	bl sub_020973B0
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02027BF4

	thumb_func_start sub_02027C50
sub_02027C50: ; 0x02027C50
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	strh r1, [r0, #8]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end sub_02027C50

	thumb_func_start sub_02027C68
sub_02027C68: ; 0x02027C68
	ldrb r2, [r0, #0xb]
	ldrb r0, [r0]
	sub r3, r0, #1
	lsl r0, r3, #1
	add r0, r3, r0
	add r0, r1, r0
	ldrb r0, [r0, #2]
	mul r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027C68

	thumb_func_start sub_02027C7C
sub_02027C7C: ; 0x02027C7C
	sub r3, r1, #1
	lsl r1, r3, #1
	add r1, r3, r1
	ldrb r1, [r0, r1]
	mov r0, #0x3c
	mul r0, r1
	cmp r2, #1
	bne _02027C9A
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	bx lr
_02027C9A:
	cmp r2, #2
	bne _02027CA6
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
_02027CA6:
	bx lr
	thumb_func_end sub_02027C7C

	thumb_func_start sub_02027CA8
sub_02027CA8: ; 0x02027CA8
	sub r3, r1, #1
	lsl r1, r3, #1
	add r1, r3, r1
	add r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r2, #2
	bne _02027CBE
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	bx lr
_02027CBE:
	cmp r2, #1
	bne _02027CCA
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
_02027CCA:
	bx lr
	thumb_func_end sub_02027CA8

	thumb_func_start sub_02027CCC
sub_02027CCC: ; 0x02027CCC
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _02027CD6
	mov r0, #6
	bx lr
_02027CD6:
	mov r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027CCC

	thumb_func_start sub_02027CDC
sub_02027CDC: ; 0x02027CDC
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _02027CE6
	mov r0, #0xf
	bx lr
_02027CE6:
	mov r0, #0xa
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027CDC

	thumb_func_start sub_02027CEC
sub_02027CEC: ; 0x02027CEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02027CCC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02027CDC
	add r1, r4, #3
	mul r0, r1
	add r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02027CEC

	thumb_func_start sub_02027D04
sub_02027D04: ; 0x02027D04
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D04

	thumb_func_start sub_02027D10
sub_02027D10: ; 0x02027D10
	mov r2, #0xe
	mul r2, r1
	ldrb r0, [r0, r2]
	bx lr
	thumb_func_end sub_02027D10

	thumb_func_start sub_02027D18
sub_02027D18: ; 0x02027D18
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _02027D28
	mov r0, #0
	bx lr
_02027D28:
	cmp r0, #0x32
	bgt _02027D30
	mov r0, #1
	bx lr
_02027D30:
	mov r0, #2
	bx lr
	thumb_func_end sub_02027D18

	thumb_func_start sub_02027D34
sub_02027D34: ; 0x02027D34
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xb]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D34

	thumb_func_start sub_02027D40
sub_02027D40: ; 0x02027D40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xe
	mul r4, r0
	strb r3, [r5, r4]
	mov r0, #1
	add r6, r5, r4
	strb r0, [r6, #1]
	add r0, r2, #0
	ldrb r2, [r6, #0xc]
	add r1, r3, #0
	bl sub_02027C7C
	add r1, r6, #0
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strb r0, [r1, #6]
	strh r0, [r1, #8]
	mov r0, #0x64
	strb r0, [r1, #0xa]
	mov r0, #5
	strb r0, [r1, #0xb]
	mov r0, #1
	strb r0, [r1, #0xd]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02027D40

	thumb_func_start sub_02027D78
sub_02027D78: ; 0x02027D78
	mov r2, #0xe
	mul r2, r1
	mov r3, #0x64
	add r0, r0, r2
	strb r3, [r0, #0xa]
	bx lr
	thumb_func_end sub_02027D78

	thumb_func_start sub_02027D84
sub_02027D84: ; 0x02027D84
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D84

	thumb_func_start sub_02027D90
sub_02027D90: ; 0x02027D90
	mov r3, #0xe
	mul r3, r1
	add r0, r0, r3
	strb r2, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D90

	thumb_func_start sub_02027D9C
sub_02027D9C: ; 0x02027D9C
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D9C

	thumb_func_start sub_02027DA8
sub_02027DA8: ; 0x02027DA8
	mov r3, #0xe
	mul r3, r1
	add r0, r0, r3
	strb r2, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027DA8

	thumb_func_start sub_02027DB4
sub_02027DB4: ; 0x02027DB4
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrh r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027DB4

	thumb_func_start sub_02027DC0
sub_02027DC0: ; 0x02027DC0
	push {r4, lr}
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrh r4, [r0, #8]
	bl sub_02027C50
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027DC0

	thumb_func_start sub_02027DD4
sub_02027DD4: ; 0x02027DD4
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4, #1]
	cmp r2, #5
	bhi _02027E3C
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02027DEA: ; jump table
	.short _02027DF6 - _02027DEA - 2 ; case 0
	.short _02027DFC - _02027DEA - 2 ; case 1
	.short _02027DFC - _02027DEA - 2 ; case 2
	.short _02027DFC - _02027DEA - 2 ; case 3
	.short _02027E02 - _02027DEA - 2 ; case 4
	.short _02027E1A - _02027DEA - 2 ; case 5
_02027DF6:
	bl sub_02022974
	pop {r4, pc}
_02027DFC:
	add r0, r2, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02027E02:
	bl sub_02027C68
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #2
	bhs _02027E12
	mov r0, #2
	strh r0, [r4, #8]
_02027E12:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02027E1A:
	mov r1, #0
	strh r1, [r4, #8]
	mov r1, #2
	strb r1, [r4, #1]
	mov r1, #5
	strb r1, [r4, #0xb]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
	bl sub_02027CDC
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _02027E3C
	add r0, r4, #0
	bl sub_02027C50
_02027E3C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027DD4

	thumb_func_start sub_02027E40
sub_02027E40: ; 0x02027E40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r7, r2, #0
	cmp r0, #5
	beq _02027EAA
	add r0, r1, #0
	ldrb r1, [r5]
	ldrb r2, [r5, #0xc]
	bl sub_02027CA8
	add r6, r0, #0
	ldrh r0, [r5, #4]
	mov r1, #0x3c
	str r0, [sp]
	add r0, r7, r0
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x3c
	add r0, r7, r0
	bl sub_020E1F6C
	strh r1, [r5, #4]
	cmp r4, #0
	beq _02027EAA
	ldrb r1, [r5, #0xa]
	add r0, r6, #0
	mul r0, r4
	cmp r1, r0
	blt _02027E86
	sub r0, r1, r0
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02027E86:
	cmp r1, #0
	beq _02027E9A
	sub r0, r6, #1
	add r0, r1, r0
	add r1, r6, #0
	bl sub_020E1F6C
	sub r4, r4, r0
	mov r0, #0
	strb r0, [r5, #0xa]
_02027E9A:
	ldrb r0, [r5, #0xb]
	cmp r0, r4
	ble _02027EA6
	sub r0, r0, r4
	strb r0, [r5, #0xb]
	pop {r3, r4, r5, r6, r7, pc}
_02027EA6:
	mov r0, #0
	strb r0, [r5, #0xb]
_02027EAA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02027E40

	thumb_func_start sub_02027EAC
sub_02027EAC: ; 0x02027EAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp]
_02027EB8:
	ldrb r1, [r4]
	cmp r1, #0
	beq _02027F40
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02027F40
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02027F40
	ldrb r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_02027C7C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02027CEC
	mul r0, r5
	cmp r7, r0
	blt _02027EE8
	add r0, r4, #0
	bl sub_02027C50
	b _02027F40
_02027EE8:
	add r5, r7, #0
	b _02027F36
_02027EEC:
	ldrh r2, [r4, #2]
	cmp r2, r5
	ble _02027F04
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02027E40
	ldrh r0, [r4, #2]
	sub r0, r0, r5
	strh r0, [r4, #2]
	b _02027F40
_02027F04:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02027E40
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02027DD4
	ldrh r0, [r4, #2]
	ldrb r1, [r4]
	ldrb r2, [r4, #0xc]
	sub r5, r5, r0
	add r0, r6, #0
	bl sub_02027C7C
	strh r0, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _02027F36
	add r0, r4, #0
	bl sub_02027CCC
	ldrh r1, [r4, #2]
	mul r0, r1
	strh r0, [r4, #2]
_02027F36:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02027F40
	cmp r5, #0
	bne _02027EEC
_02027F40:
	ldr r0, [sp]
	add r4, #0xe
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x80
	blt _02027EB8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02027EAC

	thumb_func_start sub_02027F50
sub_02027F50: ; 0x02027F50
	ldr r3, _02027F58 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x24
	bx r3
	; .align 2, 0
_02027F58: .word sub_020C4CF4
	thumb_func_end sub_02027F50

	thumb_func_start sub_02027F5C
sub_02027F5C: ; 0x02027F5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02027F50
	str r4, [r5, #0]
	add r0, r5, #4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02027F5C

	thumb_func_start sub_02027F6C
sub_02027F6C: ; 0x02027F6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	beq _02027F7A
	bl sub_02022974
_02027F7A:
	add r0, r4, #4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027F6C

	thumb_func_start sub_02027F80
sub_02027F80: ; 0x02027F80
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02027F80

	thumb_func_start sub_02027F84
sub_02027F84: ; 0x02027F84
	mov r0, #0x22
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027F84

	thumb_func_start sub_02027F8C
sub_02027F8C: ; 0x02027F8C
	ldr r3, _02027F94 ; =sub_020245BC
	mov r1, #9
	bx r3
	nop
_02027F94: .word sub_020245BC
	thumb_func_end sub_02027F8C

	thumb_func_start sub_02027F98
sub_02027F98: ; 0x02027F98
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02027FB8 ; =0x0000FFFF
	add r5, r0, #0
	add r7, r4, #0
_02027FA2:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x88
	bl sub_020D5124
	strh r6, [r5]
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	blt _02027FA2
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02027FB8: .word 0x0000FFFF
	thumb_func_end sub_02027F98

	thumb_func_start sub_02027FBC
sub_02027FBC: ; 0x02027FBC
	mov r2, #0x88
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_02027FBC

	thumb_func_start sub_02027FC4
sub_02027FC4: ; 0x02027FC4
	add r0, r0, r1
	add r0, #0x68
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_02027FC4

	thumb_func_start sub_02027FCC
sub_02027FCC: ; 0x02027FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200220C
	cmp r0, #0
	bne _02027FE6
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _02027FE6
	mov r0, #1
	pop {r3, r4, r5, pc}
_02027FE6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02027FCC

	thumb_func_start sub_02027FEC
sub_02027FEC: ; 0x02027FEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #4]
	mov r1, #0x22
	str r0, [sp]
	add r0, r3, #0
	lsl r1, r1, #6
	str r2, [sp, #8]
	bl sub_02018144
	str r0, [sp, #0x10]
	bl sub_02027F98
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02028044
	ldr r7, [sp, #4]
	add r6, sp, #0x18
_02028014:
	mov r0, #0
	mvn r0, r0
	ldr r5, [sp]
	str r0, [r6, #0]
	mov r4, #0
_0202801E:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02027FCC
	cmp r0, #0
	beq _0202802C
	str r4, [r6, #0]
_0202802C:
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	blt _0202801E
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r7, #0x88
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02028014
_02028044:
	ldr r0, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	cmp r0, #0
	ble _0202808A
	ldr r5, [sp, #0x10]
	add r6, sp, #0x18
_02028052:
	ldr r3, [sp, #4]
	add r7, r5, #0
	mov r2, #0x11
_02028058:
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _02028058
	ldr r1, [r6, #0]
	cmp r1, #0
	blt _02028072
	add r2, r1, #0
	mov r0, #0x88
	mul r2, r0
	ldr r1, _020280DC ; =0x0000FFFF
	ldr r0, [sp]
	strh r1, [r0, r2]
_02028072:
	ldr r0, [sp, #4]
	add r5, #0x88
	add r0, #0x88
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r6, r6, #4
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _02028052
_0202808A:
	mov r0, #0
	mov ip, r0
	mov r0, #0x88
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	ldr r3, [sp]
	add r5, r0, r1
_0202809A:
	ldrh r1, [r3]
	ldr r0, _020280DC ; =0x0000FFFF
	cmp r1, r0
	beq _020280B8
	add r6, r3, #0
	add r7, r5, #0
	mov r2, #0x11
_020280A8:
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _020280A8
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x10
	bge _020280C4
_020280B8:
	mov r0, ip
	add r0, r0, #1
	add r3, #0x88
	mov ip, r0
	cmp r0, #0x10
	blt _0202809A
_020280C4:
	mov r2, #0x22
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	lsl r2, r2, #6
	bl sub_020D50B8
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_020280DC: .word 0x0000FFFF
	thumb_func_end sub_02027FEC

	thumb_func_start sub_020280E0
sub_020280E0: ; 0x020280E0
	push {r3, r4, r5, r6}
	mov r3, #0
	add r4, r0, #0
_020280E6:
	ldr r2, [r4, #0x10]
	cmp r1, r2
	bne _020280F2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_020280F2:
	add r3, r3, #1
	add r4, #0x88
	cmp r3, #0x10
	blt _020280E6
	mov r6, #0
	add r3, r6, #0
_020280FE:
	add r4, r3, #0
	add r5, r0, #0
_02028102:
	ldr r2, [r5, #0x18]
	cmp r1, r2
	bne _0202810E
	add r0, r6, #2
	pop {r3, r4, r5, r6}
	bx lr
_0202810E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02028102
	add r6, r6, #1
	add r0, #0x88
	cmp r6, #0x10
	blt _020280FE
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_020280E0

	thumb_func_start sub_02028124
sub_02028124: ; 0x02028124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	strb r0, [r4, #4]
	ldr r0, _02028170 ; =0x020E4C44
	mov r1, #8
	ldrb r0, [r0]
	strb r0, [r4, #5]
	ldr r0, _02028174 ; =0x020E4C40
	ldrb r0, [r0]
	strb r0, [r4, #6]
	mov r0, #0xff
	strb r0, [r4, #7]
	add r0, r4, #0
	add r0, #8
	bl sub_02002294
	ldr r0, _02028178 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0202814E:
	add r1, r1, #1
	strh r0, [r2, #0x18]
	add r2, r2, #2
	cmp r1, #3
	blt _0202814E
	mov r5, #0
	strh r5, [r4, #0x1e]
	add r4, #0x20
_0202815E:
	add r0, r4, #0
	bl sub_02014A84
	add r5, r5, #1
	add r4, #8
	cmp r5, #3
	blt _0202815E
	pop {r3, r4, r5, pc}
	nop
_02028170: .word 0x020E4C44
_02028174: .word 0x020E4C40
_02028178: .word 0x0000FFFF
	thumb_func_end sub_02028124

	thumb_func_start sub_0202817C
sub_0202817C: ; 0x0202817C
	ldrb r0, [r0, #7]
	cmp r0, #0xb
	bhi _02028186
	mov r0, #1
	bx lr
_02028186:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202817C

	thumb_func_start sub_0202818C
sub_0202818C: ; 0x0202818C
	push {r4, lr}
	mov r1, #0x38
	bl sub_02018184
	add r4, r0, #0
	bl sub_02028124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202818C

	thumb_func_start sub_020281A0
sub_020281A0: ; 0x020281A0
	ldr r3, _020281A8 ; =sub_020C4DB0
	mov r2, #0x38
	bx r3
	nop
_020281A8: .word sub_020C4DB0
	thumb_func_end sub_020281A0

	thumb_func_start sub_020281AC
sub_020281AC: ; 0x020281AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02028124
	ldr r0, [sp]
	strb r5, [r0, #7]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02025E38
	add r4, r0, #0
	bl sub_02025EF0
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl sub_020021B0
	add r0, r4, #0
	bl sub_02025F30
	ldr r1, [sp]
	strb r0, [r1, #4]
	add r0, r4, #0
	bl sub_02025F20
	ldr r1, [sp]
	mov r7, #0
	str r0, [r1, #0]
	add r0, r1, #0
	strh r7, [r0, #0x1e]
	ldr r0, [sp, #0xc]
	bl sub_0207A0F8
	ldr r1, [sp, #4]
	cmp r1, r0
	bge _020282F8
_02028204:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02079D80
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl sub_02079EDC
	ldr r1, [sp]
	mov ip, r0
	lsl r2, r7, #1
	add r1, #0x18
	ldrh r3, [r1, r2]
	ldr r0, _020282FC ; =0xFFFFF000
	and r0, r3
	lsl r3, r5, #0x10
	lsr r5, r3, #0x10
	ldr r3, _020282FC ; =0xFFFFF000
	lsr r3, r3, #0x14
	and r3, r5
	orr r0, r3
	strh r0, [r1, r2]
	ldrh r3, [r1, r2]
	ldr r0, _02028300 ; =0xFFFF0FFF
	and r0, r3
	mov r3, ip
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x10
	orr r0, r3
	strh r0, [r1, r2]
	ldrh r1, [r1, r2]
	ldr r2, _02028304 ; =0x020E5B0C
	mov r0, #0
	lsl r1, r1, #0x14
	lsr r3, r1, #0x14
_0202827C:
	lsl r1, r0, #3
	add r1, r2, r1
	ldrh r5, [r1, #2]
	cmp r5, r3
	bne _020282CE
	ldrb r5, [r1, #6]
	cmp r4, r5
	bne _020282CE
	ldr r4, [sp]
	lsl r6, r7, #1
	add r4, #0x18
	ldrh r0, [r4, r6]
	ldr r2, _020282FC ; =0xFFFFF000
	ldrh r1, [r1]
	and r0, r2
	lsr r2, r2, #0x14
	and r1, r2
	orr r0, r1
	strh r0, [r4, r6]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r1, #0
	bl sub_02079EDC
	lsl r0, r0, #0x1c
	ldrh r2, [r4, r6]
	ldr r1, _02028300 ; =0xFFFF0FFF
	lsr r0, r0, #0x10
	and r1, r2
	orr r0, r1
	strh r0, [r4, r6]
	ldr r0, [sp]
	add r1, r5, #0
	ldrh r2, [r0, #0x1e]
	lsl r0, r7, #2
	add r0, r7, r0
	lsl r1, r0
	ldr r0, [sp]
	orr r1, r2
	strh r1, [r0, #0x1e]
	b _020282D8
_020282CE:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #7
	blo _0202827C
_020282D8:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	bhs _020282F8
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_0207A0F8
	ldr r1, [sp, #4]
	cmp r1, r0
	blt _02028204
_020282F8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020282FC: .word 0xFFFFF000
_02028300: .word 0xFFFF0FFF
_02028304: .word 0x020E5B0C
	thumb_func_end sub_020281AC

	thumb_func_start sub_02028308
sub_02028308: ; 0x02028308
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02028308

	thumb_func_start sub_0202830C
sub_0202830C: ; 0x0202830C
	add r0, #8
	bx lr
	thumb_func_end sub_0202830C

	thumb_func_start sub_02028310
sub_02028310: ; 0x02028310
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_02028310

	thumb_func_start sub_02028314
sub_02028314: ; 0x02028314
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_02028314

	thumb_func_start sub_02028318
sub_02028318: ; 0x02028318
	cmp r1, #0xc
	bhs _0202831E
	strb r1, [r0, #7]
_0202831E:
	bx lr
	thumb_func_end sub_02028318

	thumb_func_start sub_02028320
sub_02028320: ; 0x02028320
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_02028320

	thumb_func_start sub_02028324
sub_02028324: ; 0x02028324
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_02028324

	thumb_func_start sub_02028328
sub_02028328: ; 0x02028328
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	cmp r1, #3
	bhs _020283E4
	lsl r2, r1, #1
	add r0, r0, r2
	ldrh r5, [r0, #0x18]
	lsl r6, r1, #2
	add r1, r1, r6
	add r0, sp, #0
	strh r5, [r0]
	asr r3, r1
	lsl r5, r5, #0x14
	mov r1, #0x1f
	ldr r2, _020283EC ; =0x020E5B0C
	mov r0, #0
	lsr r5, r5, #0x14
	and r3, r1
_0202834E:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02028390
	ldrb r1, [r2, #6]
	cmp r1, r3
	bne _02028390
	add r3, sp, #0
	lsl r1, r0, #3
	ldr r5, _020283F0 ; =0x020E5B0E
	ldrh r0, [r3]
	ldr r2, _020283F4 ; =0xFFFFF000
	ldrh r5, [r5, r1]
	and r0, r2
	lsr r2, r2, #0x14
	and r2, r5
	orr r0, r2
	strh r0, [r3]
	ldr r0, _020283F8 ; =0x020E5B10
	ldr r2, _020283FC ; =0x020E5B12
	ldrh r0, [r0, r1]
	ldrb r1, [r2, r1]
	mov r2, #0
	bl sub_02079EDC
	add r2, sp, #0
	lsl r0, r0, #0x1c
	ldrh r3, [r2]
	ldr r1, _02028400 ; =0xFFFF0FFF
	lsr r0, r0, #0x10
	and r1, r3
	orr r0, r1
	strh r0, [r2]
	b _02028398
_02028390:
	add r0, r0, #1
	add r2, #8
	cmp r0, #7
	blo _0202834E
_02028398:
	add r1, sp, #0
	ldrh r2, [r1]
	lsl r0, r2, #0x14
	lsr r3, r0, #0x14
	ldr r0, _02028404 ; =0x00000222
	cmp r3, r0
	bls _020283B8
	ldr r0, _020283F4 ; =0xFFFFF000
	and r2, r0
	mov r0, #7
	orr r0, r2
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r0, _02028400 ; =0xFFFF0FFF
	and r0, r2
	strh r0, [r1]
_020283B8:
	cmp r4, #0
	beq _020283C4
	cmp r4, #1
	beq _020283D0
	cmp r4, #2
	b _020283DC
_020283C4:
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	pop {r3, r4, r5, r6, pc}
_020283D0:
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, r6, pc}
_020283DC:
	add r0, sp, #0
	add sp, #4
	ldrh r0, [r0]
	pop {r3, r4, r5, r6, pc}
_020283E4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020283EC: .word 0x020E5B0C
_020283F0: .word 0x020E5B0E
_020283F4: .word 0xFFFFF000
_020283F8: .word 0x020E5B10
_020283FC: .word 0x020E5B12
_02028400: .word 0xFFFF0FFF
_02028404: .word 0x00000222
	thumb_func_end sub_02028328

	thumb_func_start sub_02028408
sub_02028408: ; 0x02028408
	ldrh r0, [r0, #0x1e]
	bx lr
	thumb_func_end sub_02028408

	thumb_func_start sub_0202840C
sub_0202840C: ; 0x0202840C
	cmp r1, #3
	bhs _02028418
	add r0, #0x20
	lsl r1, r1, #3
	add r0, r0, r1
	bx lr
_02028418:
	add r0, #0x20
	bx lr
	thumb_func_end sub_0202840C

	thumb_func_start sub_0202841C
sub_0202841C: ; 0x0202841C
	push {r3, lr}
	cmp r2, #3
	bhs _0202842C
	add r0, #0x20
	lsl r2, r2, #3
	add r0, r0, r2
	bl sub_02014CC0
_0202842C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202841C

	thumb_func_start sub_02028430
sub_02028430: ; 0x02028430
	ldr r3, _02028438 ; =sub_020245BC
	mov r1, #0xf
	bx r3
	nop
_02028438: .word sub_020245BC
	thumb_func_end sub_02028430

	thumb_func_start sub_0202843C
sub_0202843C: ; 0x0202843C
	mov r0, #0x46
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202843C

	thumb_func_start sub_02028444
sub_02028444: ; 0x02028444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202844A:
	add r0, r5, #0
	bl sub_02028124
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #0x14
	blt _0202844A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02028444

	thumb_func_start sub_0202845C
sub_0202845C: ; 0x0202845C
	push {r3, lr}
	cmp r1, #0
	bne _0202846A
	mov r1, #0x14
	bl sub_020284E8
	pop {r3, pc}
_0202846A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_0202845C

	thumb_func_start sub_02028470
sub_02028470: ; 0x02028470
	push {r3, lr}
	bl sub_02028538
	cmp r0, #0
	beq _0202847E
	bl sub_02028124
_0202847E:
	pop {r3, pc}
	thumb_func_end sub_02028470

	thumb_func_start sub_02028480
sub_02028480: ; 0x02028480
	push {r4, lr}
	add r4, r3, #0
	bl sub_02028538
	add r1, r0, #0
	beq _02028492
	add r0, r4, #0
	bl sub_020281A0
_02028492:
	pop {r4, pc}
	thumb_func_end sub_02028480

	thumb_func_start sub_02028494
sub_02028494: ; 0x02028494
	push {r3, lr}
	cmp r1, #0
	bne _020284A2
	mov r1, #0x14
	bl sub_02028510
	pop {r3, pc}
_020284A2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02028494

	thumb_func_start sub_020284A8
sub_020284A8: ; 0x020284A8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	bl sub_02028538
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202818C
	add r5, r0, #0
	cmp r4, #0
	beq _020284C6
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020281A0
_020284C6:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020284A8

	thumb_func_start sub_020284CC
sub_020284CC: ; 0x020284CC
	push {r4, lr}
	add r4, r3, #0
	bl sub_02028538
	cmp r0, #0
	bne _020284E0
	add r0, r4, #0
	bl sub_02028124
	pop {r4, pc}
_020284E0:
	add r1, r4, #0
	bl sub_020281A0
	pop {r4, pc}
	thumb_func_end sub_020284CC

	thumb_func_start sub_020284E8
sub_020284E8: ; 0x020284E8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0202850A
_020284F4:
	add r0, r5, #0
	bl sub_0202817C
	cmp r0, #0
	bne _02028502
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02028502:
	add r4, r4, #1
	add r5, #0x38
	cmp r4, r6
	blt _020284F4
_0202850A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020284E8

	thumb_func_start sub_02028510
sub_02028510: ; 0x02028510
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	cmp r7, #0
	ble _02028532
_0202851E:
	add r0, r5, #0
	bl sub_0202817C
	cmp r0, #0
	beq _0202852A
	add r4, r4, #1
_0202852A:
	add r6, r6, #1
	add r5, #0x38
	cmp r6, r7
	blt _0202851E
_02028532:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028510

	thumb_func_start sub_02028538
sub_02028538: ; 0x02028538
	mov r3, #0
	cmp r1, #0
	bne _02028548
	cmp r2, #0x14
	bge _02028548
	mov r1, #0x38
	mul r1, r2
	add r3, r0, r1
_02028548:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028538

	thumb_func_start sub_0202854C
sub_0202854C: ; 0x0202854C
	ldr r0, _02028550 ; =0x000009B4
	bx lr
	; .align 2, 0
_02028550: .word 0x000009B4
	thumb_func_end sub_0202854C

	thumb_func_start sub_02028554
sub_02028554: ; 0x02028554
	mov r0, #0x94
	bx lr
	thumb_func_end sub_02028554

	thumb_func_start sub_02028558
sub_02028558: ; 0x02028558
	mov r0, #0x3c
	bx lr
	thumb_func_end sub_02028558

	thumb_func_start sub_0202855C
sub_0202855C: ; 0x0202855C
	push {r4, lr}
	mov r1, #0x3c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202855C

	thumb_func_start sub_02028574
sub_02028574: ; 0x02028574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	ldr r0, _020285D0 ; =0x021BF67C
	ldr r6, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x2c]
	lsl r6, r6, #5
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	lsl r0, r0, #5
	add r0, r1, r0
	mov r7, #0
	ldr r2, [sp]
	lsl r0, r0, #5
	add r0, r2, r0
	ldr r3, [sp, #4]
	lsl r0, r0, #5
	add r0, r3, r0
	lsl r0, r0, #5
	add r5, r5, r0
	ldr r2, _020285D4 ; =0x000009B4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x94
	mov r1, #0x9b
	str r5, [r0, #0]
	lsl r1, r1, #4
	ldrb r2, [r4, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_020285D0: .word 0x021BF67C
_020285D4: .word 0x000009B4
	thumb_func_end sub_02028574

	thumb_func_start sub_020285D8
sub_020285D8: ; 0x020285D8
	mov r1, #9
	mov r3, #0
	lsl r1, r1, #8
_020285DE:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _020285EA
	add r0, r3, #0
	bx lr
_020285EA:
	add r3, r3, #1
	cmp r3, #0x28
	blt _020285DE
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020285D8

	thumb_func_start sub_020285F8
sub_020285F8: ; 0x020285F8
	mov r1, #0x95
	mov r3, #0
	lsl r1, r1, #4
_020285FE:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _0202860A
	add r0, r3, #0
	bx lr
_0202860A:
	add r3, r3, #1
	cmp r3, #0x28
	blt _020285FE
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020285F8

	thumb_func_start sub_02028618
sub_02028618: ; 0x02028618
	ldr r1, _02028634 ; =0x00000928
	mov r3, #0
_0202861C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028628
	add r0, r3, #0
	bx lr
_02028628:
	add r3, r3, #1
	cmp r3, #0x28
	blt _0202861C
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
_02028634: .word 0x00000928
	thumb_func_end sub_02028618

	thumb_func_start sub_02028638
sub_02028638: ; 0x02028638
	ldr r1, _02028654 ; =0x000008D8
	mov r3, #0
_0202863C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028648
	add r0, r3, #0
	bx lr
_02028648:
	add r3, r3, #1
	cmp r3, #0x28
	blt _0202863C
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
_02028654: .word 0x000008D8
	thumb_func_end sub_02028638

	thumb_func_start sub_02028658
sub_02028658: ; 0x02028658
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	bl sub_020298B0
	ldr r1, _02028748 ; =0x020E5B44
	add r6, r0, #0
	ldrb r2, [r1]
	add r0, sp, #8
	strb r2, [r0, #6]
	ldrb r2, [r1, #1]
	strb r2, [r0, #7]
	ldrb r2, [r1, #2]
	strb r2, [r0, #8]
	ldrb r2, [r1, #3]
	strb r2, [r0, #9]
	ldrb r2, [r1, #4]
	strb r2, [r0, #0xa]
	ldrb r2, [r1, #5]
	strb r2, [r0, #0xb]
	ldrb r2, [r1, #6]
	strb r2, [r0]
	ldrb r2, [r1, #7]
	strb r2, [r0, #1]
	ldrb r2, [r1, #8]
	strb r2, [r0, #2]
	ldrb r2, [r1, #9]
	strb r2, [r0, #3]
	ldrb r2, [r1, #0xa]
	strb r2, [r0, #4]
	ldrb r1, [r1, #0xb]
	strb r1, [r0, #5]
	ldr r0, [sp]
	cmp r0, #0
	ble _02028744
	str r0, [sp, #4]
	cmp r0, #0x63
	ble _020286A8
	mov r0, #0x63
	str r0, [sp, #4]
_020286A8:
	add r0, r6, #0
	add r0, #0x94
	ldr r3, [r0, #0]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02028720
	add r7, sp, #0xc
	add r7, #2
_020286BC:
	mov r2, #0
_020286BE:
	ldr r0, _0202874C ; =0x0000055C
	add r4, r6, r2
	ldrb r5, [r4, r0]
	cmp r5, #0
	beq _0202870E
	ldr r0, _02028750 ; =0x5D588B65
	ldrb r1, [r7, r5]
	mul r0, r3
	ldr r3, _02028754 ; =0x00269EC3
	add r3, r0, r3
	cmp r1, #0
	bne _020286DA
	lsr r0, r3, #0x10
	b _020286E0
_020286DA:
	lsr r0, r3, #0x10
	mul r1, r0
	lsr r0, r1, #0x10
_020286E0:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #8
	ldrb r0, [r0, r5]
	add r0, r0, r1
	mov r1, #0x17
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r1, r0, r1
	cmp r1, #0x63
	bge _02028706
	mov r1, #0x17
	lsl r1, r1, #6
	ldrb r1, [r4, r1]
	add r1, r1, r0
	mov r0, #0x17
	lsl r0, r0, #6
	strb r1, [r4, r0]
	b _0202870E
_02028706:
	mov r0, #0x17
	mov r1, #0x63
	lsl r0, r0, #6
	strb r1, [r4, r0]
_0202870E:
	add r2, r2, #1
	cmp r2, #0x64
	blt _020286BE
	mov r0, ip
	add r1, r0, #1
	ldr r0, [sp, #4]
	mov ip, r1
	cmp r1, r0
	blt _020286BC
_02028720:
	add r0, r6, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, r1, r0
	bl sub_0201D30C
	add r1, r6, #0
	add r1, #0x94
	str r0, [r1, #0]
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r6, r1]
_02028744:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02028748: .word 0x020E5B44
_0202874C: .word 0x0000055C
_02028750: .word 0x5D588B65
_02028754: .word 0x00269EC3
	thumb_func_end sub_02028658

	thumb_func_start sub_02028758
sub_02028758: ; 0x02028758
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_020298B0
	cmp r4, #0
	blt _02028788
	cmp r5, #0
	bne _02028788
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, r4
	bge _0202877C
	mov r1, #0
	add r0, #0x98
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
_0202877C:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	add r0, #0x98
	sub r1, r1, r4
	str r1, [r0, #0]
_02028788:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02028758

	thumb_func_start sub_0202878C
sub_0202878C: ; 0x0202878C
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020287AE
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #2
	bne _020287AE
	add r1, r0, #0
	mov r2, #0
	add r1, #0x9c
	strb r2, [r1]
_020287AE:
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020287CC
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020287CC
	mov r2, #0x5a
	add r1, r0, #0
	lsl r2, r2, #4
	add r1, #0x98
	str r2, [r1, #0]
_020287CC:
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020287DC
	mov r1, #2
	add r0, #0x9c
	strb r1, [r0]
_020287DC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202878C

	thumb_func_start sub_020287E0
sub_020287E0: ; 0x020287E0
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #0
	bne _020287F6
	mov r1, #1
	add r0, #0x9c
	strb r1, [r0]
_020287F6:
	pop {r3, pc}
	thumb_func_end sub_020287E0

	thumb_func_start sub_020287F8
sub_020287F8: ; 0x020287F8
	push {r3, lr}
	bl sub_020298B0
	add r1, r0, #0
	add r1, #0x9c
	ldrb r1, [r1]
	cmp r1, #1
	bne _0202880E
	mov r1, #0
	add r0, #0x9c
	strb r1, [r0]
_0202880E:
	pop {r3, pc}
	thumb_func_end sub_020287F8

	thumb_func_start sub_02028810
sub_02028810: ; 0x02028810
	push {r3, lr}
	bl sub_020298B0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #2
	beq _02028822
	mov r0, #1
	pop {r3, pc}
_02028822:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02028810

	thumb_func_start sub_02028828
sub_02028828: ; 0x02028828
	mov r1, #1
	add r0, #0x9d
	strb r1, [r0]
	bx lr
	thumb_func_end sub_02028828

	thumb_func_start sub_02028830
sub_02028830: ; 0x02028830
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _020288C0 ; =0x0000010E
	add r6, r1, #0
	ldrb r0, [r7, r0]
	mov r4, #0
	add r5, r7, #0
	str r0, [sp]
_02028840:
	add r0, r6, #0
	bl sub_02025F20
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	cmp r1, r0
	beq _020288BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02028840
	ldr r0, [sp]
	cmp r0, #5
	blt _02028862
	bl sub_02022974
_02028862:
	add r0, r6, #0
	bl sub_02025EF0
	ldr r1, [sp]
	add r2, r7, #0
	add r2, #0xb4
	lsl r1, r1, #4
	add r1, r2, r1
	mov r2, #0x10
	bl sub_020C4DB0
	add r0, r6, #0
	bl sub_02025F20
	ldr r1, [sp]
	lsl r1, r1, #2
	add r1, r7, r1
	add r1, #0xa0
	str r0, [r1, #0]
	add r0, r6, #0
	bl sub_02025FD8
	ldr r1, [sp]
	add r2, r7, r1
	mov r1, #0x41
	lsl r1, r1, #2
	strb r0, [r2, r1]
	add r0, r6, #0
	bl sub_02025FCC
	ldr r1, [sp]
	add r2, r7, r1
	ldr r1, _020288C4 ; =0x00000109
	strb r0, [r2, r1]
	add r0, r1, #5
	ldrb r0, [r7, r0]
	add r2, r0, #1
	add r0, r1, #5
	strb r2, [r7, r0]
	ldrb r0, [r7, r0]
	cmp r0, #5
	blo _020288BC
	mov r2, #0
	add r0, r1, #5
	strb r2, [r7, r0]
_020288BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020288C0: .word 0x0000010E
_020288C4: .word 0x00000109
	thumb_func_end sub_02028830

	thumb_func_start sub_020288C8
sub_020288C8: ; 0x020288C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02028928 ; =0x0000010E
	ldrb r0, [r5, r0]
	sub r0, r0, r2
	sub r4, r0, #1
	bpl _020288D8
	add r4, r4, #5
_020288D8:
	add r7, r5, #0
	lsl r0, r4, #4
	add r7, #0xb4
	str r0, [sp]
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02028922
	add r0, r1, #0
	bl sub_02025E6C
	ldr r1, [sp]
	add r6, r0, #0
	add r1, r7, r1
	bl sub_02025EC0
	ldr r1, _0202892C ; =0x00000109
	add r2, r5, r4
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02025FD0
	mov r1, #0x41
	add r2, r5, r4
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	add r0, r6, #0
	bl sub_02025FDC
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xa0
	ldr r1, [r1, #0]
	add r0, r6, #0
	bl sub_02025F1C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02028922:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028928: .word 0x0000010E
_0202892C: .word 0x00000109
	thumb_func_end sub_020288C8

	thumb_func_start sub_02028930
sub_02028930: ; 0x02028930
	add r0, #0x94
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028930

	thumb_func_start sub_02028938
sub_02028938: ; 0x02028938
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0xb
	bge _02028944
	bl sub_02022974
_02028944:
	cmp r4, #0x3c
	blt _0202894C
	bl sub_02022974
_0202894C:
	sub r4, #0xb
	ldr r0, _02028958 ; =0x02100920
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_02028958: .word 0x02100920
	thumb_func_end sub_02028938

	thumb_func_start sub_0202895C
sub_0202895C: ; 0x0202895C
	push {r3, r4, r5, r6}
	mov r6, #0
	mov r2, #0x81
	add r5, r6, #0
	lsl r2, r2, #4
_02028966:
	add r4, r0, r5
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _02028978
	mov r0, #0x81
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r6, #1
	b _0202897E
_02028978:
	add r5, r5, #1
	cmp r5, #0xc8
	blt _02028966
_0202897E:
	add r0, r6, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0202895C

	thumb_func_start sub_02028984
sub_02028984: ; 0x02028984
	mov r1, #0x81
	mov r3, #0
	lsl r1, r1, #4
_0202898A:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _02028996
	mov r0, #1
	bx lr
_02028996:
	add r3, r3, #1
	cmp r3, #0xc8
	blt _0202898A
	mov r0, #0
	bx lr
	thumb_func_end sub_02028984

	thumb_func_start sub_020289A0
sub_020289A0: ; 0x020289A0
	mov r1, #0x81
	mov r3, #0
	lsl r1, r1, #4
_020289A6:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _020289B4
	add r3, r3, #1
	cmp r3, #0xc8
	blt _020289A6
_020289B4:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_020289A0

	thumb_func_start sub_020289B8
sub_020289B8: ; 0x020289B8
	add r1, r0, r1
	mov r0, #0x81
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020289B8

	thumb_func_start sub_020289C4
sub_020289C4: ; 0x020289C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02028AFC
	cmp r0, #0
	beq _020289D6
	bl sub_02022974
_020289D6:
	mov r0, #0x81
	add r1, r5, r4
	lsl r0, r0, #4
	add r6, r4, #0
	ldrb r7, [r1, r0]
	cmp r4, #0xc7
	bge _020289F6
	mov r1, #0x81
	add r0, r0, #1
	lsl r1, r1, #4
_020289EA:
	add r3, r5, r6
	ldrb r2, [r3, r0]
	add r6, r6, #1
	cmp r6, #0xc7
	strb r2, [r3, r1]
	blt _020289EA
_020289F6:
	ldr r0, _02028A0C ; =0x000008D7
	mov r2, #0
	strb r2, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, #1
	bl sub_02028B48
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028A0C: .word 0x000008D7
	thumb_func_end sub_020289C4

	thumb_func_start sub_02028A10
sub_02028A10: ; 0x02028A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	mov r4, #0
	add r5, r0, #0
	sub r0, r4, #1
	str r0, [sp, #4]
	mov r0, #0x81
	lsl r0, r0, #4
	str r1, [sp, #8]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #0xc
	mov r2, #0xc8
	bl sub_020C4DB0
	ldr r2, [sp, #8]
	add r1, sp, #0xc
	add r0, r4, #0
	add r7, r1, r2
_02028A36:
	ldr r2, [sp, #8]
	cmp r0, r2
	beq _02028A48
	ldrb r6, [r1]
	mov r2, #0x81
	add r3, r5, r4
	lsl r2, r2, #4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028A48:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028A5A
	ldrb r6, [r7]
	mov r2, #0x81
	add r3, r5, r4
	lsl r2, r2, #4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028A5A:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0xc8
	blt _02028A36
	ldr r0, [sp, #8]
	mov r3, #0
	add r2, r0, #1
	mov r0, #0x9a
	lsl r0, r0, #4
_02028A6C:
	add r1, r5, r3
	ldrb r1, [r1, r0]
	cmp r2, r1
	bne _02028A78
	str r3, [sp, #4]
	b _02028A7E
_02028A78:
	add r3, r3, #1
	cmp r3, #0xf
	blt _02028A6C
_02028A7E:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_02028B48
	mov r2, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	mvn r2, r2
	bl sub_02028B48
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	cmp r0, r1
	beq _02028AC6
	ldr r1, [sp]
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _02028AB8
	add r0, r1, #0
	add r2, r0, #1
	ldr r0, [sp, #4]
	add sp, #0xd4
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #4
	strb r2, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_02028AB8:
	add r0, r1, #0
	add r2, r0, #2
	ldr r0, [sp, #4]
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #4
	strb r2, [r1, r0]
_02028AC6:
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028A10

	thumb_func_start sub_02028ACC
sub_02028ACC: ; 0x02028ACC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #1
	bge _02028ADC
	bl sub_02022974
_02028ADC:
	cmp r6, #0xf
	ble _02028AE4
	bl sub_02022974
_02028AE4:
	sub r0, r6, #1
	add r1, r5, r0
	mov r0, #0x9a
	add r2, r4, #1
	lsl r0, r0, #4
	strb r2, [r1, r0]
	mov r0, #0x81
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02028ACC

	thumb_func_start sub_02028AFC
sub_02028AFC: ; 0x02028AFC
	push {r3, r4}
	add r3, r1, #1
	mov r1, #0x9a
	mov r4, #0
	lsl r1, r1, #4
_02028B06:
	add r2, r0, r4
	ldrb r2, [r2, r1]
	cmp r3, r2
	bne _02028B14
	mov r0, #1
	pop {r3, r4}
	bx lr
_02028B14:
	add r4, r4, #1
	cmp r4, #0xf
	blt _02028B06
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02028AFC

	thumb_func_start sub_02028B20
sub_02028B20: ; 0x02028B20
	sub r1, r1, #1
	cmp r1, #0xf
	bge _02028B30
	add r1, r0, r1
	mov r0, #0x9a
	mov r2, #0
	lsl r0, r0, #4
	strb r2, [r1, r0]
_02028B30:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028B20

	thumb_func_start sub_02028B34
sub_02028B34: ; 0x02028B34
	mov r1, #0x9a
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r3, _02028B44 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0xf
	bx r3
	nop
_02028B44: .word sub_020C4CF4
	thumb_func_end sub_02028B34

	thumb_func_start sub_02028B48
sub_02028B48: ; 0x02028B48
	push {r4, r5, r6, r7}
	mov r6, #0x9a
	lsl r6, r6, #4
	mov r4, #0
	add r1, r1, #1
	add r7, r6, #0
_02028B54:
	add r3, r0, r4
	ldrb r5, [r3, r7]
	cmp r5, r1
	ble _02028B66
	mov r5, #0x9a
	lsl r5, r5, #4
	ldrb r5, [r3, r5]
	add r5, r5, r2
	strb r5, [r3, r6]
_02028B66:
	add r4, r4, #1
	cmp r4, #0xf
	blt _02028B54
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_02028B48

	thumb_func_start sub_02028B70
sub_02028B70: ; 0x02028B70
	mov r1, #9
	mov r3, #0
	lsl r1, r1, #8
_02028B76:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028B84
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028B76
_02028B84:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028B70

	thumb_func_start sub_02028B88
sub_02028B88: ; 0x02028B88
	add r1, r0, r1
	mov r0, #9
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028B88

	thumb_func_start sub_02028B94
sub_02028B94: ; 0x02028B94
	push {r3, r4, r5, r6}
	mov r2, #9
	add r3, r0, r1
	lsl r2, r2, #8
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028BB2
	ldr r3, _02028BC0 ; =0x00000901
	sub r4, r3, #1
_02028BA6:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028BA6
_02028BB2:
	ldr r1, _02028BC4 ; =0x00000927
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02028BC0: .word 0x00000901
_02028BC4: .word 0x00000927
	thumb_func_end sub_02028B94

	thumb_func_start sub_02028BC8
sub_02028BC8: ; 0x02028BC8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020285D8
	sub r1, r4, #1
	cmp r0, r1
	beq _02028BE4
	add r1, r5, r0
	mov r0, #9
	lsl r0, r0, #8
	strb r6, [r1, r0]
	mov r4, #1
_02028BE4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02028BC8

	thumb_func_start sub_02028BE8
sub_02028BE8: ; 0x02028BE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #8
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl sub_020C4DB0
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028C0A:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028C1C
	ldrb r6, [r1]
	mov r2, #9
	add r3, r5, r4
	lsl r2, r2, #8
	strb r6, [r3, r2]
	add r4, r4, #1
_02028C1C:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028C2E
	ldrb r6, [r7]
	mov r2, #9
	add r3, r5, r4
	lsl r2, r2, #8
	strb r6, [r3, r2]
	add r4, r4, #1
_02028C2E:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028C0A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028BE8

	thumb_func_start sub_02028C3C
sub_02028C3C: ; 0x02028C3C
	mov r1, #0x95
	mov r3, #0
	lsl r1, r1, #4
_02028C42:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028C50
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028C42
_02028C50:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02028C3C

	thumb_func_start sub_02028C54
sub_02028C54: ; 0x02028C54
	add r1, r0, r1
	mov r0, #0x95
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02028C54

	thumb_func_start sub_02028C60
sub_02028C60: ; 0x02028C60
	add r1, r0, r1
	ldr r0, _02028C68 ; =0x00000978
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028C68: .word 0x00000978
	thumb_func_end sub_02028C60

	thumb_func_start sub_02028C6C
sub_02028C6C: ; 0x02028C6C
	push {r4, r5, r6, r7}
	add r2, r0, #0
	mov r0, #0x95
	add r3, r2, r1
	lsl r0, r0, #4
	ldrb r0, [r3, r0]
	cmp r1, #0x27
	mov ip, r0
	bge _02028C9A
	ldr r7, _02028CA8 ; =0x00000951
	add r4, r7, #0
	add r5, r7, #0
	sub r3, r7, #1
	add r4, #0x28
	add r5, #0x27
_02028C8A:
	add r0, r2, r1
	ldrb r6, [r0, r7]
	add r1, r1, #1
	cmp r1, #0x27
	strb r6, [r0, r3]
	ldrb r6, [r0, r4]
	strb r6, [r0, r5]
	blt _02028C8A
_02028C9A:
	ldr r0, _02028CAC ; =0x00000977
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, ip
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02028CA8: .word 0x00000951
_02028CAC: .word 0x00000977
	thumb_func_end sub_02028C6C

	thumb_func_start sub_02028CB0
sub_02028CB0: ; 0x02028CB0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_020285F8
	sub r1, r4, #1
	cmp r0, r1
	beq _02028CD2
	add r1, r5, r0
	mov r0, #0x95
	lsl r0, r0, #4
	strb r6, [r1, r0]
	add r0, #0x28
	strb r7, [r1, r0]
	mov r4, #1
_02028CD2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02028CB0

	thumb_func_start sub_02028CD8
sub_02028CD8: ; 0x02028CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r7, r0, #0
	mov r0, #0x95
	lsl r0, r0, #4
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r7, r0
	add r1, sp, #0x34
	mov r2, #0x28
	mov r4, #0
	bl sub_020C4DB0
	ldr r0, _02028D54 ; =0x00000978
	add r1, sp, #0xc
	add r0, r7, r0
	mov r2, #0x28
	bl sub_020C4DB0
	ldr r3, [sp]
	add r1, sp, #0x34
	add r3, r1, r3
	mov ip, r3
	ldr r3, [sp]
	add r2, sp, #0xc
	add r3, r2, r3
	add r0, r4, #0
	str r3, [sp, #8]
_02028D10:
	ldr r3, [sp]
	cmp r0, r3
	beq _02028D28
	ldrb r5, [r1]
	mov r3, #0x95
	add r6, r7, r4
	lsl r3, r3, #4
	strb r5, [r6, r3]
	ldrb r5, [r2]
	add r3, #0x28
	add r4, r4, #1
	strb r5, [r6, r3]
_02028D28:
	ldr r3, [sp, #4]
	cmp r0, r3
	bne _02028D44
	mov r3, ip
	ldrb r5, [r3]
	mov r3, #0x95
	add r6, r7, r4
	lsl r3, r3, #4
	strb r5, [r6, r3]
	ldr r3, [sp, #8]
	add r4, r4, #1
	ldrb r5, [r3]
	ldr r3, _02028D54 ; =0x00000978
	strb r5, [r6, r3]
_02028D44:
	add r0, r0, #1
	add r1, r1, #1
	add r2, r2, #1
	cmp r0, #0x28
	blt _02028D10
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02028D54: .word 0x00000978
	thumb_func_end sub_02028CD8

	thumb_func_start sub_02028D58
sub_02028D58: ; 0x02028D58
	ldr r1, _02028D70 ; =0x00000928
	mov r3, #0
_02028D5C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028D6A
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028D5C
_02028D6A:
	add r0, r3, #0
	bx lr
	nop
_02028D70: .word 0x00000928
	thumb_func_end sub_02028D58

	thumb_func_start sub_02028D74
sub_02028D74: ; 0x02028D74
	add r1, r0, r1
	ldr r0, _02028D7C ; =0x00000928
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028D7C: .word 0x00000928
	thumb_func_end sub_02028D74

	thumb_func_start sub_02028D80
sub_02028D80: ; 0x02028D80
	push {r3, r4, r5, r6}
	ldr r2, _02028DA8 ; =0x00000928
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028D9C
	ldr r3, _02028DAC ; =0x00000929
	sub r4, r3, #1
_02028D90:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028D90
_02028D9C:
	ldr r1, _02028DB0 ; =0x0000094F
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02028DA8: .word 0x00000928
_02028DAC: .word 0x00000929
_02028DB0: .word 0x0000094F
	thumb_func_end sub_02028D80

	thumb_func_start sub_02028DB4
sub_02028DB4: ; 0x02028DB4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02028618
	sub r1, r4, #1
	cmp r0, r1
	beq _02028DCE
	add r1, r5, r0
	ldr r0, _02028DD4 ; =0x00000928
	mov r4, #1
	strb r6, [r1, r0]
_02028DCE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02028DD4: .word 0x00000928
	thumb_func_end sub_02028DB4

	thumb_func_start sub_02028DD8
sub_02028DD8: ; 0x02028DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02028E24 ; =0x00000928
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl sub_020C4DB0
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028DF8:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028E08
	ldrb r6, [r1]
	ldr r2, _02028E24 ; =0x00000928
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028E08:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028E18
	ldrb r6, [r7]
	ldr r2, _02028E24 ; =0x00000928
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028E18:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028DF8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02028E24: .word 0x00000928
	thumb_func_end sub_02028DD8

	thumb_func_start sub_02028E28
sub_02028E28: ; 0x02028E28
	ldr r1, _02028E40 ; =0x000008D8
	mov r3, #0
_02028E2C:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0
	beq _02028E3A
	add r3, r3, #1
	cmp r3, #0x28
	blt _02028E2C
_02028E3A:
	add r0, r3, #0
	bx lr
	nop
_02028E40: .word 0x000008D8
	thumb_func_end sub_02028E28

	thumb_func_start sub_02028E44
sub_02028E44: ; 0x02028E44
	add r1, r0, r1
	ldr r0, _02028E4C ; =0x000008D8
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02028E4C: .word 0x000008D8
	thumb_func_end sub_02028E44

	thumb_func_start sub_02028E50
sub_02028E50: ; 0x02028E50
	push {r3, r4, r5, r6}
	ldr r2, _02028E78 ; =0x000008D8
	add r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r1, #0x27
	bge _02028E6C
	ldr r3, _02028E7C ; =0x000008D9
	sub r4, r3, #1
_02028E60:
	add r6, r0, r1
	ldrb r5, [r6, r3]
	add r1, r1, #1
	cmp r1, #0x27
	strb r5, [r6, r4]
	blt _02028E60
_02028E6C:
	ldr r1, _02028E80 ; =0x000008FF
	mov r3, #0
	strb r3, [r0, r1]
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02028E78: .word 0x000008D8
_02028E7C: .word 0x000008D9
_02028E80: .word 0x000008FF
	thumb_func_end sub_02028E50

	thumb_func_start sub_02028E84
sub_02028E84: ; 0x02028E84
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02028638
	sub r1, r4, #1
	cmp r0, r1
	beq _02028E9E
	add r1, r5, r0
	ldr r0, _02028EA4 ; =0x000008D8
	mov r4, #1
	strb r6, [r1, r0]
_02028E9E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02028EA4: .word 0x000008D8
	thumb_func_end sub_02028E84

	thumb_func_start sub_02028EA8
sub_02028EA8: ; 0x02028EA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02028EF4 ; =0x000008D8
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r5, r0
	add r1, sp, #8
	mov r2, #0x28
	mov r4, #0
	bl sub_020C4DB0
	ldr r2, [sp, #4]
	add r1, sp, #8
	add r0, r4, #0
	add r7, r1, r2
_02028EC8:
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _02028ED8
	ldrb r6, [r1]
	ldr r2, _02028EF4 ; =0x000008D8
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028ED8:
	ldr r2, [sp]
	cmp r0, r2
	bne _02028EE8
	ldrb r6, [r7]
	ldr r2, _02028EF4 ; =0x000008D8
	add r3, r5, r4
	strb r6, [r3, r2]
	add r4, r4, #1
_02028EE8:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #0x28
	blt _02028EC8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02028EF4: .word 0x000008D8
	thumb_func_end sub_02028EA8

	thumb_func_start sub_02028EF8
sub_02028EF8: ; 0x02028EF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #0x40
	blt _02028F0A
	bl sub_02022974
_02028F0A:
	ldr r0, _02028F3C ; =0x0000010F
	add r1, r5, r4
	strb r7, [r1, r0]
	lsl r1, r4, #1
	add r1, r4, r1
	add r2, r0, #0
	add r1, r5, r1
	add r2, #0x40
	strb r6, [r1, r2]
	mov r2, #0xf
	lsl r2, r2, #8
	add r3, r6, #0
	and r3, r2
	asr r4, r3, #8
	ldr r3, [sp, #0x18]
	and r2, r3
	asr r2, r2, #4
	add r4, r4, r2
	add r2, r0, #0
	add r2, #0x41
	strb r4, [r1, r2]
	add r0, #0x42
	strb r3, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02028F3C: .word 0x0000010F
	thumb_func_end sub_02028EF8

	thumb_func_start sub_02028F40
sub_02028F40: ; 0x02028F40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F4E
	bl sub_02022974
_02028F4E:
	ldr r0, _02028F58 ; =0x0000010F
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02028F58: .word 0x0000010F
	thumb_func_end sub_02028F40

	thumb_func_start sub_02028F5C
sub_02028F5C: ; 0x02028F5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F6A
	bl sub_02022974
_02028F6A:
	lsl r0, r4, #1
	add r0, r4, r0
	add r1, r5, r0
	ldr r0, _02028F84 ; =0x0000014F
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028F84: .word 0x0000014F
	thumb_func_end sub_02028F5C

	thumb_func_start sub_02028F88
sub_02028F88: ; 0x02028F88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028F96
	bl sub_02022974
_02028F96:
	lsl r0, r4, #1
	add r0, r4, r0
	add r1, r5, r0
	ldr r0, _02028FB0 ; =0x00000151
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028FB0: .word 0x00000151
	thumb_func_end sub_02028F88

	thumb_func_start sub_02028FB4
sub_02028FB4: ; 0x02028FB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x40
	blt _02028FC2
	bl sub_02022974
_02028FC2:
	ldr r0, _02028FDC ; =0x0000010F
	mov r1, #0
	add r2, r5, r4
	strb r1, [r2, r0]
	add r0, #0x40
	add r2, r5, r0
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r2, r0
	mov r2, #3
	bl sub_020C4CF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02028FDC: .word 0x0000010F
	thumb_func_end sub_02028FB4

	thumb_func_start sub_02028FE0
sub_02028FE0: ; 0x02028FE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #0x10
	blt _02028FF2
	bl sub_02022974
_02028FF2:
	lsl r2, r4, #1
	ldr r1, _0202902C ; =0x0000050C
	add r0, r5, r4
	add r2, r4, r2
	add r4, r5, r2
	add r2, r1, #0
	mov r5, #0xf
	strb r7, [r0, r1]
	add r2, #0x10
	strb r6, [r4, r2]
	lsl r5, r5, #8
	add r2, r6, #0
	and r2, r5
	asr r3, r2, #8
	ldr r2, [sp, #0x18]
	and r5, r2
	asr r5, r5, #4
	add r5, r3, r5
	add r3, r1, #0
	add r3, #0x11
	strb r5, [r4, r3]
	add r3, r1, #0
	add r3, #0x12
	strb r2, [r4, r3]
	ldr r2, [sp, #0x1c]
	add r1, #0x40
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202902C: .word 0x0000050C
	thumb_func_end sub_02028FE0

	thumb_func_start sub_02029030
sub_02029030: ; 0x02029030
	add r1, r0, r1
	ldr r0, _02029038 ; =0x0000050C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029038: .word 0x0000050C
	thumb_func_end sub_02029030

	thumb_func_start sub_0202903C
sub_0202903C: ; 0x0202903C
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029058 ; =0x0000051C
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029058: .word 0x0000051C
	thumb_func_end sub_0202903C

	thumb_func_start sub_0202905C
sub_0202905C: ; 0x0202905C
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029078 ; =0x0000051E
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029078: .word 0x0000051E
	thumb_func_end sub_0202905C

	thumb_func_start sub_0202907C
sub_0202907C: ; 0x0202907C
	add r1, r0, r1
	ldr r0, _02029084 ; =0x0000054C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029084: .word 0x0000054C
	thumb_func_end sub_0202907C

	thumb_func_start sub_02029088
sub_02029088: ; 0x02029088
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x64
	blt _0202909A
	bl sub_02022974
_0202909A:
	ldr r1, _020290D4 ; =0x0000055C
	add r0, r5, r4
	strb r6, [r0, r1]
	lsl r1, r4, #1
	add r1, r4, r1
	add r4, r5, r1
	mov r5, #0xf
	lsl r5, r5, #8
	add r2, r7, #0
	and r2, r5
	asr r3, r2, #8
	ldr r2, [sp, #0x18]
	ldr r1, _020290D8 ; =0x00000688
	and r5, r2
	asr r5, r5, #4
	add r5, r3, r5
	strb r7, [r4, r1]
	add r3, r1, #1
	strb r5, [r4, r3]
	add r3, r1, #2
	strb r2, [r4, r3]
	add r2, r1, #0
	ldr r3, [sp, #0x1c]
	sub r2, #0x64
	strb r3, [r0, r2]
	ldr r2, [sp, #0x20]
	sub r1, #0xc8
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020290D4: .word 0x0000055C
_020290D8: .word 0x00000688
	thumb_func_end sub_02029088

	thumb_func_start sub_020290DC
sub_020290DC: ; 0x020290DC
	add r1, r0, r1
	ldr r0, _020290E4 ; =0x0000055C
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020290E4: .word 0x0000055C
	thumb_func_end sub_020290DC

	thumb_func_start sub_020290E8
sub_020290E8: ; 0x020290E8
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029104 ; =0x00000688
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029104: .word 0x00000688
	thumb_func_end sub_020290E8

	thumb_func_start sub_02029108
sub_02029108: ; 0x02029108
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029124 ; =0x0000068A
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029124: .word 0x0000068A
	thumb_func_end sub_02029108

	thumb_func_start sub_02029128
sub_02029128: ; 0x02029128
	add r1, r0, r1
	ldr r0, _02029130 ; =0x00000624
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02029130: .word 0x00000624
	thumb_func_end sub_02029128

	thumb_func_start sub_02029134
sub_02029134: ; 0x02029134
	add r1, r0, r1
	mov r0, #0x17
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029134

	thumb_func_start sub_02029140
sub_02029140: ; 0x02029140
	push {r4, r5, r6, r7}
	ldr r3, _0202919C ; =0x00000211
	add r7, r0, #0
	mov ip, r1
	mov r0, #0
	add r1, r7, #0
	sub r4, r3, #1
	sub r5, r3, #2
_02029150:
	ldrb r6, [r1, r5]
	cmp r6, #0
	bne _0202918A
	ldrb r6, [r1, r4]
	cmp r6, #0
	bne _0202918A
	ldrb r6, [r1, r3]
	cmp r6, #0
	bne _0202918A
	lsl r1, r0, #1
	add r1, r0, r1
	mov r5, #0xf
	ldr r4, _020291A0 ; =0x0000020F
	add r1, r7, r1
	mov r3, ip
	strb r3, [r1, r4]
	lsl r5, r5, #8
	mov r3, ip
	and r3, r5
	asr r6, r3, #8
	add r3, r2, #0
	and r3, r5
	asr r3, r3, #4
	add r5, r6, r3
	add r3, r4, #1
	strb r5, [r1, r3]
	add r3, r4, #2
	strb r2, [r1, r3]
	b _02029192
_0202918A:
	add r0, r0, #1
	add r1, r1, #3
	cmp r0, #0xff
	blt _02029150
_02029192:
	cmp r0, #0xff
	bne _02029198
	mov r0, #0
_02029198:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0202919C: .word 0x00000211
_020291A0: .word 0x0000020F
	thumb_func_end sub_02029140

	thumb_func_start sub_020291A4
sub_020291A4: ; 0x020291A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	blt _020291B2
	bl sub_02022974
_020291B2:
	ldr r0, _020291C8 ; =0x0000020F
	mov r2, #3
	add r1, r5, r0
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
	pop {r3, r4, r5, pc}
	nop
_020291C8: .word 0x0000020F
	thumb_func_end sub_020291A4

	thumb_func_start sub_020291CC
sub_020291CC: ; 0x020291CC
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _020291E8 ; =0x0000020F
	ldrb r2, [r1, r0]
	add r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_020291E8: .word 0x0000020F
	thumb_func_end sub_020291CC

	thumb_func_start sub_020291EC
sub_020291EC: ; 0x020291EC
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, _02029208 ; =0x00000211
	ldrb r2, [r1, r0]
	sub r0, r0, #1
	ldrb r0, [r1, r0]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r2, r0
	bx lr
	nop
_02029208: .word 0x00000211
	thumb_func_end sub_020291EC

	thumb_func_start sub_0202920C
sub_0202920C: ; 0x0202920C
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0202921C
	mov r0, #1
	bx lr
_0202921C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202920C

	thumb_func_start sub_02029220
sub_02029220: ; 0x02029220
	mov r2, #0x9b
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	mov r1, #0xf0
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029220

	thumb_func_start sub_02029234
sub_02029234: ; 0x02029234
	mov r1, #0x9b
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
	thumb_func_end sub_02029234

	thumb_func_start sub_02029240
sub_02029240: ; 0x02029240
	mov r2, #0x9b
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029240

	thumb_func_start sub_02029250
sub_02029250: ; 0x02029250
	push {r3, r4}
	cmp r1, #0x2c
	blt _0202926A
	cmp r1, #0x3b
	bgt _0202926A
	ldr r2, _02029270 ; =0x0000080C
	mov r3, #1
	sub r1, #0x2c
	ldr r4, [r0, r2]
	lsl r3, r1
	add r1, r4, #0
	orr r1, r3
	str r1, [r0, r2]
_0202926A:
	pop {r3, r4}
	bx lr
	nop
_02029270: .word 0x0000080C
	thumb_func_end sub_02029250

	thumb_func_start sub_02029274
sub_02029274: ; 0x02029274
	cmp r1, #0x2c
	blt _0202927C
	cmp r1, #0x3b
	ble _02029280
_0202927C:
	mov r0, #1
	bx lr
_02029280:
	ldr r2, _02029298 ; =0x0000080C
	sub r1, #0x2c
	ldr r3, [r0, r2]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	beq _02029294
	mov r0, #0
_02029294:
	bx lr
	nop
_02029298: .word 0x0000080C
	thumb_func_end sub_02029274

	thumb_func_start sub_0202929C
sub_0202929C: ; 0x0202929C
	ldr r1, _020292B0 ; =0x000009AF
	ldrb r2, [r0, r1]
	cmp r2, #0x63
	blo _020292AA
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
_020292AA:
	add r2, r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_020292B0: .word 0x000009AF
	thumb_func_end sub_0202929C

	thumb_func_start sub_020292B4
sub_020292B4: ; 0x020292B4
	ldr r1, _020292BC ; =0x000009AF
	ldrb r0, [r0, r1]
	bx lr
	nop
_020292BC: .word 0x000009AF
	thumb_func_end sub_020292B4

	thumb_func_start sub_020292C0
sub_020292C0: ; 0x020292C0
	ldr r3, _020292C8 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x94
	bx r3
	; .align 2, 0
_020292C8: .word sub_020C4CF4
	thumb_func_end sub_020292C0

	thumb_func_start sub_020292CC
sub_020292CC: ; 0x020292CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2d
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x2d
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x90
	strb r1, [r0]
	add r4, #0x91
	strb r1, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020292CC

	thumb_func_start sub_02029300
sub_02029300: ; 0x02029300
	mov r1, #0
	add r0, #0x91
	strb r1, [r0]
	bx lr
	thumb_func_end sub_02029300

	thumb_func_start sub_02029308
sub_02029308: ; 0x02029308
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, #0x20
	blt _0202931A
	bl sub_02022974
_0202931A:
	cmp r6, #0x20
	blt _02029322
	bl sub_02022974
_02029322:
	ldr r0, [sp, #0x18]
	cmp r0, #0x20
	blt _0202932C
	bl sub_02022974
_0202932C:
	cmp r5, #0
	bne _02029334
	bl sub_02022974
_02029334:
	cmp r4, #0
	beq _02029360
	cmp r4, #0x10
	bge _0202934E
	sub r1, r4, #1
	lsl r0, r1, #1
	add r0, r1, r0
	strb r6, [r5, r0]
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	strb r1, [r0, #1]
	strb r7, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_0202934E:
	sub r4, #0x10
	lsl r2, r4, #1
	add r0, r5, r2
	add r0, #0x2d
	strb r6, [r0]
	add r0, r5, r2
	ldr r1, [sp, #0x18]
	add r0, #0x2e
	strb r1, [r0]
_02029360:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029308

	thumb_func_start sub_02029364
sub_02029364: ; 0x02029364
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_020293B0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02029308
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029364

	thumb_func_start sub_02029384
sub_02029384: ; 0x02029384
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blt _02029394
	mov r0, #5
	bx lr
_02029394:
	cmp r0, #0xa
	blt _0202939C
	mov r0, #4
	bx lr
_0202939C:
	cmp r0, #3
	blt _020293A4
	mov r0, #3
	bx lr
_020293A4:
	cmp r0, #1
	blt _020293AC
	mov r0, #2
	bx lr
_020293AC:
	mov r0, #1
	bx lr
	thumb_func_end sub_02029384

	thumb_func_start sub_020293B0
sub_020293B0: ; 0x020293B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _020293BE
	bl sub_02022974
_020293BE:
	cmp r5, #0
	bne _020293CA
	add r0, r4, #0
	bl sub_02029384
	pop {r3, r4, r5, pc}
_020293CA:
	cmp r5, #0x10
	bge _020293DA
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r4, r0
	ldrb r0, [r0, #2]
	pop {r3, r4, r5, pc}
_020293DA:
	sub r5, #0x10
	lsl r1, r5, #1
	add r0, r4, r1
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _020293F6
	add r0, r4, r1
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _020293F6
	mov r0, #6
	pop {r3, r4, r5, pc}
_020293F6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020293B0

	thumb_func_start sub_020293FC
sub_020293FC: ; 0x020293FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _0202940A
	bl sub_02022974
_0202940A:
	cmp r5, #0
	bne _02029412
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_02029412:
	cmp r5, #0x10
	bge _02029420
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_02029420:
	sub r5, #0x10
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0x2d
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020293FC

	thumb_func_start sub_0202942C
sub_0202942C: ; 0x0202942C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	blt _0202943A
	bl sub_02022974
_0202943A:
	cmp r5, #0
	bne _02029442
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02029442:
	cmp r5, #0x10
	bge _02029452
	sub r1, r5, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r4, r0
	ldrb r0, [r0, #1]
	pop {r3, r4, r5, pc}
_02029452:
	sub r5, #0x10
	lsl r0, r5, #1
	add r0, r4, r0
	add r0, #0x2e
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202942C

	thumb_func_start sub_02029460
sub_02029460: ; 0x02029460
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blo _02029470
	mov r0, #0
	bx lr
_02029470:
	cmp r0, #0xa
	blo _02029478
	mov r0, #6
	bx lr
_02029478:
	cmp r0, #3
	blo _02029480
	mov r0, #0xb
	bx lr
_02029480:
	cmp r0, #1
	blo _02029488
	mov r0, #0xf
	bx lr
_02029488:
	mov r0, #0x10
	bx lr
	thumb_func_end sub_02029460

	thumb_func_start sub_0202948C
sub_0202948C: ; 0x0202948C
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blo _0202949C
	mov r0, #0xf
	bx lr
_0202949C:
	cmp r0, #0xa
	blo _020294A4
	mov r0, #0xf
	bx lr
_020294A4:
	cmp r0, #3
	blo _020294AC
	mov r0, #0xf
	bx lr
_020294AC:
	cmp r0, #1
	blo _020294B4
	mov r0, #0xc
	bx lr
_020294B4:
	mov r0, #0xa
	bx lr
	thumb_func_end sub_0202948C

	thumb_func_start sub_020294B8
sub_020294B8: ; 0x020294B8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020294B8

	thumb_func_start sub_020294C0
sub_020294C0: ; 0x020294C0
	push {r3, lr}
	bl sub_0202958C
	cmp r0, #4
	bne _020294CE
	mov r0, #1
	pop {r3, pc}
_020294CE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020294C0

	thumb_func_start sub_020294D4
sub_020294D4: ; 0x020294D4
	ldr r3, [r0, #0]
	ldr r2, _020294E4 ; =0xFFF00000
	and r3, r2
	ldr r2, _020294E8 ; =0x000FFFFF
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020294E4: .word 0xFFF00000
_020294E8: .word 0x000FFFFF
	thumb_func_end sub_020294D4

	thumb_func_start sub_020294EC
sub_020294EC: ; 0x020294EC
	ldr r0, [r0, #4]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020294EC

	thumb_func_start sub_020294F4
sub_020294F4: ; 0x020294F4
	push {r3, r4}
	ldr r2, [r0, #4]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029518 ; =0x000F423F
	cmp r4, r1
	bhs _02029512
	ldr r1, _0202951C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029520 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #4]
_02029512:
	pop {r3, r4}
	bx lr
	nop
_02029518: .word 0x000F423F
_0202951C: .word 0xFFF00000
_02029520: .word 0x000FFFFF
	thumb_func_end sub_020294F4

	thumb_func_start sub_02029524
sub_02029524: ; 0x02029524
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029524

	thumb_func_start sub_0202952C
sub_0202952C: ; 0x0202952C
	push {r3, r4}
	ldr r2, [r0, #8]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029550 ; =0x000F423F
	cmp r4, r1
	bhs _0202954A
	ldr r1, _02029554 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029558 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #8]
_0202954A:
	pop {r3, r4}
	bx lr
	nop
_02029550: .word 0x000F423F
_02029554: .word 0xFFF00000
_02029558: .word 0x000FFFFF
	thumb_func_end sub_0202952C

	thumb_func_start sub_0202955C
sub_0202955C: ; 0x0202955C
	push {r3, r4}
	ldr r2, [r0, #0xc]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029580 ; =0x000F423F
	cmp r4, r1
	bhs _0202957A
	ldr r1, _02029584 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029588 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0xc]
_0202957A:
	pop {r3, r4}
	bx lr
	nop
_02029580: .word 0x000F423F
_02029584: .word 0xFFF00000
_02029588: .word 0x000FFFFF
	thumb_func_end sub_0202955C

	thumb_func_start sub_0202958C
sub_0202958C: ; 0x0202958C
	ldr r0, [r0, #0x38]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	cmp r0, #0x32
	blt _0202959A
	mov r0, #4
	bx lr
_0202959A:
	cmp r0, #0xa
	blt _020295A2
	mov r0, #3
	bx lr
_020295A2:
	cmp r0, #3
	blt _020295AA
	mov r0, #2
	bx lr
_020295AA:
	cmp r0, #1
	blt _020295B2
	mov r0, #1
	bx lr
_020295B2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202958C

	thumb_func_start sub_020295B8
sub_020295B8: ; 0x020295B8
	ldr r0, [r0, #0x38]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020295B8

	thumb_func_start sub_020295C0
sub_020295C0: ; 0x020295C0
	push {r3, r4}
	ldr r2, [r0, #0x38]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020295E4 ; =0x000F423F
	cmp r4, r1
	bhs _020295DE
	ldr r1, _020295E8 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020295EC ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x38]
_020295DE:
	pop {r3, r4}
	bx lr
	nop
_020295E4: .word 0x000F423F
_020295E8: .word 0xFFF00000
_020295EC: .word 0x000FFFFF
	thumb_func_end sub_020295C0

	thumb_func_start sub_020295F0
sub_020295F0: ; 0x020295F0
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020295F0

	thumb_func_start sub_020295F8
sub_020295F8: ; 0x020295F8
	push {r4, r5}
	cmp r1, #0
	ble _02029618
	ldr r4, [r0, #0x10]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _02029630 ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _02029618
	ldr r1, _02029634 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x10]
	pop {r4, r5}
	bx lr
_02029618:
	ldr r3, [r0, #0x10]
	ldr r2, _02029634 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _02029638 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x10]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02029630: .word 0x000F423F
_02029634: .word 0xFFF00000
_02029638: .word 0x000FFFFF
	thumb_func_end sub_020295F8

	thumb_func_start sub_0202963C
sub_0202963C: ; 0x0202963C
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202963C

	thumb_func_start sub_02029644
sub_02029644: ; 0x02029644
	push {r4, r5}
	cmp r1, #0
	ble _02029664
	ldr r4, [r0, #0x14]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _0202967C ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _02029664
	ldr r1, _02029680 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
_02029664:
	ldr r3, [r0, #0x14]
	ldr r2, _02029680 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _02029684 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0202967C: .word 0x000F423F
_02029680: .word 0xFFF00000
_02029684: .word 0x000FFFFF
	thumb_func_end sub_02029644

	thumb_func_start sub_02029688
sub_02029688: ; 0x02029688
	push {r4, r5}
	cmp r1, #0
	ble _020296A8
	ldr r4, [r0, #0x18]
	lsl r2, r4, #0xc
	lsr r5, r2, #0xc
	ldr r2, _020296C0 ; =0x000F423F
	sub r3, r2, r1
	cmp r5, r3
	bls _020296A8
	ldr r1, _020296C4 ; =0xFFF00000
	and r1, r4
	orr r1, r2
	str r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
_020296A8:
	ldr r3, [r0, #0x18]
	ldr r2, _020296C4 ; =0xFFF00000
	and r2, r3
	lsl r3, r3, #0xc
	lsr r3, r3, #0xc
	add r3, r3, r1
	ldr r1, _020296C8 ; =0x000FFFFF
	and r1, r3
	orr r1, r2
	str r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_020296C0: .word 0x000F423F
_020296C4: .word 0xFFF00000
_020296C8: .word 0x000FFFFF
	thumb_func_end sub_02029688

	thumb_func_start sub_020296CC
sub_020296CC: ; 0x020296CC
	ldr r0, [r0, #0x1c]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020296CC

	thumb_func_start sub_020296D4
sub_020296D4: ; 0x020296D4
	push {r3, r4}
	ldr r2, [r0, #0x1c]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020296F8 ; =0x000F423F
	cmp r4, r1
	bhs _020296F2
	ldr r1, _020296FC ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029700 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x1c]
_020296F2:
	pop {r3, r4}
	bx lr
	nop
_020296F8: .word 0x000F423F
_020296FC: .word 0xFFF00000
_02029700: .word 0x000FFFFF
	thumb_func_end sub_020296D4

	thumb_func_start sub_02029704
sub_02029704: ; 0x02029704
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029704

	thumb_func_start sub_0202970C
sub_0202970C: ; 0x0202970C
	push {r3, r4}
	ldr r2, [r0, #0x20]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029730 ; =0x000F423F
	cmp r4, r1
	bhs _0202972A
	ldr r1, _02029734 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029738 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x20]
_0202972A:
	pop {r3, r4}
	bx lr
	nop
_02029730: .word 0x000F423F
_02029734: .word 0xFFF00000
_02029738: .word 0x000FFFFF
	thumb_func_end sub_0202970C

	thumb_func_start sub_0202973C
sub_0202973C: ; 0x0202973C
	ldr r0, [r0, #0x24]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202973C

	thumb_func_start sub_02029744
sub_02029744: ; 0x02029744
	push {r3, r4}
	ldr r2, [r0, #0x24]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029768 ; =0x000F423F
	cmp r4, r1
	bhs _02029762
	ldr r1, _0202976C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029770 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x24]
_02029762:
	pop {r3, r4}
	bx lr
	nop
_02029768: .word 0x000F423F
_0202976C: .word 0xFFF00000
_02029770: .word 0x000FFFFF
	thumb_func_end sub_02029744

	thumb_func_start sub_02029774
sub_02029774: ; 0x02029774
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_02029774

	thumb_func_start sub_0202977C
sub_0202977C: ; 0x0202977C
	push {r3, r4}
	ldr r2, [r0, #0x28]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020297A0 ; =0x000F423F
	cmp r4, r1
	bhs _0202979A
	ldr r1, _020297A4 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020297A8 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x28]
_0202979A:
	pop {r3, r4}
	bx lr
	nop
_020297A0: .word 0x000F423F
_020297A4: .word 0xFFF00000
_020297A8: .word 0x000FFFFF
	thumb_func_end sub_0202977C

	thumb_func_start sub_020297AC
sub_020297AC: ; 0x020297AC
	ldr r0, [r0, #0x2c]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020297AC

	thumb_func_start sub_020297B4
sub_020297B4: ; 0x020297B4
	push {r3, r4}
	ldr r2, [r0, #0x2c]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _020297D8 ; =0x000F423F
	cmp r4, r1
	bhs _020297D2
	ldr r1, _020297DC ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _020297E0 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x2c]
_020297D2:
	pop {r3, r4}
	bx lr
	nop
_020297D8: .word 0x000F423F
_020297DC: .word 0xFFF00000
_020297E0: .word 0x000FFFFF
	thumb_func_end sub_020297B4

	thumb_func_start sub_020297E4
sub_020297E4: ; 0x020297E4
	ldr r0, [r0, #0x30]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_020297E4

	thumb_func_start sub_020297EC
sub_020297EC: ; 0x020297EC
	push {r3, r4}
	ldr r2, [r0, #0x30]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029810 ; =0x000F423F
	cmp r4, r1
	bhs _0202980A
	ldr r1, _02029814 ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029818 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x30]
_0202980A:
	pop {r3, r4}
	bx lr
	nop
_02029810: .word 0x000F423F
_02029814: .word 0xFFF00000
_02029818: .word 0x000FFFFF
	thumb_func_end sub_020297EC

	thumb_func_start sub_0202981C
sub_0202981C: ; 0x0202981C
	ldr r0, [r0, #0x34]
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	bx lr
	thumb_func_end sub_0202981C

	thumb_func_start sub_02029824
sub_02029824: ; 0x02029824
	push {r3, r4}
	ldr r2, [r0, #0x34]
	lsl r1, r2, #0xc
	lsr r4, r1, #0xc
	ldr r1, _02029848 ; =0x000F423F
	cmp r4, r1
	bhs _02029842
	ldr r1, _0202984C ; =0xFFF00000
	add r3, r2, #0
	and r3, r1
	ldr r1, _02029850 ; =0x000FFFFF
	add r2, r4, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x34]
_02029842:
	pop {r3, r4}
	bx lr
	nop
_02029848: .word 0x000F423F
_0202984C: .word 0xFFF00000
_02029850: .word 0x000FFFFF
	thumb_func_end sub_02029824

	thumb_func_start sub_02029854
sub_02029854: ; 0x02029854
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x8c
	strh r1, [r4]
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x90
	strb r3, [r1]
	mov r1, #1
	add r0, #0x91
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029854

	thumb_func_start sub_02029874
sub_02029874: ; 0x02029874
	add r0, #0x8c
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029874

	thumb_func_start sub_0202987C
sub_0202987C: ; 0x0202987C
	add r0, #0x8e
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202987C

	thumb_func_start sub_02029884
sub_02029884: ; 0x02029884
	add r0, #0x90
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029884

	thumb_func_start sub_0202988C
sub_0202988C: ; 0x0202988C
	add r0, #0x91
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202988C

	thumb_func_start sub_02029894
sub_02029894: ; 0x02029894
	ldr r3, _0202989C ; =sub_020245BC
	mov r1, #0xc
	bx r3
	nop
_0202989C: .word sub_020245BC
	thumb_func_end sub_02029894

	thumb_func_start sub_020298A0
sub_020298A0: ; 0x020298A0
	push {r3, lr}
	mov r1, #0xc
	bl sub_020245BC
	add r0, #0x50
	pop {r3, pc}
	thumb_func_end sub_020298A0

	thumb_func_start sub_020298AC
sub_020298AC: ; 0x020298AC
	add r0, #0x50
	bx lr
	thumb_func_end sub_020298AC

	thumb_func_start sub_020298B0
sub_020298B0: ; 0x020298B0
	ldr r3, _020298B8 ; =sub_020245BC
	mov r1, #0xc
	bx r3
	nop
_020298B8: .word sub_020245BC
	thumb_func_end sub_020298B0

	thumb_func_start sub_020298BC
sub_020298BC: ; 0x020298BC
	ldr r1, _020298D0 ; =0x00001234
	cmp r0, r1
	beq _020298C8
	ldr r1, _020298D4 ; =0x00002345
	cmp r0, r1
	bne _020298CC
_020298C8:
	mov r0, #1
	bx lr
_020298CC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020298D0: .word 0x00001234
_020298D4: .word 0x00002345
	thumb_func_end sub_020298BC

	thumb_func_start sub_020298D8
sub_020298D8: ; 0x020298D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r2, #0
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	add r7, r3, #0
	bl ov22_02259250
	add r0, r4, #0
	bl ov22_022591E0
	add r4, r0, #0
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02029902
	bl sub_02022974
_02029902:
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02029910
	bl sub_02022974
_02029910:
	mov r0, #0x7f
	mvn r0, r0
	cmp r4, r0
	bgt _0202991C
	bl sub_02022974
_0202991C:
	ldr r0, [sp, #4]
	strb r0, [r5]
	ldr r0, [sp]
	strb r0, [r6]
	strb r4, [r7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020298D8

	thumb_func_start sub_0202992C
sub_0202992C: ; 0x0202992C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	add r2, r5, #0
	strh r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0x75
	add r2, #0xa
	bl sub_02074470
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x33
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x31
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x32
	strb r7, [r0]
	add r1, sp, #8
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	add r5, #0x30
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202992C

	thumb_func_start sub_02029990
sub_02029990: ; 0x02029990
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, sp, #4
	add r2, sp, #4
	add r1, #2
	add r2, #1
	add r3, sp, #4
	bl sub_020298D8
	add r3, sp, #4
	mov r0, #0
	ldrsb r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	add r0, r5, #0
	bl sub_0202992C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029990

	thumb_func_start sub_020299C0
sub_020299C0: ; 0x020299C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	add r4, r2, #0
	add r1, #0x20
	mov r2, #8
	bl sub_02023DF0
	add r5, #0x34
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020299C0

	thumb_func_start sub_020299D8
sub_020299D8: ; 0x020299D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	add r3, r2, #0
	str r0, [sp, #0xc]
	ldrh r1, [r5, #8]
	add r0, r4, #0
	bl sub_02073D80
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #0x75
	add r2, #0xa
	bl sub_02074B30
	add r5, #0x33
	add r0, r4, #0
	mov r1, #0x70
	add r2, r5, #0
	bl sub_02074B30
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020299D8

	thumb_func_start sub_02029A18
sub_02029A18: ; 0x02029A18
	strb r1, [r0]
	ldr r1, _02029A28 ; =0xFFFFFFF0
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	add r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
_02029A28: .word 0xFFFFFFF0
	thumb_func_end sub_02029A18

	thumb_func_start sub_02029A2C
sub_02029A2C: ; 0x02029A2C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x3d
	blo _02029A3C
	bl sub_02022974
_02029A3C:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x18
	lsr r0, r4, #3
	lsl r0, r0, #0x18
	mov r2, #0xf
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r6, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029A2C

	thumb_func_start sub_02029A70
sub_02029A70: ; 0x02029A70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x3d
	blo _02029A7E
	bl sub_02022974
_02029A7E:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1d
	lsr r0, r4, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1a
	add r2, r0, #0
	lsr r1, r1, #0x18
	lsr r2, r1
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #9
	bls _02029AAC
	mov r0, #9
_02029AAC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029A70

	thumb_func_start sub_02029AB0
sub_02029AB0: ; 0x02029AB0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02029AC0
	bl sub_02022974
_02029AC0:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsr r0, r6, #5
	lsl r0, r0, #0x18
	mov r2, #1
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r4, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029AB0

	thumb_func_start sub_02029AF0
sub_02029AF0: ; 0x02029AF0
	lsr r2, r1, #5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r3, [r0, r2]
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r3, #0
	lsr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029AF0

	thumb_func_start sub_02029B18
sub_02029B18: ; 0x02029B18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x12
	bls _02029B28
	bl sub_02022974
_02029B28:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x18
	lsr r0, r6, #2
	lsl r0, r0, #0x18
	mov r2, #0xff
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r4, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029B18

	thumb_func_start sub_02029B5C
sub_02029B5C: ; 0x02029B5C
	lsr r2, r1, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r0, [r0, r2]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	lsr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_02029B5C

	thumb_func_start sub_02029B80
sub_02029B80: ; 0x02029B80
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029B88:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02029B5C
	cmp r0, #0x12
	beq _02029B98
	add r5, r5, #1
_02029B98:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029B88
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029B80

	thumb_func_start sub_02029BA4
sub_02029BA4: ; 0x02029BA4
	cmp r0, #0x3d
	bhs _02029BAC
	mov r0, #1
	bx lr
_02029BAC:
	mov r0, #0
	bx lr
	thumb_func_end sub_02029BA4

	thumb_func_start sub_02029BB0
sub_02029BB0: ; 0x02029BB0
	push {r4, r5, r6, lr}
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl sub_020D5124
	mov r4, #0
	add r5, #0x28
	mov r6, #0x12
_02029BC2:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02029B18
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029BC2
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029BB0

	thumb_func_start sub_02029BD8
sub_02029BD8: ; 0x02029BD8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_020765B8
	mov r1, #0x80
	strb r1, [r5]
	mov r1, #0x28
	sub r1, r1, r0
	mov r0, #0x8d
	sub r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	add r0, #0x28
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029BD8

	thumb_func_start sub_02029BFC
sub_02029BFC: ; 0x02029BFC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02029C4C ; =0x00001234
	str r0, [sp]
	add r5, r0, #0
	add r7, r4, #0
_02029C08:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x74
	bl sub_020D5124
	str r6, [r5, #0]
	add r4, r4, #1
	add r5, #0x74
	cmp r4, #0xb
	blt _02029C08
	ldr r0, [sp]
	ldr r1, _02029C50 ; =0x000004FC
	ldr r7, _02029C4C ; =0x00001234
	mov r6, #0
	add r4, r0, r1
	add r5, r0, #0
_02029C28:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x98
	bl sub_020D5124
	ldr r0, _02029C50 ; =0x000004FC
	add r6, r6, #1
	str r7, [r5, r0]
	add r4, #0x98
	add r5, #0x98
	cmp r6, #5
	blt _02029C28
	ldr r1, _02029C54 ; =0x000007F4
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_02029BB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02029C4C: .word 0x00001234
_02029C50: .word 0x000004FC
_02029C54: .word 0x000007F4
	thumb_func_end sub_02029BFC

	thumb_func_start sub_02029C58
sub_02029C58: ; 0x02029C58
	ldr r0, _02029C5C ; =0x00000834
	bx lr
	; .align 2, 0
_02029C5C: .word 0x00000834
	thumb_func_end sub_02029C58

	thumb_func_start sub_02029C60
sub_02029C60: ; 0x02029C60
	mov r0, #0x74
	bx lr
	thumb_func_end sub_02029C60

	thumb_func_start sub_02029C64
sub_02029C64: ; 0x02029C64
	mov r0, #0x98
	bx lr
	thumb_func_end sub_02029C64

	thumb_func_start sub_02029C68
sub_02029C68: ; 0x02029C68
	push {r4, lr}
	mov r1, #0x74
	bl sub_02018144
	mov r1, #0
	mov r2, #0x74
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _02029C84 ; =0x00001234
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_02029C84: .word 0x00001234
	thumb_func_end sub_02029C68

	thumb_func_start sub_02029C88
sub_02029C88: ; 0x02029C88
	push {r4, lr}
	mov r1, #0x98
	bl sub_02018144
	mov r1, #0
	mov r2, #0x98
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _02029CA4 ; =0x00001234
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_02029CA4: .word 0x00001234
	thumb_func_end sub_02029C88

	thumb_func_start sub_02029CA8
sub_02029CA8: ; 0x02029CA8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0xb
	blt _02029CB6
	bl sub_02022974
_02029CB6:
	mov r0, #0x74
	add r4, r6, #0
	mul r4, r0
	ldr r0, [r5, r4]
	bl sub_020298BC
	cmp r0, #0
	bne _02029CCA
	bl sub_02022974
_02029CCA:
	add r0, r5, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029CA8

	thumb_func_start sub_02029CD0
sub_02029CD0: ; 0x02029CD0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #5
	blt _02029CDE
	bl sub_02022974
_02029CDE:
	mov r0, #0x98
	add r4, r6, #0
	mul r4, r0
	ldr r0, _02029D00 ; =0x000004FC
	add r1, r5, r4
	ldr r0, [r1, r0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029CF6
	bl sub_02022974
_02029CF6:
	ldr r0, _02029D00 ; =0x000004FC
	add r0, r5, r0
	add r0, r0, r4
	pop {r4, r5, r6, pc}
	nop
_02029D00: .word 0x000004FC
	thumb_func_end sub_02029CD0

	thumb_func_start sub_02029D04
sub_02029D04: ; 0x02029D04
	ldr r1, _02029D0C ; =0x000007F4
	add r0, r0, r1
	bx lr
	nop
_02029D0C: .word 0x000007F4
	thumb_func_end sub_02029D04

	thumb_func_start sub_02029D10
sub_02029D10: ; 0x02029D10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xb
	blt _02029D1E
	bl sub_02022974
_02029D1E:
	mov r0, #0x74
	mul r0, r4
	add r0, r5, r0
	bl sub_02029F34
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029D10

	thumb_func_start sub_02029D2C
sub_02029D2C: ; 0x02029D2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #5
	blt _02029D3A
	bl sub_02022974
_02029D3A:
	ldr r0, _02029D4C ; =0x000004FC
	add r1, r5, r0
	mov r0, #0x98
	mul r0, r4
	add r0, r1, r0
	bl sub_0202A218
	pop {r3, r4, r5, pc}
	nop
_02029D4C: .word 0x000004FC
	thumb_func_end sub_02029D2C

	thumb_func_start sub_02029D50
sub_02029D50: ; 0x02029D50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #1
	bl sub_02029D94
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029D72
	add r0, r6, r5
	cmp r0, #9
	bls _02029D7A
	mov r4, #0
	b _02029D7A
_02029D72:
	add r0, r6, r5
	cmp r0, #1
	bls _02029D7A
	mov r4, #0
_02029D7A:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029D50

	thumb_func_start sub_02029D80
sub_02029D80: ; 0x02029D80
	push {r3, lr}
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02029D8E
	mov r0, #1
	pop {r3, pc}
_02029D8E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02029D80

	thumb_func_start sub_02029D94
sub_02029D94: ; 0x02029D94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x64
	blo _02029DA2
	bl sub_02022974
_02029DA2:
	add r0, r5, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029DB8
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	pop {r3, r4, r5, pc}
_02029DB8:
	cmp r5, #0x3d
	bhs _02029DC0
	bl sub_02022974
_02029DC0:
	sub r5, #0x3d
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	add r4, #0x20
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02029AF0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029D94

	thumb_func_start sub_02029DD4
sub_02029DD4: ; 0x02029DD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x12
	blo _02029DE2
	bl sub_02022974
_02029DE2:
	add r5, #0x28
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029B5C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029DD4

	thumb_func_start sub_02029DF0
sub_02029DF0: ; 0x02029DF0
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029DF8:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D94
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #0x64
	blt _02029DF8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029DF0

	thumb_func_start sub_02029E0C
sub_02029E0C: ; 0x02029E0C
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029E14:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02029E22
	add r5, r5, #1
_02029E22:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029E14
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029E0C

	thumb_func_start sub_02029E2C
sub_02029E2C: ; 0x02029E2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x64
	blo _02029E3C
	bl sub_02022974
_02029E3C:
	add r0, r4, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029E68
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	add r0, r0, r6
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #9
	bls _02029E5C
	mov r1, #9
_02029E5C:
	lsl r2, r4, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029A2C
	pop {r4, r5, r6, pc}
_02029E68:
	add r0, r5, #0
	lsl r1, r4, #0x18
	add r0, #0x20
	lsr r1, r1, #0x18
	bl sub_02029AF0
	add r0, r0, r6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bls _02029E80
	mov r6, #1
_02029E80:
	cmp r4, #0x3d
	bhs _02029E88
	bl sub_02022974
_02029E88:
	sub r4, #0x3d
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	add r5, #0x20
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02029AB0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029E2C

	thumb_func_start sub_02029EA0
sub_02029EA0: ; 0x02029EA0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x64
	blo _02029EB0
	bl sub_02022974
_02029EB0:
	add r0, r4, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029EDE
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	cmp r0, r6
	bls _02029ED0
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _02029ED2
_02029ED0:
	mov r1, #0
_02029ED2:
	lsl r2, r4, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029A2C
	pop {r4, r5, r6, pc}
_02029EDE:
	cmp r4, #0x3d
	bhs _02029EE6
	bl sub_02022974
_02029EE6:
	sub r4, #0x3d
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	add r5, #0x20
	lsl r2, r2, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_02029AB0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029EA0

	thumb_func_start sub_02029EFC
sub_02029EFC: ; 0x02029EFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x12
	blo _02029F0A
	bl sub_02022974
_02029F0A:
	add r0, r5, #0
	lsl r1, r4, #0x18
	add r0, #0x28
	lsr r1, r1, #0x18
	bl sub_02029B5C
	cmp r0, #0x12
	bne _02029F30
	add r0, r5, #0
	add r0, #0x28
	bl sub_02029B80
	lsl r2, r4, #0x18
	add r5, #0x28
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029B18
_02029F30:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029EFC

	thumb_func_start sub_02029F34
sub_02029F34: ; 0x02029F34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F46
	bl sub_02022974
_02029F46:
	ldr r1, [r4, #0]
	ldr r0, _02029F58 ; =0x00002345
	cmp r1, r0
	bne _02029F52
	mov r0, #1
	pop {r4, pc}
_02029F52:
	mov r0, #0
	pop {r4, pc}
	nop
_02029F58: .word 0x00002345
	thumb_func_end sub_02029F34

	thumb_func_start sub_02029F5C
sub_02029F5C: ; 0x02029F5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F6E
	bl sub_02022974
_02029F6E:
	ldr r0, _02029F7C ; =0x00002345
	str r0, [r4, #0]
	ldr r0, _02029F80 ; =0x020E4C44
	add r4, #0x71
	ldrb r0, [r0]
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
_02029F7C: .word 0x00002345
_02029F80: .word 0x020E4C44
	thumb_func_end sub_02029F5C

	thumb_func_start sub_02029F84
sub_02029F84: ; 0x02029F84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F96
	bl sub_02022974
_02029F96:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x74
	bl sub_020D5124
	ldr r0, _02029FA8 ; =0x00001234
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_02029FA8: .word 0x00001234
	thumb_func_end sub_02029F84

	thumb_func_start sub_02029FAC
sub_02029FAC: ; 0x02029FAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _02029FC2
	bl sub_02022974
_02029FC2:
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029990
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029FAC

	thumb_func_start sub_02029FD0
sub_02029FD0: ; 0x02029FD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl sub_0201525C
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r4, #4]
	bl sub_02015290
	add r7, r0, #0
	cmp r6, #0xa
	blt _0202A000
	bl sub_02022974
_0202A000:
	add r1, sp, #0xc
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, #0xfc
	cmp r1, r0
	blt _0202A010
	bl sub_02022974
_0202A010:
	add r0, sp, #0xc
	mov r1, #6
	ldrsh r0, [r0, r1]
	add r1, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _0202A024
	bl sub_02022974
_0202A024:
	mov r0, #0x7f
	mvn r0, r0
	cmp r7, r0
	bgt _0202A030
	bl sub_02022974
_0202A030:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x3c]
	str r0, [sp, #4]
	tst r0, r1
	beq _0202A040
	bl sub_02022974
_0202A040:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A04E
	bl sub_02022974
_0202A04E:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r1, r5, #0
	add r3, sp, #0xc
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r3, [sp, #8]
	add r1, #0x48
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02029A18
	ldr r1, [r5, #0x3c]
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029FD0

	thumb_func_start sub_0202A084
sub_0202A084: ; 0x0202A084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A098
	bl sub_02022974
_0202A098:
	add r5, #0x70
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A084

	thumb_func_start sub_0202A0A0
sub_0202A0A0: ; 0x0202A0A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A0B4
	bl sub_02022974
_0202A0B4:
	add r0, r5, #0
	add r0, #0x40
	bl sub_02014A84
	add r5, #0x40
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02014CF8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A0A0

	thumb_func_start sub_0202A0CC
sub_0202A0CC: ; 0x0202A0CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A0E0
	bl sub_02022974
_0202A0E0:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020D50B8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A0CC

	thumb_func_start sub_0202A0EC
sub_0202A0EC: ; 0x0202A0EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A102
	bl sub_02022974
_0202A102:
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020299C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A0EC

	thumb_func_start sub_0202A110
sub_0202A110: ; 0x0202A110
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _0202A11E
	bl sub_02022974
_0202A11E:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A12C
	bl sub_02022974
_0202A12C:
	mov r0, #1
	ldr r1, [r5, #0x3c]
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A110

	thumb_func_start sub_0202A138
sub_0202A138: ; 0x0202A138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A14A
	bl sub_02022974
_0202A14A:
	add r0, r4, #4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A138

	thumb_func_start sub_0202A150
sub_0202A150: ; 0x0202A150
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _0202A15E
	bl sub_02022974
_0202A15E:
	mov r0, #1
	ldr r1, [r5, #0x3c]
	lsl r0, r4
	tst r0, r1
	bne _0202A16C
	bl sub_02022974
_0202A16C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A17A
	bl sub_02022974
_0202A17A:
	add r5, #0x48
	lsl r0, r4, #2
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A150

	thumb_func_start sub_0202A184
sub_0202A184: ; 0x0202A184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A196
	bl sub_02022974
_0202A196:
	add r0, r4, #4
	bl sub_0202A5E8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A184

	thumb_func_start sub_0202A1A0
sub_0202A1A0: ; 0x0202A1A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1B4
	bl sub_02022974
_0202A1B4:
	add r0, r5, #4
	add r1, r4, #0
	bl sub_0202A5EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A1A0

	thumb_func_start sub_0202A1C0
sub_0202A1C0: ; 0x0202A1C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1D2
	bl sub_02022974
_0202A1D2:
	add r0, r4, #4
	bl sub_0202A5FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A1C0

	thumb_func_start sub_0202A1DC
sub_0202A1DC: ; 0x0202A1DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1EE
	bl sub_02022974
_0202A1EE:
	add r4, #0x70
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A1DC

	thumb_func_start sub_0202A1F4
sub_0202A1F4: ; 0x0202A1F4
	ldr r3, _0202A1FC ; =sub_02014C78
	add r0, #0x40
	mov r1, #0
	bx r3
	; .align 2, 0
_0202A1FC: .word sub_02014C78
	thumb_func_end sub_0202A1F4

	thumb_func_start sub_0202A200
sub_0202A200: ; 0x0202A200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A212
	bl sub_02022974
_0202A212:
	add r4, #0x71
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A200

	thumb_func_start sub_0202A218
sub_0202A218: ; 0x0202A218
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A22A
	bl sub_02022974
_0202A22A:
	ldr r1, [r4, #0]
	ldr r0, _0202A23C ; =0x00002345
	cmp r1, r0
	bne _0202A236
	mov r0, #1
	pop {r4, pc}
_0202A236:
	mov r0, #0
	pop {r4, pc}
	nop
_0202A23C: .word 0x00002345
	thumb_func_end sub_0202A218

	thumb_func_start sub_0202A240
sub_0202A240: ; 0x0202A240
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A252
	bl sub_02022974
_0202A252:
	ldr r0, _0202A258 ; =0x00002345
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_0202A258: .word 0x00002345
	thumb_func_end sub_0202A240

	thumb_func_start sub_0202A25C
sub_0202A25C: ; 0x0202A25C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A26E
	bl sub_02022974
_0202A26E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x98
	bl sub_020D5124
	ldr r0, _0202A280 ; =0x00001234
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0202A280: .word 0x00001234
	thumb_func_end sub_0202A25C

	thumb_func_start sub_0202A284
sub_0202A284: ; 0x0202A284
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A29A
	bl sub_02022974
_0202A29A:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029990
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202A284

	thumb_func_start sub_0202A2A8
sub_0202A2A8: ; 0x0202A2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl sub_0201525C
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r4, #4]
	bl sub_02015290
	add r7, r0, #0
	cmp r6, #0x14
	blt _0202A2D8
	bl sub_02022974
_0202A2D8:
	add r1, sp, #0xc
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, #0xfc
	cmp r1, r0
	blt _0202A2E8
	bl sub_02022974
_0202A2E8:
	add r0, sp, #0xc
	mov r1, #6
	ldrsh r0, [r0, r1]
	add r1, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _0202A2FC
	bl sub_02022974
_0202A2FC:
	mov r0, #0x7f
	mvn r0, r0
	cmp r7, r0
	bgt _0202A308
	bl sub_02022974
_0202A308:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x40]
	str r0, [sp, #4]
	tst r0, r1
	beq _0202A318
	bl sub_02022974
_0202A318:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A326
	bl sub_02022974
_0202A326:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r1, r5, #0
	add r3, sp, #0xc
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r3, [sp, #8]
	add r1, #0x44
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02029A18
	ldr r1, [r5, #0x40]
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x40]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A2A8

	thumb_func_start sub_0202A35C
sub_0202A35C: ; 0x0202A35C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A370
	bl sub_02022974
_0202A370:
	add r5, #0x94
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A35C

	thumb_func_start sub_0202A378
sub_0202A378: ; 0x0202A378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A38C
	bl sub_02022974
_0202A38C:
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A378

	thumb_func_start sub_0202A390
sub_0202A390: ; 0x0202A390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A3A4
	bl sub_02022974
_0202A3A4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x98
	bl sub_020D50B8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A390

	thumb_func_start sub_0202A3B0
sub_0202A3B0: ; 0x0202A3B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A3C8
	bl sub_02022974
_0202A3C8:
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	add r2, sp, #4
	bl sub_02029BD8
	add r5, #8
	str r6, [sp]
	add r3, sp, #4
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202992C
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A3B0

	thumb_func_start sub_0202A3EC
sub_0202A3EC: ; 0x0202A3EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r3, [sp, #4]
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	ldr r4, [sp, #0x24]
	cmp r6, #0x14
	blo _0202A402
	bl sub_02022974
_0202A402:
	cmp r7, #0x64
	blo _0202A40A
	bl sub_02022974
_0202A40A:
	mov r1, #1
	ldr r0, [sp, #4]
	lsl r1, r1, #8
	cmp r0, r1
	blt _0202A418
	bl sub_02022974
_0202A418:
	add r0, sp, #0x10
	ldrb r1, [r0, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	blt _0202A428
	bl sub_02022974
_0202A428:
	mov r0, #0x7f
	mvn r0, r0
	cmp r4, r0
	bgt _0202A434
	bl sub_02022974
_0202A434:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x40]
	str r0, [sp, #8]
	tst r0, r1
	beq _0202A444
	bl sub_02022974
_0202A444:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A452
	bl sub_02022974
_0202A452:
	mov r0, #0x38
	ldrsb r0, [r5, r0]
	cmp r0, r4
	blt _0202A460
	add r0, r0, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_0202A460:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r3, sp, #0x10
	add r1, r5, #0
	ldrb r3, [r3, #0x10]
	add r1, #0x44
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl sub_02029A18
	ldr r1, [r5, #0x40]
	ldr r0, [sp, #8]
	orr r0, r1
	str r0, [r5, #0x40]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A3EC

	thumb_func_start sub_0202A488
sub_0202A488: ; 0x0202A488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A496
	bl sub_02022974
_0202A496:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4A4
	bl sub_02022974
_0202A4A4:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	lsl r1, r4
	tst r1, r2
	bne _0202A4B2
	mov r0, #0
_0202A4B2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A488

	thumb_func_start sub_0202A4B4
sub_0202A4B4: ; 0x0202A4B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4CA
	bl sub_02022974
_0202A4CA:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020299C0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202A4B4

	thumb_func_start sub_0202A4D8
sub_0202A4D8: ; 0x0202A4D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4EA
	bl sub_02022974
_0202A4EA:
	add r4, #8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202A4D8

	thumb_func_start sub_0202A4F0
sub_0202A4F0: ; 0x0202A4F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A4FE
	bl sub_02022974
_0202A4FE:
	mov r0, #1
	ldr r1, [r5, #0x40]
	lsl r0, r4
	tst r0, r1
	bne _0202A50C
	bl sub_02022974
_0202A50C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A51A
	bl sub_02022974
_0202A51A:
	add r5, #0x44
	lsl r0, r4, #2
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A4F0

	thumb_func_start sub_0202A524
sub_0202A524: ; 0x0202A524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A538
	bl sub_02022974
_0202A538:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A5EC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A524

	thumb_func_start sub_0202A544
sub_0202A544: ; 0x0202A544
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A556
	bl sub_02022974
_0202A556:
	add r4, #8
	add r0, r4, #0
	bl sub_0202A5FC
	pop {r4, pc}
	thumb_func_end sub_0202A544

	thumb_func_start sub_0202A560
sub_0202A560: ; 0x0202A560
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A574
	bl sub_02022974
_0202A574:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020299D8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A560

	thumb_func_start sub_0202A580
sub_0202A580: ; 0x0202A580
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A58E
	bl sub_02022974
_0202A58E:
	mov r0, #1
	ldr r1, [r5, #0x40]
	lsl r0, r4
	tst r0, r1
	bne _0202A59C
	bl sub_02022974
_0202A59C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5AA
	bl sub_02022974
_0202A5AA:
	add r5, #0x44
	lsl r0, r4, #2
	add r0, r5, r0
	bl sub_0202A624
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A580

	thumb_func_start sub_0202A5B8
sub_0202A5B8: ; 0x0202A5B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5CA
	bl sub_02022974
_0202A5CA:
	add r4, #0x94
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A5B8

	thumb_func_start sub_0202A5D0
sub_0202A5D0: ; 0x0202A5D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5E2
	bl sub_02022974
_0202A5E2:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A5D0

	thumb_func_start sub_0202A5E8
sub_0202A5E8: ; 0x0202A5E8
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_0202A5E8

	thumb_func_start sub_0202A5EC
sub_0202A5EC: ; 0x0202A5EC
	add r2, r0, #0
	ldr r3, _0202A5F8 ; =sub_02023D28
	add r2, #0x20
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0202A5F8: .word sub_02023D28
	thumb_func_end sub_0202A5EC

	thumb_func_start sub_0202A5FC
sub_0202A5FC: ; 0x0202A5FC
	add r0, #0x34
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A5FC

	thumb_func_start sub_0202A604
sub_0202A604: ; 0x0202A604
	mov r1, #0x30
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A604

	thumb_func_start sub_0202A60C
sub_0202A60C: ; 0x0202A60C
	add r0, #0x31
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A60C

	thumb_func_start sub_0202A614
sub_0202A614: ; 0x0202A614
	add r0, #0x32
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A614

	thumb_func_start sub_0202A61C
sub_0202A61C: ; 0x0202A61C
	ldr r3, _0202A620 ; =sub_020299D8
	bx r3
	; .align 2, 0
_0202A620: .word sub_020299D8
	thumb_func_end sub_0202A61C

	thumb_func_start sub_0202A624
sub_0202A624: ; 0x0202A624
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202A624

	thumb_func_start sub_0202A628
sub_0202A628: ; 0x0202A628
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end sub_0202A628

	thumb_func_start sub_0202A62C
sub_0202A62C: ; 0x0202A62C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202A62C

	thumb_func_start sub_0202A630
sub_0202A630: ; 0x0202A630
	mov r1, #3
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A630

	thumb_func_start sub_0202A638
sub_0202A638: ; 0x0202A638
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #1
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_02029F34
	cmp r0, #1
	bne _0202A696
	ldr r1, _0202A6A4 ; =0xEDB88320
	add r0, sp, #4
	bl sub_020D3230
	add r0, sp, #4
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020D3328
	add r6, r0, #0
	mov r5, #0
_0202A668:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02029CA8
	add r4, r0, #0
	ldr r1, _0202A6A4 ; =0xEDB88320
	add r0, sp, #4
	bl sub_020D3230
	add r0, sp, #4
	add r1, r4, #0
	mov r2, #0x74
	bl sub_020D3328
	cmp r0, r6
	bne _0202A68E
	mov r0, #0
	str r0, [sp]
	b _0202A69A
_0202A68E:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0202A668
	b _0202A69A
_0202A696:
	mov r0, #0
	str r0, [sp]
_0202A69A:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202A6A4: .word 0xEDB88320
	thumb_func_end sub_0202A638

	thumb_func_start sub_0202A6A8
sub_0202A6A8: ; 0x0202A6A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r7, #0
	ldr r0, [sp]
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r7, #0
	str r3, [sp, #8]
	cmp r0, #0
	ble _0202A6E2
	add r4, r3, #0
_0202A6C0:
	ldr r0, [sp, #4]
	cmp r6, r0
	beq _0202A6D8
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0202A6D8
	add r0, r5, #0
	bl sub_0202A638
	cmp r0, #1
	bne _0202A6D8
	add r7, r7, #1
_0202A6D8:
	ldr r0, [sp]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0202A6C0
_0202A6E2:
	mov r4, #0xa
_0202A6E4:
	add r1, r4, r7
	cmp r1, #0xb
	bge _0202A702
	add r0, r5, #0
	bl sub_02029CA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02029CA8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202A0CC
_0202A702:
	sub r4, r4, #1
	cmp r4, #1
	bge _0202A6E4
	ldr r0, [sp]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _0202A74A
_0202A712:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _0202A73C
	ldr r0, [sp, #8]
	ldr r7, [r0, #0]
	cmp r7, #0
	beq _0202A73C
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202A638
	cmp r0, #1
	bne _0202A73C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02029CA8
	add r1, r7, #0
	add r6, r6, #1
	bl sub_0202A0CC
_0202A73C:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r4, r0
	blt _0202A712
_0202A74A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A6A8

	thumb_func_start sub_0202A750
sub_0202A750: ; 0x0202A750
	ldr r3, _0202A758 ; =sub_020245BC
	mov r1, #0xe
	bx r3
	nop
_0202A758: .word sub_020245BC
	thumb_func_end sub_0202A750

	thumb_func_start sub_0202A75C
sub_0202A75C: ; 0x0202A75C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x60
	bl sub_020C4CF4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r2, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r3, r4, #0
	str r0, [r4, #8]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xc]
_0202A782:
	ldrh r0, [r2, #0x24]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #0xe]
	add r3, r3, #2
	cmp r1, #8
	blt _0202A782
	mov r0, #0x34
	ldrsb r0, [r5, r0]
	mov r2, #0
	strb r0, [r4, #0x1e]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	add r0, r5, #0
	add r0, #0x36
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x37
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	strh r0, [r4, #0x2c]
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	add r0, r5, #0
	add r0, #0x48
_0202A7E2:
	ldrb r6, [r0]
	add r3, r1, #0
	add r3, #0x30
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #1]
	add r3, #0x31
	add r2, r2, #1
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #2]
	add r3, #0x32
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #3]
	add r3, #0x33
	add r0, r0, #4
	add r1, r1, #4
	strb r6, [r3]
	cmp r2, #0xa
	blt _0202A7E2
	add r0, r5, #0
	add r0, #0x70
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x58
	add r5, #0x71
	strb r1, [r0]
	ldrb r0, [r5]
	add r4, #0x59
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A75C

	thumb_func_start sub_0202A824
sub_0202A824: ; 0x0202A824
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02029C60
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r2, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r3, r4, #0
	str r0, [r4, #8]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xc]
_0202A84E:
	ldrh r0, [r2, #0xe]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #0x24]
	add r3, r3, #2
	cmp r1, #8
	blt _0202A84E
	mov r0, #0x1e
	ldrsb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0x1f]
	add r0, #0x35
	mov r2, #0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrh r1, [r5, #0x28]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2a]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2c]
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2e]
	add r0, #0x46
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
_0202A8B2:
	ldrb r6, [r0]
	add r3, r1, #0
	add r3, #0x48
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #1]
	add r3, #0x49
	add r2, r2, #1
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #2]
	add r3, #0x4a
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #3]
	add r3, #0x4b
	add r0, r0, #4
	add r1, r1, #4
	strb r6, [r3]
	cmp r2, #0xa
	blt _0202A8B2
	add r0, r5, #0
	add r0, #0x58
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	add r5, #0x59
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x71
	mov r2, #0
	strb r1, [r0]
	ldr r0, _0202A90C ; =0x0000FFFF
	add r1, r4, #0
_0202A8F8:
	add r2, r2, #1
	strh r0, [r1, #0xe]
	add r1, r1, #2
	cmp r2, #0xb
	blt _0202A8F8
	mov r0, #0
	add r4, #0x38
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_0202A90C: .word 0x0000FFFF
	thumb_func_end sub_0202A824

	thumb_func_start sub_0202A910
sub_0202A910: ; 0x0202A910
	mov r0, #8
	bx lr
	thumb_func_end sub_0202A910

	thumb_func_start sub_0202A914
sub_0202A914: ; 0x0202A914
	ldrb r0, [r0]
	cmp r0, #0x1e
	beq _0202A91E
	mov r0, #1
	bx lr
_0202A91E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A914

	thumb_func_start sub_0202A924
sub_0202A924: ; 0x0202A924
	mov r1, #0x1e
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A924

	thumb_func_start sub_0202A93C
sub_0202A93C: ; 0x0202A93C
	push {r4, lr}
	mov r1, #8
	bl sub_02018184
	add r4, r0, #0
	bl sub_0202A924
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A93C

	thumb_func_start sub_0202A950
sub_0202A950: ; 0x0202A950
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r0, [r0, #7]
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A950

	thumb_func_start sub_0202A974
sub_0202A974: ; 0x0202A974
	cmp r1, #6
	bhi _0202A9AA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202A984: ; jump table
	.short _0202A992 - _0202A984 - 2 ; case 0
	.short _0202A996 - _0202A984 - 2 ; case 1
	.short _0202A99A - _0202A984 - 2 ; case 2
	.short _0202A99E - _0202A984 - 2 ; case 3
	.short _0202A9A2 - _0202A984 - 2 ; case 4
	.short _0202A9A6 - _0202A984 - 2 ; case 5
	.short _0202A9AA - _0202A984 - 2 ; case 6
_0202A992:
	ldrb r0, [r0]
	bx lr
_0202A996:
	ldrb r0, [r0, #1]
	bx lr
_0202A99A:
	ldrb r0, [r0, #2]
	bx lr
_0202A99E:
	ldrb r0, [r0, #3]
	bx lr
_0202A9A2:
	ldrb r0, [r0, #4]
	bx lr
_0202A9A6:
	ldrb r0, [r0, #5]
	bx lr
_0202A9AA:
	ldrb r0, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A974

	thumb_func_start sub_0202A9B0
sub_0202A9B0: ; 0x0202A9B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r4, #0
	mov r6, #2
	mov r7, #5
_0202A9BC:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r1, r5, r0
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0202A9D6
	strb r6, [r1, #1]
	add r4, r4, #1
_0202A9D6:
	cmp r4, #3
	blt _0202A9BC
	mov r0, #0x1b
	strb r0, [r5]
	ldr r0, [sp]
	strb r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202A9B0

	thumb_func_start sub_0202A9E4
sub_0202A9E4: ; 0x0202A9E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov ip, r2
	mov r2, #0
	add r6, r2, #0
	mov r5, #0x1b
	cmp r3, #0
	beq _0202AA00
	mov r1, ip
	bl sub_0202A9B0
	add sp, #8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202AA00:
	add r4, r2, #0
	add r7, sp, #0
_0202AA04:
	ldrb r3, [r1, r4]
	cmp r3, #0
	beq _0202AA14
	cmp r3, #0x32
	blo _0202AA10
	mov r6, #1
_0202AA10:
	strb r4, [r7, r2]
	add r2, r2, #1
_0202AA14:
	add r4, r4, #1
	cmp r4, #5
	blt _0202AA04
	cmp r2, #5
	bhi _0202AA7C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202AA2A: ; jump table
	.short _0202AA36 - _0202AA2A - 2 ; case 0
	.short _0202AA42 - _0202AA2A - 2 ; case 1
	.short _0202AA50 - _0202AA2A - 2 ; case 2
	.short _0202AA76 - _0202AA2A - 2 ; case 3
	.short _0202AA7A - _0202AA2A - 2 ; case 4
	.short _0202AA7A - _0202AA2A - 2 ; case 5
_0202AA36:
	mov r1, ip
	bl sub_0202A9B0
	add sp, #8
	mov r0, #0x1b
	pop {r3, r4, r5, r6, r7, pc}
_0202AA42:
	add r2, sp, #0
	ldrb r3, [r2]
	mov r2, #6
	mul r2, r3
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA50:
	add r2, sp, #0
	ldrb r3, [r2, #1]
	ldrb r2, [r2]
	ldrb r4, [r1, r3]
	ldrb r5, [r1, r2]
	cmp r5, r4
	blo _0202AA6A
	lsl r4, r2, #2
	add r2, r2, r4
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA6A:
	lsl r4, r3, #2
	add r3, r3, r4
	add r2, r2, r3
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA76:
	mov r5, #0x19
	b _0202AA7C
_0202AA7A:
	mov r5, #0x1a
_0202AA7C:
	cmp r6, #0
	beq _0202AA82
	mov r5, #0x1c
_0202AA82:
	mov r4, #0
_0202AA84:
	ldrb r3, [r1, r4]
	add r2, r0, r4
	add r4, r4, #1
	strb r3, [r2, #1]
	cmp r4, #5
	blt _0202AA84
	strb r5, [r0]
	mov r1, ip
	strb r1, [r0, #6]
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202A9E4

	thumb_func_start sub_0202AA9C
sub_0202AA9C: ; 0x0202AA9C
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r0, [r0, #6]
	strb r0, [r1, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AA9C

	thumb_func_start sub_0202AABC
sub_0202AABC: ; 0x0202AABC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	mov r1, #5
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	bhi _0202AAFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AADC: ; jump table
	.short _0202AAE8 - _0202AADC - 2 ; case 0
	.short _0202AAEC - _0202AADC - 2 ; case 1
	.short _0202AAF0 - _0202AADC - 2 ; case 2
	.short _0202AAF4 - _0202AADC - 2 ; case 3
	.short _0202AAF8 - _0202AADC - 2 ; case 4
	.short _0202AAFC - _0202AADC - 2 ; case 5
_0202AAE8:
	ldrb r0, [r4, #1]
	b _0202AB1E
_0202AAEC:
	ldrb r0, [r4, #2]
	b _0202AB1E
_0202AAF0:
	ldrb r0, [r4, #3]
	b _0202AB1E
_0202AAF4:
	ldrb r0, [r4, #4]
	b _0202AB1E
_0202AAF8:
	ldrb r0, [r4, #5]
	b _0202AB1E
_0202AAFC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	cmp r0, r1
	bhs _0202AB06
	add r0, r1, #0
_0202AB06:
	ldrb r1, [r4, #3]
	cmp r0, r1
	bhs _0202AB0E
	add r0, r1, #0
_0202AB0E:
	ldrb r1, [r4, #4]
	cmp r0, r1
	bhs _0202AB16
	add r0, r1, #0
_0202AB16:
	ldrb r1, [r4, #5]
	cmp r0, r1
	bhs _0202AB1E
	add r0, r1, #0
_0202AB1E:
	cmp r0, #0x63
	bls _0202AB24
	mov r0, #0x63
_0202AB24:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202AABC

	thumb_func_start sub_0202AB28
sub_0202AB28: ; 0x0202AB28
	ldr r3, _0202AB30 ; =sub_020245BC
	mov r1, #0x10
	bx r3
	nop
_0202AB30: .word sub_020245BC
	thumb_func_end sub_0202AB28

	thumb_func_start sub_0202AB34
sub_0202AB34: ; 0x0202AB34
	mov r0, #0x32
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AB34

	thumb_func_start sub_0202AB3C
sub_0202AB3C: ; 0x0202AB3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202AB42:
	add r0, r5, #0
	bl sub_0202A924
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _0202AB42
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202AB3C

	thumb_func_start sub_0202AB54
sub_0202AB54: ; 0x0202AB54
	mov r2, #0
_0202AB56:
	lsl r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0x1e
	bne _0202AB62
	add r0, r2, #0
	bx lr
_0202AB62:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #0x64
	blo _0202AB56
	ldr r0, _0202AB70 ; =0x0000FFFF
	bx lr
	; .align 2, 0
_0202AB70: .word 0x0000FFFF
	thumb_func_end sub_0202AB54

	thumb_func_start sub_0202AB74
sub_0202AB74: ; 0x0202AB74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202AB54
	ldr r1, _0202AB94 ; =0x0000FFFF
	add r4, r0, #0
	cmp r4, r1
	beq _0202AB92
	lsl r1, r4, #3
	add r0, r6, #0
	add r1, r5, r1
	bl sub_0202A950
	add r0, r4, #0
_0202AB92:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202AB94: .word 0x0000FFFF
	thumb_func_end sub_0202AB74

	thumb_func_start sub_0202AB98
sub_0202AB98: ; 0x0202AB98
	push {r3, lr}
	cmp r1, #0x64
	blo _0202ABA2
	mov r0, #0
	pop {r3, pc}
_0202ABA2:
	lsl r1, r1, #3
	add r0, r0, r1
	bl sub_0202A924
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202AB98

	thumb_func_start sub_0202ABB0
sub_0202ABB0: ; 0x0202ABB0
	cmp r1, #0x64
	bhs _0202ABCA
_0202ABB4:
	lsl r2, r1, #3
	ldrb r2, [r0, r2]
	cmp r2, #0x1e
	beq _0202ABC0
	add r0, r1, #0
	bx lr
_0202ABC0:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x64
	blo _0202ABB4
_0202ABCA:
	ldr r0, _0202ABD0 ; =0x0000FFFF
	bx lr
	nop
_0202ABD0: .word 0x0000FFFF
	thumb_func_end sub_0202ABB0

	thumb_func_start sub_0202ABD4
sub_0202ABD4: ; 0x0202ABD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	mov r7, #0x64
	str r0, [sp, #4]
_0202ABE0:
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	ldrb r0, [r5, r0]
	cmp r0, #0x1e
	bne _0202AC3C
	ldr r6, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202ABB0
	add r4, r0, #0
	ldr r0, _0202AC50 ; =0x0000FFFF
	cmp r4, r0
	beq _0202AC4A
	ldr r0, [sp, #4]
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	cmp r4, r7
	bhs _0202AC34
	cmp r4, r7
	bhs _0202AC34
_0202AC0E:
	lsl r0, r4, #3
	lsl r1, r6, #3
	str r0, [sp, #8]
	add r0, r5, r0
	add r1, r5, r1
	bl sub_0202A950
	ldr r0, [sp, #8]
	add r0, r5, r0
	bl sub_0202A924
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _0202AC0E
_0202AC34:
	ldr r0, [sp]
	sub r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_0202AC3C:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, r7
	blo _0202ABE0
_0202AC4A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202AC50: .word 0x0000FFFF
	thumb_func_end sub_0202ABD4

	thumb_func_start sub_0202AC54
sub_0202AC54: ; 0x0202AC54
	push {r3, lr}
	cmp r1, #0x64
	blo _0202AC62
	add r0, r2, #0
	bl sub_0202A924
	pop {r3, pc}
_0202AC62:
	lsl r1, r1, #3
	add r0, r0, r1
	add r1, r2, #0
	bl sub_0202A950
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202AC54

	thumb_func_start sub_0202AC70
sub_0202AC70: ; 0x0202AC70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202A93C
	add r6, r0, #0
	cmp r4, #0x64
	blo _0202AC8A
	bl sub_0202A924
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202AC8A:
	lsl r0, r4, #3
	add r0, r5, r0
	add r1, r6, #0
	bl sub_0202A950
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AC70

	thumb_func_start sub_0202AC98
sub_0202AC98: ; 0x0202AC98
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_0202ACA0:
	lsl r0, r5, #3
	add r0, r6, r0
	bl sub_0202A914
	cmp r0, #0
	beq _0202ACB2
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0202ACB2:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _0202ACA0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AC98

	thumb_func_start sub_0202ACC0
sub_0202ACC0: ; 0x0202ACC0
	mov r3, #0
	add r2, r3, #0
_0202ACC4:
	lsl r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0x1e
	bne _0202ACD2
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
_0202ACD2:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #0x64
	blo _0202ACC4
	add r0, r3, #0
	bx lr
	thumb_func_end sub_0202ACC0

	thumb_func_start sub_0202ACE0
sub_0202ACE0: ; 0x0202ACE0
	mov r0, #0x23
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202ACE0

	thumb_func_start sub_0202ACE8
sub_0202ACE8: ; 0x0202ACE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r2, #0x23
	mov r0, #0
	add r1, r7, #0
	lsl r2, r2, #6
	bl sub_020C4BB8
	mov r0, #0x1d
	lsl r0, r0, #4
	add r1, r0, #0
	add r2, r0, #0
	ldr r4, _0202AD24 ; =0x0000FFFF
	mov r5, #0
	add r6, r7, #0
	mov r3, #2
	sub r1, #0x10
	add r2, #0x1e
_0202AD0C:
	strh r4, [r6, r0]
	strh r4, [r6, r1]
	strb r3, [r6, r2]
	add r5, r5, #1
	add r6, #0x38
	cmp r5, #0x20
	blt _0202AD0C
	add r0, r7, #0
	bl sub_02039034
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202AD24: .word 0x0000FFFF
	thumb_func_end sub_0202ACE8

	thumb_func_start sub_0202AD28
sub_0202AD28: ; 0x0202AD28
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AD28

	thumb_func_start sub_0202AD2C
sub_0202AD2C: ; 0x0202AD2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, #0x20
	blt _0202AD3C
	bl sub_02022974
_0202AD3C:
	cmp r7, #0xc
	bhi _0202AE0C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AD4C: ; jump table
	.short _0202AD66 - _0202AD4C - 2 ; case 0
	.short _0202AD74 - _0202AD4C - 2 ; case 1
	.short _0202AD82 - _0202AD4C - 2 ; case 2
	.short _0202AD8E - _0202AD4C - 2 ; case 3
	.short _0202AD9C - _0202AD4C - 2 ; case 4
	.short _0202ADA8 - _0202AD4C - 2 ; case 5
	.short _0202ADB6 - _0202AD4C - 2 ; case 6
	.short _0202ADCE - _0202AD4C - 2 ; case 7
	.short _0202ADC2 - _0202AD4C - 2 ; case 8
	.short _0202ADDA - _0202AD4C - 2 ; case 9
	.short _0202ADE8 - _0202AD4C - 2 ; case 10
	.short _0202ADF4 - _0202AD4C - 2 ; case 11
	.short _0202AE02 - _0202AD4C - 2 ; case 12
_0202AD66:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r6, [r1, r0]
	b _0202AE0C
_0202AD74:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x79
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD82:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE10 ; =0x000001E6
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD8E:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD9C:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE14 ; =0x000001EA
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADA8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADB6:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE18 ; =0x000001ED
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADC2:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE1C ; =0x000001EE
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADCE:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE20 ; =0x000001EF
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADDA:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADE8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE24 ; =0x000001F2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADF4:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AE02:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE28 ; =0x000001F6
	ldrh r6, [r1, r0]
_0202AE0C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202AE10: .word 0x000001E6
_0202AE14: .word 0x000001EA
_0202AE18: .word 0x000001ED
_0202AE1C: .word 0x000001EE
_0202AE20: .word 0x000001EF
_0202AE24: .word 0x000001F2
_0202AE28: .word 0x000001F6
	thumb_func_end sub_0202AD2C

	thumb_func_start sub_0202AE2C
sub_0202AE2C: ; 0x0202AE2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, #0x20
	blt _0202AE3E
	bl sub_02022974
_0202AE3E:
	cmp r7, #9
	bhi _0202AEC4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AE4E: ; jump table
	.short _0202AE62 - _0202AE4E - 2 ; case 0
	.short _0202AE70 - _0202AE4E - 2 ; case 1
	.short _0202AE76 - _0202AE4E - 2 ; case 2
	.short _0202AE7C - _0202AE4E - 2 ; case 3
	.short _0202AE82 - _0202AE4E - 2 ; case 4
	.short _0202AE8E - _0202AE4E - 2 ; case 5
	.short _0202AE9C - _0202AE4E - 2 ; case 6
	.short _0202AEB4 - _0202AE4E - 2 ; case 7
	.short _0202AEA8 - _0202AE4E - 2 ; case 8
	.short _0202AEC0 - _0202AE4E - 2 ; case 9
_0202AE62:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	str r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE70:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE76:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE7C:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE82:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AEC8 ; =0x000001EA
	strh r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE8E:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE9C:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AECC ; =0x000001ED
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEA8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AED0 ; =0x000001EE
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEB4:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AED4 ; =0x000001EF
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEC0:
	bl sub_02022974
_0202AEC4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202AEC8: .word 0x000001EA
_0202AECC: .word 0x000001ED
_0202AED0: .word 0x000001EE
_0202AED4: .word 0x000001EF
	thumb_func_end sub_0202AE2C

	thumb_func_start sub_0202AED8
sub_0202AED8: ; 0x0202AED8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AEE6
	bl sub_02022974
_0202AEE6:
	mov r0, #0xc
	add r5, #0x40
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AED8

	thumb_func_start sub_0202AEF0
sub_0202AEF0: ; 0x0202AEF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AEFE
	bl sub_02022974
_0202AEFE:
	mov r0, #0x1d
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x38
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AEF0

	thumb_func_start sub_0202AF0C
sub_0202AF0C: ; 0x0202AF0C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x20
	blt _0202AF1C
	bl sub_02022974
_0202AF1C:
	mov r1, #0x1d
	lsl r1, r1, #4
	add r2, r5, r1
	mov r1, #0x38
	mul r1, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x10
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202AF0C

	thumb_func_start sub_0202AF34
sub_0202AF34: ; 0x0202AF34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AF42
	bl sub_02022974
_0202AF42:
	mov r0, #7
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x38
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AF34

	thumb_func_start sub_0202AF50
sub_0202AF50: ; 0x0202AF50
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x20
	blt _0202AF60
	bl sub_02022974
_0202AF60:
	mov r1, #7
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x38
	mul r1, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x10
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202AF50

	thumb_func_start sub_0202AF78
sub_0202AF78: ; 0x0202AF78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AF86
	bl sub_02022974
_0202AF86:
	mov r0, #0xc
	add r5, #0x40
	mul r0, r4
	add r0, r5, r0
	bl sub_020A4498
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AF78

	thumb_func_start sub_0202AF94
sub_0202AF94: ; 0x0202AF94
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_0202AF9C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202AFAA
	add r5, r5, #1
_0202AFAA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202AF9C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AF94

	thumb_func_start sub_0202AFB4
sub_0202AFB4: ; 0x0202AFB4
	push {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0202AFBC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202AFCA
	add r6, r4, #1
_0202AFCA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202AFBC
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AFB4

	thumb_func_start sub_0202AFD4
sub_0202AFD4: ; 0x0202AFD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	cmp r5, #0x20
	blt _0202AFE4
	bl sub_02022974
_0202AFE4:
	cmp r5, #0x1f
	bge _0202B03E
	mov r1, #7
	ldr r0, [sp]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0x38
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, #0x40
	str r0, [sp, #8]
	mov r0, #0xc
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, r0, r1
_0202B00E:
	add r7, r5, #1
	mov r0, #0x38
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r2, #0x38
	add r0, r0, r1
	add r1, r6, #0
	bl sub_020C4DB0
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #8]
	mov r2, #0xc
	add r0, r0, r1
	add r1, r4, #0
	bl sub_020C4DB0
	add r5, r5, #1
	add r6, #0x38
	add r4, #0xc
	cmp r5, #0x1f
	blt _0202B00E
_0202B03E:
	mov r2, #7
	ldr r1, [sp]
	lsl r2, r2, #6
	add r2, r1, r2
	ldr r1, _0202B07C ; =0x000006C8
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x38
	bl sub_020C4BB8
	ldr r2, [sp]
	mov r1, #0x5d
	add r2, #0x40
	lsl r1, r1, #2
	add r1, r2, r1
	mov r0, #0
	mov r2, #0xc
	bl sub_020C4BB8
	ldr r2, _0202B080 ; =0x00000898
	ldr r3, _0202B084 ; =0x0000FFFF
	ldr r0, [sp]
	add r1, r2, #0
	strh r3, [r0, r2]
	sub r1, #0x10
	strh r3, [r0, r1]
	mov r1, #2
	add r2, #0x1e
	strb r1, [r0, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B07C: .word 0x000006C8
_0202B080: .word 0x00000898
_0202B084: .word 0x0000FFFF
	thumb_func_end sub_0202AFD4

	thumb_func_start sub_0202B088
sub_0202B088: ; 0x0202B088
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0x38
	add r5, r0, #0
	lsl r0, r2, #3
	add r3, r1, #0
	mul r5, r2
	add r4, r7, r0
	mul r3, r2
	str r1, [sp]
	add r0, r4, r5
	add r1, r4, r3
	bl sub_020C4DB0
	ldr r0, [sp, #4]
	add r6, r7, #0
	mov r3, #0xc
	add r1, r0, #0
	mul r1, r3
	add r6, #0x40
	str r1, [sp, #8]
	add r0, r6, r1
	ldr r1, [sp]
	add r2, r1, #0
	mul r2, r3
	add r1, r6, r2
	add r2, r3, #0
	bl sub_020C4DB0
	mov r0, #0
	add r1, r4, r5
	mov r2, #0x38
	bl sub_020C4BB8
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r6, r1
	mov r2, #0xc
	bl sub_020C4BB8
	mov r0, #0x1d
	ldr r1, _0202B0F4 ; =0x0000FFFF
	add r2, r7, r5
	lsl r0, r0, #4
	strh r1, [r2, r0]
	strh r1, [r4, r5]
	mov r1, #2
	add r0, #0x1e
	strb r1, [r2, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B0F4: .word 0x0000FFFF
	thumb_func_end sub_0202B088

	thumb_func_start sub_0202B0F8
sub_0202B0F8: ; 0x0202B0F8
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	add r6, r0, #0
	mov r4, #0
	add r7, r5, #0
_0202B104:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202B128
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0202B132
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202B088
	add r4, r7, #0
	add r5, r7, #0
	b _0202B132
_0202B128:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0202B132
	add r5, r4, #0
_0202B132:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202B104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B0F8

	thumb_func_start sub_0202B13C
sub_0202B13C: ; 0x0202B13C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl sub_020138A4
	mov r0, #0x38
	add r2, r4, #0
	mul r2, r0
	mov r0, #0x7d
	ldr r1, [sp]
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, _0202B170 ; =0x000001EA
	add r3, r5, r2
	strh r1, [r3, r0]
	add r1, r0, #2
	ldr r2, [sp, #4]
	add r0, r0, #3
	strb r2, [r3, r1]
	ldr r1, [sp, #8]
	strb r1, [r3, r0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0202B170: .word 0x000001EA
	thumb_func_end sub_0202B13C

	thumb_func_start sub_0202B174
sub_0202B174: ; 0x0202B174
	push {r4, r5, r6, lr}
	mov r5, #0x79
	add r4, r0, #0
	mov r0, #0x38
	lsl r5, r5, #2
	mul r0, r1
	add r5, r4, r5
	ldrh r6, [r5, r0]
	add r2, r6, r2
	strh r2, [r5, r0]
	ldrh r6, [r5, r0]
	ldr r2, _0202B1C8 ; =0x0000270F
	cmp r6, r2
	bls _0202B192
	strh r2, [r5, r0]
_0202B192:
	ldr r2, _0202B1CC ; =0x000001E6
	add r2, r4, r2
	ldrh r5, [r2, r0]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, _0202B1C8 ; =0x0000270F
	cmp r5, r3
	bls _0202B1A6
	strh r3, [r2, r0]
_0202B1A6:
	mov r2, #0x7a
	lsl r2, r2, #2
	add r2, r4, r2
	ldrh r5, [r2, r0]
	ldr r3, [sp, #0x10]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, _0202B1C8 ; =0x0000270F
	cmp r5, r3
	bls _0202B1BE
	strh r3, [r2, r0]
_0202B1BE:
	add r0, r4, #0
	bl sub_0202B13C
	pop {r4, r5, r6, pc}
	nop
_0202B1C8: .word 0x0000270F
_0202B1CC: .word 0x000001E6
	thumb_func_end sub_0202B174

	thumb_func_start sub_0202B1D0
sub_0202B1D0: ; 0x0202B1D0
	push {r3, r4, r5, lr}
	mov r3, #0x1f
	lsl r3, r3, #4
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B1F4 ; =0x0000270F
	cmp r5, r2
	bls _0202B1EC
	strh r2, [r4, r3]
_0202B1EC:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	nop
_0202B1F4: .word 0x0000270F
	thumb_func_end sub_0202B1D0

	thumb_func_start sub_0202B1F8
sub_0202B1F8: ; 0x0202B1F8
	push {r3, r4, r5, lr}
	ldr r3, _0202B218 ; =0x000001F2
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B21C ; =0x0000270F
	cmp r5, r2
	bls _0202B212
	strh r2, [r4, r3]
_0202B212:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B218: .word 0x000001F2
_0202B21C: .word 0x0000270F
	thumb_func_end sub_0202B1F8

	thumb_func_start sub_0202B220
sub_0202B220: ; 0x0202B220
	push {r3, r4, r5, lr}
	mov r3, #0x7d
	lsl r3, r3, #2
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B244 ; =0x0000270F
	cmp r5, r2
	bls _0202B23C
	strh r2, [r4, r3]
_0202B23C:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	nop
_0202B244: .word 0x0000270F
	thumb_func_end sub_0202B220

	thumb_func_start sub_0202B248
sub_0202B248: ; 0x0202B248
	push {r3, r4, r5, lr}
	ldr r3, _0202B268 ; =0x000001F6
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B26C ; =0x0000270F
	cmp r5, r2
	bls _0202B262
	strh r2, [r4, r3]
_0202B262:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B268: .word 0x000001F6
_0202B26C: .word 0x0000270F
	thumb_func_end sub_0202B248

	thumb_func_start sub_0202B270
sub_0202B270: ; 0x0202B270
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x38
	mov r3, #0x79
	mul r4, r0
	add r1, r2, #0
	lsl r3, r3, #2
	mul r1, r0
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B298
	strh r0, [r2, r1]
_0202B298:
	ldr r3, _0202B360 ; =0x000001E6
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2B0
	strh r0, [r2, r1]
_0202B2B0:
	mov r3, #0x7a
	lsl r3, r3, #2
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2CA
	strh r0, [r2, r1]
_0202B2CA:
	mov r3, #0x1f
	lsl r3, r3, #4
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2E4
	strh r0, [r2, r1]
_0202B2E4:
	ldr r3, _0202B364 ; =0x000001F2
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2FC
	strh r0, [r2, r1]
_0202B2FC:
	mov r3, #0x7d
	lsl r3, r3, #2
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B316
	strh r0, [r2, r1]
_0202B316:
	ldr r3, _0202B368 ; =0x000001F6
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B32E
	strh r0, [r2, r1]
_0202B32E:
	mov r0, #7
	lsl r0, r0, #6
	add r6, r5, r0
	add r0, r6, r4
	add r1, r6, r1
	mov r2, #0x10
	bl sub_020C4C14
	mov r0, #0
	add r1, r6, r4
	mov r2, #0x38
	bl sub_020C4BB8
	mov r0, #0x1d
	ldr r1, _0202B36C ; =0x0000FFFF
	add r2, r5, r4
	lsl r0, r0, #4
	strh r1, [r2, r0]
	strh r1, [r6, r4]
	mov r1, #2
	add r0, #0x1e
	strb r1, [r2, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202B35C: .word 0x0000270F
_0202B360: .word 0x000001E6
_0202B364: .word 0x000001F2
_0202B368: .word 0x000001F6
_0202B36C: .word 0x0000FFFF
	thumb_func_end sub_0202B270

	thumb_func_start sub_0202B370
sub_0202B370: ; 0x0202B370
	ldr r3, _0202B378 ; =sub_020245BC
	mov r1, #0x1d
	bx r3
	nop
_0202B378: .word sub_020245BC
	thumb_func_end sub_0202B370

	thumb_func_start sub_0202B37C
sub_0202B37C: ; 0x0202B37C
	mov r0, #0x42
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B37C

	thumb_func_start sub_0202B384
sub_0202B384: ; 0x0202B384
	push {r4, r5}
	add r5, r2, #0
	mov r3, #0x2c
	add r2, r1, #0
	mul r2, r3
	mul r5, r3
	add r4, r0, r2
	add r3, r0, r5
	mov r2, #5
_0202B396:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202B396
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B384

	thumb_func_start sub_0202B3A8
sub_0202B3A8: ; 0x0202B3A8
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x42
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4BB8
	ldr r0, _0202B3D0 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0202B3BE:
	strh r0, [r2]
	strh r0, [r2, #0x10]
	add r1, r1, #1
	add r2, #0x2c
	cmp r1, #6
	blt _0202B3BE
	ldr r0, _0202B3D4 ; =0x021C079C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_0202B3D0: .word 0x0000FFFF
_0202B3D4: .word 0x021C079C
	thumb_func_end sub_0202B3A8

	thumb_func_start sub_0202B3D8
sub_0202B3D8: ; 0x0202B3D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #0
_0202B3E0:
	mov r4, #0
	cmp r6, #0
	bls _0202B3F4
_0202B3E6:
	ldr r0, [r5, #0x28]
	bl sub_0201D30C
	add r4, r4, #1
	str r0, [r5, #0x28]
	cmp r4, r6
	blo _0202B3E6
_0202B3F4:
	add r7, r7, #1
	add r5, #0x2c
	cmp r7, #6
	blo _0202B3E0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B3D8

	thumb_func_start sub_0202B400
sub_0202B400: ; 0x0202B400
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B400

	thumb_func_start sub_0202B40C
sub_0202B40C: ; 0x0202B40C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2c
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	str r2, [r0, #0x24]
	add r0, r2, #0
	bl sub_0201D30C
	add r1, r5, r4
	str r0, [r1, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B40C

	thumb_func_start sub_0202B428
sub_0202B428: ; 0x0202B428
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_0202B428

	thumb_func_start sub_0202B42C
sub_0202B42C: ; 0x0202B42C
	cmp r2, #0
	bne _0202B438
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	bx lr
_0202B438:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B42C

	thumb_func_start sub_0202B444
sub_0202B444: ; 0x0202B444
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	bne _0202B45C
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	add r0, r3, #0
	mov r2, #8
	bl sub_02023DF0
	pop {r4, pc}
_0202B45C:
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	add r0, r3, #0
	add r1, #0x10
	mov r2, #8
	bl sub_02023DF0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B444

	thumb_func_start sub_0202B470
sub_0202B470: ; 0x0202B470
	mov r3, #0x2c
	mul r3, r1
	add r0, r0, r3
	add r0, #0x20
	strb r2, [r0]
	bx lr
	thumb_func_end sub_0202B470

	thumb_func_start sub_0202B47C
sub_0202B47C: ; 0x0202B47C
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202B47C

	thumb_func_start sub_0202B488
sub_0202B488: ; 0x0202B488
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x21
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202B488

	thumb_func_start sub_0202B494
sub_0202B494: ; 0x0202B494
	mov r3, #0x2c
	mul r3, r1
	add r0, r0, r3
	add r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end sub_0202B494

	thumb_func_start sub_0202B4A0
sub_0202B4A0: ; 0x0202B4A0
	ldr r3, _0202B4A8 ; =sub_020245BC
	mov r1, #0x11
	bx r3
	nop
_0202B4A8: .word sub_020245BC
	thumb_func_end sub_0202B4A0

	thumb_func_start sub_0202B4AC
sub_0202B4AC: ; 0x0202B4AC
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	bl sub_0202B510
	cmp r0, #0
	bne _0202B4C0
	mov r0, #1
	pop {r3, pc}
_0202B4C0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202B4AC

	thumb_func_start sub_0202B4C4
sub_0202B4C4: ; 0x0202B4C4
	mov r2, #0x2c
	add r3, r0, #0
	mul r2, r1
	add r1, r3, r2
	ldr r3, _0202B4D4 ; =sub_0202B530
	add r0, #0x2c
	bx r3
	nop
_0202B4D4: .word sub_0202B530
	thumb_func_end sub_0202B4C4

	thumb_func_start sub_0202B4D8
sub_0202B4D8: ; 0x0202B4D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldrh r1, [r6]
	add r5, r0, #0
	ldr r0, _0202B50C ; =0x0000FFFF
	cmp r1, r0
	bne _0202B4EA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202B4EA:
	mov r4, #0
	mov r7, #8
_0202B4EE:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02002238
	cmp r0, #0
	bne _0202B500
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202B500:
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blt _0202B4EE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B50C: .word 0x0000FFFF
	thumb_func_end sub_0202B4D8

	thumb_func_start sub_0202B510
sub_0202B510: ; 0x0202B510
	ldrh r2, [r0]
	ldr r1, _0202B52C ; =0x0000FFFF
	cmp r2, r1
	bne _0202B51C
	mov r0, #1
	bx lr
_0202B51C:
	ldrh r0, [r0, #0x10]
	cmp r0, r1
	bne _0202B526
	mov r0, #1
	bx lr
_0202B526:
	mov r0, #0
	bx lr
	nop
_0202B52C: .word 0x0000FFFF
	thumb_func_end sub_0202B510

	thumb_func_start sub_0202B530
sub_0202B530: ; 0x0202B530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x10
	add r1, #0x10
	mov r2, #8
	bl sub_02002238
	cmp r0, #0
	beq _0202B548
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B548:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02002238
	cmp r0, #0
	beq _0202B55A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B55A:
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r1, r0
	beq _0202B56E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B56E:
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r1, r0
	beq _0202B582
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B582:
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	bne _0202B58E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202B58E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B530

	thumb_func_start sub_0202B594
sub_0202B594: ; 0x0202B594
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B594

	thumb_func_start sub_0202B59C
sub_0202B59C: ; 0x0202B59C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0202B5B0 ; =0x0000C350
	add r4, r1, #0
	cmp r4, r0
	bls _0202B5AC
	bl sub_02022974
_0202B5AC:
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B5B0: .word 0x0000C350
	thumb_func_end sub_0202B59C

	thumb_func_start sub_0202B5B4
sub_0202B5B4: ; 0x0202B5B4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0202B5B4

	thumb_func_start sub_0202B5B8
sub_0202B5B8: ; 0x0202B5B8
	ldrh r3, [r0]
	ldr r2, _0202B5D4 ; =0x0000C350
	cmp r3, r2
	blo _0202B5C4
	mov r0, #0
	bx lr
_0202B5C4:
	add r1, r3, r1
	strh r1, [r0]
	ldrh r1, [r0]
	cmp r1, r2
	bls _0202B5D0
	strh r2, [r0]
_0202B5D0:
	mov r0, #1
	bx lr
	; .align 2, 0
_0202B5D4: .word 0x0000C350
	thumb_func_end sub_0202B5B8

	thumb_func_start sub_0202B5D8
sub_0202B5D8: ; 0x0202B5D8
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _0202B5EC ; =0x0000C350
	cmp r1, r0
	bhi _0202B5E6
	mov r0, #1
	bx lr
_0202B5E6:
	mov r0, #0
	bx lr
	nop
_0202B5EC: .word 0x0000C350
	thumb_func_end sub_0202B5D8

	thumb_func_start sub_0202B5F0
sub_0202B5F0: ; 0x0202B5F0
	ldrh r2, [r0]
	cmp r2, r1
	bhs _0202B5FA
	mov r0, #0
	bx lr
_0202B5FA:
	sub r1, r2, r1
	strh r1, [r0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B5F0

	thumb_func_start sub_0202B604
sub_0202B604: ; 0x0202B604
	mov r0, #0x46
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B604

	thumb_func_start sub_0202B60C
sub_0202B60C: ; 0x0202B60C
	ldr r3, _0202B614 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x70
	bx r3
	; .align 2, 0
_0202B614: .word sub_020D5124
	thumb_func_end sub_0202B60C

	thumb_func_start sub_0202B618
sub_0202B618: ; 0x0202B618
	ldr r3, _0202B624 ; =sub_020D5124
	mov r2, #0x46
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	nop
_0202B624: .word sub_020D5124
	thumb_func_end sub_0202B618

	thumb_func_start sub_0202B628
sub_0202B628: ; 0x0202B628
	ldr r3, _0202B630 ; =sub_020245BC
	mov r1, #0x12
	bx r3
	nop
_0202B630: .word sub_020245BC
	thumb_func_end sub_0202B628

	thumb_func_start sub_0202B634
sub_0202B634: ; 0x0202B634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	cmp r1, #1
	beq _0202B644
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202B644:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [r7, #0]
	lsl r1, r0, #0x15
	lsr r3, r1, #0x1c
	beq _0202B69C
	lsl r1, r0, #0x19
	lsr r2, r1, #0x19
	ldr r1, [sp]
	cmp r2, r1
	bne _0202B676
	ldr r1, [sp, #4]
	cmp r3, r1
	bne _0202B676
	lsl r1, r0, #0xd
	lsr r2, r1, #0x1b
	ldr r1, [sp, #8]
	cmp r2, r1
	bne _0202B676
	lsl r0, r0, #0x12
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _0202B69C
_0202B676:
	mov r0, #0x3f
	lsl r0, r0, #4
	mov r5, #9
	add r6, r7, r0
_0202B67E:
	add r4, r6, #0
	sub r4, #0x70
	add r3, r6, #0
	mov r2, #0xe
_0202B686:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202B686
	sub r5, r5, #1
	sub r6, #0x70
	cmp r5, #1
	bge _0202B67E
	add r0, r7, #0
	bl sub_0202B60C
_0202B69C:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B634

	thumb_func_start sub_0202B6A4
sub_0202B6A4: ; 0x0202B6A4
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	cmp r1, #1
	beq _0202B6B4
	add sp, #0x20
	mov r0, #0
	pop {r4, pc}
_0202B6B4:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [r4, #0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1b
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1d
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02013900
	add r4, r0, #0
	add r0, sp, #0x10
	bl sub_02013900
	ldr r2, [sp, #4]
	sub r0, r4, r0
	cmp r2, #0xc
	bne _0202B702
	ldr r1, [sp, #8]
	cmp r1, #0x1f
	bne _0202B702
	ldr r1, [sp, #0x14]
	cmp r1, #1
	bne _0202B702
	ldr r1, [sp, #0x18]
	cmp r1, #1
	beq _0202B718
_0202B702:
	cmp r2, #1
	bne _0202B730
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0202B730
	ldr r1, [sp, #0x14]
	cmp r1, #0xc
	bne _0202B730
	ldr r1, [sp, #0x18]
	cmp r1, #0x1f
	bne _0202B730
_0202B718:
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	cmp r1, #2
	bge _0202B72A
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	bgt _0202B750
_0202B72A:
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B730:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	ble _0202B73C
	cmp r0, #2
	blt _0202B742
_0202B73C:
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B742:
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _0202B750
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B750:
	mov r0, #0
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B6A4

	thumb_func_start sub_0202B758
sub_0202B758: ; 0x0202B758
	push {r4, lr}
	add r4, r1, #0
	cmp r0, #0
	beq _0202B796
	cmp r2, #4
	bhi _0202B796
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202B770: ; jump table
	.short _0202B77A - _0202B770 - 2 ; case 0
	.short _0202B780 - _0202B770 - 2 ; case 1
	.short _0202B786 - _0202B770 - 2 ; case 2
	.short _0202B78C - _0202B770 - 2 ; case 3
	.short _0202B792 - _0202B770 - 2 ; case 4
_0202B77A:
	bl sub_0202B7A0
	b _0202B796
_0202B780:
	bl sub_0202B7E0
	b _0202B796
_0202B786:
	bl sub_0202B880
	b _0202B796
_0202B78C:
	bl sub_0202B88C
	b _0202B796
_0202B792:
	bl sub_0202B898
_0202B796:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B758

	thumb_func_start sub_0202B7A0
sub_0202B7A0: ; 0x0202B7A0
	push {r4, r5}
	ldr r3, [r0, #0]
	lsl r2, r3, #0x19
	lsr r5, r2, #0x19
	ldr r2, [r1, #0]
	lsl r4, r2, #0x19
	lsr r4, r4, #0x19
	cmp r5, r4
	bne _0202B7D6
	lsl r4, r3, #0x15
	lsr r5, r4, #0x1c
	lsl r4, r2, #0x15
	lsr r4, r4, #0x1c
	cmp r5, r4
	bne _0202B7D6
	lsl r4, r3, #0xd
	lsr r5, r4, #0x1b
	lsl r4, r2, #0xd
	lsr r4, r4, #0x1b
	cmp r5, r4
	bne _0202B7D6
	lsl r3, r3, #0x12
	lsl r2, r2, #0x12
	lsr r3, r3, #0x1d
	lsr r2, r2, #0x1d
	cmp r3, r2
	beq _0202B7DA
_0202B7D6:
	ldr r1, [r1, #0]
	str r1, [r0, #0]
_0202B7DA:
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B7A0

	thumb_func_start sub_0202B7E0
sub_0202B7E0: ; 0x0202B7E0
	push {r3, lr}
	ldrb r2, [r1]
	cmp r2, #0x28
	bhi _0202B87C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202B7F4: ; jump table
	.short _0202B87C - _0202B7F4 - 2 ; case 0
	.short _0202B846 - _0202B7F4 - 2 ; case 1
	.short _0202B846 - _0202B7F4 - 2 ; case 2
	.short _0202B846 - _0202B7F4 - 2 ; case 3
	.short _0202B846 - _0202B7F4 - 2 ; case 4
	.short _0202B846 - _0202B7F4 - 2 ; case 5
	.short _0202B846 - _0202B7F4 - 2 ; case 6
	.short _0202B846 - _0202B7F4 - 2 ; case 7
	.short _0202B846 - _0202B7F4 - 2 ; case 8
	.short _0202B84E - _0202B7F4 - 2 ; case 9
	.short _0202B84E - _0202B7F4 - 2 ; case 10
	.short _0202B856 - _0202B7F4 - 2 ; case 11
	.short _0202B85E - _0202B7F4 - 2 ; case 12
	.short _0202B866 - _0202B7F4 - 2 ; case 13
	.short _0202B866 - _0202B7F4 - 2 ; case 14
	.short _0202B866 - _0202B7F4 - 2 ; case 15
	.short _0202B846 - _0202B7F4 - 2 ; case 16
	.short _0202B846 - _0202B7F4 - 2 ; case 17
	.short _0202B86E - _0202B7F4 - 2 ; case 18
	.short _0202B876 - _0202B7F4 - 2 ; case 19
	.short _0202B876 - _0202B7F4 - 2 ; case 20
	.short _0202B876 - _0202B7F4 - 2 ; case 21
	.short _0202B876 - _0202B7F4 - 2 ; case 22
	.short _0202B876 - _0202B7F4 - 2 ; case 23
	.short _0202B876 - _0202B7F4 - 2 ; case 24
	.short _0202B876 - _0202B7F4 - 2 ; case 25
	.short _0202B876 - _0202B7F4 - 2 ; case 26
	.short _0202B876 - _0202B7F4 - 2 ; case 27
	.short _0202B876 - _0202B7F4 - 2 ; case 28
	.short _0202B876 - _0202B7F4 - 2 ; case 29
	.short _0202B876 - _0202B7F4 - 2 ; case 30
	.short _0202B87C - _0202B7F4 - 2 ; case 31
	.short _0202B876 - _0202B7F4 - 2 ; case 32
	.short _0202B876 - _0202B7F4 - 2 ; case 33
	.short _0202B846 - _0202B7F4 - 2 ; case 34
	.short _0202B846 - _0202B7F4 - 2 ; case 35
	.short _0202B846 - _0202B7F4 - 2 ; case 36
	.short _0202B846 - _0202B7F4 - 2 ; case 37
	.short _0202B846 - _0202B7F4 - 2 ; case 38
	.short _0202B846 - _0202B7F4 - 2 ; case 39
	.short _0202B846 - _0202B7F4 - 2 ; case 40
_0202B846:
	add r0, r0, #4
	bl sub_0202B994
	pop {r3, pc}
_0202B84E:
	add r0, r0, #4
	bl sub_0202BA48
	pop {r3, pc}
_0202B856:
	add r0, r0, #4
	bl sub_0202B9F0
	pop {r3, pc}
_0202B85E:
	add r0, r0, #4
	bl sub_0202B9D0
	pop {r3, pc}
_0202B866:
	add r0, r0, #4
	bl sub_0202BAB0
	pop {r3, pc}
_0202B86E:
	add r0, r0, #4
	bl sub_0202BAF8
	pop {r3, pc}
_0202B876:
	add r0, r0, #4
	bl sub_0202BB40
_0202B87C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202B7E0

	thumb_func_start sub_0202B880
sub_0202B880: ; 0x0202B880
	ldrh r2, [r1]
	strh r2, [r0, #0x14]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x16]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B880

	thumb_func_start sub_0202B88C
sub_0202B88C: ; 0x0202B88C
	ldrh r2, [r1]
	strh r2, [r0, #0x18]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B88C

	thumb_func_start sub_0202B898
sub_0202B898: ; 0x0202B898
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0202B954
	ldrb r1, [r4]
	cmp r1, #0x1d
	bhi _0202B918
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202B8B4: ; jump table
	.short _0202B918 - _0202B8B4 - 2 ; case 0
	.short _0202B8F0 - _0202B8B4 - 2 ; case 1
	.short _0202B8F0 - _0202B8B4 - 2 ; case 2
	.short _0202B8F0 - _0202B8B4 - 2 ; case 3
	.short _0202B8F0 - _0202B8B4 - 2 ; case 4
	.short _0202B8F0 - _0202B8B4 - 2 ; case 5
	.short _0202B8F8 - _0202B8B4 - 2 ; case 6
	.short _0202B900 - _0202B8B4 - 2 ; case 7
	.short _0202B908 - _0202B8B4 - 2 ; case 8
	.short _0202B900 - _0202B8B4 - 2 ; case 9
	.short _0202B908 - _0202B8B4 - 2 ; case 10
	.short _0202B8F0 - _0202B8B4 - 2 ; case 11
	.short _0202B908 - _0202B8B4 - 2 ; case 12
	.short _0202B912 - _0202B8B4 - 2 ; case 13
	.short _0202B908 - _0202B8B4 - 2 ; case 14
	.short _0202B900 - _0202B8B4 - 2 ; case 15
	.short _0202B908 - _0202B8B4 - 2 ; case 16
	.short _0202B908 - _0202B8B4 - 2 ; case 17
	.short _0202B908 - _0202B8B4 - 2 ; case 18
	.short _0202B908 - _0202B8B4 - 2 ; case 19
	.short _0202B908 - _0202B8B4 - 2 ; case 20
	.short _0202B908 - _0202B8B4 - 2 ; case 21
	.short _0202B8F8 - _0202B8B4 - 2 ; case 22
	.short _0202B8F8 - _0202B8B4 - 2 ; case 23
	.short _0202B912 - _0202B8B4 - 2 ; case 24
	.short _0202B908 - _0202B8B4 - 2 ; case 25
	.short _0202B908 - _0202B8B4 - 2 ; case 26
	.short _0202B908 - _0202B8B4 - 2 ; case 27
	.short _0202B908 - _0202B8B4 - 2 ; case 28
	.short _0202B908 - _0202B8B4 - 2 ; case 29
_0202B8F0:
	add r1, r4, #0
	bl sub_0202BB88
	pop {r3, r4, r5, pc}
_0202B8F8:
	add r1, r4, #0
	bl sub_0202BBC4
	pop {r3, r4, r5, pc}
_0202B900:
	add r1, r4, #0
	bl sub_0202BBE0
	pop {r3, r4, r5, pc}
_0202B908:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202BC14
	pop {r3, r4, r5, pc}
_0202B912:
	add r1, r4, #0
	bl sub_0202BC48
_0202B918:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B898

	thumb_func_start sub_0202B91C
sub_0202B91C: ; 0x0202B91C
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
	mov r1, #0x3f
_0202B924:
	ldr r2, [r4, #0]
	tst r2, r1
	bne _0202B932
	lsl r1, r3, #2
	add r0, r0, r1
	pop {r3, r4}
	bx lr
_0202B932:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blo _0202B924
	mov r3, #0
	add r2, r0, #0
_0202B93E:
	ldr r1, [r2, #4]
	add r3, r3, #1
	stmia r2!, {r1}
	cmp r3, #3
	blo _0202B93E
	lsl r2, r3, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, r0, r2
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0202B91C

	thumb_func_start sub_0202B954
sub_0202B954: ; 0x0202B954
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
_0202B95C:
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0202B96C
	mov r0, #0x2a
	add r4, #0x1c
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
_0202B96C:
	add r1, r1, #1
	add r2, #0x2a
	cmp r1, #2
	blo _0202B95C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0x46
	mov r2, #0x2a
	bl sub_020D50B8
	add r4, #0x46
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x2a
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B954

	thumb_func_start sub_0202B994
sub_0202B994: ; 0x0202B994
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202B99C:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202B9AA
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202B99C
_0202B9AA:
	cmp r2, #0
	beq _0202B9C0
	lsl r2, r2, #2
	add r2, r0, r2
	sub r2, r2, #4
	ldr r3, [r2, #0]
	mov r2, #0x3f
	ldrb r1, [r4]
	and r2, r3
	cmp r1, r2
	beq _0202B9CC
_0202B9C0:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	str r1, [r0, #0]
_0202B9CC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B994

	thumb_func_start sub_0202B9D0
sub_0202B9D0: ; 0x0202B9D0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_0202B9D0

	thumb_func_start sub_0202B9F0
sub_0202B9F0: ; 0x0202B9F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r2, #0
	mov r3, #0x3f
_0202B9F8:
	lsl r1, r2, #2
	ldr r5, [r0, r1]
	and r5, r3
	cmp r5, #0xb
	bne _0202BA20
	mov r3, #0
	str r3, [r0, r1]
	cmp r2, #3
	bhs _0202BA2A
_0202BA0A:
	lsl r5, r2, #2
	add r6, r0, r5
	ldr r1, [r6, #4]
	str r1, [r0, r5]
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r3, [r6, #4]
	cmp r2, #3
	blo _0202BA0A
	b _0202BA2A
_0202BA20:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #4
	blo _0202B9F8
_0202BA2A:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202B9F0

	thumb_func_start sub_0202BA48
sub_0202BA48: ; 0x0202BA48
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r6, #0
	mov r1, #0x3f
_0202BA50:
	lsl r5, r6, #2
	ldr r3, [r0, r5]
	add r2, r3, #0
	and r2, r1
	cmp r2, #9
	bne _0202BA88
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	ldrh r2, [r4, #2]
	lsr r3, r3, #0x10
	cmp r2, r3
	bne _0202BA88
	mov r1, #0
	str r1, [r0, r5]
	cmp r6, #3
	bhs _0202BA92
	add r2, r1, #0
_0202BA72:
	lsl r3, r6, #2
	add r5, r0, r3
	ldr r1, [r5, #4]
	str r1, [r0, r3]
	add r1, r6, #1
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	str r2, [r5, #4]
	cmp r6, #3
	blo _0202BA72
	b _0202BA92
_0202BA88:
	add r2, r6, #1
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	cmp r6, #4
	blo _0202BA50
_0202BA92:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202BA48

	thumb_func_start sub_0202BAB0
sub_0202BAB0: ; 0x0202BAB0
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BAB8:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BAC6
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BAB8
_0202BAC6:
	cmp r2, #0
	beq _0202BAE4
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BAE4
	ldrh r2, [r4, #2]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BAF6
_0202BAE4:
	bl sub_0202B91C
	ldrh r1, [r4, #2]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BAF6:
	pop {r4, pc}
	thumb_func_end sub_0202BAB0

	thumb_func_start sub_0202BAF8
sub_0202BAF8: ; 0x0202BAF8
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BB00:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BB0E
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BB00
_0202BB0E:
	cmp r2, #0
	beq _0202BB2C
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BB2C
	ldrh r2, [r4, #6]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BB3E
_0202BB2C:
	bl sub_0202B91C
	ldrh r1, [r4, #6]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BB3E:
	pop {r4, pc}
	thumb_func_end sub_0202BAF8

	thumb_func_start sub_0202BB40
sub_0202BB40: ; 0x0202BB40
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BB48:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BB56
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BB48
_0202BB56:
	cmp r2, #0
	beq _0202BB74
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BB74
	ldrh r2, [r4, #2]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BB86
_0202BB74:
	bl sub_0202B91C
	ldrh r1, [r4, #2]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BB86:
	pop {r4, pc}
	thumb_func_end sub_0202BB40

	thumb_func_start sub_0202BB88
sub_0202BB88: ; 0x0202BB88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r3, [r4, #1]
	lsl r1, r3, #0x1c
	lsr r2, r1, #0x1a
	lsl r1, r3, #0x1b
	lsr r1, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r1, #1
	orr r1, r2
	lsr r0, r0, #0x1f
	orr r0, r1
	strb r0, [r5, #1]
	add r0, r4, #2
	add r1, r5, #2
	mov r2, #8
	bl sub_0202BF94
	add r4, #0x12
	add r5, #0x12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202BB88

	thumb_func_start sub_0202BBC4
sub_0202BBC4: ; 0x0202BBC4
	add r2, r0, #0
	ldrb r0, [r1]
	ldr r3, _0202BBDC ; =sub_0202BF94
	strb r0, [r2]
	ldrb r0, [r1, #1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	strb r0, [r2, #1]
	add r0, r1, #2
	add r1, r2, #2
	mov r2, #8
	bx r3
	; .align 2, 0
_0202BBDC: .word sub_0202BF94
	thumb_func_end sub_0202BBC4

	thumb_func_start sub_0202BBE0
sub_0202BBE0: ; 0x0202BBE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	mov r2, #8
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1f
	lsl r0, r0, #0x18
	lsl r1, r1, #2
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r5, #1]
	add r0, r4, #2
	add r1, r5, #2
	bl sub_0202BF94
	add r4, #0x22
	add r5, #0x12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202BBE0

	thumb_func_start sub_0202BC14
sub_0202BC14: ; 0x0202BC14
	push {r4, lr}
	add r4, r1, #0
	mov r3, #0
	add r2, r0, #0
_0202BC1C:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0
	beq _0202BC2A
	add r3, r3, #1
	add r2, #0x2a
	cmp r3, #2
	blo _0202BC1C
_0202BC2A:
	cmp r3, #0
	beq _0202BC3E
	mov r1, #0x2a
	mul r1, r3
	add r1, r0, r1
	sub r1, #0xe
	ldrb r2, [r4]
	ldrb r1, [r1]
	cmp r2, r1
	beq _0202BC46
_0202BC3E:
	bl sub_0202B954
	ldrb r1, [r4]
	strb r1, [r0]
_0202BC46:
	pop {r4, pc}
	thumb_func_end sub_0202BC14

	thumb_func_start sub_0202BC48
sub_0202BC48: ; 0x0202BC48
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r1, [r1, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202BC48

	thumb_func_start sub_0202BC58
sub_0202BC58: ; 0x0202BC58
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020138A4
	ldr r2, [r4, #0]
	mov r0, #0x7f
	bic r2, r0
	ldr r1, [sp]
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	str r1, [r4, #0]
	add r2, r1, #0
	ldr r1, [sp, #4]
	ldr r0, _0202BCBC ; =0xFFFFF87F
	lsl r1, r1, #0x1c
	and r2, r0
	lsr r1, r1, #0x15
	orr r2, r1
	ldr r1, _0202BCC0 ; =0xFFF83FFF
	str r2, [r4, #0]
	and r2, r1
	ldr r1, [sp, #8]
	lsr r0, r0, #0xd
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xd
	orr r2, r1
	ldr r1, _0202BCC4 ; =0xFFFFC7FF
	str r2, [r4, #0]
	and r2, r1
	ldr r1, [sp, #0xc]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x12
	orr r1, r2
	and r1, r0
	lsl r0, r5, #0x13
	orr r0, r1
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0202BCBC: .word 0xFFFFF87F
_0202BCC0: .word 0xFFF83FFF
_0202BCC4: .word 0xFFFFC7FF
	thumb_func_end sub_0202BC58

	thumb_func_start sub_0202BCC8
sub_0202BCC8: ; 0x0202BCC8
	push {r3, lr}
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	pop {r3, pc}
	thumb_func_end sub_0202BCC8

	thumb_func_start sub_0202BCE4
sub_0202BCE4: ; 0x0202BCE4
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #1
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCE4

	thumb_func_start sub_0202BCF0
sub_0202BCF0: ; 0x0202BCF0
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #2
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCF0

	thumb_func_start sub_0202BCFC
sub_0202BCFC: ; 0x0202BCFC
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #3
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCFC

	thumb_func_start sub_0202BD08
sub_0202BD08: ; 0x0202BD08
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #4
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD08

	thumb_func_start sub_0202BD14
sub_0202BD14: ; 0x0202BD14
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #5
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD14

	thumb_func_start sub_0202BD20
sub_0202BD20: ; 0x0202BD20
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #6
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD20

	thumb_func_start sub_0202BD2C
sub_0202BD2C: ; 0x0202BD2C
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #7
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD2C

	thumb_func_start sub_0202BD38
sub_0202BD38: ; 0x0202BD38
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #8
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD38

	thumb_func_start sub_0202BD44
sub_0202BD44: ; 0x0202BD44
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #9
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD44

	thumb_func_start sub_0202BD58
sub_0202BD58: ; 0x0202BD58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202BCC8
	mov r1, #0xa
	strb r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD58

	thumb_func_start sub_0202BD70
sub_0202BD70: ; 0x0202BD70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xb
	strb r1, [r0]
	strh r4, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD70

	thumb_func_start sub_0202BD84
sub_0202BD84: ; 0x0202BD84
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xc
	strb r1, [r0]
	strh r4, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD84

	thumb_func_start sub_0202BD98
sub_0202BD98: ; 0x0202BD98
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xd
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD98

	thumb_func_start sub_0202BDAC
sub_0202BDAC: ; 0x0202BDAC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xe
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDAC

	thumb_func_start sub_0202BDC0
sub_0202BDC0: ; 0x0202BDC0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xf
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDC0

	thumb_func_start sub_0202BDD4
sub_0202BDD4: ; 0x0202BDD4
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x10
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BDD4

	thumb_func_start sub_0202BDE0
sub_0202BDE0: ; 0x0202BDE0
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x11
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BDE0

	thumb_func_start sub_0202BDEC
sub_0202BDEC: ; 0x0202BDEC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0x12
	strb r1, [r0]
	strh r4, [r0, #6]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDEC

	thumb_func_start sub_0202BE00
sub_0202BE00: ; 0x0202BE00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202BCC8
	add r5, #0x13
	strb r5, [r0]
	strh r4, [r0, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202BE00

	thumb_func_start sub_0202BE14
sub_0202BE14: ; 0x0202BE14
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x22
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BE14

	thumb_func_start sub_0202BE20
sub_0202BE20: ; 0x0202BE20
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x23
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BE20

	thumb_func_start sub_0202BE2C
sub_0202BE2C: ; 0x0202BE2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202BCC8
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_0202BE2C

	thumb_func_start sub_0202BE38
sub_0202BE38: ; 0x0202BE38
	push {r3, lr}
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r3, pc}
	thumb_func_end sub_0202BE38

	thumb_func_start sub_0202BE4C
sub_0202BE4C: ; 0x0202BE4C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202BE38
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	strh r5, [r4, #2]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r7, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	ldr r0, [sp]
	bl sub_0202CC5C
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0202BE9A
	cmp r0, #2
	beq _0202BE9A
	cmp r0, #4
	bne _0202BEA4
_0202BE9A:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	strb r1, [r4, #1]
	b _0202BEC6
_0202BEA4:
	cmp r0, #1
	beq _0202BEAC
	cmp r0, #3
	bne _0202BEBA
_0202BEAC:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #1]
	b _0202BEC6
_0202BEBA:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #1]
_0202BEC6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202BE4C

	thumb_func_start sub_0202BECC
sub_0202BECC: ; 0x0202BECC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202BE38
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4]
	strh r5, [r4, #2]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r7, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	ldr r0, [sp]
	bl sub_0202CC5C
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	beq _0202BF1C
	cmp r0, #3
	beq _0202BF1C
	cmp r0, #5
	bne _0202BF26
_0202BF1C:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	strb r1, [r4, #1]
	b _0202BF48
_0202BF26:
	cmp r0, #2
	beq _0202BF2E
	cmp r0, #4
	bne _0202BF3C
_0202BF2E:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #1]
	b _0202BF48
_0202BF3C:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #1]
_0202BF48:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202BECC

	thumb_func_start sub_0202BF4C
sub_0202BF4C: ; 0x0202BF4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	bl sub_02018144
	ldrh r2, [r0]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	strh r5, [r0, #2]
	ldrh r2, [r0]
	ldr r1, _0202BF78 ; =0xFFFF0001
	and r2, r1
	lsl r1, r4, #0x11
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202BF78: .word 0xFFFF0001
	thumb_func_end sub_0202BF4C

	thumb_func_start sub_0202BF7C
sub_0202BF7C: ; 0x0202BF7C
	push {r4, lr}
	mov r1, #0x3a
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3a
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BF7C

	thumb_func_start sub_0202BF94
sub_0202BF94: ; 0x0202BF94
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _0202BFAA
	ldr r3, _0202BFC8 ; =0x0000FFFF
	add r5, r1, #0
_0202BFA0:
	add r4, r4, #1
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, r2
	blo _0202BFA0
_0202BFAA:
	mov r5, #0
	cmp r2, #0
	bls _0202BFC4
	ldr r3, _0202BFC8 ; =0x0000FFFF
_0202BFB2:
	ldrh r4, [r0]
	cmp r4, r3
	beq _0202BFC4
	add r5, r5, #1
	strh r4, [r1]
	add r0, r0, #2
	add r1, r1, #2
	cmp r5, r2
	blo _0202BFB2
_0202BFC4:
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0202BFC8: .word 0x0000FFFF
	thumb_func_end sub_0202BF94

	thumb_func_start sub_0202BFCC
sub_0202BFCC: ; 0x0202BFCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202BFCC

	thumb_func_start sub_0202C00C
sub_0202C00C: ; 0x0202C00C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C00C

	thumb_func_start sub_0202C04C
sub_0202C04C: ; 0x0202C04C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #3
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	bic r0, r1
	add r1, sp, #8
	ldrb r2, [r1, #0x10]
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x20
	bic r1, r0
	lsl r0, r6, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x12
	mov r2, #8
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C04C

	thumb_func_start sub_0202C0AC
sub_0202C0AC: ; 0x0202C0AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #4
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C0AC

	thumb_func_start sub_0202C0EC
sub_0202C0EC: ; 0x0202C0EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #6
	strb r0, [r4]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	mov r2, #8
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r6, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C0EC

	thumb_func_start sub_0202C11C
sub_0202C11C: ; 0x0202C11C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	str r2, [sp]
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #7
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x22
	mov r2, #0xc
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C11C

	thumb_func_start sub_0202C168
sub_0202C168: ; 0x0202C168
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #8
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C168

	thumb_func_start sub_0202C174
sub_0202C174: ; 0x0202C174
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #0xb
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C174

	thumb_func_start sub_0202C1B4
sub_0202C1B4: ; 0x0202C1B4
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0xc
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C1B4

	thumb_func_start sub_0202C1C0
sub_0202C1C0: ; 0x0202C1C0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BF7C
	mov r1, #0xd
	strb r1, [r0]
	ldrb r2, [r0, #1]
	mov r1, #0xf
	bic r2, r1
	mov r1, #0xf
	and r1, r4
	orr r1, r2
	strb r1, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202C1C0

	thumb_func_start sub_0202C1E0
sub_0202C1E0: ; 0x0202C1E0
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0xe
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C1E0

	thumb_func_start sub_0202C1EC
sub_0202C1EC: ; 0x0202C1EC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	str r2, [sp]
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #0xf
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x22
	mov r2, #0xc
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C1EC

	thumb_func_start sub_0202C238
sub_0202C238: ; 0x0202C238
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0x10
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C238

	thumb_func_start sub_0202C244
sub_0202C244: ; 0x0202C244
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202BF7C
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_0202C244

	thumb_func_start sub_0202C250
sub_0202C250: ; 0x0202C250
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	strb r6, [r4]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	mov r2, #8
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C250

	thumb_func_start sub_0202C280
sub_0202C280: ; 0x0202C280
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	add r0, r1, #0
	bl sub_0202BF7C
	strb r5, [r0]
	ldrb r3, [r0, #1]
	mov r1, #0xf
	bic r3, r1
	lsl r1, r4, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C280

	thumb_func_start sub_0202C2A4
sub_0202C2A4: ; 0x0202C2A4
	push {r3, lr}
	cmp r2, #4
	bhi _0202C2FA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202C2B6: ; jump table
	.short _0202C2C0 - _0202C2B6 - 2 ; case 0
	.short _0202C2CC - _0202C2B6 - 2 ; case 1
	.short _0202C2D8 - _0202C2B6 - 2 ; case 2
	.short _0202C2E4 - _0202C2B6 - 2 ; case 3
	.short _0202C2F0 - _0202C2B6 - 2 ; case 4
_0202C2C0:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C2FC
	pop {r3, pc}
_0202C2CC:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C304
	pop {r3, pc}
_0202C2D8:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3B8
	pop {r3, pc}
_0202C2E4:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3C4
	pop {r3, pc}
_0202C2F0:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3D0
_0202C2FA:
	pop {r3, pc}
	thumb_func_end sub_0202C2A4

	thumb_func_start sub_0202C2FC
sub_0202C2FC: ; 0x0202C2FC
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C2FC

	thumb_func_start sub_0202C304
sub_0202C304: ; 0x0202C304
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r6, #0
_0202C30E:
	strb r7, [r4]
	strb r7, [r4, #1]
	strb r7, [r4, #2]
	strb r7, [r4, #3]
	strb r7, [r4, #4]
	strb r7, [r4, #5]
	strb r7, [r4, #6]
	strb r7, [r4, #7]
	ldr r0, [r5, #4]
	mov r1, #0x3f
	and r1, r0
	cmp r1, #0x28
	bhi _0202C3AC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202C334: ; jump table
	.short _0202C3AC - _0202C334 - 2 ; case 0
	.short _0202C386 - _0202C334 - 2 ; case 1
	.short _0202C386 - _0202C334 - 2 ; case 2
	.short _0202C386 - _0202C334 - 2 ; case 3
	.short _0202C386 - _0202C334 - 2 ; case 4
	.short _0202C386 - _0202C334 - 2 ; case 5
	.short _0202C386 - _0202C334 - 2 ; case 6
	.short _0202C386 - _0202C334 - 2 ; case 7
	.short _0202C386 - _0202C334 - 2 ; case 8
	.short _0202C38E - _0202C334 - 2 ; case 9
	.short _0202C38E - _0202C334 - 2 ; case 10
	.short _0202C38E - _0202C334 - 2 ; case 11
	.short _0202C38E - _0202C334 - 2 ; case 12
	.short _0202C396 - _0202C334 - 2 ; case 13
	.short _0202C396 - _0202C334 - 2 ; case 14
	.short _0202C396 - _0202C334 - 2 ; case 15
	.short _0202C386 - _0202C334 - 2 ; case 16
	.short _0202C386 - _0202C334 - 2 ; case 17
	.short _0202C39E - _0202C334 - 2 ; case 18
	.short _0202C3A6 - _0202C334 - 2 ; case 19
	.short _0202C3A6 - _0202C334 - 2 ; case 20
	.short _0202C3A6 - _0202C334 - 2 ; case 21
	.short _0202C3A6 - _0202C334 - 2 ; case 22
	.short _0202C3A6 - _0202C334 - 2 ; case 23
	.short _0202C3A6 - _0202C334 - 2 ; case 24
	.short _0202C3A6 - _0202C334 - 2 ; case 25
	.short _0202C3A6 - _0202C334 - 2 ; case 26
	.short _0202C3A6 - _0202C334 - 2 ; case 27
	.short _0202C3A6 - _0202C334 - 2 ; case 28
	.short _0202C3A6 - _0202C334 - 2 ; case 29
	.short _0202C3A6 - _0202C334 - 2 ; case 30
	.short _0202C3AC - _0202C334 - 2 ; case 31
	.short _0202C3A6 - _0202C334 - 2 ; case 32
	.short _0202C3A6 - _0202C334 - 2 ; case 33
	.short _0202C386 - _0202C334 - 2 ; case 34
	.short _0202C386 - _0202C334 - 2 ; case 35
	.short _0202C386 - _0202C334 - 2 ; case 36
	.short _0202C386 - _0202C334 - 2 ; case 37
	.short _0202C386 - _0202C334 - 2 ; case 38
	.short _0202C386 - _0202C334 - 2 ; case 39
	.short _0202C386 - _0202C334 - 2 ; case 40
_0202C386:
	add r1, r4, #0
	bl sub_0202C474
	b _0202C3AC
_0202C38E:
	add r1, r4, #0
	bl sub_0202C47C
	b _0202C3AC
_0202C396:
	add r1, r4, #0
	bl sub_0202C494
	b _0202C3AC
_0202C39E:
	add r1, r4, #0
	bl sub_0202C4A0
	b _0202C3AC
_0202C3A6:
	add r1, r4, #0
	bl sub_0202C4AC
_0202C3AC:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #4
	blo _0202C30E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C304

	thumb_func_start sub_0202C3B8
sub_0202C3B8: ; 0x0202C3B8
	ldrh r2, [r0, #0x14]
	strh r2, [r1]
	ldrh r0, [r0, #0x16]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C3B8

	thumb_func_start sub_0202C3C4
sub_0202C3C4: ; 0x0202C3C4
	ldrh r2, [r0, #0x18]
	strh r2, [r1]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C3C4

	thumb_func_start sub_0202C3D0
sub_0202C3D0: ; 0x0202C3D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	add r4, r1, #0
	mov r7, #0
	add r5, #0x1c
_0202C3DC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3a
	bl sub_020D5124
	ldrb r0, [r6, #0x1c]
	cmp r0, #0x1d
	bhi _0202C464
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202C3F8: ; jump table
	.short _0202C464 - _0202C3F8 - 2 ; case 0
	.short _0202C434 - _0202C3F8 - 2 ; case 1
	.short _0202C434 - _0202C3F8 - 2 ; case 2
	.short _0202C434 - _0202C3F8 - 2 ; case 3
	.short _0202C434 - _0202C3F8 - 2 ; case 4
	.short _0202C434 - _0202C3F8 - 2 ; case 5
	.short _0202C43E - _0202C3F8 - 2 ; case 6
	.short _0202C448 - _0202C3F8 - 2 ; case 7
	.short _0202C452 - _0202C3F8 - 2 ; case 8
	.short _0202C448 - _0202C3F8 - 2 ; case 9
	.short _0202C452 - _0202C3F8 - 2 ; case 10
	.short _0202C434 - _0202C3F8 - 2 ; case 11
	.short _0202C452 - _0202C3F8 - 2 ; case 12
	.short _0202C45C - _0202C3F8 - 2 ; case 13
	.short _0202C452 - _0202C3F8 - 2 ; case 14
	.short _0202C448 - _0202C3F8 - 2 ; case 15
	.short _0202C452 - _0202C3F8 - 2 ; case 16
	.short _0202C452 - _0202C3F8 - 2 ; case 17
	.short _0202C452 - _0202C3F8 - 2 ; case 18
	.short _0202C452 - _0202C3F8 - 2 ; case 19
	.short _0202C452 - _0202C3F8 - 2 ; case 20
	.short _0202C452 - _0202C3F8 - 2 ; case 21
	.short _0202C43E - _0202C3F8 - 2 ; case 22
	.short _0202C43E - _0202C3F8 - 2 ; case 23
	.short _0202C45C - _0202C3F8 - 2 ; case 24
	.short _0202C452 - _0202C3F8 - 2 ; case 25
	.short _0202C452 - _0202C3F8 - 2 ; case 26
	.short _0202C452 - _0202C3F8 - 2 ; case 27
	.short _0202C452 - _0202C3F8 - 2 ; case 28
	.short _0202C452 - _0202C3F8 - 2 ; case 29
_0202C434:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C4B8
	b _0202C464
_0202C43E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C528
	b _0202C464
_0202C448:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C54C
	b _0202C464
_0202C452:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C5A4
	b _0202C464
_0202C45C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C5AC
_0202C464:
	add r7, r7, #1
	add r4, #0x3a
	add r6, #0x2a
	add r5, #0x2a
	cmp r7, #2
	blo _0202C3DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C3D0

	thumb_func_start sub_0202C474
sub_0202C474: ; 0x0202C474
	mov r2, #0x3f
	and r0, r2
	strb r0, [r1]
	bx lr
	thumb_func_end sub_0202C474

	thumb_func_start sub_0202C47C
sub_0202C47C: ; 0x0202C47C
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r3, r0, #6
	ldr r2, _0202C490 ; =0x000003FF
	lsr r0, r0, #0x10
	and r2, r3
	strh r2, [r1, #4]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
_0202C490: .word 0x000003FF
	thumb_func_end sub_0202C47C

	thumb_func_start sub_0202C494
sub_0202C494: ; 0x0202C494
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	bx lr
	thumb_func_end sub_0202C494

	thumb_func_start sub_0202C4A0
sub_0202C4A0: ; 0x0202C4A0
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	bx lr
	thumb_func_end sub_0202C4A0

	thumb_func_start sub_0202C4AC
sub_0202C4AC: ; 0x0202C4AC
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	bx lr
	thumb_func_end sub_0202C4AC

	thumb_func_start sub_0202C4B8
sub_0202C4B8: ; 0x0202C4B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	mov r1, #0xf
	strb r0, [r4]
	ldrb r0, [r4, #1]
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r2, r1, #2
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #1
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r1, r1, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x20
	bic r0, r1
	ldrb r1, [r5, #1]
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r5, #2
	add r1, r4, #2
	mov r2, #8
	bl sub_0202BF94
	add r5, #0x12
	add r4, #0x12
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C4B8

	thumb_func_start sub_0202C528
sub_0202C528: ; 0x0202C528
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0x10
	bic r3, r2
	ldrb r2, [r0, #1]
	add r0, r0, #2
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1b
	orr r2, r3
	strb r2, [r1, #1]
	ldr r3, _0202C548 ; =sub_0202BF94
	add r1, r1, #2
	mov r2, #8
	bx r3
	nop
_0202C548: .word sub_0202BF94
	thumb_func_end sub_0202C528

	thumb_func_start sub_0202C54C
sub_0202C54C: ; 0x0202C54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	mov r1, #0x10
	strb r0, [r4]
	ldrb r0, [r4, #1]
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r2, r1, #2
	mov r1, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0xc0
	ldrb r2, [r5, #1]
	bic r0, r1
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r5, #2
	add r1, r4, #2
	mov r2, #8
	bl sub_0202BF94
	add r5, #0x12
	add r4, #0x22
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C54C

	thumb_func_start sub_0202C5A4
sub_0202C5A4: ; 0x0202C5A4
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C5A4

	thumb_func_start sub_0202C5AC
sub_0202C5AC: ; 0x0202C5AC
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0xf
	bic r3, r2
	ldrb r2, [r0, #1]
	mov r0, #0xf
	and r0, r2
	orr r0, r3
	strb r0, [r1, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C5AC

	thumb_func_start sub_0202C5C4
sub_0202C5C4: ; 0x0202C5C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0
	add r4, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	str r1, [sp]
	add r5, r2, #0
	ldr r6, [sp, #0x20]
	bl sub_0203A274
	cmp r0, #1
	bne _0202C5FE
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	add r0, r4, #0
	bl sub_0203A138
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_0202BDAC
	str r0, [sp, #4]
	b _0202C686
_0202C5FE:
	add r0, r4, #0
	bl sub_0203A288
	cmp r0, #1
	bne _0202C65E
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	ldr r0, _0202C69C ; =0x0000019E
	cmp r4, r0
	bne _0202C622
	add r0, r6, #0
	bl sub_0202BCE4
	str r0, [sp, #4]
	b _0202C686
_0202C622:
	add r0, #8
	cmp r4, r0
	bne _0202C632
	add r0, r6, #0
	bl sub_0202BCF0
	str r0, [sp, #4]
	b _0202C686
_0202C632:
	add r0, r4, #0
	bl sub_0203A138
	add r7, r0, #0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	ldr r5, _0202C6A0 ; =0x020E5B90
	mov r4, #0
	str r0, [sp, #8]
_0202C644:
	ldr r0, [r5, #0]
	cmp r7, r0
	bne _0202C654
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_0202BDC0
	str r0, [sp, #4]
_0202C654:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x1b
	blo _0202C644
	b _0202C686
_0202C65E:
	add r0, r4, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #1
	bne _0202C686
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0202C6CC
	cmp r0, #0xff
	beq _0202C686
	add r1, r6, #0
	bl sub_0202BD44
	str r0, [sp, #4]
_0202C686:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0202C696
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #1
	bl sub_0202B758
_0202C696:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202C69C: .word 0x0000019E
_0202C6A0: .word 0x020E5B90
	thumb_func_end sub_0202C5C4

	thumb_func_start sub_0202C6A4
sub_0202C6A4: ; 0x0202C6A4
	ldr r3, _0202C6C4 ; =0x020E5B90
	mov r2, #0
_0202C6A8:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _0202C6B6
	ldr r0, _0202C6C8 ; =0x020E5B94
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	bx lr
_0202C6B6:
	add r2, r2, #1
	add r3, #8
	cmp r2, #0x1b
	blo _0202C6A8
	mov r0, #0
	bx lr
	nop
_0202C6C4: .word 0x020E5B90
_0202C6C8: .word 0x020E5B94
	thumb_func_end sub_0202C6A4

	thumb_func_start sub_0202C6CC
sub_0202C6CC: ; 0x0202C6CC
	push {r3, r4, r5, lr}
	ldr r2, _0202C6FC ; =0x020E5B50
	mov r4, #0
_0202C6D2:
	lsl r3, r4, #3
	add r5, r2, r3
	ldrh r5, [r5, #4]
	cmp r1, r5
	bne _0202C6EC
	ldr r1, _0202C700 ; =0x020E5B56
	ldrh r1, [r1, r3]
	bl sub_02025F34
	cmp r0, #0
	bne _0202C6F6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0202C6EC:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, #8
	blo _0202C6D2
_0202C6F6:
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	nop
_0202C6FC: .word 0x020E5B50
_0202C700: .word 0x020E5B56
	thumb_func_end sub_0202C6CC

	thumb_func_start sub_0202C704
sub_0202C704: ; 0x0202C704
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, r2, #0
	bl sub_0202BD98
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_0202B758
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202C704

	thumb_func_start sub_0202C720
sub_0202C720: ; 0x0202C720
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r1, #0
	add r6, r3, #0
	bl sub_0202C78C
	cmp r0, #8
	bhs _0202C748
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202BD58
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C748:
	bne _0202C75E
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202BD70
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C75E:
	cmp r0, #9
	bne _0202C776
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202BD84
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C776:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202BF4C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C720

	thumb_func_start sub_0202C78C
sub_0202C78C: ; 0x0202C78C
	ldr r2, _0202C7F0 ; =0x020E5B50
	mov r3, #0
_0202C790:
	lsl r1, r3, #3
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _0202C79C
	add r0, r3, #0
	bx lr
_0202C79C:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #8
	blo _0202C790
	ldr r2, _0202C7F4 ; =0x00000105
	cmp r0, r2
	beq _0202C7D6
	ldr r1, _0202C7F8 ; =0x00000362
	cmp r0, r1
	beq _0202C7D6
	add r3, r2, #1
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #1
	cmp r0, r3
	beq _0202C7D6
	add r3, r2, #2
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #2
	cmp r0, r3
	beq _0202C7D6
	add r3, r2, #3
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #3
	cmp r0, r3
	bne _0202C7DA
_0202C7D6:
	mov r0, #8
	bx lr
_0202C7DA:
	add r2, r2, #6
	cmp r0, r2
	beq _0202C7E6
	add r1, r1, #4
	cmp r0, r1
	bne _0202C7EA
_0202C7E6:
	mov r0, #9
	bx lr
_0202C7EA:
	mov r0, #0xa
	bx lr
	nop
_0202C7F0: .word 0x020E5B50
_0202C7F4: .word 0x00000105
_0202C7F8: .word 0x00000362
	thumb_func_end sub_0202C78C

	thumb_func_start sub_0202C7FC
sub_0202C7FC: ; 0x0202C7FC
	mov r0, #0x62
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C7FC

	thumb_func_start sub_0202C804
sub_0202C804: ; 0x0202C804
	push {r4, r5, r6, lr}
	mov r2, #0x62
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	add r0, r4, #0
	bl sub_0202C844
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x8c
_0202C81E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202C850
	add r4, r4, #1
	cmp r4, #8
	blt _0202C81E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C804
