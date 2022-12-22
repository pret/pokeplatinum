	.include "macros/function.inc"
	.include "include/ov5_021F067C.inc"

	

	.text


	thumb_func_start ov5_021F067C
ov5_021F067C: ; 0x021F067C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	lsl r2, r3, #3
	add r6, r5, r2
	add r6, #0x18
	str r2, [sp, #8]
	add r2, r6, #0
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #4]
	bl sub_02017FC8
	cmp r0, #1
	beq _021F069E
	bl GF_AssertFail
_021F069E:
	sub r5, r6, r5
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021F06B0
	bl GF_AssertFail
_021F06B0:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	ldr r0, [sp]
	str r0, [r4, #0]
	ldr r0, [sp, #4]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x18
	str r0, [r4, #0x14]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F067C

	thumb_func_start ov5_021F06D8
ov5_021F06D8: ; 0x021F06D8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	ldr r5, [r6, #0x14]
	cmp r4, #0
	beq _021F06FA
_021F06E4:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021F06F2
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl ov5_021F0740
_021F06F2:
	sub r4, r4, #1
	add r5, #8
	cmp r4, #0
	bne _021F06E4
_021F06FA:
	ldr r4, [r6, #4]
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0201807C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F06D8

	thumb_func_start ov5_021F070C
ov5_021F070C: ; 0x021F070C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021F07FC
	str r0, [sp]
	cmp r0, #0
	bne _021F0724
	bl GF_AssertFail
_021F0724:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021F07B4
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl ov5_021F0814
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F070C

	thumb_func_start ov5_021F0740
ov5_021F0740: ; 0x021F0740
	push {r4, lr}
	bl ov5_021F07DC
	add r4, r0, #0
	bne _021F074E
	bl GF_AssertFail
_021F074E:
	ldr r0, [r4, #0]
	bl ov5_021F07D4
	add r0, r4, #0
	bl ov5_021F081C
	pop {r4, pc}
	thumb_func_end ov5_021F0740

	thumb_func_start ov5_021F075C
ov5_021F075C: ; 0x021F075C
	push {r4, lr}
	bl ov5_021F07DC
	add r4, r0, #0
	bne _021F076A
	bl GF_AssertFail
_021F076A:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F075C

	thumb_func_start ov5_021F0770
ov5_021F0770: ; 0x021F0770
	push {r3, lr}
	bl ov5_021F07DC
	cmp r0, #0
	beq _021F077E
	mov r0, #1
	pop {r3, pc}
_021F077E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0770

	thumb_func_start ov5_021F0784
ov5_021F0784: ; 0x021F0784
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r3, #0
	add r6, r1, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02006D84
	add r2, r0, #0
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021F070C
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02006D28
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0784

	thumb_func_start ov5_021F07B4
ov5_021F07B4: ; 0x021F07B4
	push {r4, lr}
	cmp r2, #0
	ldr r0, [r0, #4]
	bne _021F07C2
	bl sub_02018144
	b _021F07C6
_021F07C2:
	bl sub_02018184
_021F07C6:
	add r4, r0, #0
	cmp r4, #0
	bne _021F07D0
	bl GF_AssertFail
_021F07D0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov5_021F07B4

	thumb_func_start ov5_021F07D4
ov5_021F07D4: ; 0x021F07D4
	ldr r3, _021F07D8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021F07D8: .word sub_020181C4
	thumb_func_end ov5_021F07D4

	thumb_func_start ov5_021F07DC
ov5_021F07DC: ; 0x021F07DC
	ldr r3, [r0, #8]
	ldr r0, [r0, #0x14]
	cmp r3, #0
	beq _021F07F6
_021F07E4:
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _021F07F0
	ldr r2, [r0, #4]
	cmp r2, r1
	beq _021F07F8
_021F07F0:
	add r0, #8
	sub r3, r3, #1
	bne _021F07E4
_021F07F6:
	mov r0, #0
_021F07F8:
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F07DC

	thumb_func_start ov5_021F07FC
ov5_021F07FC: ; 0x021F07FC
	ldr r2, [r0, #8]
	ldr r0, [r0, #0x14]
	cmp r2, #0
	beq _021F0810
_021F0804:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021F0812
	add r0, #8
	sub r2, r2, #1
	bne _021F0804
_021F0810:
	mov r0, #0
_021F0812:
	bx lr
	thumb_func_end ov5_021F07FC

	thumb_func_start ov5_021F0814
ov5_021F0814: ; 0x021F0814
	str r2, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F0814

	thumb_func_start ov5_021F081C
ov5_021F081C: ; 0x021F081C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov5_021F081C