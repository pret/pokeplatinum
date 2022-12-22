	.include "macros/function.inc"
	.include "include/ov21_021D3FE0.inc"

	

	.text


	thumb_func_start ov21_021D3FE0
ov21_021D3FE0: ; 0x021D3FE0
	push {r3, r4, r5, lr}
	mov r1, #0x48
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D3FF2
	bl GF_AssertFail
_021D3FF2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x48
	bl memset
	mov r0, #5
	str r0, [r4, #8]
	str r5, [r4, #0x44]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3FE0

	thumb_func_start ov21_021D4008
ov21_021D4008: ; 0x021D4008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021D4016
	bl GF_AssertFail
_021D4016:
	cmp r4, #0
	bne _021D401E
	bl GF_AssertFail
_021D401E:
	add r0, r5, #0
	bl ov21_021D41A8
	cmp r0, #0
	bne _021D402C
	bl GF_AssertFail
_021D402C:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0xc
	bl ov21_021D41D8
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0x2c
	bl ov21_021D41E4
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	str r0, [r5, #0x20]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r0, [r5, #0x24]
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	str r0, [r5, #0x28]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x3c]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	str r0, [r5, #0x40]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4008

	thumb_func_start ov21_021D4078
ov21_021D4078: ; 0x021D4078
	push {r4, lr}
	add r4, r0, #0
	bne _021D4082
	bl GF_AssertFail
_021D4082:
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _021D40F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4094: ; jump table
	.short _021D40A0 - _021D4094 - 2 ; case 0
	.short _021D40FA - _021D4094 - 2 ; case 1
	.short _021D40BC - _021D4094 - 2 ; case 2
	.short _021D40FA - _021D4094 - 2 ; case 3
	.short _021D40DA - _021D4094 - 2 ; case 4
	.short _021D40F2 - _021D4094 - 2 ; case 5
_021D40A0:
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0]
	add r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _021D40FA
_021D40BC:
	add r1, r4, #0
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0]
	add r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	b _021D40FA
_021D40DA:
	add r1, r4, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0]
	add r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021D40FA
_021D40F2:
	mov r0, #1
	pop {r4, pc}
_021D40F6:
	bl GF_AssertFail
_021D40FA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4078

	thumb_func_start ov21_021D4100
ov21_021D4100: ; 0x021D4100
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bne _021D410C
	bl GF_AssertFail
_021D410C:
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _021D418A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D411E: ; jump table
	.short _021D418E - _021D411E - 2 ; case 0
	.short _021D412A - _021D411E - 2 ; case 1
	.short _021D414E - _021D411E - 2 ; case 2
	.short _021D4164 - _021D411E - 2 ; case 3
	.short _021D418E - _021D411E - 2 ; case 4
	.short _021D4184 - _021D411E - 2 ; case 5
_021D412A:
	add r0, r4, #0
	add r0, #0xc
	str r0, [sp]
	add r2, r4, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #4]
	ldr r3, [r4, #0]
	add r2, #0x2c
	bl ov21_021D420C
	cmp r0, #1
	bne _021D418E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x2c]
	b _021D418E
_021D414E:
	add r0, r4, #0
	add r0, #0xc
	str r0, [sp]
	add r2, r4, #0
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #4]
	ldr r3, [r4, #0]
	add r2, #0x2c
	bl ov21_021D420C
	b _021D418E
_021D4164:
	add r0, r4, #0
	add r0, #0xc
	str r0, [sp]
	add r2, r4, #0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #4]
	ldr r3, [r4, #0]
	add r2, #0x2c
	bl ov21_021D420C
	cmp r0, #1
	bne _021D418E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021D418E
_021D4184:
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021D418A:
	bl GF_AssertFail
_021D418E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D4100

	thumb_func_start ov21_021D4194
ov21_021D4194: ; 0x021D4194
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov21_021D4194

	thumb_func_start ov21_021D4198
ov21_021D4198: ; 0x021D4198
	push {r4, lr}
	add r4, r0, #0
	bne _021D41A2
	bl GF_AssertFail
_021D41A2:
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov21_021D4198

	thumb_func_start ov21_021D41A8
ov21_021D41A8: ; 0x021D41A8
	push {r4, lr}
	add r4, r0, #0
	bne _021D41B2
	bl GF_AssertFail
_021D41B2:
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _021D41BC
	mov r0, #1
	pop {r4, pc}
_021D41BC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D41A8

	thumb_func_start ov21_021D41C0
ov21_021D41C0: ; 0x021D41C0
	push {r4, lr}
	add r4, r0, #0
	bne _021D41CA
	bl GF_AssertFail
_021D41CA:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _021D41D4
	mov r0, #1
	pop {r4, pc}
_021D41D4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D41C0

	thumb_func_start ov21_021D41D8
ov21_021D41D8: ; 0x021D41D8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D41D8

	thumb_func_start ov21_021D41E4
ov21_021D41E4: ; 0x021D41E4
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov21_021D41E4

	thumb_func_start ov21_021D41EC
ov21_021D41EC: ; 0x021D41EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021D41FC
	bl GF_AssertFail
_021D41FC:
	cmp r4, #0
	bne _021D4204
	bl GF_AssertFail
_021D4204:
	add r0, r4, #0
	add r1, r6, #0
	blx r5
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D41EC

	thumb_func_start ov21_021D420C
ov21_021D420C: ; 0x021D420C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _021D421E
	bl GF_AssertFail
_021D421E:
	cmp r4, #0
	bne _021D4226
	bl GF_AssertFail
_021D4226:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021D4230
	bl GF_AssertFail
_021D4230:
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	blx r5
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D420C