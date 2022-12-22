	.include "macros/function.inc"
	.include "include/ov104_0223D5D0.inc"

	

	.text


	thumb_func_start ov104_0223D5D0
ov104_0223D5D0: ; 0x0223D5D0
	push {r3, r4, r5, lr}
	mov r1, #0x24
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	strh r5, [r4, #0x20]
	bl sub_02014000
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D5D0

	thumb_func_start ov104_0223D5F0
ov104_0223D5F0: ; 0x0223D5F0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223D5F8:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223D602
	bl ov104_0223D708
_0223D602:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223D5F8
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D5F0

	thumb_func_start ov104_0223D614
ov104_0223D614: ; 0x0223D614
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	lsl r6, r1, #2
	ldr r0, [r5, r6]
	add r7, r2, #0
	str r3, [sp, #8]
	cmp r0, #0
	beq _0223D62A
	bl GF_AssertFail
_0223D62A:
	ldrh r0, [r5, #0x20]
	mov r1, #0x12
	lsl r1, r1, #0xa
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	ldrh r0, [r5, #0x20]
	mov r3, #0x12
	ldr r1, _0223D684 ; =ov104_0223D744
	str r0, [sp, #4]
	ldr r0, _0223D688 ; =ov104_0223D720
	lsl r3, r3, #0xa
	bl sub_02014014
	add r4, r0, #0
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_02014788
	ldrh r2, [r5, #0x20]
	mov r0, #0x9d
	add r1, r7, #0
	bl sub_020144C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	str r4, [r5, r6]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D684: .word ov104_0223D744
_0223D688: .word ov104_0223D720
	thumb_func_end ov104_0223D614

	thumb_func_start ov104_0223D68C
ov104_0223D68C: ; 0x0223D68C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D69C
	bl GF_AssertFail
_0223D69C:
	ldr r0, [r5, r4]
	bl ov104_0223D708
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D68C

	thumb_func_start ov104_0223D6A8
ov104_0223D6A8: ; 0x0223D6A8
	push {r3, lr}
	bl sub_020241B4
	bl sub_02014680
	cmp r0, #0
	bne _0223D6BA
	mov r0, #0
	pop {r3, pc}
_0223D6BA:
	bl sub_0201469C
	cmp r0, #0
	ble _0223D6C6
	bl sub_020241B4
_0223D6C6:
	bl sub_020146C0
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D6A8

	thumb_func_start ov104_0223D6D0
ov104_0223D6D0: ; 0x0223D6D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D6E0
	bl GF_AssertFail
_0223D6E0:
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D6D0

	thumb_func_start ov104_0223D6E4
ov104_0223D6E4: ; 0x0223D6E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223D6EA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223D6FC
	bl sub_02014710
	cmp r0, #0
	ble _0223D6FC
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D6FC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223D6EA
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D6E4

	thumb_func_start ov104_0223D708
ov104_0223D708: ; 0x0223D708
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02014730
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201411C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D708

	thumb_func_start ov104_0223D720
ov104_0223D720: ; 0x0223D720
	push {r4, lr}
	ldr r3, _0223D740 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _0223D732
	bl GF_AssertFail
_0223D732:
	add r0, r4, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223D740: .word 0x02100DEC
	thumb_func_end ov104_0223D720

	thumb_func_start ov104_0223D744
ov104_0223D744: ; 0x0223D744
	push {r4, lr}
	ldr r3, _0223D764 ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _0223D756
	bl GF_AssertFail
_0223D756:
	add r0, r4, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223D764: .word 0x02100DF4
	thumb_func_end ov104_0223D744