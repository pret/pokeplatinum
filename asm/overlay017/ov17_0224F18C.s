	.include "macros/function.inc"
	.include "overlay017/ov17_0224F18C.inc"

	

	.text


	thumb_func_start ov17_0224F18C
ov17_0224F18C: ; 0x0224F18C
	push {r3, r4, r5, lr}
	ldr r2, _0224F1B0 ; =0x00000A18
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrb r0, [r4, #6]
	strb r0, [r5, #6]
	ldrb r0, [r4, #7]
	strb r0, [r5, #7]
	ldrb r0, [r4, #8]
	strb r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F1B0: .word 0x00000A18
	thumb_func_end ov17_0224F18C

	thumb_func_start ov17_0224F1B4
ov17_0224F1B4: ; 0x0224F1B4
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0xc]
	mov r4, #0
	mov r2, #1
_0224F1BC:
	add r3, r2, #0
	lsl r3, r4
	add r1, r5, #0
	tst r1, r3
	bne _0224F1D0
	ldr r1, [r0, #0xc]
	orr r1, r3
	str r1, [r0, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0224F1D0:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224F1BC
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F1B4

	thumb_func_start ov17_0224F1E0
ov17_0224F1E0: ; 0x0224F1E0
	push {r3, r4}
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	sub r1, r2, #2
	ldr r4, [r0, #0xc]
	eor r1, r3
	and r1, r4
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F1E0

	thumb_func_start ov17_0224F1F8
ov17_0224F1F8: ; 0x0224F1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x28]
	add r5, r0, #0
	mov r0, #2
	str r4, [sp, #4]
	add r4, #8
	lsl r0, r0, #8
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r4, r0
	bls _0224F216
	bl GF_AssertFail
_0224F216:
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #8
	bl MI_CpuFill8
	add r0, sp, #8
	strb r6, [r0, #4]
	strh r7, [r0, #2]
	add r0, r5, #0
	bl ov17_0224F1B4
	add r1, sp, #8
	strb r0, [r1, #5]
	mov r0, #0
	strb r0, [r1, #6]
	strh r4, [r1]
	add r1, r5, #0
	add r0, sp, #8
	add r1, #0x10
	mov r2, #8
	bl MIi_CpuCopy32
	add r1, r5, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, #0x18
	bl MI_CpuCopy8
	ldr r0, _0224F268 ; =0x00000A15
	mov r1, #0
	strb r1, [r5, r0]
	mov r1, #1
	sub r0, r0, #5
	strb r1, [r5, r0]
	add r0, sp, #8
	ldrb r0, [r0, #5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F268: .word 0x00000A15
	thumb_func_end ov17_0224F1F8

	thumb_func_start ov17_0224F26C
ov17_0224F26C: ; 0x0224F26C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r3, #0
	mov r0, #2
	add r7, #8
	lsl r0, r0, #8
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r7, r0
	bls _0224F288
	bl GF_AssertFail
_0224F288:
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #8
	bl MI_CpuFill8
	ldrh r2, [r4]
	add r1, sp, #4
	add r0, sp, #4
	strh r2, [r1]
	ldrh r2, [r4, #2]
	strh r2, [r1, #2]
	ldrh r2, [r4, #4]
	strh r2, [r1, #4]
	ldrh r2, [r4, #6]
	strh r2, [r1, #6]
	mov r2, #0xfe
	strb r2, [r1, #4]
	mov r2, #1
	strb r2, [r1, #6]
	strh r7, [r1]
	add r1, r5, #0
	add r1, #0x10
	mov r2, #8
	bl MIi_CpuCopy32
	cmp r6, #0
	beq _0224F2CE
	add r1, r5, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, #0x18
	bl MI_CpuCopy8
_0224F2CE:
	mov r0, #0xa1
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F26C

	thumb_func_start ov17_0224F2DC
ov17_0224F2DC: ; 0x0224F2DC
	push {r4, r5}
	lsl r5, r1, #9
	mov r1, #0x21
	lsl r1, r1, #4
	add r4, r0, r1
	add r1, #8
	add r4, r4, r5
	add r0, r0, r1
	str r4, [r2, #0]
	add r0, r0, r5
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F2DC

	thumb_func_start ov17_0224F2F8
ov17_0224F2F8: ; 0x0224F2F8
	mov r1, #0xa1
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224F306
	mov r0, #0
	bx lr
_0224F306:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224F2F8

	thumb_func_start ov17_0224F30C
ov17_0224F30C: ; 0x0224F30C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov17_0224F2F8
	cmp r0, #0
	bne _0224F322
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F322:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blt _0224F32C
	bl GF_AssertFail
_0224F32C:
	add r0, r5, #0
	add r1, r6, #0
	mov r6, #0xc
	ldr r5, [r5, #0]
	mul r6, r4
	add r2, r4, #0
	ldr r4, [r5, r6]
	add r3, r7, #0
	blx r4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F30C

	thumb_func_start ov17_0224F344
ov17_0224F344: ; 0x0224F344
	cmp r0, r2
	beq _0224F354
	cmp r2, #0xff
	beq _0224F354
	cmp r2, #0xfe
	bne _0224F358
	cmp r1, r0
	bne _0224F358
_0224F354:
	mov r0, #1
	bx lr
_0224F358:
	mov r0, #0
	bx lr
	thumb_func_end ov17_0224F344

	thumb_func_start ov17_0224F35C
ov17_0224F35C: ; 0x0224F35C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224F36E
	mov r0, #0
	pop {r4, pc}
_0224F36E:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224F3AC
	ldrb r1, [r4, #6]
	mov r2, #0x21
	lsl r2, r2, #4
	add r0, r4, #0
	add r3, r4, r2
	lsl r1, r1, #9
	add r0, #0x10
	add r1, r3, r1
	sub r2, #0x10
	bl MI_CpuCopy8
	ldrb r0, [r4, #6]
	mov r2, #1
	add r1, r4, r0
	ldr r0, _0224F3CC ; =0x00000A11
	strb r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #9
	bl MI_CpuFill8
	mov r0, #0xa1
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0224F3AC:
	ldrh r2, [r4, #0x10]
	add r1, r4, #0
	mov r0, #0x18
	add r1, #0x10
	bl sub_0203597C
	cmp r0, #1
	bne _0224F3C8
	mov r0, #0xa1
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0224F3C8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224F3CC: .word 0x00000A11
	thumb_func_end ov17_0224F35C

	thumb_func_start ov17_0224F3D0
ov17_0224F3D0: ; 0x0224F3D0
	mov r1, #0xa1
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov17_0224F3D0

	thumb_func_start ov17_0224F3D8
ov17_0224F3D8: ; 0x0224F3D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r4, r1, #0
	add r0, sp, #0x18
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, _0224F4B0 ; =0x00000A11
	mov r6, #0
_0224F3EE:
	add r1, r7, r6
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne _0224F4A2
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov17_0224F2DC
	ldr r2, [sp, #0x14]
	ldrb r0, [r7, #6]
	ldrb r1, [r7, #8]
	ldrb r2, [r2, #4]
	bl ov17_0224F344
	cmp r0, #1
	bne _0224F484
	ldr r2, [sp, #0x14]
	ldrh r1, [r7, #4]
	ldrh r0, [r2, #2]
	str r0, [sp, #8]
	cmp r0, r1
	bhs _0224F484
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0224F43E
	add r1, r4, #0
	ldr r4, [r7, #0]
	ldr r5, [sp, #8]
	str r4, [sp, #4]
	mov r4, #0xc
	mul r4, r5
	ldr r5, [sp, #4]
	ldr r3, [sp, #0x10]
	add r4, r5, r4
	ldr r4, [r4, #4]
	add r0, r7, #0
	blx r4
	b _0224F484
_0224F43E:
	ldr r1, [sp, #8]
	mov r3, #0xc
	ldr r0, [r7, #0]
	mul r3, r1
	add r0, r0, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224F472
	ldr r1, [sp, #0x10]
	lsl r0, r6, #2
	add r3, sp, #0x18
	str r1, [r3, r0]
	str r6, [sp]
	add r1, r4, #0
	ldr r4, [r7, #0]
	mov r5, #0xc
	mov ip, r4
	ldrh r4, [r2, #2]
	add r0, r7, #0
	mul r5, r4
	str r5, [sp, #0xc]
	ldr r4, [sp, #0xc]
	mov r5, ip
	add r4, r5, r4
	ldr r4, [r4, #8]
	blx r4
_0224F472:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	ldrb r1, [r1, #5]
	bl ov17_0224F1E0
	ldr r0, _0224F4B4 ; =0x00000A15
	ldrb r1, [r7, r0]
	add r1, r1, #1
	strb r1, [r7, r0]
_0224F484:
	ldr r0, _0224F4B0 ; =0x00000A11
	mov r1, #0
	add r2, r7, r6
	strb r1, [r2, r0]
	mov r2, #0x21
	lsl r2, r2, #4
	add r3, r7, r2
	lsl r0, r6, #9
	add r0, r3, r0
	sub r2, #0x10
	bl MI_CpuFill8
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224F4A2:
	add r6, r6, #1
	cmp r6, #4
	blt _0224F3EE
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F4B0: .word 0x00000A11
_0224F4B4: .word 0x00000A15
	thumb_func_end ov17_0224F3D8

	thumb_func_start ov17_0224F4B8
ov17_0224F4B8: ; 0x0224F4B8
	cmp r2, r3
	beq _0224F4C0
	mov r0, #1
	bx lr
_0224F4C0:
	ldr r2, _0224F4D0 ; =0x00000A15
	ldrb r0, [r0, r2]
	cmp r0, r1
	blt _0224F4CC
	mov r0, #1
	bx lr
_0224F4CC:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224F4D0: .word 0x00000A15
	thumb_func_end ov17_0224F4B8