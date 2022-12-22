	.include "macros/function.inc"
	.include "include/unk_0203D1B8.inc"

	

	.text


	thumb_func_start sub_0203D1B8
sub_0203D1B8: ; 0x0203D1B8
	mov r0, #1
	bx lr
	thumb_func_end sub_0203D1B8

	thumb_func_start sub_0203D1BC
sub_0203D1BC: ; 0x0203D1BC
	push {r3, lr}
	bl ov16_0223B140
	cmp r0, #0
	beq _0203D1CA
	mov r0, #1
	pop {r3, pc}
_0203D1CA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203D1BC

	thumb_func_start sub_0203D1D0
sub_0203D1D0: ; 0x0203D1D0
	mov r0, #1
	bx lr
	thumb_func_end sub_0203D1D0

	thumb_func_start sub_0203D1D4
sub_0203D1D4: ; 0x0203D1D4
	ldr r3, _0203D1DC ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D1E0 ; =0x020EA358
	bx r3
	; .align 2, 0
_0203D1DC: .word sub_0203CD84
_0203D1E0: .word 0x020EA358
	thumb_func_end sub_0203D1D4

	thumb_func_start sub_0203D1E4
sub_0203D1E4: ; 0x0203D1E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D208 ; =0x020EA338
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D208: .word 0x020EA338
	thumb_func_end sub_0203D1E4

	thumb_func_start sub_0203D20C
sub_0203D20C: ; 0x0203D20C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	bl sub_0207D990
	ldr r1, _0203D260 ; =0x020EA164
	mov r2, #0xb
	bl sub_0207D824
	add r3, r5, #0
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #0
	add r4, r0, #0
	bl sub_0207CB2C
	ldr r1, [r5, #0x70]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207CB78
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _0203D24C
	add r0, r4, #0
	bl sub_0207CB58
_0203D24C:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0207CB6C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D1E4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D260: .word 0x020EA164
	thumb_func_end sub_0203D20C

	thumb_func_start sub_0203D264
sub_0203D264: ; 0x0203D264
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0207D990
	add r6, r0, #0
	cmp r4, #0
	beq _0203D27C
	cmp r4, #1
	beq _0203D284
	b _0203D28C
_0203D27C:
	ldr r1, _0203D2B8 ; =0x020EA154
	ldr r0, _0203D2BC ; =0x02100A80
	str r1, [r0, #0]
	b _0203D290
_0203D284:
	ldr r1, _0203D2C0 ; =0x020EA158
	ldr r0, _0203D2BC ; =0x02100A80
	str r1, [r0, #0]
	b _0203D290
_0203D28C:
	bl GF_AssertFail
_0203D290:
	ldr r1, _0203D2BC ; =0x02100A80
	add r0, r6, #0
	ldr r1, [r1, #0]
	mov r2, #0x20
	bl sub_0207D824
	add r3, r5, #0
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	add r4, r0, #0
	mov r2, #3
	bl sub_0207CB2C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D1E4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D2B8: .word 0x020EA154
_0203D2BC: .word 0x02100A80
_0203D2C0: .word 0x020EA158
	thumb_func_end sub_0203D264

	thumb_func_start sub_0203D2C4
sub_0203D2C4: ; 0x0203D2C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0207CB94
	add r4, r0, #0
	beq _0203D2DE
	add r0, r5, #0
	bl sub_0207CB9C
	cmp r0, #5
	bne _0203D2DE
	bl GF_AssertFail
_0203D2DE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203D2C4

	thumb_func_start sub_0203D2E4
sub_0203D2E4: ; 0x0203D2E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D308 ; =0x020EA2F8
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D308: .word 0x020EA2F8
	thumb_func_end sub_0203D2E4

	thumb_func_start sub_0203D30C
sub_0203D30C: ; 0x0203D30C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, _0203D330 ; =0x020EA2E8
	add r3, sp, #0
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0203D330: .word 0x020EA2E8
	thumb_func_end sub_0203D30C

	thumb_func_start sub_0203D334
sub_0203D334: ; 0x0203D334
	ldr r3, _0203D33C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D340 ; =0x020F410C
	bx r3
	; .align 2, 0
_0203D33C: .word sub_0203CD84
_0203D340: .word 0x020F410C
	thumb_func_end sub_0203D334

	thumb_func_start sub_0203D344
sub_0203D344: ; 0x0203D344
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x21
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r7, [r0]
	str r5, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D344

	thumb_func_start sub_0203D390
sub_0203D390: ; 0x0203D390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r2, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r5, #0
	add r3, r2, #0
	bl sub_0203D344
	add r4, r0, #0
	str r6, [r4, #0x18]
	add r0, #0x22
	strb r7, [r0]
	ldr r1, _0203D3BC ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203D3BC: .word 0x020F1E88
	thumb_func_end sub_0203D390

	thumb_func_start sub_0203D3C0
sub_0203D3C0: ; 0x0203D3C0
	push {r3, r4, r5, lr}
	mov r0, #0xb
	mov r2, #0
	mov r3, #3
	add r5, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, _0203D3E0 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203D3E0: .word 0x020F1E88
	thumb_func_end sub_0203D3C0

	thumb_func_start sub_0203D3E4
sub_0203D3E4: ; 0x0203D3E4
	push {r3, r4, r5, lr}
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x13
	add r5, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, _0203D404 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203D404: .word 0x020F1E88
	thumb_func_end sub_0203D3E4

	thumb_func_start sub_0203D408
sub_0203D408: ; 0x0203D408
	add r0, #0x22
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203D408

	thumb_func_start sub_0203D410
sub_0203D410: ; 0x0203D410
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x12
	add r5, r1, #0
	bl sub_0203D344
	add r6, r0, #0
	add r0, #0x22
	strb r4, [r0]
	ldr r1, _0203D434 ; =0x020F1E88
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0203CD84
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D434: .word 0x020F1E88
	thumb_func_end sub_0203D410

	thumb_func_start sub_0203D438
sub_0203D438: ; 0x0203D438
	add r0, #0x23
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203D438

	thumb_func_start sub_0203D440
sub_0203D440: ; 0x0203D440
	ldrb r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_0203D440

	thumb_func_start sub_0203D444
sub_0203D444: ; 0x0203D444
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _0203D502
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203D470: ; jump table
	.short _0203D47A - _0203D470 - 2 ; case 0
	.short _0203D48A - _0203D470 - 2 ; case 1
	.short _0203D4C0 - _0203D470 - 2 ; case 2
	.short _0203D4E2 - _0203D470 - 2 ; case 3
	.short _0203D4F8 - _0203D470 - 2 ; case 4
_0203D47A:
	ldr r1, _0203D508 ; =0x020F1E88
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0203CD84
	mov r0, #1
	str r0, [r5, #0]
	b _0203D502
_0203D48A:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203D502
	ldr r0, [r4, #4]
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0203D4AE
	cmp r0, #7
	bne _0203D4BA
	mov r0, #2
	bl sub_0205BAAC
	mov r0, #4
	str r0, [r5, #0]
	b _0203D502
_0203D4AE:
	mov r0, #1
	bl sub_0205BAAC
	mov r0, #4
	str r0, [r5, #0]
	b _0203D502
_0203D4BA:
	mov r0, #2
	str r0, [r5, #0]
	b _0203D502
_0203D4C0:
	ldr r1, [r4, #0]
	add r0, r6, #0
	mov r2, #0
	bl sub_0203D670
	str r0, [r4, #8]
	ldr r1, [r4, #4]
	add r1, #0x22
	ldrb r1, [r1]
	strb r1, [r0, #0x14]
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl sub_0203D334
	mov r0, #3
	str r0, [r5, #0]
	b _0203D502
_0203D4E2:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203D502
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0]
	b _0203D502
_0203D4F8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203D502:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203D508: .word 0x020F1E88
	thumb_func_end sub_0203D444

	thumb_func_start sub_0203D50C
sub_0203D50C: ; 0x0203D50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	str r5, [r4, #0]
	bl sub_0203D344
	add r5, r0, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, r4, #0
	bic r1, r0
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x32
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	add r0, r5, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1e
	add r0, #0x33
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x14]
	ldr r1, _0203D574 ; =sub_0203D444
	add r0, r7, #0
	str r5, [r4, #4]
	bl sub_02050944
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203D574: .word sub_0203D444
	thumb_func_end sub_0203D50C

	thumb_func_start sub_0203D578
sub_0203D578: ; 0x0203D578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r3, #0
	mov r0, #0xb
	mov r2, #0
	mov r3, #0xd
	add r7, r1, #0
	bl sub_0203D344
	add r4, r0, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r5, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0203D5AE
	add r0, r4, #0
	add r0, #0x2b
	strb r6, [r0]
	b _0203D5B6
_0203D5AE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2b
	strb r1, [r0]
_0203D5B6:
	ldr r1, _0203D5C4 ; =0x020F1E88
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203D5C4: .word 0x020F1E88
	thumb_func_end sub_0203D578

	thumb_func_start sub_0203D5C8
sub_0203D5C8: ; 0x0203D5C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0203D63C ; =0x020EA02C
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0203D640 ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D63C: .word 0x020EA02C
_0203D640: .word 0x020F410C
	thumb_func_end sub_0203D5C8

	thumb_func_start sub_0203D644
sub_0203D644: ; 0x0203D644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x15
	bl sub_0203D344
	add r6, r0, #0
	add r0, #0x22
	strb r4, [r0]
	ldr r1, _0203D66C ; =0x020F1E88
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0203CD84
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0203D66C: .word 0x020F1E88
	thumb_func_end sub_0203D644

	thumb_func_start sub_0203D670
sub_0203D670: ; 0x0203D670
	push {r4, r5, r6, lr}
	ldr r5, [r0, #0xc]
	add r0, r1, #0
	mov r1, #0x30
	add r6, r2, #0
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
	mov r0, #1
	strb r0, [r4, #0x11]
	mov r0, #0
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r6, [r4, #0x12]
	add r0, r5, #0
	bl sub_0207A274
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0208C324
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0203D6E0 ; =0x020EA170
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D6E0: .word 0x020EA170
	thumb_func_end sub_0203D670

	thumb_func_start sub_0203D6E4
sub_0203D6E4: ; 0x0203D6E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	mov r0, #2
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x2c]
	ldr r1, _0203D74C ; =0x020EA160
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D334
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203D74C: .word 0x020EA160
	thumb_func_end sub_0203D6E4

	thumb_func_start sub_0203D750
sub_0203D750: ; 0x0203D750
	ldrb r0, [r0, #0x16]
	bx lr
	thumb_func_end sub_0203D750

	thumb_func_start sub_0203D754
sub_0203D754: ; 0x0203D754
	ldr r3, _0203D75C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D760 ; =0x020EA2C8
	bx r3
	; .align 2, 0
_0203D75C: .word sub_0203CD84
_0203D760: .word 0x020EA2C8
	thumb_func_end sub_0203D754

	thumb_func_start sub_0203D764
sub_0203D764: ; 0x0203D764
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0203D78E
	cmp r1, #1
	beq _0203D79C
	cmp r1, #2
	beq _0203D7AC
	b _0203D806
_0203D78E:
	ldr r1, [r5, #0xc]
	bl sub_0203D874
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203D806
_0203D79C:
	bl sub_020509B4
	cmp r0, #0
	bne _0203D806
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203D806
_0203D7AC:
	ldr r0, [r5, #0xc]
	bl sub_02097528
	cmp r0, #0
	bne _0203D7C0
	ldr r0, [r5, #0xc]
	bl sub_0209752C
	cmp r0, #0
	bne _0203D7C8
_0203D7C0:
	ldr r0, [r5, #0]
	mov r1, #0
	strh r1, [r0]
	b _0203D7F4
_0203D7C8:
	ldr r0, [r5, #0]
	mov r1, #1
	strh r1, [r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	ldr r0, [r5, #0xc]
	bne _0203D7E0
	bl sub_02097530
	ldr r1, [r5, #4]
	strh r0, [r1]
	b _0203D7F4
_0203D7E0:
	add r1, sp, #0
	bl sub_02097534
	add r0, sp, #0
	ldrh r2, [r0]
	ldr r1, [r5, #4]
	strh r2, [r1]
	ldrh r1, [r0, #2]
	ldr r0, [r5, #8]
	strh r1, [r0]
_0203D7F4:
	ldr r0, [r5, #0xc]
	bl sub_020974EC
	add r0, r5, #0
	bl sub_020181C4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0203D806:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0203D764

	thumb_func_start sub_0203D80C
sub_0203D80C: ; 0x0203D80C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #4]
	cmp r6, #0
	str r0, [r4, #0]
	str r5, [r4, #4]
	str r6, [r4, #8]
	bne _0203D84A
	mov r0, #0
	ldr r2, [r7, #0xc]
	add r1, r0, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0xc]
	ldrh r1, [r5]
	bl sub_020974F4
	b _0203D860
_0203D84A:
	ldr r2, [r7, #0xc]
	mov r0, #1
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0xc]
	ldrh r1, [r5]
	ldrh r2, [r6]
	bl sub_020974F8
_0203D860:
	ldr r0, [sp]
	ldr r1, _0203D870 ; =sub_0203D764
	add r2, r4, #0
	bl sub_02050944
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203D870: .word sub_0203D764
	thumb_func_end sub_0203D80C

	thumb_func_start sub_0203D874
sub_0203D874: ; 0x0203D874
	ldr r3, _0203D87C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D880 ; =0x020EA308
	bx r3
	; .align 2, 0
_0203D87C: .word sub_0203CD84
_0203D880: .word 0x020EA308
	thumb_func_end sub_0203D874

	thumb_func_start sub_0203D884
sub_0203D884: ; 0x0203D884
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D8A8 ; =0x020EA318
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D8A8: .word 0x020EA318
	thumb_func_end sub_0203D884

	thumb_func_start sub_0203D8AC
sub_0203D8AC: ; 0x0203D8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	mov r1, #5
	mov r0, #0xb
	lsl r1, r1, #6
	bl sub_02018184
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0206B70C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D884
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D8AC

	thumb_func_start sub_0203D8DC
sub_0203D8DC: ; 0x0203D8DC
	ldr r3, _0203D8E4 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D8E8 ; =0x020EA288
	bx r3
	; .align 2, 0
_0203D8E4: .word sub_0203CD84
_0203D8E8: .word 0x020EA288
	thumb_func_end sub_0203D8DC

	thumb_func_start sub_0203D8EC
sub_0203D8EC: ; 0x0203D8EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #2
	bl sub_02018184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E44
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203D8DC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203D8EC

	thumb_func_start sub_0203D910
sub_0203D910: ; 0x0203D910
	ldr r3, _0203D918 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D91C ; =0x020F64B0
	bx r3
	; .align 2, 0
_0203D918: .word sub_0203CD84
_0203D91C: .word 0x020F64B0
	thumb_func_end sub_0203D910

	thumb_func_start sub_0203D920
sub_0203D920: ; 0x0203D920
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203D174
	mov r1, #0xb
	str r1, [sp]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02097624
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203D920

	thumb_func_start sub_0203D94C
sub_0203D94C: ; 0x0203D94C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #3
	bne _0203D968
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020976F4
	b _0203D976
_0203D968:
	bl sub_0203D174
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0209767C
_0203D976:
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D94C

	thumb_func_start sub_0203D984
sub_0203D984: ; 0x0203D984
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	bl sub_0203D174
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020976BC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203D910
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203D984

	thumb_func_start sub_0203D9A8
sub_0203D9A8: ; 0x0203D9A8
	ldr r3, _0203D9B0 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203D9B4 ; =0x020F6890
	bx r3
	; .align 2, 0
_0203D9B0: .word sub_0203CD84
_0203D9B4: .word 0x020F6890
	thumb_func_end sub_0203D9A8

	thumb_func_start sub_0203D9B8
sub_0203D9B8: ; 0x0203D9B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0203D174
	add r1, r5, #0
	bl sub_020989DC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203D9A8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203D9B8

	thumb_func_start sub_0203D9D8
sub_0203D9D8: ; 0x0203D9D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203D9FC ; =0x020EA278
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203D9FC: .word 0x020EA278
	thumb_func_end sub_0203D9D8

	thumb_func_start sub_0203DA00
sub_0203DA00: ; 0x0203DA00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x20
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	bl memset
	add r0, r6, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_0202A750
	str r0, [sp]
	mov r1, #0
	bl sub_02029CA8
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02029D04
	str r4, [r5, #4]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r5, #0xc]
	add r0, r6, #0
	bl sub_0202CD88
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x18]
	str r0, [r5, #0x1c]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203DA00

	thumb_func_start sub_0203DA64
sub_0203DA64: ; 0x0203DA64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0203DA82
	cmp r0, #1
	beq _0203DA92
	b _0203DABC
_0203DA82:
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl sub_0203DB10
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0203DABC
_0203DA92:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203DABC
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0203DAA6
	mov r1, #1
	b _0203DAA8
_0203DAA6:
	mov r1, #0
_0203DAA8:
	ldr r0, [r5, #4]
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203DABC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DA64

	thumb_func_start sub_0203DAC0
sub_0203DAC0: ; 0x0203DAC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x20
	mov r1, #0x10
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0203DADC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0203DADC
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r3, r4, #0
	add r1, r7, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	mov r0, #0x20
	add r3, #8
	bl sub_0203DA00
	str r0, [r4, #0xc]
	ldr r1, _0203DB0C ; =sub_0203DA64
	add r0, r6, #0
	add r2, r4, #0
	str r5, [r4, #4]
	bl sub_02050944
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203DB0C: .word sub_0203DA64
	thumb_func_end sub_0203DAC0

	thumb_func_start sub_0203DB10
sub_0203DB10: ; 0x0203DB10
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203DB20 ; =0x02100AC4
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203DB20: .word 0x02100AC4
	thumb_func_end sub_0203DB10

	thumb_func_start sub_0203DB24
sub_0203DB24: ; 0x0203DB24
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203DB34 ; =0x02100AB4
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203DB34: .word 0x02100AB4
	thumb_func_end sub_0203DB24

	thumb_func_start sub_0203DB38
sub_0203DB38: ; 0x0203DB38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	mov r1, #9
	bl sub_020245BC
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_0202C878
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	str r0, [r5, #0x18]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [r5, #0x24]
	ldr r0, [r4, #0xc]
	bl sub_0207A274
	str r0, [r5, #0x30]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	str r0, [r5, #0x20]
	bl sub_02025E68
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x38]
	bl sub_02076AF0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x3c]
	bl sub_02076AF0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_02018144
	str r0, [r5, #0x40]
	str r4, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x34]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203DB38

	thumb_func_start sub_0203DBC0
sub_0203DBC0: ; 0x0203DBC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0203DBD2
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x38]
_0203DBD2:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0203DBE0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x3c]
_0203DBE0:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0203DBEE
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x40]
_0203DBEE:
	pop {r4, pc}
	thumb_func_end sub_0203DBC0

	thumb_func_start sub_0203DBF0
sub_0203DBF0: ; 0x0203DBF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bls _0203DC0C
	b _0203DDCE
_0203DC0C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203DC18: ; jump table
	.short _0203DC28 - _0203DC18 - 2 ; case 0
	.short _0203DC3E - _0203DC18 - 2 ; case 1
	.short _0203DC4C - _0203DC18 - 2 ; case 2
	.short _0203DC5E - _0203DC18 - 2 ; case 3
	.short _0203DC7C - _0203DC18 - 2 ; case 4
	.short _0203DCEA - _0203DC18 - 2 ; case 5
	.short _0203DD7A - _0203DC18 - 2 ; case 6
	.short _0203DDA6 - _0203DC18 - 2 ; case 7
_0203DC28:
	bl sub_020389B8
	cmp r0, #0
	bne _0203DC36
	add r0, r6, #0
	bl sub_02055820
_0203DC36:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC3E:
	add r0, r4, #4
	add r1, r5, #0
	bl sub_0203DB38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0203DC4C:
	ldr r1, _0203DDD4 ; =0x02100AA4
	add r0, r6, #0
	add r2, r4, #4
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC5E:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _0203DC76
	add r0, r4, #4
	bl sub_0203DBC0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203DC76:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DDCE
_0203DC7C:
	ldr r0, [r4, #0x3c]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x40]
	bl sub_02076B10
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	bl sub_02076B10
	str r0, [r4, #0x4c]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x5c]
	mov r0, #1
	str r0, [r4, #0x58]
	add r0, r5, #0
	bl sub_02055BA8
	cmp r0, #4
	bhi _0203DCBC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DCB2: ; jump table
	.short _0203DCBC - _0203DCB2 - 2 ; case 0
	.short _0203DCBC - _0203DCB2 - 2 ; case 1
	.short _0203DCC2 - _0203DCB2 - 2 ; case 2
	.short _0203DCC8 - _0203DCB2 - 2 ; case 3
	.short _0203DCC8 - _0203DCB2 - 2 ; case 4
_0203DCBC:
	mov r0, #0
	str r0, [r4, #0x54]
	b _0203DCCC
_0203DCC2:
	mov r0, #1
	str r0, [r4, #0x54]
	b _0203DCCC
_0203DCC8:
	mov r0, #2
	str r0, [r4, #0x54]
_0203DCCC:
	bl sub_020389B8
	cmp r0, #0
	beq _0203DCD8
	mov r0, #3
	str r0, [r4, #0x54]
_0203DCD8:
	add r2, r4, #0
	ldr r1, _0203DDD8 ; =0x020EA268
	add r0, r6, #0
	add r2, #0x48
	bl sub_02050A38
	mov r0, #5
	str r0, [r4, #0]
	b _0203DDCE
_0203DCEA:
	ldr r0, [r4, #0x44]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r3, r0, #0
	add r0, sp, #0x30
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r1, [r4, #0x44]
	mov r0, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _0203DD74
	mov r0, #3
	mov r1, #0x1a
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x24]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x28]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	str r6, [sp]
	ldr r1, [sp, #0x28]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x1a
	str r0, [sp, #0x1c]
	ldr r1, [r4, #0x44]
	mov r0, #0
	bl sub_0207AE68
	str r0, [r4, #0x60]
	mov r0, #6
	str r0, [r4, #0]
	b _0203DDCE
_0203DD74:
	mov r0, #7
	str r0, [r4, #0]
	b _0203DDCE
_0203DD7A:
	ldr r0, [r4, #0x60]
	bl sub_0207B0D0
	cmp r0, #0
	beq _0203DDCE
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_020775EC
	ldr r0, [r4, #0x60]
	bl sub_0207B0E0
	mov r0, #0x1a
	bl sub_0201807C
	mov r0, #7
	str r0, [r4, #0]
	b _0203DDCE
_0203DDA6:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	mov r0, #2
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x10
	add r4, r0, #0
	bl sub_0202CFEC
	bl sub_020389B8
	cmp r0, #0
	beq _0203DDCE
	add r0, r4, #0
	mov r1, #0x71
	bl sub_0202CF28
_0203DDCE:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203DDD4: .word 0x02100AA4
_0203DDD8: .word 0x020EA268
	thumb_func_end sub_0203DBF0

	thumb_func_start sub_0203DDDC
sub_0203DDDC: ; 0x0203DDDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x68
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldr r1, _0203DDF8 ; =sub_0203DBF0
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_0203DDF8: .word sub_0203DBF0
	thumb_func_end sub_0203DDDC

	thumb_func_start sub_0203DDFC
sub_0203DDFC: ; 0x0203DDFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	ldr r1, _0203DE30 ; =0x020EA258
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	pop {r3, r4, r5, pc}
	nop
_0203DE30: .word 0x020EA258
	thumb_func_end sub_0203DDFC

	thumb_func_start sub_0203DE34
sub_0203DE34: ; 0x0203DE34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, _0203DE74 ; =0x020EA248
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203DE74: .word 0x020EA248
	thumb_func_end sub_0203DE34

	thumb_func_start sub_0203DE78
sub_0203DE78: ; 0x0203DE78
	ldr r3, _0203DE80 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203DE84 ; =0x020EA238
	bx r3
	; .align 2, 0
_0203DE80: .word sub_0203CD84
_0203DE84: .word 0x020EA238
	thumb_func_end sub_0203DE78

	thumb_func_start sub_0203DE88
sub_0203DE88: ; 0x0203DE88
	ldr r3, _0203DE90 ; =sub_0203CD84
	ldr r1, _0203DE94 ; =0x020F2FCC
	add r2, r0, #0
	bx r3
	; .align 2, 0
_0203DE90: .word sub_0203CD84
_0203DE94: .word 0x020F2FCC
	thumb_func_end sub_0203DE88

	thumb_func_start sub_0203DE98
sub_0203DE98: ; 0x0203DE98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _0203DF60
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DEBC: ; jump table
	.short _0203DEC4 - _0203DEBC - 2 ; case 0
	.short _0203DED2 - _0203DEBC - 2 ; case 1
	.short _0203DEE4 - _0203DEBC - 2 ; case 2
	.short _0203DEF2 - _0203DEBC - 2 ; case 3
_0203DEC4:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DED2:
	ldr r1, _0203DF64 ; =0x020F2DAC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DEE4:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0203DF60
_0203DEF2:
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #0]
	cmp r0, #1
	bne _0203DF0E
	ldr r0, [r1, #0x18]
	ldr r1, [r4, #0x10]
	bl sub_02023BE0
	cmp r0, #0
	bne _0203DF30
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	b _0203DF30
_0203DF0E:
	cmp r0, #5
	bne _0203DF30
	ldr r0, [r1, #0x18]
	bl sub_02023E2C
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0202B4A0
	add r1, r7, #0
	bl sub_0202B4D8
	cmp r0, #0
	beq _0203DF30
	ldr r0, [r4, #0xc]
	mov r1, #2
	str r1, [r0, #0x14]
_0203DF30:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0203DF3E
	add r0, r5, #0
	bl sub_0203DF68
_0203DF3E:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0203DF4A
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	strh r0, [r1]
_0203DF4A:
	ldr r0, [r4, #0xc]
	bl sub_0208716C
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203DF60:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203DF64: .word 0x020F2DAC
	thumb_func_end sub_0203DE98

	thumb_func_start sub_0203DF68
sub_0203DF68: ; 0x0203DF68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _0203DFE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203DF8E: ; jump table
	.short _0203DF9C - _0203DF8E - 2 ; case 0
	.short _0203DFAC - _0203DF8E - 2 ; case 1
	.short _0203DFE6 - _0203DF8E - 2 ; case 2
	.short _0203DFE6 - _0203DF8E - 2 ; case 3
	.short _0203DFE6 - _0203DF8E - 2 ; case 4
	.short _0203DFC4 - _0203DF8E - 2 ; case 5
	.short _0203DFD8 - _0203DF8E - 2 ; case 6
_0203DF9C:
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r1, [r4, #0xc]
	add r1, #0x1c
	bl sub_02025EC0
	pop {r3, r4, r5, pc}
_0203DFAC:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r1, [r4, #4]
	bl sub_0207A0FC
	ldr r2, [r4, #0xc]
	mov r1, #0x76
	add r2, #0x1c
	bl sub_02074B30
	pop {r3, r4, r5, pc}
_0203DFC4:
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	ldr r3, [r4, #0xc]
	mov r1, #0
	ldr r3, [r3, #0x18]
	add r2, r1, #0
	bl sub_0202B444
	pop {r3, r4, r5, pc}
_0203DFD8:
	ldr r0, [r5, #0xc]
	bl sub_0202783C
	ldr r1, [r4, #0xc]
	ldr r1, [r1, #0x18]
	bl sub_020278A0
_0203DFE6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DF68

	thumb_func_start sub_0203DFE8
sub_0203DFE8: ; 0x0203DFE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r6, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x2c]
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [sp, #0x28]
	str r0, [r4, #4]
	ldr r0, [sp, #0x30]
	str r0, [r4, #8]
	ldr r0, [r7, #0xc]
	bl sub_02025E44
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, #0xb
	add r1, r6, #0
	bl sub_0208712C
	str r0, [r4, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	bl sub_02023790
	str r0, [r4, #0x10]
	cmp r6, #1
	beq _0203E03C
	cmp r6, #5
	beq _0203E072
	b _0203E07C
_0203E03C:
	ldr r0, [r7, #0xc]
	bl sub_0207A268
	ldr r1, [r4, #4]
	bl sub_0207A0FC
	mov r1, #0x6f
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	ldr r1, [r4, #0xc]
	mov r2, #0
	str r0, [r1, #0x10]
	add r0, r6, #0
	mov r1, #0x70
	bl sub_02074470
	ldr r1, [r4, #0xc]
	cmp r5, #0
	str r0, [r1, #8]
	beq _0203E08A
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02023D28
	b _0203E08A
_0203E072:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02023D28
	b _0203E08A
_0203E07C:
	cmp r5, #0
	beq _0203E08A
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #0x18]
	bl sub_02023D28
_0203E08A:
	ldr r0, [sp, #4]
	ldr r1, _0203E098 ; =sub_0203DE98
	add r2, r4, #0
	bl sub_02050944
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E098: .word sub_0203DE98
	thumb_func_end sub_0203DFE8

	thumb_func_start sub_0203E09C
sub_0203E09C: ; 0x0203E09C
	ldr r3, _0203E0A4 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E0A8 ; =0x020EA228
	bx r3
	; .align 2, 0
_0203E0A4: .word sub_0203CD84
_0203E0A8: .word 0x020EA228
	thumb_func_end sub_0203E09C

	thumb_func_start sub_0203E0AC
sub_0203E0AC: ; 0x0203E0AC
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203E0BC ; =0x020EA218
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203E0BC: .word 0x020EA218
	thumb_func_end sub_0203E0AC

	thumb_func_start sub_0203E0C0
sub_0203E0C0: ; 0x0203E0C0
	ldr r3, _0203E0C8 ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E0CC ; =0x020EA1F8
	bx r3
	; .align 2, 0
_0203E0C8: .word sub_0203CD84
_0203E0CC: .word 0x020EA1F8
	thumb_func_end sub_0203E0C0

	thumb_func_start sub_0203E0D0
sub_0203E0D0: ; 0x0203E0D0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202C834
	ldr r5, _0203E0F8 ; =0x020EA298
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r2, [r4, #0xc]
	add r0, r4, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203E0F8: .word 0x020EA298
	thumb_func_end sub_0203E0D0

	thumb_func_start sub_0203E0FC
sub_0203E0FC: ; 0x0203E0FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _0203E1A8 ; =0x020EA2A8
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x44
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202DA40
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025CCC
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_020245BC
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02024420
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_0202C878
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x24]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	bl sub_0208C324
	str r0, [r4, #0x3c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x14]
	bl sub_02039058
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #0x30]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	str r6, [r4, #0x40]
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203E1A8: .word 0x020EA2A8
	thumb_func_end sub_0203E0FC

	thumb_func_start sub_0203E1AC
sub_0203E1AC: ; 0x0203E1AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _0203E220 ; =0x020EA2D8
	add r7, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x28
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D750
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0202D764
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02025CCC
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	bl sub_0202AD28
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202B370
	bl sub_02039058
	str r0, [r4, #0x1c]
	str r6, [r4, #0x18]
	str r7, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E220: .word 0x020EA2D8
	thumb_func_end sub_0203E1AC

	thumb_func_start sub_0203E224
sub_0203E224: ; 0x0203E224
	ldr r3, _0203E22C ; =sub_0203CD84
	ldr r1, _0203E230 ; =0x020EA328
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E22C: .word sub_0203CD84
_0203E230: .word 0x020EA328
	thumb_func_end sub_0203E224

	thumb_func_start sub_0203E234
sub_0203E234: ; 0x0203E234
	ldr r3, _0203E23C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E240 ; =0x020EA1C8
	bx r3
	; .align 2, 0
_0203E23C: .word sub_0203CD84
_0203E240: .word 0x020EA1C8
	thumb_func_end sub_0203E234

	thumb_func_start sub_0203E244
sub_0203E244: ; 0x0203E244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202444C
	ldr r1, [sp]
	add r4, r0, #0
	cmp r1, #2
	bne _0203E262
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203E262:
	ldr r1, _0203E270 ; =0x020EA1B8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203E270: .word 0x020EA1B8
	thumb_func_end sub_0203E244

	thumb_func_start sub_0203E274
sub_0203E274: ; 0x0203E274
	ldr r3, _0203E27C ; =sub_0203CD84
	add r2, r1, #0
	ldr r1, _0203E280 ; =0x020EA1A8
	bx r3
	; .align 2, 0
_0203E27C: .word sub_0203CD84
_0203E280: .word 0x020EA1A8
	thumb_func_end sub_0203E274

	thumb_func_start sub_0203E284
sub_0203E284: ; 0x0203E284
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2A8 ; =0x020EA198
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2A8: .word 0x020EA198
	thumb_func_end sub_0203E284

	thumb_func_start sub_0203E2AC
sub_0203E2AC: ; 0x0203E2AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2D0 ; =0x020EA1E8
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2D0: .word 0x020EA1E8
	thumb_func_end sub_0203E2AC

	thumb_func_start sub_0203E2D4
sub_0203E2D4: ; 0x0203E2D4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0203E2F8 ; =0x020EA208
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0203E2F8: .word 0x020EA208
	thumb_func_end sub_0203E2D4

	thumb_func_start sub_0203E2FC
sub_0203E2FC: ; 0x0203E2FC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl ov5_021E7278
	add r5, r0, #0
	bne _0203E314
	bl GF_AssertFail
_0203E314:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206D578
	str r5, [sp]
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [sp, #8]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, sp, #0
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0x10]
	add r1, sp, #0
	bl sub_020985AC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E2FC

	thumb_func_start sub_0203E348
sub_0203E348: ; 0x0203E348
	push {r3, lr}
	add r2, r1, #0
	ldr r1, _0203E358 ; =0x020EA2B8
	bl sub_0203CD84
	mov r0, #1
	pop {r3, pc}
	nop
_0203E358: .word 0x020EA2B8
	thumb_func_end sub_0203E348

	thumb_func_start sub_0203E35C
sub_0203E35C: ; 0x0203E35C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0203E38C
	cmp r0, #1
	beq _0203E39E
	b _0203E40E
_0203E38C:
	add r5, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203E348
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0203E40E
_0203E39E:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0203E40E
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	str r0, [sp]
	bl sub_020138EC
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, r1, #0
	bl sub_0202B5B4
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [sp, #4]
	add r3, r6, #0
	bl sub_0201398C
	mov r2, #0x3c
	mov r3, #0
	bl _ll_sdiv
	add r3, r0, #0
	ldr r1, [sp, #8]
	ldr r2, [r5, #0]
	add r0, r4, #0
	bl sub_0206DD38
	ldr r0, [r4, #0xc]
	bl sub_02025E50
	ldr r1, [r5, #0]
	bl sub_0202B59C
	add r0, r7, #0
	bl sub_0206B394
	ldr r1, [r5, #0x18]
	cmp r1, r0
	ble _0203E402
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0206B3A4
_0203E402:
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203E40E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203E35C

	thumb_func_start sub_0203E414
sub_0203E414: ; 0x0203E414
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [sp]
	mov r0, #0x20
	add r1, r0, #0
	bl sub_02018144
	add r4, r0, #0
	str r4, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_02025E50
	bl sub_0202B5B4
	str r0, [r4, #0]
	bl sub_020138EC
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [sp]
	bl sub_02027B50
	str r0, [r4, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x18
	bl sub_0203E484
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #5
	bl sub_0202CFEC
	ldr r1, _0203E480 ; =sub_0203E35C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E480: .word sub_0203E35C
	thumb_func_end sub_0203E414

	thumb_func_start sub_0203E484
sub_0203E484: ; 0x0203E484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	bl sub_0202B4A0
	add r4, r0, #0
	bl sub_0201D2D0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0202B428
	bl sub_0201D2DC
	ldr r0, _0203E4F4 ; =0x020EA17C
	add r1, sp, #8
	mov r2, #0xc
	bl MI_CpuCopy8
	mov r4, #0
	mov r7, #0xc
	add r6, sp, #8
_0203E4B0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	bhs _0203E4DA
_0203E4BA:
	bl sub_0201D2E8
	add r1, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	ldrb r1, [r6, r4]
	ldrb r0, [r6, r2]
	strb r0, [r6, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	strb r1, [r6, r2]
	cmp r5, #0xc
	blo _0203E4BA
_0203E4DA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0203E4B0
	ldr r0, [sp, #4]
	bl sub_0201D2DC
	ldr r0, [sp]
	add r1, sp, #8
	ldrb r0, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E4F4: .word 0x020EA17C
	thumb_func_end sub_0203E484

	thumb_func_start sub_0203E4F8
sub_0203E4F8: ; 0x0203E4F8
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	bl ov7_0224BF2C
	cmp r0, #1
	bne _0203E512
	add r0, r4, #0
	bl ov7_0224BEFC
	mov r0, #1
	pop {r4, pc}
_0203E512:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203E4F8

	thumb_func_start sub_0203E518
sub_0203E518: ; 0x0203E518
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r0, #4
	bl ov7_0224BE9C
	add r2, r0, #0
	ldr r1, _0203E538 ; =sub_0203E4F8
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_0203E538: .word sub_0203E4F8
	thumb_func_end sub_0203E518

	thumb_func_start sub_0203E53C
sub_0203E53C: ; 0x0203E53C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #8
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #4]
	ldr r0, [r5, #0xc]
	ldr r1, _0203E560 ; =0x020EA188
	str r0, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203E560: .word 0x020EA188
	thumb_func_end sub_0203E53C

	thumb_func_start sub_0203E564
sub_0203E564: ; 0x0203E564
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #8
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	strb r6, [r4, #4]
	strb r7, [r4, #5]
	ldr r0, [sp]
	ldr r1, _0203E594 ; =0x02100A84
	strh r0, [r4, #6]
	ldr r0, [r5, #0xc]
	add r2, r4, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E594: .word 0x02100A84
	thumb_func_end sub_0203E564

	thumb_func_start sub_0203E598
sub_0203E598: ; 0x0203E598
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl memset
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	str r0, [r4, #0x10]
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x18]
	add r1, #0x21
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #5
	add r1, #0x20
	strb r2, [r1]
	add r1, r4, #0
	strh r6, [r4, #0x24]
	add r1, #0x22
	strb r0, [r1]
	ldr r1, _0203E604 ; =0x020F1E88
	add r0, r5, #0
	add r2, r4, #0
	str r5, [r4, #0x1c]
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0203E604: .word 0x020F1E88
	thumb_func_end sub_0203E598

	thumb_func_start sub_0203E608
sub_0203E608: ; 0x0203E608
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_0203E61C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0203E61C
	ldr r0, [r5, #0xc]
	ldr r1, _0203E638 ; =0x02100A94
	str r0, [r4, #0]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0203E638: .word 0x02100A94
	thumb_func_end sub_0203E608

	thumb_func_start sub_0203E63C
sub_0203E63C: ; 0x0203E63C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x30
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x14]
	mov r0, #1
	strb r0, [r4, #0x13]
	strh r6, [r4, #0x18]
	mov r0, #2
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0xc]
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r0, [r5, #0xc]
	bl sub_0207A274
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206ADCC
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0203E6B8 ; =0x020EA15C
	add r0, r4, #0
	bl sub_0208D720
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0203E6BC ; =0x020F410C
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E6B8: .word 0x020EA15C
_0203E6BC: .word 0x020F410C
	thumb_func_end sub_0203E63C

	thumb_func_start sub_0203E6C0
sub_0203E6C0: ; 0x0203E6C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _0203E700 ; =0x020EA1D8
	add r7, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	str r5, [r4, #0]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	str r0, [r4, #4]
	str r6, [r4, #8]
	add r0, r5, #0
	add r2, r4, #0
	strb r7, [r4, #0xc]
	bl sub_0203CD84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203E700: .word 0x020EA1D8
	thumb_func_end sub_0203E6C0

	thumb_func_start sub_0203E704
sub_0203E704: ; 0x0203E704
	ldr r3, _0203E70C ; =sub_0203CD84
	ldr r1, _0203E710 ; =0x020EA348
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E70C: .word sub_0203CD84
_0203E710: .word 0x020EA348
	thumb_func_end sub_0203E704

	thumb_func_start sub_0203E714
sub_0203E714: ; 0x0203E714
	ldr r3, _0203E71C ; =sub_0203CD84
	ldr r1, _0203E720 ; =0x020EA368
	ldr r2, [r0, #0xc]
	bx r3
	; .align 2, 0
_0203E71C: .word sub_0203CD84
_0203E720: .word 0x020EA368
	thumb_func_end sub_0203E714

	.rodata


	.global Unk_020EA154
Unk_020EA154: ; 0x020EA154
	.incbin "incbin/arm9_rodata.bin", 0x5514, 0x5518 - 0x5514

	.global Unk_020EA158
Unk_020EA158: ; 0x020EA158
	.incbin "incbin/arm9_rodata.bin", 0x5518, 0x551C - 0x5518

	.global Unk_020EA15C
Unk_020EA15C: ; 0x020EA15C
	.incbin "incbin/arm9_rodata.bin", 0x551C, 0x5520 - 0x551C

	.global Unk_020EA160
Unk_020EA160: ; 0x020EA160
	.incbin "incbin/arm9_rodata.bin", 0x5520, 0x5524 - 0x5520

	.global Unk_020EA164
Unk_020EA164: ; 0x020EA164
	.incbin "incbin/arm9_rodata.bin", 0x5524, 0x5530 - 0x5524

	.global Unk_020EA170
Unk_020EA170: ; 0x020EA170
	.incbin "incbin/arm9_rodata.bin", 0x5530, 0x553C - 0x5530

	.global Unk_020EA17C
Unk_020EA17C: ; 0x020EA17C
	.incbin "incbin/arm9_rodata.bin", 0x553C, 0x5548 - 0x553C

	.global Unk_020EA188
Unk_020EA188: ; 0x020EA188
	.incbin "incbin/arm9_rodata.bin", 0x5548, 0x5558 - 0x5548

	.global Unk_020EA198
Unk_020EA198: ; 0x020EA198
	.incbin "incbin/arm9_rodata.bin", 0x5558, 0x5568 - 0x5558

	.global Unk_020EA1A8
Unk_020EA1A8: ; 0x020EA1A8
	.incbin "incbin/arm9_rodata.bin", 0x5568, 0x5578 - 0x5568

	.global Unk_020EA1B8
Unk_020EA1B8: ; 0x020EA1B8
	.incbin "incbin/arm9_rodata.bin", 0x5578, 0x5588 - 0x5578

	.global Unk_020EA1C8
Unk_020EA1C8: ; 0x020EA1C8
	.incbin "incbin/arm9_rodata.bin", 0x5588, 0x5598 - 0x5588

	.global Unk_020EA1D8
Unk_020EA1D8: ; 0x020EA1D8
	.incbin "incbin/arm9_rodata.bin", 0x5598, 0x55A8 - 0x5598

	.global Unk_020EA1E8
Unk_020EA1E8: ; 0x020EA1E8
	.incbin "incbin/arm9_rodata.bin", 0x55A8, 0x55B8 - 0x55A8

	.global Unk_020EA1F8
Unk_020EA1F8: ; 0x020EA1F8
	.incbin "incbin/arm9_rodata.bin", 0x55B8, 0x55C8 - 0x55B8

	.global Unk_020EA208
Unk_020EA208: ; 0x020EA208
	.incbin "incbin/arm9_rodata.bin", 0x55C8, 0x55D8 - 0x55C8

	.global Unk_020EA218
Unk_020EA218: ; 0x020EA218
	.incbin "incbin/arm9_rodata.bin", 0x55D8, 0x55E8 - 0x55D8

	.global Unk_020EA228
Unk_020EA228: ; 0x020EA228
	.incbin "incbin/arm9_rodata.bin", 0x55E8, 0x55F8 - 0x55E8

	.global Unk_020EA238
Unk_020EA238: ; 0x020EA238
	.incbin "incbin/arm9_rodata.bin", 0x55F8, 0x5608 - 0x55F8

	.global Unk_020EA248
Unk_020EA248: ; 0x020EA248
	.incbin "incbin/arm9_rodata.bin", 0x5608, 0x5618 - 0x5608

	.global Unk_020EA258
Unk_020EA258: ; 0x020EA258
	.incbin "incbin/arm9_rodata.bin", 0x5618, 0x5628 - 0x5618

	.global Unk_020EA268
Unk_020EA268: ; 0x020EA268
	.incbin "incbin/arm9_rodata.bin", 0x5628, 0x5638 - 0x5628

	.global Unk_020EA278
Unk_020EA278: ; 0x020EA278
	.incbin "incbin/arm9_rodata.bin", 0x5638, 0x5648 - 0x5638

	.global Unk_020EA288
Unk_020EA288: ; 0x020EA288
	.incbin "incbin/arm9_rodata.bin", 0x5648, 0x5658 - 0x5648

	.global Unk_020EA298
Unk_020EA298: ; 0x020EA298
	.incbin "incbin/arm9_rodata.bin", 0x5658, 0x5668 - 0x5658

	.global Unk_020EA2A8
Unk_020EA2A8: ; 0x020EA2A8
	.incbin "incbin/arm9_rodata.bin", 0x5668, 0x5678 - 0x5668

	.global Unk_020EA2B8
Unk_020EA2B8: ; 0x020EA2B8
	.incbin "incbin/arm9_rodata.bin", 0x5678, 0x5688 - 0x5678

	.global Unk_020EA2C8
Unk_020EA2C8: ; 0x020EA2C8
	.incbin "incbin/arm9_rodata.bin", 0x5688, 0x5698 - 0x5688

	.global Unk_020EA2D8
Unk_020EA2D8: ; 0x020EA2D8
	.incbin "incbin/arm9_rodata.bin", 0x5698, 0x56A8 - 0x5698

	.global Unk_020EA2E8
Unk_020EA2E8: ; 0x020EA2E8
	.incbin "incbin/arm9_rodata.bin", 0x56A8, 0x56B8 - 0x56A8

	.global Unk_020EA2F8
Unk_020EA2F8: ; 0x020EA2F8
	.incbin "incbin/arm9_rodata.bin", 0x56B8, 0x56C8 - 0x56B8

	.global Unk_020EA308
Unk_020EA308: ; 0x020EA308
	.incbin "incbin/arm9_rodata.bin", 0x56C8, 0x56D8 - 0x56C8

	.global Unk_020EA318
Unk_020EA318: ; 0x020EA318
	.incbin "incbin/arm9_rodata.bin", 0x56D8, 0x56E8 - 0x56D8

	.global Unk_020EA328
Unk_020EA328: ; 0x020EA328
	.incbin "incbin/arm9_rodata.bin", 0x56E8, 0x56F8 - 0x56E8

	.global Unk_020EA338
Unk_020EA338: ; 0x020EA338
	.incbin "incbin/arm9_rodata.bin", 0x56F8, 0x5708 - 0x56F8

	.global Unk_020EA348
Unk_020EA348: ; 0x020EA348
	.incbin "incbin/arm9_rodata.bin", 0x5708, 0x5718 - 0x5708

	.global Unk_020EA358
Unk_020EA358: ; 0x020EA358
	.incbin "incbin/arm9_rodata.bin", 0x5718, 0x5728 - 0x5718

	.global Unk_020EA368
Unk_020EA368: ; 0x020EA368
	.incbin "incbin/arm9_rodata.bin", 0x5728, 0x10



	.data


	.global Unk_02100A80
Unk_02100A80: ; 0x02100A80
	.incbin "incbin/arm9_data.bin", 0x1DA0, 0x1DA4 - 0x1DA0

	.global Unk_02100A84
Unk_02100A84: ; 0x02100A84
	.incbin "incbin/arm9_data.bin", 0x1DA4, 0x1DB4 - 0x1DA4

	.global Unk_02100A94
Unk_02100A94: ; 0x02100A94
	.incbin "incbin/arm9_data.bin", 0x1DB4, 0x1DC4 - 0x1DB4

	.global Unk_02100AA4
Unk_02100AA4: ; 0x02100AA4
	.incbin "incbin/arm9_data.bin", 0x1DC4, 0x1DD4 - 0x1DC4

	.global Unk_02100AB4
Unk_02100AB4: ; 0x02100AB4
	.incbin "incbin/arm9_data.bin", 0x1DD4, 0x1DE4 - 0x1DD4

	.global Unk_02100AC4
Unk_02100AC4: ; 0x02100AC4
	.incbin "incbin/arm9_data.bin", 0x1DE4, 0x10

