	.include "macros/function.inc"
	.include "include/ov104_0222FBE4.inc"

	

	.text


	thumb_func_start ov104_0222FBE4
ov104_0222FBE4: ; 0x0222FBE4
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r0, #0
	add r0, r4, #0
	bl ov104_0222FC14
	add r4, r0, #0
	bne _0222FBFC
	bl GF_AssertFail
_0222FBFC:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FBE4

	thumb_func_start ov104_0222FC00
ov104_0222FC00: ; 0x0222FC00
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r0, #0
	add r0, r4, #0
	bl ov104_0222FC8C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FC00

	thumb_func_start ov104_0222FC14
ov104_0222FC14: ; 0x0222FC14
	push {r3, lr}
	mov r3, #2
	lsl r3, r3, #0xe
	cmp r1, r3
	bhs _0222FC22
	mov r0, #0
	pop {r3, pc}
_0222FC22:
	add r2, r3, #0
	add r2, #8
	cmp r1, r2
	bhs _0222FC34
	sub r1, r1, r3
	add r0, #8
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0222FC34:
	add r2, r3, #0
	add r2, #0x10
	cmp r1, r2
	bhs _0222FC48
	add r3, #8
	ldr r0, [r0, #0]
	sub r1, r1, r3
	bl ov104_0222E91C
	pop {r3, pc}
_0222FC48:
	add r2, r3, #0
	add r2, #0x14
	cmp r1, r2
	bhs _0222FC5C
	add r3, #0x10
	sub r1, r1, r3
	add r0, #0x78
	lsl r1, r1, #1
	add r0, r0, r1
	pop {r3, pc}
_0222FC5C:
	ldr r0, _0222FC84 ; =0x0000FD13
	cmp r1, r0
	bne _0222FC66
	mov r0, #0
	pop {r3, pc}
_0222FC66:
	ldr r0, _0222FC88 ; =0x0000EEEE
	cmp r1, r0
	bne _0222FC70
	mov r0, #0
	pop {r3, pc}
_0222FC70:
	add r0, r0, #1
	cmp r1, r0
	bne _0222FC7A
	mov r0, #0
	pop {r3, pc}
_0222FC7A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_0222FC84: .word 0x0000FD13
_0222FC88: .word 0x0000EEEE
	thumb_func_end ov104_0222FC14

	thumb_func_start ov104_0222FC8C
ov104_0222FC8C: ; 0x0222FC8C
	push {r4, lr}
	add r4, r1, #0
	bl ov104_0222FC14
	cmp r0, #0
	beq _0222FC9A
	ldrh r4, [r0]
_0222FC9A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FC8C

	thumb_func_start ov104_0222FCA0
ov104_0222FCA0: ; 0x0222FCA0
	mov r0, #0
	bx lr
	thumb_func_end ov104_0222FCA0

	thumb_func_start ov104_0222FCA4
ov104_0222FCA4: ; 0x0222FCA4
	push {r3, lr}
	bl ov104_0222E980
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FCA4

	thumb_func_start ov104_0222FCB0
ov104_0222FCB0: ; 0x0222FCB0
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222E980
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B9B4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FCB0

	thumb_func_start ov104_0222FCC4
ov104_0222FCC4: ; 0x0222FCC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222FC00
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r2, _0222FCE4 ; =0x0000FFFF
	bl sub_0209B9BC
	ldr r1, _0222FCE8 ; =ov104_0222FCEC
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222FCE4: .word 0x0000FFFF
_0222FCE8: .word ov104_0222FCEC
	thumb_func_end ov104_0222FCC4

	thumb_func_start ov104_0222FCEC
ov104_0222FCEC: ; 0x0222FCEC
	mov r0, #1
	bx lr
	thumb_func_end ov104_0222FCEC

	thumb_func_start ov104_0222FCF0
ov104_0222FCF0: ; 0x0222FCF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_0209B9BC
	add r0, r5, #0
	bl ov104_0222E980
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FCF0

	thumb_func_start ov104_0222FD18
ov104_0222FD18: ; 0x0222FD18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov104_0222FC14
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x78
	strh r6, [r0]
	ldr r1, _0222FD48 ; =ov104_0222FD4C
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0222FD48: .word ov104_0222FD4C
	thumb_func_end ov104_0222FD18

	thumb_func_start ov104_0222FD4C
ov104_0222FD4C: ; 0x0222FD4C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC14
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0222FD68
	mov r0, #1
	pop {r3, pc}
_0222FD68:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FD4C

	thumb_func_start ov104_0222FD6C
ov104_0222FD6C: ; 0x0222FD6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FD6C

	thumb_func_start ov104_0222FD84
ov104_0222FD84: ; 0x0222FD84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222FD84

	thumb_func_start ov104_0222FD9C
ov104_0222FD9C: ; 0x0222FD9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	ldrh r1, [r4]
	add r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FD9C

	thumb_func_start ov104_0222FDB8
ov104_0222FDB8: ; 0x0222FDB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	ldrh r1, [r4]
	sub r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FDB8

	thumb_func_start ov104_0222FDD4
ov104_0222FDD4: ; 0x0222FDD4
	cmp r0, r1
	bhs _0222FDDC
	mov r0, #0
	bx lr
_0222FDDC:
	cmp r0, r1
	bne _0222FDE4
	mov r0, #1
	bx lr
_0222FDE4:
	mov r0, #2
	bx lr
	thumb_func_end ov104_0222FDD4

	thumb_func_start ov104_0222FDE8
ov104_0222FDE8: ; 0x0222FDE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r1, r0, #0
	add r0, r4, #0
	bl ov104_0222FDD4
	add r5, #0x8c
	strb r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222FDE8

	thumb_func_start ov104_0222FE08
ov104_0222FE08: ; 0x0222FE08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r1, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r1]
	bl ov104_0222FDD4
	add r5, #0x8c
	strb r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FE08

	thumb_func_start ov104_0222FE2C
ov104_0222FE2C: ; 0x0222FE2C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov104_0222FE2C

	thumb_func_start ov104_0222FE30
ov104_0222FE30: ; 0x0222FE30
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA60
	add r2, r0, #0
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	add r1, r1, r2
	bl ov104_0222FE2C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FE30

	thumb_func_start ov104_0222FE48
ov104_0222FE48: ; 0x0222FE48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222EA60
	add r1, r0, #0
	lsl r0, r4, #1
	add r4, r4, r0
	add r0, r5, #0
	add r0, #0x8c
	ldr r3, _0222FE7C ; =0x0223F648
	ldrb r2, [r0]
	add r0, r3, r4
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0222FE78
	ldr r2, [r5, #0x1c]
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_0222FE2C
_0222FE78:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222FE7C: .word 0x0223F648
	thumb_func_end ov104_0222FE48

	thumb_func_start ov104_0222FE80
ov104_0222FE80: ; 0x0222FE80
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA60
	add r2, r0, #0
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	add r1, r1, r2
	bl ov104_0222EA2C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FE80

	thumb_func_start ov104_0222FE98
ov104_0222FE98: ; 0x0222FE98
	push {r3, lr}
	bl ov104_0222EA3C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FE98

	thumb_func_start ov104_0222FEA4
ov104_0222FEA4: ; 0x0222FEA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222EA60
	add r1, r0, #0
	lsl r0, r4, #1
	add r4, r4, r0
	add r0, r5, #0
	add r0, #0x8c
	ldr r3, _0222FED8 ; =0x0223F648
	ldrb r2, [r0]
	add r0, r3, r4
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0222FED4
	ldr r2, [r5, #0x1c]
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_0222EA2C
_0222FED4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222FED8: .word 0x0223F648
	thumb_func_end ov104_0222FEA4

	thumb_func_start ov104_0222FEDC
ov104_0222FEDC: ; 0x0222FEDC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov104_0222EA48
	add r2, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	strb r3, [r0, #1]
	mov r1, #1
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r4, #0]
	add r4, #0x80
	ldr r1, [r4, #0]
	bl ov104_02231F74
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FEDC

	thumb_func_start ov104_0222FF0C
ov104_0222FF0C: ; 0x0222FF0C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov104_0222EA48
	mov r3, #0
	add r1, r4, #0
	str r3, [sp]
	add r1, #0x80
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl ov104_02231F74
	ldr r1, _0222FF38 ; =ov104_0222FF6C
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222FF38: .word ov104_0222FF6C
	thumb_func_end ov104_0222FF0C

	thumb_func_start ov104_0222FF3C
ov104_0222FF3C: ; 0x0222FF3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov104_0222EA48
	add r2, r0, #0
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r1, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	mov r3, #1
	bl ov104_02231F74
	ldr r1, _0222FF68 ; =ov104_0222FF6C
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222FF68: .word ov104_0222FF6C
	thumb_func_end ov104_0222FF3C

	thumb_func_start ov104_0222FF6C
ov104_0222FF6C: ; 0x0222FF6C
	push {r3, lr}
	ldr r0, [r0, #0]
	add r0, #0x50
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0222FF80
	mov r0, #1
	pop {r3, pc}
_0222FF80:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FF6C

	thumb_func_start ov104_0222FF84
ov104_0222FF84: ; 0x0222FF84
	push {r3, lr}
	ldr r0, [r0, #0]
	bl ov104_02232088
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FF84

	thumb_func_start ov104_0222FF90
ov104_0222FF90: ; 0x0222FF90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	str r4, [sp]
	add r3, r0, #0
	str r6, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0200F174
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222FF90

	thumb_func_start ov104_0222FFD8
ov104_0222FFD8: ; 0x0222FFD8
	push {r3, lr}
	ldr r1, _0222FFE4 ; =ov104_0222FFE8
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0222FFE4: .word ov104_0222FFE8
	thumb_func_end ov104_0222FFD8

	thumb_func_start ov104_0222FFE8
ov104_0222FFE8: ; 0x0222FFE8
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _0222FFF6
	mov r0, #1
	pop {r3, pc}
_0222FFF6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FFE8

	thumb_func_start ov104_0222FFFC
ov104_0222FFFC: ; 0x0222FFFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5, #0]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov104_02232258
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222FFFC

	thumb_func_start ov104_02230058
ov104_02230058: ; 0x02230058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5, #0]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov104_02232258
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02230058

	thumb_func_start ov104_022300B8
ov104_022300B8: ; 0x022300B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r3, r0, #0
	ldr r0, [r4, #0x60]
	add r1, r6, #0
	mov r2, #0xff
	bl ov104_022322A8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_022300B8

	thumb_func_start ov104_022300DC
ov104_022300DC: ; 0x022300DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r3, r0, #0
	ldr r0, [r4, #0x60]
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_022322A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022300DC

	thumb_func_start ov104_02230108
ov104_02230108: ; 0x02230108
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x60]
	bl ov104_022322B0
	ldr r1, _02230120 ; =ov104_02230124
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02230120: .word ov104_02230124
	thumb_func_end ov104_02230108

	thumb_func_start ov104_02230124
ov104_02230124: ; 0x02230124
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	ldr r4, [r0, #0]
	bl ov104_0222FC14
	ldrh r1, [r0]
	ldr r0, _02230148 ; =0x0000EEEE
	cmp r1, r0
	bne _0223013E
	mov r0, #0
	pop {r4, pc}
_0223013E:
	mov r0, #0
	str r0, [r4, #0x60]
	mov r0, #1
	pop {r4, pc}
	nop
_02230148: .word 0x0000EEEE
	thumb_func_end ov104_02230124

	thumb_func_start ov104_0223014C
ov104_0223014C: ; 0x0223014C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5, #0]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov104_022325FC
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223014C

	thumb_func_start ov104_022301A8
ov104_022301A8: ; 0x022301A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5, #0]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov104_022325FC
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022301A8

	thumb_func_start ov104_02230208
ov104_02230208: ; 0x02230208
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r3, r0, #0
	ldr r0, [r4, #0x60]
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_0223261C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02230208

	thumb_func_start ov104_02230234
ov104_02230234: ; 0x02230234
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x60]
	bl ov104_02232624
	ldr r1, _0223024C ; =ov104_02230124
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223024C: .word ov104_02230124
	thumb_func_end ov104_02230234

	thumb_func_start ov104_02230250
ov104_02230250: ; 0x02230250
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x60]
	bl ov104_02232B5C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02230250

	thumb_func_start ov104_02230260
ov104_02230260: ; 0x02230260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #0]
	add r0, r4, #0
	bl ov104_0222E924
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	ldr r1, [r5, #0x1c]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r0, [r1]
	ldr r1, _022302A8 ; =0x0223F640
	ldr r2, _022302AC ; =0x000003D9
	str r0, [sp]
	ldr r0, [r4, #0x34]
	mov r3, #0xc
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	bl sub_02002054
	str r0, [r4, #0x74]
	add r0, r5, #0
	add r0, #0x78
	strh r7, [r0]
	ldr r1, _022302B0 ; =ov104_022302B4
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022302A8: .word 0x0223F640
_022302AC: .word 0x000003D9
_022302B0: .word ov104_022302B4
	thumb_func_end ov104_02230260

	thumb_func_start ov104_022302B4
ov104_022302B4: ; 0x022302B4
	push {r3, r4, r5, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	ldr r5, [r0, #0]
	bl ov104_0222FC14
	add r4, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r5, #0x34]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022302D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022302D8:
	cmp r0, #0
	bne _022302E0
	mov r0, #0
	b _022302E2
_022302E0:
	mov r0, #1
_022302E2:
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022302B4

	thumb_func_start ov104_022302E8
ov104_022302E8: ; 0x022302E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	ldr r0, [sp]
	bl ov104_0222EA60
	ldr r1, [sp]
	ldr r1, [r1, #0x1c]
	str r1, [sp, #4]
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #0x1c]
_0223030C:
	ldr r0, [sp]
	bl ov104_0222FC00
	add r1, sp, #0xc
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r0, _022303A0 ; =0x0000FD13
	cmp r2, r0
	beq _02230394
	ldr r0, [sp]
	ldr r3, [r0, #0x1c]
	add r2, r3, #1
	str r2, [r0, #0x1c]
	ldrb r0, [r3]
	strb r0, [r1, #2]
	ldrh r1, [r1]
	ldr r0, _022303A4 ; =0x0000EEEE
	cmp r1, r0
	bne _02230352
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_02025E38
	bl ov104_0222E5F0
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	b _0223030C
_02230352:
	add r0, r0, #1
	cmp r1, r0
	bne _0223038A
	bl sub_02035E38
	cmp r0, #1
	bne _0223030C
	bl sub_02035E18
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0223030C
	add r7, sp, #0xc
_0223036E:
	add r0, r5, #0
	bl sub_02032EE8
	bl ov104_0222E5F0
	strh r0, [r7]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	add r5, r5, #1
	cmp r5, r6
	blt _0223036E
	b _0223030C
_0223038A:
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	b _0223030C
_02230394:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	str r1, [r0, #0x1c]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022303A0: .word 0x0000FD13
_022303A4: .word 0x0000EEEE
	thumb_func_end ov104_022302E8

	thumb_func_start ov104_022303A8
ov104_022303A8: ; 0x022303A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r1, r0, #0
	add r0, r5, #0
	bl ov104_0223D148
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022303A8

	thumb_func_start ov104_022303C8
ov104_022303C8: ; 0x022303C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0209B974
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov104_0222EA60
	ldr r1, [r5, #0x1c]
	add r4, r5, #0
	add r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	add r4, #0x1c
	add r6, sp, #0xc
_022303EE:
	mov r7, #0
	add r0, r5, #0
	mvn r7, r7
	bl ov104_0222FC00
	strh r0, [r6, #4]
	ldrh r1, [r6, #4]
	ldr r0, _02230498 ; =0x0000FD13
	cmp r1, r0
	beq _0223048C
	add r0, r5, #0
	bl ov104_0222FC00
	strh r0, [r6]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0]
	ldrb r0, [r1]
	strb r0, [r6, #0xa]
	add r0, r5, #0
	bl ov104_0222EA48
	sub r0, #8
	strh r0, [r6, #6]
	add r0, r5, #0
	bl ov104_0222EA48
	sub r0, #0x10
	strh r0, [r6, #8]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0]
	ldrb r0, [r1]
	strb r0, [r6, #0xb]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0]
	ldrb r0, [r1]
	strb r0, [r6, #0xc]
	mov r0, #0
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, _0223049C ; =0x0000EEEE
	cmp r1, r0
	bne _02230466
	ldr r0, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_02025E38
	bl ov104_0222E5F0
	strh r0, [r6]
	mov r7, #0x1f
	b _02230480
_02230466:
	add r0, r0, #1
	cmp r1, r0
	bne _02230480
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0]
	ldrb r0, [r1]
	bl sub_02032EE8
	bl ov104_0222E5F0
	strh r0, [r6]
_02230480:
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	add r2, r7, #0
	bl ov104_0223D180
	b _022303EE
_0223048C:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02230498: .word 0x0000FD13
_0223049C: .word 0x0000EEEE
	thumb_func_end ov104_022303C8

	thumb_func_start ov104_022304A0
ov104_022304A0: ; 0x022304A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl ov63_0222BF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov104_0223D200
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022304A0

	thumb_func_start ov104_022304C8
ov104_022304C8: ; 0x022304C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	ldr r2, [r5, #0x1c]
	add r1, r0, #0
	add r0, r2, #1
	str r0, [r5, #0x1c]
	ldrb r5, [r2]
	mov r2, #0
	add r0, r4, #0
	str r2, [sp]
	add r3, sp, #0
	bl ov104_0223D258
	ldr r0, [sp]
	cmp r0, #0
	bne _022304FC
	bl GF_AssertFail
_022304FC:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov63_0222D008
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022304C8

	thumb_func_start ov104_02230508
ov104_02230508: ; 0x02230508
	mov r0, #0
	bx lr
	thumb_func_end ov104_02230508

	thumb_func_start ov104_0223050C
ov104_0223050C: ; 0x0223050C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0]
	bl sub_0209B974
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222EA60
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov104_0223D5A8
	str r0, [sp, #8]
	cmp r0, #0
	bne _0223053E
	bl GF_AssertFail
_0223053E:
	add r0, r4, #0
	add r0, #0x59
	str r0, [sp]
	ldr r0, [r4, #0x34]
	ldr r3, [sp, #0xc]
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	ldr r1, [sp, #8]
	ldr r3, [r3, #0x30]
	add r0, r7, #0
	add r2, r2, r6
	bl ov104_0223056C
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	add r4, #0x59
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223050C

	thumb_func_start ov104_0223056C
ov104_0223056C: ; 0x0223056C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0x18
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r5, [r4, #0x14]
	ldr r0, [sp]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x18]
	strh r6, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _022305A0
	bl GF_AssertFail
_022305A0:
	ldr r0, _022305B0 ; =ov104_02232B78
	ldr r2, _022305B4 ; =0x0000EAC4
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022305B0: .word ov104_02232B78
_022305B4: .word 0x0000EAC4
	thumb_func_end ov104_0223056C

	thumb_func_start ov104_022305B8
ov104_022305B8: ; 0x022305B8
	push {r3, lr}
	ldr r1, _022305C4 ; =ov104_022305C8
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022305C4: .word ov104_022305C8
	thumb_func_end ov104_022305B8

	thumb_func_start ov104_022305C8
ov104_022305C8: ; 0x022305C8
	ldr r0, [r0, #0]
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _022305D6
	mov r0, #1
	bx lr
_022305D6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov104_022305C8

	thumb_func_start ov104_022305DC
ov104_022305DC: ; 0x022305DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r4, [r6, #0]
	ldr r0, [r4, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r6, #0
	bl ov104_0222EA60
	ldr r1, [r6, #0x1c]
	add r0, r1, r0
	str r0, [r6, #0x1c]
	str r1, [sp, #4]
	ldr r1, [r4, #0x34]
	mov r0, #0x97
	bl sub_02006C24
	add r7, r0, #0
_02230604:
	add r0, r6, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, _0223063C ; =0x0000FD13
	cmp r4, r0
	beq _0223062A
	str r4, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	ldr r3, [r5, #4]
	add r2, r7, #0
	bl ov104_0223D768
	add r0, r5, #0
	add r1, r4, #0
	bl ov104_0223D29C
	b _02230604
_0223062A:
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [sp, #4]
	str r0, [r6, #0x1c]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223063C: .word 0x0000FD13
	thumb_func_end ov104_022305DC

	thumb_func_start ov104_02230640
ov104_02230640: ; 0x02230640
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	add r1, r5, #0
	bl ov104_0223D7EC
	add r0, r4, #0
	add r1, r5, #0
	bl ov104_0223D2CC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230640

	thumb_func_start ov104_0223066C
ov104_0223066C: ; 0x0223066C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA60
	ldr r1, [r5, #0x1c]
	add r4, r5, #0
	add r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	add r4, #0x1c
_0223068E:
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	ldr r0, _02230704 ; =0x0000FD13
	cmp r7, r0
	beq _022306FA
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0x1c]
	add r2, r0, #1
	str r2, [r4, #0]
	ldrb r0, [r1]
	str r0, [sp, #8]
	add r0, r2, #1
	ldr r1, [r5, #0x1c]
	add r2, r7, #0
	str r0, [r4, #0]
	ldrb r0, [r1]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov104_0223D2FC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r7, r0, #0
	bl sub_0200D4C4
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200D3F4
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r6, #0
	bl ov104_0223D378
	b _0223068E
_022306FA:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230704: .word 0x0000FD13
	thumb_func_end ov104_0223066C

	thumb_func_start ov104_02230708
ov104_02230708: ; 0x02230708
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r1, r0, #0
	add r0, r5, #0
	bl ov104_0223D348
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230708

	thumb_func_start ov104_02230728
ov104_02230728: ; 0x02230728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	ldr r2, [r5, #0x1c]
	add r1, r0, #0
	add r0, r2, #1
	str r0, [r5, #0x1c]
	add r0, r4, #0
	ldrb r5, [r2]
	bl ov104_0223D370
	add r4, r0, #0
	bne _02230754
	bl GF_AssertFail
_02230754:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200D3F4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230728

	thumb_func_start ov104_02230760
ov104_02230760: ; 0x02230760
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r1, r0, #0
	add r0, r5, #0
	bl ov104_0223D370
	add r4, r0, #0
	bne _02230784
	bl GF_AssertFail
_02230784:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D7CC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230760

	thumb_func_start ov104_02230790
ov104_02230790: ; 0x02230790
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0223D370
	add r4, r0, #0
	bne _022307BE
	bl GF_AssertFail
_022307BE:
	cmp r5, #0
	ldr r0, [r4, #0]
	bne _022307CC
	mov r1, #0
	bl sub_0200D808
	b _022307D2
_022307CC:
	mov r1, #1
	bl sub_0200D808
_022307D2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02230790

	thumb_func_start ov104_022307D8
ov104_022307D8: ; 0x022307D8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ov104_0222FC00
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r1, r5, #0
	add r4, r0, #0
	bl ov104_0223D370
	add r1, r6, #0
	bl sub_0200D364
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov104_0223D378
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_022307D8

	thumb_func_start ov104_02230810
ov104_02230810: ; 0x02230810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r1, r4, #0
	mov r2, #0
	bl ov104_0223D378
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230810

	thumb_func_start ov104_02230830
ov104_02230830: ; 0x02230830
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222FC00
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _0223084C ; =ov104_02230850
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_0223084C: .word ov104_02230850
	thumb_func_end ov104_02230830

	thumb_func_start ov104_02230850
ov104_02230850: ; 0x02230850
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r1, r5, #0
	add r1, #0x78
	ldrh r1, [r1]
	add r4, r0, #0
	bl ov104_0223D370
	add r5, #0x78
	add r6, r0, #0
	ldrh r1, [r5]
	add r0, r4, #0
	bl ov104_0223D3A4
	cmp r0, #0
	beq _02230882
	add r0, r6, #0
	bl sub_0200D3B8
	cmp r0, #0
	bne _02230886
_02230882:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230886:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02230850

	thumb_func_start ov104_0223088C
ov104_0223088C: ; 0x0223088C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r2, #0
	ldr r7, [r6, #0]
	cmp r4, #7
	ble _0223089E
	bl GF_AssertFail
_0223089E:
	ldr r0, [r7, #0x34]
	lsl r1, r4, #1
	bl sub_02018144
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov104_0222FC00
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
_022308B4:
	add r0, r6, #0
	bl ov104_0222FC00
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _022308B4
	mov r0, #3
	str r0, [sp]
	ldr r0, [r7, #0]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	mov r2, #1
	bl ov104_0223D860
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223088C

	thumb_func_start ov104_022308E0
ov104_022308E0: ; 0x022308E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov104_0222FC00
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r3, r2, #0
	ldr r0, [r0, #0]
	bl ov104_0223D860
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov104_022308E0

	thumb_func_start ov104_02230900
ov104_02230900: ; 0x02230900
	push {r3, lr}
	mov r1, #1
	mov r2, #3
	bl ov104_0223088C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02230900

	thumb_func_start ov104_02230910
ov104_02230910: ; 0x02230910
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #4]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xb
	add r2, r1, #0
	mov r3, #8
	bl sub_0208712C
	add r2, r0, #0
	ldr r0, _02230948 ; =ov104_02230950
	ldr r1, _0223094C ; =0x020F2DAC
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r3, #0
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02230948: .word ov104_02230950
_0223094C: .word 0x020F2DAC
	thumb_func_end ov104_02230910

	thumb_func_start ov104_02230950
ov104_02230950: ; 0x02230950
	ldr r3, _02230954 ; =sub_0208716C
	bx r3
	; .align 2, 0
_02230954: .word sub_0208716C
	thumb_func_end ov104_02230950

	thumb_func_start ov104_02230958
ov104_02230958: ; 0x02230958
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202F1F8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230958

	thumb_func_start ov104_02230970
ov104_02230970: ; 0x02230970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #0]
	bl ov104_0222EA48
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp]
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r7, r0, #0
	ldr r0, _022309D4 ; =0x0000270F
	cmp r6, r0
	bls _0223099E
	add r6, r0, #0
_0223099E:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xb2
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov104_02230A2C
	add r1, r4, #0
	add r1, #0xb4
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0xb6
	strh r6, [r0]
	add r4, #0xb8
	ldr r1, _022309D8 ; =ov104_022309DC
	add r0, r5, #0
	str r7, [r4, #0]
	bl ov104_0222E974
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022309D4: .word 0x0000270F
_022309D8: .word ov104_022309DC
	thumb_func_end ov104_02230970

	thumb_func_start ov104_022309DC
ov104_022309DC: ; 0x022309DC
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0, #0]
	ldr r0, [r4, #0]
	bl sub_0209B970
	add r1, r4, #0
	add r1, #0xb0
	str r1, [sp]
	add r1, r4, #0
	add r1, #0xb2
	str r1, [sp, #4]
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xb4
	add r2, #0xb6
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldr r0, [r0, #8]
	mov r3, #0
	bl sub_0202F41C
	sub r1, r0, #2
	cmp r1, #1
	bhi _02230A24
	cmp r0, #2
	bne _02230A16
	mov r1, #1
	b _02230A18
_02230A16:
	mov r1, #0
_02230A18:
	add r4, #0xb8
	ldr r0, [r4, #0]
	add sp, #8
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
_02230A24:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_022309DC

	thumb_func_start ov104_02230A2C
ov104_02230A2C: ; 0x02230A2C
	push {r4, lr}
	mov r4, #0xf
	cmp r0, #6
	bhi _02230A6C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230A40: ; jump table
	.short _02230B4C - _02230A40 - 2 ; case 0
	.short _02230A4E - _02230A40 - 2 ; case 1
	.short _02230A7C - _02230A40 - 2 ; case 2
	.short _02230AA6 - _02230A40 - 2 ; case 3
	.short _02230AD0 - _02230A40 - 2 ; case 4
	.short _02230AFA - _02230A40 - 2 ; case 5
	.short _02230B24 - _02230A40 - 2 ; case 6
_02230A4E:
	cmp r1, #6
	bhi _02230A76
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230A5E: ; jump table
	.short _02230A6C - _02230A5E - 2 ; case 0
	.short _02230A6E - _02230A5E - 2 ; case 1
	.short _02230A72 - _02230A5E - 2 ; case 2
	.short _02230A72 - _02230A5E - 2 ; case 3
	.short _02230A74 - _02230A5E - 2 ; case 4
	.short _02230A74 - _02230A5E - 2 ; case 5
	.short _02230A72 - _02230A5E - 2 ; case 6
_02230A6C:
	b _02230B4C
_02230A6E:
	mov r4, #0x10
	b _02230B4C
_02230A72:
	mov r4, #0x11
_02230A74:
	b _02230B4C
_02230A76:
	bl GF_AssertFail
	b _02230B4C
_02230A7C:
	cmp r1, #3
	bhi _02230AA0
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230A8C: ; jump table
	.short _02230A94 - _02230A8C - 2 ; case 0
	.short _02230A98 - _02230A8C - 2 ; case 1
	.short _02230A9C - _02230A8C - 2 ; case 2
	.short _02230A9C - _02230A8C - 2 ; case 3
_02230A94:
	mov r4, #0x12
	b _02230B4C
_02230A98:
	mov r4, #0x13
	b _02230B4C
_02230A9C:
	mov r4, #0x14
	b _02230B4C
_02230AA0:
	bl GF_AssertFail
	b _02230B4C
_02230AA6:
	cmp r1, #3
	bhi _02230ACA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230AB6: ; jump table
	.short _02230ABE - _02230AB6 - 2 ; case 0
	.short _02230AC2 - _02230AB6 - 2 ; case 1
	.short _02230AC6 - _02230AB6 - 2 ; case 2
	.short _02230AC6 - _02230AB6 - 2 ; case 3
_02230ABE:
	mov r4, #0x15
	b _02230B4C
_02230AC2:
	mov r4, #0x16
	b _02230B4C
_02230AC6:
	mov r4, #0x17
	b _02230B4C
_02230ACA:
	bl GF_AssertFail
	b _02230B4C
_02230AD0:
	cmp r1, #3
	bhi _02230AF4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230AE0: ; jump table
	.short _02230AE8 - _02230AE0 - 2 ; case 0
	.short _02230AEC - _02230AE0 - 2 ; case 1
	.short _02230AF0 - _02230AE0 - 2 ; case 2
	.short _02230AF0 - _02230AE0 - 2 ; case 3
_02230AE8:
	mov r4, #0x1b
	b _02230B4C
_02230AEC:
	mov r4, #0x1c
	b _02230B4C
_02230AF0:
	mov r4, #0x1d
	b _02230B4C
_02230AF4:
	bl GF_AssertFail
	b _02230B4C
_02230AFA:
	cmp r1, #3
	bhi _02230B1E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230B0A: ; jump table
	.short _02230B12 - _02230B0A - 2 ; case 0
	.short _02230B16 - _02230B0A - 2 ; case 1
	.short _02230B1A - _02230B0A - 2 ; case 2
	.short _02230B1A - _02230B0A - 2 ; case 3
_02230B12:
	mov r4, #0x18
	b _02230B4C
_02230B16:
	mov r4, #0x19
	b _02230B4C
_02230B1A:
	mov r4, #0x1a
	b _02230B4C
_02230B1E:
	bl GF_AssertFail
	b _02230B4C
_02230B24:
	cmp r1, #3
	bhi _02230B48
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230B34: ; jump table
	.short _02230B3C - _02230B34 - 2 ; case 0
	.short _02230B40 - _02230B34 - 2 ; case 1
	.short _02230B44 - _02230B34 - 2 ; case 2
	.short _02230B44 - _02230B34 - 2 ; case 3
_02230B3C:
	mov r4, #0x1e
	b _02230B4C
_02230B40:
	mov r4, #0x1f
	b _02230B4C
_02230B44:
	mov r4, #0x20
	b _02230B4C
_02230B48:
	bl GF_AssertFail
_02230B4C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov104_02230A2C

	thumb_func_start ov104_02230B50
ov104_02230B50: ; 0x02230B50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	mov r1, #0x72
	add r4, r0, #0
	mov r0, #0xb
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x72
	mov r1, #0
	lsl r2, r2, #2
	add r6, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r1, #0xb
	add r2, sp, #4
	add r3, r6, #0
	bl sub_0202F298
	ldr r1, _02230BA8 ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, _02230BAC ; =0x020EA358
	ldr r0, [r0, #0]
	add r2, r6, #0
	mov r3, #1
	bl sub_0209B988
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02230BA8: .word 0x0000045F
_02230BAC: .word 0x020EA358
	thumb_func_end ov104_02230B50

	thumb_func_start ov104_02230BB0
ov104_02230BB0: ; 0x02230BB0
	push {r3, lr}
	bl sub_0202F22C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02230BB0

	thumb_func_start ov104_02230BBC
ov104_02230BBC: ; 0x02230BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0xb
	add r2, sp, #0
	mov r3, #0
	bl sub_0202F330
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230BBC

	thumb_func_start ov104_02230BE4
ov104_02230BE4: ; 0x02230BE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FBE4
	ldr r0, [r5, #8]
	bl sub_020246E0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230BE4

	thumb_func_start ov104_02230C04
ov104_02230C04: ; 0x02230C04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0]
	bl sub_0209B970
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	mov r0, #4
	bl sub_02017DE0
	ldr r0, [r4, #0x34]
	bl sub_02017E00
	ldr r0, [r6, #8]
	mov r1, #2
	bl sub_02024814
	ldr r1, _02230C38 ; =ov104_02230C3C
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02230C38: .word ov104_02230C3C
	thumb_func_end ov104_02230C04

	thumb_func_start ov104_02230C3C
ov104_02230C3C: ; 0x02230C3C
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_02024828
	cmp r0, #2
	bne _02230C5E
	bl sub_02017E2C
	mov r0, #4
	bl sub_02017DF0
	mov r0, #1
	pop {r3, pc}
_02230C5E:
	cmp r0, #3
	bne _02230C70
	bl sub_02017E2C
	mov r0, #4
	bl sub_02017DF0
	mov r0, #1
	pop {r3, pc}
_02230C70:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230C3C

	thumb_func_start ov104_02230C74
ov104_02230C74: ; 0x02230C74
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_02025340
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230C74

	thumb_func_start ov104_02230C88
ov104_02230C88: ; 0x02230C88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_020247C8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230C88

	thumb_func_start ov104_02230CAC
ov104_02230CAC: ; 0x02230CAC
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r1, _02230CC0 ; =0x000003E2
	add r0, r4, #0
	add r0, #0x64
	bl sub_0200E7FC
	str r0, [r4, #0x7c]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02230CC0: .word 0x000003E2
	thumb_func_end ov104_02230CAC

	thumb_func_start ov104_02230CC4
ov104_02230CC4: ; 0x02230CC4
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0200EBA0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02230CC4

	thumb_func_start ov104_02230CD4
ov104_02230CD4: ; 0x02230CD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B70C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230CD4

	thumb_func_start ov104_02230CF4
ov104_02230CF4: ; 0x02230CF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	add r6, r0, #0
	bl ov104_02230D28
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	add r2, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02230CF4

	thumb_func_start ov104_02230D28
ov104_02230D28: ; 0x02230D28
	push {r4, lr}
	mov r1, #0xa
	add r4, r0, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230D3A
	mov r0, #1
	pop {r4, pc}
_02230D3A:
	add r0, r4, #0
	mov r1, #0x64
	bl _u32_div_f
	cmp r0, #0
	bne _02230D4A
	mov r0, #2
	pop {r4, pc}
_02230D4A:
	mov r1, #0xfa
	add r0, r4, #0
	lsl r1, r1, #2
	bl _u32_div_f
	cmp r0, #0
	bne _02230D5C
	mov r0, #3
	pop {r4, pc}
_02230D5C:
	ldr r1, _02230DB0 ; =0x00002710
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230D6C
	mov r0, #4
	pop {r4, pc}
_02230D6C:
	ldr r1, _02230DB4 ; =0x000186A0
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230D7C
	mov r0, #5
	pop {r4, pc}
_02230D7C:
	ldr r1, _02230DB8 ; =0x000F4240
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230D8C
	mov r0, #6
	pop {r4, pc}
_02230D8C:
	ldr r1, _02230DBC ; =0x00989680
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230D9C
	mov r0, #7
	pop {r4, pc}
_02230D9C:
	ldr r1, _02230DC0 ; =0x05F5E100
	add r0, r4, #0
	bl _u32_div_f
	cmp r0, #0
	bne _02230DAC
	mov r0, #8
	pop {r4, pc}
_02230DAC:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02230DB0: .word 0x00002710
_02230DB4: .word 0x000186A0
_02230DB8: .word 0x000F4240
_02230DBC: .word 0x00989680
_02230DC0: .word 0x05F5E100
	thumb_func_end ov104_02230D28

	thumb_func_start ov104_02230DC4
ov104_02230DC4: ; 0x02230DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldr r0, [r0, #8]
	ldrb r4, [r2]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B498
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230DC4

	thumb_func_start ov104_02230DF0
ov104_02230DF0: ; 0x02230DF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r5, #0x1c]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r4, [r1]
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B498
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230DF0

	thumb_func_start ov104_02230E20
ov104_02230E20: ; 0x02230E20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B630
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230E20

	thumb_func_start ov104_02230E40
ov104_02230E40: ; 0x02230E40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	ldr r1, [r5, #0x1c]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r4, [r1]
	add r0, r7, #0
	mov r1, #0xb
	bl ov104_02230E90
	add r7, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0x44]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200B48C
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02230E40

	thumb_func_start ov104_02230E90
ov104_02230E90: ; 0x02230E90
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230E90

	thumb_func_start ov104_02230EB8
ov104_02230EB8: ; 0x02230EB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230EB8

	thumb_func_start ov104_02230ED8
ov104_02230ED8: ; 0x02230ED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r4, #0x1c]
	add r2, r0, #0
	add r0, r1, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	ldrb r1, [r1]
	ldr r0, [r0, #0x44]
	ldr r2, [r2, #8]
	bl sub_0200B4BC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02230ED8

	thumb_func_start ov104_02230EFC
ov104_02230EFC: ; 0x02230EFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230EFC

	thumb_func_start ov104_02230F28
ov104_02230F28: ; 0x02230F28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_0202440C
	add r1, r5, #0
	bl sub_0206D0C8
	ldr r0, [r4, #8]
	bl sub_0202CD88
	mov r1, #0x44
	add r2, r5, #0
	bl sub_0202CF70
	ldr r0, [r4, #8]
	bl sub_0202D750
	add r1, r5, #0
	mov r2, #5
	bl sub_0202D230
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230F28

	thumb_func_start ov104_02230F6C
ov104_02230F6C: ; 0x02230F6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_0202CD88
	mov r1, #0x45
	add r2, r5, #0
	bl sub_0202CF70
	ldr r0, [r4, #8]
	bl sub_0202D750
	add r1, r5, #0
	mov r2, #6
	bl sub_0202D230
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02230F6C

	thumb_func_start ov104_02230FA4
ov104_02230FA4: ; 0x02230FA4
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222FC00
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	ldr r1, _02230FC8 ; =ov104_02230FCC
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02230FC8: .word ov104_02230FCC
	thumb_func_end ov104_02230FA4

	thumb_func_start ov104_02230FCC
ov104_02230FCC: ; 0x02230FCC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E18
	cmp r0, #2
	bge _02230FDC
	mov r0, #1
	pop {r4, pc}
_02230FDC:
	add r4, #0x78
	ldrh r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02230FCC

	thumb_func_start ov104_02230FEC
ov104_02230FEC: ; 0x02230FEC
	push {r3, lr}
	bl sub_020365F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02230FEC

	thumb_func_start ov104_02230FF8
ov104_02230FF8: ; 0x02230FF8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205987C
	ldr r1, _0223100C ; =ov104_02231010
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223100C: .word ov104_02231010
	thumb_func_end ov104_02230FF8

	thumb_func_start ov104_02231010
ov104_02231010: ; 0x02231010
	push {r3, lr}
	bl sub_02036780
	cmp r0, #1
	beq _02231026
	bl sub_02033E1C
	cmp r0, #1
	beq _02231026
	mov r0, #1
	pop {r3, pc}
_02231026:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231010

	thumb_func_start ov104_0223102C
ov104_0223102C: ; 0x0223102C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r4, r0, #0
	bl sub_0201D2E8
	add r1, r4, #0
	bl _s32_div_f
	strh r1, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223102C

	thumb_func_start ov104_02231050
ov104_02231050: ; 0x02231050
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0207A268
	bl sub_02097284
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02231050

	thumb_func_start ov104_02231068
ov104_02231068: ; 0x02231068
	push {r3, lr}
	ldr r1, _02231074 ; =ov104_02231078
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02231074: .word ov104_02231078
	thumb_func_end ov104_02231068

	thumb_func_start ov104_02231078
ov104_02231078: ; 0x02231078
	ldr r0, _0223108C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02231086
	mov r0, #1
	bx lr
_02231086:
	mov r0, #0
	bx lr
	nop
_0223108C: .word 0x021BF67C
	thumb_func_end ov104_02231078

	thumb_func_start ov104_02231090
ov104_02231090: ; 0x02231090
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222FC00
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _022310AC ; =ov104_022310B0
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_022310AC: .word ov104_022310B0
	thumb_func_end ov104_02231090

	thumb_func_start ov104_022310B0
ov104_022310B0: ; 0x022310B0
	ldr r1, _022310DC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _022310BE
	mov r0, #1
	bx lr
_022310BE:
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #0x78
	strh r2, [r1]
	add r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _022310D8
	mov r0, #1
	bx lr
_022310D8:
	mov r0, #0
	bx lr
	; .align 2, 0
_022310DC: .word 0x021BF67C
	thumb_func_end ov104_022310B0

	thumb_func_start ov104_022310E0
ov104_022310E0: ; 0x022310E0
	push {r3, lr}
	bl ov104_0222FBE4
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022310E0

	thumb_func_start ov104_022310EC
ov104_022310EC: ; 0x022310EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_020507E4
	add r1, r6, #0
	bl sub_020508B8
	strh r4, [r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022310EC

	thumb_func_start ov104_02231118
ov104_02231118: ; 0x02231118
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_020507E4
	add r1, r6, #0
	bl sub_020508B8
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_02231118

	thumb_func_start ov104_02231148
ov104_02231148: ; 0x02231148
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223115A
	cmp r0, #1
	beq _02231176
	b _022311A8
_0223115A:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r4, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022311B6
_02231176:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022311B6
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x20
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022311B6
_022311A8:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022311B6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_022311B6:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov104_02231148

	thumb_func_start ov104_022311BC
ov104_022311BC: ; 0x022311BC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02231284
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022311D4: ; jump table
	.short _022311DC - _022311D4 - 2 ; case 0
	.short _022311F8 - _022311D4 - 2 ; case 1
	.short _02231252 - _022311D4 - 2 ; case 2
	.short _0223126A - _022311D4 - 2 ; case 3
_022311DC:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r4, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_022311F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022312D2
	mov r0, #0xb
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x28]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0201A7E8
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #2
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_020038B0
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x28]
	bl sub_0201A9A4
	mov r0, #0xb
	bl ov104_0223EBA0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02231252:
	mov r0, #0xf
	str r0, [sp]
	mov r1, #1
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x28]
	add r2, r1, #0
	bl ov104_0223EBF0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_0223126A:
	ldr r0, [r4, #0x2c]
	bl ov104_0223EC34
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0201A9A4
	cmp r5, #0
	beq _022312D2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_02231284:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022312D2
	ldr r0, [r4, #0x2c]
	bl ov104_0223EBD0
	ldr r0, [r4, #0x28]
	bl sub_0201ACF4
	ldr r0, [r4, #0x28]
	bl sub_0201A8FC
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xb
	bl sub_02019690
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, pc}
_022312D2:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_022311BC

	thumb_func_start ov104_022312D8
ov104_022312D8: ; 0x022312D8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _022313A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022312F0: ; jump table
	.short _022312F8 - _022312F0 - 2 ; case 0
	.short _02231314 - _022312F0 - 2 ; case 1
	.short _0223136E - _022312F0 - 2 ; case 2
	.short _02231386 - _022312F0 - 2 ; case 3
_022312F8:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r4, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_02231314:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022313EE
	mov r0, #0xb
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x28]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0201A7E8
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #2
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_020038B0
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x28]
	bl sub_0201A9A4
	mov r0, #0xb
	bl ov104_0223EBA0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0223136E:
	mov r0, #0xf
	str r0, [sp]
	mov r1, #1
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x28]
	add r2, r1, #0
	bl ov104_0223EBF0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_02231386:
	ldr r0, [r4, #0x2c]
	bl ov104_0223EE44
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0201A9A4
	cmp r5, #0
	beq _022313EE
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_022313A0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022313EE
	ldr r0, [r4, #0x2c]
	bl ov104_0223EBD0
	ldr r0, [r4, #0x28]
	bl sub_0201ACF4
	ldr r0, [r4, #0x28]
	bl sub_0201A8FC
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0201A928
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xb
	bl sub_02019690
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, pc}
_022313EE:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_022312D8

	thumb_func_start ov104_022313F4
ov104_022313F4: ; 0x022313F4
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end ov104_022313F4

	thumb_func_start ov104_022313FC
ov104_022313FC: ; 0x022313FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r7, [r4, #0x24]
	bl sub_02019FF0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_02019FF0
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_02019FF0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_02019FF0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _0223143E
	b _022315AE
_0223143E:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F27C
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	add r4, r7, #0
_02231450:
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldrsh r6, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _02231462
	b _02231586
_02231462:
	ldr r0, [sp, #0x24]
	lsl r1, r6, #5
	add r5, r0, r1
_02231468:
	mov r2, #1
	mov r0, #0
	lsl r2, r2, #0xc
	str r0, [sp]
	add r0, sp, #0x2c
	mov r1, #0
	add r3, r2, #0
	bl sub_0201D470
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	mov r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r1, r1, r2
	ldr r2, _0223171C ; =0x00000604
	lsl r1, r1, #0x10
	ldr r2, [r7, r2]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	cmp r2, #2
	bne _022314BC
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsr r2, r1, #0x1f
	lsl r3, r1, #0x18
	lsl r0, r0, #0x10
	sub r3, r3, r2
	mov r1, #0x18
	ror r3, r1
	add r1, r2, r3
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	b _022314E8
_022314BC:
	cmp r2, #1
	bne _022314E8
	cmp r0, #0
	bge _022314CE
	mov r2, #1
	lsl r2, r2, #8
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_022314CE:
	cmp r1, #0
	bge _022314D8
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_022314D8:
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_022314E8:
	str r0, [sp]
	mov r2, #0
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r3, r2, #0
	bl G2x_SetBGyAffine_
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	add r1, r1, r2
	ldr r2, _0223171C ; =0x00000604
	lsl r1, r1, #0x10
	ldr r2, [r7, r2]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	cmp r2, #2
	bne _0223153A
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsr r2, r1, #0x1f
	lsl r3, r1, #0x18
	lsl r0, r0, #0x10
	sub r3, r3, r2
	mov r1, #0x18
	ror r3, r1
	add r1, r2, r3
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	b _02231566
_0223153A:
	cmp r2, #1
	bne _02231566
	cmp r0, #0
	bge _0223154C
	mov r2, #1
	lsl r2, r2, #8
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0223154C:
	cmp r1, #0
	bge _02231556
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_02231556:
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_02231566:
	str r0, [sp]
	add r0, r5, #0
	mov r2, #0
	str r1, [sp, #4]
	add r0, #0x10
	add r1, sp, #0x2c
	add r3, r2, #0
	bl G2x_SetBGyAffine_
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r6, r6, #1
	add r5, #0x20
	cmp r6, r0
	bge _02231586
	b _02231468
_02231586:
	ldr r0, [sp, #0x28]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0x60
	bge _02231594
	b _02231450
_02231594:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F258
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	bl sub_0200DA58
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_022315AE:
	mov r0, #6
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F27C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	add r4, r7, #0
_022315C0:
	mov r0, #8
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #8]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0
	ldrsh r6, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _022315E6
	b _0223170A
_022315E6:
	ldr r0, [sp, #0x10]
	lsl r1, r6, #5
	add r5, r0, r1
_022315EC:
	mov r2, #1
	mov r0, #0
	lsl r2, r2, #0xc
	str r0, [sp]
	add r0, sp, #0x2c
	mov r1, #0
	add r3, r2, #0
	bl sub_0201D470
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	mov r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r1, r1, r2
	ldr r2, _0223171C ; =0x00000604
	lsl r1, r1, #0x10
	ldr r2, [r7, r2]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	cmp r2, #2
	bne _02231640
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsr r2, r1, #0x1f
	lsl r3, r1, #0x18
	lsl r0, r0, #0x10
	sub r3, r3, r2
	mov r1, #0x18
	ror r3, r1
	add r1, r2, r3
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	b _0223166C
_02231640:
	cmp r2, #1
	bne _0223166C
	cmp r0, #0
	bge _02231652
	mov r2, #1
	lsl r2, r2, #8
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_02231652:
	cmp r1, #0
	bge _0223165C
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_0223165C:
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0223166C:
	str r0, [sp]
	mov r2, #0
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x2c
	add r3, r2, #0
	bl G2x_SetBGyAffine_
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	add r1, r1, r2
	ldr r2, _0223171C ; =0x00000604
	lsl r1, r1, #0x10
	ldr r2, [r7, r2]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	cmp r2, #2
	bne _022316BE
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsr r2, r1, #0x1f
	lsl r3, r1, #0x18
	lsl r0, r0, #0x10
	sub r3, r3, r2
	mov r1, #0x18
	ror r3, r1
	add r1, r2, r3
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	b _022316EA
_022316BE:
	cmp r2, #1
	bne _022316EA
	cmp r0, #0
	bge _022316D0
	mov r2, #1
	lsl r2, r2, #8
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_022316D0:
	cmp r1, #0
	bge _022316DA
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_022316DA:
	lsr r2, r0, #0x1f
	lsl r3, r0, #0x18
	sub r3, r3, r2
	mov r0, #0x18
	ror r3, r0
	add r0, r2, r3
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_022316EA:
	str r0, [sp]
	add r0, r5, #0
	mov r2, #0
	str r1, [sp, #4]
	add r0, #0x10
	add r1, sp, #0x2c
	add r3, r2, #0
	bl G2x_SetBGyAffine_
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r6, r6, #1
	add r5, #0x20
	cmp r6, r0
	bge _0223170A
	b _022315EC
_0223170A:
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x60
	bge _02231718
	b _022315C0
_02231718:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223171C: .word 0x00000604
	thumb_func_end ov104_022313FC

	thumb_func_start ov104_02231720
ov104_02231720: ; 0x02231720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02231736
	cmp r0, #1
	beq _02231752
	cmp r0, #2
	beq _0223180C
	b _02231846
_02231736:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r5, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov104_0223E894
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_02231752:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223184C
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r1, _02231854 ; =0x00000608
	mov r0, #0x5e
	bl sub_02018144
	ldr r1, _02231858 ; =0x00000604
	str r0, [r5, #0x24]
	mov r2, #1
	str r2, [r0, r1]
	ldr r0, _0223185C ; =0x04000020
	add r1, sp, #4
	mov r2, #0x5e
	bl ov104_0223F1B4
	mov r7, #0
	mov r1, #6
	ldr r2, [r5, #0x24]
	lsl r1, r1, #8
	str r0, [r2, r1]
	add r6, r7, #0
	add r4, r7, #0
_0223178E:
	ldr r0, [r5, #0x24]
	strh r6, [r0, r4]
	ldr r1, [r5, #0x24]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	add r1, r1, #2
	strh r1, [r0, #2]
	mov r0, #0x31
	sub r2, r0, r7
	lsr r1, r2, #0x1f
	lsl r3, r2, #0x1d
	sub r3, r3, r1
	mov r0, #0x1d
	ror r3, r0
	add r0, r1, r3
	ldr r1, [r5, #0x24]
	add r1, r1, r4
	strh r0, [r1, #4]
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	asr r1, r0, #2
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #6]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #0xa]
	add r1, r0, #0
	bl ov104_022313F4
	ldr r1, [r5, #0x24]
	add r7, r7, #1
	add r1, r1, r4
	str r0, [r1, #0xc]
	add r6, r6, #2
	add r4, #0x10
	cmp r7, #0x60
	blt _0223178E
	mov r0, #1
	str r0, [sp]
	mov r0, #0x28
	add r1, r0, #0
	sub r1, #0x38
	mov r2, #0
	mov r3, #0x1e
	bl sub_0200AAE0
	mov r2, #1
	ldr r0, _02231860 ; =ov104_022313FC
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_0223180C:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223184C
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	ldr r0, [r5, #0]
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_02231846:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223184C:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02231854: .word 0x00000608
_02231858: .word 0x00000604
_0223185C: .word 0x04000020
_02231860: .word ov104_022313FC
	thumb_func_end ov104_02231720

	thumb_func_start ov104_02231864
ov104_02231864: ; 0x02231864
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0223187A
	cmp r0, #1
	beq _02231896
	cmp r0, #2
	beq _02231974
	b _022319AE
_0223187A:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	add r3, r5, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, #0xc
	bl ov104_0223E894
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_02231896:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0223189E
	b _022319B4
_0223189E:
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r1, _022319BC ; =0x00000608
	mov r0, #0x5e
	bl sub_02018144
	ldr r1, _022319C0 ; =0x00000604
	str r0, [r5, #0x24]
	mov r2, #2
	str r2, [r0, r1]
	ldr r0, _022319C4 ; =0x04000020
	add r1, sp, #4
	mov r2, #0x5e
	bl ov104_0223F1B4
	mov r6, #0
	mov r1, #6
	ldr r2, [r5, #0x24]
	lsl r1, r1, #8
	str r0, [r2, r1]
	add r7, r6, #0
	add r4, r6, #0
_022318D4:
	ldr r0, [r5, #0x24]
	lsr r2, r6, #0x1f
	strh r7, [r0, r4]
	ldr r1, [r5, #0x24]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	add r1, r1, #2
	strh r1, [r0, #2]
	mov r0, #0x30
	sub r1, r0, r6
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	add r1, r0, #1
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #4]
	lsl r1, r6, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _02231912
	ldr r0, [r5, #0x24]
	mov r1, #4
	add r0, r0, r4
	ldrsh r2, [r0, r1]
	sub r1, r1, #5
	mul r1, r2
	strh r1, [r0, #4]
_02231912:
	cmp r6, #0x30
	bge _0223191E
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r6, [r0, #6]
	b _02231928
_0223191E:
	mov r0, #0x60
	sub r1, r0, r6
	ldr r0, [r5, #0x24]
	add r0, r0, r4
	strh r1, [r0, #6]
_02231928:
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #0xa]
	add r1, r0, #0
	bl ov104_022313F4
	ldr r1, [r5, #0x24]
	add r6, r6, #1
	add r1, r1, r4
	str r0, [r1, #0xc]
	add r7, r7, #2
	add r4, #0x10
	cmp r6, #0x60
	blt _022318D4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x28
	add r1, r0, #0
	sub r1, #0x38
	mov r2, #0
	mov r3, #0x1c
	bl sub_0200AAE0
	mov r2, #1
	ldr r0, _022319C8 ; =ov104_022313FC
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_02231974:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _022319B4
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	ldr r0, [r5, #0]
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_022319AE:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022319B4:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022319BC: .word 0x00000608
_022319C0: .word 0x00000604
_022319C4: .word 0x04000020
_022319C8: .word ov104_022313FC
	thumb_func_end ov104_02231864

	thumb_func_start ov104_022319CC
ov104_022319CC: ; 0x022319CC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022319DE
	cmp r0, #1
	beq _022319F0
	b _02231A1A
_022319DE:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0x5e
	bl ov104_0223F094
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02231A1A
_022319F0:
	mov r0, #0x12
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _02231A20 ; =0x0400001C
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r3, _02231A24 ; =0x000002AA
	add r0, #0x18
	mov r2, #0xbf
	bl ov104_0223F0B0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02231A1A:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02231A20: .word 0x0400001C
_02231A24: .word 0x000002AA
	thumb_func_end ov104_022319CC

	thumb_func_start ov104_02231A28
ov104_02231A28: ; 0x02231A28
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r0, r5, #0
	bl ov104_0222FC00
	add r1, r5, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02231AA0 ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	bl ov104_0222E924
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_0209B980
	ldr r1, _02231AA4 ; =ov104_02231AA8
	add r0, r5, #0
	bl ov104_0222E974
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #2
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_020038B0
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231AA0: .word 0x0000045F
_02231AA4: .word ov104_02231AA8
	thumb_func_end ov104_02231A28

	thumb_func_start ov104_02231AA8
ov104_02231AA8: ; 0x02231AA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _02231AF0 ; =0x0223F65C
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	bne _02231AE4
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x14]
	ldr r0, [r0, #0]
	bl sub_0209B980
	add r0, r4, #0
	bl sub_020181C4
_02231AE4:
	cmp r6, #0
	bne _02231AEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02231AEC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231AF0: .word 0x0223F65C
	thumb_func_end ov104_02231AA8

	thumb_func_start ov104_02231AF4
ov104_02231AF4: ; 0x02231AF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_02025E38
	bl sub_02025F30
	cmp r0, #0
	bne _02231B18
	mov r0, #0
	b _02231B1A
_02231B18:
	mov r0, #0x61
_02231B1A:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231AF4

	thumb_func_start ov104_02231B20
ov104_02231B20: ; 0x02231B20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r3, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_0223D614
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02231B20

	thumb_func_start ov104_02231B54
ov104_02231B54: ; 0x02231B54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov104_0223D68C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231B54

	thumb_func_start ov104_02231B74
ov104_02231B74: ; 0x02231B74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl ov104_0223D6D0
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl sub_020146F4
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02231B74

	thumb_func_start ov104_02231BA8
ov104_02231BA8: ; 0x02231BA8
	push {r3, lr}
	ldr r1, _02231BB4 ; =ov104_02231BB8
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02231BB4: .word ov104_02231BB8
	thumb_func_end ov104_02231BA8

	thumb_func_start ov104_02231BB8
ov104_02231BB8: ; 0x02231BB8
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	ldr r0, [r0, #0x10]
	bl ov104_0223D6E4
	cmp r0, #1
	bne _02231BD0
	mov r0, #1
	pop {r3, pc}
_02231BD0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02231BB8

	thumb_func_start ov104_02231BD4
ov104_02231BD4: ; 0x02231BD4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r5, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r5, #0xa4
	cmp r0, #0
	beq _02231BF6
	bl GF_AssertFail
	ldr r0, [r5, #0]
	bl sub_0200DA58
_02231BF6:
	add r0, r4, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	str r0, [sp]
	add r0, r4, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strh r6, [r5, #4]
	ldr r0, [sp]
	strh r7, [r5, #6]
	strb r0, [r5, #9]
	ldr r0, _02231C3C ; =ov104_0223319C
	ldr r2, _02231C40 ; =0x00011170
	add r1, r5, #0
	strb r4, [r5, #0xa]
	bl sub_0200D9E8
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231C3C: .word ov104_0223319C
_02231C40: .word 0x00011170
	thumb_func_end ov104_02231BD4

	thumb_func_start ov104_02231C44
ov104_02231C44: ; 0x02231C44
	push {r3, lr}
	ldr r1, _02231C50 ; =ov104_02231C54
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02231C50: .word ov104_02231C54
	thumb_func_end ov104_02231C44

	thumb_func_start ov104_02231C54
ov104_02231C54: ; 0x02231C54
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02231C6A
	mov r0, #1
	pop {r3, pc}
_02231C6A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231C54

	thumb_func_start ov104_02231C70
ov104_02231C70: ; 0x02231C70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r4, #0xb0
	cmp r0, #0
	beq _02231C92
	bl GF_AssertFail
	ldr r0, [r4, #0]
	bl sub_0200DA58
_02231C92:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #4]
	add r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #6]
	add r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #7]
	add r0, r5, #0
	bl ov104_0222FC00
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #0xa]
	mov r2, #0x4b
	ldr r0, _02231CE0 ; =ov104_022331E8
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231CE0: .word ov104_022331E8
	thumb_func_end ov104_02231C70

	thumb_func_start ov104_02231CE4
ov104_02231CE4: ; 0x02231CE4
	push {r3, lr}
	ldr r1, _02231CF0 ; =ov104_02231CF4
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02231CF0: .word ov104_02231CF4
	thumb_func_end ov104_02231CE4

	thumb_func_start ov104_02231CF4
ov104_02231CF4: ; 0x02231CF4
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02231D0A
	mov r0, #1
	pop {r3, pc}
_02231D0A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231CF4

	thumb_func_start ov104_02231D10
ov104_02231D10: ; 0x02231D10
	push {r3, lr}
	bl ov104_0222EA48
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231D10

	thumb_func_start ov104_02231D1C
ov104_02231D1C: ; 0x02231D1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov104_0222EA48
	add r0, r5, #0
	bl ov104_0222EA48
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0207A268
	ldr r1, [sp, #0x18]
	bl sub_0207A0FC
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	mov r2, #0xb
	bl ov104_02232CE0
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02231D1C

	thumb_func_start ov104_02231D8C
ov104_02231D8C: ; 0x02231D8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r1, r0, #0
	add r0, r4, #0
	bl ov104_02232E80
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02231D8C

	thumb_func_start ov104_02231DAC
ov104_02231DAC: ; 0x02231DAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222EA48
	add r1, sp, #0x10
	add r6, r0, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0x10
	bl ov104_0223D554
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x78
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r1, [r4, #0]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	add r0, r6, #0
	bl ov104_0223DC7C
	ldr r1, _02231E0C ; =0x000004B2
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	ldr r1, _02231E10 ; =ov104_02231E14
	add r0, r5, #0
	bl ov104_0222E974
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02231E0C: .word 0x000004B2
_02231E10: .word ov104_02231E14
	thumb_func_end ov104_02231DAC

	thumb_func_start ov104_02231E14
ov104_02231E14: ; 0x02231E14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B974
	add r4, #0x78
	ldrh r0, [r4]
	cmp r0, #1
	bne _02231E2C
	mov r0, #1
	pop {r4, pc}
_02231E2C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02231E14

	thumb_func_start ov104_02231E30
ov104_02231E30: ; 0x02231E30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CF28
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02231E30

	thumb_func_start ov104_02231E54
ov104_02231E54: ; 0x02231E54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0202CD88
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CF70
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02231E54

	thumb_func_start ov104_02231E80
ov104_02231E80: ; 0x02231E80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222EA48
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02231E80

	thumb_func_start ov104_02231EA4
ov104_02231EA4: ; 0x02231EA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0205E6D8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02231EA4

	thumb_func_start ov104_02231EC4
ov104_02231EC4: ; 0x02231EC4
	push {r4, lr}
	bl ov104_0222FBE4
	add r4, r0, #0
	bl sub_0202FAC0
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02231EC4

	thumb_func_start ov104_02231ED8
ov104_02231ED8: ; 0x02231ED8
	push {r4, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0202B370
	add r4, r0, #0
	bl ov4_021D2388
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202B13C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02231ED8

	thumb_func_start ov104_02231EFC
ov104_02231EFC: ; 0x02231EFC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl sub_0202440C
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0222FC00
	add r4, r0, #0
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	lsl r1, r4, #0x18
	add r2, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0206D088
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231EFC

	thumb_func_start ov104_02231F34
ov104_02231F34: ; 0x02231F34
	push {r3, lr}
	bl ov104_0222FC00
	bl sub_0203632C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231F34

	thumb_func_start ov104_02231F44
ov104_02231F44: ; 0x02231F44
	push {r3, lr}
	ldr r2, [r0, #0x1c]
	ldr r3, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #0x1c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x60]
	bl ov104_0223327C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231F44

	thumb_func_start ov104_02231F5C
ov104_02231F5C: ; 0x02231F5C
	push {r3, lr}
	ldr r2, [r0, #0x1c]
	ldr r3, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #0x1c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x60]
	bl ov104_02233298
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02231F5C

	.rodata


	.global Unk_ov104_0223F63C
Unk_ov104_0223F63C: ; 0x0223F63C
	.incbin "incbin/overlay104_rodata.bin", 0x3AC, 0x3B0 - 0x3AC

	.global Unk_ov104_0223F640
Unk_ov104_0223F640: ; 0x0223F640
	.incbin "incbin/overlay104_rodata.bin", 0x3B0, 0x3B8 - 0x3B0

	.global Unk_ov104_0223F648
Unk_ov104_0223F648: ; 0x0223F648
	.incbin "incbin/overlay104_rodata.bin", 0x3B8, 0x3CC - 0x3B8

	.global Unk_ov104_0223F65C
Unk_ov104_0223F65C: ; 0x0223F65C
	.incbin "incbin/overlay104_rodata.bin", 0x3CC, 0x3E4 - 0x3CC

	.global Unk_ov104_0223F674
Unk_ov104_0223F674: ; 0x0223F674
	.incbin "incbin/overlay104_rodata.bin", 0x3E4, 0x330

