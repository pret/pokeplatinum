	.include "macros/function.inc"
	.include "overlay005/ov5_021ECC20.inc"

	

	.text


	thumb_func_start ov5_021ECC20
ov5_021ECC20: ; 0x021ECC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0206284C
	cmp r0, #0
	beq _021ECC3A
	bl GF_AssertFail
_021ECC3A:
	add r0, r5, #0
	bl ov5_021ECCA4
	add r0, r5, #0
	bl sub_02062824
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02062858
	sub r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0206285C
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #0x30]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	bl ov5_021ECE40
	add r0, r5, #0
	mov r1, #1
	bl sub_02062838
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021ECC20

	thumb_func_start ov5_021ECC78
ov5_021ECC78: ; 0x021ECC78
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062CA8
	cmp r0, #1
	beq _021ECC88
	bl GF_AssertFail
_021ECC88:
	add r0, r4, #0
	bl sub_0206285C
	bl ov5_021ECE94
	add r0, r4, #0
	mov r1, #1
	bl sub_02062840
	add r0, r4, #0
	bl ov5_021ECCBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECC78

	thumb_func_start ov5_021ECCA4
ov5_021ECCA4: ; 0x021ECCA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	mov r1, #4
	bl sub_02006C24
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206289C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECCA4

	thumb_func_start ov5_021ECCBC
ov5_021ECCBC: ; 0x021ECCBC
	push {r3, lr}
	bl sub_020628A0
	bl sub_02006CA8
	pop {r3, pc}
	thumb_func_end ov5_021ECCBC

	thumb_func_start ov5_021ECCC8
ov5_021ECCC8: ; 0x021ECCC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	mov r1, #4
	bl sub_0206284C
	cmp r0, #0
	bne _021ECD02
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _021ECD02
	add r0, r4, #0
	bl sub_02062DE8
	cmp r0, #0
	beq _021ECCFC
	add r0, r4, #0
	bl sub_02062F7C
	cmp r0, #0
	beq _021ECD02
_021ECCFC:
	add r0, r4, #0
	bl sub_02062B68
_021ECD02:
	pop {r4, pc}
	thumb_func_end ov5_021ECCC8

	thumb_func_start ov5_021ECD04
ov5_021ECD04: ; 0x021ECD04
	push {r3, lr}
	bl sub_02062920
	bl ov5_021ECD10
	pop {r3, pc}
	thumb_func_end ov5_021ECD04

	thumb_func_start ov5_021ECD10
ov5_021ECD10: ; 0x021ECD10
	push {r3, lr}
	ldr r3, _021ECD30 ; =0x021FC194
	ldr r1, _021ECD34 ; =0x0000FFFF
_021ECD16:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _021ECD20
	add r0, r3, #0
	pop {r3, pc}
_021ECD20:
	add r3, #8
	ldr r2, [r3, #0]
	cmp r2, r1
	bne _021ECD16
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021ECD30: .word 0x021FC194
_021ECD34: .word 0x0000FFFF
	thumb_func_end ov5_021ECD10

	thumb_func_start ov5_021ECD38
ov5_021ECD38: ; 0x021ECD38
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062DE8
	cmp r0, #1
	bne _021ECD52
	add r0, r4, #0
	bl sub_02062F7C
	cmp r0, #0
	bne _021ECD52
	mov r0, #1
	pop {r4, pc}
_021ECD52:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_020628D0
	cmp r0, #0
	beq _021ECD64
	mov r0, #1
	pop {r4, pc}
_021ECD64:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021ECD38

	thumb_func_start ov5_021ECD68
ov5_021ECD68: ; 0x021ECD68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_020628A0
	add r1, r4, #0
	add r6, r0, #0
	bl sub_02006D84
	add r1, r0, #0
	cmp r5, #1
	bne _021ECD88
	mov r0, #4
	bl sub_02018144
	b _021ECD8E
_021ECD88:
	mov r0, #4
	bl sub_02018184
_021ECD8E:
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02006D28
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECD68

	thumb_func_start ov5_021ECDA0
ov5_021ECDA0: ; 0x021ECDA0
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	add r1, sp, #0x24
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02063078
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0206309C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020630BC
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	ldr r3, [sp]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #0]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	ldr r3, [sp, #4]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	ldr r3, [sp, #8]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #8]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECDA0

	thumb_func_start ov5_021ECDFC
ov5_021ECDFC: ; 0x021ECDFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062974
	add r0, r4, #0
	bl sub_02062D4C
	cmp r0, #1
	bne _021ECE14
	add r0, r4, #0
	bl sub_02062B68
_021ECE14:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECDFC

	thumb_func_start ov5_021ECE18
ov5_021ECE18: ; 0x021ECE18
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_02062D64
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECE18

	thumb_func_start ov5_021ECE30
ov5_021ECE30: ; 0x021ECE30
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021ECE30

	thumb_func_start ov5_021ECE34
ov5_021ECE34: ; 0x021ECE34
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021ECE34

	thumb_func_start ov5_021ECE38
ov5_021ECE38: ; 0x021ECE38
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021ECE38

	thumb_func_start ov5_021ECE3C
ov5_021ECE3C: ; 0x021ECE3C
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021ECE3C