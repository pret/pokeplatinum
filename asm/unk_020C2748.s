	.include "macros/function.inc"
	.include "include/unk_020C2748.inc"

	

	.text


	arm_func_start sub_020C2748
sub_020C2748: ; 0x020C2748
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #0]
	str r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	bx lr
	arm_func_end sub_020C2748

	arm_func_start sub_020C2770
sub_020C2770: ; 0x020C2770
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	mov r6, r0
	cmp r1, r2
	bgt _020C27CC
	and r7, r7, #1
_020C279C:
	cmp r7, #0
	bne _020C27B4
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C27B4:
	mov r0, r5
	bl sub_020C2218
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	cmp r1, r2
	ble _020C279C
_020C27CC:
	ldr r0, [r5, #0x18]
	add r0, r0, r2
	bl sub_020E1F6C
	ldr r2, [r5, #0x10]
	add r0, r5, #8
	str r4, [r2, r1, lsl #2]
	ldr r1, [r5, #0x1c]
	add r1, r1, #1
	str r1, [r5, #0x1c]
	bl sub_020C2268
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2770

	arm_func_start sub_020C2804
sub_020C2804: ; 0x020C2804
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _020C2858
	and r7, r7, #1
_020C282C:
	cmp r7, #0
	bne _020C2844
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C2844:
	add r0, r6, #8
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _020C282C
_020C2858:
	cmp r5, #0
	beq _020C2870
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x18]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r5, #0]
_020C2870:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	mov r0, r6
	sub r1, r1, #1
	str r1, [r6, #0x1c]
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2804

	arm_func_start sub_020C28A8
sub_020C28A8: ; 0x020C28A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x1c]
	mov r4, r0
	cmp r1, r2
	bgt _020C2904
	and r7, r7, #1
_020C28D4:
	cmp r7, #0
	bne _020C28EC
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C28EC:
	mov r0, r6
	bl sub_020C2218
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x1c]
	cmp r1, r0
	ble _020C28D4
_020C2904:
	ldr r0, [r6, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	bl sub_020E1F6C
	str r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	str r5, [r0, r1, lsl #2]
	ldr r1, [r6, #0x1c]
	add r0, r6, #8
	add r1, r1, #1
	str r1, [r6, #0x1c]
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C28A8

	arm_func_start sub_020C2944
sub_020C2944: ; 0x020C2944
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _020C2998
	and r7, r7, #1
_020C296C:
	cmp r7, #0
	bne _020C2984
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C2984:
	add r0, r6, #8
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _020C296C
_020C2998:
	cmp r5, #0
	beq _020C29B0
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x18]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r5, #0]
_020C29B0:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2944