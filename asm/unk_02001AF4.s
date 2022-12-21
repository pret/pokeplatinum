	.include "macros/function.inc"
	.include "include/unk_02001AF4.inc"

	

	.text


	thumb_func_start sub_02001AF4
sub_02001AF4: ; 0x02001AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r6, r1, #0
	mov r1, #0x20
	add r7, r2, #0
	str r0, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #4]
	bl sub_020149F0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [sp]
	strb r0, [r4, #0x15]
	add r0, r4, #0
	bl sub_02001F1C
	strb r0, [r4, #0x16]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x17]
	strb r7, [r4, #0x18]
	ldrb r0, [r5, #8]
	bl sub_02002DF8
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #2
	bl sub_02002DF8
	add r0, r6, r0
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	mov r1, #1
	bl sub_02002DF8
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #3
	bl sub_02002DF8
	add r0, r6, r0
	strb r0, [r4, #0x1a]
	add r0, r4, #0
	bl sub_02001F5C
	add r0, r4, #0
	bl sub_02001FE8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001AF4

	thumb_func_start sub_02001B7C
sub_02001B7C: ; 0x02001B7C
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02001AF4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0201A954
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02001B7C

	thumb_func_start sub_02001B9C
sub_02001B9C: ; 0x02001B9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #8]
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	bl sub_02002DF8
	add r1, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02001B7C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001B9C

	thumb_func_start sub_02001BC4
sub_02001BC4: ; 0x02001BC4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _02001BD0
	ldrb r0, [r4, #0x15]
	strb r0, [r1]
_02001BD0:
	ldr r0, [r4, #0xc]
	bl sub_02014A20
	ldrb r0, [r4, #0x1c]
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end sub_02001BC4

	thumb_func_start sub_02001BE0
sub_02001BE0: ; 0x02001BE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r2, _02001C8C ; =0x021BF67C
	strb r1, [r4, #0x1b]
	ldr r2, [r2, #0x48]
	mov r5, #1
	add r3, r2, #0
	tst r3, r5
	beq _02001C06
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_02001C06:
	ldr r3, [r4, #0x10]
	tst r3, r2
	beq _02001C16
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_02005748
	sub r0, r5, #3
	pop {r3, r4, r5, pc}
_02001C16:
	mov r3, #0x40
	tst r3, r2
	beq _02001C30
	ldr r2, _02001C90 ; =0x000005DC
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C2A
	add r0, r5, #0
	strb r0, [r4, #0x1b]
_02001C2A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C30:
	mov r1, #0x80
	tst r1, r2
	beq _02001C4C
	ldr r2, _02001C90 ; =0x000005DC
	add r1, r5, #0
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C46
	mov r0, #2
	strb r0, [r4, #0x1b]
_02001C46:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C4C:
	mov r1, #0x20
	tst r1, r2
	beq _02001C68
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #2
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C62
	mov r0, #3
	strb r0, [r4, #0x1b]
_02001C62:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C68:
	mov r1, #0x10
	tst r2, r1
	beq _02001C84
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #3
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C7E
	mov r0, #4
	strb r0, [r4, #0x1b]
_02001C7E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C84:
	sub r1, #0x11
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	nop
_02001C8C: .word 0x021BF67C
_02001C90: .word 0x000005DC
	thumb_func_end sub_02001BE0

	thumb_func_start sub_02001C94
sub_02001C94: ; 0x02001C94
	push {r4, r5, r6, lr}
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #0
	ldr r3, _02001D3C ; =0x021BF67C
	strb r1, [r4, #0x1b]
	ldr r5, [r3, #0x48]
	mov r3, #1
	add r6, r5, #0
	tst r6, r3
	beq _02001CBC
	ldr r0, _02001D40 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r4, r5, r6, pc}
_02001CBC:
	ldr r6, [r4, #0x10]
	tst r6, r5
	beq _02001CCE
	ldr r0, _02001D40 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001CCE:
	mov r6, #0x40
	tst r6, r5
	beq _02001CE6
	bl sub_02001DCC
	cmp r0, #1
	bne _02001CE0
	mov r0, #1
	strb r0, [r4, #0x1b]
_02001CE0:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001CE6:
	mov r1, #0x80
	tst r1, r5
	beq _02001D00
	add r1, r3, #0
	bl sub_02001DCC
	cmp r0, #1
	bne _02001CFA
	mov r0, #2
	strb r0, [r4, #0x1b]
_02001CFA:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D00:
	mov r1, #0x20
	tst r1, r5
	beq _02001D1A
	mov r1, #2
	bl sub_02001DCC
	cmp r0, #1
	bne _02001D14
	mov r0, #3
	strb r0, [r4, #0x1b]
_02001D14:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D1A:
	mov r1, #0x10
	add r3, r5, #0
	tst r3, r1
	beq _02001D36
	mov r1, #3
	bl sub_02001DCC
	cmp r0, #1
	bne _02001D30
	mov r0, #4
	strb r0, [r4, #0x1b]
_02001D30:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D36:
	sub r1, #0x11
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02001D3C: .word 0x021BF67C
_02001D40: .word 0x000005DC
	thumb_func_end sub_02001C94

	thumb_func_start sub_02001D44
sub_02001D44: ; 0x02001D44
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #5
	bhi _02001DBA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02001D58: ; jump table
	.short _02001D64 - _02001D58 - 2 ; case 0
	.short _02001D76 - _02001D58 - 2 ; case 1
	.short _02001D82 - _02001D58 - 2 ; case 2
	.short _02001D90 - _02001D58 - 2 ; case 3
	.short _02001D9E - _02001D58 - 2 ; case 4
	.short _02001DAC - _02001D58 - 2 ; case 5
_02001D64:
	ldr r0, _02001DC0 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r4, pc}
_02001D76:
	ldr r0, _02001DC0 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	mvn r0, r0
	pop {r4, pc}
_02001D82:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #0
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001D90:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #1
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001D9E:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #2
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001DAC:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #3
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001DBA:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_02001DC0: .word 0x000005DC
	thumb_func_end sub_02001D44

	thumb_func_start sub_02001DC4
sub_02001DC4: ; 0x02001DC4
	ldrb r0, [r0, #0x15]
	bx lr
	thumb_func_end sub_02001DC4

	thumb_func_start sub_02001DC8
sub_02001DC8: ; 0x02001DC8
	ldrb r0, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02001DC8

	thumb_func_start sub_02001DCC
sub_02001DCC: ; 0x02001DCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r2, #0
	ldrb r4, [r5, #0x15]
	bl sub_02001E24
	cmp r0, #0
	bne _02001DE4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02001DE4:
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002DF8
	add r1, sp, #8
	add r7, r0, #0
	add r0, r5, #0
	add r1, #1
	add r2, sp, #8
	add r3, r4, #0
	bl sub_02002018
	mov r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0x1a]
	add r3, sp, #8
	add r1, r7, #0
	str r0, [sp, #4]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl sub_0201AE78
	add r0, r5, #0
	bl sub_02001FE8
	add r0, r6, #0
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02001DCC

	thumb_func_start sub_02001E24
sub_02001E24: ; 0x02001E24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _02001E62
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bhi _02001E36
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E36:
	ldrb r4, [r5, #0x15]
	add r1, r6, #0
	add r0, r4, #0
	bl sub_020E1F6C
	cmp r1, #0
	bne _02001E5A
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001E50
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E50:
	sub r0, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E5A:
	sub r0, r4, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E62:
	cmp r1, #1
	bne _02001E9A
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bhi _02001E70
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E70:
	ldrb r6, [r5, #0x15]
	sub r4, r1, #1
	add r0, r6, #0
	bl sub_020E1F6C
	cmp r4, r1
	bne _02001E92
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001E8A
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E8A:
	sub r0, r6, r4
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E92:
	add r0, r6, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E9A:
	cmp r1, #2
	bne _02001ED0
	ldrb r3, [r5, #9]
	cmp r3, #1
	bhi _02001EA8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EA8:
	ldrb r2, [r5, #0xa]
	ldrb r1, [r5, #0x15]
	cmp r1, r2
	bhs _02001EC8
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001EBC
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EBC:
	sub r0, r3, #1
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001EC8:
	sub r0, r1, r2
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001ED0:
	ldrb r2, [r5, #9]
	cmp r2, #1
	bhi _02001EDA
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EDA:
	ldrb r1, [r5, #0xa]
	ldrb r0, [r5, #0x15]
	sub r2, r2, #1
	mul r2, r1
	cmp r0, r2
	blt _02001EFC
	ldrb r2, [r5, #0xb]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bne _02001EF2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EF2:
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001EFC:
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
_02001F02:
	ldr r1, [r5, #0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	bne _02001F16
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001F16:
	strb r2, [r5, #0x15]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001E24

	thumb_func_start sub_02001F1C
sub_02001F1C: ; 0x02001F1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mov r6, #0
	add r4, r6, #0
	mul r0, r1
	cmp r0, #0
	ble _02001F58
	add r7, r6, #0
_02001F30:
	ldr r2, [r5, #0]
	lsl r1, r4, #3
	ldr r1, [r2, r1]
	ldrb r0, [r5, #8]
	add r2, r7, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, r0
	bhs _02001F48
	add r6, r0, #0
_02001F48:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mul r0, r1
	cmp r4, r0
	blt _02001F30
_02001F58:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001F1C

	thumb_func_start sub_02001F5C
sub_02001F5C: ; 0x02001F5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201ADA4
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	ldrb r7, [r5, #0x17]
	lsl r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	mov r6, #0
	cmp r0, #0
	bls _02001FE4
_02001F8A:
	ldrb r2, [r5, #0xa]
	mov r4, #0
	cmp r2, #0
	bls _02001FD0
_02001F92:
	ldrb r3, [r5, #0xb]
	mul r2, r6
	ldrb r0, [r5, #0x1a]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	add r0, r0, r3
	ldrb r1, [r5, #0x18]
	mul r0, r4
	add r2, r4, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	lsl r2, r2, #3
	ldr r2, [r3, r2]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	add r3, r7, #0
	bl sub_0201D738
	add r0, r4, #1
	lsl r0, r0, #0x18
	ldrb r2, [r5, #0xa]
	lsr r4, r0, #0x18
	cmp r4, r2
	blo _02001F92
_02001FD0:
	ldr r0, [sp, #0xc]
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrb r0, [r5, #9]
	cmp r6, r0
	blo _02001F8A
_02001FE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001F5C

	thumb_func_start sub_02001FE8
sub_02001FE8: ; 0x02001FE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #0xb]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1e
	cmp r1, #1
	beq _02002012
	ldrb r3, [r4, #0x15]
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl sub_02002018
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	bl sub_02014A58
_02002012:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02001FE8

	thumb_func_start sub_02002018
sub_02002018: ; 0x02002018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	add r6, r2, #0
	bl sub_020E1F6C
	ldrb r2, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	lsl r2, r2, #1
	add r1, r1, r2
	mul r1, r0
	strb r1, [r4]
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	bl sub_020E1F6C
	ldrb r2, [r5, #0xb]
	ldrb r3, [r5, #0x1a]
	ldrb r0, [r5, #0x18]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	add r2, r3, r2
	mul r2, r1
	add r0, r0, r2
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02002018

	thumb_func_start sub_02002054
sub_02002054: ; 0x02002054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0xc]
	add r7, r0, #0
	str r1, [sp, #8]
	str r3, [sp, #0x10]
	ldr r2, _020020FC ; =0x00000169
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r0, #2
	add r1, r5, #0
	bl sub_02013A04
	add r1, r4, #0
	mov r2, #0x29
	mov r3, #0
	add r6, r0, #0
	bl sub_02013A4C
	mov r3, #0x2a
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	sub r3, #0x2c
	bl sub_02013A4C
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	mov r1, #1
	str r6, [sp, #0x14]
	bl sub_0201A778
	add r1, r0, #0
	str r1, [sp, #0x18]
	mov r0, #0
	add r2, sp, #0x14
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #2
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r0, #0xf
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0x30
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0xc0
	bic r3, r0
	strb r3, [r2, #0xb]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0201A8D4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, #1
	bl sub_0200DC48
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r3, sp, #0x28
	ldrb r3, [r3, #0x10]
	add r0, sp, #0x14
	mov r1, #8
	mov r2, #0
	bl sub_02001B7C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020020FC: .word 0x00000169
	thumb_func_end sub_02002054

	thumb_func_start sub_02002100
sub_02002100: ; 0x02002100
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl sub_02002054
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002100

	thumb_func_start sub_02002114
sub_02002114: ; 0x02002114
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02001BE0
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02002130
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02002154
_02002130:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02002114

	thumb_func_start sub_02002134
sub_02002134: ; 0x02002134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001D44
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02002150
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02002154
_02002150:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02002134

	thumb_func_start sub_02002154
sub_02002154: ; 0x02002154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0
	bl sub_0200DC9C
	ldr r0, [r5, #4]
	bl sub_0201A8FC
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_02018238
	ldr r0, [r5, #0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02001BC4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02002154

	thumb_func_start sub_02002180
sub_02002180: ; 0x02002180
	push {r4, lr}
	sub sp, #0x18
	mov r4, #8
	lsl r1, r1, #0x10
	str r4, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r1, _020021AC ; =0x020E4C48
	mov r2, #0
	str r3, [sp, #0x14]
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r4, pc}
	nop
_020021AC: .word 0x020E4C48
	thumb_func_end sub_02002180

	.rodata


	.global Unk_020E4C48
Unk_020E4C48: ; 0x020E4C48
	.incbin "incbin/arm9_rodata.bin", 0x8, 0x40

