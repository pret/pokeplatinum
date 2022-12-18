	.include "macros/function.inc"
	.include "include/ov104_0223AF58.inc"

	

	.text


	thumb_func_start ov104_0223AF58
ov104_0223AF58: ; 0x0223AF58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r3, #0
	add r0, r2, #0
	str r1, [sp]
	mov r4, #0
	bl ov104_0223B644
	lsl r1, r5, #0x19
	lsl r0, r0, #0x18
	ldr r2, [sp, #0x18]
	lsr r1, r1, #0x17
	add r5, r2, r1
	ldr r1, _0223AFAC ; =0x0224041C
	lsr r0, r0, #0x14
	add r7, r1, r0
	ldr r1, _0223AFB0 ; =0x0224038C
	lsl r0, r6, #3
	add r6, r1, r0
_0223AF7E:
	bl sub_0201D2E8
	mov r1, #0xc
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #8
	bhs _0223AF96
	lsl r0, r0, #1
	ldrh r0, [r7, r0]
	b _0223AF9E
_0223AF96:
	lsl r0, r0, #1
	add r0, r6, r0
	sub r0, #0x10
	ldrh r0, [r0]
_0223AF9E:
	strh r0, [r5]
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _0223AF7E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223AFAC: .word 0x0224041C
_0223AFB0: .word 0x0224038C
	thumb_func_end ov104_0223AF58

	thumb_func_start ov104_0223AFB4
ov104_0223AFB4: ; 0x0223AFB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	str r1, [sp]
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	ldrb r4, [r0, #0x10]
	add r6, r2, #0
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r3, #0
	bl ov104_0223B644
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r5, #0
	bne _0223B00E
	mov r0, #0xa
	add r1, r4, #1
	mul r0, r6
	add r0, r1, r0
	cmp r0, #0x32
	bne _0223AFFA
	ldr r0, [sp, #8]
	ldr r2, _0223B0BC ; =0x00000133
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	add sp, #0x1c
	strh r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0223AFFA:
	cmp r0, #0xaa
	bne _0223B00E
	ldr r0, [sp, #8]
	mov r2, #0x4d
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	lsl r2, r2, #2
	strh r2, [r0, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0223B00E:
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0xc]
_0223B018:
	bl sub_0201D2E8
	mov r1, #0x4b
	lsl r1, r1, #2
	bl sub_020E2178
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r5, r1, r0
	lsl r0, r5, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	lsl r1, r0, #4
	ldr r0, _0223B0C0 ; =0x0224041C
	add r7, r0, r1
_0223B03C:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldrh r6, [r1, r0]
	ldr r0, _0223B0C4 ; =0x022404BC
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r6, r0
	bne _0223B076
	mov r1, #0
	cmp r5, #0
	ble _0223B062
	ldr r2, [sp, #0x34]
_0223B054:
	ldrh r0, [r2]
	cmp r4, r0
	beq _0223B062
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r5
	blt _0223B054
_0223B062:
	cmp r1, r5
	bne _0223B076
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0223B0AE
_0223B076:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r4, r0
	blo _0223B086
	mov r4, #0
_0223B086:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bne _0223B03C
_0223B08C:
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r1
	mov r0, #0x1d
	ror r2, r0
	add r0, r1, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0xf
	ldrh r2, [r7, r0]
	cmp r6, r2
	beq _0223B08C
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	strh r2, [r1, r0]
	b _0223B03C
_0223B0AE:
	add r1, r0, #0
	ldr r0, [sp]
	cmp r1, r0
	blt _0223B018
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223B0BC: .word 0x00000133
_0223B0C0: .word 0x0224041C
_0223B0C4: .word 0x022404BC
	thumb_func_end ov104_0223AFB4

	thumb_func_start ov104_0223B0C8
ov104_0223B0C8: ; 0x0223B0C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r7, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	ldr r6, [sp, #0x2c]
	str r0, [sp, #0x30]
	lsl r0, r3, #0x19
	lsr r4, r0, #0x18
	add r0, r2, #0
	str r7, [sp, #0xc]
	bl ov104_0223B644
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0223B14E
	ldr r3, _0223B238 ; =0x02240714
	add r2, r7, #0
_0223B0F6:
	lsl r0, r2, #1
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0223B104
	add r5, r2, #0
	b _0223B110
_0223B104:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _0223B23C ; =0x000001DD
	cmp r2, r0
	blo _0223B0F6
_0223B110:
	ldr r0, _0223B23C ; =0x000001DD
	cmp r2, r0
	bne _0223B11A
	add r5, r0, #0
	sub r5, #0x65
_0223B11A:
	ldr r0, _0223B240 ; =0x0224032C
	mov r1, #0
_0223B11E:
	lsl r2, r1, #2
	add r2, r0, r2
	ldrh r2, [r2, #2]
	cmp r5, r2
	blo _0223B132
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #4
	blo _0223B11E
_0223B132:
	cmp r1, #4
	bne _0223B138
	mov r1, #3
_0223B138:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _0223B144
	ldr r0, _0223B244 ; =0x02240338
	str r0, [sp, #0x10]
	b _0223B156
_0223B144:
	ldr r2, _0223B240 ; =0x0224032C
	lsl r0, r1, #2
	add r0, r2, r0
	str r0, [sp, #0x10]
	b _0223B156
_0223B14E:
	ldr r1, _0223B248 ; =0x02240364
	lsl r0, r2, #2
	add r0, r1, r0
	str r0, [sp, #0x10]
_0223B156:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	bl sub_0201D2E8
	add r1, r5, #0
	bl sub_020E1F6C
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	str r2, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	ble _0223B234
	sub r0, r4, #2
	lsl r0, r0, #1
	mov ip, r0
	lsl r0, r4, #1
	add r5, r6, r0
_0223B190:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0223B1B2
	mov r0, #0
	cmp r4, #0
	ble _0223B1C2
	add r1, r2, #1
_0223B19E:
	lsl r3, r0, #1
	ldrh r3, [r6, r3]
	cmp r1, r3
	beq _0223B1C2
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r4
	blt _0223B19E
	b _0223B1C2
_0223B1B2:
	mov r1, ip
	ldrh r1, [r6, r1]
	add r0, r2, #1
	cmp r0, r1
	bne _0223B1C0
	mov r0, #0
	b _0223B1C2
_0223B1C0:
	add r0, r4, #0
_0223B1C2:
	cmp r0, r4
	bne _0223B20A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0223B1E2
	ldr r0, _0223B238 ; =0x02240714
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223B20A
	lsl r0, r7, #1
	add r1, r2, #1
	strh r1, [r5, r0]
	add r7, r7, #1
	b _0223B20A
_0223B1E2:
	ldr r1, _0223B24C ; =0x02240ACE
	lsl r0, r2, #2
	add r3, r1, r0
	ldrh r1, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _0223B1F6
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _0223B20A
_0223B1F6:
	ldr r0, _0223B238 ; =0x02240714
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223B20A
	lsl r0, r7, #1
	add r1, r2, #1
	strh r1, [r5, r0]
	add r7, r7, #1
_0223B20A:
	ldr r1, [sp, #0x10]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldrh r1, [r1, #2]
	add r0, r2, #1
	cmp r0, r1
	blt _0223B224
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0223B224:
	ldr r0, [sp, #8]
	cmp r2, r0
	bne _0223B22E
	mov r0, #1
	str r0, [sp, #0xc]
_0223B22E:
	ldr r0, [sp]
	cmp r7, r0
	blt _0223B190
_0223B234:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B238: .word 0x02240714
_0223B23C: .word 0x000001DD
_0223B240: .word 0x0224032C
_0223B244: .word 0x02240338
_0223B248: .word 0x02240364
_0223B24C: .word 0x02240ACE
	thumb_func_end ov104_0223B0C8

	thumb_func_start ov104_0223B250
ov104_0223B250: ; 0x0223B250
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldrb r0, [r5, #5]
	add r6, r1, #0
	lsl r0, r0, #0x19
	lsr r7, r0, #0x18
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	str r0, [sp, #0x18]
	ldrb r0, [r5, #4]
	bl ov104_0223B50C
	str r0, [sp, #0x10]
	ldr r0, _0223B49C ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_0207A268
	str r0, [sp, #0x1c]
	bl sub_02097284
	ldrb r0, [r5, #4]
	bl ov104_0223B4D4
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051D8C
	ldr r1, [r6, #0xc]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	mov r1, #0
	bl sub_020521B8
	mov r0, #0x15
	mov r1, #0x16
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _0223B2EC
_0223B2C6:
	mov r1, #0x26
	add r2, r5, r6
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	bl sub_0207A0FC
	ldr r1, [sp, #0x20]
	bl sub_020775EC
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _0223B2C6
_0223B2EC:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02052894
	lsl r0, r7, #1
	str r0, [sp, #0x28]
	add r6, r5, #0
	ldr r1, [sp, #0x28]
	add r6, #0x18
	ldrh r1, [r6, r1]
	add r0, sp, #0x34
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x34
	mov r3, #1
	bl ov104_0222E284
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	bl sub_0207A014
	ldr r1, _0223B4A0 ; =0x000006F5
	ldrb r2, [r5, #4]
	ldrb r0, [r5, r1]
	add r1, #0xf
	add r3, r5, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_020301E0
	str r0, [sp, #0x24]
	ldrb r0, [r5, #4]
	cmp r0, #2
	bne _0223B34A
	mov r0, #9
	str r0, [sp, #0x24]
_0223B34A:
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r7, #0
	bl ov104_0223B604
	mov r2, #0
	add r1, r4, #0
_0223B358:
	add r2, r2, #1
	str r0, [r1, #0x34]
	add r1, #0x34
	cmp r2, #4
	blt _0223B358
	mov r0, #0x38
	mul r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	mov r3, #0x29
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	lsl r3, r3, #4
	add r1, r5, r3
	ldr r0, [sp, #0x14]
	ldrh r2, [r6, r2]
	sub r3, #0x28
	add r0, r1, r0
	add r6, r5, r3
	lsl r3, r7, #1
	ldr r1, [sp, #0x24]
	add r3, r6, r3
	bl ov104_0223B518
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223B3F2
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x2c]
	mov r0, #0x38
	mul r0, r7
	str r0, [sp, #0x30]
_0223B3B0:
	add r0, r5, #0
	add r1, r7, #0
	bl ov104_0223B4A4
	cmp r0, #0
	bne _0223B3B0
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov104_0223B57C
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	lsr r2, r2, #0x18
	add r0, r1, r0
	add r1, r6, #0
	bl ov104_0222DF40
	add r0, r6, #0
	bl sub_0207803C
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0205213C
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223B3B0
_0223B3F2:
	add r0, r6, #0
	bl sub_020181C4
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223B402
	cmp r0, #3
	bne _0223B494
_0223B402:
	add r0, r4, #0
	bl sub_02052894
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r4, r1]
	bl sub_02025E80
	add r1, r7, #1
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	add r0, sp, #0x34
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x34
	mov r3, #3
	bl ov104_0222E284
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
_0223B454:
	add r0, r5, #0
	add r1, r7, #0
	bl ov104_0223B4A4
	cmp r0, #0
	bne _0223B454
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov104_0223B57C
	add r2, r0, #0
	mov r0, #0x29
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	lsl r2, r2, #0x18
	add r0, r1, r0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov104_0222DF40
	add r0, r6, #0
	bl sub_0207803C
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl sub_0205213C
	add r0, r6, #0
	bl sub_020181C4
_0223B494:
	add r0, r4, #0
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	nop
_0223B49C: .word 0x000006FC
_0223B4A0: .word 0x000006F5
	thumb_func_end ov104_0223B250

	thumb_func_start ov104_0223B4A4
ov104_0223B4A4: ; 0x0223B4A4
	push {r4, lr}
	mov r2, #0x38
	mul r2, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r4, [r1, r2]
	ldr r3, _0223B4D0 ; =0x0003D0A9
	cmp r4, r3
	bls _0223B4BC
	sub r3, r4, r3
	b _0223B4BE
_0223B4BC:
	add r3, r4, r3
_0223B4BE:
	str r3, [r1, r2]
	add r3, r0, r2
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [r1, r2]
	bl sub_02075E38
	pop {r4, pc}
	; .align 2, 0
_0223B4D0: .word 0x0003D0A9
	thumb_func_end ov104_0223B4A4

	thumb_func_start ov104_0223B4D4
ov104_0223B4D4: ; 0x0223B4D4
	cmp r0, #3
	bhi _0223B4FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B4E4: ; jump table
	.short _0223B4EC - _0223B4E4 - 2 ; case 0
	.short _0223B4F0 - _0223B4E4 - 2 ; case 1
	.short _0223B4F4 - _0223B4E4 - 2 ; case 2
	.short _0223B4F8 - _0223B4E4 - 2 ; case 3
_0223B4EC:
	mov r0, #0x81
	bx lr
_0223B4F0:
	mov r0, #0x83
	bx lr
_0223B4F4:
	mov r0, #0x8f
	bx lr
_0223B4F8:
	mov r0, #0x8f
	bx lr
_0223B4FC:
	mov r0, #0x81
	bx lr
	thumb_func_end ov104_0223B4D4

	thumb_func_start ov104_0223B500
ov104_0223B500: ; 0x0223B500
	cmp r0, #1
	bne _0223B508
	mov r0, #2
	bx lr
_0223B508:
	mov r0, #1
	bx lr
	thumb_func_end ov104_0223B500

	thumb_func_start ov104_0223B50C
ov104_0223B50C: ; 0x0223B50C
	cmp r0, #1
	bne _0223B514
	mov r0, #2
	bx lr
_0223B514:
	mov r0, #1
	bx lr
	thumb_func_end ov104_0223B50C

	thumb_func_start ov104_0223B518
ov104_0223B518: ; 0x0223B518
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r3, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r7, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, _0223B578 ; =0x00000133
	cmp r2, r0
	bne _0223B534
	mov r0, #0x1f
	b _0223B544
_0223B534:
	add r0, r0, #1
	cmp r2, r0
	bne _0223B53E
	mov r0, #0x1f
	b _0223B544
_0223B53E:
	add r0, r1, #0
	bl ov104_0223B5F0
_0223B544:
	mov r4, #0
	cmp r7, #0
	ble _0223B572
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_0223B550:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r4, #0
	str r0, [sp, #8]
	ldrh r1, [r5]
	add r0, r6, #0
	bl ov104_0222E2F0
	add r4, r4, #1
	add r5, r5, #2
	add r6, #0x38
	cmp r4, r7
	blt _0223B550
_0223B572:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B578: .word 0x00000133
	thumb_func_end ov104_0223B518

	thumb_func_start ov104_0223B57C
ov104_0223B57C: ; 0x0223B57C
	push {r3, lr}
	ldrb r1, [r0, #5]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x17
	add r1, r0, r1
	ldrh r2, [r1, #0x18]
	ldr r1, _0223B5A0 ; =0x0000FECD
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0223B59A
	bl ov104_0223B64C
	pop {r3, pc}
_0223B59A:
	ldrb r0, [r0, #7]
	pop {r3, pc}
	nop
_0223B5A0: .word 0x0000FECD
	thumb_func_end ov104_0223B57C

	thumb_func_start ov104_0223B5A4
ov104_0223B5A4: ; 0x0223B5A4
	ldr r1, _0223B5AC ; =0x02241244
	ldrb r0, [r1, r0]
	bx lr
	nop
_0223B5AC: .word 0x02241244
	thumb_func_end ov104_0223B5A4

	thumb_func_start ov104_0223B5B0
ov104_0223B5B0: ; 0x0223B5B0
	cmp r0, #2
	beq _0223B5B8
	cmp r0, #3
	bne _0223B5BC
_0223B5B8:
	mov r0, #1
	bx lr
_0223B5BC:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223B5B0

	thumb_func_start ov104_0223B5C0
ov104_0223B5C0: ; 0x0223B5C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223B5EC ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	nop
_0223B5EC: .word 0x000006FC
	thumb_func_end ov104_0223B5C0

	thumb_func_start ov104_0223B5F0
ov104_0223B5F0: ; 0x0223B5F0
	push {r3, lr}
	bl ov104_0223B644
	lsl r1, r0, #2
	ldr r0, _0223B600 ; =0x0224033D
	ldrb r0, [r0, r1]
	pop {r3, pc}
	nop
_0223B600: .word 0x0224033D
	thumb_func_end ov104_0223B5F0

	thumb_func_start ov104_0223B604
ov104_0223B604: ; 0x0223B604
	add r2, r2, #1
	cmp r2, #8
	blt _0223B60E
	mov r2, #7
	b _0223B618
_0223B60E:
	cmp r2, #4
	blt _0223B616
	mov r2, #1
	b _0223B618
_0223B616:
	mov r2, #0
_0223B618:
	ldrb r3, [r0, #4]
	cmp r3, #0
	bne _0223B634
	lsl r1, r1, #0x19
	lsr r1, r1, #0x17
	add r0, r0, r1
	ldrh r1, [r0, #0x18]
	ldr r0, _0223B640 ; =0x0000FECD
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0223B634
	mov r2, #7
_0223B634:
	cmp r3, #2
	bne _0223B63A
	mov r2, #7
_0223B63A:
	add r0, r2, #0
	bx lr
	nop
_0223B640: .word 0x0000FECD
	thumb_func_end ov104_0223B604

	thumb_func_start ov104_0223B644
ov104_0223B644: ; 0x0223B644
	cmp r0, #0xa
	blo _0223B64A
	mov r0, #9
_0223B64A:
	bx lr
	thumb_func_end ov104_0223B644

	thumb_func_start ov104_0223B64C
ov104_0223B64C: ; 0x0223B64C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223B6B8 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	add r6, r0, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	cmp r0, #2
	bne _0223B69A
	ldr r1, _0223B6BC ; =0x00000261
	add r0, r6, #0
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	bhi _0223B696
	add r4, r0, #0
_0223B696:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0223B69A:
	ldrb r0, [r5, #4]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _0223B6B2
	ldr r0, _0223B6C0 ; =0x00000D84
	ldrh r0, [r5, r0]
	cmp r4, r0
	bhi _0223B6AE
	add r4, r0, #0
_0223B6AE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0223B6B2:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223B6B8: .word 0x000006FC
_0223B6BC: .word 0x00000261
_0223B6C0: .word 0x00000D84
	thumb_func_end ov104_0223B64C

	thumb_func_start ov104_0223B6C4
ov104_0223B6C4: ; 0x0223B6C4
	push {r3, lr}
	cmp r0, #0
	beq _0223B6DC
	lsl r0, r0, #0xc
	bl sub_020E17FC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0223B6EA
_0223B6DC:
	lsl r0, r0, #0xc
	bl sub_020E17FC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0223B6EA:
	bl sub_020E1740
	bl sub_020BCFF0
	pop {r3, pc}
	thumb_func_end ov104_0223B6C4

	.rodata


	.global Unk_ov104_0224032C
Unk_ov104_0224032C: ; 0x0224032C
	.incbin "incbin/overlay104_rodata.bin", 0x109C, 0x10AC - 0x109C

	.global Unk_ov104_0224033C
Unk_ov104_0224033C: ; 0x0224033C
	.incbin "incbin/overlay104_rodata.bin", 0x10AC, 0x10D4 - 0x10AC

	.global Unk_ov104_02240364
Unk_ov104_02240364: ; 0x02240364
	.incbin "incbin/overlay104_rodata.bin", 0x10D4, 0x10FC - 0x10D4

	.global Unk_ov104_0224038C
Unk_ov104_0224038C: ; 0x0224038C
	.incbin "incbin/overlay104_rodata.bin", 0x10FC, 0x118C - 0x10FC

	.global Unk_ov104_0224041C
Unk_ov104_0224041C: ; 0x0224041C
	.incbin "incbin/overlay104_rodata.bin", 0x118C, 0x122C - 0x118C

	.global Unk_ov104_022404BC
Unk_ov104_022404BC: ; 0x022404BC
	.incbin "incbin/overlay104_rodata.bin", 0x122C, 0x1484 - 0x122C

	.global Unk_ov104_02240714
Unk_ov104_02240714: ; 0x02240714
	.incbin "incbin/overlay104_rodata.bin", 0x1484, 0x183E - 0x1484

	.global Unk_ov104_02240ACE
Unk_ov104_02240ACE: ; 0x02240ACE
	.incbin "incbin/overlay104_rodata.bin", 0x183E, 0x1FB4 - 0x183E

	.global Unk_ov104_02241244
Unk_ov104_02241244: ; 0x02241244
	.incbin "incbin/overlay104_rodata.bin", 0x1FB4, 0x14

