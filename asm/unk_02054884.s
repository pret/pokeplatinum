	.include "macros/function.inc"
	.include "include/unk_02054884.inc"

	

	.text


	thumb_func_start sub_02054884
sub_02054884: ; 0x02054884
	push {r4, lr}
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054898
	mov r0, #0
	pop {r4, pc}
_02054898:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020548AA
	mov r0, #1
	pop {r4, pc}
_020548AA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054884

	thumb_func_start sub_020548B0
sub_020548B0: ; 0x020548B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02025E38
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_0207A268
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r3, [sp, #0x3c]
	add r0, r4, #0
	mov r2, #4
	str r5, [sp, #4]
	bl sub_02077E64
	add r0, sp, #0x28
	ldrh r0, [r0, #0x10]
	mov r1, #6
	add r2, sp, #0x1c
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02074B30
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0207A048
	add r5, r0, #0
	beq _02054924
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F180
_02054924:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020548B0

	thumb_func_start sub_02054930
sub_02054930: ; 0x02054930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r0, r4, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02025E38
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0207A268
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl sub_02017070
	mov r1, #4
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021E6CF0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A048
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054930

	thumb_func_start sub_02054988
sub_02054988: ; 0x02054988
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	lsl r2, r5, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_020771F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054988

	thumb_func_start sub_020549A0
sub_020549A0: ; 0x020549A0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	bl sub_0207A0F8
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _02054A0A
_020549B2:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054A04
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _02054A00
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bne _02054A04
_02054A00:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A04:
	add r6, r6, #1
	cmp r6, r7
	blt _020549B2
_02054A0A:
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020549A0

	thumb_func_start sub_02054A10
sub_02054A10: ; 0x02054A10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207A0F8
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
	cmp r6, #0
	ble _02054A3A
_02054A22:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	bl sub_02054884
	cmp r0, #0
	beq _02054A34
	add r5, r5, #1
_02054A34:
	add r4, r4, #1
	cmp r4, r6
	blt _02054A22
_02054A3A:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054A10

	thumb_func_start sub_02054A40
sub_02054A40: ; 0x02054A40
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A0F8
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _02054A6C
_02054A50:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r7, r0, #0
	bl sub_02054884
	cmp r0, #0
	beq _02054A66
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A66:
	add r4, r4, #1
	cmp r4, r5
	blt _02054A50
_02054A6C:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054A40

	thumb_func_start sub_02054A74
sub_02054A74: ; 0x02054A74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r4, _02054AAC ; =0x00000000
	beq _02054AA8
_02054A84:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054A9E
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054A9E:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _02054A84
_02054AA8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054AAC: .word 0x00000000
	thumb_func_end sub_02054A74

	thumb_func_start sub_02054AB0
sub_02054AB0: ; 0x02054AB0
	push {r3, lr}
	bl sub_02054A10
	cmp r0, #2
	blt _02054ABE
	mov r0, #1
	pop {r3, pc}
_02054ABE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02054AB0

	thumb_func_start sub_02054AC4
sub_02054AC4: ; 0x02054AC4
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	add r1, sp, #0
	add r7, r0, #0
	strb r2, [r1]
	bl sub_0207A0F8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02054B00
_02054ADA:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02054AFA
	add r0, r4, #0
	mov r1, #0x19
	add r2, sp, #0
	bl sub_02074B30
_02054AFA:
	add r5, r5, #1
	cmp r5, r6
	blt _02054ADA
_02054B00:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054AC4

	thumb_func_start sub_02054B04
sub_02054B04: ; 0x02054B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r7, #0
	bl sub_0207A0F8
	add r4, r7, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _02054B78
_02054B1C:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02054884
	cmp r0, #0
	beq _02054B70
	add r0, r5, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #0x88
	tst r0, r1
	beq _02054B70
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	cmp r0, #1
	bls _02054B52
	sub r0, r0, #1
	str r0, [sp, #0xc]
_02054B52:
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02054B6E
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #7
	add r6, r6, #1
	bl sub_02075C74
_02054B6E:
	add r7, r7, #1
_02054B70:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _02054B1C
_02054B78:
	cmp r6, #0
	beq _02054B82
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02054B82:
	cmp r7, #0
	beq _02054B8C
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02054B8C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054B04

	thumb_func_start sub_02054B94
sub_02054B94: ; 0x02054B94
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xa0
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	mov r1, #0x88
	tst r0, r1
	beq _02054BCA
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02054BCA
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02054BCA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02054B94