	.include "macros/function.inc"
	.include "include/unk_0209747C.inc"

	

	.text


	thumb_func_start sub_0209747C
sub_0209747C: ; 0x0209747C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0x24
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	strb r5, [r4]
	strb r7, [r4, #1]
	add r0, r6, #0
	bl sub_02027560
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02014EC4
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_020507E4
	bl sub_0206A954
	strb r0, [r4, #4]
	mov r1, #0
	strb r1, [r4, #5]
	mov r0, #1
	strb r0, [r4, #2]
	add r0, r6, #0
	strb r1, [r4, #3]
	bl sub_02025E44
	bl sub_02027B50
	str r0, [r4, #8]
	cmp r5, #2
	bne _020974D4
	add r0, r4, #0
	add r0, #0x14
	mov r1, #3
	bl sub_02014A9C
	b _020974E4
_020974D4:
	ldr r0, _020974E8 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_020974DA:
	add r1, r1, #1
	strh r0, [r2, #0x1c]
	add r2, r2, #2
	cmp r1, #2
	blt _020974DA
_020974E4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020974E8: .word 0x0000FFFF
	thumb_func_end sub_0209747C

	thumb_func_start sub_020974EC
sub_020974EC: ; 0x020974EC
	ldr r3, _020974F0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_020974F0: .word sub_020181C4
	thumb_func_end sub_020974EC

	thumb_func_start sub_020974F4
sub_020974F4: ; 0x020974F4
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_020974F4

	thumb_func_start sub_020974F8
sub_020974F8: ; 0x020974F8
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020974F8

	thumb_func_start sub_02097500
sub_02097500: ; 0x02097500
	ldrh r2, [r1]
	strh r2, [r0, #0x14]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x16]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x18]
	ldrh r1, [r1, #6]
	strh r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097500

	thumb_func_start sub_02097514
sub_02097514: ; 0x02097514
	mov r1, #1
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097514

	thumb_func_start sub_02097520
sub_02097520: ; 0x02097520
	mov r1, #1
	strb r1, [r0, #5]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097520

	thumb_func_start sub_02097528
sub_02097528: ; 0x02097528
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_02097528

	thumb_func_start sub_0209752C
sub_0209752C: ; 0x0209752C
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end sub_0209752C

	thumb_func_start sub_02097530
sub_02097530: ; 0x02097530
	ldrh r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02097530

	thumb_func_start sub_02097534
sub_02097534: ; 0x02097534
	ldrh r2, [r0, #0x1c]
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097534

	thumb_func_start sub_02097540
sub_02097540: ; 0x02097540
	add r2, r0, #0
	ldr r3, _0209754C ; =sub_02014CC0
	add r2, #0x14
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0209754C: .word sub_02014CC0
	thumb_func_end sub_02097540

	thumb_func_start sub_02097550
sub_02097550: ; 0x02097550
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_02097550

	thumb_func_start sub_02097554
sub_02097554: ; 0x02097554
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end sub_02097554

	thumb_func_start sub_02097558
sub_02097558: ; 0x02097558
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02097558

	thumb_func_start sub_0209755C
sub_0209755C: ; 0x0209755C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0209755C

	thumb_func_start sub_02097560
sub_02097560: ; 0x02097560
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02097560

	thumb_func_start sub_02097564
sub_02097564: ; 0x02097564
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_02097564

	thumb_func_start sub_02097568
sub_02097568: ; 0x02097568
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_02097568

	thumb_func_start sub_0209756C
sub_0209756C: ; 0x0209756C
	ldrb r3, [r0]
	cmp r3, #0
	beq _0209757C
	cmp r3, #1
	beq _02097582
	cmp r3, #2
	beq _0209758C
	bx lr
_0209757C:
	ldrh r0, [r0, #0x1c]
	strh r0, [r1]
	bx lr
_02097582:
	ldrh r2, [r0, #0x1c]
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #2]
	bx lr
_0209758C:
	ldrh r1, [r0, #0x14]
	strh r1, [r2]
	ldrh r1, [r0, #0x16]
	strh r1, [r2, #2]
	ldrh r1, [r0, #0x18]
	strh r1, [r2, #4]
	ldrh r0, [r0, #0x1a]
	strh r0, [r2, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209756C

	thumb_func_start sub_020975A0
sub_020975A0: ; 0x020975A0
	push {r3, lr}
	ldrb r3, [r0]
	cmp r3, #0
	beq _020975B0
	cmp r3, #1
	beq _020975C0
	cmp r3, #2
	b _020975D8
_020975B0:
	ldrh r1, [r1]
	ldrh r0, [r0, #0x1c]
	cmp r1, r0
	bne _020975BC
	mov r0, #1
	pop {r3, pc}
_020975BC:
	mov r0, #0
	pop {r3, pc}
_020975C0:
	ldrh r3, [r1]
	ldrh r2, [r0, #0x1c]
	cmp r3, r2
	bne _020975D4
	ldrh r1, [r1, #2]
	ldrh r0, [r0, #0x1e]
	cmp r1, r0
	bne _020975D4
	mov r0, #1
	pop {r3, pc}
_020975D4:
	mov r0, #0
	pop {r3, pc}
_020975D8:
	add r0, #0x14
	add r1, r2, #0
	bl sub_02014C88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020975A0

	thumb_func_start sub_020975E4
sub_020975E4: ; 0x020975E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020975A0
	cmp r0, #0
	bne _020975F8
	mov r0, #1
	b _020975FA
_020975F8:
	mov r0, #0
_020975FA:
	strb r0, [r5, #3]
	mov r1, #0
	strb r1, [r5, #2]
	add r2, r5, #0
_02097602:
	ldrh r0, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r2, #0x1c]
	add r2, r2, #2
	cmp r1, #2
	blt _02097602
	ldrh r0, [r6]
	strh r0, [r5, #0x14]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x18]
	ldrh r0, [r6, #6]
	strh r0, [r5, #0x1a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020975E4