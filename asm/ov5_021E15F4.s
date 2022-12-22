	.include "macros/function.inc"
	.include "include/ov5_021E15F4.inc"

	

	.text


	thumb_func_start ov5_021E15F4
ov5_021E15F4: ; 0x021E15F4
	push {r4, lr}
	mov r1, #0x46
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	bl ov5_021E1610
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov5_021E15F4

	thumb_func_start ov5_021E1608
ov5_021E1608: ; 0x021E1608
	ldr r3, _021E160C ; =sub_020181C4
	bx r3
	; .align 2, 0
_021E160C: .word sub_020181C4
	thumb_func_end ov5_021E1608

	thumb_func_start ov5_021E1610
ov5_021E1610: ; 0x021E1610
	push {r3, r4, r5, r6, r7}
	sub sp, #0xc
	mov r4, #0
	mov ip, r0
	add r7, sp, #0
	add r3, r4, #0
_021E161C:
	str r3, [r7, #0]
	str r3, [r7, #4]
	mov r0, #0x8c
	add r1, r4, #0
	mul r1, r0
	mov r0, ip
	add r2, r0, r1
	add r5, r2, #0
	str r3, [r7, #8]
	mov r0, ip
	str r3, [r0, r1]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	add r6, r7, #0
	ldmia r6!, {r0, r1}
	add r5, #0x68
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, r7, #0
	str r0, [r5, #0]
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x74
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, r7, #0
	str r0, [r5, #0]
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x80
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r3, [r2, #0x64]
	cmp r4, #0x20
	blo _021E161C
	add sp, #0xc
	pop {r3, r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E1610

	thumb_func_start ov5_021E1674
ov5_021E1674: ; 0x021E1674
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x20
	blt _021E1684
	bl GF_AssertFail
_021E1684:
	add r6, sp, #0
	mov r3, #0
	str r3, [r6, #0]
	str r3, [r6, #4]
	mov r0, #0x8c
	mul r0, r5
	str r3, [r6, #8]
	str r3, [r4, r0]
	add r2, r4, r0
	str r3, [r2, #4]
	str r3, [r2, #8]
	add r4, r2, #0
	str r3, [r2, #0xc]
	add r5, r6, #0
	ldmia r5!, {r0, r1}
	add r4, #0x68
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r5, r6, #0
	str r0, [r4, #0]
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0x74
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	add r4, r2, #0
	ldmia r6!, {r0, r1}
	add r4, #0x80
	stmia r4!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r4, #0]
	str r3, [r2, #0x64]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1674

	thumb_func_start ov5_021E16CC
ov5_021E16CC: ; 0x021E16CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp, #0x28]
	mov r0, #0
	add r7, r2, #0
	add r5, r3, #0
	str r0, [sp, #4]
	cmp r4, #0
	beq _021E1702
	mov r0, #4
	bl sub_02018184
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02006E18
	add r0, r4, #0
	mov r1, #0x30
	bl _u32_div_f
	str r0, [sp]
	b _021E1704
_021E1702:
	str r0, [sp]
_021E1704:
	ldr r4, [sp, #4]
	mov r6, #0
_021E1708:
	ldr r0, [sp]
	cmp r6, r0
	bhs _021E1776
	ldr r0, [r4, #0]
	add r2, r5, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r5, #4]
	mov r0, #0
	add r3, r4, #4
	str r0, [r5, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r4, #0
	str r0, [r2, #0]
	add r3, #0x10
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x74
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r4, #0
	str r0, [r2, #0]
	add r3, #0x1c
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x80
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r5, #0
	str r0, [r2, #0]
	add r2, r5, #0
	ldr r0, [r5, #0]
	add r1, r7, #0
	add r2, #0x10
	add r3, #0x64
	bl ov5_021E1904
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl ov5_021EFAF8
	cmp r0, #0
	bne _021E1768
	mov r0, #0
	str r0, [r5, #0]
_021E1768:
	add r1, r5, #0
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x28]
	add r1, #0x10
	bl ov5_021D3BE4
	b _021E17B2
_021E1776:
	mov r1, #0
	add r0, sp, #8
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r1, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	add r2, r5, #0
	add r3, sp, #8
	str r0, [r5, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #8
	str r0, [r2, #0]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x74
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #8
	str r0, [r2, #0]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x80
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_021E17B2:
	add r6, r6, #1
	add r5, #0x8c
	add r4, #0x30
	cmp r6, #0x20
	blt _021E1708
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E17C6
	bl sub_020181C4
_021E17C6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E16CC

	thumb_func_start ov5_021E17CC
ov5_021E17CC: ; 0x021E17CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r4, _021E1888 ; =0x021F9C74
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r6, r0, #0
	str r1, [sp, #8]
	add r3, sp, #0x18
	mov r2, #4
_021E17DE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E17DE
	ldr r0, [r4, #0]
	ldr r5, [sp, #0x60]
	str r0, [r3, #0]
	mov r7, #0
_021E17EE:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E187A
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E187A
	add r4, r5, #0
	add r4, #0x68
	ldmia r4!, {r0, r1}
	add r3, sp, #0x3c
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r1, [sp, #0x3c]
	ldr r0, [r6, #0]
	add r3, r5, #0
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	ldr r0, [r6, #8]
	add r3, #0x80
	add r0, r1, r0
	str r0, [sp, #0x44]
	add r1, r2, #0
	ldr r0, [r5, #0x64]
	add r2, sp, #0x18
	bl sub_0201CED8
	cmp r0, #0
	beq _021E187A
	ldr r0, [sp, #8]
	bl ov5_021EFAB4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021E1844
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0x64]
	ldr r2, _021E188C ; =0x00000F33
	bl ov5_021D5948
_021E1844:
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, sp, #0x14
	bl ov5_021D5790
	add r0, sp, #0x14
	ldrh r0, [r0]
	add r1, sp, #0x3c
	cmp r0, #0
	bne _021E1868
	add r0, r5, #0
	add r3, r5, #0
	add r0, #0x10
	add r2, sp, #0x18
	add r3, #0x80
	bl sub_0201CA74
	b _021E187A
_021E1868:
	str r4, [sp]
	ldr r0, [r5, #0]
	add r3, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x64]
	add r2, sp, #0x18
	add r3, #0x80
	bl ov5_021E1944
_021E187A:
	add r7, r7, #1
	add r5, #0x8c
	cmp r7, #0x20
	blt _021E17EE
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1888: .word 0x021F9C74
_021E188C: .word 0x00000F33
	thumb_func_end ov5_021E17CC

	thumb_func_start ov5_021E1890
ov5_021E1890: ; 0x021E1890
	add r0, #0x74
	bx lr
	thumb_func_end ov5_021E1890

	thumb_func_start ov5_021E1894
ov5_021E1894: ; 0x021E1894
	add r2, r1, #0
	add r2, #0x68
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end ov5_021E1894

	thumb_func_start ov5_021E18A4
ov5_021E18A4: ; 0x021E18A4
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov5_021E18A4

	thumb_func_start ov5_021E18B4
ov5_021E18B4: ; 0x021E18B4
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov5_021E18B4

	thumb_func_start ov5_021E18B8
ov5_021E18B8: ; 0x021E18B8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov5_021E18B8

	thumb_func_start ov5_021E18BC
ov5_021E18BC: ; 0x021E18BC
	add r0, #0x10
	bx lr
	thumb_func_end ov5_021E18BC

	thumb_func_start ov5_021E18C0
ov5_021E18C0: ; 0x021E18C0
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end ov5_021E18C0

	thumb_func_start ov5_021E18C4
ov5_021E18C4: ; 0x021E18C4
	mov r2, #0x8c
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end ov5_021E18C4

	thumb_func_start ov5_021E18CC
ov5_021E18CC: ; 0x021E18CC
	mov r3, #0
_021E18CE:
	ldr r2, [r0, #0]
	cmp r2, r1
	beq _021E18DE
	add r3, r3, #1
	add r0, #0x8c
	cmp r3, #0x20
	blt _021E18CE
	mov r0, #0
_021E18DE:
	bx lr
	thumb_func_end ov5_021E18CC

	thumb_func_start ov5_021E18E0
ov5_021E18E0: ; 0x021E18E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _021E18EE
	bl GF_AssertFail
_021E18EE:
	mov r0, #0x8c
	mul r0, r4
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021E18FE
	bl GF_AssertFail
_021E18FE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E18E0

	thumb_func_start ov5_021E1904
ov5_021E1904: ; 0x021E1904
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021E1938
	add r2, r0, #0
	add r2, #8
	beq _021E192C
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021E192C
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021E192E
_021E192C:
	mov r1, #0
_021E192E:
	cmp r1, #0
	beq _021E1938
	ldr r1, [r1, #0]
	add r1, r0, r1
	b _021E193A
_021E1938:
	mov r1, #0
_021E193A:
	add r0, r5, #0
	str r1, [r4, #0]
	bl NNS_G3dRenderObjInit
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E1904

	thumb_func_start ov5_021E1944
ov5_021E1944: ; 0x021E1944
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _021E19C4 ; =0x021C5B48
	add r0, r4, #0
	bl MI_Copy36B
	ldr r1, _021E19C8 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	add r2, sp, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, #2
	add r3, sp, #0
	bl ov5_021D579C
	add r0, sp, #0
	ldrh r0, [r0]
	ldr r1, [sp, #0x18]
	bl ov5_021D57B4
	add r6, r0, #0
	add r0, sp, #0
	ldrh r0, [r0, #2]
	mov r5, #0xff
	mov r4, #0
	cmp r0, #0
	ble _021E19C0
_021E1994:
	lsl r0, r4, #2
	add r2, r6, r0
	ldrh r0, [r6, r0]
	cmp r5, r0
	beq _021E19A6
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r3, #1
	b _021E19A8
_021E19A6:
	mov r3, #0
_021E19A8:
	ldrh r2, [r2, #2]
	add r0, r7, #0
	add r1, r5, #0
	bl NNS_G3dDraw1Mat1Shp
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, sp, #0
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _021E1994
_021E19C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E19C4: .word 0x021C5B48
_021E19C8: .word 0x021C5B0C
	thumb_func_end ov5_021E1944

	thumb_func_start ov5_021E19CC
ov5_021E19CC: ; 0x021E19CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _021E1A68 ; =0x021F9C68
	add r6, r0, #0
	add r7, r1, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #4
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r4, #0
	mov r0, #0x8c
_021E19E4:
	add r1, r4, #0
	mul r1, r0
	add r5, r6, r1
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021E1A54
	mov r0, #1
	str r0, [r5, #4]
	add r6, r5, #0
	ldmia r3!, {r0, r1}
	add r6, #0x68
	stmia r6!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r6, #0]
	ldr r6, [sp, #0x28]
	cmp r6, #0
	beq _021E1A18
	mov r0, #1
	str r0, [r5, #0xc]
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	add r3, #0x74
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	b _021E1A1C
_021E1A18:
	mov r0, #0
	str r0, [r5, #0xc]
_021E1A1C:
	add r6, sp, #4
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	add r3, #0x80
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r7, #0
	str r0, [r3, #0]
	add r3, r5, #0
	str r2, [r5, #0]
	add r0, r2, #0
	add r2, r5, #0
	add r2, #0x10
	add r3, #0x64
	bl ov5_021E1904
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r5, #0x10
	add r2, r1, #0
	add r3, r5, #0
	bl ov5_021D3B24
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E1A54:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0x20
	blo _021E19E4
	bl GF_AssertFail
	mov r0, #0x20
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E1A68: .word 0x021F9C68
	thumb_func_end ov5_021E19CC

	thumb_func_start ov5_021E1A6C
ov5_021E1A6C: ; 0x021E1A6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _021E1B04 ; =0x021F9C98
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r3, sp, #0x14
	mov r2, #4
_021E1A7A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E1A7A
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	add r7, sp, #0x14
_021E1A8A:
	mov r0, #0x8c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E1AF4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E1AF4
	ldr r0, [sp, #0xc]
	bl ov5_021EFAB4
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, sp, #0x10
	bl ov5_021D5790
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021E1AC2
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x74
	bl sub_0201E268
_021E1AC2:
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, #0
	bne _021E1ADE
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x80
	add r0, #0x10
	add r1, #0x68
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0201CA74
	b _021E1AF4
_021E1ADE:
	str r6, [sp]
	ldr r0, [r5, #0]
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x64]
	add r5, #0x80
	add r1, #0x68
	add r2, r7, #0
	add r3, r5, #0
	bl ov5_021E1944
_021E1AF4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _021E1A8A
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1B04: .word 0x021F9C98
	thumb_func_end ov5_021E1A6C

	.rodata


	.global Unk_ov5_021F9C68
Unk_ov5_021F9C68: ; 0x021F9C68
	.incbin "incbin/overlay5_rodata.bin", 0x1354, 0x1360 - 0x1354

	.global Unk_ov5_021F9C74
Unk_ov5_021F9C74: ; 0x021F9C74
	.incbin "incbin/overlay5_rodata.bin", 0x1360, 0x1384 - 0x1360

	.global Unk_ov5_021F9C98
Unk_ov5_021F9C98: ; 0x021F9C98
	.incbin "incbin/overlay5_rodata.bin", 0x1384, 0x24

