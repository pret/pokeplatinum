	.include "macros/function.inc"
	.include "overlay097/ov97_0222C174.inc"

	

	.text


	thumb_func_start ov97_0222C174
ov97_0222C174: ; 0x0222C174
	push {r3, r4}
	ldr r4, _0222C19C ; =0x0223E0B0
	ldr r1, _0222C1A0 ; =0x00000123
	mov r3, #0
_0222C17C:
	ldrh r2, [r4, #2]
	cmp r0, r2
	bne _0222C18C
	ldr r0, _0222C19C ; =0x0223E0B0
	lsl r1, r3, #2
	ldrh r0, [r0, r1]
	pop {r3, r4}
	bx lr
_0222C18C:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r1
	blo _0222C17C
	mov r0, #0x3f
	pop {r3, r4}
	bx lr
	nop
_0222C19C: .word 0x0223E0B0
_0222C1A0: .word 0x00000123
	thumb_func_end ov97_0222C174

	thumb_func_start ov97_0222C1A4
ov97_0222C1A4: ; 0x0222C1A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0222C20C ; =0x00002710
	add r0, r4, #0
	bl _s32_div_f
	add r0, #0x30
	strh r0, [r5]
	ldr r1, _0222C20C ; =0x00002710
	add r0, r4, #0
	bl _s32_div_f
	add r4, r1, #0
	mov r1, #0xfa
	add r0, r4, #0
	lsl r1, r1, #2
	bl _s32_div_f
	add r0, #0x30
	mov r1, #0xfa
	strh r0, [r5, #2]
	add r0, r4, #0
	lsl r1, r1, #2
	bl _s32_div_f
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0x64
	bl _s32_div_f
	add r0, #0x30
	strh r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x64
	bl _s32_div_f
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r0, #0x30
	strh r0, [r5, #6]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r1, #0
	add r4, #0x30
	strh r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222C20C: .word 0x00002710
	thumb_func_end ov97_0222C1A4

	thumb_func_start ov97_0222C210
ov97_0222C210: ; 0x0222C210
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02025EF0
	ldr r5, _0222C248 ; =0x0223F180
	add r4, r0, #0
	mov r6, #0
_0222C220:
	ldrh r0, [r4]
	bl ov97_0222C174
	strh r0, [r5]
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #8
	blt _0222C220
	ldr r0, [r7, #0x10]
	bl sub_02025F24
	add r1, r0, #0
	ldr r0, _0222C24C ; =0x0223F190
	bl ov97_0222C1A4
	ldr r0, _0222C250 ; =0x0223F180
	mov r1, #0
	strh r1, [r0, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C248: .word 0x0223F180
_0222C24C: .word 0x0223F190
_0222C250: .word 0x0223F180
	thumb_func_end ov97_0222C210

	thumb_func_start ov97_0222C254
ov97_0222C254: ; 0x0222C254
	push {r3, r4, r5, lr}
	sub sp, #0x48
	ldr r5, _0222C380 ; =0x0223D6DC
	add r4, r0, #0
	add r3, sp, #0x20
	mov r2, #5
_0222C260:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222C260
	ldr r3, _0222C384 ; =0x0223D6CC
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x20
	bl sub_0201FE94
	add r0, sp, #0x10
	bl sub_02018368
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	ldr r0, [r4, #4]
	mov r2, #1
	lsl r3, r3, #0xc
	bl ov97_022376FC
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r1, #1
	mov r3, #0x3e
	ldr r0, [r4, #4]
	add r2, r1, #0
	lsl r3, r3, #0xa
	bl ov97_022376FC
	mov r0, #0
	str r0, [sp]
	mov r3, #0x1e
	ldr r0, [r4, #4]
	mov r1, #4
	mov r2, #1
	lsl r3, r3, #0xa
	bl ov97_022376FC
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r3, #7
	ldr r0, [r4, #4]
	mov r1, #5
	mov r2, #1
	lsl r3, r3, #0xc
	bl ov97_022376FC
	bl sub_0201D710
	mov r0, #0
	ldr r2, [r4, #0]
	add r1, r0, #0
	bl sub_02002E7C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r3, r2, #0
	bl sub_0200DAA4
	ldr r0, [r4, #0x14]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0xa
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0x8c
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	mov r1, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	add r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov97_0222C388
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_0222C380: .word 0x0223D6DC
_0222C384: .word 0x0223D6CC
	thumb_func_end ov97_0222C254

	thumb_func_start ov97_0222C388
ov97_0222C388: ; 0x0222C388
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #4
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, #0xfc
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	mov r3, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	mov r3, #4
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222C388

	thumb_func_start ov97_0222C404
ov97_0222C404: ; 0x0222C404
	push {r3, r4, lr}
	sub sp, #0x5c
	add r4, r0, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222C44E
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, sp, #8
	add r1, #0x18
	mov r2, #0
	mov r3, #0xe
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	add r0, sp, #8
	mov r1, #0x16
	mov r2, #0x10
	bl ov97_02237858
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #8
	mov r2, #5
	mov r3, #4
	bl ov97_0223795C
	add sp, #0x5c
	mov r0, #1
	pop {r3, r4, pc}
_0222C44E:
	ldr r0, _0222C478 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222C470
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0200DC9C
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A8FC
	add sp, #0x5c
	mov r0, #0
	pop {r3, r4, pc}
_0222C470:
	mov r0, #1
	add sp, #0x5c
	pop {r3, r4, pc}
	nop
_0222C478: .word 0x021BF67C
	thumb_func_end ov97_0222C404

	thumb_func_start ov97_0222C47C
ov97_0222C47C: ; 0x0222C47C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r3, _0222C570 ; =0x000001A5
	add r0, #0x48
	add r1, #0x28
	mov r2, #0
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x48
	mov r1, #0x1b
	mov r2, #4
	bl ov97_02237858
	add r0, r4, #0
	mov r1, #1
	add r0, #0x48
	add r2, r1, #0
	bl ov97_02237860
	mov r0, #0x46
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x48
	bl ov97_02237A18
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r1, [r4, r3]
	mov r2, #0
	add r0, r1, r0
	str r0, [r4, r3]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x9c
	add r1, #0x18
	add r3, #0x61
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x9c
	mov r1, #0x1e
	mov r2, #4
	bl ov97_02237858
	add r0, r4, #0
	add r0, #0x9c
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	mov r0, #0xb
	str r0, [sp]
	add r1, r4, #0
	mov r2, #1
	ldr r0, [r4, #4]
	add r1, #0x9c
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x9c
	bl ov97_02237A18
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xa
	mov r2, #7
	mov r3, #9
	bl ov97_02237B0C
	mov r0, #1
	str r0, [sp]
	ldr r1, _0222C574 ; =0x00003170
	mov r0, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x4c
	bl ov97_02237D14
	ldr r1, _0222C574 ; =0x00003170
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov97_0222C578
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0222C570: .word 0x000001A5
_0222C574: .word 0x00003170
	thumb_func_end ov97_0222C47C

	thumb_func_start ov97_0222C578
ov97_0222C578: ; 0x0222C578
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r3, _0222C684 ; =0x000001A5
	add r0, #0xf0
	add r1, #0x38
	mov r2, #0
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0xf0
	mov r1, #0x1a
	mov r2, #4
	bl ov97_02237858
	add r0, r5, #0
	add r0, #0xf0
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	mov r0, #0x41
	lsl r0, r0, #2
	str r4, [r5, r0]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x10]
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	add r0, r4, #0
	mov r3, #5
	str r1, [sp, #4]
	bl sub_0200B60C
	mov r0, #0x42
	str r0, [sp]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xf0
	mov r2, #3
	mov r3, #0xd
	bl ov97_0223795C
	add r1, r5, #0
	mov r0, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r1, #1
	bl sub_02002DF8
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xf0
	mov r1, #0
	bl ov97_02237868
	mov r2, #0x44
	str r2, [sp]
	add r1, r5, #0
	sub r2, #0x45
	ldr r0, [r5, #4]
	add r1, #0xf0
	add r3, r2, #0
	bl ov97_0223795C
	add r0, sp, #0x10
	bl OS_GetMacAddress
	add r0, sp, #0x10
	bl ov97_022335A8
	add r1, sp, #0x1c
	add r2, sp, #0x18
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov97_022335EC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	mov r2, #0x45
	str r2, [sp]
	ldr r0, [r5, #4]
	add r5, #0xf0
	sub r2, #0x46
	add r1, r5, #0
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222C684: .word 0x000001A5
	thumb_func_end ov97_0222C578

	thumb_func_start ov97_0222C688
ov97_0222C688: ; 0x0222C688
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02237DA0
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222C6D0
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A8FC
_0222C6D0:
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov97_0222C688

	thumb_func_start ov97_0222C6F8
ov97_0222C6F8: ; 0x0222C6F8
	push {r3, r4, r5, lr}
	mov r3, #2
	ldr r2, _0222C780 ; =0x000034DC
	mov r1, #0x55
	lsl r3, r3, #0x10
	add r5, r0, #0
	bl ov97_022376C4
	add r4, r0, #0
	mov r0, #0x55
	str r0, [r4, #0]
	bl sub_02018340
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	bl sub_02025E38
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02027560
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_02025E44
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl ov97_02237694
	ldr r0, [r4, #8]
	bl sub_0202442C
	ldr r1, _0222C784 ; =0x00003174
	mov r2, #0x53
	str r0, [r4, r1]
	mov r0, #9
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0x28
	sub r0, #8
	str r1, [r4, r0]
	add r1, r2, #0
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r2, #0xc
	str r0, [r4, r2]
	mov r2, #3
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	ldr r1, _0222C788 ; =0x00000496
	mov r0, #9
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222C780: .word 0x000034DC
_0222C784: .word 0x00003174
_0222C788: .word 0x00000496
	thumb_func_end ov97_0222C6F8

	thumb_func_start ov97_0222C78C
ov97_0222C78C: ; 0x0222C78C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0xd
	bhi _0222C7F2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222C7AC: ; jump table
	.short _0222C7C8 - _0222C7AC - 2 ; case 0
	.short _0222C7EA - _0222C7AC - 2 ; case 1
	.short _0222C808 - _0222C7AC - 2 ; case 2
	.short _0222C85A - _0222C7AC - 2 ; case 3
	.short _0222C886 - _0222C7AC - 2 ; case 4
	.short _0222C8C2 - _0222C7AC - 2 ; case 5
	.short _0222C8FC - _0222C7AC - 2 ; case 6
	.short _0222C92C - _0222C7AC - 2 ; case 7
	.short _0222C92C - _0222C7AC - 2 ; case 8
	.short _0222C92C - _0222C7AC - 2 ; case 9
	.short _0222C92C - _0222C7AC - 2 ; case 10
	.short _0222C912 - _0222C7AC - 2 ; case 11
	.short _0222C91A - _0222C7AC - 2 ; case 12
	.short _0222C926 - _0222C7AC - 2 ; case 13
_0222C7C8:
	bl ov97_0222C254
	ldr r0, [r4, #0xc]
	bl sub_02027520
	cmp r0, #0
	bne _0222C7E4
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C7E4:
	mov r0, #2
	str r0, [r5, #0]
	b _0222C92C
_0222C7EA:
	bl ov97_0222C404
	cmp r0, #0
	beq _0222C7F4
_0222C7F2:
	b _0222C92C
_0222C7F4:
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C808:
	bl ov97_0222C47C
	ldr r0, _0222C938 ; =0x00003174
	ldr r0, [r4, r0]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0222C844
	add r0, r4, #0
	mov r1, #1
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r1, _0222C93C ; =0x0000317C
	add r2, r5, #0
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #3
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C844:
	mov r0, #0x53
	mov r1, #7
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	mov r1, #4
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C85A:
	ldr r0, _0222C93C ; =0x0000317C
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222C92C
	ldr r0, _0222C940 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _0222C92C
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C886:
	bl ov97_0222CB10
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #5
	bne _0222C8AA
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8AA:
	cmp r0, #4
	bne _0222C92C
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8C2:
	bl ov97_0222C388
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r1, #0xc6
	lsl r1, r1, #6
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0x55
	bl ov97_02231FFC
	mov r0, #1
	mov r1, #6
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	ldr r1, _0222C944 ; =0x000032D2
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	b _0222C92C
_0222C8FC:
	ldr r0, _0222C940 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0222C92C
	mov r0, #0
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C912:
	mov r0, #0
	bl OS_ResetSystem
	b _0222C92C
_0222C91A:
	add r0, r6, #0
	bl ov97_0222C688
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222C926:
	add r0, r5, #0
	bl ov97_022377F0
_0222C92C:
	bl ov97_02237CA0
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222C938: .word 0x00003174
_0222C93C: .word 0x0000317C
_0222C940: .word 0x021BF67C
_0222C944: .word 0x000032D2
	thumb_func_end ov97_0222C78C

	thumb_func_start ov97_0222C948
ov97_0222C948: ; 0x0222C948
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5b
	bl sub_0201807C
	ldr r0, _0222C96C ; =0x0000004D
	ldr r1, _0222C970 ; =0x021D742C
	bl sub_02000EC4
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x55
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	nop
_0222C96C: .word 0x0000004D
_0222C970: .word 0x021D742C
	thumb_func_end ov97_0222C948

	thumb_func_start ov97_0222C974
ov97_0222C974: ; 0x0222C974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #6
	add r5, r6, r0
	mov r2, #0xd6
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r2, _0222CAA0 ; =0x000001A5
	ldr r3, [r6, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200B358
	mov r1, #0xc6
	mov r2, #7
	lsl r1, r1, #6
	strh r2, [r6, r1]
	ldr r3, [r6, #0]
	add r1, r7, #0
	mov r2, #0x4c
	str r0, [sp]
	bl sub_0200B29C
	mov r1, #0x41
	lsl r1, r1, #2
	add r4, r0, #0
	add r1, r5, r1
	mov r2, #0x24
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xc
	bl ov97_02237E4C
	str r0, [sp, #4]
	mov r0, #0xa
	bl ov97_02237E4C
	add r4, r0, #0
	mov r0, #0xb
	bl ov97_02237E4C
	add r1, r4, #0
	orr r1, r0
	ldr r0, [sp, #4]
	mov r2, #1
	orr r1, r0
	mov r0, #0x53
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #4
	strh r2, [r5, r1]
	add r1, r0, #6
	ldrb r2, [r5, r1]
	mov r1, #1
	bic r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #2
	bic r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #4
	orr r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #8
	orr r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #0x20
	add r0, r0, #6
	bic r2, r1
	strb r2, [r5, r0]
	ldr r0, [sp]
	ldr r3, [r6, #0]
	add r1, r7, #0
	mov r2, #0x4b
	bl sub_0200B29C
	add r4, r0, #0
	mov r1, #0x55
	lsl r1, r1, #2
	add r1, r5, r1
	mov r2, #0xfa
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xd2
	lsl r0, r0, #2
	mov r1, #0
	ldr r3, _0222CAA4 ; =0x000001EA
	strb r1, [r5, r0]
	add r2, r0, #2
	strh r3, [r5, r2]
	add r2, r0, #4
	strh r1, [r5, r2]
	add r2, r0, #6
	strh r1, [r5, r2]
	add r0, #8
	strb r1, [r5, r0]
	add r0, sp, #8
	bl sub_020138A4
	add r0, sp, #8
	bl RTC_ConvertDateToDay
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_0200B3F0
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _0222CAA8 ; =0x00003174
	add r1, r5, #0
	ldr r0, [r6, r0]
	mov r2, #3
	bl sub_0202DB2C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl ov97_02238194
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAA0: .word 0x000001A5
_0222CAA4: .word 0x000001EA
_0222CAA8: .word 0x00003174
	thumb_func_end ov97_0222C974

	thumb_func_start ov97_0222CAAC
ov97_0222CAAC: ; 0x0222CAAC
	mov r2, #0x16
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov97_0222CAAC

	thumb_func_start ov97_0222CAB4
ov97_0222CAB4: ; 0x0222CAB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x16
	lsl r1, r1, #4
	add r4, r3, #0
	ldr r3, [r0, r1]
	sub r3, r3, #1
	str r3, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0222CAD6
	bl ov97_022333BC
	mov r0, #0x17
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222CAD6:
	cmp r2, #0
	beq _0222CAEE
	bl ov97_02233388
	cmp r0, #0
	bne _0222CAEE
	bl ov97_022333BC
	mov r0, #0x16
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222CAEE:
	cmp r4, #0
	beq _0222CB06
	ldr r0, _0222CB0C ; =0x021BF67C
	ldr r0, [r0, #0x48]
	tst r0, r4
	beq _0222CB06
	bl ov97_022333BC
	mov r0, #0x1a
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CB06:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222CB0C: .word 0x021BF67C
	thumb_func_end ov97_0222CAB4

	thumb_func_start ov97_0222CB10
ov97_0222CB10: ; 0x0222CB10
	push {r3, r4, r5, lr}
	mov r5, #0x57
	lsl r5, r5, #2
	add r4, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CB36
	bl ov97_02233230
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
	bl ov97_022330DC
	mov r0, #1
	bl ov97_0223346C
_0222CB36:
	ldr r0, [r4, r5]
	cmp r0, #0x1e
	bls _0222CB3E
	b _0222D036
_0222CB3E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CB4A: ; jump table
	.short _0222CB88 - _0222CB4A - 2 ; case 0
	.short _0222CB9E - _0222CB4A - 2 ; case 1
	.short _0222CBC4 - _0222CB4A - 2 ; case 2
	.short _0222CBE6 - _0222CB4A - 2 ; case 3
	.short _0222CC10 - _0222CB4A - 2 ; case 4
	.short _0222D036 - _0222CB4A - 2 ; case 5
	.short _0222D036 - _0222CB4A - 2 ; case 6
	.short _0222CC42 - _0222CB4A - 2 ; case 7
	.short _0222CCB8 - _0222CB4A - 2 ; case 8
	.short _0222CCD6 - _0222CB4A - 2 ; case 9
	.short _0222CD20 - _0222CB4A - 2 ; case 10
	.short _0222CD5C - _0222CB4A - 2 ; case 11
	.short _0222CD76 - _0222CB4A - 2 ; case 12
	.short _0222CDAA - _0222CB4A - 2 ; case 13
	.short _0222CDEC - _0222CB4A - 2 ; case 14
	.short _0222CE0C - _0222CB4A - 2 ; case 15
	.short _0222CE24 - _0222CB4A - 2 ; case 16
	.short _0222CE3E - _0222CB4A - 2 ; case 17
	.short _0222CE94 - _0222CB4A - 2 ; case 18
	.short _0222CF1C - _0222CB4A - 2 ; case 19
	.short _0222CF64 - _0222CB4A - 2 ; case 20
	.short _0222D036 - _0222CB4A - 2 ; case 21
	.short _0222CF98 - _0222CB4A - 2 ; case 22
	.short _0222CF9C - _0222CB4A - 2 ; case 23
	.short _0222D036 - _0222CB4A - 2 ; case 24
	.short _0222D036 - _0222CB4A - 2 ; case 25
	.short _0222D004 - _0222CB4A - 2 ; case 26
	.short _0222D036 - _0222CB4A - 2 ; case 27
	.short _0222CFD0 - _0222CB4A - 2 ; case 28
	.short _0222CC5E - _0222CB4A - 2 ; case 29
	.short _0222CC9C - _0222CB4A - 2 ; case 30
_0222CB88:
	add r0, r4, #0
	bl ov97_0222C210
	bl sub_02033478
	mov r0, #0x52
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4, r5]
	b _0222D036
_0222CB9E:
	bl sub_020334A4
	cmp r0, #0
	beq _0222CC56
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, _0222CEE0 ; =0x0223E0A4
	add r1, r4, r1
	bl ov97_02232E38
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl sub_02039734
	mov r0, #2
	str r0, [r4, r5]
	b _0222D036
_0222CBC4:
	bl ov97_02233120
	mov r1, #0x19
	add r0, r4, #0
	lsl r1, r1, #6
	bl ov97_0222CAAC
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl sub_0200E7FC
	ldr r1, _0222CEE4 ; =0x000034D8
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r4, r5]
	b _0222D036
_0222CBE6:
	bl ov97_02233248
	cmp r0, #0
	beq _0222CC02
	sub r1, r0, #1
	mov r0, #0x59
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _0222CEE8 ; =0x00000708
	add r0, r4, #0
	bl ov97_0222CAAC
	mov r0, #4
	str r0, [r4, r5]
_0222CC02:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC10:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_0223316C
	cmp r0, #0
	beq _0222CC34
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_022331A8
	mov r0, #7
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
_0222CC34:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC42:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	bl ov97_02233388
	cmp r0, #0
	bne _0222CC58
_0222CC56:
	b _0222D036
_0222CC58:
	mov r0, #0x1d
	str r0, [r4, r5]
	b _0222D036
_0222CC5E:
	mov r0, #0x1e
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222CEE4 ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _0222CEE4 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _0222CEF0 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x1e
	str r0, [r4, r5]
	b _0222D036
_0222CC9C:
	ldr r0, _0222CEF4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222CCAA
	mov r0, #8
	str r0, [r4, r5]
_0222CCAA:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCB8:
	bl ov97_02233268
	mov r0, #9
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCD6:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD12
	bl ov97_0223329C
	mov r0, #0xa
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x22
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEF0 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0222CEE4 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CD12:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD20:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD4E
	mov r0, #0x47
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC ; =0x00003170
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add r0, r4, #0
	bl ov97_0222C578
	mov r0, #0xb
	str r0, [r4, r5]
_0222CD4E:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD5C:
	ldr r0, _0222CEF8 ; =0x0223E53C
	mov r1, #0x2a
	mov r2, #1
	bl ov97_022332C8
	mov r0, #0xc
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CD76:
	bl ov97_02233320
	cmp r0, #0
	beq _0222CD9C
	mov r0, #0xd
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0x3c
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x47
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
_0222CD9C:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CDAA:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE1C
	mov r0, #0x48
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl sub_0200E7FC
	ldr r1, _0222CEE4 ; =0x000034D8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov97_0222C974
	ldr r0, [r4, #8]
	bl ov97_0223846C
	mov r0, #0xe
	str r0, [r4, r5]
	b _0222D036
_0222CDEC:
	bl ov97_0223847C
	cmp r0, #1
	bne _0222CE1C
	mov r0, #0xf
	str r0, [r4, r5]
	bl OS_GetTickLo
	mov r1, #0x36
	bl _s32_div_f
	mov r0, #0x16
	add r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE0C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CE1E
_0222CE1C:
	b _0222D036
_0222CE1E:
	mov r0, #0x10
	str r0, [r4, r5]
	b _0222D036
_0222CE24:
	ldr r0, _0222CEF8 ; =0x0223E53C
	mov r1, #0x2a
	mov r2, #2
	bl ov97_022332C8
	mov r0, #0x11
	str r0, [r4, r5]
	mov r1, #0x4b
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE3E:
	bl ov97_0223334C
	cmp r0, #0
	beq _0222CE5A
	bl ov97_022384F4
	mov r0, #0x12
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE5A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE7A
	bl ov97_022333BC
	mov r0, #0x17
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
_0222CE7A:
	bl ov97_02233388
	cmp r0, #0
	bne _0222CF2C
	bl ov97_022333BC
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _0222D036
_0222CE94:
	bl ov97_02238528
	cmp r0, #3
	bne _0222CEAE
	bl ov97_022333BC
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _0222CEFC
_0222CEAE:
	bl ov97_02238528
	cmp r0, #2
	beq _0222CEBC
	bl ov97_0223847C
	b _0222CEFC
_0222CEBC:
	bl ov97_02233320
	cmp r0, #0
	bne _0222CECC
	bl ov97_02233388
	cmp r0, #0
	bne _0222CEFC
_0222CECC:
	mov r0, #0x13
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl ov97_022333BC
	b _0222D036
	nop
_0222CEE0: .word 0x0223E0A4
_0222CEE4: .word 0x000034D8
_0222CEE8: .word 0x00000708
_0222CEEC: .word 0x00003170
_0222CEF0: .word 0x000005DC
_0222CEF4: .word 0x021BF67C
_0222CEF8: .word 0x0223E53C
_0222CEFC:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CF1C
	bl ov97_022333BC
	mov r0, #0x17
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r4, r0]
_0222CF1C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CF2E
_0222CF2C:
	b _0222D036
_0222CF2E:
	mov r0, #0x14
	str r0, [r4, r5]
	mov r0, #0x49
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _0222D044 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0222D040 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	b _0222D036
_0222CF64:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CF86
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222CF86:
	ldr r0, _0222D048 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222D036
	mov r0, #0x1b
	str r0, [r4, r5]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0222CF98:
	mov r0, #0x17
	str r0, [r4, r5]
_0222CF9C:
	mov r0, #0x4a
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CFC4
	bl sub_0200EBA0
_0222CFC4:
	ldr r0, _0222D040 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x1c
	str r0, [r4, r5]
	b _0222D036
_0222CFD0:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CFF2
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222CFF2:
	ldr r0, _0222D048 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222D036
	mov r0, #0
	bl OS_ResetSystem
	b _0222D036
_0222D004:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D036
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D032
	bl sub_0200EBA0
_0222D032:
	mov r0, #5
	pop {r3, r4, r5, pc}
_0222D036:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222D03C: .word 0x00003170
_0222D040: .word 0x000034D8
_0222D044: .word 0x000005DC
_0222D048: .word 0x021BF67C
	thumb_func_end ov97_0222CB10

	.rodata


	.global Unk_ov97_0223D6BC
Unk_ov97_0223D6BC: ; 0x0223D6BC
	.incbin "incbin/overlay97_rodata.bin", 0x48, 0x58 - 0x48

	.global Unk_ov97_0223D6CC
Unk_ov97_0223D6CC: ; 0x0223D6CC
	.incbin "incbin/overlay97_rodata.bin", 0x58, 0x68 - 0x58

	.global Unk_ov97_0223D6DC
Unk_ov97_0223D6DC: ; 0x0223D6DC
	.incbin "incbin/overlay97_rodata.bin", 0x68, 0x28


	.data


	.global Unk_ov97_0223E0A4
Unk_ov97_0223E0A4: ; 0x0223E0A4
	.incbin "incbin/overlay97_data.bin", 0x164, 0x170 - 0x164

	.global Unk_ov97_0223E0B0
Unk_ov97_0223E0B0: ; 0x0223E0B0
	.incbin "incbin/overlay97_data.bin", 0x170, 0x5FC - 0x170

	.global Unk_ov97_0223E53C
Unk_ov97_0223E53C: ; 0x0223E53C
	.incbin "incbin/overlay97_data.bin", 0x5FC, 0x2A


	.bss


	.global Unk_ov97_0223F180
Unk_ov97_0223F180: ; 0x0223F180
	.space 0x10

	.global Unk_ov97_0223F190
Unk_ov97_0223F190: ; 0x0223F190
	.space 0x14

