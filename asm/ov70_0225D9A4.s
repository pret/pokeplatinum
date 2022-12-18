	.include "macros/function.inc"
	.include "include/ov70_0225D9A4.inc"

	

	.text


	thumb_func_start ov70_0225D9A4
ov70_0225D9A4: ; 0x0225D9A4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02006840
	mov r2, #0x3a
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x70
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r2, #0x3d
	mov r0, #3
	mov r1, #0x71
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r1, #0xfe
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x70
	bl sub_0200681C
	mov r2, #0xfe
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0xc
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x34]
	bl ov66_0222E338
	strb r0, [r4, #2]
	ldr r0, [r4, #0x34]
	bl ov66_0222E338
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225DA02
	bl sub_02022974
_0225DA02:
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, [r5, #0]
	bl sub_02025E38
	mov r1, #0xfd
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r5, #0]
	add r0, #0x3c
	mov r2, #0x70
	bl ov70_0225E4EC
	mov r0, #0x70
	bl ov70_0225C858
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0xc
	ldr r0, [r4, r1]
	bl sub_02025F30
	add r1, r0, #0
	mov r0, #0x71
	mov r2, #0xfa
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0x18
	mov r3, #0x70
	bl ov70_0225C9B4
	mov r2, #0x3e
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #0x71
	str r0, [sp]
	add r2, #8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r4, r2]
	mov r3, #0x70
	bl ov70_02261E10
	mov r1, #0xf9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x70
	bl ov70_02260A70
	mov r1, #0xfb
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0xf4
	add r0, r4, r1
	add r1, r4, #0
	ldr r2, [r5, #0]
	add r1, #0x3c
	mov r3, #0x70
	bl ov70_0225E9C8
	mov r0, #0xc6
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r5, #0]
	add r0, r4, r0
	add r1, #0x3c
	mov r3, #0x70
	bl ov70_0225EBA8
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225EC20
	mov r0, #0x39
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225F114
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225EFD4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x70
	bl ov70_0225F208
	mov r1, #0x3a
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xc4
	add r1, r4, r1
	mov r2, #0x70
	bl ov70_0225F098
	mov r0, #0x70
	str r0, [sp]
	mov r3, #0xfd
	mov r0, #0x61
	lsl r3, r3, #2
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r4, #0x38]
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r2, #0x3c
	bl ov70_0225F350
	ldr r0, [r4, #0x34]
	bl ov66_0222E3BC
	add r5, r0, #0
	bl ov66_0222E8D8
	cmp r0, #1
	bne _0225DB2E
	mov r0, #0x61
	mov r2, #0xb7
	lsl r0, r0, #2
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x3c
	add r2, r4, r2
	mov r3, #0x70
	str r5, [sp]
	bl ov70_0225F8AC
_0225DB2E:
	add r0, r4, #0
	mov r1, #0x70
	bl ov70_02262DA8
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov70_022630A4
	add r0, r4, #0
	bl ov70_022630EC
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x71
	mov r3, #0xfa
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	sub r3, #8
	ldr r0, [r4, #0x34]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov70_02269190
	mov r1, #0xf5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x70
	add r1, r4, #0
	bl ov70_0226C60C
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0225DB8C ; =ov70_0225E4C8
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225DB8C: .word ov70_0225E4C8
	thumb_func_end ov70_0225D9A4

	thumb_func_start ov70_0225DB90
ov70_0225DB90: ; 0x0225DB90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	ldr r0, [r5, #0]
	cmp r0, #8
	bhi _0225DC58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DBB6: ; jump table
	.short _0225DBC8 - _0225DBB6 - 2 ; case 0
	.short _0225DBEA - _0225DBB6 - 2 ; case 1
	.short _0225DBFE - _0225DBB6 - 2 ; case 2
	.short _0225DC7A - _0225DBB6 - 2 ; case 3
	.short _0225DCF8 - _0225DBB6 - 2 ; case 4
	.short _0225DD08 - _0225DBB6 - 2 ; case 5
	.short _0225DD58 - _0225DBB6 - 2 ; case 6
	.short _0225DD76 - _0225DBB6 - 2 ; case 7
	.short _0225DDD0 - _0225DBB6 - 2 ; case 8
_0225DBC8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DBEA:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225DC58
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DBFE:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0225DC26
	bl ov66_02231760
	cmp r0, #1
	beq _0225DC1A
	ldr r0, [r4, #0x34]
	bl ov66_0222DFF8
	cmp r0, #0
	beq _0225DC26
_0225DC1A:
	ldrb r1, [r4, #4]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #4]
_0225DC26:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0225DC42
	ldr r0, [r4, #0x34]
	bl ov66_0222E138
	cmp r0, #1
	bne _0225DC42
	mov r0, #1
	strb r0, [r4, #6]
	add r0, r4, #0
	mov r1, #8
	bl ov70_0225DF38
_0225DC42:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225DC5A
_0225DC58:
	b _0225DDE2
_0225DC5A:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _0225DC68
	mov r0, #3
	str r0, [r5, #0]
	b _0225DDE2
_0225DC68:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _0225DC74
	mov r0, #5
	str r0, [r5, #0]
	b _0225DDE2
_0225DC74:
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DC7A:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov70_0225EF14
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F024
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	bl sub_020383E8
	cmp r0, #0
	beq _0225DCBE
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F184
	b _0225DCF2
_0225DCBE:
	bl sub_0203881C
	cmp r0, #0
	beq _0225DCDC
	bl ov66_022326DC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F1C0
	b _0225DCF2
_0225DCDC:
	ldr r0, [r4, #0x34]
	bl ov66_0222DFF8
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F1F0
_0225DCF2:
	mov r0, #4
	str r0, [r5, #0]
	b _0225DDE2
_0225DCF8:
	ldr r0, _0225DDF4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0225DDE2
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DD08:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov70_0225EF14
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F024
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x46
	bl ov70_0225F288
	add r1, r0, #0
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EA44
	mov r0, #6
	str r0, [r5, #0]
	mov r0, #0x3c
	str r0, [r4, #8]
	b _0225DDE2
_0225DD58:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB5C
	cmp r0, #0
	beq _0225DDE2
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _0225DDE2
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DD76:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F798
	cmp r0, #5
	bne _0225DDA8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DDA8:
	cmp r0, #0
	bne _0225DDE2
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DDD0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225DDE2
	mov r0, #0
	strb r0, [r4, #3]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225DDE2:
	add r0, r4, #0
	bl ov70_0225E88C
	add r0, r4, #0
	bl ov70_0225E92C
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225DDF4: .word 0x021BF67C
	thumb_func_end ov70_0225DB90

	thumb_func_start ov70_0225DDF8
ov70_0225DDF8: ; 0x0225DDF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldrb r1, [r4, #1]
	str r1, [r0, #0x18]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C6F8
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269204
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262DF4
	mov r0, #0x61
	mov r1, #0xc6
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r2, r4, #0
	add r0, r4, r0
	add r1, r4, r1
	add r2, #0x3c
	bl ov70_0225F3E4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F25C
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EA14
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EBBC
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	bl ov70_0225ED4C
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F144
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EFD8
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AD4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022621AC
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA20
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0225C894
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_0225E6D0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x70
	bl sub_0201807C
	mov r0, #0x71
	bl sub_0201807C
	mov r0, #0
	bl sub_020057BC
	mov r0, #0
	bl sub_0200592C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225DDF8

	thumb_func_start ov70_0225DEE8
ov70_0225DEE8: ; 0x0225DEE8
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225DEE8

	thumb_func_start ov70_0225DEEC
ov70_0225DEEC: ; 0x0225DEEC
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end ov70_0225DEEC

	thumb_func_start ov70_0225DEF0
ov70_0225DEF0: ; 0x0225DEF0
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF0

	thumb_func_start ov70_0225DEF8
ov70_0225DEF8: ; 0x0225DEF8
	mov r1, #0xf9
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF8

	thumb_func_start ov70_0225DF00
ov70_0225DF00: ; 0x0225DF00
	mov r1, #0xfa
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF00

	thumb_func_start ov70_0225DF08
ov70_0225DF08: ; 0x0225DF08
	mov r1, #0xfb
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF08

	thumb_func_start ov70_0225DF10
ov70_0225DF10: ; 0x0225DF10
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF10

	thumb_func_start ov70_0225DF18
ov70_0225DF18: ; 0x0225DF18
	ldrb r3, [r0, #4]
	mov r2, #0xf
	lsl r1, r1, #0x18
	bic r3, r2
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov70_0225DF18

	thumb_func_start ov70_0225DF2C
ov70_0225DF2C: ; 0x0225DF2C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov70_0225DF2C

	thumb_func_start ov70_0225DF30
ov70_0225DF30: ; 0x0225DF30
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225DF30

	thumb_func_start ov70_0225DF34
ov70_0225DF34: ; 0x0225DF34
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_0225DF34

	thumb_func_start ov70_0225DF38
ov70_0225DF38: ; 0x0225DF38
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov70_0225DF38

	thumb_func_start ov70_0225DF3C
ov70_0225DF3C: ; 0x0225DF3C
	strb r1, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF3C

	thumb_func_start ov70_0225DF40
ov70_0225DF40: ; 0x0225DF40
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF40

	thumb_func_start ov70_0225DF44
ov70_0225DF44: ; 0x0225DF44
	mov r1, #1
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225DF44

	thumb_func_start ov70_0225DF4C
ov70_0225DF4C: ; 0x0225DF4C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225DF5C
	bl sub_02022974
_0225DF5C:
	add r0, r5, r4
	strb r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225DF4C

	thumb_func_start ov70_0225DF64
ov70_0225DF64: ; 0x0225DF64
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225DF64

	thumb_func_start ov70_0225DF6C
ov70_0225DF6C: ; 0x0225DF6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225DF7C
	bl sub_02022974
_0225DF7C:
	add r0, r5, r4
	add r0, #0x20
	strb r6, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225DF6C

	thumb_func_start ov70_0225DF84
ov70_0225DF84: ; 0x0225DF84
	add r0, r0, r1
	add r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225DF84

	thumb_func_start ov70_0225DF8C
ov70_0225DF8C: ; 0x0225DF8C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225DF98 ; =ov70_0225EA44
	add r0, r0, r2
	bx r3
	nop
_0225DF98: .word ov70_0225EA44
	thumb_func_end ov70_0225DF8C

	thumb_func_start ov70_0225DF9C
ov70_0225DF9C: ; 0x0225DF9C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225DFA8 ; =ov70_0225EAA4
	add r0, r0, r2
	bx r3
	nop
_0225DFA8: .word ov70_0225EAA4
	thumb_func_end ov70_0225DF9C

	thumb_func_start ov70_0225DFAC
ov70_0225DFAC: ; 0x0225DFAC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFB8 ; =ov70_0225EB5C
	add r0, r0, r1
	bx r3
	nop
_0225DFB8: .word ov70_0225EB5C
	thumb_func_end ov70_0225DFAC

	thumb_func_start ov70_0225DFBC
ov70_0225DFBC: ; 0x0225DFBC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFC8 ; =ov70_0225EB08
	add r0, r0, r1
	bx r3
	nop
_0225DFC8: .word ov70_0225EB08
	thumb_func_end ov70_0225DFBC

	thumb_func_start ov70_0225DFCC
ov70_0225DFCC: ; 0x0225DFCC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFD8 ; =ov70_0225EB24
	add r0, r0, r1
	bx r3
	nop
_0225DFD8: .word ov70_0225EB24
	thumb_func_end ov70_0225DFCC

	thumb_func_start ov70_0225DFDC
ov70_0225DFDC: ; 0x0225DFDC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFE8 ; =ov70_0225EB4C
	add r0, r0, r1
	bx r3
	nop
_0225DFE8: .word ov70_0225EB4C
	thumb_func_end ov70_0225DFDC

	thumb_func_start ov70_0225DFEC
ov70_0225DFEC: ; 0x0225DFEC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFF8 ; =ov70_0225EB74
	add r0, r0, r1
	bx r3
	nop
_0225DFF8: .word ov70_0225EB74
	thumb_func_end ov70_0225DFEC

	thumb_func_start ov70_0225DFFC
ov70_0225DFFC: ; 0x0225DFFC
	mov r2, #0xc6
	lsl r2, r2, #2
	ldr r3, _0225E008 ; =ov70_0225EBC4
	add r0, r0, r2
	bx r3
	nop
_0225E008: .word ov70_0225EBC4
	thumb_func_end ov70_0225DFFC

	thumb_func_start ov70_0225E00C
ov70_0225E00C: ; 0x0225E00C
	push {r3, lr}
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x71
	mov r3, #0
	bl ov70_0225EDA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E00C

	thumb_func_start ov70_0225E020
ov70_0225E020: ; 0x0225E020
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x71
	bl ov70_0225EDA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E020

	thumb_func_start ov70_0225E034
ov70_0225E034: ; 0x0225E034
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E040 ; =ov70_0225EDE0
	add r0, r0, r1
	bx r3
	nop
_0225E040: .word ov70_0225EDE0
	thumb_func_end ov70_0225E034

	thumb_func_start ov70_0225E044
ov70_0225E044: ; 0x0225E044
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E050 ; =ov70_0225EDF8
	bx r3
	nop
_0225E050: .word ov70_0225EDF8
	thumb_func_end ov70_0225E044

	thumb_func_start ov70_0225E054
ov70_0225E054: ; 0x0225E054
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E060 ; =ov70_0225EE04
	add r0, r0, r1
	bx r3
	nop
_0225E060: .word ov70_0225EE04
	thumb_func_end ov70_0225E054

	thumb_func_start ov70_0225E064
ov70_0225E064: ; 0x0225E064
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225E070 ; =ov70_0225EE08
	add r0, r0, r2
	bx r3
	nop
_0225E070: .word ov70_0225EE08
	thumb_func_end ov70_0225E064

	thumb_func_start ov70_0225E074
ov70_0225E074: ; 0x0225E074
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r4, r2, #0
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	add r3, r4, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E074

	thumb_func_start ov70_0225E0A4
ov70_0225E0A4: ; 0x0225E0A4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	add r4, r2, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	add r3, r4, #0
	str r2, [sp, #8]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #0xc]
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E0A4

	thumb_func_start ov70_0225E0D4
ov70_0225E0D4: ; 0x0225E0D4
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E0E0 ; =ov70_0225EED8
	add r0, r0, r1
	bx r3
	nop
_0225E0E0: .word ov70_0225EED8
	thumb_func_end ov70_0225E0D4

	thumb_func_start ov70_0225E0E4
ov70_0225E0E4: ; 0x0225E0E4
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E0F0 ; =ov70_0225EF14
	bx r3
	nop
_0225E0F0: .word ov70_0225EF14
	thumb_func_end ov70_0225E0E4

	thumb_func_start ov70_0225E0F4
ov70_0225E0F4: ; 0x0225E0F4
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225E100 ; =ov70_0225EF6C
	add r0, r0, r2
	bx r3
	nop
_0225E100: .word ov70_0225EF6C
	thumb_func_end ov70_0225E0F4

	thumb_func_start ov70_0225E104
ov70_0225E104: ; 0x0225E104
	push {r4, r5, lr}
	sub sp, #0xc
	str r2, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	mov r2, #0x70
	str r0, [sp, #8]
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r1, r5, #0
	add r3, r4, #0
	bl ov70_0225EFE0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E104

	thumb_func_start ov70_0225E12C
ov70_0225E12C: ; 0x0225E12C
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r3, _0225E138 ; =ov70_0225F024
	add r0, r0, r1
	bx r3
	nop
_0225E138: .word ov70_0225F024
	thumb_func_end ov70_0225E12C

	thumb_func_start ov70_0225E13C
ov70_0225E13C: ; 0x0225E13C
	push {r4, lr}
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F048
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E13C

	thumb_func_start ov70_0225E14C
ov70_0225E14C: ; 0x0225E14C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F078
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E14C

	thumb_func_start ov70_0225E164
ov70_0225E164: ; 0x0225E164
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov70_0225E164

	thumb_func_start ov70_0225E194
ov70_0225E194: ; 0x0225E194
	push {lr}
	sub sp, #0x14
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	mov r3, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	thumb_func_end ov70_0225E194

	thumb_func_start ov70_0225E1C4
ov70_0225E1C4: ; 0x0225E1C4
	push {r3, lr}
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov70_0225EED8
	cmp r0, #0
	beq _0225E1EA
	cmp r0, #1
	beq _0225E1E6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0225E1EE
	ldr r0, _0225E1F4 ; =0x000005DC
	bl sub_02005748
_0225E1E6:
	mov r0, #1
	pop {r3, pc}
_0225E1EA:
	mov r0, #0
	pop {r3, pc}
_0225E1EE:
	mov r0, #2
	pop {r3, pc}
	nop
_0225E1F4: .word 0x000005DC
	thumb_func_end ov70_0225E1C4

	thumb_func_start ov70_0225E1F8
ov70_0225E1F8: ; 0x0225E1F8
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	ldr r3, _0225E208 ; =ov70_0225EF14
	add r2, r1, #0
	bx r3
	nop
_0225E208: .word ov70_0225EF14
	thumb_func_end ov70_0225E1F8

	thumb_func_start ov70_0225E20C
ov70_0225E20C: ; 0x0225E20C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E218 ; =ov70_0225F288
	bx r3
	nop
_0225E218: .word ov70_0225F288
	thumb_func_end ov70_0225E20C

	thumb_func_start ov70_0225E21C
ov70_0225E21C: ; 0x0225E21C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0xb7
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F2A8
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E21C

	thumb_func_start ov70_0225E234
ov70_0225E234: ; 0x0225E234
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x70
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02025E6C
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl ov66_0222E338
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _0225E256
	bl ov66_0222E3BC
	b _0225E25C
_0225E256:
	add r1, r4, #0
	bl ov66_0222E374
_0225E25C:
	add r1, r6, #0
	mov r2, #0x70
	bl ov66_0222E640
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0225F2C8
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E234

	thumb_func_start ov70_0225E27C
ov70_0225E27C: ; 0x0225E27C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E288 ; =ov70_0225F2D8
	bx r3
	nop
_0225E288: .word ov70_0225F2D8
	thumb_func_end ov70_0225E27C

	thumb_func_start ov70_0225E28C
ov70_0225E28C: ; 0x0225E28C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E298 ; =ov70_0225F2E8
	bx r3
	nop
_0225E298: .word ov70_0225F2E8
	thumb_func_end ov70_0225E28C

	thumb_func_start ov70_0225E29C
ov70_0225E29C: ; 0x0225E29C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E2A8 ; =ov70_0225F2F8
	bx r3
	nop
_0225E2A8: .word ov70_0225F2F8
	thumb_func_end ov70_0225E29C

	thumb_func_start ov70_0225E2AC
ov70_0225E2AC: ; 0x0225E2AC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2B8 ; =sub_0200C158
	bx r3
	nop
_0225E2B8: .word sub_0200C158
	thumb_func_end ov70_0225E2AC

	thumb_func_start ov70_0225E2BC
ov70_0225E2BC: ; 0x0225E2BC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2C8 ; =sub_0200C190
	bx r3
	nop
_0225E2C8: .word sub_0200C190
	thumb_func_end ov70_0225E2BC

	thumb_func_start ov70_0225E2CC
ov70_0225E2CC: ; 0x0225E2CC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2D8 ; =sub_0200C1C8
	bx r3
	nop
_0225E2D8: .word sub_0200C1C8
	thumb_func_end ov70_0225E2CC

	thumb_func_start ov70_0225E2DC
ov70_0225E2DC: ; 0x0225E2DC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2E8 ; =sub_0200C200
	bx r3
	nop
_0225E2E8: .word sub_0200C200
	thumb_func_end ov70_0225E2DC

	thumb_func_start ov70_0225E2EC
ov70_0225E2EC: ; 0x0225E2EC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2F8 ; =sub_0200C238
	bx r3
	nop
_0225E2F8: .word sub_0200C238
	thumb_func_end ov70_0225E2EC

	thumb_func_start ov70_0225E2FC
ov70_0225E2FC: ; 0x0225E2FC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E308 ; =sub_0200C270
	bx r3
	nop
_0225E308: .word sub_0200C270
	thumb_func_end ov70_0225E2FC

	thumb_func_start ov70_0225E30C
ov70_0225E30C: ; 0x0225E30C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov66_022316E8
	add r2, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B7EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E30C

	thumb_func_start ov70_0225E328
ov70_0225E328: ; 0x0225E328
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0225F7F8
	cmp r4, r0
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F7FC
	cmp r0, #1
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F834
	cmp r0, #0
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F828
	cmp r6, r0
	beq _0225E376
_0225E368:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_0225F79C
_0225E376:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225E328

	thumb_func_start ov70_0225E378
ov70_0225E378: ; 0x0225E378
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r3, r0
	add r3, #0x3c
	add r2, r1, #0
	add r1, r3, #0
	mov r3, #0x70
	bl ov70_0225F7A8
	pop {r3, pc}
	thumb_func_end ov70_0225E378

	thumb_func_start ov70_0225E390
ov70_0225E390: ; 0x0225E390
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F7FC
	cmp r0, #0
	beq _0225E3CC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F7F8
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl ov66_0222E374
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	add r1, #8
	add r1, r4, r1
	add r4, #0x3c
	add r2, r4, #0
	mov r3, #0x70
	bl ov70_0225FDA0
_0225E3CC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E390

	thumb_func_start ov70_0225E3D0
ov70_0225E3D0: ; 0x0225E3D0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3DC ; =ov70_0225F7E0
	add r0, r0, r1
	bx r3
	nop
_0225E3DC: .word ov70_0225F7E0
	thumb_func_end ov70_0225E3D0

	thumb_func_start ov70_0225E3E0
ov70_0225E3E0: ; 0x0225E3E0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3EC ; =ov70_0225F7F8
	add r0, r0, r1
	bx r3
	nop
_0225E3EC: .word ov70_0225F7F8
	thumb_func_end ov70_0225E3E0

	thumb_func_start ov70_0225E3F0
ov70_0225E3F0: ; 0x0225E3F0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3FC ; =ov70_0225F7FC
	add r0, r0, r1
	bx r3
	nop
_0225E3FC: .word ov70_0225F7FC
	thumb_func_end ov70_0225E3F0

	thumb_func_start ov70_0225E400
ov70_0225E400: ; 0x0225E400
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E40C ; =ov70_0225F814
	add r0, r0, r1
	bx r3
	nop
_0225E40C: .word ov70_0225F814
	thumb_func_end ov70_0225E400

	thumb_func_start ov70_0225E410
ov70_0225E410: ; 0x0225E410
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E41C ; =ov70_0225F7EC
	add r0, r0, r1
	bx r3
	nop
_0225E41C: .word ov70_0225F7EC
	thumb_func_end ov70_0225E410

	thumb_func_start ov70_0225E420
ov70_0225E420: ; 0x0225E420
	mov r2, #0xf7
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldr r3, _0225E42C ; =ov70_0226C810
	mov r2, #1
	bx r3
	; .align 2, 0
_0225E42C: .word ov70_0226C810
	thumb_func_end ov70_0225E420

	thumb_func_start ov70_0225E430
ov70_0225E430: ; 0x0225E430
	ldr r1, _0225E438 ; =0x0000018A
	mov r2, #1
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
_0225E438: .word 0x0000018A
	thumb_func_end ov70_0225E430

	thumb_func_start ov70_0225E43C
ov70_0225E43C: ; 0x0225E43C
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r3, _0225E448 ; =ov70_0225F934
	add r0, r0, r2
	bx r3
	nop
_0225E448: .word ov70_0225F934
	thumb_func_end ov70_0225E43C

	thumb_func_start ov70_0225E44C
ov70_0225E44C: ; 0x0225E44C
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r3, _0225E458 ; =ov70_02260A68
	add r0, r0, r1
	bx r3
	nop
_0225E458: .word ov70_02260A68
	thumb_func_end ov70_0225E44C

	thumb_func_start ov70_0225E45C
ov70_0225E45C: ; 0x0225E45C
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r2, #0
	str r2, [r0, r1]
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225E45C

	thumb_func_start ov70_0225E46C
ov70_0225E46C: ; 0x0225E46C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225E47A
	bl sub_02022974
_0225E47A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl ov66_0222E374
	bl ov66_0222E8C4
	add r6, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_02269268
	ldr r0, [r5, #0x34]
	bl ov66_0222E338
	cmp r4, r0
	bne _0225E4A8
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl ov66_0222EB6C
_0225E4A8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E46C

	thumb_func_start ov70_0225E4AC
ov70_0225E4AC: ; 0x0225E4AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225E4BA
	bl sub_02022974
_0225E4BA:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov70_02269298
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E4AC

	thumb_func_start ov70_0225E4C8
ov70_0225E4C8: ; 0x0225E4C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022622A4
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAE0
	add r4, #0x3c
	add r0, r4, #0
	bl ov70_0225E740
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E4C8

	thumb_func_start ov70_0225E4EC
ov70_0225E4EC: ; 0x0225E4EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _0225E698 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225E69C ; =0x04001050
	add r6, r2, #0
	strh r1, [r0]
	mov r0, #0x20
	add r1, r6, #0
	bl sub_0201DBEC
	ldr r0, _0225E6A0 ; =0x0226D664
	bl sub_0201FE94
	ldr r0, _0225E6A4 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	ldr r0, _0225E6A8 ; =0x0226D5BC
	bl sub_02018368
	add r0, r6, #0
	bl sub_02018340
	str r0, [r5, #0]
	mov r0, #0
	ldr r7, _0225E6AC ; =0x0226D6B4
	ldr r4, _0225E6B0 ; =0x0226D5CC
	str r0, [sp, #0x18]
_0225E536:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r6, #0
	bl sub_02019690
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [sp, #0x18]
	add r7, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225E536
	ldr r0, [sp, #0x14]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0
	mov r1, #0xa0
	add r2, r6, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x80
	add r2, r6, #0
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DAA4
	mov r1, #1
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200DD0C
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl sub_0200E2A4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xba
	mov r1, #0x5a
	mov r2, #0
	mov r3, #0x40
	str r6, [sp, #4]
	bl sub_02006E84
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	ldr r0, _0225E6B4 ; =0x0226D5DC
	ldr r2, _0225E6B8 ; =0x00100010
	mov r1, #0x10
	bl sub_0201E88C
	mov r0, #0x18
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
	add r1, r5, #0
	mov r0, #0x18
	add r1, #8
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0
	add r4, r5, #0
_0225E642:
	mov r0, #0x18
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #4
	blt _0225E642
	mov r0, #0x18
	add r1, r6, #0
	bl sub_0201DCC8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	str r0, [sp]
	ldr r0, _0225E6BC ; =ov70_0225E754
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_02024220
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225E698: .word 0x04000050
_0225E69C: .word 0x04001050
_0225E6A0: .word 0x0226D664
_0225E6A4: .word 0x021BF6DC
_0225E6A8: .word 0x0226D5BC
_0225E6AC: .word 0x0226D6B4
_0225E6B0: .word 0x0226D5CC
_0225E6B4: .word 0x0226D5DC
_0225E6B8: .word 0x00100010
_0225E6BC: .word ov70_0225E754
	thumb_func_end ov70_0225E4EC

	thumb_func_start ov70_0225E6C0
ov70_0225E6C0: ; 0x0225E6C0
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_020219F8
	bl sub_0201DCE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E6C0

	thumb_func_start ov70_0225E6D0
ov70_0225E6D0: ; 0x0225E6D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0201DC3C
	ldr r5, _0225E73C ; =0x0226D5CC
	mov r4, #0
_0225E6DC:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225E6DC
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0201DCF0
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	add r7, r0, #0
	str r4, [r6, r0]
	add r5, r6, #0
	sub r7, #0x10
_0225E70E:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225E70E
	ldr r0, [r6, #4]
	bl sub_02021964
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020242C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E73C: .word 0x0226D5CC
	thumb_func_end ov70_0225E6D0

	thumb_func_start ov70_0225E740
ov70_0225E740: ; 0x0225E740
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0200A858
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E740

	thumb_func_start ov70_0225E754
ov70_0225E754: ; 0x0225E754
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0225E864 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225E868 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225E86C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0225E870 ; =0x0226D5EC
	bl sub_020BFD2C
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r1, #0
	ldr r0, _0225E874 ; =0x00006B5A
	ldr r2, _0225E878 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _0225E87C ; =0xBFFF0000
	ldr r0, _0225E880 ; =0x04000580
	ldr r2, _0225E884 ; =0xFFFFF224
	str r1, [r0, #0]
	ldr r1, _0225E888 ; =0xFFFFF805
	mov r0, #0
	mov r3, #0x6e
	bl sub_020AF51C
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	add r4, sp, #4
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #1
	bl sub_020AF51C
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	mov r0, #2
	mov r1, #0
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	ldrsh r3, [r4, r3]
	bl sub_020AF51C
	ldr r1, _0225E878 ; =0x00007FFF
	mov r0, #2
	bl sub_020AF558
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #3
	bl sub_020AF51C
	ldr r1, _0225E878 ; =0x00007FFF
	mov r0, #3
	bl sub_020AF558
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225E864: .word 0x04000008
_0225E868: .word 0xFFFFCFFD
_0225E86C: .word 0x0000CFFB
_0225E870: .word 0x0226D5EC
_0225E874: .word 0x00006B5A
_0225E878: .word 0x00007FFF
_0225E87C: .word 0xBFFF0000
_0225E880: .word 0x04000580
_0225E884: .word 0xFFFFF224
_0225E888: .word 0xFFFFF805
	thumb_func_end ov70_0225E754

	thumb_func_start ov70_0225E88C
ov70_0225E88C: ; 0x0225E88C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA44
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225E8B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8B2
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E20
_0225E8B2:
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262210
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225E8E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8E8
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA5C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E2C
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C718
_0225E8E8:
	add r0, r4, #0
	bl ov70_0225E970
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225E91E
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225E90E
_0225E90A:
	mov r2, #1
	b _0225E910
_0225E90E:
	mov r2, #0
_0225E910:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x70
	bl ov70_0225F418
_0225E91E:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269220
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E88C

	thumb_func_start ov70_0225E92C
ov70_0225E92C: ; 0x0225E92C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AEC
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262298
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAD4
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269240
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r4, #0x3c
	add r0, r4, #0
	bl ov70_0225E6C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E92C

	thumb_func_start ov70_0225E970
ov70_0225E970: ; 0x0225E970
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #0x34]
	bl ov66_0222E190
	str r0, [sp, #8]
	mov r4, #0
_0225E980:
	add r0, r4, #0
	bl ov66_02233184
	add r6, r0, #0
	cmp r6, #1
	bne _0225E99E
	add r0, r4, #0
	bl ov66_022331A4
	cmp r0, #0
	bne _0225E99A
	mov r5, #1
	b _0225E9A0
_0225E99A:
	mov r5, #0
	b _0225E9A0
_0225E99E:
	mov r5, #0
_0225E9A0:
	add r0, r4, #0
	bl ov66_02233224
	add r2, r0, #0
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #0
	add r3, r6, #0
	bl ov70_022627BC
	add r4, r4, #1
	cmp r4, #3
	blt _0225E980
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E970

	thumb_func_start ov70_0225E9C8
ov70_0225E9C8: ; 0x0225E9C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r4, r2, #0
	add r6, r3, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_02025E44
	bl sub_02027AC0
	str r0, [r5, #0x14]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0225E9C8

	thumb_func_start ov70_0225EA14
ov70_0225EA14: ; 0x0225EA14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EA30
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EA30:
	add r0, r4, #0
	bl ov70_0225EB38
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov70_0225EA14

	thumb_func_start ov70_0225EA44
ov70_0225EA44: ; 0x0225EA44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EA64
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EA64:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0225EAA0 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D78C
	mov r1, #1
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200E060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EAA0: .word 0x0001020F
	thumb_func_end ov70_0225EA44

	thumb_func_start ov70_0225EAA4
ov70_0225EAA4: ; 0x0225EAA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EAC4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EAC4:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225EB04 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D78C
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200E060
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EB04: .word 0x0001020F
	thumb_func_end ov70_0225EAA4

	thumb_func_start ov70_0225EB08
ov70_0225EB08: ; 0x0225EB08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB16
	bl sub_02022974
_0225EB16:
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EB08

	thumb_func_start ov70_0225EB24
ov70_0225EB24: ; 0x0225EB24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB36
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x1c]
_0225EB36:
	pop {r4, pc}
	thumb_func_end ov70_0225EB24

	thumb_func_start ov70_0225EB38
ov70_0225EB38: ; 0x0225EB38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB4A
	bl sub_0200EBC8
	mov r0, #0
	str r0, [r4, #0x1c]
_0225EB4A:
	pop {r4, pc}
	thumb_func_end ov70_0225EB38

	thumb_func_start ov70_0225EB4C
ov70_0225EB4C: ; 0x0225EB4C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0225EB56
	mov r0, #1
	bx lr
_0225EB56:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225EB4C

	thumb_func_start ov70_0225EB5C
ov70_0225EB5C: ; 0x0225EB5C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0225EB70
	mov r0, #1
	pop {r3, pc}
_0225EB70:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0225EB5C

	thumb_func_start ov70_0225EB74
ov70_0225EB74: ; 0x0225EB74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EB90
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EB90:
	add r0, r4, #0
	bl ov70_0225EB38
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EB74

	thumb_func_start ov70_0225EBA8
ov70_0225EBA8: ; 0x0225EBA8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0225E9C8
	add r0, r4, #0
	mov r1, #2
	bl sub_0201C2B4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EBA8

	thumb_func_start ov70_0225EBBC
ov70_0225EBBC: ; 0x0225EBBC
	ldr r3, _0225EBC0 ; =ov70_0225EA14
	bx r3
	; .align 2, 0
_0225EBC0: .word ov70_0225EA14
	thumb_func_end ov70_0225EBBC

	thumb_func_start ov70_0225EBC4
ov70_0225EBC4: ; 0x0225EBC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EBE4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EBE4:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D738
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl sub_0200E69C
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EBC4

	thumb_func_start ov70_0225EC20
ov70_0225EC20: ; 0x0225EC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3e
	add r1, r5, #0
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x13
	str r5, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	bl sub_02009A4C
	str r0, [r7, #0x40]
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4d
	str r5, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0
	bl sub_02009B04
	str r0, [r7, #0x44]
	ldr r1, _0225ED44 ; =0x00001388
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r5, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x48]
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4f
	str r5, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x4c]
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r7, #0x40]
	bl sub_0200A3DC
	ldr r0, [r7, #0x44]
	bl sub_0200A640
	ldr r1, _0225ED44 ; =0x00001388
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #0x13
	str r2, [sp, #0x10]
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #4]
	mov r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x12
	str r5, [sp, #0x48]
	ldr r4, _0225ED48 ; =0x0226D580
	str r6, [sp, #0x40]
	str r0, [sp, #0x34]
	add r5, r7, #0
_0225ED0E:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0225ED0E
	mov r0, #0
	str r0, [r7, #0x3c]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225ED44: .word 0x00001388
_0225ED48: .word 0x0226D580
	thumb_func_end ov70_0225EC20

	thumb_func_start ov70_0225ED4C
ov70_0225ED4C: ; 0x0225ED4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _0225ED5C
	bl ov70_0225EDE0
_0225ED5C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225ED6C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225EF14
_0225ED6C:
	mov r7, #0
	add r4, r5, #0
_0225ED70:
	ldr r0, [r4, #0x50]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0x50]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #2
	blt _0225ED70
	ldr r0, [r5, #0x40]
	bl sub_0200A4E4
	ldr r0, [r5, #0x44]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r4, #0
	lsl r7, r7, #4
_0225ED94:
	ldr r0, [r6, r7]
	ldr r1, [r5, #0x40]
	bl sub_02009D68
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, #4
	blt _0225ED94
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225ED4C

	thumb_func_start ov70_0225EDA8
ov70_0225EDA8: ; 0x0225EDA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0225EDBC
	bl sub_02022974
_0225EDBC:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02013A04
	str r0, [r5, #0x34]
	mov r1, #0
	strh r4, [r5, #0x38]
	cmp r4, #0
	bls _0225EDDE
	add r2, r1, #0
_0225EDD0:
	ldr r0, [r5, #0x34]
	add r1, r1, #1
	add r0, r0, r2
	str r6, [r0, #4]
	add r2, #8
	cmp r1, r4
	blo _0225EDD0
_0225EDDE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225EDA8

	thumb_func_start ov70_0225EDE0
ov70_0225EDE0: ; 0x0225EDE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0225EDF4
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x34]
	strh r0, [r4, #0x38]
_0225EDF4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EDE0

	thumb_func_start ov70_0225EDF8
ov70_0225EDF8: ; 0x0225EDF8
	ldr r3, _0225EE00 ; =sub_02013A6C
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225EE00: .word sub_02013A6C
	thumb_func_end ov70_0225EDF8

	thumb_func_start ov70_0225EE04
ov70_0225EE04: ; 0x0225EE04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225EE04

	thumb_func_start ov70_0225EE08
ov70_0225EE08: ; 0x0225EE08
	push {r3, r4}
	ldrh r2, [r0, #0x38]
	mov r3, #0
	cmp r2, #0
	ble _0225EE2A
	ldr r4, [r0, #0x34]
_0225EE14:
	ldr r2, [r4, #4]
	cmp r1, r2
	bne _0225EE20
	mov r0, #1
	pop {r3, r4}
	bx lr
_0225EE20:
	ldrh r2, [r0, #0x38]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _0225EE14
_0225EE2A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0225EE08

	thumb_func_start ov70_0225EE30
ov70_0225EE30: ; 0x0225EE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225EE46
	bl sub_02022974
_0225EE46:
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #1
	cmp r0, #0x12
	blt _0225EE52
	bl sub_02022974
_0225EE52:
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r5, #0
	add r1, #0x20
	str r1, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x18
	mov r2, #1
	strh r0, [r5, #0x3a]
	ldr r0, _0225EED4 ; =ov70_0225EF58
	str r0, [r5, #4]
	ldrb r0, [r3, #0x1c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldrb r3, [r3, #0x18]
	ldr r0, [r6, #0]
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r2, sp, #0x18
	ldr r3, [sp, #0x2c]
	ldrh r2, [r2, #0x10]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	str r0, [r5, #0x30]
	add r5, #0x20
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225EED4: .word ov70_0225EF58
	thumb_func_end ov70_0225EE30

	thumb_func_start ov70_0225EED8
ov70_0225EED8: ; 0x0225EED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0225EEE8
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0225EEE8:
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0225EEFC
	add r0, r0, #1
	cmp r4, r0
	bne _0225EF04
_0225EEFC:
	add r0, r5, #0
	bl ov70_0225EF70
	b _0225EF0A
_0225EF04:
	ldr r0, _0225EF10 ; =0x000005DC
	bl sub_02005748
_0225EF0A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0225EF10: .word 0x000005DC
	thumb_func_end ov70_0225EED8

	thumb_func_start ov70_0225EF14
ov70_0225EF14: ; 0x0225EF14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225EF56
	bl sub_02001384
	mov r0, #0
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A8FC
	mov r4, #0
	str r4, [r5, #0x3c]
	add r6, r4, #0
_0225EF46:
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0225EF46
_0225EF56:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225EF14

	thumb_func_start ov70_0225EF58
ov70_0225EF58: ; 0x0225EF58
	push {r3, lr}
	cmp r2, #0
	bne _0225EF64
	ldr r0, _0225EF68 ; =0x000005DC
	bl sub_02005748
_0225EF64:
	pop {r3, pc}
	nop
_0225EF68: .word 0x000005DC
	thumb_func_end ov70_0225EF58

	thumb_func_start ov70_0225EF6C
ov70_0225EF6C: ; 0x0225EF6C
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov70_0225EF6C

	thumb_func_start ov70_0225EF70
ov70_0225EF70: ; 0x0225EF70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0225EF90
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EF90:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	mov r2, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _0225EFAC
	mov r1, #0
	bl sub_02021CAC
	b _0225EFB2
_0225EFAC:
	mov r1, #1
	bl sub_02021CAC
_0225EFB2:
	add r0, sp, #0
	ldrh r1, [r0]
	ldrh r0, [r4, #0x3a]
	sub r0, r0, #7
	cmp r1, r0
	ldr r0, [r4, #0x54]
	blt _0225EFCA
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EFCA:
	mov r1, #1
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EF70

	thumb_func_start ov70_0225EFD4
ov70_0225EFD4: ; 0x0225EFD4
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225EFD4

	thumb_func_start ov70_0225EFD8
ov70_0225EFD8: ; 0x0225EFD8
	ldr r3, _0225EFDC ; =ov70_0225F024
	bx r3
	; .align 2, 0
_0225EFDC: .word ov70_0225F024
	thumb_func_end ov70_0225EFD8

	thumb_func_start ov70_0225EFE0
ov70_0225EFE0: ; 0x0225EFE0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	str r2, [sp]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #4]
	ldrb r0, [r0, #0x18]
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r1, r4, #0
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EFE0

	thumb_func_start ov70_0225F024
ov70_0225F024: ; 0x0225F024
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0225F044
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201AD10
	add r0, r4, #0
	bl sub_0201A8FC
_0225F044:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F024

	thumb_func_start ov70_0225F048
ov70_0225F048: ; 0x0225F048
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r3, [sp]
	add r5, r2, #0
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r1, _0225F074 ; =0x0001020F
	add r4, r0, #0
	str r1, [sp, #8]
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225F074: .word 0x0001020F
	thumb_func_end ov70_0225F048

	thumb_func_start ov70_0225F078
ov70_0225F078: ; 0x0225F078
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	str r3, [sp]
	add r1, sp, #8
	add r4, r2, #0
	ldrh r1, [r1, #0x10]
	add r2, r5, #0
	add r3, r4, #0
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F078

	thumb_func_start ov70_0225F098
ov70_0225F098: ; 0x0225F098
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0225F0AA
	bl sub_02022974
_0225F0AA:
	mov r0, #2
	add r1, r6, #0
	bl sub_02013A04
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x43
	bl ov70_0225F288
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #0
	bl sub_02013A6C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x42
	bl ov70_0225F288
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_02013A6C
	ldr r3, _0225F0FC ; =0x0226D644
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0]
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_0225F0FC: .word 0x0226D644
	thumb_func_end ov70_0225F098

	thumb_func_start ov70_0225F100
ov70_0225F100: ; 0x0225F100
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0225F112
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0]
_0225F112:
	pop {r4, pc}
	thumb_func_end ov70_0225F100

	thumb_func_start ov70_0225F114
ov70_0225F114: ; 0x0225F114
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r1, r4, #0
	mov r2, #1
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225F114

	thumb_func_start ov70_0225F144
ov70_0225F144: ; 0x0225F144
	ldr r3, _0225F148 ; =sub_0201A8FC
	bx r3
	; .align 2, 0
_0225F148: .word sub_0201A8FC
	thumb_func_end ov70_0225F144

	thumb_func_start ov70_0225F14C
ov70_0225F14C: ; 0x0225F14C
	push {r4, lr}
	sub sp, #0x10
	add r2, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r3, #0xff
	str r3, [sp, #4]
	ldr r3, _0225F180 ; =0x0001020F
	add r4, r0, #0
	str r3, [sp, #8]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_0225F180: .word 0x0001020F
	thumb_func_end ov70_0225F14C

	thumb_func_start ov70_0225F184
ov70_0225F184: ; 0x0225F184
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020382F8
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov66_022316F4
	add r7, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r1, [r4, #0]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r6, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F184

	thumb_func_start ov70_0225F1C0
ov70_0225F1C0: ; 0x0225F1C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov66_0223270C
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x20
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F1C0

	thumb_func_start ov70_0225F1F0
ov70_0225F1F0: ; 0x0225F1F0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #2
	mov r2, #0xe
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225F14C
	pop {r4, pc}
	thumb_func_end ov70_0225F1F0

	thumb_func_start ov70_0225F208
ov70_0225F208: ; 0x0225F208
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	mov r0, #8
	mov r1, #0x40
	add r2, r7, #0
	bl sub_0200B368
	ldr r1, [sp]
	ldr r4, _0225F258 ; =0x0226D5AC
	str r0, [r1, #0]
	mov r6, #0
	add r5, r1, #0
_0225F222:
	ldr r2, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0225F222
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x14]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F258: .word 0x0226D5AC
	thumb_func_end ov70_0225F208

	thumb_func_start ov70_0225F25C
ov70_0225F25C: ; 0x0225F25C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200B3F0
	mov r4, #0
	add r5, r6, #0
_0225F26A:
	ldr r0, [r5, #4]
	bl sub_0200B190
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225F26A
	ldr r0, [r6, #0x14]
	bl sub_020237BC
	ldr r0, [r6, #0x18]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F25C

	thumb_func_start ov70_0225F288
ov70_0225F288: ; 0x0225F288
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #2
	add r0, r4, r0
	add r1, r2, #0
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x18]
	bl sub_0200B1B8
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_0200C388
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov70_0225F288

	thumb_func_start ov70_0225F2A8
ov70_0225F2A8: ; 0x0225F2A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	add r4, r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F2A8

	thumb_func_start ov70_0225F2C8
ov70_0225F2C8: ; 0x0225F2C8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2D4 ; =sub_0200B498
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2D4: .word sub_0200B498
	thumb_func_end ov70_0225F2C8

	thumb_func_start ov70_0225F2D8
ov70_0225F2D8: ; 0x0225F2D8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2E4 ; =sub_0200C0B0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2E4: .word sub_0200C0B0
	thumb_func_end ov70_0225F2D8

	thumb_func_start ov70_0225F2E8
ov70_0225F2E8: ; 0x0225F2E8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2F4 ; =sub_0200C0E8
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2F4: .word sub_0200C0E8
	thumb_func_end ov70_0225F2E8

	thumb_func_start ov70_0225F2F8
ov70_0225F2F8: ; 0x0225F2F8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F304 ; =sub_0200C120
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F304: .word sub_0200C120
	thumb_func_end ov70_0225F2F8

	thumb_func_start ov70_0225F308
ov70_0225F308: ; 0x0225F308
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F314 ; =sub_0200BDD0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F314: .word sub_0200BDD0
	thumb_func_end ov70_0225F308

	thumb_func_start ov70_0225F318
ov70_0225F318: ; 0x0225F318
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r1, r3, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200BE08
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F318

	thumb_func_start ov70_0225F32C
ov70_0225F32C: ; 0x0225F32C
	ldr r3, _0225F334 ; =sub_0200BE48
	ldr r0, [r0, #0]
	bx r3
	nop
_0225F334: .word sub_0200BE48
	thumb_func_end ov70_0225F32C

	thumb_func_start ov70_0225F338
ov70_0225F338: ; 0x0225F338
	ldr r3, _0225F340 ; =sub_0200C41C
	ldr r0, [r0, #0]
	bx r3
	nop
_0225F340: .word sub_0200C41C
	thumb_func_end ov70_0225F338

	thumb_func_start ov70_0225F344
ov70_0225F344: ; 0x0225F344
	mov r1, #0xf6
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F344

	thumb_func_start ov70_0225F350
ov70_0225F350: ; 0x0225F350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	add r5, r0, #0
	add r0, r3, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_02025F30
	str r0, [sp, #4]
	mov r0, #0xba
	add r1, r4, #0
	bl sub_02006C24
	mov r2, #0x53
	lsl r2, r2, #2
	str r0, [r5, r2]
	str r4, [sp]
	ldr r2, [r5, r2]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0225F9BC
	mov r2, #0x53
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r4, #0
	bl ov70_0225FA84
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r5, r2
	add r2, #0x38
	ldr r2, [r5, r2]
	add r1, r6, #0
	add r3, r4, #0
	bl ov70_02260744
	mov r1, #0
	strb r1, [r5, #2]
	strb r1, [r5, #1]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _0225F3DC
	mov r0, #4
	strb r1, [r5]
	bl sub_0201975C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225F3DC:
	mov r0, #5
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F350

	thumb_func_start ov70_0225F3E4
ov70_0225F3E4: ; 0x0225F3E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	add r4, r2, #0
	bl ov70_022607A8
	add r0, r5, #0
	add r0, #8
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0225FAA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225FA10
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02006CA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F3E4

	thumb_func_start ov70_0225F418
ov70_0225F418: ; 0x0225F418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	str r0, [sp, #0x38]
	add r0, #0x3c
	str r0, [sp, #0x38]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldrb r1, [r4]
	add r7, r3, #0
	ldr r6, [r5, #0x34]
	str r0, [sp, #0x3c]
	cmp r1, #0xa
	bhi _0225F4FA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F444: ; jump table
	.short _0225F45A - _0225F444 - 2 ; case 0
	.short _0225F468 - _0225F444 - 2 ; case 1
	.short _0225F486 - _0225F444 - 2 ; case 2
	.short _0225F4D4 - _0225F444 - 2 ; case 3
	.short _0225F4F2 - _0225F444 - 2 ; case 4
	.short _0225F506 - _0225F444 - 2 ; case 5
	.short _0225F5E2 - _0225F444 - 2 ; case 6
	.short _0225F600 - _0225F444 - 2 ; case 7
	.short _0225F648 - _0225F444 - 2 ; case 8
	.short _0225F74E - _0225F444 - 2 ; case 9
	.short _0225F780 - _0225F444 - 2 ; case 10
_0225F45A:
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0225F4FA
	add r0, r1, #1
	add sp, #0x50
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F468:
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	ldr r3, _0225F790 ; =0x00007FFF
	str r7, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F486:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225F4FA
	add r0, r6, #0
	bl ov66_0222E3BC
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov70_0225F8AC
	mov r0, #4
	strb r0, [r4, #1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4D4:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r3, _0225F790 ; =0x00007FFF
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4F2:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0225F4FC
_0225F4FA:
	b _0225F78C
_0225F4FC:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F506:
	cmp r2, #1
	beq _0225F608
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F5D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F51C: ; jump table
	.short _0225F5D2 - _0225F51C - 2 ; case 0
	.short _0225F526 - _0225F51C - 2 ; case 1
	.short _0225F5C2 - _0225F51C - 2 ; case 2
	.short _0225F542 - _0225F51C - 2 ; case 3
	.short _0225F5D2 - _0225F51C - 2 ; case 4
_0225F526:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	add r0, r5, #0
	bl ov70_0225F344
	b _0225F5D2
_0225F542:
	ldr r2, _0225F794 ; =0x00000153
	ldrb r0, [r4, r2]
	cmp r0, #0
	beq _0225F56E
	sub r1, r2, #3
	mov r0, #0xf7
	sub r2, r2, #1
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov70_0226C810
	cmp r0, #0
	bne _0225F56E
	ldr r0, _0225F794 ; =0x00000153
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x3f
	add r0, r4, r0
	bl ov70_02260A68
_0225F56E:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	add r3, r7, #0
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	add r0, r6, #0
	bl ov66_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl ov66_0222EBD4
	add r0, r6, #0
	bl ov66_0222EC50
	add r0, r6, #0
	bl ov66_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl ov66_0222EBA4
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov66_0222EC04
	ldr r0, _0225F794 ; =0x00000153
	mov r1, #1
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldr r2, [sp, #0x4c]
	sub r0, r0, #1
	strh r2, [r4, r1]
	ldr r1, [sp, #0x48]
	strb r1, [r4, r0]
	b _0225F5D2
_0225F5C2:
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r1, #0x3c
	str r1, [sp, #0x3c]
	add r0, #8
	add r1, r5, r1
	bl ov70_0225FACC
_0225F5D2:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225F608
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F5E2:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r2, #0
	str r7, [sp, #8]
	mov r0, #4
	add r3, r2, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F600:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0225F60A
_0225F608:
	b _0225F78C
_0225F60A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F63E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F61C: ; jump table
	.short _0225F63E - _0225F61C - 2 ; case 0
	.short _0225F626 - _0225F61C - 2 ; case 1
	.short _0225F630 - _0225F61C - 2 ; case 2
	.short _0225F626 - _0225F61C - 2 ; case 3
	.short _0225F626 - _0225F61C - 2 ; case 4
_0225F626:
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl ov70_0225F920
	b _0225F63E
_0225F630:
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r5, r1
	bl ov70_0225F89C
_0225F63E:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F648:
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhi _0225F740
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F65A: ; jump table
	.short _0225F740 - _0225F65A - 2 ; case 0
	.short _0225F664 - _0225F65A - 2 ; case 1
	.short _0225F67E - _0225F65A - 2 ; case 2
	.short _0225F710 - _0225F65A - 2 ; case 3
	.short _0225F664 - _0225F65A - 2 ; case 4
_0225F664:
	add r0, r6, #0
	bl ov66_0222E3BC
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov70_0225F8AC
	b _0225F740
_0225F67E:
	add r0, r6, #0
	bl ov66_0222E3BC
	str r0, [sp, #0x28]
	ldrb r0, [r4, #3]
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov66_0222E338
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _0225F6A4
	add r0, r6, #0
	bl ov66_0222E3BC
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0225F6B0
_0225F6A4:
	add r0, r6, #0
	bl ov66_0222E374
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x2c]
_0225F6B0:
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov66_0222E924
	str r0, [sp, #0x34]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0225F6DC
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov66_0222E944
	str r0, [sp, #0x30]
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl ov66_0222E954
	cmp r0, #0
	bne _0225F6E0
	mov r1, #0
	str r1, [sp, #0x30]
	b _0225F6E0
_0225F6DC:
	mov r0, #0
	str r0, [sp, #0x30]
_0225F6E0:
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x3c]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x34]
	add r3, r5, r3
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x14]
	mov r1, #0xc6
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, r1
	bl ov70_0225F844
	b _0225F740
_0225F710:
	add r0, r6, #0
	bl ov66_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl ov66_0222EBA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225F72C
	bl sub_02022974
	mov r0, #0
_0225F72C:
	add r1, sp, #0x44
	add r2, sp, #0x40
	bl ov66_0222EC04
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, r7, #0
	bl ov70_0225F8F0
_0225F740:
	mov r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F74E:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _0225F776
	mov r1, #0xc6
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #8
	add r1, r5, r1
	bl ov70_0225FACC
_0225F776:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F780:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225F78C
	mov r0, #5
	strb r0, [r4]
_0225F78C:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F790: .word 0x00007FFF
_0225F794: .word 0x00000153
	thumb_func_end ov70_0225F418

	thumb_func_start ov70_0225F798
ov70_0225F798: ; 0x0225F798
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225F798

	thumb_func_start ov70_0225F79C
ov70_0225F79C: ; 0x0225F79C
	mov r3, #2
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	strh r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F79C

	thumb_func_start ov70_0225F7A8
ov70_0225F7A8: ; 0x0225F7A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x1b
	blo _0225F7BA
	bl sub_02022974
_0225F7BA:
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _0225F7C4
	bl sub_02022974
_0225F7C4:
	ldrb r0, [r5, #1]
	cmp r0, #2
	bne _0225F7DE
	mov r2, #0x53
	str r4, [sp]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl ov70_0225FEC4
_0225F7DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F7A8

	thumb_func_start ov70_0225F7E0
ov70_0225F7E0: ; 0x0225F7E0
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0225F7EA
	mov r1, #1
	strb r1, [r0, #2]
_0225F7EA:
	bx lr
	thumb_func_end ov70_0225F7E0

	thumb_func_start ov70_0225F7EC
ov70_0225F7EC: ; 0x0225F7EC
	ldrb r1, [r0, #1]
	cmp r1, #3
	beq _0225F7F6
	mov r1, #3
	strb r1, [r0, #2]
_0225F7F6:
	bx lr
	thumb_func_end ov70_0225F7EC

	thumb_func_start ov70_0225F7F8
ov70_0225F7F8: ; 0x0225F7F8
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225F7F8

	thumb_func_start ov70_0225F7FC
ov70_0225F7FC: ; 0x0225F7FC
	ldrb r1, [r0, #2]
	cmp r1, #2
	bne _0225F806
	mov r0, #1
	bx lr
_0225F806:
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F810
	mov r0, #1
	bx lr
_0225F810:
	mov r0, #0
	bx lr
	thumb_func_end ov70_0225F7FC

	thumb_func_start ov70_0225F814
ov70_0225F814: ; 0x0225F814
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0225F824
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F824
	mov r0, #1
	bx lr
_0225F824:
	mov r0, #0
	bx lr
	thumb_func_end ov70_0225F814

	thumb_func_start ov70_0225F828
ov70_0225F828: ; 0x0225F828
	ldr r3, _0225F830 ; =ov70_0225FEEC
	add r0, #8
	bx r3
	nop
_0225F830: .word ov70_0225FEEC
	thumb_func_end ov70_0225F828

	thumb_func_start ov70_0225F834
ov70_0225F834: ; 0x0225F834
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0225F83E
	mov r0, #1
	bx lr
_0225F83E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F834

	thumb_func_start ov70_0225F844
ov70_0225F844: ; 0x0225F844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r3, #0
	ldrb r3, [r5, #1]
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #2
	bne _0225F85A
	bl ov70_0225F89C
_0225F85A:
	ldr r0, [sp, #0x40]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	add r2, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	add r3, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov70_0225FAD0
	mov r0, #2
	strb r0, [r5, #1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F844

	thumb_func_start ov70_0225F89C
ov70_0225F89C: ; 0x0225F89C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	bl ov70_0225FE80
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F89C

	thumb_func_start ov70_0225F8AC
ov70_0225F8AC: ; 0x0225F8AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #1
	beq _0225F8C8
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225F8D0
_0225F8C8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225F920
_0225F8D0:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x38
	str r1, [sp]
	ldr r3, [sp, #0x20]
	add r0, r5, r0
	add r1, r4, #0
	add r2, r7, #0
	str r6, [sp, #4]
	bl ov70_02260870
	mov r0, #1
	strb r0, [r5, #1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F8AC

	thumb_func_start ov70_0225F8F0
ov70_0225F8F0: ; 0x0225F8F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrb r2, [r5, #1]
	add r6, r1, #0
	add r7, r3, #0
	cmp r2, #3
	bne _0225F904
	bl ov70_0225F920
_0225F904:
	mov r3, #0x45
	lsl r3, r3, #2
	add r0, r5, r3
	str r4, [sp]
	add r3, #0x38
	ldr r3, [r5, r3]
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_02260930
	mov r0, #3
	strb r0, [r5, #1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F8F0

	thumb_func_start ov70_0225F920
ov70_0225F920: ; 0x0225F920
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_022609A8
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F920

	thumb_func_start ov70_0225F934
ov70_0225F934: ; 0x0225F934
	ldr r2, _0225F93C ; =0x0000011A
	strh r1, [r0, r2]
	bx lr
	nop
_0225F93C: .word 0x0000011A
	thumb_func_end ov70_0225F934

	thumb_func_start ov70_0225F940
ov70_0225F940: ; 0x0225F940
	add r1, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	strh r2, [r1, r0]
	add r0, r0, #2
	strh r3, [r1, r0]
	ldr r3, _0225F954 ; =sub_0200DA3C
	ldr r0, _0225F958 ; =ov70_0225F95C
	mov r2, #0
	bx r3
	; .align 2, 0
_0225F954: .word sub_0200DA3C
_0225F958: .word ov70_0225F95C
	thumb_func_end ov70_0225F940

	thumb_func_start ov70_0225F95C
ov70_0225F95C: ; 0x0225F95C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0
	ldr r1, _0225F9B8 ; =0x00000156
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r4, r1]
	mov r2, #4
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #2
	sub r0, #0xa
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_02007130
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xb6
	ldrh r2, [r4, r2]
	mov r0, #4
	bl sub_02002E7C
	bl sub_0207C944
	add r6, r0, #0
	bl sub_0207C920
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	add r0, #0xf6
	ldrh r0, [r4, r0]
	mov r3, #0x16
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #4
	bl sub_02006E84
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225F9B8: .word 0x00000156
	thumb_func_end ov70_0225F95C

	thumb_func_start ov70_0225F9BC
ov70_0225F9BC: ; 0x0225F9BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r2, #0
	ldr r4, [sp, #0x20]
	cmp r3, #0
	bne _0225F9DC
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x56
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
	b _0225F9EC
_0225F9DC:
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x57
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
_0225F9EC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r6, #0]
	add r0, r5, #0
	mov r1, #0x36
	mov r3, #4
	bl sub_020070E8
	mov r0, #4
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_02002E7C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225F9BC

	thumb_func_start ov70_0225FA10
ov70_0225FA10: ; 0x0225FA10
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225FA10

	thumb_func_start ov70_0225FA14
ov70_0225FA14: ; 0x0225FA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r6, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, sp, #0xc
	ldr r4, [sp, #0x28]
	bl sub_020071D0
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [r2, #8]
	add r2, #0xc
	lsr r1, r0, #1
	mov r0, #0
	cmp r1, #0
	ble _0225FA4C
_0225FA3E:
	ldrh r3, [r2]
	add r0, r0, #1
	add r3, r3, r4
	strh r3, [r2]
	add r2, r2, #2
	cmp r0, r1
	blt _0225FA3E
_0225FA4C:
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_020198C0
	lsl r1, r6, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FA14

	thumb_func_start ov70_0225FA84
ov70_0225FA84: ; 0x0225FA84
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225FAA4 ; =0x0226D68C
	add r7, r1, #0
	mov r6, #0
	add r5, r0, #4
_0225FA8E:
	ldr r0, [r7, #0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #5
	blt _0225FA8E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FAA4: .word 0x0226D68C
	thumb_func_end ov70_0225FA84

	thumb_func_start ov70_0225FAA8
ov70_0225FAA8: ; 0x0225FAA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _0225FAB6
	bl ov70_0225FE80
_0225FAB6:
	mov r5, #0
	add r4, r4, #4
_0225FABA:
	add r0, r4, #0
	bl sub_0201A8FC
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	blt _0225FABA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FAA8

	thumb_func_start ov70_0225FACC
ov70_0225FACC: ; 0x0225FACC
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225FACC

	thumb_func_start ov70_0225FAD0
ov70_0225FAD0: ; 0x0225FAD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r6, r3, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov70_0225F338
	ldr r0, [sp, #0x38]
	bl ov66_0222E7C8
	cmp r0, #0
	bne _0225FB1C
	ldr r0, [sp, #0x40]
	ldr r7, _0225FD98 ; =0x00070800
	cmp r0, #0
	bne _0225FB0E
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x56
	bl ov70_0225F940
	b _0225FB40
_0225FB0E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov70_0225F940
	b _0225FB40
_0225FB1C:
	ldr r0, [sp, #0x40]
	mov r7, #0xc1
	lsl r7, r7, #0xa
	cmp r0, #0
	bne _0225FB34
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x57
	bl ov70_0225F940
	b _0225FB40
_0225FB34:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov70_0225F940
_0225FB40:
	ldr r0, [r6, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r6, #0]
	mov r1, #5
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r6, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02019F04
	add r0, r5, #0
	bl ov70_022602C0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5c
	mov r3, #4
	bl ov70_0225FA14
	ldr r0, [sp, #0x34]
	bl sub_02025E6C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	bl ov66_0222E640
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2c
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x10]
	bl sub_02025F24
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	mov r0, #0x7a
	str r0, [sp]
	mov r2, #0
	ldr r0, _0225FD9C ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x31
	bl ov70_02260314
	mov r2, #0
	str r2, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2d
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260370
	mov r0, #0x7a
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0x32
	bl ov70_02260314
	add r0, r5, #0
	mov r1, #0
	bl ov70_02260360
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x2e
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x38]
	bl ov66_0222E880
	cmp r0, #0
	bne _0225FC3E
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x37
	bl ov70_022602DC
	b _0225FC60
_0225FC3E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260380
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x33
	bl ov70_022602DC
_0225FC60:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02260360
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225FD06
	mov r0, #1
	str r0, [r5, #0]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260370
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x38
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022603B0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3b
	bl ov70_022602DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3c
	bl ov70_022602DC
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3d
	bl ov70_022602DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3e
	bl ov70_022602DC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02260360
	b _0225FD3A
_0225FD06:
	mov r1, #0
	str r1, [r5, #0]
	mov r0, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x30
	str r7, [sp, #8]
	bl ov70_022602DC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02260360
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_022603CC
_0225FD3A:
	ldr r0, [sp, #0x38]
	bl ov66_0222E8C4
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0225FEF0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225FD6A
	ldr r0, [sp, #0x38]
	bl ov66_0222E7C8
	cmp r0, #1
	bne _0225FD66
	mov r0, #0x61
	b _0225FD70
_0225FD66:
	mov r0, #0
	b _0225FD70
_0225FD6A:
	ldr r0, [sp, #0x38]
	bl ov66_0222E858
_0225FD70:
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_02260080
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225FDA0
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FD98: .word 0x00070800
_0225FD9C: .word 0x00010200
	thumb_func_end ov70_0225FAD0

	thumb_func_start ov70_0225FDA0
ov70_0225FDA0: ; 0x0225FDA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r0, [sp, #0x48]
	ldr r6, _0225FE78 ; =0x0226D624
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, _0225FE7C ; =0x0226D590
	add r5, r2, #0
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r4, #2
_0225FDB8:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	bl ov66_0222E8E8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _0225FE60
	bl ov66_022316E8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bl sub_0207C944
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl sub_0207C908
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	mov r2, #1
	bl sub_02006FE8
	add r1, sp, #0x30
	str r0, [sp, #0x2c]
	bl sub_020A7118
	ldr r0, [sp, #0x20]
	mov r1, #6
	ldrh r0, [r0]
	add r3, r1, #0
	add r3, #0xfa
	str r0, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, [r5, #0]
	ldr r2, [r2, #0x14]
	bl sub_0201958C
	ldr r0, [sp, #0x2c]
	bl sub_020181C4
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r3, r4, #0x18
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl sub_020198E8
	add r0, r7, #0
	bl sub_0207C92C
	mov r1, #4
	add r0, #0xb
	str r1, [sp]
	mov r1, #2
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r3, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r0, [r5, #0]
	mov r1, #6
	bl sub_0201C3C0
_0225FE60:
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225FDB8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FE78: .word 0x0226D624
_0225FE7C: .word 0x0226D590
	thumb_func_end ov70_0225FDA0

	thumb_func_start ov70_0225FE80
ov70_0225FE80: ; 0x0225FE80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	add r4, r2, #0
	cmp r1, #1
	bne _0225FE92
	mov r0, #0
	str r0, [r5, #0]
	b _0225FE98
_0225FE92:
	add r1, r4, #0
	bl ov70_0226068C
_0225FE98:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260048
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260228
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FE80

	thumb_func_start ov70_0225FEC4
ov70_0225FEC4: ; 0x0225FEC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov70_02260048
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_0225FEF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEC4

	thumb_func_start ov70_0225FEEC
ov70_0225FEEC: ; 0x0225FEEC
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov70_0225FEEC

	thumb_func_start ov70_0225FEF0
ov70_0225FEF0: ; 0x0225FEF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	ldr r0, [sp, #0x90]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x2c]
	cmp r0, #0x1b
	blo _0225FF06
	bl sub_02022974
_0225FF06:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0225FF10
	bl sub_02022974
_0225FF10:
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl sub_020E2178
	add r7, r0, #0
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl sub_020E2178
	str r1, [sp, #0x30]
	lsl r0, r7, #1
	str r0, [sp, #0x34]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xcc
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3d
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0x58]
	bl sub_0200A3DC
	cmp r0, #0
	bne _0225FF52
	bl sub_02022974
_0225FF52:
	ldr r0, [r5, #0x58]
	bl sub_02009D4C
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xd0
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #0x59
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x5c]
	bl sub_0200A640
	cmp r0, #0
	bne _0225FF82
	bl sub_02022974
_0225FF82:
	ldr r0, [r5, #0x5c]
	bl sub_02009D4C
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd4
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3c
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x60]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd8
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3b
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x64]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x64
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x65
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r2, r1, #0
	str r0, [sp, #0x10]
	add r2, #0xcc
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xd0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x10
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #0x40]
	mov r0, #0x66
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	str r6, [sp, #0x54]
	bl sub_02021B90
	ldr r1, [sp, #0x30]
	str r0, [r5, #0x54]
	bl sub_02021D6C
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x94]
	bl sub_02021CAC
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEF0

	thumb_func_start ov70_02260048
ov70_02260048: ; 0x02260048
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	bl sub_02021BD4
	mov r0, #0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x58]
	bl sub_0200A4E4
	ldr r0, [r5, #0x5c]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0226006A:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x58]
	bl sub_02009D68
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0226006A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260048

	thumb_func_start ov70_02260080
ov70_02260080: ; 0x02260080
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r6, r0, #0
	ldr r0, [r6, #0x68]
	add r5, r1, #0
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02260096
	bl sub_02022974
_02260096:
	ldr r1, _02260224 ; =0x0226D724
	mov r0, #0
_0226009A:
	ldrh r2, [r1]
	cmp r4, r2
	bne _022600AA
	ldrh r2, [r1, #2]
	str r2, [sp, #0x34]
	ldrh r2, [r1, #4]
	str r2, [sp, #0x30]
	ldrh r7, [r1, #6]
_022600AA:
	add r0, r0, #1
	add r1, #8
	cmp r0, #0x12
	blo _0226009A
	ldr r0, [sp, #0x34]
	mov r1, #2
	add r2, sp, #0x7c
	bl sub_02076AAC
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xcb
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	mov r3, #0
	bl sub_0200985C
	str r0, [r6, #0x6c]
	bl sub_0200A3DC
	cmp r0, #0
	bne _022600E4
	bl sub_02022974
_022600E4:
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, #0xcf
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	mov r3, #0
	bl sub_020098B8
	str r0, [r6, #0x70]
	bl sub_02009E34
	bl ov70_02260268
	ldr r0, [r6, #0x70]
	bl sub_0200A640
	cmp r0, #0
	bne _0226011A
	bl sub_02022974
_0226011A:
	ldr r0, [r6, #0x70]
	bl sub_02009D4C
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd3
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x88]
	mov r3, #0
	bl sub_02009918
	str r0, [r6, #0x74]
	mov r1, #0x65
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd7
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x8c]
	mov r3, #0
	bl sub_02009918
	str r0, [r6, #0x78]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x65
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x66
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r2, #3
	str r2, [sp, #0x10]
	add r2, r1, #0
	add r2, #0xcb
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xcf
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd3
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd7
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022601D4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022601E2
_022601D4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022601E2:
	bl sub_020E1740
	str r0, [sp, #0x40]
	cmp r7, #0
	beq _022601FE
	lsl r0, r7, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226020C
_022601FE:
	lsl r0, r7, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226020C:
	bl sub_020E1740
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r0, r1
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl sub_02021B90
	str r0, [r6, #0x68]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02260224: .word 0x0226D724
	thumb_func_end ov70_02260080

	thumb_func_start ov70_02260228
ov70_02260228: ; 0x02260228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	add r4, r1, #0
	bl sub_02021F98
	bl sub_0201ED1C
	ldr r0, [r5, #0x68]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	bl sub_0200A4E4
	ldr r0, [r5, #0x70]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_02260254:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x6c]
	bl sub_02009D68
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _02260254
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02260228

	thumb_func_start ov70_02260268
ov70_02260268: ; 0x02260268
	push {r4, r5, r6, r7}
	ldr r1, [r0, #8]
	ldr r4, [r0, #0xc]
	lsr r3, r1, #1
	mov r2, #0
	cmp r3, #0
	ble _022602BC
	mov r5, #0xc8
_02260278:
	ldrh r6, [r4]
	mov r0, #0x1f
	add r2, r2, #1
	add r1, r6, #0
	asr r7, r6, #5
	and r1, r0
	and r0, r7
	asr r7, r6, #0xa
	mov r6, #0x1f
	and r6, r7
	mov r7, #0x1d
	mul r7, r6
	mov r6, #0x4c
	mul r6, r1
	mov r1, #0x97
	mul r1, r0
	add r0, r6, r1
	add r0, r7, r0
	asr r6, r0, #8
	lsl r0, r6, #8
	add r7, r6, #0
	asr r1, r0, #8
	lsl r0, r6, #7
	mul r7, r5
	asr r0, r0, #8
	asr r6, r7, #8
	lsl r0, r0, #0xa
	lsl r6, r6, #5
	orr r0, r6
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r2, r3
	blt _02260278
_022602BC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov70_02260268

	thumb_func_start ov70_022602C0
ov70_022602C0: ; 0x022602C0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #4
	add r6, r4, #0
_022602C8:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _022602C8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_022602C0

	thumb_func_start ov70_022602DC
ov70_022602DC: ; 0x022602DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov70_0225F288
	add r3, sp, #0x10
	add r2, r0, #0
	ldrb r0, [r3, #0x14]
	mov r1, #0
	add r5, r5, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r4, #4
	ldrb r3, [r3, #0x10]
	add r0, r5, r0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_022602DC

	thumb_func_start ov70_02260314
ov70_02260314: ; 0x02260314
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov70_0225F288
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	sub r3, r1, r0
	bpl _0226033C
	mov r3, #0
_0226033C:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r2, r5, #4
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r2, r0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02260314

	thumb_func_start ov70_02260360
ov70_02260360: ; 0x02260360
	ldr r3, _0226036C ; =sub_0201A9A4
	add r2, r0, #4
	lsl r0, r1, #4
	add r0, r2, r0
	bx r3
	nop
_0226036C: .word sub_0201A9A4
	thumb_func_end ov70_02260360

	thumb_func_start ov70_02260370
ov70_02260370: ; 0x02260370
	ldr r3, _0226037C ; =ov70_0225F2C8
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	bx r3
	nop
_0226037C: .word ov70_0225F2C8
	thumb_func_end ov70_02260370

	thumb_func_start ov70_02260380
ov70_02260380: ; 0x02260380
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov66_0222E880
	add r4, r0, #0
	add r0, r6, #0
	bl ov66_0222E8A4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_0225F308
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov70_0225F318
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02260380

	thumb_func_start ov70_022603B0
ov70_022603B0: ; 0x022603B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r4, #0
_022603B8:
	ldrh r2, [r5]
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_0225F32C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _022603B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022603B0

	thumb_func_start ov70_022603CC
ov70_022603CC: ; 0x022603CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r7, r0, #0
	ldr r0, [sp, #0xb0]
	add r5, r1, #0
	str r0, [sp, #0xb0]
	mov r0, #0xc0
	add r1, r3, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_02006C24
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xb4]
	bl ov66_0222E798
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xb4]
	bl ov66_0222E7C8
	str r0, [sp, #0x4c]
	ldr r0, _0226067C ; =0x0226D60C
	mov r6, #0
	str r0, [sp, #0x40]
	ldr r0, _02260680 ; =0x0226D59C
	add r4, r7, #0
	str r0, [sp, #0x3c]
	ldr r0, _02260684 ; =0x0226D594
	str r0, [sp, #0x38]
_02260406:
	cmp r6, #2
	bne _02260426
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _02260446
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
	b _022604EC
_02260426:
	cmp r6, #3
	bne _02260446
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _02260446
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
	b _022604EC
_02260446:
	ldr r0, [sp, #0x40]
	ldrh r0, [r0]
	cmp r0, #0xc0
	bne _02260454
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	b _02260458
_02260454:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
_02260458:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x34]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	bl sub_02009B04
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200A640
	cmp r0, #0
	bne _02260496
	bl sub_02022974
_02260496:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_02009D4C
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl sub_02009BC4
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl sub_02009BC4
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
_022604EC:
	ldr r0, [sp, #0x40]
	add r6, r6, #1
	add r0, r0, #6
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r4, r4, #4
	add r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x38]
	cmp r6, #4
	bge _02260508
	b _02260406
_02260508:
	ldr r0, _02260688 ; =0x0226D7B4
	mov r6, #0
	str r0, [sp, #0x48]
_0226050E:
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov66_0222E728
	add r4, r0, #0
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov66_0222E760
	add r1, r0, #0
	cmp r4, #0x18
	bne _02260532
	add r1, r7, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r7, #0x7c]
	b _02260660
_02260532:
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	add r0, r4, #0
	bl ov70_02260728
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _02260548
	ldr r1, [sp, #0x2c]
	b _0226054A
_02260548:
	ldr r1, [sp, #0x50]
_0226054A:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl sub_02009A4C
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	cmp r0, #0
	bne _0226057E
	bl sub_02022974
_0226057E:
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldrb r2, [r4]
	mov r0, #0
	mvn r0, r0
	add r2, #0x96
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x96
	str r0, [sp, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r2, #0
	str r0, [sp, #0x1c]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x54
	bl sub_020093B4
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x48]
	str r0, [sp, #0x78]
	add r0, sp, #0x54
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x8c]
	mov r0, #2
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x30]
	add r3, sp, #0x80
	str r0, [sp, #0x94]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260608
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260616
_02260608:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260616:
	bl sub_020E1740
	ldr r1, [sp, #0x80]
	add r0, r1, r0
	str r0, [sp, #0x80]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226063A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260648
_0226063A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260648:
	bl sub_020E1740
	ldr r1, [sp, #0x84]
	add r0, r1, r0
	str r0, [sp, #0x84]
	add r0, sp, #0x78
	bl sub_02021B90
	str r0, [r7, #0x7c]
	ldrb r1, [r4, #1]
	bl sub_02021F24
_02260660:
	ldr r0, [sp, #0x48]
	add r6, r6, #1
	add r0, #0xc
	add r7, r7, #4
	str r0, [sp, #0x48]
	cmp r6, #0xc
	bge _02260670
	b _0226050E
_02260670:
	ldr r0, [sp, #0x50]
	bl sub_02006CA8
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226067C: .word 0x0226D60C
_02260680: .word 0x0226D59C
_02260684: .word 0x0226D594
_02260688: .word 0x0226D7B4
	thumb_func_end ov70_022603CC

	thumb_func_start ov70_0226068C
ov70_0226068C: ; 0x0226068C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #0
	add r4, r5, #0
_02260696:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022606CC
	ldr r0, [r4, #0x7c]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200A4E4
	mov r0, #0x13
	add r1, r4, #0
	lsl r0, r0, #4
	add r1, #0xbc
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	add r1, r4, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
_022606CC:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0xc
	blt _02260696
	mov r4, #0
	add r7, r4, #0
_022606D8:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226071C
	bl sub_0200A6DC
	mov r0, #0x4d
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xac
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x4e
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xec
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x4f
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xfc
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	add r0, r5, #0
	add r0, #0xac
	str r7, [r0, #0]
_0226071C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022606D8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226068C

	thumb_func_start ov70_02260728
ov70_02260728: ; 0x02260728
	cmp r1, r2
	bne _02260734
	ldr r1, _0226073C ; =0x0226D5FC
	lsl r0, r3, #3
	add r0, r1, r0
	bx lr
_02260734:
	ldr r1, _02260740 ; =0x0226D844
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	; .align 2, 0
_0226073C: .word 0x0226D5FC
_02260740: .word 0x0226D844
	thumb_func_end ov70_02260728

	thumb_func_start ov70_02260744
ov70_02260744: ; 0x02260744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	ldr r1, [sp, #4]
	str r2, [sp, #8]
	ldr r2, _0226079C ; =0x0226D5A4
	add r1, #0xc
	add r7, r3, #0
	bl sub_0201A8D4
	ldr r4, [sp, #4]
	ldr r5, [sp, #4]
	mov r6, #0
	add r4, #0x2c
_02260762:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x38
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl sub_020071D0
	str r0, [r5, #0x20]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02260762
	ldr r0, _022607A0 ; =0x0226D58C
	ldr r2, _022607A4 ; =ov70_02260A50
	ldr r3, [sp, #4]
	mov r1, #1
	str r7, [sp]
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #1
	strh r1, [r0, #6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226079C: .word 0x0226D5A4
_022607A0: .word 0x0226D58C
_022607A4: .word ov70_02260A50
	thumb_func_end ov70_02260744

	thumb_func_start ov70_022607A8
ov70_022607A8: ; 0x022607A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	bl sub_02024034
	add r0, r6, #0
	add r0, #0xc
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_022607BE:
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022607BE
	mov r0, #0
	strb r0, [r6, #2]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_022607A8

	thumb_func_start ov70_022607D4
ov70_022607D4: ; 0x022607D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _022607F2
	ldr r0, [r5, #0x1c]
	bl sub_0202404C
	b _022607F6
_022607F2:
	mov r0, #1
	strb r0, [r5, #3]
_022607F6:
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _02260812
	mov r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _02260812
	strb r2, [r5, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
_02260812:
	ldrb r1, [r5, #3]
	ldrh r0, [r5, #4]
	cmp r1, r0
	beq _02260868
	strh r1, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260832
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
	b _02260854
_02260832:
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260848
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov70_022609D4
	b _02260854
_02260848:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov70_022609D4
_02260854:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02260868
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260868
	mov r0, #1
	strb r0, [r5, #2]
	str r0, [sp, #4]
	strh r0, [r5]
_02260868:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022607D4

	thumb_func_start ov70_02260870
ov70_02260870: ; 0x02260870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r4, [sp, #0x34]
	str r0, [sp, #8]
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x14]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r1, #0x37
	mov r3, #4
	bl sub_0200710C
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, [sp, #0x14]
	bl ov66_0222E8C4
	strh r0, [r5, #0xa]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r3, #6
	bl sub_020070E8
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #0xa]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x1b
	mov r3, #6
	bl ov70_0225FA14
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r2, #0x3f
	bl ov70_0225F288
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _0226092C ; =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	str r1, [sp, #0xc]
	add r0, #0xc
	add r3, r1, #0
	bl sub_0201D78C
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0226091A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0226091A:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226092C: .word 0x000F0E00
	thumb_func_end ov70_02260870

	thumb_func_start ov70_02260930
ov70_02260930: ; 0x02260930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x28]
	cmp r7, #3
	blo _02260946
	bl sub_02022974
_02260946:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r6, #0]
	mov r1, #0x37
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	strh r0, [r5, #8]
	mov r0, #5
	strh r7, [r5, #0xa]
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x10]
	ldr r2, [r6, #0]
	add r1, #0x5d
	mov r3, #6
	bl sub_020070E8
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260996
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02260996:
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260930

	thumb_func_start ov70_022609A8
ov70_022609A8: ; 0x022609A8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022609A8

	thumb_func_start ov70_022609D4
ov70_022609D4: ; 0x022609D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x20
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x2c]
	add r7, r3, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #3
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_0201C3C0
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _02260A34
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, _02260A48 ; =0x0226D584
	str r0, [sp, #4]
	ldrh r3, [r5, #0xa]
	ldrb r2, [r2, r6]
	add r0, r4, #0
	lsl r3, r3, #1
	add r2, r2, r3
	add r1, r7, #0
	add r2, #0x60
	mov r3, #6
	bl ov70_0225FA14
_02260A34:
	ldr r3, _02260A4C ; =0x0226D588
	ldr r0, [r4, #0]
	ldrsb r3, [r3, r6]
	mov r1, #6
	mov r2, #3
	bl sub_0201C63C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02260A48: .word 0x0226D584
_02260A4C: .word 0x0226D588
	thumb_func_end ov70_022609D4

	thumb_func_start ov70_02260A50
ov70_02260A50: ; 0x02260A50
	strb r1, [r2, #3]
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _02260A5E
	mov r0, #2
	strb r0, [r2, #3]
	bx lr
_02260A5E:
	cmp r0, #3
	bne _02260A66
	mov r0, #1
	strb r0, [r2, #3]
_02260A66:
	bx lr
	thumb_func_end ov70_02260A50

	thumb_func_start ov70_02260A68
ov70_02260A68: ; 0x02260A68
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260A68

	.rodata


	.global Unk_ov70_0226D580
Unk_ov70_0226D580: ; 0x0226D580
	.incbin "incbin/overlay70_rodata.bin", 0xB4, 0xB8 - 0xB4

	.global Unk_ov70_0226D584
Unk_ov70_0226D584: ; 0x0226D584
	.incbin "incbin/overlay70_rodata.bin", 0xB8, 0xBC - 0xB8

	.global Unk_ov70_0226D588
Unk_ov70_0226D588: ; 0x0226D588
	.incbin "incbin/overlay70_rodata.bin", 0xBC, 0xC0 - 0xBC

	.global Unk_ov70_0226D58C
Unk_ov70_0226D58C: ; 0x0226D58C
	.incbin "incbin/overlay70_rodata.bin", 0xC0, 0xC4 - 0xC0

	.global Unk_ov70_0226D590
Unk_ov70_0226D590: ; 0x0226D590
	.incbin "incbin/overlay70_rodata.bin", 0xC4, 0xC8 - 0xC4

	.global Unk_ov70_0226D594
Unk_ov70_0226D594: ; 0x0226D594
	.incbin "incbin/overlay70_rodata.bin", 0xC8, 0xD0 - 0xC8

	.global Unk_ov70_0226D59C
Unk_ov70_0226D59C: ; 0x0226D59C
	.incbin "incbin/overlay70_rodata.bin", 0xD0, 0xD8 - 0xD0

	.global Unk_ov70_0226D5A4
Unk_ov70_0226D5A4: ; 0x0226D5A4
	.incbin "incbin/overlay70_rodata.bin", 0xD8, 0xE0 - 0xD8

	.global Unk_ov70_0226D5AC
Unk_ov70_0226D5AC: ; 0x0226D5AC
	.incbin "incbin/overlay70_rodata.bin", 0xE0, 0xF0 - 0xE0

	.global Unk_ov70_0226D5BC
Unk_ov70_0226D5BC: ; 0x0226D5BC
	.incbin "incbin/overlay70_rodata.bin", 0xF0, 0x100 - 0xF0

	.global Unk_ov70_0226D5CC
Unk_ov70_0226D5CC: ; 0x0226D5CC
	.incbin "incbin/overlay70_rodata.bin", 0x100, 0x110 - 0x100

	.global Unk_ov70_0226D5DC
Unk_ov70_0226D5DC: ; 0x0226D5DC
	.incbin "incbin/overlay70_rodata.bin", 0x110, 0x120 - 0x110

	.global Unk_ov70_0226D5EC
Unk_ov70_0226D5EC: ; 0x0226D5EC
	.incbin "incbin/overlay70_rodata.bin", 0x120, 0x130 - 0x120

	.global Unk_ov70_0226D5FC
Unk_ov70_0226D5FC: ; 0x0226D5FC
	.incbin "incbin/overlay70_rodata.bin", 0x130, 0x140 - 0x130

	.global Unk_ov70_0226D60C
Unk_ov70_0226D60C: ; 0x0226D60C
	.incbin "incbin/overlay70_rodata.bin", 0x140, 0x158 - 0x140

	.global Unk_ov70_0226D624
Unk_ov70_0226D624: ; 0x0226D624
	.incbin "incbin/overlay70_rodata.bin", 0x158, 0x178 - 0x158

	.global Unk_ov70_0226D644
Unk_ov70_0226D644: ; 0x0226D644
	.incbin "incbin/overlay70_rodata.bin", 0x178, 0x198 - 0x178

	.global Unk_ov70_0226D664
Unk_ov70_0226D664: ; 0x0226D664
	.incbin "incbin/overlay70_rodata.bin", 0x198, 0x1C0 - 0x198

	.global Unk_ov70_0226D68C
Unk_ov70_0226D68C: ; 0x0226D68C
	.incbin "incbin/overlay70_rodata.bin", 0x1C0, 0x1E8 - 0x1C0

	.global Unk_ov70_0226D6B4
Unk_ov70_0226D6B4: ; 0x0226D6B4
	.incbin "incbin/overlay70_rodata.bin", 0x1E8, 0x258 - 0x1E8

	.global Unk_ov70_0226D724
Unk_ov70_0226D724: ; 0x0226D724
	.incbin "incbin/overlay70_rodata.bin", 0x258, 0x2E8 - 0x258

	.global Unk_ov70_0226D7B4
Unk_ov70_0226D7B4: ; 0x0226D7B4
	.incbin "incbin/overlay70_rodata.bin", 0x2E8, 0x378 - 0x2E8

	.global Unk_ov70_0226D844
Unk_ov70_0226D844: ; 0x0226D844
	.incbin "incbin/overlay70_rodata.bin", 0x378, 0xC0

