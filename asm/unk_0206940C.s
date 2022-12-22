	.include "macros/function.inc"
	.include "include/unk_0206940C.inc"

	

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
	bl MI_CpuFill8
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
	bl GF_AssertFail
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
	bl _s32_div_f
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, r4
	blo _020694E6
	bl GF_AssertFail
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
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02069510
	add r0, r6, #0
	add r1, r4, #0
	bl _s32_div_f
	add r1, r5, r1
	add r0, r5, #0
	b _02069550
_02069510:
	cmp r0, #1
	bne _02069524
	add r0, r6, #0
	add r1, r4, #0
	bl _s32_div_f
	add r0, r5, r4
	add r1, r5, r1
	sub r0, r0, #1
	b _02069550
_02069524:
	lsl r7, r4, #1
	cmp r6, r7
	bge _0206952E
	bl GF_AssertFail
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
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #0x64
	blo _02069606
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _020699E8
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl _s32_div_f
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	cmp r4, r0
	blo _02069B5E
	bl GF_AssertFail
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

	.rodata


	.global Unk_020EF8C8
Unk_020EF8C8: ; 0x020EF8C8
	.incbin "incbin/arm9_rodata.bin", 0xAC88, 0xAC8C - 0xAC88

	.global Unk_020EF8CC
Unk_020EF8CC: ; 0x020EF8CC
	.incbin "incbin/arm9_rodata.bin", 0xAC8C, 0xAC90 - 0xAC8C

	.global Unk_020EF8D0
Unk_020EF8D0: ; 0x020EF8D0
	.incbin "incbin/arm9_rodata.bin", 0xAC90, 0x4

