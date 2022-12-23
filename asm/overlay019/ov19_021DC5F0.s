	.include "macros/function.inc"
	.include "overlay019/ov19_021DC5F0.inc"

	

	.text


	thumb_func_start ov19_021DC5F0
ov19_021DC5F0: ; 0x021DC5F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	str r4, [r5, #0]
	ldr r0, [sp, #0x18]
	str r6, [r5, #0xc]
	str r0, [r5, #8]
	str r3, [r5, #4]
	add r0, r4, #0
	bl ov19_021D77D8
	str r0, [r5, #0x38]
	add r0, r4, #0
	bl ov19_021D77E0
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DC626
	mov r0, #0xe
	str r0, [r5, #0x30]
	mov r0, #0
	b _021DC62C
_021DC626:
	mov r0, #9
	str r0, [r5, #0x30]
	sub r0, #0x31
_021DC62C:
	str r0, [r5, #0x34]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2b
	strb r1, [r0]
	str r1, [r5, #0x2c]
	add r1, r5, #0
	ldr r0, [r5, #0x38]
	add r1, #0x3c
	mov r2, #6
	bl ov19_021DA3CC
	mov r1, #9
	mov r0, #0xa
	lsl r1, r1, #6
	bl sub_02018144
	str r0, [r5, #0x1c]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mov r2, #1
	add r3, #0x18
	bl sub_020071D0
	str r0, [r5, #0x14]
	cmp r0, #0
	beq _021DC66E
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	bne _021DC674
_021DC66E:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021DC674:
	add r0, r5, #0
	bl ov19_021DCDB4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov19_021DC5F0

	thumb_func_start ov19_021DC680
ov19_021DC680: ; 0x021DC680
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC68E
	bl sub_020181C4
_021DC68E:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DC698
	bl sub_020181C4
_021DC698:
	add r0, r4, #0
	bl ov19_021DCF50
	pop {r4, pc}
	thumb_func_end ov19_021DC680

	thumb_func_start ov19_021DC6A0
ov19_021DC6A0: ; 0x021DC6A0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r2, #0
	add r1, #0x2b
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x2b
	ldrb r1, [r1]
	bl ov19_021DCD64
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DCEB8
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019448
	pop {r4, pc}
	thumb_func_end ov19_021DC6A0

	thumb_func_start ov19_021DC6C8
ov19_021DC6C8: ; 0x021DC6C8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov19_021DCEB8
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x2b
	strb r1, [r0]
	ldr r0, _021DC6F4 ; =ov19_021DC708
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC6EC
	mov r0, #1
	b _021DC6EE
_021DC6EC:
	mov r0, #0
_021DC6EE:
	str r0, [r4, #0x2c]
	pop {r4, pc}
	nop
_021DC6F4: .word ov19_021DC708
	thumb_func_end ov19_021DC6C8

	thumb_func_start ov19_021DC6F8
ov19_021DC6F8: ; 0x021DC6F8
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DC702
	mov r0, #1
	bx lr
_021DC702:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DC6F8

	thumb_func_start ov19_021DC708
ov19_021DC708: ; 0x021DC708
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #2
	bls _021DC724
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	ldr r4, _021DC764 ; =0xFFFF0000
	sub r1, r0, #2
	b _021DC72A
_021DC724:
	lsl r0, r0, #0xf
	neg r4, r0
	mov r1, #0
_021DC72A:
	add r0, r5, #0
	add r0, #0x2b
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x2b
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov19_021DCD64
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_02019448
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DCE50
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DC760
	mov r0, #0
	str r0, [r5, #0x2c]
	add r0, r6, #0
	bl sub_0200DA58
_021DC760:
	pop {r4, r5, r6, pc}
	nop
_021DC764: .word 0xFFFF0000
	thumb_func_end ov19_021DC708

	thumb_func_start ov19_021DC768
ov19_021DC768: ; 0x021DC768
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DC784 ; =ov19_021DC79C
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC77E
	mov r0, #1
	b _021DC780
_021DC77E:
	mov r0, #0
_021DC780:
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
_021DC784: .word ov19_021DC79C
	thumb_func_end ov19_021DC768

	thumb_func_start ov19_021DC788
ov19_021DC788: ; 0x021DC788
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	bne _021DC798
	bl ov19_021DCF50
	mov r0, #1
	pop {r3, pc}
_021DC798:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov19_021DC788

	thumb_func_start ov19_021DC79C
ov19_021DC79C: ; 0x021DC79C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _021DC7BC
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #1
	lsl r4, r4, #0x10
	add r1, r0, #2
	b _021DC7C2
_021DC7BC:
	mov r1, #0x1a
	sub r0, r1, r0
	lsl r4, r0, #0xf
_021DC7C2:
	add r0, r5, #0
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2b
	ldrb r1, [r0]
	cmp r1, #2
	bls _021DC7FE
	asr r0, r4, #0xc
	lsr r0, r0, #3
	sub r1, r1, #2
	sub r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0xf
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x30]
	ldr r0, [r5, #4]
	lsl r3, r3, #0x18
	mov r1, #2
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
_021DC7FE:
	add r1, r5, #0
	add r1, #0x2b
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov19_021DCD64
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_02019448
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DCE50
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _021DC82E
	mov r0, #0
	str r0, [r5, #0x2c]
	add r0, r6, #0
	bl sub_0200DA58
_021DC82E:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DC79C

	thumb_func_start ov19_021DC834
ov19_021DC834: ; 0x021DC834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #4]
	bl sub_0207A0F8
	add r1, r6, #0
	add r1, #0x28
	ldrb r4, [r1]
	cmp r4, r0
	bge _021DC8D8
	sub r0, r0, r4
	str r0, [sp, #8]
	cmp r4, #5
	bge _021DC8B0
	mov r0, #0x34
	add r1, r4, #0
	mul r1, r0
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x3c
	str r0, [sp, #0xc]
	add r5, r0, r1
	add r7, r6, r1
	ldr r0, _021DC8E0 ; =0x00000418
	lsl r1, r4, #5
	add r0, r1, r0
	str r0, [sp, #4]
_021DC86E:
	add r1, r4, #1
	mov r0, #0x34
	mul r0, r1
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r1, r0
	add r1, r5, #0
	mov r2, #1
	bl ov19_021DA418
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldr r0, [r6, #0x38]
	add r1, r2, r1
	mov r2, #1
	bl ov19_021DA3CC
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _021DC8A0
	ldr r0, [r6, #0x38]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov19_021DA754
_021DC8A0:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0x20
	add r5, #0x34
	add r7, #0x34
	str r0, [sp, #4]
	cmp r4, #5
	blt _021DC86E
_021DC8B0:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x29
	strb r0, [r1]
	add r0, r6, #0
	mov r2, #0
	add r0, #0x2a
	strb r2, [r0]
	ldr r0, _021DC8E4 ; =ov19_021DC8E8
	add r1, r6, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC8D0
	mov r0, #1
	b _021DC8D2
_021DC8D0:
	mov r0, #0
_021DC8D2:
	add sp, #0x10
	str r0, [r6, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
_021DC8D8:
	mov r0, #0
	str r0, [r6, #0x2c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC8E0: .word 0x00000418
_021DC8E4: .word ov19_021DC8E8
	thumb_func_end ov19_021DC834

	thumb_func_start ov19_021DC8E8
ov19_021DC8E8: ; 0x021DC8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [sp]
	add r1, #0x28
	ldr r0, [sp, #4]
	add r2, #0x2a
	add r0, #0x29
	ldrb r7, [r0]
	ldr r0, [sp, #4]
	ldrb r1, [r1]
	ldrb r3, [r2]
	ldr r0, [r0, #0x1c]
	lsl r2, r1, #3
	add r3, r3, r2
	mov r2, #0xc
	mul r2, r3
	add r4, r0, r2
	mov r6, #0
	cmp r7, #0
	ble _021DC934
	mov r0, #0x34
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #4]
	add r5, r0, r2
_021DC91E:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021DC92A
	add r1, r4, #0
	bl sub_02021C50
_021DC92A:
	add r6, r6, #1
	add r5, #0x34
	add r4, #0x60
	cmp r6, r7
	blt _021DC91E
_021DC934:
	ldr r0, [sp, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #8
	blo _021DC958
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0x2c]
	ldr r0, [sp]
	bl sub_0200DA58
_021DC958:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DC8E8

	thumb_func_start ov19_021DC95C
ov19_021DC95C: ; 0x021DC95C
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DC966
	mov r0, #1
	bx lr
_021DC966:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DC95C

	thumb_func_start ov19_021DC96C
ov19_021DC96C: ; 0x021DC96C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_0207A0F8
	sub r4, r0, #1
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, r4
	bls _021DC9F2
	mov r0, #0x34
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _021DC9FC ; =0x021E0234
	str r0, [r2, #0]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	ldr r2, [r5, #0x34]
	add r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp]
	sub r2, r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	str r1, [r5, #0x20]
	ldr r1, _021DCA00 ; =0x021E0236
	mov r2, #0
	ldrh r0, [r1, r0]
	lsl r1, r0, #0xc
	ldr r0, [sp, #4]
	sub r1, r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x2a
	strb r2, [r0]
	add r0, r5, #0
	add r0, #0x28
	strb r4, [r0]
	ldr r0, _021DCA04 ; =ov19_021DCA18
	add r1, r5, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC9EA
	mov r0, #1
	b _021DC9EC
_021DC9EA:
	mov r0, #0
_021DC9EC:
	add sp, #0xc
	str r0, [r5, #0x2c]
	pop {r4, r5, pc}
_021DC9F2:
	mov r0, #0
	str r0, [r5, #0x2c]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021DC9FC: .word 0x021E0234
_021DCA00: .word 0x021E0236
_021DCA04: .word ov19_021DCA18
	thumb_func_end ov19_021DC96C

	thumb_func_start ov19_021DCA08
ov19_021DCA08: ; 0x021DCA08
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DCA12
	mov r0, #1
	bx lr
_021DCA12:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DCA08

	thumb_func_start ov19_021DCA18
ov19_021DCA18: ; 0x021DCA18
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x34
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #8
	blo _021DCA7E
	add r1, r5, #0
	add r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r4, #1
	lsl r2, r1, #2
	ldr r1, _021DCAB8 ; =0x021E0234
	ldrh r1, [r1, r2]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _021DCABC ; =0x021E0236
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	b _021DCA90
_021DCA7E:
	ldr r1, [sp]
	ldr r0, [r5, #0x20]
	mov r4, #0
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [sp, #4]
_021DCA90:
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x34
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	add r1, sp, #0
	bl sub_02021C50
	cmp r4, #0
	beq _021DCAB2
	mov r0, #0
	str r0, [r5, #0x2c]
	add r0, r6, #0
	bl sub_0200DA58
_021DCAB2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021DCAB8: .word 0x021E0234
_021DCABC: .word 0x021E0236
	thumb_func_end ov19_021DCA18

	thumb_func_start ov19_021DCAC0
ov19_021DCAC0: ; 0x021DCAC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E68
	mov r1, #0x11
	ldr r2, [r5, #0xc]
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _021DCADC
	ldr r0, [r5, #0x10]
	bl ov19_021D84E0
_021DCADC:
	ldr r0, [r5, #0xc]
	bl ov19_021D5E2C
	add r4, r0, #0
	add r2, r5, #0
	mov r1, #0x34
	ldr r0, [r5, #0x38]
	add r2, #0x3c
	mul r1, r4
	add r1, r2, r1
	mov r2, #1
	bl ov19_021DA3F0
	add r5, #0x28
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DCAC0

	thumb_func_start ov19_021DCAFC
ov19_021DCAFC: ; 0x021DCAFC
	add r2, r0, #0
	mov r0, #0x5d
	mov r3, #0
	lsl r0, r0, #2
	strb r3, [r2, r0]
	add r0, r2, #0
	add r0, #0x28
	mov r3, #0x34
	strb r1, [r0]
	ldr r0, [r2, #0x38]
	add r2, #0x3c
	mul r3, r1
	add r1, r2, r3
	ldr r3, _021DCB1C ; =ov19_021DA7B8
	mov r2, #1
	bx r3
	; .align 2, 0
_021DCB1C: .word ov19_021DA7B8
	thumb_func_end ov19_021DCAFC

	thumb_func_start ov19_021DCB20
ov19_021DCB20: ; 0x021DCB20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x28
	ldrb r1, [r0]
	add r4, r5, #0
	mov r0, #0x34
	add r6, r1, #0
	mul r6, r0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, #0x3c
	cmp r0, #0
	beq _021DCB42
	cmp r0, #1
	beq _021DCB8A
	b _021DCB9A
_021DCB42:
	ldr r0, [r5, #0x38]
	add r1, r4, r6
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021DCB9A
	ldr r0, [r5, #0]
	bl ov19_021D7964
	add r7, r0, #0
	bl ov19_021D3B18
	cmp r0, #0
	beq _021DCB9A
	add r0, r7, #0
	bl ov19_021D3B20
	cmp r0, #0
	ldr r0, [r5, #0x38]
	beq _021DCB76
	add r1, r4, r6
	mov r2, #1
	bl ov19_021DA3F0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCB76:
	add r1, r4, r6
	mov r2, #2
	bl ov19_021DA7B8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021DCB9A
_021DCB8A:
	ldr r0, [r5, #0x38]
	add r1, r4, r6
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021DCB9A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCB9A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DCB20

	thumb_func_start ov19_021DCBA0
ov19_021DCBA0: ; 0x021DCBA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	bl ov19_021D5E10
	cmp r0, #1
	bne _021DCBD8
	ldr r0, [r7, #0xc]
	bl ov19_021D5EC8
	add r5, r7, #0
	str r0, [sp]
	mov r6, #0
	add r4, r7, #0
	add r5, #0x3c
_021DCBBE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DCBCE
	ldr r0, [r7, #0x38]
	ldr r2, [sp]
	add r1, r5, #0
	bl ov19_021DA63C
_021DCBCE:
	add r6, r6, #1
	add r4, #0x34
	add r5, #0x34
	cmp r6, #6
	blt _021DCBBE
_021DCBD8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DCBA0

	thumb_func_start ov19_021DCBDC
ov19_021DCBDC: ; 0x021DCBDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r0, #0x34
	add r4, r1, #0
	mul r4, r0
	add r6, #0x3c
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021DCC12
	ldr r0, [r5, #0x38]
	add r1, r6, r4
	bl ov19_021DA690
	ldr r0, [r5, #0xc]
	bl ov19_021D5EC8
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	add r1, r6, r4
	bl ov19_021DA63C
	ldr r0, [r5, #0x38]
	add r1, r6, r4
	mov r2, #0
	bl ov19_021DA694
_021DCC12:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DCBDC

	thumb_func_start ov19_021DCC14
ov19_021DCC14: ; 0x021DCC14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E2C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5EA0
	add r2, r0, #0
	add r1, r5, #0
	mov r0, #0x34
	add r3, r4, #0
	add r1, #0x3c
	mul r3, r0
	ldr r0, [r1, r3]
	cmp r0, #0
	beq _021DCC40
	ldr r0, [r5, #0x38]
	add r1, r1, r3
	bl ov19_021DA68C
_021DCC40:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DCC14

	thumb_func_start ov19_021DCC44
ov19_021DCC44: ; 0x021DCC44
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0x34
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	add r7, r3, #0
	add r0, #0x3c
	str r2, [sp]
	add r0, r0, r6
	add r1, r7, #0
	mov r2, #1
	bl ov19_021DA418
	ldr r0, [r5, #0x38]
	ldr r2, [sp]
	add r1, r7, #0
	bl ov19_021DA754
	add r1, r5, #0
	add r1, #0x3c
	ldr r0, [r5, #0x38]
	add r1, r1, r6
	mov r2, #1
	bl ov19_021DA3CC
	add r5, #0x28
	strb r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCC44

	thumb_func_start ov19_021DCC80
ov19_021DCC80: ; 0x021DCC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	bl sub_0207A0F8
	sub r7, r0, #1
	add r4, r5, #0
	mov r0, #0x34
	add r6, r7, #0
	mul r6, r0
	add r4, #0x3c
	ldr r0, [sp, #4]
	add r1, r4, r6
	mov r2, #1
	bl ov19_021DA418
	ldr r2, _021DCCD0 ; =0x00000418
	lsl r3, r7, #5
	ldr r0, [r5, #0x38]
	add r1, r4, r6
	add r2, r3, r2
	bl ov19_021DA754
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r4, r6]
	add r1, r7, #4
	bl ov19_021D78AC
	ldr r0, [sp]
	add r5, #0x28
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DCCD0: .word 0x00000418
	thumb_func_end ov19_021DCC80

	thumb_func_start ov19_021DCCD4
ov19_021DCCD4: ; 0x021DCCD4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r6, #0
	mov r0, #0x34
	add r4, r7, #0
	mul r4, r0
	add r5, #0x3c
	add r0, r2, #0
	add r1, r5, r4
	mov r2, #1
	bl ov19_021DA418
	ldr r2, _021DCD14 ; =0x00000418
	lsl r3, r7, #5
	ldr r0, [r6, #0x38]
	add r1, r5, r4
	add r2, r3, r2
	bl ov19_021DA754
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r5, r4]
	add r1, r7, #4
	bl ov19_021D78AC
	add r6, #0x28
	strb r7, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DCD14: .word 0x00000418
	thumb_func_end ov19_021DCCD4

	thumb_func_start ov19_021DCD18
ov19_021DCD18: ; 0x021DCD18
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _021DCD26
	bl GF_AssertFail
_021DCD26:
	mov r0, #0x34
	add r5, #0x3c
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DCD18

	thumb_func_start ov19_021DCD30
ov19_021DCD30: ; 0x021DCD30
	push {r3, r4}
	cmp r1, #6
	bne _021DCD44
	ldr r0, [r0, #0x34]
	add r0, #0xc0
	str r0, [r2, #0]
	mov r0, #0xb8
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_021DCD44:
	ldr r4, [r0, #0x34]
	ldr r0, _021DCD5C ; =0x021E0234
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	add r0, r4, r0
	str r0, [r2, #0]
	ldr r0, _021DCD60 ; =0x021E0236
	ldrh r0, [r0, r1]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	nop
_021DCD5C: .word 0x021E0234
_021DCD60: .word 0x021E0236
	thumb_func_end ov19_021DCD30

	thumb_func_start ov19_021DCD64
ov19_021DCD64: ; 0x021DCD64
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r0, #0
	cmp r1, #2
	bhi _021DCD7E
	mov r0, #2
	sub r1, r0, r1
	add r2, r1, #0
	mov r0, #0x1e
	mul r2, r0
	mov r1, #0x18
	mov r0, #0
	b _021DCD8C
_021DCD7E:
	cmp r1, #0x1a
	bhs _021DCDB0
	mov r0, #0x1a
	sub r1, r0, r1
	mov r0, #0x18
	mov r2, #0
	sub r0, r0, r1
_021DCD8C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r4, [r3, #0x18]
	ldr r0, [r3, #4]
	ldr r3, [r3, #0x30]
	add r4, #0xc
	lsl r3, r3, #0x18
	mov r1, #2
	add r2, r4, r2
	lsr r3, r3, #0x18
	bl sub_020198C0
_021DCDB0:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov19_021DCD64

	thumb_func_start ov19_021DCDB4
ov19_021DCDB4: ; 0x021DCDB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #0
	ldr r1, _021DCE4C ; =0x021E0234
	mov ip, r0
_021DCDC2:
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	mov r0, #0
	ldrh r4, [r1, #2]
	sub r2, r3, r2
	lsl r3, r2, #0xc
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldrh r3, [r1, #6]
	asr r2, r2, #3
	mov lr, r2
	sub r3, r4, r3
	lsl r4, r3, #0xc
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	ldr r2, [sp, #4]
	add r6, r0, #0
	asr r7, r3, #3
	add r5, r0, #0
_021DCDEC:
	ldr r3, [sp]
	add r5, r5, r7
	ldr r4, [r3, #0x34]
	ldrh r3, [r1, #4]
	add r0, r0, #1
	add r3, r4, r3
	lsl r4, r3, #0xc
	mov r3, lr
	add r6, r6, r3
	add r3, r4, r6
	str r3, [r2, #0]
	ldrh r3, [r1, #6]
	lsl r3, r3, #0xc
	add r3, r3, r5
	str r3, [r2, #4]
	mov r3, #0
	str r3, [r2, #8]
	add r2, #0xc
	cmp r0, #7
	blo _021DCDEC
	ldr r3, [sp]
	mov r2, #0xc
	ldr r4, [r3, #0x34]
	ldrh r3, [r1]
	mul r2, r0
	ldr r0, [sp, #4]
	add r3, r4, r3
	lsl r4, r3, #0xc
	ldr r3, [sp, #4]
	add r0, r0, r2
	str r4, [r3, r2]
	ldrh r2, [r1, #2]
	add r1, r1, #4
	lsl r2, r2, #0xc
	str r2, [r0, #4]
	mov r2, #0
	str r2, [r0, #8]
	add r0, r3, #0
	add r0, #0x60
	str r0, [sp, #4]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #5
	blo _021DCDC2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DCE4C: .word 0x021E0234
	thumb_func_end ov19_021DCDB4

	thumb_func_start ov19_021DCE50
ov19_021DCE50: ; 0x021DCE50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r7, #0
_021DCE5A:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021DCEB2
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl sub_02021C50
	cmp r4, #0
	bge _021DCE98
	mov r0, #0xd
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021DCEAA
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_02021CAC
	b _021DCEAA
_021DCE98:
	mov r0, #0xd
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _021DCEAA
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_02021CAC
_021DCEAA:
	add r7, r7, #1
	add r5, #0x34
	cmp r7, #6
	blt _021DCE5A
_021DCEB2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DCE50

	thumb_func_start ov19_021DCEB8
ov19_021DCEB8: ; 0x021DCEB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x24]
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _021DCECA
	mov r0, #0
	str r0, [sp, #0x14]
	b _021DCECE
_021DCECA:
	mov r0, #0xd0
	str r0, [sp, #0x14]
_021DCECE:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _021DCF44
	ldr r0, [sp, #0x24]
	ldr r7, _021DCF48 ; =0x00000418
	str r0, [sp, #0x1c]
	add r0, #0x3c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r5, _021DCF4C ; =0x021E0234
	str r0, [sp, #0x18]
_021DCEF0:
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x24]
	ldr r3, [r2, #0x34]
	ldrh r2, [r5]
	ldrh r6, [r5, #2]
	ldr r0, [r0, #0x38]
	add r2, r3, r2
	ldr r3, [sp, #0x14]
	add r3, r3, r6
	bl ov19_021DA428
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	bl sub_02021CAC
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, #0x34
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, #0x34
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	cmp r4, r0
	blt _021DCEF0
_021DCF44:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DCF48: .word 0x00000418
_021DCF4C: .word 0x021E0234
	thumb_func_end ov19_021DCEB8

	thumb_func_start ov19_021DCF50
ov19_021DCF50: ; 0x021DCF50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #4]
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _021DCF86
	add r5, r7, #0
	add r4, r7, #0
	add r5, #0x3c
_021DCF6A:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DCF7A
	ldr r0, [r7, #0x38]
	add r1, r5, #0
	mov r2, #1
	bl ov19_021DA3F0
_021DCF7A:
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #0x34
	add r5, #0x34
	cmp r6, r0
	blt _021DCF6A
_021DCF86:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCF50

	.rodata


	.global Unk_ov19_021E0234
Unk_ov19_021E0234: ; 0x021E0234
	.incbin "incbin/overlay19_rodata.bin", 0x444, 0x18

