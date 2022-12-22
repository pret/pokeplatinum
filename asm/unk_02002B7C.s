	.include "macros/function.inc"
	.include "include/unk_02002B7C.inc"

	

	.text


	thumb_func_start sub_02002B7C
sub_02002B7C: ; 0x02002B7C
	push {r4, lr}
	ldr r0, _02002BAC ; =0x02101D4C
	ldr r4, _02002BB0 ; =0x02101D48
	mov r1, #0
	str r0, [r4, #0]
	add r2, r1, #0
	add r0, r1, #0
_02002B8A:
	ldr r3, [r4, #0]
	add r1, r1, #1
	add r3, r3, r2
	add r3, #0x84
	str r0, [r3, #0]
	ldr r3, [r4, #0]
	add r3, r3, r2
	add r3, #0x94
	add r2, r2, #4
	str r0, [r3, #0]
	cmp r1, #4
	blo _02002B8A
	ldr r0, _02002BB4 ; =0x020E4CE4
	bl sub_0201D670
	pop {r4, pc}
	nop
_02002BAC: .word 0x02101D4C
_02002BB0: .word 0x02101D48
_02002BB4: .word 0x020E4CE4
	thumb_func_end sub_02002B7C

	thumb_func_start sub_02002BB8
sub_02002BB8: ; 0x02002BB8
	push {r3, r4, lr}
	sub sp, #4
	str r1, [sp]
	lsl r4, r0, #2
	ldr r1, _02002BE0 ; =0x020E4CD4
	ldr r3, _02002BE4 ; =0x020E4CD6
	ldrh r1, [r1, r4]
	ldrh r3, [r3, r4]
	mov r0, #0xe
	mov r2, #1
	bl sub_020232E0
	ldr r1, _02002BE8 ; =0x02101D48
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x94
	str r0, [r1, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_02002BE0: .word 0x020E4CD4
_02002BE4: .word 0x020E4CD6
_02002BE8: .word 0x02101D48
	thumb_func_end sub_02002BB8

	thumb_func_start sub_02002BEC
sub_02002BEC: ; 0x02002BEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #4
	blt _02002BFA
	bl GF_AssertFail
_02002BFA:
	ldr r0, _02002C24 ; =0x02101D48
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002C0E
	bl GF_AssertFail
_02002C0E:
	ldr r0, _02002C24 ; =0x02101D48
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023330
	pop {r3, r4, r5, pc}
	nop
_02002C24: .word 0x02101D48
	thumb_func_end sub_02002BEC

	thumb_func_start sub_02002C28
sub_02002C28: ; 0x02002C28
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02002C34
	bl GF_AssertFail
_02002C34:
	ldr r0, _02002C5C ; =0x02101D48
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002C48
	bl GF_AssertFail
_02002C48:
	ldr r0, _02002C5C ; =0x02101D48
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023330
	pop {r4, pc}
	; .align 2, 0
_02002C5C: .word 0x02101D48
	thumb_func_end sub_02002C28

	thumb_func_start sub_02002C60
sub_02002C60: ; 0x02002C60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02002C6C
	bl GF_AssertFail
_02002C6C:
	ldr r0, _02002CF4 ; =0x02101D48
	lsl r6, r4, #2
	ldr r7, [r0, #0]
	add r0, r7, r6
	add r0, #0x84
	ldr r0, [r0, #0]
	mov ip, r0
	cmp r0, #0
	beq _02002CD0
	ldr r2, _02002CF8 ; =0x020E4CD4
	mov r1, #0
	ldrh r0, [r2, r6]
	add r3, r7, #0
_02002C86:
	cmp r1, r4
	beq _02002CA6
	ldrh r5, [r2]
	cmp r5, r0
	bne _02002CA6
	add r5, r3, #0
	add r5, #0x94
	ldr r5, [r5, #0]
	cmp r5, #0
	beq _02002CA6
	lsl r0, r1, #2
	add r2, r7, r0
	add r2, #0x84
	mov r0, ip
	str r0, [r2, #0]
	b _02002CB0
_02002CA6:
	add r1, r1, #1
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #4
	blo _02002C86
_02002CB0:
	cmp r1, #4
	bne _02002CD0
	ldr r0, _02002CF4 ; =0x02101D48
	lsl r5, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r5
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02002CF4 ; =0x02101D48
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r5
	add r0, #0x84
	str r1, [r0, #0]
_02002CD0:
	ldr r0, _02002CF4 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r6
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02002CF0
	bl sub_02023318
	ldr r0, _02002CF4 ; =0x02101D48
	mov r2, #0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	add r0, #0x94
	str r2, [r0, #0]
_02002CF0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02002CF4: .word 0x02101D48
_02002CF8: .word 0x020E4CD4
	thumb_func_end sub_02002C60

	thumb_func_start sub_02002CFC
sub_02002CFC: ; 0x02002CFC
	push {r3, lr}
	ldr r2, _02002D14 ; =0x02101D48
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r2, r0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020234A0
	ldr r0, _02002D14 ; =0x02101D48
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02002D14: .word 0x02101D48
	thumb_func_end sub_02002CFC

	thumb_func_start sub_02002D18
sub_02002D18: ; 0x02002D18
	push {r4, lr}
	add r3, r1, #0
	add r3, #0x20
	ldrb r2, [r3, #1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _02002D40
	ldrb r2, [r3]
	mov r4, #0xf
	lsl r0, r0, #0x18
	bic r2, r4
	lsr r4, r0, #0x18
	mov r0, #0xf
	and r0, r4
	orr r0, r2
	strb r0, [r3]
	ldrb r2, [r3, #1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r3, #1]
_02002D40:
	add r0, r1, #0
	bl sub_02002328
	pop {r4, pc}
	thumb_func_end sub_02002D18

	thumb_func_start sub_02002D48
sub_02002D48: ; 0x02002D48
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002D78 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002D62
	bl GF_AssertFail
_02002D62:
	ldr r0, _02002D78 ; =0x02101D48
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023620
	pop {r4, r5, r6, pc}
	nop
_02002D78: .word 0x02101D48
	thumb_func_end sub_02002D48

	thumb_func_start sub_02002D7C
sub_02002D7C: ; 0x02002D7C
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002DB0 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002D96
	bl GF_AssertFail
_02002D96:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002DB0 ; =0x02101D48
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023620
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002DB0: .word 0x02101D48
	thumb_func_end sub_02002D7C

	thumb_func_start sub_02002DB4
sub_02002DB4: ; 0x02002DB4
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002DF4 ; =0x02101D48
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002DCE
	bl GF_AssertFail
_02002DCE:
	add r0, r5, #0
	bl sub_020237E8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02023F10
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002DF4 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0202366C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002DF4: .word 0x02101D48
	thumb_func_end sub_02002DB4

	thumb_func_start sub_02002DF8
sub_02002DF8: ; 0x02002DF8
	mov r2, #0
	cmp r1, #7
	bhi _02002E58
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02002E0A: ; jump table
	.short _02002E1A - _02002E0A - 2 ; case 0
	.short _02002E22 - _02002E0A - 2 ; case 1
	.short _02002E2A - _02002E0A - 2 ; case 2
	.short _02002E32 - _02002E0A - 2 ; case 3
	.short _02002E3A - _02002E0A - 2 ; case 4
	.short _02002E42 - _02002E0A - 2 ; case 5
	.short _02002E4A - _02002E0A - 2 ; case 6
	.short _02002E52 - _02002E0A - 2 ; case 7
_02002E1A:
	lsl r1, r0, #3
	ldr r0, _02002E5C ; =0x020E4CE4
	ldrb r2, [r0, r1]
	b _02002E58
_02002E22:
	lsl r1, r0, #3
	ldr r0, _02002E60 ; =0x020E4CE5
	ldrb r2, [r0, r1]
	b _02002E58
_02002E2A:
	lsl r1, r0, #3
	ldr r0, _02002E64 ; =0x020E4CE6
	ldrb r2, [r0, r1]
	b _02002E58
_02002E32:
	lsl r1, r0, #3
	ldr r0, _02002E68 ; =0x020E4CE7
	ldrb r2, [r0, r1]
	b _02002E58
_02002E3A:
	lsl r1, r0, #3
	ldr r0, _02002E6C ; =0x020E4CE8
	ldrb r2, [r0, r1]
	b _02002E58
_02002E42:
	lsl r1, r0, #3
	ldr r0, _02002E70 ; =0x020E4CE9
	ldrb r2, [r0, r1]
	b _02002E58
_02002E4A:
	lsl r1, r0, #3
	ldr r0, _02002E74 ; =0x020E4CEA
	ldrb r2, [r0, r1]
	b _02002E58
_02002E52:
	lsl r1, r0, #3
	ldr r0, _02002E78 ; =0x020E4CEB
	ldrb r2, [r0, r1]
_02002E58:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02002E5C: .word 0x020E4CE4
_02002E60: .word 0x020E4CE5
_02002E64: .word 0x020E4CE6
_02002E68: .word 0x020E4CE7
_02002E6C: .word 0x020E4CE8
_02002E70: .word 0x020E4CE9
_02002E74: .word 0x020E4CEA
_02002E78: .word 0x020E4CEB
	thumb_func_end sub_02002DF8

	thumb_func_start sub_02002E7C
sub_02002E7C: ; 0x02002E7C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0xe
	mov r1, #6
	add r2, r4, #0
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002E7C

	thumb_func_start sub_02002E98
sub_02002E98: ; 0x02002E98
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0xe
	mov r1, #7
	add r2, r4, #0
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002E98

	thumb_func_start sub_02002EB4
sub_02002EB4: ; 0x02002EB4
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002EE8 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002ECE
	bl GF_AssertFail
_02002ECE:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002EE8 ; =0x02101D48
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020236D0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002EE8: .word 0x02101D48
	thumb_func_end sub_02002EB4

	thumb_func_start sub_02002EEC
sub_02002EEC: ; 0x02002EEC
	push {r4, lr}
	add r4, r3, #0
	bl sub_02002D7C
	cmp r0, r4
	bhs _02002EFE
	sub r0, r4, r0
	lsr r0, r0, #1
	pop {r4, pc}
_02002EFE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02002EEC

	thumb_func_start sub_02002F04
sub_02002F04: ; 0x02002F04
	push {r3, r4, r5, lr}
	lsl r4, r0, #2
	ldr r0, _02002F34 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002F1C
	bl GF_AssertFail
_02002F1C:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002F34 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023738
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02002F34: .word 0x02101D48
	thumb_func_end sub_02002F04

	.rodata


	.global Unk_020E4CD4
Unk_020E4CD4: ; 0x020E4CD4
	.incbin "incbin/arm9_rodata.bin", 0x94, 0xA4 - 0x94

	.global Unk_020E4CE4
Unk_020E4CE4: ; 0x020E4CE4
	.incbin "incbin/arm9_rodata.bin", 0xA4, 0x28



	.bss


	.global Unk_02101D48
Unk_02101D48: ; 0x02101D48
	.space 0x4

	.global Unk_02101D4C
Unk_02101D4C: ; 0x02101D4C
	.space 0xA4

