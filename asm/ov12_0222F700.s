	.include "macros/function.inc"
	.include "include/ov12_0222F700.inc"

	

	.text


	thumb_func_start ov12_0222F700
ov12_0222F700: ; 0x0222F700
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0xe8
	mov r2, #0xea
	add r5, r0, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #8]
	add r0, #0xc
	bl ov12_02225BA0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226274
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	mov r1, #0
	add r2, sp, #0
_0222F734:
	ldr r0, [r2, #0]
	cmp r0, #1
	beq _0222F76A
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #3
	blt _0222F734
	mov r2, #0xe8
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0xea
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	sub r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222F76A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222F700

	thumb_func_start ov12_0222F770
ov12_0222F770: ; 0x0222F770
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0xf0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #8]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xe8
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xea
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0xec
	strh r0, [r1]
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xea
	add r1, #8
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #1
	mov r2, #8
	bl ov12_022263A4
	add r0, sp, #0x20
	mov r1, #1
	mov r2, #0xa
	bl ov12_022263A4
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	ldr r1, [r4, #0x18]
	mov r6, #0
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x18]
	ldr r1, [sp, #0x2c]
	add r5, r4, #0
	mul r0, r1
	str r0, [sp, #0x2c]
	mov r7, #0x64
_0222F808:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D474
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D810
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0222F808
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	mov r0, #0xec
	ldrsh r0, [r4, r0]
	mov r3, #0xe8
	ldr r2, _0222F880 ; =ov12_02225AE0
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x38
	add r1, sp, #0x20
	bl ov12_022261C4
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _0222F884 ; =ov12_0222F700
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F880: .word ov12_02225AE0
_0222F884: .word ov12_0222F700
	thumb_func_end ov12_0222F770

	thumb_func_start ov12_0222F888
ov12_0222F888: ; 0x0222F888
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bls _0222F898
	b _0222F9DE
_0222F898:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F8A4: ; jump table
	.short _0222F8B2 - _0222F8A4 - 2 ; case 0
	.short _0222F8F4 - _0222F8A4 - 2 ; case 1
	.short _0222F92A - _0222F8A4 - 2 ; case 2
	.short _0222F942 - _0222F8A4 - 2 ; case 3
	.short _0222F972 - _0222F8A4 - 2 ; case 4
	.short _0222F98A - _0222F8A4 - 2 ; case 5
	.short _0222F9AE - _0222F8A4 - 2 ; case 6
_0222F8B2:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _0222F8D4
	mov r2, #0x48
	mov r3, #0x4a
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_02225A18
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F8D4:
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0x10
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x10
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F8F4:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	beq _0222F90E
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #9
	bl sub_02007DEC
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F90E:
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x34
	mov r2, #0
	mov r3, #4
	bl ov12_02225D50
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #2
	strh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222F92A:
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222F9DE
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F942:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _0222F964
	mov r2, #0x48
	mov r3, #0x4a
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_02225A18
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F964:
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x20
	strh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222F972:
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222F9DE
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F98A:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	beq _0222F9A4
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #9
	bl sub_02007DEC
	add sp, #8
	pop {r3, r4, r5, pc}
_0222F9A4:
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0222F9AE:
	mov r2, #0x48
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x4a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222F9DE:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222F888

	thumb_func_start ov12_0222F9E4
ov12_0222F9E4: ; 0x0222F9E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0xf0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x48
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x4a
	strh r0, [r1]
	mov r1, #0
	add r0, r4, #0
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r0, #0x10
	sub r2, #0x23
	add r3, r1, #0
	bl ov12_02225BC8
	add r0, r4, #0
	ldr r2, _0222FAF4 ; =0x00000E38
	add r0, #0x34
	mov r1, #0
	mov r3, #8
	bl ov12_02225D50
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	ldr r1, [r4, #0x18]
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x18]
	ldr r1, [r4, #0x3c]
	mul r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r6, #3
	bne _0222FAB2
	cmp r0, #3
	bne _0222FAB2
	mov r1, #0xa
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	sub r2, #0x32
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
	b _0222FAE6
_0222FAB2:
	cmp r6, #4
	bne _0222FAD0
	cmp r0, #4
	bne _0222FAD0
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	mov r2, #0x28
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
	b _0222FAE6
_0222FAD0:
	mov r2, #0x28
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	mul r2, r7
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	mov r2, #0x28
	bl sub_02007DEC
_0222FAE6:
	ldr r0, [r4, #0]
	ldr r1, _0222FAF8 ; =ov12_0222F888
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FAF4: .word 0x00000E38
_0222FAF8: .word ov12_0222F888
	thumb_func_end ov12_0222F9E4

	thumb_func_start ov12_0222FAFC
ov12_0222FAFC: ; 0x0222FAFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r4, [sp, #0x10]
	bl sub_0200CE6C
	str r0, [r5, #0]
	add r6, r4, #4
	add r3, r5, #4
	mov r2, #4
_0222FB14:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222FB14
	ldr r0, [r6, #0]
	add r2, r5, #0
	str r0, [r3, #0]
	add r3, r4, #0
	add r3, #0x28
	ldmia r3!, {r0, r1}
	add r2, #0x28
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	strh r0, [r5, #0x3c]
	mov r0, #0x3e
	ldrsh r0, [r4, r0]
	strh r0, [r5, #0x3e]
	mov r0, #0x40
	ldrsh r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x40
	strh r1, [r0]
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r5, #0x44]
	str r1, [r5, #0x48]
	ldr r0, [r5, #0]
	bl sub_0200D3F4
	ldr r0, [r5, #0]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D460
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222FAFC

	thumb_func_start ov12_0222FB6C
ov12_0222FB6C: ; 0x0222FB6C
	ldr r3, _0222FB74 ; =sub_0200D0F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222FB74: .word sub_0200D0F4
	thumb_func_end ov12_0222FB6C

	thumb_func_start ov12_0222FB78
ov12_0222FB78: ; 0x0222FB78
	ldr r3, _0222FB80 ; =sub_0200D3F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0222FB80: .word sub_0200D3F4
	thumb_func_end ov12_0222FB78

	thumb_func_start ov12_0222FB84
ov12_0222FB84: ; 0x0222FB84
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _0222FB96
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_0222FB96:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0222FBA6
	cmp r0, #1
	beq _0222FBA6
	cmp r0, #2
	beq _0222FC28
	b _0222FC2E
_0222FBA6:
	add r0, r4, #4
	bl ov12_02225AE0
	cmp r0, #0
	beq _0222FBE6
	add r0, r4, #0
	add r0, #0x28
	bl ov12_02225E0C
	mov r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	mov r1, #0x3e
	ldrsh r2, [r4, r1]
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0]
	add r1, r2, r1
	mov r2, #0x40
	ldrsh r3, [r4, r2]
	mov r2, #6
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	b _0222FC2E
_0222FBE6:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bge _0222FC20
	cmp r0, #0
	bne _0222FC0E
	ldr r1, [r4, #0xc]
	ldr r2, _0222FC34 ; =0x00007FFF
	lsl r1, r1, #0x10
	str r2, [sp]
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r0, _0222FC38 ; =0x0000071C
	str r0, [sp, #0xc]
	add r0, r4, #4
	bl ov12_02225A8C
_0222FC0E:
	ldr r0, [r4, #8]
	ldr r2, _0222FC3C ; =0x0000FFFF
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _0222FC40 ; =0xFFFFF000
	add r0, #0x28
	mov r1, #0
	bl ov12_02225DF4
_0222FC20:
	ldr r0, [r4, #0x44]
	add r0, r0, #1
	str r0, [r4, #0x44]
	b _0222FC2E
_0222FC28:
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_0222FC2E:
	mov r0, #1
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0222FC34: .word 0x00007FFF
_0222FC38: .word 0x0000071C
_0222FC3C: .word 0x0000FFFF
_0222FC40: .word 0xFFFFF000
	thumb_func_end ov12_0222FB84

	thumb_func_start ov12_0222FC44
ov12_0222FC44: ; 0x0222FC44
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _0222FCB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222FC60: ; jump table
	.short _0222FC6E - _0222FC60 - 2 ; case 0
	.short _0222FC86 - _0222FC60 - 2 ; case 1
	.short _0222FCD2 - _0222FC60 - 2 ; case 2
	.short _0222FCE8 - _0222FC60 - 2 ; case 3
	.short _0222FD88 - _0222FC60 - 2 ; case 4
	.short _0222FDB2 - _0222FC60 - 2 ; case 5
	.short _0222FDF2 - _0222FC60 - 2 ; case 6
_0222FC6E:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_0222FB84
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FC86:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r1, #0xa
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	ldr r0, _0222FE28 ; =0x00000136
	cmp r1, r0
	bge _0222FCBA
_0222FCB8:
	b _0222FE1C
_0222FCBA:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FCD2:
	ldr r1, _0222FE2C ; =0x0000FFFF
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FCE8:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _0222FD2C
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r2, #0x4c
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mul r2, r0
	add r0, r4, r2
	ldr r0, [r0, #0x58]
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xf4
	str r1, [r0, #0]
_0222FD2C:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #2
	bge _0222FD44
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	str r1, [r0, #0]
_0222FD44:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_0222FB84
	add r5, r4, #0
	add r6, r0, #0
	mov r7, #0
	add r5, #0x58
_0222FD54:
	add r0, r5, #0
	bl ov12_0222FB84
	str r0, [sp]
	cmp r0, #0
	bne _0222FD68
	add r0, r5, #0
	mov r1, #0
	bl ov12_0222FB78
_0222FD68:
	ldr r0, [sp]
	add r7, r7, #1
	orr r6, r0
	add r5, #0x4c
	cmp r7, #2
	blt _0222FD54
	cmp r6, #0
	bne _0222FE1C
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FD88:
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl sub_02021FD0
	cmp r0, #0
	bne _0222FE1C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FDB2:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0, #0]
	add r0, r4, #0
	sub r1, #0xa
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222FE24 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _0222FE1C
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0222FE1C
_0222FDF2:
	add r5, r4, #0
	mov r6, #0
	add r5, #0x58
_0222FDF8:
	add r0, r5, #0
	bl ov12_0222FB6C
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FDF8
	ldr r0, [r4, #0xc]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222FE1C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FE24: .word 0x04000052
_0222FE28: .word 0x00000136
_0222FE2C: .word 0x0000FFFF
	thumb_func_end ov12_0222FC44

	thumb_func_start ov12_0222FE30
ov12_0222FE30: ; 0x0222FE30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl ov12_0221FDE4
	mov r1, #1
	lsl r1, r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r1, #8
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x11
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x50]
	ldr r2, _0222FF68 ; =0x0000BFFF
	neg r0, r0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _0222FF6C ; =0xFFFF8000
	ldr r0, _0222FF70 ; =0x0000071C
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsr r1, r1, #0x12
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225A8C
	ldr r0, [r4, #0x14]
	ldr r2, _0222FF74 ; =0x0000FFFF
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _0222FF78 ; =0xFFFFF000
	add r0, #0x34
	mov r1, #0
	bl ov12_02225DF4
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	add r0, #0x48
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0x54]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x4a
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	mov r1, #0x4a
	mov r2, #0x4c
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl sub_0200D4C4
	ldr r0, [r4, #0xc]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D460
	ldr r1, [r4, #0]
	add r0, sp, #0x14
	bl ov12_0222329C
	mov r0, #0x4a
	ldrsh r0, [r4, r0]
	add r1, sp, #0x14
	add r5, r4, #0
	strh r0, [r1]
	mov r0, #0x4c
	ldrsh r0, [r4, r0]
	add r7, r4, #0
	mov r6, #0
	strh r0, [r1, #2]
	add r5, #0x58
	add r7, #0xc
_0222FF16:
	str r7, [sp]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r3, sp, #0x14
	bl ov12_0222FAFC
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FF16
	add r0, r4, #0
	mov r1, #0
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	mov r2, #0x1f
	bl ov12_02235780
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D810
	mov r6, #0
	add r5, r4, #0
	mov r7, #1
_0222FF4A:
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	bl sub_0200D810
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222FF4A
	ldr r0, [r4, #0]
	ldr r1, _0222FF7C ; =ov12_0222FC44
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FF68: .word 0x0000BFFF
_0222FF6C: .word 0xFFFF8000
_0222FF70: .word 0x0000071C
_0222FF74: .word 0x0000FFFF
_0222FF78: .word 0xFFFFF000
_0222FF7C: .word ov12_0222FC44
	thumb_func_end ov12_0222FE30

	thumb_func_start ov12_0222FF80
ov12_0222FF80: ; 0x0222FF80
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r2, #0x60
	ldrsh r3, [r4, r2]
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
	mov r1, #0x60
	ldrsh r2, [r4, r1]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x58]
	add r1, r2, r1
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r3, r3, r2
	mov r2, #0x66
	ldrsh r2, [r4, r2]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0x34
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	mov r0, #0x64
	ldrsh r0, [r4, r0]
	bl _f_itof
	add r1, r0, #0
	ldr r0, _02230014 ; =0x3DCCCCCD
	bl _f_mul
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl _f_add
	add r1, r0, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0x58]
	ldr r2, [sp]
	bl sub_0200D6E8
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r4, #0x64
	mul r0, r1
	strh r0, [r4]
	add sp, #8
	pop {r4, pc}
	nop
_02230014: .word 0x3DCCCCCD
	thumb_func_end ov12_0222FF80

	thumb_func_start ov12_02230018
ov12_02230018: ; 0x02230018
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02230030
	cmp r0, #1
	beq _0223006A
	cmp r0, #2
	beq _022300A6
	b _022300B8
_02230030:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225F6C
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0222FF80
	cmp r5, #0
	bne _022300B8
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r3, #0xf
	bl ov12_02225EF0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022300B8
_0223006A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225F6C
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0222FF80
	cmp r5, #0
	bne _022300B8
	mov r2, #0x60
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022300B8
_022300A6:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
_022300B8:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02230018

	thumb_func_start ov12_022300C4
ov12_022300C4: ; 0x022300C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x5c]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x60
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x66
	strh r0, [r1]
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x58]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x58]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_0200D460
	mov r0, #0xf
	str r0, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	mov r2, #0xc
	add r3, r1, #0
	bl ov12_02225EF0
	add r0, r4, #0
	mov r1, #1
	add r0, #0x64
	strh r1, [r0]
	ldr r0, [r4, #0]
	mov r1, #0x1c
	mov r2, #0xf
	bl ov12_02235780
	ldr r0, [r4, #0]
	ldr r1, _02230190 ; =ov12_02230018
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02230190: .word ov12_02230018
	thumb_func_end ov12_022300C4

	thumb_func_start ov12_02230194
ov12_02230194: ; 0x02230194
	mov r2, #0x12
	ldrsh r2, [r0, r2]
	mov r3, #0x10
	ldrsh r0, [r0, r3]
	neg r2, r2
	lsl r2, r2, #0x10
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	mov r2, #3
	ldr r3, _022301B0 ; =MIi_CpuClear32
	lsl r2, r2, #8
	bx r3
	; .align 2, 0
_022301B0: .word MIi_CpuClear32
	thumb_func_end ov12_02230194

	thumb_func_start ov12_022301B4
ov12_022301B4: ; 0x022301B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl ov12_022266C0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02230194
	add r0, r5, #0
	add r0, #0x1c
	bl ov12_02225C14
	str r0, [sp, #8]
	mov r0, #0x14
	ldrsh r4, [r5, r0]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r4, r0
	bgt _02230254
	ldr r1, [sp, #0xc]
	lsl r2, r4, #2
	add r1, r1, r2
	str r1, [sp]
_022301E8:
	ldr r1, [sp]
	sub r0, r0, r4
	ldr r2, [r1, #0]
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	lsr r1, r2, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	mov r1, #0x1e
	ldrsh r1, [r5, r1]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	sub r0, r7, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x1c
	ldrsh r1, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r0, #0x28
	sub r0, r0, r4
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [sp, #4]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	sub r6, r4, #1
	bpl _02230230
	add r6, #0xc0
_02230230:
	ldr r0, [sp, #4]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	ldr r1, [sp, #0xc]
	lsl r2, r6, #2
	str r0, [r1, r2]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r4, r0
	ble _022301E8
_02230254:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022301B4

	thumb_func_start ov12_0223025C
ov12_0223025C: ; 0x0223025C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _022302C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230276: ; jump table
	.short _02230280 - _02230276 - 2 ; case 0
	.short _022302B2 - _02230276 - 2 ; case 1
	.short _022302DA - _02230276 - 2 ; case 2
	.short _0223032A - _02230276 - 2 ; case 3
	.short _0223034A - _02230276 - 2 ; case 4
_02230280:
	add r0, r4, #0
	bl ov12_022301B4
	cmp r0, #0
	bne _022302C4
	ldr r0, [r4, #4]
	mov r1, #0x1f
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov12_022357EC
	mov r1, #0x1f
	mov r2, #0
	str r1, [sp]
	mov r0, #0x10
	add r4, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r2, #0
	bl ov12_02226424
	add sp, #8
	pop {r4, r5, r6, pc}
_022302B2:
	add r0, r4, #0
	bl ov12_022301B4
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	bne _022302C6
_022302C4:
	b _022303CC
_022302C6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	bl ov12_022266D4
	mov r0, #0
	add sp, #8
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_022302DA:
	ldr r0, [r4, #0]
	bl ov12_02220278
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #0
	neg r3, r3
	bl sub_02019184
	ldr r0, [r4, #0]
	bl ov12_02220278
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	ble _022303CC
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0223032A:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	beq _022303CC
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0223034A:
	ldr r0, [r4, #0x18]
	bl ov12_0222669C
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022303CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223025C

	thumb_func_start ov12_022303D0
ov12_022303D0: ; 0x022303D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x68
	bl sub_02018144
	mov r1, #0
	mov r2, #0x68
	add r4, r0, #0
	bl memset
	ldr r1, _02230538 ; =ov12_0223025C
	str r5, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_022201E8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0x12
	ldrsh r2, [r4, r1]
	sub r0, r2, r0
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r2, #1
	sub r0, #0x28
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	mov r1, #6
	sub r0, #0x28
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	bl sub_02007DEC
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r6, r0, #0
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	sub r1, #8
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	add r0, #0x58
	strh r0, [r4, #0x16]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0223046C
	mov r0, #0
	strh r0, [r4, #0x14]
_0223046C:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0xc0
	ble _02230478
	mov r0, #0xc0
	strh r0, [r4, #0x16]
_02230478:
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0201CED4
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	bl ov12_022266E8
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov12_0221FDE4
	mov r1, #0x50
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r7, [sp, #4]
	add r1, r1, #1
	str r1, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, _0223053C ; =0x0000038E
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x14
	mov r1, #0x16
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	lsl r3, r6, #0xf
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl ov12_0222662C
	str r0, [r4, #0x18]
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x1c
	mov r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0x24]
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x24]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	sub r0, r0, #3
	cmp r0, #1
	bhi _0223052A
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
_0223052A:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl ov12_0223025C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230538: .word ov12_0223025C
_0223053C: .word 0x0000038E
	thumb_func_end ov12_022303D0

	thumb_func_start ov12_02230540
ov12_02230540: ; 0x02230540
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _022305F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223055A: ; jump table
	.short _02230562 - _0223055A - 2 ; case 0
	.short _02230588 - _0223055A - 2 ; case 1
	.short _0223059A - _0223055A - 2 ; case 2
	.short _022305DE - _0223055A - 2 ; case 3
_02230562:
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02225DC8
	ldr r2, [r4, #0x38]
	mov r1, #0x1f
	sub r1, r1, r2
	lsl r1, r1, #8
	orr r2, r1
	ldr r1, _022305FC ; =0x04000052
	cmp r0, #0
	strh r2, [r1]
	bne _022305F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _022305F0
_02230588:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x20
	ble _022305F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022305F0
_0223059A:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _022305C0
	ldr r1, [sp, #4]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #4]
_022305C0:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200D6E8
	cmp r5, #0
	bne _022305F0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022305F0
_022305DE:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_022305F0:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022305FC: .word 0x04000052
	thumb_func_end ov12_02230540

	thumb_func_start ov12_02230600
ov12_02230600: ; 0x02230600
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r2, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0223061C
	cmp r0, #1
	beq _022306A4
	cmp r0, #2
	bne _02230618
	b _02230742
_02230618:
	add sp, #0xc
	pop {r4, r5, pc}
_0223061C:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02226138
	mov r2, #0x38
	mov r3, #0x3a
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #8]
	add r0, #0x14
	bl ov12_02225A18
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02230656
	mov r3, #0x3a
	ldrsh r4, [r5, r3]
	ldr r3, [r5, #0x3c]
	mov r2, #0x38
	sub r3, r4, r3
	add r0, r5, #0
	lsl r3, r3, #0x10
	ldrsh r2, [r5, r2]
	ldr r1, [r5, #0xc]
	add r0, #0x14
	asr r3, r3, #0x10
	bl ov12_022259DC
_02230656:
	ldr r0, [r5, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _02230750
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _0223069A
	ldr r0, [r5, #0xc]
	bl ov12_02225950
	mov r1, #1
	add r4, r1, #0
	lsl r4, r0
	ldr r0, [r5, #0]
	bl ov12_0222332C
	mov r1, #0x10
	str r1, [sp]
	mov r3, #0
	lsl r2, r4, #0x10
	str r3, [sp, #4]
	mov r1, #4
	lsr r2, r2, #0x10
	str r3, [sp, #8]
	bl sub_02003178
_0223069A:
	ldr r0, [r5, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, pc}
_022306A4:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02226138
	mov r2, #0x38
	mov r3, #0x3a
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #8]
	add r0, #0x14
	bl ov12_02225A18
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _022306DE
	mov r3, #0x3a
	ldrsh r4, [r5, r3]
	ldr r3, [r5, #0x3c]
	mov r2, #0x38
	sub r3, r4, r3
	add r0, r5, #0
	lsl r3, r3, #0x10
	ldrsh r2, [r5, r2]
	ldr r1, [r5, #0xc]
	add r0, #0x14
	asr r3, r3, #0x10
	bl ov12_022259DC
_022306DE:
	ldr r0, [r5, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _02230750
	mov r2, #0x38
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x3a
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02230738
	ldr r0, [r5, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02230722
	ldr r0, [r5, #8]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02230722:
	mov r2, #0x3a
	ldrsh r3, [r5, r2]
	ldr r2, [r5, #0x3c]
	mov r1, #0x38
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0xc]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_02230738:
	ldr r0, [r5, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, pc}
_02230742:
	ldr r0, [r5, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
_02230750:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02230600

	thumb_func_start ov12_02230754
ov12_02230754: ; 0x02230754
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x50
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x50
	bl memset
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov12_0221FDD4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xa
	add r0, #0x14
	mov r1, #0xe
	add r3, r2, #0
	bl ov12_02225E68
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov12_02225D78
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x1f
	bl ov12_02235780
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _022307D4
	ldr r1, _022307F8 ; =0xBFB33333
	ldr r2, _022307FC ; =0x3FB33333
	bl sub_0200D6E8
	b _022307DC
_022307D4:
	ldr r1, _022307FC ; =0x3FB33333
	add r2, r1, #0
	bl sub_0200D6E8
_022307DC:
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0]
	ldr r1, _02230800 ; =ov12_02230540
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022307F8: .word 0xBFB33333
_022307FC: .word 0x3FB33333
_02230800: .word ov12_02230540
	thumb_func_end ov12_02230754

	thumb_func_start ov12_02230804
ov12_02230804: ; 0x02230804
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl memset
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x38]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3a]
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	str r0, [r4, #0x3c]
	mov r1, #4
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x14
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	mov r2, #0x10
	add r0, r1, r0
	mov r1, #0
	strh r0, [r4, #0x14]
	str r1, [sp]
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl sub_020086FC
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	cmp r5, #2
	bne _022308B0
	cmp r0, #4
	beq _022308B8
_022308B0:
	cmp r5, #5
	bne _022308FE
	cmp r0, #3
	bne _022308FE
_022308B8:
	ldr r0, [r4, #0xc]
	bl ov12_02225950
	mov r1, #1
	add r5, r1, #0
	lsl r5, r0
	ldr r0, [r4, #0]
	bl ov12_0222332C
	mov r3, #0
	lsl r2, r5, #0x10
	str r3, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #4
	lsr r2, r2, #0x10
	str r3, [sp, #8]
	bl sub_02003178
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _022308FE
	ldr r0, [r4, #8]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_022308FE:
	ldr r0, [r4, #0]
	ldr r1, _0223090C ; =ov12_02230600
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223090C: .word ov12_02230600
	thumb_func_end ov12_02230804

	thumb_func_start ov12_02230910
ov12_02230910: ; 0x02230910
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #3
	bhi _0223098C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223092A: ; jump table
	.short _02230932 - _0223092A - 2 ; case 0
	.short _0223094A - _0223092A - 2 ; case 1
	.short _02230970 - _0223092A - 2 ; case 2
	.short _0223098A - _0223092A - 2 ; case 3
_02230932:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226454
	cmp r0, #1
	bne _0223098C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x20
	str r0, [r4, #0x44]
	b _0223098C
_0223094A:
	ldr r0, [r4, #0x44]
	sub r0, r0, #1
	str r0, [r4, #0x44]
	bpl _0223098C
	ldr r0, [r4, #8]
	mov r1, #8
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl ov12_02226424
	b _0223098C
_02230970:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226454
	cmp r0, #1
	bne _0223098C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	bl ov12_0222669C
	b _0223098C
_0223098A:
	mov r5, #1
_0223098C:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02230910

	thumb_func_start ov12_02230994
ov12_02230994: ; 0x02230994
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022309AA
	cmp r0, #1
	beq _022309DE
	cmp r0, #2
	beq _022309F0
	pop {r4, r5, r6, pc}
_022309AA:
	add r0, r4, #0
	bl ov12_02230910
	ldr r0, [r4, #0x48]
	bl sub_0200D408
	cmp r0, #1
	bne _022309D6
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _022309D6
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_022309D6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022309DE:
	add r0, r4, #0
	bl ov12_02230910
	cmp r0, #0
	beq _02230A88
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022309F0:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02230A3E
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02230A3E:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02230A88:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02230994

	thumb_func_start ov12_02230A8C
ov12_02230A8C: ; 0x02230A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r1, #0x4c
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_0222332C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_022357EC
	mov r2, #8
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	mov r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x10]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, #0x28
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	cmp r0, #5
	beq _02230B1C
	cmp r0, #2
	bne _02230B2E
_02230B1C:
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl sub_0200D460
	b _02230B6A
_02230B2E:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_0200D3F4
_02230B6A:
	add r0, r7, #0
	mov r1, #1
	bl ov12_022233EC
	neg r1, r5
	lsl r1, r1, #0x10
	sub r6, #0x28
	str r0, [sp, #0x18]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	add r6, r0, #0
	add r0, r7, #0
	bl ov12_0221FDE4
	mov r1, #0x64
	str r1, [sp]
	ldr r1, [sp, #0x18]
	mov r3, #5
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r0, r5, #0x18
	add r5, #0x50
	lsl r1, r5, #0x18
	ldr r2, _02230BD8 ; =0x0000038E
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl ov12_0222662C
	mov r2, #1
	str r0, [r4, #0x14]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	lsl r2, r2, #8
	mov r3, #8
	bl sub_02003A2C
	ldr r0, [r4, #0]
	ldr r1, _02230BDC ; =ov12_02230994
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02230BD8: .word 0x0000038E
_02230BDC: .word ov12_02230994
	thumb_func_end ov12_02230A8C

	thumb_func_start ov12_02230BE0
ov12_02230BE0: ; 0x02230BE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _02230CE2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230BFA: ; jump table
	.short _02230C02 - _02230BFA - 2 ; case 0
	.short _02230C52 - _02230BFA - 2 ; case 1
	.short _02230C90 - _02230BFA - 2 ; case 2
	.short _02230CCA - _02230BFA - 2 ; case 3
_02230C02:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230C34
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x54]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	b _02230CE2
_02230C34:
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #5
	str r0, [r4, #0x4c]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	mov r3, #1
	bl ov12_02225E68
	b _02230CE2
_02230C52:
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02225DA0
	ldr r1, [r4, #0x38]
	add r5, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	bl sub_0200D79C
	cmp r5, #0
	bne _02230CE2
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _02230C88
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x50]
	add r0, #0x38
	mov r3, #4
	str r1, [r4, #0x50]
	bl ov12_02225D50
	b _02230CE2
_02230C88:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02230CE2
_02230C90:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230CC2
	add r0, r4, #0
	add r0, #0x14
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x54]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	b _02230CE2
_02230CC2:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02230CE2
_02230CCA:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
_02230CE2:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02230BE0

	thumb_func_start ov12_02230CEC
ov12_02230CEC: ; 0x02230CEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x58
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022234A8
	cmp r0, #1
	bne _02230D2C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x54]
	neg r6, r7
	b _02230D32
_02230D2C:
	mov r0, #1
	str r0, [r4, #0x54]
	add r6, r7, #0
_02230D32:
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov12_022258E0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	mov r1, #2
	str r0, [r4, #0x10]
	bl sub_0200D6A4
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_0200D4C4
	mov r1, #0x28
	mul r1, r7
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	asr r1, r1, #0x10
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0xb
	mvn r1, r1
	mul r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x10]
	asr r1, r1, #0x10
	mov r2, #0xc
	bl sub_0200D7E0
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	ldr r0, [r4, #0x10]
	bne _02230DC4
	mov r1, #1
	bl sub_0200D364
	b _02230DCA
_02230DC4:
	mov r1, #0
	bl sub_0200D364
_02230DCA:
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xa
	add r0, #0x14
	mov r1, #1
	add r3, r2, #0
	bl ov12_02225E68
	cmp r6, #0
	blt _02230DF2
	add r0, r4, #0
	ldr r1, _02230E14 ; =0x0000FF48
	ldr r2, _02230E18 ; =0x0000E38D
	add r0, #0x38
	mov r3, #4
	bl ov12_02225D50
	ldr r0, _02230E14 ; =0x0000FF48
	b _02230E02
_02230DF2:
	add r0, r4, #0
	ldr r2, _02230E1C ; =0x00001C71
	add r0, #0x38
	mov r1, #0
	mov r3, #4
	bl ov12_02225D50
	mov r0, #0
_02230E02:
	str r0, [r4, #0x50]
	ldr r0, [r4, #0]
	ldr r1, _02230E20 ; =ov12_02230BE0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230E14: .word 0x0000FF48
_02230E18: .word 0x0000E38D
_02230E1C: .word 0x00001C71
_02230E20: .word ov12_02230BE0
	thumb_func_end ov12_02230CEC

	thumb_func_start ov12_02230E24
ov12_02230E24: ; 0x02230E24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	str r1, [r5, #0]
	add r6, r3, #0
	mov r3, #8
	mov r1, #0xa
	add r4, r2, #0
	add r0, r5, #4
	add r2, r1, #0
	str r3, [sp]
	bl ov12_02225E68
	mov r0, #3
	str r0, [r5, #0x2c]
	mov r0, #8
	str r0, [r5, #0x30]
	mov r0, #0xa
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0]
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02230E8C
	mov r2, #0xfe
	ldr r0, [r5, #0]
	ldr r1, _02230E98 ; =0xBF800000
	lsl r2, r2, #0x16
	bl sub_0200D6E8
_02230E8C:
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02230E98: .word 0xBF800000
	thumb_func_end ov12_02230E24

	thumb_func_start ov12_02230E9C
ov12_02230E9C: ; 0x02230E9C
	ldr r3, _02230EA4 ; =sub_0200D0F4
	ldr r0, [r0, #0]
	bx r3
	nop
_02230EA4: .word sub_0200D0F4
	thumb_func_end ov12_02230E9C

	thumb_func_start ov12_02230EA8
ov12_02230EA8: ; 0x02230EA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D390
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02230EA8

	thumb_func_start ov12_02230EC0
ov12_02230EC0: ; 0x02230EC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r4, #4
	bl ov12_02225EB8
	cmp r0, #1
	bne _02230F04
	add r0, r4, #4
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02230EF6
	ldr r1, [sp, #8]
	mov r0, #0
	bl _f_sub
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r4, #0]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	b _02230F36
_02230EF6:
	mov r2, #0xfe
	ldr r0, [r4, #0]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	b _02230F36
_02230F04:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ble _02230F30
	sub r0, r0, #1
	str r0, [r4, #0x2c]
	mov r0, #8
	str r0, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [r4, #0x34]
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	add r0, r4, #4
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	b _02230F36
_02230F30:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02230F36:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov12_02230EC0

	thumb_func_start ov12_02230F3C
ov12_02230F3C: ; 0x02230F3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _02231008
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230F54: ; jump table
	.short _02230F5C - _02230F54 - 2 ; case 0
	.short _02230F8E - _02230F54 - 2 ; case 1
	.short _02230FAC - _02230F54 - 2 ; case 2
	.short _02230FCC - _02230F54 - 2 ; case 3
_02230F5C:
	ldr r0, [r4, #0x10]
	cmp r0, #4
	blt _02230F86
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r4, #0
	mov r0, #0x38
	add r2, #0x44
	mul r0, r1
	add r0, r2, r0
	bl ov12_02230EA8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #4
	blt _02230F86
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_02230F86:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02231008
_02230F8E:
	mov r1, #0x1c
	mov r2, #0x1e
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x18]
	add r0, #0x20
	bl ov12_0222619C
	cmp r0, #0
	bne _02231008
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231008
_02230FAC:
	add r6, r4, #0
	mov r5, #0
	add r6, #0x44
_02230FB2:
	add r0, r6, #0
	bl ov12_02230EC0
	add r5, r5, #1
	add r6, #0x38
	cmp r5, #4
	blt _02230FB2
	cmp r0, #0
	bne _02231008
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231008
_02230FCC:
	mov r2, #0x1c
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x1e
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02007DEC
	add r5, r4, #0
	mov r6, #0
	add r5, #0x44
_02230FEA:
	add r0, r5, #0
	bl ov12_02230E9C
	add r6, r6, #1
	add r5, #0x38
	cmp r6, #4
	blt _02230FEA
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02231008:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02230F3C

	thumb_func_start ov12_02231010
ov12_02231010: ; 0x02231010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r1, [sp, #4]
	mov r1, #0x4a
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl ov12_02235E50
	add r7, r0, #0
	ldr r0, [sp, #4]
	str r4, [r7, #0]
	str r0, [r7, #4]
	ldr r0, [sp, #8]
	str r0, [r7, #8]
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r7, #0]
	bl ov12_022232FC
	str r0, [r7, #0x18]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r7, #0x1c]
	ldr r0, [r7, #0x18]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r7, #0x1e]
	add r0, r7, #0
	mov r3, #1
	add r0, #0x20
	mov r1, #4
	mov r2, #0
	str r3, [sp]
	bl ov12_02226108
	mov r0, #0x1e
	ldrsh r4, [r7, r0]
	ldr r1, [r7, #0]
	add r0, sp, #0x14
	add r4, #0x10
	mov r5, #0
	bl ov12_0222329C
	add r0, r5, #0
	add r6, r7, #0
	str r0, [sp, #0x10]
	add r6, #0x44
_0223107A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02231094
	str r5, [sp]
	mov r2, #0x1c
	lsl r3, r4, #0x10
	ldrsh r2, [r7, r2]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	asr r3, r3, #0x10
	bl ov12_02230E24
	b _022310B0
_02231094:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x14
	bl sub_0200CE6C
	lsl r3, r4, #0x10
	add r1, r0, #0
	str r5, [sp]
	mov r2, #0x1c
	ldrsh r2, [r7, r2]
	add r0, r6, #0
	asr r3, r3, #0x10
	bl ov12_02230E24
_022310B0:
	mov r0, #1
	eor r5, r0
	ldr r0, [sp, #0x10]
	sub r4, #0xa
	add r0, r0, #1
	add r6, #0x38
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0223107A
	ldr r0, [r7, #0]
	ldr r1, _022310D0 ; =ov12_02230F3C
	add r2, r7, #0
	bl ov12_022201E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022310D0: .word ov12_02230F3C
	thumb_func_end ov12_02231010

	thumb_func_start ov12_022310D4
ov12_022310D4: ; 0x022310D4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #6
	bls _022310E4
	b _02231296
_022310E4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022310F0: ; jump table
	.short _022310FE - _022310F0 - 2 ; case 0
	.short _02231140 - _022310F0 - 2 ; case 1
	.short _022311A0 - _022310F0 - 2 ; case 2
	.short _022311E0 - _022310F0 - 2 ; case 3
	.short _02231200 - _022310F0 - 2 ; case 4
	.short _0223123E - _022310F0 - 2 ; case 5
	.short _0223127E - _022310F0 - 2 ; case 6
_022310FE:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231120
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231120:
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0x18
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x18
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02231140:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231162
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231162:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	mov r1, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r4, #0x3c]
	add r0, r4, #0
	lsl r2, r2, #5
	neg r2, r2
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	add r3, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022311A0:
	add r0, r4, #0
	ldr r2, [r4, #0x48]
	add r0, #0x4c
	add r1, #0x70
	bl ov12_02225D2C
	cmp r0, #0
	bne _02231296
	mov r0, #0x46
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0x44
	str r0, [sp]
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	mov r3, #0x14
	add r1, #0x70
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _022312A0 ; =0xFFFE0000
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x4c
	bl ov12_02225C98
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_022311E0:
	add r0, r4, #0
	ldr r2, [r4, #0x48]
	add r0, #0x4c
	add r1, #0x70
	bl ov12_02225D2C
	cmp r0, #0
	bne _02231296
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_02231200:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _02231220
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	b _02231296
_02231220:
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r1, #0x18
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x18
	add r3, r2, #0
	bl ov12_02225BC8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_0223123E:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _0223125E
	mov r2, #0x14
	mov r3, #0x16
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225A18
	b _02231296
_0223125E:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231296
_0223127E:
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02231296:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022312A0: .word 0xFFFE0000
	thumb_func_end ov12_022310D4

	thumb_func_start ov12_022312A4
ov12_022312A4: ; 0x022312A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0x94
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp, #0x10]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x16]
	mov r1, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r4, #0x3c]
	add r0, r4, #0
	lsl r2, r2, #4
	neg r2, r2
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	add r3, r1, #0
	bl ov12_02225BC8
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x40]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x44
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #1
	str r6, [r4, #0x48]
	bl sub_0200D390
	ldr r0, [r4, #0x48]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl sub_0200D460
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0x14
	str r0, [sp]
	mov r0, #0x46
	ldrsh r0, [r4, r0]
	mov r3, #0x44
	add r1, #0x70
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x4c
	bl ov12_02225C98
	ldr r0, [r4, #0]
	ldr r1, _0223138C ; =ov12_022310D4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223138C: .word ov12_022310D4
	thumb_func_end ov12_022312A4

	thumb_func_start ov12_02231390
ov12_02231390: ; 0x02231390
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0223143A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022313AA: ; jump table
	.short _022313B2 - _022313AA - 2 ; case 0
	.short _022313DE - _022313AA - 2 ; case 1
	.short _02231402 - _022313AA - 2 ; case 2
	.short _02231428 - _022313AA - 2 ; case 3
_022313B2:
	mov r2, #0x1a
	ldrsh r3, [r4, r2]
	mov r2, #0x68
	ldrsh r2, [r4, r2]
	mov r1, #0x18
	ldrsh r1, [r4, r1]
	sub r2, r3, r2
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldr r3, [r4, #0x14]
	add r0, #0x1c
	asr r2, r2, #0x10
	bl ov12_02225B78
	cmp r0, #0
	bne _0223143A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [r4, #0xc]
	b _0223143A
_022313DE:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bpl _0223143A
	ldr r0, [r4, #8]
	mov r2, #0x10
	add r0, r0, #1
	str r0, [r4, #8]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	b _0223143A
_02231402:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226454
	cmp r0, #0
	beq _0223143A
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223143A
_02231428:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, pc}
_0223143A:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02231390

	thumb_func_start ov12_02231444
ov12_02231444: ; 0x02231444
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x6c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x68
	strh r0, [r1]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	mov r1, #0
	add r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0]
	bl ov12_022202C0
	str r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	mov r2, #0x10
	bl ov12_022263A4
	ldr r0, [r4, #0]
	mov r1, #0x10
	mov r2, #0
	bl ov12_02235780
	mov r1, #0x10
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x40
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0x28]
	add r2, r4, #0
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x28]
	ldr r0, [r4, #0]
	ldr r1, _02231504 ; =ov12_02231390
	bl ov12_022201E8
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231504: .word ov12_02231390
	thumb_func_end ov12_02231444

	thumb_func_start ov12_02231508
ov12_02231508: ; 0x02231508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	mov r4, #0
	cmp r0, #0
	beq _0223151E
	cmp r0, #1
	beq _02231552
	cmp r0, #2
	beq _0223157E
	b _02231580
_0223151E:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #0
	beq _02231538
	mov r2, #0x16
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	b _02231580
_02231538:
	ldr r0, [r5, #0x38]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r5, #0x38]
	mov r0, #0xc
	add r5, #0x14
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov12_02225E68
	b _02231580
_02231552:
	add r0, r5, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _0223156C
	mov r2, #0x16
	ldrsh r2, [r5, r2]
	mov r1, #0xd
	bl sub_02007DEC
	b _02231580
_0223156C:
	mov r1, #0xd
	add r2, r1, #0
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r5, #0x38]
	add r0, r0, #1
	str r0, [r5, #0x38]
	b _02231580
_0223157E:
	mov r4, #1
_02231580:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231508

	thumb_func_start ov12_02231584
ov12_02231584: ; 0x02231584
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	mov r4, #0
	cmp r0, #0
	beq _0223159C
	cmp r0, #1
	beq _022315E2
	cmp r0, #2
	beq _022315FE
	b _02231600
_0223159C:
	add r0, r5, #0
	ldr r1, [r5, #0x3c]
	add r0, #0x44
	bl ov12_022260A8
	add r0, r5, #0
	add r0, #0x68
	bl ov12_02225C14
	cmp r0, #0
	beq _022315C6
	mov r2, #0xb4
	mov r3, #0xb6
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r5, #0x3c]
	add r0, #0x68
	bl ov12_022259DC
	b _02231600
_022315C6:
	ldr r0, [r5, #0x40]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r5, #0x40]
	str r1, [sp]
	mov r0, #8
	add r5, #0x8c
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xe
	bl ov12_02226424
	b _02231600
_022315E2:
	add r0, r5, #0
	add r0, #0x8c
	bl ov12_02226454
	cmp r0, #0
	beq _02231600
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x40]
	add r0, r0, #1
	str r0, [r5, #0x40]
	b _02231600
_022315FE:
	mov r4, #1
_02231600:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02231584

	thumb_func_start ov12_02231608
ov12_02231608: ; 0x02231608
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223161A
	cmp r0, #1
	beq _02231632
	b _02231648
_0223161A:
	add r0, r4, #0
	bl ov12_02231508
	add r0, r4, #0
	bl ov12_02231584
	cmp r0, #0
	beq _02231648
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231648
_02231632:
	ldr r0, [r4, #0x3c]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02231648:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231608

	thumb_func_start ov12_02231650
ov12_02231650: ; 0x02231650
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0xb8
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	str r5, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02225964
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222598C
	add r5, r0, #0
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0x10]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x14
	add r2, r1, #0
	mov r3, #0xf
	bl ov12_02225E68
	ldr r0, [sp, #8]
	mov r1, #1
	str r0, [r4, #0x3c]
	bl sub_0200D390
	ldr r0, [r4, #0x3c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x3c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [sp, #0xc]
	lsl r0, r0, #5
	add r1, r7, r0
	add r0, r4, #0
	add r0, #0xb4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xb6
	strh r6, [r0]
	cmp r5, #0
	bge _02231706
	mov r1, #7
	b _02231708
_02231706:
	mov r1, #0x17
_02231708:
	mvn r1, r1
	add r0, r1, #0
	mul r0, r5
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x68
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x44
	mov r1, #5
	mov r2, #0xa
	mov r3, #0xc
	bl ov12_02225E68
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, _02231758 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, #0]
	ldr r1, _0223175C ; =ov12_02231608
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231758: .word 0x04000050
_0223175C: .word ov12_02231608
	thumb_func_end ov12_02231650

	thumb_func_start ov12_02231760
ov12_02231760: ; 0x02231760
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x68]
	cmp r1, #5
	bhi _02231814
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02231776: ; jump table
	.short _02231782 - _02231776 - 2 ; case 0
	.short _02231798 - _02231776 - 2 ; case 1
	.short _022317B2 - _02231776 - 2 ; case 2
	.short _022317CC - _02231776 - 2 ; case 3
	.short _022317E6 - _02231776 - 2 ; case 4
	.short _022317FC - _02231776 - 2 ; case 5
_02231782:
	mov r2, #0x28
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231798:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317B2:
	mov r1, #0x50
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, #0x18
	sub r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317CC:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317E6:
	mov r2, #0x50
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022317FC:
	mov r2, #0x27
	mvn r2, r2
	str r2, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x18
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231814:
	bl GF_AssertFail
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_02231760

	thumb_func_start ov12_0223181C
ov12_0223181C: ; 0x0223181C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0223182C
	b _02231940
_0223182C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231838: ; jump table
	.short _02231842 - _02231838 - 2 ; case 0
	.short _0223185E - _02231838 - 2 ; case 1
	.short _022318E0 - _02231838 - 2 ; case 2
	.short _02231916 - _02231838 - 2 ; case 3
	.short _02231928 - _02231838 - 2 ; case 4
_02231842:
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	cmp r0, #4
	ble _02231940
	add r0, r4, #0
	bl ov12_02231760
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x6c]
	b _02231940
_0223185E:
	add r0, r4, #0
	add r0, #0x18
	bl ov12_02225C14
	cmp r0, #0
	beq _0223187E
	mov r2, #0x64
	mov r3, #0x66
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022259DC
	b _02231940
_0223187E:
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #6
	bge _022318AE
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	mov r0, #0x66
	ldrsh r1, [r4, r0]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	b _02231940
_022318AE:
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	bl sub_0200D810
	mov r1, #0x10
	add r0, r4, #0
	mov r2, #0
	str r1, [sp]
	add r0, #0x3c
	add r3, r2, #0
	str r1, [sp, #4]
	bl ov12_02226424
	ldr r0, _0223194C ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #0xa
	add r3, r1, #0
	bl sub_020086FC
	b _02231940
_022318E0:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _022318F4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
_022318F4:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _02231940
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, _0223194C ; =0x00007FFF
	mov r1, #0xa
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r3, r2, #0
	bl sub_020086FC
	b _02231940
_02231916:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _02231940
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231940
_02231928:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02231940:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223194C: .word 0x00007FFF
	thumb_func_end ov12_0223181C

	thumb_func_start ov12_02231950
ov12_02231950: ; 0x02231950
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x70
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	str r6, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x64
	add r2, #0x66
	bl sub_0200D550
	ldr r0, [r4, #0]
	ldr r1, _022319A8 ; =ov12_0223181C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022319A8: .word ov12_0223181C
	thumb_func_end ov12_02231950

	thumb_func_start ov12_022319AC
ov12_022319AC: ; 0x022319AC
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x50]
	cmp r1, #3
	bhi _02231A2E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022319C2: ; jump table
	.short _022319CA - _022319C2 - 2 ; case 0
	.short _022319E0 - _022319C2 - 2 ; case 1
	.short _022319FA - _022319C2 - 2 ; case 2
	.short _02231A14 - _022319C2 - 2 ; case 3
_022319CA:
	mov r2, #0x50
	str r2, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022319E0:
	mov r1, #0x4f
	mvn r1, r1
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_022319FA:
	mov r1, #0x50
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, #0x28
	sub r2, #0x50
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231A14:
	mov r1, #0x27
	mvn r1, r1
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x28
	mov r2, #0x28
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_02231A2E:
	bl GF_AssertFail
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022319AC

	thumb_func_start ov12_02231A38
ov12_02231A38: ; 0x02231A38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #6
	bhi _02231B42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231A52: ; jump table
	.short _02231A60 - _02231A52 - 2 ; case 0
	.short _02231A7C - _02231A52 - 2 ; case 1
	.short _02231AE8 - _02231A52 - 2 ; case 2
	.short _02231B44 - _02231A52 - 2 ; case 3
	.short _02231BA6 - _02231A52 - 2 ; case 4
	.short _02231BC6 - _02231A52 - 2 ; case 5
	.short _02231BF4 - _02231A52 - 2 ; case 6
_02231A60:
	ldr r0, [r4, #0x54]
	add r0, r0, #1
	str r0, [r4, #0x54]
	cmp r0, #1
	ble _02231B42
	add r0, r4, #0
	bl ov12_022319AC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x54]
	b _02231C0C
_02231A7C:
	add r0, r4, #0
	add r0, #0x28
	bl ov12_02225C14
	cmp r0, #0
	beq _02231A9C
	mov r2, #0x4c
	mov r3, #0x4e
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #0x24]
	add r0, #0x28
	bl ov12_022259DC
	b _02231C0C
_02231A9C:
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
	cmp r0, #4
	bge _02231ACC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x4c
	ldrsh r1, [r4, r0]
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	mov r0, #0x4e
	ldrsh r1, [r4, r0]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	b _02231C0C
_02231ACC:
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x24]
	bl sub_0200D364
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_0200D390
	b _02231C0C
_02231AE8:
	ldr r0, [r4, #0x54]
	sub r0, r0, #1
	str r0, [r4, #0x54]
	bpl _02231B42
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02231C18 ; =0x0000FFFF
	mov r1, #1
	lsl r2, r2, #0x10
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	sub r3, #9
	bl sub_02003178
	ldr r7, _02231C18 ; =0x0000FFFF
	mov r6, #0
	add r5, r4, #0
_02231B28:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02231B3A
	mov r1, #0xe
	mov r2, #0x10
	mov r3, #0
	str r7, [sp]
	bl sub_020086FC
_02231B3A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02231B28
_02231B42:
	b _02231C0C
_02231B44:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02231C0C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02231C18 ; =0x0000FFFF
	mov r1, #1
	lsl r2, r2, #0x10
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	sub r3, #9
	bl sub_02003178
	ldr r7, _02231C18 ; =0x0000FFFF
	mov r6, #0
	add r5, r4, #0
_02231B8A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02231B9C
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	str r7, [sp]
	bl sub_020086FC
_02231B9C:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02231B8A
	b _02231C0C
_02231BA6:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02231C0C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #0x54]
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0x58]
	b _02231C0C
_02231BC6:
	ldr r0, [r4, #0x54]
	sub r0, r0, #1
	str r0, [r4, #0x54]
	bpl _02231C0C
	mov r0, #4
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x50]
	sub r0, r0, #1
	str r0, [r4, #0x50]
	bpl _02231BE2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02231C0C
_02231BE2:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x58]
	bl sub_0200D3F4
	ldr r1, [r4, #0x58]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x58]
	b _02231C0C
_02231BF4:
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02231C0C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02231C18: .word 0x0000FFFF
	thumb_func_end ov12_02231A38

	thumb_func_start ov12_02231C1C
ov12_02231C1C: ; 0x02231C1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x5c
	add r4, r0, #0
	str r2, [sp, #4]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp, #4]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	str r0, [r6, #0x10]
	mov r4, #0
	add r5, r6, #0
_02231C4C:
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl ov12_022232FC
	str r0, [r5, #0x14]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02231C4C
	str r7, [r6, #0x24]
	add r0, r7, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r6, #0x24]
	mov r1, #1
	bl sub_0200D460
	add r1, r6, #0
	add r2, r6, #0
	ldr r0, [r6, #0x24]
	add r1, #0x4c
	add r2, #0x4e
	bl sub_0200D550
	mov r1, #0x4c
	ldrsh r2, [r6, r1]
	add r0, r6, #0
	add r0, #0x4c
	sub r2, #0x28
	strh r2, [r0]
	mov r2, #0x4e
	ldrsh r3, [r6, r2]
	add r0, r6, #0
	add r0, #0x4e
	sub r3, #0x28
	strh r3, [r0]
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r6, #0x24]
	bl sub_0200D4C4
	ldr r0, [r6, #0x24]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0xf
	mvn r0, r0
	str r0, [r6, #0x54]
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, _02231CCC ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	ldr r0, [r6, #0]
	ldr r1, _02231CD0 ; =ov12_02231A38
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02231CCC: .word 0x04000050
_02231CD0: .word ov12_02231A38
	thumb_func_end ov12_02231C1C

	thumb_func_start ov12_02231CD4
ov12_02231CD4: ; 0x02231CD4
	push {r3, r4, r5, lr}
	ldr r2, _02231D14 ; =0x00000AAA
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0x10
	mov r1, #0
	mov r3, #3
	bl ov12_02225D78
	cmp r5, #0
	beq _02231D00
	mov r0, #0
	ldr r1, [r4, #0x18]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0x10
	bl sub_02007DEC
	b _02231D0C
_02231D00:
	mov r1, #0xa
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x1a
	bl sub_02007DEC
_02231D0C:
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231D14: .word 0x00000AAA
	thumb_func_end ov12_02231CD4

	thumb_func_start ov12_02231D18
ov12_02231D18: ; 0x02231D18
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r5, #0
	cmp r0, #3
	bhi _02231E22
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231D32: ; jump table
	.short _02231D3A - _02231D32 - 2 ; case 0
	.short _02231D7A - _02231D32 - 2 ; case 1
	.short _02231DD6 - _02231D32 - 2 ; case 2
	.short _02231E20 - _02231D32 - 2 ; case 3
_02231D3A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
	ldr r0, [r4, #0x50]
	sub r0, r0, #1
	str r0, [r4, #0x50]
	bpl _02231E22
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r0, r3, #2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	add r4, #0x24
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_02225BC8
	b _02231E22
_02231D7A:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	cmp r0, #0
	beq _02231D90
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
_02231D90:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x24
	bl ov12_02225C74
	cmp r0, #0
	bne _02231E22
	ldr r0, [r4, #0x4c]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x10
	asr r1, r1, #0x10
	mov r3, #3
	bl ov12_02225D78
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	mov r0, #2
	add r4, #0x24
	str r3, [sp]
	add r3, r3, #2
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	b _02231E22
_02231DD6:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x24
	bl ov12_02225C74
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225DC8
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _02231DF8
	ldr r2, [r4, #0x10]
	mov r1, #9
	bl sub_02007DEC
	b _02231E22
_02231DF8:
	mov r2, #0xc
	ldrsh r2, [r4, r2]
	add r1, r5, #0
	bl sub_02007DEC
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #9
	add r2, r5, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	b _02231E22
_02231E20:
	mov r5, #1
_02231E22:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231D18

	thumb_func_start ov12_02231E28
ov12_02231E28: ; 0x02231E28
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02231E3A
	cmp r0, #1
	beq _02231E6C
	pop {r4, pc}
_02231E3A:
	add r0, r4, #0
	bl ov12_02231D18
	cmp r0, #0
	beq _02231E7A
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	cmp r0, #4
	bge _02231E64
	ldr r1, [r4, #0x54]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	str r1, [r4, #0x54]
	bl ov12_02231CD4
	add r0, r4, #0
	bl ov12_02231D18
	pop {r4, pc}
_02231E64:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02231E6C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02231E7A:
	pop {r4, pc}
	thumb_func_end ov12_02231E28

	thumb_func_start ov12_02231E7C
ov12_02231E7C: ; 0x02231E7C
	push {r4, r5, r6, lr}
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02225964
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	bne _02231EC8
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	b _02231EE8
_02231EC8:
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
_02231EE8:
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x32
	bl sub_02007DEC
	cmp r6, #1
	bne _02231EFC
	mov r0, #0
	b _02231EFE
_02231EFC:
	mov r0, #1
_02231EFE:
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ov12_02231CD4
	ldr r0, [r4, #4]
	ldr r1, _02231F14 ; =ov12_02231E28
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231F14: .word ov12_02231E28
	thumb_func_end ov12_02231E7C

	thumb_func_start ov12_02231F18
ov12_02231F18: ; 0x02231F18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	mov r5, #0
	cmp r0, #3
	bhi _02231FD4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231F30: ; jump table
	.short _02231F38 - _02231F30 - 2 ; case 0
	.short _02231F68 - _02231F30 - 2 ; case 1
	.short _02231F8A - _02231F30 - 2 ; case 2
	.short _02231FBA - _02231F30 - 2 ; case 3
_02231F38:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	cmp r0, #0
	beq _02231F60
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226024
	b _02231FD4
_02231F60:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _02231FD4
_02231F68:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _02231FD4
	ldr r0, [r4, #0x38]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r4, #0x38]
	mov r0, #8
	add r4, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov12_02225E68
	b _02231FD4
_02231F8A:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov12_022260C8
	cmp r0, #0
	beq _02231FB2
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02226024
	b _02231FD4
_02231FB2:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _02231FD4
_02231FBA:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	mov r5, #1
_02231FD4:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02231F18

	thumb_func_start ov12_02231FD8
ov12_02231FD8: ; 0x02231FD8
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02231FEE
	cmp r0, #1
	beq _02232004
	cmp r0, #2
	beq _02232014
	pop {r4, pc}
_02231FEE:
	add r0, r4, #0
	bl ov12_02231F18
	cmp r0, #0
	beq _02232022
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x10
	str r0, [r4, #8]
	pop {r4, pc}
_02232004:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _02232022
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_02232014:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_02232022:
	pop {r4, pc}
	thumb_func_end ov12_02231FD8

	thumb_func_start ov12_02232024
ov12_02232024: ; 0x02232024
	push {r3, r4, r5, lr}
	mov r1, #0x44
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x10
	add r2, r1, #0
	mov r3, #0xf
	bl ov12_02225E68
	mov r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	str r0, [r4, #0x40]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0]
	ldr r1, _02232080 ; =ov12_02231FD8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02232080: .word ov12_02231FD8
	thumb_func_end ov12_02232024

	thumb_func_start ov12_02232084
ov12_02232084: ; 0x02232084
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r1, #0x64
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, [r5, #0x78]
	mov r1, #0x64
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [r5, #0x70]
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r4, #0x10
	lsl r3, r6, #0x10
	add r0, #0x18
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r5, #0]
	mov r1, #0x10
	mov r2, #0
	bl ov12_02235780
	ldr r0, [r5, #0x70]
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #6
	str r1, [sp]
	lsl r0, r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0
	bl ov12_02226424
	mov r0, #0
	str r0, [r5, #0x64]
	str r0, [r5, #0x68]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02232084

	thumb_func_start ov12_022320EC
ov12_022320EC: ; 0x022320EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	mov r5, #0
	cmp r0, #3
	bhi _022321C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232104: ; jump table
	.short _0223210C - _02232104 - 2 ; case 0
	.short _02232152 - _02232104 - 2 ; case 1
	.short _022321A8 - _02232104 - 2 ; case 2
	.short _022321BE - _02232104 - 2 ; case 3
_0223210C:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _022321C0
	ldr r0, [r4, #0x78]
	mov r1, #0x64
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [r4, #0x74]
	mov r1, #0x64
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [r4, #0x70]
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r6, #0x10
	lsl r3, r7, #0x10
	add r0, #0x18
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_02232152:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x18
	bl ov12_022260A8
	cmp r0, #0
	bne _022321C0
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	bge _022321A0
	add r0, r5, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x74]
	mov r1, #0x64
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [r4, #0x78]
	mov r1, #0x64
	bl _s32_div_f
	add r7, r0, #0
	ldr r0, [r4, #0x70]
	mov r1, #0x64
	bl _s32_div_f
	lsl r1, r6, #0x10
	lsl r3, r7, #0x10
	add r4, #0x18
	str r0, [sp]
	add r0, r4, #0
	asr r1, r1, #0x10
	mov r2, #0xa
	asr r3, r3, #0x10
	bl ov12_02225E68
	b _022321C0
_022321A0:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_022321A8:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _022321C0
	ldr r0, [r4, #0x64]
	mov r5, #1
	add r0, r0, #1
	str r0, [r4, #0x64]
	b _022321C0
_022321BE:
	mov r5, #1
_022321C0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022320EC

	thumb_func_start ov12_022321C4
ov12_022321C4: ; 0x022321C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x7c]
	mov r4, #0
	cmp r1, #0
	beq _022321DA
	cmp r1, #1
	beq _022321EC
	cmp r1, #2
	beq _02232236
	b _02232238
_022321DA:
	bl ov12_02232084
	add r0, r5, #0
	bl ov12_022320EC
	ldr r0, [r5, #0x7c]
	add r0, r0, #1
	str r0, [r5, #0x7c]
	b _02232238
_022321EC:
	bl ov12_022320EC
	cmp r0, #0
	beq _02232238
	ldr r0, [r5, #0x6c]
	sub r0, r0, #1
	str r0, [r5, #0x6c]
	bmi _0223222C
	ldr r0, [r5, #0x70]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [r5, #0x70]
	sub r0, r1, r0
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x74]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [r5, #0x74]
	sub r0, r1, r0
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [r5, #0x78]
	sub r0, r1, r0
	str r0, [r5, #0x78]
	add r0, r4, #0
	str r0, [r5, #0x7c]
	b _02232238
_0223222C:
	ldr r0, [r5, #0x7c]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0x7c]
	b _02232238
_02232236:
	mov r4, #1
_02232238:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022321C4

	thumb_func_start ov12_0223223C
ov12_0223223C: ; 0x0223223C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0223224C
	b _0223236C
_0223224C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232258: ; jump table
	.short _02232262 - _02232258 - 2 ; case 0
	.short _022322A8 - _02232258 - 2 ; case 1
	.short _02232308 - _02232258 - 2 ; case 2
	.short _02232338 - _02232258 - 2 ; case 3
	.short _02232354 - _02232258 - 2 ; case 4
_02232262:
	add r0, r4, #0
	bl ov12_022321C4
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1e
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0200D364
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D390
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	bl sub_0200D6E8
	mov r1, #0
	mov r2, #0x10
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x3c
	add r3, r2, #0
	bl ov12_02226424
	b _0223236C
_022322A8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022322C6
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x10]
	b _022322CC
_022322C6:
	ble _022322CC
	sub r0, r0, #1
	str r0, [r4, #0x10]
_022322CC:
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	bne _022322F6
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _022322F6
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xd
	bl sub_0200AAE0
	mov r0, #1
	mvn r0, r0
	str r0, [r4, #0x10]
_022322F6:
	ldr r0, [r4, #0x14]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0223236C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223236C
_02232308:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov12_02235780
	mov r1, #0x10
	mov r2, #0
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x3c
	add r3, r2, #0
	bl ov12_02226424
	b _0223236C
_02232338:
	add r0, r4, #0
	add r0, #0x3c
	bl ov12_02226454
	cmp r0, #0
	beq _0223236C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223236C
_02232354:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_0223236C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223223C

	thumb_func_start ov12_02232378
ov12_02232378: ; 0x02232378
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x80
	add r6, r0, #0
	str r2, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r5, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl sub_0200D3CC
	mov r0, #3
	str r0, [r4, #0x6c]
	mov r0, #0x19
	lsl r0, r0, #4
	str r0, [r4, #0x70]
	ldr r0, _022323DC ; =0x000005DC
	ldr r1, _022323E0 ; =ov12_0223223C
	str r0, [r4, #0x74]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x78]
	ldr r0, [r4, #0]
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022323DC: .word 0x000005DC
_022323E0: .word ov12_0223223C
	thumb_func_end ov12_02232378

	thumb_func_start ov12_022323E4
ov12_022323E4: ; 0x022323E4
	push {r3, lr}
	sub sp, #8
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bhi _0223242C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022323FA: ; jump table
	.short _02232402 - _022323FA - 2 ; case 0
	.short _0223241A - _022323FA - 2 ; case 1
	.short _02232402 - _022323FA - 2 ; case 2
	.short _0223241A - _022323FA - 2 ; case 3
_02232402:
	mov r1, #0x20
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #0
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225BC8
	add sp, #8
	pop {r3, pc}
_0223241A:
	mov r1, #0
	str r1, [sp]
	mov r2, #6
	str r2, [sp, #4]
	add r0, #0x10
	add r2, r1, #0
	mov r3, #0x20
	bl ov12_02225BC8
_0223242C:
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_022323E4

	thumb_func_start ov12_02232430
ov12_02232430: ; 0x02232430
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02232446
	cmp r0, #1
	beq _02232454
	cmp r0, #2
	beq _0223248C
	pop {r4, pc}
_02232446:
	add r0, r4, #0
	bl ov12_022323E4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232454:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	beq _02232474
	mov r2, #0xc
	mov r3, #0xe
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r4, #8]
	add r0, #0x10
	bl ov12_02225A18
	pop {r4, pc}
_02232474:
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #4
	bge _02232484
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
_02232484:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0223248C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02232430

	thumb_func_start ov12_0223249C
ov12_0223249C: ; 0x0223249C
	push {r3, r4, r5, lr}
	mov r1, #0x38
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r1, _022324DC ; =ov12_02232430
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022324DC: .word ov12_02232430
	thumb_func_end ov12_0223249C

	thumb_func_start ov12_022324E0
ov12_022324E0: ; 0x022324E0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _02232542
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022324FA: ; jump table
	.short _02232508 - _022324FA - 2 ; case 0
	.short _02232526 - _022324FA - 2 ; case 1
	.short _0223259E - _022324FA - 2 ; case 2
	.short _022325E2 - _022324FA - 2 ; case 3
	.short _02232620 - _022324FA - 2 ; case 4
	.short _02232668 - _022324FA - 2 ; case 5
	.short _02232698 - _022324FA - 2 ; case 6
_02232508:
	add r0, r4, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0x40
	bl ov12_022263A4
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #8]
	add sp, #8
	mul r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232526:
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	mov r1, #0x10
	add r0, r4, #0
	add r2, #8
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0xc]
	add r0, #0x14
	asr r2, r2, #0x10
	bl ov12_02225BA0
	cmp r0, #0
	beq _02232544
_02232542:
	b _022326A6
_02232544:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r3, #0
	mov r0, #2
	add r2, r1, #0
	str r3, [sp]
	add r2, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x14
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #8]
	mul r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0223259E:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	cmp r0, #0
	beq _022325BA
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_022325BA:
	mov r0, #0x3c
	ldrsh r1, [r4, r0]
	mov r3, #0
	mov r0, #2
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #8]
	add r0, r4, #0
	lsl r2, r2, #5
	add r2, r1, r2
	lsl r2, r2, #0x10
	add r0, #0x40
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022325E2:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	beq _022325FE
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_022325FE:
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0x14
	mov r2, #0x10
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x14
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232620:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225C14
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _0223263C
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_0223263C:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0x40
	mov r2, #0x3c
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, #0x40
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232668:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	ldr r0, [r4, #0x38]
	beq _02232684
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, pc}
_02232684:
	mov r2, #0x3c
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02232698:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_022326A6:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_022324E0

	thumb_func_start ov12_022326AC
ov12_022326AC: ; 0x022326AC
	push {r3, r4, r5, lr}
	mov r1, #0x64
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02225964
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x12]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x38]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #4]
	ldr r1, _0223271C ; =ov12_022324E0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0223271C: .word ov12_022324E0
	thumb_func_end ov12_022326AC

	thumb_func_start ov12_02232720
ov12_02232720: ; 0x02232720
	push {lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [r0, #0x40]
	mov r1, #8
	str r1, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	add r0, #0x1c
	mov r2, #9
	add r3, r1, #0
	bl ov12_02225EF0
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov12_02232720

	thumb_func_start ov12_02232744
ov12_02232744: ; 0x02232744
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r5, #0
	cmp r0, #3
	bhi _02232836
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223275E: ; jump table
	.short _02232766 - _0223275E - 2 ; case 0
	.short _022327AC - _0223275E - 2 ; case 1
	.short _022327EE - _0223275E - 2 ; case 2
	.short _02232834 - _0223275E - 2 ; case 3
_02232766:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _0223278A
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_0223278A:
	ldr r0, [r4, #0x40]
	mov r1, #9
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	add r4, #0x1c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0xb
	mov r3, #8
	bl ov12_02225EF0
	b _02232836
_022327AC:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _022327D0
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_022327D0:
	ldr r0, [r4, #0x40]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r4, #0x40]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #2
	add r4, #0x1c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #0xf
	bl ov12_02225EF0
	b _02232836
_022327EE:
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x1c
	bl ov12_022260E8
	cmp r0, #0
	beq _02232812
	add r0, r5, #0
	str r0, [sp]
	mov r1, #0x44
	mov r2, #0x46
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x30]
	bl ov12_02226024
	b _02232836
_02232812:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x40]
	mov r5, #1
	add r0, r0, #1
	str r0, [r4, #0x40]
	b _02232836
_02232834:
	mov r5, #1
_02232836:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02232744

	thumb_func_start ov12_0223283C
ov12_0223283C: ; 0x0223283C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0
	str r2, [r1, #0]
	add r5, r0, #0
	mov r1, #0x64
	bl sub_0200D474
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D460
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D3F4
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D3A4
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D364
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3CC
	mov r1, #0x37
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0200D34C
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223283C

	thumb_func_start ov12_02232888
ov12_02232888: ; 0x02232888
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	mov r4, #0
	cmp r1, #0
	beq _0223289A
	cmp r1, #1
	beq _022328AC
	b _022328B0
_0223289A:
	bl sub_0200D3B8
	cmp r0, #0
	bne _022328B2
	ldr r0, [r5, #0]
	mov r4, #1
	add r0, r0, #1
	str r0, [r5, #0]
	b _022328B2
_022328AC:
	mov r4, #1
	b _022328B2
_022328B0:
	mov r4, #1
_022328B2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02232888

	thumb_func_start ov12_022328B8
ov12_022328B8: ; 0x022328B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #5
	bls _022328C6
	b _022329D8
_022328C6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022328D2: ; jump table
	.short _022328DE - _022328D2 - 2 ; case 0
	.short _02232902 - _022328D2 - 2 ; case 1
	.short _0223293A - _022328D2 - 2 ; case 2
	.short _0223296A - _022328D2 - 2 ; case 3
	.short _02232990 - _022328D2 - 2 ; case 4
	.short _022329B6 - _022328D2 - 2 ; case 5
_022328DE:
	add r0, r6, #0
	bl ov12_02232720
	ldr r0, [r6, #0x10]
	add r1, r6, #0
	lsl r2, r0, #2
	add r0, r6, r2
	add r1, #0x60
	add r1, r1, r2
	mov r2, #2
	ldr r0, [r0, #0x48]
	lsl r2, r2, #0xc
	bl ov12_0223283C
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_02232902:
	add r0, r6, #0
	bl ov12_02232744
	add r4, r0, #0
	ldr r0, [r6, #0x10]
	add r1, r6, #0
	lsl r2, r0, #2
	add r0, r6, r2
	add r1, #0x60
	ldr r0, [r0, #0x48]
	add r1, r1, r2
	bl ov12_02232888
	cmp r4, r0
	bne _022329D8
	cmp r4, #1
	bne _022329D8
	ldr r0, [r6, #0x10]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x48]
	bl sub_0200D364
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_0223293A:
	ldr r0, [r6, #0x10]
	add r2, r6, #0
	add r2, #0x78
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	sub r0, r0, #1
	str r0, [r2, r1]
	ldr r1, [r6, #0x10]
	lsl r0, r1, #2
	add r0, r6, r0
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bge _022329D8
	add r0, r1, #1
	str r0, [r6, #0x10]
	cmp r0, #6
	bge _02232962
	mov r0, #0
	str r0, [r6, #0xc]
	b _022329D8
_02232962:
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_0223296A:
	add r4, r6, #0
	mov r7, #0
	add r4, #0x60
	add r5, r6, #0
_02232972:
	mov r2, #2
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl ov12_0223283C
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02232972
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_02232990:
	add r4, r6, #0
	mov r7, #0
	add r4, #0x60
	add r5, r6, #0
_02232998:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl ov12_02232888
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02232998
	cmp r0, #1
	bne _022329D8
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _022329D8
_022329B6:
	mov r5, #0
	add r4, r6, #0
_022329BA:
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _022329BA
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_022329D8:
	ldr r0, [r6, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022328B8

	thumb_func_start ov12_022329E0
ov12_022329E0: ; 0x022329E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r1, [sp]
	mov r1, #0x90
	add r4, r0, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov12_02235E50
	ldr r1, [sp]
	str r4, [r0, #0]
	str r1, [r0, #4]
	ldr r1, [sp, #4]
	str r0, [sp, #0x14]
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_022232FC
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x18]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_020080C0
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, #0x44
	str r0, [sp, #0xc]
	strh r0, [r1]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov12_02223354
	ldr r1, [sp, #0x14]
	add r1, #0x46
	strh r0, [r1]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x1c
	ldr r1, [r1, #0]
	bl ov12_0222329C
	ldr r5, [sp, #0x14]
	mov r4, #0
_02232A58:
	cmp r4, #0
	bne _02232A60
	ldr r0, [sp, #8]
	b _02232A6A
_02232A60:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x1c
	bl sub_0200CE6C
_02232A6A:
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x48]
	mov r1, #0
	bl sub_0200D3F4
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r1, r0, #1
	ldr r0, _02232B30 ; =0x00001555
	mov r2, #3
	mul r0, r1
	asr r0, r0, #4
	lsl r0, r0, #2
	ldr r1, _02232B34 ; =0x020F983C
	str r0, [sp, #0x18]
	add r1, r1, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r2, r2, #0x10
	mov r3, #0
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02232B38 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r6, r0, #0x10
	mov r2, #3
	ldr r1, _02232B34 ; =0x020F983C
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x10
	ldrsh r0, [r1, r0]
	mov r3, #0
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02232B38 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r0, r0, #4
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02232AF2
	add r0, r7, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_0200D7D4
	b _02232AF8
_02232AF2:
	sub r0, r7, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_02232AF8:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200D4C4
	cmp r4, #2
	bge _02232B12
	mov r0, #8
	b _02232B14
_02232B12:
	mov r0, #0
_02232B14:
	add r4, r4, #1
	str r0, [r5, #0x78]
	add r5, r5, #4
	cmp r4, #6
	blt _02232A58
	ldr r0, [sp, #0x14]
	ldr r1, _02232B3C ; =ov12_022328B8
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	bl ov12_022201E8
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232B30: .word 0x00001555
_02232B34: .word 0x020F983C
_02232B38: .word 0x00000000
_02232B3C: .word ov12_022328B8
	thumb_func_end ov12_022329E0

	thumb_func_start ov12_02232B40
ov12_02232B40: ; 0x02232B40
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bhi _02232B80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232B5A: ; jump table
	.short _02232B66 - _02232B5A - 2 ; case 0
	.short _02232B76 - _02232B5A - 2 ; case 1
	.short _02232BD6 - _02232B5A - 2 ; case 2
	.short _02232C32 - _02232B5A - 2 ; case 3
	.short _02232C62 - _02232B5A - 2 ; case 4
	.short _02232C86 - _02232B5A - 2 ; case 5
_02232B66:
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232B76:
	ldr r0, [r4, #0x5c]
	bl sub_0200D3B8
	cmp r0, #0
	beq _02232B82
_02232B80:
	b _02232C9E
_02232B82:
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	mov r3, #0
	bl ov12_02225E68
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	add r3, r0, #0
	mov r0, #0x8a
	ldrsh r0, [r4, r0]
	lsl r1, r5, #0x10
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r2, #0x88
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	add r0, #0x38
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	b _02232C9E
_02232BD6:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x38
	bl ov12_02225C74
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260C8
	cmp r0, #0
	bne _02232C9E
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D364
	mov r1, #1
	ldr r0, [r4, #0x5c]
	lsl r1, r1, #0xc
	bl sub_0200D3A4
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232C32:
	ldr r0, [r4, #0x5c]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02232C9E
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_0200D390
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r3, #0x8a
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x60
	add r2, r1, #0
	bl ov12_02225BC8
	b _02232C9E
_02232C62:
	add r0, r4, #0
	add r0, #0x60
	bl ov12_02225C14
	cmp r0, #0
	beq _02232C7E
	mov r1, #0x88
	mov r2, #0x62
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	bl sub_0200D4C4
	b _02232C9E
_02232C7E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02232C9E
_02232C86:
	ldr r0, [r4, #0x5c]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02232C9E:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02232B40

	thumb_func_start ov12_02232CA8
ov12_02232CA8: ; 0x02232CA8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x8c
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #6
	mov r2, #0
	str r0, [r4, #0x10]
	bl sub_02007DEC
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x88
	strh r0, [r1]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, r4, #0
	add r1, #0x8a
	strh r0, [r1]
	str r6, [r4, #0x5c]
	add r0, r6, #0
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0x88
	mov r2, #0x8a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	bl sub_0200D4C4
	ldr r0, [r4, #0]
	ldr r1, _02232D34 ; =ov12_02232B40
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232D34: .word ov12_02232B40
	thumb_func_end ov12_02232CA8

	thumb_func_start ov12_02232D38
ov12_02232D38: ; 0x02232D38
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	bl ov12_02225950
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0
	lsl r2, r2, #0x10
	add r4, #0xc4
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #8
	bl sub_02003A2C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02232D38

	thumb_func_start ov12_02232D64
ov12_02232D64: ; 0x02232D64
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r1, #0xa
	mov r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov12_02225EF0
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x4c
	add r2, r1, #0
	mov r3, #1
	bl ov12_02225E68
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _02232E00 ; =0x0223A1CC
	ldr r0, [r4, #0x20]
	ldrh r1, [r1, r2]
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232DE8
	ldr r1, [sp, #0x10]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #0x10]
_02232DE8:
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ov12_02232D38
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02232E00: .word 0x0223A1CC
	thumb_func_end ov12_02232D64

	thumb_func_start ov12_02232E04
ov12_02232E04: ; 0x02232E04
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	beq _02232E20
	cmp r0, #1
	beq _02232EA8
	cmp r0, #2
	bne _02232E1E
	b _02232F28
_02232E1E:
	b _02232F2A
_02232E20:
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r0, r5, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232E48
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl _f_sub
	str r0, [sp, #0x10]
_02232E48:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_0222605C
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _02232F2A
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r3, #0x14
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #4
	add r5, #0x28
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov12_02225EF0
	b _02232F2A
_02232EA8:
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r0, r5, #0
	add r0, #0x4c
	bl ov12_02225EB8
	cmp r0, #0
	beq _02232F06
	mov r0, #0x4c
	ldrsh r0, [r5, r0]
	add r1, sp, #0x10
	add r2, sp, #0xc
	strh r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232EE2
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl _f_sub
	str r0, [sp, #0x10]
_02232EE2:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_0222605C
	b _02232F2A
_02232F06:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200D3F4
	mov r4, #1
	b _02232F2A
_02232F28:
	mov r4, #1
_02232F2A:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov12_02232E04

	thumb_func_start ov12_02232F30
ov12_02232F30: ; 0x02232F30
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, sp, #0xc
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #8
	str r3, [sp]
	sub r3, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x70
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	mov r1, #2
	mov r3, #0x14
	bl ov12_02225EF0
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov12_02225FA4
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02232F98
	ldr r1, [sp, #0x14]
	mov r0, #0
	bl _f_sub
	str r0, [sp, #0x14]
_02232F98:
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_0200D6E8
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _02232FEC ; =0x0223A1CC
	ldr r0, [r4, #0x24]
	ldrh r1, [r1, r2]
	bl sub_0200D3F4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov12_02232D38
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_02232FEC: .word 0x0223A1CC
	thumb_func_end ov12_02232F30

	thumb_func_start ov12_02232FF0
ov12_02232FF0: ; 0x02232FF0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	beq _0223300A
	cmp r0, #1
	beq _0223303A
	cmp r0, #2
	beq _0223308C
	b _0223308E
_0223300A:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _0223308E
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223308E
_0223303A:
	add r0, r5, #0
	ldr r1, [r5, #0x1c]
	add r0, #0x70
	bl ov12_02225C50
	add r0, r5, #0
	add r0, #0x28
	bl ov12_02225F6C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x28
	add r1, sp, #4
	add r2, sp, #0
	bl ov12_02225FA4
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223306E
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl _f_sub
	str r0, [sp, #4]
_0223306E:
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200D6E8
	cmp r6, #0
	bne _0223308E
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	mov r4, #1
	b _0223308E
_0223308C:
	mov r4, #1
_0223308E:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02232FF0

	thumb_func_start ov12_02233094
ov12_02233094: ; 0x02233094
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #6
	bhi _0223316E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022330AE: ; jump table
	.short _022330BC - _022330AE - 2 ; case 0
	.short _022330E0 - _022330AE - 2 ; case 1
	.short _022330FA - _022330AE - 2 ; case 2
	.short _02233110 - _022330AE - 2 ; case 3
	.short _02233126 - _022330AE - 2 ; case 4
	.short _0223314C - _022330AE - 2 ; case 5
	.short _02233160 - _022330AE - 2 ; case 6
_022330BC:
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_02235780
	mov r2, #8
	str r2, [sp]
	add r0, r4, #0
	str r2, [sp, #4]
	add r0, #0x9c
	mov r1, #0
	mov r3, #0x10
	bl ov12_02226424
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_022330E0:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02226454
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov12_02232D64
	b _0223316E
_022330FA:
	add r0, r4, #0
	bl ov12_02232E04
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0223316E
_02233110:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bpl _0223316E
	add r0, r4, #0
	bl ov12_02232F30
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_02233126:
	add r0, r4, #0
	bl ov12_02232FF0
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	mov r1, #8
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x9c
	mov r2, #0
	add r3, r1, #0
	str r1, [sp, #4]
	bl ov12_02226424
	b _0223316E
_0223314C:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02226454
	cmp r0, #0
	beq _0223316E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223316E
_02233160:
	ldr r0, [r4, #0]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0223316E:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_02233094

	thumb_func_start ov12_02233178
ov12_02233178: ; 0x02233178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xd0
	add r6, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	add r0, r6, #0
	bl ov12_022202EC
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	add r7, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r7, #0
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [sp, #4]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r6, r0
	lsl r0, r0, #0x10
	str r5, [r4, #0x14]
	asr r6, r0, #0x10
	ldr r0, [r4, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r1, [sp]
	add r2, r5, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0x28
	bl sub_0200D7E0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov12_022234A8
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022234A8
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov12_022202C0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	ldr r1, _022332E4 ; =ov12_02233094
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022332E4: .word ov12_02233094
	thumb_func_end ov12_02233178

	thumb_func_start ov12_022332E8
ov12_022332E8: ; 0x022332E8
	push {r4, lr}
	sub sp, #0x20
	mov r2, #0xa
	add r4, r0, #0
	add r0, #0xf8
	mov r1, #0x19
	add r3, r2, #0
	str r2, [sp]
	bl ov12_02225E68
	mov r0, #0x3a
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r3, #0x38
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x44]
	ldr r2, _02233334 ; =ov12_02225EB8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, #0xf8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_022261C4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_02233334: .word ov12_02225EB8
	thumb_func_end ov12_022332E8

	thumb_func_start ov12_02233338
ov12_02233338: ; 0x02233338
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xf8
	add r2, r1, #0
	mov r3, #0x19
	bl ov12_02225E68
	mov r0, #0x3a
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r3, #0x38
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r2, _02233390 ; =ov12_02225EB8
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, #0xf8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_022261C4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D3F4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_02233390: .word ov12_02225EB8
	thumb_func_end ov12_02233338

	thumb_func_start ov12_02233394
ov12_02233394: ; 0x02233394
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _0223344C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022333AC: ; jump table
	.short _022333B6 - _022333AC - 2 ; case 0
	.short _022333C4 - _022333AC - 2 ; case 1
	.short _022333F2 - _022333AC - 2 ; case 2
	.short _02233416 - _022333AC - 2 ; case 3
	.short _0223342A - _022333AC - 2 ; case 4
_022333B6:
	add r0, r4, #0
	bl ov12_022332E8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223344C
_022333C4:
	add r0, r4, #0
	add r0, #0x48
	bl ov12_02226274
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0xc]
	mov r1, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	b _0223344C
_022333F2:
	mov r1, #0x38
	mov r2, #0x3a
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x14
	bl ov12_0222619C
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov12_02233338
	b _0223344C
_02233416:
	add r0, r4, #0
	add r0, #0x48
	bl ov12_02226274
	cmp r0, #0
	bne _0223344C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223344C
_0223342A:
	mov r6, #0
	add r5, r4, #0
_0223342E:
	ldr r0, [r5, #0x3c]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _0223342E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	pop {r3, r4, r5, r6, r7, pc}
_0223344C:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02233394

	thumb_func_start ov12_02233454
ov12_02233454: ; 0x02233454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	mov r1, #0x47
	lsl r1, r1, #2
	add r5, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [sp]
	str r6, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x38]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x3a]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0x3a
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0x3a]
	add r0, sp, #4
	add r1, r5, #0
	bl ov12_0222329C
	mov r6, #0
	add r5, r4, #0
_022334B0:
	cmp r6, #0
	bne _022334C0
	add r0, r7, #0
	mov r1, #1
	str r7, [r5, #0x3c]
	bl sub_0200D364
	b _022334D2
_022334C0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	mov r1, #1
	str r0, [r5, #0x3c]
	bl sub_0200D810
_022334D2:
	ldr r0, [r5, #0x3c]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0200D460
	mov r1, #0x38
	mov r2, #0x3a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x3c]
	bl sub_0200D4C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x3c]
	mov r1, #2
	bl sub_0200D6A4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _022334B0
	ldr r0, [r4, #0]
	ldr r1, _02233518 ; =ov12_02233394
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233518: .word ov12_02233394
	thumb_func_end ov12_02233454

	thumb_func_start ov12_0223351C
ov12_0223351C: ; 0x0223351C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r7, #0
	add r6, r5, #0
	str r1, [sp, #0x10]
	add r6, #0x30
	add r4, r7, #0
_0223352C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, _0223356C ; =0x00007FFF
	add r0, r6, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #0x38]
	add r7, r7, #1
	add r0, r0, r4
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #0x10]
	add r6, #0x24
	mul r0, r1
	str r0, [r5, #0x48]
	ldr r0, _02233570 ; =0x00002AAA
	add r5, #0x24
	add r4, r4, r0
	cmp r7, #6
	blt _0223352C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223356C: .word 0x00007FFF
_02233570: .word 0x00002AAA
	thumb_func_end ov12_0223351C

	thumb_func_start ov12_02233574
ov12_02233574: ; 0x02233574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x30
	str r0, [sp]
	add r5, r6, #0
	add r4, r6, #0
_0223358A:
	ldr r0, [sp]
	bl ov12_02225AE0
	ldr r1, [r5, #0x38]
	mov r2, #0xa
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02233630 ; =0x020F983C
	ldr r3, [r6, #0x14]
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	mul r2, r3
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r3, r1, #0
	mov r1, #0x13
	lsl r1, r1, #4
	mov r2, #0x30
	add r7, r0, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #0x18]
	add r1, r1, r2
	ldr r2, _02233634 ; =0x00000132
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	asr r1, r1, #0x10
	mov ip, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r7, r7, r2
	ldr r2, _02233638 ; =0x00000000
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r7, #0xc
	orr r3, r2
	lsl r2, r3, #4
	asr r2, r2, #0x10
	mov r3, ip
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r1, [r5, #0x38]
	ldr r0, _0223363C ; =0x00003FFF
	cmp r1, r0
	blt _02233606
	ldr r0, _02233640 ; =0x0000BF49
	cmp r1, r0
	bgt _02233606
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0200D460
	b _02233616
_02233606:
	ldr r0, [r6, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r1, #1
	bl sub_0200D460
_02233616:
	ldr r0, [sp]
	add r5, #0x24
	add r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #6
	blt _0223358A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233630: .word 0x020F983C
_02233634: .word 0x00000132
_02233638: .word 0x00000000
_0223363C: .word 0x00003FFF
_02233640: .word 0x0000BF49
	thumb_func_end ov12_02233574

	thumb_func_start ov12_02233644
ov12_02233644: ; 0x02233644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _0223372A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223365E: ; jump table
	.short _02233668 - _0223365E - 2 ; case 0
	.short _0223369E - _0223365E - 2 ; case 1
	.short _022336BE - _0223365E - 2 ; case 2
	.short _022336EA - _0223365E - 2 ; case 3
	.short _02233706 - _0223365E - 2 ; case 4
_02233668:
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0xf
	bl ov12_02235780
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x10
	mov r3, #0xf
	bl ov12_02226424
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl ov12_0223351C
	add r0, r4, #0
	bl ov12_02233574
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223372A
_0223369E:
	add r0, r4, #0
	bl ov12_02233574
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _0223372A
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1c
	str r0, [r4, #0x10]
	b _0223372A
_022336BE:
	add r0, r4, #0
	bl ov12_02233574
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _0223372A
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r2, #1
	mov r3, #0
	bl ov12_02226424
	b _0223372A
_022336EA:
	add r0, r4, #0
	bl ov12_02233574
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _0223372A
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0223372A
_02233706:
	mov r6, #0
	add r5, r4, #0
_0223370A:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _0223370A
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0223372A:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02233644

	thumb_func_start ov12_02233734
ov12_02233734: ; 0x02233734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0x4d
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	mov r1, #0x13
	lsl r1, r1, #4
	strh r0, [r6, r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, _022337D8 ; =0x00000132
	strh r0, [r6, r1]
	add r0, sp, #4
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02233786:
	cmp r4, #0
	bne _0223378E
	str r7, [r5, #0x18]
	b _0223379A
_0223378E:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_0223379A:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02233786
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _022337DC ; =ov12_02233644
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022337D8: .word 0x00000132
_022337DC: .word ov12_02233644
	thumb_func_end ov12_02233734

	thumb_func_start ov12_022337E0
ov12_022337E0: ; 0x022337E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r1, sp, #8
	add r5, r2, #0
	add r1, #2
	add r2, sp, #8
	add r6, r0, #0
	add r4, r3, #0
	bl sub_0200D550
	add r0, sp, #8
	mov r1, #0
	ldrsh r3, [r0, r1]
	mov r1, #2
	ldrsh r2, [r0, r1]
	lsl r0, r4, #7
	neg r0, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r2, #0x10
	lsl r4, r5, #8
	add r2, r2, r4
	str r0, [sp]
	mov r0, #0x3b
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add r0, r6, #0
	mov r1, #1
	bl sub_0200D3F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022337E0

	thumb_func_start ov12_02233834
ov12_02233834: ; 0x02233834
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl ov12_02225C50
	cmp r0, #0
	beq _022338EE
	add r1, sp, #8
	add r0, r4, #0
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [sp]
	mov r2, #0xe
	mul r1, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _022338F4 ; =0x020F983C
	lsl r2, r2, #0xc
	ldrsh r0, [r0, r1]
	mov r3, #0
	asr r7, r0, #0x1f
	add r1, r7, #0
	str r0, [sp, #4]
	bl _ull_mul
	add r3, r0, #0
	add r5, r1, #0
	add r6, sp, #8
	mov r2, #0
	ldrsh r2, [r6, r2]
	mov r6, #2
	lsl r6, r6, #0xa
	add r0, r4, #0
	add r6, r3, r6
	ldr r3, _022338F8 ; =0x00000000
	ldr r1, [sp]
	adc r5, r3
	lsl r3, r5, #0x14
	lsr r5, r6, #0xc
	orr r5, r3
	lsl r3, r5, #4
	asr r3, r3, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r2, #0xae
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsl r2, r2, #2
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	bl _f_itof
	ldr r1, _022338FC ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	bl _f_add
	add r1, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0200D6E8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022338EE:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022338F4: .word 0x020F983C
_022338F8: .word 0x00000000
_022338FC: .word 0x45800000
	thumb_func_end ov12_02233834

	thumb_func_start ov12_02233900
ov12_02233900: ; 0x02233900
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x9d
	add r7, r0, #0
	lsl r1, r1, #2
	ldr r0, [r7, r1]
	cmp r0, #0xf
	bge _02233948
	sub r0, r1, #4
	ldr r0, [r7, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r7, r0]
	ldr r0, [r7, r0]
	cmp r0, #6
	ble _02233948
	mov r2, #0
	sub r0, r1, #4
	str r2, [r7, r0]
	ldr r1, [r7, r1]
	add r3, r7, #0
	lsl r0, r1, #2
	mov r2, #0x24
	add r0, r7, r0
	add r3, #0x54
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r0, #0x18]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	bl ov12_022337E0
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	add r1, r1, #1
	str r1, [r7, r0]
_02233948:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _02233974
	add r6, r7, #0
	add r6, #0x54
	add r5, r7, #0
_0223395A:
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	bl ov12_02233834
	str r0, [sp]
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r4, r4, #1
	add r6, #0x24
	add r5, r5, #4
	cmp r4, r0
	blt _0223395A
_02233974:
	cmp r0, #0xf
	blt _02233982
	ldr r0, [sp]
	cmp r0, #1
	bne _02233982
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233982:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02233900

	thumb_func_start ov12_02233988
ov12_02233988: ; 0x02233988
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02233900
	cmp r0, #0
	beq _022339BA
	mov r4, #0
	add r5, r6, #0
_0223399C:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _0223399C
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl ov12_02220220
	pop {r3, r4, r5, r6, r7, pc}
_022339BA:
	ldr r0, [r6, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02233988

	thumb_func_start ov12_022339C4
ov12_022339C4: ; 0x022339C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	mov r1, #0x9e
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, sp, #0xc
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02233A18:
	cmp r4, #0
	bne _02233A20
	str r7, [r5, #0x18]
	b _02233A2C
_02233A20:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_02233A2C:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D4C4
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	ldr r0, [r5, #0x18]
	bl sub_0200D364
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _02233A18
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x10]
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_0222598C
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _02233A9C ; =ov12_02233988
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233A9C: .word ov12_02233988
	thumb_func_end ov12_022339C4

	thumb_func_start ov12_02233AA0
ov12_02233AA0: ; 0x02233AA0
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _02233AB0
	cmp r1, #1
	beq _02233AC4
	cmp r1, #2
	beq _02233AD8
	bx lr
_02233AB0:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #5
	str r1, [r0, #0x24]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
_02233AC4:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #4
	mvn r1, r1
	str r1, [r0, #0x24]
	ldr r1, _02233AF0 ; =0xFFFF0000
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
_02233AD8:
	ldr r1, _02233AEC ; =0x00007FFF
	str r1, [r0, #0x18]
	mov r1, #0xa
	str r1, [r0, #0x24]
	lsl r1, r1, #0xd
	str r1, [r0, #0x1c]
	mov r1, #0x10
	str r1, [r0, #0x28]
	bx lr
	nop
_02233AEC: .word 0x00007FFF
_02233AF0: .word 0xFFFF0000
	thumb_func_end ov12_02233AA0

	thumb_func_start ov12_02233AF4
ov12_02233AF4: ; 0x02233AF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov12_022265E4
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _02233B1C
	mov r0, #0
	str r0, [sp, #4]
_02233B1C:
	ldr r0, [sp]
	cmp r0, #0xc0
	ble _02233B26
	mov r0, #0xc0
	str r0, [sp]
_02233B26:
	mov r0, #0
	ldr r1, [r5, #0x20]
	mvn r0, r0
	mul r0, r1
	ldr r4, [sp, #4]
	str r0, [r5, #0x20]
	ldr r0, [sp]
	add r1, r4, #0
	cmp r1, r0
	bge _02233BC6
_02233B3A:
	mov r0, #2
	tst r0, r4
	ldr r1, [r5, #0x1c]
	beq _02233B4A
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0xc
	add r2, r1, r0
	b _02233B50
_02233B4A:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0xc
	sub r2, r1, r0
_02233B50:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x18]
	sub r3, r4, r1
	ldr r1, _02233BCC ; =0x00000199
	mul r1, r3
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02233BD0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02233BD4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r7, r0, #0x10
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x24]
	sub r0, r4, r0
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r0, r7, r0
	lsl r0, r0, #0x10
	ldr r1, [r5, #0x30]
	asr r7, r0, #0x10
	lsl r0, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	sub r6, r4, #1
	bpl _02233BAA
	add r6, #0xc0
_02233BAA:
	add r0, r0, r7
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	ldr r1, [sp, #8]
	lsl r2, r6, #2
	str r0, [r1, r2]
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _02233B3A
_02233BC6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02233BCC: .word 0x00000199
_02233BD0: .word 0x020F983C
_02233BD4: .word 0x00000000
	thumb_func_end ov12_02233AF4

	thumb_func_start ov12_02233BD8
ov12_02233BD8: ; 0x02233BD8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02233BEE
	cmp r0, #1
	beq _02233C02
	cmp r0, #2
	beq _02233C2C
	pop {r4, r5, r6, pc}
_02233BEE:
	add r0, r4, #0
	bl ov12_02233AA0
	add r0, r4, #0
	bl ov12_02233AF4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C02:
	ldr r0, [r4, #0x28]
	sub r0, r0, #1
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov12_02233AF4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bge _02233CD0
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #3
	bge _02233C24
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C24:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_02233C2C:
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02233C48
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
_02233C48:
	ldr r0, [r4, #4]
	bl ov12_022265F8
	ldr r0, [r4, #4]
	bl ov12_022265C0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_02223428
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r3, r0, #0
	lsl r0, r5, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #0]
	bl ov12_02220278
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov12_02220220
_02233CD0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02233BD8

	thumb_func_start ov12_02233CD4
ov12_02233CD4: ; 0x02233CD4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r7, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r7, [r4, #0]
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222337C
	cmp r0, #0
	bne _02233D32
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_02233D32:
	sub r6, #0x28
	lsl r0, r6, #0x10
	str r5, [r4, #0x14]
	sub r5, #0x28
	asr r0, r0, #0x10
	neg r0, r0
	neg r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	str r5, [r4, #0x10]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov12_022266E8
	str r0, [r4, #0x30]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233EC
	bl ov12_022266F0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0221FDE4
	add r2, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r5, #0
	bl ov12_02226544
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r7, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02235254
	sub r0, r0, #3
	cmp r0, #1
	bhi _02233DBA
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov12_022233B0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldr r0, [r4, #0]
	bl ov12_0222339C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl sub_02019060
_02233DBA:
	ldr r0, [r4, #0]
	ldr r1, _02233DC8 ; =ov12_02233BD8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233DC8: .word ov12_02233BD8
	thumb_func_end ov12_02233CD4

	thumb_func_start ov12_02233DCC
ov12_02233DCC: ; 0x02233DCC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _02233DDC
	b _02233F20
_02233DDC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233DE8: ; jump table
	.short _02233DF4 - _02233DE8 - 2 ; case 0
	.short _02233E3A - _02233DE8 - 2 ; case 1
	.short _02233E74 - _02233DE8 - 2 ; case 2
	.short _02233EAE - _02233DE8 - 2 ; case 3
	.short _02233EFA - _02233DE8 - 2 ; case 4
	.short _02233F12 - _02233DE8 - 2 ; case 5
_02233DF4:
	mov r2, #0
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0x7f
	add r3, r2, #0
	bl ov12_02225BC8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02233F24 ; =0xFFFF1FFF
	and r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	str r0, [r2, #0]
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov12_02235838
	ldr r1, _02233F28 ; =0x04000040
	mov r0, #0xff
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	mov r0, #7
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233E3A:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _02233F20
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r3, #0
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _02233F2C ; =0x0000FFFF
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl sub_02003178
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233E74:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225C14
	cmp r0, #0
	beq _02233EA4
	mov r0, #0xc
	ldrsh r2, [r4, r0]
	mov r0, #0x7f
	add sp, #0xc
	sub r0, r0, r2
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, #0x80
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _02233F28 ; =0x04000040
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	pop {r4, r5, pc}
_02233EA4:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233EAE:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02233F20
	ldr r0, [r4, #4]
	mov r2, #1
	add r0, r0, #1
	str r0, [r4, #4]
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02233F24 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	lsl r2, r2, #0x10
	ldr r0, _02233F2C ; =0x0000FFFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_02003178
	add sp, #0xc
	pop {r4, r5, pc}
_02233EFA:
	ldr r0, [r4, #0]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _02233F20
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02233F12:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02233F20:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02233F24: .word 0xFFFF1FFF
_02233F28: .word 0x04000040
_02233F2C: .word 0x0000FFFF
	thumb_func_end ov12_02233DCC

	thumb_func_start ov12_02233F30
ov12_02233F30: ; 0x02233F30
	push {r4, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov12_02235E50
	add r2, r0, #0
	ldr r1, _02233F48 ; =ov12_02233DCC
	add r0, r4, #0
	str r4, [r2, #0]
	bl ov12_022201E8
	pop {r4, pc}
	; .align 2, 0
_02233F48: .word ov12_02233DCC
	thumb_func_end ov12_02233F30

	thumb_func_start ov12_02233F4C
ov12_02233F4C: ; 0x02233F4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _02233FFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233F66: ; jump table
	.short _02233F70 - _02233F66 - 2 ; case 0
	.short _02233F96 - _02233F66 - 2 ; case 1
	.short _02233FAA - _02233F66 - 2 ; case 2
	.short _02233FD0 - _02233F66 - 2 ; case 3
	.short _02233FE4 - _02233F66 - 2 ; case 4
_02233F70:
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x10
	bl ov12_02235780
	mov r1, #0
	mov r2, #0x10
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233F96:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02233FFC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233FAA:
	ldr r0, [r4, #0x10]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02233FFC
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r1, #0x10
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r3, r2, #0
	bl ov12_02226424
	b _02233FFC
_02233FD0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02233FFC
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02233FFC
_02233FE4:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02233FFC:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02233F4C

	thumb_func_start ov12_02234008
ov12_02234008: ; 0x02234008
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x3c
	add r6, r0, #0
	str r2, [sp]
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	str r5, [r4, #0x10]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0]
	ldr r1, _02234040 ; =ov12_02233F4C
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234040: .word ov12_02233F4C
	thumb_func_end ov12_02234008

	thumb_func_start ov12_02234044
ov12_02234044: ; 0x02234044
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234108
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223405E: ; jump table
	.short _02234068 - _0223405E - 2 ; case 0
	.short _022340D2 - _0223405E - 2 ; case 1
	.short _02234114 - _0223405E - 2 ; case 2
	.short _02234180 - _0223405E - 2 ; case 3
	.short _022341D2 - _0223405E - 2 ; case 4
_02234068:
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x74]
	asr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x5c]
	ldr r2, [r4, #0x60]
	ldr r3, [r4, #0x64]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022340D2:
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	cmp r5, #0
	beq _0223410A
_02234108:
	b _02234210
_0223410A:
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02234114:
	ldr r0, [r4, #0x64]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x74]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r4, #0x60]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x68]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225EF0
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_02234180:
	mov r1, #0xa
	mov r2, #8
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov12_0222619C
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x14
	bl ov12_022260E8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #8
	mov r2, #0xc
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x28]
	bl ov12_02226024
	cmp r5, #0
	bne _02234210
	ldr r0, [r4, #0x70]
	sub r0, r0, #1
	str r0, [r4, #0x70]
	cmp r0, #0
	bgt _022341CA
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022341CA:
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, pc}
_022341D2:
	mov r2, #0xa
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #8
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02234210:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02234044

	thumb_func_start ov12_02234214
ov12_02234214: ; 0x02234214
	push {r3, r4, r5, lr}
	mov r1, #0x78
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_02223354
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0xa]
	mov r1, #0xa
	str r1, [r4, #0x5c]
	mov r0, #7
	str r0, [r4, #0x60]
	str r1, [r4, #0x64]
	mov r0, #0x1e
	str r0, [r4, #0x68]
	str r1, [r4, #0x6c]
	mov r3, #1
	ldr r0, _02234288 ; =0x00040003
	str r3, [r4, #0x70]
	str r0, [r4, #0x74]
	mov r1, #2
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x38
	mov r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0]
	ldr r1, _0223428C ; =ov12_02234044
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_02234288: .word 0x00040003
_0223428C: .word ov12_02234044
	thumb_func_end ov12_02234214

	thumb_func_start ov12_02234290
ov12_02234290: ; 0x02234290
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #8
	bl ov12_02225C50
	cmp r0, #0
	bne _022342BA
	ldr r0, [r4, #0x2c]
	bl sub_0200D0F4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	pop {r3, r4, r5, pc}
_022342BA:
	ldr r0, [r4, #4]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02234290

	thumb_func_start ov12_022342C4
ov12_022342C4: ; 0x022342C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220300
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _02234308
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	bl sub_0200D0F4
	b _0223431E
_02234308:
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	str r0, [r4, #0x2c]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	bl sub_0200D0F4
_0223431E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_022258E0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_022258E0
	ldr r1, [sp, #0x10]
	lsl r2, r7, #6
	add r6, r1, r2
	ldr r1, [sp, #0xc]
	lsl r1, r1, #4
	neg r1, r1
	add r5, r0, r1
	str r1, [sp, #8]
	lsl r1, r6, #0x10
	lsl r2, r5, #0x10
	ldr r0, [r4, #0x2c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [sp, #8]
	mov r2, #0x30
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r2, r7
	str r0, [sp]
	mov r0, #6
	add r2, r6, r2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	lsl r3, r5, #0x10
	add r0, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #0]
	ldr r1, _0223439C ; =ov12_02234290
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223439C: .word ov12_02234290
	thumb_func_end ov12_022342C4

	thumb_func_start ov12_022343A0
ov12_022343A0: ; 0x022343A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _022343B0
	b _022344CC
_022343B0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022343BC: ; jump table
	.short _022343C8 - _022343BC - 2 ; case 0
	.short _022343E2 - _022343BC - 2 ; case 1
	.short _02234430 - _022343BC - 2 ; case 2
	.short _0223444C - _022343BC - 2 ; case 3
	.short _0223448E - _022343BC - 2 ; case 4
	.short _022344A6 - _022343BC - 2 ; case 5
_022343C8:
	mov r1, #4
	add r0, r4, #0
	str r1, [sp]
	add r0, #0x40
	mov r2, #0
	mov r3, #1
	bl ov12_02226108
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022343E2:
	mov r1, #0x18
	mov r2, #0x1a
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x14]
	add r0, #0x40
	bl ov12_0222619C
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x1a
	ldrsh r3, [r4, r0]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x10]
	sub r0, #0x1f
	mul r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r4, [r4, #0xc]
	mov r2, #0x28
	mul r2, r4
	add r2, r1, r2
	lsl r2, r2, #0x10
	add r0, #0x1c
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r4, r5, r6, pc}
_02234430:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x1c
	bl ov12_02225C74
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0223444C:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _022344CC
	ldr r0, [r4, #4]
	mov r5, #0x28
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x1a
	ldrsh r3, [r4, r0]
	mov r0, #0x18
	ldrsh r2, [r4, r0]
	mov r0, #4
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	add r6, r1, #0
	mul r6, r5
	add r1, r2, r6
	lsl r1, r1, #0x10
	ldr r4, [r4, #0x10]
	sub r5, #0x2f
	mul r5, r4
	add r3, r3, r5
	lsl r3, r3, #0x10
	add r0, #0x1c
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r4, r5, r6, pc}
_0223448E:
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x1c
	bl ov12_02225C74
	cmp r0, #0
	bne _022344CC
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022344A6:
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x1a
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_022344CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022343A0

	thumb_func_start ov12_022344D0
ov12_022344D0: ; 0x022344D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0x64
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4, #0]
	bl ov12_02220240
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x1a]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	ldr r1, _02234524 ; =ov12_022343A0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_02234524: .word ov12_022343A0
	thumb_func_end ov12_022344D0

	thumb_func_start ov12_02234528
ov12_02234528: ; 0x02234528
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bls _02234538
	b _02234648
_02234538:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234544: ; jump table
	.short _0223454E - _02234544 - 2 ; case 0
	.short _02234584 - _02234544 - 2 ; case 1
	.short _022345AC - _02234544 - 2 ; case 2
	.short _0223460A - _02234544 - 2 ; case 3
	.short _02234622 - _02234544 - 2 ; case 4
_0223454E:
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	mov r5, #4
	lsl r0, r0, #4
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [r4, #8]
	sub r5, #0x2c
	mul r5, r2
	add r2, r1, r5
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x18
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02234584:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225C74
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #1
	str r0, [r4, #4]
	add r4, #0x3c
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	str r1, [sp]
	bl ov12_02226108
	add sp, #8
	pop {r3, r4, r5, pc}
_022345AC:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r4, #0
	ldr r3, [r4, #0x10]
	add r0, #0x3c
	add r1, r5, #0
	bl ov12_0222619C
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	mov r5, #4
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x16
	ldrsh r3, [r4, r0]
	mov r0, #0x14
	ldrsh r2, [r4, r0]
	add r0, r4, #0
	add r0, #0x18
	str r3, [sp]
	str r5, [sp, #4]
	ldr r1, [r4, #8]
	ldr r4, [r4, #0xc]
	sub r5, #0x2c
	mul r5, r1
	lsl r4, r4, #4
	add r1, r2, r5
	add r3, r3, r4
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	asr r1, r1, #0x10
	asr r3, r3, #0x10
	bl ov12_02225BC8
	add sp, #8
	pop {r3, r4, r5, pc}
_0223460A:
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov12_02225C74
	cmp r0, #0
	bne _02234648
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02234622:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
_02234648:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02234528

	thumb_func_start ov12_0223464C
ov12_0223464C: ; 0x0223464C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0x60
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4, #0]
	bl ov12_02220248
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02225964
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0222598C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, _022346A0 ; =ov12_02234528
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_022346A0: .word ov12_02234528
	thumb_func_end ov12_0223464C

	.rodata


	.global Unk_ov12_0223A1CC
Unk_ov12_0223A1CC: ; 0x0223A1CC
	.incbin "incbin/overlay12_rodata.bin", 0x1C38, 0xC

