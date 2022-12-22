	.include "macros/function.inc"
	.include "include/ov5_021D1A94.inc"

	

	.text


	thumb_func_start ov5_021D1A94
ov5_021D1A94: ; 0x021D1A94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x14
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r7, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0x14
	add r7, r6, #0
	mul r7, r0
	str r6, [r4, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	str r0, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r0, #0
	add r2, r7, #0
	bl MIi_CpuClear32
	add r0, r6, #0
	bl sub_0201CD80
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02018144
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl sub_0201CD88
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D1A94

	thumb_func_start ov5_021D1AE4
ov5_021D1AE4: ; 0x021D1AE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _021D1B04
	add r4, r6, #0
_021D1AF2:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov5_021D1BEC
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021D1AF2
_021D1B04:
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D1AE4

	thumb_func_start ov5_021D1B18
ov5_021D1B18: ; 0x021D1B18
	ldr r3, _021D1B20 ; =sub_0201CDD4
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021D1B20: .word sub_0201CDD4
	thumb_func_end ov5_021D1B18

	thumb_func_start ov5_021D1B24
ov5_021D1B24: ; 0x021D1B24
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0203CD5C
	cmp r0, #0
	beq _021D1B46
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x10]
	cmp r3, #0
	beq _021D1B46
	ldr r1, [r4, #0]
	ldr r2, [r4, #0x10]
	ldr r1, [r1, #0]
	add r0, r4, #0
	blx r3
_021D1B46:
	pop {r4, pc}
	thumb_func_end ov5_021D1B24

	thumb_func_start ov5_021D1B48
ov5_021D1B48: ; 0x021D1B48
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0203CD5C
	cmp r0, #0
	beq _021D1B6A
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021D1B6A
	ldr r1, [r4, #0]
	ldr r2, [r4, #0x10]
	ldr r1, [r1, #0]
	add r0, r4, #0
	blx r3
_021D1B6A:
	pop {r4, pc}
	thumb_func_end ov5_021D1B48

	thumb_func_start ov5_021D1B6C
ov5_021D1B6C: ; 0x021D1B6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r6, r1, #0
	mov r1, #0
	ldr r4, [r5, #0xc]
	cmp r2, #0
	ble _021D1BDC
_021D1B7C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D1BD4
	ldr r0, _021D1BE4 ; =ov5_021D1B24
	ldr r2, [r6, #0]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _021D1BE8 ; =ov5_021D1B48
	ldr r3, [r6, #0]
	add r2, r4, #0
	bl sub_0201CE14
	str r0, [r4, #8]
	str r5, [r4, #0]
	str r6, [r4, #0xc]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D1BAA
	bl sub_02022974
_021D1BAA:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D1BB4
	bl sub_02022974
_021D1BB4:
	ldrh r1, [r6, #4]
	cmp r1, #0
	beq _021D1BC2
	ldr r0, [r5, #4]
	bl sub_02018144
	str r0, [r4, #0x10]
_021D1BC2:
	ldr r3, [r6, #8]
	cmp r3, #0
	beq _021D1BD0
	ldr r1, [r5, #0]
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	blx r3
_021D1BD0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D1BD4:
	add r1, r1, #1
	add r4, #0x14
	cmp r1, r2
	blt _021D1B7C
_021D1BDC:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1BE4: .word ov5_021D1B24
_021D1BE8: .word ov5_021D1B48
	thumb_func_end ov5_021D1B6C

	thumb_func_start ov5_021D1BEC
ov5_021D1BEC: ; 0x021D1BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D1C2A
	ldr r1, [r4, #0xc]
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _021D1C06
	ldr r1, [r4, #0]
	ldr r2, [r4, #0x10]
	ldr r1, [r1, #0]
	blx r3
_021D1C06:
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021D1C14
	ldr r0, [r4, #0x10]
	bl sub_020181C4
_021D1C14:
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_0200DA58
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x14
	bl MIi_CpuClear32
_021D1C2A:
	pop {r4, pc}
	thumb_func_end ov5_021D1BEC

	thumb_func_start ov5_021D1C2C
ov5_021D1C2C: ; 0x021D1C2C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021D1C2C