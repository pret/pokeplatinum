	.include "macros/function.inc"
	.include "include/ov5_021F2850.inc"

	

	.text


	thumb_func_start ov5_021F2850
ov5_021F2850: ; 0x021F2850
	push {r4, lr}
	mov r2, #0
	mov r1, #0x7c
	add r3, r2, #0
	add r4, r0, #0
	bl ov5_021DF53C
	str r4, [r0, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2850

	thumb_func_start ov5_021F2864
ov5_021F2864: ; 0x021F2864
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F28C0
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F2864

	thumb_func_start ov5_021F2874
ov5_021F2874: ; 0x021F2874
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021F2874

	thumb_func_start ov5_021F287C
ov5_021F287C: ; 0x021F287C
	push {r3, lr}
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bpl _021F288A
	bl sub_02022974
_021F288A:
	pop {r3, pc}
	thumb_func_end ov5_021F287C

	thumb_func_start ov5_021F288C
ov5_021F288C: ; 0x021F288C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F28BA
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x14
	mov r2, #0
	mov r3, #0x52
	bl ov5_021DFB00
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x28
	add r1, #0x14
	bl sub_02073B70
	mov r0, #1
	str r0, [r4, #4]
_021F28BA:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F288C

	thumb_func_start ov5_021F28C0
ov5_021F28C0: ; 0x021F28C0
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _021F28D2
	mov r1, #0
	str r1, [r0, #4]
	add r0, #0x14
	bl sub_0207395C
_021F28D2:
	pop {r3, pc}
	thumb_func_end ov5_021F28C0

	thumb_func_start ov5_021F28D4
ov5_021F28D4: ; 0x021F28D4
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021F28E0
	bl ov5_021F288C
_021F28E0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F28D4

	thumb_func_start ov5_021F28E4
ov5_021F28E4: ; 0x021F28E4
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021F28F0
	bl ov5_021F28C0
_021F28F0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F28E4

	thumb_func_start ov5_021F28F4
ov5_021F28F4: ; 0x021F28F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	add r7, r2, #0
	add r2, sp, #0xc
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r3, [sp, #8]
	add r5, r0, #0
	str r1, [r2, #8]
	bl ov5_021DF578
	add r4, r0, #0
	ldr r0, [sp, #8]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #0x10
	bl ov5_021DF55C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x28]
	cmp r0, #0
	bne _021F294A
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0xc]
	lsl r1, r7, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r1, sp, #0xc
	bl sub_020644A4
	b _021F2952
_021F294A:
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02063050
_021F2952:
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F2970 ; =0x022004B0
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, sp, #0xc
	bl ov5_021DF72C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F2970: .word 0x022004B0
	thumb_func_end ov5_021F28F4

	thumb_func_start ov5_021F2974
ov5_021F2974: ; 0x021F2974
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	str r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov5_021F2974

	thumb_func_start ov5_021F2980
ov5_021F2980: ; 0x021F2980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r2, r0, #0
	add r6, r2, #0
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x10
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	bl ov5_021F28D4
	ldr r0, [r4, #0x1c]
	bl ov5_021F2874
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2980

	thumb_func_start ov5_021F29BC
ov5_021F29BC: ; 0x021F29BC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	bl ov5_021F287C
	ldr r0, [r4, #0x1c]
	bl ov5_021F28E4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F29BC

	thumb_func_start ov5_021F29D0
ov5_021F29D0: ; 0x021F29D0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r4, [r1, #0x20]
	cmp r0, #0
	beq _021F29FE
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_020630AC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
_021F29FE:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F29D0

	thumb_func_start ov5_021F2A04
ov5_021F2A04: ; 0x021F2A04
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3, #0]
	cmp r0, #1
	beq _021F2A70
	ldr r0, [r3, #8]
	ldr r5, _021F2A74 ; =0x022004A4
	add r0, r0, #1
	str r0, [r3, #8]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [r4, #0]
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #4]
	add r4, #0x28
	cmp r0, #3
	bhi _021F2A4E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2A3C: ; jump table
	.short _021F2A44 - _021F2A3C - 2 ; case 0
	.short _021F2A4E - _021F2A3C - 2 ; case 1
	.short _021F2A48 - _021F2A3C - 2 ; case 2
	.short _021F2A4C - _021F2A3C - 2 ; case 3
_021F2A44:
	mov r2, #0xb4
	b _021F2A4E
_021F2A48:
	ldr r2, _021F2A78 ; =0x0000010E
	b _021F2A4E
_021F2A4C:
	mov r2, #0x5a
_021F2A4E:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_0201E2E0
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_020715E4
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_02073BA4
_021F2A70:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F2A74: .word 0x022004A4
_021F2A78: .word 0x0000010E
	thumb_func_end ov5_021F2A04

	.rodata


	.global Unk_ov5_022004A4
Unk_ov5_022004A4: ; 0x022004A4
	.incbin "incbin/overlay5_rodata.bin", 0x7B90, 0x7B9C - 0x7B90

	.global Unk_ov5_022004B0
Unk_ov5_022004B0: ; 0x022004B0
	.incbin "incbin/overlay5_rodata.bin", 0x7B9C, 0x14

