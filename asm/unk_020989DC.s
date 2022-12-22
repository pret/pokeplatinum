	.include "macros/function.inc"
	.include "include/unk_020989DC.inc"

	

	.text


	thumb_func_start sub_020989DC
sub_020989DC: ; 0x020989DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r1, #0xcf
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xcf
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_0202AB28
	str r0, [r7, #8]
	add r0, r4, #0
	bl sub_02025E38
	str r0, [r7, #0xc]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [r7, #0x10]
	add r0, r4, #0
	bl sub_0207D990
	str r0, [r7, #0x14]
	add r0, r4, #0
	bl sub_02025E44
	str r0, [r7, #0x18]
	add r0, r5, #0
	bl sub_0202A93C
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x20
	add r2, r5, #0
	bl sub_0200B368
	str r0, [sp, #4]
	mov r6, #0
_02098A3C:
	ldr r0, [r7, #8]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202AC54
	add r0, r4, #0
	bl sub_0202A914
	cmp r0, #0
	beq _02098ACA
	add r0, r4, #0
	add r1, sp, #8
	bl sub_0202AA9C
	ldr r0, [sp]
	add r1, r7, #0
	add r1, #0x1c
	lsl r0, r0, #3
	add r5, r1, r0
	strb r6, [r1, r0]
	add r0, r4, #0
	bl sub_0202AABC
	strb r0, [r5, #1]
	add r0, sp, #8
	ldrb r1, [r0]
	mov r2, #1
	strb r1, [r5, #2]
	ldrb r0, [r0, #6]
	mov r1, #0
	strb r0, [r5, #3]
	add r0, sp, #8
_02098A7C:
	add r3, r0, r1
	ldrb r3, [r3, #1]
	cmp r3, #0
	beq _02098A8A
	ldrb r3, [r5, #4]
	orr r3, r2
	strb r3, [r5, #4]
_02098A8A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsl r2, r2, #0x19
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	cmp r1, #5
	blo _02098A7C
	ldrb r1, [r5, #4]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #4]
	ldrb r2, [r5, #4]
	mov r1, #0x80
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #4]
	ldr r0, [sp]
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	strb r0, [r5, #5]
	mov r0, #0xff
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	strb r0, [r5, #7]
_02098ACA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x64
	blo _02098A3C
	ldr r0, [sp, #4]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp]
	strb r0, [r7]
	mov r0, #5
	strb r0, [r7, #3]
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020989DC

	thumb_func_start sub_02098AF0
sub_02098AF0: ; 0x02098AF0
	ldr r3, _02098AF4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02098AF4: .word sub_020181C4
	thumb_func_end sub_02098AF0

	thumb_func_start sub_02098AF8
sub_02098AF8: ; 0x02098AF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02098B18
	bl sub_02006844
	cmp r0, #0
	beq _02098B18
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02098B18:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098AF8

	thumb_func_start sub_02098B1C
sub_02098B1C: ; 0x02098B1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x2c
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x2c
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x2c
	str r0, [r4, #0]
	str r5, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098B1C

	thumb_func_start sub_02098B50
sub_02098B50: ; 0x02098B50
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	cmp r1, #8
	bhi _02098BC0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02098B6A: ; jump table
	.short _02098B7C - _02098B6A - 2 ; case 0
	.short _02098B84 - _02098B6A - 2 ; case 1
	.short _02098B8C - _02098B6A - 2 ; case 2
	.short _02098B94 - _02098B6A - 2 ; case 3
	.short _02098B9C - _02098B6A - 2 ; case 4
	.short _02098BA4 - _02098B6A - 2 ; case 5
	.short _02098BAC - _02098B6A - 2 ; case 6
	.short _02098BB4 - _02098B6A - 2 ; case 7
	.short _02098BBC - _02098B6A - 2 ; case 8
_02098B7C:
	bl sub_02098C2C
	str r0, [r4, #0]
	b _02098BC0
_02098B84:
	bl sub_02098C44
	str r0, [r4, #0]
	b _02098BC0
_02098B8C:
	bl sub_02098CB0
	str r0, [r4, #0]
	b _02098BC0
_02098B94:
	bl sub_02098D38
	str r0, [r4, #0]
	b _02098BC0
_02098B9C:
	bl sub_02098D7C
	str r0, [r4, #0]
	b _02098BC0
_02098BA4:
	bl sub_02098DE8
	str r0, [r4, #0]
	b _02098BC0
_02098BAC:
	bl sub_02098E0C
	str r0, [r4, #0]
	b _02098BC0
_02098BB4:
	bl sub_02098E88
	str r0, [r4, #0]
	b _02098BC0
_02098BBC:
	mov r0, #1
	pop {r4, pc}
_02098BC0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098B50

	thumb_func_start sub_02098BC4
sub_02098BC4: ; 0x02098BC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_02098BE4
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02098BC4

	thumb_func_start sub_02098BE4
sub_02098BE4: ; 0x02098BE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #0xc]
	mov r0, #0
	ldrb r1, [r2]
	add r4, r0, #0
	cmp r1, #0
	bls _02098C1E
	mov r6, #1
_02098BF6:
	add r3, r2, #0
	add r3, #0x1c
	lsl r1, r4, #3
	add r1, r3, r1
	ldrb r3, [r1, #4]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x1f
	beq _02098C10
	ldrb r1, [r1]
	ldr r0, [r2, #8]
	bl sub_0202AB98
	add r0, r6, #0
_02098C10:
	add r1, r4, #1
	lsl r1, r1, #0x18
	ldr r2, [r5, #0xc]
	lsr r4, r1, #0x18
	ldrb r1, [r2]
	cmp r4, r1
	blo _02098BF6
_02098C1E:
	cmp r0, #0
	beq _02098C28
	ldr r0, [r2, #8]
	bl sub_0202ABD4
_02098C28:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02098BE4

	thumb_func_start sub_02098C2C
sub_02098C2C: ; 0x02098C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098C40 ; =0x020F683C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0x14]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02098C40: .word 0x020F683C
	thumb_func_end sub_02098C2C

	thumb_func_start sub_02098C44
sub_02098C44: ; 0x02098C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098C56
	mov r0, #1
	pop {r3, r4, r5, pc}
_02098C56:
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _02098C62
	mov r0, #8
	pop {r3, r4, r5, pc}
_02098C62:
	mov r0, #0
	strb r0, [r1, #2]
	ldr r0, [r5, #0]
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0xc]
	mov r1, #0
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #0x18]
	str r0, [r4, #0xc]
	ldr r0, _02098CAC ; =0x020F1E88
	ldr r2, [r5, #0]
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098CAC: .word 0x020F1E88
	thumb_func_end sub_02098C44

	thumb_func_start sub_02098CB0
sub_02098CB0: ; 0x02098CB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098CC2
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02098CC2:
	ldr r7, [r5, #0x10]
	add r0, r7, #0
	add r0, #0x22
	ldrb r6, [r0]
	strb r6, [r5, #8]
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	cmp r6, #7
	bne _02098CDA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02098CDA:
	ldr r0, [r5, #0]
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0x18]
	mov r0, #3
	strb r0, [r4, #0x12]
	mov r0, #1
	str r0, [r4, #0x2c]
	str r1, [r4, #0x28]
	ldr r1, _02098D30 ; =0x020F6838
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	bl sub_0208E9C0
	ldr r0, _02098D34 ; =0x020F410C
	ldr r2, [r5, #0]
	add r1, r7, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02098D30: .word 0x020F6838
_02098D34: .word 0x020F410C
	thumb_func_end sub_02098CB0

	thumb_func_start sub_02098D38
sub_02098D38: ; 0x02098D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098D4A
	mov r0, #3
	pop {r3, r4, r5, pc}
_02098D4A:
	ldr r0, [r5, #0x10]
	ldrb r4, [r0, #0x17]
	ldrb r0, [r0, #0x14]
	strb r0, [r5, #8]
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	cmp r4, #1
	bne _02098D60
	mov r0, #0
	pop {r3, r4, r5, pc}
_02098D60:
	ldr r0, [r5, #0xc]
	add r3, r0, #0
	ldrb r0, [r0, #1]
	add r3, #0x20
	lsl r2, r0, #3
	ldrb r1, [r3, r2]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r3, r2]
	ldr r0, [r5, #0xc]
	mov r1, #1
	strb r1, [r0, #2]
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098D38

	thumb_func_start sub_02098D7C
sub_02098D7C: ; 0x02098D7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #1]
	lsl r0, r0, #3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	strh r0, [r4, #8]
	ldr r2, [r5, #0xc]
	ldrb r1, [r2, #1]
	ldr r0, [r2, #8]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1c]
	ldr r2, [r5, #0]
	bl sub_0202AC70
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	ldrb r1, [r5, #8]
	ldr r0, [r0, #0x10]
	bl sub_0207A0FC
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	bl sub_02027AC0
	strb r0, [r4, #0xa]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	bl sub_02027B50
	strb r0, [r4, #0xb]
	ldr r0, _02098DE4 ; =0x020F684C
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098DE4: .word 0x020F684C
	thumb_func_end sub_02098D7C

	thumb_func_start sub_02098DE8
sub_02098DE8: ; 0x02098DE8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098DFA
	mov r0, #5
	pop {r4, pc}
_02098DFA:
	ldr r4, [r4, #0x10]
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #6
	pop {r4, pc}
	thumb_func_end sub_02098DE8

	thumb_func_start sub_02098E0C
sub_02098E0C: ; 0x02098E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x30
	bl sub_02018144
	ldr r2, [r5, #0xc]
	add r4, r0, #0
	ldrb r1, [r2, #1]
	ldr r0, [r2, #8]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1c]
	ldr r2, [r5, #0]
	bl sub_0202AC70
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0x18]
	mov r0, #4
	strb r0, [r4, #0x12]
	str r6, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x2c]
	str r1, [r4, #0x28]
	ldr r1, _02098E80 ; =0x020F6834
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	bl sub_0208E9C0
	ldr r0, _02098E84 ; =0x020F410C
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #7
	pop {r4, r5, r6, pc}
	nop
_02098E80: .word 0x020F6834
_02098E84: .word 0x020F410C
	thumb_func_end sub_02098E0C

	thumb_func_start sub_02098E88
sub_02098E88: ; 0x02098E88
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098E9A
	mov r0, #7
	pop {r4, pc}
_02098E9A:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098E88

	thumb_func_start sub_02098EAC
sub_02098EAC: ; 0x02098EAC
	push {r3, r4, r5, lr}
	sub sp, #8
	lsl r2, r1, #1
	ldr r1, _02098EF0 ; =0x020F685C
	ldrb r4, [r1, r2]
	ldr r1, _02098EF4 ; =0x020F685D
	ldrb r5, [r1, r2]
	cmp r4, #5
	bne _02098EC4
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_02098EC4:
	add r1, sp, #0
	bl sub_0202AA9C
	add r0, r4, #1
	add r2, sp, #0
	ldrb r1, [r2, r0]
	add r0, r5, #1
	ldrb r0, [r2, r0]
	cmp r1, r0
	bne _02098EDE
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_02098EDE:
	cmp r1, r0
	bls _02098EE8
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02098EE8:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02098EF0: .word 0x020F685C
_02098EF4: .word 0x020F685D
	thumb_func_end sub_02098EAC

	thumb_func_start sub_02098EF8
sub_02098EF8: ; 0x02098EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02075BCC
	lsl r1, r0, #1
	ldr r0, _02098FEC ; =0x020F685C
	ldrb r0, [r0, r1]
	str r0, [sp, #4]
	ldr r0, _02098FF0 ; =0x020F685D
	ldrb r0, [r0, r1]
	add r1, sp, #0x10
	str r0, [sp]
	add r0, r4, #0
	bl sub_0202AA9C
	mov r4, #0
	add r7, r4, #0
	add r5, sp, #0x18
_02098F22:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x13
	add r2, r7, #0
	bl sub_02074470
	lsl r1, r4, #2
	str r0, [r5, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02098F22
	add r4, sp, #8
	mov r1, #0
	mov r3, #1
	add r0, sp, #0x10
	add r4, #1
_02098F46:
	ldrb r5, [r0, r3]
	add r2, r1, #0
	add r1, r1, #1
	strb r5, [r4, r2]
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r3, r2, #0x18
	lsr r1, r1, #0x18
	cmp r3, #6
	bls _02098F46
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _02098F94
	ldrb r0, [r4, r0]
	bl _f_utof
	add r1, r0, #0
	ldr r0, _02098FF4 ; =0x3F8CCCCD
	bl _f_mul
	bl _f_ftou
	ldr r1, [sp, #4]
	strb r0, [r4, r1]
	add r4, sp, #8
	ldr r0, [sp]
	add r4, #1
	ldrb r0, [r4, r0]
	bl _f_utof
	add r1, r0, #0
	ldr r0, _02098FF8 ; =0x3F666666
	bl _f_mul
	bl _f_ftou
	ldr r1, [sp]
	strb r0, [r4, r1]
_02098F94:
	add r7, sp, #8
	mov r5, #0
	add r4, sp, #0x18
	add r7, #1
_02098F9C:
	lsl r2, r5, #2
	ldrb r0, [r7, r5]
	ldr r1, [r4, r2]
	add r0, r1, r0
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	cmp r0, #0xff
	ble _02098FB0
	mov r0, #0xff
	str r0, [r4, r2]
_02098FB0:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x13
	add r2, r4, r2
	bl sub_02074B30
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _02098F9C
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0xff
	bhs _02098FE8
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074B30
_02098FE8:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02098FEC: .word 0x020F685C
_02098FF0: .word 0x020F685D
_02098FF4: .word 0x3F8CCCCD
_02098FF8: .word 0x3F666666
	thumb_func_end sub_02098EF8

	.rodata


	.global Unk_020F6834
Unk_020F6834: ; 0x020F6834
	.incbin "incbin/arm9_rodata.bin", 0x11BF4, 0x11BF8 - 0x11BF4

	.global Unk_020F6838
Unk_020F6838: ; 0x020F6838
	.incbin "incbin/arm9_rodata.bin", 0x11BF8, 0x11BFC - 0x11BF8

	.global Unk_020F683C
Unk_020F683C: ; 0x020F683C
	.incbin "incbin/arm9_rodata.bin", 0x11BFC, 0x11C0C - 0x11BFC

	.global Unk_020F684C
Unk_020F684C: ; 0x020F684C
	.incbin "incbin/arm9_rodata.bin", 0x11C0C, 0x11C1C - 0x11C0C

	.global Unk_020F685C
Unk_020F685C: ; 0x020F685C
	.incbin "incbin/arm9_rodata.bin", 0x11C1C, 0x11C50 - 0x11C1C

	.global Unk_020F6890
Unk_020F6890: ; 0x020F6890
	.incbin "incbin/arm9_rodata.bin", 0x11C50, 0x10

