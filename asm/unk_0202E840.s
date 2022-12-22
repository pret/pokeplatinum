	.include "macros/function.inc"
	.include "include/unk_0202E840.inc"

	

	.text


	thumb_func_start sub_0202E840
sub_0202E840: ; 0x0202E840
	lsl r1, r0, #1
	ldr r0, _0202E848 ; =0x020E5CD0
	ldrb r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202E848: .word 0x020E5CD0
	thumb_func_end sub_0202E840

	thumb_func_start sub_0202E84C
sub_0202E84C: ; 0x0202E84C
	lsl r1, r0, #1
	ldr r0, _0202E854 ; =0x020E5CD1
	ldrb r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202E854: .word 0x020E5CD1
	thumb_func_end sub_0202E84C

	thumb_func_start sub_0202E858
sub_0202E858: ; 0x0202E858
	push {r3, lr}
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	add r0, #8
	mov r1, #8
	bl sub_02002294
	mov r0, #0x1c
	bl sub_02025C84
	pop {r3, pc}
	thumb_func_end sub_0202E858

	thumb_func_start sub_0202E870
sub_0202E870: ; 0x0202E870
	push {r3, lr}
	add r0, #8
	bl sub_020021F0
	cmp r0, #0
	beq _0202E880
	mov r0, #1
	pop {r3, pc}
_0202E880:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202E870

	thumb_func_start sub_0202E884
sub_0202E884: ; 0x0202E884
	mov r0, #0xea
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E884

	thumb_func_start sub_0202E88C
sub_0202E88C: ; 0x0202E88C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0xea
	mov r1, #0
	lsl r2, r2, #4
	add r6, r0, #0
	bl MI_CpuFill8
	mov r7, #0
_0202E89C:
	mov r4, #0
	add r5, r6, #0
_0202E8A0:
	add r0, r5, #0
	bl sub_0202E858
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blt _0202E8A0
	add r7, r7, #1
	add r6, #0x90
	cmp r7, #0x1a
	blt _0202E89C
	mov r0, #0x1c
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202E88C

	thumb_func_start sub_0202E8C0
sub_0202E8C0: ; 0x0202E8C0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1c
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202E8C0

	thumb_func_start sub_0202E8D4
sub_0202E8D4: ; 0x0202E8D4
	push {r4, r5, r6, lr}
	cmp r2, #6
	blo _0202E8E2
	blo _0202E91A
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0202E8E2:
	mov r3, #0x90
	mul r3, r1
	add r3, r0, r3
	cmp r2, #5
	bge _0202E90C
	mov r0, #0x18
	mul r0, r2
	add r6, r3, r0
_0202E8F2:
	add r5, r6, #0
	add r5, #0x18
	add r4, r6, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	add r2, r2, #1
	add r6, #0x18
	stmia r4!, {r0, r1}
	cmp r2, #5
	blt _0202E8F2
_0202E90C:
	add r3, #0x78
	add r0, r3, #0
	bl sub_0202E858
	mov r0, #0x1c
	bl sub_02025C84
_0202E91A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E8D4

	thumb_func_start sub_0202E91C
sub_0202E91C: ; 0x0202E91C
	mov r0, #0x4e
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E91C

	thumb_func_start sub_0202E924
sub_0202E924: ; 0x0202E924
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203068C
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x34
	bl sub_02018184
	ldr r7, _0202E9F8 ; =0x020E5CD8
	str r0, [sp]
	mov r6, #0
	add r5, r0, #0
_0202E94A:
	cmp r6, #5
	beq _0202E958
	cmp r6, #0xa
	beq _0202E97C
	cmp r6, #0xb
	beq _0202E996
	b _0202E9C0
_0202E958:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0202CFB8
	str r0, [sp, #8]
	cmp r0, #0
	beq _0202E976
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0202CFB8
	ldr r1, [sp, #8]
	bl _u32_div_f
	str r0, [sp, #8]
_0202E976:
	ldr r0, [sp, #8]
	str r0, [r5, #0]
	b _0202E9E0
_0202E97C:
	add r0, r4, #0
	mov r1, #0x5c
	bl sub_0202CFB8
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x5d
	bl sub_0202CFB8
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r5, #0]
	b _0202E9E0
_0202E996:
	add r0, r4, #0
	mov r1, #0x5a
	bl sub_0202CFB8
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x5b
	bl sub_0202CFB8
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	beq _0202E9BC
	ldr r0, [sp]
	ldr r2, [r0, #0x28]
	mov r0, #0x64
	mul r0, r2
	bl _u32_div_f
	add r1, r0, #0
_0202E9BC:
	str r1, [r5, #0]
	b _0202E9E0
_0202E9C0:
	cmp r6, #0
	blt _0202E9D6
	cmp r6, #4
	bgt _0202E9D6
	ldr r0, [sp, #4]
	ldr r1, [r7, #0]
	mov r2, #0xff
	bl sub_02030698
	str r0, [r5, #0]
	b _0202E9E0
_0202E9D6:
	ldr r1, [r7, #0]
	add r0, r4, #0
	bl sub_0202CFB8
	str r0, [r5, #0]
_0202E9E0:
	add r6, r6, #1
	add r5, r5, #4
	add r7, r7, #4
	cmp r6, #0xd
	blt _0202E94A
	mov r0, #0x1c
	bl sub_02025C84
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0202E9F8: .word 0x020E5CD8
	thumb_func_end sub_0202E924

	thumb_func_start sub_0202E9FC
sub_0202E9FC: ; 0x0202E9FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	mov r1, #0x4e
	add r6, r0, #0
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018184
	mov r2, #0x4e
	mov r1, #0
	lsl r2, r2, #2
	str r0, [sp, #4]
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02025F04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202E924
	ldr r4, [sp, #4]
	str r0, [sp]
	mov r6, #0
	add r5, r0, #0
_0202EA48:
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [r4, #0]
	add r0, r7, #0
	add r1, #8
	mov r2, #8
	bl sub_02023DF0
	ldr r0, [r5, #0]
	add r6, r6, #1
	str r0, [r4, #4]
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #0xd
	blt _0202EA48
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0x1c
	bl sub_02025C84
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202E9FC

	thumb_func_start sub_0202EA80
sub_0202EA80: ; 0x0202EA80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202EA86:
	add r0, r5, #0
	bl sub_0202E858
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blt _0202EA86
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202EA80

	thumb_func_start sub_0202EA98
sub_0202EA98: ; 0x0202EA98
	push {r3, lr}
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	cmp r3, r2
	beq _0202EAA6
	mov r0, #0
	pop {r3, pc}
_0202EAA6:
	add r0, #8
	add r1, #8
	bl sub_0200220C
	cmp r0, #0
	bne _0202EAB6
	mov r0, #1
	pop {r3, pc}
_0202EAB6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202EA98

	thumb_func_start sub_0202EABC
sub_0202EABC: ; 0x0202EABC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0202EAE6
	add r5, r6, #0
_0202EACC:
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_0202EA98
	cmp r0, #0
	beq _0202EADC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202EADC:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0202EACC
_0202EAE6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202EABC

	thumb_func_start sub_0202EAEC
sub_0202EAEC: ; 0x0202EAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xe0
	add r4, r3, #0
	bl MI_CpuFill8
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0202EB7C
	mov r2, #0x90
	add r0, r4, #0
	mul r0, r2
	add r1, r6, #0
	add r0, r5, r0
	add r1, #0x50
	str r0, [sp, #8]
	bl MI_CpuCopy8
	add r1, sp, #0x10
	ldrb r3, [r1, #0x18]
	mov r0, #0
	cmp r3, #0
	ble _0202EB46
	mov r2, #0x18
	ldr r1, [sp, #0x24]
	mul r2, r4
_0202EB2C:
	ldr r5, [r6, #4]
	add r0, r0, #1
	add r4, r5, #0
	add r4, r4, #1
	str r4, [r6, #4]
	ldr r4, [r1, #0]
	lsl r5, r5, #2
	add r4, r4, r2
	add r5, r6, r5
	str r4, [r5, #0xc]
	add r1, r1, #4
	cmp r0, r3
	blt _0202EB2C
_0202EB46:
	add r4, r6, #0
	add r4, #0x50
	mov r7, #0
	add r5, r4, #0
_0202EB4E:
	add r0, r4, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EB70
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202EABC
	cmp r0, #0
	bne _0202EB70
	ldr r1, [r6, #0]
	add r0, r1, #1
	str r0, [r6, #0]
	lsl r0, r1, #2
	add r0, r6, r0
	str r4, [r0, #0x38]
_0202EB70:
	add r7, r7, #1
	add r4, #0x18
	add r5, #0x18
	cmp r7, #6
	blt _0202EB4E
	b _0202EC10
_0202EB7C:
	add r0, r4, #0
	add r0, #0xd
	mov r2, #0x90
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	add r1, r6, #0
	add r1, #0x50
	str r0, [sp, #8]
	bl MI_CpuCopy8
	add r0, sp, #0x10
	ldrb r2, [r0, #0x18]
	mov r3, #0
	cmp r2, #0
	ble _0202EBCA
	mov r1, #0x18
	ldr r0, [sp, #0x24]
	mul r1, r4
_0202EBA2:
	ldr r4, [r0, #0]
	ldr r5, [r1, r4]
	cmp r5, #0
	beq _0202EBC2
	ldr r4, [sp]
	cmp r4, r5
	bne _0202EBC2
	ldr r5, [r6, #4]
	add r4, r5, #0
	add r4, r4, #1
	str r4, [r6, #4]
	ldr r4, [r0, #0]
	lsl r5, r5, #2
	add r4, r4, r1
	add r5, r6, r5
	str r4, [r5, #0xc]
_0202EBC2:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r2
	blt _0202EBA2
_0202EBCA:
	add r4, r6, #0
	mov r0, #0
	add r4, #0x50
	str r0, [sp, #4]
	add r5, r6, #0
	add r7, r4, #0
_0202EBD6:
	add r0, r4, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EC00
	ldr r1, [r5, #0x50]
	ldr r0, [sp]
	cmp r0, r1
	bne _0202EC00
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202EABC
	cmp r0, #0
	bne _0202EC00
	ldr r1, [r6, #0]
	add r0, r1, #1
	str r0, [r6, #0]
	lsl r0, r1, #2
	add r0, r6, r0
	str r4, [r0, #0x38]
_0202EC00:
	ldr r0, [sp, #4]
	add r4, #0x18
	add r0, r0, #1
	add r5, #0x18
	add r7, #0x18
	str r0, [sp, #4]
	cmp r0, #6
	blt _0202EBD6
_0202EC10:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0]
	mov r2, #0
	add r0, r1, r0
	str r0, [r6, #8]
	ldr r0, [r6, #0]
	cmp r0, #0
	ble _0202EC38
	add r1, r6, #0
_0202EC22:
	ldr r3, [r6, #4]
	ldr r0, [r1, #0x38]
	add r3, r2, r3
	lsl r3, r3, #2
	add r3, r6, r3
	str r0, [r3, #0xc]
	ldr r0, [r6, #0]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, r0
	blt _0202EC22
_0202EC38:
	mov r0, #0
	mov ip, r0
	ldr r0, [r6, #8]
	sub r5, r0, #1
	cmp r5, #0
	ble _0202EC7C
	add r3, r6, #0
_0202EC46:
	mov r0, ip
	cmp r5, r0
	ble _0202EC6A
	lsl r0, r5, #2
	add r4, r6, r0
_0202EC50:
	ldr r2, [r4, #0xc]
	ldr r7, [r3, #0xc]
	ldr r0, [r2, #4]
	ldr r1, [r7, #4]
	cmp r1, r0
	bhs _0202EC60
	str r2, [r3, #0xc]
	str r7, [r4, #0xc]
_0202EC60:
	sub r5, r5, #1
	mov r0, ip
	sub r4, r4, #4
	cmp r5, r0
	bgt _0202EC50
_0202EC6A:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	ldr r0, [r6, #8]
	add r3, r3, #4
	sub r5, r0, #1
	mov r0, ip
	cmp r0, r5
	blt _0202EC46
_0202EC7C:
	ldr r0, [sp, #8]
	bl sub_0202EA80
	mov r3, #0
	add r2, r6, #0
	b _0202ECA2
_0202EC88:
	ldr r5, [r2, #0xc]
	ldr r4, [sp, #8]
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [sp, #8]
	add r2, r2, #4
	add r0, #0x18
	str r0, [sp, #8]
	add r3, r3, #1
_0202ECA2:
	cmp r3, #6
	bge _0202ECAC
	ldr r0, [r6, #8]
	cmp r3, r0
	blt _0202EC88
_0202ECAC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202EAEC

	thumb_func_start sub_0202ECB0
sub_0202ECB0: ; 0x0202ECB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x2c]
	mov r1, #0xe0
	str r2, [sp, #0x10]
	add r4, r3, #0
	bl sub_02018184
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	bl sub_0202EAEC
	cmp r5, #0
	beq _0202ED02
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	bl sub_0202EAEC
_0202ED02:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202ECB0

	thumb_func_start sub_0202ED0C
sub_0202ED0C: ; 0x0202ED0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	ldr r1, [sp, #0x38]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	str r1, [sp, #0x38]
	bl sub_0202E8C0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	mov r4, #0
	add r3, r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	bls _0202ED5C
_0202ED38:
	cmp r3, r6
	beq _0202ED52
	lsl r0, r3, #2
	ldr r2, [r7, r0]
	cmp r2, #0
	beq _0202ED52
	add r1, r4, #1
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsl r1, r0, #2
	add r0, sp, #0x10
	str r2, [r0, r1]
_0202ED52:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r5
	blo _0202ED38
_0202ED5C:
	cmp r4, #0
	beq _0202ED86
	mov r5, #0
	add r6, sp, #0x10
_0202ED64:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0202ECB0
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xd
	blo _0202ED64
	mov r0, #0x1c
	bl sub_02025C84
_0202ED86:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202ED0C

	thumb_func_start sub_0202ED8C
sub_0202ED8C: ; 0x0202ED8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02025E38
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0x4c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r7, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_0202E924
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0202E840
	str r0, [r7, #0]
	add r0, r5, #0
	bl sub_0202E84C
	ldr r1, [r7, #0]
	mov r6, #0
	cmp r1, #0
	ble _0202EE02
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r4, r7, #0
	add r5, r0, r1
_0202EDE4:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	bl sub_02025F04
	str r0, [r4, #0xc]
	ldr r0, [r7, #0]
	add r6, r6, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r6, r0
	blt _0202EDE4
_0202EE02:
	ldr r0, [sp, #8]
	bl sub_020181C4
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202ED8C

	thumb_func_start sub_0202EE10
sub_0202EE10: ; 0x0202EE10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	str r1, [sp]
	add r0, r7, #0
	mov r1, #0x4c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	mov r1, #0x90
	mul r1, r0
	mov r6, #0
	add r5, r5, r1
_0202EE34:
	add r0, r5, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EE80
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	ldr r0, [r5, #0]
	add r1, r4, r1
	str r0, [r1, #4]
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	ldr r0, [r5, #4]
	add r1, r4, r1
	str r0, [r1, #8]
	mov r0, #8
	add r1, r7, #0
	bl sub_02023790
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #0xc]
	ldr r1, [r4, #0]
	mov r0, #0xc
	mul r0, r1
	add r0, r4, r0
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r1, #8
	bl sub_02023D28
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0202EE80:
	add r6, r6, #1
	add r5, #0x18
	cmp r6, #6
	blt _0202EE34
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202EE10

	thumb_func_start sub_0202EE8C
sub_0202EE8C: ; 0x0202EE8C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0202EE94:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202EE9E
	bl sub_020237BC
_0202EE9E:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _0202EE94
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x4c
	bl MI_CpuFill8
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #0x1c
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202EE8C

	.rodata


	.global Unk_020E5CD0
Unk_020E5CD0: ; 0x020E5CD0
	.incbin "incbin/arm9_rodata.bin", 0x1090, 0x1098 - 0x1090

	.global Unk_020E5CD8
Unk_020E5CD8: ; 0x020E5CD8
	.incbin "incbin/arm9_rodata.bin", 0x1098, 0x34

