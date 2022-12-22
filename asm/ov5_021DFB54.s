	.include "macros/function.inc"
	.include "include/ov5_021DFB54.inc"

	

	.text


	thumb_func_start ov5_021DFB54
ov5_021DFB54: ; 0x021DFB54
	ldr r3, _021DFB58 ; =sub_0205EB84
	bx r3
	; .align 2, 0
_021DFB58: .word sub_0205EB84
	thumb_func_end ov5_021DFB54

	thumb_func_start ov5_021DFB5C
ov5_021DFB5C: ; 0x021DFB5C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0
	bl sub_0205EB90
	ldr r5, _021DFB8C ; =0x021F9B74
	add r4, r0, #0
_021DFB6A:
	mov r0, #1
	tst r0, r4
	beq _021DFB76
	ldr r1, [r5, #0]
	add r0, r7, #0
	blx r1
_021DFB76:
	add r6, r6, #1
	lsr r4, r4, #1
	add r5, r5, #4
	cmp r6, #0xa
	blo _021DFB6A
	add r0, r7, #0
	mov r1, #0
	bl sub_0205EB8C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFB8C: .word 0x021F9B74
	thumb_func_end ov5_021DFB5C

	thumb_func_start ov5_021DFB90
ov5_021DFB90: ; 0x021DFB90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_0205F108
	cmp r0, #0
	beq _021DFBA2
	mov r4, #0x18
	b _021DFBB8
_021DFBA2:
	add r0, r5, #0
	bl sub_0205EB3C
	bl sub_02062C00
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #1
	bne _021DFBB8
	mov r4, #0x1c
_021DFBB8:
	add r0, r5, #0
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021E106C
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB58
	add r0, r5, #0
	bl sub_0205EBC0
	add r0, r5, #0
	bl sub_0205EC04
	cmp r0, #0
	beq _021DFBEA
	bl ov5_021DF74C
_021DFBEA:
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EC00
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DFB90

	thumb_func_start ov5_021DFBF4
ov5_021DFBF4: ; 0x021DFBF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #1
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E106C
	add r0, r4, #0
	mov r1, #1
	bl sub_0205EB58
	add r0, r4, #0
	bl sub_0205EBC0
	add r0, r4, #0
	bl sub_0205EC04
	cmp r0, #0
	beq _021DFC28
	bl ov5_021DF74C
_021DFC28:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EC00
	ldr r0, _021DFC38 ; =0x00000618
	bl sub_02005748
	pop {r4, pc}
	; .align 2, 0
_021DFC38: .word 0x00000618
	thumb_func_end ov5_021DFBF4

	thumb_func_start ov5_021DFC3C
ov5_021DFC3C: ; 0x021DFC3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_02062C00
	add r0, r5, #0
	bl sub_0205F108
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205EC04
	cmp r0, #0
	beq _021DFC62
	bl ov5_021DF74C
_021DFC62:
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EC00
	add r0, r5, #0
	bl sub_0205F16C
	cmp r0, #1
	bne _021DFC7C
	add r0, r5, #0
	bl sub_0205EA78
	b _021DFC82
_021DFC7C:
	add r0, r5, #0
	bl sub_0205EA94
_021DFC82:
	add r3, r0, #0
	cmp r4, #0
	bne _021DFC9C
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	bl ov5_021F261C
	add r1, r0, #0
	mov r4, #2
	b _021DFCB4
_021DFC9C:
	mov r1, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl ov5_021F85BC
	add r1, r0, #0
	mov r4, #0x19
_021DFCB4:
	add r0, r5, #0
	bl sub_0205EC00
	add r0, r5, #0
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021E106C
	add r0, r5, #0
	mov r1, #2
	bl sub_0205EB58
	add r0, r5, #0
	bl sub_0205EBC0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFC3C

	thumb_func_start ov5_021DFCE4
ov5_021DFCE4: ; 0x021DFCE4
	ldr r3, _021DFCEC ; =sub_0205EF6C
	mov r1, #1
	bx r3
	nop
_021DFCEC: .word sub_0205EF6C
	thumb_func_end ov5_021DFCE4

	thumb_func_start ov5_021DFCF0
ov5_021DFCF0: ; 0x021DFCF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x11
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E106C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFCF0

	thumb_func_start ov5_021DFD0C
ov5_021DFD0C: ; 0x021DFD0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x13
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E106C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFD0C

	thumb_func_start ov5_021DFD28
ov5_021DFD28: ; 0x021DFD28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0x14
	bl sub_0205F108
	cmp r0, #0
	beq _021DFD3A
	mov r4, #0x1b
	b _021DFD50
_021DFD3A:
	add r0, r5, #0
	bl sub_0205EB3C
	bl sub_02062C00
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #1
	bne _021DFD50
	mov r4, #0x1e
_021DFD50:
	add r0, r5, #0
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021E106C
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DFD28

	thumb_func_start ov5_021DFD68
ov5_021DFD68: ; 0x021DFD68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0x15
	bl sub_0205F108
	cmp r0, #0
	beq _021DFD7A
	mov r4, #0x1a
	b _021DFD90
_021DFD7A:
	add r0, r5, #0
	bl sub_0205EB3C
	bl sub_02062C00
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #1
	bne _021DFD90
	mov r4, #0x1d
_021DFD90:
	add r0, r5, #0
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021E106C
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DFD68

	thumb_func_start ov5_021DFDA8
ov5_021DFDA8: ; 0x021DFDA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x16
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E106C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFDA8

	thumb_func_start ov5_021DFDC4
ov5_021DFDC4: ; 0x021DFDC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x17
	bl sub_0205ED6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E106C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFDC4

	thumb_func_start ov5_021DFDE0
ov5_021DFDE0: ; 0x021DFDE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _021DFDF2
	bl GF_AssertFail
_021DFDF2:
	add r0, r5, #0
	bl sub_0205EB3C
	cmp r0, #0
	bne _021DFE00
	bl GF_AssertFail
_021DFE00:
	add r0, r5, #0
	bl sub_0205EF58
	cmp r0, #1
	bne _021DFE20
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021E067C
	cmp r0, #1
	bne _021DFE1C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFE1C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFE20:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205F224
	cmp r0, #0
	bne _021DFE30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFE30:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021DFE50
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov5_021DFEF4
	cmp r0, #1
	bne _021DFE4C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFE4C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFE50:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov5_021DFE68
	cmp r0, #1
	bne _021DFE64
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFE64:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DFDE0

	thumb_func_start ov5_021DFE68
ov5_021DFE68: ; 0x021DFE68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r4, r3, #0
	bl sub_02061434
	str r0, [sp]
	mov r0, #4
	tst r0, r4
	beq _021DFE92
	add r0, r6, #0
	add r1, r5, #0
	bl ov9_0224A59C
	cmp r0, #1
	bne _021DFE92
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFE92:
	mov r0, #1
	tst r0, r4
	beq _021DFEAC
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov5_021DFF1C
	cmp r0, #1
	bne _021DFEAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFEAC:
	mov r0, #2
	tst r0, r4
	beq _021DFEC6
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov5_021E04A8
	cmp r0, #1
	bne _021DFEC6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFEC6:
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov5_021E032C
	cmp r0, #1
	bne _021DFEDA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFEDA:
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov5_021E04EC
	cmp r0, #1
	bne _021DFEEE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFEEE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFE68

	thumb_func_start ov5_021DFEF4
ov5_021DFEF4: ; 0x021DFEF4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02061434
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021E04EC
	cmp r0, #1
	bne _021DFF18
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DFF18:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DFEF4

	thumb_func_start ov5_021DFF1C
ov5_021DFF1C: ; 0x021DFF1C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	cmp r3, #1
	beq _021DFF2C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFF2C:
	add r0, r7, #0
	add r1, r5, #0
	bl ov5_021E10D4
	add r4, r0, #0
	bne _021DFF3C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFF3C:
	bl sub_02062920
	cmp r0, #0x54
	beq _021DFF48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFF48:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063EBC
	mov r1, #1
	bic r0, r1
	beq _021DFF76
	add r0, r6, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021DFF72
	add r0, r4, #0
	add r1, r5, #0
	bl ov9_0224F240
	cmp r0, #0
	bne _021DFF76
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFF72:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DFF76:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov5_021DFF88
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFF1C

	thumb_func_start ov5_021DFF88
ov5_021DFF88: ; 0x021DFF88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021E1110
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r7, [r2, #0x10]
	ldr r1, _021DFFB8 ; =ov5_021DFFBC
	str r6, [r2, #0xc]
	add r0, r4, #0
	bl sub_02050904
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0x37
	bl sub_0202CF28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DFFB8: .word ov5_021DFFBC
	thumb_func_end ov5_021DFF88

	thumb_func_start ov5_021DFFBC
ov5_021DFFBC: ; 0x021DFFBC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0x10]
	cmp r0, #3
	bhi _021E00A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DFFE2: ; jump table
	.short _021DFFEA - _021DFFE2 - 2 ; case 0
	.short _021E0036 - _021DFFE2 - 2 ; case 1
	.short _021E0084 - _021DFFE2 - 2 ; case 2
	.short _021E008E - _021DFFE2 - 2 ; case 3
_021DFFEA:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #0
	beq _021E00A8
	add r0, r6, #0
	bl sub_020655F4
	cmp r0, #0
	bne _021E0008
	ldr r0, [r4, #0xc]
	bl sub_020613AC
	cmp r0, #0
	beq _021E00A8
_021E0008:
	ldr r0, [r4, #4]
	mov r1, #8
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065638
	ldr r0, [r4, #4]
	mov r1, #0x20
	bl sub_02065838
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02065638
	ldr r0, _021E00AC ; =0x00000627
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E00A8
_021E0036:
	add r0, r5, #0
	bl sub_02065684
	cmp r0, #0
	beq _021E00A8
	add r0, r6, #0
	bl sub_02065684
	cmp r0, #0
	beq _021E00A8
	ldr r0, [r4, #8]
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021E0072
	add r0, r5, #0
	bl ov9_0224F2B0
	cmp r0, #1
	bne _021E0072
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r5, #0
	bl ov9_0224F2BC
	str r0, [r4, #0x14]
	mov r0, #3
	str r0, [r4, #0]
	b _021E00A8
_021E0072:
	add r0, r5, #0
	bl sub_020656AC
	add r0, r6, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0084:
	add r0, r4, #0
	bl ov5_021E1134
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E008E:
	ldr r0, [r4, #0x14]
	bl ov9_0224F6EC
	cmp r0, #1
	bne _021E00A8
	add r0, r5, #0
	bl sub_020656AC
	add r0, r6, #0
	bl sub_020656AC
	mov r0, #2
	str r0, [r4, #0]
_021E00A8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E00AC: .word 0x00000627
	thumb_func_end ov5_021DFFBC

	thumb_func_start ov5_021E00B0
ov5_021E00B0: ; 0x021E00B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	add r5, r2, #0
	bl ov5_021E1110
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x1c]
	ldr r0, [r6, #0x3c]
	str r0, [r4, #0x20]
	bl sub_0205EB3C
	add r2, r4, #0
	str r0, [r4, #0x24]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021E00E8 ; =ov5_021E0160
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E00E8: .word ov5_021E0160
	thumb_func_end ov5_021E00B0

	thumb_func_start ov5_021E00EC
ov5_021E00EC: ; 0x021E00EC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r1, #0
	bl sub_02050A60
	add r4, r0, #0
	add r1, r5, #0
	bl ov5_021E1140
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov5_021E1028
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov5_021E00B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E00EC

	thumb_func_start ov5_021E0118
ov5_021E0118: ; 0x021E0118
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #1
	bne _021E015A
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEFC
	cmp r0, #1
	beq _021E0148
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DEF0
	cmp r0, #1
	bne _021E0156
_021E0148:
	add r0, r6, #0
	bl sub_02062F30
	cmp r0, #1
	bne _021E0156
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E0156:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E015A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0118

	thumb_func_start ov5_021E0160
ov5_021E0160: ; 0x021E0160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #5
	bhi _021E01CE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E017C: ; jump table
	.short _021E0188 - _021E017C - 2 ; case 0
	.short _021E01C2 - _021E017C - 2 ; case 1
	.short _021E01D8 - _021E017C - 2 ; case 2
	.short _021E027A - _021E017C - 2 ; case 3
	.short _021E027E - _021E017C - 2 ; case 4
	.short _021E02BC - _021E017C - 2 ; case 5
_021E0188:
	ldr r0, [r4, #0x20]
	bl sub_0205F108
	cmp r0, #0
	bne _021E01A4
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_020553F0
	ldr r0, [r4, #0x1c]
	ldr r1, _021E0324 ; =0x0000047F
	mov r2, #1
	bl sub_02055554
_021E01A4:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E01BC
	add r1, r4, #0
	ldr r0, [r4, #0x1c]
	add r1, #0xc
	bl ov5_021E103C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E031E
_021E01BC:
	mov r0, #2
	str r0, [r4, #0]
	b _021E031E
_021E01C2:
	add r0, r4, #0
	add r0, #0xc
	bl ov5_021E1050
	cmp r0, #1
	beq _021E01D0
_021E01CE:
	b _021E031E
_021E01D0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E031E
_021E01D8:
	ldr r0, [r4, #0x20]
	bl sub_0205F108
	cmp r0, #0
	bne _021E0214
	ldr r0, [r4, #0x20]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0206419C
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205EAC8
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_020641A8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r3, [r4, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl ov5_021F261C
	b _021E0260
_021E0214:
	ldr r0, [r4, #0x24]
	bl sub_02063020
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x24]
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	bl sub_02063040
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	bl sub_0205F108
	add r5, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #4]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_02061674
	ldr r0, [r4, #4]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl ov5_021F85BC
_021E0260:
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	bl sub_0205EC00
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_0205EB58
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E031E
_021E027A:
	add r0, r1, #1
	str r0, [r4, #0]
_021E027E:
	ldr r0, [r4, #0x24]
	bl sub_020655F4
	cmp r0, #1
	bne _021E031E
	ldr r3, _021E0328 ; =0x021F9B3C
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x20]
	bl sub_0205F108
	add r1, r0, #0
	lsl r2, r1, #2
	add r1, sp, #0x18
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E031E
_021E02BC:
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #0
	beq _021E031E
	ldr r0, [r4, #0x24]
	bl sub_020656AC
	ldr r0, [r4, #0x20]
	bl sub_0205F108
	cmp r0, #0
	ldr r0, [r4, #0x28]
	bne _021E02F6
	mov r1, #1
	bl ov5_021F2838
	ldr r0, [r4, #0x20]
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #2
	bl sub_0205ED6C
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov5_021E106C
	b _021E0312
_021E02F6:
	mov r1, #2
	bl ov5_021F88CC
	ldr r0, [r4, #0x20]
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x19
	bl sub_0205ED6C
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov5_021E106C
_021E0312:
	add r0, r4, #0
	bl ov5_021E1134
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E031E:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E0324: .word 0x0000047F
_021E0328: .word 0x021F9B3C
	thumb_func_end ov5_021E0160

	thumb_func_start ov5_021E032C
ov5_021E032C: ; 0x021E032C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021E0342
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _021E0346
_021E0342:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E0346:
	add r0, r5, #0
	bl sub_0205EB3C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F158
	cmp r0, #0
	bne _021E0364
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02060B7C
	b _021E036E
_021E0364:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020611FC
_021E036E:
	cmp r0, #0x20
	bne _021E0376
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E0376:
	mov r1, #0x20
	bic r0, r1
	beq _021E0380
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E0380:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov5_021E0390
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E032C

	thumb_func_start ov5_021E0390
ov5_021E0390: ; 0x021E0390
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r5, r1, #0
	add r7, r2, #0
	bl ov5_021E1110
	add r4, r0, #0
	str r6, [r4, #4]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl sub_0205EB3C
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl sub_0205EC04
	str r0, [r4, #0x14]
	ldr r1, _021E03C4 ; =ov5_021E03C8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E03C4: .word ov5_021E03C8
	thumb_func_end ov5_021E0390

	thumb_func_start ov5_021E03C8
ov5_021E03C8: ; 0x021E03C8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E03DE
	cmp r0, #1
	beq _021E0452
	b _021E049C
_021E03DE:
	ldr r0, [r4, #0x10]
	bl sub_020655F4
	cmp r0, #1
	bne _021E049C
	ldr r3, _021E04A4 ; =0x021F9B24
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0xc]
	bl sub_0205F108
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	bne _021E041A
	mov r1, #0
	bl ov5_021F2838
	ldr r0, [r4, #0xc]
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0
	bl sub_0205ED6C
	b _021E042E
_021E041A:
	mov r1, #2
	bl ov5_021F88DC
	ldr r0, [r4, #0xc]
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0x18
	bl sub_0205ED6C
_021E042E:
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov5_021E106C
	lsl r2, r5, #2
	add r1, sp, #0
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E049C
_021E0452:
	ldr r0, [r4, #0x10]
	bl sub_02065684
	cmp r0, #0
	beq _021E049C
	ldr r0, [r4, #0x10]
	bl sub_020656AC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E046C
	bl ov5_021DF74C
_021E046C:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0205EC00
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0205EB58
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_020554A4
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #1
	bl sub_02055554
	add r0, r4, #0
	bl ov5_021E1134
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E049C:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021E04A4: .word 0x021F9B24
	thumb_func_end ov5_021E03C8

	thumb_func_start ov5_021E04A8
ov5_021E04A8: ; 0x021E04A8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #1
	bne _021E04C2
	cmp r3, #1
	bne _021E04C2
	add r0, r5, #0
	bl sub_0205EB74
	cmp r0, #2
	beq _021E04C6
_021E04C2:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E04C6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206156C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DDB4
	cmp r0, #0
	bne _021E04DE
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E04DE:
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021E097C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E04A8

	thumb_func_start ov5_021E04EC
ov5_021E04EC: ; 0x021E04EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205F008
	cmp r0, #1
	bne _021E0500
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E0500:
	add r0, r4, #0
	bl sub_0205EB3C
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl sub_0205DCF0
	cmp r0, #1
	beq _021E0526
	add r0, r6, #0
	bl sub_0205DD0C
	cmp r0, #1
	beq _021E0526
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E0526:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E0534
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E04EC

	thumb_func_start ov5_021E0534
ov5_021E0534: ; 0x021E0534
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	add r4, r1, #0
	bl ov5_021E1110
	add r2, r0, #0
	str r5, [r2, #8]
	ldr r1, _021E055C ; =ov5_021E0560
	str r4, [r2, #0xc]
	add r0, r5, #0
	bl sub_02050904
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x38
	bl sub_0202CF28
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E055C: .word ov5_021E0560
	thumb_func_end ov5_021E0534

	thumb_func_start ov5_021E0560
ov5_021E0560: ; 0x021E0560
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205EB3C
	add r7, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021E0584
	cmp r0, #1
	beq _021E0590
	cmp r0, #2
	beq _021E05CA
	b _021E0668
_021E0584:
	ldr r0, _021E0670 ; =0x00000651
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0590:
	add r0, r7, #0
	bl sub_020655F4
	cmp r0, #0
	bne _021E05A4
	ldr r0, [r4, #0xc]
	bl sub_020613AC
	cmp r0, #0
	beq _021E0668
_021E05A4:
	ldr r0, [r4, #4]
	cmp r0, #5
	blt _021E05C4
	ldr r0, _021E0674 ; =0x00000652
	bl sub_02005748
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0205EFF0
	add r0, r4, #0
	bl ov5_021E1134
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E05C4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E05CA:
	ldr r0, [r4, #0xc]
	bl sub_0205EA78
	ldr r2, _021E0678 ; =0x021BF67C
	str r0, [sp]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x44]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02061308
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021E0668
	ldr r0, [sp]
	cmp r5, r0
	beq _021E0668
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r7, #0
	bl sub_02062BE8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DD0C
	cmp r0, #1
	bne _021E0642
	add r0, r6, #0
	bl sub_02050A60
	add r1, sp, #8
	str r0, [sp, #4]
	bl ov6_022413E4
	cmp r0, #1
	bne _021E0642
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0205EFF0
	add r0, r4, #0
	bl ov5_021E1134
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl sub_02050E78
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E0642:
	ldr r0, [r4, #4]
	cmp r0, #5
	bge _021E064C
	mov r6, #0x28
	b _021E0656
_021E064C:
	add r0, r7, #0
	mov r1, #1
	mov r6, #0x30
	bl sub_02062EE0
_021E0656:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	mov r2, #1
	bl sub_02061550
_021E0668:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E0670: .word 0x00000651
_021E0674: .word 0x00000652
_021E0678: .word 0x021BF67C
	thumb_func_end ov5_021E0560

	thumb_func_start ov5_021E067C
ov5_021E067C: ; 0x021E067C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205EB3C
	bl sub_020655F4
	cmp r0, #0
	bne _021E0694
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E0694:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E06A8
	cmp r0, #1
	bne _021E06A4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E06A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E067C

	thumb_func_start ov5_021E06A8
ov5_021E06A8: ; 0x021E06A8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0205EBB8
	cmp r0, #1
	bge _021E06BA
	mov r0, #0
	pop {r4, pc}
_021E06BA:
	add r0, r4, #0
	bl sub_0205EA94
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E10D4
	add r4, r0, #0
	bne _021E06D0
	mov r0, #0
	pop {r4, pc}
_021E06D0:
	bl sub_02062920
	cmp r0, #0x76
	beq _021E06DC
	mov r0, #0
	pop {r4, pc}
_021E06DC:
	add r0, r4, #0
	bl ov5_021EC7F0
	add r0, r4, #0
	bl sub_02061AF4
	ldr r0, _021E06F4 ; =0x0000065B
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
	nop
_021E06F4: .word 0x0000065B
	thumb_func_end ov5_021E06A8

	thumb_func_start ov5_021E06F8
ov5_021E06F8: ; 0x021E06F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x30
	add r7, r1, #0
	add r5, r2, #0
	bl ov5_021E1110
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x3c]
	str r0, [r4, #0x10]
	bl sub_0205EB3C
	add r2, r4, #0
	str r0, [r4, #0x14]
	add r2, #0x1c
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021E0730 ; =ov5_021E07A0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0730: .word ov5_021E07A0
	thumb_func_end ov5_021E06F8

	thumb_func_start ov5_021E0734
ov5_021E0734: ; 0x021E0734
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r1, #0
	bl sub_02050A60
	add r4, r0, #0
	add r1, r5, #0
	bl ov5_021E1140
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov5_021E1028
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov5_021E06F8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E0734

	thumb_func_start ov5_021E0760
ov5_021E0760: ; 0x021E0760
	push {r3, lr}
	cmp r1, #3
	bhi _021E079A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E0772: ; jump table
	.short _021E077A - _021E0772 - 2 ; case 0
	.short _021E077A - _021E0772 - 2 ; case 1
	.short _021E078A - _021E0772 - 2 ; case 2
	.short _021E078A - _021E0772 - 2 ; case 3
_021E077A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DC68
	cmp r0, #1
	bne _021E079A
	mov r0, #1
	pop {r3, pc}
_021E078A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DC74
	cmp r0, #1
	bne _021E079A
	mov r0, #1
	pop {r3, pc}
_021E079A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0760

	thumb_func_start ov5_021E07A0
ov5_021E07A0: ; 0x021E07A0
	push {r4, r5, r6, lr}
	bl sub_02050A64
	ldr r6, _021E07C8 ; =0x021F9B54
	add r5, r0, #0
_021E07AA:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
	add r4, r0, #0
	cmp r4, #2
	beq _021E07AA
	cmp r4, #1
	bne _021E07C4
	add r0, r5, #0
	bl ov5_021E1134
_021E07C4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E07C8: .word 0x021F9B54
	thumb_func_end ov5_021E07A0

	thumb_func_start ov5_021E07CC
ov5_021E07CC: ; 0x021E07CC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x1c
	bl ov5_021E103C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E07CC

	thumb_func_start ov5_021E07E4
ov5_021E07E4: ; 0x021E07E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl ov5_021E1050
	cmp r0, #1
	bne _021E07F8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E07F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E07E4

	thumb_func_start ov5_021E07FC
ov5_021E07FC: ; 0x021E07FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_0206419C
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0205EAC8
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_020641A8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #4]
	add r1, r4, r6
	add r2, r7, r2
	bl ov5_021F28F4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	bl ov6_0224892C
	str r0, [r5, #0x2c]
	ldr r0, _021E084C ; =0x00000627
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E084C: .word 0x00000627
	thumb_func_end ov5_021E07FC

	thumb_func_start ov5_021E0850
ov5_021E0850: ; 0x021E0850
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_020655F4
	cmp r0, #1
	bne _021E0874
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0874:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E0850

	thumb_func_start ov5_021E0878
ov5_021E0878: ; 0x021E0878
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02065684
	cmp r0, #1
	bne _021E0894
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #0x18]
	bl ov5_021F2974
_021E0894:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E0878

	thumb_func_start ov5_021E0898
ov5_021E0898: ; 0x021E0898
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_020655F4
	cmp r0, #1
	bne _021E08BC
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E08BC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E0898

	thumb_func_start ov5_021E08C0
ov5_021E08C0: ; 0x021E08C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_02065684
	cmp r0, #0
	bne _021E08D2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E08D2:
	ldr r0, [r5, #0x14]
	bl sub_0206299C
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl ov5_021E0760
	cmp r0, #1
	bne _021E08F8
	mov r0, #5
	str r0, [r5, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E08F8:
	ldr r0, [r5, #4]
	mov r1, #0x34
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_02065638
	mov r1, #0
	str r1, [r5, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r5, #0x18]
	bl ov5_021F2974
	ldr r0, [r5, #0x2c]
	bl ov6_02248940
	mov r0, #0
	str r0, [r5, #0x2c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E08C0

	thumb_func_start ov5_021E0924
ov5_021E0924: ; 0x021E0924
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02065684
	cmp r0, #0
	bne _021E0936
	mov r0, #0
	pop {r4, pc}
_021E0936:
	ldr r0, [r4, #0x14]
	bl sub_020656AC
	ldr r0, [r4, #0x18]
	bl ov5_021DF74C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0924

	thumb_func_start ov5_021E0948
ov5_021E0948: ; 0x021E0948
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x54
	add r7, r1, #0
	add r5, r2, #0
	bl ov5_021E1110
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x34]
	ldr r0, [r6, #0x3c]
	str r0, [r4, #0x38]
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	str r0, [r4, #0x3c]
	cmp r5, #0
	beq _021E0978
	add r2, r4, #0
	add r2, #0x40
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
_021E0978:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E0948

	thumb_func_start ov5_021E097C
ov5_021E097C: ; 0x021E097C
	push {r4, lr}
	mov r2, #0
	add r4, r0, #0
	bl ov5_021E0948
	add r2, r0, #0
	ldr r1, _021E0994 ; =ov5_021E09D4
	add r0, r4, #0
	bl sub_02050904
	pop {r4, pc}
	nop
_021E0994: .word ov5_021E09D4
	thumb_func_end ov5_021E097C

	thumb_func_start ov5_021E0998
ov5_021E0998: ; 0x021E0998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	bl sub_02050A60
	add r4, r0, #0
	add r1, r5, #0
	bl ov5_021E1140
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov5_021E1028
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov5_021E0948
	add r2, r0, #0
	ldr r1, _021E09D0 ; =ov5_021E09D4
	add r0, r6, #0
	bl sub_02050944
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E09D0: .word ov5_021E09D4
	thumb_func_end ov5_021E0998

	thumb_func_start ov5_021E09D4
ov5_021E09D4: ; 0x021E09D4
	push {r4, r5, r6, lr}
	bl sub_02050A64
	ldr r6, _021E0A14 ; =0x021F9AFC
	ldr r4, _021E0A18 ; =0x021F9B10
	add r5, r0, #0
_021E09E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021E09F2
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	b _021E09FC
_021E09F2:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
_021E09FC:
	cmp r0, #2
	beq _021E09E0
	cmp r0, #1
	bne _021E0A0E
	add r0, r5, #0
	bl ov5_021E1134
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E0A0E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E0A14: .word 0x021F9AFC
_021E0A18: .word 0x021F9B10
	thumb_func_end ov5_021E09D4

	thumb_func_start ov5_021E0A1C
ov5_021E0A1C: ; 0x021E0A1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021E0A3A
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl ov5_021E103C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021E0A3A:
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0A1C

	thumb_func_start ov5_021E0A44
ov5_021E0A44: ; 0x021E0A44
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl ov5_021E1050
	cmp r0, #1
	bne _021E0A5E
	ldr r0, _021E0A64 ; =0x0000064D
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0A5E:
	mov r0, #0
	pop {r4, pc}
	nop
_021E0A64: .word 0x0000064D
	thumb_func_end ov5_021E0A44

	thumb_func_start ov5_021E0A68
ov5_021E0A68: ; 0x021E0A68
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_02063020
	add r4, r0, #0
	mov r0, #0
	bl sub_0206419C
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl sub_02063040
	add r6, r0, #0
	mov r0, #0
	bl sub_020641A8
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl sub_02064450
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x28
	bl sub_020644A4
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	bl sub_02063050
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	bgt _021E0ACE
	bl GF_AssertFail
_021E0ACE:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	blt _021E0ADA
	bl GF_AssertFail
_021E0ADA:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #4]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #8]
	asr r0, r0, #6
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r5, #0x34]
	bl ov6_022485F4
	str r0, [r5, #0x50]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E0A68

	thumb_func_start ov5_021E0B24
ov5_021E0B24: ; 0x021E0B24
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021E0B42
	str r0, [sp, #4]
_021E0B42:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063060
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021E0B5E
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0B5E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021E0B24

	thumb_func_start ov5_021E0B64
ov5_021E0B64: ; 0x021E0B64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021E0B82
	str r0, [sp, #4]
_021E0B82:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _021E0B92
	str r0, [sp, #8]
_021E0B92:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063060
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021E0BAA
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E0BAA:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021E0BB6
	bl GF_AssertFail
_021E0BB6:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021E0BC2
	bl GF_AssertFail
_021E0BC2:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl sub_02063024
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl sub_02063034
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl sub_02063044
	ldr r0, [r4, #0x3c]
	bl sub_02064208
	ldr r0, [r4, #0x50]
	bl ov6_02248608
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021E0B64

	thumb_func_start ov5_021E0BEC
ov5_021E0BEC: ; 0x021E0BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021E0C0A
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl ov5_021E103C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021E0C0A:
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov5_021E0BEC

	thumb_func_start ov5_021E0C10
ov5_021E0C10: ; 0x021E0C10
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl ov5_021E1050
	cmp r0, #1
	bne _021E0C2A
	ldr r0, _021E0C30 ; =0x0000064D
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0C2A:
	mov r0, #0
	pop {r4, pc}
	nop
_021E0C30: .word 0x0000064D
	thumb_func_end ov5_021E0C10

	thumb_func_start ov5_021E0C34
ov5_021E0C34: ; 0x021E0C34
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_02063020
	add r4, r0, #0
	mov r0, #1
	bl sub_0206419C
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl sub_02063040
	add r6, r0, #0
	mov r0, #1
	bl sub_020641A8
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl sub_02064450
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x28
	bl sub_020644A4
	mov r0, #0
	str r0, [r5, #0x18]
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	bl sub_02063050
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	blt _021E0C9E
	bl GF_AssertFail
_021E0C9E:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bgt _021E0CAA
	bl GF_AssertFail
_021E0CAA:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #4]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #8]
	asr r0, r0, #6
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r5, #0x34]
	bl ov6_022485F4
	str r0, [r5, #0x50]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E0C34

	thumb_func_start ov5_021E0CF4
ov5_021E0CF4: ; 0x021E0CF4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021E0D14
	str r0, [sp, #8]
	b _021E0D1C
_021E0D14:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021E0D1C:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063060
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021E0D38
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021E0D38:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0CF4

	thumb_func_start ov5_021E0D40
ov5_021E0D40: ; 0x021E0D40
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bge _021E0D5E
	str r0, [sp, #4]
_021E0D5E:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021E0D70
	str r0, [sp, #8]
	b _021E0D78
_021E0D70:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021E0D78:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063060
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021E0D90
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E0D90:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021E0D9C
	bl GF_AssertFail
_021E0D9C:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021E0DA8
	bl GF_AssertFail
_021E0DA8:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl sub_02063024
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl sub_02063034
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl sub_02063044
	ldr r0, [r4, #0x3c]
	bl sub_02064208
	ldr r0, [r4, #0x50]
	bl ov6_02248608
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0D40

	thumb_func_start ov5_021E0DD4
ov5_021E0DD4: ; 0x021E0DD4
	push {r3, lr}
	bl sub_02050A60
	bl ov5_021E0DE0
	pop {r3, pc}
	thumb_func_end ov5_021E0DD4

	thumb_func_start ov5_021E0DE0
ov5_021E0DE0: ; 0x021E0DE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	bl ov5_021E1110
	add r4, r0, #0
	str r5, [r4, #0]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #4]
	bl sub_0205EB3C
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_0205EB98
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, _021E0E0C ; =ov5_021E0E10
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E0E0C: .word ov5_021E0E10
	thumb_func_end ov5_021E0DE0

	thumb_func_start ov5_021E0E10
ov5_021E0E10: ; 0x021E0E10
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E0E28
	cmp r0, #1
	beq _021E0E3A
	cmp r0, #2
	beq _021E0E6C
	b _021E0E86
_021E0E28:
	ldr r0, [r4, #8]
	ldr r1, _021E0E8C ; =0x021F9B9C
	bl sub_02065700
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021E0E86
_021E0E3A:
	ldr r0, [r4, #0x14]
	bl sub_0206574C
	cmp r0, #1
	bne _021E0E86
	ldr r1, [r4, #0x10]
	mov r0, #0x12
	bl sub_0205ED6C
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov5_021E106C
	ldr r0, [r4, #0x14]
	bl sub_02065758
	ldr r0, [r4, #8]
	ldr r1, _021E0E90 ; =0x021F9C00
	bl sub_02065700
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021E0E86
_021E0E6C:
	ldr r0, [r4, #0x14]
	bl sub_0206574C
	cmp r0, #1
	bne _021E0E86
	ldr r0, [r4, #0x14]
	bl sub_02065758
	add r0, r4, #0
	bl ov5_021E1134
	mov r0, #1
	pop {r4, pc}
_021E0E86:
	mov r0, #0
	pop {r4, pc}
	nop
_021E0E8C: .word 0x021F9B9C
_021E0E90: .word 0x021F9C00
	thumb_func_end ov5_021E0E10

	thumb_func_start ov5_021E0E94
ov5_021E0E94: ; 0x021E0E94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062DFC
	cmp r0, #0
	beq _021E0EE4
	add r0, r4, #0
	bl sub_0205EB74
	cmp r0, #0
	bne _021E0EE4
	add r0, r5, #0
	bl sub_02062920
	cmp r0, #0xc4
	beq _021E0EE4
	cmp r0, #0xc5
	beq _021E0EE4
	ldr r1, _021E0EE8 ; =0x0000010E
	sub r0, r0, r1
	cmp r0, #1
	bls _021E0EE4
	add r0, r4, #0
	bl sub_0205EB90
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x40
	bl ov5_021DFB54
	add r0, r4, #0
	bl ov5_021DFB5C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DFB54
_021E0EE4:
	pop {r3, r4, r5, pc}
	nop
_021E0EE8: .word 0x0000010E
	thumb_func_end ov5_021E0E94

	thumb_func_start ov5_021E0EEC
ov5_021E0EEC: ; 0x021E0EEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062DFC
	cmp r0, #0
	beq _021E0F4C
	add r0, r4, #0
	bl sub_0205EB74
	cmp r0, #0
	bne _021E0F4C
	add r0, r5, #0
	bl sub_02062920
	cmp r0, #0xc4
	beq _021E0F2E
	cmp r0, #0xc5
	beq _021E0F2E
	ldr r2, _021E0F50 ; =0x0000010E
	cmp r0, r2
	beq _021E0F2E
	add r1, r2, #1
	cmp r0, r1
	beq _021E0F2E
	add r1, r2, #4
	cmp r0, r1
	beq _021E0F2E
	add r1, r2, #5
	cmp r0, r1
	bne _021E0F4C
_021E0F2E:
	add r0, r4, #0
	bl sub_0205EB90
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov5_021DFB54
	add r0, r4, #0
	bl ov5_021DFB5C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021DFB54
_021E0F4C:
	pop {r3, r4, r5, pc}
	nop
_021E0F50: .word 0x0000010E
	thumb_func_end ov5_021E0EEC

	thumb_func_start ov5_021E0F54
ov5_021E0F54: ; 0x021E0F54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r5, [r6, #0x3c]
	str r1, [sp]
	add r0, r5, #0
	bl sub_0205EB74
	add r7, r0, #0
	beq _021E0F6E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E0F6E:
	add r0, r5, #0
	bl sub_0205EB3C
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	str r6, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [sp, #4]
	str r7, [r4, #4]
	bl sub_02062DDC
	ldr r1, [sp]
	add r0, r5, #0
	bl ov5_021DFB54
	add r0, r5, #0
	bl ov5_021DFB5C
	ldr r0, _021E0FB8 ; =ov5_021E0FF0
	ldr r2, _021E0FBC ; =0x0000FFFF
	add r1, r4, #0
	bl sub_0200D9E8
	add r4, r0, #0
	bne _021E0FB0
	bl GF_AssertFail
_021E0FB0:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0FB8: .word ov5_021E0FF0
_021E0FBC: .word 0x0000FFFF
	thumb_func_end ov5_021E0F54

	thumb_func_start ov5_021E0FC0
ov5_021E0FC0: ; 0x021E0FC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _021E0FEE
	bl sub_0201CED0
	add r6, r0, #0
	ldr r4, [r6, #0xc]
	add r0, r4, #0
	bl sub_0205EB98
	add r1, r0, #0
	mov r0, #0
	bl sub_0205ED6C
	add r0, r4, #0
	bl ov5_021DFB90
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_021E0FEE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E0FC0

	thumb_func_start ov5_021E0FF0
ov5_021E0FF0: ; 0x021E0FF0
	push {r3, lr}
	ldr r0, [r1, #0xc]
	bl sub_0205EB3C
	bl sub_02062B68
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021E0FF0

	thumb_func_start ov5_021E1000
ov5_021E1000: ; 0x021E1000
	ldr r3, _021E1008 ; =ov5_021E0F54
	mov r1, #0x80
	bx r3
	nop
_021E1008: .word ov5_021E0F54
	thumb_func_end ov5_021E1000

	thumb_func_start ov5_021E100C
ov5_021E100C: ; 0x021E100C
	ldr r3, _021E1010 ; =ov5_021E0FC0
	bx r3
	; .align 2, 0
_021E1010: .word ov5_021E0FC0
	thumb_func_end ov5_021E100C

	thumb_func_start ov5_021E1014
ov5_021E1014: ; 0x021E1014
	ldr r3, _021E101C ; =ov5_021E0F54
	mov r1, #2
	lsl r1, r1, #8
	bx r3
	; .align 2, 0
_021E101C: .word ov5_021E0F54
	thumb_func_end ov5_021E1014

	thumb_func_start ov5_021E1020
ov5_021E1020: ; 0x021E1020
	ldr r3, _021E1024 ; =ov5_021E0FC0
	bx r3
	; .align 2, 0
_021E1024: .word ov5_021E0FC0
	thumb_func_end ov5_021E1020

	thumb_func_start ov5_021E1028
ov5_021E1028: ; 0x021E1028
	push {r4, lr}
	add r4, r2, #0
	mov r2, #1
	str r2, [r4, #0]
	str r1, [r4, #8]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov5_021E1028

	thumb_func_start ov5_021E103C
ov5_021E103C: ; 0x021E103C
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, #0
	bl ov6_02243F88
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E103C

	thumb_func_start ov5_021E1050
ov5_021E1050: ; 0x021E1050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov6_02243FBC
	cmp r0, #1
	bne _021E1068
	ldr r0, [r4, #0xc]
	bl ov6_02243FC8
	mov r0, #1
	pop {r4, pc}
_021E1068:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021E1050

	thumb_func_start ov5_021E106C
ov5_021E106C: ; 0x021E106C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205EB3C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F108
	cmp r0, #0
	bne _021E1090
	mov r2, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov5_021EE3FC
	pop {r3, r4, r5, r6, r7, pc}
_021E1090:
	add r0, r6, #0
	bl sub_02062C00
	add r1, r6, #0
	add r7, r0, #0
	bl ov9_0224A520
	str r0, [sp]
	ldr r2, _021E10BC ; =ov5_021E10C0
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, #0
	bl ov5_021EE3FC
	add r1, r0, #0
	beq _021E10B8
	ldr r2, [sp]
	add r0, r7, #0
	bl ov9_0224A558
_021E10B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E10BC: .word ov5_021E10C0
	thumb_func_end ov5_021E106C

	thumb_func_start ov5_021E10C0
ov5_021E10C0: ; 0x021E10C0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205EB3C
	bl sub_02062C00
	add r1, r4, #0
	bl ov9_0224A564
	pop {r4, pc}
	thumb_func_end ov5_021E10C0

	thumb_func_start ov5_021E10D4
ov5_021E10D4: ; 0x021E10D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0205EABC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205EAC8
	str r0, [sp]
	add r0, r5, #0
	bl sub_020641A8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205EB3C
	bl sub_02062A40
	ldr r2, [sp]
	add r1, r6, r7
	add r2, r2, r5
	mov r3, #0
	bl sub_0206326C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E10D4

	thumb_func_start ov5_021E1110
ov5_021E1110: ; 0x021E1110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	bne _021E1124
	bl GF_AssertFail
_021E1124:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1110

	thumb_func_start ov5_021E1134
ov5_021E1134: ; 0x021E1134
	ldr r3, _021E113C ; =sub_02018238
	add r1, r0, #0
	mov r0, #4
	bx r3
	; .align 2, 0
_021E113C: .word sub_02018238
	thumb_func_end ov5_021E1134

	thumb_func_start ov5_021E1140
ov5_021E1140: ; 0x021E1140
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1140

	.rodata


	.global Unk_ov5_021F9AFC
Unk_ov5_021F9AFC: ; 0x021F9AFC
	.incbin "incbin/overlay5_rodata.bin", 0x11E8, 0x11FC - 0x11E8

	.global Unk_ov5_021F9B10
Unk_ov5_021F9B10: ; 0x021F9B10
	.incbin "incbin/overlay5_rodata.bin", 0x11FC, 0x1210 - 0x11FC

	.global Unk_ov5_021F9B24
Unk_ov5_021F9B24: ; 0x021F9B24
	.incbin "incbin/overlay5_rodata.bin", 0x1210, 0x1228 - 0x1210

	.global Unk_ov5_021F9B3C
Unk_ov5_021F9B3C: ; 0x021F9B3C
	.incbin "incbin/overlay5_rodata.bin", 0x1228, 0x1240 - 0x1228

	.global Unk_ov5_021F9B54
Unk_ov5_021F9B54: ; 0x021F9B54
	.incbin "incbin/overlay5_rodata.bin", 0x1240, 0x1260 - 0x1240

	.global Unk_ov5_021F9B74
Unk_ov5_021F9B74: ; 0x021F9B74
	.incbin "incbin/overlay5_rodata.bin", 0x1260, 0x1288 - 0x1260

	.global Unk_ov5_021F9B9C
Unk_ov5_021F9B9C: ; 0x021F9B9C
	.incbin "incbin/overlay5_rodata.bin", 0x1288, 0x12EC - 0x1288

	.global Unk_ov5_021F9C00
Unk_ov5_021F9C00: ; 0x021F9C00
	.incbin "incbin/overlay5_rodata.bin", 0x12EC, 0x68

