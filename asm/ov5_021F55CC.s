	.include "macros/function.inc"
	.include "include/ov5_021F55CC.inc"

	

	.text


	thumb_func_start ov5_021F55CC
ov5_021F55CC: ; 0x021F55CC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F55F8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F55CC

	thumb_func_start ov5_021F55E8
ov5_021F55E8: ; 0x021F55E8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F5620
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F55E8

	thumb_func_start ov5_021F55F8
ov5_021F55F8: ; 0x021F55F8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x3a
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0xa2
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F55F8

	thumb_func_start ov5_021F5620
ov5_021F5620: ; 0x021F5620
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0207395C
	add r4, #0x18
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F5620

	thumb_func_start ov5_021F5634
ov5_021F5634: ; 0x021F5634
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x40]
	add r5, r1, #0
	mov r1, #8
	add r4, r3, #0
	str r0, [sp, #8]
	bl ov5_021DF55C
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	lsl r0, r4, #0x10
	str r0, [sp, #0x18]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F567C ; =0x02200B1C
	add r2, sp, #0x10
	mov r3, #0
	bl ov5_021DF72C
	ldr r0, _021F5680 ; =0x00000609
	bl sub_02005748
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021F567C: .word 0x02200B1C
_021F5680: .word 0x00000609
	thumb_func_end ov5_021F5634

	thumb_func_start ov5_021F5684
ov5_021F5684: ; 0x021F5684
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_020715BC
	ldr r3, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov5_021DFB40
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02073B90
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5684

	thumb_func_start ov5_021F56BC
ov5_021F56BC: ; 0x021F56BC
	ldr r3, _021F56C4 ; =sub_02073AA8
	add r0, r1, #0
	bx r3
	nop
_021F56C4: .word sub_02073AA8
	thumb_func_end ov5_021F56BC

	thumb_func_start ov5_021F56C8
ov5_021F56C8: ; 0x021F56C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02073B40
	cmp r0, #1
	bne _021F56E0
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, pc}
_021F56E0:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F56C8

	thumb_func_start ov5_021F56F0
ov5_021F56F0: ; 0x021F56F0
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r3, _021F5754 ; =0x02200B10
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r6, _021F5758 ; =0x02200B30
	str r0, [r2, #0]
	add r3, sp, #0x24
	mov r2, #4
_021F570A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F570A
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	bl sub_020AF5E0
	mov r2, #0
	add r6, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl sub_0201E2E0
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020C4C88
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl sub_020BB8EC
	add r0, r5, #0
	add r1, sp, #0x54
	bl sub_020715E4
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0x54
	add r2, sp, #0x48
	add r3, sp, #0x24
	bl sub_02073BA4
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F5754: .word 0x02200B10
_021F5758: .word 0x02200B30
	thumb_func_end ov5_021F56F0

	.rodata


	.global Unk_ov5_02200B10
Unk_ov5_02200B10: ; 0x02200B10
	.incbin "incbin/overlay5_rodata.bin", 0x81FC, 0x8208 - 0x81FC

	.global Unk_ov5_02200B1C
Unk_ov5_02200B1C: ; 0x02200B1C
	.incbin "incbin/overlay5_rodata.bin", 0x8208, 0x821C - 0x8208

	.global Unk_ov5_02200B30
Unk_ov5_02200B30: ; 0x02200B30
	.incbin "incbin/overlay5_rodata.bin", 0x821C, 0x24

