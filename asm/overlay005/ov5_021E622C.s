	.include "macros/function.inc"
	.include "overlay005/ov5_021E622C.inc"

	

	.text


	thumb_func_start ov5_021E622C
ov5_021E622C: ; 0x021E622C
	push {r3, lr}
	bl sub_02026218
	bl sub_02026220
	pop {r3, pc}
	thumb_func_end ov5_021E622C

	thumb_func_start ov5_021E6238
ov5_021E6238: ; 0x021E6238
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
	mov r7, #5
_021E6242:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02026218
	bl sub_02026220
	add r1, r7, #0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E6260
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021E6260:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021E6242
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6238

	thumb_func_start ov5_021E6270
ov5_021E6270: ; 0x021E6270
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E62AC ; =0x02202124
	mov r4, #0
	str r5, [r0, #0]
	mov r6, #5
	add r7, r4, #0
_021E627E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026218
	bl sub_02026220
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074570
	cmp r0, #0
	bne _021E629A
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E629A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021E627E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E62AC: .word 0x02202124
	thumb_func_end ov5_021E6270

	thumb_func_start ov5_021E62B0
ov5_021E62B0: ; 0x021E62B0
	push {r3, lr}
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	pop {r3, pc}
	thumb_func_end ov5_021E62B0

	thumb_func_start ov5_021E62C4
ov5_021E62C4: ; 0x021E62C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r2, #0
	add r6, r0, #0
	str r1, [sp]
	add r7, r3, #0
	bl sub_0207A0FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026224
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02026220
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02025E38
	bl sub_02025EF0
	add r0, r4, #0
	mov r1, #0x75
	add r2, sp, #0xc
	bl sub_02074470
	add r0, r4, #0
	bl sub_02076B10
	bl ov5_021E62B0
	cmp r0, #0
	beq _021E6318
	ldr r0, [sp, #8]
	bl sub_02026230
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xaa
	bl sub_02074470
_021E6318:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02077618
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_02077ADC
	add r0, r5, #0
	mov r1, #0
	bl sub_02026258
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_0207A080
	ldr r1, _021E6354 ; =0x000001B9
	add r0, r6, #0
	bl sub_0207A230
	cmp r0, #0
	bne _021E634E
	add r0, r7, #0
	bl sub_0202CC98
	bl sub_0202CCA8
_021E634E:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E6354: .word 0x000001B9
	thumb_func_end ov5_021E62C4

	thumb_func_start ov5_021E6358
ov5_021E6358: ; 0x021E6358
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0202CD88
	mov r1, #0x28
	bl sub_0202CF28
	add r0, r4, #0
	bl ov5_021E6270
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02026218
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov5_021E62C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6358

	thumb_func_start ov5_021E638C
ov5_021E638C: ; 0x021E638C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02026218
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_02026218
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026220
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02026220
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _021E63DC
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E63DC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020262A8
	add r0, r4, #0
	bl sub_020262F4
_021E63DC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E638C

	thumb_func_start ov5_021E63E0
ov5_021E63E0: ; 0x021E63E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #8]
	add r4, sp, #8
	add r6, sp, #4
	add r7, sp, #4
_021E63F2:
	add r0, r5, #0
	bl sub_02076B14
	cmp r0, #0
	beq _021E6434
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0207727C
	cmp r0, #0
	beq _021E642A
_021E640E:
	ldr r1, _021E6440 ; =0x0000FFFF
	cmp r0, r1
	bne _021E641C
	ldrh r1, [r7]
	add r0, r5, #0
	bl sub_02077134
_021E641C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0207727C
	cmp r0, #0
	bne _021E640E
_021E642A:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x64
	blt _021E63F2
_021E6434:
	add r0, r5, #0
	bl sub_0207418C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E6440: .word 0x0000FFFF
	thumb_func_end ov5_021E63E0

	thumb_func_start ov5_021E6444
ov5_021E6444: ; 0x021E6444
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	mov r0, #4
	add r7, r2, #0
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02026220
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02026224
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B5CC
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020774C8
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	beq _021E64BC
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02026228
	ldr r1, [sp, #8]
	add r2, sp, #8
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	bl sub_02074B30
	add r0, r4, #0
	bl ov5_021E63E0
_021E64BC:
	add r0, r5, #0
	bl ov5_021E62B0
	cmp r0, #0
	beq _021E64D6
	ldr r0, [sp, #4]
	bl sub_02026230
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xaa
	bl sub_02074B30
_021E64D6:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A048
	add r0, r5, #0
	bl sub_02073C54
	add r0, r6, #0
	mov r1, #0
	bl sub_02026258
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E6444

	thumb_func_start ov5_021E64F8
ov5_021E64F8: ; 0x021E64F8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	add r1, r3, #0
	bl sub_02026218
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021E6444
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl ov5_021E638C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E64F8

	thumb_func_start ov5_021E6520
ov5_021E6520: ; 0x021E6520
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	add r5, r1, #0
	bl sub_02073C74
	add r7, r0, #0
	bl sub_02076B10
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02077604
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r0, r5
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02075B40
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E6520

	thumb_func_start ov5_021E6568
ov5_021E6568: ; 0x021E6568
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02026220
	add r6, r0, #0
	bl sub_02075B40
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl sub_02026228
	add r1, r0, #0
	add r0, r6, #0
	bl ov5_021E6520
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r4
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E6568

	thumb_func_start ov5_021E6590
ov5_021E6590: ; 0x021E6590
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02026220
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026228
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021E6520
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6590

	thumb_func_start ov5_021E65B0
ov5_021E65B0: ; 0x021E65B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02026220
	add r6, r0, #0
	add r0, r4, #0
	bl ov5_021E6568
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #3
	str r1, [sp, #4]
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0200B5CC
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E65B0

	thumb_func_start ov5_021E65EC
ov5_021E65EC: ; 0x021E65EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02026220
	add r6, r0, #0
	add r0, r4, #0
	bl ov5_021E6568
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0200B5CC
	add r1, r4, #1
	mov r0, #0x64
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #5
	str r1, [sp, #4]
	bl sub_0200B60C
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E65EC

	thumb_func_start ov5_021E6630
ov5_021E6630: ; 0x021E6630
	push {r4, lr}
	add r4, r2, #0
	bl sub_02026218
	add r1, r4, #0
	bl ov5_021E65EC
	pop {r4, pc}
	thumb_func_end ov5_021E6630

	thumb_func_start ov5_021E6640
ov5_021E6640: ; 0x021E6640
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02026218
	add r4, r0, #0
	bl sub_02026220
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E6664
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021E65B0
	pop {r3, r4, r5, pc}
_021E6664:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E6640

	thumb_func_start ov5_021E6668
ov5_021E6668: ; 0x021E6668
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ov5_021E622C
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl ov5_021E622C
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6668

	thumb_func_start ov5_021E6684
ov5_021E6684: ; 0x021E6684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	mvn r1, r1
	str r1, [sp]
	add r1, sp, #4
	bl ov5_021E6668
	mov r4, #0
	add r5, sp, #4
_021E6698:
	ldr r0, [r5, #0]
	bl sub_02075D74
	cmp r0, #1
	bne _021E66A4
	str r4, [sp]
_021E66A4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E6698
	mov r7, #0
	add r6, r7, #0
	add r4, sp, #4
	add r5, sp, #0xc
_021E66B4:
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	str r0, [r5, #0]
	cmp r0, #0x84
	bne _021E66C8
	add r7, r7, #1
	str r6, [sp]
_021E66C8:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _021E66B4
	cmp r7, #2
	bne _021E66EA
	bl sub_0201D2E8
	ldr r1, _021E671C ; =0x00007FFF
	cmp r0, r1
	blo _021E66E6
	mov r0, #0
	str r0, [sp]
	b _021E66EA
_021E66E6:
	mov r0, #1
	str r0, [sp]
_021E66EA:
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	mov r1, #6
	bl sub_02074570
	cmp r0, #0xe5
	bne _021E6714
	bl sub_0201D2E8
	ldr r1, _021E671C ; =0x00007FFF
	cmp r0, r1
	blo _021E670E
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
_021E670E:
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E6714:
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E671C: .word 0x00007FFF
	thumb_func_end ov5_021E6684

	thumb_func_start ov5_021E6720
ov5_021E6720: ; 0x021E6720
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r5, #0
	bl ov5_021E6684
	add r1, r0, #0
	bpl _021E673C
	bl sub_0201D35C
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02026270
	pop {r3, r4, r5, r6, r7, pc}
_021E673C:
	ldr r0, [sp]
	bl ov5_021E622C
	add r1, r5, #0
	add r2, r1, #0
	bl sub_02074570
	bl sub_02075BFC
	mov r7, #0x96
	add r6, r0, #0
	lsl r7, r7, #4
_021E6754:
	bl sub_0201D35C
	add r4, r0, #0
	bl sub_02075BFC
	cmp r6, r0
	bne _021E6766
	cmp r4, #0
	bne _021E676C
_021E6766:
	add r5, r5, #1
	cmp r5, r7
	ble _021E6754
_021E676C:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02026270
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6720

	thumb_func_start ov5_021E6778
ov5_021E6778: ; 0x021E6778
	push {r3, r4}
	sub sp, #8
	mov r2, #0xff
	strb r2, [r0, r1]
	mov r2, #0
	add r3, sp, #0
_021E6784:
	ldrb r1, [r0, r2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #6
	blt _021E6784
	mov r2, #0
	add r4, r2, #0
	add r3, sp, #0
_021E6796:
	ldrb r1, [r3]
	cmp r1, #0xff
	beq _021E67A0
	strb r1, [r0, r2]
	add r2, r2, #1
_021E67A0:
	add r4, r4, #1
	add r3, r3, #1
	cmp r4, #6
	blt _021E6796
	add sp, #8
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E6778

	thumb_func_start ov5_021E67B0
ov5_021E67B0: ; 0x021E67B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	add r1, sp, #8
_021E67BC:
	strb r0, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	blo _021E67BC
	add r7, sp, #0xc
	mov r5, #0
	add r6, sp, #8
	add r7, #2
_021E67D0:
	bl sub_0201D2E8
	mov r1, #6
	sub r1, r1, r5
	bl _s32_div_f
	ldrb r0, [r6, r1]
	add r1, r5, #0
	strb r0, [r7, r5]
	add r0, r6, #0
	bl ov5_021E6778
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021E67D0
	add r6, sp, #4
	mov r5, #0
	add r6, #1
	mov r7, #0x1f
_021E67FA:
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	strb r0, [r6, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021E67FA
	mov r5, #0
	add r7, sp, #4
	add r6, sp, #4
_021E681A:
	add r1, sp, #4
	add r1, #1
	ldrb r1, [r1, r5]
	ldr r0, [sp]
	bl ov5_021E622C
	add r1, sp, #0xc
	add r1, #2
	ldrb r1, [r1, r5]
	cmp r1, #5
	bhi _021E68CA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E683C: ; jump table
	.short _021E6848 - _021E683C - 2 ; case 0
	.short _021E685E - _021E683C - 2 ; case 1
	.short _021E6874 - _021E683C - 2 ; case 2
	.short _021E688A - _021E683C - 2 ; case 3
	.short _021E68A0 - _021E683C - 2 ; case 4
	.short _021E68B6 - _021E683C - 2 ; case 5
_021E6848:
	mov r1, #0x46
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x46
	add r2, r7, #0
	bl sub_02074B30
	b _021E68CA
_021E685E:
	mov r1, #0x47
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x47
	add r2, r7, #0
	bl sub_02074B30
	b _021E68CA
_021E6874:
	mov r1, #0x48
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r7, #0
	bl sub_02074B30
	b _021E68CA
_021E688A:
	mov r1, #0x49
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x49
	add r2, r7, #0
	bl sub_02074B30
	b _021E68CA
_021E68A0:
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, r7, #0
	bl sub_02074B30
	b _021E68CA
_021E68B6:
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, r7, #0
	bl sub_02074B30
_021E68CA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021E681A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E67B0

	thumb_func_start ov5_021E68D8
ov5_021E68D8: ; 0x021E68D8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r1, #0
	mov r1, #5
	add r2, r4, #0
	add r6, r4, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _021E693C ; =0x00004E20
	ldr r3, _021E6940 ; =0x00000775
	add r2, r2, r0
	ldr r0, _021E6944 ; =0x021F9FA2
	add r1, r4, #0
_021E68F6:
	lsl r7, r1, #1
	ldrh r7, [r0, r7]
	cmp r2, r7
	bne _021E6906
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _021E6910
_021E6906:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r3
	blo _021E68F6
_021E6910:
	ldr r2, _021E6944 ; =0x021F9FA2
	lsl r0, r6, #1
	ldr r3, _021E693C ; =0x00004E20
	mov r1, #0
	add r0, r2, r0
_021E691A:
	lsl r6, r1, #1
	ldrh r2, [r0, r6]
	cmp r2, r3
	bhi _021E6934
	add r1, r1, #1
	strh r2, [r5, r6]
	add r2, r4, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r4, r2, #0x10
	cmp r1, #0x10
	blo _021E691A
_021E6934:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E693C: .word 0x00004E20
_021E6940: .word 0x00000775
_021E6944: .word 0x021F9FA2
	thumb_func_end ov5_021E68D8

	thumb_func_start ov5_021E6948
ov5_021E6948: ; 0x021E6948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	str r1, [sp]
	mov r0, #4
	mov r1, #0xb4
	str r2, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xb4
	str r0, [sp, #0x1c]
	bl MIi_CpuClearFast
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r2, r4, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	add r2, #0x30
	bl sub_02077660
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r6, #0
_021E699C:
	lsl r0, r6, #2
	add r5, r6, #0
	str r0, [sp, #0x20]
	add r0, r4, r0
	add r5, #0x36
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	bl sub_02074570
	ldr r1, [sp, #0x20]
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_02074570
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x20]
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021E699C
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x94
	bl ov5_021E68D8
	add r5, r0, #0
	mov r6, #0
_021E69DC:
	lsl r0, r6, #2
	ldr r1, [r4, r0]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _021E6A2C
	mov r0, #0
	cmp r5, #0
	bls _021E6A22
_021E69EC:
	lsl r2, r0, #1
	add r2, r4, r2
	add r2, #0x94
	ldrh r2, [r2]
	cmp r1, r2
	bne _021E6A18
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_020770C4
	ldr r1, _021E6B3C ; =0x0000FFFF
	cmp r0, r1
	bne _021E6A22
	ldr r1, [sp, #0x24]
	add r0, r7, #0
	ldr r1, [r4, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02077134
	b _021E6A22
_021E6A18:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r5
	blo _021E69EC
_021E6A22:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021E69DC
_021E6A2C:
	mov r0, #0
	str r0, [sp, #8]
_021E6A30:
	ldr r0, [sp, #8]
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021E6A88
	mov r5, #0
_021E6A3C:
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D268
	ldr r1, [r4, r6]
	cmp r1, r0
	bne _021E6A7E
	lsl r2, r5, #0x18
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x18
	bl sub_02077FE4
	cmp r0, #0
	beq _021E6A7E
	ldr r1, [r4, r6]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020770C4
	ldr r1, _021E6B3C ; =0x0000FFFF
	cmp r0, r1
	bne _021E6A7E
	ldr r1, [r4, r6]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02077134
_021E6A7E:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _021E6A3C
_021E6A88:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	blo _021E6A30
	mov r6, #0
_021E6A98:
	lsl r1, r6, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021E6AD8
	mov r3, #0
_021E6AA2:
	lsl r2, r3, #2
	add r2, r4, r2
	ldr r0, [r4, r1]
	ldr r2, [r2, #0x20]
	cmp r0, r2
	bne _021E6AC4
	cmp r0, #0
	beq _021E6AC4
	ldr r2, [sp, #0x1c]
	add r5, r2, #0
	add r5, r5, #1
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	lsl r2, r2, #2
	str r5, [sp, #0x1c]
	add r2, r4, r2
	str r0, [r2, #0x10]
_021E6AC4:
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #4
	blo _021E6AA2
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021E6A98
_021E6AD8:
	mov r6, #0
_021E6ADA:
	lsl r0, r6, #2
	add r5, r4, r0
	ldr r3, [r5, #0x10]
	cmp r3, #0
	beq _021E6B30
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	bls _021E6B26
_021E6AEC:
	lsl r0, r2, #1
	add r0, r4, r0
	ldrh r1, [r0, #0x30]
	cmp r1, #0
	beq _021E6B1A
	ldr r0, [r5, #0x10]
	cmp r0, r1
	bne _021E6B1A
	lsl r1, r3, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_020770C4
	ldr r1, _021E6B3C ; =0x0000FFFF
	cmp r0, r1
	bne _021E6B26
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02077134
	b _021E6B26
_021E6B1A:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r2, r0
	blo _021E6AEC
_021E6B26:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021E6ADA
_021E6B30:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6B3C: .word 0x0000FFFF
	thumb_func_end ov5_021E6948

	thumb_func_start ov5_021E6B40
ov5_021E6B40: ; 0x021E6B40
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02026270
	add r0, r4, #0
	mov r1, #0
	bl sub_02026278
	pop {r4, pc}
	thumb_func_end ov5_021E6B40

	thumb_func_start ov5_021E6B54
ov5_021E6B54: ; 0x021E6B54
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl ov5_021E6668
	ldr r2, _021E6BC4 ; =0x021F9F6C
	mov r3, #0
	mov r1, #6
_021E6B68:
	add r0, r3, #0
	mul r0, r1
	ldrh r0, [r2, r0]
	cmp r5, r0
	bne _021E6B76
	add r6, r3, #0
	b _021E6B80
_021E6B76:
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #9
	blo _021E6B68
_021E6B80:
	cmp r3, #9
	bne _021E6B8A
	add sp, #8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021E6B8A:
	ldr r0, [sp]
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021E6BC8 ; =0x021F9F6E
	ldrh r0, [r0, r1]
	cmp r4, r0
	beq _021E6BBC
	cmp r2, r0
	beq _021E6BBC
	ldr r0, _021E6BCC ; =0x021F9F70
	ldrh r5, [r0, r1]
_021E6BBC:
	add r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021E6BC4: .word 0x021F9F6C
_021E6BC8: .word 0x021F9F6E
_021E6BCC: .word 0x021F9F70
	thumb_func_end ov5_021E6B54

	thumb_func_start ov5_021E6BD0
ov5_021E6BD0: ; 0x021E6BD0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl ov5_021E6668
	ldr r0, [sp]
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	cmp r5, #0xec
	beq _021E6BFC
	cmp r0, #0xec
	bne _021E6C16
_021E6BFC:
	mov r1, #0x56
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020770C4
	ldr r1, _021E6C1C ; =0x0000FFFF
	cmp r0, r1
	bne _021E6C16
	mov r1, #0x56
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02077134
_021E6C16:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021E6C1C: .word 0x0000FFFF
	thumb_func_end ov5_021E6BD0

	thumb_func_start ov5_021E6C20
ov5_021E6C20: ; 0x021E6C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r1, sp, #4
	str r0, [sp]
	bl ov5_021E6668
	mov r4, #0
	add r7, sp, #4
_021E6C32:
	lsl r6, r4, #2
	ldr r0, [r7, r6]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r1, r4, #1
	add r2, sp, #0xc
	strh r0, [r2, r1]
	add r0, r2, #0
	ldrh r0, [r0, r1]
	cmp r0, #0x84
	bne _021E6C56
	mov r0, #1
	eor r0, r4
	strb r0, [r5]
	strb r4, [r5, #1]
	b _021E6C68
_021E6C56:
	ldr r0, [r7, r6]
	bl sub_02075D74
	cmp r0, #1
	bne _021E6C68
	mov r0, #1
	strb r4, [r5]
	eor r0, r4
	strb r0, [r5, #1]
_021E6C68:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _021E6C32
	ldrb r0, [r5]
	lsl r1, r0, #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	bl sub_02076F84
	add r4, r0, #0
	cmp r4, #0x1d
	bne _021E6C98
	ldr r0, [sp]
	bl sub_02026248
	mov r1, #2
	lsl r1, r1, #0xe
	tst r0, r1
	beq _021E6C96
	mov r4, #0x20
	b _021E6C98
_021E6C96:
	mov r4, #0x1d
_021E6C98:
	ldr r0, _021E6CE4 ; =0x0000013A
	cmp r4, r0
	bne _021E6CB2
	ldr r0, [sp]
	bl sub_02026248
	mov r1, #2
	lsl r1, r1, #0xe
	tst r0, r1
	beq _021E6CB0
	ldr r4, _021E6CE8 ; =0x00000139
	b _021E6CB2
_021E6CB0:
	ldr r4, _021E6CE4 ; =0x0000013A
_021E6CB2:
	ldr r0, _021E6CEC ; =0x000001EA
	cmp r4, r0
	bne _021E6CBA
	sub r4, r0, #1
_021E6CBA:
	ldrb r0, [r5, #1]
	lsl r1, r0, #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	cmp r0, #0x84
	bne _021E6CDE
	ldrb r0, [r5]
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	bl sub_02075D74
	cmp r0, #1
	beq _021E6CDE
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	strb r0, [r5, #1]
	strb r1, [r5]
_021E6CDE:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E6CE4: .word 0x0000013A
_021E6CE8: .word 0x00000139
_021E6CEC: .word 0x000001EA
	thumb_func_end ov5_021E6C20

	thumb_func_start ov5_021E6CF0
ov5_021E6CF0: ; 0x021E6CF0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x13
	add r4, r3, #0
	bl sub_020759F0
	add r1, sp, #0x10
	strb r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_02073D80
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #4]
	add r0, r5, #0
	mov r1, #0x9b
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0x10
	bl sub_02074B30
	add r2, sp, #0x10
	add r0, r5, #0
	mov r1, #0x9c
	add r2, #2
	bl sub_02074B30
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E6D5A
	add r0, r5, #0
	mov r1, #0x98
	add r2, sp, #0x38
	bl sub_02074B30
_021E6D5A:
	add r2, sp, #0x10
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x4c
	add r2, #1
	bl sub_02074B30
	ldr r0, _021E6DE4 ; =0x000001EE
	mov r1, #4
	bl sub_0200B32C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r6, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x40]
	cmp r0, #4
	bne _021E6DCA
	add r0, r4, #0
	bl sub_02025F20
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02025F30
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02025F04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x9d
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020237BC
_021E6DCA:
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0209304C
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_021E6DE4: .word 0x000001EE
	thumb_func_end ov5_021E6CF0

	thumb_func_start ov5_021E6DE8
ov5_021E6DE8: ; 0x021E6DE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x13
	add r5, r2, #0
	add r6, r3, #0
	bl sub_020759F0
	add r1, sp, #0x14
	strb r0, [r1]
	add r0, r5, #0
	bl sub_02026248
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026280
	cmp r0, #0
	beq _021E6E3A
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02075E38
	cmp r0, #0
	bne _021E6E3A
	mov r5, #0
_021E6E20:
	add r0, r4, #0
	bl sub_0201D30C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02075E38
	cmp r0, #0
	bne _021E6E3A
	add r5, r5, #1
	cmp r5, #4
	blt _021E6E20
_021E6E3A:
	mov r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	mov r3, #0x20
	bl sub_02073D80
	add r2, sp, #0x14
	mov r1, #0
	add r0, sp, #0x14
	strb r1, [r0, #1]
	mov r1, #4
	strh r1, [r0, #2]
	add r0, r7, #0
	mov r1, #0x9b
	add r2, #2
	bl sub_02074B30
	add r0, r7, #0
	mov r1, #9
	add r2, sp, #0x14
	bl sub_02074B30
	add r2, sp, #0x14
	add r0, r7, #0
	mov r1, #0x9c
	add r2, #1
	bl sub_02074B30
	add r0, r7, #0
	mov r1, #0x70
	add r2, sp, #0x30
	bl sub_02074B30
	ldr r0, _021E6EA4 ; =0x000001EE
	mov r1, #4
	bl sub_0200B32C
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E6EA4: .word 0x000001EE
	thumb_func_end ov5_021E6DE8

	thumb_func_start ov5_021E6EA8
ov5_021E6EA8: ; 0x021E6EA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #4
	str r1, [sp, #4]
	add r7, r2, #0
	bl sub_02073C74
	add r1, sp, #0x10
	add r4, r0, #0
	add r0, r5, #0
	add r1, #1
	bl ov5_021E6C20
	add r1, r5, #0
	bl ov5_021E6B54
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02025F20
	add r1, sp, #0x10
	str r0, [sp, #8]
	ldrb r1, [r1, #1]
	add r0, r5, #0
	bl ov5_021E622C
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov5_021E6DE8
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021E67B0
	add r1, sp, #0x10
	ldrb r1, [r1, #2]
	add r0, r5, #0
	bl ov5_021E622C
	add r1, sp, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r1, #1]
	add r0, r5, #0
	bl ov5_021E622C
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov5_021E6948
	mov r0, #1
	mov r1, #0
	bl sub_02017070
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	bl sub_0209304C
	cmp r6, #0xac
	bne _021E6F44
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021E6BD0
_021E6F44:
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, sp, #0x10
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0207A048
	add r0, r5, #0
	bl ov5_021E6B40
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E6EA8

	thumb_func_start ov5_021E6F6C
ov5_021E6F6C: ; 0x021E6F6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _021E6FBC
	mov r7, #0xad
_021E6F7E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _021E6FB2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x28
	beq _021E6FAE
	cmp r0, #0x31
	bne _021E6FB2
_021E6FAE:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021E6FB2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _021E6F7E
_021E6FBC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E6F6C

	thumb_func_start ov5_021E6FC0
ov5_021E6FC0: ; 0x021E6FC0
	push {r4, r5, r6, r7}
	mov r4, #0
	add r3, r4, #0
_021E6FC6:
	ldrh r7, [r0]
	add r5, r3, #0
	add r6, r1, #0
_021E6FCC:
	ldrh r2, [r6]
	cmp r7, r2
	bne _021E6FD8
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_021E6FD8:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #2
	blt _021E6FCC
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #2
	blt _021E6FC6
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E6FC0

	thumb_func_start ov5_021E6FF0
ov5_021E6FF0: ; 0x021E6FF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	add r4, sp, #0x18
	str r0, [sp]
	add r7, sp, #8
	add r6, sp, #0x1c
_021E7004:
	ldr r0, [r5, #0]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r4]
	ldr r0, [r5, #0]
	mov r1, #7
	mov r2, #0
	bl sub_02074570
	ldr r1, [sp]
	str r0, [r1, #0]
	mov r1, #0
	ldr r0, [r5, #0]
	add r2, r1, #0
	bl sub_02074570
	add r1, r0, #0
	ldrh r0, [r4]
	bl sub_02075DAC
	stmia r7!, {r0}
	ldrh r0, [r4]
	mov r1, #0x16
	bl sub_020759F0
	strh r0, [r6]
	ldrh r0, [r4]
	mov r1, #0x17
	bl sub_020759F0
	strh r0, [r6, #2]
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, r4, #2
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #2
	blo _021E7004
	add r0, sp, #8
	ldrh r1, [r0, #0x14]
	cmp r1, #0xf
	beq _021E706A
	ldrh r0, [r0, #0x18]
	cmp r0, #0xf
	bne _021E7070
_021E706A:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E7070:
	cmp r1, #0xd
	bne _021E707E
	cmp r0, #0xd
	bne _021E707E
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E707E:
	cmp r1, #0xd
	beq _021E7086
	cmp r0, #0xd
	bne _021E709A
_021E7086:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _021E7094
	add sp, #0x24
	mov r0, #0x14
	pop {r4, r5, r6, r7, pc}
_021E7094:
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021E709A:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _021E70A8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E70A8:
	cmp r0, #2
	beq _021E70B0
	cmp r1, #2
	bne _021E70B6
_021E70B0:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E70B6:
	add r0, sp, #0x1c
	add r1, sp, #0x20
	bl ov5_021E6FC0
	cmp r0, #0
	bne _021E70C8
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E70C8:
	add r0, sp, #8
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	bne _021E70E6
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _021E70E0
	add sp, #0x24
	mov r0, #0x46
	pop {r4, r5, r6, r7, pc}
_021E70E0:
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021E70E6:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _021E70F4
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021E70F4:
	mov r0, #0x14
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E6FF0

	thumb_func_start ov5_021E70FC
ov5_021E70FC: ; 0x021E70FC
	push {r3, lr}
	sub sp, #8
	add r1, sp, #0
	bl ov5_021E6668
	add r0, sp, #0
	bl ov5_021E6FF0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov5_021E70FC

	thumb_func_start ov5_021E7110
ov5_021E7110: ; 0x021E7110
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02055BC4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02055BB8
	mov r1, #0x64
	mul r1, r0
	add r0, r4, #0
	add r5, r5, r1
	bl sub_02055C40
	cmp r0, #0
	beq _021E7134
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_021E7134:
	ldr r2, _021E7150 ; =0x021F9F54
	mov r1, #0
_021E7138:
	ldrh r0, [r2]
	cmp r5, r0
	bne _021E7142
	mov r0, #0xe6
	pop {r3, r4, r5, pc}
_021E7142:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #0xc
	blo _021E7138
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	nop
_021E7150: .word 0x021F9F54
	thumb_func_end ov5_021E7110

	thumb_func_start ov5_021E7154
ov5_021E7154: ; 0x021E7154
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r1, sp, #8
	str r0, [sp]
	str r2, [sp, #4]
	bl ov5_021E6668
	mov r6, #0
	add r4, r6, #0
	add r5, sp, #8
_021E716A:
	ldr r0, [r5, #0]
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E7188
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02026218
	mov r1, #1
	bl sub_02026260
	add r6, r6, #1
_021E7188:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blo _021E716A
	ldr r0, [sp]
	bl sub_02026234
	cmp r0, #0
	bne _021E71D4
	cmp r6, #2
	bne _021E71D4
	ldr r0, [sp]
	mov r1, #1
	bl sub_02026218
	bl sub_02026228
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xff
	bne _021E71D4
	ldr r0, [sp]
	bl ov5_021E70FC
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x64
	mul r1, r0
	add r0, r1, #0
	ldr r1, _021E7274 ; =0x0000FFFF
	bl _u32_div_f
	cmp r4, r0
	bls _021E71D4
	ldr r0, [sp]
	bl ov5_021E6720
_021E71D4:
	ldr r0, [sp]
	bl sub_02026250
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r4, #1
	bl sub_02026278
	ldr r0, [sp, #4]
	bl ov5_021E7110
	add r1, r4, #1
	cmp r1, r0
	bne _021E726C
	ldr r0, [sp]
	mov r1, #0
	bl sub_02026278
	add r0, r7, #0
	bl ov5_021E6F6C
	add r6, r0, #0
	add r0, r7, #0
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	bls _021E726C
_021E720C:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _021E7260
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _021E7260
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021E725A
	cmp r0, r6
	blo _021E724A
	sub r0, r0, r6
	str r0, [sp, #0x10]
	b _021E724E
_021E724A:
	sub r0, r0, #1
	str r0, [sp, #0x10]
_021E724E:
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0x10
	bl sub_02074B30
	b _021E7260
_021E725A:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E7260:
	add r0, r7, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blo _021E720C
_021E726C:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E7274: .word 0x0000FFFF
	thumb_func_end ov5_021E7154

	thumb_func_start ov5_021E7278
ov5_021E7278: ; 0x021E7278
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021E72B6
_021E7288:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _021E72B0
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _021E72B0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E72B0:
	add r5, r5, #1
	cmp r5, r6
	blt _021E7288
_021E72B6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E7278

	thumb_func_start ov5_021E72BC
ov5_021E72BC: ; 0x021E72BC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #0
	bl ov5_021E6668
	ldr r0, [sp]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E72EA
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B5CC
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0200B5EC
_021E72EA:
	ldr r0, [sp, #4]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021E7302
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B5CC
_021E7302:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E72BC

	thumb_func_start ov5_021E7308
ov5_021E7308: ; 0x021E7308
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x18
	ldrb r6, [r1, #0x10]
	add r5, r0, #0
	add r7, r2, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl sub_02026218
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021E622C
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B5CC
	ldr r0, [sp, #0xc]
	bl sub_02026228
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021E6520
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	beq _021E7390
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x1d
	beq _021E7380
	cmp r0, #0x20
	bne _021E7390
_021E7380:
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _021E7390
	mov r4, #2
_021E7390:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #8]
	add r2, r4, #0
	bl sub_0200BCF0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E7308

	thumb_func_start ov5_021E73A0
ov5_021E73A0: ; 0x021E73A0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E73A0

	thumb_func_start ov5_021E73C8
ov5_021E73C8: ; 0x021E73C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02026234
	cmp r0, #0
	beq _021E73D8
	mov r0, #1
	pop {r4, pc}
_021E73D8:
	add r0, r4, #0
	bl ov5_021E6238
	cmp r0, #0
	beq _021E73EA
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
_021E73EA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E73C8

	thumb_func_start ov5_021E73F0
ov5_021E73F0: ; 0x021E73F0
	cmp r0, #0x14
	bhi _021E73FC
	bhs _021E740E
	cmp r0, #0
	beq _021E740A
	b _021E741A
_021E73FC:
	cmp r0, #0x32
	bhi _021E7404
	beq _021E7412
	b _021E741A
_021E7404:
	cmp r0, #0x46
	beq _021E7416
	b _021E741A
_021E740A:
	mov r0, #3
	bx lr
_021E740E:
	mov r0, #2
	bx lr
_021E7412:
	mov r0, #1
	bx lr
_021E7416:
	mov r0, #0
	bx lr
_021E741A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E73F0

	thumb_func_start ov5_021E7420
ov5_021E7420: ; 0x021E7420
	push {r3, lr}
	bl ov5_021E70FC
	bl ov5_021E73F0
	pop {r3, pc}
	thumb_func_end ov5_021E7420

	thumb_func_start ov5_021E742C
ov5_021E742C: ; 0x021E742C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #8
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02073C74
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r5, #0
	add r7, sp, #0x34
_021E7458:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r1, r5, #1
	strh r0, [r7, r1]
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x30
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021E7458
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	add r7, r0, #0
	mov r5, #0
_021E7490:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x46
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x24
	add r1, #2
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021E7490
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #9]
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #7]
	add r0, r4, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #0xa]
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #5]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x91
	bl sub_02074470
	add r0, r4, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #3]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #4]
	ldr r1, _021E7718 ; =0x000001EA
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _021E7564
	add r0, r4, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	mov r0, #2
	mov r1, #1
	bl sub_02017070
	cmp r5, r0
	bne _021E7564
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl sub_02075E38
	cmp r0, #0
	beq _021E7564
_021E7550:
	add r0, r7, #0
	bl sub_0201D30C
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl sub_02075E38
	cmp r0, #0
	bne _021E7550
_021E7564:
	mov r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02073D80
	mov r5, #0
	add r7, sp, #0x34
_021E757E:
	add r1, r5, #0
	lsl r2, r5, #1
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, r2
	bl sub_02074B30
	add r1, r5, #0
	add r2, sp, #0x30
	add r0, r6, #0
	add r1, #0x3a
	add r2, r2, r5
	bl sub_02074B30
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021E757E
	add r7, sp, #0x24
	mov r5, #0
	add r7, #2
_021E75AA:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x46
	add r2, r7, r5
	bl sub_02074B30
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021E75AA
	add r2, sp, #0x20
	add r0, r6, #0
	mov r1, #0xc
	add r2, #1
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x7a
	add r2, sp, #0x20
	bl sub_02074B30
	add r2, sp, #0x1c
	add r0, r6, #0
	mov r1, #0xb
	add r2, #3
	bl sub_02074B30
	add r2, sp, #0x1c
	mov r1, #0x78
	add r0, sp, #0x18
	strb r1, [r0, #6]
	add r0, r6, #0
	mov r1, #9
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x20
	add r0, r6, #0
	mov r1, #0x9a
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x1c
	add r0, r6, #0
	mov r1, #0x6e
	add r2, #1
	bl sub_02074B30
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x91
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x9d
	add r2, #3
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #7
	add r2, sp, #0x2c
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x70
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strh r0, [r1, #0xc]
	add r0, r4, #0
	mov r1, #0x92
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0x93
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #1]
	add r0, r4, #0
	mov r1, #0x94
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x98
	add r2, sp, #0x24
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x92
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x93
	add r2, #1
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x94
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strh r0, [r1, #0xc]
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0x96
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1, #1]
	add r0, r4, #0
	mov r1, #0x97
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x18
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x99
	add r2, sp, #0x24
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x95
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x96
	add r2, #1
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x97
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020775EC
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7718: .word 0x000001EA
	thumb_func_end ov5_021E742C

	thumb_func_start ov5_021E771C
ov5_021E771C: ; 0x021E771C
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r3, #0x46
	add r2, sp, #0
	strb r3, [r2, #3]
	mov r5, #0
	strb r5, [r2, #2]
	mov r3, #4
	strb r3, [r2, #1]
	add r4, r0, #0
	strb r5, [r2]
	bl ov5_021E742C
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x4c
	add r2, #3
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #5
	add r2, r5, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	add r2, sp, #4
	bl sub_0200B274
	add r0, r4, #0
	mov r1, #0x75
	add r2, sp, #4
	bl sub_02074B30
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x4d
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x9b
	add r2, #1
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E771C

	thumb_func_start ov5_021E7790
ov5_021E7790: ; 0x021E7790
	push {r3, lr}
	bl ov5_021E6FF0
	bl ov5_021E73F0
	pop {r3, pc}
	thumb_func_end ov5_021E7790

	.rodata


	.global Unk_ov5_021F9F54
Unk_ov5_021F9F54: ; 0x021F9F54
	.incbin "incbin/overlay5_rodata.bin", 0x1640, 0x1658 - 0x1640

	.global Unk_ov5_021F9F6C
Unk_ov5_021F9F6C: ; 0x021F9F6C
	.incbin "incbin/overlay5_rodata.bin", 0x1658, 0x168E - 0x1658

	.global Unk_ov5_021F9FA2
Unk_ov5_021F9FA2: ; 0x021F9FA2
	.incbin "incbin/overlay5_rodata.bin", 0x168E, 0xEEC


	.bss


	.global Unk_ov5_02202124
Unk_ov5_02202124: ; 0x02202124
	.space 0x4

