	.include "macros/function.inc"
	.include "include/unk_0204F13C.inc"

	

	.text


	thumb_func_start sub_0204F13C
sub_0204F13C: ; 0x0204F13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02030114
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203026C
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r0, #0
	cmp r7, #4
	bhi _0204F25A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204F1A8: ; jump table
	.short _0204F1B2 - _0204F1A8 - 2 ; case 0
	.short _0204F1C2 - _0204F1A8 - 2 ; case 1
	.short _0204F1FA - _0204F1A8 - 2 ; case 2
	.short _0204F22A - _0204F1A8 - 2 ; case 3
	.short _0204F23C - _0204F1A8 - 2 ; case 4
_0204F1B2:
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	bl sub_0204F268
	strh r0, [r6]
	b _0204F262
_0204F1C2:
	cmp r5, #3
	bne _0204F1E6
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6a
	bl sub_02030698
	strh r0, [r6]
	b _0204F262
_0204F1E6:
	lsl r2, r5, #0x18
	mov r3, #0
	ldr r0, [sp, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	str r3, [sp]
	bl sub_020302B4
	strh r0, [r6]
	b _0204F262
_0204F1FA:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r4, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E55C
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205E55C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02030698
	strh r0, [r6]
	b _0204F262
_0204F22A:
	add r4, #0x80
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	bl sub_0204FA50
	b _0204F262
_0204F23C:
	cmp r5, #0
	bne _0204F244
	mov r2, #0
	b _0204F24E
_0204F244:
	cmp r5, #1
	bne _0204F24C
	mov r2, #1
	b _0204F24E
_0204F24C:
	mov r2, #2
_0204F24E:
	ldr r0, [r4, #0x74]
	bl sub_0204F470
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0204F25A:
	bl GF_AssertFail
	mov r0, #0
	strh r0, [r6]
_0204F262:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204F13C

	thumb_func_start sub_0204F268
sub_0204F268: ; 0x0204F268
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	add r0, r1, #0
	bl sub_0207A268
	str r0, [sp, #4]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	bge _0204F28A
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0204F28A:
	mov r2, #0
	add r5, r2, #0
	add r1, sp, #0x10
_0204F290:
	lsl r0, r2, #1
	strh r5, [r1, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #6
	blo _0204F290
	str r5, [sp, #0xc]
	cmp r4, #0
	bls _0204F302
_0204F2A4:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0204F2F8
	ldr r0, [sp, #8]
	cmp r0, #0x1e
	blo _0204F2F8
	add r0, r6, #0
	bl sub_02078804
	cmp r0, #1
	beq _0204F2F8
	ldr r0, [sp, #0xc]
	lsl r1, r5, #1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	strh r6, [r0, r1]
_0204F2F8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r4
	blo _0204F2A4
_0204F302:
	ldr r0, [sp]
	cmp r0, #2
	bne _0204F34C
	mov r3, #0
	cmp r4, #0
	bls _0204F346
	add r1, sp, #0x10
	add r2, r3, #0
_0204F312:
	add r5, r2, #0
	cmp r4, #0
	bls _0204F33C
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
_0204F31C:
	cmp r3, r5
	beq _0204F332
	cmp r0, #0
	beq _0204F332
	lsl r6, r5, #1
	ldrh r6, [r1, r6]
	cmp r0, r6
	bne _0204F332
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204F332:
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	cmp r5, r4
	blo _0204F31C
_0204F33C:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r4
	blo _0204F312
_0204F346:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0204F34C:
	ldr r1, [sp, #0xc]
	cmp r1, r0
	blt _0204F358
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204F358:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204F268

	thumb_func_start sub_0204F360
sub_0204F360: ; 0x0204F360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203026C
	lsl r2, r4, #0x18
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	lsr r2, r2, #0x18
	ldr r0, [r0, #0xc]
	bl sub_0204FA50
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F360

	thumb_func_start sub_0204F398
sub_0204F398: ; 0x0204F398
	push {r3, r4, r5, lr}
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
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0204F3D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F398

	thumb_func_start sub_0204F3D0
sub_0204F3D0: ; 0x0204F3D0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	strh r5, [r4, #4]
	str r6, [r4, #8]
	bl sub_02099514
	ldr r1, _0204F410 ; =sub_0204F414
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F410: .word sub_0204F414
	thumb_func_end sub_0204F3D0

	thumb_func_start sub_0204F414
sub_0204F414: ; 0x0204F414
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0204F42C
	cmp r1, #1
	beq _0204F442
	cmp r1, #2
	beq _0204F462
	b _0204F46A
_0204F42C:
	mov r0, #0x84
	add r1, r4, #0
	mov r2, #0xc
	bl sub_020359DC
	cmp r0, #1
	bne _0204F46A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204F46A
_0204F442:
	ldrb r0, [r4, #1]
	cmp r0, #2
	blo _0204F46A
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bne _0204F454
	mov r1, #0
	b _0204F456
_0204F454:
	mov r1, #1
_0204F456:
	ldr r0, [r4, #8]
	strh r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0204F46A
_0204F462:
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0204F46A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204F414

	thumb_func_start sub_0204F470
sub_0204F470: ; 0x0204F470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strb r6, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r7, #0x10]
	ldr r1, _0204F4A0 ; =sub_0204F4A4
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204F4A0: .word sub_0204F4A4
	thumb_func_end sub_0204F470

	thumb_func_start sub_0204F4A4
sub_0204F4A4: ; 0x0204F4A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #4
	bhi _0204F506
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204F4C8: ; jump table
	.short _0204F4D2 - _0204F4C8 - 2 ; case 0
	.short _0204F4DE - _0204F4C8 - 2 ; case 1
	.short _0204F4E8 - _0204F4C8 - 2 ; case 2
	.short _0204F4F4 - _0204F4C8 - 2 ; case 3
	.short _0204F4FE - _0204F4C8 - 2 ; case 4
_0204F4D2:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204F50C
	str r0, [r4, #0]
	b _0204F506
_0204F4DE:
	add r1, r5, #0
	bl sub_0204F5D8
	str r0, [r4, #0]
	b _0204F506
_0204F4E8:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0204F628
	str r0, [r4, #0]
	b _0204F506
_0204F4F4:
	add r1, r5, #0
	bl sub_0204F6B0
	str r0, [r4, #0]
	b _0204F506
_0204F4FE:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204F506:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204F4A4

	thumb_func_start sub_0204F50C
sub_0204F50C: ; 0x0204F50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0x16
	add r1, #0x20
	strb r2, [r1]
	str r6, [r4, #0x1c]
	add r1, r4, #0
	ldrb r2, [r5, #5]
	add r1, #0x22
	strb r2, [r1]
_0204F560:
	add r1, r5, r0
	ldrb r2, [r1, #6]
	add r1, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r1, #0x2c
	lsr r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #2
	blo _0204F560
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x32
	ldrb r2, [r1]
	mov r7, #0xf
	mov r1, #1
	bic r2, r7
	orr r2, r1
	add r1, r4, #0
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x32
	ldrb r3, [r1]
	mov r1, #0xf0
	mov r2, #0x10
	bic r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x32
	strb r3, [r2]
	add r0, r4, #0
	ldrb r2, [r5, #4]
	add r0, #0x32
	cmp r2, #1
	bne _0204F5C2
	ldrb r2, [r0]
	mov r3, #2
	bic r2, r7
	orr r2, r3
	strb r2, [r0]
	ldrb r2, [r0]
	bic r2, r1
	mov r1, #0x20
	orr r1, r2
	strb r1, [r0]
_0204F5C2:
	ldr r1, _0204F5D4 ; =0x020F1E88
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #8]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F5D4: .word 0x020F1E88
	thumb_func_end sub_0204F50C

	thumb_func_start sub_0204F5D8
sub_0204F5D8: ; 0x0204F5D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204F5EA
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204F5EA:
	ldr r0, [r5, #8]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0204F600
	cmp r0, #7
	bne _0204F604
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204F600:
	mov r0, #4
	pop {r3, r4, r5, pc}
_0204F604:
	add r0, r4, #0
	add r0, #0x2c
	add r1, r5, #6
	mov r2, #2
	bl MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #5]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204F5D8

	thumb_func_start sub_0204F628
sub_0204F628: ; 0x0204F628
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	ldr r5, [r7, #0xc]
	add r0, r2, #0
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r6, #5]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0204F6A8 ; =0x020EC06C
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0204F6AC ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #8]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F6A8: .word 0x020EC06C
_0204F6AC: .word 0x020F410C
	thumb_func_end sub_0204F628

	thumb_func_start sub_0204F6B0
sub_0204F6B0: ; 0x0204F6B0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0204F6C2
	mov r0, #3
	pop {r4, pc}
_0204F6C2:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #5]
	bl sub_020181C4
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204F6B0

	thumb_func_start sub_0204F6D8
sub_0204F6D8: ; 0x0204F6D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #8]
	add r0, #0x80
	ldr r7, [r0, #0]
	mov r1, #0xf
	add r0, r7, #0
	bl sub_0203F098
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	str r1, [r0, #8]
	ldrb r0, [r2]
	add r2, r1, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	str r2, [r0, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	str r1, [r0, #8]
	ldrb r0, [r2]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r7, #0xc]
	mov r4, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0204F758
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	strh r0, [r1]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0204F758:
	ldr r0, [r7, #0xc]
	mov r1, #0x20
	add r2, sp, #0x2c
	bl sub_020308A0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0204F782
	add r6, r4, #0
_0204F76C:
	ldr r0, [r7, #0xc]
	ldr r1, [sp, #0x28]
	mov r2, #0
	add r3, r6, #0
	bl sub_020308BC
	add r4, r4, r0
	ldr r0, _0204F8A0 ; =0x000001ED
	add r6, r6, #1
	cmp r6, r0
	blo _0204F76C
_0204F782:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0204F78C
	bl sub_020181C4
_0204F78C:
	add r0, r4, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_0200B60C
	ldrh r1, [r5]
	mov r6, #0
	add r7, r6, #0
	str r1, [sp, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0x2f
	bhs _0204F7DA
	ldr r2, [sp, #0xc]
	ldr r0, _0204F8A4 ; =0x020EC078
	lsl r2, r2, #3
	add r0, r0, r2
_0204F7BC:
	ldr r2, [r0, #0]
	cmp r2, r4
	bhi _0204F7D2
	ldr r2, [r0, #4]
	add r7, r1, #0
	add r2, r6, r2
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	ldrh r2, [r5]
	add r2, r2, #1
	strh r2, [r5]
_0204F7D2:
	add r1, r1, #1
	add r0, #8
	cmp r1, #0x2f
	blo _0204F7BC
_0204F7DA:
	ldr r0, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x44
	add r2, r6, #0
	bl sub_0202CF70
	cmp r6, #0
	beq _0204F808
	ldr r0, [sp, #8]
	add r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D750
	add r1, r6, #0
	mov r2, #5
	bl sub_0202D230
_0204F808:
	cmp r4, #0
	bne _0204F814
	ldr r0, [sp, #0x10]
	mov r1, #0
	strh r1, [r0]
	b _0204F83A
_0204F814:
	ldrh r1, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _0204F822
	mov r1, #1
	ldr r0, [sp, #0x10]
	b _0204F826
_0204F822:
	ldr r0, [sp, #0x10]
	mov r1, #2
_0204F826:
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0x2f
	blo _0204F83A
	ldr r0, [sp, #0x10]
	mov r1, #3
	strh r1, [r0]
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204F83A:
	ldr r0, _0204F8A4 ; =0x020EC078
	lsl r1, r7, #3
	ldr r4, [r0, r1]
	add r0, r4, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_0200B60C
	ldrh r0, [r5]
	lsl r1, r0, #3
	ldr r0, _0204F8A4 ; =0x020EC078
	ldr r0, [r0, r1]
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r2, [r5]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	lsl r4, r2, #3
	ldr r2, _0204F8A4 ; =0x020EC078
	ldr r0, [r0, #0]
	ldr r2, [r2, r4]
	bl sub_0200B60C
	add r0, r6, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F8A0: .word 0x000001ED
_0204F8A4: .word 0x020EC078
	thumb_func_end sub_0204F6D8

	thumb_func_start sub_0204F8A8
sub_0204F8A8: ; 0x0204F8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_020247C8
	cmp r0, #0
	bne _0204F8E0
	ldr r1, [sp]
	mov r0, #0
	strh r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204F8E0:
	ldr r0, [r5, #0xc]
	mov r1, #0x20
	add r2, sp, #8
	bl sub_020308A0
	add r7, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0204F8F8
	mov r0, #0
	str r0, [sp, #4]
	b _0204F936
_0204F8F8:
	mov r4, #0
_0204F8FA:
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_020308BC
	mov r1, #0
	add r6, r1, r0
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_020308BC
	add r6, r6, r0
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_020308BC
	add r0, r6, r0
	beq _0204F92E
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0204F92E:
	ldr r0, _0204F94C ; =0x000001ED
	add r4, r4, #1
	cmp r4, r0
	blo _0204F8FA
_0204F936:
	cmp r7, #0
	beq _0204F940
	add r0, r7, #0
	bl sub_020181C4
_0204F940:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F94C: .word 0x000001ED
	thumb_func_end sub_0204F8A8

	thumb_func_start sub_0204F950
sub_0204F950: ; 0x0204F950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	mov r4, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0204F986
	ldr r1, [sp]
	add r0, r4, #0
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0204F986:
	ldr r0, [r6, #0xc]
	mov r1, #0x20
	add r2, sp, #4
	bl sub_020308A0
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0204F9B0
	add r5, r4, #0
_0204F99A:
	ldr r0, [r6, #0xc]
	add r1, r7, #0
	mov r2, #0
	add r3, r5, #0
	bl sub_020308BC
	add r4, r4, r0
	ldr r0, _0204F9CC ; =0x000001ED
	add r5, r5, #1
	cmp r5, r0
	blo _0204F99A
_0204F9B0:
	cmp r7, #0
	beq _0204F9BA
	add r0, r7, #0
	bl sub_020181C4
_0204F9BA:
	ldr r0, _0204F9D0 ; =0x00002710
	cmp r4, r0
	bls _0204F9C2
	add r4, r0, #0
_0204F9C2:
	ldr r0, [sp]
	strh r4, [r0]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204F9CC: .word 0x000001ED
_0204F9D0: .word 0x00002710
	thumb_func_end sub_0204F950

	thumb_func_start sub_0204F9D4
sub_0204F9D4: ; 0x0204F9D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0
	bl sub_0205E55C
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xff
	bl sub_02030698
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r5, r0, #0
	mov r0, #0
	bl sub_0205E50C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xff
	bl sub_02030698
	mov r1, #0
	strh r1, [r4]
	cmp r0, #0x32
	bne _0204FA30
	mov r0, #1
	strh r0, [r4]
_0204FA30:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204F9D4

	.rodata


	.global Unk_020EC06C
Unk_020EC06C: ; 0x020EC06C
	.incbin "incbin/arm9_rodata.bin", 0x742C, 0x7438 - 0x742C

	.global Unk_020EC078
Unk_020EC078: ; 0x020EC078
	.incbin "incbin/arm9_rodata.bin", 0x7438, 0x178

