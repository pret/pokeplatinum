	.include "macros/function.inc"
	.include "include/unk_02071D40.inc"

	

	.text


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
	bl memset
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
	bl MI_CpuCopy8
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