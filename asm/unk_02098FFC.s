	.include "macros/function.inc"
	.include "include/unk_02098FFC.inc"

	

	.text


	thumb_func_start sub_02098FFC
sub_02098FFC: ; 0x02098FFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x59
	lsl r1, r1, #2
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r2, #0x59
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	str r6, [r4, #0]
	cmp r5, #0x10
	bls _02099026
	mov r0, #0x10
	strh r0, [r4, #0xa]
	b _02099028
_02099026:
	strh r7, [r4, #0xa]
_02099028:
	strh r5, [r4, #0xc]
	ldr r0, [sp]
	strh r0, [r4, #0xe]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_02099058
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02098FFC

	thumb_func_start sub_0209903C
sub_0209903C: ; 0x0209903C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02099118
	mov r2, #0x59
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209903C

	thumb_func_start sub_02099058
sub_02099058: ; 0x02099058
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _02099114 ; =0x020F68A0
	str r0, [sp]
	ldrb r2, [r1]
	add r0, sp, #8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [sp]
	ldrh r0, [r0, #0xc]
	ldr r2, [r2, #0]
	add r1, #0x14
	bl sub_020095C4
	ldr r1, [sp]
	mov r6, #0x15
	str r0, [r1, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #0xa]
	add r0, sp, #8
	ldr r5, [sp]
	strb r1, [r0, #1]
	mov r0, #0
	str r0, [sp, #4]
	add r7, sp, #8
	add r4, r0, #0
	lsl r6, r6, #4
_0209909C:
	ldr r2, [sp]
	ldrb r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0]
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [sp]
	ldrb r0, [r7]
	ldr r1, [r1, #0]
	bl sub_02009CFC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _020990DE
	add r2, r1, #0
_020990CE:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _020990CE
_020990DE:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #4
	blo _0209909C
	ldr r0, [sp]
	bl sub_020993A8
	ldr r0, [sp]
	mov r1, #4
	ldr r0, [r0, #0]
	bl sub_02018144
	mov r2, #0x16
	ldr r1, [sp]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02099114: .word 0x020F68A0
	thumb_func_end sub_02099058

	thumb_func_start sub_02099118
sub_02099118: ; 0x02099118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_02021964
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A508
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A700
	mov r7, #0x15
	lsl r7, r7, #4
	add r6, r7, #0
	mov r4, #0
	sub r6, #0x10
_0209914A:
	ldr r0, [r5, r7]
	bl sub_02009D20
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0209914A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02099118

	thumb_func_start sub_02099160
sub_02099160: ; 0x02099160
	ldr r3, _02099168 ; =sub_020219F8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_02099168: .word sub_020219F8
	thumb_func_end sub_02099160

	thumb_func_start sub_0209916C
sub_0209916C: ; 0x0209916C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r1, [sp, #0x2c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #0x30]
	bl sub_020994B8
	str r0, [sp, #0x3c]
	cmp r0, #0
	bge _02099190
	bl GF_AssertFail
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02099190:
	ldr r0, [r5, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [sp, #0x38]
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	strh r1, [r0]
	ldr r0, [sp, #0x94]
	cmp r0, #0
	bne _020991B2
	mov r6, #1
	b _020991B4
_020991B2:
	mov r6, #2
_020991B4:
	ldr r0, [sp, #0x3c]
	mov r1, #0x55
	lsl r1, r1, #2
	lsl r4, r0, #2
	ldr r0, [r5, r1]
	ldr r3, [sp, #0x2c]
	ldr r0, [r0, #0]
	sub r1, #0x10
	ldr r0, [r0, r4]
	mov r2, #0x58
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r3, r3, #3
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x34]
	bl sub_020099D4
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	ldr r0, [r0, r4]
	bl sub_0200A6B8
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	mov r1, #0x24
	bl sub_02018144
	ldr r1, [r4, #8]
	mov r3, #0xe
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	lsl r3, r3, #0xc
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [r4, #4]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x78
	ldrb r0, [r0, #0x14]
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x3c]
	ldr r0, [r4, #4]
	add r1, r3, #0
	add r2, r2, r3
	bl sub_020093B4
	ldr r0, [r5, #0x10]
	cmp r7, #0
	str r0, [sp, #0x40]
	ldr r0, [r4, #4]
	str r0, [sp, #0x44]
	beq _02099272
	lsl r0, r7, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02099280
_02099272:
	lsl r0, r7, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02099280:
	bl _f_ftoi
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0209929E
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _020992AC
_0209929E:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_020992AC:
	bl _f_ftoi
	str r0, [sp, #0x4c]
	add r0, sp, #0x78
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _020992CC
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _020992DA
_020992CC:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_020992DA:
	bl _f_ftoi
	str r0, [sp, #0x50]
	cmp r6, #2
	bne _020992EE
	mov r0, #3
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x4c]
_020992EE:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	mov r1, #0
	add r0, sp, #0x40
	strh r1, [r0, #0x20]
	add r0, sp, #0x78
	ldrb r0, [r0, #0x18]
	str r6, [sp, #0x68]
	str r0, [sp, #0x64]
	ldr r0, [r5, #0]
	str r0, [sp, #0x6c]
	add r0, sp, #0x40
	bl sub_02021AA0
	str r0, [r4, #0]
	cmp r0, #0
	beq _0209932E
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	bl sub_0200A760
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021E90
	b _02099332
_0209932E:
	bl GF_AssertFail
_02099332:
	ldr r0, [sp, #0x38]
	str r4, [r0, #4]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209916C

	thumb_func_start sub_0209933C
sub_0209933C: ; 0x0209933C
	push {r4, lr}
	sub sp, #8
	add r3, r2, #0
	mov r2, #0x55
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	ldrh r1, [r1]
	ldr r4, [r4, #0]
	sub r2, #0x10
	lsl r1, r1, #2
	ldr r4, [r4, r1]
	mov r1, #0
	str r1, [sp]
	ldr r1, [r0, #0]
	add r3, r3, #3
	str r1, [sp, #4]
	ldr r0, [r0, r2]
	add r1, r4, #0
	mov r2, #0x58
	bl sub_020099D4
	add r0, r4, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0209933C

	thumb_func_start sub_02099370
sub_02099370: ; 0x02099370
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	mov r1, #0x16
	ldrh r2, [r4]
	lsl r1, r1, #4
	ldr r3, [r5, r1]
	mov r0, #0
	lsl r2, r2, #2
	strb r0, [r3, r2]
	ldrh r2, [r4]
	ldr r3, [r5, r1]
	lsl r2, r2, #2
	add r2, r3, r2
	strh r0, [r2, #2]
	ldr r2, [r5, r1]
	ldrh r1, [r4]
	lsl r1, r1, #2
	add r1, r2, r1
	strb r0, [r1, #1]
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02099370

	thumb_func_start sub_020993A8
sub_020993A8: ; 0x020993A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x58
	bl sub_02006C24
	str r0, [sp, #0x10]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r1, #0xe
	lsl r1, r1, #0xc
	str r1, [sp]
	ldrh r1, [r5, #0xe]
	mov r2, #0
	sub r0, #0x10
	str r1, [sp, #4]
	ldr r1, [r5, #0]
	add r3, r2, #0
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl sub_02009A4C
	ldr r1, [r4, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020993EA
	bl GF_AssertFail
_020993EA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0209940E
	cmp r0, #1
	beq _020993FA
	cmp r0, #2
	beq _02099404
	b _0209940E
_020993FA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	b _02099416
_02099404:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A450
	b _02099416
_0209940E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A328
_02099416:
	mov r4, #0
	add r6, r5, #0
_0209941A:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r2, r4, #1
	mov r3, #0
	bl sub_02009BC4
	ldr r1, [r7, #0]
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0209944E
	bl GF_AssertFail
_0209944E:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #2
	blt _0209941A
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	ldrh r0, [r5, #0xa]
	mov r7, #0
	cmp r0, #0
	ble _020994AC
	add r4, r7, #0
_02099466:
	mov r0, #0xe
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp]
	ldrh r0, [r5, #0xe]
	ldr r1, [sp, #0x10]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r3, #0
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009B04
	ldr r1, [r6, #0]
	str r0, [r1, r4]
	ldr r0, [r6, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0209949A
	bl GF_AssertFail
_0209949A:
	ldr r0, [r6, #0]
	ldr r0, [r0, r4]
	bl sub_0200A5C8
	ldrh r0, [r5, #0xa]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r0
	blt _02099466
_020994AC:
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020993A8

	thumb_func_start sub_020994B8
sub_020994B8: ; 0x020994B8
	push {r3, r4, r5, r6}
	ldrh r5, [r0, #0xa]
	mov r3, #0
	cmp r5, #0
	bls _020994F6
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r4, [r0, r2]
_020994C8:
	lsl r2, r3, #2
	ldrb r6, [r4, r2]
	cmp r6, #0
	bne _020994EC
	add r4, r4, r2
	strh r3, [r4, #2]
	mov r4, #0x16
	lsl r4, r4, #4
	ldr r5, [r0, r4]
	add r5, r5, r2
	strb r1, [r5, #1]
	ldr r0, [r0, r4]
	mov r1, #1
	strb r1, [r0, r2]
	lsl r0, r3, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
_020994EC:
	add r2, r3, #1
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	cmp r3, r5
	blo _020994C8
_020994F6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020994B8

	.rodata


	.global Unk_020F68A0
Unk_020F68A0: ; 0x020F68A0
	.incbin "incbin/arm9_rodata.bin", 0x11C60, 0x4

