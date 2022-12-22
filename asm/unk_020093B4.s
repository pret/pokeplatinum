	.include "macros/function.inc"
	.include "include/unk_020093B4.inc"

	

	.text


	thumb_func_start sub_020093B4
sub_020093B4: ; 0x020093B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r6, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #0xc]
	cmp r0, #0
	bne _020093D2
	bl GF_AssertFail
_020093D2:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _020093DC
	bl GF_AssertFail
_020093DC:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _020093E6
	bl GF_AssertFail
_020093E6:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _020093F0
	bl GF_AssertFail
_020093F0:
	cmp r5, #0
	bne _020093F8
	bl GF_AssertFail
_020093F8:
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	bl sub_02009DC8
	add r7, r0, #0
	bne _02009408
	bl GF_AssertFail
_02009408:
	ldr r0, [sp, #0x48]
	ldr r1, [sp]
	bl sub_02009DC8
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _0200941A
	bl GF_AssertFail
_0200941A:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	bl sub_02009DC8
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0200942C
	bl GF_AssertFail
_0200942C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0200944A
	mov r2, #0
	ldr r1, [sp, #0x30]
	mvn r2, r2
	cmp r1, r2
	beq _0200944A
	bl sub_02009DC8
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0200944A
	bl GF_AssertFail
_0200944A:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02009472
	mov r2, #0
	ldr r1, [sp, #0x34]
	mvn r2, r2
	cmp r1, r2
	beq _02009460
	bl sub_02009DC8
	add r4, r0, #0
_02009460:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _02009472
	ldr r0, [sp, #0x58]
	bl sub_02009DC8
	str r0, [sp, #8]
_02009472:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02009492
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_0200A558
	add r6, r0, #0
	bne _02009488
	bl GF_AssertFail
_02009488:
	add r0, r7, #0
	bl sub_02009E1C
	str r0, [r5, #4]
	b _020094A4
_02009492:
	add r0, r7, #0
	bl sub_0200A534
	add r6, r0, #0
	bne _020094A0
	bl GF_AssertFail
_020094A0:
	mov r0, #0
	str r0, [r5, #4]
_020094A4:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl sub_0200A72C
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r6, [r5, #0]
	bl sub_02009E4C
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020094C4
	bl sub_02009E64
	b _020094C6
_020094C4:
	mov r0, #0
_020094C6:
	str r0, [r5, #0x10]
	cmp r4, #0
	beq _020094DC
	add r0, r4, #0
	bl sub_02009E7C
	str r0, [r5, #0x14]
	ldr r0, [sp, #8]
	bl sub_02009E94
	b _020094E0
_020094DC:
	mov r0, #0
	str r0, [r5, #0x14]
_020094E0:
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	add r5, #0x20
	strb r0, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020093B4

	thumb_func_start sub_020094F0
sub_020094F0: ; 0x020094F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200A5B4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020094F0

	thumb_func_start sub_02009508
sub_02009508: ; 0x02009508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r7, r1, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	mov r4, #0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r1, [r5, #0]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x2c]
	str r0, [sp, #0x54]
	sub r0, r4, #2
	str r3, [sp, #0x30]
	cmp r1, r0
	beq _0200953C
	add r2, r5, #0
	sub r0, r4, #2
_02009532:
	add r2, #0x20
	ldr r1, [r2, #0]
	add r4, r4, #1
	cmp r1, r0
	bne _02009532
_0200953C:
	add r0, r7, #0
	mov r1, #8
	bl sub_02018144
	mov r1, #0x24
	add r6, r0, #0
	add r0, r7, #0
	mul r1, r4
	bl sub_02018144
	str r0, [r6, #0]
	mov r7, #0
	str r4, [r6, #4]
	cmp r4, #0
	ble _020095A2
	add r4, r7, #0
_0200955C:
	ldr r0, [r5, #0xc]
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x28]
	ldr r0, [r6, #0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r0, r4
	bl sub_020093B4
	ldr r0, [r6, #4]
	add r7, r7, #1
	add r5, #0x20
	add r4, #0x24
	cmp r7, r0
	blt _0200955C
_020095A2:
	add r0, r6, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009508

	thumb_func_start sub_020095A8
sub_020095A8: ; 0x020095A8
	push {r4, lr}
	add r4, r0, #0
	bne _020095B2
	bl GF_AssertFail
_020095B2:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020095BC
	bl sub_020181C4
_020095BC:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_020095A8

	thumb_func_start sub_020095C4
sub_020095C4: ; 0x020095C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02009628 ; =0xFFFFF000
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0202309C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x98
	add r1, sp, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_0200A8B0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	mov r1, #3
	lsl r1, r1, #0x12
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #4]
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_0200A8B0
	add r0, sp, #0x10
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	bl sub_020218BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02009628: .word 0xFFFFF000
	thumb_func_end sub_020095C4

	thumb_func_start sub_0200962C
sub_0200962C: ; 0x0200962C
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0x98
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_020230E0
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0200962C

	thumb_func_start sub_0200964C
sub_0200964C: ; 0x0200964C
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_020230E0
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0200964C

	thumb_func_start sub_0200966C
sub_0200966C: ; 0x0200966C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x10
	beq _02009682
	ldr r2, _020096F4 ; =0x00100010
	cmp r1, r2
	beq _020096B2
	ldr r0, _020096F8 ; =0x00200010
	cmp r1, r0
	beq _020096C0
	b _020096EC
_02009682:
	bl GX_GetBankForOBJ
	cmp r0, #0x40
	beq _02009692
	bl GX_GetBankForOBJ
	cmp r0, #0x20
	bne _020096A2
_02009692:
	mov r0, #0x3e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096A2:
	mov r0, #0x7e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096B2:
	mov r0, #0xfe
	lsr r1, r2, #0xb
	lsl r0, r0, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096C0:
	bl GX_GetBankForOBJ
	cmp r0, #0x30
	beq _020096D0
	bl GX_GetBankForOBJ
	cmp r0, #0x50
	bne _020096DE
_020096D0:
	mov r1, #2
	ldr r0, _020096FC ; =0x00013E00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096DE:
	mov r1, #2
	ldr r0, _02009700 ; =0x0001FE00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096EC:
	bl GF_AssertFail
	pop {r4, pc}
	nop
_020096F4: .word 0x00100010
_020096F8: .word 0x00200010
_020096FC: .word 0x00013E00
_02009700: .word 0x0001FE00
	thumb_func_end sub_0200966C

	thumb_func_start sub_02009704
sub_02009704: ; 0x02009704
	ldr r3, _02009710 ; =sub_0201F890
	add r1, r0, #0
	mov r0, #3
	lsl r0, r0, #0xe
	bx r3
	nop
_02009710: .word sub_0201F890
	thumb_func_end sub_02009704