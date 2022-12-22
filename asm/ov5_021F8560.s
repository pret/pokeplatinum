	.include "macros/function.inc"
	.include "include/ov5_021F8560.inc"

	

	.text


	thumb_func_start ov5_021F8560
ov5_021F8560: ; 0x021F8560
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F858C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F8560

	thumb_func_start ov5_021F857C
ov5_021F857C: ; 0x021F857C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F85B0
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F857C

	thumb_func_start ov5_021F858C
ov5_021F858C: ; 0x021F858C
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x51
	bl ov5_021DFB00
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F858C

	thumb_func_start ov5_021F85B0
ov5_021F85B0: ; 0x021F85B0
	ldr r3, _021F85B8 ; =sub_0207395C
	add r0, r0, #4
	bx r3
	nop
_021F85B8: .word sub_0207395C
	thumb_func_end ov5_021F85B0

	thumb_func_start ov5_021F85BC
ov5_021F85BC: ; 0x021F85BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	add r7, r2, #0
	add r2, sp, #0x24
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r5, r0, #0
	str r3, [sp, #8]
	str r1, [r2, #8]
	bl sub_0205EB3C
	ldr r1, [sp, #0x48]
	add r4, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0x10]
	bl ov5_021DF578
	mov r1, #0x21
	str r0, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x4c]
	str r4, [sp, #0x1c]
	str r5, [sp, #0x20]
	cmp r0, #0
	bne _021F8626
	add r0, r4, #0
	bl sub_02062C00
	ldr r2, [sp, #0x50]
	ldr r0, _021F865C ; =0x02201BC8
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r2, [r0, r3]
	add r1, r0, r3
	lsl r0, r6, #0x10
	add r0, r2, r0
	ldr r2, [r1, #4]
	str r0, [sp, #0x24]
	lsl r0, r7, #0x10
	add r0, r2, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	ldr r1, [r1, #8]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x2c]
	b _021F863E
_021F8626:
	add r0, r4, #0
	add r1, sp, #0x24
	bl sub_02063050
	ldr r2, [sp, #0x50]
	mov r1, #0xc
	ldr r3, _021F8660 ; =0x02201C10
	mul r1, r2
	add r0, r4, #0
	add r1, r3, r1
	bl sub_020630AC
_021F863E:
	add r0, r4, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, _021F8664 ; =0x02201B54
	ldr r3, [sp, #0x4c]
	add r2, sp, #0x24
	bl ov5_021DF72C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F865C: .word 0x02201BC8
_021F8660: .word 0x02201C10
_021F8664: .word 0x02201B54
	thumb_func_end ov5_021F85BC

	thumb_func_start ov5_021F8668
ov5_021F8668: ; 0x021F8668
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r0, #0
	add r3, r4, #0
	add r6, r2, #0
	add r3, #0x38
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	mov r1, #4
	strh r0, [r4, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x2c]
	lsr r0, r0, #2
	str r0, [r4, #0x30]
	ldr r0, [r2, #4]
	add r2, r4, #0
	str r0, [r4, #0x34]
	ldrsh r1, [r4, r1]
	add r2, #0xc
	bl ov5_021F8878
	ldr r0, [r4, #0x34]
	lsl r1, r0, #2
	ldr r0, _021F86C8 ; =0x02201B68
	ldr r0, [r0, r1]
	strh r0, [r4, #8]
	mov r0, #0x14
	strh r0, [r4, #0xa]
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #1
	bne _021F86C4
	ldr r1, [r4, #0]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0]
_021F86C4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F86C8: .word 0x02201B68
	thumb_func_end ov5_021F8668

	thumb_func_start ov5_021F86CC
ov5_021F86CC: ; 0x021F86CC
	push {lr}
	sub sp, #0xc
	ldr r0, [r1, #0x48]
	add r1, sp, #0
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	bl sub_020630AC
	add sp, #0xc
	pop {pc}
	thumb_func_end ov5_021F86CC

	thumb_func_start ov5_021F86E4
ov5_021F86E4: ; 0x021F86E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r7, r0, #0
	mov r0, #2
	ldr r4, [r5, #0x48]
	ldr r6, [r5, #0x4c]
	tst r0, r1
	bne _021F86FA
	b _021F8838
_021F86FA:
	add r0, r4, #0
	bl sub_0206299C
	strh r0, [r5, #4]
	add r0, r6, #0
	bl sub_0205F108
	str r0, [r5, #0x34]
	mov r0, #4
	ldrsh r1, [r5, r0]
	sub r0, r0, #5
	cmp r1, r0
	bne _021F8718
	bl GF_AssertFail
_021F8718:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xe
	str r2, [r5, #0x2c]
	cmp r2, r1
	blt _021F8732
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	neg r0, r0
	str r0, [r5, #0x30]
	b _021F8740
_021F8732:
	lsr r0, r1, #2
	cmp r2, r0
	bgt _021F8740
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	neg r0, r0
	str r0, [r5, #0x30]
_021F8740:
	ldr r0, [r5, #0]
	mov r1, #4
	tst r0, r1
	bne _021F8754
	ldrsh r1, [r5, r1]
	add r2, r5, #0
	ldr r0, [r5, #0x34]
	add r2, #0xc
	bl ov5_021F8878
_021F8754:
	ldr r1, [r5, #0]
	mov r0, #0x10
	tst r0, r1
	bne _021F8766
	ldr r0, [r5, #0x34]
	lsl r1, r0, #2
	ldr r0, _021F883C ; =0x02201B68
	ldr r0, [r0, r1]
	strh r0, [r5, #8]
_021F8766:
	ldr r1, [r5, #0]
	mov r0, #8
	tst r0, r1
	bne _021F8838
	ldr r1, [r5, #0x34]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021F8840 ; =0x02201C10
	add r3, r0, r2
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r5, #0]
	mov r0, #0x20
	tst r0, r1
	bne _021F8796
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x2c]
	add r0, r1, r0
	str r0, [sp, #4]
	b _021F87AE
_021F8796:
	ldr r1, [sp]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r5, #0x1c]
	add r0, r1, r0
	str r0, [sp, #8]
_021F87AE:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020630AC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063050
	ldr r1, [r5, #0]
	mov r0, #0x40
	tst r0, r1
	bne _021F87D2
	ldr r1, [r5, #0x34]
	mov r0, #0xc
	ldr r2, _021F8844 ; =0x02201B80
	mul r0, r1
	add r4, r2, r0
	b _021F87D6
_021F87D2:
	add r4, r5, #0
	add r4, #0x20
_021F87D6:
	ldrh r0, [r5, #8]
	bl sub_0201D1D4
	ldrh r3, [r5, #0xa]
	ldr r1, [r4, #0]
	ldr r2, [sp]
	mul r0, r3
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp]
	ldrh r0, [r5, #8]
	bl sub_0201D15C
	mov r1, #2
	ldr r3, [r4, #4]
	lsl r1, r1, #0xe
	add r1, r3, r1
	ldrh r3, [r5, #0xa]
	ldr r2, [sp, #4]
	mul r0, r3
	add r0, r1, r0
	add r1, r2, r0
	str r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [r4, #8]
	add r0, r2, r0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	mov r2, #0x20
	tst r2, r3
	bne _021F881C
	ldr r0, [r5, #0x2c]
	add r0, r1, r0
	str r0, [sp, #4]
	b _021F8830
_021F881C:
	ldr r3, [sp]
	ldr r2, [r5, #0x14]
	add r2, r3, r2
	str r2, [sp]
	ldr r2, [r5, #0x18]
	add r1, r1, r2
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	add r0, r0, r1
	str r0, [sp, #8]
_021F8830:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_020715D4
_021F8838:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F883C: .word 0x02201B68
_021F8840: .word 0x02201C10
_021F8844: .word 0x02201B80
	thumb_func_end ov5_021F86E4

	thumb_func_start ov5_021F8848
ov5_021F8848: ; 0x021F8848
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r2, [r4, #0]
	mov r1, #1
	tst r1, r2
	bne _021F886C
	ldr r5, [r4, #0x44]
	add r1, sp, #0
	add r5, #0x18
	bl sub_020715E4
	add r2, r4, #0
	add r0, r5, #0
	add r1, sp, #0
	add r2, #0xc
	bl sub_02073BF0
_021F886C:
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F8848

	thumb_func_start ov5_021F8878
ov5_021F8878: ; 0x021F8878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #6
	blo _021F8888
	bl GF_AssertFail
_021F8888:
	ldr r0, _021F88A4 ; =0x02201C58
	lsl r1, r5, #5
	lsl r2, r6, #3
	add r0, r0, r1
	add r1, r2, r0
	ldrh r0, [r2, r0]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4, #4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F88A4: .word 0x02201C58
	thumb_func_end ov5_021F8878

	thumb_func_start ov5_021F88A8
ov5_021F88A8: ; 0x021F88A8
	push {r3, lr}
	bl sub_02071598
	add r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F88A8

	thumb_func_start ov5_021F88B4
ov5_021F88B4: ; 0x021F88B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02071598
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, #0xc
	bl ov5_021F8878
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F88B4

	thumb_func_start ov5_021F88CC
ov5_021F88CC: ; 0x021F88CC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	ldr r1, [r0, #0]
	orr r1, r4
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end ov5_021F88CC

	thumb_func_start ov5_021F88DC
ov5_021F88DC: ; 0x021F88DC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	ldr r2, [r0, #0]
	mvn r1, r4
	and r1, r2
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F88DC

	thumb_func_start ov5_021F88F0
ov5_021F88F0: ; 0x021F88F0
	push {r3, lr}
	bl sub_02071598
	add r0, #0x14
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F88F0

	thumb_func_start ov5_021F88FC
ov5_021F88FC: ; 0x021F88FC
	push {r3, lr}
	bl sub_02071598
	add r0, #0x20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F88FC

	thumb_func_start ov5_021F8908
ov5_021F8908: ; 0x021F8908
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	strh r4, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov5_021F8908

	.rodata


	.global Unk_ov5_02201B54
Unk_ov5_02201B54: ; 0x02201B54
	.incbin "incbin/overlay5_rodata.bin", 0x9240, 0x9254 - 0x9240

	.global Unk_ov5_02201B68
Unk_ov5_02201B68: ; 0x02201B68
	.incbin "incbin/overlay5_rodata.bin", 0x9254, 0x926C - 0x9254

	.global Unk_ov5_02201B80
Unk_ov5_02201B80: ; 0x02201B80
	.incbin "incbin/overlay5_rodata.bin", 0x926C, 0x92B4 - 0x926C

	.global Unk_ov5_02201BC8
Unk_ov5_02201BC8: ; 0x02201BC8
	.incbin "incbin/overlay5_rodata.bin", 0x92B4, 0x92FC - 0x92B4

	.global Unk_ov5_02201C10
Unk_ov5_02201C10: ; 0x02201C10
	.incbin "incbin/overlay5_rodata.bin", 0x92FC, 0x9344 - 0x92FC

	.global Unk_ov5_02201C58
Unk_ov5_02201C58: ; 0x02201C58
	.incbin "incbin/overlay5_rodata.bin", 0x9344, 0xC0

