	.include "macros/function.inc"
	.include "include/unk_020528D0.inc"

	

	.text


	thumb_func_start sub_020528D0
sub_020528D0: ; 0x020528D0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02052908 ; =0x020EC324
	bl sub_0201FE94
	ldr r0, _0205290C ; =0x020EC2F8
	bl sub_02018368
	ldr r2, _02052910 ; =0x020EC308
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	mov r3, #0x1a
	str r0, [sp, #4]
	mov r0, #0xe
	mov r1, #6
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02052908: .word 0x020EC324
_0205290C: .word 0x020EC2F8
_02052910: .word 0x020EC308
	thumb_func_end sub_020528D0

	thumb_func_start sub_02052914
sub_02052914: ; 0x02052914
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	bne _0205292A
	bl sub_02022974
_0205292A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0xb
	bl sub_02018340
	str r0, [r4, #8]
	bl sub_020528D0
	ldr r2, _020529B4 ; =0x00000175
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x1c]
	mov r0, #0xb
	bl sub_0200B358
	str r0, [r4, #0x20]
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, _020529B8 ; =0x020EC2F0
	add r1, #0xc
	bl sub_0201A8D4
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _020529BC ; =0x0000019E
	cmp r1, r0
	bne _02052994
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02052AA4
	b _020529A0
_02052994:
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02052AA4
_020529A0:
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A954
	ldr r1, _020529C0 ; =sub_020529C4
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020529B4: .word 0x00000175
_020529B8: .word 0x020EC2F0
_020529BC: .word 0x0000019E
_020529C0: .word sub_020529C4
	thumb_func_end sub_02052914

	thumb_func_start sub_020529C4
sub_020529C4: ; 0x020529C4
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _02052A9A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020529E0: ; jump table
	.short _020529EA - _020529E0 - 2 ; case 0
	.short _02052A08 - _020529E0 - 2 ; case 1
	.short _02052A18 - _020529E0 - 2 ; case 2
	.short _02052A48 - _020529E0 - 2 ; case 3
	.short _02052A62 - _020529E0 - 2 ; case 4
_020529EA:
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #3
	mov r2, #0x2a
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A08:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052A9A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A18:
	ldr r0, _02052AA0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02052A28
	mov r0, #2
	tst r0, r1
	beq _02052A9A
_02052A28:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A48:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02052A9A
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052A9A
_02052A62:
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A8FC
	ldr r0, [r4, #0x20]
	bl sub_0200B3F0
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02052A9A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02052AA0: .word 0x021BF67C
	thumb_func_end sub_020529C4

	thumb_func_start sub_02052AA4
sub_02052AA4: ; 0x02052AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #1
	str r1, [sp, #0x10]
	lsl r0, r0, #0xa
	mov r1, #0xb
	add r7, r3, #0
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	add r3, r0, #0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02052B28 ; =0x000F0200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	ldrb r5, [r5, #0x13]
	add r0, #0xc
	add r2, r4, #0
	lsl r5, r5, #3
	sub r3, r5, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x19
	sub r3, r3, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02052B28: .word 0x000F0200
	thumb_func_end sub_02052AA4

	thumb_func_start sub_02052B2C
sub_02052B2C: ; 0x02052B2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bls _02052B48
	b _02052C4E
_02052B48:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02052B54: ; jump table
	.short _02052B62 - _02052B54 - 2 ; case 0
	.short _02052BAE - _02052B54 - 2 ; case 1
	.short _02052BBE - _02052B54 - 2 ; case 2
	.short _02052BD2 - _02052B54 - 2 ; case 3
	.short _02052BFA - _02052B54 - 2 ; case 4
	.short _02052C08 - _02052B54 - 2 ; case 5
	.short _02052C48 - _02052B54 - 2 ; case 6
_02052B62:
	cmp r5, #0
	beq _02052B76
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02052B76
	bl sub_0207A268
	mov r1, #0
	bl sub_02077A9C
_02052B76:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	bl sub_0203A75C
	add r1, sp, #4
	str r0, [sp]
	bl sub_0203A824
	add r0, r7, #0
	bl sub_0203A72C
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0203A7F0
	add r0, r6, #0
	add r1, sp, #4
	bl sub_020539A0
	add r0, r5, #0
	bl sub_020705B4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BAE:
	mov r0, #0
	mov r1, #0x14
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BBE:
	bl sub_02005684
	cmp r0, #0
	bne _02052C4E
	bl sub_020553DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BD2:
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x37
	mov r2, #1
	bl sub_0200AB4C
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x3f
	mov r2, #2
	bl sub_0200AB4C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02052914
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052BFA:
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052C08:
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	bl sub_0203A7EC
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A75C
	cmp r7, r0
	bne _02052C34
	mov r2, #0
	ldr r1, _02052C54 ; =0x000007E4
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _02052C40
_02052C34:
	mov r2, #0
	ldr r1, _02052C58 ; =0x000007E5
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
_02052C40:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02052C4E
_02052C48:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02052C4E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02052C54: .word 0x000007E4
_02052C58: .word 0x000007E5
	thumb_func_end sub_02052B2C

	thumb_func_start sub_02052C5C
sub_02052C5C: ; 0x02052C5C
	ldr r3, _02052C64 ; =sub_02050944
	ldr r1, _02052C68 ; =sub_02052B2C
	mov r2, #0
	bx r3
	; .align 2, 0
_02052C64: .word sub_02050944
_02052C68: .word sub_02052B2C
	thumb_func_end sub_02052C5C

	.rodata


	.global Unk_020EC2F0
Unk_020EC2F0: ; 0x020EC2F0
	.incbin "incbin/arm9_rodata.bin", 0x76B0, 0x76B8 - 0x76B0

	.global Unk_020EC2F8
Unk_020EC2F8: ; 0x020EC2F8
	.incbin "incbin/arm9_rodata.bin", 0x76B8, 0x76C8 - 0x76B8

	.global Unk_020EC308
Unk_020EC308: ; 0x020EC308
	.incbin "incbin/arm9_rodata.bin", 0x76C8, 0x76E4 - 0x76C8

	.global Unk_020EC324
Unk_020EC324: ; 0x020EC324
	.incbin "incbin/arm9_rodata.bin", 0x76E4, 0x28

