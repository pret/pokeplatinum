	.include "macros/function.inc"
	.include "include/ov5_021D2F14.inc"

	

	.text


	thumb_func_start ov5_021D2F14
ov5_021D2F14: ; 0x021D2F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r4, r3, #0
	add r0, r2, #0
	add r1, r5, #4
	add r2, r4, #0
	bl sub_020095C4
	str r0, [r5, #0]
	ldr r1, _021D30A4 ; =0x00000162
	ldr r0, [sp, #0x10]
	strh r4, [r5, r1]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021D2F3A
	mov r2, #4
	b _021D2F3C
_021D2F3A:
	mov r2, #6
_021D2F3C:
	sub r0, r1, #2
	strh r2, [r5, r0]
	bl sub_02009F34
	mov r1, #0x16
	lsl r1, r1, #4
	ldrh r2, [r5, r1]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	mul r1, r3
	bl sub_02018144
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bls _021D2F9E
	ldr r6, [sp, #0x10]
_021D2F68:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x20]
	ldr r1, [r6, #0]
	add r0, r4, #0
	bl sub_02017A40
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r2, r4, #0
	bl sub_02009F40
	ldr r0, [sp, #0x24]
	bl sub_020181C4
	ldr r0, [sp, #0x1c]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	blo _021D2F68
_021D2F9E:
	mov r6, #0
	cmp r0, #0
	bls _021D2FD4
	str r5, [sp, #0x18]
_021D2FA6:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02009F38
	bl sub_02009FA4
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x13
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r2, #0
	add r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0x30
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021D2FA6
_021D2FD4:
	mov r1, #0
	str r1, [sp, #0x14]
	cmp r0, #0
	bls _021D3020
	add r6, r5, #0
_021D2FDE:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x28]
	bl sub_02009FA4
	add r1, r4, #0
	bl sub_02009CFC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r2, #0x52
	sub r0, #0x18
	lsl r2, r2, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	ldr r2, [r6, r2]
	add r3, r4, #0
	bl sub_02009C80
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _021D2FDE
_021D3020:
	mov r6, #0
	cmp r0, #0
	bls _021D303E
_021D3026:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02009F38
	bl sub_02009F8C
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021D3026
_021D303E:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A41C
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A684
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	ldr r1, [r1, #0x18]
	bl sub_02017A40
	mov r3, #0x4e
	lsl r3, r3, #2
	ldr r1, [r5, r3]
	add r2, r3, #0
	str r1, [sp]
	add r1, r3, #4
	ldr r1, [r5, r1]
	sub r2, #8
	str r1, [sp, #4]
	add r1, r3, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r6, r0, #0
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	sub r3, r3, #4
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r1, r4, #0
	bl sub_02009508
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D30A4: .word 0x00000162
	thumb_func_end ov5_021D2F14

	thumb_func_start ov5_021D30A8
ov5_021D30A8: ; 0x021D30A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020095A8
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A508
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A700
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	bls _021D3100
	mov r7, #0x16
	add r4, r5, #0
	lsl r7, r7, #4
_021D30E2:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009D20
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02009754
	ldrh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blo _021D30E2
_021D3100:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D30A8

	thumb_func_start ov5_021D3104
ov5_021D3104: ; 0x021D3104
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r0, #0
	add r4, r1, #0
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r3, #0x4b
	lsl r3, r3, #2
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r6, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #8
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	ldr r0, [r2, r3]
	ldr r1, [r4, #0]
	ldr r5, [r0, #0]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r6, _021D318C ; =0x021F89C0
	str r0, [r5, #0]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r5, #0]
	add r0, sp, #0
	strh r1, [r0, #0x2c]
	ldr r0, [r4, #0xc]
	add r3, #0x36
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x34]
	ldrh r0, [r2, r3]
	str r0, [sp, #0x38]
	add r0, sp, #0xc
	bl sub_02021AA0
	add r5, r0, #0
	bne _021D3174
	bl sub_02022974
_021D3174:
	ldrh r1, [r4, #0xa]
	add r0, r5, #0
	bl sub_02021D6C
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02021EC4
	add r0, r5, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021D318C: .word 0x021F89C0
	thumb_func_end ov5_021D3104

	thumb_func_start ov5_021D3190
ov5_021D3190: ; 0x021D3190
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	add r0, r2, #0
	str r3, [sp, #4]
	add r1, r7, #4
	add r2, r3, #0
	bl sub_020095C4
	str r0, [r7, #0]
	ldr r1, _021D326C ; =0x00000162
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D31BC
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D31D2
_021D31BC:
	mov r1, #0x16
	mov r0, #4
	lsl r1, r1, #4
	strh r0, [r7, r1]
	add r0, r1, #0
	mov r2, #0
	sub r0, #0x20
	str r2, [r7, r0]
	sub r1, #0x1c
	str r2, [r7, r1]
	b _021D31D8
_021D31D2:
	mov r2, #6
	sub r0, r1, #2
	strh r2, [r7, r0]
_021D31D8:
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	mov r4, #0
	cmp r1, #0
	bls _021D3208
	ldr r5, [sp]
	add r6, r7, #0
_021D31E8:
	ldr r0, [r5, #0]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl sub_02009714
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0x30
	ldrh r1, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, r1
	blo _021D31E8
_021D3208:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	bls _021D3266
	mov r6, #0x52
	add r5, r7, #0
	add r4, r0, #0
	lsl r6, r6, #2
_021D3218:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D324C
	ldr r1, [sp, #4]
	bl sub_02009CFC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _021D324C
	add r2, r1, #0
_021D323C:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _021D323C
_021D324C:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _021D3218
_021D3266:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D326C: .word 0x00000162
	thumb_func_end ov5_021D3190

	thumb_func_start ov5_021D3270
ov5_021D3270: ; 0x021D3270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x30]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _021D3294
	bl sub_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D3294:
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, _021D32E4 ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x2e
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020098B8
	add r4, r0, #0
	beq _021D32DC
	bl sub_0200A640
	cmp r0, #1
	beq _021D32C4
	bl sub_02022974
_021D32C4:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov5_021D3478
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0200A760
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D32DC:
	bl sub_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D32E4: .word 0x00000162
	thumb_func_end ov5_021D3270

	thumb_func_start ov5_021D32E8
ov5_021D32E8: ; 0x021D32E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x30]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _021D330C
	bl sub_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D330C:
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, _021D335C ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x2e
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009B04
	add r4, r0, #0
	beq _021D3354
	bl sub_0200A640
	cmp r0, #1
	beq _021D333C
	bl sub_02022974
_021D333C:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov5_021D3478
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0200A760
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D3354:
	bl sub_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D335C: .word 0x00000162
	thumb_func_end ov5_021D32E8

	thumb_func_start ov5_021D3360
ov5_021D3360: ; 0x021D3360
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov5_021D34AC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D3360

	thumb_func_start ov5_021D3374
ov5_021D3374: ; 0x021D3374
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov5_021D3518
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D3374

	thumb_func_start ov5_021D3388
ov5_021D3388: ; 0x021D3388
	push {r4, lr}
	sub sp, #8
	mov r4, #3
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov5_021D34AC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D3388

	thumb_func_start ov5_021D339C
ov5_021D339C: ; 0x021D339C
	push {r4, lr}
	sub sp, #8
	mov r4, #3
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov5_021D3518
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov5_021D339C

	thumb_func_start ov5_021D33B0
ov5_021D33B0: ; 0x021D33B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _021D33D4
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D33D4:
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, _021D3410 ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x32
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200985C
	add r4, r0, #0
	beq _021D3408
	bl sub_0200A3DC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov5_021D3478
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D3408:
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3410: .word 0x00000162
	thumb_func_end ov5_021D33B0

	thumb_func_start ov5_021D3414
ov5_021D3414: ; 0x021D3414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _021D3438
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D3438:
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, _021D3474 ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x32
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009A4C
	add r4, r0, #0
	beq _021D346C
	bl sub_0200A3DC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov5_021D3478
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D346C:
	bl sub_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3474: .word 0x00000162
	thumb_func_end ov5_021D3414

	thumb_func_start ov5_021D3478
ov5_021D3478: ; 0x021D3478
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _021D34A4
	ldr r5, [r0, #0]
	add r4, r5, #0
_021D3486:
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _021D349C
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021D349C:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _021D3486
_021D34A4:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D3478

	thumb_func_start ov5_021D34AC
ov5_021D34AC: ; 0x021D34AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r7, r1, #0
	lsl r4, r0, #2
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r6, r4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _021D34D6
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D34D6:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021D3514 ; =0x00000162
	add r1, r7, #0
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	bl sub_02009918
	add r1, r0, #0
	beq _021D350C
	mov r0, #0x52
	add r2, r5, r4
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ov5_021D3478
	cmp r0, #1
	beq _021D3510
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D350C:
	bl sub_02022974
_021D3510:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3514: .word 0x00000162
	thumb_func_end ov5_021D34AC

	thumb_func_start ov5_021D3518
ov5_021D3518: ; 0x021D3518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r7, r1, #0
	lsl r4, r0, #2
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r6, r4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _021D3542
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D3542:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021D3580 ; =0x00000162
	add r1, r7, #0
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	bl sub_02009BC4
	add r1, r0, #0
	beq _021D3578
	mov r0, #0x52
	add r2, r5, r4
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ov5_021D3478
	cmp r0, #1
	beq _021D357C
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D3578:
	bl sub_02022974
_021D357C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3580: .word 0x00000162
	thumb_func_end ov5_021D3518

	thumb_func_start ov5_021D3584
ov5_021D3584: ; 0x021D3584
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r5, r0, #0
	ldr r0, _021D3758 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	mov r1, #0x10
	bl sub_02018144
	add r6, r0, #0
	ldr r0, _021D3758 ; =0x00000162
	mov r1, #8
	ldrh r0, [r5, r0]
	bl sub_02018144
	str r0, [r6, #8]
	ldr r0, _021D3758 ; =0x00000162
	mov r1, #0x24
	ldrh r0, [r5, r0]
	bl sub_02018144
	ldr r1, [r6, #8]
	add r2, r4, #0
	str r0, [r1, #0]
	ldr r0, [r6, #8]
	mov r1, #0
	ldr r0, [r0, #0]
	add r3, sp, #0x2c
	str r0, [r6, #4]
_021D35BE:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _021D35BE
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D35DC
	add r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021D35E6
_021D35DC:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _021D361C
_021D35E6:
	mov r2, #0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _021D35FE
	bl sub_02009D34
	cmp r0, #0
	bne _021D35FE
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
_021D35FE:
	mov r0, #0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _021D361C
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D34
	cmp r0, #0
	bne _021D361C
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_021D361C:
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r0, #0x14
	str r1, [sp, #0x24]
	ldr r0, [r5, r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_020093B4
	ldr r0, [r5, #0]
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D368A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D3698
_021D368A:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D3698:
	bl _f_ftoi
	str r0, [sp, #0x4c]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D36B8
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D36C6
_021D36B8:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D36C6:
	bl _f_ftoi
	str r0, [sp, #0x50]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D36E6
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D36F4
_021D36E6:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D36F4:
	bl _f_ftoi
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021D370A
	mov r0, #3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_021D370A:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r4, #8]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, _021D3758 ; =0x00000162
	ldrh r0, [r5, r0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_02021AA0
	str r0, [r6, #0]
	cmp r0, #0
	beq _021D374E
	bl sub_02021EE8
	add r5, r0, #0
	ldrh r1, [r4, #6]
	ldr r0, [r6, #0]
	bl sub_02021D6C
	ldr r1, [r4, #0xc]
	ldr r0, [r6, #0]
	add r1, r5, r1
	bl sub_02021E90
	b _021D3752
_021D374E:
	bl sub_02022974
_021D3752:
	add r0, r6, #0
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D3758: .word 0x00000162
	thumb_func_end ov5_021D3584

	thumb_func_start ov5_021D375C
ov5_021D375C: ; 0x021D375C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02021964
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A508
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A700
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	bls _021D37AA
	mov r7, #0x16
	add r5, r6, #0
	lsl r7, r7, #4
_021D378C:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D20
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02009754
	ldrh r0, [r6, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _021D378C
_021D37AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D375C

	.rodata


	.global Unk_ov5_021F89C0
Unk_ov5_021F89C0: ; 0x021F89C0
	.incbin "incbin/overlay5_rodata.bin", 0xAC, 0xC

