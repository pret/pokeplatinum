	.include "macros/function.inc"
	.include "overlay005/ov5_021F3D00.inc"

	

	.text


	thumb_func_start ov5_021F3D00
ov5_021F3D00: ; 0x021F3D00
	push {r3, r4, r5, lr}
	mov r1, #0x69
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F3D2C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F3D00

	thumb_func_start ov5_021F3D1C
ov5_021F3D1C: ; 0x021F3D1C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F3D6C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F3D1C

	thumb_func_start ov5_021F3D2C
ov5_021F3D2C: ; 0x021F3D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r6, _021F3D68 ; =0x02200678
	str r0, [sp, #4]
	mov r7, #0
	add r4, r0, #4
	add r5, #0x54
_021F3D3C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6, #0]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r2, #0
	bl ov5_021DFB00
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073B70
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #4
	blt _021F3D3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3D68: .word 0x02200678
	thumb_func_end ov5_021F3D2C

	thumb_func_start ov5_021F3D6C
ov5_021F3D6C: ; 0x021F3D6C
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #4
_021F3D72:
	add r0, r5, #0
	bl sub_0207395C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _021F3D72
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3D6C

	thumb_func_start ov5_021F3D84
ov5_021F3D84: ; 0x021F3D84
	mov r2, #0x54
	add r0, #0x54
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F3D84

	thumb_func_start ov5_021F3D90
ov5_021F3D90: ; 0x021F3D90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021DF578
	add r6, r0, #0
	bl ov5_021DF574
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, sp, #0x20
	bl sub_02064450
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_020644A4
	add r0, r6, #0
	mov r1, #0x1a
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl ov5_021DF55C
	add r1, r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	bl ov5_021F3D84
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F3DFC ; =0x02200688
	add r0, r6, #0
	add r2, sp, #0x20
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F3DFC: .word 0x02200688
	thumb_func_end ov5_021F3D90

	thumb_func_start ov5_021F3E00
ov5_021F3E00: ; 0x021F3E00
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	ldr r4, [r3, #0xc]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_02062910
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_02062918
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F3E00

	thumb_func_start ov5_021F3E30
ov5_021F3E30: ; 0x021F3E30
	push {r4, lr}
	add r2, r1, #0
	ldr r4, [r2, #0x1c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl sub_02062764
	cmp r0, #1
	bne _021F3E4C
	add r0, r4, #0
	mov r1, #0
	bl sub_0206A218
_021F3E4C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3E30

	thumb_func_start ov5_021F3E50
ov5_021F3E50: ; 0x021F3E50
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F3E50

	thumb_func_start ov5_021F3E54
ov5_021F3E54: ; 0x021F3E54
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _021F3E6E
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02073BB4
_021F3E6E:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F3E54

	.rodata


	.global Unk_ov5_02200678
Unk_ov5_02200678: ; 0x02200678
	.incbin "incbin/overlay5_rodata.bin", 0x7D64, 0x7D74 - 0x7D64

	.global Unk_ov5_02200688
Unk_ov5_02200688: ; 0x02200688
	.incbin "incbin/overlay5_rodata.bin", 0x7D74, 0x14

