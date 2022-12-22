	.include "macros/function.inc"
	.include "include/ov5_021D57BC.inc"

	

	.text


	thumb_func_start ov5_021D57BC
ov5_021D57BC: ; 0x021D57BC
	push {r4, lr}
	mov r0, #4
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x38
	bl MIi_CpuClear32
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D57BC

	thumb_func_start ov5_021D57D8
ov5_021D57D8: ; 0x021D57D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D57D8

	thumb_func_start ov5_021D57EC
ov5_021D57EC: ; 0x021D57EC
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov5_021D57EC

	thumb_func_start ov5_021D57F0
ov5_021D57F0: ; 0x021D57F0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov5_021D57F0

	thumb_func_start ov5_021D57F4
ov5_021D57F4: ; 0x021D57F4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021D57F4

	thumb_func_start ov5_021D57F8
ov5_021D57F8: ; 0x021D57F8
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021D57F8

	thumb_func_start ov5_021D57FC
ov5_021D57FC: ; 0x021D57FC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r1
	beq _021D5808
	str r2, [r4, #0]
_021D5808:
	mov r0, #2
	tst r0, r1
	beq _021D5810
	str r3, [r4, #4]
_021D5810:
	mov r0, #4
	tst r0, r1
	beq _021D581A
	ldr r0, [sp, #8]
	str r0, [r4, #8]
_021D581A:
	mov r0, #8
	tst r0, r1
	beq _021D5824
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
_021D5824:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl G3X_SetFog
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D57FC

	thumb_func_start ov5_021D5834
ov5_021D5834: ; 0x021D5834
	push {r3, r4}
	mov r4, #0x10
	tst r4, r1
	beq _021D583E
	strh r2, [r0, #0x10]
_021D583E:
	mov r2, #0x20
	tst r1, r2
	beq _021D5846
	str r3, [r0, #0x14]
_021D5846:
	ldrh r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, _021D5858 ; =0x04000358
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	nop
_021D5858: .word 0x04000358
	thumb_func_end ov5_021D5834

	thumb_func_start ov5_021D585C
ov5_021D585C: ; 0x021D585C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x18
	mov r2, #0x20
	bl MIi_CpuCopy32
	add r4, #0x18
	add r0, r4, #0
	bl G3X_SetFogTable
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D585C