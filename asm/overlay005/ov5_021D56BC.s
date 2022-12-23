	.include "macros/function.inc"
	.include "overlay005/ov5_021D56BC.inc"

	

	.text


	thumb_func_start ov5_021D56BC
ov5_021D56BC: ; 0x021D56BC
	push {r4, lr}
	mov r0, #4
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _021D56CE
	bl GF_AssertFail
_021D56CE:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D56BC

	thumb_func_start ov5_021D56D4
ov5_021D56D4: ; 0x021D56D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	add r0, sp, #4
	add r5, r1, #0
	bl FS_InitFile
	add r0, sp, #4
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _021D5770
	add r1, sp, #0
	add r0, sp, #4
	add r1, #2
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021D5702
	bl GF_AssertFail
_021D5702:
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021D5714
	bl GF_AssertFail
_021D5714:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r6, r1, #2
	lsl r4, r0, #2
	mov r0, #4
	add r1, r6, #0
	bl sub_02018144
	str r0, [r5, #0]
	cmp r0, #0
	bne _021D5730
	bl GF_AssertFail
_021D5730:
	mov r0, #4
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #4]
	cmp r0, #0
	bne _021D5742
	bl GF_AssertFail
_021D5742:
	ldr r1, [r5, #0]
	add r0, sp, #4
	add r2, r6, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021D5754
	bl GF_AssertFail
_021D5754:
	ldr r1, [r5, #4]
	add r0, sp, #4
	add r2, r4, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021D5766
	bl GF_AssertFail
_021D5766:
	add r0, sp, #4
	bl FS_CloseFile
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
_021D5770:
	bl GF_AssertFail
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021D56D4

	thumb_func_start ov5_021D5778
ov5_021D5778: ; 0x021D5778
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021D5778

	thumb_func_start ov5_021D5790
ov5_021D5790: ; 0x021D5790
	ldr r1, [r1, #0]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	strh r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D5790

	thumb_func_start ov5_021D579C
ov5_021D579C: ; 0x021D579C
	push {r3, r4}
	lsl r4, r0, #2
	ldr r0, [r1, #0]
	ldrh r0, [r0, r4]
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, r0, r4
	ldrh r0, [r0, #2]
	strh r0, [r3]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D579C

	thumb_func_start ov5_021D57B4
ov5_021D57B4: ; 0x021D57B4
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
	thumb_func_end ov5_021D57B4