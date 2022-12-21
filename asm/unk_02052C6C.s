	.include "macros/function.inc"
	.include "include/unk_02052C6C.inc"

	

	.text


	thumb_func_start sub_02052C6C
sub_02052C6C: ; 0x02052C6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202444C
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #1
	bne _02052C8A
	cmp r6, #0
	bne _02052C90
_02052C8A:
	add r0, r4, #0
	bl sub_0202DF94
_02052C90:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, sp, #4
	bl sub_020138A4
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #4
	bl sub_0202DFA8
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02024458
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02052C6C

	thumb_func_start sub_02052CBC
sub_02052CBC: ; 0x02052CBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #9
	bhi _02052D18
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02052CEA: ; jump table
	.short _02052CFE - _02052CEA - 2 ; case 0
	.short _02052D0E - _02052CEA - 2 ; case 1
	.short _02052D4A - _02052CEA - 2 ; case 2
	.short _02052D72 - _02052CEA - 2 ; case 3
	.short _02052D84 - _02052CEA - 2 ; case 4
	.short _02052DBA - _02052CEA - 2 ; case 5
	.short _02052DD6 - _02052CEA - 2 ; case 6
	.short _02052DE8 - _02052CEA - 2 ; case 7
	.short _02052E08 - _02052CEA - 2 ; case 8
	.short _02052E2A - _02052CEA - 2 ; case 9
_02052CFE:
	add r0, r6, #0
	add r1, r5, #4
	bl sub_0203E234
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D0E:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02052D1A
_02052D18:
	b _02052E4C
_02052D1A:
	mov r1, #4
	mov r0, #3
	lsl r2, r1, #0xf
	bl sub_02017FC8
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02052F28
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D4A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052E4C
	ldr r0, [r6, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _02052D6C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02052FA8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D6C:
	mov r0, #7
	str r0, [r4, #0]
	b _02052E4C
_02052D72:
	add r0, r5, #0
	bl sub_02052FFC
	cmp r0, #0
	beq _02052E4C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052D84:
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_02097284
	bl sub_02024804
	ldr r0, [r6, #0xc]
	bl sub_020246E0
	add r7, r0, #0
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02052C6C
	add r0, r5, #0
	bl sub_0205300C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02053028
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DBA:
	add r0, r5, #0
	bl sub_02052FFC
	cmp r0, #0
	beq _02052E4C
	ldr r0, _02052E54 ; =0x0000061B
	bl sub_02005748
	mov r0, #0x12
	str r0, [r5, #0x38]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DD6:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02052DE2
	sub r0, r1, #1
	str r0, [r5, #0x38]
	b _02052E4C
_02052DE2:
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052DE8:
	mov r0, #8
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052E08:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052E4C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02053098
	add r5, #0x10
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203E274
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052E4C
_02052E2A:
	add r0, r6, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02052E4C
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #4
	bl sub_0201807C
	mov r0, #0
	bl sub_020C3EE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02052E4C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02052E54: .word 0x0000061B
	thumb_func_end sub_02052CBC

	thumb_func_start sub_02052E58
sub_02052E58: ; 0x02052E58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x3c
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0206A954
	str r0, [r5, #0]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	bl sub_02025E5C
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	str r0, [r5, #0x10]
	add r0, r6, #0
	bl sub_0206A954
	str r0, [r5, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	str r0, [r5, #0x18]
	add r0, r6, #0
	bl sub_0206A954
	cmp r0, #0
	bne _02052EE2
	add r0, r4, #0
	bl sub_02055C2C
_02052EE2:
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	bl sub_02054AC4
	ldr r0, [sp, #8]
	bl sub_0203D178
	ldr r0, [sp, #4]
	bl sub_0203D190
	add r0, r6, #0
	bl sub_0206AD9C
	add r0, r6, #0
	bl sub_0206A944
	ldr r0, [sp]
	bl sub_02025FE0
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0x49
	bl sub_0202CF28
	ldr r1, _02052F24 ; =sub_02052CBC
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02052F24: .word sub_02052CBC
	thumb_func_end sub_02052E58

	thumb_func_start sub_02052F28
sub_02052F28: ; 0x02052F28
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	add r1, #0x1c
	add r0, r1, #0
	bl sub_0201A7A0
	ldr r0, _02052F98 ; =0x020EC378
	bl sub_0201FE94
	ldr r2, _02052F9C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _02052FA0 ; =0x020EC34C
	bl sub_02018368
	mov r0, #3
	mov r1, #0
	bl sub_0201975C
	ldr r0, [r4, #8]
	ldr r2, _02052FA4 ; =0x020EC35C
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	mov r1, #0x20
	mov r0, #3
	mov r2, #0
	add r3, r1, #0
	bl sub_02019690
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	nop
_02052F98: .word 0x020EC378
_02052F9C: .word 0x04000304
_02052FA0: .word 0x020EC34C
_02052FA4: .word 0x020EC35C
	thumb_func_end sub_02052F28

	thumb_func_start sub_02052FA8
sub_02052FA8: ; 0x02052FA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_02025E44
	add r6, r0, #0
	mov r0, #0x1a
	mov r1, #0xd5
	mov r2, #0xf
	mov r3, #0x20
	bl sub_0200B010
	str r0, [r4, #0x2c]
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x1c
	mov r2, #3
	bl sub_0205D8F4
	add r0, r4, #0
	add r0, #0x1c
	add r1, r6, #0
	bl sub_0205D944
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #0x1c
	add r2, r6, #0
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x34]
	add r0, r4, #0
	ldr r1, _02052FF8 ; =0x000003E2
	add r0, #0x1c
	bl sub_0200E7FC
	str r0, [r4, #0x30]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02052FF8: .word 0x000003E2
	thumb_func_end sub_02052FA8

	thumb_func_start sub_02052FFC
sub_02052FFC: ; 0x02052FFC
	ldr r0, [r0, #0x34]
	ldr r3, _02053008 ; =sub_0205DA04
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	nop
_02053008: .word sub_0205DA04
	thumb_func_end sub_02052FFC

	thumb_func_start sub_0205300C
sub_0205300C: ; 0x0205300C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020237BC
	ldr r0, [r4, #0x30]
	bl sub_0200EBA0
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0205D988
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205300C

	thumb_func_start sub_02053028
sub_02053028: ; 0x02053028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	cmp r6, #2
	bne _02053070
	mov r0, #4
	bl sub_0200B358
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x10
	mov r3, #4
	bl sub_0200B29C
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_0200B3F0
	b _02053078
_02053070:
	mov r1, #0x12
	bl sub_0200B1EC
	str r0, [r4, #0x2c]
_02053078:
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x2c]
	add r0, #0x1c
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053028

	thumb_func_start sub_02053098
sub_02053098: ; 0x02053098
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _020530A8
	bl sub_020237BC
_020530A8:
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0201A7CC
	cmp r0, #0
	beq _020530BC
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0201A8FC
_020530BC:
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_02019044
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02053098

	.rodata


	.global Unk_020EC34C
Unk_020EC34C: ; 0x020EC34C
	.incbin "incbin/arm9_rodata.bin", 0x770C, 0x771C - 0x770C

	.global Unk_020EC35C
Unk_020EC35C: ; 0x020EC35C
	.incbin "incbin/arm9_rodata.bin", 0x771C, 0x7738 - 0x771C

	.global Unk_020EC378
Unk_020EC378: ; 0x020EC378
	.incbin "incbin/arm9_rodata.bin", 0x7738, 0x28

