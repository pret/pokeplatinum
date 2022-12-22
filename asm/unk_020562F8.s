	.include "macros/function.inc"
	.include "include/unk_020562F8.inc"

	

	.text


	thumb_func_start sub_020562F8
sub_020562F8: ; 0x020562F8
	push {r4, lr}
	ldr r1, _02056320 ; =0x021C07FC
	add r4, r0, #0
	mov r0, #0
	mov r2, #0x4c
	bl MIi_CpuClearFast
	ldr r1, _02056320 ; =0x021C07FC
	add r0, r4, #0
	bl sub_0205642C
	ldr r0, _02056320 ; =0x021C07FC
	bl sub_020564D0
	bl sub_020138EC
	ldr r2, _02056324 ; =0x021C07FC
	str r0, [r2, #0x40]
	str r1, [r2, #0x44]
	pop {r4, pc}
	; .align 2, 0
_02056320: .word 0x021C07FC
_02056324: .word 0x021C07FC
	thumb_func_end sub_020562F8

	thumb_func_start sub_02056328
sub_02056328: ; 0x02056328
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	ldr r4, _0205636C ; =0x021C07FC
	bl sub_0202CD88
	add r5, r0, #0
	bl sub_020138EC
	add r3, r1, #0
	ldr r1, _02056370 ; =0x021C07FC
	add r2, r0, #0
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	bl sub_0201398C
	mov r2, #0xfa
	mov r3, #0
	lsl r2, r2, #2
	sub r2, r0, r2
	sbc r1, r3
	bge _0205635C
	mov r1, #0xfa
	lsl r1, r1, #2
	sub r0, r1, r0
	lsl r0, r0, #1
	b _0205635E
_0205635C:
	mov r0, #0
_0205635E:
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
	nop
_0205636C: .word 0x021C07FC
_02056370: .word 0x021C07FC
	thumb_func_end sub_02056328

	thumb_func_start sub_02056374
sub_02056374: ; 0x02056374
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02056398 ; =0x021C07FC
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020564F4
	cmp r0, #1
	bne _02056394
	ldr r1, _02056398 ; =0x021C07FC
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02056554
	pop {r4, r5, r6, pc}
_02056394:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02056398: .word 0x021C07FC
	thumb_func_end sub_02056374

	thumb_func_start sub_0205639C
sub_0205639C: ; 0x0205639C
	ldr r3, _020563A4 ; =sub_0205664C
	ldr r1, _020563A8 ; =0x021C07FC
	bx r3
	nop
_020563A4: .word sub_0205664C
_020563A8: .word 0x021C07FC
	thumb_func_end sub_0205639C

	thumb_func_start sub_020563AC
sub_020563AC: ; 0x020563AC
	ldr r3, _020563B4 ; =sub_02056624
	ldr r2, _020563B8 ; =0x021C07FC
	bx r3
	nop
_020563B4: .word sub_02056624
_020563B8: .word 0x021C07FC
	thumb_func_end sub_020563AC

	thumb_func_start sub_020563BC
sub_020563BC: ; 0x020563BC
	push {r3, lr}
	ldr r0, _020563CC ; =0x021C07FC
	bl sub_020564B4
	mov r1, #6
	sub r0, r1, r0
	pop {r3, pc}
	nop
_020563CC: .word 0x021C07FC
	thumb_func_end sub_020563BC

	thumb_func_start sub_020563D0
sub_020563D0: ; 0x020563D0
	ldr r3, _020563D8 ; =sub_02056698
	ldr r0, _020563DC ; =0x021C07FC
	bx r3
	nop
_020563D8: .word sub_02056698
_020563DC: .word 0x021C07FC
	thumb_func_end sub_020563D0

	thumb_func_start sub_020563E0
sub_020563E0: ; 0x020563E0
	ldr r3, _020563E8 ; =sub_0205671C
	ldr r0, _020563EC ; =0x021C07FC
	bx r3
	nop
_020563E8: .word sub_0205671C
_020563EC: .word 0x021C07FC
	thumb_func_end sub_020563E0

	thumb_func_start sub_020563F0
sub_020563F0: ; 0x020563F0
	ldr r3, _020563F8 ; =sub_020566AC
	ldr r0, _020563FC ; =0x021C07FC
	bx r3
	nop
_020563F8: .word sub_020566AC
_020563FC: .word 0x021C07FC
	thumb_func_end sub_020563F0

	thumb_func_start sub_02056400
sub_02056400: ; 0x02056400
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _02056410
	ldr r0, _02056428 ; =0x000001ED
	cmp r5, r0
	bls _02056414
_02056410:
	bl sub_02022974
_02056414:
	mov r3, #6
	add r0, r4, #0
	sub r4, r5, #1
	str r3, [sp]
	mov r1, #0x83
	mov r2, #0
	mul r3, r4
	bl sub_02006AFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02056428: .word 0x000001ED
	thumb_func_end sub_02056400

	thumb_func_start sub_0205642C
sub_0205642C: ; 0x0205642C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	str r1, [sp]
	bl sub_02024440
	str r0, [sp, #4]
	mov r0, #4
	bl sub_02073C74
	ldr r5, [sp]
	add r4, r0, #0
	mov r6, #0
	add r7, sp, #8
_02056448:
	ldr r0, [sp]
	add r2, r4, #0
	add r1, r0, r6
	add r1, #0x30
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0202F000
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r5]
	add r1, sp, #8
	bl sub_02056400
	ldrb r0, [r7]
	cmp r0, #0
	beq _0205647A
	b _0205647E
_0205647A:
	ldrb r0, [r7, #1]
	add r0, r0, #4
_0205647E:
	strb r0, [r5, #2]
	ldrb r0, [r7, #3]
	mov r1, #0xb1
	mov r2, #0
	strb r0, [r5, #3]
	ldrb r0, [r7, #2]
	strh r0, [r5, #4]
	add r0, r4, #0
	bl sub_02074470
	strb r0, [r5, #6]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #7]
	add r6, r6, #1
	add r5, #8
	cmp r6, #6
	blt _02056448
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205642C

	thumb_func_start sub_020564B4
sub_020564B4: ; 0x020564B4
	mov r3, #0
	add r2, r3, #0
_020564B8:
	add r1, r0, r2
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #0
	beq _020564C4
	add r3, r3, #1
_020564C4:
	add r2, r2, #1
	cmp r2, #6
	blt _020564B8
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020564B4

	thumb_func_start sub_020564D0
sub_020564D0: ; 0x020564D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	ldr r1, _020564F0 ; =0x0000199A
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0xa
	blo _020564EA
	bl sub_02022974
_020564EA:
	add r0, r5, #5
	str r0, [r4, #0x38]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020564F0: .word 0x0000199A
	thumb_func_end sub_020564D0

	thumb_func_start sub_020564F4
sub_020564F4: ; 0x020564F4
	push {r3, lr}
	ldr r1, [r0, #0x38]
	sub r1, r1, #1
	str r1, [r0, #0x38]
	bne _02056506
	bl sub_020564D0
	mov r0, #1
	pop {r3, pc}
_02056506:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020564F4

	thumb_func_start sub_0205650C
sub_0205650C: ; 0x0205650C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02054F94
	add r4, r0, #0
	cmp r5, #0x20
	blt _02056520
	mov r5, #1
	b _02056522
_02056520:
	mov r5, #0
_02056522:
	cmp r6, #0x20
	bge _0205652A
	mov r0, #0
	b _0205652C
_0205652A:
	mov r0, #2
_0205652C:
	add r5, r5, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAC8
	cmp r0, #0
	beq _0205653E
	add r0, r5, #1
	pop {r4, r5, r6, pc}
_0205653E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DB58
	cmp r0, #0
	beq _0205654E
	add r0, r5, #5
	pop {r4, r5, r6, pc}
_0205654E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205650C

	thumb_func_start sub_02056554
sub_02056554: ; 0x02056554
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	mov r6, #0
	bl sub_0205650C
	add r7, r0, #0
	bne _0205656A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0205656A:
	add r0, r6, #0
	add r1, r5, #0
_0205656E:
	add r2, r5, r0
	add r2, #0x30
	ldrb r2, [r2]
	cmp r2, #0
	bne _02056582
	ldrb r2, [r1, #2]
	cmp r7, r2
	bne _02056582
	ldrb r2, [r1, #3]
	add r6, r6, r2
_02056582:
	add r0, r0, #1
	add r1, #8
	cmp r0, #6
	blt _0205656E
	cmp r6, #0
	bne _02056592
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02056592:
	add r0, r6, #0
	add r0, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _020565A0
	bl sub_02022974
_020565A0:
	add r0, r6, #0
	add r0, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _020565B0
	mov r4, #0
	b _020565E4
_020565B0:
	bl sub_0201D2E8
	add r1, r6, #0
	add r1, #0x14
	add r4, r0, #0
	lsl r1, r1, #0x10
	ldr r0, _02056620 ; =0x0000FFFF
	lsr r1, r1, #0x10
	bl _s32_div_f
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl _s32_div_f
	lsl r0, r0, #0x10
	add r6, #0x14
	lsr r4, r0, #0x10
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	blo _020565E4
	bl sub_02022974
_020565E4:
	cmp r4, #0x14
	bge _020565EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020565EC:
	sub r4, #0x14
	mov r1, #0
	add r0, r5, #0
_020565F2:
	add r2, r5, r1
	add r2, #0x30
	ldrb r2, [r2]
	cmp r2, #0
	bne _02056610
	ldrb r2, [r0, #2]
	cmp r7, r2
	bne _02056610
	ldrb r2, [r0, #3]
	cmp r4, r2
	bge _0205660E
	str r1, [r5, #0x3c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205660E:
	sub r4, r4, r2
_02056610:
	add r1, r1, #1
	add r0, #8
	cmp r1, #6
	blt _020565F2
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02056620: .word 0x0000FFFF
	thumb_func_end sub_02056554

	thumb_func_start sub_02056624
sub_02056624: ; 0x02056624
	push {r4, lr}
	ldr r0, [r1, #0x14]
	add r4, r2, #0
	cmp r0, #4
	beq _02056634
	cmp r0, #5
	beq _0205664A
	b _02056646
_02056634:
	add r0, r4, #0
	bl sub_020564B4
	add r1, r0, #1
	ldr r0, [r4, #0x3c]
	add r0, r4, r0
	add r0, #0x30
	strb r1, [r0]
	pop {r4, pc}
_02056646:
	bl sub_02022974
_0205664A:
	pop {r4, pc}
	thumb_func_end sub_02056624

	thumb_func_start sub_0205664C
sub_0205664C: ; 0x0205664C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	bl sub_02073C74
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02024440
	str r0, [sp]
	add r0, r5, #0
	bl sub_020563BC
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051F38
	add r1, r5, #0
	add r7, r0, #0
	bl sub_02052314
	ldr r0, [sp]
	ldr r1, [r6, #0x3c]
	add r2, r4, #0
	bl sub_0202F000
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0205213C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205664C

	thumb_func_start sub_02056698
sub_02056698: ; 0x02056698
	mov r3, #0
	add r2, r3, #0
_0205669C:
	ldrh r1, [r0, #4]
	add r2, r2, #1
	add r0, #8
	add r3, r3, r1
	cmp r2, #6
	blt _0205669C
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02056698

	thumb_func_start sub_020566AC
sub_020566AC: ; 0x020566AC
	push {r4, r5, r6, r7}
	mov r3, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #1
_020566B6:
	mov r1, #0
_020566B8:
	add r2, r5, r1
	add r2, #0x30
	ldrb r2, [r2]
	cmp r0, r2
	bne _020566F8
	lsl r1, r1, #3
	add r2, r5, r1
	ldrb r1, [r2, #6]
	ldrb r2, [r2, #7]
	cmp r0, #1
	beq _020566E4
	mov r6, ip
	cmp r6, r1
	beq _020566E4
	mov r6, ip
	cmp r6, r2
	beq _020566E4
	cmp r7, r1
	beq _020566E4
	cmp r7, r2
	beq _020566E4
	add r4, #0xc8
_020566E4:
	mov r6, #1
	mov ip, r1
	lsl r6, r1
	add r1, r3, #0
	mov r3, #1
	lsl r3, r2
	orr r1, r6
	add r7, r2, #0
	orr r3, r1
	b _020566FE
_020566F8:
	add r1, r1, #1
	cmp r1, #6
	blt _020566B8
_020566FE:
	add r0, r0, #1
	cmp r0, #7
	blt _020566B6
	cmp r3, #0
	beq _02056716
	mov r0, #1
_0205670A:
	add r1, r3, #0
	tst r1, r0
	beq _02056712
	add r4, #0x32
_02056712:
	lsr r3, r3, #1
	bne _0205670A
_02056716:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_020566AC

	thumb_func_start sub_0205671C
sub_0205671C: ; 0x0205671C
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_0205671C

	.bss


	.global Unk_021C07FC
Unk_021C07FC: ; 0x021C07FC
	.space 0x4C

