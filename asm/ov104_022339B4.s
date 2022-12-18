	.include "macros/function.inc"
	.include "include/ov104_022339B4.inc"

	

	.text


	thumb_func_start ov104_022339B4
ov104_022339B4: ; 0x022339B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r1, _02233B80 ; =0x00000708
	mov r0, #0xb
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	ldr r1, _02233B84 ; =0x02241AC0
	ldr r2, _02233B80 ; =0x00000708
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r5, [r0, #0]
	add r0, r4, #0
	bl sub_0202FF58
	ldr r1, _02233B88 ; =0x000004F4
	str r0, [r5, r1]
	add r0, r1, #4
	str r4, [r5, r0]
	mov r0, #0xb
	ldr r1, _02233B84 ; =0x02241AC0
	str r0, [r5, #0]
	ldr r5, [r1, #0]
	bl sub_02079FF4
	ldr r1, _02233B8C ; =0x000004D4
	str r0, [r5, r1]
	mov r0, #0xb
	bl sub_02079FF4
	ldr r1, _02233B90 ; =0x000004D8
	str r0, [r5, r1]
	add r1, #0x1c
	add r0, r4, #0
	ldr r5, [r5, r1]
	bl sub_020300F4
	add r4, r0, #0
	cmp r6, #0
	bne _02233AC6
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r1, [r0, #0]
	strb r7, [r1, #4]
	ldr r0, [sp]
	strb r0, [r1, #5]
	mov r0, #0
	strb r0, [r1, #6]
	add r0, r5, #0
	bl sub_0202FF4C
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r2, [r0, #0]
	ldrb r3, [r2, #4]
	cmp r3, #3
	bne _02233A3A
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r2, r0]
	bl sub_020507E4
	bl sub_0206B6FC
	b _02233A4E
_02233A3A:
	ldrb r2, [r2, #5]
	add r0, r4, #0
	mov r1, #0xa
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020300E0
_02233A4E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _02233AB6
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r5, [r0, #0]
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E430
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E430
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	strh r0, [r5, #0xc]
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r4, [r0, #0]
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r4, r0]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205E488
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	b _02233ABE
_02233AB6:
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r4, [r0, #0]
	mov r0, #0
	strh r0, [r4, #0xc]
_02233ABE:
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	b _02233B54
_02233AC6:
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02030030
	ldr r1, _02233B84 ; =0x02241AC0
	ldr r4, [r1, #0]
	mov r1, #0
	strb r0, [r4, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030030
	mov r2, #0
	strb r0, [r4, #5]
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02030030
	strb r0, [r4, #6]
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r5, [r0, #0]
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E430
	add r7, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205E430
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	strh r0, [r5, #0xc]
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r4, [r0, #0]
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r4, r0]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205E488
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	strh r0, [r4, #8]
_02233B54:
	ldr r0, _02233B84 ; =0x02241AC0
	mov r1, #7
	ldr r4, [r0, #0]
	ldrh r0, [r4, #0xc]
	bl sub_020E1F6C
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02233B78
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r1, [r0, #0]
	ldr r0, _02233B94 ; =0x000004F8
	ldr r0, [r1, r0]
	bl ov104_0222E630
_02233B78:
	ldr r0, _02233B84 ; =0x02241AC0
	ldr r0, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233B80: .word 0x00000708
_02233B84: .word 0x02241AC0
_02233B88: .word 0x000004F4
_02233B8C: .word 0x000004D4
_02233B90: .word 0x000004D8
_02233B94: .word 0x000004F8
	thumb_func_end ov104_022339B4

	thumb_func_start ov104_02233B98
ov104_02233B98: ; 0x02233B98
	push {r3, lr}
	cmp r1, #0
	bne _02233BA4
	bl ov104_02233BAC
	pop {r3, pc}
_02233BA4:
	bl ov104_02233F1C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02233B98

	thumb_func_start ov104_02233BAC
ov104_02233BAC: ; 0x02233BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xd8
	add r4, r0, #0
	bl ov104_0223AF34
	add r1, r0, #0
	add r2, r4, #0
	ldrb r0, [r4, #4]
	add r2, #0x18
	mov r3, #0xe
	bl ov104_0223A860
	add r0, r4, #0
	bl ov104_0223AF34
	mov r3, #0x26
	lsl r3, r3, #4
	add r1, r4, r3
	str r1, [sp]
	add r1, r3, #0
	add r2, r3, #0
	add r1, #8
	add r1, r4, r1
	str r1, [sp, #4]
	ldrh r1, [r4, #8]
	sub r2, #0xc
	add r3, #0x20
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrb r1, [r4, #5]
	add r2, r4, r2
	add r3, r4, r3
	bl ov104_0223AAA0
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov104_02233D80
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl ov104_02233D80
	mov r0, #6
	str r0, [sp, #0x18]
	mov r0, #0
	mov ip, r0
	add r3, r4, #0
	add r5, sp, #0x34
_02233C16:
	mov r0, #0xa
	lsl r0, r0, #6
	add r2, r3, r0
	add r7, r5, #0
	mov r6, #7
_02233C20:
	ldmia r2!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r6, r6, #1
	bne _02233C20
	mov r0, ip
	add r0, r0, #1
	add r3, #0x38
	add r5, #0x38
	mov ip, r0
	cmp r0, #6
	blt _02233C16
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02233CE4
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r7, _02233D70 ; =0x00000282
	mov r5, #0
	add r0, r4, r0
	add r1, sp, #0x28
	add r2, r4, #0
	add r3, sp, #0x1c
_02233C50:
	ldrh r6, [r0]
	add r5, r5, #1
	add r0, #0x38
	lsl r6, r6, #0x15
	lsr r6, r6, #0x15
	strh r6, [r1]
	ldrh r6, [r2, r7]
	add r1, r1, #2
	add r2, #0x38
	strh r6, [r3]
	add r3, r3, #2
	cmp r5, #6
	blt _02233C50
	add r0, r4, #0
	bl ov104_0223AF34
	mov r3, #0x59
	lsl r3, r3, #4
	add r1, r4, r3
	str r1, [sp]
	add r1, r3, #0
	add r1, #8
	add r1, r4, r1
	str r1, [sp, #4]
	add r1, r3, #0
	add r2, r3, #0
	sub r1, #0x10
	ldrh r1, [r4, r1]
	sub r2, #0xc
	add r3, #0x20
	str r1, [sp, #8]
	add r1, sp, #0x28
	str r1, [sp, #0xc]
	add r1, sp, #0x1c
	str r1, [sp, #0x10]
	ldrb r1, [r4, #5]
	add r2, r4, r2
	add r3, r4, r3
	bl ov104_0223AAA0
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov104_02233D80
	add r0, r4, #0
	mov r1, #5
	mov r2, #1
	bl ov104_02233D80
	mov r0, #0xc
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r6, sp, #0x34
_02233CC0:
	mov r0, #0x5b
	lsl r0, r0, #4
	add r3, r5, r0
	mov r0, #0x15
	lsl r0, r0, #4
	add r2, r6, r0
	mov r7, #7
_02233CCE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _02233CCE
	ldr r0, [sp, #0x14]
	add r5, #0x38
	add r0, r0, #1
	add r6, #0x38
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _02233CC0
_02233CE4:
	ldrb r0, [r4, #4]
	mov r1, #1
	bl ov104_0223AA74
	ldr r2, _02233D74 ; =0x000003D2
	add r3, sp, #0x34
	add r1, r4, r2
	str r1, [sp]
	add r1, r2, #0
	add r1, #0x1e
	add r1, r4, r1
	str r1, [sp, #4]
	add r1, r2, #0
	add r1, #8
	add r1, r4, r1
	add r2, #0xe
	str r1, [sp, #8]
	add r1, r4, r2
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #5]
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x18]
	bl ov104_0223AB0C
	mov r0, #0xa
	lsl r0, r0, #6
	mov r7, #0
	add r6, r4, r0
_02233D24:
	mov r0, #0xb
	bl sub_02073C74
	add r5, r0, #0
	add r0, r4, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov104_0222DF40
	ldr r0, _02233D78 ; =0x000004F8
	ldr r1, _02233D7C ; =0x000004D4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl ov104_0222E1C0
	add r0, r5, #0
	bl sub_020181C4
	add r7, r7, #1
	add r6, #0x38
	cmp r7, #6
	blt _02233D24
	ldr r6, _02233D7C ; =0x000004D4
	mov r5, #0
_02233D5C:
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_0207A0FC
	add r5, r5, #1
	cmp r5, #6
	blt _02233D5C
	add sp, #0x1fc
	add sp, #0xd8
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233D70: .word 0x00000282
_02233D74: .word 0x000003D2
_02233D78: .word 0x000004F8
_02233D7C: .word 0x000004D4
	thumb_func_end ov104_02233BAC

	thumb_func_start ov104_02233D80
ov104_02233D80: ; 0x02233D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	cmp r6, #0
	bne _02233E5C
	mov r0, #0x95
	lsl r0, r0, #2
	add r1, r4, r0
	lsl r3, r5, #1
	str r1, [sp, #0x5c]
	ldrh r1, [r1, r3]
	str r3, [sp, #0x20]
	add r6, sp, #0xa4
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xc
	add r1, r4, r1
	str r1, [sp, #0x24]
	ldrb r1, [r1, r5]
	mov r7, #7
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #0x14
	add r1, r4, r1
	str r1, [sp, #0x28]
	lsl r1, r5, #2
	ldr r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldr r1, [r3, r1]
	add r0, #0x2c
	str r1, [sp, #0x14]
	add r1, r4, r0
	mov r0, #0x38
	mul r0, r5
	add r0, r1, r0
	str r0, [sp, #0x10]
	str r0, [sp, #0x30]
_02233DDC:
	ldr r3, [sp, #0x30]
	sub r7, r7, #1
	ldmia r3!, {r0, r1}
	str r3, [sp, #0x30]
	stmia r6!, {r0, r1}
	bne _02233DDC
	mov r0, #0x95
	lsl r0, r0, #2
	add r1, r4, r0
	str r1, [sp, #0x34]
	ldr r3, [sp, #0x34]
	lsl r1, r2, #1
	ldrh r6, [r3, r1]
	str r1, [sp, #0x38]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x5c]
	strh r6, [r1, r3]
	add r1, r0, #0
	add r1, #0xc
	add r1, r4, r1
	ldrb r3, [r1, r2]
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x24]
	strb r3, [r1, r5]
	add r1, r0, #0
	add r1, #0x14
	add r7, r4, r1
	lsl r1, r2, #2
	str r1, [sp, #0x60]
	ldr r5, [r7, r1]
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, #0x2c
	str r5, [r3, r1]
	add r1, r4, r0
	mov r0, #0x38
	mul r0, r2
	add r6, r1, r0
	add r5, r6, #0
	mov r4, #7
_02233E2C:
	ldr r3, [sp, #0x10]
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	str r3, [sp, #0x10]
	sub r4, r4, #1
	bne _02233E2C
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	strh r3, [r1, r0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	add r3, sp, #0xa4
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x60]
	mov r2, #7
	str r1, [r7, r0]
_02233E50:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _02233E50
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
_02233E5C:
	ldr r0, _02233F18 ; =0x00000584
	lsl r3, r5, #1
	add r1, r4, r0
	str r1, [sp, #0x64]
	ldrh r1, [r1, r3]
	str r3, [sp, #0x40]
	add r6, sp, #0x6c
	str r1, [sp, #8]
	add r1, r0, #0
	add r1, #0xc
	add r1, r4, r1
	str r1, [sp, #0x44]
	ldrb r1, [r1, r5]
	mov r7, #7
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0x14
	add r1, r4, r1
	str r1, [sp, #0x48]
	lsl r1, r5, #2
	ldr r3, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [r3, r1]
	add r0, #0x2c
	str r1, [sp]
	add r1, r4, r0
	mov r0, #0x38
	mul r0, r5
	add r0, r1, r0
	str r0, [sp, #0xc]
	str r0, [sp, #0x50]
_02233E9A:
	ldr r3, [sp, #0x50]
	sub r7, r7, #1
	ldmia r3!, {r0, r1}
	str r3, [sp, #0x50]
	stmia r6!, {r0, r1}
	bne _02233E9A
	ldr r3, _02233F18 ; =0x00000584
	add r0, r4, r3
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x54]
	lsl r0, r2, #1
	ldrh r6, [r1, r0]
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x64]
	strh r6, [r0, r1]
	add r0, r3, #0
	add r0, #0xc
	add r0, r4, r0
	ldrb r1, [r0, r2]
	mov ip, r0
	ldr r0, [sp, #0x44]
	strb r1, [r0, r5]
	add r0, r3, #0
	add r0, #0x14
	add r7, r4, r0
	lsl r0, r2, #2
	str r0, [sp, #0x68]
	ldr r5, [r7, r0]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	add r3, #0x2c
	str r5, [r1, r0]
	mov r0, #0x38
	add r1, r4, r3
	mul r0, r2
	add r5, r1, r0
	add r6, r5, #0
	mov r4, #7
_02233EE8:
	ldr r3, [sp, #0xc]
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	str r3, [sp, #0xc]
	sub r4, r4, #1
	bne _02233EE8
	ldr r3, [sp, #8]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
	strh r3, [r1, r0]
	ldr r1, [sp, #4]
	mov r0, ip
	strb r1, [r0, r2]
	ldr r1, [sp]
	ldr r0, [sp, #0x68]
	add r3, sp, #0x6c
	str r1, [r7, r0]
	mov r2, #7
_02233F0C:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _02233F0C
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233F18: .word 0x00000584
	thumb_func_end ov104_02233D80

	thumb_func_start ov104_02233F1C
ov104_02233F1C: ; 0x02233F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x19c
	add r5, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	ldr r7, _022340B8 ; =0x000004F4
	mov r4, #0
	add r6, r5, #0
_02233F2E:
	lsl r2, r4, #0x18
	ldr r0, [r5, r7]
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	strh r0, [r6, #0x18]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xe
	blt _02233F2E
	add r0, sp, #0x28
	mov r4, #0
	add r6, sp, #0x40
	str r0, [sp, #0x14]
	add r7, sp, #0x20
	str r5, [sp, #0x10]
_02233F52:
	ldr r0, _022340B8 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	strh r0, [r6]
	ldr r0, _022340B8 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #6
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	ldr r1, [sp, #0x14]
	lsl r2, r4, #0x18
	str r0, [r1, #0]
	ldr r0, _022340B8 ; =0x000004F4
	mov r1, #5
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	strb r0, [r7]
	ldrh r2, [r6]
	ldr r1, [sp, #0x10]
	ldr r0, _022340BC ; =0x000004E8
	add r4, r4, #1
	strh r2, [r1, r0]
	ldr r0, [sp, #0x14]
	add r6, r6, #2
	add r0, r0, #4
	str r0, [sp, #0x14]
	add r0, r1, #0
	add r0, r0, #2
	add r7, r7, #1
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _02233F52
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x4c
	add r1, sp, #0x40
	add r2, sp, #0x20
	add r3, sp, #0x28
	bl ov104_0222E330
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x4c
_02233FD0:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _022340C0 ; =0x000004F8
	ldr r1, _022340C4 ; =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov104_0222E1C0
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _02233FD0
	add r0, r6, #0
	bl sub_020181C4
	add r0, sp, #0x28
	mov r4, #0
	add r6, sp, #0x40
	str r0, [sp, #0x1c]
	add r7, sp, #0x20
	str r5, [sp, #0x18]
_02234008:
	ldr r0, _022340B8 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	strh r0, [r6]
	ldr r0, _022340B8 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #9
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	ldr r1, [sp, #0x1c]
	lsl r2, r4, #0x18
	str r0, [r1, #0]
	ldr r0, _022340B8 ; =0x000004F4
	mov r1, #8
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030030
	strb r0, [r7]
	ldrh r2, [r6]
	ldr r1, [sp, #0x18]
	ldr r0, _022340C8 ; =0x000003D2
	add r4, r4, #1
	strh r2, [r1, r0]
	ldr r0, [sp, #0x1c]
	add r6, r6, #2
	add r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r1, #0
	add r0, r0, #2
	add r7, r7, #1
	str r0, [sp, #0x18]
	cmp r4, #4
	blt _02234008
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x4c
	add r1, sp, #0x40
	add r2, sp, #0x20
	add r3, sp, #0x28
	bl ov104_0222E330
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x4c
_02234086:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _022340C0 ; =0x000004F8
	ldr r1, _022340CC ; =0x000004D8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov104_0222E1C0
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _02234086
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x19c
	pop {r4, r5, r6, r7, pc}
	nop
_022340B8: .word 0x000004F4
_022340BC: .word 0x000004E8
_022340C0: .word 0x000004F8
_022340C4: .word 0x000004D4
_022340C8: .word 0x000003D2
_022340CC: .word 0x000004D8
	thumb_func_end ov104_02233F1C

	thumb_func_start ov104_022340D0
ov104_022340D0: ; 0x022340D0
	push {r4, lr}
	add r4, r0, #0
	beq _022340FE
	ldr r0, _02234100 ; =0x000004D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022340E2
	bl sub_020181C4
_022340E2:
	ldr r0, _02234104 ; =0x000004D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022340EE
	bl sub_020181C4
_022340EE:
	ldr r2, _02234108 ; =0x00000708
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_020181C4
_022340FE:
	pop {r4, pc}
	; .align 2, 0
_02234100: .word 0x000004D4
_02234104: .word 0x000004D8
_02234108: .word 0x00000708
	thumb_func_end ov104_022340D0

	thumb_func_start ov104_0223410C
ov104_0223410C: ; 0x0223410C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0223412C ; =0x000004DC
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02234116:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov104_02234130
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _02234116
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223412C: .word 0x000004DC
	thumb_func_end ov104_0223410C

	thumb_func_start ov104_02234130
ov104_02234130: ; 0x02234130
	push {r3, lr}
	cmp r1, #6
	blo _0223413E
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
_0223413E:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02234130

	thumb_func_start ov104_02234148
ov104_02234148: ; 0x02234148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _02234414 ; =0x000004F8
	add r6, r1, #0
	ldr r0, [r5, r0]
	bl sub_020300F4
	str r0, [sp]
	ldr r0, _02234414 ; =0x000004F8
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	ldrb r0, [r5, #4]
	mov r1, #1
	bl ov104_0223AA74
	ldrb r1, [r5, #5]
	add r0, sp, #4
	add r3, sp, #0xc
	strb r1, [r0, #8]
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0202FF84
	ldrb r1, [r5, #4]
	add r0, sp, #4
	mov r2, #0
	strb r1, [r0, #8]
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #1
	ldr r0, [r5, r0]
	add r3, sp, #0xc
	bl sub_0202FF84
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0202FF70
	ldrb r1, [r5, #6]
	add r0, sp, #4
	mov r2, #0
	strb r1, [r0, #8]
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #2
	ldr r0, [r5, r0]
	add r3, sp, #0xc
	bl sub_0202FF84
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E488
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020306E4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E430
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E430
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020306E4
	cmp r6, #2
	beq _022342F4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030848
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E45C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030698
	ldrh r1, [r5, #0xc]
	cmp r1, r6
	bne _0223428E
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E4B4
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E4B4
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030848
	b _022342B4
_0223428E:
	cmp r6, r0
	bhs _022342B4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E4B4
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205E4B4
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020306E4
_022342B4:
	ldrb r1, [r5, #0xa]
	add r0, sp, #4
	strb r1, [r0, #8]
	ldrb r2, [r5, #5]
	ldrb r3, [r5, #4]
	ldr r0, [sp]
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r2, r2, #0x18
	mov r1, #0xa
	lsr r2, r2, #0x18
	add r3, sp, #0xc
	bl sub_020300B0
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _022342F4
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _022342E0
	mov r6, #0x66
	b _022342E2
_022342E0:
	mov r6, #0x68
_022342E2:
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldrb r3, [r5, #0xa]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020306E4
_022342F4:
	ldr r7, _02234418 ; =0x000004F4
	mov r4, #0
	add r6, sp, #4
_022342FA:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #0x18]
	lsl r2, r4, #0x18
	mov r1, #3
	strh r0, [r6]
	ldr r0, [r5, r7]
	lsr r2, r2, #0x18
	add r3, sp, #4
	bl sub_0202FF84
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xe
	blo _022342FA
	ldr r0, _0223441C ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r7, r0, #0
	ldr r4, _02234420 ; =0x00000000
	beq _02234394
_02234328:
	ldr r0, _0223441C ; =0x000004D4
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	lsl r0, r4, #1
	add r1, r5, r0
	ldr r0, _02234424 ; =0x000004E8
	lsl r2, r4, #0x18
	ldrh r1, [r1, r0]
	add r0, sp, #4
	lsr r2, r2, #0x18
	strh r1, [r0]
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #4
	ldr r0, [r5, r0]
	add r3, sp, #4
	bl sub_0202FF84
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1, #8]
	ldr r0, _02234418 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #5
	lsr r2, r2, #0x18
	add r3, sp, #0xc
	bl sub_0202FF84
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	ldr r0, _02234418 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #6
	lsr r2, r2, #0x18
	add r3, sp, #0x10
	bl sub_0202FF84
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _02234328
_02234394:
	ldr r0, _02234428 ; =0x000004D8
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r7, r0, #0
	ldr r4, _02234420 ; =0x00000000
	beq _0223440E
_022343A2:
	ldr r0, _02234428 ; =0x000004D8
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	lsl r0, r4, #1
	add r1, r5, r0
	ldr r0, _0223442C ; =0x000003D2
	lsl r2, r4, #0x18
	ldrh r1, [r1, r0]
	add r0, sp, #4
	lsr r2, r2, #0x18
	strh r1, [r0]
	ldr r0, _02234418 ; =0x000004F4
	mov r1, #7
	ldr r0, [r5, r0]
	add r3, sp, #4
	bl sub_0202FF84
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1, #8]
	ldr r0, _02234418 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #8
	lsr r2, r2, #0x18
	add r3, sp, #0xc
	bl sub_0202FF84
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	ldr r0, _02234418 ; =0x000004F4
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #9
	lsr r2, r2, #0x18
	add r3, sp, #0x10
	bl sub_0202FF84
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _022343A2
_0223440E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234414: .word 0x000004F8
_02234418: .word 0x000004F4
_0223441C: .word 0x000004D4
_02234420: .word 0x00000000
_02234424: .word 0x000004E8
_02234428: .word 0x000004D8
_0223442C: .word 0x000003D2
	thumb_func_end ov104_02234148

	thumb_func_start ov104_02234430
ov104_02234430: ; 0x02234430
	ldrb r1, [r0, #6]
	add r1, r1, #1
	strb r1, [r0, #6]
	ldrb r0, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02234430

	thumb_func_start ov104_0223443C
ov104_0223443C: ; 0x0223443C
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end ov104_0223443C

	thumb_func_start ov104_02234440
ov104_02234440: ; 0x02234440
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldrb r4, [r2, #6]
	mov r3, #7
	mul r3, r1
	add r1, r4, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x17
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	add r0, sp, #0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end ov104_02234440

	thumb_func_start ov104_02234474
ov104_02234474: ; 0x02234474
	ldr r3, _0223447C ; =ov104_02234148
	mov r1, #1
	bx r3
	nop
_0223447C: .word ov104_02234148
	thumb_func_end ov104_02234474

	thumb_func_start ov104_02234480
ov104_02234480: ; 0x02234480
	mov r1, #1
	strb r1, [r0, #0xa]
	ldrh r1, [r0, #0xe]
	cmp r1, #8
	bhs _0223448E
	add r1, r1, #1
	strh r1, [r0, #0xe]
_0223448E:
	ldr r3, _02234498 ; =ov104_02234148
	mov r1, #0
	strb r1, [r0, #6]
	bx r3
	nop
_02234498: .word ov104_02234148
	thumb_func_end ov104_02234480

	thumb_func_start ov104_0223449C
ov104_0223449C: ; 0x0223449C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	mov r1, #1
	bl ov104_0223AA74
	str r0, [sp]
	ldr r0, _0223455C ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_0207A008
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0223451A
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r5, r0
	add r4, r5, #0
	str r0, [sp, #8]
_022344D6:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	ldr r0, _02234560 ; =0x000004DC
	mov r1, #0x38
	ldrh r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _02234564 ; =0x000004F8
	ldr r1, _0223455C ; =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov104_0222E1C0
	ldr r0, _02234560 ; =0x000004DC
	add r7, r7, #1
	ldrh r0, [r4, r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _02234568 ; =0x000004E8
	strh r1, [r4, r0]
	ldr r0, [sp, #4]
	add r4, r4, #2
	cmp r7, r0
	blt _022344D6
_0223451A:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _02234550
	mov r0, #0x3f
	lsl r0, r0, #4
	add r4, r5, r0
_02234528:
	add r0, r5, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _02234564 ; =0x000004F8
	ldr r1, _0223456C ; =0x000004D8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov104_0222E1C0
	ldr r0, [sp]
	add r7, r7, #1
	add r4, #0x38
	cmp r7, r0
	blt _02234528
_02234550:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223455C: .word 0x000004D4
_02234560: .word 0x000004DC
_02234564: .word 0x000004F8
_02234568: .word 0x000004E8
_0223456C: .word 0x000004D8
	thumb_func_end ov104_0223449C

	thumb_func_start ov104_02234570
ov104_02234570: ; 0x02234570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	mov r1, #0
	add r5, r0, #0
	add r2, sp, #0x3c
	add r3, sp, #0x2c
	add r0, r1, #0
_0223457E:
	add r1, r1, #1
	strh r0, [r2]
	strh r0, [r3]
	add r2, r2, #2
	add r3, r3, #2
	cmp r1, #8
	blt _0223457E
	ldrb r0, [r5, #4]
	mov r1, #1
	bl ov104_0223AA74
	str r0, [sp, #0x1c]
	ldr r0, _02234698 ; =0x000004D4
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	mov r7, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _022345D8
	add r6, sp, #0x3c
	add r4, sp, #0x2c
_022345AA:
	ldr r0, _02234698 ; =0x000004D4
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	ldr r0, [sp, #0x24]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r7, r0
	blt _022345AA
_022345D8:
	ldr r0, _0223469C ; =0x000004D8
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02234636
	ldr r0, [sp, #0x20]
	str r5, [sp, #0x18]
	lsl r1, r0, #1
	add r0, sp, #0x3c
	add r6, r0, r1
	add r0, sp, #0x2c
	add r4, r0, r1
_022345F6:
	ldr r0, _0223469C ; =0x000004D8
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	str r0, [sp, #0x28]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	ldr r0, [sp, #0x28]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, _022346A0 ; =0x000003D2
	add r7, r7, #1
	ldrh r2, [r1, r0]
	mov r0, #0x95
	lsl r0, r0, #2
	strh r2, [r1, r0]
	add r0, r1, #0
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r6, r6, #2
	add r4, r4, #2
	cmp r7, r0
	blt _022345F6
_02234636:
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #5]
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r0, [r0, #0x18]
	bl ov104_0223A8A8
	ldr r1, _022346A0 ; =0x000003D2
	ldr r3, [sp, #0x20]
	add r2, r5, r1
	str r2, [sp]
	mov r2, #0xb
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	ldr r2, [sp, #0x14]
	add r1, #8
	str r0, [sp, #0xc]
	add r0, r5, r1
	str r0, [sp, #0x10]
	add r2, r3, r2
	ldr r3, [sp, #0x1c]
	add r0, sp, #0x3c
	add r1, sp, #0x2c
	bl ov104_0223A918
	mov r2, #0x3e
	lsl r2, r2, #4
	add r0, r5, r2
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r2, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r0, #0x10
	sub r1, #0xe
	sub r2, r2, #6
	add r0, r5, r0
	add r1, r5, r1
	add r2, r5, r2
	mov r3, #0
	bl ov104_0222E330
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02234698: .word 0x000004D4
_0223469C: .word 0x000004D8
_022346A0: .word 0x000003D2
	thumb_func_end ov104_02234570

	thumb_func_start ov104_022346A4
ov104_022346A4: ; 0x022346A4
	push {r4, lr}
	ldr r1, _022346FC ; =0x000004DC
	add r4, r0, #0
	ldrh r0, [r4, r1]
	cmp r0, #0xff
	beq _022346F8
	sub r0, r1, #4
	add r1, r1, #2
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	ldr r1, _02234700 ; =0x000004D4
	add r2, r0, #0
	ldr r0, [r4, r1]
	add r1, #8
	ldrh r1, [r4, r1]
	bl sub_0207A128
	ldr r1, _02234704 ; =0x000004DE
	ldrh r0, [r4, r1]
	lsl r0, r0, #1
	add r2, r4, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldrh r2, [r2, r0]
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	add r1, #0xa
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, r1]
	add r0, r4, #0
	bl ov104_02234790
	ldr r0, _02234708 ; =0x000004F8
	ldr r0, [r4, r0]
	bl sub_0202CD88
	mov r1, #0x40
	bl sub_0202CF28
_022346F8:
	pop {r4, pc}
	nop
_022346FC: .word 0x000004DC
_02234700: .word 0x000004D4
_02234704: .word 0x000004DE
_02234708: .word 0x000004F8
	thumb_func_end ov104_022346A4

	thumb_func_start ov104_0223470C
ov104_0223470C: ; 0x0223470C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	ldrb r0, [r4, #4]
	mov r1, #1
	bl ov104_0223AA74
	add r6, r0, #0
	ldr r0, _02234788 ; =0x000004D8
	ldr r0, [r4, r0]
	bl sub_0207A008
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	cmp r6, #0
	ble _02234768
	mov r0, #0x3f
	lsl r0, r0, #4
	add r5, r4, r0
_0223473E:
	add r0, r4, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov104_0222DF40
	ldr r0, _0223478C ; =0x000004F8
	ldr r1, _02234788 ; =0x000004D8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r7, #0
	bl ov104_0222E1C0
	ldr r0, [sp]
	add r5, #0x38
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r6
	blt _0223473E
_02234768:
	add r0, r7, #0
	bl sub_020181C4
	mov r5, #0
	cmp r6, #0
	ble _02234784
	ldr r7, _02234788 ; =0x000004D8
_02234776:
	ldr r0, [r4, r7]
	add r1, r5, #0
	bl sub_0207A0FC
	add r5, r5, #1
	cmp r5, r6
	blt _02234776
_02234784:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234788: .word 0x000004D8
_0223478C: .word 0x000004F8
	thumb_func_end ov104_0223470C

	thumb_func_start ov104_02234790
ov104_02234790: ; 0x02234790
	ldrh r2, [r0, #8]
	ldr r1, _022347A0 ; =0x0000270F
	cmp r2, r1
	bhs _0223479C
	add r1, r2, #1
	strh r1, [r0, #8]
_0223479C:
	bx lr
	nop
_022347A0: .word 0x0000270F
	thumb_func_end ov104_02234790

	thumb_func_start ov104_022347A4
ov104_022347A4: ; 0x022347A4
	push {r3, lr}
	cmp r1, #6
	bhi _022347F4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022347B6: ; jump table
	.short _022347C4 - _022347B6 - 2 ; case 0
	.short _022347CA - _022347B6 - 2 ; case 1
	.short _022347D0 - _022347B6 - 2 ; case 2
	.short _022347D6 - _022347B6 - 2 ; case 3
	.short _022347DC - _022347B6 - 2 ; case 4
	.short _022347E6 - _022347B6 - 2 ; case 5
	.short _022347F0 - _022347B6 - 2 ; case 6
_022347C4:
	bl ov104_0222EEF8
	pop {r3, pc}
_022347CA:
	bl ov104_0222EF64
	pop {r3, pc}
_022347D0:
	bl ov104_0222EFCC
	pop {r3, pc}
_022347D6:
	bl ov104_0222F0B4
	pop {r3, pc}
_022347DC:
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl ov104_0222F1A0
	pop {r3, pc}
_022347E6:
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl ov104_0222F1EC
	pop {r3, pc}
_022347F0:
	bl ov104_0222F238
_022347F4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022347A4

	thumb_func_start ov104_022347F8
ov104_022347F8: ; 0x022347F8
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xe]
	cmp r3, #1
	bhi _0223480E
	cmp r2, #8
	blo _02234808
	mov r1, #9
	b _0223481A
_02234808:
	ldr r1, _02234830 ; =0x0223FA34
	ldrb r1, [r1, r2]
	b _0223481A
_0223480E:
	cmp r2, #8
	blo _02234816
	mov r1, #0x15
	b _0223481A
_02234816:
	ldr r1, _02234834 ; =0x0223FA40
	ldrb r1, [r1, r2]
_0223481A:
	cmp r3, #0
	bne _0223482A
	ldrh r0, [r0, #0xc]
	cmp r0, #0x15
	beq _02234828
	cmp r0, #0x31
	bne _0223482A
_02234828:
	mov r1, #0x14
_0223482A:
	add r0, r1, #0
	bx lr
	nop
_02234830: .word 0x0223FA34
_02234834: .word 0x0223FA40
	thumb_func_end ov104_022347F8

	.rodata


	.global Unk_ov104_0223FA34
Unk_ov104_0223FA34: ; 0x0223FA34
	.incbin "incbin/overlay104_rodata.bin", 0x7A4, 0x7B0 - 0x7A4

	.global Unk_ov104_0223FA40
Unk_ov104_0223FA40: ; 0x0223FA40
	.incbin "incbin/overlay104_rodata.bin", 0x7B0, 0x9


	.bss


	.global Unk_ov104_02241AC0
Unk_ov104_02241AC0: ; 0x02241AC0
	.space 0x4

