	.include "macros/function.inc"
	.include "include/unk_02046AD4.inc"

	

	.text


	thumb_func_start sub_02046AD4
sub_02046AD4: ; 0x02046AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	mov r4, #0
	add r6, r4, #0
	add r5, r4, #0
_02046AF0:
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r1, r5, #0
	bl sub_02025F34
	cmp r0, #1
	bne _02046B0C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02046B0C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _02046AF0
	cmp r6, #8
	bhi _02046B50
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02046B26: ; jump table
	.short _02046B38 - _02046B26 - 2 ; case 0
	.short _02046B3C - _02046B26 - 2 ; case 1
	.short _02046B3C - _02046B26 - 2 ; case 2
	.short _02046B40 - _02046B26 - 2 ; case 3
	.short _02046B40 - _02046B26 - 2 ; case 4
	.short _02046B44 - _02046B26 - 2 ; case 5
	.short _02046B44 - _02046B26 - 2 ; case 6
	.short _02046B48 - _02046B26 - 2 ; case 7
	.short _02046B4C - _02046B26 - 2 ; case 8
_02046B38:
	mov r1, #1
	b _02046B52
_02046B3C:
	mov r1, #2
	b _02046B52
_02046B40:
	mov r1, #3
	b _02046B52
_02046B44:
	mov r1, #4
	b _02046B52
_02046B48:
	mov r1, #5
	b _02046B52
_02046B4C:
	mov r1, #6
	b _02046B52
_02046B50:
	mov r1, #1
_02046B52:
	ldr r0, _02046B94 ; =0x020EBAFC
	mov r2, #0
	add r6, sp, #4
_02046B58:
	lsl r3, r2, #2
	add r5, r0, r3
	ldrh r3, [r5, #2]
	cmp r1, r3
	blt _02046B6E
	ldrh r5, [r5]
	lsl r3, r4, #1
	strh r5, [r6, r3]
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
_02046B6E:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #0x13
	blo _02046B58
	ldr r1, _02046B98 ; =0x0000FFFF
	lsl r0, r4, #1
	add r2, sp, #4
	strh r1, [r2, r0]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x74]
	add r7, #0x80
	ldr r1, [r7, #0]
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02046B94: .word 0x020EBAFC
_02046B98: .word 0x0000FFFF
	thumb_func_end sub_02046AD4

	thumb_func_start sub_02046B9C
sub_02046B9C: ; 0x02046B9C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	cmp r2, #8
	beq _02046BD0
	cmp r2, #9
	beq _02046BD0
	cmp r2, #0xa
	beq _02046BD0
	cmp r2, #0xb
	beq _02046BD0
	cmp r2, #0xc
	beq _02046BD0
	cmp r2, #0xd
	beq _02046BD0
	cmp r2, #0x13
	bne _02046BD4
_02046BD0:
	mov r0, #1
	b _02046BD6
_02046BD4:
	mov r0, #0
_02046BD6:
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046BF0 ; =0x02100B1C
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #0
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046BF0: .word 0x02100B1C
	thumb_func_end sub_02046B9C

	thumb_func_start sub_02046BF4
sub_02046BF4: ; 0x02046BF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	cmp r2, #1
	bhi _02046C14
	mov r0, #1
	b _02046C16
_02046C14:
	mov r0, #0
_02046C16:
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046C30 ; =0x02100AF8
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #1
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046C30: .word 0x02100AF8
	thumb_func_end sub_02046BF4

	thumb_func_start sub_02046C34
sub_02046C34: ; 0x02046C34
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	lsl r3, r2, #2
	str r0, [sp]
	ldr r2, _02046C68 ; =0x02100B00
	ldr r0, [r4, #0x74]
	add r4, #0x80
	ldr r2, [r2, r3]
	ldr r1, [r4, #0]
	mov r3, #2
	bl ov7_0224CDA4
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02046C68: .word 0x02100B00
	thumb_func_end sub_02046C34

	thumb_func_start sub_02046C6C
sub_02046C6C: ; 0x02046C6C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203E518
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02046C6C

	.rodata


	.global Unk_020EB978
Unk_020EB978: ; 0x020EB978
	.incbin "incbin/arm9_rodata.bin", 0x6D38, 0x6D3E - 0x6D38

	.global Unk_020EB97E
Unk_020EB97E: ; 0x020EB97E
	.incbin "incbin/arm9_rodata.bin", 0x6D3E, 0x6D44 - 0x6D3E

	.global Unk_020EB984
Unk_020EB984: ; 0x020EB984
	.incbin "incbin/arm9_rodata.bin", 0x6D44, 0x6D4C - 0x6D44

	.global Unk_020EB98C
Unk_020EB98C: ; 0x020EB98C
	.incbin "incbin/arm9_rodata.bin", 0x6D4C, 0x6D54 - 0x6D4C

	.global Unk_020EB994
Unk_020EB994: ; 0x020EB994
	.incbin "incbin/arm9_rodata.bin", 0x6D54, 0x6D5E - 0x6D54

	.global Unk_020EB99E
Unk_020EB99E: ; 0x020EB99E
	.incbin "incbin/arm9_rodata.bin", 0x6D5E, 0x6D68 - 0x6D5E

	.global Unk_020EB9A8
Unk_020EB9A8: ; 0x020EB9A8
	.incbin "incbin/arm9_rodata.bin", 0x6D68, 0x6D72 - 0x6D68

	.global Unk_020EB9B2
Unk_020EB9B2: ; 0x020EB9B2
	.incbin "incbin/arm9_rodata.bin", 0x6D72, 0x6D7C - 0x6D72

	.global Unk_020EB9BC
Unk_020EB9BC: ; 0x020EB9BC
	.incbin "incbin/arm9_rodata.bin", 0x6D7C, 0x6D86 - 0x6D7C

	.global Unk_020EB9C6
Unk_020EB9C6: ; 0x020EB9C6
	.incbin "incbin/arm9_rodata.bin", 0x6D86, 0x6D90 - 0x6D86

	.global Unk_020EB9D0
Unk_020EB9D0: ; 0x020EB9D0
	.incbin "incbin/arm9_rodata.bin", 0x6D90, 0x6D9A - 0x6D90

	.global Unk_020EB9DA
Unk_020EB9DA: ; 0x020EB9DA
	.incbin "incbin/arm9_rodata.bin", 0x6D9A, 0x6DA4 - 0x6D9A

	.global Unk_020EB9E4
Unk_020EB9E4: ; 0x020EB9E4
	.incbin "incbin/arm9_rodata.bin", 0x6DA4, 0x6DB0 - 0x6DA4

	.global Unk_020EB9F0
Unk_020EB9F0: ; 0x020EB9F0
	.incbin "incbin/arm9_rodata.bin", 0x6DB0, 0x6DBC - 0x6DB0

	.global Unk_020EB9FC
Unk_020EB9FC: ; 0x020EB9FC
	.incbin "incbin/arm9_rodata.bin", 0x6DBC, 0x6DCA - 0x6DBC

	.global Unk_020EBA0A
Unk_020EBA0A: ; 0x020EBA0A
	.incbin "incbin/arm9_rodata.bin", 0x6DCA, 0x6DD8 - 0x6DCA

	.global Unk_020EBA18
Unk_020EBA18: ; 0x020EBA18
	.incbin "incbin/arm9_rodata.bin", 0x6DD8, 0x6DE6 - 0x6DD8

	.global Unk_020EBA26
Unk_020EBA26: ; 0x020EBA26
	.incbin "incbin/arm9_rodata.bin", 0x6DE6, 0x6DF6 - 0x6DE6

	.global Unk_020EBA36
Unk_020EBA36: ; 0x020EBA36
	.incbin "incbin/arm9_rodata.bin", 0x6DF6, 0x6E06 - 0x6DF6

	.global Unk_020EBA46
Unk_020EBA46: ; 0x020EBA46
	.incbin "incbin/arm9_rodata.bin", 0x6E06, 0x6E16 - 0x6E06

	.global Unk_020EBA56
Unk_020EBA56: ; 0x020EBA56
	.incbin "incbin/arm9_rodata.bin", 0x6E16, 0x6E26 - 0x6E16

	.global Unk_020EBA66
Unk_020EBA66: ; 0x020EBA66
	.incbin "incbin/arm9_rodata.bin", 0x6E26, 0x6E36 - 0x6E26

	.global Unk_020EBA76
Unk_020EBA76: ; 0x020EBA76
	.incbin "incbin/arm9_rodata.bin", 0x6E36, 0x6E46 - 0x6E36

	.global Unk_020EBA86
Unk_020EBA86: ; 0x020EBA86
	.incbin "incbin/arm9_rodata.bin", 0x6E46, 0x6E56 - 0x6E46

	.global Unk_020EBA96
Unk_020EBA96: ; 0x020EBA96
	.incbin "incbin/arm9_rodata.bin", 0x6E56, 0x6E66 - 0x6E56

	.global Unk_020EBAA6
Unk_020EBAA6: ; 0x020EBAA6
	.incbin "incbin/arm9_rodata.bin", 0x6E66, 0x6E78 - 0x6E66

	.global Unk_020EBAB8
Unk_020EBAB8: ; 0x020EBAB8
	.incbin "incbin/arm9_rodata.bin", 0x6E78, 0x6E8A - 0x6E78

	.global Unk_020EBACA
Unk_020EBACA: ; 0x020EBACA
	.incbin "incbin/arm9_rodata.bin", 0x6E8A, 0x6EA2 - 0x6E8A

	.global Unk_020EBAE2
Unk_020EBAE2: ; 0x020EBAE2
	.incbin "incbin/arm9_rodata.bin", 0x6EA2, 0x6EBC - 0x6EA2

	.global Unk_020EBAFC
Unk_020EBAFC: ; 0x020EBAFC
	.incbin "incbin/arm9_rodata.bin", 0x6EBC, 0x4C



	.data


	.global Unk_02100AF8
Unk_02100AF8: ; 0x02100AF8
	.incbin "incbin/arm9_data.bin", 0x1E18, 0x1E20 - 0x1E18

	.global Unk_02100B00
Unk_02100B00: ; 0x02100B00
	.incbin "incbin/arm9_data.bin", 0x1E20, 0x1E3C - 0x1E20

	.global Unk_02100B1C
Unk_02100B1C: ; 0x02100B1C
	.incbin "incbin/arm9_data.bin", 0x1E3C, 0x50

