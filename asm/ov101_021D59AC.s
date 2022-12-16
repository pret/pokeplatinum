	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov101_021D59AC
ov101_021D59AC: ; 0x021D59AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	mov r4, #0
	add r0, sp, #8
	str r4, [r0, #0]
	str r4, [r0, #4]
	mov r6, #0x11
	lsl r6, r6, #0xe
	str r4, [r0, #8]
	str r7, [sp, #0x14]
	cmp r4, #3
	bge _021D59FE
_021D59C6:
	mov r5, #0
_021D59C8:
	str r6, [sp, #8]
	str r4, [sp, #0x1c]
	str r5, [sp, #0x18]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0x8b
	str r0, [sp, #4]
	ldr r0, _021D5A04 ; =0x0000044C
	ldr r1, _021D5A08 ; =0x021D91DC
	ldr r0, [r7, r0]
	add r2, sp, #8
	mov r3, #0
	bl sub_02071330
	mov r0, #2
	lsl r0, r0, #0x10
	add r5, r5, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	cmp r5, r0
	blt _021D59C8
	mov r0, #0xf
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r6, r6, r0
	cmp r4, #3
	blt _021D59C6
_021D59FE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5A04: .word 0x0000044C
_021D5A08: .word 0x021D91DC
	thumb_func_end ov101_021D59AC

	thumb_func_start ov101_021D5A0C
ov101_021D5A0C: ; 0x021D5A0C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0x1c
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0xc
	add r2, sp, #0x1c
	mov r3, #1
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5A0C

	thumb_func_start ov101_021D5A64
ov101_021D5A64: ; 0x021D5A64
	ldr r3, _021D5A6C ; =ov101_021D8544
	add r1, #0xc
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021D5A6C: .word ov101_021D8544
	thumb_func_end ov101_021D5A64

	thumb_func_start ov101_021D5A70
ov101_021D5A70: ; 0x021D5A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r7, [r5, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	lsl r6, r7, #2
	add r0, r0, r6
	add r0, #0x90
	ldr r1, [r5, #4]
	ldr r0, [r0, #0]
	add r0, r1, r0
	mov r1, #0xa
	lsl r1, r1, #0x10
	bl sub_020E1F6C
	add r4, r1, #0
	ldr r0, [sp]
	add r1, sp, #4
	bl sub_020715E4
	ldr r1, [r5, #0]
	mov r0, #1
	add r1, r1, r6
	add r1, #0x9c
	lsl r0, r0, #0x10
	ldr r1, [r1, #0]
	add r0, r4, r0
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	add r1, sp, #4
	bl sub_02021C50
	asr r2, r4, #0x10
	lsr r2, r2, #0xf
	add r2, r4, r2
	ldr r0, [r5, #0]
	add r1, r7, #0
	asr r2, r2, #0x11
	bl ov101_021D55A4
	lsl r1, r0, #2
	ldr r0, _021D5AE8 ; =0x021D927C
	ldr r4, [r0, r1]
	ldr r0, [r5, #0x10]
	bl sub_02021E24
	cmp r4, r0
	beq _021D5AE4
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_02021E50
_021D5AE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5AE8: .word 0x021D927C
	thumb_func_end ov101_021D5A70

	thumb_func_start ov101_021D5AEC
ov101_021D5AEC: ; 0x021D5AEC
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D5AEC

	thumb_func_start ov101_021D5AF0
ov101_021D5AF0: ; 0x021D5AF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021D5B34 ; =0x021D8ECC
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r4, #1
	str r0, [r2, #0]
	mov r7, #0x8d
_021D5B08:
	str r5, [sp]
	ldr r0, _021D5B38 ; =0x0000044C
	str r7, [sp, #4]
	ldr r0, [r5, r0]
	ldr r1, _021D5B3C ; =0x021D91F0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02071330
	mov r0, #0xa
	mul r4, r0
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r0, _021D5B40 ; =0x000186A0
	cmp r4, r0
	blo _021D5B08
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5B34: .word 0x021D8ECC
_021D5B38: .word 0x0000044C
_021D5B3C: .word 0x021D91F0
_021D5B40: .word 0x000186A0
	thumb_func_end ov101_021D5AF0

	thumb_func_start ov101_021D5B44
ov101_021D5B44: ; 0x021D5B44
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715B4
	mov r1, #0xa
	str r0, [r4, #4]
	mul r1, r0
	str r1, [r4, #8]
	add r0, r5, #0
	bl sub_020715BC
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0xc
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5B44

	thumb_func_start ov101_021D5B9C
ov101_021D5B9C: ; 0x021D5B9C
	ldr r3, _021D5BA4 ; =ov101_021D8544
	add r1, #0xc
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021D5BA4: .word ov101_021D8544
	thumb_func_end ov101_021D5B9C

	thumb_func_start ov101_021D5BA8
ov101_021D5BA8: ; 0x021D5BA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r0, #0x60]
	ldr r0, [r5, #4]
	cmp r0, #1
	bls _021D5BCA
	cmp r4, r0
	bhs _021D5BCA
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5BCA:
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020E2178
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_020E2178
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02021E24
	cmp r4, r0
	beq _021D5BFE
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x10]
	bl sub_02021DE0
_021D5BFE:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, _021D5C20 ; =0x021D937C
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	ldr r2, [sp]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D5C20: .word 0x021D937C
	thumb_func_end ov101_021D5BA8

	thumb_func_start ov101_021D5C24
ov101_021D5C24: ; 0x021D5C24
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D5C24

	thumb_func_start ov101_021D5C28
ov101_021D5C28: ; 0x021D5C28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021D5C6C ; =0x021D8F98
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r4, #1
	str r0, [r2, #0]
	mov r7, #0x8d
_021D5C40:
	str r5, [sp]
	ldr r0, _021D5C70 ; =0x0000044C
	str r7, [sp, #4]
	ldr r0, [r5, r0]
	ldr r1, _021D5C74 ; =0x021D9204
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02071330
	mov r0, #0xa
	mul r4, r0
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r0, _021D5C78 ; =0x000186A0
	cmp r4, r0
	blo _021D5C40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5C6C: .word 0x021D8F98
_021D5C70: .word 0x0000044C
_021D5C74: .word 0x021D9204
_021D5C78: .word 0x000186A0
	thumb_func_end ov101_021D5C28

	thumb_func_start ov101_021D5C7C
ov101_021D5C7C: ; 0x021D5C7C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715B4
	mov r1, #0xa
	str r0, [r4, #4]
	mul r1, r0
	str r1, [r4, #8]
	add r0, r5, #0
	bl sub_020715BC
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0xc
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5C7C

	thumb_func_start ov101_021D5CD4
ov101_021D5CD4: ; 0x021D5CD4
	ldr r3, _021D5CDC ; =ov101_021D8544
	add r1, #0xc
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021D5CDC: .word ov101_021D8544
	thumb_func_end ov101_021D5CD4

	thumb_func_start ov101_021D5CE0
ov101_021D5CE0: ; 0x021D5CE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r0, #0x64]
	ldr r0, [r5, #4]
	cmp r4, r0
	ldr r0, [r5, #0x10]
	bhs _021D5CFE
	mov r1, #0
	bl sub_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5CFE:
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020E2178
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_020E2178
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02021E24
	cmp r4, r0
	beq _021D5D30
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x10]
	bl sub_02021DE0
_021D5D30:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, _021D5D50 ; =0x021D9354
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	ldr r2, [sp]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D5D50: .word 0x021D9354
	thumb_func_end ov101_021D5CE0

	thumb_func_start ov101_021D5D54
ov101_021D5D54: ; 0x021D5D54
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D5D54

	thumb_func_start ov101_021D5D58
ov101_021D5D58: ; 0x021D5D58
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _021D5D84 ; =0x021D90AC
	add r5, sp, #8
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D5D88 ; =0x021D9218
	str r0, [r5, #0]
	str r4, [sp]
	mov r0, #0x86
	str r0, [sp, #4]
	ldr r0, _021D5D8C ; =0x0000044C
	ldr r0, [r4, r0]
	bl sub_02071330
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D5D84: .word 0x021D90AC
_021D5D88: .word 0x021D9218
_021D5D8C: .word 0x0000044C
	thumb_func_end ov101_021D5D58

	thumb_func_start ov101_021D5D90
ov101_021D5D90: ; 0x021D5D90
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	str r4, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x30]
	pop {r4, pc}
	thumb_func_end ov101_021D5D90

	thumb_func_start ov101_021D5DA4
ov101_021D5DA4: ; 0x021D5DA4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	cmp r4, #1
	ldr r0, [r0, #0x40]
	bne _021D5DBA
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
_021D5DBA:
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5DA4

	thumb_func_start ov101_021D5DC4
ov101_021D5DC4: ; 0x021D5DC4
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #8]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5DC4

	thumb_func_start ov101_021D5DD0
ov101_021D5DD0: ; 0x021D5DD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D5DD0

	thumb_func_start ov101_021D5DE8
ov101_021D5DE8: ; 0x021D5DE8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D5E00
	ldr r0, [r4, #0x38]
	bl ov101_021D63A4
	add r4, #0x3c
	add r0, r4, #0
	bl ov101_021D8544
_021D5E00:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5DE8

	thumb_func_start ov101_021D5E04
ov101_021D5E04: ; 0x021D5E04
	push {r3, r4, r5, lr}
	ldr r4, _021D5E20 ; =0x021D9294
	add r5, r1, #0
_021D5E0A:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #4]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D5E0A
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D5E20: .word 0x021D9294
	thumb_func_end ov101_021D5E04

	thumb_func_start ov101_021D5E24
ov101_021D5E24: ; 0x021D5E24
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D5E24

	thumb_func_start ov101_021D5E28
ov101_021D5E28: ; 0x021D5E28
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	bl ov101_021D630C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D5E28

	thumb_func_start ov101_021D5E3C
ov101_021D5E3C: ; 0x021D5E3C
	ldr r1, [r0, #0xc]
	cmp r1, #2
	bne _021D5E48
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_021D5E48:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D5E3C

	thumb_func_start ov101_021D5E4C
ov101_021D5E4C: ; 0x021D5E4C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _021D5E7C ; =0x021D90C4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x38]
	add r1, #0x3c
	bl ov101_021D6410
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D5E7C: .word 0x021D90C4
	thumb_func_end ov101_021D5E4C

	thumb_func_start ov101_021D5E80
ov101_021D5E80: ; 0x021D5E80
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D5E80

	thumb_func_start ov101_021D5E84
ov101_021D5E84: ; 0x021D5E84
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D5EE0 ; =0x021D9088
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D5EE4 ; =0x021D8FB0
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	bl sub_02021C70
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021C94
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _021D5EE8 ; =0x00000624
	bl sub_02005748
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D5EE0: .word 0x021D9088
_021D5EE4: .word 0x021D8FB0
_021D5EE8: .word 0x00000624
	thumb_func_end ov101_021D5E84

	thumb_func_start ov101_021D5EEC
ov101_021D5EEC: ; 0x021D5EEC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl ov101_021D8574
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x10]
	ldr r2, [sp]
	ldr r1, _021D5F50 ; =0x000001C7
	sub r2, r2, r1
	str r2, [sp]
	ldr r2, [sp, #4]
	sub r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	add r1, r1, #1
	str r1, [r4, #0x30]
	cmp r1, #9
	blo _021D5F3A
	mov r1, #0x16
	lsr r0, r0, #2
	lsl r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D5F3A:
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D5F50: .word 0x000001C7
	thumb_func_end ov101_021D5EEC

	thumb_func_start ov101_021D5F54
ov101_021D5F54: ; 0x021D5F54
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	cmp r1, #3
	blo _021D5F6C
	mov r1, #0
	str r1, [r0, #0x30]
	mov r1, #1
	str r1, [r0, #8]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_021D5F6C:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D5F54

	thumb_func_start ov101_021D5F70
ov101_021D5F70: ; 0x021D5F70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	bl sub_02021DE0
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x6d
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D5F70

	thumb_func_start ov101_021D5F9C
ov101_021D5F9C: ; 0x021D5F9C
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	cmp r1, #4
	blo _021D5FB4
	mov r1, #0
	str r1, [r0, #0x30]
	mov r1, #1
	str r1, [r0, #8]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_021D5FB4:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D5F9C

	thumb_func_start ov101_021D5FB8
ov101_021D5FB8: ; 0x021D5FB8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6018 ; =0x021D8FF8
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D601C ; =0x021D8F14
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r5, r2, #0
	str r0, [r3, #0]
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	add r3, #0x14
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl sub_02021C70
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021C94
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	bl sub_02021DE0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6018: .word 0x021D8FF8
_021D601C: .word 0x021D8F14
	thumb_func_end ov101_021D5FB8

	thumb_func_start ov101_021D6020
ov101_021D6020: ; 0x021D6020
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r5, _021D6080 ; =0x021D92B0
	add r4, r0, #0
	add r2, sp, #0
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	add r6, r4, #0
	add r6, #0x14
	stmia r2!, {r0, r1}
	add r5, sp, #0x20
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	ldr r1, [r4, #0x30]
	ldr r0, [sp, #0x24]
	lsr r1, r1, #1
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x40]
	add r1, r2, #0
	bl sub_02021C50
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0x10
	blo _021D607A
	mov r0, #0
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D607A:
	mov r0, #0
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D6080: .word 0x021D92B0
	thumb_func_end ov101_021D6020

	thumb_func_start ov101_021D6084
ov101_021D6084: ; 0x021D6084
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D60E4 ; =0x021D8EE4
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D60E8 ; =0x021D8FD4
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r5, r2, #0
	str r0, [r3, #0]
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	add r3, #0x14
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl sub_02021C70
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021C94
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	bl sub_02021DE0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D60E4: .word 0x021D8EE4
_021D60E8: .word 0x021D8FD4
	thumb_func_end ov101_021D6084

	thumb_func_start ov101_021D60EC
ov101_021D60EC: ; 0x021D60EC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl ov101_021D8574
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x10]
	ldr r2, [sp]
	ldr r1, _021D6154 ; =0x000001C7
	add r2, r2, r1
	str r2, [sp]
	ldr r2, [sp, #4]
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	add r1, r1, #1
	str r1, [r4, #0x30]
	cmp r1, #0xa
	blo _021D613E
	mov r1, #7
	lsr r0, r0, #2
	lsl r1, r1, #0x12
	str r1, [sp, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D613E:
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D6154: .word 0x000001C7
	thumb_func_end ov101_021D60EC

	thumb_func_start ov101_021D6158
ov101_021D6158: ; 0x021D6158
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021D61D8 ; =0x021D8F50
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D61DC ; =0x021D8EC0
	str r0, [r2, #0]
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r5, sp, #0
	mov r7, #0
	str r7, [r5, #0]
	str r0, [r2, #0]
	add r3, r6, #0
	str r7, [r5, #4]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	str r7, [r5, #8]
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	str r7, [r4, #0x30]
	str r7, [r4, #0x34]
	str r7, [r4, #0x2c]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r0, [r4, #0x40]
	add r1, r7, #0
	bl sub_02021C94
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	bl sub_02021DE0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D61D8: .word 0x021D8F50
_021D61DC: .word 0x021D8EC0
	thumb_func_end ov101_021D6158

	thumb_func_start ov101_021D61E0
ov101_021D61E0: ; 0x021D61E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	ldr r3, _021D627C ; =0x021D92D0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x40
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D6280 ; =0x021D92F0
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D6284 ; =0x021D9310
	add r2, sp, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x30]
	add r2, r0, #1
	str r2, [r4, #0x30]
	ldr r1, [r4, #0x34]
	lsl r0, r1, #2
	ldr r0, [r7, r0]
	cmp r2, r0
	blo _021D6260
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r0, #8
	blt _021D625C
	mov r0, #0
	str r0, [r4, #0x34]
_021D625C:
	mov r0, #0
	str r0, [r4, #0x30]
_021D6260:
	add r1, r4, #0
	ldr r0, [r4, #0x40]
	add r1, #0x14
	bl sub_02021C50
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x40]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D627C: .word 0x021D92D0
_021D6280: .word 0x021D92F0
_021D6284: .word 0x021D9310
	thumb_func_end ov101_021D61E0

	thumb_func_start ov101_021D6288
ov101_021D6288: ; 0x021D6288
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _021D6304 ; =0x021D8E9C
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6308 ; =0x021D8EFC
	str r0, [r2, #0]
	add r2, sp, #0xc
	add r3, r2, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r5, r4, #0
	str r0, [r2, #0]
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	add r6, r3, #0
	str r0, [r2, #8]
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r5, r4, #0
	ldmia r2!, {r0, r1}
	add r5, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	bl sub_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021C94
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	bl sub_02021DE0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021D6304: .word 0x021D8E9C
_021D6308: .word 0x021D8EFC
	thumb_func_end ov101_021D6288

	thumb_func_start ov101_021D630C
ov101_021D630C: ; 0x021D630C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, [r6, #0x38]
	cmp r5, #5
	blt _021D631C
	bl sub_02022974
_021D631C:
	mov r1, #2
	mov r2, #0x45
	ldr r7, _021D6394 ; =0x021D93D4
	lsl r3, r5, #4
	str r1, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0x18
	add r5, r7, r3
	ldr r2, [r4, r2]
	ldr r3, [r7, r3]
	bl ov101_021D80E4
	mov r1, #2
	mov r2, #0x45
	str r1, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r5, #4]
	bl ov101_021D81B4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	mov r3, #2
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #0xc]
	mov r3, #2
	bl ov101_021D82F0
	ldr r0, _021D6398 ; =ov101_021D63BC
	ldr r2, _021D639C ; =0x00000101
	add r1, r6, #0
	bl sub_0200DA04
	cmp r0, #0
	bne _021D6380
	bl sub_02022974
_021D6380:
	ldr r0, _021D63A0 ; =ov101_021D63E8
	ldr r2, _021D639C ; =0x00000101
	add r1, r6, #0
	bl sub_0200DA3C
	cmp r0, #0
	bne _021D6392
	bl sub_02022974
_021D6392:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6394: .word 0x021D93D4
_021D6398: .word ov101_021D63BC
_021D639C: .word 0x00000101
_021D63A0: .word ov101_021D63E8
	thumb_func_end ov101_021D630C

	thumb_func_start ov101_021D63A4
ov101_021D63A4: ; 0x021D63A4
	push {r3, lr}
	mov r1, #2
	mov r2, #0x45
	str r1, [sp]
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D63A4

	thumb_func_start ov101_021D63BC
ov101_021D63BC: ; 0x021D63BC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x45
	ldr r4, [r5, #0x38]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov101_021D8220
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D63BC

	thumb_func_start ov101_021D63E8
ov101_021D63E8: ; 0x021D63E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x38]
	cmp r0, #1
	bne _021D640C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	bl ov101_021D8254
	mov r0, #2
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0200DA58
_021D640C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D63E8

	thumb_func_start ov101_021D6410
ov101_021D6410: ; 0x021D6410
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r6, _021D6480 ; =0x021D9100
	str r0, [r1, #8]
	ldmia r6!, {r0, r1}
	add r3, sp, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov101_021D84A4
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r4, #4]
	add r1, sp, #0x28
	bl sub_02021C60
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021C94
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CC8
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D6480: .word 0x021D9100
	thumb_func_end ov101_021D6410

	thumb_func_start ov101_021D6484
ov101_021D6484: ; 0x021D6484
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D64B0 ; =0x021D8F8C
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D64B4 ; =0x021D9150
	str r0, [r4, #0]
	str r3, [sp]
	mov r0, #0x87
	str r0, [sp, #4]
	ldr r0, _021D64B8 ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D64B0: .word 0x021D8F8C
_021D64B4: .word 0x021D9150
_021D64B8: .word 0x0000044C
	thumb_func_end ov101_021D6484

	thumb_func_start ov101_021D64BC
ov101_021D64BC: ; 0x021D64BC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov101_021D65F4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D64BC

	thumb_func_start ov101_021D64D0
ov101_021D64D0: ; 0x021D64D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D64F8
	mov r1, #3
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r4, #0x10]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
	add r4, #0x14
	add r0, r4, #0
	bl ov101_021D8544
_021D64F8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov101_021D64D0

	thumb_func_start ov101_021D64FC
ov101_021D64FC: ; 0x021D64FC
	push {r4, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _021D6598
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D6514: ; jump table
	.short _021D651C - _021D6514 - 2 ; case 0
	.short _021D655E - _021D6514 - 2 ; case 1
	.short _021D6576 - _021D6514 - 2 ; case 2
	.short _021D6598 - _021D6514 - 2 ; case 3
_021D651C:
	ldr r1, [r4, #0xc]
	cmp r1, #2
	bne _021D6598
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0x10]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x14
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D655E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xf
	blo _021D6598
	ldr r0, [r4, #0]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D6576:
	mov r1, #3
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r4, #0x10]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
	add r0, r4, #0
	add r0, #0x14
	bl ov101_021D8544
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D6598:
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end ov101_021D64FC

	thumb_func_start ov101_021D659C
ov101_021D659C: ; 0x021D659C
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D659C

	thumb_func_start ov101_021D65A0
ov101_021D65A0: ; 0x021D65A0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x45
	ldr r4, [r5, #0x10]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov101_021D8220
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D65A0

	thumb_func_start ov101_021D65CC
ov101_021D65CC: ; 0x021D65CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	cmp r0, #1
	bne _021D65F0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #3
	bl ov101_021D8254
	mov r0, #2
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0200DA58
_021D65F0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D65CC

	thumb_func_start ov101_021D65F4
ov101_021D65F4: ; 0x021D65F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x45
	ldr r4, [r5, #0x10]
	mov r0, #3
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x2c
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #3
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x2f
	bl ov101_021D81B4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x2d
	mov r3, #3
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x2e
	mov r3, #3
	bl ov101_021D82F0
	ldr r0, _021D6670 ; =ov101_021D65A0
	ldr r2, _021D6674 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA04
	cmp r0, #0
	bne _021D665C
	bl sub_02022974
_021D665C:
	ldr r0, _021D6678 ; =ov101_021D65CC
	ldr r2, _021D6674 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA3C
	cmp r0, #0
	bne _021D666E
	bl sub_02022974
_021D666E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6670: .word ov101_021D65A0
_021D6674: .word 0x00000101
_021D6678: .word ov101_021D65CC
	thumb_func_end ov101_021D65F4

	thumb_func_start ov101_021D667C
ov101_021D667C: ; 0x021D667C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x45
	ldr r4, [r5, #0x20]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov101_021D8220
	mov r0, #1
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D667C

	thumb_func_start ov101_021D66A8
ov101_021D66A8: ; 0x021D66A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x20]
	cmp r0, #1
	bne _021D66CC
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov101_021D8254
	mov r0, #2
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
_021D66CC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D66A8

	thumb_func_start ov101_021D66D0
ov101_021D66D0: ; 0x021D66D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x18]
	mov r2, #0x45
	lsl r3, r0, #4
	ldr r7, _021D6754 ; =0x021D93A4
	ldr r4, [r6, #0x20]
	mov r0, #4
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	add r5, r7, r3
	ldr r2, [r4, r2]
	ldr r3, [r7, r3]
	mov r1, #2
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #4
	str r0, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r5, #4]
	mov r1, #2
	bl ov101_021D81B4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	mov r3, #4
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #0xc]
	mov r3, #4
	bl ov101_021D82F0
	ldr r0, _021D6758 ; =ov101_021D667C
	ldr r2, _021D675C ; =0x00000101
	add r1, r6, #0
	bl sub_0200DA04
	cmp r0, #0
	bne _021D6740
	bl sub_02022974
_021D6740:
	ldr r0, _021D6760 ; =ov101_021D66A8
	ldr r2, _021D675C ; =0x00000101
	add r1, r6, #0
	bl sub_0200DA3C
	cmp r0, #0
	bne _021D6752
	bl sub_02022974
_021D6752:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6754: .word 0x021D93A4
_021D6758: .word ov101_021D667C
_021D675C: .word 0x00000101
_021D6760: .word ov101_021D66A8
	thumb_func_end ov101_021D66D0

	thumb_func_start ov101_021D6764
ov101_021D6764: ; 0x021D6764
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _021D6790 ; =0x021D90DC
	add r5, sp, #8
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D6794 ; =0x021D9164
	str r0, [r5, #0]
	str r4, [sp]
	mov r0, #0x89
	str r0, [sp, #4]
	ldr r0, _021D6798 ; =0x0000044C
	ldr r0, [r4, r0]
	bl sub_02071330
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D6790: .word 0x021D90DC
_021D6794: .word 0x021D9164
_021D6798: .word 0x0000044C
	thumb_func_end ov101_021D6764

	thumb_func_start ov101_021D679C
ov101_021D679C: ; 0x021D679C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov101_021D679C

	thumb_func_start ov101_021D67B0
ov101_021D67B0: ; 0x021D67B0
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D67B0

	thumb_func_start ov101_021D67BC
ov101_021D67BC: ; 0x021D67BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov101_021D66D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D67BC

	thumb_func_start ov101_021D67DC
ov101_021D67DC: ; 0x021D67DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D6804
	mov r1, #4
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r4, #0x20]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
	add r4, #0x24
	add r0, r4, #0
	bl ov101_021D8544
_021D6804:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov101_021D67DC

	thumb_func_start ov101_021D6808
ov101_021D6808: ; 0x021D6808
	push {r3, r4, r5, lr}
	ldr r4, _021D6824 ; =0x021D9330
	add r5, r1, #0
_021D680E:
	ldr r1, [r5, #4]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #8]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D680E
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6824: .word 0x021D9330
	thumb_func_end ov101_021D6808

	thumb_func_start ov101_021D6828
ov101_021D6828: ; 0x021D6828
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D6828

	thumb_func_start ov101_021D682C
ov101_021D682C: ; 0x021D682C
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021D689E
	ldr r5, _021D68A4 ; =0x021D8F74
	add r3, sp, #0x28
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, sp, #0x1c
	str r0, [r3, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0x20]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x24
	bl ov101_021D84A4
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r4, #0x28]
	add r1, sp, #0x1c
	bl sub_02021C60
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02021C94
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_021D689E:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
_021D68A4: .word 0x021D8F74
	thumb_func_end ov101_021D682C

	thumb_func_start ov101_021D68A8
ov101_021D68A8: ; 0x021D68A8
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D68A8

	thumb_func_start ov101_021D68AC
ov101_021D68AC: ; 0x021D68AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6900 ; =0x021D90A0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6904 ; =0x021D9094
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6900: .word 0x021D90A0
_021D6904: .word 0x021D9094
	thumb_func_end ov101_021D68AC

	thumb_func_start ov101_021D6908
ov101_021D6908: ; 0x021D6908
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov101_021D8574
	ldr r0, [sp]
	add r0, #0xc0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x10
	blt _021D6952
	mov r0, #5
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [r4, #0x14]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x23
	bl sub_02005844
_021D6952:
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov101_021D6908

	thumb_func_start ov101_021D6968
ov101_021D6968: ; 0x021D6968
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #9
	blt _021D698E
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
_021D698E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D6968

	thumb_func_start ov101_021D6994
ov101_021D6994: ; 0x021D6994
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D69F0 ; =0x021D907C
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D69F4 ; =0x021D9070
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, _021D69F8 ; =0x000006D1
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D69F0: .word 0x021D907C
_021D69F4: .word 0x021D9070
_021D69F8: .word 0x000006D1
	thumb_func_end ov101_021D6994

	thumb_func_start ov101_021D69FC
ov101_021D69FC: ; 0x021D69FC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov101_021D8574
	mov r0, #6
	ldr r1, [sp]
	lsl r0, r0, #6
	sub r1, r1, r0
	str r1, [sp]
	ldr r1, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #8
	blt _021D6A48
	mov r0, #0x1d
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
_021D6A48:
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D69FC

	thumb_func_start ov101_021D6A60
ov101_021D6A60: ; 0x021D6A60
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6AC0 ; =0x021D9058
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6AC4 ; =0x021D904C
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6AC0: .word 0x021D9058
_021D6AC4: .word 0x021D904C
	thumb_func_end ov101_021D6A60

	thumb_func_start ov101_021D6AC8
ov101_021D6AC8: ; 0x021D6AC8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6B34 ; =0x021D9004
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6B38 ; =0x021D8F80
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #2
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xa
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	bl sub_02021E24
	cmp r0, #2
	beq _021D6B22
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
_021D6B22:
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6B34: .word 0x021D9004
_021D6B38: .word 0x021D8F80
	thumb_func_end ov101_021D6AC8

	thumb_func_start ov101_021D6B3C
ov101_021D6B3C: ; 0x021D6B3C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6B9C ; =0x021D8F20
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6BA0 ; =0x021D90F4
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6B9C: .word 0x021D8F20
_021D6BA0: .word 0x021D90F4
	thumb_func_end ov101_021D6B3C

	thumb_func_start ov101_021D6BA4
ov101_021D6BA4: ; 0x021D6BA4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6C04 ; =0x021D8F2C
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6C08 ; =0x021D8FE0
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6C04: .word 0x021D8F2C
_021D6C08: .word 0x021D8FE0
	thumb_func_end ov101_021D6BA4

	thumb_func_start ov101_021D6C0C
ov101_021D6C0C: ; 0x021D6C0C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6C6C ; =0x021D8FBC
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6C70 ; =0x021D8FC8
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6C6C: .word 0x021D8FBC
_021D6C70: .word 0x021D8FC8
	thumb_func_end ov101_021D6C0C

	thumb_func_start ov101_021D6C74
ov101_021D6C74: ; 0x021D6C74
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6CD8 ; =0x021D901C
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r5, _021D6CDC ; =0x021D8EA8
	str r0, [r2, #0]
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x28]
	bl sub_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_02021D6C
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
	mov r0, #0
	str r0, [r4, #0x14]
	mov r1, #1
	str r1, [r4, #0xc]
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6CD8: .word 0x021D901C
_021D6CDC: .word 0x021D8EA8
	thumb_func_end ov101_021D6C74

	thumb_func_start ov101_021D6CE0
ov101_021D6CE0: ; 0x021D6CE0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x28]
	bl sub_02021FD0
	cmp r0, #0
	bne _021D6D0C
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #8
	blt _021D6D0C
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	bl sub_02021DE0
_021D6D0C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D6CE0

	thumb_func_start ov101_021D6D10
ov101_021D6D10: ; 0x021D6D10
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x45
	ldr r4, [r5, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov101_021D814C
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov101_021D8220
	mov r0, #1
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D6D10

	thumb_func_start ov101_021D6D3C
ov101_021D6D3C: ; 0x021D6D3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x2c]
	add r5, r0, #0
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D6D64
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #5
	bl ov101_021D8254
	mov r0, #2
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
_021D6D64:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D6D3C

	thumb_func_start ov101_021D6D68
ov101_021D6D68: ; 0x021D6D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x45
	ldr r4, [r5, #0x2c]
	mov r0, #5
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x38
	bl ov101_021D80E4
	mov r2, #0x45
	mov r0, #5
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #2
	mov r3, #0x3b
	bl ov101_021D81B4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x39
	mov r3, #5
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x3a
	mov r3, #5
	bl ov101_021D82F0
	ldr r0, _021D6DE4 ; =ov101_021D6D10
	ldr r2, _021D6DE8 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA04
	cmp r0, #0
	bne _021D6DD0
	bl sub_02022974
_021D6DD0:
	ldr r0, _021D6DEC ; =ov101_021D6D3C
	ldr r2, _021D6DE8 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA3C
	cmp r0, #0
	bne _021D6DE2
	bl sub_02022974
_021D6DE2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6DE4: .word ov101_021D6D10
_021D6DE8: .word 0x00000101
_021D6DEC: .word ov101_021D6D3C
	thumb_func_end ov101_021D6D68

	thumb_func_start ov101_021D6DF0
ov101_021D6DF0: ; 0x021D6DF0
	push {lr}
	sub sp, #0x14
	add r2, sp, #8
	mov r3, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r0, [sp]
	mov r1, #0x88
	str r1, [sp, #4]
	ldr r1, _021D6E14 ; =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D6E18 ; =0x021D9178
	bl sub_02071330
	add sp, #0x14
	pop {pc}
	nop
_021D6E14: .word 0x0000044C
_021D6E18: .word 0x021D9178
	thumb_func_end ov101_021D6DF0

	thumb_func_start ov101_021D6E1C
ov101_021D6E1C: ; 0x021D6E1C
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D6E1C

	thumb_func_start ov101_021D6E28
ov101_021D6E28: ; 0x021D6E28
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov101_021D6D68
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D6E28

	thumb_func_start ov101_021D6E3C
ov101_021D6E3C: ; 0x021D6E3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D6E72
	mov r1, #5
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r4, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
	add r0, r4, #0
	add r0, #0x30
	bl ov101_021D8544
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D6E72
	add r4, #0x3c
	add r0, r4, #0
	bl ov101_021D8544
_021D6E72:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D6E3C

	thumb_func_start ov101_021D6E78
ov101_021D6E78: ; 0x021D6E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r1, sp, #0xc
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020715E4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020715D4
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021D6EAE
	ldr r0, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp]
	b _021D6EB4
_021D6EAE:
	ldr r0, [sp, #0xc]
	sub r0, r5, r0
	str r0, [sp]
_021D6EB4:
	ldr r0, [sp, #0x10]
	add r1, sp, #0
	sub r0, r4, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	bl sub_02021C50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D6E78

	thumb_func_start ov101_021D6EC8
ov101_021D6EC8: ; 0x021D6EC8
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r0, #0
	cmp r1, #0xa
	bls _021D6ED8
	b _021D7210
_021D6ED8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D6EE4: ; jump table
	.short _021D6EFA - _021D6EE4 - 2 ; case 0
	.short _021D6F6C - _021D6EE4 - 2 ; case 1
	.short _021D6FF4 - _021D6EE4 - 2 ; case 2
	.short _021D7008 - _021D6EE4 - 2 ; case 3
	.short _021D703A - _021D6EE4 - 2 ; case 4
	.short _021D706C - _021D6EE4 - 2 ; case 5
	.short _021D709E - _021D6EE4 - 2 ; case 6
	.short _021D70E6 - _021D6EE4 - 2 ; case 7
	.short _021D70FC - _021D6EE4 - 2 ; case 8
	.short _021D7148 - _021D6EE4 - 2 ; case 9
	.short _021D71A8 - _021D6EE4 - 2 ; case 10
_021D6EFA:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021D6F02
	b _021D7210
_021D6F02:
	ldr r5, _021D7214 ; =0x021D90D0
	add r3, sp, #0x34
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x30
	bl ov101_021D84A4
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x3c
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021D0C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D6F6C:
	add r0, r6, #0
	add r1, sp, #0x28
	mov r5, #0
	bl sub_020715E4
	mov r1, #2
	ldr r2, [sp, #0x2c]
	lsl r1, r1, #0xe
	ldr r0, [sp, #0x28]
	add r2, r2, r1
	add r0, r0, r1
	str r2, [sp, #0x2c]
	lsl r2, r1, #3
	str r0, [sp, #0x28]
	cmp r0, r2
	blt _021D6F92
	add r0, r2, #0
	str r0, [sp, #0x28]
	add r5, r5, #1
_021D6F92:
	mov r0, #0xe
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _021D6FA4
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0x2c]
	add r5, r5, #1
_021D6FA4:
	add r0, r6, #0
	add r1, sp, #0x28
	bl sub_020715D4
	mov r0, #2
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0x69
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xe
	sub r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x34]
	add r1, sp, #0x1c
	bl sub_02021C50
	mov r0, #0x12
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	sub r0, r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0x69
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xe
	sub r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x40]
	add r1, sp, #0x1c
	bl sub_02021C50
	cmp r5, #2
	beq _021D6FEA
	b _021D7210
_021D6FEA:
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D6FF4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blo _021D70F0
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D7008:
	ldr r3, _021D7218 ; =0xFFFFC000
	mov r2, #0x69
	str r3, [sp]
	ldr r0, [r4, #0x34]
	lsl r1, r3, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r2, r2, #0xe
	asr r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D703A:
	mov r3, #1
	lsl r3, r3, #0xe
	str r3, [sp]
	ldr r1, [r4, #0x34]
	mov r2, #0x69
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021D721C ; =0xFFFE0000
	lsl r2, r2, #0xe
	lsr r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D706C:
	ldr r3, _021D7218 ; =0xFFFFC000
	mov r2, #0x69
	str r3, [sp]
	ldr r1, [r4, #0x40]
	lsl r2, r2, #0xe
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #0x10
	asr r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D709E:
	mov r1, #1
	lsl r1, r1, #0xe
	str r1, [sp]
	ldr r1, [r4, #0x40]
	mov r2, #0x69
	str r1, [sp, #4]
	mov r3, #1
	mov r1, #0x12
	str r3, [sp, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	lsl r3, r3, #0xd
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #2
	bhs _021D70DA
	mov r0, #3
	add sp, #0x40
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D70DA:
	str r1, [r4, #0xc]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D70E6:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	bhs _021D70F2
_021D70F0:
	b _021D7210
_021D70F2:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D70FC:
	ldr r3, _021D7218 ; =0xFFFFC000
	mov r2, #0x69
	str r3, [sp]
	ldr r0, [r4, #0x34]
	lsl r1, r3, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r2, r2, #0xe
	asr r3, r3, #1
	bl ov101_021D6E78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	mov r1, #0x12
	str r0, [sp, #4]
	mov r0, #1
	mov r2, #0x69
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7210
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D7148:
	mov r3, #1
	lsl r3, r3, #0xe
	str r3, [sp]
	ldr r1, [r4, #0x34]
	mov r2, #0x69
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021D721C ; =0xFFFE0000
	lsl r2, r2, #0xe
	lsr r3, r3, #1
	bl ov101_021D6E78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	mov r1, #0x12
	str r0, [sp, #4]
	mov r0, #1
	mov r2, #0x69
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7210
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #2
	bhs _021D719C
	mov r0, #8
	add sp, #0x40
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D719C:
	str r1, [r4, #0xc]
	ldr r0, [r4, #0]
	add sp, #0x40
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D71A8:
	ldr r3, _021D7220 ; =0xFFFF8000
	mov r2, #0x69
	str r3, [sp]
	ldr r1, [r4, #0x34]
	lsl r2, r2, #0xe
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	lsl r1, r3, #2
	bl ov101_021D6E78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	mov r1, #0x12
	str r0, [sp, #4]
	mov r0, #1
	mov r2, #0x69
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7206
	add r0, r4, #0
	add r0, #0x30
	bl ov101_021D8544
	add r0, r4, #0
	add r0, #0x3c
	bl ov101_021D8544
	mov r1, #5
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r4, #0x2c]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov101_021D8358
_021D7206:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
_021D7210:
	add sp, #0x40
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D7214: .word 0x021D90D0
_021D7218: .word 0xFFFFC000
_021D721C: .word 0xFFFE0000
_021D7220: .word 0xFFFF8000
	thumb_func_end ov101_021D6EC8

	thumb_func_start ov101_021D7224
ov101_021D7224: ; 0x021D7224
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D7224

	thumb_func_start ov101_021D7228
ov101_021D7228: ; 0x021D7228
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D7254 ; =0x021D8F5C
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D7258 ; =0x021D918C
	str r0, [r4, #0]
	str r3, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D725C ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D7254: .word 0x021D8F5C
_021D7258: .word 0x021D918C
_021D725C: .word 0x0000044C
	thumb_func_end ov101_021D7228

	thumb_func_start ov101_021D7260
ov101_021D7260: ; 0x021D7260
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #4
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7260

	thumb_func_start ov101_021D72AC
ov101_021D72AC: ; 0x021D72AC
	ldr r3, _021D72B4 ; =ov101_021D8544
	add r0, r1, #4
	bx r3
	nop
_021D72B4: .word ov101_021D8544
	thumb_func_end ov101_021D72AC

	thumb_func_start ov101_021D72B8
ov101_021D72B8: ; 0x021D72B8
	mov r0, #0x52
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r3, #1
	cmp r0, #1
	bne _021D72C8
	mov r3, #0
_021D72C8:
	ldr r0, [r1, #8]
	add r1, r3, #0
	ldr r3, _021D72D0 ; =sub_02021CAC
	bx r3
	; .align 2, 0
_021D72D0: .word sub_02021CAC
	thumb_func_end ov101_021D72B8

	thumb_func_start ov101_021D72D4
ov101_021D72D4: ; 0x021D72D4
	push {lr}
	sub sp, #0x14
	mov r1, #0x15
	lsl r1, r1, #0xe
	str r1, [sp, #8]
	mov r1, #0x13
	lsl r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp]
	mov r1, #0x8e
	str r1, [sp, #4]
	ldr r1, _021D72FC ; =0x0000044C
	add r2, sp, #8
	ldr r0, [r0, r1]
	ldr r1, _021D7300 ; =0x021D91C8
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_021D72FC: .word 0x0000044C
_021D7300: .word 0x021D91C8
	thumb_func_end ov101_021D72D4

	thumb_func_start ov101_021D7304
ov101_021D7304: ; 0x021D7304
	push {r3, r4, r5, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _021D7390 ; =0x021D8F44
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715BC
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #8
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r4, #0xc]
	add r1, sp, #0x28
	bl sub_02021C60
	ldr r0, [r4, #0xc]
	add r1, sp, #0x1c
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021C94
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x40
	pop {r3, r4, r5, pc}
	nop
_021D7390: .word 0x021D8F44
	thumb_func_end ov101_021D7304

	thumb_func_start ov101_021D7394
ov101_021D7394: ; 0x021D7394
	ldr r3, _021D739C ; =ov101_021D8544
	add r1, #8
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021D739C: .word ov101_021D8544
	thumb_func_end ov101_021D7394

	thumb_func_start ov101_021D73A0
ov101_021D73A0: ; 0x021D73A0
	push {r3, lr}
	ldr r2, [r1, #0]
	add r2, r2, #1
	str r2, [r1, #0]
	cmp r2, #0x2d
	blt _021D73B0
	bl sub_0207136C
_021D73B0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D73A0

	thumb_func_start ov101_021D73B4
ov101_021D73B4: ; 0x021D73B4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D73E0 ; =0x021D9034
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D73E4 ; =0x021D922C
	str r0, [r4, #0]
	str r3, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D73E8 ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D73E0: .word 0x021D9034
_021D73E4: .word 0x021D922C
_021D73E8: .word 0x0000044C
	thumb_func_end ov101_021D73B4

	thumb_func_start ov101_021D73EC
ov101_021D73EC: ; 0x021D73EC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r1, #7
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #4
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D73EC

	thumb_func_start ov101_021D7438
ov101_021D7438: ; 0x021D7438
	ldr r3, _021D7440 ; =ov101_021D8544
	add r0, r1, #4
	bx r3
	nop
_021D7440: .word ov101_021D8544
	thumb_func_end ov101_021D7438

	thumb_func_start ov101_021D7444
ov101_021D7444: ; 0x021D7444
	mov r0, #0x52
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r3, #1
	cmp r0, #1
	bne _021D7454
	mov r3, #0
_021D7454:
	ldr r0, [r1, #8]
	add r1, r3, #0
	ldr r3, _021D745C ; =sub_02021CAC
	bx r3
	; .align 2, 0
_021D745C: .word sub_02021CAC
	thumb_func_end ov101_021D7444

	thumb_func_start ov101_021D7460
ov101_021D7460: ; 0x021D7460
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D7494 ; =0x021D8EF0
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D7498 ; =0x021D9254
	str r0, [r4, #0]
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	str r3, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D749C ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D7494: .word 0x021D8EF0
_021D7498: .word 0x021D9254
_021D749C: .word 0x0000044C
	thumb_func_end ov101_021D7460

	thumb_func_start ov101_021D74A0
ov101_021D74A0: ; 0x021D74A0
	push {r3, r4, r5, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _021D752C ; =0x021D8FEC
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715BC
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	bl sub_020715E4
	mov r0, #0
	str r0, [sp]
	mov r1, #7
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r3, #2
	str r3, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r4, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #8
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r4, #0xc]
	add r1, sp, #0x28
	bl sub_02021C60
	ldr r0, [r4, #0xc]
	add r1, sp, #0x1c
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021C94
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	add sp, #0x40
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D752C: .word 0x021D8FEC
	thumb_func_end ov101_021D74A0

	thumb_func_start ov101_021D7530
ov101_021D7530: ; 0x021D7530
	ldr r3, _021D7538 ; =ov101_021D8544
	add r1, #8
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021D7538: .word ov101_021D8544
	thumb_func_end ov101_021D7530

	thumb_func_start ov101_021D753C
ov101_021D753C: ; 0x021D753C
	push {r3, lr}
	ldr r2, [r1, #0]
	add r2, r2, #1
	str r2, [r1, #0]
	cmp r2, #0x2d
	blt _021D754C
	bl sub_0207136C
_021D754C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D753C

	thumb_func_start ov101_021D7550
ov101_021D7550: ; 0x021D7550
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D757C ; =0x021D8EB4
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D7580 ; =0x021D913C
	str r0, [r4, #0]
	str r3, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D7584 ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D757C: .word 0x021D8EB4
_021D7580: .word 0x021D913C
_021D7584: .word 0x0000044C
	thumb_func_end ov101_021D7550

	thumb_func_start ov101_021D7588
ov101_021D7588: ; 0x021D7588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r7, r1, #0
	bl sub_020715BC
	str r0, [r7, #0]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_020715E4
	mov r6, #0
	add r4, r7, #4
	add r5, r7, #0
_021D75A4:
	mov r0, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, sp, #0x1c
	mov r3, #2
	bl ov101_021D84A4
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02021CC8
	add r6, r6, #1
	add r4, #0xc
	add r5, #0xc
	cmp r6, #2
	blt _021D75A4
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D7588

	thumb_func_start ov101_021D75F0
ov101_021D75F0: ; 0x021D75F0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #4
	bl ov101_021D8544
	add r4, #0x10
	add r0, r4, #0
	bl ov101_021D8544
	pop {r4, pc}
	thumb_func_end ov101_021D75F0

	thumb_func_start ov101_021D7604
ov101_021D7604: ; 0x021D7604
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r0, #0x4f
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r4, r1, r0
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021D76AA
	ldr r3, _021D76B0 ; =0x021D9010
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r6, #0
	str r0, [r2, #0]
	ldr r0, [r5, #0]
	ldr r7, [r0, #0x10]
	cmp r7, #0x63
	bls _021D7640
	mov r7, #0x63
_021D7640:
	add r0, r7, #0
	mov r1, #0x64
	bl sub_020E2178
	add r0, r1, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	beq _021D767E
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02021D6C
	ldr r0, [r5, #8]
	bl sub_02021DE0
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	add r6, r6, #1
_021D767E:
	mov r0, #0xc
	add r4, r6, #0
	add r5, #8
	mul r4, r0
	ldr r0, [r5, r4]
	add r1, sp, #0
	bl sub_02021C50
	add r0, r7, #0
	mov r1, #0xa
	bl sub_020E2178
	ldr r0, [r5, r4]
	bl sub_02021D6C
	ldr r0, [r5, r4]
	bl sub_02021DE0
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
_021D76AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D76B0: .word 0x021D9010
	thumb_func_end ov101_021D7604

	thumb_func_start ov101_021D76B4
ov101_021D76B4: ; 0x021D76B4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D76E0 ; =0x021D90E8
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D76E4 ; =0x021D91A0
	str r0, [r4, #0]
	str r3, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D76E8 ; =0x0000044C
	ldr r0, [r3, r0]
	mov r3, #0
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D76E0: .word 0x021D90E8
_021D76E4: .word 0x021D91A0
_021D76E8: .word 0x0000044C
	thumb_func_end ov101_021D76B4

	thumb_func_start ov101_021D76EC
ov101_021D76EC: ; 0x021D76EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _021D7750 ; =0x021D8F68
	add r4, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_020715BC
	str r0, [r6, #0]
	mov r4, #0
	add r5, r6, #4
	mov r7, #2
_021D770E:
	mov r0, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r6, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r2, sp, #0x1c
	add r3, r7, #0
	bl ov101_021D84A4
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r0, r1, r0
	add r4, r4, #1
	add r5, #0xc
	str r0, [sp, #0x1c]
	cmp r4, #5
	blt _021D770E
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7750: .word 0x021D8F68
	thumb_func_end ov101_021D76EC

	thumb_func_start ov101_021D7754
ov101_021D7754: ; 0x021D7754
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r1, #4
_021D775A:
	add r0, r5, #0
	bl ov101_021D8544
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #5
	blt _021D775A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7754

	thumb_func_start ov101_021D776C
ov101_021D776C: ; 0x021D776C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r0, #0x52
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r7, #1
	cmp r0, #1
	bne _021D7780
	mov r7, #0
_021D7780:
	mov r6, #0
	add r4, r5, #0
_021D7784:
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #5
	blt _021D7784
	cmp r7, #0
	beq _021D77D8
	ldr r0, [r5, #0]
	ldr r6, [r0, #0x14]
	ldr r0, _021D77DC ; =0x0000C350
	cmp r6, r0
	ble _021D77A4
	add r6, r0, #0
_021D77A4:
	ldr r4, _021D77E0 ; =0x00002710
	mov r7, #0xa
_021D77A8:
	add r1, r4, #0
	add r0, r6, #0
	mul r1, r7
	bl sub_020E1F6C
	add r0, r1, #0
	add r1, r4, #0
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02021D6C
	ldr r0, [r5, #8]
	bl sub_02021DE0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r4, r0, #0
	add r5, #0xc
	cmp r4, #1
	bge _021D77A8
_021D77D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D77DC: .word 0x0000C350
_021D77E0: .word 0x00002710
	thumb_func_end ov101_021D776C

	thumb_func_start ov101_021D77E4
ov101_021D77E4: ; 0x021D77E4
	push {lr}
	sub sp, #0x14
	add r3, r1, #0
	add r2, sp, #8
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r0, [sp]
	mov r1, #0x8e
	str r1, [sp, #4]
	ldr r1, _021D7808 ; =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D780C ; =0x021D9240
	bl sub_02071330
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_021D7808: .word 0x0000044C
_021D780C: .word 0x021D9240
	thumb_func_end ov101_021D77E4

	thumb_func_start ov101_021D7810
ov101_021D7810: ; 0x021D7810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	add r5, r1, #0
	add r1, sp, #0x2c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _021D7974 ; =0x021D9040
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r6, #0
	bl sub_020715BC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020715B4
	str r0, [r5, #0]
	str r4, [r5, #0x14]
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021D787A
	ldr r1, [r4, #0x1c]
	ldr r0, _021D7978 ; =0x000003E7
	str r1, [r5, #4]
	cmp r1, r0
	bls _021D7852
	str r0, [r5, #4]
_021D7852:
	ldr r0, [r5, #4]
	cmp r0, #0x64
	blo _021D785E
	mov r0, #3
	str r0, [r5, #8]
	b _021D786C
_021D785E:
	cmp r0, #0xa
	blo _021D7868
	mov r0, #2
	str r0, [r5, #8]
	b _021D786C
_021D7868:
	mov r0, #1
	str r0, [r5, #8]
_021D786C:
	mov r0, #0x32
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0x13
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	b _021D78C6
_021D787A:
	ldr r1, [r4, #0x14]
	ldr r0, _021D797C ; =0x0001869F
	str r1, [r5, #4]
	cmp r1, r0
	bls _021D7886
	str r0, [r5, #4]
_021D7886:
	ldr r1, [r5, #4]
	ldr r0, _021D7980 ; =0x00002710
	cmp r1, r0
	blo _021D7894
	mov r0, #5
	str r0, [r5, #8]
	b _021D78BA
_021D7894:
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blo _021D78A2
	mov r0, #4
	str r0, [r5, #8]
	b _021D78BA
_021D78A2:
	cmp r1, #0x64
	blo _021D78AC
	mov r0, #3
	str r0, [r5, #8]
	b _021D78BA
_021D78AC:
	cmp r1, #0xa
	blo _021D78B6
	mov r0, #2
	str r0, [r5, #8]
	b _021D78BA
_021D78B6:
	mov r0, #1
	str r0, [r5, #8]
_021D78BA:
	mov r0, #0x32
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
_021D78C6:
	ldr r0, [r5, #8]
	mov r7, #0
	mov r6, #1
	cmp r0, #0
	bls _021D796A
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	add r4, r5, #0
_021D78DA:
	mov r0, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x38
	mov r3, #2
	bl ov101_021D84A4
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x2c
	bl sub_02021C60
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x20
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02021C94
	mov r1, #0xa
	ldr r0, [r5, #4]
	mul r1, r6
	bl sub_020E2178
	add r0, r1, #0
	add r1, r6, #0
	bl sub_020E2178
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02021D6C
	ldr r0, [r4, #0x1c]
	bl sub_02021DE0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x38]
	add r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0xa
	mul r6, r0
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [r5, #8]
	add r7, r7, #1
	add r4, #0xc
	cmp r7, r0
	blo _021D78DA
_021D796A:
	str r7, [r5, #0x10]
	mov r0, #1
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D7974: .word 0x021D9040
_021D7978: .word 0x000003E7
_021D797C: .word 0x0001869F
_021D7980: .word 0x00002710
	thumb_func_end ov101_021D7810

	thumb_func_start ov101_021D7984
ov101_021D7984: ; 0x021D7984
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _021D79A4
	add r5, r6, #0
	add r5, #0x18
_021D7994:
	add r0, r5, #0
	bl ov101_021D8544
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021D7994
_021D79A4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7984

	thumb_func_start ov101_021D79A8
ov101_021D79A8: ; 0x021D79A8
	push {r3, lr}
	ldr r2, [r1, #0xc]
	add r2, r2, #1
	str r2, [r1, #0xc]
	cmp r2, #0x2d
	blt _021D79B8
	bl sub_0207136C
_021D79B8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D79A8

	thumb_func_start ov101_021D79BC
ov101_021D79BC: ; 0x021D79BC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D79F0 ; =0x021D8F08
	add r2, r0, #0
	add r3, r1, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldr r0, _021D79F4 ; =0x000003E7
	cmp r3, r0
	bls _021D79D8
	add r3, r0, #0
_021D79D8:
	str r2, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D79F8 ; =0x0000044C
	ldr r1, _021D79FC ; =0x021D9268
	ldr r0, [r2, r0]
	add r2, sp, #8
	bl sub_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D79F0: .word 0x021D8F08
_021D79F4: .word 0x000003E7
_021D79F8: .word 0x0000044C
_021D79FC: .word 0x021D9268
	thumb_func_end ov101_021D79BC

	thumb_func_start ov101_021D7A00
ov101_021D7A00: ; 0x021D7A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r5, r1, #0
	bl sub_020715BC
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_020715B4
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r1, sp, #0x24
	bl sub_020715E4
	ldr r0, [sp, #0x20]
	cmp r0, #0x64
	blo _021D7A36
	mov r0, #3
	str r0, [r5, #4]
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	mov r4, #0x64
	str r0, [sp, #0x24]
	b _021D7A4E
_021D7A36:
	cmp r0, #0xa
	blo _021D7A4A
	mov r0, #2
	str r0, [r5, #4]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	mov r4, #0xa
	str r0, [sp, #0x24]
	b _021D7A4E
_021D7A4A:
	mov r4, #1
	str r4, [r5, #4]
_021D7A4E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _021D7ACA
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	add r7, r5, #0
_021D7A60:
	mov r0, #0
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r5, #8]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x24
	mov r3, #2
	bl ov101_021D84A4
	mov r1, #0xa
	ldr r0, [sp, #0x20]
	mul r1, r4
	bl sub_020E2178
	add r0, r1, #0
	add r1, r4, #0
	bl sub_020E2178
	add r1, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02021D6C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x24]
	add r0, r4, #0
	mov r1, #0xa
	add r7, #0xc
	add r6, r6, #1
	bl sub_020E2178
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r6, r0
	blt _021D7A60
_021D7ACA:
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D7A00

	thumb_func_start ov101_021D7AD0
ov101_021D7AD0: ; 0x021D7AD0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _021D7AF0
	add r5, r6, #0
	add r5, #0xc
_021D7AE0:
	add r0, r5, #0
	bl ov101_021D8544
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021D7AE0
_021D7AF0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7AD0

	thumb_func_start ov101_021D7AF4
ov101_021D7AF4: ; 0x021D7AF4
	push {r3, lr}
	ldr r2, [r1, #0]
	add r2, r2, #1
	str r2, [r1, #0]
	cmp r2, #0x3c
	blt _021D7B04
	bl sub_0207136C
_021D7B04:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7AF4

	thumb_func_start ov101_021D7B08
ov101_021D7B08: ; 0x021D7B08
	push {lr}
	sub sp, #0x14
	add r2, sp, #8
	mov r3, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r0, [sp]
	mov r1, #0x8c
	str r1, [sp, #4]
	ldr r1, _021D7B2C ; =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D7B30 ; =0x021D91B4
	bl sub_02071330
	add sp, #0x14
	pop {pc}
	nop
_021D7B2C: .word 0x0000044C
_021D7B30: .word 0x021D91B4
	thumb_func_end ov101_021D7B08

	thumb_func_start ov101_021D7B34
ov101_021D7B34: ; 0x021D7B34
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	str r0, [r4, #0x44]
	ldr r0, [r0, #0x44]
	add r3, r4, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x44]
	add r3, #0x1c
	ldr r0, [r0, #0x48]
	mov r1, #1
_021D7B4C:
	add r2, r0, #0
	tst r2, r1
	bne _021D7B60
	ldr r2, [r3, #0]
	lsr r0, r0, #1
	add r2, r2, #1
	str r2, [r3, #0]
	ldr r2, [r4, #0x1c]
	cmp r2, #5
	blt _021D7B4C
_021D7B60:
	ldr r0, [r4, #0x1c]
	cmp r0, #5
	blt _021D7B6A
	bl sub_02022974
_021D7B6A:
	add r0, r4, #0
	bl ov101_021D7D94
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D7B34

	thumb_func_start ov101_021D7B74
ov101_021D7B74: ; 0x021D7B74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	bne _021D7BB0
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x20
_021D7B86:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D7B92
	add r0, r5, #0
	bl ov101_021D8544
_021D7B92:
	add r6, r6, #1
	add r4, #0xc
	add r5, #0xc
	cmp r6, #3
	blt _021D7B86
	mov r1, #0xa
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r7, #0x44]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	mov r2, #8
	add r3, r1, #0
	bl ov101_021D8358
_021D7BB0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7B74

	thumb_func_start ov101_021D7BB4
ov101_021D7BB4: ; 0x021D7BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	ldr r0, [r5, #0]
	cmp r0, #5
	bhi _021D7BDE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D7BCC: ; jump table
	.short _021D7BD8 - _021D7BCC - 2 ; case 0
	.short _021D7C52 - _021D7BCC - 2 ; case 1
	.short _021D7C9C - _021D7BCC - 2 ; case 2
	.short _021D7CB4 - _021D7BCC - 2 ; case 3
	.short _021D7CF8 - _021D7BCC - 2 ; case 4
	.short _021D7D10 - _021D7BCC - 2 ; case 5
_021D7BD8:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021D7BE0
_021D7BDE:
	b _021D7D44
_021D7BE0:
	mov r4, #0
	add r7, r5, #0
	str r4, [sp, #0x20]
	add r7, #0x20
	add r6, r5, #0
_021D7BEA:
	ldr r1, [r5, #0x1c]
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021D7D48 ; =0x021D9424
	add r0, r0, r2
	add r3, r4, r0
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r3, #3
	str r0, [r2, #0]
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x45
	ldr r1, [r5, #0x44]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r7, #0
	mov r2, ip
	bl ov101_021D84A4
	ldr r0, [r6, #0x24]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [sp, #0x20]
	add r4, #0xc
	add r0, r0, #1
	add r7, #0xc
	add r6, #0xc
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021D7BEA
	ldr r0, [r5, #0]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D7C52:
	mov r6, #0
	str r6, [sp, #0x1c]
	add r4, r5, #0
	add r7, sp, #0x24
_021D7C5A:
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl ov101_021D8560
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #0xf
	lsl r0, r0, #0x10
	str r1, [sp, #0x28]
	cmp r1, r0
	blt _021D7C78
	str r0, [sp, #0x28]
	b _021D7C7C
_021D7C78:
	mov r0, #1
	str r0, [sp, #0x1c]
_021D7C7C:
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_02021C50
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #3
	blt _021D7C5A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021D7D44
	ldr r0, [r5, #0]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D7C9C:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D7CB4:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0xc
	blt _021D7CC2
	mov r7, #1
	b _021D7CC4
_021D7CC2:
	mov r7, #0
_021D7CC4:
	mov r6, #0
	add r4, r5, #0
_021D7CC8:
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #3
	blt _021D7CC8
	ldr r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	mov r1, #0
	str r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #3
	blt _021D7D44
	str r1, [r5, #0x10]
	ldr r0, [r5, #0]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D7CF8:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D7D10:
	add r4, r5, #0
	mov r6, #0
	add r4, #0x20
_021D7D16:
	add r0, r4, #0
	bl ov101_021D8544
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #3
	blt _021D7D16
	mov r1, #0xa
	str r1, [sp]
	mov r0, #0x45
	ldr r2, [r5, #0x44]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	mov r2, #8
	add r3, r1, #0
	bl ov101_021D8358
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r5, #4]
	str r0, [r5, #0x14]
_021D7D44:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7D48: .word 0x021D9424
	thumb_func_end ov101_021D7BB4

	thumb_func_start ov101_021D7D4C
ov101_021D7D4C: ; 0x021D7D4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0x45
	ldr r1, [r4, #0x44]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl ov101_021D814C
	mov r0, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D7D4C

	thumb_func_start ov101_021D7D6C
ov101_021D7D6C: ; 0x021D7D6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x44]
	cmp r0, #1
	bne _021D7D90
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl ov101_021D8180
	mov r0, #2
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200DA58
_021D7D90:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D7D6C

	thumb_func_start ov101_021D7D94
ov101_021D7D94: ; 0x021D7D94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r5, #0x44]
	cmp r0, #0
	bne _021D7DDC
	mov r2, #0x45
	mov r0, #0xa
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #3
	mov r3, #0xe
	bl ov101_021D80E4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0xf
	mov r3, #0xa
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x10
	mov r3, #0xa
	bl ov101_021D82F0
	b _021D7E16
_021D7DDC:
	mov r2, #0x45
	mov r0, #0xa
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #0x18
	ldr r2, [r4, r2]
	mov r1, #3
	mov r3, #0x11
	bl ov101_021D80E4
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x12
	mov r3, #0xa
	bl ov101_021D8288
	mov r1, #0x45
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x18
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0xa
	bl ov101_021D82F0
_021D7E16:
	ldr r0, _021D7E3C ; =ov101_021D7D4C
	ldr r2, _021D7E40 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA04
	cmp r0, #0
	bne _021D7E28
	bl sub_02022974
_021D7E28:
	ldr r0, _021D7E44 ; =ov101_021D7D6C
	ldr r2, _021D7E40 ; =0x00000101
	add r1, r5, #0
	bl sub_0200DA3C
	cmp r0, #0
	bne _021D7E3A
	bl sub_02022974
_021D7E3A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D7E3C: .word ov101_021D7D4C
_021D7E40: .word 0x00000101
_021D7E44: .word ov101_021D7D6C
	thumb_func_end ov101_021D7D94

	.rodata


	.global Unk_ov101_021D8E58
Unk_ov101_021D8E58: ; 0x021D8E58
	.incbin "incbin/overlay101_rodata.bin", 0x8D0, 0x8D8 - 0x8D0

	.global Unk_ov101_021D8E60
Unk_ov101_021D8E60: ; 0x021D8E60
	.incbin "incbin/overlay101_rodata.bin", 0x8D8, 0x8E0 - 0x8D8

	.global Unk_ov101_021D8E68
Unk_ov101_021D8E68: ; 0x021D8E68
	.incbin "incbin/overlay101_rodata.bin", 0x8E0, 0x8E8 - 0x8E0

	.global Unk_ov101_021D8E70
Unk_ov101_021D8E70: ; 0x021D8E70
	.incbin "incbin/overlay101_rodata.bin", 0x8E8, 0x8F0 - 0x8E8

	.global Unk_ov101_021D8E78
Unk_ov101_021D8E78: ; 0x021D8E78
	.incbin "incbin/overlay101_rodata.bin", 0x8F0, 0x8F8 - 0x8F0

	.global Unk_ov101_021D8E80
Unk_ov101_021D8E80: ; 0x021D8E80
	.incbin "incbin/overlay101_rodata.bin", 0x8F8, 0x900 - 0x8F8

	.global Unk_ov101_021D8E88
Unk_ov101_021D8E88: ; 0x021D8E88
	.incbin "incbin/overlay101_rodata.bin", 0x900, 0x908 - 0x900

	.global Unk_ov101_021D8E90
Unk_ov101_021D8E90: ; 0x021D8E90
	.incbin "incbin/overlay101_rodata.bin", 0x908, 0x914 - 0x908

	.global Unk_ov101_021D8E9C
Unk_ov101_021D8E9C: ; 0x021D8E9C
	.incbin "incbin/overlay101_rodata.bin", 0x914, 0x920 - 0x914

	.global Unk_ov101_021D8EA8
Unk_ov101_021D8EA8: ; 0x021D8EA8
	.incbin "incbin/overlay101_rodata.bin", 0x920, 0x92C - 0x920

	.global Unk_ov101_021D8EB4
Unk_ov101_021D8EB4: ; 0x021D8EB4
	.incbin "incbin/overlay101_rodata.bin", 0x92C, 0x938 - 0x92C

	.global Unk_ov101_021D8EC0
Unk_ov101_021D8EC0: ; 0x021D8EC0
	.incbin "incbin/overlay101_rodata.bin", 0x938, 0x944 - 0x938

	.global Unk_ov101_021D8ECC
Unk_ov101_021D8ECC: ; 0x021D8ECC
	.incbin "incbin/overlay101_rodata.bin", 0x944, 0x950 - 0x944

	.global Unk_ov101_021D8ED8
Unk_ov101_021D8ED8: ; 0x021D8ED8
	.incbin "incbin/overlay101_rodata.bin", 0x950, 0x95C - 0x950

	.global Unk_ov101_021D8EE4
Unk_ov101_021D8EE4: ; 0x021D8EE4
	.incbin "incbin/overlay101_rodata.bin", 0x95C, 0x968 - 0x95C

	.global Unk_ov101_021D8EF0
Unk_ov101_021D8EF0: ; 0x021D8EF0
	.incbin "incbin/overlay101_rodata.bin", 0x968, 0x974 - 0x968

	.global Unk_ov101_021D8EFC
Unk_ov101_021D8EFC: ; 0x021D8EFC
	.incbin "incbin/overlay101_rodata.bin", 0x974, 0x980 - 0x974

	.global Unk_ov101_021D8F08
Unk_ov101_021D8F08: ; 0x021D8F08
	.incbin "incbin/overlay101_rodata.bin", 0x980, 0x98C - 0x980

	.global Unk_ov101_021D8F14
Unk_ov101_021D8F14: ; 0x021D8F14
	.incbin "incbin/overlay101_rodata.bin", 0x98C, 0x998 - 0x98C

	.global Unk_ov101_021D8F20
Unk_ov101_021D8F20: ; 0x021D8F20
	.incbin "incbin/overlay101_rodata.bin", 0x998, 0x9A4 - 0x998

	.global Unk_ov101_021D8F2C
Unk_ov101_021D8F2C: ; 0x021D8F2C
	.incbin "incbin/overlay101_rodata.bin", 0x9A4, 0x9B0 - 0x9A4

	.global Unk_ov101_021D8F38
Unk_ov101_021D8F38: ; 0x021D8F38
	.incbin "incbin/overlay101_rodata.bin", 0x9B0, 0x9BC - 0x9B0

	.global Unk_ov101_021D8F44
Unk_ov101_021D8F44: ; 0x021D8F44
	.incbin "incbin/overlay101_rodata.bin", 0x9BC, 0x9C8 - 0x9BC

	.global Unk_ov101_021D8F50
Unk_ov101_021D8F50: ; 0x021D8F50
	.incbin "incbin/overlay101_rodata.bin", 0x9C8, 0x9D4 - 0x9C8

	.global Unk_ov101_021D8F5C
Unk_ov101_021D8F5C: ; 0x021D8F5C
	.incbin "incbin/overlay101_rodata.bin", 0x9D4, 0x9E0 - 0x9D4

	.global Unk_ov101_021D8F68
Unk_ov101_021D8F68: ; 0x021D8F68
	.incbin "incbin/overlay101_rodata.bin", 0x9E0, 0x9EC - 0x9E0

	.global Unk_ov101_021D8F74
Unk_ov101_021D8F74: ; 0x021D8F74
	.incbin "incbin/overlay101_rodata.bin", 0x9EC, 0x9F8 - 0x9EC

	.global Unk_ov101_021D8F80
Unk_ov101_021D8F80: ; 0x021D8F80
	.incbin "incbin/overlay101_rodata.bin", 0x9F8, 0xA04 - 0x9F8

	.global Unk_ov101_021D8F8C
Unk_ov101_021D8F8C: ; 0x021D8F8C
	.incbin "incbin/overlay101_rodata.bin", 0xA04, 0xA10 - 0xA04

	.global Unk_ov101_021D8F98
Unk_ov101_021D8F98: ; 0x021D8F98
	.incbin "incbin/overlay101_rodata.bin", 0xA10, 0xA1C - 0xA10

	.global Unk_ov101_021D8FA4
Unk_ov101_021D8FA4: ; 0x021D8FA4
	.incbin "incbin/overlay101_rodata.bin", 0xA1C, 0xA28 - 0xA1C

	.global Unk_ov101_021D8FB0
Unk_ov101_021D8FB0: ; 0x021D8FB0
	.incbin "incbin/overlay101_rodata.bin", 0xA28, 0xA34 - 0xA28

	.global Unk_ov101_021D8FBC
Unk_ov101_021D8FBC: ; 0x021D8FBC
	.incbin "incbin/overlay101_rodata.bin", 0xA34, 0xA40 - 0xA34

	.global Unk_ov101_021D8FC8
Unk_ov101_021D8FC8: ; 0x021D8FC8
	.incbin "incbin/overlay101_rodata.bin", 0xA40, 0xA4C - 0xA40

	.global Unk_ov101_021D8FD4
Unk_ov101_021D8FD4: ; 0x021D8FD4
	.incbin "incbin/overlay101_rodata.bin", 0xA4C, 0xA58 - 0xA4C

	.global Unk_ov101_021D8FE0
Unk_ov101_021D8FE0: ; 0x021D8FE0
	.incbin "incbin/overlay101_rodata.bin", 0xA58, 0xA64 - 0xA58

	.global Unk_ov101_021D8FEC
Unk_ov101_021D8FEC: ; 0x021D8FEC
	.incbin "incbin/overlay101_rodata.bin", 0xA64, 0xA70 - 0xA64

	.global Unk_ov101_021D8FF8
Unk_ov101_021D8FF8: ; 0x021D8FF8
	.incbin "incbin/overlay101_rodata.bin", 0xA70, 0xA7C - 0xA70

	.global Unk_ov101_021D9004
Unk_ov101_021D9004: ; 0x021D9004
	.incbin "incbin/overlay101_rodata.bin", 0xA7C, 0xA88 - 0xA7C

	.global Unk_ov101_021D9010
Unk_ov101_021D9010: ; 0x021D9010
	.incbin "incbin/overlay101_rodata.bin", 0xA88, 0xA94 - 0xA88

	.global Unk_ov101_021D901C
Unk_ov101_021D901C: ; 0x021D901C
	.incbin "incbin/overlay101_rodata.bin", 0xA94, 0xAA0 - 0xA94

	.global Unk_ov101_021D9028
Unk_ov101_021D9028: ; 0x021D9028
	.incbin "incbin/overlay101_rodata.bin", 0xAA0, 0xAAC - 0xAA0

	.global Unk_ov101_021D9034
Unk_ov101_021D9034: ; 0x021D9034
	.incbin "incbin/overlay101_rodata.bin", 0xAAC, 0xAB8 - 0xAAC

	.global Unk_ov101_021D9040
Unk_ov101_021D9040: ; 0x021D9040
	.incbin "incbin/overlay101_rodata.bin", 0xAB8, 0xAC4 - 0xAB8

	.global Unk_ov101_021D904C
Unk_ov101_021D904C: ; 0x021D904C
	.incbin "incbin/overlay101_rodata.bin", 0xAC4, 0xAD0 - 0xAC4

	.global Unk_ov101_021D9058
Unk_ov101_021D9058: ; 0x021D9058
	.incbin "incbin/overlay101_rodata.bin", 0xAD0, 0xADC - 0xAD0

	.global Unk_ov101_021D9064
Unk_ov101_021D9064: ; 0x021D9064
	.incbin "incbin/overlay101_rodata.bin", 0xADC, 0xAE8 - 0xADC

	.global Unk_ov101_021D9070
Unk_ov101_021D9070: ; 0x021D9070
	.incbin "incbin/overlay101_rodata.bin", 0xAE8, 0xAF4 - 0xAE8

	.global Unk_ov101_021D907C
Unk_ov101_021D907C: ; 0x021D907C
	.incbin "incbin/overlay101_rodata.bin", 0xAF4, 0xB00 - 0xAF4

	.global Unk_ov101_021D9088
Unk_ov101_021D9088: ; 0x021D9088
	.incbin "incbin/overlay101_rodata.bin", 0xB00, 0xB0C - 0xB00

	.global Unk_ov101_021D9094
Unk_ov101_021D9094: ; 0x021D9094
	.incbin "incbin/overlay101_rodata.bin", 0xB0C, 0xB18 - 0xB0C

	.global Unk_ov101_021D90A0
Unk_ov101_021D90A0: ; 0x021D90A0
	.incbin "incbin/overlay101_rodata.bin", 0xB18, 0xB24 - 0xB18

	.global Unk_ov101_021D90AC
Unk_ov101_021D90AC: ; 0x021D90AC
	.incbin "incbin/overlay101_rodata.bin", 0xB24, 0xB30 - 0xB24

	.global Unk_ov101_021D90B8
Unk_ov101_021D90B8: ; 0x021D90B8
	.incbin "incbin/overlay101_rodata.bin", 0xB30, 0xB3C - 0xB30

	.global Unk_ov101_021D90C4
Unk_ov101_021D90C4: ; 0x021D90C4
	.incbin "incbin/overlay101_rodata.bin", 0xB3C, 0xB48 - 0xB3C

	.global Unk_ov101_021D90D0
Unk_ov101_021D90D0: ; 0x021D90D0
	.incbin "incbin/overlay101_rodata.bin", 0xB48, 0xB54 - 0xB48

	.global Unk_ov101_021D90DC
Unk_ov101_021D90DC: ; 0x021D90DC
	.incbin "incbin/overlay101_rodata.bin", 0xB54, 0xB60 - 0xB54

	.global Unk_ov101_021D90E8
Unk_ov101_021D90E8: ; 0x021D90E8
	.incbin "incbin/overlay101_rodata.bin", 0xB60, 0xB6C - 0xB60

	.global Unk_ov101_021D90F4
Unk_ov101_021D90F4: ; 0x021D90F4
	.incbin "incbin/overlay101_rodata.bin", 0xB6C, 0xB78 - 0xB6C

	.global Unk_ov101_021D9100
Unk_ov101_021D9100: ; 0x021D9100
	.incbin "incbin/overlay101_rodata.bin", 0xB78, 0xB84 - 0xB78

	.global Unk_ov101_021D910C
Unk_ov101_021D910C: ; 0x021D910C
	.incbin "incbin/overlay101_rodata.bin", 0xB84, 0xB94 - 0xB84

	.global Unk_ov101_021D911C
Unk_ov101_021D911C: ; 0x021D911C
	.incbin "incbin/overlay101_rodata.bin", 0xB94, 0xBA4 - 0xB94

	.global Unk_ov101_021D912C
Unk_ov101_021D912C: ; 0x021D912C
	.incbin "incbin/overlay101_rodata.bin", 0xBA4, 0xBB4 - 0xBA4

	.global Unk_ov101_021D913C
Unk_ov101_021D913C: ; 0x021D913C
	.incbin "incbin/overlay101_rodata.bin", 0xBB4, 0xBC8 - 0xBB4

	.global Unk_ov101_021D9150
Unk_ov101_021D9150: ; 0x021D9150
	.incbin "incbin/overlay101_rodata.bin", 0xBC8, 0xBDC - 0xBC8

	.global Unk_ov101_021D9164
Unk_ov101_021D9164: ; 0x021D9164
	.incbin "incbin/overlay101_rodata.bin", 0xBDC, 0xBF0 - 0xBDC

	.global Unk_ov101_021D9178
Unk_ov101_021D9178: ; 0x021D9178
	.incbin "incbin/overlay101_rodata.bin", 0xBF0, 0xC04 - 0xBF0

	.global Unk_ov101_021D918C
Unk_ov101_021D918C: ; 0x021D918C
	.incbin "incbin/overlay101_rodata.bin", 0xC04, 0xC18 - 0xC04

	.global Unk_ov101_021D91A0
Unk_ov101_021D91A0: ; 0x021D91A0
	.incbin "incbin/overlay101_rodata.bin", 0xC18, 0xC2C - 0xC18

	.global Unk_ov101_021D91B4
Unk_ov101_021D91B4: ; 0x021D91B4
	.incbin "incbin/overlay101_rodata.bin", 0xC2C, 0xC40 - 0xC2C

	.global Unk_ov101_021D91C8
Unk_ov101_021D91C8: ; 0x021D91C8
	.incbin "incbin/overlay101_rodata.bin", 0xC40, 0xC54 - 0xC40

	.global Unk_ov101_021D91DC
Unk_ov101_021D91DC: ; 0x021D91DC
	.incbin "incbin/overlay101_rodata.bin", 0xC54, 0xC68 - 0xC54

	.global Unk_ov101_021D91F0
Unk_ov101_021D91F0: ; 0x021D91F0
	.incbin "incbin/overlay101_rodata.bin", 0xC68, 0xC7C - 0xC68

	.global Unk_ov101_021D9204
Unk_ov101_021D9204: ; 0x021D9204
	.incbin "incbin/overlay101_rodata.bin", 0xC7C, 0xC90 - 0xC7C

	.global Unk_ov101_021D9218
Unk_ov101_021D9218: ; 0x021D9218
	.incbin "incbin/overlay101_rodata.bin", 0xC90, 0xCA4 - 0xC90

	.global Unk_ov101_021D922C
Unk_ov101_021D922C: ; 0x021D922C
	.incbin "incbin/overlay101_rodata.bin", 0xCA4, 0xCB8 - 0xCA4

	.global Unk_ov101_021D9240
Unk_ov101_021D9240: ; 0x021D9240
	.incbin "incbin/overlay101_rodata.bin", 0xCB8, 0xCCC - 0xCB8

	.global Unk_ov101_021D9254
Unk_ov101_021D9254: ; 0x021D9254
	.incbin "incbin/overlay101_rodata.bin", 0xCCC, 0xCE0 - 0xCCC

	.global Unk_ov101_021D9268
Unk_ov101_021D9268: ; 0x021D9268
	.incbin "incbin/overlay101_rodata.bin", 0xCE0, 0xCF4 - 0xCE0

	.global Unk_ov101_021D927C
Unk_ov101_021D927C: ; 0x021D927C
	.incbin "incbin/overlay101_rodata.bin", 0xCF4, 0xD0C - 0xCF4

	.global Unk_ov101_021D9294
Unk_ov101_021D9294: ; 0x021D9294
	.incbin "incbin/overlay101_rodata.bin", 0xD0C, 0xD28 - 0xD0C

	.global Unk_ov101_021D92B0
Unk_ov101_021D92B0: ; 0x021D92B0
	.incbin "incbin/overlay101_rodata.bin", 0xD28, 0xD48 - 0xD28

	.global Unk_ov101_021D92D0
Unk_ov101_021D92D0: ; 0x021D92D0
	.incbin "incbin/overlay101_rodata.bin", 0xD48, 0xD68 - 0xD48

	.global Unk_ov101_021D92F0
Unk_ov101_021D92F0: ; 0x021D92F0
	.incbin "incbin/overlay101_rodata.bin", 0xD68, 0xD88 - 0xD68

	.global Unk_ov101_021D9310
Unk_ov101_021D9310: ; 0x021D9310
	.incbin "incbin/overlay101_rodata.bin", 0xD88, 0xDA8 - 0xD88

	.global Unk_ov101_021D9330
Unk_ov101_021D9330: ; 0x021D9330
	.incbin "incbin/overlay101_rodata.bin", 0xDA8, 0xDCC - 0xDA8

	.global Unk_ov101_021D9354
Unk_ov101_021D9354: ; 0x021D9354
	.incbin "incbin/overlay101_rodata.bin", 0xDCC, 0xDF4 - 0xDCC

	.global Unk_ov101_021D937C
Unk_ov101_021D937C: ; 0x021D937C
	.incbin "incbin/overlay101_rodata.bin", 0xDF4, 0xE1C - 0xDF4

	.global Unk_ov101_021D93A4
Unk_ov101_021D93A4: ; 0x021D93A4
	.incbin "incbin/overlay101_rodata.bin", 0xE1C, 0xE4C - 0xE1C

	.global Unk_ov101_021D93D4
Unk_ov101_021D93D4: ; 0x021D93D4
	.incbin "incbin/overlay101_rodata.bin", 0xE4C, 0xE9C - 0xE4C

	.global Unk_ov101_021D9424
Unk_ov101_021D9424: ; 0x021D9424
	.incbin "incbin/overlay101_rodata.bin", 0xE9C, 0xB4

