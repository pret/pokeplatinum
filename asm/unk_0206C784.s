	.include "macros/function.inc"
	.include "include/unk_0206C784.inc"

	

	.text


	thumb_func_start sub_0206C784
sub_0206C784: ; 0x0206C784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x80
	add r7, r2, #0
	str r3, [sp, #0xc]
	bl sub_02018184
	add r4, r0, #0
	strb r6, [r4, #1]
	strb r7, [r4, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x40]
	add r2, #0x34
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x44]
	mov r7, #9
	str r0, [r4, #0x20]
	ldr r3, [r5, #0x44]
_0206C7B2:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0206C7B2
	mov r7, #0
	sub r0, r7, #1
	str r0, [r4, #0x10]
	strb r7, [r4, #5]
	mov r0, #0x40
	add r1, r7, #0
	add r2, r7, #0
	str r7, [r4, #8]
	bl sub_02004550
	cmp r6, #3
	bne _0206C80C
	mov r0, #0x22
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	sub r3, r2, #4
	bl sub_020550F4
	mov r0, #0x19
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0xe
	lsl r0, r0, #0x10
	mov r7, #1
	str r0, [r4, #0x10]
	b _0206C842
_0206C80C:
	cmp r6, #2
	bne _0206C842
	ldr r0, _0206C8C8 ; =0x0000021A
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r0, sp, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	sub r2, r2, #5
	mov r3, #2
	bl sub_020550F4
	mov r0, #3
	lsl r0, r0, #0x12
	mov r7, #1
	str r0, [sp, #0x10]
_0206C842:
	cmp r7, #0
	beq _0206C8B6
	add r3, r4, #0
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x18
	add r3, #0x30
	bl sub_02055178
	cmp r0, #0
	beq _0206C8A8
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x14]
	strb r0, [r4, #3]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x3c]
	add r1, #0x24
	bl sub_0205EAEC
	ldr r0, [r5, #0x24]
	bl sub_020206B0
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0x24
	bl sub_02020690
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0206C8A2
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_0206CBA0
	ldr r0, _0206C8CC ; =0x000006DD
	bl sub_02005748
	b _0206C8BA
_0206C8A2:
	mov r0, #0
	strb r0, [r4]
	b _0206C8BA
_0206C8A8:
	bl sub_02022974
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206C8B6:
	mov r0, #2
	strb r0, [r4]
_0206C8BA:
	ldr r0, [r5, #0x10]
	ldr r1, _0206C8D0 ; =sub_0206C964
	add r2, r4, #0
	bl sub_02050944
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C8C8: .word 0x0000021A
_0206C8CC: .word 0x000006DD
_0206C8D0: .word sub_0206C964
	thumb_func_end sub_0206C784

	thumb_func_start sub_0206C8D4
sub_0206C8D4: ; 0x0206C8D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #8
	add r6, r2, #0
	bl sub_02018184
	add r2, r0, #0
	str r6, [r2, #4]
	strb r4, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _0206C8F4 ; =sub_0206C8F8
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206C8F4: .word sub_0206C8F8
	thumb_func_end sub_0206C8D4

	thumb_func_start sub_0206C8F8
sub_0206C8F8: ; 0x0206C8F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0206C922
	cmp r0, #1
	beq _0206C942
	cmp r0, #2
	beq _0206C950
	b _0206C95A
_0206C922:
	ldrb r0, [r4]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0206C938
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203E2D4
	b _0206C95A
_0206C938:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203E2AC
	b _0206C95A
_0206C942:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0206C95A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C950:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206C95A:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C8F8

	thumb_func_start sub_0206C964
sub_0206C964: ; 0x0206C964
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #7
	bhi _0206C9A8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0206C98A: ; jump table
	.short _0206C99A - _0206C98A - 2 ; case 0
	.short _0206C9B0 - _0206C98A - 2 ; case 1
	.short _0206CA12 - _0206C98A - 2 ; case 2
	.short _0206CA38 - _0206C98A - 2 ; case 3
	.short _0206CA78 - _0206C98A - 2 ; case 4
	.short _0206CA8A - _0206C98A - 2 ; case 5
	.short _0206CAA6 - _0206C98A - 2 ; case 6
	.short _0206CABA - _0206C98A - 2 ; case 7
_0206C99A:
	bl sub_0206CC64
	add r0, r4, #0
	bl sub_0206CAD0
	cmp r0, #0
	bne _0206C9AA
_0206C9A8:
	b _0206CAC4
_0206C9AA:
	mov r0, #2
	strb r0, [r4]
	b _0206CAC4
_0206C9B0:
	bl sub_0206CC64
	add r0, r4, #0
	bl sub_0206CAD0
	add r6, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0206C9F0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	add r2, r4, #2
	bl sub_0206CB8C
	cmp r0, #0
	beq _0206CAC4
	ldr r0, [r5, #0x54]
	mov r1, #1
	mov r2, #0
	bl ov5_021D4250
	ldr r0, [r5, #0x54]
	mov r1, #2
	mov r2, #0
	bl ov5_021D4250
	ldr r0, _0206CACC ; =0x000006DE
	bl sub_02005748
	b _0206CAC4
_0206C9F0:
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _0206CAC4
	ldr r0, [r5, #0x54]
	mov r1, #2
	bl ov5_021D42F0
	cmp r0, #0
	beq _0206CAC4
	cmp r6, #0
	beq _0206CAC4
	mov r0, #2
	strb r0, [r4]
	b _0206CAC4
_0206CA12:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	mov r1, #6
	bl sub_0200564C
	mov r0, #3
	strb r0, [r4]
	b _0206CAC4
_0206CA38:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0206CA48
	bl sub_02005684
	cmp r0, #0
	beq _0206CA4E
_0206CA48:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CA4E:
	mov r0, #0
	ldr r1, [r4, #0x10]
	mvn r0, r0
	cmp r1, r0
	beq _0206CA6C
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #1
	bl ov5_021D42B0
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	mov r2, #2
	bl ov5_021D42B0
_0206CA6C:
	add r0, r6, #0
	bl sub_02055820
	mov r0, #4
	strb r0, [r4]
	b _0206CAC4
_0206CA78:
	ldrb r1, [r4, #1]
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x34
	bl sub_0206C8D4
	mov r0, #5
	strb r0, [r4]
	b _0206CAC4
_0206CA8A:
	ldr r0, [r4, #0x20]
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r4, #4]
	mvn r2, r2
	str r0, [sp, #4]
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	add r0, r6, #0
	bl sub_020539E8
	mov r0, #6
	strb r0, [r4]
	b _0206CAC4
_0206CAA6:
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_020559CC
	mov r0, #7
	strb r0, [r4]
	b _0206CAC4
_0206CABA:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0206CAC4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0206CACC: .word 0x000006DE
	thumb_func_end sub_0206C964

	thumb_func_start sub_0206CAD0
sub_0206CAD0: ; 0x0206CAD0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x30]
	add r0, sp, #0
	bl ov5_021E1894
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0206CB40
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206CAF0: ; jump table
	.short _0206CAF8 - _0206CAF0 - 2 ; case 0
	.short _0206CB2E - _0206CAF0 - 2 ; case 1
	.short _0206CB1C - _0206CAF0 - 2 ; case 2
	.short _0206CB0A - _0206CAF0 - 2 ; case 3
_0206CAF8:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	b _0206CB4A
_0206CB0A:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [r4, #0x2c]
	b _0206CB4A
_0206CB1C:
	ldr r1, [sp]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x24]
	b _0206CB4A
_0206CB2E:
	ldr r1, [sp]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x7c]
	sub r0, r1, r0
	str r0, [r4, #0x24]
	b _0206CB4A
_0206CB40:
	bl sub_02022974
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0206CB4A:
	mov r0, #1
	ldr r1, [r4, #0x7c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _0206CB6A
	ldrb r1, [r4, #3]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrb r1, [r4, #3]
	cmp r1, #0x18
	blo _0206CB6A
	ldr r1, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r4, #0x7c]
	mov r0, #0
	strb r0, [r4, #3]
_0206CB6A:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl ov5_021E18A4
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x7c]
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bgt _0206CB86
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0206CB86:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0206CAD0

	thumb_func_start sub_0206CB8C
sub_0206CB8C: ; 0x0206CB8C
	ldr r3, [r0, #0]
	ldr r0, [r1, #0]
	cmp r3, r0
	bgt _0206CB9A
	mov r0, #1
	strb r0, [r2]
	bx lr
_0206CB9A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206CB8C

	thumb_func_start sub_0206CBA0
sub_0206CBA0: ; 0x0206CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, _0206CC60 ; =0x020EFD24
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	str r1, [sp, #0x30]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
_0206CBBA:
	lsl r0, r6, #2
	add r1, sp, #0x2c
	ldr r4, [r1, r0]
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl sub_020552B4
	cmp r0, #0
	beq _0206CC4C
	ldr r1, [r5, #0x30]
	add r0, r4, #0
	bl ov5_021EF9E8
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _0206CC04
	add r2, r0, #0
	add r2, #8
	beq _0206CBF8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0206CBF8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0206CBFA
_0206CBF8:
	mov r1, #0
_0206CBFA:
	cmp r1, #0
	beq _0206CC04
	ldr r1, [r1, #0]
	add r7, r0, r1
	b _0206CC06
_0206CC04:
	mov r7, #0
_0206CC06:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x20
	mov r3, #0
	bl sub_020552B4
	cmp r0, #0
	bne _0206CC1A
	bl sub_02022974
_0206CC1A:
	ldr r0, [sp, #0x20]
	bl ov5_021E18BC
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x30]
	bl ov5_021EFAA0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r3, sp, #0x24
	ldr r2, [r3, r2]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	add r3, r4, #0
	bl ov5_021D41C8
	b _0206CC50
_0206CC4C:
	bl sub_02022974
_0206CC50:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _0206CBBA
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0206CC60: .word 0x020EFD24
	thumb_func_end sub_0206CBA0

	thumb_func_start sub_0206CC64
sub_0206CC64: ; 0x0206CC64
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _0206CC8C
	cmp r1, #3
	bne _0206CCA8
	mov r2, #2
	ldr r1, [r0, #8]
	lsl r2, r2, #0x10
	cmp r1, r2
	bge _0206CCAC
	ldr r3, [r0, #0x24]
	lsr r1, r2, #5
	add r1, r3, r1
	str r1, [r0, #0x24]
	ldr r3, [r0, #8]
	lsr r1, r2, #5
	add r1, r3, r1
	str r1, [r0, #8]
	pop {r3, pc}
_0206CC8C:
	mov r1, #3
	ldr r2, [r0, #8]
	lsl r1, r1, #0x10
	cmp r2, r1
	bge _0206CCAC
	mov r1, #2
	ldr r2, [r0, #0x2c]
	lsl r1, r1, #0xa
	add r2, r2, r1
	str r2, [r0, #0x2c]
	ldr r2, [r0, #8]
	add r1, r2, r1
	str r1, [r0, #8]
	pop {r3, pc}
_0206CCA8:
	bl sub_02022974
_0206CCAC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206CC64

	.rodata


	.global Unk_020EFD24
Unk_020EFD24: ; 0x020EFD24
	.incbin "incbin/arm9_rodata.bin", 0xB0E4, 0xB0EC - 0xB0E4

	.global Unk_020EFD2C
Unk_020EFD2C: ; 0x020EFD2C
	.incbin "incbin/arm9_rodata.bin", 0xB0EC, 0x8

