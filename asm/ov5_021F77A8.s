	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F77A8
ov5_021F77A8: ; 0x021F77A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r1, r6, #0
	bl sub_02026FE8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F77A8

	thumb_func_start ov5_021F77E8
ov5_021F77E8: ; 0x021F77E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r7, #0
	bl ov5_021F7B60
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F77E8

	thumb_func_start ov5_021F7844
ov5_021F7844: ; 0x021F7844
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02054988
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F7844

	thumb_func_start ov5_021F789C
ov5_021F789C: ; 0x021F789C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, #0x80
	add r5, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	ldr r2, _021F7984 ; =0x02200CE4
	add r6, r0, #0
	mov r1, #0
_021F78D8:
	ldrh r0, [r2]
	cmp r4, r0
	bne _021F78FA
	mov r0, #0xc
	ldr r2, _021F7988 ; =0x02200CE6
	mul r0, r1
	ldrb r2, [r2, r0]
	str r2, [sp, #8]
	ldr r2, _021F798C ; =0x02200CE7
	ldrb r2, [r2, r0]
	str r2, [sp, #4]
	ldr r2, _021F7990 ; =0x02200CE8
	ldrb r2, [r2, r0]
	str r2, [sp]
	ldr r2, _021F7994 ; =0x02200CE9
	ldrb r7, [r2, r0]
	b _021F7902
_021F78FA:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #0x26
	blo _021F78D8
_021F7902:
	cmp r1, #0x26
	bne _021F7912
	bl sub_02022974
	mov r0, #0
	add sp, #0xc
	strh r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F7912:
	mov r0, #1
	strh r0, [r5]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F7930
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r1, #0x48
	mov r3, #0x20
	bl sub_0207D688
	cmp r0, #0
	bne _021F7930
	mov r0, #0
	strh r0, [r5]
_021F7930:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F794A
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #0x49
	mov r3, #0x20
	bl sub_0207D688
	cmp r0, #0
	bne _021F794A
	mov r0, #0
	strh r0, [r5]
_021F794A:
	ldr r0, [sp]
	cmp r0, #0
	beq _021F7964
	ldr r2, [sp]
	add r0, r6, #0
	mov r1, #0x4a
	mov r3, #0x20
	bl sub_0207D688
	cmp r0, #0
	bne _021F7964
	mov r0, #0
	strh r0, [r5]
_021F7964:
	cmp r7, #0
	beq _021F797C
	add r0, r6, #0
	mov r1, #0x4b
	add r2, r7, #0
	mov r3, #0x20
	bl sub_0207D688
	cmp r0, #0
	bne _021F797C
	mov r0, #0
	strh r0, [r5]
_021F797C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F7984: .word 0x02200CE4
_021F7988: .word 0x02200CE6
_021F798C: .word 0x02200CE7
_021F7990: .word 0x02200CE8
_021F7994: .word 0x02200CE9
	thumb_func_end ov5_021F789C

	thumb_func_start ov5_021F7998
ov5_021F7998: ; 0x021F7998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	ldr r2, _021F7A28 ; =0x02200CE4
	add r4, r0, #0
	mov r1, #0
_021F79C0:
	ldrh r0, [r2]
	cmp r5, r0
	bne _021F79E0
	mov r0, #0xc
	ldr r2, _021F7A2C ; =0x02200CE6
	mul r0, r1
	ldrb r2, [r2, r0]
	str r2, [sp, #4]
	ldr r2, _021F7A30 ; =0x02200CE7
	ldrb r2, [r2, r0]
	str r2, [sp]
	ldr r2, _021F7A34 ; =0x02200CE8
	ldrb r7, [r2, r0]
	ldr r2, _021F7A38 ; =0x02200CE9
	ldrb r6, [r2, r0]
	b _021F79E8
_021F79E0:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #0x26
	blo _021F79C0
_021F79E8:
	cmp r1, #0x26
	bne _021F79F0
	bl sub_02022974
_021F79F0:
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0x48
	mov r3, #0x20
	bl sub_0207D60C
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0x49
	mov r3, #0x20
	bl sub_0207D60C
	add r0, r4, #0
	mov r1, #0x4a
	add r2, r7, #0
	mov r3, #0x20
	bl sub_0207D60C
	add r0, r4, #0
	mov r1, #0x4b
	add r2, r6, #0
	mov r3, #0x20
	bl sub_0207D60C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7A28: .word 0x02200CE4
_021F7A2C: .word 0x02200CE6
_021F7A30: .word 0x02200CE7
_021F7A34: .word 0x02200CE8
_021F7A38: .word 0x02200CE9
	thumb_func_end ov5_021F7998

	thumb_func_start ov5_021F7A3C
ov5_021F7A3C: ; 0x021F7A3C
	mov r1, #0xc
	mul r1, r0
	ldr r0, _021F7A48 ; =0x02200CE4
	ldrh r0, [r0, r1]
	bx lr
	nop
_021F7A48: .word 0x02200CE4
	thumb_func_end ov5_021F7A3C

	thumb_func_start ov5_021F7A4C
ov5_021F7A4C: ; 0x021F7A4C
	push {r3, lr}
	ldr r3, _021F7A70 ; =0x02200CE4
	mov r2, #0
_021F7A52:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021F7A5E
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_021F7A5E:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x26
	blo _021F7A52
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_021F7A70: .word 0x02200CE4
	thumb_func_end ov5_021F7A4C

	thumb_func_start ov5_021F7A74
ov5_021F7A74: ; 0x021F7A74
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r1, r4, #0x10
	lsr r2, r1, #0x10
	ldr r1, _021F7B58 ; =0x000001DF
	cmp r4, r1
	bhi _021F7AB6
	bhs _021F7B18
	add r3, r1, #0
	sub r3, #0x5d
	cmp r4, r3
	bhi _021F7AAC
	add r3, r1, #0
	sub r3, #0x5d
	cmp r4, r3
	beq _021F7AD2
	b _021F7B48
_021F7AAC:
	add r3, r1, #0
	sub r3, #0x42
	cmp r4, r3
	beq _021F7AF0
	b _021F7B48
_021F7AB6:
	add r3, r1, #0
	add r3, #8
	cmp r4, r3
	bhi _021F7AC8
	add r3, r1, #0
	add r3, #8
	cmp r4, r3
	beq _021F7B04
	b _021F7B48
_021F7AC8:
	add r3, r1, #0
	add r3, #0xd
	cmp r4, r3
	beq _021F7B0E
	b _021F7B48
_021F7AD2:
	cmp r0, #1
	bne _021F7ADC
	add r2, r1, #0
	add r2, #0xf
	b _021F7B48
_021F7ADC:
	cmp r0, #2
	bne _021F7AE6
	add r2, r1, #0
	add r2, #0x10
	b _021F7B48
_021F7AE6:
	cmp r0, #3
	bne _021F7B48
	add r2, r1, #0
	add r2, #0x11
	b _021F7B48
_021F7AF0:
	cmp r0, #1
	bne _021F7AFA
	add r2, r1, #0
	add r2, #0x12
	b _021F7B48
_021F7AFA:
	cmp r0, #2
	bne _021F7B48
	add r2, r1, #0
	add r2, #0x13
	b _021F7B48
_021F7B04:
	cmp r0, #1
	bne _021F7B48
	add r2, r1, #0
	add r2, #0x14
	b _021F7B48
_021F7B0E:
	cmp r0, #1
	bne _021F7B48
	add r2, r1, #0
	add r2, #0x15
	b _021F7B48
_021F7B18:
	cmp r0, #1
	bne _021F7B22
	add r2, r1, #0
	add r2, #0x16
	b _021F7B48
_021F7B22:
	cmp r0, #2
	bne _021F7B2C
	add r2, r1, #0
	add r2, #0x17
	b _021F7B48
_021F7B2C:
	cmp r0, #3
	bne _021F7B36
	add r2, r1, #0
	add r2, #0x18
	b _021F7B48
_021F7B36:
	cmp r0, #4
	bne _021F7B40
	add r2, r1, #0
	add r2, #0x19
	b _021F7B48
_021F7B40:
	cmp r0, #5
	bne _021F7B48
	add r2, r1, #0
	add r2, #0x1a
_021F7B48:
	sub r1, r2, #1
	lsl r0, r1, #2
	add r1, r1, r0
	ldr r0, _021F7B5C ; =0x02200EAC
	add r0, r0, r1
	ldrb r0, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_021F7B58: .word 0x000001DF
_021F7B5C: .word 0x02200EAC
	thumb_func_end ov5_021F7A74

	thumb_func_start ov5_021F7B60
ov5_021F7B60: ; 0x021F7B60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #5
	mov r2, #0
	str r0, [sp]
	bl sub_02074470
	mov r5, #0
	add r4, sp, #0xc
	add r6, r5, #0
_021F7B76:
	add r1, r5, #0
	ldr r0, [sp]
	add r1, #0x36
	add r2, r6, #0
	bl sub_02074470
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _021F7B76
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
_021F7B92:
	ldr r1, [sp, #8]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov5_021F7A74
	add r3, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0xc
	mul r2, r0
	ldr r0, _021F7C00 ; =0x02200CE4
	mov r1, #0
	add r2, r0, r2
_021F7BAC:
	add r4, r3, #0
	asr r4, r1
	mov r0, #1
	and r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021F7BE0
	ldr r0, [r2, #8]
	cmp r7, r0
	bne _021F7BE0
	ldrh r5, [r2]
	mov r6, #0
	add r4, sp, #0xc
_021F7BC8:
	ldrh r0, [r4]
	cmp r0, r5
	beq _021F7BD6
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #4
	blt _021F7BC8
_021F7BD6:
	cmp r6, #4
	bne _021F7BE0
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F7BE0:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #8
	blt _021F7BAC
	ldr r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _021F7B92
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F7C00: .word 0x02200CE4
	thumb_func_end ov5_021F7B60

	thumb_func_start ov5_021F7C04
ov5_021F7C04: ; 0x021F7C04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #0x14]
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl sub_0203E838
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	cmp r4, #0xff
	str r7, [r0, #0x64]
	beq _021F7C62
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x2c]
_021F7C62:
	ldr r2, _021F7DD4 ; =0x00000287
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x20
	bl sub_0200B144
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0203F118
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F098
	mov r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	ldr r1, [r5, #0]
	mov r3, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r1, #0x14
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov5_021F7ED8
	str r0, [sp, #0x24]
	mov r0, #0
	add r1, sp, #0x38
	add r7, r0, #0
_021F7CA8:
	add r0, r0, #1
	strh r7, [r1]
	add r1, r1, #2
	cmp r0, #0x26
	blo _021F7CA8
	cmp r4, #0xff
	beq _021F7D46
	add r5, r7, #0
	add r4, sp, #0x30
	mov r6, #0
_021F7CBC:
	add r1, r5, #0
	ldr r0, [sp, #0x2c]
	add r1, #0x36
	add r2, r6, #0
	bl sub_02074470
	strh r0, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _021F7CBC
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	add r6, sp, #0x38
_021F7CDA:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov5_021F7A74
	mov ip, r0
	ldr r0, [sp, #0x20]
	mov r2, #0xc
	mul r2, r0
	ldr r0, _021F7DD8 ; =0x02200CE4
	mov r1, #0
	add r2, r0, r2
_021F7CF4:
	mov r0, ip
	add r3, r0, #0
	asr r3, r1
	mov r0, #1
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021F7D2C
	ldr r3, [r2, #8]
	ldr r0, [sp, #0x1c]
	cmp r0, r3
	bne _021F7D2C
	ldrh r4, [r2]
	mov r5, #0
	add r3, sp, #0x30
_021F7D14:
	ldrh r0, [r3]
	cmp r0, r4
	beq _021F7D22
	add r5, r5, #1
	add r3, r3, #2
	cmp r5, #4
	blt _021F7D14
_021F7D22:
	cmp r5, #4
	bne _021F7D2C
	strh r4, [r6]
	add r6, r6, #2
	add r7, r7, #1
_021F7D2C:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #8
	blt _021F7CF4
	ldr r0, [sp, #0x20]
	add r0, #8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	blt _021F7CDA
	b _021F7D6A
_021F7D46:
	ldr r5, _021F7DD8 ; =0x02200CE4
	add r6, r7, #0
	add r4, sp, #0x38
_021F7D4C:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	bne _021F7D62
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov5_021F7A3C
	strh r0, [r4]
	add r4, r4, #2
	add r7, r7, #1
_021F7D62:
	add r6, r6, #1
	add r5, #0xc
	cmp r6, #0x26
	blo _021F7D4C
_021F7D6A:
	mov r5, #0
	cmp r7, #0
	ble _021F7D88
	add r4, sp, #0x38
	mov r6, #0xff
_021F7D74:
	ldrh r1, [r4]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r1, #0
	bl ov5_021F7F2C
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, r7
	blt _021F7D74
_021F7D88:
	ldr r2, _021F7DDC ; =0x00000169
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x20
	bl sub_0200B144
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	bl ov5_021F7E10
	ldr r0, [sp, #0x24]
	ldr r3, _021F7DE0 ; =0x0000FFFE
	mov r1, #5
	mov r2, #0xff
	bl ov5_021F7F2C
	add r0, r4, #0
	bl sub_0200B190
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov5_021F7E10
	ldr r0, [sp, #0x24]
	bl ov5_021F7F34
	ldr r0, [sp, #0x14]
	ldr r1, _021F7DE4 ; =ov5_021F7DE8
	bl sub_0203E764
	ldr r0, [sp, #0x28]
	bl sub_0200B190
	mov r0, #1
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_021F7DD4: .word 0x00000287
_021F7DD8: .word 0x02200CE4
_021F7DDC: .word 0x00000169
_021F7DE0: .word 0x0000FFFE
_021F7DE4: .word ov5_021F7DE8
	thumb_func_end ov5_021F7C04

	thumb_func_start ov5_021F7DE8
ov5_021F7DE8: ; 0x021F7DE8
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	ldr r0, _021F7E0C ; =0x0000EEEE
	cmp r1, r0
	beq _021F7E06
	mov r0, #1
	pop {r3, pc}
_021F7E06:
	mov r0, #0
	pop {r3, pc}
	nop
_021F7E0C: .word 0x0000EEEE
	thumb_func_end ov5_021F7DE8

	thumb_func_start ov5_021F7E10
ov5_021F7E10: ; 0x021F7E10
	add r0, #0xb8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F7E10

	thumb_func_start ov5_021F7E18
ov5_021F7E18: ; 0x021F7E18
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x2c]
	add r6, r1, #0
	add r1, #0xb8
	str r4, [r1, #0]
	add r1, r6, #0
	add r1, #0xc3
	ldrb r4, [r1]
	mov r1, #2
	mov r7, #0x23
	bic r4, r1
	add r1, r6, #0
	add r1, #0xc3
	strb r4, [r1]
	add r1, r6, #0
	ldr r4, [sp, #0x24]
	add r1, #0xbc
	str r4, [r1, #0]
	str r0, [r6, #0]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xc3
	add r4, sp, #8
	ldrb r0, [r0]
	mov r1, #1
	ldrb r5, [r4, #0x14]
	bic r0, r1
	mov r1, #1
	and r1, r5
	orr r1, r0
	add r0, r6, #0
	add r0, #0xc3
	strb r1, [r0]
	add r1, r6, #0
	ldrb r0, [r4, #0x10]
	add r1, #0xc2
	lsl r7, r7, #4
	strb r0, [r1]
	add r1, r6, #0
	add r1, #0xc4
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0xc5
	strb r3, [r1]
	add r2, r6, #0
	mov r1, #0
	add r2, #0xc7
	strb r1, [r2]
	ldr r2, [sp, #0x28]
	mov r3, #3
	str r2, [r6, #0x18]
	add r2, r6, #0
	add r2, #0xc0
	strb r3, [r2]
	ldr r2, _021F7ED0 ; =0x0000027E
	add r3, r6, #0
	strh r0, [r6, r2]
	add r2, r6, #0
	add r5, r1, #0
	mov r0, #0xff
_021F7E96:
	add r4, r2, #0
	add r4, #0xf8
	str r5, [r4, #0]
	add r4, r2, #0
	add r4, #0xfc
	str r5, [r4, #0]
	strh r0, [r3, r7]
	add r1, r1, #1
	add r2, #8
	add r3, r3, #2
	cmp r1, #0x27
	blo _021F7E96
	add r4, r6, #0
	mov r7, #0x50
_021F7EB2:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x27
	blo _021F7EB2
	add r6, #0xcc
	ldr r1, _021F7ED4 ; =0x0000EEEE
	ldr r0, [r6, #0]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7ED0: .word 0x0000027E
_021F7ED4: .word 0x0000EEEE
	thumb_func_end ov5_021F7E18

	thumb_func_start ov5_021F7ED8
ov5_021F7ED8: ; 0x021F7ED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r1, #0xa
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #6
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021F7EF8
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F7EF8:
	mov r2, #0xa
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020D5124
	str r5, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	bl ov5_021F7E18
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F7ED8

	thumb_func_start ov5_021F7F2C
ov5_021F7F2C: ; 0x021F7F2C
	push {r3, lr}
	bl ov5_021F7FF8
	pop {r3, pc}
	thumb_func_end ov5_021F7F2C

	thumb_func_start ov5_021F7F34
ov5_021F7F34: ; 0x021F7F34
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xc7
	ldrb r1, [r0]
	cmp r1, #8
	bls _021F7F70
	add r0, r4, #0
	add r0, #0xc5
	ldrb r0, [r0]
	add r3, r4, #0
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r3, #0xc4
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	b _021F7F9E
_021F7F70:
	add r0, r4, #0
	add r0, #0xc5
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0xc4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
_021F7F9E:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021F7FF0 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	ldr r2, _021F7FF0 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov5_021F8090
	add r2, r4, #0
	add r2, #0xc2
	add r0, r4, #0
	ldrb r2, [r2]
	add r0, #0xd0
	mov r1, #0
	mov r3, #4
	bl sub_0200112C
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	ldr r0, _021F7FF4 ; =ov5_021F81A8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021F7FF0: .word 0x000003D9
_021F7FF4: .word ov5_021F81A8
	thumb_func_end ov5_021F7F34

	thumb_func_start ov5_021F7FF8
ov5_021F7FF8: ; 0x021F7FF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	add r1, r5, #0
	add r1, #0xc7
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0xbc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0xc7
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r1, r5, r1
	ldr r0, [r0, #0x1c]
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r6, #0
	bl sub_020237BC
	cmp r4, #0xfa
	bne _021F8064
	add r0, r5, #0
	add r0, #0xc7
	ldrb r0, [r0]
	mov r1, #2
	mvn r1, r1
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xfc
	str r1, [r0, #0]
	b _021F8072
_021F8064:
	add r0, r5, #0
	add r0, #0xc7
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xfc
	str r4, [r0, #0]
_021F8072:
	add r0, r5, #0
	add r0, #0xc7
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0x23
	lsl r0, r0, #4
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0xc7
	ldrb r0, [r0]
	add r5, #0xc7
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F7FF8

	thumb_func_start ov5_021F8090
ov5_021F8090: ; 0x021F8090
	push {r3, r4}
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xf8
	add r1, #0xd0
	str r2, [r1, #0]
	add r1, r0, #0
	ldr r2, _021F818C ; =ov5_021F819C
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xd8
	str r2, [r1, #0]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xdc
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc7
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xe0
	strh r2, [r1]
	add r1, r0, #0
	mov r2, #8
	add r1, #0xe2
	strh r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xe4
	strb r2, [r1]
	add r1, r0, #0
	mov r3, #0xc
	add r1, #0xe5
	strb r3, [r1]
	add r1, r0, #0
	mov r3, #2
	add r1, #0xe6
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xe7
	ldrb r3, [r1]
	mov r1, #0xf
	bic r3, r1
	orr r3, r2
	add r2, r0, #0
	add r2, #0xe7
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xe7
	ldrb r4, [r2]
	mov r2, #0xf0
	mov r3, #0x10
	bic r4, r2
	orr r4, r3
	add r3, r0, #0
	add r3, #0xe7
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xe8
	ldrb r3, [r3]
	bic r3, r1
	mov r1, #0xf
	orr r3, r1
	add r1, r0, #0
	add r1, #0xe8
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xe8
	ldrb r3, [r1]
	mov r1, #0x20
	bic r3, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r0, #0
	add r1, #0xe8
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	ldrh r2, [r1]
	mov r1, #7
	bic r2, r1
	add r1, r0, #0
	add r1, #0xea
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	ldrh r2, [r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r0, #0
	add r1, #0xea
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	ldrh r2, [r1]
	ldr r1, _021F8190 ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r0, #0
	add r1, #0xea
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	ldrh r2, [r1]
	ldr r1, _021F8194 ; =0xFFFF81FF
	and r2, r1
	add r1, r0, #0
	add r1, #0xea
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0xea
	ldrh r2, [r1]
	ldr r1, _021F8198 ; =0xFFFF7FFF
	and r2, r1
	add r1, r0, #0
	add r1, #0xea
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0xec
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021F818C: .word ov5_021F819C
_021F8190: .word 0xFFFFFE7F
_021F8194: .word 0xFFFF81FF
_021F8198: .word 0xFFFF7FFF
	thumb_func_end ov5_021F8090

	thumb_func_start ov5_021F819C
ov5_021F819C: ; 0x021F819C
	ldr r3, _021F81A4 ; =sub_02001504
	mov r1, #0x13
	bx r3
	nop
_021F81A4: .word sub_02001504
	thumb_func_end ov5_021F819C

	thumb_func_start ov5_021F81A8
ov5_021F81A8: ; 0x021F81A8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F81C4
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r5, #0xc0
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021F81C4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021F8240
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, _021F8244 ; =0x0000027E
	add r0, #0xf0
	ldrh r6, [r5, r1]
	ldr r0, [r0, #0]
	add r1, r5, r1
	bl sub_020014D0
	ldr r0, _021F8244 ; =0x0000027E
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _021F81F6
	ldr r0, _021F8248 ; =0x000005DC
	bl sub_02005748
_021F81F6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021F8206
	add r0, r0, #1
	cmp r4, r0
	beq _021F8240
	b _021F822C
_021F8206:
	add r0, r5, #0
	add r0, #0xc3
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F8240
	ldr r0, _021F8248 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, _021F824C ; =0x0000FFFE
	ldr r0, [r0, #0]
	strh r1, [r0]
	add r0, r5, #0
	bl ov5_021F8250
	pop {r4, r5, r6, pc}
_021F822C:
	ldr r0, _021F8248 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	strh r4, [r0]
	add r0, r5, #0
	bl ov5_021F8250
_021F8240:
	pop {r4, r5, r6, pc}
	nop
_021F8244: .word 0x0000027E
_021F8248: .word 0x000005DC
_021F824C: .word 0x0000FFFE
	thumb_func_end ov5_021F81A8

	thumb_func_start ov5_021F8250
ov5_021F8250: ; 0x021F8250
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021F82B4 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	add r0, #0xf0
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_02001384
	add r0, r6, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #8
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021F8280:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blo _021F8280
	add r0, r6, #0
	add r0, #0xc3
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F82A6
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_0200B190
_021F82A6:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F82B4: .word 0x000005DC
	thumb_func_end ov5_021F8250

	thumb_func_start ov5_021F82B8
ov5_021F82B8: ; 0x021F82B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, #0x80
	ldr r7, [r0, #0]
	mov r1, #0xf
	add r0, r7, #0
	bl sub_0203F098
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0
	bl sub_0203F098
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r6, [r0]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021F7A4C
	mov r1, #0xc
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r3, r5, #0
	str r0, [sp]
	ldr r0, _021F8348 ; =0x02200CE6
	ldrb r0, [r0, r1]
	str r0, [sp, #4]
	ldr r0, _021F834C ; =0x02200CE7
	ldrb r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, _021F8350 ; =0x02200CE8
	ldrb r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r0, _021F8354 ; =0x02200CE9
	ldrb r0, [r0, r1]
	add r1, r6, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov5_021DD250
	ldr r1, [sp, #0x18]
	str r0, [r1, #0]
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F8348: .word 0x02200CE6
_021F834C: .word 0x02200CE7
_021F8350: .word 0x02200CE8
_021F8354: .word 0x02200CE9
	thumb_func_end ov5_021F82B8

	thumb_func_start ov5_021F8358
ov5_021F8358: ; 0x021F8358
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DD3A8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F8358

	.rodata


	.global Unk_ov5_02200CE4
Unk_ov5_02200CE4: ; 0x02200CE4
	.incbin "incbin/overlay5_rodata.bin", 0x83D0, 0x8598 - 0x83D0

	.global Unk_ov5_02200EAC
Unk_ov5_02200EAC: ; 0x02200EAC
	.incbin "incbin/overlay5_rodata.bin", 0x8598, 0x9DD

