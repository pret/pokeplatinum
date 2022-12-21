	.include "macros/function.inc"
	.include "include/unk_0202DF8C.inc"

	

	.text


	thumb_func_start sub_0202DF8C
sub_0202DF8C: ; 0x0202DF8C
	ldr r0, _0202DF90 ; =0x00002AB0
	bx lr
	; .align 2, 0
_0202DF90: .word 0x00002AB0
	thumb_func_end sub_0202DF8C

	thumb_func_start sub_0202DF94
sub_0202DF94: ; 0x0202DF94
	ldr r3, _0202DFA0 ; =sub_020C4B4C
	add r1, r0, #0
	mov r0, #0
	ldr r2, _0202DFA4 ; =0x00002AB0
	bx r3
	nop
_0202DFA0: .word sub_020C4B4C
_0202DFA4: .word 0x00002AB0
	thumb_func_end sub_0202DF94

	thumb_func_start sub_0202DFA8
sub_0202DFA8: ; 0x0202DFA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	bne _0202DFBA
	bl sub_02022974
_0202DFBA:
	ldr r1, _0202E138 ; =0x00002AA8
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0x1e
	blo _0202DFC8
	bl sub_02022974
_0202DFC8:
	ldr r1, _0202E13C ; =0x00002AAC
	ldr r0, [sp]
	ldr r2, [r0, r1]
	ldr r0, _0202E140 ; =0x0000270F
	cmp r2, r0
	blo _0202DFD6
	b _0202E134
_0202DFD6:
	ldr r0, [sp]
	sub r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x5b
	lsl r0, r0, #2
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0207A0F8
	str r0, [sp, #0x10]
	mov r0, #0xb
	mov r1, #0
	bl sub_02023790
	mov r2, #0x5a
	add r6, r0, #0
	ldr r1, [sp, #0x14]
	mov r0, #0
	lsl r2, r2, #2
	bl sub_020C4AF0
	ldr r0, [sp, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _0202E0E6
	ldr r5, [sp, #0x14]
_0202E012:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02073C88
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0202E0D6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #2]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	strb r0, [r5, #3]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x32]
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x34]
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x36]
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x38]
	cmp r6, #0
	beq _0202E0CE
	add r0, r4, #0
	mov r1, #0x77
	add r2, r6, #0
	bl sub_02074470
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xc
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074470
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x22
	mov r2, #8
	bl sub_02023DF0
	b _0202E0D4
_0202E0CE:
	ldr r0, _0202E144 ; =0x0000FFFF
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x22]
_0202E0D4:
	add r5, #0x3c
_0202E0D6:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02073CD4
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _0202E012
_0202E0E6:
	ldr r0, [sp, #8]
	mov r1, #0x5a
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	strh r2, [r0, r1]
	ldr r0, [sp, #8]
	add r2, r1, #2
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x14]
	add r1, r1, #3
	strb r3, [r0, r2]
	ldr r0, [sp, #8]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x14]
	strb r2, [r0, r1]
	ldr r1, _0202E138 ; =0x00002AA8
	ldr r0, [sp]
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #0x1e
	blo _0202E11E
	ldr r0, [sp]
	mov r2, #0
	str r2, [r0, r1]
_0202E11E:
	ldr r1, _0202E13C ; =0x00002AAC
	ldr r0, [sp]
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	cmp r6, #0
	str r2, [r0, r1]
	beq _0202E134
	add r0, r6, #0
	bl sub_020237BC
_0202E134:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202E138: .word 0x00002AA8
_0202E13C: .word 0x00002AAC
_0202E140: .word 0x0000270F
_0202E144: .word 0x0000FFFF
	thumb_func_end sub_0202DFA8

	thumb_func_start sub_0202E148
sub_0202E148: ; 0x0202E148
	push {r4, lr}
	add r4, r0, #0
	bne _0202E152
	bl sub_02022974
_0202E152:
	ldr r0, _0202E16C ; =0x00002AA8
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blo _0202E15E
	bl sub_02022974
_0202E15E:
	ldr r0, _0202E170 ; =0x00002AAC
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blo _0202E168
	mov r0, #0x1e
_0202E168:
	pop {r4, pc}
	nop
_0202E16C: .word 0x00002AA8
_0202E170: .word 0x00002AAC
	thumb_func_end sub_0202E148

	thumb_func_start sub_0202E174
sub_0202E174: ; 0x0202E174
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202E182
	bl sub_02022974
_0202E182:
	ldr r0, _0202E1A0 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E18E
	bl sub_02022974
_0202E18E:
	cmp r4, #0x1e
	blt _0202E196
	bl sub_02022974
_0202E196:
	ldr r0, _0202E1A4 ; =0x00002AAC
	ldr r0, [r5, r0]
	sub r0, r0, r4
	pop {r3, r4, r5, pc}
	nop
_0202E1A0: .word 0x00002AA8
_0202E1A4: .word 0x00002AAC
	thumb_func_end sub_0202E174

	thumb_func_start sub_0202E1A8
sub_0202E1A8: ; 0x0202E1A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202E1B6
	bl sub_02022974
_0202E1B6:
	ldr r0, _0202E1F0 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E1C2
	bl sub_02022974
_0202E1C2:
	cmp r4, #0x1e
	blt _0202E1CA
	bl sub_02022974
_0202E1CA:
	ldr r0, _0202E1F0 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r2, r0, r4
	bpl _0202E1D6
	add r2, #0x1e
_0202E1D6:
	mov r1, #0x5b
	lsl r1, r1, #2
	mul r1, r2
	mov r0, #0
	add r2, r5, r1
_0202E1E0:
	ldrh r1, [r2]
	cmp r1, #0
	beq _0202E1EE
	add r0, r0, #1
	add r2, #0x3c
	cmp r0, #6
	blo _0202E1E0
_0202E1EE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202E1F0: .word 0x00002AA8
	thumb_func_end sub_0202E1A8

	thumb_func_start sub_0202E1F4
sub_0202E1F4: ; 0x0202E1F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _0202E206
	bl sub_02022974
_0202E206:
	ldr r0, _0202E270 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E212
	bl sub_02022974
_0202E212:
	cmp r6, #0x1e
	blt _0202E21A
	bl sub_02022974
_0202E21A:
	ldr r0, _0202E270 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r1, r0, r6
	bpl _0202E226
	add r1, #0x1e
_0202E226:
	mov r0, #0x5b
	lsl r0, r0, #2
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x3c
	mul r0, r7
	add r5, r1, r0
	ldrh r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc
	strh r0, [r4, #0x10]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x13]
	ldr r0, [r4, #0]
	bl sub_02023D28
	add r1, r5, #0
	ldr r0, [r4, #4]
	add r1, #0x22
	bl sub_02023D28
	mov r1, #0
_0202E25E:
	ldrh r0, [r5, #0x32]
	add r1, r1, #1
	add r5, r5, #2
	strh r0, [r4, #0x14]
	add r4, r4, #2
	cmp r1, #4
	blt _0202E25E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202E270: .word 0x00002AA8
	thumb_func_end sub_0202E1F4

	thumb_func_start sub_0202E274
sub_0202E274: ; 0x0202E274
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0202E284
	bl sub_02022974
_0202E284:
	ldr r0, _0202E2C8 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E290
	bl sub_02022974
_0202E290:
	cmp r6, #0x1e
	blt _0202E298
	bl sub_02022974
_0202E298:
	ldr r0, _0202E2C8 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r2, r0, r6
	bpl _0202E2A4
	add r2, #0x1e
_0202E2A4:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r1, r2, #0
	mul r1, r0
	add r2, r5, r1
	sub r1, r0, #4
	ldrh r1, [r2, r1]
	str r1, [r4, #0]
	sub r1, r0, #2
	ldrb r1, [r2, r1]
	sub r0, r0, #1
	str r1, [r4, #4]
	ldrb r0, [r2, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	nop
_0202E2C8: .word 0x00002AA8
	thumb_func_end sub_0202E274