	.include "macros/function.inc"
	.include "include/unk_0202E2CC.inc"

	

	.text


	thumb_func_start sub_0202E2CC
sub_0202E2CC: ; 0x0202E2CC
	ldr r0, _0202E2D0 ; =0x00000BC8
	bx lr
	; .align 2, 0
_0202E2D0: .word 0x00000BC8
	thumb_func_end sub_0202E2CC

	thumb_func_start sub_0202E2D4
sub_0202E2D4: ; 0x0202E2D4
	push {r3, lr}
	ldr r2, _0202E2E8 ; =0x00000BC8
	add r1, r0, #0
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_0202E2E8: .word 0x00000BC8
	thumb_func_end sub_0202E2D4

	thumb_func_start sub_0202E2EC
sub_0202E2EC: ; 0x0202E2EC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0xc0
	bl MIi_CpuClearFast
	add r1, r4, #0
	mov r0, #0
	add r1, #0xcc
	mov r2, #0xc0
	bl MIi_CpuClearFast
	mov r1, #0x63
	lsl r1, r1, #2
	mov r0, #0
	add r1, r4, r1
	mov r2, #0xc0
	bl MIi_CpuClearFast
	add r0, r4, #0
	bl sub_0202E35C
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E2EC

	thumb_func_start sub_0202E324
sub_0202E324: ; 0x0202E324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, r1
	ble _0202E334
	sub r0, r0, r1
	str r0, [r4, #4]
	b _0202E354
_0202E334:
	add r0, r2, #0
	mov r1, #0xf
	bl _s32_div_f
	mov r0, #0xf
	sub r1, r0, r1
	str r1, [r4, #4]
	bne _0202E346
	str r0, [r4, #4]
_0202E346:
	mov r1, #0
	strb r1, [r4, #8]
	add r0, r1, #0
_0202E34C:
	strb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _0202E34C
_0202E354:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E324

	thumb_func_start sub_0202E35C
sub_0202E35C: ; 0x0202E35C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0202E374
	add r0, r4, #0
	bl sub_0202E3AC
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E35C

	thumb_func_start sub_0202E374
sub_0202E374: ; 0x0202E374
	ldr r3, _0202E37C ; =sub_02025C84
	strb r1, [r0, #8]
	mov r0, #0x1b
	bx r3
	; .align 2, 0
_0202E37C: .word sub_02025C84
	thumb_func_end sub_0202E374

	thumb_func_start sub_0202E380
sub_0202E380: ; 0x0202E380
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end sub_0202E380

	thumb_func_start sub_0202E384
sub_0202E384: ; 0x0202E384
	push {r3, lr}
	mov r3, #0
_0202E388:
	ldrb r2, [r0, r3]
	cmp r2, #0
	bne _0202E398
	strb r1, [r0, r3]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
_0202E398:
	add r3, r3, #1
	cmp r3, #4
	blt _0202E388
	bl GF_AssertFail
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202E384

	thumb_func_start sub_0202E3AC
sub_0202E3AC: ; 0x0202E3AC
	mov r2, #0
	add r1, r2, #0
_0202E3B0:
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _0202E3B0
	ldr r3, _0202E3C0 ; =sub_02025C84
	mov r0, #0x1b
	bx r3
	nop
_0202E3C0: .word sub_02025C84
	thumb_func_end sub_0202E3AC

	thumb_func_start sub_0202E3C4
sub_0202E3C4: ; 0x0202E3C4
	mov r3, #0
_0202E3C6:
	ldrb r2, [r0, r3]
	cmp r1, r2
	bne _0202E3D0
	mov r0, #1
	bx lr
_0202E3D0:
	add r3, r3, #1
	cmp r3, #4
	blt _0202E3C6
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E3C4

	thumb_func_start sub_0202E3DC
sub_0202E3DC: ; 0x0202E3DC
	mov r2, #0
	add r3, r2, #0
_0202E3E0:
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _0202E3E8
	add r3, r3, #1
_0202E3E8:
	add r2, r2, #1
	cmp r2, #4
	blt _0202E3E0
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E3DC

	thumb_func_start sub_0202E3F4
sub_0202E3F4: ; 0x0202E3F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020138A4
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x10
	ldr r0, [sp]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r3, r3, #8
	orr r0, r3
	ldr r2, [sp, #0xc]
	orr r0, r1
	orr r0, r2
	str r0, [r5, #4]
	strb r4, [r5]
	mov r0, #0
	strb r0, [r5, #1]
	add r5, #8
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x28
	bl MIi_CpuCopyFast
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202E3F4

	thumb_func_start sub_0202E43C
sub_0202E43C: ; 0x0202E43C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202E4DC
	mov r2, #0
	add r3, r0, #0
_0202E44A:
	ldrb r1, [r3]
	cmp r5, r1
	bne _0202E46C
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	cmp r1, #3
	blo _0202E468
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E468:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E46C:
	add r2, r2, #1
	add r3, #0x30
	cmp r2, #4
	blt _0202E44A
	mov r1, #0
	add r3, r0, #0
_0202E478:
	ldrb r2, [r3]
	cmp r2, #0
	bne _0202E490
	mov r2, #0x30
	mul r2, r1
	add r0, r0, r2
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E490:
	add r1, r1, #1
	add r3, #0x30
	cmp r1, #4
	blt _0202E478
	mov r1, #0
	add r3, r0, #0
_0202E49C:
	ldrb r2, [r3, #1]
	cmp r2, #3
	blo _0202E4B4
	mov r2, #0x30
	mul r2, r1
	add r0, r0, r2
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E4B4:
	add r1, r1, #1
	add r3, #0x30
	cmp r1, #4
	blt _0202E49C
	mov r0, #0x1b
	bl sub_02025C84
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202E43C

	thumb_func_start sub_0202E4C8
sub_0202E4C8: ; 0x0202E4C8
	add r0, #8
	bx lr
	thumb_func_end sub_0202E4C8

	thumb_func_start sub_0202E4CC
sub_0202E4CC: ; 0x0202E4CC
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0202E4CC

	thumb_func_start sub_0202E4D0
sub_0202E4D0: ; 0x0202E4D0
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0202E4D0

	thumb_func_start sub_0202E4D4
sub_0202E4D4: ; 0x0202E4D4
	add r0, #0x18
	bx lr
	thumb_func_end sub_0202E4D4

	thumb_func_start sub_0202E4D8
sub_0202E4D8: ; 0x0202E4D8
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E4D8

	thumb_func_start sub_0202E4DC
sub_0202E4DC: ; 0x0202E4DC
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0202E514
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E4F0: ; jump table
	.short _0202E514 - _0202E4F0 - 2 ; case 0
	.short _0202E4FC - _0202E4F0 - 2 ; case 1
	.short _0202E504 - _0202E4F0 - 2 ; case 2
	.short _0202E50A - _0202E4F0 - 2 ; case 3
	.short _0202E510 - _0202E4F0 - 2 ; case 4
	.short _0202E510 - _0202E4F0 - 2 ; case 5
_0202E4FC:
	mov r1, #0x63
	lsl r1, r1, #2
	add r4, r0, r1
	b _0202E514
_0202E504:
	add r4, r0, #0
	add r4, #0xc
	b _0202E514
_0202E50A:
	add r4, r0, #0
	add r4, #0xcc
	b _0202E514
_0202E510:
	bl GF_AssertFail
_0202E514:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202E4DC

	thumb_func_start sub_0202E518
sub_0202E518: ; 0x0202E518
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0202E550
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E52C: ; jump table
	.short _0202E550 - _0202E52C - 2 ; case 0
	.short _0202E546 - _0202E52C - 2 ; case 1
	.short _0202E538 - _0202E52C - 2 ; case 2
	.short _0202E540 - _0202E52C - 2 ; case 3
	.short _0202E54C - _0202E52C - 2 ; case 4
	.short _0202E54C - _0202E52C - 2 ; case 5
_0202E538:
	mov r1, #0x93
	lsl r1, r1, #2
	add r4, r0, r1
	b _0202E550
_0202E540:
	ldr r1, _0202E554 ; =0x000006CC
	add r4, r0, r1
	b _0202E550
_0202E546:
	ldr r1, _0202E558 ; =0x0000090C
	add r4, r0, r1
	b _0202E550
_0202E54C:
	bl GF_AssertFail
_0202E550:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202E554: .word 0x000006CC
_0202E558: .word 0x0000090C
	thumb_func_end sub_0202E518

	thumb_func_start sub_0202E55C
sub_0202E55C: ; 0x0202E55C
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202E55C

	thumb_func_start sub_0202E560
sub_0202E560: ; 0x0202E560
	ldrb r1, [r0, #1]
	cmp r1, #3
	bhs _0202E56A
	add r1, r1, #1
	strb r1, [r0, #1]
_0202E56A:
	ldr r3, _0202E570 ; =sub_02025C84
	mov r0, #0x1b
	bx r3
	; .align 2, 0
_0202E570: .word sub_02025C84
	thumb_func_end sub_0202E560

	thumb_func_start sub_0202E574
sub_0202E574: ; 0x0202E574
	add r0, #8
	bx lr
	thumb_func_end sub_0202E574

	thumb_func_start sub_0202E578
sub_0202E578: ; 0x0202E578
	push {r4, r5, r6, r7}
	mov r5, #0
	add r4, r5, #0
	ldr r6, [sp, #0x10]
	cmp r1, #0
	ble _0202E5B2
_0202E584:
	ldrb r7, [r0]
	cmp r2, r7
	bne _0202E5AA
	ldrb r7, [r0, #1]
	cmp r3, #0
	beq _0202E59C
	cmp r7, #0
	beq _0202E59C
	add r7, r4, #1
	strb r7, [r6, r5]
	add r5, r5, #1
	b _0202E5AA
_0202E59C:
	cmp r3, #0
	bne _0202E5AA
	cmp r7, #0
	bne _0202E5AA
	add r7, r4, #1
	strb r7, [r6, r5]
	add r5, r5, #1
_0202E5AA:
	add r4, r4, #1
	add r0, #0x30
	cmp r4, r1
	blt _0202E584
_0202E5B2:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0202E578

	thumb_func_start sub_0202E5B8
sub_0202E5B8: ; 0x0202E5B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r5, #0
	add r0, r1, #0
	add r4, r5, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x20]
	cmp r0, #0
	ble _0202E60E
_0202E5D0:
	ldrb r2, [r6, #0x18]
	ldr r1, [sp, #4]
	ldrb r0, [r6, #0x19]
	cmp r1, r2
	bne _0202E604
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0202E5F0
	cmp r0, #0
	beq _0202E5F0
	add r0, r4, #1
	bl sub_0202E7D0
	strb r0, [r7, r5]
	add r5, r5, #1
	b _0202E604
_0202E5F0:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0202E604
	cmp r0, #0
	bne _0202E604
	add r0, r4, #1
	bl sub_0202E7D0
	strb r0, [r7, r5]
	add r5, r5, #1
_0202E604:
	ldr r0, [sp]
	add r4, r4, #1
	add r6, #0x48
	cmp r4, r0
	blt _0202E5D0
_0202E60E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202E5B8

	thumb_func_start sub_0202E614
sub_0202E614: ; 0x0202E614
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	cmp r1, #5
	bhi _0202E6A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E62A: ; jump table
	.short _0202E6A4 - _0202E62A - 2 ; case 0
	.short _0202E678 - _0202E62A - 2 ; case 1
	.short _0202E636 - _0202E62A - 2 ; case 2
	.short _0202E658 - _0202E62A - 2 ; case 3
	.short _0202E69C - _0202E62A - 2 ; case 4
	.short _0202E6A0 - _0202E62A - 2 ; case 5
_0202E636:
	cmp r3, #0
	str r4, [sp]
	beq _0202E648
	add r0, #0xc
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E648:
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x10
	add r3, r5, #0
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E658:
	cmp r3, #0
	str r4, [sp]
	beq _0202E66A
	add r0, #0xcc
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E66A:
	ldr r1, _0202E6A8 ; =0x000006CC
	add r3, r5, #0
	add r0, r0, r1
	mov r1, #8
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E678:
	cmp r3, #0
	str r4, [sp]
	beq _0202E68E
	mov r1, #0x63
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E68E:
	ldr r1, _0202E6AC ; =0x0000090C
	add r3, r5, #0
	add r0, r0, r1
	mov r1, #8
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E69C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E6A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E6A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202E6A8: .word 0x000006CC
_0202E6AC: .word 0x0000090C
	thumb_func_end sub_0202E614

	thumb_func_start sub_0202E6B0
sub_0202E6B0: ; 0x0202E6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_0202E614
	cmp r0, #0
	beq _0202E6E2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202E6E2:
	mov r3, #1
	str r3, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202E614
	cmp r0, #0
	beq _0202E73E
	add r0, sp, #8
	ldrb r0, [r0]
	mov r7, #0
	cmp r0, #0
	beq _0202E738
	add r5, sp, #8
_0202E704:
	ldrb r2, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202E768
	ldrb r0, [r0, #1]
	cmp r0, #3
	blo _0202E71A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0202E71A:
	add r7, r7, #1
	add r5, r5, #1
	cmp r7, #4
	bge _0202E726
	mov r1, #1
	b _0202E728
_0202E726:
	mov r1, #0
_0202E728:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0202E732
	mov r0, #1
	b _0202E734
_0202E732:
	mov r0, #0
_0202E734:
	tst r0, r1
	bne _0202E704
_0202E738:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202E73E:
	mov r5, #1
_0202E740:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202E768
	ldrb r1, [r0]
	cmp r1, #0
	beq _0202E756
	ldrb r0, [r0, #1]
	cmp r0, #3
	blo _0202E75C
_0202E756:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0202E75C:
	add r5, r5, #1
	cmp r5, #4
	ble _0202E740
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202E6B0

	thumb_func_start sub_0202E768
sub_0202E768: ; 0x0202E768
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0202E7C0
	cmp r0, #1
	beq _0202E77E
	bl GF_AssertFail
_0202E77E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202E4DC
	mov r1, #0x80
	bic r4, r1
	sub r2, r4, #1
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E768

	thumb_func_start sub_0202E794
sub_0202E794: ; 0x0202E794
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0202E7C0
	cmp r0, #0
	beq _0202E7AA
	bl GF_AssertFail
_0202E7AA:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202E518
	mov r1, #0x80
	bic r4, r1
	sub r2, r4, #1
	mov r1, #0x48
	mul r1, r2
	add r0, r0, r1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E794

	thumb_func_start sub_0202E7C0
sub_0202E7C0: ; 0x0202E7C0
	mov r1, #0x80
	tst r0, r1
	bne _0202E7CA
	mov r0, #1
	bx lr
_0202E7CA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E7C0

	thumb_func_start sub_0202E7D0
sub_0202E7D0: ; 0x0202E7D0
	mov r1, #0x80
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E7D0

	thumb_func_start sub_0202E7D8
sub_0202E7D8: ; 0x0202E7D8
	ldr r1, _0202E7E0 ; =0x00000B4C
	add r0, r0, r1
	bx lr
	nop
_0202E7E0: .word 0x00000B4C
	thumb_func_end sub_0202E7D8

	thumb_func_start sub_0202E7E4
sub_0202E7E4: ; 0x0202E7E4
	ldr r1, _0202E7EC ; =0x00000B56
	add r0, r0, r1
	bx lr
	nop
_0202E7EC: .word 0x00000B56
	thumb_func_end sub_0202E7E4

	thumb_func_start sub_0202E7F0
sub_0202E7F0: ; 0x0202E7F0
	ldr r1, _0202E7F8 ; =0x00000B7A
	add r0, r0, r1
	bx lr
	nop
_0202E7F8: .word 0x00000B7A
	thumb_func_end sub_0202E7F0

	thumb_func_start sub_0202E7FC
sub_0202E7FC: ; 0x0202E7FC
	ldr r1, _0202E804 ; =0x00000B7C
	add r0, r0, r1
	bx lr
	nop
_0202E804: .word 0x00000B7C
	thumb_func_end sub_0202E7FC

	thumb_func_start sub_0202E808
sub_0202E808: ; 0x0202E808
	mov r1, #0x2e
	lsl r1, r1, #6
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0202E808

	thumb_func_start sub_0202E810
sub_0202E810: ; 0x0202E810
	ldr r1, _0202E818 ; =0x00000B88
	add r0, r0, r1
	bx lr
	nop
_0202E818: .word 0x00000B88
	thumb_func_end sub_0202E810

	thumb_func_start sub_0202E81C
sub_0202E81C: ; 0x0202E81C
	ldr r1, _0202E824 ; =0x00000BA6
	add r0, r0, r1
	bx lr
	nop
_0202E824: .word 0x00000BA6
	thumb_func_end sub_0202E81C

	thumb_func_start sub_0202E828
sub_0202E828: ; 0x0202E828
	ldr r1, _0202E830 ; =0x00000BBC
	add r0, r0, r1
	bx lr
	nop
_0202E830: .word 0x00000BBC
	thumb_func_end sub_0202E828

	thumb_func_start sub_0202E834
sub_0202E834: ; 0x0202E834
	ldr r1, _0202E83C ; =0x00000BC4
	add r0, r0, r1
	bx lr
	nop
_0202E83C: .word 0x00000BC4
	thumb_func_end sub_0202E834