	.include "macros/function.inc"
	.include "overlay073/ov73_021D3250.inc"

	

	.text


	thumb_func_start ov73_021D3250
ov73_021D3250: ; 0x021D3250
	push {r4, lr}
	mov r2, #1
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x53
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x53
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl memset
	mov r0, #0x53
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov73_021D3250

	thumb_func_start ov73_021D3280
ov73_021D3280: ; 0x021D3280
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bls _021D3296
	b _021D33EA
_021D3296:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D32A2: ; jump table
	.short _021D32AE - _021D32A2 - 2 ; case 0
	.short _021D3334 - _021D32A2 - 2 ; case 1
	.short _021D335A - _021D32A2 - 2 ; case 2
	.short _021D3384 - _021D32A2 - 2 ; case 3
	.short _021D3396 - _021D32A2 - 2 ; case 4
	.short _021D33C8 - _021D32A2 - 2 ; case 5
_021D32AE:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r6, #0
	bl sub_0200F344
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D33F0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D33F4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov73_021D342C
	add r0, r4, #0
	bl ov73_021D366C
	ldr r0, _021D33F8 ; =ov73_021D3420
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	bl sub_020241F0
	add r1, r6, #0
	add r7, r0, #0
	str r1, [sp]
	ldr r2, _021D33FC ; =0x0000FFFC
	add r1, r7, #0
	mov r3, #7
	bl sub_020039F8
	mov r2, #2
	add r0, r7, #0
	add r1, r6, #0
	lsl r2, r2, #8
	bl GX_LoadBGPltt
	mov r0, #0x3c
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r5, #0]
	b _021D33EA
_021D3334:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3340
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3340:
	ldr r0, _021D3400 ; =0x00000406
	bl sub_02004224
	ldr r1, _021D3400 ; =0x00000406
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	mov r0, #0x5a
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r5, #0]
	b _021D33EA
_021D335A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3366
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3366:
	str r6, [r4, #0x24]
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
	b _021D33EA
_021D3384:
	bl ov73_021D37AC
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D33EA
	mov r0, #4
	str r0, [r5, #0]
	b _021D33EA
_021D3396:
	bl ov73_021D37AC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x28
	mov r3, #0x30
	bl ov73_021D3698
	cmp r0, #1
	bne _021D33EA
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _021D33EA
_021D33C8:
	bl ov73_021D37AC
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D33EA
	add r0, r4, #0
	bl ov73_021D368C
	add r0, r4, #0
	bl ov73_021D35F4
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
_021D33EA:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D33F0: .word 0xFFFFE0FF
_021D33F4: .word 0x04001000
_021D33F8: .word ov73_021D3420
_021D33FC: .word 0x0000FFFC
_021D3400: .word 0x00000406
	thumb_func_end ov73_021D3280

	thumb_func_start ov73_021D3404
ov73_021D3404: ; 0x021D3404
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov73_021D3404

	thumb_func_start ov73_021D3420
ov73_021D3420: ; 0x021D3420
	ldr r3, _021D3428 ; =sub_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D3428: .word sub_0201C2B8
	thumb_func_end ov73_021D3420

	thumb_func_start ov73_021D342C
ov73_021D342C: ; 0x021D342C
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D35D8 ; =0x021D3AC0
	add r4, r0, #0
	add r3, sp, #0x90
	mov r2, #5
_021D3438:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D3438
	add r0, sp, #0x90
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x80
	ldr r5, _021D35DC ; =0x021D3A40
	str r0, [r4, #4]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D35E0 ; =0x021D3A6C
	add r3, sp, #0x64
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r3, [r4, #0]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _021D35E4 ; =0x021D3A88
	add r3, sp, #0x48
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	add r3, r1, #0
	bl sub_020183C4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	bl sub_02006E3C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	bl sub_02006E60
	ldr r5, _021D35E8 ; =0x021D3A50
	add r3, sp, #0x2c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #1
	bl sub_02006E60
	ldr r5, _021D35EC ; =0x021D3AA4
	add r3, sp, #0x10
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x88
	mov r3, #3
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	mov r1, #6
	str r0, [sp, #4]
	mov r0, #0x88
	add r3, r2, #0
	bl sub_02006E84
	mov r3, #0x40
	mov r0, #7
	str r3, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #9
	str r0, [sp, #8]
	mov r0, #0x88
	mov r2, #0
	bl sub_02006E9C
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x20
	bl sub_02002E7C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r2, #0xc
	ldr r0, _021D35F0 ; =0x04000050
	mov r1, #2
	mov r3, #4
	str r2, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D35D8: .word 0x021D3AC0
_021D35DC: .word 0x021D3A40
_021D35E0: .word 0x021D3A6C
_021D35E4: .word 0x021D3A88
_021D35E8: .word 0x021D3A50
_021D35EC: .word 0x021D3AA4
_021D35F0: .word 0x04000050
	thumb_func_end ov73_021D342C

	thumb_func_start ov73_021D35F4
ov73_021D35F4: ; 0x021D35F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, _021D3668 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	pop {r4, pc}
	nop
_021D3668: .word 0x04000050
	thumb_func_end ov73_021D35F4

	thumb_func_start ov73_021D366C
ov73_021D366C: ; 0x021D366C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _021D3688 ; =0x0000025F
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #8]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
_021D3688: .word 0x0000025F
	thumb_func_end ov73_021D366C

	thumb_func_start ov73_021D368C
ov73_021D368C: ; 0x021D368C
	ldr r3, _021D3694 ; =sub_0200B190
	ldr r0, [r0, #8]
	bx r3
	nop
_021D3694: .word sub_0200B190
	thumb_func_end ov73_021D368C

	thumb_func_start ov73_021D3698
ov73_021D3698: ; 0x021D3698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #3
	bhi _021D3798
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D36B4: ; jump table
	.short _021D36BC - _021D36B4 - 2 ; case 0
	.short _021D3756 - _021D36B4 - 2 ; case 1
	.short _021D3768 - _021D36B4 - 2 ; case 2
	.short _021D3782 - _021D36B4 - 2 ; case 3
_021D36BC:
	mov r0, #2
	add r1, r6, #0
	bl sub_02019120
	mov r0, #1
	ldr r1, [r4, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	add r5, r0, #0
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _021D37A0 ; =0x021D3A38
	add r1, #0x10
	bl sub_0201A8D4
	add r1, r6, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r6, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r7, r0, #1
	add r0, r5, #0
	bl sub_02023C5C
	lsl r1, r0, #4
	mov r0, #0xc0
	sub r0, r0, r1
	lsr r0, r0, #1
	str r0, [sp]
	add r1, r6, #0
	ldr r0, _021D37A4 ; =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	add r2, r5, #0
	add r3, r7, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A954
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #0xf0
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
	b _021D3798
_021D3756:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3762
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021D3798
_021D3762:
	mov r0, #2
	str r0, [r4, #0xc]
	b _021D3798
_021D3768:
	ldr r0, _021D37A8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D377C
	mov r0, #2
	and r0, r1
	cmp r0, #2
	bne _021D3798
_021D377C:
	mov r0, #3
	str r0, [r4, #0xc]
	b _021D3798
_021D3782:
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	add r0, r6, #0
	str r0, [r4, #0xc]
	mov r6, #1
_021D3798:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D37A0: .word 0x021D3A38
_021D37A4: .word 0x000F0200
_021D37A8: .word 0x021BF67C
	thumb_func_end ov73_021D3698

	thumb_func_start ov73_021D37AC
ov73_021D37AC: ; 0x021D37AC
	push {r3, lr}
	ldr r1, [r0, #0x20]
	mov r2, #3
	add r3, r1, #4
	str r3, [r0, #0x20]
	ldr r0, [r0, #4]
	mov r1, #1
	asr r3, r3, #4
	bl sub_02019184
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov73_021D37AC

	.rodata


	.global Unk_ov73_021D3A38
Unk_ov73_021D3A38: ; 0x021D3A38
	.incbin "incbin/overlay73_rodata.bin", 0x274, 0x27C - 0x274

	.global Unk_ov73_021D3A40
Unk_ov73_021D3A40: ; 0x021D3A40
	.incbin "incbin/overlay73_rodata.bin", 0x27C, 0x28C - 0x27C

	.global Unk_ov73_021D3A50
Unk_ov73_021D3A50: ; 0x021D3A50
	.incbin "incbin/overlay73_rodata.bin", 0x28C, 0x2A8 - 0x28C

	.global Unk_ov73_021D3A6C
Unk_ov73_021D3A6C: ; 0x021D3A6C
	.incbin "incbin/overlay73_rodata.bin", 0x2A8, 0x2C4 - 0x2A8

	.global Unk_ov73_021D3A88
Unk_ov73_021D3A88: ; 0x021D3A88
	.incbin "incbin/overlay73_rodata.bin", 0x2C4, 0x2E0 - 0x2C4

	.global Unk_ov73_021D3AA4
Unk_ov73_021D3AA4: ; 0x021D3AA4
	.incbin "incbin/overlay73_rodata.bin", 0x2E0, 0x2FC - 0x2E0

	.global Unk_ov73_021D3AC0
Unk_ov73_021D3AC0: ; 0x021D3AC0
	.incbin "incbin/overlay73_rodata.bin", 0x2FC, 0x28

