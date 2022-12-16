	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021D5CB0
ov5_021D5CB0: ; 0x021D5CB0
	push {r4, lr}
	mov r1, #0x62
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bne _021D5CC4
	bl sub_02022974
_021D5CC4:
	mov r1, #0
	add r2, r4, #0
	add r0, r1, #0
_021D5CCA:
	strh r0, [r2, #0x1c]
	strh r0, [r2, #0x1e]
	str r0, [r2, #8]
	str r0, [r2, #0x10]
	str r0, [r2, #0x18]
	str r0, [r2, #0x14]
	add r1, r1, #1
	add r2, #0x18
	cmp r1, #0x10
	blt _021D5CCA
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5CB0

	thumb_func_start ov5_021D5CE4
ov5_021D5CE4: ; 0x021D5CE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r6, #0
	mov r0, #0x9b
	mov r1, #4
	bl sub_02006C24
	add r1, r6, #0
	mov r2, #4
	add r7, r0, #0
	bl sub_02006CB8
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr r0, [r0, #0]
	add r4, r6, #0
	cmp r0, #0
	bls _021D5D26
_021D5D0A:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov5_021D5D30
	cmp r0, #0
	blt _021D5D1C
	add r6, r6, #1
_021D5D1C:
	ldr r0, [r5, #4]
	add r4, r4, #1
	ldr r0, [r0, #0]
	cmp r4, r0
	blo _021D5D0A
_021D5D26:
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D5CE4

	thumb_func_start ov5_021D5D30
ov5_021D5D30: ; 0x021D5D30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne _021D5D46
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D5D46:
	mov r4, #0
	add r1, r5, #0
_021D5D4A:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021D5D58
	add r4, r4, #1
	add r1, #0x18
	cmp r4, #0x10
	blt _021D5D4A
_021D5D58:
	cmp r4, #0x10
	beq _021D5D62
	ldr r0, [sp]
	cmp r0, #0
	bne _021D5D6A
_021D5D62:
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D5D6A:
	mov r0, #0x18
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	mov r1, #0x34
	add r7, r0, #0
	mul r7, r1
	ldr r1, [r5, #4]
	ldr r0, [sp]
	add r1, r1, #4
	add r1, r1, r7
	bl sub_0201DF50
	ldr r1, [sp, #0xc]
	str r0, [r1, r6]
	add r0, r1, #0
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _021D5DA0
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D5DA0:
	ldr r1, [r5, #4]
	ldr r0, [sp]
	add r1, r1, #4
	add r1, r1, r7
	bl sub_0201DFE4
	add r1, r5, r6
	str r0, [r1, #0xc]
	ldr r1, _021D5DE8 ; =0x02201D20
	ldr r2, [sp, #4]
	add r0, sp, #0x10
	bl sub_020D7510
	ldr r0, [r5, #4]
	mov r2, #4
	add r0, r0, #4
	add r1, r0, r7
	add r0, r5, r6
	str r1, [r0, #0x18]
	ldr r1, [sp, #4]
	add r7, r5, #0
	ldr r0, [sp, #8]
	add r7, #0x14
	add r1, r1, #1
	bl sub_02006CB8
	str r0, [r7, r6]
	ldr r0, [r7, r6]
	bl sub_020B3C1C
	add r1, r5, r6
	str r0, [r1, #0x10]
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5DE8: .word 0x02201D20
	thumb_func_end ov5_021D5D30

	thumb_func_start ov5_021D5DEC
ov5_021D5DEC: ; 0x021D5DEC
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _021D5E58
	mov r4, #0
	add r5, r0, #0
	add r5, #8
	add r6, r4, #0
	add r7, r4, #0
_021D5DFC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021D5E50
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021D5E50
	ldrh r0, [r5, #0x14]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrb r1, [r0, #0x11]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	bgt _021D5E4C
	strh r6, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	add r0, r0, #1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrb r0, [r0, #0x10]
	cmp r0, #0xff
	bne _021D5E2E
	strh r6, [r5, #0x14]
_021D5E2E:
	ldrh r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r2, #1
	add r1, r1, r2
	ldrb r1, [r1, #0x10]
	bl sub_0201DEAC
	add r2, r0, #0
	ldr r1, [r5, #0]
	ldr r3, [r5, #4]
	add r0, r7, #0
	bl sub_0201DC68
	b _021D5E50
_021D5E4C:
	add r0, r0, #1
	strh r0, [r5, #0x16]
_021D5E50:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x10
	blt _021D5DFC
_021D5E58:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5DEC

	thumb_func_start ov5_021D5E5C
ov5_021D5E5C: ; 0x021D5E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _021D5E8A
	mov r0, #0x18
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021D5E74
	bl sub_020181C4
_021D5E74:
	add r1, r5, #0
	add r1, #0x18
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _021D5E82
	mov r0, #0
	str r0, [r1, r4]
_021D5E82:
	mov r1, #0
	add r0, r5, r4
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
_021D5E8A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D5E5C

	thumb_func_start ov5_021D5E8C
ov5_021D5E8C: ; 0x021D5E8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _021D5EA8
	mov r4, #0
_021D5E94:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D5E5C
	add r4, r4, #1
	cmp r4, #0x10
	blt _021D5E94
	ldr r0, [r5, #0]
	bl sub_020181C4
_021D5EA8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D5E8C

	thumb_func_start ov5_021D5EAC
ov5_021D5EAC: ; 0x021D5EAC
	push {r3, lr}
	cmp r0, #0
	beq _021D5EB6
	bl sub_020181C4
_021D5EB6:
	pop {r3, pc}
	thumb_func_end ov5_021D5EAC
	.data


	.global Unk_ov5_02201D20
Unk_ov5_02201D20: ; 0x02201D20
	.incbin "incbin/overlay5_data.bin", 0x0, 0x15

