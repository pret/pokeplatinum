	.include "macros/function.inc"
	.include "include/ov5_021DF440.inc"

	

	.text


	thumb_func_start ov5_021DF440
ov5_021DF440: ; 0x021DF440
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r7, #0
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	str r7, [r4, #0]
	str r5, [r4, #4]
	str r6, [r4, #0x10]
	add r0, r7, #0
	lsl r1, r5, #3
	bl sub_02018144
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov5_021DF5E8
	add r0, r4, #0
	bl ov5_021DF588
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF440

	thumb_func_start ov5_021DF47C
ov5_021DF47C: ; 0x021DF47C
	ldr r3, _021DF484 ; =ov5_021DF6F8
	str r1, [r0, #8]
	bx r3
	nop
_021DF484: .word ov5_021DF6F8
	thumb_func_end ov5_021DF47C

	thumb_func_start ov5_021DF488
ov5_021DF488: ; 0x021DF488
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl ov5_021DF754
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov5_021DF488

	thumb_func_start ov5_021DF4A8
ov5_021DF4A8: ; 0x021DF4A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021DF694
	cmp r0, #0
	beq _021DF4BC
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_021DF4BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DF600
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF4A8

	thumb_func_start ov5_021DF4C8
ov5_021DF4C8: ; 0x021DF4C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x22
	beq _021DF4E2
_021DF4D4:
	add r0, r5, #0
	bl ov5_021DF4A8
	add r4, r4, #4
	ldr r1, [r4, #0]
	cmp r1, #0x22
	bne _021DF4D4
_021DF4E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DF4C8

	thumb_func_start ov5_021DF4E4
ov5_021DF4E4: ; 0x021DF4E4
	push {r3, lr}
	bl ov5_021DF694
	cmp r0, #0
	beq _021DF4F2
	mov r0, #1
	pop {r3, pc}
_021DF4F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF4E4

	thumb_func_start ov5_021DF4F8
ov5_021DF4F8: ; 0x021DF4F8
	ldr r3, _021DF4FC ; =ov5_021DF71C
	bx r3
	; .align 2, 0
_021DF4FC: .word ov5_021DF71C
	thumb_func_end ov5_021DF4F8

	thumb_func_start ov5_021DF500
ov5_021DF500: ; 0x021DF500
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021DF708
	add r0, r4, #0
	bl ov5_021DF644
	add r0, r4, #0
	bl ov5_021DF7C4
	add r0, r4, #0
	bl ov5_021DF59C
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021DF500

	thumb_func_start ov5_021DF528
ov5_021DF528: ; 0x021DF528
	push {r3, lr}
	cmp r2, #0
	ldr r0, [r0, #0]
	bne _021DF536
	bl sub_02018144
	pop {r3, pc}
_021DF536:
	bl sub_02018184
	pop {r3, pc}
	thumb_func_end ov5_021DF528

	thumb_func_start ov5_021DF53C
ov5_021DF53C: ; 0x021DF53C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r3, #0
	bl ov5_021DF528
	add r1, r4, #0
	add r2, r5, #0
	add r6, r0, #0
	bl memset
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DF53C

	thumb_func_start ov5_021DF554
ov5_021DF554: ; 0x021DF554
	ldr r3, _021DF558 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021DF558: .word sub_020181C4
	thumb_func_end ov5_021DF554

	thumb_func_start ov5_021DF55C
ov5_021DF55C: ; 0x021DF55C
	push {r3, lr}
	bl ov5_021DF694
	cmp r0, #0
	bne _021DF56E
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_021DF56E:
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF55C

	thumb_func_start ov5_021DF574
ov5_021DF574: ; 0x021DF574
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021DF574

	thumb_func_start ov5_021DF578
ov5_021DF578: ; 0x021DF578
	push {r3, lr}
	bl sub_02062C00
	ldr r0, [r0, #0x40]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF578

	thumb_func_start ov5_021DF584
ov5_021DF584: ; 0x021DF584
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov5_021DF584

	thumb_func_start ov5_021DF588
ov5_021DF588: ; 0x021DF588
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021DF584
	add r1, r0, #0
	mov r0, #0x6b
	bl sub_02006C24
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov5_021DF588

	thumb_func_start ov5_021DF59C
ov5_021DF59C: ; 0x021DF59C
	ldr r3, _021DF5A4 ; =sub_02006CA8
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021DF5A4: .word sub_02006CA8
	thumb_func_end ov5_021DF59C

	thumb_func_start ov5_021DF5A8
ov5_021DF5A8: ; 0x021DF5A8
	ldr r3, _021DF5B0 ; =sub_02006D84
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021DF5B0: .word sub_02006D84
	thumb_func_end ov5_021DF5A8

	thumb_func_start ov5_021DF5B4
ov5_021DF5B4: ; 0x021DF5B4
	ldr r3, _021DF5BC ; =sub_02006D28
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021DF5BC: .word sub_02006D28
	thumb_func_end ov5_021DF5B4

	thumb_func_start ov5_021DF5C0
ov5_021DF5C0: ; 0x021DF5C0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r5, r2, #0
	add r6, r1, #0
	bl sub_02006D84
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl ov5_021DF528
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02006D28
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021DF5C0

	thumb_func_start ov5_021DF5E8
ov5_021DF5E8: ; 0x021DF5E8
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _021DF5FE
_021DF5F2:
	add r0, r5, #0
	bl ov5_021DF6AC
	add r5, #8
	sub r4, r4, #1
	bne _021DF5F2
_021DF5FE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DF5E8

	thumb_func_start ov5_021DF600
ov5_021DF600: ; 0x021DF600
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov5_021DF6D0
	add r1, r0, #0
	ldr r1, [r1, #4]
	add r0, r5, #0
	blx r1
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021DF66C
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DF6B8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF600

	thumb_func_start ov5_021DF628
ov5_021DF628: ; 0x021DF628
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl ov5_021DF6D0
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #0
	bl ov5_021DF6AC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF628

	thumb_func_start ov5_021DF644
ov5_021DF644: ; 0x021DF644
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #4]
	ldr r5, [r6, #0x14]
	cmp r4, #0
	beq _021DF668
_021DF650:
	add r0, r5, #0
	bl ov5_021DF6C0
	cmp r0, #0
	bne _021DF662
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021DF628
_021DF662:
	add r5, #8
	sub r4, r4, #1
	bne _021DF650
_021DF668:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF644

	thumb_func_start ov5_021DF66C
ov5_021DF66C: ; 0x021DF66C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _021DF68A
_021DF676:
	add r0, r5, #0
	bl ov5_021DF6C0
	cmp r0, #1
	bne _021DF684
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021DF684:
	add r5, #8
	sub r4, r4, #1
	bne _021DF676
_021DF68A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF66C

	thumb_func_start ov5_021DF694
ov5_021DF694: ; 0x021DF694
	ldr r3, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r3, #0
	beq _021DF6A8
_021DF69C:
	ldr r2, [r0, #0]
	cmp r2, r1
	beq _021DF6AA
	add r0, #8
	sub r3, r3, #1
	bne _021DF69C
_021DF6A8:
	mov r0, #0
_021DF6AA:
	bx lr
	thumb_func_end ov5_021DF694

	thumb_func_start ov5_021DF6AC
ov5_021DF6AC: ; 0x021DF6AC
	mov r1, #0x22
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DF6AC

	thumb_func_start ov5_021DF6B8
ov5_021DF6B8: ; 0x021DF6B8
	str r1, [r0, #0]
	str r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DF6B8

	thumb_func_start ov5_021DF6C0
ov5_021DF6C0: ; 0x021DF6C0
	ldr r0, [r0, #0]
	cmp r0, #0x22
	bne _021DF6CA
	mov r0, #1
	bx lr
_021DF6CA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DF6C0

	thumb_func_start ov5_021DF6D0
ov5_021DF6D0: ; 0x021DF6D0
	push {r3, lr}
	ldr r1, _021DF6F4 ; =0x021FF85C
	ldr r2, [r1, #0]
	cmp r2, #0x22
	beq _021DF6EA
_021DF6DA:
	cmp r2, r0
	bne _021DF6E2
	add r0, r1, #0
	pop {r3, pc}
_021DF6E2:
	add r1, #0xc
	ldr r2, [r1, #0]
	cmp r2, #0x22
	bne _021DF6DA
_021DF6EA:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_021DF6F4: .word 0x021FF85C
	thumb_func_end ov5_021DF6D0

	thumb_func_start ov5_021DF6F8
ov5_021DF6F8: ; 0x021DF6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl sub_020711EC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov5_021DF6F8

	thumb_func_start ov5_021DF708
ov5_021DF708: ; 0x021DF708
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DF71A
	bl sub_0207121C
	mov r0, #0
	str r0, [r4, #0x1c]
_021DF71A:
	pop {r4, pc}
	thumb_func_end ov5_021DF708

	thumb_func_start ov5_021DF71C
ov5_021DF71C: ; 0x021DF71C
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021DF728
	bl sub_020713D0
_021DF728:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF71C

	thumb_func_start ov5_021DF72C
ov5_021DF72C: ; 0x021DF72C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	ldr r0, [r0, #0x1c]
	bl sub_02071330
	add r4, r0, #0
	bne _021DF746
	bl GF_AssertFail
_021DF746:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021DF72C

	thumb_func_start ov5_021DF74C
ov5_021DF74C: ; 0x021DF74C
	ldr r3, _021DF750 ; =sub_0207136C
	bx r3
	; .align 2, 0
_021DF750: .word sub_0207136C
	thumb_func_end ov5_021DF74C

	thumb_func_start ov5_021DF754
ov5_021DF754: ; 0x021DF754
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r1, #0
	mov r2, #0
	str r3, [sp]
	mov r1, #0x24
	add r3, r2, #0
	add r7, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r4, [r7, #0x20]
	str r5, [r4, #0]
	ldr r0, [sp]
	strh r6, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x24]
	ldr r3, [sp]
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0x45
	bl ov5_021F067C
	str r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x46
	bl ov5_021F067C
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02022BD8
	str r0, [r4, #0x18]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021DF8C8
	add r0, r7, #0
	str r6, [sp, #4]
	bl ov5_021DF584
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_02020C44
	str r0, [r4, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DF754

	thumb_func_start ov5_021DF7C4
ov5_021DF7C4: ; 0x021DF7C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _021DF7F6
	ldr r0, [r5, #0xc]
	bl sub_02020CCC
	add r0, r5, #0
	bl ov5_021DF8FC
	ldr r0, [r5, #0x10]
	bl ov5_021F06D8
	ldr r0, [r5, #0x14]
	bl ov5_021F06D8
	ldr r0, [r5, #0x18]
	bl sub_02022C1C
	add r0, r5, #0
	bl ov5_021DF554
	mov r0, #0
	str r0, [r4, #0x20]
_021DF7F6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DF7C4

	thumb_func_start ov5_021DF7F8
ov5_021DF7F8: ; 0x021DF7F8
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x20]
	add r3, sp, #8
	ldr r0, [r0, #0xc]
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r2, sp, #0x14
	str r0, [r3, #0]
	ldr r3, _021DF848 ; =0x021F9AF0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_0202119C
	add r4, r0, #0
	bne _021DF828
	bl GF_AssertFail
_021DF828:
	cmp r4, #0
	beq _021DF842
	add r0, r4, #0
	bl sub_020213F4
	mov r1, #1
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r4, #0
	bl sub_020213F4
	bl ov5_021D53A4
_021DF842:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_021DF848: .word 0x021F9AF0
	thumb_func_end ov5_021DF7F8

	thumb_func_start ov5_021DF84C
ov5_021DF84C: ; 0x021DF84C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r2, #0
	bl ov5_021DF9B4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021DF7F8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DF84C

	thumb_func_start ov5_021DF864
ov5_021DF864: ; 0x021DF864
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, [r0, #0x20]
	add r6, r1, #0
	ldr r0, [r5, #0x10]
	add r1, r2, #0
	add r4, r3, #0
	bl ov5_021F075C
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl ov5_021F075C
	add r1, sp, #0xc
	bl sub_02024184
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x30]
	bl sub_02022D98
	add r4, r0, #0
	bne _021DF896
	bl GF_AssertFail
_021DF896:
	add r0, r4, #0
	bl sub_02022DF4
	ldr r1, [sp, #0x34]
	cmp r1, #1
	bne _021DF8A4
	mov r4, #0
_021DF8A4:
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #0xc
	bl ov5_021DF930
	add r4, r0, #0
	bne _021DF8C0
	bl GF_AssertFail
_021DF8C0:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF864

	thumb_func_start ov5_021DF8C8
ov5_021DF8C8: ; 0x021DF8C8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r1, #0x28
	add r7, r0, #0
	mul r1, r5
	mov r2, #0
	bl ov5_021DF528
	add r4, r0, #0
	add r0, r7, #0
	lsl r1, r5, #3
	mov r2, #0
	str r4, [r6, #0x20]
	bl ov5_021DF528
	str r0, [r6, #0x1c]
	mov r1, #0x11
_021DF8EC:
	str r1, [r0, #0]
	str r4, [r0, #4]
	add r0, #8
	add r4, #0x28
	sub r5, r5, #1
	bne _021DF8EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF8C8

	thumb_func_start ov5_021DF8FC
ov5_021DF8FC: ; 0x021DF8FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ov5_021DF554
	ldr r0, [r4, #0x20]
	bl ov5_021DF554
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF8FC

	thumb_func_start ov5_021DF910
ov5_021DF910: ; 0x021DF910
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021DF916:
	ldr r0, [r3, #0]
	cmp r0, r1
	bne _021DF922
	mov r0, #0x11
	str r0, [r3, #0]
	pop {r3, pc}
_021DF922:
	add r3, #8
	sub r2, r2, #1
	bne _021DF916
	bl GF_AssertFail
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF910

	thumb_func_start ov5_021DF930
ov5_021DF930: ; 0x021DF930
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r5, [r6, #4]
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [sp]
	ldr r6, [r6, #0x1c]
	add r7, r3, #0
	str r1, [sp, #0x1c]
	mov r4, #0
	add r2, r5, #0
	add r3, r6, #0
_021DF948:
	ldr r1, [r3, #0]
	cmp r1, r0
	bne _021DF952
	ldr r0, [r3, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021DF952:
	add r3, #8
	sub r2, r2, #1
	bne _021DF948
_021DF958:
	ldr r1, [r6, #0]
	cmp r1, #0x11
	bne _021DF964
	str r0, [r6, #0]
	ldr r4, [r6, #4]
	b _021DF96A
_021DF964:
	add r6, #8
	sub r5, r5, #1
	bne _021DF958
_021DF96A:
	cmp r4, #0
	bne _021DF972
	bl GF_AssertFail
_021DF972:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4, #0]
	add r2, #0xc
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021DF9AC
	bl sub_02022EF4
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	bl sub_02022F04
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	bl sub_02022F14
	str r0, [r4, #0x24]
_021DF9AC:
	ldr r0, [sp, #0x20]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DF930

	thumb_func_start ov5_021DF9B4
ov5_021DF9B4: ; 0x021DF9B4
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021DF9BA:
	ldr r0, [r3, #0]
	cmp r0, r1
	bne _021DF9C4
	ldr r0, [r3, #4]
	pop {r3, pc}
_021DF9C4:
	add r3, #8
	sub r2, r2, #1
	bne _021DF9BA
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF9B4

	thumb_func_start ov5_021DF9D4
ov5_021DF9D4: ; 0x021DF9D4
	ldr r3, _021DF9DC ; =ov5_021DF910
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021DF9DC: .word ov5_021DF910
	thumb_func_end ov5_021DF9D4

	thumb_func_start ov5_021DF9E0
ov5_021DF9E0: ; 0x021DF9E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r3, r2, #0
	ldr r0, [r0, #0x10]
	ldr r2, [r4, #0x18]
	bl ov5_021F0784
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DF9E0

	thumb_func_start ov5_021DF9FC
ov5_021DF9FC: ; 0x021DF9FC
	ldr r0, [r0, #0x20]
	ldr r3, _021DFA04 ; =ov5_021F075C
	ldr r0, [r0, #0x10]
	bx r3
	; .align 2, 0
_021DFA04: .word ov5_021F075C
	thumb_func_end ov5_021DF9FC

	thumb_func_start ov5_021DFA08
ov5_021DFA08: ; 0x021DFA08
	ldr r0, [r0, #0x20]
	ldr r3, _021DFA10 ; =ov5_021F0740
	ldr r0, [r0, #0x10]
	bx r3
	; .align 2, 0
_021DFA10: .word ov5_021F0740
	thumb_func_end ov5_021DFA08

	thumb_func_start ov5_021DFA14
ov5_021DFA14: ; 0x021DFA14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r3, r2, #0
	ldr r0, [r0, #0x14]
	ldr r2, [r4, #0x18]
	bl ov5_021F0784
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFA14

	thumb_func_start ov5_021DFA30
ov5_021DFA30: ; 0x021DFA30
	ldr r0, [r0, #0x20]
	ldr r3, _021DFA38 ; =ov5_021F0740
	ldr r0, [r0, #0x14]
	bx r3
	; .align 2, 0
_021DFA38: .word ov5_021F0740
	thumb_func_end ov5_021DFA30

	thumb_func_start ov5_021DFA3C
ov5_021DFA3C: ; 0x021DFA3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r4, [r5, #0x20]
	mov r2, #1
	add r7, r3, #0
	bl ov5_021DF5C0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov5_021DF584
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #4]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02022C9C
	cmp r0, #0
	bne _021DFA6E
	bl GF_AssertFail
_021DFA6E:
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021DFA88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DFA3C

	thumb_func_start ov5_021DFA7C
ov5_021DFA7C: ; 0x021DFA7C
	ldr r0, [r0, #0x20]
	ldr r3, _021DFA84 ; =sub_02022D38
	ldr r0, [r0, #0x18]
	bx r3
	; .align 2, 0
_021DFA84: .word sub_02022D38
	thumb_func_end ov5_021DFA7C

	thumb_func_start ov5_021DFA88
ov5_021DFA88: ; 0x021DFA88
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0xc
	mov r2, #1
	bl ov5_021DF528
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	str r5, [r4, #4]
	ldr r0, _021DFAB8 ; =ov5_021DFAC0
	add r1, r4, #0
	mov r2, #0xff
	str r6, [r4, #8]
	bl sub_0200DA04
	ldr r0, _021DFABC ; =ov5_021DFADC
	add r1, r4, #0
	mov r2, #0xff
	bl sub_0200DA3C
	pop {r4, r5, r6, pc}
	nop
_021DFAB8: .word ov5_021DFAC0
_021DFABC: .word ov5_021DFADC
	thumb_func_end ov5_021DFA88

	thumb_func_start ov5_021DFAC0
ov5_021DFAC0: ; 0x021DFAC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl sub_02022E38
	mov r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFAC0

	thumb_func_start ov5_021DFADC
ov5_021DFADC: ; 0x021DFADC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _021DFAFC
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl sub_02022EA0
	add r0, r4, #0
	bl ov5_021DF554
	add r0, r5, #0
	bl sub_0200DA58
_021DFAFC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021DFADC

	thumb_func_start ov5_021DFB00
ov5_021DFB00: ; 0x021DFB00
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r1, r2, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl sub_0207389C
	add r0, r4, #0
	bl sub_020738EC
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DFB00

	thumb_func_start ov5_021DFB24
ov5_021DFB24: ; 0x021DFB24
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #0x18]
	bl sub_020739B4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021DFB24

	thumb_func_start ov5_021DFB40
ov5_021DFB40: ; 0x021DFB40
	push {r3, lr}
	ldr r0, [r0, #0]
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl sub_02073A6C
	pop {r3, pc}
	thumb_func_end ov5_021DFB40

	.rodata


	.global Unk_ov5_021F9AF0
Unk_ov5_021F9AF0: ; 0x021F9AF0
	.incbin "incbin/overlay5_rodata.bin", 0x11DC, 0xC

