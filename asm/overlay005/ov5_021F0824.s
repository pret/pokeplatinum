	.include "macros/function.inc"
	.include "overlay005/ov5_021F0824.inc"

	

	.text


	thumb_func_start ov5_021F0824
ov5_021F0824: ; 0x021F0824
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0205A080
	add r7, r0, #0
	beq _021F08C8
	bl ov23_02242E28
	add r4, r0, #0
	bl ov23_02242E40
	lsl r1, r4, #0x15
	lsl r0, r0, #0x15
	mov r5, #0
	str r1, [sp, #0xc]
	str r0, [sp, #8]
_021F0848:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020293B0
	add r4, r0, #0
	bl sub_020573FC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0205740C
	str r0, [sp, #0x14]
	cmp r4, #0
	beq _021F08C2
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020293FC
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0202942C
	mov r2, #1
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0xc
	str r2, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	ldr r2, [sp, #0xc]
	str r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #8]
	str r0, [sp, #0x24]
	add r0, r0, r2
	ldr r2, [sp, #0x10]
	str r1, [sp, #0x1c]
	lsl r2, r2, #0xf
	add r1, r1, r2
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	lsl r1, r1, #0xf
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x30]
	add r1, r4, #0
	bl ov5_021EFAE8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x30]
	bl ov5_021E19CC
_021F08C2:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021F0848
_021F08C8:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F0824