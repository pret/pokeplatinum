	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021D5878
ov5_021D5878: ; 0x021D5878
	push {r4, lr}
	mov r0, #4
	mov r1, #0x48
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x48
	bl sub_020C4B4C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5878

	thumb_func_start ov5_021D5894
ov5_021D5894: ; 0x021D5894
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5894

	thumb_func_start ov5_021D58A8
ov5_021D58A8: ; 0x021D58A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r6, r0, #0
_021D58B6:
	mov r0, #1
	lsl r0, r4
	tst r0, r7
	beq _021D58D0
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r4, #0
	bl sub_020AF51C
_021D58D0:
	add r1, r4, #4
	mov r0, #1
	lsl r0, r1
	tst r0, r7
	beq _021D58E2
	ldrh r1, [r6, #0x18]
	add r0, r4, #0
	bl sub_020AF558
_021D58E2:
	add r4, r4, #1
	add r5, r5, #6
	add r6, r6, #2
	cmp r4, #4
	blt _021D58B6
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r7
	beq _021D5904
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, [r2, #0x28]
	bl sub_020AF56C
_021D5904:
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r7
	beq _021D591C
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x24]
	ldrh r1, [r1, #0x26]
	ldr r2, [r2, #0x2c]
	bl sub_020AF590
_021D591C:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r7, r0
	blt _021D5944
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x40]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x34]
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x38]
	ldr r3, [r3, #0x3c]
	bl sub_020AF5B4
_021D5944:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D58A8

	thumb_func_start ov5_021D5948
ov5_021D5948: ; 0x021D5948
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	lsl r0, r0, #8
	add r6, r1, #0
	tst r0, r4
	beq _021D5960
	ldrh r1, [r5, #0x20]
	add r0, r6, #0
	bl sub_020B3564
_021D5960:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _021D5970
	ldrh r1, [r5, #0x22]
	add r0, r6, #0
	bl sub_020B35A4
_021D5970:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021D5980
	ldrh r1, [r5, #0x24]
	add r0, r6, #0
	bl sub_020B35E4
_021D5980:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021D5990
	ldrh r1, [r5, #0x26]
	add r0, r6, #0
	bl sub_020B3624
_021D5990:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021D59A0
	ldr r1, [r5, #0x30]
	add r0, r6, #0
	bl sub_020B3664
_021D59A0:
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021D59B0
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	bl sub_020B36A4
_021D59B0:
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021D59C0
	ldr r1, [r5, #0x38]
	add r0, r6, #0
	bl sub_020B36E4
_021D59C0:
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021D59D0
	ldr r1, [r5, #0x3c]
	add r0, r6, #0
	bl sub_020B3724
_021D59D0:
	mov r0, #1
	lsl r0, r0, #0x10
	tst r0, r4
	beq _021D59E0
	ldr r1, [r5, #0x40]
	add r0, r6, #0
	bl sub_020B3764
_021D59E0:
	mov r1, #2
	lsl r1, r1, #0x10
	add r0, r4, #0
	tst r0, r1
	beq _021D59F6
	ldr r2, [r5, #0x44]
	lsr r1, r1, #2
	add r0, r6, #0
	and r1, r2
	bl sub_020B37A4
_021D59F6:
	mov r1, #1
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021D5A0C
	ldr r2, [r5, #0x44]
	lsr r1, r1, #4
	add r0, r6, #0
	and r1, r2
	bl sub_020B37E4
_021D5A0C:
	mov r1, #2
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021D5A22
	ldr r2, [r5, #0x44]
	lsr r1, r1, #6
	add r0, r6, #0
	and r1, r2
	bl sub_020B3824
_021D5A22:
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021D5A38
	ldr r2, [r5, #0x44]
	lsr r1, r1, #8
	add r0, r6, #0
	and r1, r2
	bl sub_020B3864
_021D5A38:
	mov r1, #2
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021D5A4E
	ldr r2, [r5, #0x44]
	lsr r1, r1, #0xa
	add r0, r6, #0
	and r1, r2
	bl sub_020B38A4
_021D5A4E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D5948

	thumb_func_start ov5_021D5A50
ov5_021D5A50: ; 0x021D5A50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	mul r4, r0
	strh r2, [r5, r4]
	add r2, r5, #2
	strh r3, [r2, r4]
	add r6, sp, #0
	mov r0, #0x10
	ldrsh r0, [r6, r0]
	add r3, r5, #4
	strh r0, [r3, r4]
	add r0, r1, #0
	ldrsh r1, [r5, r4]
	ldrsh r2, [r2, r4]
	ldrsh r3, [r3, r4]
	bl sub_020AF51C
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D5A50

	thumb_func_start ov5_021D5A78
ov5_021D5A78: ; 0x021D5A78
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x18
	lsl r3, r1, #1
	strh r2, [r4, r3]
	add r0, r1, #0
	ldrh r1, [r4, r3]
	bl sub_020AF558
	pop {r4, pc}
	thumb_func_end ov5_021D5A78

	thumb_func_start ov5_021D5A8C
ov5_021D5A8C: ; 0x021D5A8C
	push {r3, lr}
	strh r1, [r0, #0x20]
	str r2, [r0, #0x28]
	cmp r3, #1
	bne _021D5A9E
	mov r1, #1
	lsl r1, r1, #8
	bl ov5_021D58A8
_021D5A9E:
	pop {r3, pc}
	thumb_func_end ov5_021D5A8C

	thumb_func_start ov5_021D5AA0
ov5_021D5AA0: ; 0x021D5AA0
	push {r3, lr}
	strh r1, [r0, #0x22]
	cmp r2, #1
	bne _021D5AB0
	mov r1, #2
	lsl r1, r1, #8
	bl ov5_021D58A8
_021D5AB0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5AA0

	thumb_func_start ov5_021D5AB4
ov5_021D5AB4: ; 0x021D5AB4
	push {r3, lr}
	strh r1, [r0, #0x24]
	str r2, [r0, #0x2c]
	cmp r3, #1
	bne _021D5AC6
	mov r1, #1
	lsl r1, r1, #0xa
	bl ov5_021D58A8
_021D5AC6:
	pop {r3, pc}
	thumb_func_end ov5_021D5AB4

	thumb_func_start ov5_021D5AC8
ov5_021D5AC8: ; 0x021D5AC8
	push {r3, lr}
	strh r1, [r0, #0x26]
	cmp r2, #1
	bne _021D5AD8
	mov r1, #2
	lsl r1, r1, #0xa
	bl ov5_021D58A8
_021D5AD8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5AC8

	thumb_func_start ov5_021D5ADC
ov5_021D5ADC: ; 0x021D5ADC
	push {r3, lr}
	str r1, [r0, #0x34]
	cmp r2, #1
	bne _021D5AEC
	mov r1, #2
	lsl r1, r1, #0xc
	bl ov5_021D58A8
_021D5AEC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5ADC

	thumb_func_start ov5_021D5AF0
ov5_021D5AF0: ; 0x021D5AF0
	push {r3, lr}
	str r1, [r0, #0x38]
	cmp r2, #1
	bne _021D5B00
	mov r1, #1
	lsl r1, r1, #0xe
	bl ov5_021D58A8
_021D5B00:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5AF0

	thumb_func_start ov5_021D5B04
ov5_021D5B04: ; 0x021D5B04
	push {r3, lr}
	str r1, [r0, #0x40]
	cmp r2, #1
	bne _021D5B14
	mov r1, #1
	lsl r1, r1, #0x10
	bl ov5_021D58A8
_021D5B14:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5B04

	thumb_func_start ov5_021D5B18
ov5_021D5B18: ; 0x021D5B18
	push {r3, lr}
	cmp r2, #1
	ldr r2, [r0, #0x44]
	bne _021D5B26
	tst r2, r1
	beq _021D5B2A
	pop {r3, pc}
_021D5B26:
	tst r2, r1
	beq _021D5B3C
_021D5B2A:
	ldr r2, [r0, #0x44]
	eor r1, r2
	str r1, [r0, #0x44]
	cmp r3, #1
	bne _021D5B3C
	mov r1, #1
	lsl r1, r1, #0xc
	bl ov5_021D58A8
_021D5B3C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5B18