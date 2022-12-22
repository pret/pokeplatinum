	.include "macros/function.inc"
	.include "include/ov5_021D1C30.inc"

	

	.text


	thumb_func_start ov5_021D1C30
ov5_021D1C30: ; 0x021D1C30
	ldrh r2, [r0]
	mov r1, #1
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #2
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #4
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #8
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x10
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x20
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x80
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	ldr r1, _021D1C9C ; =0xFFFFFEFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D1CA0 ; =0xFFFFFDFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D1CA4 ; =0xFFFFFBFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D1CA8 ; =0xFFFFF7FF
	and r2, r1
	strh r2, [r0]
	mov r2, #0xff
	strb r2, [r0, #2]
	asr r1, r1, #0xc
	strb r1, [r0, #3]
	bx lr
	nop
_021D1C9C: .word 0xFFFFFEFF
_021D1CA0: .word 0xFFFFFDFF
_021D1CA4: .word 0xFFFFFBFF
_021D1CA8: .word 0xFFFFF7FF
	thumb_func_end ov5_021D1C30

	thumb_func_start ov5_021D1CAC
ov5_021D1CAC: ; 0x021D1CAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov5_021D1C30
	ldr r0, [r7, #0x3c]
	bl sub_0205EB14
	str r0, [sp, #4]
	ldr r0, [r7, #0x3c]
	bl sub_0205EB0C
	str r0, [sp]
	ldr r0, [r7, #0x3c]
	bl sub_0205EA78
	add r2, r0, #0
	ldr r0, [sp, #4]
	strh r6, [r5, #4]
	strh r4, [r5, #6]
	cmp r0, #3
	beq _021D1CE2
	cmp r0, #0
	bne _021D1D40
_021D1CE2:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r6
	beq _021D1CF2
	ldrh r1, [r5]
	mov r0, #4
	orr r0, r1
	strh r0, [r5]
_021D1CF2:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r6
	beq _021D1D02
	ldrh r1, [r5]
	mov r0, #8
	orr r0, r1
	strh r0, [r5]
_021D1D02:
	mov r3, #1
	add r0, r6, #0
	tst r0, r3
	beq _021D1D16
	ldrh r1, [r5]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r3
	strh r0, [r5]
_021D1D16:
	mov r0, #2
	tst r0, r6
	beq _021D1D24
	ldrh r1, [r5]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r5]
_021D1D24:
	mov r0, #0xf0
	add r3, r4, #0
	and r3, r0
	beq _021D1D34
	ldrh r1, [r5]
	mov r0, #0x10
	orr r0, r1
	strh r0, [r5]
_021D1D34:
	cmp r3, #0
	beq _021D1D40
	ldrh r1, [r5]
	mov r0, #0x20
	orr r0, r1
	strh r0, [r5]
_021D1D40:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021D1D54
	ldr r0, [sp]
	cmp r0, #1
	bne _021D1D54
	ldrh r1, [r5]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r5]
_021D1D54:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021D1D62
	ldrh r1, [r5]
	mov r0, #2
	orr r0, r1
	strh r0, [r5]
_021D1D62:
	cmp r2, #0
	bne _021D1D6C
	mov r0, #0x40
	tst r0, r4
	bne _021D1D8A
_021D1D6C:
	cmp r2, #1
	bne _021D1D76
	mov r0, #0x80
	tst r0, r4
	bne _021D1D8A
_021D1D76:
	cmp r2, #2
	bne _021D1D80
	mov r0, #0x20
	tst r0, r4
	bne _021D1D8A
_021D1D80:
	cmp r2, #3
	bne _021D1D8E
	mov r0, #0x10
	tst r0, r4
	beq _021D1D8E
_021D1D8A:
	strb r2, [r5, #3]
	b _021D1D94
_021D1D8E:
	mov r0, #0
	mvn r0, r0
	strb r0, [r5, #3]
_021D1D94:
	ldr r0, [r7, #0x3c]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02061308
	strb r0, [r5, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D1CAC

	thumb_func_start ov5_021D1DA4
ov5_021D1DA4: ; 0x021D1DA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D1DC6
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F5C0
	cmp r0, #1
	bne _021D1DC6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1DC6:
	ldrh r0, [r5]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D1E1E
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl sub_02054AB0
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _021D1DEA
	mov r6, #1
_021D1DEA:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02067A84
	cmp r0, #1
	beq _021D1E0C
	add r0, r4, #0
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #1
	bne _021D1E1E
	add r0, r4, #0
	bl ov8_0224C51C
	cmp r0, #1
	bne _021D1E1E
_021D1E0C:
	ldr r0, [r4, #0x3c]
	bl sub_0205F56C
	ldr r0, [r4, #0x38]
	bl sub_02062C48
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1E1E:
	ldrh r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021D1E40
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A9A4
	add r0, r4, #0
	bl ov5_021D2884
	cmp r0, #1
	bne _021D1E40
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1E40:
	ldrh r0, [r5]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D1EAE
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	ldr r0, [r4, #0x3c]
	mov r6, #0
	bl sub_02061308
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #2
	bl sub_0206AEAC
	cmp r0, #0
	beq _021D1E6A
	mov r0, #1
	orr r6, r0
_021D1E6A:
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	mov r1, #0x7f
	bl sub_020549A0
	cmp r0, #0xff
	beq _021D1E7E
	mov r0, #2
	orr r6, r0
_021D1E7E:
	add r0, r4, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021D1E98
	add r0, r4, #0
	bl ov9_02250F74
	cmp r0, #1
	bne _021D1E98
	mov r0, #4
	orr r6, r0
_021D1E98:
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov5_021DFDE0
	cmp r0, #1
	bne _021D1EAE
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1EAE:
	ldrh r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021D1F04
	add r0, r4, #0
	bl ov5_021D249C
	cmp r0, #0
	beq _021D1EC6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1EC6:
	add r0, r4, #0
	bl ov5_021D20DC
	cmp r0, #1
	bne _021D1ED6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1ED6:
	add r0, r4, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021D1F04
	mov r0, #2
	ldrsb r1, [r5, r0]
	sub r0, r0, #3
	cmp r1, r0
	bne _021D1EF4
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
_021D1EF4:
	add r0, r4, #0
	bl ov9_0224A67C
	cmp r0, #1
	bne _021D1F04
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1F04:
	ldrh r0, [r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021D1F28
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _021D1F28
	add r0, r4, #0
	bl ov5_021D20DC
	cmp r0, #1
	bne _021D1F28
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1F28:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021D1F32
	b _021D2058
_021D1F32:
	add r0, r4, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	add r1, sp, #0xc
	bne _021D1F48
	add r0, r4, #0
	bl ov5_021D2EA4
	b _021D1F4E
_021D1F48:
	add r0, r4, #0
	bl sub_0203CA40
_021D1F4E:
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021D1F9C
	bl sub_0205F588
	cmp r0, #1
	bne _021D1F6A
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205F5E4
_021D1F6A:
	ldr r0, [sp, #0xc]
	bl sub_02062950
	cmp r0, #9
	beq _021D1F8C
	ldr r5, [sp, #0xc]
	add r0, r5, #0
	bl sub_02062960
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl sub_0203E880
	b _021D1F96
_021D1F8C:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0203E880
_021D1F96:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1F9C:
	bl sub_0205F108
	add r6, r0, #0
	cmp r6, #1
	bhi _021D1FD8
	add r0, r4, #0
	bl sub_0203A440
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203A448
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0203CA6C
	add r1, r0, #0
	ldr r0, _021D20D4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D1FD8
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1FD8:
	cmp r6, #0
	bne _021D1FFC
	add r0, r4, #0
	add r1, sp, #8
	bl ov5_021EFB40
	cmp r0, #0
	beq _021D1FFC
	ldr r1, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1FFC:
	ldr r0, [r4, #0x3c]
	bl sub_0205EAA0
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_020616F0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov5_021D271C
	add r1, r0, #0
	ldr r0, _021D20D4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D2030
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2030:
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov5_021D2C98
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl ov5_021F8410
	cmp r0, #1
	bne _021D2058
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2058:
	ldrh r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D2090
	add r0, r4, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021D2078
	mov r1, #3
	ldrsb r1, [r5, r1]
	add r0, r4, #0
	bl ov9_0224A800
	b _021D2090
_021D2078:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D2504
	cmp r0, #1
	bne _021D2090
	add r0, r4, #0
	bl ov5_021D2E14
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2090:
	ldrh r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021D20A8
	add r0, r4, #0
	bl sub_02069238
	cmp r0, #1
	bne _021D20A8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D20A8:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D20CC
	add r0, r4, #0
	bl sub_0203A9C8
	cmp r0, #1
	bne _021D20CC
	ldr r0, _021D20D8 ; =0x000005FD
	bl sub_02005748
	add r0, r4, #0
	bl sub_0203A9E0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D20CC:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D20D4: .word 0x0000FFFF
_021D20D8: .word 0x000005FD
	thumb_func_end ov5_021D1DA4

	thumb_func_start ov5_021D20DC
ov5_021D20DC: ; 0x021D20DC
	push {r3, r4, r5, lr}
	add r1, sp, #0
	add r5, r0, #0
	bl sub_0203CBE0
	cmp r0, #1
	bne _021D2104
	ldr r4, [sp]
	add r0, r4, #0
	bl sub_02062960
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2104:
	add r0, r5, #0
	bl sub_0203A440
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A448
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203CB80
	add r1, r0, #0
	ldr r0, _021D2138 ; =0x0000FFFF
	cmp r1, r0
	beq _021D2134
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2134:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2138: .word 0x0000FFFF
	thumb_func_end ov5_021D20DC

	thumb_func_start ov5_021D213C
ov5_021D213C: ; 0x021D213C
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D2158
	add r0, r1, #0
	mov r1, #1
	bl sub_0203F5C0
	cmp r0, #1
	bne _021D2158
	mov r0, #1
	pop {r4, pc}
_021D2158:
	bl sub_020363A0
	cmp r0, #0
	bne _021D216C
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	beq _021D2170
_021D216C:
	mov r0, #0
	pop {r4, pc}
_021D2170:
	bl ov23_02242814
	ldrh r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021D2186
	mov r0, #0
	bl ov23_02242830
	mov r0, #0
	pop {r4, pc}
_021D2186:
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D2194
	bl ov23_022427F8
	mov r0, #0
	pop {r4, pc}
_021D2194:
	bl ov23_02242458
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021D213C

	thumb_func_start ov5_021D219C
ov5_021D219C: ; 0x021D219C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	add r5, r1, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D21CE
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _021D21CE
	add r0, r5, #0
	bl ov5_021D2CFC
	bl sub_0205DB1C
	cmp r0, #0
	beq _021D21CE
	ldr r1, _021D226C ; =0x0000238D
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D21CE:
	bl sub_020363A0
	cmp r0, #0
	bne _021D21EA
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _021D21EA
	bl sub_02059D2C
	cmp r0, #0
	bne _021D21EE
_021D21EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D21EE:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D223E
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203CA40
	cmp r0, #1
	bne _021D223E
	ldr r0, [sp]
	bl sub_02062948
	cmp r0, #1
	beq _021D223E
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _021D2224
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_021D2224:
	ldr r4, [sp]
	add r0, r4, #0
	bl sub_02062960
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D223E:
	ldrh r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021D2250
	add r0, r5, #0
	bl sub_0205B2D4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2250:
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D2266
	ldr r0, _021D2270 ; =0x000005FD
	bl sub_02005748
	add r0, r5, #0
	bl sub_0203AABC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2266:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D226C: .word 0x0000238D
_021D2270: .word 0x000005FD
	thumb_func_end ov5_021D219C

	thumb_func_start ov5_021D2274
ov5_021D2274: ; 0x021D2274
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_021D227A:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D2286
	add r5, r5, #1
_021D2286:
	add r4, r4, #1
	cmp r4, #5
	blt _021D227A
	cmp r5, #1
	blt _021D2294
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2294:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D2274

	thumb_func_start ov5_021D2298
ov5_021D2298: ; 0x021D2298
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_020318EC
	mov r1, #0xfe
	tst r0, r1
	beq _021D22CA
	bl ov5_021D2274
	cmp r0, #0
	beq _021D22C6
	bl sub_02035E18
	cmp r0, #1
	ble _021D22C6
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D22C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D22CA:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D2314
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203CA40
	cmp r0, #1
	bne _021D2314
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _021D22F6
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_021D22F6:
	bl sub_02036B84
	ldr r4, [sp]
	add r0, r4, #0
	bl sub_02062960
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2314:
	ldrh r0, [r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021D2334
	add r0, r5, #0
	bl ov5_021D2CFC
	bl sub_0205DEE4
	cmp r0, #0
	beq _021D2334
	add r0, r5, #0
	bl sub_020545EC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2334:
	ldrh r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D235E
	bl sub_02035E18
	cmp r0, #1
	bgt _021D235E
	ldr r0, _021D2364 ; =0x000005FD
	bl sub_02005748
	add r0, r5, #0
	bl sub_0203AA78
	mov r0, #4
	bl sub_0205BEA8
	bl sub_02036BA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D235E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2364: .word 0x000005FD
	thumb_func_end ov5_021D2298

	thumb_func_start ov5_021D2368
ov5_021D2368: ; 0x021D2368
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D238A
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F5C0
	cmp r0, #1
	bne _021D238A
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D238A:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D2442
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0203CA40
	cmp r0, #1
	bne _021D23E8
	ldr r0, [r4, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _021D23B6
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205F5E4
_021D23B6:
	ldr r0, [sp]
	bl sub_02062950
	cmp r0, #9
	beq _021D23D8
	ldr r5, [sp]
	add r0, r5, #0
	bl sub_02062960
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl sub_0203E880
	b _021D23E2
_021D23D8:
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0203E880
_021D23E2:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D23E8:
	add r0, r4, #0
	bl sub_0203A440
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203A448
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203CA6C
	add r1, r0, #0
	ldr r0, _021D2494 ; =0x0000FFFF
	cmp r1, r0
	beq _021D241A
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D241A:
	add r0, r4, #0
	bl ov5_021D2D18
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021D271C
	add r1, r0, #0
	ldr r0, _021D2494 ; =0x0000FFFF
	cmp r1, r0
	beq _021D2442
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203E880
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2442:
	ldrh r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D245C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021D2504
	cmp r0, #1
	bne _021D245C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D245C:
	ldrh r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021D2474
	add r0, r4, #0
	bl sub_02069238
	cmp r0, #1
	bne _021D2474
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2474:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D248E
	ldr r0, _021D2498 ; =0x000005FD
	bl sub_02005748
	add r0, r4, #0
	bl sub_0203A9E0
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D248E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D2494: .word 0x0000FFFF
_021D2498: .word 0x000005FD
	thumb_func_end ov5_021D2368

	thumb_func_start ov5_021D249C
ov5_021D249C: ; 0x021D249C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov5_021D2C7C
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _021D24E0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02056374
	cmp r0, #1
	bne _021D24DA
	add r0, r4, #0
	bl sub_0205639C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02051450
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021D24DA:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021D24E0:
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A0EC
	cmp r0, #0
	beq _021D24FC
	add r0, r4, #0
	bl ov6_02240D5C
	cmp r0, #1
	bne _021D24FC
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021D24FC:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D249C

	thumb_func_start ov5_021D2504
ov5_021D2504: ; 0x021D2504
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r1, #0
	mov r1, #3
	ldrsb r2, [r5, r1]
	sub r1, r1, #4
	add r6, r0, #0
	cmp r2, r1
	bne _021D251C
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D251C:
	mov r1, #4
	bl sub_02071CB4
	cmp r0, #1
	bne _021D2536
	add r0, r6, #0
	bl ov8_0224BF4C
	cmp r0, #1
	bne _021D2536
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2536:
	add r0, r6, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov5_021D2C98
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl sub_02054F68
	cmp r0, #0
	bne _021D2554
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D2554:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r3, sp, #0x18
	bl ov5_021D2D34
	cmp r0, #0
	beq _021D25BA
	mov r0, #3
	ldrsb r1, [r5, r0]
	sub r0, r0, #4
	cmp r1, r0
	beq _021D25BA
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl sub_02054F94
	bl sub_0205DAEC
	cmp r0, #0
	beq _021D25BA
	mov r0, #3
	ldrsb r0, [r5, r0]
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02071CB4
	cmp r0, #1
	bne _021D259E
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r3, sp, #0xc
	bl ov8_0224C62C
_021D259E:
	mov r3, #0
	str r3, [sp]
	ldr r0, [sp, #0xc]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02056BDC
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D25BA:
	add r0, r6, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov5_021D2C7C
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl sub_02054F94
	add r4, r0, #0
	bl sub_0205DAF8
	cmp r0, #0
	bne _021D25E2
	add r0, r4, #0
	bl sub_0205DB28
	cmp r0, #0
	beq _021D25F0
_021D25E2:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021D2664
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D25F0:
	add r0, r4, #0
	bl sub_0205DB04
	cmp r0, #0
	bne _021D2604
	add r0, r4, #0
	bl sub_0205DB34
	cmp r0, #0
	beq _021D2612
_021D2604:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021D2664
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D2612:
	add r0, r4, #0
	bl sub_0205DB1C
	cmp r0, #0
	bne _021D2626
	add r0, r4, #0
	bl sub_0205DB4C
	cmp r0, #0
	beq _021D2634
_021D2626:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _021D2664
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D2634:
	add r0, r4, #0
	bl sub_0205DC44
	cmp r0, #0
	beq _021D264C
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021D2664
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D264C:
	add r0, r4, #0
	bl sub_0205DC50
	cmp r0, #0
	beq _021D2664
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021D2664
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D2664:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r3, sp, #0x18
	bl ov5_021D2D34
	cmp r0, #0
	bne _021D267A
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D267A:
	add r0, r4, #0
	bl sub_0205DAEC
	cmp r0, #0
	beq _021D2688
	mov r1, #1
	b _021D2700
_021D2688:
	add r0, r4, #0
	bl sub_0205DC44
	cmp r0, #0
	beq _021D2696
	mov r1, #3
	b _021D2700
_021D2696:
	add r0, r4, #0
	bl sub_0205DC50
	cmp r0, #0
	beq _021D26A4
	mov r1, #3
	b _021D2700
_021D26A4:
	add r0, r4, #0
	bl sub_0205DAF8
	cmp r0, #0
	bne _021D26E0
	add r0, r4, #0
	bl sub_0205DB28
	cmp r0, #0
	bne _021D26E0
	add r0, r4, #0
	bl sub_0205DB04
	cmp r0, #0
	bne _021D26E0
	add r0, r4, #0
	bl sub_0205DB34
	cmp r0, #0
	bne _021D26E0
	add r0, r4, #0
	bl sub_0205DB1C
	cmp r0, #0
	bne _021D26E0
	add r0, r4, #0
	bl sub_0205DB4C
	cmp r0, #0
	beq _021D26FA
_021D26E0:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02056C18
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D26FA:
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D2700:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02056BDC
	mov r0, #1
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021D2504

	thumb_func_start ov5_021D271C
ov5_021D271C: ; 0x021D271C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EA78
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205DBE4
	cmp r0, #0
	beq _021D273C
	cmp r6, #0
	bne _021D273C
	ldr r0, _021D2844 ; =0x000007E2
	pop {r4, r5, r6, pc}
_021D273C:
	add r0, r4, #0
	bl sub_0205DC80
	cmp r0, #0
	beq _021D274A
	ldr r0, _021D2848 ; =0x000009C4
	pop {r4, r5, r6, pc}
_021D274A:
	add r0, r4, #0
	bl sub_0205DC8C
	cmp r0, #0
	beq _021D2758
	ldr r0, _021D284C ; =0x000009C5
	pop {r4, r5, r6, pc}
_021D2758:
	add r0, r4, #0
	bl sub_0205DC98
	cmp r0, #0
	beq _021D2766
	ldr r0, _021D2850 ; =0x000009C6
	pop {r4, r5, r6, pc}
_021D2766:
	add r0, r4, #0
	bl sub_0205DCA4
	cmp r0, #0
	beq _021D2774
	ldr r0, _021D2854 ; =0x000009C7
	pop {r4, r5, r6, pc}
_021D2774:
	add r0, r4, #0
	bl sub_0205DCB0
	cmp r0, #0
	beq _021D2782
	ldr r0, _021D2858 ; =0x000009C8
	pop {r4, r5, r6, pc}
_021D2782:
	add r0, r4, #0
	bl sub_0205DCBC
	cmp r0, #0
	beq _021D2790
	ldr r0, _021D285C ; =0x000009C9
	pop {r4, r5, r6, pc}
_021D2790:
	add r0, r4, #0
	bl sub_0205DCC8
	cmp r0, #0
	beq _021D279E
	ldr r0, _021D2860 ; =0x000009CA
	pop {r4, r5, r6, pc}
_021D279E:
	add r0, r4, #0
	bl sub_0205DCD4
	cmp r0, #0
	beq _021D27AC
	ldr r0, _021D2864 ; =0x000009CB
	pop {r4, r5, r6, pc}
_021D27AC:
	add r0, r4, #0
	bl sub_0205DDB4
	cmp r0, #0
	beq _021D27BA
	ldr r0, _021D2868 ; =0x00002716
	pop {r4, r5, r6, pc}
_021D27BA:
	add r0, r4, #0
	bl sub_0205DBF0
	cmp r0, #0
	beq _021D27C8
	ldr r0, _021D286C ; =0x000009CC
	pop {r4, r5, r6, pc}
_021D27C8:
	add r0, r4, #0
	bl sub_0205DDC0
	cmp r0, #0
	beq _021D27D6
	ldr r0, _021D2870 ; =0x000007EE
	pop {r4, r5, r6, pc}
_021D27D6:
	add r0, r4, #0
	bl sub_0205DE84
	cmp r0, #0
	beq _021D27E8
	cmp r6, #0
	bne _021D27E8
	ldr r0, _021D2874 ; =0x00002774
	pop {r4, r5, r6, pc}
_021D27E8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021E0760
	cmp r0, #0
	beq _021D27F8
	ldr r0, _021D2878 ; =0x00002713
	pop {r4, r5, r6, pc}
_021D27F8:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	cmp r0, #2
	beq _021D283E
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_02061760
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	add r2, r4, #0
	bl ov5_021E0118
	cmp r0, #0
	beq _021D283E
	add r0, r6, #0
	mov r1, #3
	bl sub_02025F34
	cmp r0, #0
	beq _021D283E
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	mov r1, #0x39
	bl sub_020549A0
	cmp r0, #0xff
	beq _021D283E
	ldr r0, _021D287C ; =0x00002714
	pop {r4, r5, r6, pc}
_021D283E:
	ldr r0, _021D2880 ; =0x0000FFFF
	pop {r4, r5, r6, pc}
	nop
_021D2844: .word 0x000007E2
_021D2848: .word 0x000009C4
_021D284C: .word 0x000009C5
_021D2850: .word 0x000009C6
_021D2854: .word 0x000009C7
_021D2858: .word 0x000009C8
_021D285C: .word 0x000009C9
_021D2860: .word 0x000009CA
_021D2864: .word 0x000009CB
_021D2868: .word 0x00002716
_021D286C: .word 0x000009CC
_021D2870: .word 0x000007EE
_021D2874: .word 0x00002774
_021D2878: .word 0x00002713
_021D287C: .word 0x00002714
_021D2880: .word 0x0000FFFF
	thumb_func_end ov5_021D271C

	thumb_func_start ov5_021D2884
ov5_021D2884: ; 0x021D2884
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #3
	add r5, r0, #0
	bl sub_02071CB4
	cmp r0, #1
	bne _021D28A0
	add r0, r5, #0
	bl ov8_0224AAA8
	cmp r0, #0
	beq _021D28A0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D28A0:
	add r0, r5, #0
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _021D28BA
	add r0, r5, #0
	bl ov9_0224A71C
	cmp r0, #1
	bne _021D28BA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D28BA:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r2, r0, #0
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ov5_021E1154
	cmp r0, #1
	bne _021D28D2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D28D2:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F94
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021D29A0
	cmp r0, #1
	bne _021D28FC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D28FC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov5_021D29D8
	cmp r0, #1
	bne _021D2916
	add r0, r5, #0
	bl ov5_021D2E14
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2916:
	ldr r0, [r5, #0x3c]
	bl sub_0205EF58
	cmp r0, #0
	beq _021D2924
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2924:
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ov5_021EA714
	add r0, r5, #0
	bl ov5_021D2B94
	cmp r0, #1
	bne _021D293C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D293C:
	add r0, r5, #0
	bl ov5_021D2C14
	cmp r0, #1
	bne _021D294A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D294A:
	add r0, r5, #0
	bl ov5_021D2ABC
	cmp r0, #1
	bne _021D2958
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2958:
	add r0, r5, #0
	bl ov5_021D2B08
	cmp r0, #1
	bne _021D2966
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2966:
	add r0, r5, #0
	bl ov5_021D2B14
	cmp r0, #1
	bne _021D2974
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2974:
	add r0, r5, #0
	bl ov5_021D2B20
	cmp r0, #1
	bne _021D2982
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2982:
	add r0, r5, #0
	bl ov5_021D2B2C
	cmp r0, #0
	beq _021D2992
	add r0, r5, #0
	bl ov5_021D2B54
_021D2992:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B238
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D2884

	thumb_func_start ov5_021D29A0
ov5_021D29A0: ; 0x021D29A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203A4AC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203A4A4
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203CC14
	add r1, r0, #0
	ldr r0, _021D29D4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D29CE
	add r0, r4, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D29CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D29D4: .word 0x0000FFFF
	thumb_func_end ov5_021D29A0

	thumb_func_start ov5_021D29D8
ov5_021D29D8: ; 0x021D29D8
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r3, #0
	add r3, sp, #0xc
	add r4, r0, #0
	bl ov5_021D2D34
	cmp r0, #0
	bne _021D29F0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D29F0:
	add r0, r5, #0
	bl sub_0205DC2C
	cmp r0, #1
	bne _021D2A34
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	cmp r0, #2
	bne _021D2A08
	mov r0, #3
	b _021D2A1A
_021D2A08:
	cmp r0, #3
	bne _021D2A10
	mov r0, #2
	b _021D2A1A
_021D2A10:
	bl GF_AssertFail
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2A1A:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02056BDC
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2A34:
	add r0, r5, #0
	bl sub_0205DC38
	cmp r0, #1
	bne _021D2A70
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	cmp r0, #2
	beq _021D2A56
	cmp r0, #3
	beq _021D2A56
	bl GF_AssertFail
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2A56:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02056BDC
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2A70:
	add r0, r5, #0
	bl sub_0205DB10
	cmp r0, #0
	bne _021D2A84
	add r0, r5, #0
	bl sub_0205DB40
	cmp r0, #0
	beq _021D2A9A
_021D2A84:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02056C18
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2A9A:
	add r0, r5, #0
	bl sub_0205DEE4
	cmp r0, #0
	beq _021D2AB4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02053F58
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2AB4:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D29D8

	thumb_func_start ov5_021D2ABC
ov5_021D2ABC: ; 0x021D2ABC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02026310
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021E7154
	cmp r0, #1
	bne _021D2AFE
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	add r5, r0, #0
	mov r1, #0xb
	bl sub_0202CF28
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0202CFEC
	ldr r1, _021D2B04 ; =0x000007EF
	add r0, r4, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2AFE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2B04: .word 0x000007EF
	thumb_func_end ov5_021D2ABC

	thumb_func_start ov5_021D2B08
ov5_021D2B08: ; 0x021D2B08
	push {r3, lr}
	bl ov5_021DBB94
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D2B08

	thumb_func_start ov5_021D2B14
ov5_021D2B14: ; 0x021D2B14
	push {r3, lr}
	bl sub_02069B98
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D2B14

	thumb_func_start ov5_021D2B20
ov5_021D2B20: ; 0x021D2B20
	ldr r3, _021D2B28 ; =ov6_02246BF4
	add r1, r0, #0
	ldr r0, [r1, #0xc]
	bx r3
	; .align 2, 0
_021D2B28: .word ov6_02246BF4
	thumb_func_end ov5_021D2B20

	thumb_func_start ov5_021D2B2C
ov5_021D2B2C: ; 0x021D2B2C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	mov r5, #0
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206B44C
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0x80
	blo _021D2B4A
	add r1, r5, #0
	mov r5, #1
_021D2B4A:
	add r0, r4, #0
	bl sub_0206B45C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D2B2C

	thumb_func_start ov5_021D2B54
ov5_021D2B54: ; 0x021D2B54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl sub_0207A0F8
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _021D2B90
_021D2B7A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	add r2, r5, #0
	bl sub_02075C74
	add r4, r4, #1
	cmp r4, r7
	blt _021D2B7A
_021D2B90:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D2B54

	thumb_func_start ov5_021D2B94
ov5_021D2B94: ; 0x021D2B94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A78C
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #3
	and r1, r2
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D2BC2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2BC2:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02054B04
	cmp r0, #0
	beq _021D2BE4
	cmp r0, #1
	beq _021D2BE8
	cmp r0, #2
	beq _021D2BF4
	b _021D2C0A
_021D2BE4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2BE8:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl ov5_021EF518
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2BF4:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl ov5_021EF518
	ldr r1, _021D2C10 ; =0x000007D3
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2C0A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2C10: .word 0x000007D3
	thumb_func_end ov5_021D2B94

	thumb_func_start ov5_021D2C14
ov5_021D2C14: ; 0x021D2C14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	bne _021D2C2A
	mov r0, #0
	pop {r4, pc}
_021D2C2A:
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D2C48
	ldr r1, _021D2C74 ; =0x00002262
	add r0, r4, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r4, pc}
_021D2C48:
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A788
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	mov r0, #0x7d
	lsl r0, r0, #2
	cmp r1, r0
	blo _021D2C70
	ldr r1, _021D2C78 ; =0x00002261
	add r0, r4, #0
	mov r2, #0
	bl sub_0203E880
	mov r0, #1
	pop {r4, pc}
_021D2C70:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D2C74: .word 0x00002262
_021D2C78: .word 0x00002261
	thumb_func_end ov5_021D2C14

	thumb_func_start ov5_021D2C7C
ov5_021D2C7C: ; 0x021D2C7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EABC
	str r0, [r4, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D2C7C

	thumb_func_start ov5_021D2C98
ov5_021D2C98: ; 0x021D2C98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205EA78
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov5_021D2CB4
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D2C98

	thumb_func_start ov5_021D2CB4
ov5_021D2CB4: ; 0x021D2CB4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r3, #0
	add r6, r1, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov5_021D2C7C
	cmp r6, #3
	bhi _021D2CFA
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2CD4: ; jump table
	.short _021D2CDC - _021D2CD4 - 2 ; case 0
	.short _021D2CE4 - _021D2CD4 - 2 ; case 1
	.short _021D2CEC - _021D2CD4 - 2 ; case 2
	.short _021D2CF4 - _021D2CD4 - 2 ; case 3
_021D2CDC:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D2CE4:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D2CEC:
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D2CF4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D2CFA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D2CB4

	thumb_func_start ov5_021D2CFC
ov5_021D2CFC: ; 0x021D2CFC
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov5_021D2C7C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02054F94
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D2CFC

	thumb_func_start ov5_021D2D18
ov5_021D2D18: ; 0x021D2D18
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov5_021D2C98
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02054F94
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D2D18

	thumb_func_start ov5_021D2D34
ov5_021D2D34: ; 0x021D2D34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl sub_0203A468
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021D2D50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2D50:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203A450
	cmp r0, #0
	bne _021D2D60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2D60:
	ldrh r3, [r0, #6]
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bne _021D2D90
	ldrh r1, [r0, #4]
	ldr r0, _021D2DC8 ; =0x00000FFF
	cmp r1, r0
	beq _021D2D76
	bl GF_AssertFail
_021D2D76:
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	b _021D2DA2
_021D2D90:
	ldrh r2, [r0, #2]
	ldrh r1, [r0]
	ldrh r0, [r0, #4]
	str r0, [r5, #0]
	str r3, [r5, #4]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x10]
_021D2DA2:
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A724
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	ldr r1, [r4, #0x1c]
	ldr r1, [r1, #0]
	str r1, [r5, #0]
	str r6, [r5, #4]
	ldr r1, [sp]
	str r7, [r5, #8]
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2DC8: .word 0x00000FFF
	thumb_func_end ov5_021D2D34

	thumb_func_start ov5_021D2DCC
ov5_021D2DCC: ; 0x021D2DCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bl sub_0203A790
	bl sub_0203A72C
	add r6, r0, #0
	ldr r3, [r5, #0x1c]
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r4, #0
	str r0, [r2, #0]
	str r4, [r6, #0x10]
	ldr r0, [sp]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	bne _021D2E04
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
_021D2E04:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r6, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D2DCC

	thumb_func_start ov5_021D2E14
ov5_021D2E14: ; 0x021D2E14
	push {r3, r4, lr}
	sub sp, #0x1c
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov5_021D2C7C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov5_021D2D34
	cmp r0, #0
	beq _021D2E5E
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #1
	bne _021D2EA0
	ldr r0, [sp, #8]
	bl sub_0203A24C
	cmp r0, #0
	bne _021D2EA0
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov5_021D2DCC
	add sp, #0x1c
	pop {r3, r4, pc}
_021D2E5E:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov5_021D2C98
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov5_021D2D34
	cmp r0, #0
	beq _021D2EA0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #1
	bne _021D2EA0
	ldr r0, [sp, #8]
	bl sub_0203A24C
	cmp r0, #0
	bne _021D2EA0
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov5_021D2DCC
_021D2EA0:
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov5_021D2E14

	thumb_func_start ov5_021D2EA4
ov5_021D2EA4: ; 0x021D2EA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	add r5, r1, #0
	ldr r0, [r7, #0x3c]
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020617BC
	ldr r0, [r7, #0x38]
	add r1, r5, #0
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _021D2F0E
_021D2ECC:
	ldr r0, [r5, #0]
	bl sub_02063020
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	ldr r0, [r5, #0]
	asr r4, r1, #1
	bl sub_02063040
	ldr r1, [sp, #4]
	cmp r1, r4
	bne _021D2EFE
	ldr r1, [sp, #8]
	cmp r1, r6
	bne _021D2EFE
	ldr r1, [sp]
	cmp r1, r0
	bne _021D2EFE
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2EFE:
	ldr r0, [r7, #0x38]
	add r1, r5, #0
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _021D2ECC
_021D2F0E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D2EA4