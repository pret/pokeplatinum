	.include "macros/function.inc"
	.include "include/unk_0206F314.inc"

	

	.text


	thumb_func_start sub_0206F314
sub_0206F314: ; 0x0206F314
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	mov r0, #3
	mov r1, #0x50
	lsl r2, r0, #0xd
	ldr r6, [r5, #0xc]
	bl sub_02017FC8
	mov r1, #0x2d
	mov r0, #0x50
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x2d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x50
	str r0, [r4, #0]
	ldr r0, [sp]
	mov r1, #3
	bl _s32_div_f
	strb r1, [r4, #0x16]
	ldr r0, [sp]
	mov r1, #3
	bl _s32_div_f
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	bl sub_0202E840
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x16]
	bl sub_0202E84C
	strb r0, [r4, #0x19]
	add r0, r4, #0
	add r0, #0xcc
	str r5, [r0, #0]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0202E8C0
	mov r1, #0x2a
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_02025E44
	bl sub_02027AC0
	strh r0, [r4, #0x1a]
	add r0, r6, #0
	bl sub_02025E44
	bl sub_02027B50
	strh r0, [r4, #0x1c]
	str r4, [r7, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206F314

	thumb_func_start sub_0206F3A0
sub_0206F3A0: ; 0x0206F3A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ble _0206F426
	ldr r0, [sp, #4]
	str r0, [sp]
_0206F3B4:
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	ldr r0, [sp]
	mov r6, #0
	add r1, r2, r0
	ldr r0, [r2, r0]
	add r7, r6, #0
	cmp r0, #0
	ble _0206F414
	add r5, r6, #0
_0206F3CA:
	add r0, r1, #4
	add r1, r0, r5
	ldrb r0, [r1, #6]
	mov ip, r0
	cmp r0, #0xff
	beq _0206F3FE
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0206F3FE
	ldrb r2, [r4, #0x17]
	ldrb r3, [r4, #0x19]
	mov r1, #0xd
	mul r1, r2
	add r2, r3, r1
	ldr r1, [sp, #4]
	mov r0, #0x2a
	add r1, r1, r2
	mov r2, ip
	lsl r0, r0, #4
	sub r2, r2, r6
	lsl r2, r2, #0x18
	ldr r0, [r4, r0]
	lsr r2, r2, #0x18
	bl sub_0202E8D4
	add r6, r6, #1
_0206F3FE:
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, r1, r0
	ldr r0, [r2, r0]
	add r7, r7, #1
	add r5, #8
	cmp r7, r0
	blt _0206F3CA
_0206F414:
	ldr r0, [sp]
	ldrb r1, [r4, #0x18]
	add r0, #0x3c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	blt _0206F3B4
_0206F426:
	add r0, r4, #0
	ldr r5, [r4, #0]
	bl sub_020181C4
	mov r2, #0x2d
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_0201807C
	mov r0, #0xc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206F3A0

	thumb_func_start sub_0206F448
sub_0206F448: ; 0x0206F448
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206F7F8
	add r0, r4, #0
	bl sub_0206FA08
	add r0, r4, #0
	bl sub_0206FB38
	add r0, r4, #0
	bl sub_0206FCC4
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206F448

	thumb_func_start sub_0206F468
sub_0206F468: ; 0x0206F468
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206FD94
	add r0, r4, #0
	bl sub_0206FC4C
	add r0, r4, #0
	bl sub_0206FAC0
	add r0, r4, #0
	bl sub_0206F9D4
	mov r0, #0xb
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206F468

	thumb_func_start sub_0206F488
sub_0206F488: ; 0x0206F488
	push {r3, lr}
	ldrh r1, [r0, #0x22]
	ldrh r2, [r0, #0x24]
	bl sub_0206FDC0
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F488

	thumb_func_start sub_0206F498
sub_0206F498: ; 0x0206F498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl sub_02001288
	add r4, r0, #0
	ldr r0, _0206F500 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0206F4C0
	ldr r0, _0206F504 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl sub_0206FF10
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0206F4C0:
	mov r0, #1
	tst r0, r1
	bne _0206F4CA
	mov r0, #3
	pop {r3, r4, r5, pc}
_0206F4CA:
	ldr r0, _0206F504 ; =0x000005DC
	bl sub_02005748
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _0206F4E4
	add r0, r1, #1
	cmp r4, r0
	beq _0206F4E4
	lsr r0, r1, #0x10
	cmp r4, r0
	bne _0206F4EE
_0206F4E4:
	add r0, r5, #0
	bl sub_0206FF10
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0206F4EE:
	strb r4, [r5, #0x1f]
	mov r0, #0
	strh r0, [r5, #0x28]
	add r0, r5, #0
	bl sub_0206FF10
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_0206F500: .word 0x021BF67C
_0206F504: .word 0x000005DC
	thumb_func_end sub_0206F498

	thumb_func_start sub_0206F508
sub_0206F508: ; 0x0206F508
	push {r3, lr}
	ldrh r1, [r0, #0x28]
	bl sub_020701DC
	mov r0, #5
	pop {r3, pc}
	thumb_func_end sub_0206F508

	thumb_func_start sub_0206F514
sub_0206F514: ; 0x0206F514
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0206F54C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0206F532
	ldr r0, _0206F550 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02070288
	mov r0, #2
	pop {r4, pc}
_0206F532:
	mov r0, #4
	tst r0, r1
	beq _0206F548
	ldr r0, _0206F550 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0206FFE4
	mov r0, #6
	pop {r4, pc}
_0206F548:
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_0206F54C: .word 0x021BF67C
_0206F550: .word 0x000005DC
	thumb_func_end sub_0206F514

	thumb_func_start sub_0206F554
sub_0206F554: ; 0x0206F554
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0206F624 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0206F572
	ldr r0, _0206F628 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02070010
	mov r0, #5
	pop {r4, pc}
_0206F572:
	mov r0, #1
	tst r0, r1
	beq _0206F5B6
	ldr r0, _0206F628 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xb
	lsl r0, r0, #6
	ldrb r2, [r4, #0x1f]
	mov r1, #0x3c
	ldr r3, [r4, r0]
	mul r1, r2
	add r1, r3, r1
	add r3, r1, #4
	ldrh r1, [r4, #0x28]
	add r2, r4, r1
	add r1, r0, #0
	add r1, #8
	ldrb r1, [r2, r1]
	lsl r1, r1, #3
	add r2, r3, r1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	ldrb r0, [r0, #6]
	cmp r0, #0xff
	bne _0206F5B2
	mov r0, #8
	pop {r4, pc}
_0206F5B2:
	mov r0, #7
	pop {r4, pc}
_0206F5B6:
	mov r0, #0x40
	tst r0, r1
	beq _0206F5E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0206F5E4
	ldr r0, _0206F628 ; =0x000005DC
	bl sub_02005748
	ldrh r0, [r4, #0x28]
	mov r1, #0x7e
	sub r0, r0, #1
	strh r0, [r4, #0x28]
	ldrh r2, [r4, #0x28]
	mov r0, #0xa6
	lsl r0, r0, #2
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0206F5E4:
	ldr r0, _0206F624 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _0206F61E
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	ldrh r1, [r4, #0x28]
	sub r0, r0, #1
	cmp r1, r0
	bge _0206F61E
	ldr r0, _0206F628 ; =0x000005DC
	bl sub_02005748
	ldrh r0, [r4, #0x28]
	mov r1, #0x7e
	add r0, r0, #1
	strh r0, [r4, #0x28]
	ldrh r2, [r4, #0x28]
	mov r0, #0xa6
	lsl r0, r0, #2
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0206F61E:
	mov r0, #6
	pop {r4, pc}
	nop
_0206F624: .word 0x021BF67C
_0206F628: .word 0x000005DC
	thumb_func_end sub_0206F554

	thumb_func_start sub_0206F62C
sub_0206F62C: ; 0x0206F62C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _0206F650 ; =0x020F024C
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, _0206F654 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	add r4, #0xc8
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0206F650: .word 0x020F024C
_0206F654: .word 0x000003D9
	thumb_func_end sub_0206F62C

	thumb_func_start sub_0206F658
sub_0206F658: ; 0x0206F658
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bgt _0206F67C
	cmp r1, #0
	blt _0206F73E
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0206F674: ; jump table
	.short _0206F682 - _0206F674 - 2 ; case 0
	.short _0206F6BE - _0206F674 - 2 ; case 1
	.short _0206F6D6 - _0206F674 - 2 ; case 2
	.short _0206F6FC - _0206F674 - 2 ; case 3
_0206F67C:
	cmp r1, #0xff
	beq _0206F722
	b _0206F73E
_0206F682:
	add r0, #0xe4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r4, #0x1a]
	add r2, r4, #0
	add r2, #0x98
	str r0, [sp, #4]
	ldr r0, _0206F744 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r2, #0]
	add r0, #0xe4
	bl sub_0201D78C
	strb r0, [r4, #0x1e]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D41C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0206F73E
_0206F6BE:
	ldrb r0, [r4, #0x1e]
	bl sub_0201D724
	cmp r0, #0
	bne _0206F73E
	add r0, r4, #0
	bl sub_0206F62C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0206F73E
_0206F6D6:
	add r0, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0206F6EE
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0206F6F6
	b _0206F73E
_0206F6EE:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0206F73E
_0206F6F6:
	mov r0, #0xff
	str r0, [r4, #0xc]
	b _0206F73E
_0206F6FC:
	mov r1, #0xb1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0
	strh r2, [r1, #4]
	mov r1, #1
	bl sub_02070050
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D41C
	mov r0, #0
	str r0, [r4, #0xc]
	add sp, #0x10
	mov r0, #6
	pop {r4, pc}
_0206F722:
	add r0, r4, #0
	bl sub_0206FFB4
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D41C
	mov r0, #0
	str r0, [r4, #0xc]
	add sp, #0x10
	mov r0, #6
	pop {r4, pc}
_0206F73E:
	mov r0, #7
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0206F744: .word 0x0001020F
	thumb_func_end sub_0206F658

	thumb_func_start sub_0206F748
sub_0206F748: ; 0x0206F748
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0206F75E
	cmp r0, #1
	beq _0206F7A2
	cmp r0, #2
	beq _0206F7B4
	b _0206F7E0
_0206F75E:
	ldr r0, _0206F7E8 ; =0x000005F2
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xe4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r4, #0x1a]
	add r2, r4, #0
	add r2, #0x9c
	str r0, [sp, #4]
	ldr r0, _0206F7EC ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r2, #0]
	add r0, #0xe4
	bl sub_0201D78C
	strb r0, [r4, #0x1e]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D41C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0206F7E0
_0206F7A2:
	ldrb r0, [r4, #0x1e]
	bl sub_0201D724
	cmp r0, #0
	bne _0206F7E0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0206F7E0
_0206F7B4:
	ldr r0, _0206F7F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0206F7E0
	ldr r0, _0206F7F4 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_0206FFB4
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D41C
	mov r0, #0
	str r0, [r4, #0xc]
	add sp, #0x10
	mov r0, #6
	pop {r4, pc}
_0206F7E0:
	mov r0, #8
	add sp, #0x10
	pop {r4, pc}
	nop
_0206F7E8: .word 0x000005F2
_0206F7EC: .word 0x0001020F
_0206F7F0: .word 0x021BF67C
_0206F7F4: .word 0x000005DC
	thumb_func_end sub_0206F748

	thumb_func_start sub_0206F7F8
sub_0206F7F8: ; 0x0206F7F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r2, [r4, #0x18]
	add r5, r1, #0
	mov r1, #0x3c
	ldr r0, [r4, #0]
	mul r1, r2
	bl sub_02018144
	mov r1, #0xb
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldrb r3, [r4, #0x18]
	mov r2, #0x3c
	mov r1, #0
	mul r2, r3
	bl MI_CpuFill8
	ldrb r1, [r4, #0x16]
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_0202ED8C
	mov r1, #0xa9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bgt _0206F83C
	b _0206F9D0
_0206F83C:
	ldr r0, [sp, #0x10]
	str r4, [sp, #8]
	str r0, [sp, #4]
	add r5, r0, #0
_0206F844:
	ldrb r2, [r4, #0x17]
	ldrb r3, [r4, #0x19]
	mov r1, #0xd
	mul r1, r2
	mov r0, #0x2a
	add r2, r3, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, r1, r2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0]
	bl sub_0202EE10
	mov r1, #0xaa
	mov r3, #0
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r2, #0
	ldr r0, [r0, r1]
	mov ip, r3
	str r0, [sp, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0206F8AA
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r3, r1, #0
	add r2, r0, #4
	ldr r0, [sp, #4]
	add r3, #0x18
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	add r0, r0, r5
	str r2, [r0, #4]
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	mov r2, #1
	add r0, r0, r5
	strh r2, [r0, #8]
	ldr r3, [r4, r3]
	mov r0, #0xff
	add r3, r3, r5
	add r1, #0x18
	strb r0, [r3, #0xa]
	ldr r0, [r4, r1]
	str r2, [r0, r5]
	b _0206F9B4
_0206F8AA:
	add r2, r3, #0
	cmp r0, #0
	ble _0206F96C
	ldr r0, [sp, #0xc]
	str r0, [sp]
	add r7, r0, #4
_0206F8B6:
	mov r0, ip
	cmp r0, #0
	bne _0206F930
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r6, [r1, #8]
	ldr r1, [sp]
	ldr r1, [r1, #8]
	cmp r6, r1
	blo _0206F930
	add r6, r0, #4
	ldr r0, [sp, #4]
	lsl r1, r3, #3
	add r0, r6, r0
	mov r6, #0xb
	lsl r6, r6, #6
	ldr r6, [r4, r6]
	add r3, r3, #1
	add r6, r5, r6
	add r6, r1, r6
	str r0, [r6, #4]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r6, r1, r0
	mov r0, #1
	strh r0, [r6, #8]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r6, r3, #3
	add r0, r5, r0
	add r1, r1, r0
	mov r0, #0xff
	strb r0, [r1, #0xa]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r0, r6, r0
	str r7, [r0, #4]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r1, r6, r0
	mov r0, #1
	strh r0, [r1, #8]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r0, r6, r0
	strb r2, [r0, #0xa]
	mov r0, #1
	mov ip, r0
	b _0206F958
_0206F930:
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r6, r3, #3
	add r0, r5, r0
	add r0, r6, r0
	str r7, [r0, #4]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r1, r6, r0
	mov r0, #1
	strh r0, [r1, #8]
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, r5, r0
	add r0, r6, r0
	strb r2, [r0, #0xa]
_0206F958:
	ldr r0, [sp]
	add r2, r2, #1
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r3, r3, #1
	ldr r0, [r0, #0]
	add r7, #0xc
	cmp r2, r0
	blt _0206F8B6
_0206F96C:
	mov r0, ip
	cmp r0, #0
	bne _0206F9A6
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	lsl r2, r3, #3
	add r3, r1, #4
	ldr r1, [sp, #4]
	add r1, r3, r1
	add r3, r0, #0
	add r3, #0x1c
	ldr r3, [r4, r3]
	add r3, r3, r5
	add r3, r2, r3
	str r1, [r3, #4]
	add r3, r0, #0
	add r3, #0x1c
	ldr r3, [r4, r3]
	mov r1, #1
	add r3, r3, r5
	add r3, r2, r3
	strh r1, [r3, #8]
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0xff
	add r0, r0, r5
	add r0, r2, r0
	strb r1, [r0, #0xa]
_0206F9A6:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0]
	add r1, r0, #1
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r1, [r0, r5]
_0206F9B4:
	ldr r0, [sp, #8]
	ldrb r1, [r4, #0x18]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r5, #0x3c
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r1
	bge _0206F9D0
	b _0206F844
_0206F9D0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206F7F8

	thumb_func_start sub_0206F9D4
sub_0206F9D4: ; 0x0206F9D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x18]
	mov r4, #0
	add r0, r0, #1
	cmp r0, #0
	ble _0206F9FA
	mov r7, #0xa9
	add r5, r6, #0
	lsl r7, r7, #2
_0206F9E8:
	ldr r0, [r5, r7]
	bl sub_0202EE8C
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	add r5, r5, #4
	add r0, r0, #1
	cmp r4, r0
	blt _0206F9E8
_0206F9FA:
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206F9D4

	thumb_func_start sub_0206FA08
sub_0206FA08: ; 0x0206FA08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r2, #0x85
	ldr r3, [r5, #0]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	str r0, [r5, #0x2c]
	ldr r2, [r5, #0]
	mov r0, #2
	mov r1, #0x4c
	bl sub_0200B368
	str r0, [r5, #0x30]
	ldr r1, [r5, #0]
	mov r0, #0x4c
	bl sub_02023790
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x2c]
	mov r1, #0xd
	bl sub_0200B1EC
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	mov r1, #0x16
	bl sub_0200B1EC
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x2c]
	mov r1, #0x24
	bl sub_0200B1EC
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x2c]
	mov r1, #0xe
	bl sub_0200B1EC
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0206FA88
	add r6, r5, #0
_0206FA64:
	ldrb r1, [r5, #0x19]
	ldr r0, [r5, #0x2c]
	add r1, r1, r4
	bl sub_0200B1EC
	str r0, [r6, #0x64]
	ldrb r1, [r5, #0x19]
	ldr r0, [r5, #0x2c]
	add r1, #0x17
	add r1, r1, r4
	bl sub_0200B1EC
	str r0, [r6, #0x7c]
	ldrb r0, [r5, #0x18]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _0206FA64
_0206FA88:
	mov r4, #0
	add r6, r5, #0
_0206FA8C:
	add r1, r4, #0
	ldr r0, [r5, #0x2c]
	add r1, #0xf
	bl sub_0200B1EC
	str r0, [r6, #0x48]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #7
	blt _0206FA8C
	mov r4, #0
	add r6, r5, #0
_0206FAA4:
	add r1, r4, #0
	ldr r0, [r5, #0x2c]
	add r1, #0x25
	bl sub_0200B1EC
	add r1, r6, #0
	add r1, #0x94
	add r4, r4, #1
	add r6, r6, #4
	str r0, [r1, #0]
	cmp r4, #3
	blt _0206FAA4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206FA08

	thumb_func_start sub_0206FAC0
sub_0206FAC0: ; 0x0206FAC0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0206FAC8:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0206FAC8
	mov r5, #0
	add r4, r6, #0
_0206FADE:
	ldr r0, [r4, #0x48]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #7
	blt _0206FADE
	ldrb r0, [r6, #0x18]
	mov r5, #0
	cmp r0, #0
	ble _0206FB0C
	add r4, r6, #0
_0206FAF6:
	ldr r0, [r4, #0x64]
	bl sub_020237BC
	ldr r0, [r4, #0x7c]
	bl sub_020237BC
	ldrb r0, [r6, #0x18]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0206FAF6
_0206FB0C:
	ldr r0, [r6, #0x44]
	bl sub_020237BC
	ldr r0, [r6, #0x40]
	bl sub_020237BC
	ldr r0, [r6, #0x3c]
	bl sub_020237BC
	ldr r0, [r6, #0x38]
	bl sub_020237BC
	ldr r0, [r6, #0x34]
	bl sub_020237BC
	ldr r0, [r6, #0x30]
	bl sub_0200B3F0
	ldr r0, [r6, #0x2c]
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206FAC0

	thumb_func_start sub_0206FB38
sub_0206FB38: ; 0x0206FB38
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r1, #0xad
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r1, r1, #6
	mov r2, #0
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0201C3C0
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0201A008
	strh r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0201A008
	strh r0, [r4, #0x12]
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	ldrh r0, [r4, #0x1c]
	ldr r2, _0206FC40 ; =0x000003E2
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r3, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0206FC44 ; =0x000003D9
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0206FC44 ; =0x000003D9
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0x1a
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	mov r1, #6
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #6
	bl sub_02002E98
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _0206FC48 ; =0x0000036D
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0xe4
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
	add r4, #0xe4
	add r0, r4, #0
	mov r1, #0xff
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0206FC40: .word 0x000003E2
_0206FC44: .word 0x000003D9
_0206FC48: .word 0x0000036D
	thumb_func_end sub_0206FB38

	thumb_func_start sub_0206FC4C
sub_0206FC4C: ; 0x0206FC4C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0xe4
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0xe4
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xe4
	bl sub_0201A8FC
	mov r1, #0xad
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r1, r1, #6
	mov r2, #0
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0201C3C0
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	ldrh r1, [r4, #0x10]
	mov r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	ldrh r1, [r4, #0x12]
	mov r0, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0206FC4C

	thumb_func_start sub_0206FCC4
sub_0206FCC4: ; 0x0206FCC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _0206FD88 ; =0x020F0260
	add r3, sp, #0xc
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x4d
	lsl r0, r0, #2
	add r1, r2, #0
	ldr r3, [r6, #0]
	add r0, r6, r0
	mov r2, #2
	bl ov5_021D3190
	ldr r1, [r6, #0]
	mov r0, #0x82
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0206FD8C ; =0x000034D8
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r6, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov5_021D32E8
	ldr r0, _0206FD8C ; =0x000034D8
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r6, r0
	mov r2, #2
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0206FD8C ; =0x000034D8
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r6, r0
	mov r2, #3
	mov r3, #0
	bl ov5_021D339C
	mov r2, #1
	ldr r0, _0206FD8C ; =0x000034D8
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r6, r0
	add r1, r4, #0
	mov r3, #0
	bl ov5_021D3414
	add r0, r4, #0
	bl sub_02006CA8
	ldr r4, _0206FD90 ; =0x020F0300
	mov r7, #0
	add r5, r6, #0
_0206FD5C:
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r6, r0
	add r1, r4, #0
	bl ov5_021D3584
	mov r1, #0xa6
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r7, #2
	blt _0206FD5C
	add r0, r1, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0206FD88: .word 0x020F0260
_0206FD8C: .word 0x000034D8
_0206FD90: .word 0x020F0300
	thumb_func_end sub_0206FCC4

	thumb_func_start sub_0206FD94
sub_0206FD94: ; 0x0206FD94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0xa6
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0206FDA0:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0206FDAA
	bl sub_0200D0F4
_0206FDAA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0206FDA0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov5_021D375C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206FD94

	thumb_func_start sub_0206FDC0
sub_0206FDC0: ; 0x0206FDC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x14]
	add r5, r0, #0
	str r2, [sp, #0x18]
	ldrb r0, [r5, #0x18]
	ldr r1, [r5, #0]
	add r7, r0, #1
	add r0, r7, #0
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	lsl r0, r7, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #0x10]
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0xd4
	mov r3, #4
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0xff
	bl sub_0201ADA4
	ldrb r0, [r5, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _0206FE2C
	add r4, r5, #0
_0206FE14:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x64]
	add r2, r6, #0
	bl sub_02013A6C
	ldrb r0, [r5, #0x18]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0206FE14
_0206FE2C:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x38]
	ldr r2, _0206FEF8 ; =0x0000FFFF
	bl sub_02013A6C
	add r1, r5, #0
	ldr r0, _0206FEFC ; =0x020F02B0
	add r1, #0xa0
	mov r2, #0x20
	bl MI_CpuCopy8
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xd4
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xbc
	str r5, [r0, #0]
	add r0, r5, #0
	add r0, #0xb0
	strh r7, [r0]
	add r0, r5, #0
	add r0, #0xb7
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	add r0, r5, #0
	add r0, #0xb7
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, _0206FF00 ; =sub_0206FF60
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r3, [r5, #0]
	add r0, r5, #0
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, #0xa0
	lsr r3, r3, #0x18
	bl sub_0200112C
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r5, #0
	ldr r2, _0206FF04 ; =0x000003D9
	add r0, #0xd4
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	ldr r2, _0206FF08 ; =0x000003E2
	add r0, #0xe4
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0xe4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldr r0, _0206FF0C ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x3c]
	add r0, #0xe4
	mov r1, #1
	bl sub_0201D78C
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D3F4
	add r5, #0xd0
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0206FEF8: .word 0x0000FFFF
_0206FEFC: .word 0x020F02B0
_0206FF00: .word sub_0206FF60
_0206FF04: .word 0x000003D9
_0206FF08: .word 0x000003E2
_0206FF0C: .word 0x0001020F
	thumb_func_end sub_0206FDC0

	thumb_func_start sub_0206FF10
sub_0206FF10: ; 0x0206FF10
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc0
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x22
	add r2, #0x24
	bl sub_02001384
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xd4
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201A8FC
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r4, #0xd0
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0201C3C0
	pop {r4, pc}
	thumb_func_end sub_0206FF10

	thumb_func_start sub_0206FF60
sub_0206FF60: ; 0x0206FF60
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x13
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001504
	add r6, r0, #0
	cmp r4, #0
	bne _0206FF7A
	ldr r0, _0206FFB0 ; =0x000005DC
	bl sub_02005748
_0206FF7A:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, r5, #0
	mov r1, #2
	bl sub_02001504
	add r2, sp, #0
	ldrh r3, [r2]
	ldrh r2, [r2, #2]
	mov r0, #0xa6
	lsl r0, r0, #2
	add r2, r3, r2
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x7e
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0206FFB0: .word 0x000005DC
	thumb_func_end sub_0206FF60

	thumb_func_start sub_0206FFB4
sub_0206FFB4: ; 0x0206FFB4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0xe4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldr r0, _0206FFE0 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	str r3, [sp, #0xc]
	add r4, #0x94
	ldr r2, [r4, #0]
	add r0, #0xe4
	mov r1, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0206FFE0: .word 0x0001020F
	thumb_func_end sub_0206FFB4

	thumb_func_start sub_0206FFE4
sub_0206FFE4: ; 0x0206FFE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206FFB4
	ldrh r2, [r4, #0x28]
	mov r0, #0xa6
	lsl r0, r0, #2
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x7e
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r4, pc}
	thumb_func_end sub_0206FFE4

	thumb_func_start sub_02070010
sub_02070010: ; 0x02070010
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0xe4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldr r0, _0207004C ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldrb r2, [r4, #0x1f]
	add r0, r4, #0
	add r0, #0xe4
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x7c]
	mov r1, #1
	bl sub_0201D78C
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0207004C: .word 0x0001020F
	thumb_func_end sub_02070010

	thumb_func_start sub_02070050
sub_02070050: ; 0x02070050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0x10]
	mov r1, #0xb
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	ldrb r0, [r4, #0x1f]
	str r1, [sp, #0x24]
	mov r1, #0x3c
	mul r1, r0
	str r1, [sp, #0x28]
	ldrb r1, [r4, #0x16]
	lsl r0, r0, #3
	lsl r2, r1, #2
	ldr r1, _020701D4 ; =0x020F0254
	ldr r1, [r1, r2]
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0xd4
	mov r1, #0xff
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0
	add r1, r0, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	ldr r1, [r2, r1]
	cmp r1, #0
	ble _02070196
	ldr r1, [sp, #0x28]
	add r7, r2, r1
	add r1, r0, #0
	str r1, [sp, #0x30]
	add r1, r4, #0
	str r1, [sp, #0x2c]
	add r1, #0xd4
	str r1, [sp, #0x2c]
_020700A6:
	ldrh r1, [r7, #8]
	cmp r1, #0
	beq _02070182
	ldr r1, [r7, #4]
	ldr r5, [r1, #4]
	ldr r1, [sp, #0x14]
	ldr r1, [r1, #0]
	cmp r5, r1
	bls _020700BA
	add r5, r1, #0
_020700BA:
	cmp r5, r0
	bge _020700C4
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020700C4:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	mov r3, #1
	bl sub_0200B60C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r7, #4]
	ldr r0, [r4, #0x30]
	ldr r2, [r2, #8]
	mov r1, #1
	mov r3, #2
	bl sub_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x44]
	bl sub_0200C388
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020701D8 ; =0x0001020F
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [r4, #0x34]
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x14]
	ldr r0, [r4, #0x30]
	ldrh r3, [r3, #4]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B60C
	ldr r2, [sp, #0x14]
	ldr r0, [r4, #0x30]
	ldrh r2, [r2, #6]
	ldr r1, [r4, #0x34]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0xc]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r4, #0x34]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	ldr r0, [sp, #0x30]
	mov r3, #0xb8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020701D8 ; =0x0001020F
	mov r6, ip
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [r4, #0x34]
	mov r1, #0
	sub r3, r3, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r2, r4, r0
	mov r0, #0xb2
	lsl r0, r0, #2
	strb r1, [r2, r0]
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	add r1, #0x10
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x18]
	add r1, r1, #1
	str r1, [sp, #0x18]
	cmp r1, #6
	bge _02070196
_02070182:
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r1, r1, #1
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x28]
	add r7, #8
	ldr r2, [r2, r1]
	ldr r1, [sp, #0x20]
	cmp r1, r2
	blt _020700A6
_02070196:
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201A954
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x21
	strb r0, [r1]
	ldrh r1, [r4, #0x28]
	cmp r1, #0
	beq _020701BA
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r1, r0
	blt _020701BA
	sub r0, r1, #1
	strh r0, [r4, #0x28]
_020701BA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _020701CA
	add r0, r4, #0
	bl sub_0206FFE4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_020701CA:
	add r0, r4, #0
	bl sub_02070010
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020701D4: .word 0x020F0254
_020701D8: .word 0x0001020F
	thumb_func_end sub_02070050

	thumb_func_start sub_020701DC
sub_020701DC: ; 0x020701DC
	push {r3, r4, lr}
	sub sp, #0x14
	mov r2, #1
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r4, #0
	str r2, [sp, #0x10]
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0xd4
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, #0
	ldr r2, _0207027C ; =0x000003D9
	add r0, #0xd4
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0
	bl sub_02070050
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0xe
	str r0, [sp]
	mov r3, #8
	add r1, r4, #0
	str r3, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02070280 ; =0x00000345
	add r1, #0xf4
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0xf4
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	ldr r0, _02070284 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x40]
	add r0, #0xf4
	add r3, r1, #0
	bl sub_0201D78C
	add r4, #0xd0
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0207027C: .word 0x000003D9
_02070280: .word 0x00000345
_02070284: .word 0x00010200
	thumb_func_end sub_020701DC

	thumb_func_start sub_02070288
sub_02070288: ; 0x02070288
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd4
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xd4
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0xf4
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xf4
	bl sub_0201A8FC
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070288

	thumb_func_start sub_020702D0
sub_020702D0: ; 0x020702D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r2, [r4, #0]
	ldr r1, [r4, #8]
	cmp r2, #0xc
	bls _020702EC
	b _020703F2
_020702EC:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020702F8: ; jump table
	.short _02070312 - _020702F8 - 2 ; case 0
	.short _0207031E - _020702F8 - 2 ; case 1
	.short _0207032A - _020702F8 - 2 ; case 2
	.short _02070340 - _020702F8 - 2 ; case 3
	.short _02070356 - _020702F8 - 2 ; case 4
	.short _0207036C - _020702F8 - 2 ; case 5
	.short _02070382 - _020702F8 - 2 ; case 6
	.short _02070398 - _020702F8 - 2 ; case 7
	.short _020703AE - _020702F8 - 2 ; case 8
	.short _020703C4 - _020702F8 - 2 ; case 9
	.short _020703D8 - _020702F8 - 2 ; case 10
	.short _020703E2 - _020702F8 - 2 ; case 11
	.short _020703EA - _020702F8 - 2 ; case 12
_02070312:
	ldrh r2, [r4, #4]
	add r1, r5, #0
	bl sub_0206F314
	str r0, [r4, #0]
	b _020703F2
_0207031E:
	add r0, r1, #0
	ldr r1, [r5, #0xc]
	bl sub_0206F448
	str r0, [r4, #0]
	b _020703F2
_0207032A:
	add r0, r1, #0
	bl sub_0206F488
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_02070340:
	add r0, r1, #0
	bl sub_0206F498
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_02070356:
	add r0, r1, #0
	bl sub_0206F508
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_0207036C:
	add r0, r1, #0
	bl sub_0206F514
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_02070382:
	add r0, r1, #0
	bl sub_0206F554
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_02070398:
	add r0, r1, #0
	bl sub_0206F658
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_020703AE:
	add r0, r1, #0
	bl sub_0206F748
	str r0, [r4, #0]
	mov r0, #0x4d
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020219F8
	b _020703F2
_020703C4:
	ldr r0, _020703F8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _020703D2
	mov r0, #0
	pop {r3, r4, r5, pc}
_020703D2:
	mov r0, #0xa
	str r0, [r4, #0]
	b _020703F2
_020703D8:
	add r0, r1, #0
	bl sub_0206F468
	str r0, [r4, #0]
	b _020703F2
_020703E2:
	bl sub_0206F3A0
	str r0, [r4, #0]
	b _020703F2
_020703EA:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020703F2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020703F8: .word 0x021BF67C
	thumb_func_end sub_020702D0

	thumb_func_start sub_020703FC
sub_020703FC: ; 0x020703FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	strh r5, [r2, #4]
	str r0, [r2, #8]
	ldr r0, [r4, #0x10]
	ldr r1, _02070424 ; =sub_020702D0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_02070424: .word sub_020702D0
	thumb_func_end sub_020703FC

	.rodata


	.global Unk_020F024C
Unk_020F024C: ; 0x020F024C
	.incbin "incbin/arm9_rodata.bin", 0xB60C, 0xB614 - 0xB60C

	.global Unk_020F0254
Unk_020F0254: ; 0x020F0254
	.incbin "incbin/arm9_rodata.bin", 0xB614, 0xB620 - 0xB614

	.global Unk_020F0260
Unk_020F0260: ; 0x020F0260
	.incbin "incbin/arm9_rodata.bin", 0xB620, 0xB638 - 0xB620

	.global Unk_020F0278
Unk_020F0278: ; 0x020F0278
	.incbin "incbin/arm9_rodata.bin", 0xB638, 0xB650 - 0xB638

	.global Unk_020F0290
Unk_020F0290: ; 0x020F0290
	.incbin "incbin/arm9_rodata.bin", 0xB650, 0xB670 - 0xB650

	.global Unk_020F02B0
Unk_020F02B0: ; 0x020F02B0
	.incbin "incbin/arm9_rodata.bin", 0xB670, 0xB690 - 0xB670

	.global Unk_020F02D0
Unk_020F02D0: ; 0x020F02D0
	.incbin "incbin/arm9_rodata.bin", 0xB690, 0xB6C0 - 0xB690

	.global Unk_020F0300
Unk_020F0300: ; 0x020F0300
	.incbin "incbin/arm9_rodata.bin", 0xB6C0, 0x68

