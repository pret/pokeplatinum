	.include "macros/function.inc"
	.include "include/ov5_021DDBE8.inc"

	

	.text


	thumb_func_start ov5_021DDBE8
ov5_021DDBE8: ; 0x021DDBE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	lsl r1, r0, #2
	ldr r0, _021DDC24 ; =0x021F9A74
	add r6, r2, #0
	ldr r0, [r0, r1]
	mov r1, #0x24
	mov r2, #5
	mov r3, #4
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	mov r0, #0x70
	mov r1, #4
	bl sub_02006C24
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021DDC1C
	mov r0, #0
	str r0, [r1, #0]
_021DDC1C:
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
	nop
_021DDC24: .word 0x021F9A74
	thumb_func_end ov5_021DDBE8

	thumb_func_start ov5_021DDC28
ov5_021DDC28: ; 0x021DDC28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl sub_02006CA8
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl sub_02018238
	add r0, r4, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DDC28

	thumb_func_start ov5_021DDC44
ov5_021DDC44: ; 0x021DDC44
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #4
	mov r1, #0x4c
	str r2, [sp]
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl memset
	ldr r0, _021DDC84 ; =ov5_021DDC88
	add r1, r4, #0
	mov r2, #5
	bl sub_0200D9E8
	str r5, [r4, #0x48]
	cmp r5, #0
	beq _021DDC74
	mov r0, #0
	str r0, [r5, #0]
_021DDC74:
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DDC84: .word ov5_021DDC88
	thumb_func_end ov5_021DDC44

	thumb_func_start ov5_021DDC88
ov5_021DDC88: ; 0x021DDC88
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #5
	bhi _021DDD6E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DDCA0: ; jump table
	.short _021DDCAC - _021DDCA0 - 2 ; case 0
	.short _021DDCE4 - _021DDCA0 - 2 ; case 1
	.short _021DDCFE - _021DDCA0 - 2 ; case 2
	.short _021DDD12 - _021DDCA0 - 2 ; case 3
	.short _021DDD2C - _021DDCA0 - 2 ; case 4
	.short _021DDD50 - _021DDCA0 - 2 ; case 5
_021DDCAC:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021DDCC6
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #2
	bl ov5_021DDEFC
	b _021DDCDC
_021DDCC6:
	cmp r0, #2
	bne _021DDCDC
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #1
	bl ov5_021DDEFC
_021DDCDC:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDD6E
_021DDCE4:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r1, #0
	bl ov5_021DDEFC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDD6E
_021DDCFE:
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDF08
	cmp r0, #0
	beq _021DDD6E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDD6E
_021DDD12:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r2, #0
	bl ov5_021DDEFC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DDD6E
_021DDD2C:
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDF08
	cmp r0, #0
	beq _021DDD6E
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021DDD4A
	mov r0, #5
	str r0, [r4, #0]
	b _021DDD6E
_021DDD4A:
	mov r0, #1
	str r0, [r4, #0]
	b _021DDD6E
_021DDD50:
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #8]
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _021DDD60
	mov r1, #1
	str r1, [r2, #0]
_021DDD60:
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
_021DDD6E:
	add r4, #0x30
	add r0, r4, #0
	bl ov5_021DDF08
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DDC88

	thumb_func_start ov5_021DDD7C
ov5_021DDD7C: ; 0x021DDD7C
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov5_021DDD7C

	thumb_func_start ov5_021DDD80
ov5_021DDD80: ; 0x021DDD80
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021DDD80

	thumb_func_start ov5_021DDD90
ov5_021DDD90: ; 0x021DDD90
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021DDDB6
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021DDDB6:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021DDD90

	thumb_func_start ov5_021DDDBC
ov5_021DDDBC: ; 0x021DDDBC
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021DDDBC

	thumb_func_start ov5_021DDDCC
ov5_021DDDCC: ; 0x021DDDCC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021DDE0C
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021DDE0C:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DDDCC

	thumb_func_start ov5_021DDE14
ov5_021DDE14: ; 0x021DDE14
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl FX_Div
	str r6, [r5, #0]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DDE14

	thumb_func_start ov5_021DDE74
ov5_021DDE74: ; 0x021DDE74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _021DDED4
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DDED4:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DDE74

	thumb_func_start ov5_021DDEDC
ov5_021DDEDC: ; 0x021DDEDC
	push {r3, lr}
	cmp r0, #1
	bne _021DDEEA
	ldr r0, _021DDEF4 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
_021DDEEA:
	ldr r0, _021DDEF8 ; =0x0400106C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
	nop
_021DDEF4: .word 0x0400006C
_021DDEF8: .word 0x0400106C
	thumb_func_end ov5_021DDEDC

	thumb_func_start ov5_021DDEFC
ov5_021DDEFC: ; 0x021DDEFC
	push {r3, lr}
	str r3, [r0, #0x14]
	ldr r3, [sp, #8]
	bl ov5_021DDD80
	pop {r3, pc}
	thumb_func_end ov5_021DDEFC

	thumb_func_start ov5_021DDF08
ov5_021DDF08: ; 0x021DDF08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov5_021DDD90
	add r4, r0, #0
	ldr r0, _021DDF20 ; =ov5_021DDF24
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DDF20: .word ov5_021DDF24
	thumb_func_end ov5_021DDF08

	thumb_func_start ov5_021DDF24
ov5_021DDF24: ; 0x021DDF24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0]
	bl ov5_021DDEDC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov5_021DDF24

	thumb_func_start ov5_021DDF38
ov5_021DDF38: ; 0x021DDF38
	push {r4, lr}
	mov r0, #4
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	ldr r0, _021DDF6C ; =0x04000048
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021DDF70 ; =0xFFFFC0FF
	and r1, r2
	strh r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_021DDF6C: .word 0x04000048
_021DDF70: .word 0xFFFFC0FF
	thumb_func_end ov5_021DDF38

	thumb_func_start ov5_021DDF74
ov5_021DDF74: ; 0x021DDF74
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _021DDF82
	bl ov5_021DE0F0
_021DDF82:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021DDF98 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_021DDF98: .word 0xFFFF1FFF
	thumb_func_end ov5_021DDF74

	thumb_func_start ov5_021DDF9C
ov5_021DDF9C: ; 0x021DDF9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r0, #0
	beq _021DDFB4
	bl sub_02022974
_021DDFB4:
	mov r0, #0
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	add r6, #0x18
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x24]
	ldr r1, [r1, #0x1c]
	ldr r3, [sp, #0x28]
	str r1, [r5, #0x20]
	str r7, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	str r6, [r5, #0x2c]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DDE14
	cmp r4, #0
	blt _021DDFF4
	mov r0, #0xff
	ldr r2, _021DE020 ; =0x04000040
	sub r0, r0, r4
	strh r0, [r2]
	add r0, r4, #1
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	b _021DE010
_021DDFF4:
	add r0, r4, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	mov r2, #1
	sub r2, r2, r4
	lsl r2, r2, #0x18
	ldr r1, _021DE020 ; =0x04000040
	lsr r0, r0, #0x18
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	lsr r2, r2, #0x18
	strh r2, [r1, #2]
	strh r0, [r1, #6]
_021DE010:
	mov r2, #1
	ldr r0, _021DE024 ; =ov5_021DE028
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE020: .word 0x04000040
_021DE024: .word ov5_021DE028
	thumb_func_end ov5_021DDF9C

	thumb_func_start ov5_021DE028
ov5_021DE028: ; 0x021DE028
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021DE050 ; =ov5_021DE088
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, _021DE054 ; =ov5_021DE14C
	add r2, r4, #0
	bl ov5_021EF418
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_021DE050: .word ov5_021DE088
_021DE054: .word ov5_021DE14C
	thumb_func_end ov5_021DE028

	thumb_func_start ov5_021DE058
ov5_021DE058: ; 0x021DE058
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov5_021DDD7C
	cmp r0, #0
	beq _021DE06E
	bl sub_02022974
_021DE06E:
	str r4, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	str r6, [sp]
	bl ov5_021DDE14
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE058

	thumb_func_start ov5_021DE088
ov5_021DE088: ; 0x021DE088
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DE098
	cmp r0, #1
	beq _021DE0E4
	pop {r4, pc}
_021DE098:
	add r0, r4, #0
	bl ov5_021DDE74
	cmp r0, #0
	beq _021DE0A8
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_021DE0A8:
	ldr r0, [r4, #0]
	asr r0, r0, #0xc
	bmi _021DE0C6
	mov r1, #0xff
	sub r1, r1, r0
	ldr r2, _021DE0EC ; =0x04000040
	add r0, r0, #1
	strh r1, [r2]
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	pop {r4, pc}
_021DE0C6:
	add r1, r0, #0
	add r1, #0xff
	lsl r1, r1, #0x18
	ldr r3, _021DE0EC ; =0x04000040
	lsr r1, r1, #0x18
	strh r1, [r3]
	mov r1, #1
	sub r0, r1, r0
	mov r2, #0xc0
	lsl r0, r0, #0x18
	strh r2, [r3, #4]
	lsr r0, r0, #0x18
	strh r0, [r3, #2]
	strh r2, [r3, #6]
	pop {r4, pc}
_021DE0E4:
	add r0, r4, #0
	bl ov5_021DE0F0
	pop {r4, pc}
	; .align 2, 0
_021DE0EC: .word 0x04000040
	thumb_func_end ov5_021DE088

	thumb_func_start ov5_021DE0F0
ov5_021DE0F0: ; 0x021DE0F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DE144 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _021DE148 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3, #0]
	ldr r0, [r4, #0x2c]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	bl ov5_021EF43C
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021DE144: .word 0x04000048
_021DE148: .word 0xFFFF1FFF
	thumb_func_end ov5_021DE0F0

	thumb_func_start ov5_021DE14C
ov5_021DE14C: ; 0x021DE14C
	push {r4, lr}
	ldr r0, _021DE1BC ; =0x04000006
	add r4, r1, #0
	ldrh r0, [r0]
	ldr r1, [r4, #0x18]
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	ldr r0, [r4, #0]
	bne _021DE164
	b _021DE166
_021DE164:
	neg r0, r0
_021DE166:
	asr r2, r0, #0xc
	ldr r0, _021DE1C0 ; =0x000001FF
	add r1, r2, #0
	and r1, r0
	ldr r0, _021DE1C4 ; =0x04000010
	cmp r2, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, _021DE1C8 ; =0xFFFF1FFF
	blt _021DE198
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3, #0]
	and r2, r1
	lsl r1, r0, #9
	orr r1, r2
	str r1, [r3, #0]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	strh r2, [r0]
	pop {r4, pc}
_021DE198:
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3, #0]
	and r2, r1
	lsl r1, r0, #0xa
	orr r1, r2
	str r1, [r3, #0]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r4, pc}
	nop
_021DE1BC: .word 0x04000006
_021DE1C0: .word 0x000001FF
_021DE1C4: .word 0x04000010
_021DE1C8: .word 0xFFFF1FFF
	thumb_func_end ov5_021DE14C

	thumb_func_start ov5_021DE1CC
ov5_021DE1CC: ; 0x021DE1CC
	push {r4, r5, r6, lr}
	mov r0, #4
	mov r1, #0x48
	bl sub_02018144
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl memset
	ldr r0, _021DE210 ; =0x04000048
	mov r5, #0x3f
	ldrh r2, [r0]
	mov r1, #0x1f
	bic r2, r5
	add r3, r2, #0
	orr r3, r1
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r6, [r0]
	ldr r3, _021DE214 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r3, r6
	orr r3, r1
	lsl r1, r2, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r5
	strh r1, [r0, #2]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021DE210: .word 0x04000048
_021DE214: .word 0xFFFFC0FF
	thumb_func_end ov5_021DE1CC

	thumb_func_start ov5_021DE218
ov5_021DE218: ; 0x021DE218
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021DE226
	bl ov5_021DE374
_021DE226:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021DE23C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_021DE23C: .word 0xFFFF1FFF
	thumb_func_end ov5_021DE218

	thumb_func_start ov5_021DE240
ov5_021DE240: ; 0x021DE240
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021DE254
	bl sub_02022974
_021DE254:
	mov r1, #0
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r2, #0xff
	ldr r0, [r0, #4]
	add r5, #0x18
	ldr r0, [r0, #0x1c]
	lsl r2, r2, #0xc
	str r0, [r4, #0x38]
	mov r0, #0x60
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	str r5, [r4, #0x44]
	add r0, r4, #0
	add r3, r7, #0
	str r6, [sp]
	bl ov5_021DDE14
	add r0, r4, #0
	mov r2, #6
	ldr r3, [sp, #0x18]
	add r0, #0x18
	mov r1, #0
	lsl r2, r2, #0x10
	str r6, [sp]
	bl ov5_021DDE14
	ldr r2, _021DE2A4 ; =0x04000040
	mov r1, #0xff
	strh r1, [r2]
	mov r0, #0xc0
	strh r0, [r2, #4]
	strh r1, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _021DE2A8 ; =ov5_021DE2AC
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE2A4: .word 0x04000040
_021DE2A8: .word ov5_021DE2AC
	thumb_func_end ov5_021DE240

	thumb_func_start ov5_021DE2AC
ov5_021DE2AC: ; 0x021DE2AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021DE2D4 ; =ov5_021DE2DC
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, _021DE2D8 ; =ov5_021DE344
	add r2, r4, #0
	bl ov5_021EF418
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_021DE2D4: .word ov5_021DE2DC
_021DE2D8: .word ov5_021DE344
	thumb_func_end ov5_021DE2AC

	thumb_func_start ov5_021DE2DC
ov5_021DE2DC: ; 0x021DE2DC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021DE2EC
	cmp r0, #1
	beq _021DE338
	pop {r4, pc}
_021DE2EC:
	add r0, r4, #0
	add r0, #0x18
	bl ov5_021DDE74
	add r0, r4, #0
	bl ov5_021DDE74
	cmp r0, #0
	beq _021DE304
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
_021DE304:
	ldr r0, [r4, #0]
	asr r2, r0, #0xc
	ldr r0, [r4, #0x18]
	mov r4, #0xff
	asr r1, r0, #0xc
	ldr r0, _021DE340 ; =0x04000040
	sub r3, r4, r2
	strh r3, [r0]
	mov r3, #0x60
	sub r3, r3, r1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	strh r3, [r0, #4]
	lsl r3, r2, #8
	lsl r2, r4, #8
	and r2, r3
	orr r2, r4
	add r1, #0x60
	strh r2, [r0, #2]
	lsl r2, r1, #8
	lsl r1, r4, #8
	and r2, r1
	mov r1, #0xc0
	orr r1, r2
	strh r1, [r0, #6]
	pop {r4, pc}
_021DE338:
	add r0, r4, #0
	bl ov5_021DE374
	pop {r4, pc}
	; .align 2, 0
_021DE340: .word 0x04000040
	thumb_func_end ov5_021DE2DC

	thumb_func_start ov5_021DE344
ov5_021DE344: ; 0x021DE344
	ldr r0, _021DE36C ; =0x04000006
	ldr r1, [r1, #0x30]
	ldrh r2, [r0]
	cmp r2, r1
	ldr r1, _021DE370 ; =0xFFFF1FFF
	bhi _021DE35E
	sub r3, r0, #6
	ldr r2, [r3, #0]
	lsr r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
_021DE35E:
	sub r3, r0, #6
	ldr r2, [r3, #0]
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_021DE36C: .word 0x04000006
_021DE370: .word 0xFFFF1FFF
	thumb_func_end ov5_021DE344

	thumb_func_start ov5_021DE374
ov5_021DE374: ; 0x021DE374
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DE3C8 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _021DE3CC ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3, #0]
	ldr r0, [r4, #0x44]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #0x3c]
	bl ov5_021EF43C
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x40]
	pop {r4, pc}
	nop
_021DE3C8: .word 0x04000048
_021DE3CC: .word 0xFFFF1FFF
	thumb_func_end ov5_021DE374

	thumb_func_start ov5_021DE3D0
ov5_021DE3D0: ; 0x021DE3D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x10]
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r3, [sp, #0x30]
	mov r2, #0
	lsl r3, r3, #5
	add r6, r0, #0
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, sp, #0x14
	bl sub_020071D0
	lsl r1, r4, #0x18
	ldr r2, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020198C0
	ldr r1, [sp, #0x14]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02019E2C
	add r0, r6, #0
	bl sub_020181C4
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DE3D0

	thumb_func_start ov5_021DE47C
ov5_021DE47C: ; 0x021DE47C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r5, #4
	mov r2, #4
	bl sub_020095C4
	mov r7, #0x4b
	str r0, [r5, #0]
	mov r4, #0
	lsl r7, r7, #2
_021DE494:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021DE494
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE47C

	thumb_func_start ov5_021DE4AC
ov5_021DE4AC: ; 0x021DE4AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021DE4BC:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021DE4BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DE4AC

	thumb_func_start ov5_021DE4CC
ov5_021DE4CC: ; 0x021DE4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r6, [sp, #0x58]
	add r5, r1, #0
	str r6, [sp]
	mov r1, #1
	add r7, r0, #0
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4b
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	add r4, r2, #0
	str r3, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x4c]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009AA8
	str r0, [r4, #0]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009B04
	str r0, [r4, #4]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x50]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x54]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_0200A3DC
	ldr r0, [r4, #0]
	bl sub_02009D4C
	ldr r0, [r4, #4]
	bl sub_0200A640
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x10
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r2, r6, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020093B4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DE4CC

	thumb_func_start ov5_021DE5A4
ov5_021DE5A4: ; 0x021DE5A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200A4E4
	ldr r0, [r4, #4]
	bl sub_0200A6DC
	mov r7, #0x4b
	mov r6, #0
	lsl r7, r7, #2
_021DE5BC:
	ldr r0, [r5, r7]
	ldr r1, [r4, #0]
	bl sub_02009D68
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021DE5BC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DE5A4

	thumb_func_start ov5_021DE5D0
ov5_021DE5D0: ; 0x021DE5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #2
	add r2, sp, #8
	add r7, r3, #0
	bl sub_02076AAC
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, sp, #4
	add r3, r4, #0
	bl sub_02006F88
	add r4, r0, #0
	add r0, sp, #0x28
	ldrh r0, [r0, #0x10]
	add r1, r5, #0
	mov r2, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r7, #0
	ldr r0, [r0, #0xc]
	bl sub_0200393C
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x20
	bl ov5_021DE67C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE5D0

	thumb_func_start ov5_021DE62C
ov5_021DE62C: ; 0x021DE62C
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0]
	add r1, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r2, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	add r0, sp, #0
	str r3, [sp, #0xc]
	bl sub_02021B90
	add r4, r0, #0
	bne _021DE65A
	bl sub_02022974
_021DE65A:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov5_021DE62C

	thumb_func_start ov5_021DE660
ov5_021DE660: ; 0x021DE660
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov5_021DE660

	thumb_func_start ov5_021DE67C
ov5_021DE67C: ; 0x021DE67C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021F9C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl DC_FlushRange
	add r0, r6, #0
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl GX_LoadOBJPltt
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DE67C

	thumb_func_start ov5_021DE6A4
ov5_021DE6A4: ; 0x021DE6A4
	push {r4, lr}
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE6A4

	thumb_func_start ov5_021DE6BC
ov5_021DE6BC: ; 0x021DE6BC
	ldr r3, _021DE6C0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021DE6C0: .word sub_020181C4
	thumb_func_end ov5_021DE6BC

	thumb_func_start ov5_021DE6C4
ov5_021DE6C4: ; 0x021DE6C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021DE6DA
	bl sub_02022974
_021DE6DA:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021DDD80
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl ov5_021DDD80
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE6C4

	thumb_func_start ov5_021DE71C
ov5_021DE71C: ; 0x021DE71C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	bne _021DE732
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DE732:
	bl ov5_021DDD90
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021DDD90
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5, #0]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov5_021DE89C
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE71C

	thumb_func_start ov5_021DE784
ov5_021DE784: ; 0x021DE784
	push {r4, lr}
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE784

	thumb_func_start ov5_021DE79C
ov5_021DE79C: ; 0x021DE79C
	ldr r3, _021DE7A0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021DE7A0: .word sub_020181C4
	thumb_func_end ov5_021DE79C

	thumb_func_start ov5_021DE7A4
ov5_021DE7A4: ; 0x021DE7A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021DE7BA
	bl sub_02022974
_021DE7BA:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021DDD80
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl ov5_021DDD80
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE7A4

	thumb_func_start ov5_021DE7FC
ov5_021DE7FC: ; 0x021DE7FC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DE810
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DE810:
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5, #0]
	ldr r4, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r1, r2, #1
	sub r1, r4, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov5_021DE89C
	add r0, r5, #0
	bl ov5_021DDD90
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov5_021DDD90
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5, #0]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov5_021DE89C
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE7FC

	thumb_func_start ov5_021DE89C
ov5_021DE89C: ; 0x021DE89C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r1, #0
	cmp r5, #0
	ble _021DE8F4
	cmp r2, #0
	ble _021DE8F4
	cmp r3, r5
	beq _021DE8F4
	cmp r4, r2
	beq _021DE8F4
	cmp r3, #0
	bge _021DE8BA
	mov r3, #0
_021DE8BA:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	ble _021DE8C4
	add r5, r1, #0
_021DE8C4:
	cmp r4, #0
	bge _021DE8CA
	mov r4, #0
_021DE8CA:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _021DE8D4
	add r2, r1, #0
_021DE8D4:
	sub r1, r5, r3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	sub r1, r2, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	lsl r2, r3, #0x10
	add r1, sp, #8
	lsl r3, r4, #0x10
	ldrb r1, [r1, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
_021DE8F4:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DE89C

	thumb_func_start ov5_021DE8F8
ov5_021DE8F8: ; 0x021DE8F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0xcc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xcc
	add r7, r0, #0
	bl memset
	mov r4, #0
	add r5, r7, #0
_021DE912:
	add r0, r6, #0
	bl ov5_021DE784
	str r0, [r5, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021DE912
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE8F8

	thumb_func_start ov5_021DE928
ov5_021DE928: ; 0x021DE928
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021DE930:
	ldr r0, [r5, #4]
	bl ov5_021DE79C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021DE930
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DE928

	thumb_func_start ov5_021DE948
ov5_021DE948: ; 0x021DE948
	push {r3, r4}
	str r3, [r0, #0]
	ldr r3, _021DE984 ; =0xFFFFFFF8
	add r3, sp
	ldrb r4, [r3, #0x10]
	add r3, r0, #0
	add r3, #0xc9
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xc6
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xc7
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xc4
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc8
	strb r2, [r1]
	mov r1, #1
	add r0, #0xca
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_021DE984: .word 0xFFFFFFF8
	thumb_func_end ov5_021DE948

	thumb_func_start ov5_021DE988
ov5_021DE988: ; 0x021DE988
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DE99C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DE99C:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0x30
	bhs _021DEA20
	mov r1, #0xc8
	ldrsb r0, [r6, r1]
	sub r2, r0, #1
	add r0, r6, #0
	add r0, #0xc8
	strb r2, [r0]
	ldrsb r0, [r6, r1]
	cmp r0, #0
	bgt _021DEA20
	add r0, r6, #0
	add r0, #0xc7
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	mov r1, #0x1d
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	ror r2, r1
	add r2, r3, r2
	ldr r1, _021DEA7C ; =0x021F9988
	mov r3, #0x20
	ldrb r1, [r1, r2]
	lsr r2, r0, #3
	lsl r4, r2, #5
	mov r2, #0xb0
	sub r2, r2, r4
	str r2, [sp]
	add r2, r6, #0
	add r2, #0xc6
	ldrb r2, [r2]
	lsl r0, r0, #2
	lsl r1, r1, #5
	str r2, [sp, #4]
	ldr r2, [r6, #0]
	add r0, r6, r0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, r6, #0
	str r3, [sp, #0x10]
	add r2, #0xc9
	ldrb r2, [r2]
	sub r3, #0x30
	add r1, #0x10
	str r2, [sp, #0x14]
	ldr r0, [r0, #4]
	add r2, r1, #0
	sub r3, r3, r4
	bl ov5_021DE7A4
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xc4
	strb r1, [r0]
_021DEA20:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r4, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r4, r0
	bge _021DEA58
	lsl r0, r4, #2
	add r7, r6, #0
	add r5, r6, r0
	add r7, #0xc5
_021DEA38:
	ldr r0, [r5, #4]
	bl ov5_021DE7FC
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _021DEA4A
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021DEA4A:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021DEA38
_021DEA58:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0x30
	blo _021DEA74
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021DEA74
	mov r0, #0
	add r6, #0xca
	strb r0, [r6]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DEA74:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DEA7C: .word 0x021F9988
	thumb_func_end ov5_021DE988

	thumb_func_start ov5_021DEA80
ov5_021DEA80: ; 0x021DEA80
	push {r3, lr}
	mov r1, #0x1c
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_021DEA8E:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021DEA8E
	pop {r3, pc}
	thumb_func_end ov5_021DEA80

	thumb_func_start ov5_021DEA98
ov5_021DEA98: ; 0x021DEA98
	ldr r3, _021DEA9C ; =sub_020181C4
	bx r3
	; .align 2, 0
_021DEA9C: .word sub_020181C4
	thumb_func_end ov5_021DEA98

	thumb_func_start ov5_021DEAA0
ov5_021DEAA0: ; 0x021DEAA0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [sp, #8]
	str r1, [r0, #0]
	ldr r1, _021DEAC4 ; =0xFFFFFFF8
	add r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0x19]
	mov r1, #1
	strb r1, [r0, #0x18]
	add r1, r2, #0
	add r2, r3, #0
	add r0, r0, #4
	add r3, r4, #0
	bl ov5_021DDD80
	pop {r4, pc}
	nop
_021DEAC4: .word 0xFFFFFFF8
	thumb_func_end ov5_021DEAA0

	thumb_func_start ov5_021DEAC8
ov5_021DEAC8: ; 0x021DEAC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _021DEAD6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DEAD6:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #4
	bl ov5_021DDD90
	ldr r2, [r5, #4]
	add r6, r0, #0
	lsl r2, r2, #0x10
	ldrb r3, [r5, #0x19]
	ldr r0, [r5, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl ov5_021DEB04
	cmp r6, #1
	bne _021DEB00
	mov r0, #0
	strb r0, [r5, #0x18]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DEB00:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DEAC8

	thumb_func_start ov5_021DEB04
ov5_021DEB04: ; 0x021DEB04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #8]
	asr r0, r2, #4
	add r4, r1, #0
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _021DEBE4 ; =0x020F983C
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	add r7, r3, #0
	bl FX_Div
	str r0, [sp, #0x14]
	asr r0, r4, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _021DEBE4 ; =0x020F983C
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl FX_Div
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r5, #0
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	asr r0, r0, #0x1f
	str r0, [sp, #0x10]
_021DEB48:
	mov r0, #0x5f
	sub r0, r0, r5
	lsl r6, r0, #0xc
	asr r4, r6, #0x1f
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	add r3, r4, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021DEBE8 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	add r3, r4, #0
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021DEBE8 ; =0x00000000
	ldr r4, [sp, #0x1c]
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	add r6, r0, #0
	mov r2, #0x80
	ldr r1, [sp, #0x1c]
	sub r0, r2, r0
	sub r1, r2, r1
	add r4, #0x80
	add r6, #0x80
	add r3, r0, #0
	cmp r0, r1
	ble _021DEBA8
	add r3, r1, #0
	add r1, r0, #0
_021DEBA8:
	cmp r6, r4
	ble _021DEBB2
	add r0, r6, #0
	add r6, r4, #0
	add r4, r0, #0
_021DEBB2:
	add r0, r1, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, r5, #1
	str r7, [sp, #4]
	bl ov5_021DE89C
	add r0, r4, #1
	str r0, [sp]
	mov r1, #0xbf
	mov r2, #0xc0
	ldr r0, [sp, #8]
	sub r1, r1, r5
	sub r2, r2, r5
	add r3, r6, #0
	str r7, [sp, #4]
	bl ov5_021DE89C
	add r5, r5, #1
	cmp r5, #0x60
	blt _021DEB48
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DEBE4: .word 0x020F983C
_021DEBE8: .word 0x00000000
	thumb_func_end ov5_021DEB04

	thumb_func_start ov5_021DEBEC
ov5_021DEBEC: ; 0x021DEBEC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x24
	add r6, r0, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r7, r0, #0
	bl memset
	mov r4, #0
	add r5, r7, #0
_021DEC04:
	add r0, r6, #0
	bl ov5_021DEA80
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #8
	blt _021DEC04
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DEBEC

	thumb_func_start ov5_021DEC18
ov5_021DEC18: ; 0x021DEC18
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021DEC20:
	ldr r0, [r5, #0]
	bl ov5_021DEA98
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021DEC20
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DEC18

	thumb_func_start ov5_021DEC38
ov5_021DEC38: ; 0x021DEC38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0xc]
	ldr r4, _021DECB0 ; =0x021F9A2C
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r6, #0
	add r5, r0, #0
_021DEC4A:
	ldrh r1, [r4]
	ldr r0, _021DECB4 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r7, r0, #0
	ldrh r1, [r4, #2]
	ldr r0, _021DECB4 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r3, r0, #0
	ldr r0, [sp, #0x10]
	lsl r2, r7, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov5_021DEAA0
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _021DEC4A
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
	add r1, #0xff
	str r1, [sp]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0x5d
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r2, #0x63
	mov r3, #0
	bl ov5_021DE89C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DECB0: .word 0x021F9A2C
_021DECB4: .word 0x0000FFFF
	thumb_func_end ov5_021DEC38

	thumb_func_start ov5_021DECB8
ov5_021DECB8: ; 0x021DECB8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DECC8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DECC8:
	mov r4, #0
	add r5, r6, #0
_021DECCC:
	ldr r0, [r5, #0]
	bl ov5_021DEAC8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021DECCC
	cmp r0, #1
	bne _021DECE8
	mov r0, #0
	add r6, #0x20
	strb r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DECE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DECB8

	thumb_func_start ov5_021DECEC
ov5_021DECEC: ; 0x021DECEC
	push {r4, lr}
	mov r0, #4
	mov r1, #0xe8
	bl sub_02018144
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov5_021DECEC

	thumb_func_start ov5_021DED04
ov5_021DED04: ; 0x021DED04
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _021DED16
	bl ov5_021DEE84
_021DED16:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DED04

	thumb_func_start ov5_021DED20
ov5_021DED20: ; 0x021DED20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _021DED3C
	bl sub_02022974
_021DED3C:
	mov r2, #0
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r4, #0x18
	ldr r0, [r0, #4]
	add r3, r6, #0
	ldr r1, [r0, #0x1c]
	add r0, r7, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r0, r7, #0
	str r2, [r7, #0x14]
	add r0, #0xe4
	str r4, [r0, #0]
	add r0, r7, #0
	mov r1, #0xff
	bl ov5_021DDD80
	mov r4, #0
_021DED62:
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	mul r0, r1
	add r1, r5, #0
	bl _u32_div_f
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021DED8A
	add r0, r7, r4
	strb r6, [r0, #0x18]
	b _021DED92
_021DED8A:
	ldr r0, [sp, #0x18]
	sub r1, r0, r6
	add r0, r7, r4
	strb r1, [r0, #0x18]
_021DED92:
	add r4, r4, #1
	cmp r4, #0xc0
	blt _021DED62
	ldr r0, _021DEDDC ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r0]
	ldr r2, [sp, #0x1c]
	bic r3, r1
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r1
	ldr r1, [sp, #0x20]
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r3, #0
	sub r1, #8
	strh r3, [r1]
	mov r1, #0xc0
	sub r0, r0, #4
	strh r1, [r0]
	lsl r3, r2, #0x15
	ldr r1, [r3, #0]
	ldr r0, _021DEDE0 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r2, #8
	orr r0, r1
	str r0, [r3, #0]
	ldr r0, _021DEDE4 ; =ov5_021DEDE8
	add r1, r7, #0
	lsl r2, r2, #5
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DEDDC: .word 0x04000048
_021DEDE0: .word 0xFFFF1FFF
_021DEDE4: .word ov5_021DEDE8
	thumb_func_end ov5_021DED20

	thumb_func_start ov5_021DEDE8
ov5_021DEDE8: ; 0x021DEDE8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, _021DEE1C ; =ov5_021DEE50
	add r2, r4, #0
	bl ov5_021EF418
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	mov r2, #1
	ldr r0, _021DEE20 ; =ov5_021DEE24
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
	add r4, #0xe0
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_021DEE1C: .word ov5_021DEE50
_021DEE20: .word ov5_021DEE24
	thumb_func_end ov5_021DEDE8

	thumb_func_start ov5_021DEE24
ov5_021DEE24: ; 0x021DEE24
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DEE34
	cmp r0, #1
	beq _021DEE46
	pop {r4, pc}
_021DEE34:
	add r0, r4, #0
	bl ov5_021DDD90
	cmp r0, #1
	bne _021DEE4C
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021DEE46:
	add r0, r4, #0
	bl ov5_021DEE84
_021DEE4C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DEE24

	thumb_func_start ov5_021DEE50
ov5_021DEE50: ; 0x021DEE50
	ldr r0, _021DEE7C ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _021DEE78
	add r0, r1, r0
	ldrb r0, [r0, #0x18]
	ldr r2, [r1, #0]
	sub r0, r2, r0
	bpl _021DEE64
	mov r0, #0
_021DEE64:
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	mov r0, #0xff
	orr r0, r1
	ldr r1, _021DEE80 ; =0x04000040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_021DEE78:
	bx lr
	nop
_021DEE7C: .word 0x04000006
_021DEE80: .word 0x04000040
	thumb_func_end ov5_021DEE50

	thumb_func_start ov5_021DEE84
ov5_021DEE84: ; 0x021DEE84
	push {r4, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	ldr r1, [r2, #0]
	ldr r0, _021DEEC4 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl ov5_021EF43C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0
	add r4, #0xe0
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_021DEEC4: .word 0xFFFF1FFF
	thumb_func_end ov5_021DEE84

	thumb_func_start ov5_021DEEC8
ov5_021DEEC8: ; 0x021DEEC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #1
	add r1, r0, #0
	tst r1, r6
	bne _021DEEEC
	mov r1, #0x72
	lsl r1, r1, #4
	tst r1, r0
	bne _021DEEE2
	cmp r0, #0
	bne _021DEEE6
_021DEEE2:
	mov r6, #0
	b _021DEEEC
_021DEEE6:
	bl sub_02022974
	mov r6, #0
_021DEEEC:
	ldr r0, [r5, #4]
	bl sub_02054A40
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_02054A40
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	sub r0, r0, r7
	cmp r1, #0x18
	bhi _021DEF66
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DEF2A: ; jump table
	.short _021DEF5C - _021DEF2A - 2 ; case 0
	.short _021DEF5C - _021DEF2A - 2 ; case 1
	.short _021DEF5C - _021DEF2A - 2 ; case 2
	.short _021DEF5C - _021DEF2A - 2 ; case 3
	.short _021DEF5C - _021DEF2A - 2 ; case 4
	.short _021DEF64 - _021DEF2A - 2 ; case 5
	.short _021DEF5C - _021DEF2A - 2 ; case 6
	.short _021DEF60 - _021DEF2A - 2 ; case 7
	.short _021DEF5C - _021DEF2A - 2 ; case 8
	.short _021DEF5C - _021DEF2A - 2 ; case 9
	.short _021DEF5C - _021DEF2A - 2 ; case 10
	.short _021DEF5C - _021DEF2A - 2 ; case 11
	.short _021DEF66 - _021DEF2A - 2 ; case 12
	.short _021DEF66 - _021DEF2A - 2 ; case 13
	.short _021DEF66 - _021DEF2A - 2 ; case 14
	.short _021DEF66 - _021DEF2A - 2 ; case 15
	.short _021DEF66 - _021DEF2A - 2 ; case 16
	.short _021DEF66 - _021DEF2A - 2 ; case 17
	.short _021DEF66 - _021DEF2A - 2 ; case 18
	.short _021DEF66 - _021DEF2A - 2 ; case 19
	.short _021DEF66 - _021DEF2A - 2 ; case 20
	.short _021DEF66 - _021DEF2A - 2 ; case 21
	.short _021DEF66 - _021DEF2A - 2 ; case 22
	.short _021DEF66 - _021DEF2A - 2 ; case 23
	.short _021DEF5C - _021DEF2A - 2 ; case 24
_021DEF5C:
	mov r4, #0
	b _021DEF66
_021DEF60:
	mov r4, #2
	b _021DEF66
_021DEF64:
	mov r4, #4
_021DEF66:
	cmp r0, #0
	ble _021DEF6C
	add r4, r4, #1
_021DEF6C:
	mov r0, #6
	mul r0, r6
	add r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DEEC8

	thumb_func_start ov5_021DEF74
ov5_021DEF74: ; 0x021DEF74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DEF88 ; =0x0400006C
	ldr r1, [r1, #0]
	bl GXx_SetMasterBrightness_
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
_021DEF88: .word 0x0400006C
	thumb_func_end ov5_021DEF74

	thumb_func_start ov5_021DEF8C
ov5_021DEF8C: ; 0x021DEF8C
	ldr r3, _021DEF98 ; =sub_0200DA3C
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021DEF9C ; =ov5_021DEF74
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_021DEF98: .word sub_0200DA3C
_021DEF9C: .word ov5_021DEF74
	thumb_func_end ov5_021DEF8C

	thumb_func_start ov5_021DEFA0
ov5_021DEFA0: ; 0x021DEFA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DF020 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DEFB0
	bl sub_02022974
_021DEFB0:
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	ldr r1, _021DF020 ; =0x02202120
	mov r2, #0x18
	str r0, [r1, #0]
	mov r1, #0
_021DEFC0:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021DEFC0
	ldr r0, _021DF020 ; =0x02202120
	mov r1, #0
	ldr r2, [r0, #0]
	strh r1, [r2]
	ldr r2, [r0, #0]
	strb r1, [r2, #2]
	ldr r0, [r0, #0]
	str r4, [r0, #4]
	mov r0, #2
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	bl GX_ResetBankForBG
	mov r2, #2
	ldr r1, _021DF024 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	ldr r0, _021DF028 ; =0xC0320C04
	ldr r2, _021DF02C ; =0x04000064
	ldr r1, _021DF020 ; =0x02202120
	str r0, [r2, #0]
	ldr r0, _021DF030 ; =ov5_021DF258
	ldr r1, [r1, #0]
	lsr r2, r2, #0x10
	bl sub_0200DA3C
	ldr r1, _021DF020 ; =0x02202120
	mov r2, #1
	ldr r0, _021DF034 ; =ov5_021DF28C
	ldr r1, [r1, #0]
	lsl r2, r2, #0xa
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_021DF020: .word 0x02202120
_021DF024: .word 0x06840000
_021DF028: .word 0xC0320C04
_021DF02C: .word 0x04000064
_021DF030: .word ov5_021DF258
_021DF034: .word ov5_021DF28C
	thumb_func_end ov5_021DEFA0

	thumb_func_start ov5_021DF038
ov5_021DF038: ; 0x021DF038
	push {r3, lr}
	ldr r0, _021DF050 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF046
	bl sub_02022974
_021DF046:
	ldr r0, _021DF050 ; =0x02202120
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #3]
	pop {r3, pc}
	; .align 2, 0
_021DF050: .word 0x02202120
	thumb_func_end ov5_021DF038

	thumb_func_start ov5_021DF054
ov5_021DF054: ; 0x021DF054
	push {r3, lr}
	ldr r0, _021DF06C ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF062
	bl sub_02022974
_021DF062:
	ldr r0, _021DF06C ; =0x02202120
	ldr r0, [r0, #0]
	ldrb r0, [r0, #2]
	pop {r3, pc}
	nop
_021DF06C: .word 0x02202120
	thumb_func_end ov5_021DF054

	thumb_func_start ov5_021DF070
ov5_021DF070: ; 0x021DF070
	push {r3, lr}
	ldr r0, _021DF080 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DF07E
	bl sub_0201469C
_021DF07E:
	pop {r3, pc}
	; .align 2, 0
_021DF080: .word 0x02202120
	thumb_func_end ov5_021DF070

	thumb_func_start ov5_021DF084
ov5_021DF084: ; 0x021DF084
	push {r3, lr}
	ldr r0, _021DF0C8 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF092
	bl sub_02022974
_021DF092:
	bl sub_020141E4
	ldr r0, _021DF0C8 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov5_021DF3D4
	ldr r0, _021DF0C8 ; =0x02202120
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov5_021D16F4
	ldr r0, _021DF0C8 ; =0x02202120
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov5_021D1718
	ldr r0, _021DF0C8 ; =0x02202120
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _021DF0C8 ; =0x02202120
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_021DF0C8: .word 0x02202120
	thumb_func_end ov5_021DF084

	thumb_func_start ov5_021DF0CC
ov5_021DF0CC: ; 0x021DF0CC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021DF170 ; =0x02202120
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF0E0
	bl sub_02022974
_021DF0E0:
	ldr r0, _021DF170 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021DF0EE
	bl sub_02022974
_021DF0EE:
	mov r1, #0x12
	mov r0, #4
	lsl r1, r1, #0xa
	bl sub_02018144
	ldr r2, _021DF170 ; =0x02202120
	mov r3, #0x12
	ldr r1, [r2, #0]
	lsl r3, r3, #0xa
	str r0, [r1, #0xc]
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r2, #0]
	ldr r0, _021DF174 ; =ov5_021DF3E8
	ldr r1, _021DF178 ; =ov5_021DF414
	ldr r2, [r2, #0xc]
	bl sub_02014014
	ldr r1, _021DF170 ; =0x02202120
	ldr r2, [r1, #0]
	str r0, [r2, #8]
	ldr r0, [r1, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DF128
	bl sub_02022974
_021DF128:
	ldr r0, _021DF170 ; =0x02202120
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_02014788
	ldr r0, _021DF170 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #4
	str r2, [sp]
	bl sub_0200723C
	add r1, r0, #0
	ldr r0, _021DF170 ; =0x02202120
	mov r2, #0
	ldr r0, [r0, #0]
	add r3, r2, #0
	ldr r0, [r0, #8]
	bl sub_020144CC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021DF170: .word 0x02202120
_021DF174: .word ov5_021DF3E8
_021DF178: .word ov5_021DF414
	thumb_func_end ov5_021DF0CC

	thumb_func_start ov5_021DF17C
ov5_021DF17C: ; 0x021DF17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021DF1C8 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF198
	bl sub_02022974
_021DF198:
	ldr r0, _021DF1C8 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DF1A6
	bl sub_02022974
_021DF1A6:
	mov r4, #0
	cmp r5, #0
	bls _021DF1C2
	ldr r6, _021DF1C8 ; =0x02202120
	add r7, sp, #0
_021DF1B0:
	ldr r0, [r6, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r2, r7, #0
	bl sub_020146E4
	add r4, r4, #1
	cmp r4, r5
	blo _021DF1B0
_021DF1C2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DF1C8: .word 0x02202120
	thumb_func_end ov5_021DF17C

	thumb_func_start ov5_021DF1CC
ov5_021DF1CC: ; 0x021DF1CC
	push {r3, lr}
	ldr r0, _021DF204 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF1DA
	bl sub_02022974
_021DF1DA:
	ldr r0, _021DF204 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021DF1E8
	mov r0, #1
	pop {r3, pc}
_021DF1E8:
	bl sub_020146C0
	ldr r0, _021DF204 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_02014710
	cmp r0, #0
	bne _021DF1FE
	mov r0, #1
	pop {r3, pc}
_021DF1FE:
	mov r0, #0
	pop {r3, pc}
	nop
_021DF204: .word 0x02202120
	thumb_func_end ov5_021DF1CC

	thumb_func_start ov5_021DF208
ov5_021DF208: ; 0x021DF208
	push {r3, lr}
	ldr r0, _021DF220 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_02014710
	cmp r0, #0
	bne _021DF21C
	mov r0, #1
	pop {r3, pc}
_021DF21C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021DF220: .word 0x02202120
	thumb_func_end ov5_021DF208

	thumb_func_start ov5_021DF224
ov5_021DF224: ; 0x021DF224
	push {r3, lr}
	ldr r0, _021DF254 ; =0x02202120
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF232
	bl sub_02022974
_021DF232:
	ldr r0, _021DF254 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0201411C
	ldr r0, _021DF254 ; =0x02202120
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020181C4
	ldr r0, _021DF254 ; =0x02202120
	mov r2, #0
	ldr r1, [r0, #0]
	str r2, [r1, #8]
	ldr r0, [r0, #0]
	str r2, [r0, #0xc]
	pop {r3, pc}
	; .align 2, 0
_021DF254: .word 0x02202120
	thumb_func_end ov5_021DF224

	thumb_func_start ov5_021DF258
ov5_021DF258: ; 0x021DF258
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021DF26A
	cmp r0, #1
	beq _021DF270
	pop {r3, r4, r5, pc}
_021DF26A:
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021DF270:
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _021DF288
	ldr r0, [r4, #4]
	bl ov5_021DF30C
	add r0, r5, #0
	bl sub_0200DA58
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021DF288:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF258

	thumb_func_start ov5_021DF28C
ov5_021DF28C: ; 0x021DF28C
	push {r4, r5, lr}
	sub sp, #0x3c
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #2
	bne _021DF2FA
	bl sub_02014000
	add r1, sp, #0x30
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _021DF300 ; =0x021F9990
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0
	bl MTX_Identity33_
	add r0, sp, #0x30
	bl NNS_G3dGlbSetBaseTrans
	add r0, sp, #0x24
	bl NNS_G3dGlbSetBaseScale
	ldr r1, _021DF304 ; =0x021C5B48
	add r0, sp, #0
	bl MI_Copy36B
	ldr r1, _021DF308 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov5_021D16F4
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov5_021D1718
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	strb r0, [r4, #2]
	add r0, r5, #0
	bl sub_0200DA58
_021DF2FA:
	add sp, #0x3c
	pop {r4, r5, pc}
	nop
_021DF300: .word 0x021F9990
_021DF304: .word 0x021C5B48
_021DF308: .word 0x021C5B0C
	thumb_func_end ov5_021DF28C

	thumb_func_start ov5_021DF30C
ov5_021DF30C: ; 0x021DF30C
	push {r4, r5, lr}
	sub sp, #0x6c
	ldr r5, _021DF3BC ; =0x021F9A4C
	add r4, r0, #0
	add r3, sp, #0x44
	mov r2, #5
_021DF318:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021DF318
	add r0, sp, #0x44
	bl sub_0201FE94
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _021DF3C0 ; =0x021F999C
	add r3, sp, #0x34
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r0, [r4, #8]
	bl ov5_021D143C
	ldr r2, _021DF3C4 ; =0x0400000E
	mov r0, #0x43
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _021DF3C8 ; =0x00004884
	orr r0, r1
	strh r0, [r2]
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	add r0, sp, #0x24
	bl MTX_Identity22_
	mov r2, #0
	str r2, [sp]
	ldr r0, _021DF3CC ; =0x04000030
	add r1, sp, #0x24
	add r3, r2, #0
	str r2, [sp, #4]
	bl G2x_SetBGyAffine_
	ldr r5, _021DF3D0 ; =0x021F99D8
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #8]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x6c
	pop {r4, r5, pc}
	; .align 2, 0
_021DF3BC: .word 0x021F9A4C
_021DF3C0: .word 0x021F999C
_021DF3C4: .word 0x0400000E
_021DF3C8: .word 0x00004884
_021DF3CC: .word 0x04000030
_021DF3D0: .word 0x021F99D8
	thumb_func_end ov5_021DF30C

	thumb_func_start ov5_021DF3D4
ov5_021DF3D4: ; 0x021DF3D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #8]
	bl ov5_021D1434
	pop {r4, pc}
	thumb_func_end ov5_021DF3D4

	thumb_func_start ov5_021DF3E8
ov5_021DF3E8: ; 0x021DF3E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DF410 ; =0x02202120
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF3FA
	bl sub_02022974
_021DF3FA:
	cmp r4, #0
	beq _021DF402
	bl sub_02022974
_021DF402:
	ldr r0, _021DF410 ; =0x02202120
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x10]
	add r1, r0, r5
	str r1, [r2, #0x10]
	pop {r3, r4, r5, pc}
	nop
_021DF410: .word 0x02202120
	thumb_func_end ov5_021DF3E8

	thumb_func_start ov5_021DF414
ov5_021DF414: ; 0x021DF414
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DF43C ; =0x02202120
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DF426
	bl sub_02022974
_021DF426:
	cmp r4, #0
	beq _021DF42E
	bl sub_02022974
_021DF42E:
	ldr r0, _021DF43C ; =0x02202120
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x14]
	add r1, r0, r5
	str r1, [r2, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021DF43C: .word 0x02202120
	thumb_func_end ov5_021DF414

	.rodata


	.global Unk_ov5_021F9988
Unk_ov5_021F9988: ; 0x021F9988
	.incbin "incbin/overlay5_rodata.bin", 0x1074, 0x107C - 0x1074

	.global Unk_ov5_021F9990
Unk_ov5_021F9990: ; 0x021F9990
	.incbin "incbin/overlay5_rodata.bin", 0x107C, 0x1088 - 0x107C

	.global Unk_ov5_021F999C
Unk_ov5_021F999C: ; 0x021F999C
	.incbin "incbin/overlay5_rodata.bin", 0x1088, 0x1098 - 0x1088

	.global Unk_ov5_021F99AC
Unk_ov5_021F99AC: ; 0x021F99AC
	.incbin "incbin/overlay5_rodata.bin", 0x1098, 0x10A8 - 0x1098

	.global Unk_ov5_021F99BC
Unk_ov5_021F99BC: ; 0x021F99BC
	.incbin "incbin/overlay5_rodata.bin", 0x10A8, 0x10C4 - 0x10A8

	.global Unk_ov5_021F99D8
Unk_ov5_021F99D8: ; 0x021F99D8
	.incbin "incbin/overlay5_rodata.bin", 0x10C4, 0x10E0 - 0x10C4

	.global Unk_ov5_021F99F4
Unk_ov5_021F99F4: ; 0x021F99F4
	.incbin "incbin/overlay5_rodata.bin", 0x10E0, 0x10FC - 0x10E0

	.global Unk_ov5_021F9A10
Unk_ov5_021F9A10: ; 0x021F9A10
	.incbin "incbin/overlay5_rodata.bin", 0x10FC, 0x1118 - 0x10FC

	.global Unk_ov5_021F9A2C
Unk_ov5_021F9A2C: ; 0x021F9A2C
	.incbin "incbin/overlay5_rodata.bin", 0x1118, 0x1138 - 0x1118

	.global Unk_ov5_021F9A4C
Unk_ov5_021F9A4C: ; 0x021F9A4C
	.incbin "incbin/overlay5_rodata.bin", 0x1138, 0x1160 - 0x1138

	.global Unk_ov5_021F9A74
Unk_ov5_021F9A74: ; 0x021F9A74
	.incbin "incbin/overlay5_rodata.bin", 0x1160, 0x7C


	.bss


	.global Unk_ov5_02202120
Unk_ov5_02202120: ; 0x02202120
	.space 0x4

