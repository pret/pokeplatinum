	.include "macros/function.inc"
	.include "include/unk_02054D00.inc"

	

	.text


	thumb_func_start sub_02054D00
sub_02054D00: ; 0x02054D00
	cmp r0, r1
	blt _02054D08
	sub r0, r0, r1
	bx lr
_02054D08:
	sub r0, r1, r0
	bx lr
	thumb_func_end sub_02054D00

	thumb_func_start sub_02054D0C
sub_02054D0C: ; 0x02054D0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	add r1, sp, #0x2c
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #8]
	bl ov5_021EA6BC
	ldr r0, [sp, #0x30]
	sub r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	sub r0, r6, r0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	str r4, [sp, #0x3c]
	sub r0, r7, r0
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x2c]
	bl sub_02039E10
	str r0, [sp, #0x24]
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r5, #0
	sub r1, r6, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	add r2, #0xa0
	sub r1, r7, r0
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #0]
	add r3, sp, #0x28
	bl ov5_021EF314
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	lsr r0, r0, #5
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsr r0, r0, #5
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	sub r1, r6, r0
	ldr r0, [sp, #0x2c]
	sub r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x10
	sub r1, r7, r0
	ldr r0, [sp, #0x34]
	sub r0, r1, r0
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x40]
	add r2, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	bl ov5_021E935C
	ldr r2, [sp, #0x10]
	add r1, r0, #0
	add r3, r2, #0
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #8]
	mul r3, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r3
	bl ov5_021E9390
	add r1, r0, #0
	cmp r1, #3
	bls _02054DCE
	add r6, r4, #0
	b _02054DEA
_02054DCE:
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	bl ov5_021E9610
	add r3, r0, #0
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x40]
	bl ov5_021EED9C
	add r6, r0, #0
_02054DEA:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02054E34
	add r0, sp, #0x28
	add r5, #0xa0
	ldrb r0, [r0]
	ldr r1, [r5, #0]
	bl ov5_021EF35C
	add r5, r0, #0
	cmp r6, #0
	beq _02054E2E
	ldr r4, [sp, #0x3c]
	cmp r5, r4
	bgt _02054E0C
	mov r1, #1
	b _02054E40
_02054E0C:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02054D00
	add r4, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02054D00
	cmp r4, r0
	bgt _02054E28
	ldr r4, [sp, #0x3c]
	mov r1, #1
	b _02054E40
_02054E28:
	add r4, r5, #0
	mov r1, #2
	b _02054E40
_02054E2E:
	mov r1, #2
	add r4, r5, #0
	b _02054E40
_02054E34:
	cmp r6, #0
	beq _02054E3E
	mov r1, #1
	ldr r4, [sp, #0x3c]
	b _02054E40
_02054E3E:
	mov r1, #0
_02054E40:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _02054E48
	strb r1, [r0]
_02054E48:
	ldr r0, [sp, #0x30]
	add r0, r4, r0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02054D0C

	thumb_func_start sub_02054E50
sub_02054E50: ; 0x02054E50
	push {r3, lr}
	asr r1, r2, #0xf
	lsr r1, r1, #0x10
	add r1, r2, r1
	asr r2, r3, #0xf
	lsr r2, r2, #0x10
	add r2, r3, r2
	ldr r0, [r0, #0x28]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov5_021E9580
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _02054E7E
	cmp r0, #0
	beq _02054E78
	mov r1, #1
	b _02054E7A
_02054E78:
	mov r1, #0
_02054E7A:
	ldr r0, [sp, #8]
	strb r1, [r0]
_02054E7E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02054E50

	thumb_func_start sub_02054E84
sub_02054E84: ; 0x02054E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, [r0, #0x28]
	add r5, r1, #0
	add r0, r7, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov5_021EA6AC
	sub r0, r5, r0
	str r0, [sp, #4]
	add r0, r7, #0
	bl ov5_021EA6B4
	sub r0, r6, r0
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, sp, #8
	bl ov5_021E9580
	cmp r0, #0
	bne _02054EBE
	mov r0, #0xff
	strh r0, [r4]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02054EBE:
	add r1, sp, #8
	ldrb r1, [r1]
	add r0, r7, #0
	bl ov5_021E9624
	ldr r1, [sp, #4]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1b
	sub r2, r2, r3
	mov r1, #0x1b
	ror r2, r1
	add r2, r3, r2
	ldr r3, [sp]
	lsr r5, r3, #0x1f
	lsl r3, r3, #0x1b
	sub r3, r3, r5
	ror r3, r1
	add r1, r5, r3
	lsl r1, r1, #5
	add r1, r2, r1
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054E84

	thumb_func_start sub_02054EF4
sub_02054EF4: ; 0x02054EF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x2c]
	add r4, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	bl sub_02039E10
	asr r2, r4, #4
	asr r1, r5, #4
	lsr r2, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r4, r2
	add r1, r5, r1
	asr r2, r2, #5
	asr r1, r1, #5
	mul r0, r2
	add r0, r1, r0
	ldr r1, [r6, #0x58]
	bl sub_02054C0C
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r3, #0x1b
	ror r1, r3
	add r1, r2, r1
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1b
	sub r2, r2, r5
	ror r2, r3
	add r2, r5, r2
	lsl r2, r2, #5
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054EF4

	thumb_func_start sub_02054F44
sub_02054F44: ; 0x02054F44
	push {r3, lr}
	cmp r1, #0
	bne _02054F50
	ldr r1, _02054F60 ; =0x020EC3D0
	str r1, [r0, #0]
	pop {r3, pc}
_02054F50:
	cmp r1, #1
	bne _02054F5A
	ldr r1, _02054F64 ; =0x020EC3D8
	str r1, [r0, #0]
	pop {r3, pc}
_02054F5A:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
_02054F60: .word 0x020EC3D0
_02054F64: .word 0x020EC3D8
	thumb_func_end sub_02054F44

	thumb_func_start sub_02054F68
sub_02054F68: ; 0x02054F68
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x5c]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054F8E
	add r0, sp, #0
	ldrh r0, [r0]
	asr r0, r0, #0xf
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	beq _02054F90
_02054F8E:
	mov r0, #0
_02054F90:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02054F68

	thumb_func_start sub_02054F94
sub_02054F94: ; 0x02054F94
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x5c]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054FB4
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, pc}
_02054FB4:
	mov r0, #0xff
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054F94

	thumb_func_start sub_02054FBC
sub_02054FBC: ; 0x02054FBC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [r0, #0x5c]
	ldr r4, [r4, #0]
	blx r4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02054FBC

	thumb_func_start sub_02054FD0
sub_02054FD0: ; 0x02054FD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [sp, #0x10]
	mov r5, #2
	str r1, [sp]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x10
	lsl r5, r5, #0xe
	lsl r3, r3, #0x10
	add r2, r2, r5
	add r3, r3, r5
	bl sub_02054FBC
	ldr r1, [r4, #4]
	cmp r0, r1
	bge _02054FF8
	mov r4, #0
	add r2, r1, #0
	mvn r4, r4
	b _02055008
_02054FF8:
	cmp r0, r1
	ble _02055004
	add r2, r0, #0
	add r0, r1, #0
	mov r4, #1
	b _02055008
_02055004:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02055008:
	sub r1, r2, r0
	mov r0, #5
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _0205501C
	cmp r4, #0
	bne _0205501E
	bl sub_02022974
	b _0205501E
_0205501C:
	mov r4, #0
_0205501E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054FD0

	thumb_func_start sub_02055024
sub_02055024: ; 0x02055024
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	str r6, [sp]
	bl sub_02054FD0
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _0205503E
	strb r0, [r1]
_0205503E:
	cmp r0, #0
	bne _02055076
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F68
	add r6, r0, #0
	bne _02055070
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02055070
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F94
	bl sub_0205DC20
	cmp r0, #0
	beq _02055070
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02055070:
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02055076:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02055024

	thumb_func_start sub_0205507C
sub_0205507C: ; 0x0205507C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	add r4, r2, #0
	add r7, r3, #0
	str r6, [sp]
	bl sub_02054FD0
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _02055098
	strb r0, [r1]
_02055098:
	cmp r0, #0
	bne _020550EE
	add r0, sp, #0xc
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	ldr r3, [r3, #4]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02068390
	cmp r0, #0
	bne _020550E8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F68
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020550E2
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #2
	bne _020550E2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02054F94
	bl sub_0205DC20
	cmp r0, #0
	beq _020550E2
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020550E2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020550E8:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020550EE:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205507C

	thumb_func_start sub_020550F4
sub_020550F4: ; 0x020550F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, r2
	ldr r0, [sp, #0x18]
	add r4, r1, r3
	add r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	add r7, r4, r0
	cmp r6, #0
	blt _02055118
	cmp r4, #0
	blt _02055118
	ldr r0, [sp]
	cmp r0, #0
	blt _02055118
	cmp r7, #0
	bge _0205511C
_02055118:
	bl sub_02022974
_0205511C:
	lsl r0, r6, #0x10
	str r0, [r5, #0]
	lsl r0, r4, #0x10
	str r0, [r5, #4]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	str r0, [r5, #8]
	lsl r0, r7, #0x10
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020550F4

	thumb_func_start sub_02055130
sub_02055130: ; 0x02055130
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	add r1, r3, #0
	bl ov5_021E1894
	ldr r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, [sp, #8]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #8]
	add r2, r2, r1
	str r2, [sp, #8]
	ldr r1, [r5, #0]
	cmp r1, r0
	bgt _02055170
	ldr r1, [r5, #8]
	cmp r0, r1
	bgt _02055170
	ldr r0, [r5, #4]
	cmp r0, r2
	bgt _02055170
	ldr r0, [r5, #0xc]
	cmp r2, r0
	bgt _02055170
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02055170:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055130

	thumb_func_start sub_02055178
sub_02055178: ; 0x02055178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055188:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020551F2
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0x10
	bl sub_020553A4
	mov r5, #0
_020551BA:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ov5_021E18C4
	add r1, r7, #0
	add r2, sp, #0x10
	add r4, r0, #0
	bl sub_02055130
	cmp r0, #0
	beq _020551E8
	add r0, r4, #0
	bl ov5_021E18B8
	cmp r0, r6
	bne _020551E8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020551E2
	str r4, [r0, #0]
_020551E2:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020551E8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x20
	blo _020551BA
_020551F2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055188
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055178

	thumb_func_start sub_02055208
sub_02055208: ; 0x02055208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055218:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0205529E
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	add r6, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_02039E10
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0x10
	bl sub_020553A4
	mov r6, #0
_0205524A:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl ov5_021E18C4
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	add r7, r0, #0
	bl sub_02055130
	cmp r0, #0
	beq _02055294
	add r0, r7, #0
	bl ov5_021E18B8
	mov r1, #0
	cmp r4, #0
	bls _02055294
_0205526C:
	lsl r2, r1, #2
	ldr r2, [r5, r2]
	cmp r0, r2
	bne _0205528A
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0205527C
	str r7, [r1, #0]
_0205527C:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _02055284
	str r0, [r1, #0]
_02055284:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0205528A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	blo _0205526C
_02055294:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x20
	blo _0205524A
_0205529E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055218
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055208

	thumb_func_start sub_020552B4
sub_020552B4: ; 0x020552B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
_020552C2:
	ldr r1, [sp]
	add r0, r7, #0
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02055314
	mov r4, #0
_020552D6:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov5_021E18C4
	add r6, r0, #0
	bl ov5_021E18B8
	cmp r0, r5
	bne _0205530A
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020552F0
	str r6, [r0, #0]
_020552F0:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02055304
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, #0x28]
	bl ov5_021E9560
	ldr r1, [sp, #8]
	str r0, [r1, #0]
_02055304:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205530A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _020552D6
_02055314:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _020552C2
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020552B4

	thumb_func_start sub_02055324
sub_02055324: ; 0x02055324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02055334:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x28]
	add r2, sp, #0xc
	bl ov5_021E9340
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0205538E
	mov r6, #0
_02055348:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl ov5_021E18C4
	add r7, r0, #0
	bl ov5_021E18B8
	mov r1, #0
	cmp r4, #0
	bls _02055384
_0205535C:
	lsl r2, r1, #2
	ldr r2, [r5, r2]
	cmp r0, r2
	bne _0205537A
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0205536C
	str r7, [r1, #0]
_0205536C:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _02055374
	str r0, [r1, #0]
_02055374:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205537A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	blo _0205535C
_02055384:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x20
	blo _02055348
_0205538E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02055334
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02055324

	thumb_func_start sub_020553A4
sub_020553A4: ; 0x020553A4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #1
	lsl r2, r2, #0x14
	str r2, [r4, #0]
	add r5, r0, #0
	add r6, r1, #0
	str r2, [r4, #8]
	bl _s32_div_f
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r0, [r4, #0]
	lsl r1, r1, #0x15
	add r0, r0, r1
	str r0, [r4, #0]
	add r0, r5, #0
	add r1, r6, #0
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r1, [r4, #8]
	lsl r0, r0, #0x15
	add r0, r1, r0
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020553A4

	.rodata


	.global Unk_020EC3D0
Unk_020EC3D0: ; 0x020EC3D0
	.incbin "incbin/arm9_rodata.bin", 0x7790, 0x7798 - 0x7790

	.global Unk_020EC3D8
Unk_020EC3D8: ; 0x020EC3D8
	.incbin "incbin/arm9_rodata.bin", 0x7798, 0x8

