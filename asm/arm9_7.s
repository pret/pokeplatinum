
	.include "macros/function.inc"
	.include "include/arm9_7.inc"

	.text

	thumb_func_start sub_0206940C
sub_0206940C: ; 0x0206940C
	push {r4, lr}
	mov r1, #0xd4
	bl sub_02018144
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0x10
	add r3, r4, #0
	lsr r1, r0, #1
	add r2, r0, #0
	add r3, #0xbc
	bl sub_0201CFEC
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206940C

	thumb_func_start sub_0206942C
sub_0206942C: ; 0x0206942C
	ldr r3, _02069430 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02069430: .word sub_020181C4
	thumb_func_end sub_0206942C

	thumb_func_start sub_02069434
sub_02069434: ; 0x02069434
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #0]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	add r0, #0xd0
	strb r1, [r0]
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x1c
	mov r2, #0xa0
	str r1, [r4, #0x18]
	bl sub_020C4CF4
	mov r3, #0
	add r2, r3, #0
	mov r0, #0x28
_0206945E:
	add r1, r3, #0
	mul r1, r0
	add r1, r4, r1
	str r2, [r1, #0x28]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _0206945E
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02069434

	thumb_func_start sub_02069474
sub_02069474: ; 0x02069474
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	ldr r1, _020695C0 ; =0x020EF8C8
	str r2, [sp, #0x14]
	ldrb r2, [r1, #4]
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	strb r2, [r0]
	ldrb r2, [r1, #5]
	str r3, [sp, #0x18]
	strb r2, [r0, #1]
	ldrb r2, [r1, #6]
	ldrb r1, [r1, #7]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAFC
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	mov r5, #0
	str r0, [sp, #0x24]
	add r0, #0x1c
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
_020694AA:
	add r0, sp, #0x28
	ldrb r4, [r0, r5]
	cmp r4, #0
	bne _020694B6
	bl sub_02022974
_020694B6:
	cmp r4, #1
	bhi _020694BE
	mov r6, #0
	b _020694E6
_020694BE:
	bl sub_0201D2E8
	add r6, r0, #0
	ldr r0, _020695C4 ; =0x0000FFFF
	add r1, r4, #0
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, r4
	blo _020694E6
	bl sub_02022974
_020694E6:
	lsl r1, r5, #1
	mov r0, #9
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r6, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02069510
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020E1F6C
	add r1, r5, r1
	add r0, r5, #0
	b _02069550
_02069510:
	cmp r0, #1
	bne _02069524
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020E1F6C
	add r0, r5, r4
	add r1, r5, r1
	sub r0, r0, #1
	b _02069550
_02069524:
	lsl r7, r4, #1
	cmp r6, r7
	bge _0206952E
	bl sub_02022974
_0206952E:
	sub r0, r6, r7
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	lsr r0, r1, #1
	add r0, r5, r0
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, #1
	add r1, r3, r2
	bne _0206954C
	add r1, r5, #0
	b _02069550
_0206954C:
	add r1, r5, r4
	sub r1, r1, #1
_02069550:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x28
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #4]
	ldr r3, [sp, #0x14]
	bl sub_02069820
	cmp r0, #0
	beq _02069584
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
_02069584:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _020694AA
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020695B2
	ldr r0, [sp, #0x18]
	bl sub_02069434
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	ldr r1, [r1, #0x1c]
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r2, #1
	bl sub_02055554
	b _020695B8
_020695B2:
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r1, [r0, #0x10]
_020695B8:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x10]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020695C0: .word 0x020EF8C8
_020695C4: .word 0x0000FFFF
	thumb_func_end sub_02069474

	thumb_func_start sub_020695C8
sub_020695C8: ; 0x020695C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	mov r4, #0
_020695D4:
	mov r0, #0x28
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0206962A
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02069994
	str r0, [r5, #0x2c]
	cmp r0, #0
	bne _02069618
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #0x64
	blo _02069606
	bl sub_02022974
_02069606:
	cmp r7, #0x32
	bhs _0206960E
	mov r0, #0
	b _02069610
_0206960E:
	mov r0, #1
_02069610:
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x30]
	b _0206962A
_02069618:
	ldr r0, [r6, #0]
	str r0, [r5, #0x24]
	ldr r0, [sp]
	add r0, #0x94
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02069B00
	str r0, [r5, #0x30]
_0206962A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _020695D4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020695C8

	thumb_func_start sub_02069638
sub_02069638: ; 0x02069638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
_02069640:
	mov r0, #0x28
	mul r0, r6
	add r4, r7, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02069680
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	cmp r0, #0
	beq _02069662
	add r0, r5, #0
	mov r3, #2
	bl ov5_021F3154
	str r0, [r4, #0x34]
	b _02069684
_02069662:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02069674
	add r0, r5, #0
	mov r3, #0
	bl ov5_021F3154
	str r0, [r4, #0x34]
	b _02069684
_02069674:
	add r0, r5, #0
	mov r3, #1
	bl ov5_021F3154
	str r0, [r4, #0x34]
	b _02069684
_02069680:
	mov r0, #0
	str r0, [r4, #0x34]
_02069684:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02069640
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02069638

	thumb_func_start sub_02069690
sub_02069690: ; 0x02069690
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r0, #0
	add r6, r4, #0
_02069698:
	mov r0, #0x28
	mul r0, r6
	add r5, r7, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020696BE
	bl ov5_021F31A8
	cmp r0, #0
	beq _020696C4
	ldr r0, [r5, #0x34]
	bl sub_0207136C
	mov r0, #0
	str r0, [r5, #0x34]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _020696C4
_020696BE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_020696C4:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02069698
	cmp r4, #4
	blo _020696D6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020696D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069690

	thumb_func_start sub_020696DC
sub_020696DC: ; 0x020696DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x24]
	add r6, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x28]
	mov r1, #0
	add r4, r3, #0
	str r1, [r7, #0]
	str r2, [sp]
	str r1, [r0, #0]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, ip
	add r3, sp, #4
	ldr r5, [sp, #0x20]
	bl sub_020698AC
	cmp r0, #0
	bne _0206970C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206970C:
	mov r0, #1
	str r0, [r4, #0x18]
	add r0, sp, #4
	ldrb r1, [r0]
	mov r0, #0x28
	mul r0, r1
	add r0, r4, r0
	ldr r1, [r0, #0x2c]
	ldr r6, [r0, #0x24]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02069756
	cmp r1, #0
	beq _02069752
	add r0, r4, #4
	bl sub_02069BCC
	str r6, [r5, #0]
	mov r0, #1
	str r0, [r7, #0]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_020698E4
	add r0, sp, #4
	ldrb r1, [r0]
	mov r0, #0x28
	mul r0, r1
	add r0, r4, r0
	ldr r1, [r0, #0x30]
	ldr r0, [sp, #0x28]
	add sp, #8
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02069752:
	str r6, [r5, #0]
	b _02069768
_02069756:
	str r6, [r5, #0]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [sp]
	bl sub_0206994C
	add r1, r4, #0
	add r1, #0xd0
	strb r0, [r1]
_02069768:
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020696DC

	thumb_func_start sub_02069774
sub_02069774: ; 0x02069774
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02069784
	bl sub_02022974
_02069784:
	str r4, [r5, #8]
	str r6, [r5, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02069774

	thumb_func_start sub_0206978C
sub_0206978C: ; 0x0206978C
	ldr r3, [r0, #8]
	str r3, [r1, #0]
	ldr r0, [r0, #0xc]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206978C

	thumb_func_start sub_02069798
sub_02069798: ; 0x02069798
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02069798

	thumb_func_start sub_0206979C
sub_0206979C: ; 0x0206979C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0206981A
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0206981A
	mov r6, #0
	add r5, r6, #0
_020697B4:
	add r0, r7, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x1c
	add r4, r0, r5
	add r0, r4, #0
	add r0, #0x1c
	add r1, #0xbc
	bl sub_0201CF7C
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020697D8
	cmp r0, #0
	bne _020697D8
	mov r0, #0
	str r0, [r4, #0xc]
_020697D8:
	add r6, r6, #1
	add r5, #0x28
	cmp r6, #4
	blt _020697B4
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r2, #0
	add r3, r0, #0
	add r4, r2, #0
	add r3, #0x1c
_020697EE:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _020697F6
	add r2, r2, #1
_020697F6:
	add r4, r4, #1
	add r3, #0x28
	cmp r4, #4
	blt _020697EE
	cmp r2, #4
	bne _0206981A
	bl sub_02069434
	ldr r1, [r7, #0x1c]
	add r0, r7, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #1
	bl sub_02055554
_0206981A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206979C

	thumb_func_start sub_0206981C
sub_0206981C: ; 0x0206981C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0206981C

	thumb_func_start sub_02069820
sub_02069820: ; 0x02069820
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r1, sp, #0x10
	sub r4, r2, #4
	ldrb r2, [r1, #0x10]
	ldrb r1, [r1, #0x14]
	ldr r5, [sp, #0x28]
	add r4, r4, r2
	sub r2, r3, #4
	add r6, r2, r1
	str r4, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	add r7, r0, #0
	str r6, [r5, #4]
	bl sub_02054F94
	bl sub_0205DAC8
	cmp r0, #0
	beq _020698A2
	lsl r0, r4, #0x10
	str r0, [r5, #0x1c]
	lsl r0, r6, #0x10
	str r0, [r5, #0x24]
	add r0, sp, #8
	str r0, [sp]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	add r0, r7, #0
	mov r1, #0
	bl sub_02054FBC
	ldr r1, [sp, #4]
	str r0, [r5, #0x20]
	cmp r1, r0
	beq _02069874
	mov r0, #0
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_02069874:
	asr r1, r4, #4
	asr r2, r6, #4
	lsr r1, r1, #0x1b
	lsr r2, r2, #0x1b
	add r1, r4, r1
	add r2, r6, r2
	ldr r0, [r7, #0x2c]
	asr r1, r1, #5
	asr r2, r2, #5
	bl sub_02039E30
	ldr r1, [r7, #0x1c]
	ldr r1, [r1, #0]
	cmp r1, r0
	beq _0206989A
	mov r0, #0
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_0206989A:
	mov r0, #1
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_020698A2:
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069820

	thumb_func_start sub_020698AC
sub_020698AC: ; 0x020698AC
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r6, #0x28
_020698B2:
	add r4, r5, #0
	mul r4, r6
	add r4, r0, r4
	ldr r7, [r4, #0x28]
	cmp r7, #0
	beq _020698D2
	ldr r7, [r4, #0x1c]
	cmp r1, r7
	bne _020698D2
	ldr r4, [r4, #0x20]
	cmp r2, r4
	bne _020698D2
	strb r5, [r3]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020698D2:
	add r4, r5, #1
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	cmp r5, #4
	blo _020698B2
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020698AC

	thumb_func_start sub_020698E4
sub_020698E4: ; 0x020698E4
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_0202D834
	bl sub_0202D830
	add r3, r5, #0
	add r3, #0xd0
	ldrb r3, [r3]
	add r4, r0, #0
	add r1, r4, #2
	lsl r6, r3, #2
	ldrh r3, [r1, r6]
	ldr r2, [r5, #4]
	cmp r3, r2
	bge _0206994A
	strh r2, [r1, r6]
	add r1, r5, #0
	add r1, #0xd0
	ldrb r1, [r1]
	ldr r2, [r5, #8]
	lsl r1, r1, #2
	strh r2, [r4, r1]
	bl ov6_02243160
	add r0, r5, #0
	add r0, #0xd0
	ldrb r0, [r0]
	ldr r2, [r5, #4]
	lsl r0, r0, #2
	add r0, r4, r0
	ldrh r0, [r0, #2]
	cmp r0, r2
	bgt _0206994A
	mov r1, #0
	mov r3, #2
_0206992E:
	sub r0, r3, r1
	lsl r6, r0, #2
	add r6, r4, r6
	ldrh r6, [r6, #2]
	cmp r2, r6
	bne _02069940
	add r5, #0xd0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02069940:
	add r1, r1, #1
	cmp r1, #3
	blt _0206992E
	bl sub_02022974
_0206994A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020698E4

	thumb_func_start sub_0206994C
sub_0206994C: ; 0x0206994C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	mov r2, #0
_0206995A:
	lsl r1, r2, #2
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _02069966
	add r0, r2, #0
	pop {r3, pc}
_02069966:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #3
	blo _0206995A
	ldrh r2, [r0, #2]
	ldrh r1, [r0, #6]
	cmp r2, r1
	blo _0206997C
	mov r1, #1
	b _0206997E
_0206997C:
	mov r1, #0
_0206997E:
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r2, #2
	add r1, r0, r1
	ldrh r1, [r1, #2]
	ldrh r0, [r0, #0xa]
	cmp r1, r0
	blo _02069990
	mov r2, #2
_02069990:
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end sub_0206994C

	thumb_func_start sub_02069994
sub_02069994: ; 0x02069994
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r3, _020699FC ; =0x020EF8C8
	add r5, r0, #0
	ldrb r4, [r3]
	add r2, sp, #0
	add r0, sp, #4
	strb r4, [r2, #4]
	ldrb r4, [r3, #1]
	add r7, sp, #0
	cmp r1, #1
	strb r4, [r2, #5]
	ldrb r4, [r3, #2]
	strb r4, [r2, #6]
	ldrb r4, [r3, #3]
	strb r4, [r2, #7]
	ldrb r4, [r3, #8]
	strb r4, [r2]
	ldrb r4, [r3, #9]
	strb r4, [r2, #1]
	ldrb r4, [r3, #0xa]
	strb r4, [r2, #2]
	ldrb r3, [r3, #0xb]
	strb r3, [r2, #3]
	bne _020699CA
	add r6, r0, #0
	b _020699D0
_020699CA:
	cmp r1, #4
	bne _020699D0
	add r6, r7, #0
_020699D0:
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _020699E8
	bl sub_02022974
_020699E8:
	ldrb r0, [r6, r5]
	cmp r4, r0
	bge _020699F4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020699F4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020699FC: .word 0x020EF8C8
	thumb_func_end sub_02069994

	thumb_func_start sub_02069A00
sub_02069A00: ; 0x02069A00
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #4
	bhi _02069AF0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02069A24: ; jump table
	.short _02069A2E - _02069A24 - 2 ; case 0
	.short _02069AB4 - _02069A24 - 2 ; case 1
	.short _02069AC0 - _02069A24 - 2 ; case 2
	.short _02069AE0 - _02069A24 - 2 ; case 3
	.short _02069AD2 - _02069A24 - 2 ; case 4
_02069A2E:
	ldr r0, [r4, #0x38]
	bl sub_02062C48
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0202D9C4
	add r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0x32
	bhs _02069A68
	mov r2, #0
	ldr r1, _02069AF4 ; =0x0000230A
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	add r0, r4, #0
	mov r1, #0x29
	bl sub_0203F098
	ldrb r2, [r6]
	mov r1, #0x32
	sub r1, r1, r2
	strh r1, [r0]
	mov r0, #4
	str r0, [r5, #0]
	b _02069AF0
_02069A68:
	mov r0, #0
	strb r0, [r6]
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r3, r4, #0
	add r3, #0x94
	add r2, r0, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02069474
	add r0, r4, #0
	add r0, #0x94
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _02069AAE
	add r0, r4, #0
	mov r1, #1
	bl sub_020695C8
	add r0, r4, #0
	add r4, #0x94
	ldr r1, [r4, #0]
	bl sub_02069638
	mov r0, #1
	str r0, [r5, #0]
	b _02069AF0
_02069AAE:
	mov r0, #3
	str r0, [r5, #0]
	b _02069AF0
_02069AB4:
	ldr r0, _02069AF8 ; =0x0000047E
	bl sub_0200549C
	mov r0, #2
	str r0, [r5, #0]
	b _02069AF0
_02069AC0:
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_02069690
	cmp r0, #0
	beq _02069AF0
	mov r0, #4
	str r0, [r5, #0]
	b _02069AF0
_02069AD2:
	bl sub_020181C4
	ldr r0, [r4, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02069AE0:
	mov r2, #0
	ldr r1, _02069AFC ; =0x0000230B
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	mov r0, #4
	str r0, [r5, #0]
_02069AF0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02069AF4: .word 0x0000230A
_02069AF8: .word 0x0000047E
_02069AFC: .word 0x0000230B
	thumb_func_end sub_02069A00

	thumb_func_start sub_02069B00
sub_02069B00: ; 0x02069B00
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _02069B0A
	mov r0, #0
	pop {r3, r4, r5, pc}
_02069B0A:
	add r2, r0, #0
	mov r1, #0xc8
	ldr r0, _02069B6C ; =0x00002008
	mul r2, r1
	sub r5, r0, r2
	cmp r5, #0xc8
	bge _02069B1A
	add r5, r1, #0
_02069B1A:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bne _02069B24
	bl sub_02022974
_02069B24:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02069B30
	mov r4, #0
	b _02069B5E
_02069B30:
	bl sub_0201D2E8
	add r4, r0, #0
	lsl r1, r5, #0x10
	ldr r0, _02069B70 ; =0x0000FFFF
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	blo _02069B5E
	bl sub_02022974
_02069B5E:
	cmp r4, #0
	bne _02069B66
	mov r0, #1
	pop {r3, r4, r5, pc}
_02069B66:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02069B6C: .word 0x00002008
_02069B70: .word 0x0000FFFF
	thumb_func_end sub_02069B00

	thumb_func_start sub_02069B74
sub_02069B74: ; 0x02069B74
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r0, r0, #4
	bl sub_02069BCC
	add r0, r4, #0
	add r4, #0x94
	ldr r1, [r4, #0]
	bl sub_020698E4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02069B74

	thumb_func_start sub_02069B90
sub_02069B90: ; 0x02069B90
	add r0, #0x94
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02069B90

	thumb_func_start sub_02069B98
sub_02069B98: ; 0x02069B98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207D990
	ldr r1, _02069BC8 ; =0x000001AF
	mov r2, #1
	mov r3, #4
	bl sub_0207D688
	cmp r0, #1
	bne _02069BC4
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0202D9C4
	ldrb r1, [r0]
	cmp r1, #0x32
	bhs _02069BC4
	add r1, r1, #1
	strb r1, [r0]
_02069BC4:
	pop {r4, pc}
	nop
_02069BC8: .word 0x000001AF
	thumb_func_end sub_02069B98

	thumb_func_start sub_02069BCC
sub_02069BCC: ; 0x02069BCC
	ldr r1, [r0, #0]
	add r2, r1, #1
	ldr r1, _02069BDC ; =0x000003E7
	str r2, [r0, #0]
	cmp r2, r1
	ble _02069BDA
	str r1, [r0, #0]
_02069BDA:
	bx lr
	; .align 2, 0
_02069BDC: .word 0x000003E7
	thumb_func_end sub_02069BCC

	thumb_func_start sub_02069BE0
sub_02069BE0: ; 0x02069BE0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #8
	bl sub_02062A54
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02069CA8
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062D10
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02069BE0

	thumb_func_start sub_02069C0C
sub_02069C0C: ; 0x02069C0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CA8
	cmp r0, #0
	beq _02069C3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02062D80
	ldr r6, _02069C40 ; =0x020EF8D4
_02069C2C:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02069C2C
_02069C3C:
	pop {r4, r5, r6, pc}
	nop
_02069C40: .word 0x020EF8D4
	thumb_func_end sub_02069C0C

	thumb_func_start sub_02069C44
sub_02069C44: ; 0x02069C44
	bx lr
	; .align 2, 0
	thumb_func_end sub_02069C44

	thumb_func_start sub_02069C48
sub_02069C48: ; 0x02069C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CFC
	cmp r0, #1
	bne _02069C86
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069D30
	add r0, r5, #0
	bl sub_02069D8C
	cmp r0, #1
	bne _02069C86
	add r0, r5, #0
	bl sub_02062D04
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02069C86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069C48

	thumb_func_start sub_02069C8C
sub_02069C8C: ; 0x02069C8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _02069CA4
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4]
_02069CA4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069C8C

	thumb_func_start sub_02069CA8
sub_02069CA8: ; 0x02069CA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062A40
	bl sub_0205EA24
	cmp r0, #0
	bne _02069CC0
	mov r0, #0
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02069CC0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _02069CCE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069CD4
_02069CCE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069CA8

	thumb_func_start sub_02069CD4
sub_02069CD4: ; 0x02069CD4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	mov r1, #1
	add r4, r0, #0
	strb r1, [r5, #1]
	bl sub_0205EABC
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_0205EAC8
	strh r0, [r5, #4]
	mov r0, #0xff
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069CD4

	thumb_func_start sub_02069CFC
sub_02069CFC: ; 0x02069CFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r6, r0, #0
	beq _02069D2C
	bl sub_0205EABC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205EAC8
	mov r1, #2
	ldrsh r1, [r5, r1]
	cmp r4, r1
	bne _02069D28
	mov r1, #4
	ldrsh r1, [r5, r1]
	cmp r0, r1
	beq _02069D2C
_02069D28:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02069D2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02069CFC

	thumb_func_start sub_02069D30
sub_02069D30: ; 0x02069D30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r4, r0, #0
	bl sub_0205EABC
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_0205EAC8
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069D30

	thumb_func_start sub_02069D50
sub_02069D50: ; 0x02069D50
	push {r3, lr}
	bl sub_02062C00
	bl sub_0205EF3C
	bl sub_0205EC14
	add r1, r0, #0
	sub r1, #0x58
	cmp r1, #3
	bhi _02069D88
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02069D72: ; jump table
	.short _02069D7A - _02069D72 - 2 ; case 0
	.short _02069D7E - _02069D72 - 2 ; case 1
	.short _02069D82 - _02069D72 - 2 ; case 2
	.short _02069D86 - _02069D72 - 2 ; case 3
_02069D7A:
	mov r0, #0x10
	pop {r3, pc}
_02069D7E:
	mov r0, #0x11
	pop {r3, pc}
_02069D82:
	mov r0, #0x12
	pop {r3, pc}
_02069D86:
	mov r0, #0x13
_02069D88:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02069D50

	thumb_func_start sub_02069D8C
sub_02069D8C: ; 0x02069D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02062C00
	bl sub_0205EF3C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp]
	add r0, r5, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205EAD4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205EAE0
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, r6
	bne _02069DC6
	cmp r7, r4
	beq _02069DEE
_02069DC6:
	add r0, r5, #0
	bl sub_02069D50
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02064488
	ldr r1, [sp, #4]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02069DEE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02069D8C

	thumb_func_start sub_02069DF4
sub_02069DF4: ; 0x02069DF4
	push {r3, r4, r5, lr}
	mov r1, #0xc
	add r5, r0, #0
	bl sub_02062A54
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069F48
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069DF4

	thumb_func_start sub_02069E1C
sub_02069E1C: ; 0x02069E1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069F48
	cmp r0, #0
	beq _02069E44
	ldr r6, _02069E48 ; =0x020EF8EC
_02069E34:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02069E34
_02069E44:
	pop {r4, r5, r6, pc}
	nop
_02069E48: .word 0x020EF8EC
	thumb_func_end sub_02069E1C

	thumb_func_start sub_02069E4C
sub_02069E4C: ; 0x02069E4C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02069E4C

	thumb_func_start sub_02069E50
sub_02069E50: ; 0x02069E50
	push {r3, lr}
	bl sub_02062A78
	mov r1, #0
	strb r1, [r0, #1]
	pop {r3, pc}
	thumb_func_end sub_02069E50

	thumb_func_start sub_02069E5C
sub_02069E5C: ; 0x02069E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069FE8
	cmp r0, #1
	bne _02069E94
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206A034
	cmp r0, #1
	bne _02069E94
	add r0, r5, #0
	bl sub_02062D04
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02069E94:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02069E5C

	thumb_func_start sub_02069E98
sub_02069E98: ; 0x02069E98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _02069EAA
	mov r0, #0
	pop {r3, r4, r5, pc}
_02069EAA:
	add r0, r5, #0
	bl sub_02062D10
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069E98

	thumb_func_start sub_02069EB8
sub_02069EB8: ; 0x02069EB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #8]
	bl sub_02062950
	str r0, [sp]
	add r0, r4, #0
	bl sub_02062918
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02067F24
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062A40
	ldr r1, [sp]
	add r7, r0, #0
	cmp r1, #8
	bhi _02069F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02069EF2: ; jump table
	.short _02069F40 - _02069EF2 - 2 ; case 0
	.short _02069F04 - _02069EF2 - 2 ; case 1
	.short _02069F04 - _02069EF2 - 2 ; case 2
	.short _02069F04 - _02069EF2 - 2 ; case 3
	.short _02069F04 - _02069EF2 - 2 ; case 4
	.short _02069F04 - _02069EF2 - 2 ; case 5
	.short _02069F04 - _02069EF2 - 2 ; case 6
	.short _02069F04 - _02069EF2 - 2 ; case 7
	.short _02069F04 - _02069EF2 - 2 ; case 8
_02069F04:
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02069F40
_02069F12:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _02069F30
	bl sub_02062918
	cmp r6, r0
	bne _02069F30
	ldr r0, [sp, #4]
	bl sub_02067F24
	cmp r5, r0
	bne _02069F30
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02069F30:
	add r0, r7, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02069F12
_02069F40:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069EB8

	thumb_func_start sub_02069F48
sub_02069F48: ; 0x02069F48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	bl sub_02062A40
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02062918
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02067F24
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	bne _02069FBA
_02069F7A:
	ldr r0, [sp, #4]
	cmp r5, r0
	beq _02069FAA
	bl sub_02062918
	cmp r7, r0
	bne _02069FAA
	ldr r0, [sp, #4]
	bl sub_02067F24
	cmp r6, r0
	bne _02069FAA
	ldr r0, [sp]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02069FA4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02069FC4
_02069FA4:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02069FAA:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02069F7A
_02069FBA:
	ldr r1, [sp]
	mov r0, #0
	strb r0, [r1, #1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02069F48

	thumb_func_start sub_02069FC4
sub_02069FC4: ; 0x02069FC4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #1
	add r4, r2, #0
	strb r0, [r5, #1]
	add r0, r4, #0
	bl sub_02063020
	strh r0, [r5, #2]
	add r0, r4, #0
	bl sub_02063040
	strh r0, [r5, #4]
	mov r0, #0xff
	strh r0, [r5, #6]
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02069FC4

	thumb_func_start sub_02069FE8
sub_02069FE8: ; 0x02069FE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r5, [r1, #8]
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063008
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063018
	cmp r6, r4
	bne _0206A012
	cmp r7, r0
	beq _0206A02E
_0206A012:
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	beq _0206A02A
	mov r1, #0x61
	add r0, r5, #0
	lsl r1, r1, #6
	bl sub_020628D0
	cmp r0, #0
	bne _0206A02E
_0206A02A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A02E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02069FE8

	thumb_func_start sub_0206A034
sub_0206A034: ; 0x0206A034
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl sub_02063020
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02063040
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_02063020
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_02063008
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	bl sub_02063018
	add r3, r0, #0
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0206A07A
	cmp r6, r7
	bne _0206A07A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206A07A:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02064488
	add r5, r0, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r5, #0
	bl sub_020641A8
	add r1, r6, r0
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0206A09E
	cmp r1, r7
	beq _0206A0B4
_0206A09E:
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02065668
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206A0B4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206A034

	thumb_func_start sub_0206A0BC
sub_0206A0BC: ; 0x0206A0BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #8
	bl sub_02062A54
	strb r5, [r0, #1]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062D10
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	ldr r5, _0206A100 ; =0x020EF8F4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02063088
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0206A100: .word 0x020EF8F4
	thumb_func_end sub_0206A0BC

	thumb_func_start sub_0206A104
sub_0206A104: ; 0x0206A104
	ldr r3, _0206A10C ; =sub_0206A0BC
	mov r1, #0
	bx r3
	nop
_0206A10C: .word sub_0206A0BC
	thumb_func_end sub_0206A104

	thumb_func_start sub_0206A110
sub_0206A110: ; 0x0206A110
	ldr r3, _0206A118 ; =sub_0206A0BC
	mov r1, #1
	bx r3
	nop
_0206A118: .word sub_0206A0BC
	thumb_func_end sub_0206A110

	thumb_func_start sub_0206A11C
sub_0206A11C: ; 0x0206A11C
	ldr r3, _0206A124 ; =sub_0206A0BC
	mov r1, #2
	bx r3
	nop
_0206A124: .word sub_0206A0BC
	thumb_func_end sub_0206A11C

	thumb_func_start sub_0206A128
sub_0206A128: ; 0x0206A128
	ldr r3, _0206A130 ; =sub_0206A0BC
	mov r1, #3
	bx r3
	nop
_0206A130: .word sub_0206A0BC
	thumb_func_end sub_0206A128

	thumb_func_start sub_0206A134
sub_0206A134: ; 0x0206A134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A154 ; =0x020EF8DC
	add r4, r0, #0
_0206A140:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0206A140
	pop {r4, r5, r6, pc}
	nop
_0206A154: .word 0x020EF8DC
	thumb_func_end sub_0206A134

	thumb_func_start sub_0206A158
sub_0206A158: ; 0x0206A158
	push {r3, lr}
	bl sub_0206A224
	cmp r0, #0
	beq _0206A166
	bl ov5_021DF74C
_0206A166:
	pop {r3, pc}
	thumb_func_end sub_0206A158

	thumb_func_start sub_0206A168
sub_0206A168: ; 0x0206A168
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02062A78
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5]
	add r0, r4, #0
	bl sub_0206A218
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0206A1A4
	ldr r5, _0206A1A8 ; =0x020EF900
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02063088
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
_0206A1A4:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0206A1A8: .word 0x020EF900
	thumb_func_end sub_0206A168

	thumb_func_start sub_0206A1AC
sub_0206A1AC: ; 0x0206A1AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #2]
	add r5, r0, #0
	cmp r1, #0
	bne _0206A1C6
	ldrb r1, [r4, #1]
	bl ov5_021F3D90
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206A218
_0206A1C6:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A1AC

	thumb_func_start sub_0206A1DC
sub_0206A1DC: ; 0x0206A1DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #2]
	add r5, r0, #0
	cmp r1, #0
	bne _0206A214
	bl sub_0206A224
	cmp r0, #0
	bne _0206A20A
	add r0, r5, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _0206A20A
	ldrb r1, [r4, #1]
	add r0, r5, #0
	bl ov5_021F3D90
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206A218
_0206A20A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
_0206A214:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A1DC

	thumb_func_start sub_0206A218
sub_0206A218: ; 0x0206A218
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062A78
	str r4, [r0, #4]
	pop {r4, pc}
	thumb_func_end sub_0206A218

	thumb_func_start sub_0206A224
sub_0206A224: ; 0x0206A224
	push {r3, lr}
	bl sub_02062A78
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206A224

	thumb_func_start sub_0206A230
sub_0206A230: ; 0x0206A230
	push {r3, lr}
	bl sub_02062A78
	mov r1, #1
	strb r1, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_0206A230

	thumb_func_start sub_0206A23C
sub_0206A23C: ; 0x0206A23C
	push {r3, r4, r5, lr}
	mov r1, #4
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02062A54
	mov r1, #0
	mvn r1, r1
	strb r1, [r0, #1]
	strb r4, [r0, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_02062974
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A23C

	thumb_func_start sub_0206A25C
sub_0206A25C: ; 0x0206A25C
	ldr r3, _0206A264 ; =sub_0206A23C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A264: .word sub_0206A23C
	thumb_func_end sub_0206A25C

	thumb_func_start sub_0206A268
sub_0206A268: ; 0x0206A268
	ldr r3, _0206A270 ; =sub_0206A23C
	mov r1, #1
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A270: .word sub_0206A23C
	thumb_func_end sub_0206A268

	thumb_func_start sub_0206A274
sub_0206A274: ; 0x0206A274
	ldr r3, _0206A27C ; =sub_0206A23C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A27C: .word sub_0206A23C
	thumb_func_end sub_0206A274

	thumb_func_start sub_0206A280
sub_0206A280: ; 0x0206A280
	ldr r3, _0206A288 ; =sub_0206A23C
	mov r1, #3
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A288: .word sub_0206A23C
	thumb_func_end sub_0206A280

	thumb_func_start sub_0206A28C
sub_0206A28C: ; 0x0206A28C
	ldr r3, _0206A294 ; =sub_0206A23C
	mov r1, #0
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A294: .word sub_0206A23C
	thumb_func_end sub_0206A28C

	thumb_func_start sub_0206A298
sub_0206A298: ; 0x0206A298
	ldr r3, _0206A2A0 ; =sub_0206A23C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A2A0: .word sub_0206A23C
	thumb_func_end sub_0206A298

	thumb_func_start sub_0206A2A4
sub_0206A2A4: ; 0x0206A2A4
	ldr r3, _0206A2AC ; =sub_0206A23C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A2AC: .word sub_0206A23C
	thumb_func_end sub_0206A2A4

	thumb_func_start sub_0206A2B0
sub_0206A2B0: ; 0x0206A2B0
	ldr r3, _0206A2B8 ; =sub_0206A23C
	mov r1, #3
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A2B8: .word sub_0206A23C
	thumb_func_end sub_0206A2B0

	thumb_func_start sub_0206A2BC
sub_0206A2BC: ; 0x0206A2BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A2DC ; =0x020EF918
	add r4, r0, #0
_0206A2C8:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0206A2C8
	pop {r4, r5, r6, pc}
	nop
_0206A2DC: .word 0x020EF918
	thumb_func_end sub_0206A2BC

	thumb_func_start sub_0206A2E0
sub_0206A2E0: ; 0x0206A2E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206298C
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A2E0

	thumb_func_start sub_0206A30C
sub_0206A30C: ; 0x0206A30C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _0206A320
	mov r0, #2
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0206A320:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206A30C

	thumb_func_start sub_0206A324
sub_0206A324: ; 0x0206A324
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	ldrsb r2, [r4, r1]
	sub r1, r1, #2
	add r5, r0, #0
	cmp r2, r1
	bne _0206A340
	bl sub_02062C00
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	strb r0, [r4, #1]
_0206A340:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #3
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A324

	thumb_func_start sub_0206A354
sub_0206A354: ; 0x0206A354
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02064238
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DAD4
	cmp r0, #0
	bne _0206A36E
	mov r4, #2
_0206A36E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063EBC
	orr r0, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206A354

	thumb_func_start sub_0206A37C
sub_0206A37C: ; 0x0206A37C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #0
	bne _0206A38E
	bl sub_02063EBC
	b _0206A392
_0206A38E:
	bl sub_0206A354
_0206A392:
	cmp r0, #0
	beq _0206A3A2
	add r0, r4, #0
	mov r1, #0
	bl sub_02065838
	add r6, r0, #0
	b _0206A3B2
_0206A3A2:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02065838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062D04
_0206A3B2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02065668
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206A37C

	thumb_func_start sub_0206A3BC
sub_0206A3BC: ; 0x0206A3BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062C00
	add r7, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EA78
	add r6, r0, #0
	ldr r0, [r7, #0x3c]
	bl sub_0205EC1C
	cmp r0, #6
	bhi _0206A44A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206A3E6: ; jump table
	.short _0206A3F4 - _0206A3E6 - 2 ; case 0
	.short _0206A3F4 - _0206A3E6 - 2 ; case 1
	.short _0206A406 - _0206A3E6 - 2 ; case 2
	.short _0206A414 - _0206A3E6 - 2 ; case 3
	.short _0206A422 - _0206A3E6 - 2 ; case 4
	.short _0206A430 - _0206A3E6 - 2 ; case 5
	.short _0206A43E - _0206A3E6 - 2 ; case 6
_0206A3F4:
	add r0, r6, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	b _0206A44A
_0206A406:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #4
	bl sub_0206A37C
	b _0206A44A
_0206A414:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	bl sub_0206A37C
	b _0206A44A
_0206A422:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xc
	bl sub_0206A37C
	b _0206A44A
_0206A430:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	bl sub_0206A37C
	b _0206A44A
_0206A43E:
	ldrb r3, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x14
	bl sub_0206A37C
_0206A44A:
	mov r0, #4
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206A3BC

	thumb_func_start sub_0206A454
sub_0206A454: ; 0x0206A454
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #0
	bne _0206A466
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206A466:
	add r0, r5, #0
	bl sub_02062D10
	add r0, r5, #0
	bl sub_02062D34
	mov r0, #2
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A454

	thumb_func_start sub_0206A47C
sub_0206A47C: ; 0x0206A47C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02062A54
	str r5, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206A47C

	thumb_func_start sub_0206A490
sub_0206A490: ; 0x0206A490
	ldr r3, _0206A498 ; =sub_0206A47C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A498: .word sub_0206A47C
	thumb_func_end sub_0206A490

	thumb_func_start sub_0206A49C
sub_0206A49C: ; 0x0206A49C
	ldr r3, _0206A4A4 ; =sub_0206A47C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0206A4A4: .word sub_0206A47C
	thumb_func_end sub_0206A49C

	thumb_func_start sub_0206A4A8
sub_0206A4A8: ; 0x0206A4A8
	ldr r3, _0206A4B0 ; =sub_0206A47C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0206A4B0: .word sub_0206A47C
	thumb_func_end sub_0206A4A8

	thumb_func_start sub_0206A4B4
sub_0206A4B4: ; 0x0206A4B4
	ldr r3, _0206A4BC ; =sub_0206A47C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_0206A4BC: .word sub_0206A47C
	thumb_func_end sub_0206A4B4

	thumb_func_start sub_0206A4C0
sub_0206A4C0: ; 0x0206A4C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062A78
	ldr r6, _0206A4E0 ; =0x020EF90C
	add r4, r0, #0
_0206A4CC:
	ldr r2, [r4, #0]
	add r0, r5, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	beq _0206A4CC
	pop {r4, r5, r6, pc}
	nop
_0206A4E0: .word 0x020EF90C
	thumb_func_end sub_0206A4C0

	thumb_func_start sub_0206A4E4
sub_0206A4E4: ; 0x0206A4E4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062D10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206A4E4

	thumb_func_start sub_0206A4F8
sub_0206A4F8: ; 0x0206A4F8
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0xc
	bl sub_0206A630
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206A4F8

	thumb_func_start sub_0206A50C
sub_0206A50C: ; 0x0206A50C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020658DC
	cmp r0, #1
	bne _0206A520
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_0206A520:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0206A50C

	thumb_func_start sub_0206A524
sub_0206A524: ; 0x0206A524
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r6, _0206A544 ; =0x020EF94C
	lsl r5, r4, #2
	lsl r4, r3, #3
	ldr r3, _0206A548 ; =0x020EF92C
	add r3, r3, r4
	add r4, r6, r4
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	add r1, r1, r3
	add r2, r2, r4
	bl sub_02054F68
	pop {r4, r5, r6, pc}
	nop
_0206A544: .word 0x020EF94C
_0206A548: .word 0x020EF92C
	thumb_func_end sub_0206A524

	thumb_func_start sub_0206A54C
sub_0206A54C: ; 0x0206A54C
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r6, _0206A56C ; =0x020EF9AC
	lsl r5, r4, #2
	lsl r4, r3, #3
	ldr r3, _0206A570 ; =0x020EF98C
	add r3, r3, r4
	add r4, r6, r4
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	add r1, r1, r3
	add r2, r2, r4
	bl sub_02054F68
	pop {r4, r5, r6, pc}
	nop
_0206A56C: .word 0x020EF9AC
_0206A570: .word 0x020EF98C
	thumb_func_end sub_0206A54C

	thumb_func_start sub_0206A574
sub_0206A574: ; 0x0206A574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_0206A524
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A574

	thumb_func_start sub_0206A5A4
sub_0206A5A4: ; 0x0206A5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02062C00
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02063020
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063040
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r6, #0
	str r4, [sp]
	bl sub_0206A54C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A5A4

	thumb_func_start sub_0206A5D4
sub_0206A5D4: ; 0x0206A5D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0206A574
	cmp r0, #0
	bne _0206A602
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0206A5A4
	cmp r0, #0
	bne _0206A5F8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0206A5F8:
	ldr r0, _0206A608 ; =0x020EF96C
	lsl r2, r5, #3
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r5, [r1, r0]
_0206A602:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0206A608: .word 0x020EF96C
	thumb_func_end sub_0206A5D4

	thumb_func_start sub_0206A60C
sub_0206A60C: ; 0x0206A60C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	bl sub_0206A5D4
	str r0, [r5, #0]
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0206A62C
	add r0, r4, #0
	bl sub_02063EBC
	pop {r3, r4, r5, pc}
_0206A62C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206A60C

	thumb_func_start sub_0206A630
sub_0206A630: ; 0x0206A630
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r4, [r6, #8]
	add r5, r0, #0
	add r7, r2, #0
	bl sub_0206298C
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r2, #0
	ldr r1, [sp]
	mvn r2, r2
	cmp r1, r2
	bne _0206A66E
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A66E:
	cmp r0, #0
	bne _0206A68E
	add r0, r1, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A68E:
	mov r2, #1
	tst r2, r0
	beq _0206A6FC
	ldr r2, [r6, #4]
	cmp r2, #2
	bne _0206A6FC
	add r0, r5, #0
	bl sub_0206298C
	bl sub_0206447C
	str r0, [sp]
	ldr r0, _0206A778 ; =0x020EF8E4
	lsl r1, r4, #2
	ldr r4, [r0, r1]
	add r0, r5, #0
	str r4, [r6, #8]
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r2, #0
	ldr r1, [sp]
	mvn r2, r2
	cmp r1, r2
	bne _0206A6DC
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A6DC:
	cmp r0, #0
	bne _0206A6FC
	add r0, r1, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A6FC:
	mov r2, #2
	tst r0, r2
	beq _0206A75C
	ldr r0, _0206A77C ; =0x020EF9CC
	lsl r2, r1, #3
	add r0, r0, r2
	lsl r1, r4, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0206A60C
	mov r1, #0
	ldr r2, [sp]
	mvn r1, r1
	cmp r2, r1
	bne _0206A73C
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206A73C:
	cmp r0, #0
	bne _0206A75C
	add r0, r2, #0
	add r1, r7, #0
	bl sub_02065838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062D04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206A75C:
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0x1c
	str r0, [sp]
	bl sub_02065838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02065668
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206A778: .word 0x020EF8E4
_0206A77C: .word 0x020EF9CC
	thumb_func_end sub_0206A630

	thumb_func_start sub_0206A780
sub_0206A780: ; 0x0206A780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _0206A838 ; =0x020EF9EC
	add r2, sp, #0x10
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x5b
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x5b
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	add r0, r7, #0
	add r1, sp, #0x10
	mov r2, #2
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #0x55
	add r1, r4, #0
	bl sub_02006C24
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0206A83C ; =0x000034D8
	mov r2, #0
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r3, r2, #0
	bl ov5_021D32E8
	ldr r0, _0206A83C ; =0x000034D8
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0206A83C ; =0x000034D8
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #3
	mov r3, #0
	bl ov5_021D339C
	mov r2, #1
	ldr r0, _0206A83C ; =0x000034D8
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	mov r3, #0
	bl ov5_021D3414
	ldr r4, _0206A840 ; =0x020EFA04
	mov r6, #0
	add r5, r7, #0
_0206A812:
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021D3584
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #2
	blo _0206A812
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, r7, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206A838: .word 0x020EF9EC
_0206A83C: .word 0x000034D8
_0206A840: .word 0x020EFA04
	thumb_func_end sub_0206A780

	thumb_func_start sub_0206A844
sub_0206A844: ; 0x0206A844
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x59
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0206A850:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0206A85A
	bl sub_0200D0F4
_0206A85A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0206A850
	add r0, r7, #0
	bl ov5_021D375C
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A844

	thumb_func_start sub_0206A870
sub_0206A870: ; 0x0206A870
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r6, #0x59
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r7, r7, #0xc
	lsl r6, r6, #2
_0206A880:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0206A88E
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02021E2C
_0206A88E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0206A880
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_020219F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A870

	thumb_func_start sub_0206A8A0
sub_0206A8A0: ; 0x0206A8A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r3, #0
	bl sub_0200D4C4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206A8A0

	thumb_func_start sub_0206A8C4
sub_0206A8C4: ; 0x0206A8C4
	push {r3, lr}
	cmp r1, #2
	bhs _0206A8DA
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl sub_0200D3F4
_0206A8DA:
	pop {r3, pc}
	thumb_func_end sub_0206A8C4

	thumb_func_start sub_0206A8DC
sub_0206A8DC: ; 0x0206A8DC
	ldr r3, _0206A8E0 ; =sub_0205081C
	bx r3
	; .align 2, 0
_0206A8E0: .word sub_0205081C
	thumb_func_end sub_0206A8DC

	thumb_func_start sub_0206A8E4
sub_0206A8E4: ; 0x0206A8E4
	ldr r3, _0206A8E8 ; =sub_02050844
	bx r3
	; .align 2, 0
_0206A8E8: .word sub_02050844
	thumb_func_end sub_0206A8E4

	thumb_func_start sub_0206A8EC
sub_0206A8EC: ; 0x0206A8EC
	ldr r3, _0206A8F0 ; =sub_020507F0
	bx r3
	; .align 2, 0
_0206A8F0: .word sub_020507F0
	thumb_func_end sub_0206A8EC

	thumb_func_start sub_0206A8F4
sub_0206A8F4: ; 0x0206A8F4
	push {r3, lr}
	cmp r1, #0
	beq _0206A90E
	cmp r1, #1
	beq _0206A904
	cmp r1, #2
	beq _0206A918
	b _0206A922
_0206A904:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8DC
	b _0206A926
_0206A90E:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8E4
	b _0206A926
_0206A918:
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0206A8EC
	pop {r3, pc}
_0206A922:
	bl sub_02022974
_0206A926:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206A8F4

	thumb_func_start sub_0206A92C
sub_0206A92C: ; 0x0206A92C
	ldr r3, _0206A934 ; =sub_0206A8DC
	mov r1, #0x96
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206A934: .word sub_0206A8DC
	thumb_func_end sub_0206A92C

	thumb_func_start sub_0206A938
sub_0206A938: ; 0x0206A938
	ldr r3, _0206A940 ; =sub_0206A8EC
	mov r1, #0x96
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206A940: .word sub_0206A8EC
	thumb_func_end sub_0206A938

	thumb_func_start sub_0206A944
sub_0206A944: ; 0x0206A944
	ldr r3, _0206A94C ; =sub_0206A8DC
	ldr r1, _0206A950 ; =0x00000964
	bx r3
	nop
_0206A94C: .word sub_0206A8DC
_0206A950: .word 0x00000964
	thumb_func_end sub_0206A944

	thumb_func_start sub_0206A954
sub_0206A954: ; 0x0206A954
	ldr r3, _0206A95C ; =sub_0206A8EC
	ldr r1, _0206A960 ; =0x00000964
	bx r3
	nop
_0206A95C: .word sub_0206A8EC
_0206A960: .word 0x00000964
	thumb_func_end sub_0206A954

	thumb_func_start sub_0206A964
sub_0206A964: ; 0x0206A964
	ldr r3, _0206A96C ; =sub_0206A8DC
	ldr r1, _0206A970 ; =0x00000961
	bx r3
	nop
_0206A96C: .word sub_0206A8DC
_0206A970: .word 0x00000961
	thumb_func_end sub_0206A964

	thumb_func_start sub_0206A974
sub_0206A974: ; 0x0206A974
	ldr r3, _0206A97C ; =sub_0206A8E4
	ldr r1, _0206A980 ; =0x00000961
	bx r3
	nop
_0206A97C: .word sub_0206A8E4
_0206A980: .word 0x00000961
	thumb_func_end sub_0206A974

	thumb_func_start sub_0206A984
sub_0206A984: ; 0x0206A984
	ldr r3, _0206A98C ; =sub_0206A8EC
	ldr r1, _0206A990 ; =0x00000961
	bx r3
	nop
_0206A98C: .word sub_0206A8EC
_0206A990: .word 0x00000961
	thumb_func_end sub_0206A984

	thumb_func_start sub_0206A994
sub_0206A994: ; 0x0206A994
	ldr r3, _0206A99C ; =sub_0206A8DC
	ldr r1, _0206A9A0 ; =0x00000965
	bx r3
	nop
_0206A99C: .word sub_0206A8DC
_0206A9A0: .word 0x00000965
	thumb_func_end sub_0206A994

	thumb_func_start sub_0206A9A4
sub_0206A9A4: ; 0x0206A9A4
	ldr r3, _0206A9AC ; =sub_0206A8E4
	ldr r1, _0206A9B0 ; =0x00000965
	bx r3
	nop
_0206A9AC: .word sub_0206A8E4
_0206A9B0: .word 0x00000965
	thumb_func_end sub_0206A9A4

	thumb_func_start sub_0206A9B4
sub_0206A9B4: ; 0x0206A9B4
	ldr r3, _0206A9BC ; =sub_0206A8EC
	ldr r1, _0206A9C0 ; =0x00000965
	bx r3
	nop
_0206A9BC: .word sub_0206A8EC
_0206A9C0: .word 0x00000965
	thumb_func_end sub_0206A9B4

	thumb_func_start sub_0206A9C4
sub_0206A9C4: ; 0x0206A9C4
	ldr r3, _0206A9CC ; =sub_0206A8DC
	ldr r1, _0206A9D0 ; =0x0000096D
	bx r3
	nop
_0206A9CC: .word sub_0206A8DC
_0206A9D0: .word 0x0000096D
	thumb_func_end sub_0206A9C4

	thumb_func_start sub_0206A9D4
sub_0206A9D4: ; 0x0206A9D4
	ldr r3, _0206A9DC ; =sub_0206A8E4
	ldr r1, _0206A9E0 ; =0x0000096D
	bx r3
	nop
_0206A9DC: .word sub_0206A8E4
_0206A9E0: .word 0x0000096D
	thumb_func_end sub_0206A9D4

	thumb_func_start sub_0206A9E4
sub_0206A9E4: ; 0x0206A9E4
	ldr r3, _0206A9EC ; =sub_0206A8EC
	ldr r1, _0206A9F0 ; =0x0000096D
	bx r3
	nop
_0206A9EC: .word sub_0206A8EC
_0206A9F0: .word 0x0000096D
	thumb_func_end sub_0206A9E4

	thumb_func_start sub_0206A9F4
sub_0206A9F4: ; 0x0206A9F4
	ldr r3, _0206A9FC ; =sub_0206A8DC
	ldr r1, _0206AA00 ; =0x0000096E
	bx r3
	nop
_0206A9FC: .word sub_0206A8DC
_0206AA00: .word 0x0000096E
	thumb_func_end sub_0206A9F4

	thumb_func_start sub_0206AA04
sub_0206AA04: ; 0x0206AA04
	ldr r3, _0206AA0C ; =sub_0206A8DC
	ldr r1, _0206AA10 ; =0x0000096F
	bx r3
	nop
_0206AA0C: .word sub_0206A8DC
_0206AA10: .word 0x0000096F
	thumb_func_end sub_0206AA04

	thumb_func_start sub_0206AA14
sub_0206AA14: ; 0x0206AA14
	ldr r3, _0206AA1C ; =sub_0206A8DC
	mov r1, #0x97
	lsl r1, r1, #4
	bx r3
	; .align 2, 0
_0206AA1C: .word sub_0206A8DC
	thumb_func_end sub_0206AA14

	thumb_func_start sub_0206AA20
sub_0206AA20: ; 0x0206AA20
	ldr r3, _0206AA28 ; =sub_0206A8DC
	ldr r1, _0206AA2C ; =0x00000971
	bx r3
	nop
_0206AA28: .word sub_0206A8DC
_0206AA2C: .word 0x00000971
	thumb_func_end sub_0206AA20

	thumb_func_start sub_0206AA30
sub_0206AA30: ; 0x0206AA30
	ldr r3, _0206AA38 ; =sub_0206A8DC
	ldr r1, _0206AA3C ; =0x00000972
	bx r3
	nop
_0206AA38: .word sub_0206A8DC
_0206AA3C: .word 0x00000972
	thumb_func_end sub_0206AA30

	thumb_func_start sub_0206AA40
sub_0206AA40: ; 0x0206AA40
	ldr r3, _0206AA48 ; =sub_0206A8DC
	ldr r1, _0206AA4C ; =0x00000973
	bx r3
	nop
_0206AA48: .word sub_0206A8DC
_0206AA4C: .word 0x00000973
	thumb_func_end sub_0206AA40

	thumb_func_start sub_0206AA50
sub_0206AA50: ; 0x0206AA50
	push {r3, lr}
	cmp r1, #4
	bhi _0206AA92
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AA62: ; jump table
	.short _0206AA6C - _0206AA62 - 2 ; case 0
	.short _0206AA74 - _0206AA62 - 2 ; case 1
	.short _0206AA7C - _0206AA62 - 2 ; case 2
	.short _0206AA84 - _0206AA62 - 2 ; case 3
	.short _0206AA8C - _0206AA62 - 2 ; case 4
_0206AA6C:
	ldr r1, _0206AA94 ; =0x00000968
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA74:
	ldr r1, _0206AA98 ; =0x00000969
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA7C:
	ldr r1, _0206AA9C ; =0x0000096A
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA84:
	ldr r1, _0206AAA0 ; =0x0000096B
	bl sub_0206A8DC
	pop {r3, pc}
_0206AA8C:
	ldr r1, _0206AAA4 ; =0x0000096C
	bl sub_0206A8DC
_0206AA92:
	pop {r3, pc}
	; .align 2, 0
_0206AA94: .word 0x00000968
_0206AA98: .word 0x00000969
_0206AA9C: .word 0x0000096A
_0206AAA0: .word 0x0000096B
_0206AAA4: .word 0x0000096C
	thumb_func_end sub_0206AA50

	thumb_func_start sub_0206AAA8
sub_0206AAA8: ; 0x0206AAA8
	push {r3, lr}
	cmp r1, #4
	bhi _0206AAEA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AABA: ; jump table
	.short _0206AAC4 - _0206AABA - 2 ; case 0
	.short _0206AACC - _0206AABA - 2 ; case 1
	.short _0206AAD4 - _0206AABA - 2 ; case 2
	.short _0206AADC - _0206AABA - 2 ; case 3
	.short _0206AAE4 - _0206AABA - 2 ; case 4
_0206AAC4:
	ldr r1, _0206AAEC ; =0x00000968
	bl sub_0206A8EC
	pop {r3, pc}
_0206AACC:
	ldr r1, _0206AAF0 ; =0x00000969
	bl sub_0206A8EC
	pop {r3, pc}
_0206AAD4:
	ldr r1, _0206AAF4 ; =0x0000096A
	bl sub_0206A8EC
	pop {r3, pc}
_0206AADC:
	ldr r1, _0206AAF8 ; =0x0000096B
	bl sub_0206A8EC
	pop {r3, pc}
_0206AAE4:
	ldr r1, _0206AAFC ; =0x0000096C
	bl sub_0206A8EC
_0206AAEA:
	pop {r3, pc}
	; .align 2, 0
_0206AAEC: .word 0x00000968
_0206AAF0: .word 0x00000969
_0206AAF4: .word 0x0000096A
_0206AAF8: .word 0x0000096B
_0206AAFC: .word 0x0000096C
	thumb_func_end sub_0206AAA8

	thumb_func_start sub_0206AB00
sub_0206AB00: ; 0x0206AB00
	push {r3, lr}
	mov r2, #0
	cmp r1, #5
	bhi _0206AB52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AB14: ; jump table
	.short _0206AB52 - _0206AB14 - 2 ; case 0
	.short _0206AB20 - _0206AB14 - 2 ; case 1
	.short _0206AB2A - _0206AB14 - 2 ; case 2
	.short _0206AB36 - _0206AB14 - 2 ; case 3
	.short _0206AB40 - _0206AB14 - 2 ; case 4
	.short _0206AB4A - _0206AB14 - 2 ; case 5
_0206AB20:
	ldr r1, _0206AB58 ; =0x0000097F
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB2A:
	mov r1, #0x26
	lsl r1, r1, #6
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB36:
	ldr r1, _0206AB5C ; =0x00000981
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB40:
	ldr r1, _0206AB60 ; =0x00000982
	bl sub_0206A8EC
	add r2, r0, #0
	b _0206AB52
_0206AB4A:
	ldr r1, _0206AB64 ; =0x00000983
	bl sub_0206A8EC
	add r2, r0, #0
_0206AB52:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206AB58: .word 0x0000097F
_0206AB5C: .word 0x00000981
_0206AB60: .word 0x00000982
_0206AB64: .word 0x00000983
	thumb_func_end sub_0206AB00

	thumb_func_start sub_0206AB68
sub_0206AB68: ; 0x0206AB68
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _0206AD2C ; =0x00000132
	add r6, r0, #0
	mov r5, #0
	cmp r4, r1
	bgt _0206ABC6
	blt _0206AB7A
	b _0206AC7E
_0206AB7A:
	cmp r4, #0xc9
	bgt _0206ABA8
	blt _0206AB82
	b _0206ACCC
_0206AB82:
	cmp r4, #0x4b
	bgt _0206ABA0
	add r1, r4, #0
	sub r1, #0x48
	bmi _0206ABA6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206AB98: ; jump table
	.short _0206ACB2 - _0206AB98 - 2 ; case 0
	.short _0206ACB2 - _0206AB98 - 2 ; case 1
	.short _0206ACB2 - _0206AB98 - 2 ; case 2
	.short _0206ACB2 - _0206AB98 - 2 ; case 3
_0206ABA0:
	cmp r4, #0xb9
	bne _0206ABA6
	b _0206AD1A
_0206ABA6:
	b _0206AD28
_0206ABA8:
	add r2, r1, #0
	sub r2, #0x32
	cmp r4, r2
	bgt _0206ABBE
	sub r1, #0x32
	cmp r4, r1
	blt _0206ABB8
	b _0206ACE6
_0206ABB8:
	cmp r4, #0xfb
	beq _0206AC60
	b _0206AD28
_0206ABBE:
	sub r0, r1, #1
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206ABC6:
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	bgt _0206AC10
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	blt _0206ABD8
	b _0206AD00
_0206ABD8:
	add r2, r1, #1
	cmp r4, r2
	bgt _0206ABE6
	add r0, r2, #0
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206ABE6:
	add r1, r1, #2
	sub r1, r4, r1
	cmp r1, #0xa
	bhi _0206AC1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206ABFA: ; jump table
	.short _0206AC7E - _0206ABFA - 2 ; case 0
	.short _0206AC7E - _0206ABFA - 2 ; case 1
	.short _0206AC7E - _0206ABFA - 2 ; case 2
	.short _0206AD28 - _0206ABFA - 2 ; case 3
	.short _0206AC44 - _0206ABFA - 2 ; case 4
	.short _0206AD28 - _0206ABFA - 2 ; case 5
	.short _0206AC28 - _0206ABFA - 2 ; case 6
	.short _0206AD28 - _0206ABFA - 2 ; case 7
	.short _0206AC36 - _0206ABFA - 2 ; case 8
	.short _0206AD28 - _0206ABFA - 2 ; case 9
	.short _0206AC52 - _0206ABFA - 2 ; case 10
_0206AC10:
	ldr r0, _0206AD30 ; =0x000001EE
	cmp r4, r0
	bgt _0206AC20
	bge _0206AC7E
	sub r0, #0x48
	cmp r4, r0
	beq _0206AC6E
_0206AC1E:
	b _0206AD28
_0206AC20:
	add r0, r0, #3
	cmp r4, r0
	beq _0206AC7E
	b _0206AD28
_0206AC28:
	ldr r1, _0206AD34 ; =0x00000984
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC36:
	ldr r1, _0206AD34 ; =0x00000984
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD3C ; =0x00000429
	b _0206AD28
_0206AC44:
	ldr r1, _0206AD40 ; =0x0000098E
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC52:
	ldr r1, _0206AD44 ; =0x0000098F
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD38 ; =0x0000042E
	b _0206AD28
_0206AC60:
	ldr r1, _0206AD48 ; =0x00000995
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD4C ; =0x0000042D
	b _0206AD28
_0206AC6E:
	ldr r1, _0206AD50 ; =0x00000993
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD54 ; =0x0000044A
	b _0206AD28
_0206AC7E:
	ldr r1, _0206AD58 ; =0x00000985
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AC9C
	bl sub_02013948
	cmp r0, #0
	bne _0206AC98
	mov r5, #0xfe
	lsl r5, r5, #2
	b _0206AD28
_0206AC98:
	ldr r5, _0206AD5C ; =0x00000415
	b _0206AD28
_0206AC9C:
	ldr r0, _0206AD60 ; =0x00000131
	cmp r4, r0
	bne _0206AD28
	ldr r1, _0206AD64 ; =0x00000986
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD68 ; =0x0000042B
	b _0206AD28
_0206ACB2:
	ldr r1, _0206AD6C ; =0x00000987
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACC8
	ldr r5, _0206AD70 ; =0x000003F5
	b _0206AD28
_0206ACC8:
	ldr r5, _0206AD74 ; =0x00000412
	b _0206AD28
_0206ACCC:
	ldr r1, _0206AD78 ; =0x00000988
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACE2
	ldr r5, _0206AD7C ; =0x000003FF
	b _0206AD28
_0206ACE2:
	ldr r5, _0206AD80 ; =0x0000041C
	b _0206AD28
_0206ACE6:
	ldr r1, _0206AD84 ; =0x00000989
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206ACFC
	ldr r5, _0206AD88 ; =0x000003EE
	b _0206AD28
_0206ACFC:
	ldr r5, _0206AD8C ; =0x0000040B
	b _0206AD28
_0206AD00:
	ldr r1, _0206AD90 ; =0x0000098A
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	bl sub_02013948
	cmp r0, #0
	bne _0206AD16
	ldr r5, _0206AD88 ; =0x000003EE
	b _0206AD28
_0206AD16:
	ldr r5, _0206AD8C ; =0x0000040B
	b _0206AD28
_0206AD1A:
	ldr r1, _0206AD94 ; =0x0000098B
	add r0, r6, #0
	bl sub_0206A8EC
	cmp r0, #1
	bne _0206AD28
	ldr r5, _0206AD98 ; =0x000003E9
_0206AD28:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206AD2C: .word 0x00000132
_0206AD30: .word 0x000001EE
_0206AD34: .word 0x00000984
_0206AD38: .word 0x0000042E
_0206AD3C: .word 0x00000429
_0206AD40: .word 0x0000098E
_0206AD44: .word 0x0000098F
_0206AD48: .word 0x00000995
_0206AD4C: .word 0x0000042D
_0206AD50: .word 0x00000993
_0206AD54: .word 0x0000044A
_0206AD58: .word 0x00000985
_0206AD5C: .word 0x00000415
_0206AD60: .word 0x00000131
_0206AD64: .word 0x00000986
_0206AD68: .word 0x0000042B
_0206AD6C: .word 0x00000987
_0206AD70: .word 0x000003F5
_0206AD74: .word 0x00000412
_0206AD78: .word 0x00000988
_0206AD7C: .word 0x000003FF
_0206AD80: .word 0x0000041C
_0206AD84: .word 0x00000989
_0206AD88: .word 0x000003EE
_0206AD8C: .word 0x0000040B
_0206AD90: .word 0x0000098A
_0206AD94: .word 0x0000098B
_0206AD98: .word 0x000003E9
	thumb_func_end sub_0206AB68

	thumb_func_start sub_0206AD9C
sub_0206AD9C: ; 0x0206AD9C
	ldr r3, _0206ADA4 ; =sub_0206A8DC
	ldr r1, _0206ADA8 ; =0x00000966
	bx r3
	nop
_0206ADA4: .word sub_0206A8DC
_0206ADA8: .word 0x00000966
	thumb_func_end sub_0206AD9C

	thumb_func_start sub_0206ADAC
sub_0206ADAC: ; 0x0206ADAC
	ldr r3, _0206ADB4 ; =sub_0206A8E4
	ldr r1, _0206ADB8 ; =0x00000966
	bx r3
	nop
_0206ADB4: .word sub_0206A8E4
_0206ADB8: .word 0x00000966
	thumb_func_end sub_0206ADAC

	thumb_func_start sub_0206ADBC
sub_0206ADBC: ; 0x0206ADBC
	ldr r3, _0206ADC4 ; =sub_0206A8EC
	ldr r1, _0206ADC8 ; =0x00000966
	bx r3
	nop
_0206ADC4: .word sub_0206A8EC
_0206ADC8: .word 0x00000966
	thumb_func_end sub_0206ADBC

	thumb_func_start sub_0206ADCC
sub_0206ADCC: ; 0x0206ADCC
	ldr r3, _0206ADD4 ; =sub_0206A8EC
	ldr r1, _0206ADD8 ; =0x00000978
	bx r3
	nop
_0206ADD4: .word sub_0206A8EC
_0206ADD8: .word 0x00000978
	thumb_func_end sub_0206ADCC

	thumb_func_start sub_0206ADDC
sub_0206ADDC: ; 0x0206ADDC
	ldr r3, _0206ADE4 ; =sub_0206A8EC
	ldr r1, _0206ADE8 ; =0x00000992
	bx r3
	nop
_0206ADE4: .word sub_0206A8EC
_0206ADE8: .word 0x00000992
	thumb_func_end sub_0206ADDC

	thumb_func_start sub_0206ADEC
sub_0206ADEC: ; 0x0206ADEC
	ldr r3, _0206ADF4 ; =sub_0206A8EC
	ldr r1, _0206ADF8 ; =0x0000097D
	bx r3
	nop
_0206ADF4: .word sub_0206A8EC
_0206ADF8: .word 0x0000097D
	thumb_func_end sub_0206ADEC

	thumb_func_start sub_0206ADFC
sub_0206ADFC: ; 0x0206ADFC
	ldr r3, _0206AE04 ; =sub_0206A8EC
	ldr r1, _0206AE08 ; =0x0000097E
	bx r3
	nop
_0206AE04: .word sub_0206A8EC
_0206AE08: .word 0x0000097E
	thumb_func_end sub_0206ADFC

	thumb_func_start sub_0206AE0C
sub_0206AE0C: ; 0x0206AE0C
	ldr r3, _0206AE14 ; =sub_0206A8DC
	ldr r1, _0206AE18 ; =0x0000097C
	bx r3
	nop
_0206AE14: .word sub_0206A8DC
_0206AE18: .word 0x0000097C
	thumb_func_end sub_0206AE0C

	thumb_func_start sub_0206AE1C
sub_0206AE1C: ; 0x0206AE1C
	ldr r3, _0206AE24 ; =sub_0206A8E4
	ldr r1, _0206AE28 ; =0x0000097C
	bx r3
	nop
_0206AE24: .word sub_0206A8E4
_0206AE28: .word 0x0000097C
	thumb_func_end sub_0206AE1C

	thumb_func_start sub_0206AE2C
sub_0206AE2C: ; 0x0206AE2C
	ldr r3, _0206AE34 ; =sub_0206A8EC
	ldr r1, _0206AE38 ; =0x0000097C
	bx r3
	nop
_0206AE34: .word sub_0206A8EC
_0206AE38: .word 0x0000097C
	thumb_func_end sub_0206AE2C

	thumb_func_start sub_0206AE3C
sub_0206AE3C: ; 0x0206AE3C
	ldr r3, _0206AE44 ; =sub_0206A8DC
	ldr r1, _0206AE48 ; =0x00000967
	bx r3
	nop
_0206AE44: .word sub_0206A8DC
_0206AE48: .word 0x00000967
	thumb_func_end sub_0206AE3C

	thumb_func_start sub_0206AE4C
sub_0206AE4C: ; 0x0206AE4C
	ldr r3, _0206AE54 ; =sub_0206A8E4
	ldr r1, _0206AE58 ; =0x00000967
	bx r3
	nop
_0206AE54: .word sub_0206A8E4
_0206AE58: .word 0x00000967
	thumb_func_end sub_0206AE4C

	thumb_func_start sub_0206AE5C
sub_0206AE5C: ; 0x0206AE5C
	ldr r3, _0206AE64 ; =sub_0206A8EC
	ldr r1, _0206AE68 ; =0x00000967
	bx r3
	nop
_0206AE64: .word sub_0206A8EC
_0206AE68: .word 0x00000967
	thumb_func_end sub_0206AE5C

	thumb_func_start sub_0206AE6C
sub_0206AE6C: ; 0x0206AE6C
	ldr r3, _0206AE74 ; =sub_0206A8DC
	ldr r1, _0206AE78 ; =0x00000979
	bx r3
	nop
_0206AE74: .word sub_0206A8DC
_0206AE78: .word 0x00000979
	thumb_func_end sub_0206AE6C

	thumb_func_start sub_0206AE7C
sub_0206AE7C: ; 0x0206AE7C
	ldr r3, _0206AE84 ; =sub_0206A8E4
	ldr r1, _0206AE88 ; =0x00000979
	bx r3
	nop
_0206AE84: .word sub_0206A8E4
_0206AE88: .word 0x00000979
	thumb_func_end sub_0206AE7C

	thumb_func_start sub_0206AE8C
sub_0206AE8C: ; 0x0206AE8C
	ldr r3, _0206AE94 ; =sub_0206A8EC
	ldr r1, _0206AE98 ; =0x00000979
	bx r3
	nop
_0206AE94: .word sub_0206A8EC
_0206AE98: .word 0x00000979
	thumb_func_end sub_0206AE8C

	thumb_func_start sub_0206AE9C
sub_0206AE9C: ; 0x0206AE9C
	ldr r3, _0206AEA4 ; =sub_0206A8E4
	ldr r1, _0206AEA8 ; =0x00000994
	bx r3
	nop
_0206AEA4: .word sub_0206A8E4
_0206AEA8: .word 0x00000994
	thumb_func_end sub_0206AE9C

	thumb_func_start sub_0206AEAC
sub_0206AEAC: ; 0x0206AEAC
	ldr r3, _0206AEB4 ; =sub_0206A8F4
	ldr r2, _0206AEB8 ; =0x00000962
	bx r3
	nop
_0206AEB4: .word sub_0206A8F4
_0206AEB8: .word 0x00000962
	thumb_func_end sub_0206AEAC

	thumb_func_start sub_0206AEBC
sub_0206AEBC: ; 0x0206AEBC
	ldr r3, _0206AEC4 ; =sub_0206A8DC
	ldr r1, _0206AEC8 ; =0x0000097A
	bx r3
	nop
_0206AEC4: .word sub_0206A8DC
_0206AEC8: .word 0x0000097A
	thumb_func_end sub_0206AEBC

	thumb_func_start sub_0206AECC
sub_0206AECC: ; 0x0206AECC
	ldr r3, _0206AED4 ; =sub_0206A8E4
	ldr r1, _0206AED8 ; =0x0000097A
	bx r3
	nop
_0206AED4: .word sub_0206A8E4
_0206AED8: .word 0x0000097A
	thumb_func_end sub_0206AECC

	thumb_func_start sub_0206AEDC
sub_0206AEDC: ; 0x0206AEDC
	ldr r3, _0206AEE4 ; =sub_0206A8EC
	ldr r1, _0206AEE8 ; =0x0000097A
	bx r3
	nop
_0206AEE4: .word sub_0206A8EC
_0206AEE8: .word 0x0000097A
	thumb_func_end sub_0206AEDC

	thumb_func_start sub_0206AEEC
sub_0206AEEC: ; 0x0206AEEC
	ldr r3, _0206AEF4 ; =sub_0206A8DC
	ldr r1, _0206AEF8 ; =0x0000097B
	bx r3
	nop
_0206AEF4: .word sub_0206A8DC
_0206AEF8: .word 0x0000097B
	thumb_func_end sub_0206AEEC

	thumb_func_start sub_0206AEFC
sub_0206AEFC: ; 0x0206AEFC
	ldr r3, _0206AF04 ; =sub_0206A8E4
	ldr r1, _0206AF08 ; =0x0000097B
	bx r3
	nop
_0206AF04: .word sub_0206A8E4
_0206AF08: .word 0x0000097B
	thumb_func_end sub_0206AEFC

	thumb_func_start sub_0206AF0C
sub_0206AF0C: ; 0x0206AF0C
	ldr r3, _0206AF14 ; =sub_0206A8EC
	ldr r1, _0206AF18 ; =0x0000097B
	bx r3
	nop
_0206AF14: .word sub_0206A8EC
_0206AF18: .word 0x0000097B
	thumb_func_end sub_0206AF0C

	thumb_func_start sub_0206AF1C
sub_0206AF1C: ; 0x0206AF1C
	ldr r3, _0206AF24 ; =sub_0206A8F4
	ldr r2, _0206AF28 ; =0x00000996
	bx r3
	nop
_0206AF24: .word sub_0206A8F4
_0206AF28: .word 0x00000996
	thumb_func_end sub_0206AF1C

	thumb_func_start sub_0206AF2C
sub_0206AF2C: ; 0x0206AF2C
	ldr r3, _0206AF34 ; =sub_0206A8F4
	ldr r2, _0206AF38 ; =0x00000963
	bx r3
	nop
_0206AF34: .word sub_0206A8F4
_0206AF38: .word 0x00000963
	thumb_func_end sub_0206AF2C

	thumb_func_start sub_0206AF3C
sub_0206AF3C: ; 0x0206AF3C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x45
	blo _0206AF4C
	bl sub_02022974
_0206AF4C:
	mov r2, #0x9b
	lsl r2, r2, #4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	bl sub_0206A8F4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206AF3C

	thumb_func_start sub_0206AF5C
sub_0206AF5C: ; 0x0206AF5C
	ldr r3, _0206AF64 ; =sub_0206A8DC
	ldr r1, _0206AF68 ; =0x0000098C
	bx r3
	nop
_0206AF64: .word sub_0206A8DC
_0206AF68: .word 0x0000098C
	thumb_func_end sub_0206AF5C

	thumb_func_start sub_0206AF6C
sub_0206AF6C: ; 0x0206AF6C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x14
	blt _0206AF7C
	bl sub_02022974
_0206AF7C:
	ldr r2, _0206AF8C ; =0x00000997
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	bl sub_0206A8F4
	pop {r4, r5, r6, pc}
	nop
_0206AF8C: .word 0x00000997
	thumb_func_end sub_0206AF6C

	thumb_func_start sub_0206AF90
sub_0206AF90: ; 0x0206AF90
	ldr r3, _0206AF98 ; =sub_0206A8E4
	ldr r1, _0206AF9C ; =0x000009AB
	bx r3
	nop
_0206AF98: .word sub_0206A8E4
_0206AF9C: .word 0x000009AB
	thumb_func_end sub_0206AF90

	thumb_func_start sub_0206AFA0
sub_0206AFA0: ; 0x0206AFA0
	ldr r3, _0206AFA8 ; =sub_0206A8E4
	ldr r1, _0206AFAC ; =0x000009AC
	bx r3
	nop
_0206AFA8: .word sub_0206A8E4
_0206AFAC: .word 0x000009AC
	thumb_func_end sub_0206AFA0

	thumb_func_start sub_0206AFB0
sub_0206AFB0: ; 0x0206AFB0
	ldr r3, _0206AFB8 ; =0x000009AE
	add r2, r2, r3
	ldr r3, _0206AFBC ; =sub_0206A8F4
	bx r3
	; .align 2, 0
_0206AFB8: .word 0x000009AE
_0206AFBC: .word sub_0206A8F4
	thumb_func_end sub_0206AFB0

	thumb_func_start sub_0206AFC0
sub_0206AFC0: ; 0x0206AFC0
	ldr r3, _0206AFC8 ; =sub_0206A8F4
	ldr r2, _0206AFCC ; =0x000009AD
	bx r3
	nop
_0206AFC8: .word sub_0206A8F4
_0206AFCC: .word 0x000009AD
	thumb_func_end sub_0206AFC0

	thumb_func_start sub_0206AFD0
sub_0206AFD0: ; 0x0206AFD0
	ldr r3, _0206AFD8 ; =sub_0206A8F4
	mov r1, #2
	ldr r2, _0206AFDC ; =0x00000977
	bx r3
	; .align 2, 0
_0206AFD8: .word sub_0206A8F4
_0206AFDC: .word 0x00000977
	thumb_func_end sub_0206AFD0

	thumb_func_start sub_0206AFE0
sub_0206AFE0: ; 0x0206AFE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020508B8
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r5, r1
	blo _0206AFF8
	lsl r1, r1, #1
	cmp r5, r1
	bls _0206B000
_0206AFF8:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206B000:
	cmp r0, #0
	bne _0206B008
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206B008:
	strh r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206AFE0

	thumb_func_start sub_0206B010
sub_0206B010: ; 0x0206B010
	push {r3, lr}
	bl sub_020508B8
	cmp r0, #0
	bne _0206B01E
	mov r0, #0
	pop {r3, pc}
_0206B01E:
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206B010

	thumb_func_start sub_0206B024
sub_0206B024: ; 0x0206B024
	ldr r3, _0206B02C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B030 ; =0x0000403F
	bx r3
	; .align 2, 0
_0206B02C: .word sub_0206AFE0
_0206B030: .word 0x0000403F
	thumb_func_end sub_0206B024

	thumb_func_start sub_0206B034
sub_0206B034: ; 0x0206B034
	ldr r3, _0206B03C ; =sub_0206B010
	ldr r1, _0206B040 ; =0x0000403F
	bx r3
	nop
_0206B03C: .word sub_0206B010
_0206B040: .word 0x0000403F
	thumb_func_end sub_0206B034

	thumb_func_start sub_0206B044
sub_0206B044: ; 0x0206B044
	ldr r3, _0206B04C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B050 ; =0x00004030
	bx r3
	; .align 2, 0
_0206B04C: .word sub_0206AFE0
_0206B050: .word 0x00004030
	thumb_func_end sub_0206B044

	thumb_func_start sub_0206B054
sub_0206B054: ; 0x0206B054
	ldr r3, _0206B05C ; =sub_0206B010
	ldr r1, _0206B060 ; =0x00004030
	bx r3
	nop
_0206B05C: .word sub_0206B010
_0206B060: .word 0x00004030
	thumb_func_end sub_0206B054

	thumb_func_start sub_0206B064
sub_0206B064: ; 0x0206B064
	push {r3, lr}
	ldr r1, _0206B084 ; =0x00004030
	bl sub_0206B010
	ldr r2, _0206B088 ; =0x00000183
	cmp r0, r2
	bne _0206B076
	add r2, r2, #3
	b _0206B07E
_0206B076:
	add r1, r2, #3
	cmp r0, r1
	bne _0206B07E
	add r2, r2, #6
_0206B07E:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206B084: .word 0x00004030
_0206B088: .word 0x00000183
	thumb_func_end sub_0206B064

	thumb_func_start sub_0206B08C
sub_0206B08C: ; 0x0206B08C
	push {r3, lr}
	ldr r1, _0206B0AC ; =0x00004030
	bl sub_0206B010
	ldr r2, _0206B0B0 ; =0x00000183
	cmp r0, r2
	bne _0206B09E
	add r2, r2, #6
	b _0206B0A6
_0206B09E:
	add r1, r2, #3
	cmp r0, r1
	beq _0206B0A6
	add r2, r2, #3
_0206B0A6:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206B0AC: .word 0x00004030
_0206B0B0: .word 0x00000183
	thumb_func_end sub_0206B08C

	thumb_func_start sub_0206B0B4
sub_0206B0B4: ; 0x0206B0B4
	ldr r3, _0206B0BC ; =sub_0206B010
	ldr r1, _0206B0C0 ; =0x00004035
	bx r3
	nop
_0206B0BC: .word sub_0206B010
_0206B0C0: .word 0x00004035
	thumb_func_end sub_0206B0B4

	thumb_func_start sub_0206B0C4
sub_0206B0C4: ; 0x0206B0C4
	ldr r3, _0206B0CC ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B0D0 ; =0x00004035
	bx r3
	; .align 2, 0
_0206B0CC: .word sub_0206AFE0
_0206B0D0: .word 0x00004035
	thumb_func_end sub_0206B0C4

	thumb_func_start sub_0206B0D4
sub_0206B0D4: ; 0x0206B0D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206A9D4
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B118
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206B0D4

	thumb_func_start sub_0206B0E8
sub_0206B0E8: ; 0x0206B0E8
	ldr r3, _0206B0F0 ; =sub_0206B010
	ldr r1, _0206B0F4 ; =0x00004033
	bx r3
	nop
_0206B0F0: .word sub_0206B010
_0206B0F4: .word 0x00004033
	thumb_func_end sub_0206B0E8

	thumb_func_start sub_0206B0F8
sub_0206B0F8: ; 0x0206B0F8
	ldr r3, _0206B100 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B104 ; =0x00004033
	bx r3
	; .align 2, 0
_0206B100: .word sub_0206AFE0
_0206B104: .word 0x00004033
	thumb_func_end sub_0206B0F8

	thumb_func_start sub_0206B108
sub_0206B108: ; 0x0206B108
	ldr r3, _0206B110 ; =sub_0206B010
	ldr r1, _0206B114 ; =0x00004034
	bx r3
	nop
_0206B110: .word sub_0206B010
_0206B114: .word 0x00004034
	thumb_func_end sub_0206B108

	thumb_func_start sub_0206B118
sub_0206B118: ; 0x0206B118
	ldr r3, _0206B120 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B124 ; =0x00004034
	bx r3
	; .align 2, 0
_0206B120: .word sub_0206AFE0
_0206B124: .word 0x00004034
	thumb_func_end sub_0206B118

	thumb_func_start sub_0206B128
sub_0206B128: ; 0x0206B128
	push {r4, lr}
	add r4, r0, #0
	bmi _0206B132
	cmp r4, #4
	blo _0206B136
_0206B132:
	bl sub_02022974
_0206B136:
	ldr r0, _0206B140 ; =0x020EFA7C
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0206B140: .word 0x020EFA7C
	thumb_func_end sub_0206B128

	thumb_func_start sub_0206B144
sub_0206B144: ; 0x0206B144
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B128
	add r2, r0, #0
	ldr r1, _0206B168 ; =0x00004043
	lsl r2, r2, #0x10
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	nop
_0206B168: .word 0x00004043
	thumb_func_end sub_0206B144

	thumb_func_start sub_0206B16C
sub_0206B16C: ; 0x0206B16C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0206B190 ; =0x00004043
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B010
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B128
	cmp r5, r0
	bne _0206B18C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206B18C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B190: .word 0x00004043
	thumb_func_end sub_0206B16C

	thumb_func_start sub_0206B194
sub_0206B194: ; 0x0206B194
	push {r4, lr}
	add r4, r0, #0
	bmi _0206B19E
	cmp r4, #4
	blt _0206B1A2
_0206B19E:
	bl sub_02022974
_0206B1A2:
	ldr r0, _0206B1AC ; =0x020EFA74
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0206B1AC: .word 0x020EFA74
	thumb_func_end sub_0206B194

	thumb_func_start sub_0206B1B0
sub_0206B1B0: ; 0x0206B1B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B194
	add r2, r0, #0
	ldr r1, _0206B1D4 ; =0x00004036
	lsl r2, r2, #0x10
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	nop
_0206B1D4: .word 0x00004036
	thumb_func_end sub_0206B1B0

	thumb_func_start sub_0206B1D8
sub_0206B1D8: ; 0x0206B1D8
	ldr r2, _0206B1E8 ; =0x00004036
	ldr r3, _0206B1EC ; =sub_0206AFE0
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bx r3
	nop
_0206B1E8: .word 0x00004036
_0206B1EC: .word sub_0206AFE0
	thumb_func_end sub_0206B1D8

	thumb_func_start sub_0206B1F0
sub_0206B1F0: ; 0x0206B1F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0206B214 ; =0x00004036
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B010
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B194
	cmp r5, r0
	bne _0206B210
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206B210:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B214: .word 0x00004036
	thumb_func_end sub_0206B1F0

	thumb_func_start sub_0206B218
sub_0206B218: ; 0x0206B218
	ldr r3, _0206B220 ; =sub_0206AFE0
	ldr r1, _0206B224 ; =0x0000403A
	mov r2, #0
	bx r3
	; .align 2, 0
_0206B220: .word sub_0206AFE0
_0206B224: .word 0x0000403A
	thumb_func_end sub_0206B218

	thumb_func_start sub_0206B228
sub_0206B228: ; 0x0206B228
	ldr r3, _0206B230 ; =sub_0206B010
	ldr r1, _0206B234 ; =0x0000403A
	bx r3
	nop
_0206B230: .word sub_0206B010
_0206B234: .word 0x0000403A
	thumb_func_end sub_0206B228

	thumb_func_start sub_0206B238
sub_0206B238: ; 0x0206B238
	push {r4, lr}
	ldr r1, _0206B258 ; =0x0000403A
	add r4, r0, #0
	bl sub_0206B010
	ldr r2, _0206B25C ; =0x00002710
	cmp r0, r2
	bhs _0206B24E
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0206B24E:
	ldr r1, _0206B258 ; =0x0000403A
	add r0, r4, #0
	bl sub_0206AFE0
	pop {r4, pc}
	; .align 2, 0
_0206B258: .word 0x0000403A
_0206B25C: .word 0x00002710
	thumb_func_end sub_0206B238

	thumb_func_start sub_0206B260
sub_0206B260: ; 0x0206B260
	ldr r3, _0206B268 ; =sub_0206B010
	ldr r1, _0206B26C ; =0x0000403B
	bx r3
	nop
_0206B268: .word sub_0206B010
_0206B26C: .word 0x0000403B
	thumb_func_end sub_0206B260

	thumb_func_start sub_0206B270
sub_0206B270: ; 0x0206B270
	ldr r3, _0206B278 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B27C ; =0x0000403B
	bx r3
	; .align 2, 0
_0206B278: .word sub_0206AFE0
_0206B27C: .word 0x0000403B
	thumb_func_end sub_0206B270

	thumb_func_start sub_0206B280
sub_0206B280: ; 0x0206B280
	push {r3, r4, r5, lr}
	add r4, r1, #0
	lsl r2, r4, #0x10
	ldr r1, _0206B2A0 ; =0x0000403C
	lsr r2, r2, #0x10
	add r5, r0, #0
	bl sub_0206AFE0
	lsr r2, r4, #0x10
	lsl r2, r2, #0x10
	ldr r1, _0206B2A0 ; =0x0000403C
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B2A0: .word 0x0000403C
	thumb_func_end sub_0206B280

	thumb_func_start sub_0206B2A4
sub_0206B2A4: ; 0x0206B2A4
	push {r3, r4, r5, lr}
	ldr r1, _0206B2C0 ; =0x0000403C
	add r5, r0, #0
	bl sub_0206B010
	add r4, r0, #0
	ldr r1, _0206B2C4 ; =0x0000403D
	add r0, r5, #0
	bl sub_0206B010
	lsl r0, r0, #0x10
	orr r0, r4
	pop {r3, r4, r5, pc}
	nop
_0206B2C0: .word 0x0000403C
_0206B2C4: .word 0x0000403D
	thumb_func_end sub_0206B2A4

	thumb_func_start sub_0206B2C8
sub_0206B2C8: ; 0x0206B2C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	orr r1, r4
	bl sub_0206B280
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206B2C8

	thumb_func_start sub_0206B2E4
sub_0206B2E4: ; 0x0206B2E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202B4A0
	bl sub_0202B428
	add r2, r0, #0
	ldr r1, _0206B30C ; =0x41C64E6D
	add r0, r4, #0
	mul r2, r1
	ldr r1, _0206B310 ; =0x00003039
	add r1, r2, r1
	bl sub_0206B280
	pop {r3, r4, r5, pc}
	nop
_0206B30C: .word 0x41C64E6D
_0206B310: .word 0x00003039
	thumb_func_end sub_0206B2E4

	thumb_func_start sub_0206B314
sub_0206B314: ; 0x0206B314
	ldr r3, _0206B31C ; =sub_0206B010
	ldr r1, _0206B320 ; =0x00004041
	bx r3
	nop
_0206B31C: .word sub_0206B010
_0206B320: .word 0x00004041
	thumb_func_end sub_0206B314

	thumb_func_start sub_0206B324
sub_0206B324: ; 0x0206B324
	ldr r3, _0206B32C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B330 ; =0x00004041
	bx r3
	; .align 2, 0
_0206B32C: .word sub_0206AFE0
_0206B330: .word 0x00004041
	thumb_func_end sub_0206B324

	thumb_func_start sub_0206B334
sub_0206B334: ; 0x0206B334
	push {r4, lr}
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x62
	bl sub_020E1F6C
	add r1, r1, #2
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0206B324
	pop {r4, pc}
	thumb_func_end sub_0206B334

	thumb_func_start sub_0206B354
sub_0206B354: ; 0x0206B354
	ldr r3, _0206B35C ; =sub_0206B010
	ldr r1, _0206B360 ; =0x0000403E
	bx r3
	nop
_0206B35C: .word sub_0206B010
_0206B360: .word 0x0000403E
	thumb_func_end sub_0206B354

	thumb_func_start sub_0206B364
sub_0206B364: ; 0x0206B364
	ldr r3, _0206B36C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B370 ; =0x0000403E
	bx r3
	; .align 2, 0
_0206B36C: .word sub_0206AFE0
_0206B370: .word 0x0000403E
	thumb_func_end sub_0206B364

	thumb_func_start sub_0206B374
sub_0206B374: ; 0x0206B374
	ldr r3, _0206B37C ; =sub_0206B010
	ldr r1, _0206B380 ; =0x00004049
	bx r3
	nop
_0206B37C: .word sub_0206B010
_0206B380: .word 0x00004049
	thumb_func_end sub_0206B374

	thumb_func_start sub_0206B384
sub_0206B384: ; 0x0206B384
	ldr r3, _0206B38C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B390 ; =0x00004049
	bx r3
	; .align 2, 0
_0206B38C: .word sub_0206AFE0
_0206B390: .word 0x00004049
	thumb_func_end sub_0206B384

	thumb_func_start sub_0206B394
sub_0206B394: ; 0x0206B394
	ldr r3, _0206B39C ; =sub_0206B010
	ldr r1, _0206B3A0 ; =0x00004040
	bx r3
	nop
_0206B39C: .word sub_0206B010
_0206B3A0: .word 0x00004040
	thumb_func_end sub_0206B394

	thumb_func_start sub_0206B3A4
sub_0206B3A4: ; 0x0206B3A4
	ldr r3, _0206B3AC ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B3B0 ; =0x00004040
	bx r3
	; .align 2, 0
_0206B3AC: .word sub_0206AFE0
_0206B3B0: .word 0x00004040
	thumb_func_end sub_0206B3A4

	thumb_func_start sub_0206B3B4
sub_0206B3B4: ; 0x0206B3B4
	push {r4, lr}
	ldr r1, _0206B3D4 ; =0x00004042
	add r4, r0, #0
	bl sub_0206B010
	ldr r2, _0206B3D8 ; =0x00002710
	cmp r0, r2
	bhs _0206B3CA
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0206B3CA:
	ldr r1, _0206B3D4 ; =0x00004042
	add r0, r4, #0
	bl sub_0206AFE0
	pop {r4, pc}
	; .align 2, 0
_0206B3D4: .word 0x00004042
_0206B3D8: .word 0x00002710
	thumb_func_end sub_0206B3B4

	thumb_func_start sub_0206B3DC
sub_0206B3DC: ; 0x0206B3DC
	ldr r3, _0206B3E4 ; =sub_0206B010
	ldr r1, _0206B3E8 ; =0x00004042
	bx r3
	nop
_0206B3E4: .word sub_0206B010
_0206B3E8: .word 0x00004042
	thumb_func_end sub_0206B3DC

	thumb_func_start sub_0206B3EC
sub_0206B3EC: ; 0x0206B3EC
	ldr r3, _0206B3F4 ; =sub_0206B010
	ldr r1, _0206B3F8 ; =0x00004054
	bx r3
	nop
_0206B3F4: .word sub_0206B010
_0206B3F8: .word 0x00004054
	thumb_func_end sub_0206B3EC

	thumb_func_start sub_0206B3FC
sub_0206B3FC: ; 0x0206B3FC
	ldr r3, _0206B404 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B408 ; =0x00004054
	bx r3
	; .align 2, 0
_0206B404: .word sub_0206AFE0
_0206B408: .word 0x00004054
	thumb_func_end sub_0206B3FC

	thumb_func_start sub_0206B40C
sub_0206B40C: ; 0x0206B40C
	ldr r3, _0206B414 ; =sub_0206B010
	ldr r1, _0206B418 ; =0x00004047
	bx r3
	nop
_0206B414: .word sub_0206B010
_0206B418: .word 0x00004047
	thumb_func_end sub_0206B40C

	thumb_func_start sub_0206B41C
sub_0206B41C: ; 0x0206B41C
	ldr r3, _0206B424 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B428 ; =0x00004047
	bx r3
	; .align 2, 0
_0206B424: .word sub_0206AFE0
_0206B428: .word 0x00004047
	thumb_func_end sub_0206B41C

	thumb_func_start sub_0206B42C
sub_0206B42C: ; 0x0206B42C
	ldr r3, _0206B434 ; =sub_0206B010
	ldr r1, _0206B438 ; =0x00004048
	bx r3
	nop
_0206B434: .word sub_0206B010
_0206B438: .word 0x00004048
	thumb_func_end sub_0206B42C

	thumb_func_start sub_0206B43C
sub_0206B43C: ; 0x0206B43C
	ldr r3, _0206B444 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B448 ; =0x00004048
	bx r3
	; .align 2, 0
_0206B444: .word sub_0206AFE0
_0206B448: .word 0x00004048
	thumb_func_end sub_0206B43C

	thumb_func_start sub_0206B44C
sub_0206B44C: ; 0x0206B44C
	ldr r3, _0206B454 ; =sub_0206B010
	ldr r1, _0206B458 ; =0x0000404A
	bx r3
	nop
_0206B454: .word sub_0206B010
_0206B458: .word 0x0000404A
	thumb_func_end sub_0206B44C

	thumb_func_start sub_0206B45C
sub_0206B45C: ; 0x0206B45C
	ldr r3, _0206B464 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B468 ; =0x0000404A
	bx r3
	; .align 2, 0
_0206B464: .word sub_0206AFE0
_0206B468: .word 0x0000404A
	thumb_func_end sub_0206B45C

	thumb_func_start sub_0206B46C
sub_0206B46C: ; 0x0206B46C
	ldr r3, _0206B474 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B478 ; =0x0000404B
	bx r3
	; .align 2, 0
_0206B474: .word sub_0206AFE0
_0206B478: .word 0x0000404B
	thumb_func_end sub_0206B46C

	thumb_func_start sub_0206B47C
sub_0206B47C: ; 0x0206B47C
	ldr r3, _0206B484 ; =sub_0206B010
	ldr r1, _0206B488 ; =0x0000404B
	bx r3
	nop
_0206B484: .word sub_0206B010
_0206B488: .word 0x0000404B
	thumb_func_end sub_0206B47C

	thumb_func_start sub_0206B48C
sub_0206B48C: ; 0x0206B48C
	add r2, r1, #0
	add r2, r2, #1
	lsl r2, r2, #0x10
	ldr r3, _0206B49C ; =sub_0206AFE0
	ldr r1, _0206B4A0 ; =0x0000404D
	lsr r2, r2, #0x10
	bx r3
	nop
_0206B49C: .word sub_0206AFE0
_0206B4A0: .word 0x0000404D
	thumb_func_end sub_0206B48C

	thumb_func_start sub_0206B4A4
sub_0206B4A4: ; 0x0206B4A4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
	mov r7, #2
_0206B4AE:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0206AF6C
	cmp r0, #1
	bne _0206B4C2
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0206B4C2:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0206B4AE
	cmp r5, #0xc
	blo _0206B4D0
	mov r4, #2
	b _0206B4DA
_0206B4D0:
	cmp r5, #8
	blo _0206B4D8
	mov r4, #1
	b _0206B4DA
_0206B4D8:
	mov r4, #0
_0206B4DA:
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0206B50C ; =0x020EFA70
	ldrb r0, [r0, r4]
	cmp r1, r0
	ble _0206B4F4
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0206B4F4:
	bl sub_0201D2E8
	ldr r1, _0206B510 ; =0x020EFA6C
	ldrb r1, [r1, r4]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206B50C: .word 0x020EFA70
_0206B510: .word 0x020EFA6C
	thumb_func_end sub_0206B4A4

	thumb_func_start sub_0206B514
sub_0206B514: ; 0x0206B514
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A790
	bl sub_0203A720
	ldr r1, [r0, #0]
	ldr r0, _0206B554 ; =0x000001C9
	cmp r1, r0
	beq _0206B550
	add r0, r0, #7
	cmp r1, r0
	beq _0206B550
	add r0, r4, #0
	bl sub_0206AF90
	add r0, r4, #0
	bl sub_0206AFA0
	add r0, r4, #0
	bl sub_0206B4A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206B558
_0206B550:
	pop {r3, r4, r5, pc}
	nop
_0206B554: .word 0x000001C9
	thumb_func_end sub_0206B514

	thumb_func_start sub_0206B558
sub_0206B558: ; 0x0206B558
	push {r4, lr}
	add r2, r1, #0
	ldr r1, _0206B580 ; =0x0000404E
	add r4, r0, #0
	bl sub_0206AFE0
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r2, r1, #0
	lsl r2, r2, #0x10
	ldr r1, _0206B584 ; =0x0000405A
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r4, pc}
	nop
_0206B580: .word 0x0000404E
_0206B584: .word 0x0000405A
	thumb_func_end sub_0206B558

	thumb_func_start sub_0206B588
sub_0206B588: ; 0x0206B588
	ldr r3, _0206B590 ; =sub_0206B010
	ldr r1, _0206B594 ; =0x00004050
	bx r3
	nop
_0206B590: .word sub_0206B010
_0206B594: .word 0x00004050
	thumb_func_end sub_0206B588

	thumb_func_start sub_0206B598
sub_0206B598: ; 0x0206B598
	ldr r3, _0206B5A0 ; =sub_0206B010
	ldr r1, _0206B5A4 ; =0x00004051
	bx r3
	nop
_0206B5A0: .word sub_0206B010
_0206B5A4: .word 0x00004051
	thumb_func_end sub_0206B598

	thumb_func_start sub_0206B5A8
sub_0206B5A8: ; 0x0206B5A8
	ldr r3, _0206B5B0 ; =sub_0206B010
	ldr r1, _0206B5B4 ; =0x00004052
	bx r3
	nop
_0206B5B0: .word sub_0206B010
_0206B5B4: .word 0x00004052
	thumb_func_end sub_0206B5A8

	thumb_func_start sub_0206B5B8
sub_0206B5B8: ; 0x0206B5B8
	ldr r3, _0206B5C0 ; =sub_0206B010
	ldr r1, _0206B5C4 ; =0x00004053
	bx r3
	nop
_0206B5C0: .word sub_0206B010
_0206B5C4: .word 0x00004053
	thumb_func_end sub_0206B5B8

	thumb_func_start sub_0206B5C8
sub_0206B5C8: ; 0x0206B5C8
	ldr r3, _0206B5D0 ; =sub_0206B010
	ldr r1, _0206B5D4 ; =0x0000404F
	bx r3
	nop
_0206B5D0: .word sub_0206B010
_0206B5D4: .word 0x0000404F
	thumb_func_end sub_0206B5C8

	thumb_func_start sub_0206B5D8
sub_0206B5D8: ; 0x0206B5D8
	ldr r3, _0206B5E0 ; =sub_0206B010
	ldr r1, _0206B5E4 ; =0x00004055
	bx r3
	nop
_0206B5E0: .word sub_0206B010
_0206B5E4: .word 0x00004055
	thumb_func_end sub_0206B5D8

	thumb_func_start sub_0206B5E8
sub_0206B5E8: ; 0x0206B5E8
	ldr r3, _0206B5F0 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B5F4 ; =0x00004055
	bx r3
	; .align 2, 0
_0206B5F0: .word sub_0206AFE0
_0206B5F4: .word 0x00004055
	thumb_func_end sub_0206B5E8

	thumb_func_start sub_0206B5F8
sub_0206B5F8: ; 0x0206B5F8
	ldr r3, _0206B600 ; =sub_0206B010
	ldr r1, _0206B604 ; =0x00004056
	bx r3
	nop
_0206B600: .word sub_0206B010
_0206B604: .word 0x00004056
	thumb_func_end sub_0206B5F8

	thumb_func_start sub_0206B608
sub_0206B608: ; 0x0206B608
	ldr r3, _0206B610 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B614 ; =0x00004056
	bx r3
	; .align 2, 0
_0206B610: .word sub_0206AFE0
_0206B614: .word 0x00004056
	thumb_func_end sub_0206B608

	thumb_func_start sub_0206B618
sub_0206B618: ; 0x0206B618
	ldr r3, _0206B620 ; =sub_0206B010
	ldr r1, _0206B624 ; =0x00004057
	bx r3
	nop
_0206B620: .word sub_0206B010
_0206B624: .word 0x00004057
	thumb_func_end sub_0206B618

	thumb_func_start sub_0206B628
sub_0206B628: ; 0x0206B628
	ldr r3, _0206B630 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B634 ; =0x00004057
	bx r3
	; .align 2, 0
_0206B630: .word sub_0206AFE0
_0206B634: .word 0x00004057
	thumb_func_end sub_0206B628

	thumb_func_start sub_0206B638
sub_0206B638: ; 0x0206B638
	ldr r3, _0206B640 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B644 ; =0x00004058
	bx r3
	; .align 2, 0
_0206B640: .word sub_0206AFE0
_0206B644: .word 0x00004058
	thumb_func_end sub_0206B638

	thumb_func_start sub_0206B648
sub_0206B648: ; 0x0206B648
	ldr r3, _0206B650 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B654 ; =0x00004059
	bx r3
	; .align 2, 0
_0206B650: .word sub_0206AFE0
_0206B654: .word 0x00004059
	thumb_func_end sub_0206B648

	thumb_func_start sub_0206B658
sub_0206B658: ; 0x0206B658
	ldr r3, _0206B660 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B664 ; =0x0000405E
	bx r3
	; .align 2, 0
_0206B660: .word sub_0206AFE0
_0206B664: .word 0x0000405E
	thumb_func_end sub_0206B658

	thumb_func_start sub_0206B668
sub_0206B668: ; 0x0206B668
	ldr r3, _0206B670 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B674 ; =0x0000405F
	bx r3
	; .align 2, 0
_0206B670: .word sub_0206AFE0
_0206B674: .word 0x0000405F
	thumb_func_end sub_0206B668

	thumb_func_start sub_0206B678
sub_0206B678: ; 0x0206B678
	ldr r3, _0206B680 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B684 ; =0x00004060
	bx r3
	; .align 2, 0
_0206B680: .word sub_0206AFE0
_0206B684: .word 0x00004060
	thumb_func_end sub_0206B678

	thumb_func_start sub_0206B688
sub_0206B688: ; 0x0206B688
	push {r3, lr}
	ldr r3, _0206B6D8 ; =0x000001E1
	cmp r1, r3
	bgt _0206B6A6
	bge _0206B6AE
	cmp r1, #0x92
	bgt _0206B6D4
	cmp r1, #0x90
	blt _0206B6D4
	beq _0206B6CE
	cmp r1, #0x91
	beq _0206B6C6
	cmp r1, #0x92
	beq _0206B6BE
	pop {r3, pc}
_0206B6A6:
	add r3, r3, #7
	cmp r1, r3
	beq _0206B6B6
	pop {r3, pc}
_0206B6AE:
	add r1, r2, #0
	bl sub_0206B648
	pop {r3, pc}
_0206B6B6:
	add r1, r2, #0
	bl sub_0206B638
	pop {r3, pc}
_0206B6BE:
	add r1, r2, #0
	bl sub_0206B658
	pop {r3, pc}
_0206B6C6:
	add r1, r2, #0
	bl sub_0206B668
	pop {r3, pc}
_0206B6CE:
	add r1, r2, #0
	bl sub_0206B678
_0206B6D4:
	pop {r3, pc}
	nop
_0206B6D8: .word 0x000001E1
	thumb_func_end sub_0206B688

	thumb_func_start sub_0206B6DC
sub_0206B6DC: ; 0x0206B6DC
	ldr r3, _0206B6E4 ; =sub_0206B010
	ldr r1, _0206B6E8 ; =0x0000405B
	bx r3
	nop
_0206B6E4: .word sub_0206B010
_0206B6E8: .word 0x0000405B
	thumb_func_end sub_0206B6DC

	thumb_func_start sub_0206B6EC
sub_0206B6EC: ; 0x0206B6EC
	ldr r3, _0206B6F4 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B6F8 ; =0x0000405B
	bx r3
	; .align 2, 0
_0206B6F4: .word sub_0206AFE0
_0206B6F8: .word 0x0000405B
	thumb_func_end sub_0206B6EC

	thumb_func_start sub_0206B6FC
sub_0206B6FC: ; 0x0206B6FC
	ldr r3, _0206B704 ; =sub_0206B010
	ldr r1, _0206B708 ; =0x00004064
	bx r3
	nop
_0206B704: .word sub_0206B010
_0206B708: .word 0x00004064
	thumb_func_end sub_0206B6FC

	thumb_func_start sub_0206B70C
sub_0206B70C: ; 0x0206B70C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_020507E4
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	str r0, [sp, #0x14]
	bl sub_0203A72C
	mov r2, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020D5124
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r4, #9
	bl sub_0203A720
	ldr r1, [r0, #0]
	ldr r2, _0206B860 ; =0x020EFB28
_0206B75A:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0206B774
	ldr r1, _0206B864 ; =0x020EFA9C
	lsl r0, r4, #4
	ldr r2, [r1, r0]
	ldr r1, [sp, #0x10]
	sub r1, r1, r2
	str r1, [sp, #0x10]
	ldr r1, _0206B868 ; =0x020EFAA4
	ldr r0, [r1, r0]
	sub r6, r6, r0
	b _0206B77A
_0206B774:
	sub r2, #0x10
	sub r4, r4, #1
	bpl _0206B75A
_0206B77A:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	asr r1, r1, #4
	lsr r2, r1, #0x1b
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x2c]
	add r2, r1, r2
	asr r1, r2, #5
	asr r2, r6, #4
	lsr r2, r2, #0x1b
	add r2, r6, r2
	asr r2, r2, #5
	bl sub_02039E30
	bl sub_0203A24C
	cmp r0, #0
	beq _0206B7A6
	ldr r0, [sp, #0x10]
	str r0, [r5, #0]
	str r6, [r5, #4]
	b _0206B7B2
_0206B7A6:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	str r0, [r5, #4]
_0206B7B2:
	ldr r0, [sp]
	bl sub_0203D174
	bl sub_02025E38
	bl sub_02025F30
	str r0, [r5, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	str r0, [sp, #0xc]
	ldr r0, [r0, #0]
	mov r1, #6
	add r0, r0, #4
	bl sub_020E1F6C
	mov r6, #0
	add r4, r5, #0
_0206B7DE:
	ldr r0, [sp, #0xc]
	lsl r2, r1, #2
	add r0, r0, r2
	ldrb r2, [r0, #6]
	str r2, [r4, #0x20]
	ldrb r2, [r0, #7]
	str r2, [r4, #0x24]
	ldrb r2, [r0, #9]
	strh r2, [r4, #0x2a]
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0206B7FA
	mov r0, #4
	b _0206B7FA
_0206B7FA:
	strh r0, [r4, #0x28]
	add r0, r1, #5
	mov r1, #6
	bl sub_020E1F6C
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #5
	blt _0206B7DE
	mov r6, #0x4f
	mov r4, #0
	lsl r6, r6, #2
_0206B812:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206B1F0
	cmp r0, #0
	beq _0206B828
	mov r0, #1
	ldrh r1, [r5, r6]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, r6]
_0206B828:
	add r4, r4, #1
	cmp r4, #4
	blt _0206B812
	ldr r6, _0206B86C ; =0x020EFA84
	mov r4, #0
_0206B832:
	ldrb r2, [r6]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF3C
	mov r1, #0x49
	add r2, r5, r4
	lsl r1, r1, #2
	add r4, r4, #1
	add r6, r6, #1
	strb r0, [r2, r1]
	cmp r4, #0x14
	blt _0206B832
	ldr r0, [sp]
	ldr r2, _0206B870 ; =0x02100B90
	add r1, r5, #0
	bl sub_0206B878
	ldr r1, _0206B874 ; =0x00000139
	ldr r0, [sp, #4]
	strb r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206B860: .word 0x020EFB28
_0206B864: .word 0x020EFA9C
_0206B868: .word 0x020EFAA4
_0206B86C: .word 0x020EFA84
_0206B870: .word 0x02100B90
_0206B874: .word 0x00000139
	thumb_func_end sub_0206B70C

	thumb_func_start sub_0206B878
sub_0206B878: ; 0x0206B878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020507E4
	str r0, [sp]
	add r0, sp, #0x28
	bl sub_020C7DA0
	add r0, sp, #0x28
	add r1, r4, #0
	bl sub_020C8080
	cmp r0, #0
	bne _0206B8A4
	bl sub_02022974
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_0206B8A4:
	add r0, sp, #0x28
	add r1, sp, #0x24
	mov r2, #4
	bl sub_020C81D4
	cmp r0, #0
	bge _0206B8B6
	bl sub_02022974
_0206B8B6:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	mov r1, #0
	mov r2, #4
	add r6, r0, #0
	bl sub_020C4CF4
	ldr r1, [sp, #0x24]
	ldr r0, _0206B9D4 ; =0x0000013A
	mov r4, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	ble _0206B9C2
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #0x20]
	mov r0, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0xc0
	str r0, [sp, #0x18]
	mov r0, #0x30
	add r5, #0x5c
	str r0, [sp, #0x14]
_0206B8F8:
	add r0, sp, #0x28
	add r1, r6, #0
	mov r2, #4
	bl sub_020C81D4
	ldrb r0, [r6]
	cmp r0, #1
	beq _0206B90E
	cmp r0, #2
	beq _0206B938
	b _0206B95E
_0206B90E:
	ldrb r2, [r6, #1]
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF3C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #8]
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #4]
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r4]
	b _0206B95E
_0206B938:
	ldrb r1, [r6, #1]
	add r0, r7, #0
	bl sub_0203F188
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x10]
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0xc]
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r4]
_0206B95E:
	ldrb r0, [r6, #2]
	cmp r0, #1
	beq _0206B96A
	cmp r0, #2
	beq _0206B994
	b _0206B9BA
_0206B96A:
	ldrb r2, [r6, #3]
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF3C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x18]
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x14]
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, r4]
	b _0206B9BA
_0206B994:
	ldrb r1, [r6, #3]
	add r0, r7, #0
	bl sub_0203F188
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x20]
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x1c]
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, r4]
_0206B9BA:
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _0206B8F8
_0206B9C2:
	add r0, sp, #0x28
	bl sub_020C80C8
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206B9D4: .word 0x0000013A
	thumb_func_end sub_0206B878

	thumb_func_start sub_0206B9D8
sub_0206B9D8: ; 0x0206B9D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r0, r2, #0
	mov r1, #0x40
	bl sub_02018184
	ldr r6, [r7, #0xc]
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_0207A268
	str r0, [r4, #0]
	add r0, r6, #0
	bl sub_0207D990
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #8]
	add r0, #0x20
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r2, #0xf
	ldrb r3, [r5, #0xa]
	bic r0, r2
	mov r2, #0xf
	and r2, r3
	orr r2, r0
	add r0, r4, #0
	add r0, #0x32
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	mov r2, #0xf0
	bic r0, r2
	ldrb r2, [r5, #0xb]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r2, r0
	add r0, r4, #0
	add r0, #0x32
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0xc]
	add r0, #0x33
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0xd]
	add r0, #0x22
	strb r2, [r0]
_0206BA5A:
	add r0, r5, r1
	ldrb r2, [r0, #0xe]
	add r0, r4, r1
	add r0, #0x2c
	strb r2, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #6
	blo _0206BA5A
	ldr r1, _0206BA80 ; =0x020F1E88
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r5, #0x14]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206BA80: .word 0x020F1E88
	thumb_func_end sub_0206B9D8

	thumb_func_start sub_0206BA84
sub_0206BA84: ; 0x0206BA84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BA96
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BA96:
	ldr r0, [r5, #0x14]
	ldr r4, [r0, #0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #6
	beq _0206BAB0
	cmp r0, #7
	bne _0206BAB8
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0206BAB0:
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0206BAB8:
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0xe
	mov r2, #6
	bl sub_020C4DB0
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206BA84

	thumb_func_start sub_0206BAE0
sub_0206BAE0: ; 0x0206BAE0
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
	bl sub_020C4CF4
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
	ldrb r0, [r6, #0xd]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r6, #9]
	strb r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_0202D79C
	str r0, [r4, #0x20]
	ldr r1, _0206BB64 ; =0x020EFB38
	add r0, r4, #0
	bl sub_0208D720
	add r0, r5, #0
	bl sub_02025E38
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208E9C0
	ldr r1, _0206BB68 ; =0x020F410C
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203CD84
	ldr r0, [r6, #0x14]
	str r4, [r0, #0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BB64: .word 0x020EFB38
_0206BB68: .word 0x020F410C
	thumb_func_end sub_0206BAE0

	thumb_func_start sub_0206BB6C
sub_0206BB6C: ; 0x0206BB6C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BB7E
	mov r0, #3
	pop {r4, pc}
_0206BB7E:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #0xd]
	bl sub_020181C4
	ldr r1, [r4, #0x14]
	mov r0, #0
	str r0, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206BB6C

	thumb_func_start sub_0206BB94
sub_0206BB94: ; 0x0206BB94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #4
	bhi _0206BBF6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206BBB8: ; jump table
	.short _0206BBC2 - _0206BBB8 - 2 ; case 0
	.short _0206BBCE - _0206BBB8 - 2 ; case 1
	.short _0206BBD8 - _0206BBB8 - 2 ; case 2
	.short _0206BBE4 - _0206BBB8 - 2 ; case 3
	.short _0206BBEE - _0206BBB8 - 2 ; case 4
_0206BBC2:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0206B9D8
	str r0, [r4, #4]
	b _0206BBF6
_0206BBCE:
	add r1, r5, #0
	bl sub_0206BA84
	str r0, [r4, #4]
	b _0206BBF6
_0206BBD8:
	add r1, r5, #0
	mov r2, #0xb
	bl sub_0206BAE0
	str r0, [r4, #4]
	b _0206BBF6
_0206BBE4:
	add r1, r5, #0
	bl sub_0206BB6C
	str r0, [r4, #4]
	b _0206BBF6
_0206BBEE:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BBF6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206BB94

	thumb_func_start sub_0206BBFC
sub_0206BBFC: ; 0x0206BBFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	strb r6, [r4, #8]
	strb r7, [r4, #9]
	add r0, sp, #8
	ldrb r1, [r0, #0x10]
	add r2, r4, #0
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, #0x18]
	strb r1, [r4, #0xc]
	ldrb r0, [r0, #0x1c]
	ldr r1, _0206BC44 ; =sub_0206BB94
	strb r0, [r4, #0xd]
	ldr r0, [sp]
	str r5, [r4, #0x14]
	ldr r0, [r0, #0x10]
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BC44: .word sub_0206BB94
	thumb_func_end sub_0206BBFC

	thumb_func_start sub_0206BC48
sub_0206BC48: ; 0x0206BC48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0206BC68
	ldrh r1, [r4, #0x12]
	ldrh r2, [r4, #0x14]
	add r0, r5, #0
	bl sub_0203E1AC
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BC68:
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206BC48

	thumb_func_start sub_0206BC70
sub_0206BC70: ; 0x0206BC70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206BC82
	mov r0, #1
	pop {r4, pc}
_0206BC82:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x20]
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #2
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206BC70

	thumb_func_start sub_0206BC94
sub_0206BC94: ; 0x0206BC94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0206BCB6
	cmp r1, #1
	beq _0206BCC0
	cmp r1, #2
	beq _0206BCCA
	b _0206BCE0
_0206BCB6:
	add r1, r5, #0
	bl sub_0206BC48
	str r0, [r4, #4]
	b _0206BCE0
_0206BCC0:
	add r1, r5, #0
	bl sub_0206BC70
	str r0, [r4, #4]
	b _0206BCE0
_0206BCCA:
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_0203F118
	ldr r1, [r4, #0]
	strh r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206BCE0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206BC94

	thumb_func_start sub_0206BCE4
sub_0206BCE4: ; 0x0206BCE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02050A60
	str r0, [sp]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	strh r5, [r4, #0x12]
	strh r7, [r4, #0x14]
	ldr r0, [sp]
	strh r6, [r4, #0x10]
	ldr r0, [r0, #0x10]
	ldr r1, _0206BD18 ; =sub_0206BC94
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206BD18: .word sub_0206BC94
	thumb_func_end sub_0206BCE4

	thumb_func_start sub_0206BD1C
sub_0206BD1C: ; 0x0206BD1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_0203664C
	add r7, r0, #0
	bne _0206BD42
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206BD42:
	ldrh r1, [r5, #2]
	add r0, r6, #0
	bl sub_0203F118
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _0206BD5C
	cmp r0, #1
	beq _0206BD68
	cmp r0, #2
	beq _0206BD74
	b _0206BD7E
_0206BD5C:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204AFC4
	strh r0, [r4]
	b _0206BD7E
_0206BD68:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204B020
	strh r0, [r4]
	b _0206BD7E
_0206BD74:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204B044
	strh r0, [r4]
_0206BD7E:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206BD1C

	thumb_func_start sub_0206BD88
sub_0206BD88: ; 0x0206BD88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	strh r5, [r4]
	strh r6, [r4, #2]
	ldr r0, [r7, #0x10]
	ldr r1, _0206BDB8 ; =sub_0206BD1C
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206BDB8: .word sub_0206BD1C
	thumb_func_end sub_0206BD88

	thumb_func_start sub_0206BDBC
sub_0206BDBC: ; 0x0206BDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	bl sub_0203068C
	mov r1, #0
	mov r2, #0xff
	bl sub_02030698
	str r0, [sp, #0x10]
	cmp r0, #0x14
	bhs _0206BDDA
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BDDA:
	ldr r0, [sp]
	bl sub_0202D750
	mov r1, #0xd
	mov r2, #0
	add r4, r0, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r7, r0, #0x18
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r7, #0
	beq _0206BE4C
	cmp r6, #0
	beq _0206BE4C
	cmp r5, #0
	beq _0206BE4C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BE4C:
	ldr r0, [sp]
	bl sub_020298B0
	cmp r7, #0
	bne _0206BE86
	mov r1, #0x55
	bl sub_02028984
	cmp r0, #0
	beq _0206BE70
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl sub_0202D414
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206BE70:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0206BE80
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #1
	bl sub_0202D414
_0206BE80:
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BE86:
	ldr r1, [sp, #0x10]
	cmp r1, #0x32
	bhs _0206BE92
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BE92:
	cmp r6, #0
	bne _0206BEC6
	mov r1, #0x56
	bl sub_02028984
	cmp r0, #0
	beq _0206BEB0
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_0202D414
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0206BEB0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206BEC0
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0202D414
_0206BEC0:
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BEC6:
	cmp r1, #0x64
	blo _0206BECE
	cmp r5, #0
	beq _0206BED4
_0206BECE:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BED4:
	mov r1, #0x57
	bl sub_02028984
	cmp r0, #0
	beq _0206BEEE
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0202D414
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0206BEEE:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0206BEFE
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_0202D414
_0206BEFE:
	mov r0, #4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206BDBC

	thumb_func_start sub_0206BF04
sub_0206BF04: ; 0x0206BF04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203068C
	mov r1, #0
	mov r2, #0xff
	bl sub_02030698
	str r0, [sp, #8]
	cmp r0, #0x14
	bhs _0206BF22
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BF22:
	add r0, r4, #0
	bl sub_0202D750
	mov r1, #0xd
	mov r2, #0
	add r7, r0, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r6, r0, #0x18
	add r0, r7, #0
	add r2, r1, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r7, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #2
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl sub_0202D414
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	beq _0206BF92
	cmp r4, #0
	beq _0206BF92
	cmp r5, #0
	beq _0206BF92
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BF92:
	cmp r6, #0
	bne _0206BFA8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0206BFA2
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0206BFA2:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206BFA8:
	ldr r0, [sp, #8]
	cmp r0, #0x32
	bhs _0206BFB4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFB4:
	cmp r4, #0
	bne _0206BFCA
	ldr r0, [sp]
	cmp r0, #0
	beq _0206BFC4
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_0206BFC4:
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0206BFCA:
	cmp r0, #0x64
	bhs _0206BFD4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFD4:
	cmp r5, #0
	beq _0206BFDE
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206BFDE:
	cmp r1, #0
	beq _0206BFE8
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_0206BFE8:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206BF04

	thumb_func_start sub_0206BFF0
sub_0206BFF0: ; 0x0206BFF0
	ldr r1, _0206BFF8 ; =0x02E90EDD
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0206BFF8: .word 0x02E90EDD
	thumb_func_end sub_0206BFF0

	thumb_func_start sub_0206BFFC
sub_0206BFFC: ; 0x0206BFFC
	ldr r1, _0206C004 ; =0x5D588B65
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0206C004: .word 0x5D588B65
	thumb_func_end sub_0206BFFC

	thumb_func_start sub_0206C008
sub_0206C008: ; 0x0206C008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202B4A0
	bl sub_0202B428
	bl sub_0206BFFC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202D750
	add r1, r4, #0
	bl sub_0202D470
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C008

	thumb_func_start sub_0206C02C
sub_0206C02C: ; 0x0206C02C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0202D750
	add r6, r0, #0
	bl sub_0202D474
	bl sub_0206BFFC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D470
	add r0, r4, #0
	bl sub_0206BFF0
	str r0, [sp]
	add r0, r5, #0
	bl sub_0202D740
	mov r1, #0xa
	add r2, sp, #0
	bl sub_0202D140
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206C02C

	thumb_func_start sub_0206C068
sub_0206C068: ; 0x0206C068
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl sub_0202D750
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202D740
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202D474
	bl sub_0206BFF0
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0202D0BC
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0202D3B4
	mov r1, #0x18
	add r5, r0, #0
	mul r5, r1
	mov r4, #0
	cmp r5, #0
	ble _0206C0BA
	ldr r0, [sp]
_0206C0AE:
	bl sub_0206BFF0
	add r4, r4, #1
	str r0, [sp]
	cmp r4, r5
	blt _0206C0AE
_0206C0BA:
	add r0, r6, #0
	bl sub_0202D740
	mov r1, #0xa
	add r2, sp, #0
	bl sub_0202D140
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206C068

	thumb_func_start sub_0206C0D0
sub_0206C0D0: ; 0x0206C0D0
	ldr r0, [r0, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _0206C0E4 ; =0x000001ED
	cmp r1, r0
	bne _0206C0DE
	mov r0, #1
	bx lr
_0206C0DE:
	mov r0, #0
	bx lr
	nop
_0206C0E4: .word 0x000001ED
	thumb_func_end sub_0206C0D0

	thumb_func_start sub_0206C0E8
sub_0206C0E8: ; 0x0206C0E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0xb
	bl ov6_022426AC
	str r0, [r4, #0]
	mov r0, #0xb
	add r1, r5, #0
	bl ov6_02242A10
	str r0, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x10]
	ldr r1, _0206C11C ; =sub_0206C120
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0206C11C: .word sub_0206C120
	thumb_func_end sub_0206C0E8

	thumb_func_start sub_0206C120
sub_0206C120: ; 0x0206C120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bls _0206C13C
	b _0206C2BE
_0206C13C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C148: ; jump table
	.short _0206C15A - _0206C148 - 2 ; case 0
	.short _0206C17E - _0206C148 - 2 ; case 1
	.short _0206C18A - _0206C148 - 2 ; case 2
	.short _0206C1B2 - _0206C148 - 2 ; case 3
	.short _0206C1BE - _0206C148 - 2 ; case 4
	.short _0206C22E - _0206C148 - 2 ; case 5
	.short _0206C27C - _0206C148 - 2 ; case 6
	.short _0206C288 - _0206C148 - 2 ; case 7
	.short _0206C29E - _0206C148 - 2 ; case 8
_0206C15A:
	add r0, r6, #0
	mov r1, #1
	bl sub_02070428
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #4]
	bl ov6_02242A94
	ldr r0, [r4, #4]
	bl ov6_02242AEC
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_020558AC
	mov r0, #1
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C17E:
	add r0, r5, #0
	bl sub_02055820
	mov r0, #2
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C18A:
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _0206C19C
	bl sub_0206AE0C
	b _0206C1A4
_0206C19C:
	cmp r1, #5
	bne _0206C1A4
	bl sub_0206AE1C
_0206C1A4:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_020539A0
	mov r0, #3
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C1B2:
	add r0, r5, #0
	bl sub_02055868
	mov r0, #4
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C1BE:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldrb r1, [r4, #0xd]
	add r7, r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	cmp r1, #5
	bhi _0206C21C
	add r0, r6, #0
	bl ov6_02242984
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov6_022426C0
	ldr r0, [r4, #0]
	bl ov6_022427F4
	mov r0, #0
	strb r0, [r4, #0xe]
	ldr r0, _0206C2C4 ; =0x00000679
	bl sub_02005748
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _0206C2C8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x11
	bl sub_02056B30
	mov r0, #5
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C21C:
	mov r1, #0
	bl sub_02062D64
	add r0, r5, #0
	bl sub_020558F0
	mov r0, #8
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C22E:
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0x3c
	bhs _0206C244
	ldr r0, _0206C2CC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0206C2BE
_0206C244:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #4]
	bl ov6_02242A94
	ldr r0, [r4, #4]
	bl ov6_02242AEC
	str r0, [r4, #8]
	ldr r0, _0206C2C4 ; =0x00000679
	bl sub_02005748
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _0206C2C8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x10
	bl sub_02056B30
	mov r0, #6
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C27C:
	ldr r0, [r4, #0]
	bl ov6_02242814
	mov r0, #7
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C288:
	ldr r0, [r4, #0]
	bl ov6_02242820
	cmp r0, #0
	beq _0206C2BE
	ldr r0, [r4, #0]
	bl ov6_02242828
	mov r0, #1
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C29E:
	add r0, r6, #0
	mov r1, #0
	bl sub_02070428
	ldr r0, [r4, #4]
	bl ov6_02242A8C
	ldr r0, [r4, #0]
	bl ov6_022426B8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206C2BE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C2C4: .word 0x00000679
_0206C2C8: .word 0x0000FFFF
_0206C2CC: .word 0x021BF67C
	thumb_func_end sub_0206C120

	thumb_func_start sub_0206C2D0
sub_0206C2D0: ; 0x0206C2D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0
	ble _0206C33A
	bl sub_0202C834
	bl sub_0202C844
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xa
	add r6, r0, #0
	mov r5, #0
	mul r6, r1
_0206C2F6:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02025F34
	cmp r0, #0
	beq _0206C330
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C848
	add r1, r0, #0
	cmp r1, #0
	ble _0206C318
	cmp r1, #0xc8
	bge _0206C318
	sub r1, r1, r6
	b _0206C322
_0206C318:
	cmp r1, #0xc8
	blt _0206C320
	bl sub_02022974
_0206C320:
	mov r1, #0
_0206C322:
	cmp r1, #0
	bge _0206C328
	mov r1, #0
_0206C328:
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0202C850
_0206C330:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0206C2F6
_0206C33A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206C2D0

	thumb_func_start sub_0206C33C
sub_0206C33C: ; 0x0206C33C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202D8BC
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C538
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C33C

	thumb_func_start sub_0206C354
sub_0206C354: ; 0x0206C354
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0206C35A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C36E
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206C33C
_0206C36E:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0206C35A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206C354

	thumb_func_start sub_0206C37C
sub_0206C37C: ; 0x0206C37C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
_0206C382:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C3BC
	bl sub_0201D2E8
	lsl r0, r0, #4
	lsr r6, r0, #0x10
	cmp r6, #0x10
	blo _0206C39E
	bl sub_02022974
_0206C39E:
	cmp r6, #0
	bne _0206C3AC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C33C
	b _0206C3BC
_0206C3AC:
	add r0, r5, #0
	bl sub_0202D8BC
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206C588
_0206C3BC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0206C382
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C37C

	thumb_func_start sub_0206C3C8
sub_0206C3C8: ; 0x0206C3C8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1d
	blo _0206C3D4
	bl sub_02022974
_0206C3D4:
	ldr r0, _0206C3DC ; =0x020EFB44
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0206C3DC: .word 0x020EFB44
	thumb_func_end sub_0206C3C8

	thumb_func_start sub_0206C3E0
sub_0206C3E0: ; 0x0206C3E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0206C3E6:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206C3F6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206C3F6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0206C3E6
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206C3E0

	thumb_func_start sub_0206C404
sub_0206C404: ; 0x0206C404
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0206C3E0
	cmp r0, #0
	beq _0206C41A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202D8A4
_0206C41A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206C404

	thumb_func_start sub_0206C41C
sub_0206C41C: ; 0x0206C41C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x10]
	add r7, r0, #0
	bl sub_0202D834
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_0202D924
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #5
	bhi _0206C476
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C444: ; jump table
	.short _0206C450 - _0206C444 - 2 ; case 0
	.short _0206C456 - _0206C444 - 2 ; case 1
	.short _0206C45E - _0206C444 - 2 ; case 2
	.short _0206C464 - _0206C444 - 2 ; case 3
	.short _0206C46A - _0206C444 - 2 ; case 4
	.short _0206C470 - _0206C444 - 2 ; case 5
_0206C450:
	ldr r4, _0206C530 ; =0x000001E1
	mov r5, #0x32
	b _0206C47E
_0206C456:
	mov r4, #0x7a
	lsl r4, r4, #2
	mov r5, #0x32
	b _0206C47E
_0206C45E:
	ldr r4, _0206C534 ; =0x000001EB
	mov r5, #0x28
	b _0206C47E
_0206C464:
	mov r4, #0x92
	mov r5, #0x3c
	b _0206C47E
_0206C46A:
	mov r4, #0x91
	mov r5, #0x3c
	b _0206C47E
_0206C470:
	mov r4, #0x90
	mov r5, #0x3c
	b _0206C47E
_0206C476:
	bl sub_02022974
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0206C47E:
	add r0, r6, #0
	mov r1, #4
	add r2, r4, #0
	bl sub_0202D980
	add r0, r6, #0
	mov r1, #6
	add r2, r5, #0
	bl sub_0202D980
	add r0, r7, #0
	bl sub_02025E38
	str r0, [sp, #0x18]
	mov r0, #4
	bl sub_02073C74
	add r7, r0, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x18]
	bl sub_02025F24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #0x20
	bl sub_02073D80
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl sub_0202D980
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0202D980
	add r0, r7, #0
	mov r1, #0xaf
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0202D980
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D980
	add r0, r7, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #5
	bl sub_0202D980
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_0202D8BC
	add r2, r0, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl sub_0206C538
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0206C530: .word 0x000001E1
_0206C534: .word 0x000001EB
	thumb_func_end sub_0206C41C

	thumb_func_start sub_0206C538
sub_0206C538: ; 0x0206C538
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	bl sub_0202D8C4
	ldr r7, _0206C580 ; =0x020EFB44
	lsl r0, r0, #2
	ldr r4, [r7, r0]
_0206C54C:
	bl sub_0201D2E8
	ldr r1, _0206C584 ; =0x000008D4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x1d
	blo _0206C562
	bl sub_02022974
_0206C562:
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	lsl r0, r2, #2
	ldr r3, [r7, r0]
	cmp r3, r6
	beq _0206C54C
	cmp r3, r4
	beq _0206C54C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C580: .word 0x020EFB44
_0206C584: .word 0x000008D4
	thumb_func_end sub_0206C538

	thumb_func_start sub_0206C588
sub_0206C588: ; 0x0206C588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r2, #0
	bl sub_0202D8C4
	mov r1, #0xc
	ldr r2, _0206C62C ; =0x020EFBB8
	mul r1, r0
	ldrh r0, [r2, r1]
	add r4, r2, r1
	cmp r0, #1
	bne _0206C5CE
	ldrh r0, [r4, #2]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _0206C630 ; =0x020EFB44
	lsl r1, r2, #2
	ldr r3, [r0, r1]
	cmp r3, r7
	bne _0206C5C2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_0206C538
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206C5C2:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206C5CE:
	ldrh r5, [r4]
	cmp r5, #0
	bne _0206C5D8
	bl sub_02022974
_0206C5D8:
	cmp r5, #1
	bhi _0206C5E0
	mov r6, #0
	b _0206C608
_0206C5E0:
	bl sub_0201D2E8
	add r6, r0, #0
	ldr r0, _0206C634 ; =0x0000FFFF
	add r1, r5, #0
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, r5
	blo _0206C608
	bl sub_02022974
_0206C608:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x17
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _0206C630 ; =0x020EFB44
	lsl r1, r2, #2
	ldr r3, [r0, r1]
	cmp r3, r7
	beq _0206C5CE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0206C638
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C62C: .word 0x020EFBB8
_0206C630: .word 0x020EFB44
_0206C634: .word 0x0000FFFF
	thumb_func_end sub_0206C588

	thumb_func_start sub_0206C638
sub_0206C638: ; 0x0206C638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202D924
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202D8DC
	ldr r0, [sp]
	mov r1, #1
	add r2, r7, #0
	bl sub_0202D980
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206C638

	thumb_func_start sub_0206C660
sub_0206C660: ; 0x0206C660
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r0, r4, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _0206C67C ; =0x020EFD14
	add r0, r4, #0
	add r2, #0xc
	bl sub_02050A38
	pop {r4, pc}
	; .align 2, 0
_0206C67C: .word 0x020EFD14
	thumb_func_end sub_0206C660

	thumb_func_start sub_0206C680
sub_0206C680: ; 0x0206C680
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bhi _0206C73A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C6A6: ; jump table
	.short _0206C6B4 - _0206C6A6 - 2 ; case 0
	.short _0206C6DC - _0206C6A6 - 2 ; case 1
	.short _0206C6EA - _0206C6A6 - 2 ; case 2
	.short _0206C6F8 - _0206C6A6 - 2 ; case 3
	.short _0206C706 - _0206C6A6 - 2 ; case 4
	.short _0206C714 - _0206C6A6 - 2 ; case 5
	.short _0206C722 - _0206C6A6 - 2 ; case 6
_0206C6B4:
	ldr r0, [r4, #0x24]
	add r3, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x28]
	add r3, #0xc
	str r0, [sp, #4]
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov6_02246254
	ldr r1, [r4, #0]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov6_02246234
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6DC:
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6EA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C6F8:
	add r0, r5, #0
	bl sub_0206C660
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C706:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C714:
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0206C73A
_0206C722:
	ldr r0, [r4, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206C73A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C680

	thumb_func_start sub_0206C740
sub_0206C740: ; 0x0206C740
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x2c
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0
	str r0, [r4, #4]
	str r5, [r4, #0]
	ldr r0, [sp]
	str r6, [r4, #8]
	bl sub_02073C74
	str r0, [r4, #0x24]
	ldr r0, [sp]
	bl sub_02073C74
	str r0, [r4, #0x28]
	ldr r1, _0206C780 ; =sub_0206C680
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C780: .word sub_0206C680
	thumb_func_end sub_0206C740

	thumb_func_start sub_0206C784
sub_0206C784: ; 0x0206C784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x80
	add r7, r2, #0
	str r3, [sp, #0xc]
	bl sub_02018184
	add r4, r0, #0
	strb r6, [r4, #1]
	strb r7, [r4, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x40]
	add r2, #0x34
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x44]
	mov r7, #9
	str r0, [r4, #0x20]
	ldr r3, [r5, #0x44]
_0206C7B2:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0206C7B2
	mov r7, #0
	sub r0, r7, #1
	str r0, [r4, #0x10]
	strb r7, [r4, #5]
	mov r0, #0x40
	add r1, r7, #0
	add r2, r7, #0
	str r7, [r4, #8]
	bl sub_02004550
	cmp r6, #3
	bne _0206C80C
	mov r0, #0x22
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	sub r3, r2, #4
	bl sub_020550F4
	mov r0, #0x19
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0xe
	lsl r0, r0, #0x10
	mov r7, #1
	str r0, [r4, #0x10]
	b _0206C842
_0206C80C:
	cmp r6, #2
	bne _0206C842
	ldr r0, _0206C8C8 ; =0x0000021A
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r0, sp, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	sub r2, r2, #5
	mov r3, #2
	bl sub_020550F4
	mov r0, #3
	lsl r0, r0, #0x12
	mov r7, #1
	str r0, [sp, #0x10]
_0206C842:
	cmp r7, #0
	beq _0206C8B6
	add r3, r4, #0
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x18
	add r3, #0x30
	bl sub_02055178
	cmp r0, #0
	beq _0206C8A8
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x14]
	strb r0, [r4, #3]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x3c]
	add r1, #0x24
	bl sub_0205EAEC
	ldr r0, [r5, #0x24]
	bl sub_020206B0
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0x24
	bl sub_02020690
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0206C8A2
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_0206CBA0
	ldr r0, _0206C8CC ; =0x000006DD
	bl sub_02005748
	b _0206C8BA
_0206C8A2:
	mov r0, #0
	strb r0, [r4]
	b _0206C8BA
_0206C8A8:
	bl sub_02022974
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206C8B6:
	mov r0, #2
	strb r0, [r4]
_0206C8BA:
	ldr r0, [r5, #0x10]
	ldr r1, _0206C8D0 ; =sub_0206C964
	add r2, r4, #0
	bl sub_02050944
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C8C8: .word 0x0000021A
_0206C8CC: .word 0x000006DD
_0206C8D0: .word sub_0206C964
	thumb_func_end sub_0206C784

	thumb_func_start sub_0206C8D4
sub_0206C8D4: ; 0x0206C8D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #8
	add r6, r2, #0
	bl sub_02018184
	add r2, r0, #0
	str r6, [r2, #4]
	strb r4, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _0206C8F4 ; =sub_0206C8F8
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206C8F4: .word sub_0206C8F8
	thumb_func_end sub_0206C8D4

	thumb_func_start sub_0206C8F8
sub_0206C8F8: ; 0x0206C8F8
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
	cmp r0, #0
	beq _0206C922
	cmp r0, #1
	beq _0206C942
	cmp r0, #2
	beq _0206C950
	b _0206C95A
_0206C922:
	ldrb r0, [r4]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0206C938
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203E2D4
	b _0206C95A
_0206C938:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203E2AC
	b _0206C95A
_0206C942:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206C95A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C950:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206C95A:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C8F8

	thumb_func_start sub_0206C964
sub_0206C964: ; 0x0206C964
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #7
	bhi _0206C9A8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206C98A: ; jump table
	.short _0206C99A - _0206C98A - 2 ; case 0
	.short _0206C9B0 - _0206C98A - 2 ; case 1
	.short _0206CA12 - _0206C98A - 2 ; case 2
	.short _0206CA38 - _0206C98A - 2 ; case 3
	.short _0206CA78 - _0206C98A - 2 ; case 4
	.short _0206CA8A - _0206C98A - 2 ; case 5
	.short _0206CAA6 - _0206C98A - 2 ; case 6
	.short _0206CABA - _0206C98A - 2 ; case 7
_0206C99A:
	bl sub_0206CC64
	add r0, r4, #0
	bl sub_0206CAD0
	cmp r0, #0
	bne _0206C9AA
_0206C9A8:
	b _0206CAC4
_0206C9AA:
	mov r0, #2
	strb r0, [r4]
	b _0206CAC4
_0206C9B0:
	bl sub_0206CC64
	add r0, r4, #0
	bl sub_0206CAD0
	add r6, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0206C9F0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	add r2, r4, #2
	bl sub_0206CB8C
	cmp r0, #0
	beq _0206CAC4
	ldr r0, [r5, #0x54]
	mov r1, #1
	mov r2, #0
	bl ov5_021D4250
	ldr r0, [r5, #0x54]
	mov r1, #2
	mov r2, #0
	bl ov5_021D4250
	ldr r0, _0206CACC ; =0x000006DE
	bl sub_02005748
	b _0206CAC4
_0206C9F0:
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _0206CAC4
	ldr r0, [r5, #0x54]
	mov r1, #2
	bl ov5_021D42F0
	cmp r0, #0
	beq _0206CAC4
	cmp r6, #0
	beq _0206CAC4
	mov r0, #2
	strb r0, [r4]
	b _0206CAC4
_0206CA12:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	mov r1, #6
	bl sub_0200564C
	mov r0, #3
	strb r0, [r4]
	b _0206CAC4
_0206CA38:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0206CA48
	bl sub_02005684
	cmp r0, #0
	beq _0206CA4E
_0206CA48:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CA4E:
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0206CA6C
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #1
	bl ov5_021D42B0
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #2
	bl ov5_021D42B0
_0206CA6C:
	add r0, r6, #0
	bl sub_02055820
	mov r0, #4
	strb r0, [r4]
	b _0206CAC4
_0206CA78:
	ldrb r1, [r4, #1]
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x34
	bl sub_0206C8D4
	mov r0, #5
	strb r0, [r4]
	b _0206CAC4
_0206CA8A:
	ldr r0, [r4, #0x20]
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r4, #4]
	mvn r2, r2
	str r0, [sp, #4]
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	add r0, r6, #0
	bl sub_020539E8
	mov r0, #6
	strb r0, [r4]
	b _0206CAC4
_0206CAA6:
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_020559CC
	mov r0, #7
	strb r0, [r4]
	b _0206CAC4
_0206CABA:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0206CAC4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0206CACC: .word 0x000006DE
	thumb_func_end sub_0206C964

	thumb_func_start sub_0206CAD0
sub_0206CAD0: ; 0x0206CAD0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x30]
	add r0, sp, #0
	bl ov5_021E1894
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0206CB40
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206CAF0: ; jump table
	.short _0206CAF8 - _0206CAF0 - 2 ; case 0
	.short _0206CB2E - _0206CAF0 - 2 ; case 1
	.short _0206CB1C - _0206CAF0 - 2 ; case 2
	.short _0206CB0A - _0206CAF0 - 2 ; case 3
_0206CAF8:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	b _0206CB4A
_0206CB0A:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [r4, #0x2c]
	b _0206CB4A
_0206CB1C:
	ldr r1, [sp]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x24]
	b _0206CB4A
_0206CB2E:
	ldr r1, [sp]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [r4, #0x24]
	b _0206CB4A
_0206CB40:
	bl sub_02022974
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0206CB4A:
	mov r0, #1
	ldr r1, [r4, #0x7c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _0206CB6A
	ldrb r1, [r4, #3]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrb r1, [r4, #3]
	cmp r1, #0x18
	blo _0206CB6A
	ldr r1, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x7c]
	mov r0, #0
	strb r0, [r4, #3]
_0206CB6A:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl ov5_021E18A4
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x7c]
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bgt _0206CB86
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0206CB86:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0206CAD0

	thumb_func_start sub_0206CB8C
sub_0206CB8C: ; 0x0206CB8C
	ldr r3, [r0, #0]
	ldr r0, [r1, #0]
	cmp r3, r0
	bgt _0206CB9A
	mov r0, #1
	strb r0, [r2]
	bx lr
_0206CB9A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206CB8C

	thumb_func_start sub_0206CBA0
sub_0206CBA0: ; 0x0206CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, _0206CC60 ; =0x020EFD24
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	str r1, [sp, #0x30]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
_0206CBBA:
	lsl r0, r6, #2
	add r1, sp, #0x2c
	ldr r4, [r1, r0]
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl sub_020552B4
	cmp r0, #0
	beq _0206CC4C
	ldr r1, [r5, #0x30]
	add r0, r4, #0
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _0206CC04
	add r2, r0, #0
	add r2, #8
	beq _0206CBF8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0206CBF8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0206CBFA
_0206CBF8:
	mov r1, #0
_0206CBFA:
	cmp r1, #0
	beq _0206CC04
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _0206CC06
_0206CC04:
	mov r7, #0
_0206CC06:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x20
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _0206CC1A
	bl sub_02022974
_0206CC1A:
	ldr r0, [sp, #0x20]
	bl ov5_021E18BC
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x30]
	bl ov5_021EFAA0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r3, sp, #0x24
	ldr r2, [r3, r2]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	add r3, r4, #0
	bl ov5_021D41C8
	b _0206CC50
_0206CC4C:
	bl sub_02022974
_0206CC50:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _0206CBBA
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0206CC60: .word 0x020EFD24
	thumb_func_end sub_0206CBA0

	thumb_func_start sub_0206CC64
sub_0206CC64: ; 0x0206CC64
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _0206CC8C
	cmp r1, #3
	bne _0206CCA8
	mov r2, #2
	ldr r1, [r0, #8]
	lsl r2, r2, #0x10
	cmp r1, r2
	bge _0206CCAC
	ldr r3, [r0, #0x24]
	lsr r1, r2, #5
	add r1, r3, r1
	str r1, [r0, #0x24]
	ldr r3, [r0, #8]
	lsr r1, r2, #5
	add r1, r3, r1
	str r1, [r0, #8]
	pop {r3, pc}
_0206CC8C:
	mov r1, #3
	ldr r2, [r0, #8]
	lsl r1, r1, #0x10
	cmp r2, r1
	bge _0206CCAC
	mov r1, #2
	ldr r2, [r0, #0x2c]
	lsl r1, r1, #0xa
	add r2, r2, r1
	str r2, [r0, #0x2c]
	ldr r2, [r0, #8]
	add r1, r2, r1
	str r1, [r0, #8]
	pop {r3, pc}
_0206CCA8:
	bl sub_02022974
_0206CCAC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206CC64

	thumb_func_start sub_0206CCB0
sub_0206CCB0: ; 0x0206CCB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #0
	ble _0206CCBC
	cmp r5, #6
	blt _0206CCC0
_0206CCBC:
	bl sub_02022974
_0206CCC0:
	sub r1, r5, #1
	ldr r6, _0206CCD8 ; =0x020EFD60
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r6, r4]
	cmp r0, r5
	beq _0206CCD4
	bl sub_02022974
_0206CCD4:
	add r0, r6, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206CCD8: .word 0x020EFD60
	thumb_func_end sub_0206CCB0

	thumb_func_start sub_0206CCDC
sub_0206CCDC: ; 0x0206CCDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_022464A4
	add r4, r0, #0
	cmp r4, #0
	ble _0206CCF2
	ldrh r0, [r5, #6]
	cmp r4, r0
	blt _0206CCF6
_0206CCF2:
	bl sub_02022974
_0206CCF6:
	sub r0, r4, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206CCDC

	thumb_func_start sub_0206CD00
sub_0206CD00: ; 0x0206CD00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0206CCB0
	ldrh r2, [r0, #4]
	ldr r1, [sp, #0x18]
	strh r2, [r1]
	add r1, r5, #0
	bl sub_0206CCDC
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0206CD22
	bl sub_02022974
_0206CD22:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206CD00

	thumb_func_start sub_0206CD2C
sub_0206CD2C: ; 0x0206CD2C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0206CCB0
	add r1, r4, #0
	bl sub_0206CCDC
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0206CD46
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206CD46:
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0206CD50
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206CD50:
	add r0, r5, #0
	add r1, r4, #0
	blx r2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206CD2C

	thumb_func_start sub_0206CD58
sub_0206CD58: ; 0x0206CD58
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202440C
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202E43C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206CD58

	thumb_func_start sub_0206CD70
sub_0206CD70: ; 0x0206CD70
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0206CD7C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206CD70

	thumb_func_start sub_0206CD7C
sub_0206CD7C: ; 0x0206CD7C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202440C
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202E43C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206CD7C

	thumb_func_start sub_0206CD94
sub_0206CD94: ; 0x0206CD94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x40
	mov r1, #4
	str r3, [sp, #8]
	bl sub_02023790
	add r1, r7, #0
	add r4, r0, #0
	bl sub_02023D28
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CD94

	thumb_func_start sub_0206CDD0
sub_0206CDD0: ; 0x0206CDD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl ov6_02246494
	add r7, r0, #0
	add r0, r6, #0
	bl ov6_0224648C
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov6_02246490
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0206CD94
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CDD0

	thumb_func_start sub_0206CE08
sub_0206CE08: ; 0x0206CE08
	push {r4, r5, r6, lr}
	add r3, r0, #0
	add r5, r1, #0
	mov r0, #0x40
	add r1, r3, #0
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CE08

	thumb_func_start sub_0206CE38
sub_0206CE38: ; 0x0206CE38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	strb r0, [r6]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	strb r0, [r7]
	add r0, r5, #0
	mov r1, #0x7a
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206CE38

	thumb_func_start sub_0206CE74
sub_0206CE74: ; 0x0206CE74
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	add r2, sp, #8
	add r6, r3, #0
	bl sub_0200B274
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, sp, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0206CD94
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CE74

	thumb_func_start sub_0206CEA4
sub_0206CEA4: ; 0x0206CEA4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl sub_0206CD94
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206CEA4

	thumb_func_start sub_0206CED0
sub_0206CED0: ; 0x0206CED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0206CF10
	mov r0, #0x40
	add r1, r6, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
_0206CF10:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CED0

	thumb_func_start sub_0206CF14
sub_0206CF14: ; 0x0206CF14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0202E7D8
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r4, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	strb r5, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r6, [r4, #7]
	strb r0, [r4, #9]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CF14

	thumb_func_start sub_0206CF48
sub_0206CF48: ; 0x0206CF48
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202E7E4
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #0x1f]
	add r0, r5, #0
	bl sub_02075BCC
	strb r0, [r4, #0x1e]
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #7]
	add r2, r4, #7
	add r4, #8
	add r0, r6, #0
	add r1, r5, #0
	add r3, r4, #0
	bl sub_0206CED0
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CF48

	thumb_func_start sub_0206CF9C
sub_0206CF9C: ; 0x0206CF9C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7E4
	mov r1, #2
	strb r1, [r0, #0x1f]
	add r0, #0x20
	strb r4, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0206CF9C

	thumb_func_start sub_0206CFB4
sub_0206CFB4: ; 0x0206CFB4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7E4
	mov r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x22]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFB4

	thumb_func_start sub_0206CFCC
sub_0206CFCC: ; 0x0206CFCC
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7F0
	mov r1, #1
	strb r1, [r0]
	strb r4, [r0, #1]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFCC

	thumb_func_start sub_0206CFE4
sub_0206CFE4: ; 0x0206CFE4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202E7FC
	mov r1, #1
	strb r1, [r0]
	strb r5, [r0, #1]
	strh r4, [r0, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFE4

	thumb_func_start sub_0206D000
sub_0206D000: ; 0x0206D000
	push {r3, lr}
	bl sub_0202E808
	mov r1, #1
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #7]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D000

	thumb_func_start sub_0206D018
sub_0206D018: ; 0x0206D018
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202E808
	add r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0206D038
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
_0206D038:
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D018

	thumb_func_start sub_0206D048
sub_0206D048: ; 0x0206D048
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202E810
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #7]
	add r2, r4, #7
	add r4, #8
	mov r0, #0xb
	add r1, r5, #0
	add r3, r4, #0
	bl sub_0206CED0
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D048

	thumb_func_start sub_0206D088
sub_0206D088: ; 0x0206D088
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0202E81C
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	strb r6, [r4, #1]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #6
	bl sub_020021B0
	add r0, r5, #0
	bl sub_02025FD8
	strb r0, [r4, #3]
	add r0, r5, #0
	bl sub_02025FCC
	strb r0, [r4, #4]
	add r0, r5, #0
	bl sub_02025F30
	strb r0, [r4, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D088

	thumb_func_start sub_0206D0C8
sub_0206D0C8: ; 0x0206D0C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E828
	mov r1, #1
	strb r1, [r0]
	ldr r1, [r0, #4]
	add r2, r1, r4
	ldr r1, _0206D0EC ; =0x0000270F
	str r2, [r0, #4]
	cmp r2, r1
	bls _0206D0E2
	str r1, [r0, #4]
_0206D0E2:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	nop
_0206D0EC: .word 0x0000270F
	thumb_func_end sub_0206D0C8

	thumb_func_start sub_0206D0F0
sub_0206D0F0: ; 0x0206D0F0
	push {r3, lr}
	bl sub_0202E828
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D0F0

	thumb_func_start sub_0206D104
sub_0206D104: ; 0x0206D104
	push {r3, lr}
	bl sub_0202E834
	mov r1, #1
	strb r1, [r0]
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	ldrh r2, [r0, #2]
	ldr r1, _0206D128 ; =0x0000270F
	cmp r2, r1
	bls _0206D11E
	strh r1, [r0, #2]
_0206D11E:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	nop
_0206D128: .word 0x0000270F
	thumb_func_end sub_0206D104

	thumb_func_start sub_0206D12C
sub_0206D12C: ; 0x0206D12C
	push {r3, lr}
	bl sub_0202E834
	mov r1, #0
	strh r1, [r0, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D12C

	thumb_func_start sub_0206D140
sub_0206D140: ; 0x0206D140
	push {r4, lr}
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x24
	bl sub_020C4BB8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0206D140

	thumb_func_start sub_0206D158
sub_0206D158: ; 0x0206D158
	ldr r3, _0206D15C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0206D15C: .word sub_020181C4
	thumb_func_end sub_0206D158

	thumb_func_start sub_0206D160
sub_0206D160: ; 0x0206D160
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x24
	add r7, r3, #0
	bl sub_020C4B4C
	str r6, [r5, #0]
	add r0, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	strh r7, [r5, #4]
	add r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #6
	add r2, #8
	add r3, #9
	bl sub_0206CE38
	add r0, r4, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne _0206D1A4
	bl sub_02022974
_0206D1A4:
	add r2, r5, #0
	add r5, #0xc
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, #0xb
	add r3, r5, #0
	bl sub_0206CED0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206D160

	thumb_func_start sub_0206D1B8
sub_0206D1B8: ; 0x0206D1B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, sp, #0
	add r5, r2, #0
	add r6, r0, #0
	add r3, r1, #0
	add r4, r7, #0
	mov r2, #4
_0206D1C8:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0206D1C8
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	str r5, [sp]
	add r0, sp, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0206D228
	ldrh r1, [r7, #4]
	ldr r0, _0206D22C ; =0x000003E7
	cmp r1, r0
	bls _0206D1E8
	strh r0, [r7, #4]
_0206D1E8:
	cmp r5, #6
	bhi _0206D228
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206D1F8: ; jump table
	.short _0206D228 - _0206D1F8 - 2 ; case 0
	.short _0206D216 - _0206D1F8 - 2 ; case 1
	.short _0206D228 - _0206D1F8 - 2 ; case 2
	.short _0206D228 - _0206D1F8 - 2 ; case 3
	.short _0206D206 - _0206D1F8 - 2 ; case 4
	.short _0206D216 - _0206D1F8 - 2 ; case 5
	.short _0206D216 - _0206D1F8 - 2 ; case 6
_0206D206:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	add r3, r7, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206D216:
	ldrh r0, [r7, #4]
	cmp r0, #2
	bls _0206D228
	mov r1, #2
	add r0, r6, #0
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0206CD70
_0206D228:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206D22C: .word 0x000003E7
	thumb_func_end sub_0206D1B8

	thumb_func_start sub_0206D230
sub_0206D230: ; 0x0206D230
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0206D29E
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #9]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldrh r2, [r4, #6]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldrb r0, [r4, #9]
	add r2, r4, #0
	mov r1, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	add r2, #0xc
	bl sub_0206CD94
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206D29E:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #9]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldrh r2, [r4, #6]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D230

	thumb_func_start sub_0206D2E0
sub_0206D2E0: ; 0x0206D2E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0206D318
	add sp, #8
	mov r0, #2
	pop {r4, r5, r6, pc}
_0206D318:
	mov r0, #3
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D2E0

	thumb_func_start sub_0206D320
sub_0206D320: ; 0x0206D320
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1, #6]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D320

	thumb_func_start sub_0206D340
sub_0206D340: ; 0x0206D340
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, sp, #4
	cmp r5, #0
	beq _0206D360
	add r0, r6, #4
	str r0, [sp]
	add r0, r3, #0
	add r1, r6, #0
	add r2, r6, #2
	add r3, r6, #3
	bl sub_0206CE38
_0206D360:
	strh r4, [r6, #6]
	add r0, r7, #0
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	str r5, [r6, #8]
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D340

	thumb_func_start sub_0206D374
sub_0206D374: ; 0x0206D374
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0206D3B8
	ldrh r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_0206D3B8:
	mov r0, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D374

	thumb_func_start sub_0206D3C0
sub_0206D3C0: ; 0x0206D3C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0206D3D6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206D3D6:
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D3C0

	thumb_func_start sub_0206D3E4
sub_0206D3E4: ; 0x0206D3E4
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202B4A0
	add r6, r0, #0
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x28
	bl sub_020C4BB8
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202B42C
	add r1, r0, #0
	add r0, sp, #0
	mov r2, #0xb
	bl sub_020021D0
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D3E4

	thumb_func_start sub_0206D424
sub_0206D424: ; 0x0206D424
	ldr r3, _0206D42C ; =sub_0206D3E4
	mov r1, #0x14
	bx r3
	nop
_0206D42C: .word sub_0206D3E4
	thumb_func_end sub_0206D424

	thumb_func_start sub_0206D430
sub_0206D430: ; 0x0206D430
	ldr r3, _0206D438 ; =sub_0206D3E4
	mov r1, #4
	bx r3
	nop
_0206D438: .word sub_0206D3E4
	thumb_func_end sub_0206D430

	thumb_func_start sub_0206D43C
sub_0206D43C: ; 0x0206D43C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246490
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0206CD94
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0206CDD0
	mov r0, #6
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D43C

	thumb_func_start sub_0206D474
sub_0206D474: ; 0x0206D474
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246490
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0206CD94
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0206CDD0
	mov r0, #0x20
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D474

	thumb_func_start sub_0206D4AC
sub_0206D4AC: ; 0x0206D4AC
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r1, sp, #0
	strh r0, [r1, #2]
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206D4AC

	thumb_func_start sub_0206D4D4
sub_0206D4D4: ; 0x0206D4D4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B8C8
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0xa
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D4D4

	thumb_func_start sub_0206D504
sub_0206D504: ; 0x0206D504
	push {r3, lr}
	sub sp, #0x28
	add r3, sp, #0
	cmp r2, #0xa
	blo _0206D526
	strh r1, [r3]
	strb r2, [r3, #2]
	ldrb r2, [r3, #2]
	ldr r1, _0206D52C ; =0x000003E7
	cmp r2, r1
	ble _0206D51E
	mov r1, #0xe7
	strb r1, [r3, #2]
_0206D51E:
	mov r1, #2
	mov r2, #7
	bl sub_0206CD7C
_0206D526:
	add sp, #0x28
	pop {r3, pc}
	nop
_0206D52C: .word 0x000003E7
	thumb_func_end sub_0206D504

	thumb_func_start sub_0206D530
sub_0206D530: ; 0x0206D530
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrb r2, [r4, #2]
	add r0, r5, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B77C
	mov r0, #0xb
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D530

	thumb_func_start sub_0206D578
sub_0206D578: ; 0x0206D578
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r1, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r1, sp, #4
	strh r0, [r1, #6]
	add r0, r4, #0
	mov r1, #2
	mov r2, #8
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206D578

	thumb_func_start sub_0206D5B0
sub_0206D5B0: ; 0x0206D5B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B8C8
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0xc
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D5B0

	thumb_func_start sub_0206D5F0
sub_0206D5F0: ; 0x0206D5F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D5F0

	thumb_func_start sub_0206D60C
sub_0206D60C: ; 0x0206D60C
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	add r1, sp, #8
	mov r0, #4
	add r1, #2
	add r2, r4, #0
	bl sub_0206CE08
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xa
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end sub_0206D60C

	thumb_func_start sub_0206D644
sub_0206D644: ; 0x0206D644
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #3]
	mov r1, #2
	add r2, r4, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CD94
	bl sub_0201D2E8
	ldr r1, _0206D6A4 ; =0x00003334
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0206D69C
	bl sub_02022974
_0206D69C:
	add r4, #0x11
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206D6A4: .word 0x00003334
	thumb_func_end sub_0206D644

	thumb_func_start sub_0206D6A8
sub_0206D6A8: ; 0x0206D6A8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D6A8

	thumb_func_start sub_0206D6C8
sub_0206D6C8: ; 0x0206D6C8
	push {r3, lr}
	sub sp, #0x28
	add r3, sp, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	mov r1, #2
	mov r2, #0xd
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206D6C8

	thumb_func_start sub_0206D6E0
sub_0206D6E0: ; 0x0206D6E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BA94
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x18
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D6E0

	thumb_func_start sub_0206D720
sub_0206D720: ; 0x0206D720
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E808
	ldrb r1, [r0, #7]
	cmp r1, #0
	beq _0206D758
	ldrh r1, [r0, #2]
	mov r2, #0xf
	add r3, r4, #0
	strh r1, [r4]
	ldrb r1, [r0, #4]
	strb r1, [r4, #2]
	ldrb r1, [r0, #5]
	strb r1, [r4, #3]
	ldrb r1, [r0, #6]
	strb r1, [r4, #4]
	ldrb r0, [r0, #7]
	mov r1, #2
	strb r0, [r4, #5]
	add r0, r5, #0
	bl sub_0206CD70
_0206D758:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D720

	thumb_func_start sub_0206D75C
sub_0206D75C: ; 0x0206D75C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldrb r2, [r4, #5]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #0x1a
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D75C

	thumb_func_start sub_0206D7A4
sub_0206D7A4: ; 0x0206D7A4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D7A4

	thumb_func_start sub_0206D7C4
sub_0206D7C4: ; 0x0206D7C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r5, _0206D8AC ; =0x00000000
	beq _0206D82E
_0206D7E8:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0206D824
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0206D812
	mov r0, #1
	str r0, [sp, #0x10]
	b _0206D824
_0206D812:
	cmp r0, #1
	bne _0206D81C
	mov r0, #1
	str r0, [sp, #0xc]
	b _0206D824
_0206D81C:
	cmp r0, #2
	bne _0206D824
	mov r0, #1
	str r0, [sp, #8]
_0206D824:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0206D7E8
_0206D82E:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206D8A8
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0206D870
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0206D870
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #0x14
	add r1, r1, #4
	str r1, [sp]
	add r1, sp, #0x14
	add r2, r1, #0
	add r3, r1, #0
	add r2, r2, #2
	add r3, r3, #3
	bl sub_0206CE38
	ldr r0, [sp, #4]
	mov r1, #2
	mov r2, #0x10
	add r3, sp, #0x14
	bl sub_0206CD70
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0206D870:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0206D8A8
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0206D8A8
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #0x14
	add r1, r1, #4
	str r1, [sp]
	add r1, sp, #0x14
	add r2, r1, #0
	add r3, r1, #0
	add r2, r2, #2
	add r3, r3, #3
	bl sub_0206CE38
	ldr r0, [sp, #4]
	mov r1, #2
	mov r2, #0x10
	add r3, sp, #0x14
	bl sub_0206CD70
_0206D8A8:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0206D8AC: .word 0x00000000
	thumb_func_end sub_0206D7C4

	thumb_func_start sub_0206D8B0
sub_0206D8B0: ; 0x0206D8B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0206D8EA
	add sp, #8
	mov r0, #0x1b
	pop {r4, r5, r6, pc}
_0206D8EA:
	mov r0, #0x1c
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D8B0

	thumb_func_start sub_0206D8F0
sub_0206D8F0: ; 0x0206D8F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D8F0

	thumb_func_start sub_0206D90C
sub_0206D90C: ; 0x0206D90C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206D90C

	thumb_func_start sub_0206D910
sub_0206D910: ; 0x0206D910
	mov r0, #0
	bx lr
	thumb_func_end sub_0206D910

	thumb_func_start sub_0206D914
sub_0206D914: ; 0x0206D914
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r5, sp, #0
	strh r3, [r4, #4]
	cmp r2, #5
	beq _0206D946
	cmp r2, #4
	bne _0206D938
	mov r1, #2
	mov r2, #0x12
	add r3, r5, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
_0206D938:
	cmp r2, #0
	bne _0206D946
	mov r1, #2
	mov r2, #0x13
	add r3, r5, #0
	bl sub_0206CD70
_0206D946:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D914

	thumb_func_start sub_0206D94C
sub_0206D94C: ; 0x0206D94C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #0x1e
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D94C

	thumb_func_start sub_0206D98C
sub_0206D98C: ; 0x0206D98C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	mov r0, #0x1f
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D98C

	thumb_func_start sub_0206D9B4
sub_0206D9B4: ; 0x0206D9B4
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	strb r2, [r0, #6]
	bl sub_0201D35C
	mov r1, #3
	bl sub_020E2178
	add r0, sp, #4
	strb r1, [r0, #5]
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x15
	add r3, sp, #4
	bl sub_0202E43C
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D9B4

	thumb_func_start sub_0206D9F4
sub_0206D9F4: ; 0x0206D9F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE64
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	bl sub_0201D2E8
	ldr r1, _0206DA4C ; =0x00005556
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _0206DA42
	bl sub_02022974
_0206DA42:
	add r4, #0x21
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DA4C: .word 0x00005556
	thumb_func_end sub_0206D9F4

	thumb_func_start sub_0206DA50
sub_0206DA50: ; 0x0206DA50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA50

	thumb_func_start sub_0206DA6C
sub_0206DA6C: ; 0x0206DA6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E68
	str r0, [r5, #0]
	add r0, r4, #0
	add r1, r5, #4
	bl sub_02025E80
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA6C

	thumb_func_start sub_0206DA84
sub_0206DA84: ; 0x0206DA84
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	bl sub_02025E68
	ldr r1, [r4, #0]
	cmp r1, r0
	beq _0206DAA0
	bl sub_02022974
_0206DAA0:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #4
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA84

	thumb_func_start sub_0206DAB8
sub_0206DAB8: ; 0x0206DAB8
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0206DA6C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x16
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_0206DAB8

	thumb_func_start sub_0206DAD4
sub_0206DAD4: ; 0x0206DAD4
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0206DA6C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x17
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_0206DAD4

	thumb_func_start sub_0206DAF0
sub_0206DAF0: ; 0x0206DAF0
	push {r3, lr}
	bl sub_0206DA84
	mov r0, #0x24
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DAF0

	thumb_func_start sub_0206DAFC
sub_0206DAFC: ; 0x0206DAFC
	push {r3, lr}
	bl sub_0206DA84
	mov r0, #0x25
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DAFC

	thumb_func_start sub_0206DB08
sub_0206DB08: ; 0x0206DB08
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #0x6b
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D688
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB08

	thumb_func_start sub_0206DB20
sub_0206DB20: ; 0x0206DB20
	push {r3, lr}
	sub sp, #0x28
	mov r2, #1
	add r1, sp, #0
	strb r2, [r1]
	mov r1, #2
	mov r2, #0x19
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206DB20

	thumb_func_start sub_0206DB38
sub_0206DB38: ; 0x0206DB38
	push {r3, lr}
	add r0, r1, #0
	mov r1, #0
	bl sub_0206CDD0
	mov r0, #0x26
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB38

	thumb_func_start sub_0206DB48
sub_0206DB48: ; 0x0206DB48
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #6
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB48

	thumb_func_start sub_0206DB5C
sub_0206DB5C: ; 0x0206DB5C
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strb r1, [r2]
	mov r1, #2
	mov r2, #0x1a
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB5C

	thumb_func_start sub_0206DB74
sub_0206DB74: ; 0x0206DB74
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200C2A8
	mov r0, #0x27
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB74

	thumb_func_start sub_0206DB9C
sub_0206DB9C: ; 0x0206DB9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #6
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB9C

	thumb_func_start sub_0206DBB0
sub_0206DBB0: ; 0x0206DBB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r6, r0, #0
	add r0, sp, #8
	add r5, r1, #0
	add r4, r3, #0
	add r0, #2
	add r1, sp, #4
	add r3, sp, #8
	str r0, [sp]
	add r0, r2, #0
	add r1, #2
	add r2, sp, #8
	add r3, #1
	bl sub_0206CE38
	add r0, sp, #4
	strh r5, [r0]
	strb r4, [r0, #7]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	add r3, sp, #4
	bl sub_0206CD58
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DBB0

	thumb_func_start sub_0206DBE8
sub_0206DBE8: ; 0x0206DBE8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #4
	bl sub_0200B60C
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0206DC36
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206DC36:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206DBE8

	thumb_func_start sub_0206DC3C
sub_0206DC3C: ; 0x0206DC3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4, #2]
	bl sub_02026FE8
	cmp r0, #0
	bne _0206DC5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206DC5C:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206DC3C

	thumb_func_start sub_0206DC6C
sub_0206DC6C: ; 0x0206DC6C
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #8
	str r0, [sp]
	add r0, r2, #0
	add r2, sp, #4
	add r3, sp, #4
	add r4, r1, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	add r3, sp, #4
	str r4, [sp, #0xc]
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DC6C

	thumb_func_start sub_0206DC9C
sub_0206DC9C: ; 0x0206DC9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0xfa
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	mul r0, r1
	mov r1, #0xfe
	bl sub_020E2178
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E2178
	mov r1, #0xa
	add r4, r0, #0
	bl sub_020E2178
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	mov r0, #0
	add r2, r1, #0
	str r0, [sp]
	mov r3, #1
	add r0, r5, #0
	mov r1, #3
	str r3, [sp, #4]
	bl sub_0200B60C
	mov r0, #2
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206DC9C

	thumb_func_start sub_0206DD1C
sub_0206DD1C: ; 0x0206DD1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DD1C

	thumb_func_start sub_0206DD38
sub_0206DD38: ; 0x0206DD38
	push {r3, r4, r5, lr}
	sub sp, #0x28
	mov r4, #0xfa
	lsl r4, r4, #2
	add r4, r1, r4
	add r5, sp, #0
	cmp r2, r4
	blo _0206DD58
	str r1, [r5, #0]
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl sub_0206CD70
_0206DD58:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206DD38

	thumb_func_start sub_0206DD5C
sub_0206DD5C: ; 0x0206DD5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #0xa
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r1, #2
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #4]
	add r0, r5, #0
	mov r1, #3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #3
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DD5C

	thumb_func_start sub_0206DDB8
sub_0206DDB8: ; 0x0206DDB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	bl sub_0206DE4C
	add r4, r0, #0
	cmp r4, #0x19
	bgt _0206DDE2
	bge _0206DDF4
	cmp r4, #0xf
	bgt _0206DDDA
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDDA:
	cmp r4, #0x14
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDE2:
	cmp r4, #0x23
	bgt _0206DDF0
	bge _0206DDF4
	cmp r4, #0x1e
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDF0:
	cmp r4, #0x28
	bne _0206DE46
_0206DDF4:
	add r0, r6, #0
	bl sub_02092464
	cmp r0, #0xff
	bls _0206DE06
	bl sub_02022974
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DE06:
	add r0, sp, #4
	add r0, #0x1b
	add r1, sp, #4
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x1c
	add r2, #0x19
	add r3, #0x1a
	bl sub_0206CE38
	add r2, sp, #4
	mov r0, #0x20
	add r1, r5, #0
	add r2, #0x18
	add r3, sp, #4
	bl sub_0206CED0
	add r0, r6, #0
	bl sub_02092464
	add r1, sp, #4
	strb r0, [r1, #0x16]
	add r0, r1, #0
	strb r4, [r0, #0x17]
	add r0, r7, #0
	mov r1, #3
	mov r2, #5
	add r3, sp, #4
	bl sub_0206CD7C
_0206DE46:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206DDB8

	thumb_func_start sub_0206DE4C
sub_0206DE4C: ; 0x0206DE4C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0206DE7C ; =0x020EFDDC
	add r6, r0, #0
	add r5, r4, #0
_0206DE56:
	lsl r1, r5, #1
	ldrh r1, [r7, r1]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0206DE6C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0206DE6C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x27
	blo _0206DE56
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206DE7C: .word 0x020EFDDC
	thumb_func_end sub_0206DE4C

	thumb_func_start sub_0206DE80
sub_0206DE80: ; 0x0206DE80
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldrb r0, [r4, #0x1a]
	beq _0206DEB4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrb r3, [r4, #0x19]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0206CD94
	b _0206DEC6
_0206DEB4:
	str r0, [sp]
	ldrb r0, [r4, #0x1b]
	mov r1, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #0x1c]
	ldrb r3, [r4, #0x19]
	add r0, r5, #0
	bl sub_0206CE74
_0206DEC6:
	ldrb r2, [r4, #0x16]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B668
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrb r2, [r4, #0x17]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DE80

	thumb_func_start sub_0206DEEC
sub_0206DEEC: ; 0x0206DEEC
	push {r4, lr}
	sub sp, #0x28
	add r4, sp, #0
	strh r1, [r4]
	strh r2, [r4, #2]
	ldrh r2, [r4, #2]
	ldr r1, _0206DF10 ; =0x000003E7
	add r3, sp, #0
	cmp r2, r1
	bls _0206DF02
	strh r1, [r3, #2]
_0206DF02:
	mov r1, #3
	mov r2, #8
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	nop
_0206DF10: .word 0x000003E7
	thumb_func_end sub_0206DEEC

	thumb_func_start sub_0206DF14
sub_0206DF14: ; 0x0206DF14
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BB04
	ldrh r2, [r4, #2]
	ldr r0, _0206DF5C ; =0x000003E7
	cmp r2, r0
	bls _0206DF42
	add r2, r0, #0
_0206DF42:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	mov r0, #7
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DF5C: .word 0x000003E7
	thumb_func_end sub_0206DF14

	thumb_func_start sub_0206DF60
sub_0206DF60: ; 0x0206DF60
	push {r4, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	ldrh r4, [r2]
	ldr r2, _0206DF84 ; =0x000003E7
	add r3, sp, #0
	cmp r4, r2
	bls _0206DF74
	strh r2, [r3]
_0206DF74:
	cmp r1, #1
	bls _0206DF80
	mov r1, #3
	mov r2, #9
	bl sub_0206CD70
_0206DF80:
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0206DF84: .word 0x000003E7
	thumb_func_end sub_0206DF60

	thumb_func_start sub_0206DF88
sub_0206DF88: ; 0x0206DF88
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	ldr r0, _0206DFC4 ; =0x000003E7
	cmp r2, r0
	bls _0206DFAC
	add r2, r0, #0
_0206DFAC:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	mov r3, #3
	str r1, [sp, #4]
	bl sub_0200B60C
	mov r0, #8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DFC4: .word 0x000003E7
	thumb_func_end sub_0206DF88

	thumb_func_start sub_0206DFC8
sub_0206DFC8: ; 0x0206DFC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #0x6b
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D688
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DFC8

	thumb_func_start sub_0206DFE0
sub_0206DFE0: ; 0x0206DFE0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E828
	ldr r2, [r0, #4]
	cmp r2, #0x1e
	blo _0206E012
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	str r2, [r4, #4]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	add r3, r4, #0
	bl sub_0206CD7C
_0206E012:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DFE0

	thumb_func_start sub_0206E018
sub_0206E018: ; 0x0206E018
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #4]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #9
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E018

	thumb_func_start sub_0206E04C
sub_0206E04C: ; 0x0206E04C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E04C

	thumb_func_start sub_0206E060
sub_0206E060: ; 0x0206E060
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E834
	ldrh r1, [r0, #2]
	cmp r1, #0xa
	blo _0206E094
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xb
	add r3, r4, #0
	bl sub_0206CD7C
_0206E094:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E060

	thumb_func_start sub_0206E098
sub_0206E098: ; 0x0206E098
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #0xa
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E098

	thumb_func_start sub_0206E0CC
sub_0206E0CC: ; 0x0206E0CC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E0CC

	thumb_func_start sub_0206E0E0
sub_0206E0E0: ; 0x0206E0E0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7FC
	ldrh r2, [r0]
	add r1, sp, #0
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	mov r2, #0
	strb r2, [r0]
	mov r0, #0x1b
	strh r4, [r1, #4]
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E0E0

	thumb_func_start sub_0206E118
sub_0206E118: ; 0x0206E118
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0206E15A
	add sp, #8
	mov r0, #8
	pop {r4, r5, r6, pc}
_0206E15A:
	mov r0, #9
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E118

	thumb_func_start sub_0206E160
sub_0206E160: ; 0x0206E160
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E160

	thumb_func_start sub_0206E174
sub_0206E174: ; 0x0206E174
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r1, [sp]
	add r1, sp, #4
	add r2, #2
	add r3, #3
	add r6, r0, #0
	bl sub_0206CE38
	add r2, sp, #8
	add r3, sp, #8
	mov r0, #0x20
	add r1, r6, #0
	add r2, #1
	add r3, #2
	bl sub_0206CED0
	add r0, sp, #4
	strh r4, [r0, #0x1c]
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E174

	thumb_func_start sub_0206E1C0
sub_0206E1C0: ; 0x0206E1C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0206E218
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #3]
	mov r1, #2
	add r2, r4, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CD94
	ldrh r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	add sp, #8
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_0206E218:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	mov r0, #0xb
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E1C0

	thumb_func_start sub_0206E248
sub_0206E248: ; 0x0206E248
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E248

	thumb_func_start sub_0206E264
sub_0206E264: ; 0x0206E264
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	bl ov25_02253DD8
	str r0, [sp]
	add r0, sp, #0
	strh r4, [r0, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E264

	thumb_func_start sub_0206E28C
sub_0206E28C: ; 0x0206E28C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B928
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	mov r0, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E28C

	thumb_func_start sub_0206E2BC
sub_0206E2BC: ; 0x0206E2BC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7D8
	ldrh r2, [r0]
	add r1, sp, #0
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r2, [r0, #6]
	strh r2, [r1, #6]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	mov r2, #0
	strb r2, [r0]
	mov r0, #0x1b
	strh r4, [r1, #0xa]
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E2BC

	thumb_func_start sub_0206E300
sub_0206E300: ; 0x0206E300
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #5]
	mov r1, #0
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #8]
	bl sub_020958B8
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BBDC
	ldrb r0, [r4, #7]
	bl sub_02095888
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BBA8
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4, #0xa]
	add r0, r5, #0
	mov r1, #5
	bl sub_0200BE48
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _0206E376
	add sp, #8
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0206E376:
	mov r0, #0x11
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E300

	thumb_func_start sub_0206E37C
sub_0206E37C: ; 0x0206E37C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4, #2]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E37C

	thumb_func_start sub_0206E398
sub_0206E398: ; 0x0206E398
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r4, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029CA8
	bl sub_0202A184
	add r1, sp, #0
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206E398

	thumb_func_start sub_0206E3C8
sub_0206E3C8: ; 0x0206E3C8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0206CEA4
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	mov r0, #0x14
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E3C8

	thumb_func_start sub_0206E3F8
sub_0206E3F8: ; 0x0206E3F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E3F8

	thumb_func_start sub_0206E414
sub_0206E414: ; 0x0206E414
	push {r3, lr}
	sub sp, #0x28
	str r1, [sp]
	mov r1, #1
	mov r2, #0xa
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206E414

	thumb_func_start sub_0206E428
sub_0206E428: ; 0x0206E428
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r0, [r4, #0]
	add r0, #0x14
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E428

	thumb_func_start sub_0206E448
sub_0206E448: ; 0x0206E448
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7F0
	ldrb r2, [r0]
	add r1, sp, #0
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	strh r4, [r1, #2]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E448

	thumb_func_start sub_0206E480
sub_0206E480: ; 0x0206E480
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r0, r7, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	ldrb r4, [r6, #1]
	add r0, r5, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_0206CDD0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0200BF74
	ldrh r2, [r6, #2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	sub r4, #0x19
	cmp r4, #3
	bhi _0206E4D8
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E4C0: ; jump table
	.short _0206E4C8 - _0206E4C0 - 2 ; case 0
	.short _0206E4CC - _0206E4C0 - 2 ; case 1
	.short _0206E4D0 - _0206E4C0 - 2 ; case 2
	.short _0206E4D4 - _0206E4C0 - 2 ; case 3
_0206E4C8:
	mov r0, #0x27
	pop {r3, r4, r5, r6, r7, pc}
_0206E4CC:
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D0:
	mov r0, #0x29
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D4:
	mov r0, #0x2a
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D8:
	mov r0, #0x26
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E480

	thumb_func_start sub_0206E4DC
sub_0206E4DC: ; 0x0206E4DC
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7E4
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_0206E4F4:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E4F4
	add r1, sp, #0
	strh r4, [r1, #0x24]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xd
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E4DC

	thumb_func_start sub_0206E520
sub_0206E520: ; 0x0206E520
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r2, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B6D8
	ldrh r2, [r4, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl sub_0200BE48
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _0206E572
	cmp r0, #1
	beq _0206E58A
	cmp r0, #2
	beq _0206E578
	b _0206E59A
_0206E572:
	add sp, #8
	mov r0, #0x2d
	pop {r4, r5, r6, pc}
_0206E578:
	add r4, #0x20
	ldrb r2, [r4]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BFAC
	add sp, #8
	mov r0, #0x2c
	pop {r4, r5, r6, pc}
_0206E58A:
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B70C
	add sp, #8
	mov r0, #0x2e
	pop {r4, r5, r6, pc}
_0206E59A:
	mov r0, #0x2d
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E520

	thumb_func_start sub_0206E5A0
sub_0206E5A0: ; 0x0206E5A0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E810
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0xf
_0206E5B8:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E5B8
	add r1, sp, #0
	strh r4, [r1, #0x1e]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xe
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E5A0

	thumb_func_start sub_0206E5E4
sub_0206E5E4: ; 0x0206E5E4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrb r0, [r4, #5]
	beq _0206E630
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	ldrb r3, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	add r2, #8
	bl sub_0206CD94
	b _0206E642
_0206E630:
	str r0, [sp]
	ldrb r0, [r4, #6]
	mov r1, #2
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
_0206E642:
	ldrh r2, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	mov r0, #0x2f
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E5E4

	thumb_func_start sub_0206E654
sub_0206E654: ; 0x0206E654
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E654

	thumb_func_start sub_0206E668
sub_0206E668: ; 0x0206E668
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0xf
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E668

	thumb_func_start sub_0206E680
sub_0206E680: ; 0x0206E680
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E680

	thumb_func_start sub_0206E6A8
sub_0206E6A8: ; 0x0206E6A8
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x10
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6A8

	thumb_func_start sub_0206E6C0
sub_0206E6C0: ; 0x0206E6C0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x31
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6C0

	thumb_func_start sub_0206E6E8
sub_0206E6E8: ; 0x0206E6E8
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x11
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6E8

	thumb_func_start sub_0206E700
sub_0206E700: ; 0x0206E700
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x32
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E700

	thumb_func_start sub_0206E728
sub_0206E728: ; 0x0206E728
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x12
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E728

	thumb_func_start sub_0206E740
sub_0206E740: ; 0x0206E740
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x33
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E740

	thumb_func_start sub_0206E768
sub_0206E768: ; 0x0206E768
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E81C
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0xb
_0206E780:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E780
	add r1, sp, #0
	strh r4, [r1, #0x16]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x13
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E768

	thumb_func_start sub_0206E7AC
sub_0206E7AC: ; 0x0206E7AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, r2, #0
	add r6, r1, #0
	str r2, [sp, #8]
	bl ov6_02246498
	add r4, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r1, #0
	bl sub_0206CDD0
	add r0, r7, #0
	add r1, r4, #6
	bl sub_02023D28
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r4, #3]
	mov r1, #1
	add r2, r7, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r6, #0
	bl sub_0200B48C
	add r0, r7, #0
	bl sub_020237BC
	ldrh r2, [r4, #0x16]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BE48
	ldrb r0, [r4, #1]
	cmp r0, #6
	bhi _0206E82E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E80E: ; jump table
	.short _0206E82E - _0206E80E - 2 ; case 0
	.short _0206E81C - _0206E80E - 2 ; case 1
	.short _0206E828 - _0206E80E - 2 ; case 2
	.short _0206E828 - _0206E80E - 2 ; case 3
	.short _0206E820 - _0206E80E - 2 ; case 4
	.short _0206E824 - _0206E80E - 2 ; case 5
	.short _0206E82C - _0206E80E - 2 ; case 6
_0206E81C:
	mov r5, #0x34
	b _0206E82E
_0206E820:
	mov r5, #0x35
	b _0206E82E
_0206E824:
	mov r5, #0x36
	b _0206E82E
_0206E828:
	mov r5, #0x37
	b _0206E82E
_0206E82C:
	mov r5, #0x38
_0206E82E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E7AC

	thumb_func_start sub_0206E834
sub_0206E834: ; 0x0206E834
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E834

	thumb_func_start sub_0206E848
sub_0206E848: ; 0x0206E848
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _0206E86C ; =0x020EFD34
	add r7, r0, #0
	add r4, r6, #0
_0206E852:
	ldrb r1, [r5]
	add r0, r7, #0
	bl sub_0202B4AC
	cmp r0, #0
	beq _0206E860
	add r4, r4, #1
_0206E860:
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #5
	blo _0206E852
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206E86C: .word 0x020EFD34
	thumb_func_end sub_0206E848

	thumb_func_start sub_0206E870
sub_0206E870: ; 0x0206E870
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	bl sub_0202B4A0
	add r7, r0, #0
	bl sub_0206E848
	add r4, r0, #0
	cmp r4, #0
	bgt _0206E88E
	bl sub_02022974
_0206E88E:
	cmp r4, #1
	ble _0206E8A0
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r5, r1, #0
	b _0206E8A2
_0206E8A0:
	mov r5, #0
_0206E8A2:
	ldr r4, _0206E924 ; =0x020EFD34
	mov r6, #0
_0206E8A6:
	ldrb r1, [r4]
	add r0, r7, #0
	bl sub_0202B4AC
	cmp r0, #0
	beq _0206E8C0
	cmp r5, #0
	bne _0206E8BE
	ldr r0, _0206E924 ; =0x020EFD34
	ldrb r0, [r0, r6]
	str r0, [sp, #0xc]
	b _0206E8C8
_0206E8BE:
	sub r5, r5, #1
_0206E8C0:
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #5
	blo _0206E8A6
_0206E8C8:
	cmp r5, #0
	beq _0206E8D0
	bl sub_02022974
_0206E8D0:
	bl sub_0201D2E8
	mov r1, #0xf1
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x11
	blo _0206E8E8
	bl sub_02022974
_0206E8E8:
	cmp r4, #9
	blt _0206E8EE
	add r4, r4, #1
_0206E8EE:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl sub_0200C054
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0xc]
	mov r3, #1
	bl sub_0200C054
	ldr r0, [sp, #8]
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B7EC
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206E924: .word 0x020EFD34
	thumb_func_end sub_0206E870

	thumb_func_start sub_0206E928
sub_0206E928: ; 0x0206E928
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202B4A0
	bl sub_0206E848
	cmp r0, #0
	beq _0206E93C
	mov r0, #1
	pop {r3, pc}
_0206E93C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206E928

	thumb_func_start sub_0206E940
sub_0206E940: ; 0x0206E940
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0201D2E8
	ldr r1, _0206EA04 ; =0x00003334
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0206E95C
	bl sub_02022974
_0206E95C:
	ldr r0, _0206EA08 ; =0x02100BA4
	lsl r1, r4, #1
	ldrh r5, [r0, r1]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203A944
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A138
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B8C8
	cmp r4, #0xb
	bhi _0206E9FC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E98C: ; jump table
	.short _0206E9A4 - _0206E98C - 2 ; case 0
	.short _0206E9DC - _0206E98C - 2 ; case 1
	.short _0206E9E0 - _0206E98C - 2 ; case 2
	.short _0206E9E4 - _0206E98C - 2 ; case 3
	.short _0206E9F4 - _0206E98C - 2 ; case 4
	.short _0206E9E8 - _0206E98C - 2 ; case 5
	.short _0206E9EC - _0206E98C - 2 ; case 6
	.short _0206E9F0 - _0206E98C - 2 ; case 7
	.short _0206E9FC - _0206E98C - 2 ; case 8
	.short _0206E9FC - _0206E98C - 2 ; case 9
	.short _0206E9FC - _0206E98C - 2 ; case 10
	.short _0206E9F8 - _0206E98C - 2 ; case 11
_0206E9A4:
	bl sub_0201D2E8
	lsl r0, r0, #2
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0206E9B4
	bl sub_02022974
_0206E9B4:
	cmp r4, #3
	bhi _0206E9DC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E9C4: ; jump table
	.short _0206E9CC - _0206E9C4 - 2 ; case 0
	.short _0206E9D0 - _0206E9C4 - 2 ; case 1
	.short _0206E9D4 - _0206E9C4 - 2 ; case 2
	.short _0206E9D8 - _0206E9C4 - 2 ; case 3
_0206E9CC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D0:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D4:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D8:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0206E9DC:
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E0:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E4:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E8:
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206E9EC:
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F0:
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F4:
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F8:
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0206E9FC:
	bl sub_02022974
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206EA04: .word 0x00003334
_0206EA08: .word 0x02100BA4
	thumb_func_end sub_0206E940

	thumb_func_start sub_0206EA0C
sub_0206EA0C: ; 0x0206EA0C
	mov r0, #1
	bx lr
	thumb_func_end sub_0206EA0C

	thumb_func_start sub_0206EA10
sub_0206EA10: ; 0x0206EA10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r3, _0206EB78 ; =0x0000019B
	ldr r0, [r0, #0]
	cmp r0, r3
	beq _0206EA36
	add r1, r3, #1
	cmp r0, r1
	blt _0206EA4C
	add r1, r3, #6
	cmp r0, r1
	bgt _0206EA4C
_0206EA36:
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4BC
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0206EA4C:
	ldr r3, _0206EB7C ; =0x000001A2
	cmp r0, r3
	beq _0206EA5E
	add r1, r3, #4
	cmp r0, r1
	blt _0206EA6C
	add r1, r3, #7
	cmp r0, r1
	bgt _0206EA6C
_0206EA5E:
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4E4
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_0206EA6C:
	ldr r3, _0206EB80 ; =0x000001AA
	cmp r0, r3
	beq _0206EA84
	add r1, r3, #4
	cmp r0, r1
	blt _0206EA7E
	add r1, r3, #6
	cmp r0, r1
	ble _0206EA84
_0206EA7E:
	ldr r3, _0206EB84 ; =0x00000101
	cmp r0, r3
	bne _0206EA88
_0206EA84:
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0206EA88:
	add r1, r3, #0
	add r1, #0xb0
	cmp r0, r1
	beq _0206EA9E
	add r1, r3, #0
	add r1, #0xb4
	cmp r0, r1
	blt _0206EAA2
	add r3, #0xb8
	cmp r0, r3
	bgt _0206EAA2
_0206EA9E:
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0206EAA2:
	ldr r3, _0206EB88 ; =0x000001BA
	cmp r0, r3
	beq _0206EAB4
	add r1, r3, #3
	cmp r0, r1
	blt _0206EAB8
	add r1, r3, #7
	cmp r0, r1
	bgt _0206EAB8
_0206EAB4:
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_0206EAB8:
	cmp r0, #3
	beq _0206EAC4
	cmp r0, #8
	blt _0206EAC8
	cmp r0, #0x20
	bgt _0206EAC8
_0206EAC4:
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0206EAC8:
	cmp r0, #0x21
	beq _0206EADA
	cmp r0, #0x26
	blt _0206EAD4
	cmp r0, #0x2c
	ble _0206EADA
_0206EAD4:
	ldr r1, _0206EB8C ; =0x000001EB
	cmp r0, r1
	bne _0206EADE
_0206EADA:
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_0206EADE:
	cmp r0, #0x2d
	beq _0206EAEA
	cmp r0, #0x32
	blt _0206EAEE
	cmp r0, #0x40
	bgt _0206EAEE
_0206EAEA:
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_0206EAEE:
	cmp r0, #0x41
	beq _0206EAFA
	cmp r0, #0x47
	blt _0206EAFE
	cmp r0, #0x55
	bgt _0206EAFE
_0206EAFA:
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_0206EAFE:
	cmp r0, #0x56
	beq _0206EB0A
	cmp r0, #0x67
	blt _0206EB0E
	cmp r0, #0x77
	bgt _0206EB0E
_0206EB0A:
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0206EB0E:
	cmp r0, #0x78
	beq _0206EB1A
	cmp r0, #0x7d
	blt _0206EB1E
	cmp r0, #0x83
	bgt _0206EB1E
_0206EB1A:
	mov r0, #0x17
	pop {r3, r4, r5, pc}
_0206EB1E:
	cmp r0, #0x84
	beq _0206EB36
	cmp r0, #0x88
	blt _0206EB2A
	cmp r0, #0x95
	ble _0206EB36
_0206EB2A:
	ldr r1, _0206EB90 ; =0x00000131
	cmp r0, r1
	blt _0206EB3A
	add r1, r1, #5
	cmp r0, r1
	bgt _0206EB3A
_0206EB36:
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0206EB3A:
	cmp r0, #0x96
	beq _0206EB4E
	cmp r0, #0x9d
	blt _0206EB46
	cmp r0, #0xa4
	ble _0206EB4E
_0206EB46:
	mov r1, #0x81
	lsl r1, r1, #2
	cmp r0, r1
	bne _0206EB52
_0206EB4E:
	mov r0, #0x19
	pop {r3, r4, r5, pc}
_0206EB52:
	cmp r0, #0xa5
	beq _0206EB5E
	cmp r0, #0xaa
	blt _0206EB62
	cmp r0, #0xab
	bgt _0206EB62
_0206EB5E:
	mov r0, #0x1a
	pop {r3, r4, r5, pc}
_0206EB62:
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4BC
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206EB78: .word 0x0000019B
_0206EB7C: .word 0x000001A2
_0206EB80: .word 0x000001AA
_0206EB84: .word 0x00000101
_0206EB88: .word 0x000001BA
_0206EB8C: .word 0x000001EB
_0206EB90: .word 0x00000131
	thumb_func_end sub_0206EA10

	thumb_func_start sub_0206EB94
sub_0206EB94: ; 0x0206EB94
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202D834
	mov r1, #2
	bl sub_0202D814
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ov6_0224322C
	add r0, sp, #0
	ldrh r0, [r0, #2]
	bl sub_0203A138
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B8C8
	add r2, sp, #0
	ldrh r2, [r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0206CEA4
	mov r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0206EB94

	thumb_func_start sub_0206EBD4
sub_0206EBD4: ; 0x0206EBD4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0202D898
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206EBD4

	thumb_func_start sub_0206EBE4
sub_0206EBE4: ; 0x0206EBE4
	mov r0, #0
	bx lr
	thumb_func_end sub_0206EBE4

	thumb_func_start sub_0206EBE8
sub_0206EBE8: ; 0x0206EBE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r4, _0206EC84 ; =0x020EFD3C
	add r7, r0, #0
	mov r6, #0
	add r5, sp, #0
_0206EBFA:
	ldrh r2, [r4]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF3C
	strb r0, [r5]
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #1
	cmp r6, #0x12
	blo _0206EBFA
	mov r3, #0
	add r2, sp, #0x10
	ldr r0, _0206EC88 ; =0x020F0074
	add r4, r3, #0
	add r1, r3, #0
	add r2, #2
	add r6, sp, #0
_0206EC1E:
	lsl r5, r1, #1
	ldrh r5, [r0, r5]
	ldrb r5, [r6, r5]
	cmp r5, #0
	beq _0206EC2E
	strb r3, [r2]
	add r2, r2, #1
	add r4, r4, #1
_0206EC2E:
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, #0x76
	blo _0206EC1E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bne _0206EC40
	bl sub_02022974
_0206EC40:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0206EC4C
	mov r5, #0
	b _0206EC7A
_0206EC4C:
	bl sub_0201D2E8
	add r5, r0, #0
	lsl r1, r4, #0x10
	ldr r0, _0206EC8C ; =0x0000FFFF
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	blo _0206EC7A
	bl sub_02022974
_0206EC7A:
	add r0, sp, #0x10
	add r0, #2
	ldrb r0, [r0, r5]
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206EC84: .word 0x020EFD3C
_0206EC88: .word 0x020F0074
_0206EC8C: .word 0x0000FFFF
	thumb_func_end sub_0206EBE8

	thumb_func_start sub_0206EC90
sub_0206EC90: ; 0x0206EC90
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206EBE8
	add r4, r0, #0
	lsl r0, r4, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0206ECF8 ; =0x020F0074
	ldrh r0, [r0, r1]
	bl sub_0203A138
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B8C8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027D04
	cmp r0, #5
	bhi _0206ECF2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206ECD6: ; jump table
	.short _0206ECF2 - _0206ECD6 - 2 ; case 0
	.short _0206ECF2 - _0206ECD6 - 2 ; case 1
	.short _0206ECEE - _0206ECD6 - 2 ; case 2
	.short _0206ECEA - _0206ECD6 - 2 ; case 3
	.short _0206ECE6 - _0206ECD6 - 2 ; case 4
	.short _0206ECE2 - _0206ECD6 - 2 ; case 5
_0206ECE2:
	mov r0, #0x24
	pop {r4, r5, r6, pc}
_0206ECE6:
	mov r0, #0x25
	pop {r4, r5, r6, pc}
_0206ECEA:
	mov r0, #0x26
	pop {r4, r5, r6, pc}
_0206ECEE:
	mov r0, #0x27
	pop {r4, r5, r6, pc}
_0206ECF2:
	mov r0, #0x28
	pop {r4, r5, r6, pc}
	nop
_0206ECF8: .word 0x020F0074
	thumb_func_end sub_0206EC90

	thumb_func_start sub_0206ECFC
sub_0206ECFC: ; 0x0206ECFC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206ECFC

	thumb_func_start sub_0206ED10
sub_0206ED10: ; 0x0206ED10
	mov r0, #0
	bx lr
	thumb_func_end sub_0206ED10

	thumb_func_start sub_0206ED14
sub_0206ED14: ; 0x0206ED14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r6, #0xff
	bl sub_0201D2E8
	ldr r1, _0206EDA8 ; =0x0000FFFF
	bl sub_020E1F6C
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02075BFC
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B6D8
	cmp r5, #0
	beq _0206ED4C
	cmp r5, #6
	beq _0206ED4C
	cmp r5, #0xc
	beq _0206ED4C
	cmp r5, #0x12
	beq _0206ED4C
	cmp r5, #0x18
	bne _0206ED50
_0206ED4C:
	mov r0, #0x2e
	pop {r3, r4, r5, r6, r7, pc}
_0206ED50:
	mov r0, #1
	tst r0, r4
	bne _0206ED7C
	mov r5, #0
_0206ED58:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02077648
	cmp r0, #1
	bne _0206ED68
	add r6, r5, #0
	b _0206ED6E
_0206ED68:
	add r5, r5, #1
	cmp r5, #5
	blo _0206ED58
_0206ED6E:
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_0200B890
	mov r0, #0x2d
	pop {r3, r4, r5, r6, r7, pc}
_0206ED7C:
	mov r4, #0
_0206ED7E:
	add r1, r4, #1
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02075C60
	cmp r0, #0
	ble _0206ED92
	add r6, r4, #0
	b _0206ED98
_0206ED92:
	add r4, r4, #1
	cmp r4, #5
	blo _0206ED7E
_0206ED98:
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #1
	bl sub_0200B824
	mov r0, #0x2c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206EDA8: .word 0x0000FFFF
	thumb_func_end sub_0206ED14

	thumb_func_start sub_0206EDAC
sub_0206EDAC: ; 0x0206EDAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	bl sub_0201D2E8
	mov r1, #0x1d
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0206C3C8
	mov r1, #4
	add r2, r4, #0
	bl sub_02071D10
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r4, #0
_0206EE0C:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206EE64
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D924
	add r4, r0, #0
	mov r1, #4
	bl sub_0202D93C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_0202D93C
	add r1, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02075DAC
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02025FD8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02025FCC
	str r4, [sp]
	lsl r2, r5, #0x10
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0206CE74
	b _0206EE6E
_0206EE64:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0206EE0C
_0206EE6E:
	mov r0, #0x31
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206EDAC

	thumb_func_start sub_0206EE74
sub_0206EE74: ; 0x0206EE74
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	mov r4, #0
_0206EE80:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206EE92
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206EE92:
	add r4, r4, #1
	cmp r4, #6
	blt _0206EE80
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206EE74

	thumb_func_start sub_0206EE9C
sub_0206EE9C: ; 0x0206EE9C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_0206EEA4:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #1
	bne _0206EEB2
	add r5, r5, #1
_0206EEB2:
	add r4, r4, #1
	cmp r4, #0xb
	blt _0206EEA4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206EE9C

	thumb_func_start sub_0206EEBC
sub_0206EEBC: ; 0x0206EEBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r7, r1, #0
	bl sub_0202A750
	add r6, r0, #0
	bl sub_0206EE9C
	add r4, r0, #0
	cmp r4, #1
	ble _0206EEE2
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r5, r1, #0
	b _0206EEE4
_0206EEE2:
	mov r5, #0
_0206EEE4:
	mov r4, #0
_0206EEE6:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #1
	bne _0206EEFC
	cmp r5, #0
	bne _0206EEFA
	str r4, [sp, #8]
	b _0206EF02
_0206EEFA:
	sub r5, r5, #1
_0206EEFC:
	add r4, r4, #1
	cmp r4, #0xb
	blt _0206EEE6
_0206EF02:
	cmp r4, #0xb
	blt _0206EF0A
	bl sub_02022974
_0206EF0A:
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl sub_02029CA8
	add r5, r0, #0
	mov r0, #8
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202A1C0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A1A0
	add r0, r5, #0
	bl sub_0202A200
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0202A1F4
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206EEBC

	thumb_func_start sub_0206EF64
sub_0206EF64: ; 0x0206EF64
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_0206EE9C
	cmp r0, #0
	beq _0206EF78
	mov r0, #1
	pop {r3, pc}
_0206EF78:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206EF64

	thumb_func_start sub_0206EF7C
sub_0206EF7C: ; 0x0206EF7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_020507E4
	bl sub_0206A954
	cmp r0, #1
	bne _0206EFA6
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFA6:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xb
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206EFC8
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFC8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206EFF0
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFF0:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x12
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206F016
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0206F016:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206EF7C

	thumb_func_start sub_0206F01C
sub_0206F01C: ; 0x0206F01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	bl sub_02027560
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #0x7b
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r0, r1, #1
	lsl r0, r0, #0x10
	ldr r7, _0206F0D4 ; =0x000001ED
	lsr r4, r0, #0x10
	mov r5, #1
_0206F040:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _0206F050
	str r4, [sp, #0xc]
	b _0206F068
_0206F050:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	bne _0206F05C
	mov r4, #1
_0206F05C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0206F0D4 ; =0x000001ED
	cmp r5, r0
	bls _0206F040
_0206F068:
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl sub_0206F0D8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201D2E8
	mov r1, #3
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F0A2
	add sp, #0x10
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206F0A2:
	cmp r0, #1
	bne _0206F0CC
	bl sub_0201D2E8
	mov r1, #0x22
	bl sub_020E1F6C
	add r1, #0x19
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #8]
	mov r3, #2
	str r1, [sp, #4]
	bl sub_0200B60C
	add sp, #0x10
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_0206F0CC:
	mov r0, #0xa
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F0D4: .word 0x000001ED
	thumb_func_end sub_0206F01C

	thumb_func_start sub_0206F0D8
sub_0206F0D8: ; 0x0206F0D8
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206F0D8

	thumb_func_start sub_0206F100
sub_0206F100: ; 0x0206F100
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	cmp r0, #1
	bne _0206F114
	mov r0, #1
	pop {r3, pc}
_0206F114:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206F100

	thumb_func_start sub_0206F118
sub_0206F118: ; 0x0206F118
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #3
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F12E
	mov r0, #0xb
	pop {r3, pc}
_0206F12E:
	cmp r0, #1
	bne _0206F136
	mov r0, #0xc
	pop {r3, pc}
_0206F136:
	mov r0, #0xd
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F118

	thumb_func_start sub_0206F13C
sub_0206F13C: ; 0x0206F13C
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #3
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F152
	mov r0, #0xe
	pop {r3, pc}
_0206F152:
	cmp r0, #1
	bne _0206F15A
	mov r0, #0xf
	pop {r3, pc}
_0206F15A:
	mov r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F13C

	thumb_func_start sub_0206F160
sub_0206F160: ; 0x0206F160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	str r1, [sp, #8]
	bl sub_02025E38
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205E1B4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02025FD8
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02025FCC
	str r4, [sp]
	str r0, [sp, #4]
	lsl r2, r5, #0x10
	lsl r3, r7, #0x18
	ldr r0, [sp, #8]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0206CE74
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	add r2, r1, #0
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_0200BFAC
	bl sub_0201D2E8
	ldr r1, _0206F254 ; =0x000001EB
	bl sub_020E1F6C
	add r0, r1, #1
	lsl r0, r0, #0x10
	ldr r7, _0206F258 ; =0x000001ED
	lsr r4, r0, #0x10
	mov r5, #1
_0206F1F0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _0206F220
	add r0, r4, #0
	mov r1, #4
	bl sub_0206F0D8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	add r2, r4, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	b _0206F238
_0206F220:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _0206F22C
	mov r4, #1
_0206F22C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0206F258 ; =0x000001ED
	cmp r5, r0
	bls _0206F1F0
_0206F238:
	bl sub_0201D2E8
	ldr r1, _0206F25C ; =0x000001D3
	bl sub_020E1F6C
	add r2, r1, #0
	ldr r0, [sp, #8]
	mov r1, #3
	sub r2, r2, #1
	bl sub_0200B630
	mov r0, #0x11
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206F254: .word 0x000001EB
_0206F258: .word 0x000001ED
_0206F25C: .word 0x000001D3
	thumb_func_end sub_0206F160

	thumb_func_start sub_0206F260
sub_0206F260: ; 0x0206F260
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	cmp r0, #1
	bne _0206F274
	mov r0, #1
	pop {r3, pc}
_0206F274:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206F260

	thumb_func_start sub_0206F278
sub_0206F278: ; 0x0206F278
	mov r0, #0x12
	bx lr
	thumb_func_end sub_0206F278

	thumb_func_start sub_0206F27C
sub_0206F27C: ; 0x0206F27C
	mov r0, #0x13
	bx lr
	thumb_func_end sub_0206F27C

	thumb_func_start sub_0206F280
sub_0206F280: ; 0x0206F280
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	mov r1, #0
	bl sub_02025F34
	cmp r0, #1
	bne _0206F296
	mov r0, #1
	pop {r3, pc}
_0206F296:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F280

	thumb_func_start sub_0206F29C
sub_0206F29C: ; 0x0206F29C
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #9
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F2B2
	mov r0, #0x14
	pop {r3, pc}
_0206F2B2:
	cmp r0, #1
	bne _0206F2BA
	mov r0, #0x15
	pop {r3, pc}
_0206F2BA:
	cmp r0, #2
	bne _0206F2C2
	mov r0, #0x16
	pop {r3, pc}
_0206F2C2:
	cmp r0, #3
	bne _0206F2CA
	mov r0, #0x17
	pop {r3, pc}
_0206F2CA:
	cmp r0, #4
	bne _0206F2D2
	mov r0, #0x18
	pop {r3, pc}
_0206F2D2:
	cmp r0, #5
	bne _0206F2DA
	mov r0, #0x19
	pop {r3, pc}
_0206F2DA:
	cmp r0, #6
	bne _0206F2E2
	mov r0, #0x1a
	pop {r3, pc}
_0206F2E2:
	cmp r0, #7
	bne _0206F2EA
	mov r0, #0x1b
	pop {r3, pc}
_0206F2EA:
	mov r0, #0x1c
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F29C

	thumb_func_start sub_0206F2F0
sub_0206F2F0: ; 0x0206F2F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202440C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206DFE0
	add r0, r5, #0
	bl sub_0206E060
	add r0, r4, #0
	bl sub_0206D0F0
	add r0, r4, #0
	bl sub_0206D12C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206F2F0

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
	bl sub_020C4CF4
	mov r0, #0x50
	str r0, [r4, #0]
	ldr r0, [sp]
	mov r1, #3
	bl sub_020E1F6C
	strb r1, [r4, #0x16]
	ldr r0, [sp]
	mov r1, #3
	bl sub_020E1F6C
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4DB0
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

	thumb_func_start sub_02070428
sub_02070428: ; 0x02070428
	add r0, #0xb8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02070428

	thumb_func_start sub_02070430
sub_02070430: ; 0x02070430
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020705DC
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AF1C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AEAC
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A8E8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #0
	bl sub_0202D9EC
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	bne _02070492
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	ldr r1, [r5, #0x1c]
	add r4, r0, #0
	ldr r1, [r1, #0]
	bl sub_0206C404
	add r0, r4, #0
	bl sub_0206C37C
_02070492:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02070430

	thumb_func_start sub_02070494
sub_02070494: ; 0x02070494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	cmp r1, #1
	beq _0207056A
	bl sub_020705DC
	cmp r0, #0
	bne _020704B0
	add r0, r5, #0
	bl sub_02070610
_020704B0:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AF1C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE9C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AEAC
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A8E8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #0
	bl sub_0202D9EC
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	bl sub_0206C404
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A274
	cmp r0, #0
	bne _0207051C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206AECC
	add r0, r4, #0
	bl sub_0206AEFC
_0207051C:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02070540
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A1F0
	cmp r0, #0
	bne _02070540
	mov r0, #0
	str r0, [r4, #4]
	b _0207054A
_02070540:
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _0207054A
	mov r0, #0
	str r0, [r4, #4]
_0207054A:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _0207056A
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	ldr r2, [r5, #0x1c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_020556E8
_0207056A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02070494

	thumb_func_start sub_0207056C
sub_0207056C: ; 0x0207056C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207056C

	thumb_func_start sub_02070588
sub_02070588: ; 0x02070588
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070588

	thumb_func_start sub_020705A4
sub_020705A4: ; 0x020705A4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020705A4

	thumb_func_start sub_020705B4
sub_020705B4: ; 0x020705B4
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206A974
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B024
	pop {r4, pc}
	thumb_func_end sub_020705B4

	thumb_func_start sub_020705CC
sub_020705CC: ; 0x020705CC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020705CC

	thumb_func_start sub_020705DC
sub_020705DC: ; 0x020705DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A87C
	add r1, r0, #0
	beq _0207060A
	add r0, r4, #0
	bl sub_0203A920
	cmp r0, #0
	bne _0207060A
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x20
	bl sub_0202C704
	mov r0, #1
	pop {r4, pc}
_0207060A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020705DC

	thumb_func_start sub_02070610
sub_02070610: ; 0x02070610
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A728
	ldr r1, [r5, #0x1c]
	ldr r6, [r0, #0]
	ldr r4, [r1, #0]
	cmp r6, r4
	beq _02070646
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	mov r1, #0x20
	add r5, #0x9c
	str r1, [sp]
	ldr r1, [r5, #0]
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202C5C4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02070646:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02070610

	thumb_func_start sub_0207064C
sub_0207064C: ; 0x0207064C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x18
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_02070660:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02070660
	str r5, [r0, #0]
	str r4, [r0, #0x10]
	strh r6, [r0, #8]
	add r2, sp, #0
	mov r1, #0x10
	ldrsh r1, [r2, r1]
	strh r1, [r0, #0xa]
	mov r1, #0x14
	ldrsh r1, [r2, r1]
	strh r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207064C

	thumb_func_start sub_02070680
sub_02070680: ; 0x02070680
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0207069E
	cmp r0, #1
	beq _020706BC
	b _02070706
_0207069E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x10]
	mov r1, #1
	bl ov6_02243F88
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02070706
_020706BC:
	ldr r0, [r4, #0x14]
	bl ov6_02243FBC
	cmp r0, #0
	beq _02070706
	ldr r0, [r4, #0x14]
	bl ov6_02243FC8
	mov r1, #0xa
	mov r2, #0xc
	ldrh r0, [r4, #8]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	bl sub_0203A8A0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bne _020706E4
	bl sub_02022974
_020706E4:
	add r0, r6, #0
	add r1, sp, #8
	bl sub_0203A7F0
	ldr r0, [sp, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	sub r2, r2, #2
	bl sub_02053AFC
	add r0, r4, #0
	bl sub_020181C4
_02070706:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02070680

	thumb_func_start sub_0207070C
sub_0207070C: ; 0x0207070C
	cmp r0, #0
	bne _02070718
	ldr r0, _02070720 ; =0x020F0368
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	bx lr
_02070718:
	ldr r0, _02070724 ; =0x020F036C
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02070720: .word 0x020F0368
_02070724: .word 0x020F036C
	thumb_func_end sub_0207070C

	thumb_func_start sub_02070728
sub_02070728: ; 0x02070728
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	str r5, [r4, #4]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	mov r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	bl sub_0205F158
	cmp r0, #1
	bne _02070752
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02070838
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02070752:
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0203C9D4
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02070792
	bl sub_02062920
	cmp r0, #0x54
	beq _02070776
	cmp r0, #0x55
	beq _02070780
	cmp r0, #0x56
	beq _0207078A
	b _02070792
_02070776:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	orr r0, r1
	strh r0, [r4, #0xc]
	b _02070792
_02070780:
	ldrh r1, [r4, #0xc]
	mov r0, #0x20
	orr r0, r1
	strh r0, [r4, #0xc]
	b _02070792
_0207078A:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #0xc]
_02070792:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp, #4]
	str r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020615AC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	add r2, r6, #0
	bl ov5_021E0118
	cmp r0, #0
	beq _020707DA
	ldrh r1, [r4, #0xc]
	mov r0, #4
	orr r0, r1
	strh r0, [r4, #0xc]
_020707DA:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	add r0, r6, #0
	bl ov5_021E0760
	cmp r0, #0
	beq _020707F4
	ldrh r1, [r4, #0xc]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r4, #0xc]
_020707F4:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DDB4
	cmp r0, #0
	beq _02070808
	ldrh r1, [r4, #0xc]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r4, #0xc]
_02070808:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	cmp r0, #0xe
	beq _0207081E
	cmp r0, #0x10
	beq _0207082A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207081E:
	ldrh r1, [r4, #0xc]
	mov r0, #0x10
	add sp, #0xc
	orr r0, r1
	strh r0, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_0207082A:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r4, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02070728

	thumb_func_start sub_02070838
sub_02070838: ; 0x02070838
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EAA0
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_020616F0
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_02061760
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	add r2, r6, #0
	bl ov5_021E0118
	cmp r0, #1
	bne _0207086A
	ldrh r1, [r4, #0xc]
	mov r0, #4
	orr r0, r1
	strh r0, [r4, #0xc]
_0207086A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02070838

	thumb_func_start sub_0207086C
sub_0207086C: ; 0x0207086C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	ldr r1, _0207088C ; =0x19740205
	str r1, [r0, #0]
	ldr r1, [r4, #8]
	str r1, [r0, #4]
	ldr r2, [r5, #0]
	ldr r1, [r5, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207088C: .word 0x19740205
	thumb_func_end sub_0207086C

	thumb_func_start sub_02070890
sub_02070890: ; 0x02070890
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020708A8 ; =0x19740205
	cmp r1, r0
	beq _020708A0
	bl sub_02022974
_020708A0:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_020708A8: .word 0x19740205
	thumb_func_end sub_02070890

	thumb_func_start sub_020708AC
sub_020708AC: ; 0x020708AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _020708BE
	mov r0, #1
	pop {r4, pc}
_020708BE:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #1
	bl sub_02025F34
	cmp r0, #0
	bne _020708D2
	mov r0, #2
	pop {r4, pc}
_020708D2:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	tst r1, r0
	beq _020708DC
	mov r0, #0
_020708DC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020708AC

	thumb_func_start sub_020708E0
sub_020708E0: ; 0x020708E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070910 ; =sub_02070914
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070910: .word sub_02070914
	thumb_func_end sub_020708E0

	thumb_func_start sub_02070914
sub_02070914: ; 0x02070914
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _0207094C ; =0x00002718
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0207094C: .word 0x00002718
	thumb_func_end sub_02070914

	thumb_func_start sub_02070950
sub_02070950: ; 0x02070950
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070962
	mov r0, #1
	pop {r4, pc}
_02070962:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #2
	bl sub_02025F34
	cmp r0, #0
	bne _02070976
	mov r0, #2
	pop {r4, pc}
_02070976:
	ldr r0, [r4, #0]
	bl sub_0203A1D4
	cmp r0, #0
	bne _02070984
	mov r0, #1
	pop {r4, pc}
_02070984:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070998
	mov r0, #3
	pop {r4, pc}
_02070998:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _020709B8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020709BC
_020709B8:
	mov r0, #1
	b _020709BE
_020709BC:
	mov r0, #0
_020709BE:
	cmp r0, #1
	bne _020709C6
	mov r0, #1
	pop {r4, pc}
_020709C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070950

	thumb_func_start sub_020709CC
sub_020709CC: ; 0x020709CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrh r1, [r5, #4]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	sub r1, #0xbc
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r6, #0
	mov r2, #1
	bl sub_0206B70C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r6, #0
	bl sub_0203D884
	ldr r1, _02070A20 ; =sub_0203C434
	add r0, r4, #0
	bl sub_0203B674
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070A20: .word sub_0203C434
	thumb_func_end sub_020709CC

	thumb_func_start sub_02070A24
sub_02070A24: ; 0x02070A24
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070A36
	mov r0, #1
	pop {r4, pc}
_02070A36:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #3
	bl sub_02025F34
	cmp r0, #0
	bne _02070A4A
	mov r0, #2
	pop {r4, pc}
_02070A4A:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #2
	bne _02070A5A
	mov r0, #4
	pop {r4, pc}
_02070A5A:
	ldrh r1, [r4, #0xc]
	mov r0, #4
	tst r0, r1
	bne _02070A66
	mov r0, #1
	pop {r4, pc}
_02070A66:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070A7A
	mov r0, #3
	pop {r4, pc}
_02070A7A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070A24

	thumb_func_start sub_02070A80
sub_02070A80: ; 0x02070A80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070AB0 ; =sub_02070AB4
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070AB0: .word sub_02070AB4
	thumb_func_end sub_02070A80

	thumb_func_start sub_02070AB4
sub_02070AB4: ; 0x02070AB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070AEC ; =0x0000271C
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070AEC: .word 0x0000271C
	thumb_func_end sub_02070AB4

	thumb_func_start sub_02070AF0
sub_02070AF0: ; 0x02070AF0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070B02
	mov r0, #1
	pop {r4, pc}
_02070B02:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #5
	bl sub_02025F34
	cmp r0, #0
	bne _02070B16
	mov r0, #2
	pop {r4, pc}
_02070B16:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	tst r0, r1
	beq _02070B22
	mov r0, #0
	pop {r4, pc}
_02070B22:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070AF0

	thumb_func_start sub_02070B28
sub_02070B28: ; 0x02070B28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070B58 ; =sub_02070B5C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070B58: .word sub_02070B5C
	thumb_func_end sub_02070B28

	thumb_func_start sub_02070B5C
sub_02070B5C: ; 0x02070B5C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070B94 ; =0x0000271A
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070B94: .word 0x0000271A
	thumb_func_end sub_02070B5C

	thumb_func_start sub_02070B98
sub_02070B98: ; 0x02070B98
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070BAA
	mov r0, #1
	pop {r4, pc}
_02070BAA:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #4
	bl sub_02025F34
	cmp r0, #0
	bne _02070BBE
	mov r0, #2
	pop {r4, pc}
_02070BBE:
	ldrh r1, [r4, #0xc]
	mov r0, #0x10
	tst r0, r1
	beq _02070BCA
	mov r0, #0
	pop {r4, pc}
_02070BCA:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070B98

	thumb_func_start sub_02070BD0
sub_02070BD0: ; 0x02070BD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070C00 ; =sub_02070C04
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070C00: .word sub_02070C04
	thumb_func_end sub_02070BD0

	thumb_func_start sub_02070C04
sub_02070C04: ; 0x02070C04
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070C3C ; =0x0000271E
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070C3C: .word 0x0000271E
	thumb_func_end sub_02070C04

	thumb_func_start sub_02070C40
sub_02070C40: ; 0x02070C40
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070C52
	mov r0, #1
	pop {r4, pc}
_02070C52:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #0
	bl sub_02025F34
	cmp r0, #0
	bne _02070C66
	mov r0, #2
	pop {r4, pc}
_02070C66:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #2
	bne _02070C76
	mov r0, #1
	pop {r4, pc}
_02070C76:
	ldrh r1, [r4, #0xc]
	mov r0, #0x20
	tst r0, r1
	beq _02070C82
	mov r0, #0
	pop {r4, pc}
_02070C82:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070C40

	thumb_func_start sub_02070C88
sub_02070C88: ; 0x02070C88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070CB8 ; =sub_02070CBC
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070CB8: .word sub_02070CBC
	thumb_func_end sub_02070C88

	thumb_func_start sub_02070CBC
sub_02070CBC: ; 0x02070CBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070CF4 ; =0x00002719
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070CF4: .word 0x00002719
	thumb_func_end sub_02070CBC

	thumb_func_start sub_02070CF8
sub_02070CF8: ; 0x02070CF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070D0A
	mov r0, #1
	pop {r4, pc}
_02070D0A:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #7
	bl sub_02025F34
	cmp r0, #0
	bne _02070D1E
	mov r0, #2
	pop {r4, pc}
_02070D1E:
	ldrh r1, [r4, #0xc]
	mov r0, #0x40
	tst r0, r1
	beq _02070D2A
	mov r0, #0
	pop {r4, pc}
_02070D2A:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070CF8

	thumb_func_start sub_02070D30
sub_02070D30: ; 0x02070D30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070D60 ; =sub_02070D64
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070D60: .word sub_02070D64
	thumb_func_end sub_02070D30

	thumb_func_start sub_02070D64
sub_02070D64: ; 0x02070D64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070D9C ; =0x0000271D
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070D9C: .word 0x0000271D
	thumb_func_end sub_02070D64

	thumb_func_start sub_02070DA0
sub_02070DA0: ; 0x02070DA0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070DB2
	mov r0, #1
	pop {r4, pc}
_02070DB2:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #6
	bl sub_02025F34
	cmp r0, #0
	bne _02070DC6
	mov r0, #2
	pop {r4, pc}
_02070DC6:
	ldrh r1, [r4, #0xc]
	mov r0, #0x80
	tst r0, r1
	bne _02070DD2
	mov r0, #1
	pop {r4, pc}
_02070DD2:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070DE6
	mov r0, #3
	pop {r4, pc}
_02070DE6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070DA0

	thumb_func_start sub_02070DEC
sub_02070DEC: ; 0x02070DEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070E1C ; =sub_02070E20
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070E1C: .word sub_02070E20
	thumb_func_end sub_02070DEC

	thumb_func_start sub_02070E20
sub_02070E20: ; 0x02070E20
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070E58 ; =0x0000271B
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070E58: .word 0x0000271B
	thumb_func_end sub_02070E20

	thumb_func_start sub_02070E5C
sub_02070E5C: ; 0x02070E5C
	ldr r1, [r0, #4]
	ldr r1, [r1, #0x70]
	sub r1, r1, #2
	cmp r1, #1
	bhi _02070E6A
	mov r0, #1
	bx lr
_02070E6A:
	ldrh r1, [r0, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _02070E78
	mov r0, #0
	bx lr
_02070E78:
	mov r0, #1
	bx lr
	thumb_func_end sub_02070E5C

	thumb_func_start sub_02070E7C
sub_02070E7C: ; 0x02070E7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070EAC ; =sub_02070EB0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070EAC: .word sub_02070EB0
	thumb_func_end sub_02070E7C

	thumb_func_start sub_02070EB0
sub_02070EB0: ; 0x02070EB0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070EE8 ; =0x0000271F
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070EE8: .word 0x0000271F
	thumb_func_end sub_02070EB0

	thumb_func_start sub_02070EEC
sub_02070EEC: ; 0x02070EEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070EFE
	mov r0, #1
	pop {r4, pc}
_02070EFE:
	ldr r0, [r4, #0]
	bl sub_0203A228
	cmp r0, #0
	bne _02070F0C
	mov r0, #1
	pop {r4, pc}
_02070F0C:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070F20
	mov r0, #3
	pop {r4, pc}
_02070F20:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _02070F40
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _02070F44
_02070F40:
	mov r0, #1
	b _02070F46
_02070F44:
	mov r0, #0
_02070F46:
	cmp r0, #1
	bne _02070F4E
	mov r0, #1
	pop {r4, pc}
_02070F4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070EEC

	thumb_func_start sub_02070F54
sub_02070F54: ; 0x02070F54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	ldrh r1, [r5, #4]
	ldr r2, [r6, #0xc]
	mov r0, #0xb
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020711C8
	mov r1, #0x72
	ldr r2, _02070F90 ; =sub_02070F94
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, #0x30
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_02070F90: .word sub_02070F94
	thumb_func_end sub_02070F54

	thumb_func_start sub_02070F94
sub_02070F94: ; 0x02070F94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	add r0, r6, #0
	mov r2, #4
	bl ov6_02247530
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02070FC8 ; =0x02247555
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02070FC8: .word 0x02247555
	thumb_func_end sub_02070F94

	thumb_func_start sub_02070FCC
sub_02070FCC: ; 0x02070FCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070FDE
	mov r0, #1
	pop {r4, pc}
_02070FDE:
	ldr r0, [r4, #0]
	bl sub_0203A274
	cmp r0, #1
	bne _02070FF2
	ldr r0, [r4, #0]
	bl sub_0203A1B8
	cmp r0, #1
	beq _02070FF6
_02070FF2:
	mov r0, #1
	pop {r4, pc}
_02070FF6:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _0207100A
	mov r0, #3
	pop {r4, pc}
_0207100A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070FCC

	thumb_func_start sub_02071010
sub_02071010: ; 0x02071010
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	ldrh r1, [r5, #4]
	ldr r2, [r6, #0xc]
	mov r0, #0xb
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020711C8
	mov r1, #0x72
	ldr r2, _0207104C ; =sub_02071050
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, #0x30
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_0207104C: .word sub_02071050
	thumb_func_end sub_02071010

	thumb_func_start sub_02071050
sub_02071050: ; 0x02071050
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r2, #0xb
	bl ov6_02247488
	ldr r1, [r4, #0x1c]
	add r7, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xa
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #4
	bl sub_0202BE00
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_0202B758
	add r0, r6, #0
	bl sub_020181C4
	ldr r1, _020710A0 ; =0x022474AD
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050924
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020710A0: .word 0x022474AD
	thumb_func_end sub_02071050

	thumb_func_start sub_020710A4
sub_020710A4: ; 0x020710A4
	push {r3, lr}
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _020710B4
	mov r0, #1
	pop {r3, pc}
_020710B4:
	ldr r0, [r1, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020710C6
	mov r0, #1
	b _020710C8
_020710C6:
	mov r0, #0
_020710C8:
	cmp r0, #1
	bne _020710D0
	mov r0, #1
	pop {r3, pc}
_020710D0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020710A4

	thumb_func_start sub_020710D4
sub_020710D4: ; 0x020710D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	ldrh r1, [r6, #4]
	add r4, r0, #0
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x18
	mov r0, #0xb
	lsr r1, r1, #0x18
	bl sub_020711C8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0207112C ; =0x021F101D
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r6, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r1, [r5, #0x1c]
	mov r0, #0xb
	ldr r1, [r1, #0]
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0202BE00
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_0202B758
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207112C: .word 0x021F101D
	thumb_func_end sub_020710D4

	thumb_func_start sub_02071130
sub_02071130: ; 0x02071130
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x70]
	sub r1, r1, #2
	cmp r1, #1
	bls _02071146
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _0207114A
_02071146:
	mov r0, #1
	pop {r3, pc}
_0207114A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02071130

	thumb_func_start sub_02071150
sub_02071150: ; 0x02071150
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02071188 ; =sub_0207118C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02071188: .word sub_0207118C
	thumb_func_end sub_02071150

	thumb_func_start sub_0207118C
sub_0207118C: ; 0x0207118C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _020711C4 ; =0x000022C4
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020711C4: .word 0x000022C4
	thumb_func_end sub_0207118C

	thumb_func_start sub_020711C8
sub_020711C8: ; 0x020711C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #8
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020711C8

	thumb_func_start sub_020711EC
sub_020711EC: ; 0x020711EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0207142C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207145C
	str r0, [r4, #0xc]
	str r6, [r4, #0]
	str r5, [r4, #8]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020711EC

	thumb_func_start sub_0207120C
sub_0207120C: ; 0x0207120C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071480
	add r0, r4, #0
	bl sub_02071450
	pop {r4, pc}
	thumb_func_end sub_0207120C

	thumb_func_start sub_0207121C
sub_0207121C: ; 0x0207121C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020713A4
	add r0, r4, #0
	bl sub_0207120C
	pop {r4, pc}
	thumb_func_end sub_0207121C

	thumb_func_start sub_0207122C
sub_0207122C: ; 0x0207122C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	bl sub_020714E8
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_020714EC
	add r5, r0, #0
_02071248:
	add r0, r5, #0
	bl sub_020714F0
	cmp r0, #0
	beq _0207125A
	add r4, r4, #1
	add r5, #0xe8
	cmp r4, r6
	blt _02071248
_0207125A:
	cmp r4, r6
	blt _02071264
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071264:
	add r0, r5, #0
	bl sub_020714FC
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_020715B0
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_020715B8
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020715D0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02071292
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_020715D4
	b _020712A2
_02071292:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_020715D4
_020712A2:
	ldr r1, [r7, #0]
	add r0, r5, #0
	bl sub_0207159C
	ldr r1, [r7, #4]
	add r0, r5, #0
	bl sub_02071518
	ldr r1, [r7, #8]
	add r0, r5, #0
	bl sub_0207156C
	ldr r1, [r7, #0xc]
	add r0, r5, #0
	bl sub_02071534
	ldr r1, [r7, #0x10]
	add r0, r5, #0
	bl sub_02071550
	ldr r1, [r7, #0x14]
	add r0, r5, #0
	bl sub_02071588
	ldr r1, [r7, #0x18]
	add r0, r5, #0
	bl sub_02071590
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	bl sub_02071400
	add r4, r0, #0
	bne _020712F2
	add r0, r5, #0
	bl sub_02071490
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020712F2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020715C8
	add r0, r5, #0
	bl sub_02071520
	cmp r0, #0
	bne _02071316
	add r0, r4, #0
	bl sub_0200DA58
	add r0, r5, #0
	bl sub_02071490
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071316:
	add r0, r5, #0
	mov r1, #2
	bl sub_02071508
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207122C

	thumb_func_start sub_02071330
sub_02071330: ; 0x02071330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r6, r0, #0
	add r4, sp, #8
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r7, #0
	str r0, [r4, #0]
	ldr r0, _02071364 ; =sub_02071604
	str r0, [sp, #0x1c]
	ldr r0, _02071368 ; =sub_02071608
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0207122C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02071364: .word sub_02071604
_02071368: .word sub_02071608
	thumb_func_end sub_02071330

	thumb_func_start sub_0207136C
sub_0207136C: ; 0x0207136C
	push {r4, lr}
	add r4, r0, #0
	bne _02071376
	bl sub_02022974
_02071376:
	add r0, r4, #0
	bl sub_020714F0
	cmp r0, #0
	beq _020713A2
	add r0, r4, #0
	bl sub_02071574
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	add r0, r4, #0
	bl sub_020715CC
	cmp r0, #0
	beq _0207139C
	bl sub_0200DA58
_0207139C:
	add r0, r4, #0
	bl sub_02071490
_020713A2:
	pop {r4, pc}
	thumb_func_end sub_0207136C

	thumb_func_start sub_020713A4
sub_020713A4: ; 0x020713A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020714E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020714EC
	add r5, r0, #0
_020713B6:
	add r0, r5, #0
	bl sub_020714F0
	cmp r0, #1
	bne _020713C6
	add r0, r5, #0
	bl sub_0207136C
_020713C6:
	add r5, #0xe8
	sub r4, r4, #1
	bne _020713B6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020713A4

	thumb_func_start sub_020713D0
sub_020713D0: ; 0x020713D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020714E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020714EC
	add r5, r0, #0
	mov r6, #3
_020713E4:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02071510
	cmp r0, #3
	bne _020713F6
	add r0, r5, #0
	bl sub_02071558
_020713F6:
	add r5, #0xe8
	sub r4, r4, #1
	bne _020713E4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020713D0

	thumb_func_start sub_02071400
sub_02071400: ; 0x02071400
	push {r4, lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _0207141C ; =sub_02071420
	add r1, r3, #0
	bl sub_0200D9E8
	add r4, r0, #0
	bne _02071416
	bl sub_02022974
_02071416:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207141C: .word sub_02071420
	thumb_func_end sub_02071400

	thumb_func_start sub_02071420
sub_02071420: ; 0x02071420
	ldr r3, _02071428 ; =sub_0207153C
	add r0, r1, #0
	bx r3
	nop
_02071428: .word sub_0207153C
	thumb_func_end sub_02071420

	thumb_func_start sub_0207142C
sub_0207142C: ; 0x0207142C
	push {r4, lr}
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _0207143C
	bl sub_02022974
_0207143C:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02071442:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02071442
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207142C

	thumb_func_start sub_02071450
sub_02071450: ; 0x02071450
	ldr r3, _02071458 ; =sub_02018238
	add r1, r0, #0
	ldr r0, [r1, #8]
	bx r3
	; .align 2, 0
_02071458: .word sub_02018238
	thumb_func_end sub_02071450

	thumb_func_start sub_0207145C
sub_0207145C: ; 0x0207145C
	push {r3, r4, r5, lr}
	mov r2, #0xe8
	add r5, r1, #0
	mul r5, r2
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02071472
	bl sub_02022974
_02071472:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207145C

	thumb_func_start sub_02071480
sub_02071480: ; 0x02071480
	ldr r3, _0207148C ; =sub_02018238
	add r1, r0, #0
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	bx r3
	nop
_0207148C: .word sub_02018238
	thumb_func_end sub_02071480

	thumb_func_start sub_02071490
sub_02071490: ; 0x02071490
	push {r4, lr}
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, _020714D0 ; =sub_020715F4
	add r0, r4, #0
	bl sub_02071518
	ldr r1, _020714D4 ; =sub_02071600
	add r0, r4, #0
	bl sub_0207156C
	ldr r1, _020714D8 ; =sub_020715F8
	add r0, r4, #0
	bl sub_02071534
	ldr r1, _020714DC ; =sub_020715FC
	add r0, r4, #0
	bl sub_02071550
	ldr r1, _020714E0 ; =sub_02071604
	add r0, r4, #0
	bl sub_02071588
	ldr r1, _020714E4 ; =sub_02071608
	add r0, r4, #0
	bl sub_02071590
	pop {r4, pc}
	nop
_020714D0: .word sub_020715F4
_020714D4: .word sub_02071600
_020714D8: .word sub_020715F8
_020714DC: .word sub_020715FC
_020714E0: .word sub_02071604
_020714E4: .word sub_02071608
	thumb_func_end sub_02071490

	thumb_func_start sub_020714E8
sub_020714E8: ; 0x020714E8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020714E8

	thumb_func_start sub_020714EC
sub_020714EC: ; 0x020714EC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020714EC

	thumb_func_start sub_020714F0
sub_020714F0: ; 0x020714F0
	ldr r1, [r0, #0]
	mov r0, #1
	tst r1, r0
	bne _020714FA
	mov r0, #0
_020714FA:
	bx lr
	thumb_func_end sub_020714F0

	thumb_func_start sub_020714FC
sub_020714FC: ; 0x020714FC
	ldr r2, [r0, #0]
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020714FC

	thumb_func_start sub_02071508
sub_02071508: ; 0x02071508
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02071508

	thumb_func_start sub_02071510
sub_02071510: ; 0x02071510
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071510

	thumb_func_start sub_02071518
sub_02071518: ; 0x02071518
	add r0, #0xd0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071518

	thumb_func_start sub_02071520
sub_02071520: ; 0x02071520
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd0
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071520

	thumb_func_start sub_02071534
sub_02071534: ; 0x02071534
	add r0, #0xd4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071534

	thumb_func_start sub_0207153C
sub_0207153C: ; 0x0207153C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd4
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_0207153C

	thumb_func_start sub_02071550
sub_02071550: ; 0x02071550
	add r0, #0xd8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071550

	thumb_func_start sub_02071558
sub_02071558: ; 0x02071558
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd8
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071558

	thumb_func_start sub_0207156C
sub_0207156C: ; 0x0207156C
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207156C

	thumb_func_start sub_02071574
sub_02071574: ; 0x02071574
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xdc
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071574

	thumb_func_start sub_02071588
sub_02071588: ; 0x02071588
	add r0, #0xe0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071588

	thumb_func_start sub_02071590
sub_02071590: ; 0x02071590
	add r0, #0xe4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071590

	thumb_func_start sub_02071598
sub_02071598: ; 0x02071598
	add r0, #0x30
	bx lr
	thumb_func_end sub_02071598

	thumb_func_start sub_0207159C
sub_0207159C: ; 0x0207159C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207159C

	thumb_func_start sub_020715B0
sub_020715B0: ; 0x020715B0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020715B0

	thumb_func_start sub_020715B4
sub_020715B4: ; 0x020715B4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020715B4

	thumb_func_start sub_020715B8
sub_020715B8: ; 0x020715B8
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020715B8

	thumb_func_start sub_020715BC
sub_020715BC: ; 0x020715BC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020715BC

	thumb_func_start sub_020715C0
sub_020715C0: ; 0x020715C0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_020715C0

	thumb_func_start sub_020715C4
sub_020715C4: ; 0x020715C4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020715C4

	thumb_func_start sub_020715C8
sub_020715C8: ; 0x020715C8
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_020715C8

	thumb_func_start sub_020715CC
sub_020715CC: ; 0x020715CC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_020715CC

	thumb_func_start sub_020715D0
sub_020715D0: ; 0x020715D0
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_020715D0

	thumb_func_start sub_020715D4
sub_020715D4: ; 0x020715D4
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020715D4

	thumb_func_start sub_020715E4
sub_020715E4: ; 0x020715E4
	add r2, r0, #0
	add r2, #0x24
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_020715E4

	thumb_func_start sub_020715F4
sub_020715F4: ; 0x020715F4
	mov r0, #1
	bx lr
	thumb_func_end sub_020715F4

	thumb_func_start sub_020715F8
sub_020715F8: ; 0x020715F8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020715F8

	thumb_func_start sub_020715FC
sub_020715FC: ; 0x020715FC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020715FC

	thumb_func_start sub_02071600
sub_02071600: ; 0x02071600
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071600

	thumb_func_start sub_02071604
sub_02071604: ; 0x02071604
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071604

	thumb_func_start sub_02071608
sub_02071608: ; 0x02071608
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071608

	thumb_func_start sub_0207160C
sub_0207160C: ; 0x0207160C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	ldr r3, _020716C4 ; =0x020F03F4
	mov r7, #0x18
	add r2, r1, #0
	mul r2, r7
	add r6, r3, r2
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _02071672
	ldr r3, _020716C8 ; =0x020F03E8
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r7, #0xea
	str r0, [r2, #0]
	str r5, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	mov r3, ip
	bl ov5_021E19CC
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _020716CC ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0x14]
	b _02071694
_02071672:
	ldr r0, _020716D0 ; =0x020F03D0
	add r1, sp, #0xc
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	add r3, sp, #0x14
	bl sub_02055324
	cmp r0, #0
	bne _02071694
	bl sub_02022974
_02071694:
	ldr r1, [sp, #0x14]
	add r0, sp, #0x18
	bl ov5_021E1894
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	str r5, [sp, #0x1c]
	bl ov5_021E18A4
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	add r4, #0xa0
	ldr r0, [r4, #0]
	mov r3, #3
	str r0, [sp, #8]
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	mov r0, #0
	bl ov5_021EF2CC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020716C4: .word 0x020F03F4
_020716C8: .word 0x020F03E8
_020716CC: .word 0x00000102
_020716D0: .word 0x020F03D0
	thumb_func_end sub_0207160C

	thumb_func_start sub_020716D4
sub_020716D4: ; 0x020716D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203D174
	bl sub_02027860
	add r5, r0, #0
	mov r1, #7
	bl sub_02027F5C
	add r0, r5, #0
	mov r1, #7
	bl sub_02027F6C
	mov r3, #1
	str r3, [r0, #4]
	mov r2, #0
	str r2, [r0, #8]
	ldr r4, [r4, #0x1c]
	ldr r5, _02071810 ; =0x00000123
	ldr r1, [r4, #0]
	cmp r1, r5
	bgt _0207172C
	bge _0207173E
	add r5, r1, #0
	sub r5, #0xb0
	cmp r5, #9
	bhi _02071808
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02071718: ; jump table
	.short _02071778 - _02071718 - 2 ; case 0
	.short _02071808 - _02071718 - 2 ; case 1
	.short _02071790 - _02071718 - 2 ; case 2
	.short _02071808 - _02071718 - 2 ; case 3
	.short _020717A8 - _02071718 - 2 ; case 4
	.short _02071808 - _02071718 - 2 ; case 5
	.short _020717C0 - _02071718 - 2 ; case 6
	.short _02071808 - _02071718 - 2 ; case 7
	.short _020717D8 - _02071718 - 2 ; case 8
	.short _020717F0 - _02071718 - 2 ; case 9
_0207172C:
	ldr r2, _02071814 ; =0x00000125
	cmp r1, r2
	bgt _02071736
	beq _02071750
	b _02071808
_02071736:
	add r2, r2, #1
	cmp r1, r2
	beq _02071764
	b _02071808
_0207173E:
	ldr r1, [r4, #0xc]
	cmp r1, #0x1a
	bne _02071748
	strh r2, [r0]
	b _0207174A
_02071748:
	strh r3, [r0]
_0207174A:
	mov r1, #0
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071750:
	ldr r1, [r4, #0xc]
	cmp r1, #0x30
	bne _0207175A
	mov r1, #0
	b _0207175C
_0207175A:
	mov r1, #1
_0207175C:
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071764:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _0207176E
	mov r1, #0
	b _02071770
_0207176E:
	mov r1, #1
_02071770:
	strh r1, [r0]
	mov r1, #2
	strh r1, [r0, #2]
	pop {r3, r4, r5, pc}
_02071778:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _02071782
	strh r2, [r0]
	b _02071786
_02071782:
	strh r3, [r0]
	str r2, [r0, #4]
_02071786:
	mov r1, #3
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02071790:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _0207179A
	strh r2, [r0]
	b _0207179E
_0207179A:
	strh r3, [r0]
	str r2, [r0, #4]
_0207179E:
	mov r1, #4
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717A8:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _020717B2
	strh r2, [r0]
	b _020717B6
_020717B2:
	strh r3, [r0]
	str r2, [r0, #4]
_020717B6:
	mov r1, #5
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717C0:
	ldr r1, [r4, #0xc]
	cmp r1, #0xf
	bne _020717CA
	strh r2, [r0]
	b _020717CE
_020717CA:
	strh r3, [r0]
	str r2, [r0, #4]
_020717CE:
	mov r1, #6
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717D8:
	ldr r1, [r4, #0xc]
	cmp r1, #0x17
	bne _020717E2
	strh r2, [r0]
	b _020717E6
_020717E2:
	strh r3, [r0]
	str r2, [r0, #4]
_020717E6:
	mov r1, #7
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_020717F0:
	ldr r1, [r4, #0xc]
	cmp r1, #0x12
	bne _020717FA
	strh r2, [r0]
	b _020717FE
_020717FA:
	strh r3, [r0]
	str r2, [r0, #4]
_020717FE:
	mov r1, #8
	strh r1, [r0, #2]
	mov r1, #1
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02071808:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02071810: .word 0x00000123
_02071814: .word 0x00000125
	thumb_func_end sub_020716D4

	thumb_func_start sub_02071818
sub_02071818: ; 0x02071818
	push {r3, lr}
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02071832
	mov r0, #1
	b _02071834
_02071832:
	mov r0, #0
_02071834:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02071818

	thumb_func_start sub_0207183C
sub_0207183C: ; 0x0207183C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02027860
	mov r1, #7
	bl sub_02027F6C
	add r4, r0, #0
	ldrh r1, [r4, #2]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _020718C0 ; =0x020F0404
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02071866
	ldrh r0, [r4]
	cmp r0, #1
	beq _020718BC
_02071866:
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldrh r1, [r4, #2]
	mov r0, #0x18
	add r3, r1, #0
	ldr r1, _020718C4 ; =0x020F0408
	mul r3, r0
	ldr r1, [r1, r3]
	str r1, [r2, #8]
	ldr r1, [r4, #8]
	str r1, [r2, #0xc]
	ldrh r1, [r4]
	cmp r1, #0
	ldrh r1, [r4, #2]
	bne _020718A6
	add r3, r1, #0
	mul r3, r0
	ldr r0, _020718C8 ; =0x020F03F8
	ldr r1, _020718CC ; =sub_020718D8
	ldr r0, [r0, r3]
	str r0, [r2, #4]
	ldr r0, [r5, #0x10]
	bl sub_02050944
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_020718A6:
	add r3, r1, #0
	mul r3, r0
	ldr r0, _020718D0 ; =0x020F03F4
	ldr r1, _020718D4 ; =sub_020719D8
	ldr r0, [r0, r3]
	str r0, [r2, #4]
	ldr r0, [r5, #0x10]
	bl sub_02050944
	mov r0, #0
	strh r0, [r4]
_020718BC:
	pop {r3, r4, r5, pc}
	nop
_020718C0: .word 0x020F0404
_020718C4: .word 0x020F0408
_020718C8: .word 0x020F03F8
_020718CC: .word sub_020718D8
_020718D0: .word 0x020F03F4
_020718D4: .word sub_020719D8
	thumb_func_end sub_0207183C

	thumb_func_start sub_020718D8
sub_020718D8: ; 0x020718D8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020719C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020718FE: ; jump table
	.short _02071906 - _020718FE - 2 ; case 0
	.short _0207191C - _020718FE - 2 ; case 1
	.short _02071996 - _020718FE - 2 ; case 2
	.short _020719BA - _020718FE - 2 ; case 3
_02071906:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, [r4, #0xc]
	bl sub_02071ACC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020719C4
_0207191C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02071932
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _020719CC ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0xc]
	b _02071954
_02071932:
	ldr r0, _020719D0 ; =0x020F03D0
	add r1, sp, #4
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, sp, #0xc
	bl sub_02055324
	cmp r0, #0
	bne _02071954
	bl sub_02022974
_02071954:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x10
	bl ov5_021E1894
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02071966
	mov r1, #1
	b _02071968
_02071966:
	mov r1, #2
_02071968:
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0xc
	add r1, r0, r1
	str r1, [sp, #0x14]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _02071984
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02071AEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02071984:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #0x14]
	bl sub_0205ED0C
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _020719C4
_02071996:
	add r2, r5, #0
	add r2, #0xa0
	ldr r1, [r4, #4]
	ldr r2, [r2, #0]
	mov r0, #0
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _020719D4 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020719C4
_020719BA:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_020719C4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_020719CC: .word 0x00000102
_020719D0: .word 0x020F03D0
_020719D4: .word 0x0000061A
	thumb_func_end sub_020718D8

	thumb_func_start sub_020719D8
sub_020719D8: ; 0x020719D8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _02071ABA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020719FE: ; jump table
	.short _02071A06 - _020719FE - 2 ; case 0
	.short _02071A1C - _020719FE - 2 ; case 1
	.short _02071A8C - _020719FE - 2 ; case 2
	.short _02071AB0 - _020719FE - 2 ; case 3
_02071A06:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205ED2C
	ldr r0, [r4, #0xc]
	bl sub_02071ACC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02071ABA
_02071A1C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02071A32
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, _02071AC0 ; =0x00000102
	bl ov5_021E18CC
	str r0, [sp, #0xc]
	b _02071A54
_02071A32:
	ldr r0, _02071AC4 ; =0x020F03D0
	add r1, sp, #4
	ldr r2, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, sp, #0xc
	bl sub_02055324
	cmp r0, #0
	bne _02071A54
	bl sub_02022974
_02071A54:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x10
	bl ov5_021E1894
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r0, [r4, #4]
	cmp r1, r0
	bgt _02071A7A
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02071AEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02071A7A:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #0x14]
	bl sub_0205ED0C
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	bl ov5_021E18A4
	b _02071ABA
_02071A8C:
	add r2, r5, #0
	add r2, #0xa0
	ldr r1, [r4, #4]
	ldr r2, [r2, #0]
	mov r0, #0
	bl ov5_021EF388
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0205ED48
	ldr r0, _02071AC8 ; =0x0000061A
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02071ABA
_02071AB0:
	bl sub_020181C4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_02071ABA:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_02071AC0: .word 0x00000102
_02071AC4: .word 0x020F03D0
_02071AC8: .word 0x0000061A
	thumb_func_end sub_020719D8

	thumb_func_start sub_02071ACC
sub_02071ACC: ; 0x02071ACC
	push {r3, lr}
	cmp r0, #0
	bne _02071ADA
	ldr r0, _02071AE4 ; =0x00000611
	bl sub_02005748
	pop {r3, pc}
_02071ADA:
	ldr r0, _02071AE8 ; =0x00000614
	bl sub_02005748
	pop {r3, pc}
	nop
_02071AE4: .word 0x00000611
_02071AE8: .word 0x00000614
	thumb_func_end sub_02071ACC

	thumb_func_start sub_02071AEC
sub_02071AEC: ; 0x02071AEC
	push {r3, lr}
	cmp r0, #0
	bne _02071AFC
	ldr r0, _02071B08 ; =0x00000611
	mov r1, #0
	bl sub_020057A4
	pop {r3, pc}
_02071AFC:
	ldr r0, _02071B0C ; =0x00000614
	mov r1, #0
	bl sub_020057A4
	pop {r3, pc}
	nop
_02071B08: .word 0x00000611
_02071B0C: .word 0x00000614
	thumb_func_end sub_02071AEC

	thumb_func_start sub_02071B10
sub_02071B10: ; 0x02071B10
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #1
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #1
	bl sub_02027F6C
	mov r1, #1
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02071B10

	thumb_func_start sub_02071B30
sub_02071B30: ; 0x02071B30
	push {r4, r5, r6, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #3
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #3
	bl sub_02027F6C
	ldr r5, _02071B68 ; =0x020F04CC
	add r6, r0, #0
	mov r4, #0
_02071B50:
	ldrb r1, [r5]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl sub_02071C80
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x18
	blt _02071B50
	pop {r4, r5, r6, pc}
	nop
_02071B68: .word 0x020F04CC
	thumb_func_end sub_02071B30

	thumb_func_start sub_02071B6C
sub_02071B6C: ; 0x02071B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	cmp r5, #3
	blo _02071B7A
	bl sub_02022974
_02071B7A:
	add r0, r7, #0
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #5
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #5
	bl sub_02027F6C
	add r4, r0, #0
	str r5, [r4, #4]
	cmp r5, #0
	beq _02071BA6
	cmp r5, #1
	beq _02071BAE
	cmp r5, #2
	beq _02071BB6
	b _02071BBE
_02071BA6:
	mov r0, #2
	str r0, [r4, #0]
	mov r6, #0xe
	b _02071BC2
_02071BAE:
	mov r0, #1
	str r0, [r4, #0]
	mov r6, #0x15
	b _02071BC2
_02071BB6:
	mov r0, #0
	str r0, [r4, #0]
	mov r6, #0x19
	b _02071BC2
_02071BBE:
	bl sub_02022974
_02071BC2:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, r6
	bne _02071BCE
	mov r0, #0
	str r0, [r4, #0]
_02071BCE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071B6C

	thumb_func_start sub_02071BD0
sub_02071BD0: ; 0x02071BD0
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #8
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #8
	bl sub_02027F6C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071BD0

	thumb_func_start sub_02071BF8
sub_02071BF8: ; 0x02071BF8
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #4
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #4
	bl sub_02027F6C
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02071BF8

	thumb_func_start sub_02071C18
sub_02071C18: ; 0x02071C18
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #2
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #2
	bl sub_02027F6C
	pop {r4, pc}
	thumb_func_end sub_02071C18

	thumb_func_start sub_02071C34
sub_02071C34: ; 0x02071C34
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #0xa
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02027F6C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071C34

	thumb_func_start sub_02071C5C
sub_02071C5C: ; 0x02071C5C
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #9
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #9
	bl sub_02027F6C
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end sub_02071C5C

	thumb_func_start sub_02071C80
sub_02071C80: ; 0x02071C80
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #1
	bls _02071C90
	bl sub_02022974
_02071C90:
	mov r0, #0
	mvn r0, r0
	mov r1, #0x20
	ldr r2, [r6, #0]
	sub r1, r1, r5
	add r3, r0, #0
	lsr r3, r1
	add r1, r2, #0
	and r1, r3
	add r3, r5, #1
	lsl r0, r3
	and r2, r0
	add r0, r4, #0
	lsl r0, r5
	orr r0, r2
	orr r0, r1
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02071C80

	thumb_func_start sub_02071CB4
sub_02071CB4: ; 0x02071CB4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r4, r0
	bne _02071CCC
	mov r0, #1
	pop {r4, pc}
_02071CCC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02071CB4

	thumb_func_start sub_02071CD0
sub_02071CD0: ; 0x02071CD0
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	bl sub_02027F80
	cmp r0, #6
	beq _02071CF8
	add r0, r4, #0
	mov r1, #6
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #6
	bl sub_02027F6C
	mov r1, #2
	strh r1, [r0]
_02071CF8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071CD0

	thumb_func_start sub_02071CFC
sub_02071CFC: ; 0x02071CFC
	push {r4, lr}
	add r4, r2, #0
	bl sub_0200B1B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	pop {r4, pc}
	thumb_func_end sub_02071CFC

	thumb_func_start sub_02071D10
sub_02071D10: ; 0x02071D10
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r3, r1, #0
	ldr r2, _02071D3C ; =0x000001B1
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A138
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02071CFC
	add r0, r4, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02071D3C: .word 0x000001B1
	thumb_func_end sub_02071D10

	thumb_func_start sub_02071D40
sub_02071D40: ; 0x02071D40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	str r0, [sp, #0x10]
	ldr r6, [sp, #0xb8]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	add r0, r6, #0
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0xbc]
	bl sub_0203D174
	str r0, [sp, #0x20]
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0202CD88
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	strb r0, [r5, #5]
	add r0, r6, #0
	bl sub_02071F28
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl sub_02025FD8
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x18]
	mov r1, #0xc
	bl sub_02072014
	add r0, r7, #0
	bl sub_02025F24
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl sub_02025F30
	str r0, [sp, #0x2c]
	add r0, r7, #0
	bl sub_02025EF0
	str r0, [sp, #0x30]
	add r0, r7, #0
	bl sub_02025F74
	str r0, [sp, #0x34]
	ldr r0, [r6, #0xc]
	bl sub_02027560
	bl sub_02026E48
	str r0, [sp, #0x38]
	ldr r0, [r6, #0xc]
	bl sub_02027560
	bl sub_02027520
	str r0, [sp, #0x3c]
	add r0, r4, #0
	bl sub_0202D034
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r5, [sp, #0xc]
	bl sub_02072038
	ldr r0, [sp, #0x20]
	bl sub_02025E5C
	str r0, [sp, #0x40]
	add r0, r6, #0
	add r1, sp, #0x90
	add r2, sp, #0x74
	bl sub_02055BF4
	add r0, r6, #0
	add r1, sp, #0x80
	add r2, sp, #0x74
	bl sub_02055C10
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	add r1, sp, #0x74
	str r1, [sp]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	str r5, [sp, #8]
	lsr r0, r0, #0x18
	add r2, sp, #0x90
	add r3, sp, #0x80
	bl sub_0207207C
	ldr r0, [r6, #0xc]
	bl sub_0202C834
	str r0, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0202CFB8
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0202CFB8
	str r0, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0x14
	bl sub_0202CFB8
	str r0, [sp, #0x50]
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0202CFB8
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0x5b
	bl sub_0202CFB8
	str r0, [sp, #0x58]
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0202CFB8
	ldr r1, [sp, #0x58]
	add r1, r1, r0
	ldr r0, [sp, #0x54]
	add r1, r0, r1
	ldr r0, [sp, #0x50]
	add r1, r0, r1
	ldr r0, [sp, #0x4c]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	add r0, r4, #0
	mov r1, #0x15
	bl sub_0202CFB8
	str r0, [sp, #0x60]
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0202CFB8
	str r0, [sp, #0x64]
	add r0, r4, #0
	mov r1, #0x16
	bl sub_0202CFB8
	str r0, [sp, #0x68]
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_0202CFB8
	str r0, [sp, #0x6c]
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0202CFB8
	str r0, [sp, #0x70]
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0202CFB8
	add r4, r0, #0
	ldr r0, [sp, #0x44]
	bl sub_0202C840
	str r0, [sp]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	add r0, r1, r0
	ldr r1, [sp, #0x64]
	ldr r3, [sp, #0x68]
	add r1, r2, r1
	ldr r2, [sp, #0x6c]
	str r5, [sp, #4]
	add r2, r3, r2
	ldr r3, [sp, #0x70]
	add r3, r3, r4
	bl sub_02072120
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0207216C
	mov r3, #0
	ldr r0, _02071EFC ; =0x0000066C
	add r2, r3, #0
_02071EE4:
	ldrb r1, [r5, r2]
	add r2, r2, #1
	eor r3, r1
	cmp r2, r0
	blo _02071EE4
	ldr r0, _02071F00 ; =0x00000668
	mov r1, #0
	strh r3, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02071EFC: .word 0x0000066C
_02071F00: .word 0x00000668
	thumb_func_end sub_02071D40

	thumb_func_start sub_02071F04
sub_02071F04: ; 0x02071F04
	push {r4, lr}
	ldr r1, _02071F1C ; =0x0000066C
	bl sub_02018144
	ldr r2, _02071F1C ; =0x0000066C
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	nop
_02071F1C: .word 0x0000066C
	thumb_func_end sub_02071F04

	thumb_func_start sub_02071F20
sub_02071F20: ; 0x02071F20
	ldr r3, _02071F24 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02071F24: .word sub_020181C4
	thumb_func_end sub_02071F20

	thumb_func_start sub_02071F28
sub_02071F28: ; 0x02071F28
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203D174
	add r7, r0, #0
	bl sub_0202CD88
	add r0, r7, #0
	bl sub_020507E4
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020298A0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl sub_0206A954
	cmp r0, #0
	beq _02071F5E
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02071F5E:
	add r0, r7, #0
	bl sub_02027560
	bl sub_02026EF4
	cmp r0, #0
	beq _02071F72
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02071F72:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xff
	bl sub_02030698
	cmp r0, #0x64
	bhs _02071FB8
	add r0, r6, #0
	mov r1, #2
	mov r2, #0xff
	bl sub_02030698
	cmp r0, #0x64
	bhs _02071FB8
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xff
	bl sub_02030698
	cmp r0, #0x64
	bhs _02071FB8
	add r0, r6, #0
	mov r1, #6
	mov r2, #0xff
	bl sub_02030698
	cmp r0, #0x64
	bhs _02071FB8
	add r0, r6, #0
	mov r1, #8
	mov r2, #0xff
	bl sub_02030698
	cmp r0, #0x64
	blo _02071FBE
_02071FB8:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02071FBE:
	add r0, r5, #0
	mov r1, #0
	bl sub_0206AAA8
	cmp r0, #0
	bne _02071FFA
	add r0, r5, #0
	mov r1, #1
	bl sub_0206AAA8
	cmp r0, #0
	bne _02071FFA
	add r0, r5, #0
	mov r1, #3
	bl sub_0206AAA8
	cmp r0, #0
	bne _02071FFA
	add r0, r5, #0
	mov r1, #4
	bl sub_0206AAA8
	cmp r0, #0
	bne _02071FFA
	add r0, r5, #0
	mov r1, #2
	bl sub_0206AAA8
	cmp r0, #0
	beq _02072000
_02071FFA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02072000:
	ldr r0, [sp]
	bl sub_020294C0
	cmp r0, #1
	bne _02072010
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02072010:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071F28

	thumb_func_start sub_02072014
sub_02072014: ; 0x02072014
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x14]
	mov r6, #1
	ldrb r4, [r5, #4]
	bic r4, r6
	mov r6, #1
	and r0, r6
	orr r0, r4
	strb r0, [r5, #4]
	strb r1, [r5]
	strb r2, [r5, #3]
	add r0, sp, #0
	ldrb r0, [r0, #0x10]
	strb r0, [r5, #1]
	strb r3, [r5, #2]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02072014

	thumb_func_start sub_02072038
sub_02072038: ; 0x02072038
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x1c]
	add r6, r1, #0
	strh r0, [r4, #0x28]
	ldrb r0, [r4, #4]
	add r1, r2, #0
	mov r2, #4
	bic r0, r2
	lsl r2, r6, #0x1f
	lsr r2, r2, #0x1d
	orr r0, r2
	strb r0, [r4, #4]
	add r0, r4, #0
	add r0, #8
	mov r2, #8
	add r5, r3, #0
	bl sub_020021D0
	ldr r0, [sp, #0x10]
	str r5, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldrb r0, [r4, #4]
	mov r1, #8
	bic r0, r1
	ldr r1, [sp, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r0, r1
	strb r0, [r4, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x24]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02072038

	thumb_func_start sub_0207207C
sub_0207207C: ; 0x0207207C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	ldr r7, [sp, #0x20]
	bl sub_0202CC58
	strh r0, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl sub_0202CC5C
	add r1, r4, #0
	add r1, #0x2e
	strb r0, [r1]
	add r0, r4, #0
	ldr r1, [r5, #0]
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #4]
	add r0, #0x30
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x31
	strb r1, [r0]
	ldr r0, [sp]
	cmp r0, #0
	beq _020720DE
	add r0, r4, #0
	ldr r1, [r6, #0]
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r6, #4]
	add r0, #0x33
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r6, #8]
	add r0, #0x34
	strb r1, [r0]
	ldr r0, [r7, #0]
	strh r0, [r4, #0x2c]
	ldr r1, [r7, #4]
	b _020720F4
_020720DE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x33
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	strh r1, [r4, #0x2c]
_020720F4:
	add r0, r4, #0
	add r0, #0x35
	strb r1, [r0]
	ldrb r2, [r4, #4]
	mov r0, #2
	bic r2, r0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1e
	orr r1, r2
	strb r1, [r4, #4]
	cmp r0, #0
	beq _02072118
	ldr r0, [sp, #4]
	add sp, #8
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02072118:
	mov r0, #0
	str r0, [r4, #0x18]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207207C

	thumb_func_start sub_02072120
sub_02072120: ; 0x02072120
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, _02072160 ; =0x000F423F
	str r0, [r4, #0x38]
	cmp r0, r5
	bls _0207212E
	str r5, [r4, #0x38]
_0207212E:
	str r1, [r4, #0x3c]
	str r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	ldr r0, _02072164 ; =0x0000270F
	cmp r1, r0
	bls _0207213C
	str r0, [r4, #0x3c]
_0207213C:
	ldr r1, [r4, #0x40]
	ldr r0, _02072164 ; =0x0000270F
	cmp r1, r0
	bls _02072146
	str r0, [r4, #0x40]
_02072146:
	ldr r0, _02072168 ; =0x0001869F
	str r3, [r4, #0x44]
	cmp r3, r0
	bls _02072150
	str r0, [r4, #0x44]
_02072150:
	add r4, #0x68
	mov r2, #6
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02072160: .word 0x000F423F
_02072164: .word 0x0000270F
_02072168: .word 0x0001869F
	thumb_func_end sub_02072120

	thumb_func_start sub_0207216C
sub_0207216C: ; 0x0207216C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r1, #0xc]
	add r5, r2, #0
	bl sub_0202C834
	bl sub_0202C844
	str r0, [sp, #4]
	mov r0, #1
	mov r4, #0
	add r5, #0x48
	str r0, [sp, #8]
	add r7, r0, #0
_0207218A:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02025F34
	cmp r0, #0
	beq _020721A6
	lsl r0, r4, #2
	ldr r2, [r5, r0]
	mov r1, #1
	bic r2, r7
	orr r1, r2
	add r6, r5, r0
	str r1, [r5, r0]
	b _020721B2
_020721A6:
	lsl r2, r4, #2
	ldr r1, [r5, r2]
	ldr r0, [sp, #8]
	add r6, r5, r2
	bic r1, r0
	str r1, [r5, r2]
_020721B2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_0202C848
	ldr r2, [r6, #0]
	mov r1, #1
	and r1, r2
	lsl r0, r0, #1
	orr r0, r1
	str r0, [r6, #0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0207218A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207216C

	thumb_func_start sub_020721D4
sub_020721D4: ; 0x020721D4
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_0202C834
	bl sub_0202C844
	add r6, r0, #0
	mov r4, #0
_020721E6:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r1, [r1, #0x48]
	add r0, r4, #0
	asr r1, r1, #1
	add r2, r6, #0
	bl sub_0202C850
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _020721E6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020721D4

	thumb_func_start sub_02072204
sub_02072204: ; 0x02072204
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0x7c]
	bl sub_0205C17C
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _0207222C ; =sub_02072230
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0207222C: .word sub_02072230
	thumb_func_end sub_02072204

	thumb_func_start sub_02072230
sub_02072230: ; 0x02072230
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0xa
	bgt _0207225A
	bge _0207227A
	cmp r0, #1
	bgt _020722A2
	cmp r0, #0
	blt _020722A2
	beq _02072260
	cmp r0, #1
	beq _0207226A
	b _020722A2
_0207225A:
	cmp r0, #0xb
	beq _02072288
	b _020722A2
_02072260:
	ldr r0, [r4, #0x7c]
	bl sub_0205C214
	mov r0, #1
	str r0, [r5, #0]
_0207226A:
	ldr r1, [r5, #4]
	ldr r0, _020722A8 ; =0x0000066A
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _020722A2
	mov r0, #0xa
	str r0, [r5, #0]
	b _020722A2
_0207227A:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_0203E09C
	mov r0, #0xb
	str r0, [r5, #0]
	b _020722A2
_02072288:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020722A2
	ldr r0, [r4, #0x7c]
	bl sub_0205C1F0
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020722A2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020722A8: .word 0x0000066A
	thumb_func_end sub_02072230

	thumb_func_start sub_020722AC
sub_020722AC: ; 0x020722AC
	push {r4, r5, r6, lr}
	mov r2, #5
	add r6, r0, #0
	add r4, r1, #0
	mov r0, #3
	mov r1, #0x2b
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r1, #0x6e
	mov r0, #0x2b
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x6e
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	str r4, [r5, #4]
	bl sub_0203D174
	mov r1, #0x5b
	lsl r1, r1, #2
	str r6, [r5, r1]
	mov r1, #0x2b
	str r1, [r5, #0]
	mov r1, #0
	strb r1, [r5, #0x19]
	mov r1, #0xff
	add r4, r0, #0
	strb r1, [r5, #0x1a]
	bl sub_02025E44
	bl sub_02027AC0
	strb r0, [r5, #0x16]
	add r0, r4, #0
	bl sub_02025E44
	bl sub_02027B50
	strh r0, [r5, #0x14]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x1c
	mov r1, #0x14
	bl sub_02072ED0
	ldr r2, [r5, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02072F30
	add r0, r5, #0
	bl sub_02073130
	ldr r0, _02072330 ; =sub_02072370
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02072330: .word sub_02072370
	thumb_func_end sub_020722AC

	thumb_func_start sub_02072334
sub_02072334: ; 0x02072334
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200DA58
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020731A4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0x14
	bl sub_02072F04
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_0201807C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02072334

	thumb_func_start sub_02072364
sub_02072364: ; 0x02072364
	ldr r3, _0207236C ; =sub_02072334
	add r0, r1, #0
	bx r3
	nop
_0207236C: .word sub_02072334
	thumb_func_end sub_02072364

	thumb_func_start sub_02072370
sub_02072370: ; 0x02072370
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	bl sub_020729B4
	ldr r1, _0207238C ; =sub_02072390
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207238C: .word sub_02072390
	thumb_func_end sub_02072370

	thumb_func_start sub_02072390
sub_02072390: ; 0x02072390
	push {r3, r4, r5, lr}
	mov r0, #0x16
	add r5, r1, #0
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020723AE
	bl sub_0206A870
_020723AE:
	ldr r0, _02072404 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _020723CA
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _0207240C ; =sub_02072364
	add r0, r5, #0
	bl sub_02072EA4
	ldr r0, _02072410 ; =0x000005DC
	bl sub_02005748
	pop {r3, r4, r5, pc}
_020723CA:
	mov r0, #1
	tst r0, r1
	beq _02072402
	ldr r0, _02072410 ; =0x000005DC
	bl sub_02005748
	mov r1, #1
	mvn r1, r1
	cmp r4, r1
	beq _020723EA
	add r0, r1, #1
	cmp r4, r0
	beq _020723EA
	lsr r0, r1, #0x10
	cmp r4, r0
	bne _020723F6
_020723EA:
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _0207240C ; =sub_02072364
	add r0, r5, #0
	bl sub_02072EA4
	pop {r3, r4, r5, pc}
_020723F6:
	ldr r1, _02072408 ; =sub_02072518
	ldr r2, _02072414 ; =sub_02072418
	add r0, r5, #0
	strb r4, [r5, #0x18]
	bl sub_02072EA4
_02072402:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02072404: .word 0x021BF67C
_02072408: .word sub_02072518
_0207240C: .word sub_02072364
_02072410: .word 0x000005DC
_02072414: .word sub_02072418
	thumb_func_end sub_02072390

	thumb_func_start sub_02072418
sub_02072418: ; 0x02072418
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0207242A
	cmp r0, #1
	beq _02072452
	pop {r3, r4, r5, pc}
_0207242A:
	add r0, r4, #0
	bl sub_020731F4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02072C98
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020732C4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02072452:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _02072468
	ldr r1, _0207246C ; =sub_02072470
	add r0, r5, #0
	bl sub_0201CECC
	mov r0, #0
	strh r0, [r4, #0x10]
_02072468:
	pop {r3, r4, r5, pc}
	nop
_0207246C: .word sub_02072470
	thumb_func_end sub_02072418

	thumb_func_start sub_02072470
sub_02072470: ; 0x02072470
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x16
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001288
	add r5, r0, #0
	ldr r0, _020724F8 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0207249E
	ldr r1, _020724FC ; =sub_02072534
	ldr r2, _02072500 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	ldr r0, _02072504 ; =0x000005DC
	bl sub_02005748
	pop {r4, r5, r6, pc}
_0207249E:
	mov r1, #1
	tst r0, r1
	beq _020724F4
	ldr r0, _02072504 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #2
	cmp r0, #5
	bhi _020724EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020724BC: ; jump table
	.short _020724C8 - _020724BC - 2 ; case 0
	.short _020724C8 - _020724BC - 2 ; case 1
	.short _020724EC - _020724BC - 2 ; case 2
	.short _020724D4 - _020724BC - 2 ; case 3
	.short _020724E0 - _020724BC - 2 ; case 4
	.short _020724C8 - _020724BC - 2 ; case 5
_020724C8:
	ldr r1, _020724FC ; =sub_02072534
	ldr r2, _02072500 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724D4:
	ldr r1, _02072508 ; =sub_020725D0
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724E0:
	ldr r1, _0207250C ; =sub_02072754
	ldr r2, _02072510 ; =sub_020727F8
	add r0, r4, #0
	bl sub_02072EA4
	pop {r4, r5, r6, pc}
_020724EC:
	ldr r1, _02072514 ; =sub_02072550
	add r0, r6, #0
	bl sub_0201CECC
_020724F4:
	pop {r4, r5, r6, pc}
	nop
_020724F8: .word 0x021BF67C
_020724FC: .word sub_02072534
_02072500: .word sub_02072370
_02072504: .word 0x000005DC
_02072508: .word sub_020725D0
_0207250C: .word sub_02072754
_02072510: .word sub_020727F8
_02072514: .word sub_02072550
	thumb_func_end sub_02072470

	thumb_func_start sub_02072518
sub_02072518: ; 0x02072518
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02072DB8
	add r0, r4, #0
	bl sub_02073294
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072518

	thumb_func_start sub_02072534
sub_02072534: ; 0x02072534
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02072E4C
	add r0, r4, #0
	bl sub_02073294
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072534

	thumb_func_start sub_02072550
sub_02072550: ; 0x02072550
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _020725C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072568: ; jump table
	.short _02072570 - _02072568 - 2 ; case 0
	.short _02072586 - _02072568 - 2 ; case 1
	.short _02072592 - _02072568 - 2 ; case 2
	.short _0207259E - _02072568 - 2 ; case 3
_02072570:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020725CA
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	b _020725C4
_02072586:
	add r0, r4, #0
	bl sub_020735E8
	cmp r0, #0
	bne _020725C4
	pop {r3, r4, r5, pc}
_02072592:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020725C4
	pop {r3, r4, r5, pc}
_0207259E:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020725CA
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	bl sub_020729B4
	mov r0, #0
	strh r0, [r4, #0x10]
	ldr r1, _020725CC ; =sub_02072390
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
_020725C4:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020725CA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020725CC: .word sub_02072390
	thumb_func_end sub_02072550

	thumb_func_start sub_020725D0
sub_020725D0: ; 0x020725D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bhi _0207269A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020725E8: ; jump table
	.short _020725F4 - _020725E8 - 2 ; case 0
	.short _02072604 - _020725E8 - 2 ; case 1
	.short _02072616 - _020725E8 - 2 ; case 2
	.short _02072640 - _020725E8 - 2 ; case 3
	.short _02072658 - _020725E8 - 2 ; case 4
	.short _0207266A - _020725E8 - 2 ; case 5
_020725F4:
	mov r1, #1
	str r1, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r3, #0
	bl sub_020732C4
	b _0207269A
_02072604:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _020726A0
	add r0, r4, #0
	bl sub_020733E0
	b _0207269A
_02072616:
	add r0, r4, #0
	bl sub_0207340C
	cmp r0, #0
	blt _020726A0
	beq _02072638
	mov r3, #0
	str r3, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #2
	bl sub_020732C4
	mov r0, #4
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072638:
	mov r0, #3
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072640:
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _020726A4 ; =sub_02072534
	ldr r2, _020726A8 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072658:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	beq _020726A0
	add r0, r4, #0
	bl sub_020733E0
	b _0207269A
_0207266A:
	add r0, r4, #0
	bl sub_0207340C
	cmp r0, #0
	blt _020726A0
	beq _02072682
	ldr r1, _020726AC ; =sub_02072878
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	b _0207268C
_02072682:
	ldr r1, _020726B0 ; =sub_020726B4
	ldr r2, _020726A4 ; =sub_02072534
	add r0, r4, #0
	bl sub_02072EA4
_0207268C:
	add r0, r4, #0
	bl sub_02073398
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_0207269A:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020726A0:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_020726A4: .word sub_02072534
_020726A8: .word sub_02072370
_020726AC: .word sub_02072878
_020726B0: .word sub_020726B4
	thumb_func_end sub_020725D0

	thumb_func_start sub_020726B4
sub_020726B4: ; 0x020726B4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _020726CA
	cmp r0, #1
	beq _0207270E
	cmp r0, #2
	beq _0207271C
	b _0207273E
_020726CA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020726E0
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_02072C98
_020726E0:
	add r0, r4, #0
	bl sub_02073060
	cmp r0, #0
	beq _020726FC
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_020732C4
	b _0207273E
_020726FC:
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl sub_020732C4
	b _0207273E
_0207270E:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	bne _0207273E
	add sp, #4
	pop {r3, r4, pc}
_0207271C:
	ldr r0, _02072748 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02072744
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _0207274C ; =sub_02072534
	ldr r2, _02072750 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_0207273E:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_02072744:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02072748: .word 0x021BF67C
_0207274C: .word sub_02072534
_02072750: .word sub_02072370
	thumb_func_end sub_020726B4

	thumb_func_start sub_02072754
sub_02072754: ; 0x02072754
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _020727EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207276A: ; jump table
	.short _02072772 - _0207276A - 2 ; case 0
	.short _02072788 - _0207276A - 2 ; case 1
	.short _02072796 - _0207276A - 2 ; case 2
	.short _020727A2 - _0207276A - 2 ; case 3
_02072772:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020727F2
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	b _020727EC
_02072788:
	add r0, r4, #0
	mov r1, #0xe
	bl sub_02073524
	cmp r0, #0
	bne _020727EC
	pop {r3, r4, r5, pc}
_02072796:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020727EC
	pop {r3, r4, r5, pc}
_020727A2:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020727F2
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #0
	add r1, #0x22
	ldrb r5, [r1]
	bl sub_020181C4
	cmp r5, #7
	bne _020727D2
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_020727D2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_020730B8
	ldr r1, _020727F4 ; =sub_02072370
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_020727EC:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020727F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020727F4: .word sub_02072370
	thumb_func_end sub_02072754

	thumb_func_start sub_020727F8
sub_020727F8: ; 0x020727F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0207280E
	cmp r0, #1
	beq _02072830
	cmp r0, #2
	beq _0207283E
	b _02072860
_0207280E:
	add r0, r4, #0
	bl sub_020731F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_02072C98
	mov r0, #1
	str r0, [sp]
	ldrb r2, [r4, #0x16]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020732C4
	b _02072860
_02072830:
	add r0, r4, #0
	bl sub_020733B4
	cmp r0, #0
	bne _02072860
	add sp, #4
	pop {r3, r4, pc}
_0207283E:
	ldr r0, _0207286C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02072866
	add r0, r4, #0
	bl sub_02073398
	ldr r1, _02072870 ; =sub_02072534
	ldr r2, _02072874 ; =sub_02072370
	add r0, r4, #0
	bl sub_02072EA4
	mov r0, #0
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, pc}
_02072860:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_02072866:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0207286C: .word 0x021BF67C
_02072870: .word sub_02072534
_02072874: .word sub_02072370
	thumb_func_end sub_020727F8

	thumb_func_start sub_02072878
sub_02072878: ; 0x02072878
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bls _02072884
	b _020729A0
_02072884:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072890: ; jump table
	.short _0207289C - _02072890 - 2 ; case 0
	.short _020728E4 - _02072890 - 2 ; case 1
	.short _02072928 - _02072890 - 2 ; case 2
	.short _02072946 - _02072890 - 2 ; case 3
	.short _02072978 - _02072890 - 2 ; case 4
	.short _02072984 - _02072890 - 2 ; case 5
_0207289C:
	add r0, r4, #0
	mov r1, #0
	bl sub_02073438
	cmp r0, #0
	beq _020729A6
	add r0, r4, #0
	mov r1, #1
	bl sub_020734F4
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrb r2, [r4, #0x18]
	mov r1, #0xc
	ldr r0, [r4, r0]
	mul r1, r2
	add r1, r4, r1
	ldrh r1, [r1, #0x22]
	ldr r2, [r4, #0]
	bl sub_0207D730
	cmp r0, #0
	ldr r1, _020729A8 ; =0x0000013B
	beq _020728DA
	ldrb r2, [r4, r1]
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r4, r1]
	b _020729A0
_020728DA:
	ldrb r2, [r4, r1]
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r4, r1]
	b _020729A0
_020728E4:
	add r0, r4, #0
	mov r1, #9
	bl sub_02073524
	cmp r0, #0
	beq _020729A6
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #0
	add r1, #0x22
	ldrb r5, [r1]
	add r1, r0, #0
	add r1, #0x23
	ldrb r6, [r1]
	bl sub_020181C4
	cmp r6, #6
	bne _0207290E
	cmp r5, #7
	bne _02072918
_0207290E:
	ldr r0, _020729AC ; =sub_020726B4
	str r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02072918:
	strb r5, [r4, #0x17]
	ldrb r1, [r4, #0x18]
	mov r0, #0xc
	mov r2, #0
	mul r0, r1
	add r0, r4, r0
	strb r2, [r0, #0x1d]
	b _020729A0
_02072928:
	add r0, r4, #0
	bl sub_020735E8
	cmp r0, #0
	beq _020729A6
	cmp r0, #1
	bne _02072940
	ldr r0, _020729AC ; =sub_020726B4
	str r0, [r4, #0xc]
	mov r0, #4
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02072940:
	ldr r0, _020729B0 ; =sub_02072370
	str r0, [r4, #0xc]
	b _020729A0
_02072946:
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02073524
	cmp r0, #0
	beq _020729A6
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r2, _020729A8 ; =0x0000013B
	ldrb r1, [r4, #0x17]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bl sub_020730B8
	ldr r1, _020729A8 ; =0x0000013B
	mov r0, #0xc0
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	b _020729A0
_02072978:
	add r0, r4, #0
	bl sub_02073480
	cmp r0, #0
	bne _020729A0
	pop {r4, r5, r6, pc}
_02072984:
	add r0, r4, #0
	mov r1, #1
	bl sub_02073438
	cmp r0, #0
	beq _020729A6
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_02072EA4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_020729A0:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_020729A6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020729A8: .word 0x0000013B
_020729AC: .word sub_020726B4
_020729B0: .word sub_02072370
	thumb_func_end sub_02072878

	thumb_func_start sub_020729B4
sub_020729B4: ; 0x020729B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	bl sub_0206A780
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0xc8
	mov r2, #0xa
	mov r3, #0x8a
	bl sub_0206A8A0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #1
	bl sub_0206A8C4
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r2, _02072B98 ; =0x020F04F4
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x24
	ldr r2, _02072B9C ; =0x020F04FC
	add r1, r5, r1
	bl sub_0201A8D4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	ldrb r0, [r5, #0x1b]
	ldr r1, [r5, #0]
	add r0, r0, #1
	bl sub_02013A04
	mov r1, #0x59
	lsl r1, r1, #2
	add r7, r5, #0
	str r0, [r5, r1]
	add r4, r6, #0
	add r7, #0x1c
_02072A3E:
	mov r0, #0xc
	mul r0, r4
	add r2, r7, r0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _02072A5E
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r2, #8]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02072A5E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x14
	blo _02072A3E
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0x4c
	ldr r1, [r5, r1]
	ldr r2, _02072BA0 ; =0x0000FFFF
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x18
	mov r1, #5
	lsr r6, r0, #0x18
	lsl r1, r1, #6
	ldr r0, _02072BA4 ; =0x020F0504
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020C4DB0
	mov r1, #0x5d
	lsl r1, r1, #2
	add r0, r1, #0
	add r2, r5, r1
	sub r0, #0x28
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x10
	ldr r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x34
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x18
	str r5, [r5, r0]
	add r0, r1, #0
	sub r0, #0x24
	strh r6, [r5, r0]
	add r0, r1, #0
	sub r0, #0x1d
	ldrb r2, [r5, r0]
	mov r0, #0xf
	bic r2, r0
	mov r0, #6
	orr r2, r0
	add r0, r1, #0
	sub r0, #0x1d
	strb r2, [r5, r0]
	add r0, r1, #0
	ldr r2, _02072BA8 ; =sub_02072C0C
	sub r0, #0x30
	str r2, [r5, r0]
	add r0, r1, #0
	ldr r2, _02072BAC ; =sub_02072BBC
	sub r0, #0x2c
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x39
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _02072B24
	add r0, r1, #0
	sub r0, #0x38
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02072B08
	add r0, r1, #0
	sub r0, #0x36
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _02072B1A
	sub r0, r6, #1
	cmp r2, r0
	blt _02072B1A
	add r0, r1, #0
	sub r0, #0x36
	ldrh r0, [r5, r0]
	sub r1, #0x36
	sub r0, r0, #1
	strh r0, [r5, r1]
	b _02072B1A
_02072B08:
	add r0, r0, #7
	cmp r0, r6
	blt _02072B1A
	add r0, r1, #0
	sub r0, #0x38
	ldrh r0, [r5, r0]
	sub r1, #0x38
	sub r0, r0, #1
	strh r0, [r5, r1]
_02072B1A:
	ldr r1, _02072BB0 ; =0x0000013B
	mov r0, #0x30
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
_02072B24:
	mov r2, #5
	lsl r2, r2, #6
	sub r1, r2, #4
	add r0, r5, r2
	sub r2, r2, #2
	ldr r3, [r5, #0]
	ldrh r1, [r5, r1]
	lsl r3, r3, #0x18
	ldrh r2, [r5, r2]
	lsr r3, r3, #0x18
	bl sub_0200112C
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x14
	add r0, r5, r1
	ldr r2, _02072BB4 ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r1, #0
	str r1, [sp]
	mov r2, #0x65
	ldr r0, _02072BB8 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r5, r2
	str r1, [sp, #0xc]
	sub r2, #0x78
	ldr r2, [r5, r2]
	mov r3, #2
	bl sub_0201D78C
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r2, _02072BB4 ; =0x000003D9
	add r0, r5, r0
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0201C3C0
	ldr r1, _02072BB0 ; =0x0000013B
	mov r0, #0xf
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02072B98: .word 0x020F04F4
_02072B9C: .word 0x020F04FC
_02072BA0: .word 0x0000FFFF
_02072BA4: .word 0x020F0504
_02072BA8: .word sub_02072C0C
_02072BAC: .word sub_02072BBC
_02072BB0: .word 0x0000013B
_02072BB4: .word 0x000003D9
_02072BB8: .word 0x0001020F
	thumb_func_end sub_020729B4

	thumb_func_start sub_02072BBC
sub_02072BBC: ; 0x02072BBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	ldr r1, _02072C08 ; =0x0000FFFF
	cmp r4, r1
	bne _02072BDC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02072BDC:
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02072BF8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl sub_0200147C
	pop {r3, r4, r5, pc}
_02072BF8:
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xf
	mov r3, #8
	bl sub_0200147C
	pop {r3, r4, r5, pc}
	nop
_02072C08: .word 0x0000FFFF
	thumb_func_end sub_02072BBC

	thumb_func_start sub_02072C0C
sub_02072C0C: ; 0x02072C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x13
	add r4, r0, #0
	add r6, r2, #0
	bl sub_02001504
	add r1, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, r4, #0
	mov r1, #2
	bl sub_02001504
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #0
	bne _02072C3E
	ldr r0, _02072C94 ; =0x000005DC
	bl sub_02005748
_02072C3E:
	add r0, sp, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02072C56
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	b _02072C64
_02072C56:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #1
	bl sub_0206A8C4
_02072C64:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	sub r0, r4, #7
	cmp r1, r0
	bge _02072C80
	mov r0, #0x69
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0206A8C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02072C80:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0206A8C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02072C94: .word 0x000005DC
	thumb_func_end sub_02072C0C

	thumb_func_start sub_02072C98
sub_02072C98: ; 0x02072C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r1, [r5, #0]
	mov r0, #4
	bl sub_02013A04
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r2, _02072D88 ; =0x020F04EC
	add r1, r5, r1
	bl sub_0201A8D4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r7, #0x43
	ldr r6, _02072D8C ; =0x020F0524
	mov r4, #0
	lsl r7, r7, #2
_02072CD4:
	lsl r2, r4, #3
	add r3, r6, r2
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r7]
	ldr r2, [r6, r2]
	ldr r3, [r3, #4]
	bl sub_02013A4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02072CD4
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, _02072D90 ; =0x020F0504
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020C4DB0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r5, r0
	sub r1, #0x28
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x10
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x34
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x18
	str r5, [r5, r1]
	add r1, r0, #0
	mov r2, #4
	sub r1, #0x24
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x22
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x1a
	ldrh r2, [r5, r1]
	ldr r1, _02072D94 ; =0xFFFFFE7F
	and r2, r1
	add r1, r0, #0
	sub r1, #0x1a
	strh r2, [r5, r1]
	add r1, r0, #0
	sub r0, #0x34
	ldr r2, _02072D98 ; =sub_02072DA4
	sub r1, #0x30
	str r2, [r5, r1]
	ldr r3, [r5, #0]
	ldr r1, [sp]
	lsl r3, r3, #0x18
	ldr r2, [sp, #4]
	add r0, r5, r0
	lsr r3, r3, #0x18
	bl sub_0200112C
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0x14
	add r0, r5, r1
	ldr r2, _02072D9C ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0201C3C0
	ldr r1, _02072DA0 ; =0x0000013B
	mov r0, #0xf
	ldrb r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02072D88: .word 0x020F04EC
_02072D8C: .word 0x020F0524
_02072D90: .word 0x020F0504
_02072D94: .word 0xFFFFFE7F
_02072D98: .word sub_02072DA4
_02072D9C: .word 0x000003D9
_02072DA0: .word 0x0000013B
	thumb_func_end sub_02072C98

	thumb_func_start sub_02072DA4
sub_02072DA4: ; 0x02072DA4
	push {r3, lr}
	cmp r2, #0
	bne _02072DB0
	ldr r0, _02072DB4 ; =0x000005DC
	bl sub_02005748
_02072DB0:
	pop {r3, pc}
	nop
_02072DB4: .word 0x000005DC
	thumb_func_end sub_02072DA4

	thumb_func_start sub_02072DB8
sub_02072DB8: ; 0x02072DB8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_02001384
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, sp, #0
	mov r1, #0x4f
	ldrh r2, [r0, #2]
	lsl r1, r1, #2
	strh r2, [r4, r1]
	ldrh r2, [r0]
	add r0, r1, #2
	add r1, #0x68
	strh r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _02072E3C
	bl sub_0206A844
	mov r0, #0x69
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02072E3C:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02072DB8

	thumb_func_start sub_02072E4C
sub_02072E4C: ; 0x02072E4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x16
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_02001384
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r4, #0
	bl sub_02073398
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02072E4C

	thumb_func_start sub_02072EA4
sub_02072EA4: ; 0x02072EA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r2, #0
	bl sub_0201CECC
	mov r0, #0
	strh r0, [r5, #0x10]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02072EA4

	thumb_func_start sub_02072EB8
sub_02072EB8: ; 0x02072EB8
	push {r3, lr}
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02072ECE
	bl sub_020237E8
_02072ECE:
	pop {r3, pc}
	thumb_func_end sub_02072EB8

	thumb_func_start sub_02072ED0
sub_02072ED0: ; 0x02072ED0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0
	cmp r6, #0
	bls _02072F00
_02072EDE:
	mov r0, #8
	add r1, r7, #0
	bl sub_02023790
	mov r1, #0xc
	mul r1, r4
	add r1, r5, r1
	str r0, [r1, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02072EB8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02072EDE
_02072F00:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02072ED0

	thumb_func_start sub_02072F04
sub_02072F04: ; 0x02072F04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _02072F2C ; =0x00000000
	beq _02072F2A
	mov r7, #0xc
_02072F10:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02072F20
	bl sub_020237BC
_02072F20:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02072F10
_02072F2A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02072F2C: .word 0x00000000
	thumb_func_end sub_02072F04

	thumb_func_start sub_02072F30
sub_02072F30: ; 0x02072F30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	bl sub_02028430
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [sp, #4]
	str r0, [r6, r1]
	add r0, r4, #0
	bl sub_0207D990
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r5, #0
	bl sub_0202818C
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x1b
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x1c
	mov r4, #0
	str r0, [sp, #8]
_02072F6E:
	ldr r0, [sp, #4]
	mov r1, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020284CC
	mov r0, #0xc
	mul r0, r4
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	add r5, r1, r0
	ldrb r1, [r6, #0x19]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r1, r4, #0
	add r0, r0, r2
	str r0, [sp]
	add r0, r5, #0
	bl sub_02072EB8
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	strb r4, [r1, r0]
	add r0, r7, #0
	bl sub_0202817C
	cmp r0, #0
	beq _02072FF4
	mov r0, #1
	strb r0, [r5, #1]
	add r0, r7, #0
	bl sub_02028310
	strb r0, [r5, #4]
	add r0, r7, #0
	bl sub_02028314
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	bl sub_0207D310
	strh r0, [r5, #6]
	add r0, r7, #0
	bl sub_0202830C
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02023D28
	ldrb r0, [r6, #0x19]
	strb r0, [r5, #2]
	ldrb r1, [r5]
	ldr r0, [sp]
	strb r1, [r0, #3]
	ldrb r0, [r5]
	strb r0, [r6, #0x19]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0xff
	bne _02072FF4
	strb r4, [r6, #0x1a]
_02072FF4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x14
	blo _02072F6E
	ldrb r1, [r6, #0x19]
	ldrb r3, [r6, #0x1a]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r1, r6, r2
	strb r3, [r1, #0x1f]
	ldrb r1, [r6, #0x1a]
	ldrb r2, [r6, #0x19]
	mul r0, r1
	add r0, r6, r0
	strb r2, [r0, #0x1e]
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02072F30

	thumb_func_start sub_02073020
sub_02073020: ; 0x02073020
	push {r3, r4, r5, r6}
	add r2, r1, #0
	mov r3, #0xc
	add r1, r0, #0
	mul r2, r3
	add r1, #0x1c
	add r1, r1, r2
	ldrb r4, [r1, #2]
	ldrb r6, [r1, #3]
	add r5, r4, #0
	mul r5, r3
	add r4, r0, r5
	strb r6, [r4, #0x1f]
	ldrb r4, [r1, #2]
	ldrb r1, [r1, #3]
	mul r3, r1
	add r1, r0, r3
	strb r4, [r1, #0x1e]
	add r1, r0, r2
	mov r3, #0
	strb r3, [r1, #0x1d]
	ldr r2, _0207305C ; =0x0000013B
	mov r1, #0x30
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0207305C: .word 0x0000013B
	thumb_func_end sub_02073020

	thumb_func_start sub_02073060
sub_02073060: ; 0x02073060
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r1, [r5, #0x18]
	add r2, r5, #0
	mov r0, #0xc
	add r2, #0x1c
	mul r0, r1
	add r4, r2, r0
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D55C
	add r6, r0, #0
	beq _02073094
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D570
_02073094:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r2, [r5, #0x18]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02028470
	ldrb r1, [r5, #0x18]
	add r0, r5, #0
	bl sub_02073020
	ldrb r1, [r5, #0x18]
	add r0, r4, #0
	bl sub_02072EB8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02073060

	thumb_func_start sub_020730B8
sub_020730B8: ; 0x020730B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldrb r1, [r5, #0x18]
	add r6, r2, #0
	add r2, r5, #0
	mov r0, #0xc
	add r2, #0x1c
	mul r0, r1
	add r4, r2, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0207312E
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	bl sub_020977E4
	cmp r6, #0
	beq _0207311E
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D55C
	cmp r0, #0
	beq _0207311E
	mov r0, #0x1b
	lsl r0, r0, #4
	ldrh r1, [r4, #6]
	ldr r0, [r5, r0]
	ldr r3, [r5, #0]
	mov r2, #1
	bl sub_0207D570
_0207311E:
	ldrb r1, [r5, #0x18]
	add r0, r5, #0
	bl sub_02073020
	ldrb r1, [r5, #0x18]
	add r0, r4, #0
	bl sub_02072EB8
_0207312E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020730B8

	thumb_func_start sub_02073130
sub_02073130: ; 0x02073130
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r2, #0x66
	ldr r3, [r6, #0]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r2, [r6, #0]
	mov r0, #1
	mov r1, #0x80
	bl sub_0200B368
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r6, r1]
	ldr r1, [r6, #0]
	mov r0, #0x80
	bl sub_02023790
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #8
	ldr r0, [r6, r1]
	mov r1, #4
	bl sub_0200B1EC
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	add r7, r1, #4
_0207318C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #6
	bl sub_0200B1EC
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0207318C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02073130

	thumb_func_start sub_020731A4
sub_020731A4: ; 0x020731A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x12
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_020731B0:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _020731B0
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020731A4

	thumb_func_start sub_020731F4
sub_020731F4: ; 0x020731F4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203D170
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldrh r0, [r4, #0x14]
	ldr r2, _02073288 ; =0x000003E2
	mov r3, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	mov r1, #3
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0207328C ; =0x000003D9
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
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
	ldr r0, _02073290 ; =0x0000036D
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, r1]
	add r1, #0x14
	add r1, r4, r1
	mov r2, #3
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02073288: .word 0x000003E2
_0207328C: .word 0x000003D9
_02073290: .word 0x0000036D
	thumb_func_end sub_020731F4

	thumb_func_start sub_02073294
sub_02073294: ; 0x02073294
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	mov r0, #0x17
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end sub_02073294

	thumb_func_start sub_020732C4
sub_020732C4: ; 0x020732C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _020732E6
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, _0207338C ; =0x000003E2
	add r0, r5, r0
	mov r1, #1
	mov r3, #0xa
	bl sub_0200E060
_020732E6:
	mov r1, #0xd8
	str r1, [sp]
	mov r0, #0x20
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r5, r1
	mov r1, #0xff
	add r3, r2, #0
	bl sub_0201AE78
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	cmp r4, #0
	bne _02073354
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020237E8
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r3, [r5, #0x18]
	mov r2, #0xc
	ldr r0, [r5, r0]
	mul r2, r3
	add r2, r5, r2
	ldr r2, [r2, #0x24]
	mov r1, #0
	mov r3, #2
	bl sub_0200B48C
	mov r2, #0x11
	lsl r2, r2, #4
	lsl r3, r4, #2
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r3, r5, r3
	add r2, #0x10
	ldr r1, [r5, r1]
	ldr r2, [r3, r2]
	bl sub_0200C388
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	b _0207335E
_02073354:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r2, [r1, r0]
_0207335E:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02073390 ; =0x0001020F
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	str r3, [sp, #0xc]
	bl sub_0201D78C
	mov r1, #0x4e
	lsl r1, r1, #2
	strb r0, [r5, r1]
	add r1, #0x4c
	add r0, r5, r1
	bl sub_0201A954
	ldr r0, _02073394 ; =0x00000139
	strb r7, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207338C: .word 0x000003E2
_02073390: .word 0x0001020F
_02073394: .word 0x00000139
	thumb_func_end sub_020732C4

	thumb_func_start sub_02073398
sub_02073398: ; 0x02073398
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	pop {r4, pc}
	thumb_func_end sub_02073398

	thumb_func_start sub_020733B4
sub_020733B4: ; 0x020733B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _020733CA
	mov r0, #0
	pop {r4, pc}
_020733CA:
	ldr r0, _020733DC ; =0x00000139
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _020733D8
	add r0, r4, #0
	bl sub_02073398
_020733D8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020733DC: .word 0x00000139
	thumb_func_end sub_020733B4

	thumb_func_start sub_020733E0
sub_020733E0: ; 0x020733E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02073404 ; =0x020F04E4
	str r0, [sp]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _02073408 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02073404: .word 0x020F04E4
_02073408: .word 0x000003D9
	thumb_func_end sub_020733E0

	thumb_func_start sub_0207340C
sub_0207340C: ; 0x0207340C
	push {r3, lr}
	add r1, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r1, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0207342A
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207342E
	b _02073432
_0207342A:
	mov r0, #1
	pop {r3, pc}
_0207342E:
	mov r0, #0
	pop {r3, pc}
_02073432:
	add r0, r1, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207340C

	thumb_func_start sub_02073438
sub_02073438: ; 0x02073438
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _0207344A
	cmp r0, #1
	beq _02073468
	b _0207347A
_0207344A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _0207347A
_02073468:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0207347A
	mov r0, #0
	strh r0, [r4, #0x12]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0207347A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02073438

	thumb_func_start sub_02073480
sub_02073480: ; 0x02073480
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _02073494
	cmp r0, #1
	beq _020734A6
	cmp r0, #2
	beq _020734D4
	b _020734EE
_02073494:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509D4
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _020734EE
_020734A6:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509DC
	cmp r0, #0
	beq _020734EE
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	bl ov6_02247078
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	bl ov6_022470E8
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _020734EE
_020734D4:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x5a
	ldr r0, [r0, #0x54]
	bl ov5_021D42F0
	cmp r0, #0
	beq _020734EE
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #1
	pop {r4, pc}
_020734EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073480

	thumb_func_start sub_020734F4
sub_020734F4: ; 0x020734F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl ov5_021D4D68
	cmp r4, #0
	bne _02073512
	add r0, r5, #0
	bl sub_02072DB8
	b _02073518
_02073512:
	add r0, r5, #0
	bl sub_02072E4C
_02073518:
	add r0, r5, #0
	bl sub_02073294
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020734F4

	thumb_func_start sub_02073524
sub_02073524: ; 0x02073524
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x12]
	add r6, r1, #0
	cmp r0, #0
	beq _02073536
	cmp r0, #1
	beq _020735C8
	b _020735DE
_02073536:
	ldr r0, [r5, #0]
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207A268
	str r0, [r4, #0]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_0207D990
	str r0, [r4, #4]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203D174
	bl sub_02025E44
	str r0, [r4, #0xc]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	bl sub_02028430
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r6, [r0]
	ldrb r1, [r5, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r0, r5, r0
	ldrh r0, [r0, #0x22]
	cmp r6, #0xb
	strh r0, [r4, #0x24]
	bne _020735AC
	ldrb r1, [r5, #0x17]
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
_020735AC:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _020735E4 ; =0x020F1E88
	add r2, r4, #0
	bl sub_0203CD84
	mov r0, #0x6d
	lsl r0, r0, #2
	str r4, [r5, r0]
	ldrh r0, [r5, #0x12]
	add r0, r0, #1
	strh r0, [r5, #0x12]
	b _020735DE
_020735C8:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020509B4
	cmp r0, #0
	bne _020735DE
	mov r0, #0
	strh r0, [r5, #0x12]
	mov r0, #1
	pop {r4, r5, r6, pc}
_020735DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020735E4: .word 0x020F1E88
	thumb_func_end sub_02073524

	thumb_func_start sub_020735E8
sub_020735E8: ; 0x020735E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	beq _020735F8
	cmp r0, #1
	beq _0207363A
	b _02073690
_020735F8:
	ldrb r2, [r4, #0x18]
	mov r0, #0xc
	mul r0, r2
	add r3, r4, r0
	ldrb r0, [r3, #0x1d]
	cmp r0, #0
	beq _02073616
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, #0]
	mov r1, #0
	bl sub_0203D94C
	b _0207362C
_02073616:
	ldr r0, [r4, #0]
	add r3, #0x21
	str r0, [sp]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r2, [r4, #0x17]
	ldrb r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0203D920
_0207362C:
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _02073690
_0207363A:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020509B4
	cmp r0, #0
	bne _02073690
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097728
	cmp r0, #0
	beq _0207367C
	ldrb r0, [r4, #0x18]
	mov r2, #0xc
	mov r3, #1
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	strb r3, [r0, #0x1d]
	ldrb r3, [r4, #0x18]
	mov r0, #0x6a
	lsl r0, r0, #2
	mul r2, r3
	add r2, r4, r2
	ldrb r2, [r2, #0x1c]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0209772C
	mov r5, #2
	b _0207367E
_0207367C:
	mov r5, #1
_0207367E:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02097770
	mov r0, #0
	strh r0, [r4, #0x12]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02073690:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020735E8

	thumb_func_start sub_02073694
sub_02073694: ; 0x02073694
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020736B2
	cmp r1, #1
	beq _020736C2
	b _020736D4
_020736B2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020722AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020736D4
_020736C2:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020736CC
	mov r0, #0
	pop {r3, r4, r5, pc}
_020736CC:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020736D4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073694

	thumb_func_start sub_020736D8
sub_020736D8: ; 0x020736D8
	push {r4, lr}
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	ldr r0, [r4, #0x10]
	ldr r1, _020736FC ; =sub_02073694
	bl sub_02050944
	pop {r4, pc}
	nop
_020736FC: .word sub_02073694
	thumb_func_end sub_020736D8

	thumb_func_start sub_02073700
sub_02073700: ; 0x02073700
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	bl sub_02025E38
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202C878
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0202D750
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xe4
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r7, #0
	add r1, #0xa8
	mov r2, #0x10
	bl sub_020C4DB0
	add r0, r4, #0
	bl sub_02025F20
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1, #0]
	ldr r0, _02073830 ; =0x020E4C40
	ldrb r1, [r0]
	add r0, r7, #0
	add r0, #0xb8
	strb r1, [r0]
	ldr r0, _02073834 ; =0x020E4C44
	ldrb r1, [r0]
	add r0, r7, #0
	add r0, #0xb9
	strb r1, [r0]
	add r0, r5, #0
	bl sub_0202C8C0
	add r1, r7, #0
	add r1, #0xba
	strb r0, [r1]
	add r0, r5, #0
	bl sub_0202C8C4
	add r1, r7, #0
	add r1, #0xbb
	strb r0, [r1]
	add r0, r4, #0
	bl sub_02025F30
	add r1, r7, #0
	add r1, #0xc8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r1]
	mov r2, #2
	lsr r0, r0, #0x1e
	bic r1, r2
	orr r1, r0
	add r0, r7, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0xc8
	ldrb r0, [r0]
	mov r2, #1
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bl sub_0205CA14
	add r1, r7, #0
	add r1, #0xc9
	strb r0, [r1]
	add r0, r7, #0
	mov r4, #0
	str r0, [sp, #8]
	add r0, #0xca
	add r5, r4, #0
	str r0, [sp, #8]
_020737BC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D498
	ldr r1, [sp, #8]
	mov r2, #8
	add r1, r1, r5
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _020737BC
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D498
	add r1, r7, #0
	add r1, #0xc0
	mov r2, #8
	bl sub_020C4DB0
	ldr r0, [sp]
	cmp r0, #0
	bne _02073816
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #0
	bl sub_0202D414
	add r1, r7, #0
	add r1, #0xe2
	strh r0, [r1]
	add r0, r7, #0
	add r0, #0xe2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0207382C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0202D314
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02073816:
	ldr r0, [sp, #4]
	bl sub_0202D39C
	add r1, r7, #0
	add r1, #0xe2
	strh r0, [r1]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0202D314
_0207382C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02073830: .word 0x020E4C40
_02073834: .word 0x020E4C44
	thumb_func_end sub_02073700

	thumb_func_start sub_02073838
sub_02073838: ; 0x02073838
	mov r2, #0x14
	mov r1, #0
_0207383C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0207383C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02073838

	thumb_func_start sub_02073848
sub_02073848: ; 0x02073848
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02073838
	str r4, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020B3C0C
	str r0, [r5, #8]
	cmp r0, #0
	beq _0207388E
	add r2, r0, #0
	add r2, #8
	beq _02073882
	ldrb r1, [r0, #9]
	cmp r6, r1
	bhs _02073882
	ldrh r3, [r0, #0xe]
	add r1, r2, r3
	ldrh r2, [r2, r3]
	add r1, r1, #4
	add r3, r2, #0
	mul r3, r6
	add r1, r1, r3
	b _02073884
_02073882:
	mov r1, #0
_02073884:
	cmp r1, #0
	beq _0207388E
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02073890
_0207388E:
	mov r0, #0
_02073890:
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_020B3C1C
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02073848

	thumb_func_start sub_0207389C
sub_0207389C: ; 0x0207389C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02073848
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207389C

	thumb_func_start sub_020738C0
sub_020738C0: ; 0x020738C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0201CBCC
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl sub_020AF1E8
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020738C0

	thumb_func_start sub_020738D8
sub_020738D8: ; 0x020738D8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020738C0
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020738D8

	thumb_func_start sub_020738EC
sub_020738EC: ; 0x020738EC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02073904 ; =sub_020738D8
	ldr r2, _02073908 ; =0x0000FFFF
	bl sub_0200DA04
	cmp r0, #0
	bne _02073900
	bl sub_02022974
_02073900:
	pop {r3, pc}
	nop
_02073904: .word sub_020738D8
_02073908: .word 0x0000FFFF
	thumb_func_end sub_020738EC

	thumb_func_start sub_0207390C
sub_0207390C: ; 0x0207390C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02073918
	bl sub_020181C4
_02073918:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207390C

	thumb_func_start sub_0207391C
sub_0207391C: ; 0x0207391C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02073950
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020AE9B8
	ldr r1, _02073954 ; =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02073954 ; =0x02100DF0
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0x10]
	bl sub_020AEA70
	ldr r1, _02073958 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r4, #0x10]
_02073950:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02073954: .word 0x02100DF0
_02073958: .word 0x02100DF8
	thumb_func_end sub_0207391C

	thumb_func_start sub_0207395C
sub_0207395C: ; 0x0207395C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207391C
	add r0, r4, #0
	bl sub_0207390C
	add r0, r4, #0
	bl sub_02073838
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207395C

	thumb_func_start sub_02073974
sub_02073974: ; 0x02073974
	ldr r3, _0207397C ; =sub_020D5124
	mov r1, #0
	mov r2, #0x24
	bx r3
	; .align 2, 0
_0207397C: .word sub_020D5124
	thumb_func_end sub_02073974

	thumb_func_start sub_02073980
sub_02073980: ; 0x02073980
	push {r4, lr}
	add r4, r0, #0
	bl sub_020739D8
	ldr r1, [r4, #0]
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073980

	thumb_func_start sub_02073994
sub_02073994: ; 0x02073994
	push {r4, lr}
	add r4, r0, #0
	bl sub_020739D8
	ldr r1, [r4, #0]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073994

	thumb_func_start sub_020739A8
sub_020739A8: ; 0x020739A8
	ldr r3, _020739B0 ; =sub_02073994
	ldr r1, [r1, #8]
	bx r3
	nop
_020739B0: .word sub_02073994
	thumb_func_end sub_020739A8

	thumb_func_start sub_020739B4
sub_020739B4: ; 0x020739B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02073980
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020739B4

	thumb_func_start sub_020739D8
sub_020739D8: ; 0x020739D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02073974
	add r0, r4, #0
	mov r1, #0
	str r4, [r5, #8]
	bl sub_020B3C5C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020739D8

	thumb_func_start sub_020739F0
sub_020739F0: ; 0x020739F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #1
	tst r0, r1
	beq _02073A0A
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r1, [r4, #0]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0]
_02073A0A:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020739F0

	thumb_func_start sub_02073A14
sub_02073A14: ; 0x02073A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, #0x14
	mov r2, #4
	bl sub_020182CC
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x14
	add r2, r4, #0
	bl sub_020B2CB4
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _02073A3A
	bl sub_02022974
_02073A3A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073A14

	thumb_func_start sub_02073A3C
sub_02073A3C: ; 0x02073A3C
	ldr r3, _02073A44 ; =sub_02073A14
	ldr r1, [r1, #0xc]
	bx r3
	nop
_02073A44: .word sub_02073A14
	thumb_func_end sub_02073A3C

	thumb_func_start sub_02073A48
sub_02073A48: ; 0x02073A48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	add r2, r4, #0
	bl sub_020AE4F0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073A48

	thumb_func_start sub_02073A5C
sub_02073A5C: ; 0x02073A5C
	ldr r3, _02073A68 ; =sub_02073A48
	add r2, r1, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x10]
	bx r3
	nop
_02073A68: .word sub_02073A48
	thumb_func_end sub_02073A5C

	thumb_func_start sub_02073A6C
sub_02073A6C: ; 0x02073A6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	add r5, r0, #0
	bl sub_020739A8
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073A3C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073A5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02073A6C

	thumb_func_start sub_02073A90
sub_02073A90: ; 0x02073A90
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02073AA4
	add r0, #0x14
	bl sub_020B2CD8
	mov r0, #0
	str r0, [r4, #0x10]
_02073AA4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073A90

	thumb_func_start sub_02073AA8
sub_02073AA8: ; 0x02073AA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02073A90
	add r0, r4, #0
	bl sub_020739F0
	add r0, r4, #0
	bl sub_02073974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073AA8

	thumb_func_start sub_02073AC0
sub_02073AC0: ; 0x02073AC0
	push {r3, r4, r5, r6}
	ldr r3, [r0, #0x10]
	ldr r6, [r0, #4]
	ldr r3, [r3, #8]
	mov r4, #0
	ldrh r3, [r3, #4]
	add r6, r6, r1
	add r5, r4, #0
	str r6, [r0, #4]
	lsl r3, r3, #0xc
	cmp r1, #0
	ldr r1, [r0, #4]
	ble _02073AEE
	cmp r1, r3
	blt _02073B00
	mov r5, #1
	cmp r2, #1
	bne _02073AEA
	sub r1, r1, r3
	str r1, [r0, #4]
	b _02073B00
_02073AEA:
	str r3, [r0, #4]
	b _02073B00
_02073AEE:
	cmp r1, #0
	bgt _02073B00
	mov r5, #1
	cmp r2, #1
	bne _02073AFE
	add r1, r1, r3
	str r1, [r0, #4]
	b _02073B00
_02073AFE:
	str r4, [r0, #4]
_02073B00:
	ldr r2, [r0, #4]
	ldr r1, [r0, #0x10]
	cmp r5, #1
	str r2, [r1, #0]
	ldr r2, [r0, #0]
	bne _02073B14
	mov r1, #2
	orr r1, r2
	str r1, [r0, #0]
	b _02073B1A
_02073B14:
	mov r1, #2
	bic r2, r1
	str r2, [r0, #0]
_02073B1A:
	add r0, r5, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02073AC0

	thumb_func_start sub_02073B20
sub_02073B20: ; 0x02073B20
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02073B20

	thumb_func_start sub_02073B24
sub_02073B24: ; 0x02073B24
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02073B24

	thumb_func_start sub_02073B28
sub_02073B28: ; 0x02073B28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02073B36
	bl sub_02022974
_02073B36:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	pop {r4, pc}
	thumb_func_end sub_02073B28

	thumb_func_start sub_02073B40
sub_02073B40: ; 0x02073B40
	ldr r1, [r0, #0]
	mov r0, #2
	tst r0, r1
	beq _02073B4C
	mov r0, #1
	bx lr
_02073B4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02073B40

	thumb_func_start sub_02073B50
sub_02073B50: ; 0x02073B50
	ldr r3, _02073B58 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x54
	bx r3
	; .align 2, 0
_02073B58: .word sub_020D5124
	thumb_func_end sub_02073B50

	thumb_func_start sub_02073B5C
sub_02073B5C: ; 0x02073B5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02073B50
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020AE608
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073B5C

	thumb_func_start sub_02073B70
sub_02073B70: ; 0x02073B70
	ldr r3, _02073B78 ; =sub_02073B5C
	ldr r1, [r1, #0xc]
	bx r3
	nop
_02073B78: .word sub_02073B5C
	thumb_func_end sub_02073B70

	thumb_func_start sub_02073B7C
sub_02073B7C: ; 0x02073B7C
	ldr r3, _02073B80 ; =sub_020AE77C
	bx r3
	; .align 2, 0
_02073B80: .word sub_020AE77C
	thumb_func_end sub_02073B7C

	thumb_func_start sub_02073B84
sub_02073B84: ; 0x02073B84
	ldr r3, _02073B8C ; =sub_02073B7C
	ldr r1, [r1, #0x10]
	bx r3
	nop
_02073B8C: .word sub_02073B7C
	thumb_func_end sub_02073B84

	thumb_func_start sub_02073B90
sub_02073B90: ; 0x02073B90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02073B70
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073B84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073B90

	thumb_func_start sub_02073BA4
sub_02073BA4: ; 0x02073BA4
	push {r4, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl sub_0201CA74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073BA4

	thumb_func_start sub_02073BB4
sub_02073BB4: ; 0x02073BB4
	push {r3, lr}
	ldr r2, _02073BC0 ; =0x020F0544
	ldr r3, _02073BC4 ; =0x020F0550
	bl sub_02073BA4
	pop {r3, pc}
	; .align 2, 0
_02073BC0: .word 0x020F0544
_02073BC4: .word 0x020F0550
	thumb_func_end sub_02073BB4

	thumb_func_start sub_02073BC8
sub_02073BC8: ; 0x02073BC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	add r0, sp, #0
	bl sub_0201E2E0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, sp, #0
	bl sub_02073BA4
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02073BC8

	thumb_func_start sub_02073BF0
sub_02073BF0: ; 0x02073BF0
	push {r4, r5, lr}
	sub sp, #0x24
	add r3, r2, #0
	add r4, r1, #0
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	add r5, r0, #0
	ldrh r3, [r3, #4]
	add r0, sp, #0
	bl sub_0201E2E0
	ldr r2, _02073C18 ; =0x020F0544
	add r0, r5, #0
	add r1, r4, #0
	add r3, sp, #0
	bl sub_02073BA4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02073C18: .word 0x020F0544
	thumb_func_end sub_02073BF0

	thumb_func_start sub_02073C1C
sub_02073C1C: ; 0x02073C1C
	push {r4, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl sub_0201CAB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073C1C

	thumb_func_start sub_02073C2C
sub_02073C2C: ; 0x02073C2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xec
	bl sub_020C4BB8
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	pop {r4, pc}
	thumb_func_end sub_02073C2C

	thumb_func_start sub_02073C54
sub_02073C54: ; 0x02073C54
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x88
	bl sub_020C4BB8
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, pc}
	thumb_func_end sub_02073C54

	thumb_func_start sub_02073C70
sub_02073C70: ; 0x02073C70
	mov r0, #0xec
	bx lr
	thumb_func_end sub_02073C70

	thumb_func_start sub_02073C74
sub_02073C74: ; 0x02073C74
	push {r4, lr}
	mov r1, #0xec
	bl sub_02018144
	add r4, r0, #0
	bl sub_02073C2C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073C74

	thumb_func_start sub_02073C88
sub_02073C88: ; 0x02073C88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r4, #0
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02073CCE
	lsl r0, r0, #0x1e
	mov r4, #1
	lsr r0, r0, #0x1f
	beq _02073CA2
	bl sub_02022974
_02073CA2:
	ldrh r1, [r5, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	mov r0, #2
	orr r0, r1
	strh r0, [r5, #4]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
_02073CCE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02073C88

	thumb_func_start sub_02073CD4
sub_02073CD4: ; 0x02073CD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r2, [r5, #4]
	mov r4, #0
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02073D1C
	cmp r1, #1
	bne _02073D1C
	mov r0, #1
	bic r2, r0
	strh r2, [r5, #4]
	ldrh r1, [r5, #4]
	mov r0, #2
	mov r4, #1
	bic r1, r0
	strh r1, [r5, #4]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02073D1C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073CD4

	thumb_func_start sub_02073D20
sub_02073D20: ; 0x02073D20
	push {r4, lr}
	add r2, r0, #0
	ldrh r1, [r2, #4]
	mov r4, #0
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	bne _02073D42
	mov r0, #2
	orr r0, r1
	strh r0, [r2, #4]
	add r0, r2, #0
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	mov r4, #1
	bl sub_02078234
_02073D42:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073D20

	thumb_func_start sub_02073D48
sub_02073D48: ; 0x02073D48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r2, [r5, #4]
	mov r4, #0
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02073D7C
	cmp r1, #1
	bne _02073D7C
	mov r0, #2
	bic r2, r0
	add r0, r5, #0
	strh r2, [r5, #4]
	add r0, #8
	mov r1, #0x80
	mov r4, #1
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02073D7C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073D48

	thumb_func_start sub_02073D80
sub_02073D80: ; 0x02073D80
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x50]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x54]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r0, [sp, #8]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	bl sub_02073E18
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0x64
	mov r2, #0
	bl sub_0207822C
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	mov r1, #0xa1
	add r2, sp, #0x48
	bl sub_02074B30
	mov r0, #0
	bl sub_0202818C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0xa2
	add r2, sp, #0x10
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #0x14
	mov r2, #0x18
	bl sub_020C4BB8
	add r0, r5, #0
	mov r1, #0xab
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add sp, #0x2c
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02073D80

	thumb_func_start sub_02073E18
sub_02073E18: ; 0x02073E18
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02073C54
	add r0, r5, #0
	bl sub_02073D20
	str r0, [sp]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02073E42
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [sp, #0x34]
_02073E42:
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0x34
	bl sub_02074C60
	ldr r0, [sp, #0x38]
	cmp r0, #2
	bne _02073E8A
	ldr r7, _02074038 ; =0xFFFF0000
	add r6, r7, #0
_02073E56:
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	add r3, r4, #0
	orr r3, r0
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	add r0, r1, #0
	and r0, r7
	lsr r1, r0, #0x10
	add r0, r3, #0
	str r3, [sp, #0x3c]
	and r0, r6
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	eor r0, r3
	eor r0, r1
	eor r0, r2
	cmp r0, #8
	blo _02073E56
	b _02073E92
_02073E8A:
	cmp r0, #1
	beq _02073E92
	mov r0, #0
	str r0, [sp, #0x3c]
_02073E92:
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #0x3c
	bl sub_02074C60
	ldr r2, _0207403C ; =0x020E4C44
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #5
	add r2, sp, #0x24
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074C60
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl sub_02075AD0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	add r2, sp, #8
	bl sub_02074C60
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	bl sub_020759F0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x9c
	add r2, sp, #0x28
	bl sub_02074C60
	ldr r2, _02074040 ; =0x020E4C40
	add r0, r5, #0
	mov r1, #0x7a
	bl sub_02074C60
	mov r0, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x9b
	add r2, sp, #8
	bl sub_02074C60
	ldr r0, [sp, #0x2c]
	cmp r0, #0x20
	bge _02073F48
	add r0, r5, #0
	mov r1, #0x46
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x47
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x48
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x49
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x4a
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x4b
	add r2, sp, #0x2c
	bl sub_02074C60
	b _02073FCC
_02073F48:
	bl sub_0201D2E8
	mov r1, #0x1f
	str r0, [sp, #8]
	and r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x46
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x3e
	ldr r1, [sp, #8]
	lsl r0, r0, #4
	and r0, r1
	lsr r0, r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x47
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x1f
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	and r0, r1
	lsr r0, r0, #0xa
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x48
	add r2, sp, #4
	bl sub_02074C60
	bl sub_0201D2E8
	mov r1, #0x1f
	str r0, [sp, #8]
	and r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x49
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x3e
	ldr r1, [sp, #8]
	lsl r0, r0, #4
	and r0, r1
	lsr r0, r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x4a
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x1f
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	and r0, r1
	lsr r0, r0, #0xa
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x4b
	add r2, sp, #4
	bl sub_02074C60
_02073FCC:
	ldr r0, [sp, #0x24]
	mov r1, #0x18
	bl sub_020759F0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r1, #0x19
	bl sub_020759F0
	str r0, [sp, #4]
	cmp r0, #0
	beq _02074004
	ldr r1, [sp, #0x34]
	mov r0, #1
	tst r0, r1
	beq _02073FF8
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #4
	bl sub_02074C60
	b _0207400E
_02073FF8:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	b _0207400E
_02074004:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
_0207400E:
	add r0, r5, #0
	bl sub_02075D74
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6f
	add r2, sp, #8
	bl sub_02074C60
	add r0, r5, #0
	bl sub_02077020
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02074038: .word 0xFFFF0000
_0207403C: .word 0x020E4C44
_02074040: .word 0x020E4C40
	thumb_func_end sub_02073E18

	thumb_func_start sub_02074044
sub_02074044: ; 0x02074044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x30]
	add r6, r0, #0
	add r7, r1, #0
_02074052:
	bl sub_0201D2E8
	add r5, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r5, r0
	add r0, r5, #0
	bl sub_02075BFC
	cmp r4, r0
	bne _02074052
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02073D80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02074044

	thumb_func_start sub_02074088
sub_02074088: ; 0x02074088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x10]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x18]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	cmp r0, #0
	beq _02074100
	cmp r0, #0x1d
	bhs _02074100
	sub r0, r0, #1
	str r0, [sp, #0x20]
_020740A8:
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r4, r0
	mov r3, #3
	lsl r3, r3, #0x10
	and r3, r4
	mov r0, #3
	add r2, r4, #0
	and r2, r0
	lsl r0, r0, #8
	and r0, r4
	lsr r1, r0, #6
	mov r0, #3
	lsl r0, r0, #0x18
	and r0, r4
	lsr r0, r0, #0x12
	lsr r3, r3, #0xc
	orr r0, r3
	orr r0, r1
	orr r0, r2
	mov r1, #0x1c
	bl sub_020E2178
	lsl r0, r1, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl sub_02075BFC
	cmp r7, r0
	bne _020740A8
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_02075DAC
	cmp r6, r0
	bne _020740A8
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bne _020740A8
	b _0207410C
_02074100:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074128
	add r4, r0, #0
_0207410C:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02073D80
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02074088

	thumb_func_start sub_02074128
sub_02074128: ; 0x02074128
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02074154
	cmp r0, #0xfe
	beq _02074154
	cmp r0, #0xff
	beq _02074154
	cmp r5, #0
	bne _02074154
	mov r1, #0x19
	bl sub_020E1F6C
	add r1, r0, #1
	mov r0, #0x19
	mul r0, r1
	add r4, r0, r4
_02074154:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02074128

	thumb_func_start sub_02074158
sub_02074158: ; 0x02074158
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #0x10
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x28]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02073D80
	add r0, r4, #0
	mov r1, #0xaf
	add r2, sp, #0x24
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add sp, #0x10
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02074158

	thumb_func_start sub_0207418C
sub_0207418C: ; 0x0207418C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02073C88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02075B38
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa1
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020741B8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073CD4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207418C

	thumb_func_start sub_020741B8
sub_020741B8: ; 0x020741B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	bl sub_02073C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	mov r0, #0
	mov r1, #0x2c
	bl sub_02018144
	add r6, r0, #0
	ldr r1, [sp, #0x38]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_02078208
	mov r0, #0x49
	lsl r0, r0, #2
	cmp r7, r0
	bne _020742B0
	mov r0, #1
	b _020742D2
_020742B0:
	ldr r0, [sp, #0x34]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x34]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6]
	lsl r2, r1, #1
	ldr r1, [sp, #0x30]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r4, r0
	add r0, #0xa
_020742D2:
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xa4
	add r2, sp, #0x50
	bl sub_02074B30
	ldr r0, [sp, #0x14]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #1]
	lsl r2, r1, #1
	ldr r1, [sp, #0x28]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r0, #5
	str r0, [sp, #0x4c]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x4c]
	mov r2, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #0xa5
	add r2, sp, #0x4c
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #2]
	lsl r2, r1, #1
	ldr r1, [sp, #0x24]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r0, #5
	str r0, [sp, #0x48]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x48]
	mov r2, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x48]
	add r0, r5, #0
	mov r1, #0xa6
	add r2, sp, #0x48
	bl sub_02074B30
	ldr r0, [sp, #0xc]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #3]
	lsl r2, r1, #1
	ldr r1, [sp, #0x20]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r0, #5
	str r0, [sp, #0x44]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x44]
	mov r2, #3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x44]
	add r0, r5, #0
	mov r1, #0xa7
	add r2, sp, #0x44
	bl sub_02074B30
	ldr r0, [sp, #8]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #8]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #4]
	lsl r2, r1, #1
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r0, #5
	str r0, [sp, #0x40]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x40]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x40]
	add r0, r5, #0
	mov r1, #0xa8
	add r2, sp, #0x40
	bl sub_02074B30
	ldr r0, [sp, #4]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #4]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #5]
	lsl r2, r1, #1
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r0, #5
	str r0, [sp, #0x3c]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x3c]
	mov r2, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #0xa9
	add r2, sp, #0x3c
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020181C4
	ldr r1, [sp, #0x54]
	cmp r1, #0
	bne _02074430
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02074454
_02074430:
	mov r0, #0x49
	lsl r0, r0, #2
	cmp r7, r0
	bne _0207443E
	mov r0, #1
	str r0, [sp, #0x54]
	b _02074454
_0207443E:
	cmp r1, #0
	bne _02074448
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x54]
	b _02074454
_02074448:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	sub r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x54]
_02074454:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02074464
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #0x54
	bl sub_02074B30
_02074464:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073CD4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020741B8

	thumb_func_start sub_02074470
sub_02074470: ; 0x02074470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020744B8
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020744B8
	cmp r0, r1
	beq _020744B0
	bl sub_02022974
_020744B0:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
_020744B8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020744E8
	add r4, r0, #0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020744E4
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020744E4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02074470

	thumb_func_start sub_020744E8
sub_020744E8: ; 0x020744E8
	push {r3, lr}
	add r3, r1, #0
	sub r3, #0xa0
	cmp r3, #0xb
	bhi _0207456A
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_020744FE: ; jump table
	.short _02074516 - _020744FE - 2 ; case 0
	.short _0207451C - _020744FE - 2 ; case 1
	.short _02074522 - _020744FE - 2 ; case 2
	.short _02074528 - _020744FE - 2 ; case 3
	.short _0207452E - _020744FE - 2 ; case 4
	.short _02074534 - _020744FE - 2 ; case 5
	.short _0207453A - _020744FE - 2 ; case 6
	.short _02074540 - _020744FE - 2 ; case 7
	.short _02074546 - _020744FE - 2 ; case 8
	.short _0207454C - _020744FE - 2 ; case 9
	.short _02074552 - _020744FE - 2 ; case 10
	.short _0207455E - _020744FE - 2 ; case 11
_02074516:
	add r0, #0x88
	ldr r0, [r0, #0]
	pop {r3, pc}
_0207451C:
	add r0, #0x8c
	ldrb r0, [r0]
	pop {r3, pc}
_02074522:
	add r0, #0x8d
	ldrb r0, [r0]
	pop {r3, pc}
_02074528:
	add r0, #0x8e
	ldrh r0, [r0]
	pop {r3, pc}
_0207452E:
	add r0, #0x90
	ldrh r0, [r0]
	pop {r3, pc}
_02074534:
	add r0, #0x92
	ldrh r0, [r0]
	pop {r3, pc}
_0207453A:
	add r0, #0x94
	ldrh r0, [r0]
	pop {r3, pc}
_02074540:
	add r0, #0x96
	ldrh r0, [r0]
	pop {r3, pc}
_02074546:
	add r0, #0x98
	ldrh r0, [r0]
	pop {r3, pc}
_0207454C:
	add r0, #0x9a
	ldrh r0, [r0]
	pop {r3, pc}
_02074552:
	add r0, #0x9c
	add r1, r2, #0
	bl sub_020281A0
	mov r0, #1
	pop {r3, pc}
_0207455E:
	add r0, #0xd4
	add r1, r2, #0
	bl sub_0202CA10
	mov r0, #1
	pop {r3, pc}
_0207456A:
	bl sub_020745D0
	pop {r3, pc}
	thumb_func_end sub_020744E8

	thumb_func_start sub_02074570
sub_02074570: ; 0x02074570
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _020745AC
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020745AC
	cmp r0, r1
	beq _020745A4
	bl sub_02022974
_020745A4:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
_020745AC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020745D0
	add r4, r0, #0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _020745CC
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020745CC:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02074570

	thumb_func_start sub_020745D0
sub_020745D0: ; 0x020745D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r1, r0, #0
	mov r4, #0
	str r2, [sp, #8]
	ldr r1, [r1, #0]
	str r0, [sp]
	add r2, r4, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0xb3
	bls _0207461A
	b _0207478E
_0207461A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074626: ; jump table
	.short _02074792 - _02074626 - 2 ; case 0
	.short _02074798 - _02074626 - 2 ; case 1
	.short _020747A2 - _02074626 - 2 ; case 2
	.short _020747AC - _02074626 - 2 ; case 3
	.short _020747B6 - _02074626 - 2 ; case 4
	.short _02074802 - _02074626 - 2 ; case 5
	.short _02074814 - _02074626 - 2 ; case 6
	.short _02074818 - _02074626 - 2 ; case 7
	.short _0207481C - _02074626 - 2 ; case 8
	.short _02074820 - _02074626 - 2 ; case 9
	.short _02074824 - _02074626 - 2 ; case 10
	.short _02074828 - _02074626 - 2 ; case 11
	.short _0207482C - _02074626 - 2 ; case 12
	.short _02074830 - _02074626 - 2 ; case 13
	.short _02074834 - _02074626 - 2 ; case 14
	.short _02074838 - _02074626 - 2 ; case 15
	.short _0207483C - _02074626 - 2 ; case 16
	.short _02074840 - _02074626 - 2 ; case 17
	.short _02074844 - _02074626 - 2 ; case 18
	.short _02074848 - _02074626 - 2 ; case 19
	.short _0207484C - _02074626 - 2 ; case 20
	.short _02074850 - _02074626 - 2 ; case 21
	.short _02074854 - _02074626 - 2 ; case 22
	.short _02074858 - _02074626 - 2 ; case 23
	.short _0207485C - _02074626 - 2 ; case 24
	.short _02074860 - _02074626 - 2 ; case 25
	.short _02074860 - _02074626 - 2 ; case 26
	.short _02074860 - _02074626 - 2 ; case 27
	.short _02074860 - _02074626 - 2 ; case 28
	.short _02074860 - _02074626 - 2 ; case 29
	.short _02074860 - _02074626 - 2 ; case 30
	.short _02074860 - _02074626 - 2 ; case 31
	.short _02074860 - _02074626 - 2 ; case 32
	.short _02074860 - _02074626 - 2 ; case 33
	.short _02074860 - _02074626 - 2 ; case 34
	.short _02074860 - _02074626 - 2 ; case 35
	.short _02074860 - _02074626 - 2 ; case 36
	.short _02074860 - _02074626 - 2 ; case 37
	.short _02074860 - _02074626 - 2 ; case 38
	.short _02074860 - _02074626 - 2 ; case 39
	.short _02074860 - _02074626 - 2 ; case 40
	.short _02074860 - _02074626 - 2 ; case 41
	.short _02074860 - _02074626 - 2 ; case 42
	.short _02074860 - _02074626 - 2 ; case 43
	.short _02074860 - _02074626 - 2 ; case 44
	.short _02074860 - _02074626 - 2 ; case 45
	.short _02074860 - _02074626 - 2 ; case 46
	.short _02074860 - _02074626 - 2 ; case 47
	.short _02074860 - _02074626 - 2 ; case 48
	.short _02074860 - _02074626 - 2 ; case 49
	.short _02074860 - _02074626 - 2 ; case 50
	.short _02074860 - _02074626 - 2 ; case 51
	.short _02074860 - _02074626 - 2 ; case 52
	.short _02074860 - _02074626 - 2 ; case 53
	.short _02074886 - _02074626 - 2 ; case 54
	.short _02074886 - _02074626 - 2 ; case 55
	.short _02074886 - _02074626 - 2 ; case 56
	.short _02074886 - _02074626 - 2 ; case 57
	.short _02074892 - _02074626 - 2 ; case 58
	.short _02074892 - _02074626 - 2 ; case 59
	.short _02074892 - _02074626 - 2 ; case 60
	.short _02074892 - _02074626 - 2 ; case 61
	.short _0207489E - _02074626 - 2 ; case 62
	.short _0207489E - _02074626 - 2 ; case 63
	.short _0207489E - _02074626 - 2 ; case 64
	.short _0207489E - _02074626 - 2 ; case 65
	.short _020748AA - _02074626 - 2 ; case 66
	.short _020748AA - _02074626 - 2 ; case 67
	.short _020748AA - _02074626 - 2 ; case 68
	.short _020748AA - _02074626 - 2 ; case 69
	.short _020748C2 - _02074626 - 2 ; case 70
	.short _020748CA - _02074626 - 2 ; case 71
	.short _020748D2 - _02074626 - 2 ; case 72
	.short _020748DA - _02074626 - 2 ; case 73
	.short _020748E2 - _02074626 - 2 ; case 74
	.short _020748EA - _02074626 - 2 ; case 75
	.short _020748F2 - _02074626 - 2 ; case 76
	.short _02074906 - _02074626 - 2 ; case 77
	.short _0207490C - _02074626 - 2 ; case 78
	.short _0207490C - _02074626 - 2 ; case 79
	.short _0207490C - _02074626 - 2 ; case 80
	.short _0207490C - _02074626 - 2 ; case 81
	.short _0207490C - _02074626 - 2 ; case 82
	.short _0207490C - _02074626 - 2 ; case 83
	.short _0207490C - _02074626 - 2 ; case 84
	.short _0207490C - _02074626 - 2 ; case 85
	.short _0207490C - _02074626 - 2 ; case 86
	.short _0207490C - _02074626 - 2 ; case 87
	.short _0207490C - _02074626 - 2 ; case 88
	.short _0207490C - _02074626 - 2 ; case 89
	.short _0207490C - _02074626 - 2 ; case 90
	.short _0207490C - _02074626 - 2 ; case 91
	.short _0207490C - _02074626 - 2 ; case 92
	.short _0207490C - _02074626 - 2 ; case 93
	.short _0207490C - _02074626 - 2 ; case 94
	.short _0207490C - _02074626 - 2 ; case 95
	.short _0207490C - _02074626 - 2 ; case 96
	.short _0207490C - _02074626 - 2 ; case 97
	.short _0207490C - _02074626 - 2 ; case 98
	.short _0207490C - _02074626 - 2 ; case 99
	.short _0207490C - _02074626 - 2 ; case 100
	.short _0207490C - _02074626 - 2 ; case 101
	.short _0207490C - _02074626 - 2 ; case 102
	.short _0207490C - _02074626 - 2 ; case 103
	.short _0207490C - _02074626 - 2 ; case 104
	.short _0207490C - _02074626 - 2 ; case 105
	.short _0207490C - _02074626 - 2 ; case 106
	.short _0207490C - _02074626 - 2 ; case 107
	.short _0207490C - _02074626 - 2 ; case 108
	.short _0207490C - _02074626 - 2 ; case 109
	.short _02074932 - _02074626 - 2 ; case 110
	.short _0207493A - _02074626 - 2 ; case 111
	.short _02074968 - _02074626 - 2 ; case 112
	.short _02074970 - _02074626 - 2 ; case 113
	.short _02074974 - _02074626 - 2 ; case 114
	.short _02074A44 - _02074626 - 2 ; case 115
	.short _02074A56 - _02074626 - 2 ; case 116
	.short _02074978 - _02074626 - 2 ; case 117
	.short _0207478E - _02074626 - 2 ; case 118
	.short _020749AC - _02074626 - 2 ; case 119
	.short _020749A8 - _02074626 - 2 ; case 120
	.short _020749DA - _02074626 - 2 ; case 121
	.short _020749DE - _02074626 - 2 ; case 122
	.short _020749E2 - _02074626 - 2 ; case 123
	.short _020749E2 - _02074626 - 2 ; case 124
	.short _020749E2 - _02074626 - 2 ; case 125
	.short _020749E2 - _02074626 - 2 ; case 126
	.short _020749E2 - _02074626 - 2 ; case 127
	.short _020749E2 - _02074626 - 2 ; case 128
	.short _020749E2 - _02074626 - 2 ; case 129
	.short _020749E2 - _02074626 - 2 ; case 130
	.short _020749E2 - _02074626 - 2 ; case 131
	.short _020749E2 - _02074626 - 2 ; case 132
	.short _020749E2 - _02074626 - 2 ; case 133
	.short _020749E2 - _02074626 - 2 ; case 134
	.short _020749E2 - _02074626 - 2 ; case 135
	.short _020749E2 - _02074626 - 2 ; case 136
	.short _020749E2 - _02074626 - 2 ; case 137
	.short _020749E2 - _02074626 - 2 ; case 138
	.short _020749E2 - _02074626 - 2 ; case 139
	.short _020749E2 - _02074626 - 2 ; case 140
	.short _020749E2 - _02074626 - 2 ; case 141
	.short _020749E2 - _02074626 - 2 ; case 142
	.short _020749E2 - _02074626 - 2 ; case 143
	.short _02074A0A - _02074626 - 2 ; case 144
	.short _02074A24 - _02074626 - 2 ; case 145
	.short _02074A2C - _02074626 - 2 ; case 146
	.short _02074A30 - _02074626 - 2 ; case 147
	.short _02074A34 - _02074626 - 2 ; case 148
	.short _02074A38 - _02074626 - 2 ; case 149
	.short _02074A3C - _02074626 - 2 ; case 150
	.short _02074A40 - _02074626 - 2 ; case 151
	.short _02074A44 - _02074626 - 2 ; case 152
	.short _02074A56 - _02074626 - 2 ; case 153
	.short _02074A68 - _02074626 - 2 ; case 154
	.short _02074A6C - _02074626 - 2 ; case 155
	.short _02074A70 - _02074626 - 2 ; case 156
	.short _02074A78 - _02074626 - 2 ; case 157
	.short _02074A80 - _02074626 - 2 ; case 158
	.short _02074A84 - _02074626 - 2 ; case 159
	.short _0207478E - _02074626 - 2 ; case 160
	.short _020747F6 - _02074626 - 2 ; case 161
	.short _0207478E - _02074626 - 2 ; case 162
	.short _0207478E - _02074626 - 2 ; case 163
	.short _0207478E - _02074626 - 2 ; case 164
	.short _0207478E - _02074626 - 2 ; case 165
	.short _0207478E - _02074626 - 2 ; case 166
	.short _0207478E - _02074626 - 2 ; case 167
	.short _0207478E - _02074626 - 2 ; case 168
	.short _0207478E - _02074626 - 2 ; case 169
	.short _0207478E - _02074626 - 2 ; case 170
	.short _0207478E - _02074626 - 2 ; case 171
	.short _020747BC - _02074626 - 2 ; case 172
	.short _020747C6 - _02074626 - 2 ; case 173
	.short _020747D8 - _02074626 - 2 ; case 174
	.short _02074A88 - _02074626 - 2 ; case 175
	.short _02074ABA - _02074626 - 2 ; case 176
	.short _02074AE4 - _02074626 - 2 ; case 177
	.short _02074AE4 - _02074626 - 2 ; case 178
	.short _02074B1C - _02074626 - 2 ; case 179
_0207478E:
	mov r4, #0
	b _02074B26
_02074792:
	ldr r0, [sp]
	ldr r4, [r0, #0]
	b _02074B26
_02074798:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02074B26
_020747A2:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1e
	lsr r4, r0, #0x1f
	b _02074B26
_020747AC:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	b _02074B26
_020747B6:
	ldr r0, [sp]
	ldrh r4, [r0, #6]
	b _02074B26
_020747BC:
	ldrh r0, [r5]
	cmp r0, #0
	beq _020747F0
	mov r4, #1
	b _02074B26
_020747C6:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	bne _020747F0
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02074B26
_020747D8:
	ldrh r4, [r5]
	cmp r4, #0
	beq _020747F0
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _020747F2
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _020747F2
_020747F0:
	b _02074B26
_020747F2:
	ldr r4, _02074AD0 ; =0x000001EE
	b _02074B26
_020747F6:
	ldrh r0, [r5]
	ldr r1, [r5, #8]
	bl sub_02075B78
	add r4, r0, #0
	b _02074B26
_02074802:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02074810
	ldr r4, _02074AD0 ; =0x000001EE
	b _02074B26
_02074810:
	ldrh r4, [r5]
	b _02074B26
_02074814:
	ldrh r4, [r5, #2]
	b _02074B26
_02074818:
	ldr r4, [r5, #4]
	b _02074B26
_0207481C:
	ldr r4, [r5, #8]
	b _02074B26
_02074820:
	ldrb r4, [r5, #0xc]
	b _02074B26
_02074824:
	ldrb r4, [r5, #0xd]
	b _02074B26
_02074828:
	ldrb r4, [r5, #0xe]
	b _02074B26
_0207482C:
	ldrb r4, [r5, #0xf]
	b _02074B26
_02074830:
	ldrb r4, [r5, #0x10]
	b _02074B26
_02074834:
	ldrb r4, [r5, #0x11]
	b _02074B26
_02074838:
	ldrb r4, [r5, #0x12]
	b _02074B26
_0207483C:
	ldrb r4, [r5, #0x13]
	b _02074B26
_02074840:
	ldrb r4, [r5, #0x14]
	b _02074B26
_02074844:
	ldrb r4, [r5, #0x15]
	b _02074B26
_02074848:
	ldrb r4, [r5, #0x16]
	b _02074B26
_0207484C:
	ldrb r4, [r5, #0x17]
	b _02074B26
_02074850:
	ldrb r4, [r5, #0x18]
	b _02074B26
_02074854:
	ldrb r4, [r5, #0x19]
	b _02074B26
_02074858:
	ldrb r4, [r5, #0x1a]
	b _02074B26
_0207485C:
	ldrb r4, [r5, #0x1b]
	b _02074B26
_02074860:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x19
	add r1, r4, #0
	str r2, [sp, #4]
	bl sub_020E1F3C
	ldr r2, [r5, #0x1c]
	add r3, r4, #0
	and r3, r1
	and r2, r0
	mov r1, #0
	mov r0, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _020748FC
	mov r4, #1
	b _02074B26
_02074886:
	ldr r0, [sp, #4]
	sub r0, #0x36
	str r0, [sp, #4]
	lsl r0, r0, #1
	ldrh r4, [r6, r0]
	b _02074B26
_02074892:
	ldr r0, [sp, #4]
	sub r0, #0x3a
	str r0, [sp, #4]
	add r0, r6, r0
	ldrb r4, [r0, #8]
	b _02074B26
_0207489E:
	ldr r0, [sp, #4]
	sub r0, #0x3e
	str r0, [sp, #4]
	add r0, r6, r0
	ldrb r4, [r0, #0xc]
	b _02074B26
_020748AA:
	ldr r0, [sp, #4]
	sub r0, #0x42
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #1
	add r1, r6, r1
	ldrh r0, [r6, r0]
	ldrb r1, [r1, #0xc]
	bl sub_020790DC
	add r4, r0, #0
	b _02074B26
_020748C2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x1b
	lsr r4, r0, #0x1b
	b _02074B26
_020748CA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x16
	lsr r4, r0, #0x1b
	b _02074B26
_020748D2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1b
	b _02074B26
_020748DA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1b
	b _02074B26
_020748E2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #7
	lsr r4, r0, #0x1b
	b _02074B26
_020748EA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #2
	lsr r4, r0, #0x1b
	b _02074B26
_020748F2:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	beq _020748FE
_020748FC:
	b _02074B26
_020748FE:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02074B26
_02074906:
	ldr r0, [r6, #0x10]
	lsr r4, r0, #0x1f
	b _02074B26
_0207490C:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x4e
	add r1, r4, #0
	str r2, [sp, #4]
	bl sub_020E1F3C
	ldr r2, [r6, #0x14]
	add r3, r4, #0
	and r3, r1
	and r2, r0
	mov r1, #0
	mov r0, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _02074A04
	mov r4, #1
	b _02074B26
_02074932:
	ldrb r0, [r6, #0x18]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02074B26
_0207493A:
	ldr r1, [sp]
	ldrh r0, [r5]
	ldr r1, [r1, #0]
	bl sub_02075DAC
	add r4, r0, #0
	ldrb r0, [r6, #0x18]
	mov r1, #6
	bic r0, r1
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r6, #0x18]
	ldr r0, [sp]
	mov r1, #0x80
	add r0, #8
	bl sub_0207823C
	ldr r1, [sp]
	strh r0, [r1, #6]
	b _02074B26
_02074968:
	ldrb r0, [r6, #0x18]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x1b
	b _02074B26
_02074970:
	ldrb r4, [r6, #0x19]
	b _02074B26
_02074974:
	ldrh r4, [r6, #0x1a]
	b _02074B26
_02074978:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0207498E
	ldr r0, _02074AD4 ; =0x000001EF
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0200B274
	b _02074B26
_0207498E:
	ldr r1, [sp, #8]
_02074990:
	ldrh r0, [r7]
	add r4, r4, #1
	add r7, r7, #2
	strh r0, [r1]
	add r1, r1, #2
	cmp r4, #0xa
	blo _02074990
	ldr r2, _02074AD8 ; =0x0000FFFF
	ldr r0, [sp, #8]
	lsl r1, r4, #1
	strh r2, [r0, r1]
	b _02074B26
_020749A8:
	ldr r0, [r6, #0x10]
	lsr r4, r0, #0x1f
_020749AC:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _020749D0
	ldr r0, _02074AD4 ; =0x000001EF
	mov r1, #0
	bl sub_0200B32C
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02023810
	add r0, r5, #0
	bl sub_020237BC
	b _02074B26
_020749D0:
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl sub_02023D28
	b _02074B26
_020749DA:
	ldrb r4, [r7, #0x16]
	b _02074B26
_020749DE:
	ldrb r4, [r7, #0x17]
	b _02074B26
_020749E2:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x7b
	add r1, r4, #0
	str r2, [sp, #4]
	bl sub_020E1F3C
	ldr r3, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	and r3, r0
	and r2, r1
	mov r1, #0
	mov r0, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	bne _02074A06
_02074A04:
	b _02074B26
_02074A06:
	mov r4, #1
	b _02074B26
_02074A0A:
	ldr r2, [sp, #8]
_02074A0C:
	ldrh r0, [r1]
	add r4, r4, #1
	add r1, r1, #2
	strh r0, [r2]
	add r2, r2, #2
	cmp r4, #7
	blo _02074A0C
	ldr r2, _02074AD8 ; =0x0000FFFF
	ldr r0, [sp, #8]
	lsl r1, r4, #1
	strh r2, [r0, r1]
	b _02074B26
_02074A24:
	ldr r0, [sp, #8]
	bl sub_02023D28
	b _02074B26
_02074A2C:
	ldrb r4, [r1, #0x10]
	b _02074B26
_02074A30:
	ldrb r4, [r1, #0x11]
	b _02074B26
_02074A34:
	ldrb r4, [r1, #0x12]
	b _02074B26
_02074A38:
	ldrb r4, [r1, #0x13]
	b _02074B26
_02074A3C:
	ldrb r4, [r1, #0x14]
	b _02074B26
_02074A40:
	ldrb r4, [r1, #0x15]
	b _02074B26
_02074A44:
	ldrh r1, [r1, #0x16]
	ldr r0, _02074ADC ; =0x00000BBA
	cmp r1, r0
	bne _02074A52
	ldrh r4, [r6, #0x1c]
	cmp r4, #0
	bne _02074B26
_02074A52:
	add r4, r1, #0
	b _02074B26
_02074A56:
	ldrh r1, [r1, #0x18]
	ldr r0, _02074ADC ; =0x00000BBA
	cmp r1, r0
	bne _02074A64
	ldrh r4, [r6, #0x1e]
	cmp r4, #0
	bne _02074B26
_02074A64:
	add r4, r1, #0
	b _02074B26
_02074A68:
	ldrb r4, [r1, #0x1a]
	b _02074B26
_02074A6C:
	ldrb r4, [r1, #0x1b]
	b _02074B26
_02074A70:
	ldrb r0, [r1, #0x1c]
	lsl r0, r0, #0x19
	lsr r4, r0, #0x19
	b _02074B26
_02074A78:
	ldrb r0, [r1, #0x1c]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x1f
	b _02074B26
_02074A80:
	ldrb r4, [r1, #0x1d]
	b _02074B26
_02074A84:
	ldrh r4, [r1, #0x1e]
	b _02074B26
_02074A88:
	ldr r4, [r6, #0x10]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r5, r0, #0x19
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r3, r0, #0x14
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r2, r0, #0xf
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r1, r0, #0xa
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r0, r0, #0x1b
	lsl r4, r4, #5
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r4, r5, #0
	orr r4, r0
	b _02074B26
_02074ABA:
	ldrh r0, [r5]
	cmp r0, #0x1d
	beq _02074AC4
	cmp r0, #0x20
	bne _02074AE0
_02074AC4:
	ldr r0, [r6, #0x10]
	lsr r0, r0, #0x1f
	bne _02074AE0
	mov r4, #0
	b _02074B26
	nop
_02074AD0: .word 0x000001EE
_02074AD4: .word 0x000001EF
_02074AD8: .word 0x0000FFFF
_02074ADC: .word 0x00000BBA
_02074AE0:
	mov r4, #1
	b _02074B26
_02074AE4:
	ldrh r0, [r5]
	ldr r1, _02074B2C ; =0x000001ED
	cmp r0, r1
	bne _02074B08
	ldrb r1, [r5, #0xd]
	cmp r1, #0x79
	bne _02074B08
	ldrh r0, [r5, #2]
	mov r1, #1
	add r2, r4, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02077988
	add r4, r0, #0
	b _02074B26
_02074B08:
	ldrb r1, [r6, #0x18]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x18
	sub r2, #0xab
	lsr r1, r1, #0x1b
	str r2, [sp, #4]
	bl sub_020759CC
	add r4, r0, #0
	b _02074B26
_02074B1C:
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0200B274
_02074B26:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02074B2C: .word 0x000001ED
	thumb_func_end sub_020745D0

	thumb_func_start sub_02074B30
sub_02074B30: ; 0x02074B30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02074B86
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02074B86
	cmp r0, r1
	beq _02074B70
	bl sub_02022974
_02074B70:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_02074B86:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074BC0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02074BBC
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02074BBC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02074B30

	thumb_func_start sub_02074BC0
sub_02074BC0: ; 0x02074BC0
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	sub r0, #0xa0
	cmp r0, #0xb
	bhi _02074C58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074BD8: ; jump table
	.short _02074BF0 - _02074BD8 - 2 ; case 0
	.short _02074BF8 - _02074BD8 - 2 ; case 1
	.short _02074C00 - _02074BD8 - 2 ; case 2
	.short _02074C08 - _02074BD8 - 2 ; case 3
	.short _02074C10 - _02074BD8 - 2 ; case 4
	.short _02074C18 - _02074BD8 - 2 ; case 5
	.short _02074C20 - _02074BD8 - 2 ; case 6
	.short _02074C28 - _02074BD8 - 2 ; case 7
	.short _02074C30 - _02074BD8 - 2 ; case 8
	.short _02074C38 - _02074BD8 - 2 ; case 9
	.short _02074C40 - _02074BD8 - 2 ; case 10
	.short _02074C4C - _02074BD8 - 2 ; case 11
_02074BF0:
	ldr r0, [r2, #0]
	add r3, #0x88
	str r0, [r3, #0]
	pop {r3, pc}
_02074BF8:
	ldrb r0, [r2]
	add r3, #0x8c
	strb r0, [r3]
	pop {r3, pc}
_02074C00:
	ldrb r0, [r2]
	add r3, #0x8d
	strb r0, [r3]
	pop {r3, pc}
_02074C08:
	ldrh r0, [r2]
	add r3, #0x8e
	strh r0, [r3]
	pop {r3, pc}
_02074C10:
	ldrh r0, [r2]
	add r3, #0x90
	strh r0, [r3]
	pop {r3, pc}
_02074C18:
	ldrh r0, [r2]
	add r3, #0x92
	strh r0, [r3]
	pop {r3, pc}
_02074C20:
	ldrh r0, [r2]
	add r3, #0x94
	strh r0, [r3]
	pop {r3, pc}
_02074C28:
	ldrh r0, [r2]
	add r3, #0x96
	strh r0, [r3]
	pop {r3, pc}
_02074C30:
	ldrh r0, [r2]
	add r3, #0x98
	strh r0, [r3]
	pop {r3, pc}
_02074C38:
	ldrh r0, [r2]
	add r3, #0x9a
	strh r0, [r3]
	pop {r3, pc}
_02074C40:
	add r3, #0x9c
	add r0, r2, #0
	add r1, r3, #0
	bl sub_020281A0
	pop {r3, pc}
_02074C4C:
	add r3, #0xd4
	add r0, r2, #0
	add r1, r3, #0
	bl sub_0202CA10
	pop {r3, pc}
_02074C58:
	add r0, r3, #0
	bl sub_02074CD8
	pop {r3, pc}
	thumb_func_end sub_02074BC0

	thumb_func_start sub_02074C60
sub_02074C60: ; 0x02074C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02074CAA
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02074CAA
	cmp r0, r1
	beq _02074C94
	bl sub_02022974
_02074C94:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_02074CAA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074CD8
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02074CD4
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02074CD4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02074C60

	thumb_func_start sub_02074CD8
sub_02074CD8: ; 0x02074CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r1, [sp, #4]
	add r1, r0, #0
	add r4, r2, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	mov r2, #0
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0xb3
	bls _02074D20
	b _02075348
_02074D20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074D2C: ; jump table
	.short _02074E94 - _02074D2C - 2 ; case 0
	.short _02074E9E - _02074D2C - 2 ; case 1
	.short _02074EBC - _02074D2C - 2 ; case 2
	.short _02074ED8 - _02074D2C - 2 ; case 3
	.short _02074EF0 - _02074D2C - 2 ; case 4
	.short _02074EFA - _02074D2C - 2 ; case 5
	.short _02074F02 - _02074D2C - 2 ; case 6
	.short _02074F0A - _02074D2C - 2 ; case 7
	.short _02074F12 - _02074D2C - 2 ; case 8
	.short _02074F1A - _02074D2C - 2 ; case 9
	.short _02074F22 - _02074D2C - 2 ; case 10
	.short _02074F2A - _02074D2C - 2 ; case 11
	.short _02074F32 - _02074D2C - 2 ; case 12
	.short _02074F3A - _02074D2C - 2 ; case 13
	.short _02074F42 - _02074D2C - 2 ; case 14
	.short _02074F4A - _02074D2C - 2 ; case 15
	.short _02074F52 - _02074D2C - 2 ; case 16
	.short _02074F5A - _02074D2C - 2 ; case 17
	.short _02074F62 - _02074D2C - 2 ; case 18
	.short _02074F6A - _02074D2C - 2 ; case 19
	.short _02074F72 - _02074D2C - 2 ; case 20
	.short _02074F7A - _02074D2C - 2 ; case 21
	.short _02074F82 - _02074D2C - 2 ; case 22
	.short _02074F8A - _02074D2C - 2 ; case 23
	.short _02074F92 - _02074D2C - 2 ; case 24
	.short _02074F9A - _02074D2C - 2 ; case 25
	.short _02074F9A - _02074D2C - 2 ; case 26
	.short _02074F9A - _02074D2C - 2 ; case 27
	.short _02074F9A - _02074D2C - 2 ; case 28
	.short _02074F9A - _02074D2C - 2 ; case 29
	.short _02074F9A - _02074D2C - 2 ; case 30
	.short _02074F9A - _02074D2C - 2 ; case 31
	.short _02074F9A - _02074D2C - 2 ; case 32
	.short _02074F9A - _02074D2C - 2 ; case 33
	.short _02074F9A - _02074D2C - 2 ; case 34
	.short _02074F9A - _02074D2C - 2 ; case 35
	.short _02074F9A - _02074D2C - 2 ; case 36
	.short _02074F9A - _02074D2C - 2 ; case 37
	.short _02074F9A - _02074D2C - 2 ; case 38
	.short _02074F9A - _02074D2C - 2 ; case 39
	.short _02074F9A - _02074D2C - 2 ; case 40
	.short _02074F9A - _02074D2C - 2 ; case 41
	.short _02074F9A - _02074D2C - 2 ; case 42
	.short _02074F9A - _02074D2C - 2 ; case 43
	.short _02074F9A - _02074D2C - 2 ; case 44
	.short _02074F9A - _02074D2C - 2 ; case 45
	.short _02074F9A - _02074D2C - 2 ; case 46
	.short _02074F9A - _02074D2C - 2 ; case 47
	.short _02074F9A - _02074D2C - 2 ; case 48
	.short _02074F9A - _02074D2C - 2 ; case 49
	.short _02074F9A - _02074D2C - 2 ; case 50
	.short _02074F9A - _02074D2C - 2 ; case 51
	.short _02074F9A - _02074D2C - 2 ; case 52
	.short _02074F9A - _02074D2C - 2 ; case 53
	.short _02074FC4 - _02074D2C - 2 ; case 54
	.short _02074FC4 - _02074D2C - 2 ; case 55
	.short _02074FC4 - _02074D2C - 2 ; case 56
	.short _02074FC4 - _02074D2C - 2 ; case 57
	.short _02074FD4 - _02074D2C - 2 ; case 58
	.short _02074FD4 - _02074D2C - 2 ; case 59
	.short _02074FD4 - _02074D2C - 2 ; case 60
	.short _02074FD4 - _02074D2C - 2 ; case 61
	.short _02074FE4 - _02074D2C - 2 ; case 62
	.short _02074FE4 - _02074D2C - 2 ; case 63
	.short _02074FE4 - _02074D2C - 2 ; case 64
	.short _02074FE4 - _02074D2C - 2 ; case 65
	.short _02075348 - _02074D2C - 2 ; case 66
	.short _02075348 - _02074D2C - 2 ; case 67
	.short _02075348 - _02074D2C - 2 ; case 68
	.short _02075348 - _02074D2C - 2 ; case 69
	.short _02074FF4 - _02074D2C - 2 ; case 70
	.short _02075008 - _02074D2C - 2 ; case 71
	.short _0207501C - _02074D2C - 2 ; case 72
	.short _02075030 - _02074D2C - 2 ; case 73
	.short _02075044 - _02074D2C - 2 ; case 74
	.short _02075058 - _02074D2C - 2 ; case 75
	.short _0207506C - _02074D2C - 2 ; case 76
	.short _02075080 - _02074D2C - 2 ; case 77
	.short _02075092 - _02074D2C - 2 ; case 78
	.short _02075092 - _02074D2C - 2 ; case 79
	.short _02075092 - _02074D2C - 2 ; case 80
	.short _02075092 - _02074D2C - 2 ; case 81
	.short _02075092 - _02074D2C - 2 ; case 82
	.short _02075092 - _02074D2C - 2 ; case 83
	.short _02075092 - _02074D2C - 2 ; case 84
	.short _02075092 - _02074D2C - 2 ; case 85
	.short _02075092 - _02074D2C - 2 ; case 86
	.short _02075092 - _02074D2C - 2 ; case 87
	.short _02075092 - _02074D2C - 2 ; case 88
	.short _02075092 - _02074D2C - 2 ; case 89
	.short _02075092 - _02074D2C - 2 ; case 90
	.short _02075092 - _02074D2C - 2 ; case 91
	.short _02075092 - _02074D2C - 2 ; case 92
	.short _02075092 - _02074D2C - 2 ; case 93
	.short _02075092 - _02074D2C - 2 ; case 94
	.short _02075092 - _02074D2C - 2 ; case 95
	.short _02075092 - _02074D2C - 2 ; case 96
	.short _02075092 - _02074D2C - 2 ; case 97
	.short _02075092 - _02074D2C - 2 ; case 98
	.short _02075092 - _02074D2C - 2 ; case 99
	.short _02075092 - _02074D2C - 2 ; case 100
	.short _02075092 - _02074D2C - 2 ; case 101
	.short _02075092 - _02074D2C - 2 ; case 102
	.short _02075092 - _02074D2C - 2 ; case 103
	.short _02075092 - _02074D2C - 2 ; case 104
	.short _02075092 - _02074D2C - 2 ; case 105
	.short _02075092 - _02074D2C - 2 ; case 106
	.short _02075092 - _02074D2C - 2 ; case 107
	.short _02075092 - _02074D2C - 2 ; case 108
	.short _02075092 - _02074D2C - 2 ; case 109
	.short _020750BC - _02074D2C - 2 ; case 110
	.short _020750D0 - _02074D2C - 2 ; case 111
	.short _020750EC - _02074D2C - 2 ; case 112
	.short _02075100 - _02074D2C - 2 ; case 113
	.short _02075108 - _02074D2C - 2 ; case 114
	.short _02075234 - _02074D2C - 2 ; case 115
	.short _0207525A - _02074D2C - 2 ; case 116
	.short _0207512E - _02074D2C - 2 ; case 117
	.short _02075110 - _02074D2C - 2 ; case 118
	.short _02075172 - _02074D2C - 2 ; case 119
	.short _02075146 - _02074D2C - 2 ; case 120
	.short _02075180 - _02074D2C - 2 ; case 121
	.short _0207518A - _02074D2C - 2 ; case 122
	.short _02075194 - _02074D2C - 2 ; case 123
	.short _02075194 - _02074D2C - 2 ; case 124
	.short _02075194 - _02074D2C - 2 ; case 125
	.short _02075194 - _02074D2C - 2 ; case 126
	.short _02075194 - _02074D2C - 2 ; case 127
	.short _02075194 - _02074D2C - 2 ; case 128
	.short _02075194 - _02074D2C - 2 ; case 129
	.short _02075194 - _02074D2C - 2 ; case 130
	.short _02075194 - _02074D2C - 2 ; case 131
	.short _02075194 - _02074D2C - 2 ; case 132
	.short _02075194 - _02074D2C - 2 ; case 133
	.short _02075194 - _02074D2C - 2 ; case 134
	.short _02075194 - _02074D2C - 2 ; case 135
	.short _02075194 - _02074D2C - 2 ; case 136
	.short _02075194 - _02074D2C - 2 ; case 137
	.short _02075194 - _02074D2C - 2 ; case 138
	.short _02075194 - _02074D2C - 2 ; case 139
	.short _02075194 - _02074D2C - 2 ; case 140
	.short _02075194 - _02074D2C - 2 ; case 141
	.short _02075194 - _02074D2C - 2 ; case 142
	.short _02075194 - _02074D2C - 2 ; case 143
	.short _020751E2 - _02074D2C - 2 ; case 144
	.short _020751F6 - _02074D2C - 2 ; case 145
	.short _02075204 - _02074D2C - 2 ; case 146
	.short _0207520C - _02074D2C - 2 ; case 147
	.short _02075214 - _02074D2C - 2 ; case 148
	.short _0207521C - _02074D2C - 2 ; case 149
	.short _02075224 - _02074D2C - 2 ; case 150
	.short _0207522C - _02074D2C - 2 ; case 151
	.short _02075234 - _02074D2C - 2 ; case 152
	.short _0207525A - _02074D2C - 2 ; case 153
	.short _02075280 - _02074D2C - 2 ; case 154
	.short _02075288 - _02074D2C - 2 ; case 155
	.short _02075290 - _02074D2C - 2 ; case 156
	.short _020752A4 - _02074D2C - 2 ; case 157
	.short _020752B8 - _02074D2C - 2 ; case 158
	.short _020752C0 - _02074D2C - 2 ; case 159
	.short _02075348 - _02074D2C - 2 ; case 160
	.short _02075348 - _02074D2C - 2 ; case 161
	.short _02075348 - _02074D2C - 2 ; case 162
	.short _02075348 - _02074D2C - 2 ; case 163
	.short _02075348 - _02074D2C - 2 ; case 164
	.short _02075348 - _02074D2C - 2 ; case 165
	.short _02075348 - _02074D2C - 2 ; case 166
	.short _02075348 - _02074D2C - 2 ; case 167
	.short _02075348 - _02074D2C - 2 ; case 168
	.short _02075348 - _02074D2C - 2 ; case 169
	.short _02075348 - _02074D2C - 2 ; case 170
	.short _02075348 - _02074D2C - 2 ; case 171
	.short _02075348 - _02074D2C - 2 ; case 172
	.short _02075348 - _02074D2C - 2 ; case 173
	.short _02075348 - _02074D2C - 2 ; case 174
	.short _020752C8 - _02074D2C - 2 ; case 175
	.short _02075348 - _02074D2C - 2 ; case 176
	.short _02075348 - _02074D2C - 2 ; case 177
	.short _02075348 - _02074D2C - 2 ; case 178
	.short _02075330 - _02074D2C - 2 ; case 179
_02074E94:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	add sp, #0x50
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02074E9E:
	bl sub_02022974
	ldr r0, [sp]
	ldrb r1, [r4]
	ldrh r2, [r0, #4]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074EBC:
	bl sub_02022974
	ldr r0, [sp]
	ldrh r1, [r0, #4]
	mov r0, #2
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074ED8:
	ldr r0, [sp]
	ldrh r1, [r0, #4]
	mov r0, #4
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074EF0:
	ldrh r1, [r4]
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02074EFA:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_02074F02:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r7, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02074F0A:
	ldr r0, [r4, #0]
	add sp, #0x50
	str r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074F12:
	ldr r0, [r4, #0]
	add sp, #0x50
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02074F1A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02074F22:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02074F2A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02074F32:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
_02074F3A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02074F42:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02074F4A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_02074F52:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_02074F5A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_02074F62:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x15]
	pop {r3, r4, r5, r6, r7, pc}
_02074F6A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
_02074F72:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x17]
	pop {r3, r4, r5, r6, r7, pc}
_02074F7A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02074F82:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_02074F8A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02074F92:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x1b]
	pop {r3, r4, r5, r6, r7, pc}
_02074F9A:
	ldr r1, [sp, #4]
	mov r0, #1
	sub r1, #0x19
	str r1, [sp, #4]
	lsl r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	beq _02074FB4
	ldr r1, [r7, #0x1c]
	add sp, #0x50
	orr r0, r1
	str r0, [r7, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_02074FB4:
	mov r1, #0
	sub r1, r1, #1
	ldr r2, [r7, #0x1c]
	eor r0, r1
	and r0, r2
	add sp, #0x50
	str r0, [r7, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_02074FC4:
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	sub r0, #0x36
	str r0, [sp, #4]
	lsl r0, r0, #1
	add sp, #0x50
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02074FD4:
	ldr r0, [sp, #4]
	ldrb r1, [r4]
	sub r0, #0x3a
	str r0, [sp, #4]
	add r0, r5, r0
	strb r1, [r0, #8]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02074FE4:
	ldr r0, [sp, #4]
	ldrb r1, [r4]
	sub r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, r0
	strb r1, [r0, #0xc]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02074FF4:
	ldr r2, [r5, #0x10]
	mov r0, #0x1f
	bic r2, r0
	ldrb r1, [r4]
	mov r0, #0x1f
	add sp, #0x50
	and r0, r1
	orr r0, r2
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075008:
	ldr r1, [r5, #0x10]
	ldr r0, _0207534C ; =0xFFFFFC1F
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207501C:
	ldr r1, [r5, #0x10]
	ldr r0, _02075350 ; =0xFFFF83FF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075030:
	ldr r1, [r5, #0x10]
	ldr r0, _02075354 ; =0xFFF07FFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075044:
	ldr r1, [r5, #0x10]
	ldr r0, _02075358 ; =0xFE0FFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075058:
	ldr r1, [r5, #0x10]
	ldr r0, _0207535C ; =0xC1FFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207506C:
	ldr r1, [r5, #0x10]
	ldr r0, _02075360 ; =0xBFFFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075080:
	ldr r1, [r5, #0x10]
	ldr r0, _02075364 ; =0x7FFFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075092:
	ldr r1, [sp, #4]
	mov r0, #1
	sub r1, #0x4e
	str r1, [sp, #4]
	lsl r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	beq _020750AC
	ldr r1, [r5, #0x14]
	add sp, #0x50
	orr r0, r1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_020750AC:
	mov r1, #0
	sub r1, r1, #1
	ldr r2, [r5, #0x14]
	eor r0, r1
	and r0, r2
	add sp, #0x50
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_020750BC:
	ldrb r2, [r5, #0x18]
	ldrb r1, [r4]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_020750D0:
	ldr r1, [sp]
	ldrh r0, [r7]
	ldr r1, [r1, #0]
	bl sub_02075DAC
	lsl r0, r0, #0x1e
	ldrb r2, [r5, #0x18]
	mov r1, #6
	lsr r0, r0, #0x1d
	bic r2, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_020750EC:
	ldrb r1, [r5, #0x18]
	mov r0, #0xf8
	add sp, #0x50
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02075100:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r5, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_02075108:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r5, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02075110:
	ldrh r0, [r7]
	mov r1, #0
	add r2, sp, #0x38
	bl sub_0200B274
	add r0, sp, #0x38
	add r1, r4, #0
	bl sub_0200220C
	ldr r2, [r5, #0x10]
	ldr r1, _02075364 ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x10]
_0207512E:
	mov r2, #0
_02075130:
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	add r2, r2, #1
	strh r1, [r0]
	add r0, r0, #2
	add r4, r4, #2
	str r0, [sp, #8]
	cmp r2, #0xb
	blo _02075130
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075146:
	ldrh r0, [r7]
	add r2, sp, #0x20
	mov r1, #0
	add r2, #2
	bl sub_0200B274
	add r0, r4, #0
	add r1, sp, #0xc
	mov r2, #0xb
	bl sub_02023DF0
	add r0, sp, #0x20
	add r0, #2
	add r1, sp, #0xc
	bl sub_0200220C
	ldr r2, [r5, #0x10]
	ldr r1, _02075364 ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x10]
_02075172:
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0xb
	bl sub_02023DF0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075180:
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	add sp, #0x50
	strb r1, [r0, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
_0207518A:
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	add sp, #0x50
	strb r1, [r0, #0x17]
	pop {r3, r4, r5, r6, r7, pc}
_02075194:
	ldr r0, [sp, #4]
	mov r1, #1
	sub r0, #0x7b
	add r2, r1, #0
	ldrb r3, [r4]
	lsl r2, r0
	str r0, [sp, #4]
	asr r0, r2, #0x1f
	cmp r3, #0
	beq _020751C0
	ldr r1, [sp, #8]
	ldr r3, [sp, #8]
	add r1, #0x18
	ldr r4, [r3, #0x18]
	ldr r3, [r1, #4]
	orr r2, r4
	orr r3, r0
	ldr r0, [sp, #8]
	add sp, #0x50
	str r2, [r0, #0x18]
	str r3, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020751C0:
	ldr r6, [sp, #8]
	ldr r3, [sp, #8]
	add r6, #0x18
	ldr r4, [r6, #4]
	ldr r5, [r3, #0x18]
	sub r3, r1, #2
	sub r1, r1, #2
	eor r1, r2
	eor r0, r3
	add r2, r4, #0
	and r2, r0
	ldr r0, [sp, #8]
	and r1, r5
	str r1, [r0, #0x18]
	add sp, #0x50
	str r2, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020751E2:
	mov r1, #0
_020751E4:
	ldrh r0, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r6]
	add r6, r6, #2
	cmp r1, #8
	blo _020751E4
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_020751F6:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl sub_02023DF0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075204:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207520C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02075214:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_0207521C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_02075224:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0207522C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x15]
	pop {r3, r4, r5, r6, r7, pc}
_02075234:
	ldrh r0, [r4]
	cmp r0, #0
	beq _02075242
	bl sub_0201708C
	cmp r0, #1
	bne _0207524E
_02075242:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x16]
	ldrh r0, [r4]
	strh r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0207524E:
	ldr r0, _02075368 ; =0x00000BBA
	add sp, #0x50
	strh r0, [r6, #0x16]
	ldrh r0, [r4]
	strh r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0207525A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _02075268
	bl sub_0201708C
	cmp r0, #1
	bne _02075274
_02075268:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	strh r0, [r5, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_02075274:
	ldr r0, _02075368 ; =0x00000BBA
	add sp, #0x50
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	strh r0, [r5, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_02075280:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02075288:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1b]
	pop {r3, r4, r5, r6, r7, pc}
_02075290:
	ldrb r2, [r6, #0x1c]
	ldrb r1, [r4]
	mov r0, #0x7f
	bic r2, r0
	mov r0, #0x7f
	and r0, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r6, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_020752A4:
	ldrb r1, [r6, #0x1c]
	mov r0, #0x80
	add sp, #0x50
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_020752B8:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1d]
	pop {r3, r4, r5, r6, r7, pc}
_020752C0:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_020752C8:
	ldr r2, [r5, #0x10]
	mov r0, #0x1f
	bic r2, r0
	ldr r1, [r4, #0]
	mov r0, #0x1f
	and r1, r0
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0207534C ; =0xFFFFFC1F
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	add sp, #0x50
	lsr r0, r0, #5
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r1, r0
	ldr r0, _02075350 ; =0xFFFF83FF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0xa
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r1, r0
	ldr r0, _02075354 ; =0xFFF07FFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0xf
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r1, r0
	ldr r0, _02075358 ; =0xFE0FFFFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0x14
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r1, r0
	ldr r0, _0207535C ; =0xC1FFFFFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0x19
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075330:
	ldrh r0, [r7]
	mov r1, #0
	bl sub_0200B32C
	ldr r1, [sp, #8]
	add r4, r0, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
_02075348:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207534C: .word 0xFFFFFC1F
_02075350: .word 0xFFFF83FF
_02075354: .word 0xFFF07FFF
_02075358: .word 0xFE0FFFFF
_0207535C: .word 0xC1FFFFFF
_02075360: .word 0xBFFFFFFF
_02075364: .word 0x7FFFFFFF
_02075368: .word 0x00000BBA
	thumb_func_end sub_02074CD8

	thumb_func_start sub_0207536C
sub_0207536C: ; 0x0207536C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020753BA
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020753BA
	cmp r0, r1
	beq _020753AC
	bl sub_02022974
_020753AC:
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_020753BA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020753F4
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020753F0
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020753F0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207536C

	thumb_func_start sub_020753F4
sub_020753F4: ; 0x020753F4
	push {r3, lr}
	add r3, r1, #0
	sub r3, #0xa0
	cmp r3, #0xa
	bhi _0207544C
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0207540A: ; jump table
	.short _02075446 - _0207540A - 2 ; case 0
	.short _02075446 - _0207540A - 2 ; case 1
	.short _02075446 - _0207540A - 2 ; case 2
	.short _02075420 - _0207540A - 2 ; case 3
	.short _02075446 - _0207540A - 2 ; case 4
	.short _02075446 - _0207540A - 2 ; case 5
	.short _02075446 - _0207540A - 2 ; case 6
	.short _02075446 - _0207540A - 2 ; case 7
	.short _02075446 - _0207540A - 2 ; case 8
	.short _02075446 - _0207540A - 2 ; case 9
	.short _02075446 - _0207540A - 2 ; case 10
_02075420:
	add r1, r0, #0
	add r1, #0x90
	ldrh r3, [r1]
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r1, r1, r2
	cmp r1, r3
	ble _02075438
	add r0, #0x8e
	strh r3, [r0]
	pop {r3, pc}
_02075438:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r0, #0x8e
	add r1, r1, r2
	strh r1, [r0]
	pop {r3, pc}
_02075446:
	bl sub_02022974
	pop {r3, pc}
_0207544C:
	bl sub_02075454
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020753F4

	thumb_func_start sub_02075454
sub_02075454: ; 0x02075454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r1, r0, #0
	add r6, r2, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	mov r2, #0
	bl sub_0207825C
	add r4, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	cmp r7, #0xb3
	bls _02075496
	b _02075856
_02075496:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020754A2: ; jump table
	.short _02075856 - _020754A2 - 2 ; case 0
	.short _02075856 - _020754A2 - 2 ; case 1
	.short _02075856 - _020754A2 - 2 ; case 2
	.short _02075856 - _020754A2 - 2 ; case 3
	.short _02075856 - _020754A2 - 2 ; case 4
	.short _02075856 - _020754A2 - 2 ; case 5
	.short _02075856 - _020754A2 - 2 ; case 6
	.short _02075856 - _020754A2 - 2 ; case 7
	.short _0207560A - _020754A2 - 2 ; case 8
	.short _0207562E - _020754A2 - 2 ; case 9
	.short _02075856 - _020754A2 - 2 ; case 10
	.short _02075856 - _020754A2 - 2 ; case 11
	.short _02075856 - _020754A2 - 2 ; case 12
	.short _02075644 - _020754A2 - 2 ; case 13
	.short _0207564E - _020754A2 - 2 ; case 14
	.short _02075658 - _020754A2 - 2 ; case 15
	.short _02075662 - _020754A2 - 2 ; case 16
	.short _0207566C - _020754A2 - 2 ; case 17
	.short _02075676 - _020754A2 - 2 ; case 18
	.short _02075680 - _020754A2 - 2 ; case 19
	.short _02075696 - _020754A2 - 2 ; case 20
	.short _020756AC - _020754A2 - 2 ; case 21
	.short _020756C2 - _020754A2 - 2 ; case 22
	.short _020756D8 - _020754A2 - 2 ; case 23
	.short _020756EE - _020754A2 - 2 ; case 24
	.short _02075856 - _020754A2 - 2 ; case 25
	.short _02075856 - _020754A2 - 2 ; case 26
	.short _02075856 - _020754A2 - 2 ; case 27
	.short _02075856 - _020754A2 - 2 ; case 28
	.short _02075856 - _020754A2 - 2 ; case 29
	.short _02075856 - _020754A2 - 2 ; case 30
	.short _02075856 - _020754A2 - 2 ; case 31
	.short _02075856 - _020754A2 - 2 ; case 32
	.short _02075856 - _020754A2 - 2 ; case 33
	.short _02075856 - _020754A2 - 2 ; case 34
	.short _02075856 - _020754A2 - 2 ; case 35
	.short _02075856 - _020754A2 - 2 ; case 36
	.short _02075856 - _020754A2 - 2 ; case 37
	.short _02075856 - _020754A2 - 2 ; case 38
	.short _02075856 - _020754A2 - 2 ; case 39
	.short _02075856 - _020754A2 - 2 ; case 40
	.short _02075856 - _020754A2 - 2 ; case 41
	.short _02075856 - _020754A2 - 2 ; case 42
	.short _02075856 - _020754A2 - 2 ; case 43
	.short _02075856 - _020754A2 - 2 ; case 44
	.short _02075856 - _020754A2 - 2 ; case 45
	.short _02075856 - _020754A2 - 2 ; case 46
	.short _02075856 - _020754A2 - 2 ; case 47
	.short _02075856 - _020754A2 - 2 ; case 48
	.short _02075856 - _020754A2 - 2 ; case 49
	.short _02075856 - _020754A2 - 2 ; case 50
	.short _02075856 - _020754A2 - 2 ; case 51
	.short _02075856 - _020754A2 - 2 ; case 52
	.short _02075856 - _020754A2 - 2 ; case 53
	.short _02075856 - _020754A2 - 2 ; case 54
	.short _02075856 - _020754A2 - 2 ; case 55
	.short _02075856 - _020754A2 - 2 ; case 56
	.short _02075856 - _020754A2 - 2 ; case 57
	.short _02075704 - _020754A2 - 2 ; case 58
	.short _02075704 - _020754A2 - 2 ; case 59
	.short _02075704 - _020754A2 - 2 ; case 60
	.short _02075704 - _020754A2 - 2 ; case 61
	.short _02075740 - _020754A2 - 2 ; case 62
	.short _02075740 - _020754A2 - 2 ; case 63
	.short _02075740 - _020754A2 - 2 ; case 64
	.short _02075740 - _020754A2 - 2 ; case 65
	.short _0207585A - _020754A2 - 2 ; case 66
	.short _0207585A - _020754A2 - 2 ; case 67
	.short _0207585A - _020754A2 - 2 ; case 68
	.short _0207585A - _020754A2 - 2 ; case 69
	.short _0207575A - _020754A2 - 2 ; case 70
	.short _02075784 - _020754A2 - 2 ; case 71
	.short _020757AE - _020754A2 - 2 ; case 72
	.short _020757D8 - _020754A2 - 2 ; case 73
	.short _02075802 - _020754A2 - 2 ; case 74
	.short _0207582C - _020754A2 - 2 ; case 75
	.short _02075856 - _020754A2 - 2 ; case 76
	.short _02075856 - _020754A2 - 2 ; case 77
	.short _02075856 - _020754A2 - 2 ; case 78
	.short _02075856 - _020754A2 - 2 ; case 79
	.short _02075856 - _020754A2 - 2 ; case 80
	.short _02075856 - _020754A2 - 2 ; case 81
	.short _02075856 - _020754A2 - 2 ; case 82
	.short _02075856 - _020754A2 - 2 ; case 83
	.short _02075856 - _020754A2 - 2 ; case 84
	.short _02075856 - _020754A2 - 2 ; case 85
	.short _02075856 - _020754A2 - 2 ; case 86
	.short _02075856 - _020754A2 - 2 ; case 87
	.short _02075856 - _020754A2 - 2 ; case 88
	.short _02075856 - _020754A2 - 2 ; case 89
	.short _02075856 - _020754A2 - 2 ; case 90
	.short _02075856 - _020754A2 - 2 ; case 91
	.short _02075856 - _020754A2 - 2 ; case 92
	.short _02075856 - _020754A2 - 2 ; case 93
	.short _02075856 - _020754A2 - 2 ; case 94
	.short _02075856 - _020754A2 - 2 ; case 95
	.short _02075856 - _020754A2 - 2 ; case 96
	.short _02075856 - _020754A2 - 2 ; case 97
	.short _02075856 - _020754A2 - 2 ; case 98
	.short _02075856 - _020754A2 - 2 ; case 99
	.short _02075856 - _020754A2 - 2 ; case 100
	.short _02075856 - _020754A2 - 2 ; case 101
	.short _02075856 - _020754A2 - 2 ; case 102
	.short _02075856 - _020754A2 - 2 ; case 103
	.short _02075856 - _020754A2 - 2 ; case 104
	.short _02075856 - _020754A2 - 2 ; case 105
	.short _02075856 - _020754A2 - 2 ; case 106
	.short _02075856 - _020754A2 - 2 ; case 107
	.short _02075856 - _020754A2 - 2 ; case 108
	.short _02075856 - _020754A2 - 2 ; case 109
	.short _02075856 - _020754A2 - 2 ; case 110
	.short _02075856 - _020754A2 - 2 ; case 111
	.short _02075856 - _020754A2 - 2 ; case 112
	.short _02075856 - _020754A2 - 2 ; case 113
	.short _02075856 - _020754A2 - 2 ; case 114
	.short _02075856 - _020754A2 - 2 ; case 115
	.short _02075856 - _020754A2 - 2 ; case 116
	.short _02075856 - _020754A2 - 2 ; case 117
	.short _02075856 - _020754A2 - 2 ; case 118
	.short _02075856 - _020754A2 - 2 ; case 119
	.short _02075856 - _020754A2 - 2 ; case 120
	.short _02075856 - _020754A2 - 2 ; case 121
	.short _02075856 - _020754A2 - 2 ; case 122
	.short _02075856 - _020754A2 - 2 ; case 123
	.short _02075856 - _020754A2 - 2 ; case 124
	.short _02075856 - _020754A2 - 2 ; case 125
	.short _02075856 - _020754A2 - 2 ; case 126
	.short _02075856 - _020754A2 - 2 ; case 127
	.short _02075856 - _020754A2 - 2 ; case 128
	.short _02075856 - _020754A2 - 2 ; case 129
	.short _02075856 - _020754A2 - 2 ; case 130
	.short _02075856 - _020754A2 - 2 ; case 131
	.short _02075856 - _020754A2 - 2 ; case 132
	.short _02075856 - _020754A2 - 2 ; case 133
	.short _02075856 - _020754A2 - 2 ; case 134
	.short _02075856 - _020754A2 - 2 ; case 135
	.short _02075856 - _020754A2 - 2 ; case 136
	.short _02075856 - _020754A2 - 2 ; case 137
	.short _02075856 - _020754A2 - 2 ; case 138
	.short _02075856 - _020754A2 - 2 ; case 139
	.short _02075856 - _020754A2 - 2 ; case 140
	.short _02075856 - _020754A2 - 2 ; case 141
	.short _02075856 - _020754A2 - 2 ; case 142
	.short _02075856 - _020754A2 - 2 ; case 143
	.short _02075856 - _020754A2 - 2 ; case 144
	.short _02075856 - _020754A2 - 2 ; case 145
	.short _02075856 - _020754A2 - 2 ; case 146
	.short _02075856 - _020754A2 - 2 ; case 147
	.short _02075856 - _020754A2 - 2 ; case 148
	.short _02075856 - _020754A2 - 2 ; case 149
	.short _02075856 - _020754A2 - 2 ; case 150
	.short _02075856 - _020754A2 - 2 ; case 151
	.short _02075856 - _020754A2 - 2 ; case 152
	.short _02075856 - _020754A2 - 2 ; case 153
	.short _02075856 - _020754A2 - 2 ; case 154
	.short _02075856 - _020754A2 - 2 ; case 155
	.short _02075856 - _020754A2 - 2 ; case 156
	.short _02075856 - _020754A2 - 2 ; case 157
	.short _02075856 - _020754A2 - 2 ; case 158
	.short _02075856 - _020754A2 - 2 ; case 159
	.short _02075856 - _020754A2 - 2 ; case 160
	.short _02075856 - _020754A2 - 2 ; case 161
	.short _02075856 - _020754A2 - 2 ; case 162
	.short _02075856 - _020754A2 - 2 ; case 163
	.short _02075856 - _020754A2 - 2 ; case 164
	.short _02075856 - _020754A2 - 2 ; case 165
	.short _02075856 - _020754A2 - 2 ; case 166
	.short _02075856 - _020754A2 - 2 ; case 167
	.short _02075856 - _020754A2 - 2 ; case 168
	.short _02075856 - _020754A2 - 2 ; case 169
	.short _02075856 - _020754A2 - 2 ; case 170
	.short _02075856 - _020754A2 - 2 ; case 171
	.short _02075856 - _020754A2 - 2 ; case 172
	.short _02075856 - _020754A2 - 2 ; case 173
	.short _02075856 - _020754A2 - 2 ; case 174
	.short _02075856 - _020754A2 - 2 ; case 175
	.short _02075856 - _020754A2 - 2 ; case 176
	.short _02075856 - _020754A2 - 2 ; case 177
	.short _02075856 - _020754A2 - 2 ; case 178
	.short _02075856 - _020754A2 - 2 ; case 179
_0207560A:
	ldrh r0, [r4]
	mov r1, #0x64
	bl sub_02075AD0
	ldr r1, [r4, #8]
	add r1, r1, r6
	cmp r1, r0
	bls _02075628
	ldrh r0, [r4]
	mov r1, #0x64
	bl sub_02075AD0
	add sp, #0xc
	str r0, [r4, #8]
	pop {r4, r5, r6, r7, pc}
_02075628:
	add sp, #0xc
	str r1, [r4, #8]
	pop {r4, r5, r6, r7, pc}
_0207562E:
	ldrb r1, [r4, #0xc]
	add r0, r1, r6
	cmp r0, #0xff
	ble _02075638
	mov r1, #0xff
_02075638:
	add r1, r1, r6
	bpl _0207563E
	mov r1, #0
_0207563E:
	add sp, #0xc
	strb r1, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_02075644:
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207564E:
	ldrb r0, [r4, #0x11]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x11]
	pop {r4, r5, r6, r7, pc}
_02075658:
	ldrb r0, [r4, #0x12]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, r7, pc}
_02075662:
	ldrb r0, [r4, #0x13]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, r7, pc}
_0207566C:
	ldrb r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, r7, pc}
_02075676:
	ldrb r0, [r4, #0x15]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x15]
	pop {r4, r5, r6, r7, pc}
_02075680:
	ldrb r0, [r4, #0x16]
	add r0, r0, r6
	cmp r0, #0xff
	ble _02075690
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x16]
	pop {r4, r5, r6, r7, pc}
_02075690:
	add sp, #0xc
	strb r0, [r4, #0x16]
	pop {r4, r5, r6, r7, pc}
_02075696:
	ldrb r0, [r4, #0x17]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756A6
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x17]
	pop {r4, r5, r6, r7, pc}
_020756A6:
	add sp, #0xc
	strb r0, [r4, #0x17]
	pop {r4, r5, r6, r7, pc}
_020756AC:
	ldrb r0, [r4, #0x18]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756BC
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, r7, pc}
_020756BC:
	add sp, #0xc
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, r7, pc}
_020756C2:
	ldrb r0, [r4, #0x19]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756D2
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, r7, pc}
_020756D2:
	add sp, #0xc
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, r7, pc}
_020756D8:
	ldrb r0, [r4, #0x1a]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756E8
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x1a]
	pop {r4, r5, r6, r7, pc}
_020756E8:
	add sp, #0xc
	strb r0, [r4, #0x1a]
	pop {r4, r5, r6, r7, pc}
_020756EE:
	ldrb r0, [r4, #0x1b]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756FE
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, r7, pc}
_020756FE:
	add sp, #0xc
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, r7, pc}
_02075704:
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	sub r7, #0x3a
	ldr r1, [sp, #4]
	lsl r0, r7, #1
	str r0, [sp, #8]
	add r4, r5, #0
	ldrh r0, [r5, r0]
	ldrb r1, [r1, r7]
	add r4, #8
	bl sub_020790DC
	ldrb r1, [r4, r7]
	add r1, r6, r1
	cmp r1, r0
	ble _0207573A
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldrh r0, [r5, r0]
	ldrb r1, [r1, r7]
	bl sub_020790DC
	add sp, #0xc
	strb r0, [r4, r7]
	pop {r4, r5, r6, r7, pc}
_0207573A:
	add sp, #0xc
	strb r1, [r4, r7]
	pop {r4, r5, r6, r7, pc}
_02075740:
	add r5, #0xc
	sub r7, #0x3e
	ldrb r0, [r5, r7]
	add r0, r6, r0
	cmp r0, #3
	ble _02075754
	mov r0, #3
	add sp, #0xc
	strb r0, [r5, r7]
	pop {r4, r5, r6, r7, pc}
_02075754:
	add sp, #0xc
	strb r0, [r5, r7]
	pop {r4, r5, r6, r7, pc}
_0207575A:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	bls _02075774
	mov r0, #0x1f
	bic r1, r0
	mov r0, #0x1f
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075774:
	mov r0, #0x1f
	bic r1, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075784:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075860 ; =0xFFFFFC1F
	bls _020757A0
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757A0:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757AE:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075864 ; =0xFFFF83FF
	bls _020757CA
	and r1, r0
	mov r0, #0x1f
	lsl r0, r0, #0xa
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757CA:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757D8:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075868 ; =0xFFF07FFF
	bls _020757F4
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #0xe
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757F4:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075802:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #7
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _0207586C ; =0xFE0FFFFF
	bls _0207581E
	and r1, r0
	mov r0, #0x1f
	lsl r0, r0, #0x14
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207581E:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207582C:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #2
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075870 ; =0xC1FFFFFF
	bls _02075848
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #0x18
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075848:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075856:
	bl sub_02022974
_0207585A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02075860: .word 0xFFFFFC1F
_02075864: .word 0xFFFF83FF
_02075868: .word 0xFFF07FFF
_0207586C: .word 0xFE0FFFFF
_02075870: .word 0xC1FFFFFF
	thumb_func_end sub_02075454

	thumb_func_start sub_02075874
sub_02075874: ; 0x02075874
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02078208
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075874

	thumb_func_start sub_02075894
sub_02075894: ; 0x02075894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020781F8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075894

	thumb_func_start sub_020758B0
sub_020758B0: ; 0x020758B0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	cmp r4, #0
	bne _020758BE
	bl sub_02022974
_020758BE:
	cmp r6, #0x20
	bhi _020759B2
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020758CE: ; jump table
	.short _02075910 - _020758CE - 2 ; case 0
	.short _02075914 - _020758CE - 2 ; case 1
	.short _02075918 - _020758CE - 2 ; case 2
	.short _0207591C - _020758CE - 2 ; case 3
	.short _02075920 - _020758CE - 2 ; case 4
	.short _02075924 - _020758CE - 2 ; case 5
	.short _02075928 - _020758CE - 2 ; case 6
	.short _0207592C - _020758CE - 2 ; case 7
	.short _02075930 - _020758CE - 2 ; case 8
	.short _02075934 - _020758CE - 2 ; case 9
	.short _02075938 - _020758CE - 2 ; case 10
	.short _02075940 - _020758CE - 2 ; case 11
	.short _02075948 - _020758CE - 2 ; case 12
	.short _02075950 - _020758CE - 2 ; case 13
	.short _02075958 - _020758CE - 2 ; case 14
	.short _02075960 - _020758CE - 2 ; case 15
	.short _02075968 - _020758CE - 2 ; case 16
	.short _0207596C - _020758CE - 2 ; case 17
	.short _02075970 - _020758CE - 2 ; case 18
	.short _02075974 - _020758CE - 2 ; case 19
	.short _02075978 - _020758CE - 2 ; case 20
	.short _0207597C - _020758CE - 2 ; case 21
	.short _02075980 - _020758CE - 2 ; case 22
	.short _02075984 - _020758CE - 2 ; case 23
	.short _02075988 - _020758CE - 2 ; case 24
	.short _0207598C - _020758CE - 2 ; case 25
	.short _02075990 - _020758CE - 2 ; case 26
	.short _02075994 - _020758CE - 2 ; case 27
	.short _0207599C - _020758CE - 2 ; case 28
	.short _020759A4 - _020758CE - 2 ; case 29
	.short _020759A8 - _020758CE - 2 ; case 30
	.short _020759AC - _020758CE - 2 ; case 31
	.short _020759B0 - _020758CE - 2 ; case 32
_02075910:
	ldrb r5, [r4]
	b _020759B2
_02075914:
	ldrb r5, [r4, #1]
	b _020759B2
_02075918:
	ldrb r5, [r4, #2]
	b _020759B2
_0207591C:
	ldrb r5, [r4, #3]
	b _020759B2
_02075920:
	ldrb r5, [r4, #4]
	b _020759B2
_02075924:
	ldrb r5, [r4, #5]
	b _020759B2
_02075928:
	ldrb r5, [r4, #6]
	b _020759B2
_0207592C:
	ldrb r5, [r4, #7]
	b _020759B2
_02075930:
	ldrb r5, [r4, #8]
	b _020759B2
_02075934:
	ldrb r5, [r4, #9]
	b _020759B2
_02075938:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1e
	lsr r5, r0, #0x1e
	b _020759B2
_02075940:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1e
	b _020759B2
_02075948:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1a
	lsr r5, r0, #0x1e
	b _020759B2
_02075950:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1e
	b _020759B2
_02075958:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x16
	lsr r5, r0, #0x1e
	b _020759B2
_02075960:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x14
	lsr r5, r0, #0x1e
	b _020759B2
_02075968:
	ldrh r5, [r4, #0xc]
	b _020759B2
_0207596C:
	ldrh r5, [r4, #0xe]
	b _020759B2
_02075970:
	ldrb r5, [r4, #0x10]
	b _020759B2
_02075974:
	ldrb r5, [r4, #0x11]
	b _020759B2
_02075978:
	ldrb r5, [r4, #0x12]
	b _020759B2
_0207597C:
	ldrb r5, [r4, #0x13]
	b _020759B2
_02075980:
	ldrb r5, [r4, #0x14]
	b _020759B2
_02075984:
	ldrb r5, [r4, #0x15]
	b _020759B2
_02075988:
	ldrb r5, [r4, #0x16]
	b _020759B2
_0207598C:
	ldrb r5, [r4, #0x17]
	b _020759B2
_02075990:
	ldrb r5, [r4, #0x18]
	b _020759B2
_02075994:
	ldrb r0, [r4, #0x19]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x19
	b _020759B2
_0207599C:
	ldrb r0, [r4, #0x19]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1f
	b _020759B2
_020759A4:
	ldr r5, [r4, #0x1c]
	b _020759B2
_020759A8:
	ldr r5, [r4, #0x20]
	b _020759B2
_020759AC:
	ldr r5, [r4, #0x24]
	b _020759B2
_020759B0:
	ldr r5, [r4, #0x28]
_020759B2:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020758B0

	thumb_func_start sub_020759B8
sub_020759B8: ; 0x020759B8
	push {r4, lr}
	add r4, r0, #0
	bne _020759C2
	bl sub_02022974
_020759C2:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020759B8

	thumb_func_start sub_020759CC
sub_020759CC: ; 0x020759CC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_02078740
	mov r1, #0
	bl sub_02075894
	add r5, r0, #0
	add r1, r4, #0
	bl sub_020758B0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020759CC

	thumb_func_start sub_020759F0
sub_020759F0: ; 0x020759F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02075894
	add r5, r0, #0
	add r1, r4, #0
	bl sub_020758B0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020759F0

	thumb_func_start sub_02075A10
sub_02075A10: ; 0x02075A10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02075AD0
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #1
	bl sub_02075AD0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073CD4
	sub r1, r7, r4
	mov r0, #0x64
	mul r0, r1
	sub r1, r6, r4
	bl sub_020E2178
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02075A10

	thumb_func_start sub_02075A70
sub_02075A70: ; 0x02075A70
	ldr r3, _02075A74 ; =sub_02075A78
	bx r3
	; .align 2, 0
_02075A74: .word sub_02075A78
	thumb_func_end sub_02075A70

	thumb_func_start sub_02075A78
sub_02075A78: ; 0x02075A78
	push {r4, r5, r6, lr}
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	bl sub_02075B40
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02075AD0
	sub r0, r0, r4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02075A78

	thumb_func_start sub_02075AAC
sub_02075AAC: ; 0x02075AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02075AD0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075AAC

	thumb_func_start sub_02075AD0
sub_02075AD0: ; 0x02075AD0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x15
	bl sub_020759F0
	add r1, r4, #0
	bl sub_02075B00
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02075AD0

	thumb_func_start sub_02075AE4
sub_02075AE4: ; 0x02075AE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #8
	blt _02075AF2
	bl sub_02022974
_02075AF2:
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	bl sub_02006AA4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075AE4

	thumb_func_start sub_02075B00
sub_02075B00: ; 0x02075B00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	cmp r6, #8
	blt _02075B0E
	bl sub_02022974
_02075B0E:
	cmp r5, #0x65
	ble _02075B16
	bl sub_02022974
_02075B16:
	mov r1, #0x65
	mov r0, #0
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02075AE4
	lsl r0, r5, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02075B00

	thumb_func_start sub_02075B38
sub_02075B38: ; 0x02075B38
	ldr r3, _02075B3C ; =sub_02075B40
	bx r3
	; .align 2, 0
_02075B3C: .word sub_02075B40
	thumb_func_end sub_02075B38

	thumb_func_start sub_02075B40
sub_02075B40: ; 0x02075B40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r7, #0
	bl sub_02075B78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02075B40

	thumb_func_start sub_02075B78
sub_02075B78: ; 0x02075B78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl sub_02075894
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02075B9C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075B78

	thumb_func_start sub_02075B9C
sub_02075B9C: ; 0x02075B9C
	push {r4, lr}
	mov r1, #0x15
	add r4, r2, #0
	bl sub_020758B0
	ldr r1, _02075BC4 ; =0x021C089C
	bl sub_02075AE4
	ldr r2, _02075BC8 ; =0x021C08A0
	mov r1, #1
_02075BB0:
	ldr r0, [r2, #0]
	cmp r0, r4
	bhi _02075BBE
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x65
	blt _02075BB0
_02075BBE:
	sub r0, r1, #1
	pop {r4, pc}
	nop
_02075BC4: .word 0x021C089C
_02075BC8: .word 0x021C08A0
	thumb_func_end sub_02075B9C

	thumb_func_start sub_02075BCC
sub_02075BCC: ; 0x02075BCC
	ldr r3, _02075BD0 ; =sub_02075BD4
	bx r3
	; .align 2, 0
_02075BD0: .word sub_02075BD4
	thumb_func_end sub_02075BCC

	thumb_func_start sub_02075BD4
sub_02075BD4: ; 0x02075BD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02073D20
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073D48
	add r0, r6, #0
	bl sub_02075BFC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075BD4

	thumb_func_start sub_02075BFC
sub_02075BFC: ; 0x02075BFC
	push {r3, lr}
	mov r1, #0x19
	bl sub_020E2178
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075BFC

	thumb_func_start sub_02075C0C
sub_02075C0C: ; 0x02075C0C
	push {r3, lr}
	cmp r2, #1
	blo _02075C16
	cmp r2, #5
	bls _02075C1A
_02075C16:
	add r0, r1, #0
	pop {r3, pc}
_02075C1A:
	lsl r3, r0, #2
	add r3, r0, r3
	ldr r0, _02075C5C ; =0x020F0618
	sub r2, r2, #1
	add r0, r0, r3
	ldrsb r2, [r2, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _02075C46
	cmp r2, #1
	bne _02075C58
	mov r0, #0x6e
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _02075C58
_02075C46:
	mov r0, #0x5a
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_02075C58:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_02075C5C: .word 0x020F0618
	thumb_func_end sub_02075C0C

	thumb_func_start sub_02075C60
sub_02075C60: ; 0x02075C60
	lsl r2, r0, #2
	add r2, r0, r2
	ldr r0, _02075C70 ; =0x020F0618
	sub r1, r1, #1
	add r0, r0, r2
	ldrsb r0, [r1, r0]
	bx lr
	nop
_02075C70: .word 0x020F0618
	thumb_func_end sub_02075C60

	thumb_func_start sub_02075C74
sub_02075C74: ; 0x02075C74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	cmp r6, #5
	bne _02075C8C
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	bne _02075D60
_02075C8C:
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02075D60
	ldr r0, _02075D64 ; =0x000001EE
	cmp r1, r0
	beq _02075D60
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r7, r0, #0x18
	add r0, r5, #0
	mov r1, #9
	add r2, r4, #0
	bl sub_02074470
	add r1, sp, #4
	strh r0, [r1]
	add r0, r4, #0
	ldrsh r1, [r1, r0]
	cmp r1, #0x64
	blt _02075CDA
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02075CDA:
	cmp r1, #0xc8
	blt _02075CE4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02075CE4:
	lsl r0, r6, #1
	add r1, r6, r0
	ldr r0, _02075D68 ; =0x020F05A0
	add r0, r0, r1
	ldrsb r4, [r4, r0]
	cmp r4, #0
	ble _02075D06
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _02075D06
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D06:
	cmp r4, #0
	ble _02075D20
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	cmp r1, r0
	bne _02075D20
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D20:
	cmp r4, #0
	ble _02075D36
	cmp r7, #0x35
	bne _02075D36
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D36:
	add r0, sp, #4
	mov r1, #0
	ldrsh r2, [r0, r1]
	add r2, r2, r4
	strh r2, [r0]
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _02075D48
	strh r1, [r0]
_02075D48:
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0xff
	ble _02075D56
	mov r0, #0xff
	strh r0, [r1]
_02075D56:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #4
	bl sub_02074B30
_02075D60:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02075D64: .word 0x000001EE
_02075D68: .word 0x020F05A0
	thumb_func_end sub_02075C74

	thumb_func_start sub_02075D6C
sub_02075D6C: ; 0x02075D6C
	ldr r3, _02075D70 ; =sub_02075D74
	bx r3
	; .align 2, 0
_02075D70: .word sub_02075D74
	thumb_func_end sub_02075D6C

	thumb_func_start sub_02075D74
sub_02075D74: ; 0x02075D74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02075DAC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02075D74

	thumb_func_start sub_02075DAC
sub_02075DAC: ; 0x02075DAC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl sub_02075894
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02075DD0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075DAC

	thumb_func_start sub_02075DD0
sub_02075DD0: ; 0x02075DD0
	push {r4, lr}
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020758B0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	beq _02075DEA
	cmp r1, #0xfe
	beq _02075DEE
	cmp r1, #0xff
	beq _02075DF2
	b _02075DF6
_02075DEA:
	mov r0, #0
	pop {r4, pc}
_02075DEE:
	mov r0, #1
	pop {r4, pc}
_02075DF2:
	mov r0, #2
	pop {r4, pc}
_02075DF6:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r1, r0
	bls _02075E02
	mov r0, #1
	b _02075E04
_02075E02:
	mov r0, #0
_02075E04:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02075DD0

	thumb_func_start sub_02075E0C
sub_02075E0C: ; 0x02075E0C
	ldr r3, _02075E10 ; =sub_02075E14
	bx r3
	; .align 2, 0
_02075E10: .word sub_02075E14
	thumb_func_end sub_02075E0C

	thumb_func_start sub_02075E14
sub_02075E14: ; 0x02075E14
	push {r3, r4, r5, lr}
	mov r1, #7
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02075E38
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075E14

	thumb_func_start sub_02075E38
sub_02075E38: ; 0x02075E38
	ldr r3, _02075E60 ; =0xFFFF0000
	lsl r2, r1, #0x10
	and r1, r3
	and r3, r0
	lsl r0, r0, #0x10
	lsr r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	eor r0, r3
	lsr r2, r2, #0x10
	eor r0, r1
	eor r0, r2
	cmp r0, #8
	bhs _02075E58
	mov r0, #1
	b _02075E5A
_02075E58:
	mov r0, #0
_02075E5A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02075E60: .word 0xFFFF0000
	thumb_func_end sub_02075E38

	thumb_func_start sub_02075E64
sub_02075E64: ; 0x02075E64
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02075EF0 ; =0xFFFF0000
	and r0, r7
	lsr r1, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	eor r0, r1
	lsr r7, r0, #3
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r4, #0
_02075E90:
	add r0, r4, #0
	bl sub_020787CC
	tst r0, r7
	beq _02075EC0
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	beq _02075EB2
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _02075EE2
_02075EB2:
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	b _02075EE2
_02075EC0:
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	beq _02075EE2
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02075EE2:
	add r4, r4, #1
	cmp r4, #0xd
	blt _02075E90
	lsl r0, r5, #0x10
	orr r0, r6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02075EF0: .word 0xFFFF0000
	thumb_func_end sub_02075E64

	thumb_func_start sub_02075EF4
sub_02075EF4: ; 0x02075EF4
	push {r3, lr}
	mov r3, #0
	bl sub_02075F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075EF4

	thumb_func_start sub_02075F00
sub_02075F00: ; 0x02075F00
	push {r3, lr}
	mov r3, #1
	bl sub_02075F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075F00

	thumb_func_start sub_02075F0C
sub_02075F0C: ; 0x02075F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02073D20
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	bl sub_02075D74
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02075E14
	mov r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	ldr r0, _02075FAC ; =0x000001EE
	cmp r4, r0
	bne _02075F68
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02075FB0 ; =0x000001EA
	cmp r0, r1
	bne _02075F64
	mov r1, #1
	b _02075F76
_02075F64:
	mov r1, #0
	b _02075F76
_02075F68:
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02075F76:
	ldr r0, [sp, #0x14]
	str r7, [sp]
	cmp r0, #1
	bne _02075F90
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl sub_02076300
	b _02075FA0
_02075F90:
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl sub_02075FB4
_02075FA0:
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02075FAC: .word 0x000001EE
_02075FB0: .word 0x000001EA
	thumb_func_end sub_02075F0C

	thumb_func_start sub_02075FB4
sub_02075FB4: ; 0x02075FB4
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #8]
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r7, r3, #0
	bl sub_020761E8
	ldr r1, _020761E0 ; =0x000001A5
	cmp r4, r1
	bgt _02076024
	blt _02075FDA
	b _020760E4
_02075FDA:
	add r2, r1, #0
	sub r2, #0x46
	cmp r4, r2
	bgt _02075FF2
	sub r1, #0x46
	cmp r4, r1
	blt _02075FEA
	b _0207610E
_02075FEA:
	cmp r4, #0xc9
	bne _02075FF0
	b _02076136
_02075FF0:
	b _020761AA
_02075FF2:
	add r2, r1, #0
	sub r2, #0x23
	cmp r4, r2
	bgt _02076004
	sub r1, #0x23
	cmp r4, r1
	bne _02076002
	b _02076124
_02076002:
	b _020761AA
_02076004:
	add r2, r1, #0
	sub r2, #8
	cmp r4, r2
	bgt _02076022
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	blt _02076022
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	beq _02076090
	sub r1, #8
	cmp r4, r1
	beq _020760A6
_02076022:
	b _020761AA
_02076024:
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	bgt _02076056
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	blt _02076036
	b _02076194
_02076036:
	add r2, r1, #2
	cmp r4, r2
	bgt _0207604C
	add r2, r1, #1
	cmp r4, r2
	blt _0207604A
	beq _020760BC
	add r1, r1, #2
	cmp r4, r1
	beq _020760D0
_0207604A:
	b _020761AA
_0207604C:
	add r1, #0x3a
	cmp r4, r1
	bne _02076054
	b _0207617E
_02076054:
	b _020761AA
_02076056:
	add r2, r1, #0
	add r2, #0x47
	cmp r4, r2
	bgt _02076068
	add r1, #0x47
	cmp r4, r1
	bne _02076066
	b _02076168
_02076066:
	b _020761AA
_02076068:
	add r2, r1, #0
	add r2, #0x4a
	cmp r4, r2
	bgt _0207608E
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	blt _0207608E
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	beq _020760F8
	add r2, r1, #0
	add r2, #0x49
	cmp r4, r2
	beq _0207614A
	add r1, #0x4a
	cmp r4, r1
	beq _0207615A
_0207608E:
	b _020761AA
_02076090:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x48
	add r0, r0, r1
	add r6, #0xa6
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760A6:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x4e
	add r0, r0, r1
	add r6, #0xac
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760BC:
	mov r1, #0x75
	add r7, #0x54
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xb2
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760D0:
	mov r1, #0x75
	add r7, #0x58
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xb6
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760E4:
	mov r1, #0x75
	add r7, #0x5c
	strh r1, [r5]
	add r1, r7, r0
	strh r1, [r5, #2]
	lsl r1, r6, #1
	add r1, #0xba
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760F8:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x60
	add r0, r0, r1
	add r6, #0xbe
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207610E:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r7, #1
	add r1, #0x40
	add r1, r0, r1
	strh r1, [r5, #2]
	lsl r1, r6, #2
	add r1, #0x9e
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076124:
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x9a
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076136:
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x9c
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207614A:
	mov r1, #0x75
	strh r1, [r5]
	add r1, r0, #0
	add r1, #0x84
	strh r1, [r5, #2]
	add r0, #0xe2
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207615A:
	mov r0, #0x75
	strh r0, [r5]
	mov r0, #0x84
	strh r0, [r5, #2]
	mov r0, #0xe2
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076168:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x86
	add r0, r0, r1
	add r6, #0xe4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207617E:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x8a
	add r0, r0, r1
	add r6, #0xe8
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076194:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x96
	add r0, r0, r1
	add r6, #0xf4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020761AA:
	mov r0, #4
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _020761B8
	mov r1, #1
	b _020761BA
_020761B8:
	mov r1, #0
_020761BA:
	mov r0, #6
	mul r0, r4
	add r2, r7, r0
	add r1, r2, r1
	add r0, r0, #4
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	ldr r0, _020761E4 ; =0x00000147
	cmp r4, r0
	bne _020761DE
	cmp r7, #2
	bne _020761DE
	strh r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #8]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0xc]
_020761DE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020761E0: .word 0x000001A5
_020761E4: .word 0x00000147
	thumb_func_end sub_02075FB4

	thumb_func_start sub_020761E8
sub_020761E8: ; 0x020761E8
	ldr r2, _020762FC ; =0x000001A5
	cmp r0, r2
	bgt _02076234
	bge _020762B2
	add r3, r2, #0
	sub r3, #0x46
	cmp r0, r3
	bgt _02076204
	sub r2, #0x46
	cmp r0, r2
	bge _020762C2
	cmp r0, #0xc9
	beq _020762D2
	b _020762F8
_02076204:
	add r3, r2, #0
	sub r3, #0x23
	cmp r0, r3
	bgt _02076214
	sub r2, #0x23
	cmp r0, r2
	beq _020762CA
	b _020762F8
_02076214:
	add r3, r2, #0
	sub r3, #8
	cmp r0, r3
	bgt _020762F8
	add r3, r2, #0
	sub r3, #9
	cmp r0, r3
	blt _020762F8
	add r3, r2, #0
	sub r3, #9
	cmp r0, r3
	beq _02076292
	sub r2, #8
	cmp r0, r2
	beq _0207629A
	b _020762F8
_02076234:
	add r3, r2, #0
	add r3, #0x42
	cmp r0, r3
	bgt _02076262
	add r3, r2, #0
	add r3, #0x42
	cmp r0, r3
	bge _020762F2
	add r3, r2, #2
	cmp r0, r3
	bgt _0207625A
	add r3, r2, #1
	cmp r0, r3
	blt _020762F8
	beq _020762A2
	add r2, r2, #2
	cmp r0, r2
	beq _020762AA
	b _020762F8
_0207625A:
	add r2, #0x3a
	cmp r0, r2
	beq _020762EA
	b _020762F8
_02076262:
	add r3, r2, #0
	add r3, #0x47
	cmp r0, r3
	bgt _02076272
	add r2, #0x47
	cmp r0, r2
	beq _020762E2
	b _020762F8
_02076272:
	add r3, r2, #0
	add r3, #0x49
	cmp r0, r3
	bgt _020762F8
	add r3, r2, #0
	add r3, #0x48
	cmp r0, r3
	blt _020762F8
	add r3, r2, #0
	add r3, #0x48
	cmp r0, r3
	beq _020762BA
	add r2, #0x49
	cmp r0, r2
	beq _020762DA
	b _020762F8
_02076292:
	cmp r1, #2
	bls _020762F8
	mov r1, #0
	b _020762F8
_0207629A:
	cmp r1, #2
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762A2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762AA:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762B2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762BA:
	cmp r1, #0x11
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762C2:
	cmp r1, #3
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762CA:
	cmp r1, #3
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762D2:
	cmp r1, #0x1c
	blo _020762F8
	mov r1, #0
	b _020762F8
_020762DA:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762E2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762EA:
	cmp r1, #5
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762F2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
_020762F8:
	add r0, r1, #0
	bx lr
	; .align 2, 0
_020762FC: .word 0x000001A5
	thumb_func_end sub_020761E8

	thumb_func_start sub_02076300
sub_02076300: ; 0x02076300
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #8]
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r7, r3, #0
	bl sub_020761E8
	ldr r1, _020765A4 ; =0x000001A5
	cmp r4, r1
	bgt _02076370
	blt _02076326
	b _02076430
_02076326:
	add r2, r1, #0
	sub r2, #0x46
	cmp r4, r2
	bgt _0207633E
	sub r1, #0x46
	cmp r4, r1
	blt _02076336
	b _0207645A
_02076336:
	cmp r4, #0xc9
	bne _0207633C
	b _02076482
_0207633C:
	b _0207656C
_0207633E:
	add r2, r1, #0
	sub r2, #0x23
	cmp r4, r2
	bgt _02076350
	sub r1, #0x23
	cmp r4, r1
	bne _0207634E
	b _02076470
_0207634E:
	b _0207656C
_02076350:
	add r2, r1, #0
	sub r2, #8
	cmp r4, r2
	bgt _0207636E
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	blt _0207636E
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	beq _020763DC
	sub r1, #8
	cmp r4, r1
	beq _020763F2
_0207636E:
	b _0207656C
_02076370:
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	bgt _020763A2
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	blt _02076382
	b _0207652E
_02076382:
	add r2, r1, #2
	cmp r4, r2
	bgt _02076398
	add r2, r1, #1
	cmp r4, r2
	blt _02076396
	beq _02076408
	add r1, r1, #2
	cmp r4, r1
	beq _0207641C
_02076396:
	b _0207656C
_02076398:
	add r1, #0x3a
	cmp r4, r1
	bne _020763A0
	b _020764F0
_020763A0:
	b _0207656C
_020763A2:
	add r2, r1, #0
	add r2, #0x47
	cmp r4, r2
	bgt _020763B4
	add r1, #0x47
	cmp r4, r1
	bne _020763B2
	b _020764B4
_020763B2:
	b _0207656C
_020763B4:
	add r2, r1, #0
	add r2, #0x4a
	cmp r4, r2
	bgt _020763DA
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	blt _020763DA
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	beq _02076444
	add r2, r1, #0
	add r2, #0x49
	cmp r4, r2
	beq _02076496
	add r1, #0x4a
	cmp r4, r1
	beq _020764A6
_020763DA:
	b _0207656C
_020763DC:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x48
	add r0, r0, r1
	add r6, #0x92
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020763F2:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x4e
	add r0, r0, r1
	add r6, #0x98
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076408:
	mov r1, #0xa6
	add r7, #0x54
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0x9e
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207641C:
	mov r1, #0xa6
	add r7, #0x58
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xa2
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076430:
	mov r1, #0xa6
	add r7, #0x5c
	strh r1, [r5]
	add r1, r7, r0
	strh r1, [r5, #2]
	lsl r1, r6, #1
	add r1, #0xa6
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076444:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x60
	add r0, r0, r1
	add r6, #0xaa
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207645A:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r7, #1
	add r1, #0x40
	add r1, r0, r1
	strh r1, [r5, #2]
	lsl r1, r6, #2
	add r1, #0x8a
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076470:
	mov r1, #0xa6
	strh r1, [r5]
	lsr r1, r7, #1
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x86
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076482:
	mov r1, #0xa6
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x88
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076496:
	mov r1, #0xa6
	strh r1, [r5]
	add r1, r0, #0
	add r1, #0x84
	strh r1, [r5, #2]
	add r0, #0xce
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764A6:
	mov r0, #0xa6
	strh r0, [r5]
	mov r0, #0x84
	strh r0, [r5, #2]
	mov r0, #0xce
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764B4:
	cmp r0, #0
	beq _020764CC
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #0x86
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0xe6
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764CC:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _020764DA
	mov r2, #1
	b _020764DC
_020764DA:
	mov r2, #0
_020764DC:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764F0:
	cmp r0, #0
	beq _0207650A
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x8a
	add r0, r0, r1
	add r6, #0xe8
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207650A:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _02076518
	mov r2, #1
	b _0207651A
_02076518:
	mov r2, #0
_0207651A:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207652E:
	cmp r0, #0
	beq _02076548
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x96
	add r0, r0, r1
	add r6, #0xf4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076548:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _02076556
	mov r2, #1
	b _02076558
_02076556:
	mov r2, #0
_02076558:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207656C:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _0207657A
	mov r1, #1
	b _0207657C
_0207657A:
	mov r1, #0
_0207657C:
	mov r0, #6
	mul r0, r4
	add r2, r7, r0
	add r1, r2, r1
	add r0, r0, #4
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	ldr r0, _020765A8 ; =0x00000147
	cmp r4, r0
	bne _020765A0
	cmp r7, #2
	bne _020765A0
	strh r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #8]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0xc]
_020765A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020765A4: .word 0x000001A5
_020765A8: .word 0x00000147
	thumb_func_end sub_02076300

	thumb_func_start sub_020765AC
sub_020765AC: ; 0x020765AC
	ldr r3, _020765B4 ; =sub_020765C4
	mov r2, #0
	bx r3
	nop
_020765B4: .word sub_020765C4
	thumb_func_end sub_020765AC

	thumb_func_start sub_020765B8
sub_020765B8: ; 0x020765B8
	ldr r3, _020765C0 ; =sub_020765C4
	mov r2, #1
	bx r3
	nop
_020765C0: .word sub_020765C4
	thumb_func_end sub_020765B8

	thumb_func_start sub_020765C4
sub_020765C4: ; 0x020765C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r2, [sp, #4]
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	bl sub_02075D74
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	ldr r0, _02076640 ; =0x000001EE
	cmp r4, r0
	bne _0207660C
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02076644 ; =0x000001EA
	cmp r0, r1
	bne _02076608
	mov r3, #1
	b _0207661A
_02076608:
	mov r3, #0
	b _0207661A
_0207660C:
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_0207661A:
	ldr r0, [sp, #4]
	str r6, [sp]
	cmp r0, #1
	bne _02076630
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_020767BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076630:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02076648
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02076640: .word 0x000001EE
_02076644: .word 0x000001EA
	thumb_func_end sub_020765C4

	thumb_func_start sub_02076648
sub_02076648: ; 0x02076648
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, r3, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020761E8
	ldr r1, _020767B8 ; =0x000001A5
	cmp r5, r1
	bgt _020766A4
	bge _02076732
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bgt _02076674
	sub r1, #0x46
	cmp r5, r1
	bge _02076746
	cmp r5, #0xc9
	beq _0207675A
	b _02076798
_02076674:
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	bgt _02076684
	sub r1, #0x23
	cmp r5, r1
	beq _02076750
	b _02076798
_02076684:
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	bgt _020766A2
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	blt _020766A2
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	beq _0207670A
	sub r1, #8
	cmp r5, r1
	beq _02076716
_020766A2:
	b _02076798
_020766A4:
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bgt _020766D2
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bge _0207678C
	add r2, r1, #2
	cmp r5, r2
	bgt _020766CA
	add r2, r1, #1
	cmp r5, r2
	blt _02076798
	beq _02076722
	add r1, r1, #2
	cmp r5, r1
	beq _0207672A
	b _02076798
_020766CA:
	add r1, #0x3a
	cmp r5, r1
	beq _02076780
	b _02076798
_020766D2:
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	bgt _020766E2
	add r1, #0x47
	cmp r5, r1
	beq _02076774
	b _02076798
_020766E2:
	add r2, r1, #0
	add r2, #0x4a
	cmp r5, r2
	bgt _02076798
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	blt _02076798
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	beq _0207673A
	add r2, r1, #0
	add r2, #0x49
	cmp r5, r2
	beq _02076766
	add r1, #0x4a
	cmp r5, r1
	beq _0207676E
	b _02076798
_0207670A:
	lsr r2, r4, #1
	add r2, #0x48
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076716:
	lsr r2, r4, #1
	add r2, #0x4e
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076722:
	add r4, #0x54
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_0207672A:
	add r4, #0x58
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_02076732:
	add r4, #0x5c
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_0207673A:
	lsr r2, r4, #1
	add r2, #0x60
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076746:
	lsl r2, r4, #1
	add r2, #0x40
	mov r1, #0x79
	add r2, r0, r2
	b _020767AA
_02076750:
	lsr r2, r4, #1
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_0207675A:
	lsr r2, r4, #1
	add r2, #8
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076766:
	add r2, r0, #0
	mov r1, #0x79
	add r2, #0x84
	b _020767AA
_0207676E:
	mov r1, #0x79
	mov r2, #0x84
	b _020767AA
_02076774:
	lsr r2, r4, #1
	add r2, #0x88
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076780:
	lsr r2, r4, #1
	add r2, #0x8c
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_0207678C:
	lsr r2, r4, #1
	add r2, #0x98
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076798:
	mov r1, #5
	cmp r6, #1
	beq _020767A2
	mov r2, #1
	b _020767A4
_020767A2:
	mov r2, #0
_020767A4:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
_020767AA:
	add r0, sp, #0
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020767B8: .word 0x000001A5
	thumb_func_end sub_02076648

	thumb_func_start sub_020767BC
sub_020767BC: ; 0x020767BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, r3, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020761E8
	ldr r1, _02076978 ; =0x000001A5
	cmp r5, r1
	bgt _02076818
	bge _020768A8
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bgt _020767E8
	sub r1, #0x46
	cmp r5, r1
	bge _020768BC
	cmp r5, #0xc9
	beq _020768D0
	b _02076956
_020767E8:
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	bgt _020767F8
	sub r1, #0x23
	cmp r5, r1
	beq _020768C6
	b _02076956
_020767F8:
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	bgt _02076816
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	blt _02076816
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	beq _02076880
	sub r1, #8
	cmp r5, r1
	beq _0207688C
_02076816:
	b _02076956
_02076818:
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bgt _02076848
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	blt _0207682A
	b _02076932
_0207682A:
	add r2, r1, #2
	cmp r5, r2
	bgt _02076840
	add r2, r1, #1
	cmp r5, r2
	blt _0207683E
	beq _02076898
	add r1, r1, #2
	cmp r5, r1
	beq _020768A0
_0207683E:
	b _02076956
_02076840:
	add r1, #0x3a
	cmp r5, r1
	beq _0207690E
	b _02076956
_02076848:
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	bgt _02076858
	add r1, #0x47
	cmp r5, r1
	beq _020768EA
	b _02076956
_02076858:
	add r2, r1, #0
	add r2, #0x4a
	cmp r5, r2
	bgt _02076956
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	blt _02076956
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	beq _020768B0
	add r2, r1, #0
	add r2, #0x49
	cmp r5, r2
	beq _020768DC
	add r1, #0x4a
	cmp r5, r1
	beq _020768E4
	b _02076956
_02076880:
	lsr r2, r4, #1
	add r2, #0x48
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_0207688C:
	lsr r2, r4, #1
	add r2, #0x4e
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_02076898:
	add r4, #0x54
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768A0:
	add r4, #0x58
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768A8:
	add r4, #0x5c
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768B0:
	lsr r2, r4, #1
	add r2, #0x60
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768BC:
	lsl r2, r4, #1
	add r2, #0x40
	mov r1, #0xa8
	add r2, r0, r2
	b _02076968
_020768C6:
	lsr r2, r4, #1
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768D0:
	lsr r2, r4, #1
	add r2, #8
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768DC:
	add r2, r0, #0
	mov r1, #0xa8
	add r2, #0x84
	b _02076968
_020768E4:
	mov r1, #0xa8
	mov r2, #0x84
	b _02076968
_020768EA:
	cmp r0, #0
	beq _020768FA
	lsr r2, r4, #1
	add r2, #0x88
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_020768FA:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076904
	mov r2, #1
	b _02076906
_02076904:
	mov r2, #0
_02076906:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_0207690E:
	cmp r0, #0
	beq _0207691E
	lsr r2, r4, #1
	add r2, #0x8c
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_0207691E:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076928
	mov r2, #1
	b _0207692A
_02076928:
	mov r2, #0
_0207692A:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_02076932:
	cmp r0, #0
	beq _02076942
	lsr r2, r4, #1
	add r2, #0x98
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_02076942:
	mov r1, #0xa7
	cmp r6, #1
	beq _0207694C
	mov r2, #1
	b _0207694E
_0207694C:
	mov r2, #0
_0207694E:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_02076956:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076960
	mov r2, #1
	b _02076962
_02076960:
	mov r2, #0
_02076962:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
_02076968:
	add r0, sp, #0
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02076978: .word 0x000001A5
	thumb_func_end sub_020767BC

	thumb_func_start sub_0207697C
sub_0207697C: ; 0x0207697C
	mov r2, #0x3c
	strh r2, [r0]
	lsl r1, r1, #1
	strh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strb r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207697C

	thumb_func_start sub_02076994
sub_02076994: ; 0x02076994
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r6, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	add r2, sp, #0x24
	str r3, [sp, #0x20]
	ldr r5, [sp, #0x94]
	mov r7, #1
	bl sub_02076AAC
	ldr r0, [sp, #0x8c]
	cmp r0, #0x66
	bne _020769B6
	mov r7, #2
_020769B6:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x98]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02076A98 ; =0x00004E2F
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	str r4, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02076A9C ; =0x00004E2A
	mov r1, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _02076AA0 ; =0x00004E27
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x30]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02076AA0 ; =0x00004E27
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	ldr r4, _02076AA4 ; =0x020F05E4
	add r3, sp, #0x3c
	mov r2, #6
_02076A34:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02076A34
	ldr r0, [r4, #0]
	ldr r1, _02076A98 ; =0x00004E2F
	str r0, [r3, #0]
	add r0, r5, r1
	str r0, [sp, #0x50]
	sub r0, r1, #5
	add r0, r5, r0
	sub r1, #8
	str r0, [sp, #0x54]
	add r0, r5, r1
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, _02076AA8 ; =0x020F0588
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x44]
	add r0, r6, #0
	add r2, sp, #0x3c
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021F24
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x88]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	bl sub_0200D330
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02076A98: .word 0x00004E2F
_02076A9C: .word 0x00004E2A
_02076AA0: .word 0x00004E27
_02076AA4: .word 0x020F05E4
_02076AA8: .word 0x020F0588
	thumb_func_end sub_02076994

	thumb_func_start sub_02076AAC
sub_02076AAC: ; 0x02076AAC
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #2
	bne _02076AD0
	mov r1, #0x3c
	str r1, [r4, #0]
	lsl r1, r0, #2
	add r1, r0, r1
	str r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r1, #2
	str r0, [r4, #0xc]
	add r0, r1, #3
	str r0, [r4, #0x10]
	add r0, r1, #4
	str r0, [r4, #0x14]
	pop {r4, pc}
_02076AD0:
	mov r1, #6
	str r1, [r4, #0]
	bl sub_020788D0
	lsl r1, r0, #2
	add r1, r0, r1
	str r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r1, #2
	str r0, [r4, #0xc]
	add r0, r1, #3
	str r0, [r4, #0x10]
	add r0, r1, #4
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_02076AAC

	thumb_func_start sub_02076AF0
sub_02076AF0: ; 0x02076AF0
	mov r0, #0xec
	bx lr
	thumb_func_end sub_02076AF0

	thumb_func_start sub_02076AF4
sub_02076AF4: ; 0x02076AF4
	mov r0, #0x88
	bx lr
	thumb_func_end sub_02076AF4

	thumb_func_start sub_02076AF8
sub_02076AF8: ; 0x02076AF8
	ldr r3, _02076AFC ; =sub_02076B00
	bx r3
	; .align 2, 0
_02076AFC: .word sub_02076B00
	thumb_func_end sub_02076AF8

	thumb_func_start sub_02076B00
sub_02076B00: ; 0x02076B00
	push {r3, lr}
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_02076B00

	thumb_func_start sub_02076B10
sub_02076B10: ; 0x02076B10
	bx lr
	; .align 2, 0
	thumb_func_end sub_02076B10

	thumb_func_start sub_02076B14
sub_02076B14: ; 0x02076B14
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_020759F0
	mov r1, #0x64
	add r5, r0, #0
	bl sub_02075B00
	ldr r1, [sp, #4]
	cmp r1, r0
	bls _02076B64
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #4
	bl sub_02074B30
_02076B64:
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #0x64
	bls _02076B72
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02076B72:
	add r0, r5, #0
	bl sub_02075B00
	ldr r1, [sp, #4]
	cmp r1, r0
	blo _02076B8E
	add r0, r4, #0
	mov r1, #0xa1
	add r2, sp, #0
	bl sub_02074B30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02076B8E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02076B14

	thumb_func_start sub_02076B94
sub_02076B94: ; 0x02076B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r1, #0
	str r0, [sp]
	mov r6, #0
	add r4, r2, #0
	add r0, r7, #0
	mov r1, #5
	add r2, r6, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x58]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	add r0, r7, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x30]
	add r0, r7, #0
	mov r1, #0x14
	add r2, r6, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r1, _02076EB4 ; =0xFFFF0000
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	and r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl sub_0207CFF0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x2c]
	cmp r0, #0x40
	beq _02076C10
	cmp r1, #0x40
	bne _02076C10
	cmp r4, #3
	beq _02076C10
	add sp, #0x44
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02076C10:
	cmp r5, #0
	bne _02076C16
	add r5, sp, #0x40
_02076C16:
	mov r0, #0
	mov r1, #0x2a
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x18]
	bl sub_0207821C
	cmp r4, #3
	bls _02076C2E
	b _02076F78
_02076C2E:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02076C3A: ; jump table
	.short _02076C42 - _02076C3A - 2 ; case 0
	.short _02076EB8 - _02076C3A - 2 ; case 1
	.short _02076EEC - _02076C3A - 2 ; case 2
	.short _02076EEC - _02076C3A - 2 ; case 3
_02076C42:
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	ldr r4, [sp, #0x18]
	bl sub_020E1F6C
	str r1, [sp, #8]
_02076C72:
	ldrh r0, [r4]
	cmp r0, #0x1a
	bls _02076C7A
	b _02076E9E
_02076C7A:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02076C86: ; jump table
	.short _02076E9E - _02076C86 - 2 ; case 0
	.short _02076CBC - _02076C86 - 2 ; case 1
	.short _02076CCA - _02076C86 - 2 ; case 2
	.short _02076CE0 - _02076C86 - 2 ; case 3
	.short _02076CF6 - _02076C86 - 2 ; case 4
	.short _02076E9E - _02076C86 - 2 ; case 5
	.short _02076E9E - _02076C86 - 2 ; case 6
	.short _02076E9E - _02076C86 - 2 ; case 7
	.short _02076D06 - _02076C86 - 2 ; case 8
	.short _02076D32 - _02076C86 - 2 ; case 9
	.short _02076D5E - _02076C86 - 2 ; case 10
	.short _02076D8A - _02076C86 - 2 ; case 11
	.short _02076DA2 - _02076C86 - 2 ; case 12
	.short _02076DB8 - _02076C86 - 2 ; case 13
	.short _02076DC8 - _02076C86 - 2 ; case 14
	.short _02076DCE - _02076C86 - 2 ; case 15
	.short _02076E9E - _02076C86 - 2 ; case 16
	.short _02076E9E - _02076C86 - 2 ; case 17
	.short _02076DDE - _02076C86 - 2 ; case 18
	.short _02076DF6 - _02076C86 - 2 ; case 19
	.short _02076E0E - _02076C86 - 2 ; case 20
	.short _02076E22 - _02076C86 - 2 ; case 21
	.short _02076E3A - _02076C86 - 2 ; case 22
	.short _02076E58 - _02076C86 - 2 ; case 23
	.short _02076E76 - _02076C86 - 2 ; case 24
	.short _02076E84 - _02076C86 - 2 ; case 25
	.short _02076E92 - _02076C86 - 2 ; case 26
_02076CBC:
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #1
	str r0, [r5, #0]
	b _02076E9E
_02076CCA:
	bl sub_02013948
	cmp r0, #0
	bne _02076D98
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #2
	str r0, [r5, #0]
	b _02076E9E
_02076CE0:
	bl sub_02013948
	cmp r0, #1
	bne _02076D98
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #3
	str r0, [r5, #0]
	b _02076E9E
_02076CF6:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	ldrh r6, [r4, #4]
	mov r0, #4
	str r0, [r5, #0]
	b _02076E9E
_02076D06:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x34]
	cmp r1, r0
	bls _02076D98
	ldrh r6, [r4, #4]
	mov r0, #8
	str r0, [r5, #0]
	b _02076E9E
_02076D32:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x38]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x38]
	cmp r1, r0
	bne _02076D98
	ldrh r6, [r4, #4]
	mov r0, #9
	str r0, [r5, #0]
	b _02076E9E
_02076D5E:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x3c]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x3c]
	cmp r1, r0
	bhs _02076D98
	ldrh r6, [r4, #4]
	mov r0, #0xa
	str r0, [r5, #0]
	b _02076E9E
_02076D8A:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	ldr r0, [sp, #8]
	cmp r0, #5
	blt _02076D9A
_02076D98:
	b _02076E9E
_02076D9A:
	ldrh r6, [r4, #4]
	mov r0, #0xb
	str r0, [r5, #0]
	b _02076E9E
_02076DA2:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldr r0, [sp, #8]
	cmp r0, #5
	blt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xc
	str r0, [r5, #0]
	b _02076E9E
_02076DB8:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xd
	str r0, [r5, #0]
	b _02076E9E
_02076DC8:
	mov r0, #0xe
	str r0, [r5, #0]
	b _02076E9E
_02076DCE:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02076E9E
_02076DDE:
	bl sub_02013948
	cmp r0, #0
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x12
	str r0, [r5, #0]
	b _02076E9E
_02076DF6:
	bl sub_02013948
	cmp r0, #1
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x13
	str r0, [r5, #0]
	b _02076E9E
_02076E0E:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	bl sub_0207749C
	cmp r0, #1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x14
	str r0, [r5, #0]
	b _02076E9E
_02076E22:
	ldr r0, [sp]
	cmp r0, #0
	beq _02076E9E
	ldrh r1, [r4, #2]
	bl sub_0207A230
	cmp r0, #1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x15
	str r0, [r5, #0]
	b _02076E9E
_02076E3A:
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x16
	str r0, [r5, #0]
	b _02076E9E
_02076E58:
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x17
	str r0, [r5, #0]
	b _02076E9E
_02076E76:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x18
	str r0, [r5, #0]
	b _02076E9E
_02076E84:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x19
	str r0, [r5, #0]
	b _02076E9E
_02076E92:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x1a
	str r0, [r5, #0]
_02076E9E:
	cmp r6, #0
	bne _02076F78
	ldr r0, [sp, #0x24]
	add r4, r4, #6
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #7
	bge _02076EB0
	b _02076C72
_02076EB0:
	b _02076F78
	nop
_02076EB4: .word 0xFFFF0000
_02076EB8:
	ldr r3, [sp, #0x18]
	mov r4, #0
	mov r7, #6
	mov r2, #5
_02076EC0:
	ldrh r0, [r3]
	cmp r0, #5
	beq _02076ECC
	cmp r0, #6
	beq _02076ED2
	b _02076EDE
_02076ECC:
	ldrh r6, [r3, #4]
	str r2, [r5, #0]
	b _02076EDE
_02076ED2:
	ldrh r1, [r3, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076EDE
	ldrh r6, [r3, #4]
	str r7, [r5, #0]
_02076EDE:
	cmp r6, #0
	bne _02076F78
	add r4, r4, #1
	add r3, r3, #6
	cmp r4, #7
	blt _02076EC0
	b _02076F78
_02076EEC:
	mov r0, #0
	ldr r4, [sp, #0x18]
	str r0, [sp, #0xc]
_02076EF2:
	ldrh r2, [r4]
	cmp r2, #7
	bne _02076F12
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F12
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F12:
	cmp r2, #0x10
	bne _02076F3E
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02076F3E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F3E
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F3E:
	ldrh r0, [r4]
	cmp r0, #0x11
	bne _02076F6C
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02076F6C
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F6C
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F6C:
	ldr r0, [sp, #0xc]
	add r4, r4, #6
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #7
	blt _02076EF2
_02076F78:
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add r0, r6, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02076B94

	thumb_func_start sub_02076F84
sub_02076F84: ; 0x02076F84
	push {r3, r4, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, _02076FCC ; =0x000001EE
	cmp r4, r0
	blo _02076F9A
	bl sub_02022974
_02076F9A:
	add r0, sp, #4
	bl sub_020C7DA0
	ldr r1, _02076FD0 ; =0x02100BB0
	add r0, sp, #4
	bl sub_020C8080
	add r0, sp, #4
	lsl r1, r4, #1
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #4
	bl sub_020C80C8
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_02076FCC: .word 0x000001EE
_02076FD0: .word 0x02100BB0
	thumb_func_end sub_02076F84

	thumb_func_start sub_02076FD4
sub_02076FD4: ; 0x02076FD4
	push {r3, lr}
	cmp r0, #0xb9
	bgt _02076FF8
	cmp r0, #0xb7
	blt _02076FE6
	beq _02077018
	cmp r0, #0xb9
	beq _02077018
	b _02077014
_02076FE6:
	cmp r0, #0x7a
	bgt _02076FF2
	bge _02077018
	cmp r0, #0x71
	beq _02077018
	b _02077014
_02076FF2:
	cmp r0, #0x8f
	beq _02077018
	b _02077014
_02076FF8:
	cmp r0, #0xe2
	bgt _02077004
	bge _02077018
	cmp r0, #0xca
	beq _02077018
	b _02077014
_02077004:
	ldr r1, _0207701C ; =0x0000013B
	cmp r0, r1
	bgt _0207700E
	beq _02077018
	b _02077014
_0207700E:
	add r1, #0x2b
	cmp r0, r1
	beq _02077018
_02077014:
	bl sub_02076F84
_02077018:
	pop {r3, pc}
	nop
_0207701C: .word 0x0000013B
	thumb_func_end sub_02076FD4

	thumb_func_start sub_02077020
sub_02077020: ; 0x02077020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x2c
	bl sub_02018144
	str r0, [sp]
	add r0, r5, #0
	bl sub_02073D20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02075B40
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02077D28
	ldr r0, [sp]
	ldrh r1, [r0]
	ldr r0, _020770BC ; =0x0000FFFF
	cmp r1, r0
	beq _020770A8
	ldr r4, [sp]
	lsl r7, r6, #9
_02077074:
	ldrh r1, [r4]
	mov r0, #0xfe
	lsl r0, r0, #8
	and r0, r1
	cmp r0, r7
	bgt _020770A8
	ldr r0, _020770C0 ; =0x000001FF
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020770D4
	ldr r1, _020770BC ; =0x0000FFFF
	cmp r0, r1
	bne _0207709E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02077144
_0207709E:
	add r4, r4, #2
	ldrh r1, [r4]
	ldr r0, _020770BC ; =0x0000FFFF
	cmp r1, r0
	bne _02077074
_020770A8:
	ldr r0, [sp]
	bl sub_020181C4
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020770BC: .word 0x0000FFFF
_020770C0: .word 0x000001FF
	thumb_func_end sub_02077020

	thumb_func_start sub_020770C4
sub_020770C4: ; 0x020770C4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02076B10
	add r1, r4, #0
	bl sub_020770D4
	pop {r4, pc}
	thumb_func_end sub_020770C4

	thumb_func_start sub_020770D4
sub_020770D4: ; 0x020770D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _0207712C ; =0x0000FFFF
	add r6, r0, #0
	str r1, [sp, #4]
	bl sub_02073D20
	mov r4, #0
	str r0, [sp]
	add r7, r4, #0
_020770EA:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _0207710C
	lsl r2, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02077238
	str r5, [sp, #4]
	b _0207711C
_0207710C:
	cmp r0, r5
	bne _02077116
	ldr r0, _02077130 ; =0x0000FFFE
	str r0, [sp, #4]
	b _0207711C
_02077116:
	add r4, r4, #1
	cmp r4, #4
	blt _020770EA
_0207711C:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02073D48
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207712C: .word 0x0000FFFF
_02077130: .word 0x0000FFFE
	thumb_func_end sub_020770D4

	thumb_func_start sub_02077134
sub_02077134: ; 0x02077134
	push {r4, lr}
	add r4, r1, #0
	bl sub_02076B10
	add r1, r4, #0
	bl sub_02077144
	pop {r4, pc}
	thumb_func_end sub_02077134

	thumb_func_start sub_02077144
sub_02077144: ; 0x02077144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp]
	bl sub_02073D20
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	mov r4, #0
	str r0, [sp, #4]
	add r7, sp, #0x14
	add r6, sp, #0x10
_0207715C:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x37
	mov r2, #0
	bl sub_02074570
	ldr r1, [sp, #4]
	mov r2, #0
	strh r0, [r1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3b
	bl sub_02074570
	add r1, r4, #0
	strb r0, [r7]
	add r0, r5, #0
	add r1, #0x3f
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #1
	cmp r4, #3
	blt _0207715C
	ldr r0, [sp]
	add r1, sp, #0x10
	strh r0, [r1, #0xe]
	ldr r0, [sp]
	mov r1, #5
	bl sub_020790C4
	add r1, sp, #0x10
	strb r0, [r1, #7]
	mov r4, #0
	add r0, sp, #0x18
	strb r4, [r1, #3]
	str r0, [sp, #8]
	add r7, sp, #0x14
	add r6, sp, #0x10
_020771B6:
	add r1, r4, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, #0x36
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, r7, #0
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	add r2, r6, #0
	bl sub_02074C60
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #8]
	add r7, r7, #1
	add r6, r6, #1
	cmp r4, #4
	blt _020771B6
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077144

	thumb_func_start sub_020771F8
sub_020771F8: ; 0x020771F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02077230
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0
	bl sub_020790DC
	add r4, #0x3a
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	bl sub_02074B30
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020771F8

	thumb_func_start sub_02077230
sub_02077230: ; 0x02077230
	ldr r3, _02077234 ; =sub_02077238
	bx r3
	; .align 2, 0
_02077234: .word sub_02077238
	thumb_func_end sub_02077230

	thumb_func_start sub_02077238
sub_02077238: ; 0x02077238
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r1, r4, #0
	add r1, #0x36
	add r2, sp, #0x14
	add r5, r0, #0
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, sp, #0x10
	ldrh r0, [r0, #4]
	bl sub_020790DC
	add r1, sp, #0
	strb r0, [r1]
	add r4, #0x3a
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_02074C60
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_02077238

	thumb_func_start sub_0207727C
sub_0207727C: ; 0x0207727C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r1, #0x2c
	str r2, [sp]
	str r0, [sp, #8]
	bl sub_02018144
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_02077D28
	ldr r0, [r5, #0]
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r0, _0207733C ; =0x0000FFFF
	cmp r2, r0
	bne _020772DE
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020772DE:
	mov r0, #0xfe
	lsl r0, r0, #8
	add r3, r2, #0
	and r3, r0
	lsl r6, r6, #9
	cmp r6, r3
	beq _02077310
	ldr r1, _0207733C ; =0x0000FFFF
_020772EE:
	ldr r2, [r5, #0]
	add r2, r2, #1
	str r2, [r5, #0]
	lsl r2, r2, #1
	ldrh r2, [r4, r2]
	cmp r2, r1
	bne _02077308
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02077308:
	add r3, r2, #0
	and r3, r0
	cmp r6, r3
	bne _020772EE
_02077310:
	cmp r6, r3
	bne _02077330
	ldr r0, _02077340 ; =0x000001FF
	add r1, r2, #0
	and r1, r0
	ldr r0, [sp]
	strh r1, [r0]
	ldr r0, [r5, #0]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r5, #0]
	ldrh r1, [r1]
	add r0, r7, #0
	bl sub_020770C4
	str r0, [sp, #8]
_02077330:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207733C: .word 0x0000FFFF
_02077340: .word 0x000001FF
	thumb_func_end sub_0207727C

	thumb_func_start sub_02077344
sub_02077344: ; 0x02077344
	ldr r3, _02077348 ; =sub_0207734C
	bx r3
	; .align 2, 0
_02077348: .word sub_0207734C
	thumb_func_end sub_02077344

	thumb_func_start sub_0207734C
sub_0207734C: ; 0x0207734C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r1, #0x36
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #4]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #2]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #6]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #3]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #1]
	add r1, r4, #0
	add r2, sp, #4
	add r0, r5, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074C60
	add r1, r4, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #3
	bl sub_02074C60
	add r4, #0x3e
	add r2, sp, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #1
	bl sub_02074C60
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, sp, #4
	bl sub_02074C60
	add r1, r6, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #2
	bl sub_02074C60
	add r6, #0x3e
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl sub_02074C60
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207734C

	thumb_func_start sub_02077408
sub_02077408: ; 0x02077408
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	bhs _0207746E
	mov r7, #0
	add r6, sp, #0
_02077416:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x37
	add r2, r7, #0
	bl sub_02074470
	add r1, r4, #0
	strh r0, [r6, #2]
	add r0, r5, #0
	add r1, #0x3b
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	strb r0, [r6, #1]
	add r0, r5, #0
	add r1, #0x3f
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r2, sp, #0
	strb r0, [r6]
	add r0, r5, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074B30
	add r1, r4, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #1
	bl sub_02074B30
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	add r4, r4, #1
	cmp r4, #3
	blo _02077416
_0207746E:
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
	add r2, sp, #0
	add r0, r5, #0
	mov r1, #0x39
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0
	add r0, r5, #0
	mov r1, #0x3d
	add r2, #1
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x41
	add r2, sp, #0
	bl sub_02074B30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077408

	thumb_func_start sub_0207749C
sub_0207749C: ; 0x0207749C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r4, #0
_020774A6:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	cmp r5, r0
	beq _020774BC
	add r4, r4, #1
	cmp r4, #4
	blt _020774A6
_020774BC:
	cmp r4, #4
	beq _020774C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020774C4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207749C

	thumb_func_start sub_020774C8
sub_020774C8: ; 0x020774C8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r0, [sp]
	add r3, r4, #0
	mov r2, #0x11
_020774D8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020774D8
	ldrh r1, [r4, #4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	beq _020774F2
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #4]
_020774F2:
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa3
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa4
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	bl sub_0202818C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xaa
	add r2, r5, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #4
	mov r2, #0x18
	bl sub_020C4BB8
	add r0, r4, #0
	mov r1, #0xab
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020774C8

	thumb_func_start sub_02077550
sub_02077550: ; 0x02077550
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r6, #1
	mov r5, #0
	cmp r7, #0
	ble _020775A0
_02077562:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207759A
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207759A
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	bls _0207759A
	add r6, r0, #0
_0207759A:
	add r5, r5, #1
	cmp r5, r7
	blt _02077562
_020775A0:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077550

	thumb_func_start sub_020775A4
sub_020775A4: ; 0x020775A4
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #4
	mov r1, #0x6d
	mov r2, #0
	lsl r3, r3, #1
	bl sub_02006AFC
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020775A4

	thumb_func_start sub_020775C4
sub_020775C4: ; 0x020775C4
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r2, #0
	add r0, sp, #4
	strh r2, [r0]
	cmp r3, #0xd2
	bhi _020775E2
	mov r0, #2
	str r0, [sp]
	add r0, sp, #4
	mov r1, #0x91
	lsl r3, r3, #1
	bl sub_02006AFC
_020775E2:
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020775C4

	thumb_func_start sub_020775EC
sub_020775EC: ; 0x020775EC
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x1d
_020775F4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020775F4
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020775EC

	thumb_func_start sub_02077604
sub_02077604: ; 0x02077604
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x11
_0207760C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207760C
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02077604

	thumb_func_start sub_02077618
sub_02077618: ; 0x02077618
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x11
_02077620:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02077620
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02077618

	thumb_func_start sub_0207762C
sub_0207762C: ; 0x0207762C
	ldr r3, _02077630 ; =sub_02077634
	bx r3
	; .align 2, 0
_02077630: .word sub_02077634
	thumb_func_end sub_0207762C

	thumb_func_start sub_02077634
sub_02077634: ; 0x02077634
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	add r2, r1, #0
	bl sub_02074570
	add r1, r4, #0
	bl sub_02077648
	pop {r4, pc}
	thumb_func_end sub_02077634

	thumb_func_start sub_02077648
sub_02077648: ; 0x02077648
	push {r4, lr}
	add r4, r1, #0
	bl sub_02075BFC
	lsl r1, r0, #2
	add r1, r0, r1
	ldr r0, _0207765C ; =0x020F0695
	add r0, r0, r1
	ldrsb r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0207765C: .word 0x020F0695
	thumb_func_end sub_02077648

	thumb_func_start sub_02077660
sub_02077660: ; 0x02077660
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	mov r0, #0
	mov r1, #0x2c
	add r5, r2, #0
	bl sub_02018144
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02077D28
	ldrh r1, [r6]
	ldr r0, _020776A8 ; =0x0000FFFF
	mov r4, #0
	cmp r1, r0
	beq _0207769E
	ldr r1, _020776AC ; =0x000001FF
	ldr r2, _020776A8 ; =0x0000FFFF
	add r0, r6, #0
_0207768C:
	ldrh r3, [r0]
	add r0, r0, #2
	add r4, r4, #1
	and r3, r1
	strh r3, [r5]
	ldrh r3, [r0]
	add r5, r5, #2
	cmp r3, r2
	bne _0207768C
_0207769E:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020776A8: .word 0x0000FFFF
_020776AC: .word 0x000001FF
	thumb_func_end sub_02077660

	thumb_func_start sub_020776B0
sub_020776B0: ; 0x020776B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r0, r1
	beq _020776D4
	lsl r1, r1, #1
	cmp r0, r1
	beq _020776D4
	mov r1, #3
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _02077756
_020776D4:
	bl sub_0201D2E8
	add r1, r6, #0
	bl sub_020E1F6C
	add r0, r5, #0
	add r7, r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020776D4
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020776D4
	add r0, r7, #0
	bl sub_020787CC
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02077758
	cmp r0, #0
	bne _02077756
	add r5, sp, #0
	mov r6, #7
_0207771C:
	bl sub_0201D2E8
	strb r0, [r5]
	ldrb r2, [r5]
	add r1, r2, #0
	and r1, r6
	beq _0207771C
	mov r0, #0xf0
	tst r0, r2
	beq _02077734
	add r0, sp, #0
	strb r1, [r0]
_02077734:
	add r1, sp, #0
	ldrb r2, [r1]
	lsl r0, r2, #4
	orr r0, r2
	strb r0, [r1]
	ldrb r2, [r1]
	mov r0, #0xf3
	and r0, r2
	strb r0, [r1]
	ldrb r0, [r1]
	add r2, sp, #0
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x9a
	bl sub_02074B30
_02077756:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020776B0

	thumb_func_start sub_02077758
sub_02077758: ; 0x02077758
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r1, #0
	str r0, [sp]
	mov r4, #1
	add r7, r6, #0
	cmp r5, #0
	beq _02077796
_02077768:
	mov r0, #1
	tst r0, r5
	beq _0207778A
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207778A
	add r0, r7, #0
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0207778A:
	lsl r0, r5, #0x17
	add r6, r6, #1
	lsl r4, r4, #1
	lsr r5, r0, #0x18
	bne _02077768
	b _020777AE
_02077796:
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x9a
	add r2, r6, #0
	bl sub_02074470
	cmp r0, #0
	beq _020777AE
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_020777AE:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077758

	thumb_func_start sub_020777B4
sub_020777B4: ; 0x020777B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02077826
	add r4, sp, #8
_020777CA:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207781E
	add r0, r7, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0xf
	and r0, r1
	beq _0207781E
	cmp r0, r5
	blt _020777FC
	cmp r5, #4
	ble _02077806
_020777FC:
	ldrb r1, [r4]
	mov r0, #0xf0
	and r0, r1
	strb r0, [r4]
	b _0207780A
_02077806:
	sub r0, r1, r5
	strb r0, [r4]
_0207780A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _02077814
	mov r0, #0x10
	strb r0, [r4]
_02077814:
	add r0, r7, #0
	mov r1, #0x9a
	add r2, sp, #8
	bl sub_02074B30
_0207781E:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _020777CA
_02077826:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020777B4

	thumb_func_start sub_0207782C
sub_0207782C: ; 0x0207782C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0207A0F8
	add r7, r0, #0
	bl sub_0201D2E8
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #0
	bne _020778D4
	mov r4, #0
	cmp r7, #0
	ble _020778D4
	sub r0, r7, #1
	str r0, [sp]
_02077850:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020778CE
	add r0, r6, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1]
	add r0, r1, #0
	ldrb r1, [r0]
	mov r0, #0xf
	tst r0, r1
	beq _020778CE
	cmp r4, #0
	beq _020778A4
	add r0, r5, #0
	sub r1, r4, #1
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	mov r1, #0xf0
	tst r0, r1
	bne _020778A4
	add r0, r6, #0
	mov r1, #0x9a
	add r2, sp, #4
	bl sub_02074B30
_020778A4:
	ldr r0, [sp]
	cmp r4, r0
	bge _020778CE
	add r0, r5, #0
	add r1, r4, #1
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	mov r1, #0xf0
	tst r0, r1
	bne _020778CE
	add r0, r6, #0
	mov r1, #0x9a
	add r2, sp, #4
	bl sub_02074B30
	add r4, r4, #1
_020778CE:
	add r4, r4, #1
	cmp r4, r7
	blt _02077850
_020778D4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207782C

	thumb_func_start sub_020778D8
sub_020778D8: ; 0x020778D8
	ldr r3, _020778DC ; =sub_020778E0
	bx r3
	; .align 2, 0
_020778DC: .word sub_020778E0
	thumb_func_end sub_020778D8

	thumb_func_start sub_020778E0
sub_020778E0: ; 0x020778E0
	push {r3, lr}
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074570
	mov r1, #0xf
	tst r0, r1
	beq _020778F4
	mov r0, #1
	pop {r3, pc}
_020778F4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020778E0

	thumb_func_start sub_020778F8
sub_020778F8: ; 0x020778F8
	ldr r3, _020778FC ; =sub_02077900
	bx r3
	; .align 2, 0
_020778FC: .word sub_02077900
	thumb_func_end sub_020778F8

	thumb_func_start sub_02077900
sub_02077900: ; 0x02077900
	push {r3, lr}
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	tst r0, r1
	beq _02077918
	mov r0, #0
	pop {r3, pc}
_02077918:
	mov r0, #0xf0
	tst r0, r1
	beq _02077922
	mov r0, #1
	pop {r3, pc}
_02077922:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02077900

	thumb_func_start sub_02077928
sub_02077928: ; 0x02077928
	ldr r3, _0207792C ; =sub_02077930
	bx r3
	; .align 2, 0
_0207792C: .word sub_02077930
	thumb_func_end sub_02077928

	thumb_func_start sub_02077930
sub_02077930: ; 0x02077930
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	ldr r1, _02077984 ; =0x000001ED
	cmp r4, r1
	bne _02077980
	cmp r6, #0x79
	bne _02077980
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02077988
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
_02077980:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02077984: .word 0x000001ED
	thumb_func_end sub_02077930

	thumb_func_start sub_02077988
sub_02077988: ; 0x02077988
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _020779FA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207799A: ; jump table
	.short _020779BA - _0207799A - 2 ; case 0
	.short _020779BE - _0207799A - 2 ; case 1
	.short _020779C2 - _0207799A - 2 ; case 2
	.short _020779C6 - _0207799A - 2 ; case 3
	.short _020779CA - _0207799A - 2 ; case 4
	.short _020779CE - _0207799A - 2 ; case 5
	.short _020779D2 - _0207799A - 2 ; case 6
	.short _020779D6 - _0207799A - 2 ; case 7
	.short _020779DA - _0207799A - 2 ; case 8
	.short _020779DE - _0207799A - 2 ; case 9
	.short _020779E2 - _0207799A - 2 ; case 10
	.short _020779E6 - _0207799A - 2 ; case 11
	.short _020779EA - _0207799A - 2 ; case 12
	.short _020779EE - _0207799A - 2 ; case 13
	.short _020779F2 - _0207799A - 2 ; case 14
	.short _020779F6 - _0207799A - 2 ; case 15
_020779BA:
	mov r0, #0xa
	bx lr
_020779BE:
	mov r0, #0xb
	bx lr
_020779C2:
	mov r0, #0xd
	bx lr
_020779C6:
	mov r0, #0xc
	bx lr
_020779CA:
	mov r0, #0xf
	bx lr
_020779CE:
	mov r0, #1
	bx lr
_020779D2:
	mov r0, #3
	bx lr
_020779D6:
	mov r0, #4
	bx lr
_020779DA:
	mov r0, #2
	bx lr
_020779DE:
	mov r0, #0xe
	bx lr
_020779E2:
	mov r0, #6
	bx lr
_020779E6:
	mov r0, #5
	bx lr
_020779EA:
	mov r0, #7
	bx lr
_020779EE:
	mov r0, #0x10
	bx lr
_020779F2:
	mov r0, #0x11
	bx lr
_020779F6:
	mov r0, #8
	bx lr
_020779FA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02077988

	thumb_func_start sub_02077A00
sub_02077A00: ; 0x02077A00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02077A1C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02077A18
	add r0, r5, #0
	bl sub_0207418C
_02077A18:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02077A00

	thumb_func_start sub_02077A1C
sub_02077A1C: ; 0x02077A1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	ldr r1, _02077A60 ; =0x000001E7
	cmp r4, r1
	bne _02077A5A
	cmp r0, #0x70
	bne _02077A42
	mov r0, #1
	b _02077A44
_02077A42:
	mov r0, #0
_02077A44:
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	bl sub_02078044
	ldr r0, [sp]
	pop {r3, r4, r5, pc}
_02077A5A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02077A60: .word 0x000001E7
	thumb_func_end sub_02077A1C

	thumb_func_start sub_02077A64
sub_02077A64: ; 0x02077A64
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #1
	str r1, [sp]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02077A98 ; =0x000001E7
	cmp r0, r1
	bne _02077A92
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02078044
	add r0, r4, #0
	bl sub_0207418C
_02077A92:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02077A98: .word 0x000001E7
	thumb_func_end sub_02077A64

	thumb_func_start sub_02077A9C
sub_02077A9C: ; 0x02077A9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02077ACA
_02077AAE:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	cmp r5, #0
	beq _02077AC0
	bl sub_02077A64
	b _02077AC4
_02077AC0:
	bl sub_02077A00
_02077AC4:
	add r4, r4, #1
	cmp r4, r6
	blt _02077AAE
_02077ACA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077A9C

	thumb_func_start sub_02077ACC
sub_02077ACC: ; 0x02077ACC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02077ADC
	add r0, r4, #0
	bl sub_0207418C
	pop {r4, pc}
	thumb_func_end sub_02077ACC

	thumb_func_start sub_02077ADC
sub_02077ADC: ; 0x02077ADC
	push {r0, r1, r2, r3}
	push {r4, lr}
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _02077B0C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ble _02077AFC
	bl sub_02022974
_02077AFC:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02078044
_02077B0C:
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02077ADC

	thumb_func_start sub_02077B14
sub_02077B14: ; 0x02077B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, sp, #4
	bl sub_02013880
	mov r0, #0x7b
	lsl r0, r0, #2
	cmp r5, r0
	bne _02077B86
	cmp r6, #0
	bne _02077B86
	ldr r0, [sp]
	cmp r0, #0
	beq _02077B86
	cmp r4, #1
	bne _02077B86
	mov r0, #0x20
	tst r0, r7
	bne _02077B86
	ldr r0, [sp, #4]
	cmp r0, #4
	blo _02077B86
	cmp r0, #0x14
	bhs _02077B86
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02077B86:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077B14

	thumb_func_start sub_02077B8C
sub_02077B8C: ; 0x02077B8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02077BD4
_02077B9C:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r6, r1
	bne _02077BCE
	cmp r0, #1
	bne _02077BCE
	add r0, r4, #0
	mov r1, #0
	bl sub_02077ACC
_02077BCE:
	add r5, r5, #1
	cmp r5, r7
	blt _02077B9C
_02077BD4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077B8C

	thumb_func_start sub_02077BD8
sub_02077BD8: ; 0x02077BD8
	push {r4, lr}
	ldr r3, [r2, #0]
	cmp r3, #0x14
	bhs _02077BE4
	cmp r3, #4
	bhs _02077C06
_02077BE4:
	cmp r3, #4
	bge _02077BEA
	add r3, #0x18
_02077BEA:
	ldr r4, [r2, #4]
	sub r3, #0x14
	mov r2, #0x3c
	mul r2, r3
	add r2, r4, r2
	add r1, r1, #1
	cmp r2, r1
	bge _02077C02
	bl sub_02077B8C
	mov r0, #1
	pop {r4, pc}
_02077C02:
	mov r0, #0
	pop {r4, pc}
_02077C06:
	ldr r4, [r2, #4]
	sub r3, r3, #4
	mov r2, #0x3c
	mul r2, r3
	add r2, r4, r2
	cmp r2, r1
	bge _02077C1C
	bl sub_02077B8C
	mov r0, #1
	pop {r4, pc}
_02077C1C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02077BD8

	thumb_func_start sub_02077C20
sub_02077C20: ; 0x02077C20
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02077D1C ; =0x000001DF
	cmp r0, r1
	beq _02077C40
	mov r0, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_02077C40:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r0, [sp, #0x1c]
	mov r5, #0
	lsl r1, r0, #1
	ldr r0, _02077D20 ; =0x020F057C
	add r7, r5, #0
	ldrh r6, [r0, r1]
_02077C56:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	ldr r3, _02077D24 ; =0x020F057E
	add r2, r0, #0
	mov r1, #1
_02077C68:
	cmp r2, #0
	beq _02077C94
	ldrh r0, [r3]
	cmp r2, r0
	bne _02077C94
	cmp r6, #0
	beq _02077C88
	lsl r1, r6, #0x10
	lsl r2, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
	mov r6, #0
	b _02077C9C
_02077C88:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02077408
	sub r5, r5, #1
	b _02077C9C
_02077C94:
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #6
	blo _02077C68
_02077C9C:
	add r5, r5, #1
	cmp r5, #4
	blt _02077C56
	cmp r6, #0
	beq _02077CE4
	mov r5, #0
	add r7, r5, #0
_02077CAA:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	bne _02077CCA
	lsl r1, r6, #0x10
	lsl r2, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
	b _02077CD0
_02077CCA:
	add r5, r5, #1
	cmp r5, #4
	blt _02077CAA
_02077CD0:
	cmp r5, #4
	bne _02077CE4
	ldr r2, [sp]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
_02077CE4:
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02077CFC
	add r0, r4, #0
	mov r1, #0x54
	mov r2, #0
	bl sub_020771F8
_02077CFC:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207803C
	add r0, r4, #0
	bl sub_0207418C
	mov r0, #1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02077D1C: .word 0x000001DF
_02077D20: .word 0x020F057C
_02077D24: .word 0x020F057E
	thumb_func_end sub_02077C20

	thumb_func_start sub_02077D28
sub_02077D28: ; 0x02077D28
	push {r4, lr}
	add r4, r2, #0
	bl sub_02078740
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x21
	bl sub_02006AA4
	pop {r4, pc}
	thumb_func_end sub_02077D28

	thumb_func_start sub_02077D3C
sub_02077D3C: ; 0x02077D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _02077DB0 ; =0x000001B9
	add r5, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r5, r0
	bne _02077D94
	add r0, r6, #0
	bl sub_020064C8
	cmp r0, #0
	bne _02077D78
	mov r0, #1
	bl sub_020063D4
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020059D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077D78:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02077D84
	mov r0, #1
	bl sub_020063D4
_02077D84:
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	mov r1, #0
	bl sub_020063E4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077D94:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020059D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077DB0: .word 0x000001B9
	thumb_func_end sub_02077D3C

	thumb_func_start sub_02077DB4
sub_02077DB4: ; 0x02077DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _02077E38 ; =0x000001B9
	add r5, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r5, r0
	bne _02077E18
	add r0, r6, #0
	bl sub_020064C8
	cmp r0, #0
	bne _02077DF6
	mov r0, #1
	bl sub_020063D4
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02005F4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02077DF6:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02077E02
	mov r0, #1
	bl sub_020063D4
_02077E02:
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_02006438
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02077E18:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02005F4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02077E38: .word 0x000001B9
	thumb_func_end sub_02077DB4

	thumb_func_start sub_02077E3C
sub_02077E3C: ; 0x02077E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02005844
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02077E3C

	thumb_func_start sub_02077E64
sub_02077E64: ; 0x02077E64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	str r6, [sp]
	ldr r6, [sp, #0x24]
	add r4, r2, #0
	str r6, [sp, #4]
	bl sub_02077EA4
	cmp r4, #0xe
	bne _02077EA0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #8
	bl sub_02074B30
_02077EA0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02077E64

	thumb_func_start sub_02077EA4
sub_02077EA4: ; 0x02077EA4
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, [sp, #0x24]
	add r4, r0, #0
	str r2, [sp]
	mov r2, #0
	bl sub_0209305C
	ldr r2, _02077EE0 ; =0x020E4C40
	add r0, r4, #0
	mov r1, #0x7a
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #0x18
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x9e
	add r2, sp, #0x20
	bl sub_02074C60
	add sp, #4
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02077EE0: .word 0x020E4C40
	thumb_func_end sub_02077EA4

	thumb_func_start sub_02077EE4
sub_02077EE4: ; 0x02077EE4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02077EF8
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02077EE4

	thumb_func_start sub_02077EF8
sub_02077EF8: ; 0x02077EF8
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02077EA4
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02077EF8

	thumb_func_start sub_02077F0C
sub_02077F0C: ; 0x02077F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x81
	add r7, r2, #0
	tst r0, r1
	bne _02077FA6
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0x10
	bl sub_020759CC
	add r1, sp, #4
	strh r0, [r1, #2]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0x11
	bl sub_020759CC
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	cmp r2, r0
	bne _02077F7C
	cmp r2, #0
	beq _02077F7C
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #6
	add r2, #2
	bl sub_02074B30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077F7C:
	ldr r0, _02077FAC ; =0x020F0574
	lsl r1, r7, #2
	ldrh r0, [r0, r1]
	cmp r4, r0
	blo _02077FA6
	ldr r0, _02077FB0 ; =0x020F0576
	ldrh r0, [r0, r1]
	cmp r4, r0
	add r2, sp, #4
	bhs _02077F9E
	add r0, r5, #0
	mov r1, #6
	add r2, #2
	bl sub_02074B30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077F9E:
	add r0, r5, #0
	mov r1, #6
	bl sub_02074B30
_02077FA6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077FAC: .word 0x020F0574
_02077FB0: .word 0x020F0576
	thumb_func_end sub_02077F0C

	thumb_func_start sub_02077FB4
sub_02077FB4: ; 0x02077FB4
	ldr r3, _02077FB8 ; =sub_02077FBC
	bx r3
	; .align 2, 0
_02077FB8: .word sub_02077FBC
	thumb_func_end sub_02077FB4

	thumb_func_start sub_02077FBC
sub_02077FBC: ; 0x02077FBC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02077FE4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02077FBC

	thumb_func_start sub_02077FE4
sub_02077FE4: ; 0x02077FE4
	push {r4, lr}
	ldr r3, _02078038 ; =0x000001EE
	cmp r0, r3
	bne _02077FF0
	mov r0, #0
	pop {r4, pc}
_02077FF0:
	cmp r2, #0x20
	bhs _02077FFE
	mov r3, #1
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1d
	b _02078028
_02077FFE:
	cmp r2, #0x40
	bhs _0207800E
	mov r3, #1
	sub r2, #0x20
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1e
	b _02078028
_0207800E:
	cmp r2, #0x60
	bhs _0207801E
	mov r3, #1
	sub r2, #0x40
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1f
	b _02078028
_0207801E:
	mov r3, #1
	sub r2, #0x60
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x20
_02078028:
	bl sub_020759CC
	tst r0, r4
	beq _02078034
	mov r0, #1
	pop {r4, pc}
_02078034:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02078038: .word 0x000001EE
	thumb_func_end sub_02077FE4

	thumb_func_start sub_0207803C
sub_0207803C: ; 0x0207803C
	ldr r3, _02078040 ; =sub_02078044
	bx r3
	; .align 2, 0
_02078040: .word sub_02078044
	thumb_func_end sub_0207803C

	thumb_func_start sub_02078044
sub_02078044: ; 0x02078044
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x18
	bl sub_020759CC
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x19
	bl sub_020759CC
	str r0, [sp, #4]
	cmp r0, #0
	beq _020780AE
	mov r0, #1
	tst r0, r6
	beq _020780A2
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #4
	bl sub_02074C60
	b _020780B8
_020780A2:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	b _020780B8
_020780AE:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
_020780B8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02078044

	thumb_func_start sub_020780C4
sub_020780C4: ; 0x020780C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	bl sub_02073C74
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_020775EC
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #0
	bl sub_0207825C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #1
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #3
	bl sub_0207825C
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl sub_0207825C
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0207825C
	str r0, [sp, #0x10]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	bl sub_0207825C
	str r0, [sp, #0x14]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #3
	bl sub_0207825C
	ldr r2, [sp, #4]
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	mov r0, #0x10
_020781B6:
	ldr r1, [sp, #8]
	ldrh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x18]
	sub r0, r0, #1
	bne _020781B6
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020780C4

	thumb_func_start sub_020781F8
sub_020781F8: ; 0x020781F8
	ldr r3, _02078204 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #2
	bx r3
	nop
_02078204: .word sub_02006AA4
	thumb_func_end sub_020781F8

	thumb_func_start sub_02078208
sub_02078208: ; 0x02078208
	push {r4, lr}
	add r4, r2, #0
	bl sub_02078740
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_02006AA4
	pop {r4, pc}
	thumb_func_end sub_02078208

	thumb_func_start sub_0207821C
sub_0207821C: ; 0x0207821C
	ldr r3, _02078228 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x22
	bx r3
	nop
_02078228: .word sub_02006AA4
	thumb_func_end sub_0207821C

	thumb_func_start sub_0207822C
sub_0207822C: ; 0x0207822C
	ldr r3, _02078230 ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_02078230: .word sub_0201D5D4
	thumb_func_end sub_0207822C

	thumb_func_start sub_02078234
sub_02078234: ; 0x02078234
	ldr r3, _02078238 ; =sub_0201D600
	bx r3
	; .align 2, 0
_02078238: .word sub_0201D600
	thumb_func_end sub_02078234

	thumb_func_start sub_0207823C
sub_0207823C: ; 0x0207823C
	push {r3, r4}
	mov r3, #0
	add r2, r3, #0
	lsr r4, r1, #1
	beq _02078256
_02078246:
	ldrh r1, [r0]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, r4
	blo _02078246
_02078256:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207823C

	thumb_func_start sub_0207825C
sub_0207825C: ; 0x0207825C
	push {r3, lr}
	mov r3, #0x3e
	lsl r3, r3, #0xc
	and r3, r1
	lsr r3, r3, #0xd
	cmp r3, #0x1f
	bhi _020782BC
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02078276: ; jump table
	.short _020782B6 - _02078276 - 2 ; case 0
	.short _020782E8 - _02078276 - 2 ; case 1
	.short _02078318 - _02078276 - 2 ; case 2
	.short _02078348 - _02078276 - 2 ; case 3
	.short _02078378 - _02078276 - 2 ; case 4
	.short _020783A8 - _02078276 - 2 ; case 5
	.short _020783D8 - _02078276 - 2 ; case 6
	.short _0207840A - _02078276 - 2 ; case 7
	.short _0207843A - _02078276 - 2 ; case 8
	.short _0207846A - _02078276 - 2 ; case 9
	.short _0207849A - _02078276 - 2 ; case 10
	.short _020784CA - _02078276 - 2 ; case 11
	.short _020784FA - _02078276 - 2 ; case 12
	.short _0207852C - _02078276 - 2 ; case 13
	.short _0207855C - _02078276 - 2 ; case 14
	.short _0207858C - _02078276 - 2 ; case 15
	.short _020785BC - _02078276 - 2 ; case 16
	.short _020785EC - _02078276 - 2 ; case 17
	.short _0207861C - _02078276 - 2 ; case 18
	.short _0207864E - _02078276 - 2 ; case 19
	.short _0207867E - _02078276 - 2 ; case 20
	.short _020786AE - _02078276 - 2 ; case 21
	.short _020786DE - _02078276 - 2 ; case 22
	.short _0207870E - _02078276 - 2 ; case 23
	.short _020782B6 - _02078276 - 2 ; case 24
	.short _020782E8 - _02078276 - 2 ; case 25
	.short _02078318 - _02078276 - 2 ; case 26
	.short _02078348 - _02078276 - 2 ; case 27
	.short _02078378 - _02078276 - 2 ; case 28
	.short _020783A8 - _02078276 - 2 ; case 29
	.short _020783D8 - _02078276 - 2 ; case 30
	.short _0207840A - _02078276 - 2 ; case 31
_020782B6:
	add r0, #8
	cmp r2, #3
	bls _020782BE
_020782BC:
	b _0207873C
_020782BE:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020782CA: ; jump table
	.short _020782D2 - _020782CA - 2 ; case 0
	.short _020782D6 - _020782CA - 2 ; case 1
	.short _020782DC - _020782CA - 2 ; case 2
	.short _020782E2 - _020782CA - 2 ; case 3
_020782D2:
	add r1, r0, #0
	b _0207873C
_020782D6:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020782DC:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020782E2:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020782E8:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020782FA: ; jump table
	.short _02078302 - _020782FA - 2 ; case 0
	.short _02078306 - _020782FA - 2 ; case 1
	.short _0207830C - _020782FA - 2 ; case 2
	.short _02078312 - _020782FA - 2 ; case 3
_02078302:
	add r1, r0, #0
	b _0207873C
_02078306:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207830C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078312:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078318:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207832A: ; jump table
	.short _02078332 - _0207832A - 2 ; case 0
	.short _02078336 - _0207832A - 2 ; case 1
	.short _0207833C - _0207832A - 2 ; case 2
	.short _02078342 - _0207832A - 2 ; case 3
_02078332:
	add r1, r0, #0
	b _0207873C
_02078336:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207833C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078342:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078348:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207835A: ; jump table
	.short _02078362 - _0207835A - 2 ; case 0
	.short _02078366 - _0207835A - 2 ; case 1
	.short _0207836C - _0207835A - 2 ; case 2
	.short _02078372 - _0207835A - 2 ; case 3
_02078362:
	add r1, r0, #0
	b _0207873C
_02078366:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207836C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078372:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078378:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207838A: ; jump table
	.short _02078392 - _0207838A - 2 ; case 0
	.short _02078396 - _0207838A - 2 ; case 1
	.short _0207839C - _0207838A - 2 ; case 2
	.short _020783A2 - _0207838A - 2 ; case 3
_02078392:
	add r1, r0, #0
	b _0207873C
_02078396:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207839C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020783A2:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783A8:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020783BA: ; jump table
	.short _020783C2 - _020783BA - 2 ; case 0
	.short _020783C6 - _020783BA - 2 ; case 1
	.short _020783CC - _020783BA - 2 ; case 2
	.short _020783D2 - _020783BA - 2 ; case 3
_020783C2:
	add r1, r0, #0
	b _0207873C
_020783C6:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020783CC:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020783D2:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783D8:
	add r0, #8
	cmp r2, #3
	bls _020783E0
_020783DE:
	b _0207873C
_020783E0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020783EC: ; jump table
	.short _020783F4 - _020783EC - 2 ; case 0
	.short _020783FA - _020783EC - 2 ; case 1
	.short _020783FE - _020783EC - 2 ; case 2
	.short _02078404 - _020783EC - 2 ; case 3
_020783F4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783FA:
	add r1, r0, #0
	b _0207873C
_020783FE:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078404:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207840A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207841C: ; jump table
	.short _02078424 - _0207841C - 2 ; case 0
	.short _0207842A - _0207841C - 2 ; case 1
	.short _0207842E - _0207841C - 2 ; case 2
	.short _02078434 - _0207841C - 2 ; case 3
_02078424:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207842A:
	add r1, r0, #0
	b _0207873C
_0207842E:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078434:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207843A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207844C: ; jump table
	.short _02078454 - _0207844C - 2 ; case 0
	.short _0207845A - _0207844C - 2 ; case 1
	.short _0207845E - _0207844C - 2 ; case 2
	.short _02078464 - _0207844C - 2 ; case 3
_02078454:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207845A:
	add r1, r0, #0
	b _0207873C
_0207845E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078464:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207846A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207847C: ; jump table
	.short _02078484 - _0207847C - 2 ; case 0
	.short _0207848A - _0207847C - 2 ; case 1
	.short _0207848E - _0207847C - 2 ; case 2
	.short _02078494 - _0207847C - 2 ; case 3
_02078484:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207848A:
	add r1, r0, #0
	b _0207873C
_0207848E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078494:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207849A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020784AC: ; jump table
	.short _020784B4 - _020784AC - 2 ; case 0
	.short _020784BA - _020784AC - 2 ; case 1
	.short _020784BE - _020784AC - 2 ; case 2
	.short _020784C4 - _020784AC - 2 ; case 3
_020784B4:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020784BA:
	add r1, r0, #0
	b _0207873C
_020784BE:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020784C4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020784CA:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020784DC: ; jump table
	.short _020784E4 - _020784DC - 2 ; case 0
	.short _020784EA - _020784DC - 2 ; case 1
	.short _020784EE - _020784DC - 2 ; case 2
	.short _020784F4 - _020784DC - 2 ; case 3
_020784E4:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020784EA:
	add r1, r0, #0
	b _0207873C
_020784EE:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020784F4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020784FA:
	add r0, #8
	cmp r2, #3
	bls _02078502
_02078500:
	b _0207873C
_02078502:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207850E: ; jump table
	.short _02078516 - _0207850E - 2 ; case 0
	.short _0207851C - _0207850E - 2 ; case 1
	.short _02078522 - _0207850E - 2 ; case 2
	.short _02078526 - _0207850E - 2 ; case 3
_02078516:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207851C:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078522:
	add r1, r0, #0
	b _0207873C
_02078526:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207852C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207853E: ; jump table
	.short _02078546 - _0207853E - 2 ; case 0
	.short _0207854C - _0207853E - 2 ; case 1
	.short _02078552 - _0207853E - 2 ; case 2
	.short _02078556 - _0207853E - 2 ; case 3
_02078546:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207854C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078552:
	add r1, r0, #0
	b _0207873C
_02078556:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207855C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207856E: ; jump table
	.short _02078576 - _0207856E - 2 ; case 0
	.short _0207857C - _0207856E - 2 ; case 1
	.short _02078582 - _0207856E - 2 ; case 2
	.short _02078586 - _0207856E - 2 ; case 3
_02078576:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207857C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078582:
	add r1, r0, #0
	b _0207873C
_02078586:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207858C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207859E: ; jump table
	.short _020785A6 - _0207859E - 2 ; case 0
	.short _020785AC - _0207859E - 2 ; case 1
	.short _020785B2 - _0207859E - 2 ; case 2
	.short _020785B6 - _0207859E - 2 ; case 3
_020785A6:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020785AC:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020785B2:
	add r1, r0, #0
	b _0207873C
_020785B6:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020785BC:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020785CE: ; jump table
	.short _020785D6 - _020785CE - 2 ; case 0
	.short _020785DC - _020785CE - 2 ; case 1
	.short _020785E2 - _020785CE - 2 ; case 2
	.short _020785E6 - _020785CE - 2 ; case 3
_020785D6:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020785DC:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020785E2:
	add r1, r0, #0
	b _0207873C
_020785E6:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020785EC:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020785FE: ; jump table
	.short _02078606 - _020785FE - 2 ; case 0
	.short _0207860C - _020785FE - 2 ; case 1
	.short _02078612 - _020785FE - 2 ; case 2
	.short _02078616 - _020785FE - 2 ; case 3
_02078606:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207860C:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078612:
	add r1, r0, #0
	b _0207873C
_02078616:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207861C:
	add r0, #8
	cmp r2, #3
	bls _02078624
_02078622:
	b _0207873C
_02078624:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078630: ; jump table
	.short _02078638 - _02078630 - 2 ; case 0
	.short _0207863E - _02078630 - 2 ; case 1
	.short _02078644 - _02078630 - 2 ; case 2
	.short _0207864A - _02078630 - 2 ; case 3
_02078638:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207863E:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078644:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207864A:
	add r1, r0, #0
	b _0207873C
_0207864E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078660: ; jump table
	.short _02078668 - _02078660 - 2 ; case 0
	.short _0207866E - _02078660 - 2 ; case 1
	.short _02078674 - _02078660 - 2 ; case 2
	.short _0207867A - _02078660 - 2 ; case 3
_02078668:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207866E:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078674:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207867A:
	add r1, r0, #0
	b _0207873C
_0207867E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078690: ; jump table
	.short _02078698 - _02078690 - 2 ; case 0
	.short _0207869E - _02078690 - 2 ; case 1
	.short _020786A4 - _02078690 - 2 ; case 2
	.short _020786AA - _02078690 - 2 ; case 3
_02078698:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207869E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020786A4:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020786AA:
	add r1, r0, #0
	b _0207873C
_020786AE:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020786C0: ; jump table
	.short _020786C8 - _020786C0 - 2 ; case 0
	.short _020786CE - _020786C0 - 2 ; case 1
	.short _020786D4 - _020786C0 - 2 ; case 2
	.short _020786DA - _020786C0 - 2 ; case 3
_020786C8:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020786CE:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020786D4:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020786DA:
	add r1, r0, #0
	b _0207873C
_020786DE:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020786F0: ; jump table
	.short _020786F8 - _020786F0 - 2 ; case 0
	.short _020786FE - _020786F0 - 2 ; case 1
	.short _02078704 - _020786F0 - 2 ; case 2
	.short _0207870A - _020786F0 - 2 ; case 3
_020786F8:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020786FE:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078704:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207870A:
	add r1, r0, #0
	b _0207873C
_0207870E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078720: ; jump table
	.short _02078728 - _02078720 - 2 ; case 0
	.short _0207872E - _02078720 - 2 ; case 1
	.short _02078734 - _02078720 - 2 ; case 2
	.short _0207873A - _02078720 - 2 ; case 3
_02078728:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207872E:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078734:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207873A:
	add r1, r0, #0
_0207873C:
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0207825C
