	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F50BC
ov5_021F50BC: ; 0x021F50BC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x78
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #8]
	bl ov5_021F50E8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F50BC

	thumb_func_start ov5_021F50D8
ov5_021F50D8: ; 0x021F50D8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F5110
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F50D8

	thumb_func_start ov5_021F50E8
ov5_021F50E8: ; 0x021F50E8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	mov r3, #0x16
	bl ov5_021DFB00
	add r0, r4, #0
	add r4, #0xc
	add r0, #0x20
	add r1, r4, #0
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F50E8

	thumb_func_start ov5_021F5110
ov5_021F5110: ; 0x021F5110
	ldr r3, _021F5118 ; =sub_0207395C
	add r0, #0xc
	bx r3
	nop
_021F5118: .word sub_0207395C
	thumb_func_end ov5_021F5110

	thumb_func_start ov5_021F511C
ov5_021F511C: ; 0x021F511C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #5
	str r4, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021F5154 ; =0x02200A50
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F5154: .word 0x02200A50
	thumb_func_end ov5_021F511C

	thumb_func_start ov5_021F5158
ov5_021F5158: ; 0x021F5158
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x38]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x38]
	bl sub_02062918
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5158

	thumb_func_start ov5_021F51A0
ov5_021F51A0: ; 0x021F51A0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F51A0

	thumb_func_start ov5_021F51A4
ov5_021F51A4: ; 0x021F51A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x38]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F51C0
	bl sub_02022974
_021F51C0:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F51D0
	cmp r0, #1
	beq _021F51EE
	add sp, #0xc
	cmp r0, #2
	pop {r3, r4, r5, r6, pc}
_021F51D0:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063050
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F51EE:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021F51FE
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021F51FE:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F51A4

	thumb_func_start ov5_021F5204
ov5_021F5204: ; 0x021F5204
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021F527C ; =0x02200A44
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r6, _021F5280 ; =0x02200A64
	str r0, [r3, #0]
	add r5, sp, #0x24
	mov r3, #4
_021F521E:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021F521E
	ldr r0, [r6, #0]
	add r1, sp, #0x54
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_020715E4
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl sub_020AF5E0
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl sub_0201E2E0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020C4C88
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl sub_020BB8EC
	ldr r0, [r4, #0x34]
	add r1, sp, #0x54
	add r0, #0x20
	add r2, sp, #0x48
	add r3, sp, #0x24
	bl sub_02073C1C
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F527C: .word 0x02200A44
_021F5280: .word 0x02200A64
	thumb_func_end ov5_021F5204

	.rodata


	.global Unk_ov5_02200A44
Unk_ov5_02200A44: ; 0x02200A44
	.incbin "incbin/overlay5_rodata.bin", 0x8130, 0x813C - 0x8130

	.global Unk_ov5_02200A50
Unk_ov5_02200A50: ; 0x02200A50
	.incbin "incbin/overlay5_rodata.bin", 0x813C, 0x8150 - 0x813C

	.global Unk_ov5_02200A64
Unk_ov5_02200A64: ; 0x02200A64
	.incbin "incbin/overlay5_rodata.bin", 0x8150, 0x24

