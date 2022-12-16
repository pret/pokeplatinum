	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021ECA70
ov5_021ECA70: ; 0x021ECA70
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov5_021ECB90
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020630AC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECA70

	thumb_func_start ov5_021ECA90
ov5_021ECA90: ; 0x021ECA90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021ECAB8
	cmp r4, #0
	beq _021ECAB8
	add r0, r5, #0
	bl ov5_021ECBA4
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021ECAB8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECA90

	thumb_func_start ov5_021ECABC
ov5_021ECABC: ; 0x021ECABC
	ldr r3, _021ECAC0 ; =ov5_021ECC0C
	bx r3
	; .align 2, 0
_021ECAC0: .word ov5_021ECC0C
	thumb_func_end ov5_021ECABC

	thumb_func_start ov5_021ECAC4
ov5_021ECAC4: ; 0x021ECAC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021ECADA
	add r1, r4, #4
	bl ov5_021ED01C
_021ECADA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECAC4

	thumb_func_start ov5_021ECAF0
ov5_021ECAF0: ; 0x021ECAF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021ECB30
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021ECB12
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECF04
_021ECB12:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021ECB30
	add r1, r4, #4
	bl ov5_021ED03C
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_021ECB30:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECAF0

	thumb_func_start ov5_021ECB34
ov5_021ECB34: ; 0x021ECB34
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov5_021ECB90
	mov r1, #0
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp]
	str r1, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020630AC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECB34

	thumb_func_start ov5_021ECB58
ov5_021ECB58: ; 0x021ECB58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021ECB76
	cmp r4, #0
	beq _021ECB76
	add r0, r5, #0
	bl ov5_021ECBA4
_021ECB76:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021ECB58

	thumb_func_start ov5_021ECB78
ov5_021ECB78: ; 0x021ECB78
	ldr r3, _021ECB7C ; =ov5_021ECC0C
	bx r3
	; .align 2, 0
_021ECB7C: .word ov5_021ECC0C
	thumb_func_end ov5_021ECB78

	thumb_func_start ov5_021ECB80
ov5_021ECB80: ; 0x021ECB80
	push {r3, lr}
	bl sub_02062AF0
	bl ov5_021ECB8C
	pop {r3, pc}
	thumb_func_end ov5_021ECB80

	thumb_func_start ov5_021ECB8C
ov5_021ECB8C: ; 0x021ECB8C
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov5_021ECB8C

	thumb_func_start ov5_021ECB90
ov5_021ECB90: ; 0x021ECB90
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	bl sub_02062ACC
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021ECF04
	pop {r4, pc}
	thumb_func_end ov5_021ECB90

	thumb_func_start ov5_021ECBA4
ov5_021ECBA4: ; 0x021ECBA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECBCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECBA4

	thumb_func_start ov5_021ECBCC
ov5_021ECBCC: ; 0x021ECBCC
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_020628D8
	cmp r0, #1
	bne _021ECBE0
	mov r4, #0
_021ECBE0:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #1
	bne _021ECBFE
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #0
	bne _021ECBFE
	mov r4, #0
_021ECBFE:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02021320
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECBCC

	thumb_func_start ov5_021ECC0C
ov5_021ECC0C: ; 0x021ECC0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021ECFA4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECC0C