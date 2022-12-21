	.include "macros/function.inc"
	.include "include/unk_0205D8CC.inc"

	

	.text


	thumb_func_start sub_0205D8CC
sub_0205D8CC: ; 0x0205D8CC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _0205D8D8
	bl sub_0201D710
_0205D8D8:
	mov r1, #0x1a
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #4
	bl sub_02002E7C
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #4
	bl sub_02002E98
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D8CC

	thumb_func_start sub_0205D8F4
sub_0205D8F4: ; 0x0205D8F4
	push {lr}
	sub sp, #0x14
	cmp r2, #3
	bne _0205D91C
	mov r2, #0x13
	str r2, [sp]
	mov r2, #0x1b
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0xc
	str r2, [sp, #0xc]
	ldr r2, _0205D940 ; =0x00000237
	mov r3, #2
	str r2, [sp, #0x10]
	mov r2, #3
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
_0205D91C:
	mov r2, #0x13
	str r2, [sp]
	mov r2, #0x1b
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0xc
	str r2, [sp, #0xc]
	mov r2, #0x65
	lsl r2, r2, #2
	str r2, [sp, #0x10]
	mov r2, #7
	mov r3, #2
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	nop
_0205D940: .word 0x00000237
	thumb_func_end sub_0205D8F4

	thumb_func_start sub_0205D944
sub_0205D944: ; 0x0205D944
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0201C290
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0205D984 ; =0x000003E2
	add r1, r6, #0
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r5, #0
	bl sub_0205D988
	ldr r2, _0205D984 ; =0x000003E2
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205D984: .word 0x000003E2
	thumb_func_end sub_0205D944

	thumb_func_start sub_0205D988
sub_0205D988: ; 0x0205D988
	ldr r3, _0205D990 ; =sub_0201ADA4
	mov r1, #0xf
	bx r3
	nop
_0205D990: .word sub_0201ADA4
	thumb_func_end sub_0205D988

	thumb_func_start sub_0205D994
sub_0205D994: ; 0x0205D994
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	add r0, r6, #0
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0205D994

	thumb_func_start sub_0205D9CC
sub_0205D9CC: ; 0x0205D9CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02002AC8
	ldr r0, [sp, #0x24]
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205D9CC

	thumb_func_start sub_0205DA04
sub_0205DA04: ; 0x0205DA04
	push {r3, lr}
	bl sub_0201D724
	cmp r0, #0
	bne _0205DA12
	mov r0, #1
	b _0205DA14
_0205DA12:
	mov r0, #0
_0205DA14:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205DA04

	thumb_func_start sub_0205DA1C
sub_0205DA1C: ; 0x0205DA1C
	push {r4, r5, lr}
	sub sp, #0x14
	cmp r2, #1
	bhi _0205DA2A
	mov r4, #9
	mov r5, #0x14
	b _0205DA2E
_0205DA2A:
	mov r4, #2
	mov r5, #0x1b
_0205DA2E:
	cmp r3, #3
	bne _0205DA56
	mov r2, #0x13
	str r2, [sp]
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #9
	str r2, [sp, #0xc]
	ldr r2, _0205DA7C ; =0x00000237
	lsl r3, r4, #0x18
	str r2, [sp, #0x10]
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
_0205DA56:
	mov r2, #0x13
	str r2, [sp]
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #9
	str r2, [sp, #0xc]
	mov r2, #0x65
	lsl r2, r2, #2
	lsl r3, r4, #0x18
	str r2, [sp, #0x10]
	mov r2, #7
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0205DA7C: .word 0x00000237
	thumb_func_end sub_0205DA1C

	thumb_func_start sub_0205DA80
sub_0205DA80: ; 0x0205DA80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_0201C290
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _0205DAC4 ; =0x000002A3
	mov r3, #9
	bl sub_0200E2A4
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r2, _0205DAC4 ; =0x000002A3
	add r0, r5, #0
	mov r1, #0
	mov r3, #9
	bl sub_0200E69C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0205DAC4: .word 0x000002A3
	thumb_func_end sub_0205DA80