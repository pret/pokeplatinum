	.include "macros/function.inc"
	.include "overlay022/ov22_02255D44.inc"

	

	.text


	thumb_func_start ov22_02255D44
ov22_02255D44: ; 0x02255D44
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _02255E40 ; =0x000006E4
	add r0, r4, #0
	mov r2, #0xd
	bl sub_0200681C
	ldr r2, _02255E40 ; =0x000006E4
	mov r1, #0
	add r5, r0, #0
	bl memset
	ldr r0, _02255E44 ; =ov22_02256940
	add r1, r5, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _02255E48 ; =0x000006D4
	str r1, [r5, r0]
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r4, #8]
	add r1, r5, r1
	bl ov22_0225894C
	add r0, r5, #0
	bl ov22_022566C0
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov22_02259484
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov22_02254DE0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r4, #0]
	add r0, r5, #0
	mov r2, #0xa
	mov r3, #0
	bl ov22_02256708
	add r0, r5, #0
	bl ov22_022567FC
	add r0, r5, #0
	mov r1, #0
	bl ov22_02256948
	add r0, r5, #0
	bl ov22_0225699C
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov22_02256BAC
	mov r0, #0x56
	lsl r0, r0, #4
	add r1, r5, r0
	mov r2, #0xfd
	str r1, [sp]
	mov r1, #1
	sub r0, #0xc8
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r5, r2
	sub r2, #0x8c
	add r0, r5, r0
	add r2, r5, r2
	add r3, r5, #0
	bl ov22_022589E0
	mov r0, #0xd
	bl sub_02015920
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xd
	mov r1, #1
	bl sub_0201A778
	ldr r2, _02255E4C ; =0x000006B4
	mov r1, #0
	str r0, [r5, r2]
	sub r2, #0xc
	str r1, [r5, r2]
	mov r0, #0x35
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02255E40: .word 0x000006E4
_02255E44: .word ov22_02256940
_02255E48: .word 0x000006D4
_02255E4C: .word 0x000006B4
	thumb_func_end ov22_02255D44

	thumb_func_start ov22_02255E50
ov22_02255E50: ; 0x02255E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl sub_02006840
	ldr r1, [r5, #0]
	cmp r1, #0xc
	bhi _02255F1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02255E78: ; jump table
	.short _02255E92 - _02255E78 - 2 ; case 0
	.short _02255E92 - _02255E78 - 2 ; case 1
	.short _02255EAE - _02255E78 - 2 ; case 2
	.short _02255EBE - _02255E78 - 2 ; case 3
	.short _02255EEC - _02255E78 - 2 ; case 4
	.short _02255F0E - _02255E78 - 2 ; case 5
	.short _02255F3E - _02255E78 - 2 ; case 6
	.short _02255F74 - _02255E78 - 2 ; case 7
	.short _02255F9A - _02255E78 - 2 ; case 8
	.short _02255FDA - _02255E78 - 2 ; case 9
	.short _02256012 - _02255E78 - 2 ; case 10
	.short _02256030 - _02255E78 - 2 ; case 11
	.short _0225604E - _02255E78 - 2 ; case 12
_02255E92:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #5
	add r2, r1, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #2
	str r0, [r5, #0]
	b _0225606A
_02255EAE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02255F1E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255EBE:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02255EE6
	mov r0, #1
	bl sub_02002B20
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _02256078 ; =0x00000181
	add r0, r4, r0
	mov r1, #0x1a
	mov r3, #0x2f
	bl ov22_0225A660
	ldr r1, _0225607C ; =0x000006D8
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255EE6:
	mov r0, #6
	str r0, [r5, #0]
	b _0225606A
_02255EEC:
	ldr r0, _0225607C ; =0x000006D8
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255F1E
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A6A0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255F0E:
	ldr r0, _02256080 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	and r1, r0
	ldr r0, _02256084 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	orr r0, r1
	bne _02255F20
_02255F1E:
	b _0225606A
_02255F20:
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _02256078 ; =0x00000181
	add r0, r4, r0
	mov r1, #0x1a
	mov r3, #0x30
	bl ov22_0225A628
	add r0, r6, #0
	bl sub_02002B20
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255F3E:
	ldr r1, _02256088 ; =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #3
	bne _02255F54
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov22_02256C48
	mov r0, #7
	str r0, [r5, #0]
_02255F54:
	ldr r0, _0225608C ; =0x00000498
	add r0, r4, r0
	bl ov22_0225890C
	add r0, r4, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A610
	add r0, r4, #0
	bl ov22_02256AC4
	b _0225606A
_02255F74:
	ldr r0, _02256090 ; =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	add r1, r6, #0
	str r1, [r4, r0]
	mov r1, #8
	str r1, [r5, #0]
	mov r1, #4
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02256094 ; =0x0000047C
	mov r2, #0xe
	add r0, r4, r1
	sub r1, #0x88
	add r1, r4, r1
	bl ov22_0225AF44
	b _0225606A
_02255F9A:
	ldr r1, _02256088 ; =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #9
	bne _02255FB2
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov22_02256DB8
	mov r0, #0xa
	str r0, [r5, #0]
	b _0225606A
_02255FB2:
	cmp r0, #8
	bne _02255FC6
	mov r0, #9
	str r0, [r5, #0]
	mov r0, #5
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov22_022575B4
	b _0225606A
_02255FC6:
	add r0, r4, #0
	bl ov22_02257278
	ldr r1, _02256088 ; =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02255FDA:
	ldr r0, _02256088 ; =0x000006A8
	ldr r1, [r4, r0]
	cmp r1, #6
	bne _02255FEE
	mov r1, #1
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5, #0]
	b _0225606A
_02255FEE:
	cmp r1, #7
	bne _02255FFE
	add r1, r6, #0
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5, #0]
	b _0225606A
_02255FFE:
	add r0, r4, #0
	bl ov22_02257624
	ldr r1, _02256088 ; =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02256012:
	ldr r0, _02256090 ; =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	add r2, r6, #0
	str r2, [r4, r0]
	mov r1, #6
	str r1, [r5, #0]
	sub r0, r0, #4
	str r2, [r4, r0]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF74
	b _0225606A
_02256030:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	add r1, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_0225604E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225606A
	add r0, r6, #0
	str r0, [r5, #0]
	ldr r0, _02256088 ; =0x000006A8
	mov r1, #0xa
	str r1, [r4, r0]
	ldr r0, _02256094 ; =0x0000047C
	mov r6, #1
	add r0, r4, r0
	bl ov22_0225AF74
_0225606A:
	add r0, r4, #0
	bl ov22_022566EC
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256078: .word 0x00000181
_0225607C: .word 0x000006D8
_02256080: .word 0x021BF67C
_02256084: .word 0x021BF6BC
_02256088: .word 0x000006A8
_0225608C: .word 0x00000498
_02256090: .word 0x000006AC
_02256094: .word 0x0000047C
	thumb_func_end ov22_02255E50

	thumb_func_start ov22_02256098
ov22_02256098: ; 0x02256098
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, _02256168 ; =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560C8
	ldr r0, [r5, #0x10]
	mov r1, #7
	bl sub_0202CFEC
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x14]
	add r1, r4, r1
	bl ov22_02256F38
_022560C8:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _022560E0
	ldr r0, _02256168 ; =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560DC
	mov r0, #1
	str r0, [r1, #0]
	b _022560E0
_022560DC:
	mov r0, #0
	str r0, [r1, #0]
_022560E0:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015938
	ldr r0, _0225616C ; =0x000006B4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201A928
	add r0, r4, #0
	bl ov22_02256C38
	ldr r0, _02256170 ; =0x00000498
	add r0, r4, r0
	bl ov22_02258A34
	add r0, r4, #0
	bl ov22_02256AB4
	add r0, r4, #0
	bl ov22_0225698C
	add r0, r4, #0
	bl ov22_022567D8
	add r0, r4, #0
	bl ov22_022568B8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_022566F4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E530
	cmp r0, #1
	beq _02256152
	bl GF_AssertFail
_02256152:
	add r0, r6, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256168: .word 0x000006B8
_0225616C: .word 0x000006B4
_02256170: .word 0x00000498
	thumb_func_end ov22_02256098

	thumb_func_start ov22_02256174
ov22_02256174: ; 0x02256174
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _022562D8 ; =0x000006E4
	add r0, r5, #0
	mov r2, #0xd
	bl sub_0200681C
	ldr r2, _022562D8 ; =0x000006E4
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, _022562DC ; =ov22_02256940
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	mov r1, #0x1b
	ldr r0, [r5, #0xc]
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r2, [r5, #0x10]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, [r5, #0x14]
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, [r5, #8]
	add r0, #0xc
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	add r1, #0x10
	str r0, [r4, r1]
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, #0x18]
	add r1, r4, r1
	bl ov22_0225894C
	add r0, r4, #0
	bl ov22_022566C0
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020219A4
	bl sub_02039734
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov22_02259484
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov22_02254DE0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5, #0x20]
	ldr r0, _022562E0 ; =0x000006D4
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _0225624E
	ldr r0, [r5, #0xc]
	bl ov22_02257580
	ldr r1, _022562E4 ; =0x000006BC
	str r0, [r4, r1]
	b _02256254
_0225624E:
	mov r1, #0x14
	sub r0, #0x18
	str r1, [r4, r0]
_02256254:
	ldr r2, _022562E4 ; =0x000006BC
	ldr r1, [r5, #0]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov22_02256790
	add r0, r4, #0
	bl ov22_022567FC
	add r0, r4, #0
	mov r1, #0
	bl ov22_02256948
	add r0, r4, #0
	bl ov22_02256A28
	ldr r0, [r5, #0x20]
	ldr r1, _022562E4 ; =0x000006BC
	str r0, [sp]
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x1c]
	add r0, r4, #0
	bl ov22_02256BF4
	mov r0, #0x56
	lsl r0, r0, #4
	add r1, r4, r0
	mov r2, #0xfd
	str r1, [sp]
	mov r1, #0
	sub r0, #0xc8
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r4, r2
	sub r2, #0x8c
	add r0, r4, r0
	add r2, r4, r2
	add r3, r4, #0
	bl ov22_022589E0
	mov r0, #0xd
	bl sub_02015920
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xd
	mov r1, #1
	bl sub_0201A778
	ldr r1, _022562E8 ; =0x000006B4
	mov r2, #0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xc
	add r1, #0x1c
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	ldrb r0, [r0, #0x16]
	bl sub_020959F4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022562D8: .word 0x000006E4
_022562DC: .word ov22_02256940
_022562E0: .word 0x000006D4
_022562E4: .word 0x000006BC
_022562E8: .word 0x000006B4
	thumb_func_end ov22_02256174

	thumb_func_start ov22_022562EC
ov22_022562EC: ; 0x022562EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	mov r6, #0
	cmp r1, #0x14
	bhi _0225634E
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225630C: ; jump table
	.short _02256336 - _0225630C - 2 ; case 0
	.short _02256346 - _0225630C - 2 ; case 1
	.short _02256358 - _0225630C - 2 ; case 2
	.short _0225638E - _0225630C - 2 ; case 3
	.short _022563AC - _0225630C - 2 ; case 4
	.short _022563C2 - _0225630C - 2 ; case 5
	.short _022563E0 - _0225630C - 2 ; case 6
	.short _02256402 - _0225630C - 2 ; case 7
	.short _02256420 - _0225630C - 2 ; case 8
	.short _0225643A - _0225630C - 2 ; case 9
	.short _0225645E - _0225630C - 2 ; case 10
	.short _02256470 - _0225630C - 2 ; case 11
	.short _0225648E - _0225630C - 2 ; case 12
	.short _022564AA - _0225630C - 2 ; case 13
	.short _02256518 - _0225630C - 2 ; case 14
	.short _0225654A - _0225630C - 2 ; case 15
	.short _022565C8 - _0225630C - 2 ; case 16
	.short _022565C8 - _0225630C - 2 ; case 17
	.short _022565C8 - _0225630C - 2 ; case 18
	.short _02256568 - _0225630C - 2 ; case 19
	.short _02256598 - _0225630C - 2 ; case 20
_02256336:
	mov r0, #0x2a
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256346:
	bl sub_02005684
	cmp r0, #0
	beq _02256350
_0225634E:
	b _022565C8
_02256350:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256358:
	bl ov22_02257104
	ldr r2, _022565D4 ; =0x000006BC
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl ov22_02257524
	ldr r0, _022565D8 ; =0x000006C4
	ldr r0, [r5, r0]
	cmp r0, #3
	beq _0225637A
	add r0, r5, #0
	mov r1, #0x1a
	bl ov22_0225751C
	b _02256382
_0225637A:
	add r0, r5, #0
	mov r1, #0x1c
	bl ov22_0225751C
_02256382:
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225638E:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563AC:
	ldr r1, _022565E0 ; =0x000006CC
	ldr r1, [r5, r1]
	add r1, #0x1d
	bl ov22_0225751C
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563C2:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563E0:
	ldr r1, _022565D8 ; =0x000006C4
	ldr r1, [r5, r1]
	cmp r1, #3
	beq _022563F0
	mov r1, #0x2a
	bl ov22_0225751C
	b _022563F6
_022563F0:
	mov r1, #0x29
	bl ov22_0225751C
_022563F6:
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256402:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256420:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256432
	mov r0, #2
	bl sub_020364F0
_02256432:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225643A:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256458
	mov r0, #2
	bl sub_02036540
	cmp r0, #0
	beq _02256496
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256458:
	add r0, r1, #1
	str r0, [r4, #0]
	b _022565C8
_0225645E:
	bl ov22_0225718C
	ldr r0, _022565E4 ; =0x00000643
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256470:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #0x11
	mov r2, #0x13
	add r3, r6, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225648E:
	bl sub_0200F2AC
	cmp r0, #0
	bne _02256498
_02256496:
	b _022565C8
_02256498:
	ldr r1, _022565E8 ; =0x00000491
	mov r0, #7
	add r2, r6, #0
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022564AA:
	ldr r0, _022565EC ; =0x000006A8
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _022564DE
	add r0, #0x28
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02095CA8
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _022564D8
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _022565F0 ; =0x00000181
	add r0, r5, r0
	mov r1, #0x1a
	mov r3, #0x2e
	bl ov22_0225A628
_022564D8:
	mov r0, #0xe
	str r0, [r4, #0]
	b _022565C8
_022564DE:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _022564F8
	mov r0, #0xf
	str r0, [r4, #0]
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_02005748
_022564F8:
	ldr r0, _022565F4 ; =0x00000498
	add r0, r5, r0
	bl ov22_0225890C
	add r0, r5, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	add r0, r5, #0
	bl ov22_02256AC4
	b _022565C8
_02256518:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _02256532
	mov r0, #0xf
	str r0, [r4, #0]
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_02005748
_02256532:
	add r0, r5, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	add r0, r5, #0
	bl ov22_022577A0
	b _022565C8
_0225654A:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6D4
	cmp r0, #0
	beq _022565C8
	mov r0, #0x13
	str r0, [r4, #0]
	b _022565C8
_02256568:
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_020057D4
	cmp r0, #1
	beq _022565C8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #0x1a
	add r2, r1, #0
	add r3, r6, #0
	bl sub_0200F174
	ldr r0, _022565F8 ; =0x00000684
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256598:
	bl sub_0200F2AC
	cmp r0, #0
	beq _022565C8
	add r0, r6, #0
	str r0, [r4, #0]
	mov r2, #1
	ldr r0, _022565EC ; =0x000006A8
	mov r1, #0xa
	str r1, [r5, r0]
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _022565FC ; =0xFFFF1FFF
	mov r6, #1
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0xfd
	lsl r0, r0, #2
	add r1, r6, #0
	add r0, r5, r0
	sub r1, #0x41
	mov r2, #0x28
	bl ov22_02257AB0
_022565C8:
	add r0, r5, #0
	bl ov22_022566EC
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022565D4: .word 0x000006BC
_022565D8: .word 0x000006C4
_022565DC: .word 0x000006D8
_022565E0: .word 0x000006CC
_022565E4: .word 0x00000643
_022565E8: .word 0x00000491
_022565EC: .word 0x000006A8
_022565F0: .word 0x00000181
_022565F4: .word 0x00000498
_022565F8: .word 0x00000684
_022565FC: .word 0xFFFF1FFF
	thumb_func_end ov22_022562EC

	thumb_func_start ov22_02256600
ov22_02256600: ; 0x02256600
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	mov r2, #0x1b
	add r3, r0, #0
	mov r1, #0xfd
	lsl r2, r2, #6
	ldr r0, [r3, #4]
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	ldr r3, [r3, #0x24]
	add r1, r4, r1
	bl ov22_02256FD8
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015938
	ldr r0, _022566B8 ; =0x000006B4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201A928
	add r0, r4, #0
	bl ov22_02256C38
	ldr r0, _022566BC ; =0x00000498
	add r0, r4, r0
	bl ov22_02258A34
	add r0, r4, #0
	bl ov22_02256AB4
	add r0, r4, #0
	bl ov22_0225698C
	add r0, r4, #0
	bl ov22_022567D8
	add r0, r4, #0
	bl ov22_022568B8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_022566F4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E530
	cmp r0, #1
	beq _02256698
	bl GF_AssertFail
_02256698:
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	bl sub_02095A24
	bl sub_02039794
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022566B8: .word 0x000006B4
_022566BC: .word 0x00000498
	thumb_func_end ov22_02256600

	thumb_func_start ov22_022566C0
ov22_022566C0: ; 0x022566C0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl ov22_02255094
	add r0, r4, #0
	bl ov22_022550D4
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_02255314
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_022551B4
	add r0, sp, #0
	bl ov22_02255338
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022566C0

	thumb_func_start ov22_022566EC
ov22_022566EC: ; 0x022566EC
	ldr r3, _022566F0 ; =ov22_02255180
	bx r3
	; .align 2, 0
_022566F0: .word ov22_02255180
	thumb_func_end ov22_022566EC

	thumb_func_start ov22_022566F4
ov22_022566F4: ; 0x022566F4
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022551D0
	add r0, r4, #0
	bl ov22_02255134
	bl ov22_022550B4
	pop {r4, pc}
	thumb_func_end ov22_022566F4

	thumb_func_start ov22_02256708
ov22_02256708: ; 0x02256708
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r1, #0xd9
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x30]
	add r6, r3, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x40]
	str r2, [sp, #0x30]
	str r0, [sp, #0x24]
	ldr r0, [r5, r1]
	str r0, [sp, #0x28]
	add r0, r1, #0
	sub r0, #8
	add r0, r5, r0
	add r1, #0x90
	str r0, [sp, #0x2c]
	add r0, r5, r1
	add r1, sp, #0x10
	bl ov22_022578F4
	cmp r6, #0
	add r2, sp, #0
	bne _0225675C
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov22_02257998
	b _0225676A
_0225675C:
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov22_022579B4
_0225676A:
	add r0, r5, #0
	add r1, sp, #0
	bl ov22_02259098
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov22_02257B10
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xe
	bl ov22_02257C88
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02256708

	thumb_func_start ov22_02256790
ov22_02256790: ; 0x02256790
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #1
	add r4, r0, #0
	bl ov22_02256708
	ldr r0, _022567D4 ; =0x0000046C
	add r1, sp, #8
	add r0, r4, r0
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, _022567D4 ; =0x0000046C
	add r1, sp, #0
	add r0, r4, r0
	bl ov22_02259358
	ldr r3, [sp, #4]
	ldr r0, _022567D4 ; =0x0000046C
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r3, r2, #1
	add r2, sp, #0
	ldrb r2, [r2, #3]
	add r0, r4, r0
	mov r1, #0xc0
	sub r3, r3, r2
	mov r2, #0x8d
	sub r2, r2, r3
	bl ov22_022591EC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022567D4: .word 0x0000046C
	thumb_func_end ov22_02256790

	thumb_func_start ov22_022567D8
ov22_022567D8: ; 0x022567D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257CD4
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257A98
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	thumb_func_end ov22_022567D8

	thumb_func_start ov22_022567FC
ov22_022567FC: ; 0x022567FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x28]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x18]
	mov r1, #0xe
	str r1, [sp, #0x1c]
	mov r1, #2
	str r1, [sp, #0x20]
	mov r1, #1
	add r0, r0, #4
	str r1, [sp, #0x24]
	add r0, r5, r0
	add r1, sp, #0
	bl ov22_02257F50
	mov r0, #0xda
	lsl r0, r0, #2
	mov r1, #0
	add r0, r5, r0
	add r2, r1, #0
	bl ov22_022582C0
	mov r6, #0
_02256854:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov22_0225899C
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0225687C
_02256868:
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	add r2, r6, #0
	bl ov22_022580A4
	add r4, r4, #1
	cmp r4, r7
	blt _02256868
_0225687C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _02256854
	mov r7, #0xda
	mov r6, #0x61
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #2
_0225688C:
	add r0, r5, r6
	add r1, r4, #0
	bl ov22_022589B0
	add r2, r0, #0
	cmp r2, #0x12
	bge _022568A2
	add r0, r5, r7
	mov r1, #1
	bl ov22_022580A4
_022568A2:
	add r4, r4, #1
	cmp r4, #0x12
	blt _0225688C
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov22_022581EC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022567FC

	thumb_func_start ov22_022568B8
ov22_022568B8: ; 0x022568B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258408
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_022581C0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257F88
	pop {r4, pc}
	thumb_func_end ov22_022568B8

	thumb_func_start ov22_022568DC
ov22_022568DC: ; 0x022568DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0225693C ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r2
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mov r1, #3
	bic r3, r2
	add r2, r3, #0
	orr r2, r1
	strh r2, [r0, #6]
	add r3, r1, #0
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	sub r3, #0x13
	bl sub_02019184
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_02258354
	mov r1, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #2
	add r3, r1, #0
	str r1, [sp]
	bl ov22_022583A0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225693C: .word 0x04000008
	thumb_func_end ov22_022568DC

	thumb_func_start ov22_02256940
ov22_02256940: ; 0x02256940
	ldr r3, _02256944 ; =ov22_022553F8
	bx r3
	; .align 2, 0
_02256944: .word ov22_022553F8
	thumb_func_end ov22_02256940

	thumb_func_start ov22_02256948
ov22_02256948: ; 0x02256948
	push {r3, lr}
	sub sp, #0x30
	ldr r2, [r0, #0x40]
	str r2, [sp]
	mov r2, #0x19
	str r2, [sp, #4]
	lsl r2, r1, #1
	add r1, r2, #0
	add r1, #0x79
	str r1, [sp, #8]
	mov r1, #0x85
	str r1, [sp, #0xc]
	mov r1, #1
	add r2, #0x7a
	str r2, [sp, #0x10]
	mov r2, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #2
	str r1, [sp, #0x24]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	ldr r1, _02256988 ; =0x000004B4
	str r2, [sp, #0x14]
	add r0, r0, r1
	add r1, sp, #0
	str r2, [sp, #0x18]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
_02256988: .word 0x000004B4
	thumb_func_end ov22_02256948

	thumb_func_start ov22_0225698C
ov22_0225698C: ; 0x0225698C
	ldr r1, _02256994 ; =0x000004B4
	ldr r3, _02256998 ; =ov22_02259804
	add r0, r0, r1
	bx r3
	; .align 2, 0
_02256994: .word 0x000004B4
_02256998: .word ov22_02259804
	thumb_func_end ov22_0225698C

	thumb_func_start ov22_0225699C
ov22_0225699C: ; 0x0225699C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov22_02259DBC
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02256A14 ; =ov22_02256B04
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A18 ; =ov22_02256B24
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A1C ; =ov22_02256B44
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A20 ; =ov22_02256B78
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A24 ; =ov22_02256AE4
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02256A14: .word ov22_02256B04
_02256A18: .word ov22_02256B24
_02256A1C: .word ov22_02256B44
_02256A20: .word ov22_02256B78
_02256A24: .word ov22_02256AE4
	thumb_func_end ov22_0225699C

	thumb_func_start ov22_02256A28
ov22_02256A28: ; 0x02256A28
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov22_02259DBC
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02256AA0 ; =ov22_02256B04
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AA4 ; =ov22_02256B24
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AA8 ; =ov22_02256B44
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AAC ; =ov22_02256B78
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AB0 ; =ov22_02256AE4
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02256AA0: .word ov22_02256B04
_02256AA4: .word ov22_02256B24
_02256AA8: .word ov22_02256B44
_02256AAC: .word ov22_02256B78
_02256AB0: .word ov22_02256AE4
	thumb_func_end ov22_02256A28

	thumb_func_start ov22_02256AB4
ov22_02256AB4: ; 0x02256AB4
	add r1, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _02256AC0 ; =ov22_02259F24
	add r0, r1, r0
	bx r3
	; .align 2, 0
_02256AC0: .word ov22_02259F24
	thumb_func_end ov22_02256AB4

	thumb_func_start ov22_02256AC4
ov22_02256AC4: ; 0x02256AC4
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02256AD0 ; =ov22_02259F88
	add r0, r0, r1
	bx r3
	nop
_02256AD0: .word ov22_02259F88
	thumb_func_end ov22_02256AC4

	thumb_func_start ov22_02256AD4
ov22_02256AD4: ; 0x02256AD4
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02256AE0 ; =ov22_02259FA0
	add r0, r0, r1
	bx r3
	nop
_02256AE0: .word ov22_02259FA0
	thumb_func_end ov22_02256AD4

	thumb_func_start ov22_02256AE4
ov22_02256AE4: ; 0x02256AE4
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256AFC
	ldr r0, _02256B00 ; =0x000006A8
	mov r1, #3
	str r1, [r4, r0]
_02256AFC:
	pop {r4, pc}
	nop
_02256B00: .word 0x000006A8
	thumb_func_end ov22_02256AE4

	thumb_func_start ov22_02256B04
ov22_02256B04: ; 0x02256B04
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258414
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #0
	bl ov22_02258258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256B04

	thumb_func_start ov22_02256B24
ov22_02256B24: ; 0x02256B24
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258414
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #1
	bl ov22_02258258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256B24

	thumb_func_start ov22_02256B44
ov22_02256B44: ; 0x02256B44
	push {r4, lr}
	ldr r0, _02256B74 ; =0x000006A8
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02256B70
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_02258424
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_022582C0
	ldr r0, _02256B74 ; =0x000006A8
	mov r1, #0
	str r1, [r4, r0]
_02256B70:
	pop {r4, pc}
	nop
_02256B74: .word 0x000006A8
	thumb_func_end ov22_02256B44

	thumb_func_start ov22_02256B78
ov22_02256B78: ; 0x02256B78
	push {r4, lr}
	ldr r0, _02256BA8 ; =0x000006A8
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02256BA4
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov22_02258424
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov22_022582C0
	ldr r0, _02256BA8 ; =0x000006A8
	mov r1, #1
	str r1, [r4, r0]
_02256BA4:
	pop {r4, pc}
	nop
_02256BA8: .word 0x000006A8
	thumb_func_end ov22_02256B78

	thumb_func_start ov22_02256BAC
ov22_02256BAC: ; 0x02256BAC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r1, #0
	add r5, r2, #0
	add r1, r0, #0
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, #0x40]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	mov r2, #0xf
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x48
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0x10]
	mov r0, #6
	str r3, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [sp, #0x24]
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A428
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02256BAC

	thumb_func_start ov22_02256BF4
ov22_02256BF4: ; 0x02256BF4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, [r0, #0x40]
	str r4, [sp]
	ldr r4, [r0, #0x44]
	str r4, [sp, #4]
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r1, r2, #7
	add r4, #0x48
	str r1, [sp, #0x18]
	mov r1, #0x3c
	str r4, [sp, #8]
	ldr r4, _02256C34 ; =0x00000181
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	str r4, [sp, #0x14]
	str r1, [sp, #0xc]
	str r3, [sp, #0x20]
	sub r1, r4, #1
	ldr r1, [r0, r1]
	mov r2, #0x3f
	str r1, [sp, #0x24]
	mov r1, #0x56
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, sp, #0
	bl ov22_0225A428
	add sp, #0x28
	pop {r4, pc}
	nop
_02256C34: .word 0x00000181
	thumb_func_end ov22_02256BF4

	thumb_func_start ov22_02256C38
ov22_02256C38: ; 0x02256C38
	mov r1, #0x56
	lsl r1, r1, #4
	ldr r3, _02256C44 ; =ov22_0225A560
	add r0, r0, r1
	bx r3
	nop
_02256C44: .word ov22_0225A560
	thumb_func_end ov22_02256C38

	thumb_func_start ov22_02256C48
ov22_02256C48: ; 0x02256C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02256C6C ; =ov22_02256C70
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	str r5, [r0, #0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256C6C: .word ov22_02256C70
	thumb_func_end ov22_02256C48

	thumb_func_start ov22_02256C70
ov22_02256C70: ; 0x02256C70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256C7E
	b _02256DB2
_02256C7E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256C8A: ; jump table
	.short _02256C9E - _02256C8A - 2 ; case 0
	.short _02256CC0 - _02256C8A - 2 ; case 1
	.short _02256CDA - _02256C8A - 2 ; case 2
	.short _02256CF6 - _02256C8A - 2 ; case 3
	.short _02256D0A - _02256C8A - 2 ; case 4
	.short _02256D32 - _02256C8A - 2 ; case 5
	.short _02256D52 - _02256C8A - 2 ; case 6
	.short _02256D78 - _02256C8A - 2 ; case 7
	.short _02256D94 - _02256C8A - 2 ; case 8
	.short _02256DA8 - _02256C8A - 2 ; case 9
_02256C9E:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #3
	mov r2, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256CB6
	bl GF_AssertFail
_02256CB6:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CC0:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CDA:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CF6:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D0A:
	mov r0, #0x4e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256DB2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D32:
	mov r1, #7
	add r0, r4, #0
	mvn r1, r1
	mov r2, #5
	mov r3, #8
	bl ov22_02257098
	cmp r0, #0
	beq _02256DB2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D52:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov22_02256948
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	ldr r0, [r4, #0]
	bl ov22_022571D4
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D78:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D94:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256DA8:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020067D0
_02256DB2:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256C70

	thumb_func_start ov22_02256DB8
ov22_02256DB8: ; 0x02256DB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02256DDC ; =ov22_02256DE0
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	str r5, [r0, #0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256DDC: .word ov22_02256DE0
	thumb_func_end ov22_02256DB8

	thumb_func_start ov22_02256DE0
ov22_02256DE0: ; 0x02256DE0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256DEE
	b _02256F32
_02256DEE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256DFA: ; jump table
	.short _02256E0E - _02256DFA - 2 ; case 0
	.short _02256E2A - _02256DFA - 2 ; case 1
	.short _02256E3E - _02256DFA - 2 ; case 2
	.short _02256E72 - _02256DFA - 2 ; case 3
	.short _02256E92 - _02256DFA - 2 ; case 4
	.short _02256EBC - _02256DFA - 2 ; case 5
	.short _02256ED8 - _02256DFA - 2 ; case 6
	.short _02256EEC - _02256DFA - 2 ; case 7
	.short _02256F0E - _02256DFA - 2 ; case 8
	.short _02256F28 - _02256DFA - 2 ; case 9
_02256E0E:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E2A:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E3E:
	ldr r0, [r4, #0]
	bl ov22_02257258
	ldr r0, [r4, #0]
	bl ov22_022568DC
	ldr r0, [r4, #0]
	bl ov22_02256AD4
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov22_02256948
	ldr r0, [r4, #0]
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	mov r1, #1
	sub r3, #0x2b
	bl sub_0201C63C
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E72:
	mov r1, #8
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0xd
	add r3, r1, #0
	bl ov22_02257098
	cmp r0, #0
	beq _02256F32
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E92:
	mov r0, #0x4e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	sub r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256F32
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EBC:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256ED8:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EEC:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256F04
	bl GF_AssertFail
_02256F04:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F0E:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F28:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020067D0
_02256F32:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256DE0

	thumb_func_start ov22_02256F38
ov22_02256F38: ; 0x02256F38
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r6, r0, #0
	add r4, r2, #0
	bl sub_02029F84
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r6, #0
	add r2, #0x78
	bl sub_02029FAC
	cmp r4, #0
	beq _02256F78
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02025F04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202A0EC
	add r0, r5, #0
	bl sub_020237BC
_02256F78:
	ldr r0, [sp]
	mov r5, #0
	add r7, r0, #0
	ldr r4, [r0, #0x1c]
	add r7, #0x14
	cmp r4, r7
	beq _02256F9E
_02256F86:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256F98
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02029FD0
	add r5, r5, #1
_02256F98:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256F86
_02256F9E:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	add r7, r0, #4
	cmp r4, r7
	beq _02256FC0
_02256FA8:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256FBA
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02029FD0
	add r5, r5, #1
_02256FBA:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256FA8
_02256FC0:
	ldr r1, [sp]
	add r0, r6, #0
	ldr r1, [r1, #0x74]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0202A084
	add r0, r6, #0
	bl sub_02029F5C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02256F38

	thumb_func_start ov22_02256FD8
ov22_02256FD8: ; 0x02256FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xd
	mov r1, #0xac
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02018144
	add r6, r0, #0
	bl ov22_0225764C
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r2, #0x78
	bl sub_0202A284
	cmp r4, #0
	beq _02257026
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02025F04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0202A4B4
	add r0, r5, #0
	bl sub_020237BC
_02257026:
	ldr r1, [sp]
	add r0, r6, #0
	add r1, #0x14
	mov r2, #1
	bl ov22_02257778
	ldr r1, [sp]
	add r0, r6, #0
	add r1, r1, #4
	mov r2, #0
	bl ov22_02257778
	add r0, r6, #0
	bl ov22_0225768C
	mov r4, #0
	add r5, r4, #0
_02257048:
	add r0, r6, #0
	add r1, r5, #0
	bl ov22_022576FC
	cmp r0, #1
	bne _0225706A
	add r0, r6, #0
	add r1, r5, #0
	bl ov22_022576E8
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0202A2A8
	add r4, r4, #1
_0225706A:
	add r5, r5, #1
	cmp r5, #0x15
	blt _02257048
	ldr r1, [sp]
	add r0, r7, #0
	ldr r1, [r1, #0x74]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0202A35C
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_0202A378
	add r0, r7, #0
	bl sub_0202A240
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02256FD8

	thumb_func_start ov22_02257098
ov22_02257098: ; 0x02257098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #8
	bge _022570B4
	mov r0, #0xfd
	ldr r3, [r5, #0]
	lsl r0, r0, #2
	add r0, r3, r0
	bl ov22_02257AB0
_022570B4:
	ldr r0, [r5, #8]
	cmp r0, #1
	blt _022570F2
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0x40]
	add r2, r1, #0
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #2
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl sub_0201C63C
_022570F2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, r7
	ble _02257100
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02257100:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257098

	thumb_func_start ov22_02257104
ov22_02257104: ; 0x02257104
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #0
	bl ov22_022574F4
	ldr r1, _02257188 ; =0x04000008
	mov r3, #3
	ldrh r2, [r1]
	mov r0, #2
	bic r2, r3
	orr r0, r2
	strh r0, [r1]
	ldrh r2, [r1, #2]
	mov r0, #1
	bic r2, r3
	orr r2, r0
	strh r2, [r1, #2]
	ldrh r4, [r1, #4]
	mov r2, #3
	bic r4, r3
	orr r2, r4
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bic r2, r3
	strh r2, [r1, #6]
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0
	bl sub_0200F338
	pop {r4, pc}
	nop
_02257188: .word 0x04000008
	thumb_func_end ov22_02257104

	thumb_func_start ov22_0225718C
ov22_0225718C: ; 0x0225718C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02257548
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	add r0, r4, #0
	bl ov22_022568DC
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl sub_020219A4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	thumb_func_end ov22_0225718C

	thumb_func_start ov22_022571D4
ov22_022571D4: ; 0x022571D4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x40]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #4
	strb r1, [r0, #0x11]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02015958
	add r0, r4, #0
	mov r1, #1
	bl ov22_022574CC
	ldr r0, _02257254 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02257254: .word 0x04000008
	thumb_func_end ov22_022571D4

	thumb_func_start ov22_02257258
ov22_02257258: ; 0x02257258
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	bl ov22_022574EC
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257258

	thumb_func_start ov22_02257278
ov22_02257278: ; 0x02257278
	push {r3, lr}
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020159FC
	cmp r0, #0
	beq _02257292
	cmp r0, #1
	beq _02257296
	cmp r0, #2
	beq _0225729A
	pop {r3, pc}
_02257292:
	mov r0, #4
	pop {r3, pc}
_02257296:
	mov r0, #8
	pop {r3, pc}
_0225729A:
	mov r0, #9
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02257278

	thumb_func_start ov22_022572A0
ov22_022572A0: ; 0x022572A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02257358 ; =0x000006D4
	str r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02027B50
	add r6, r0, #0
	mov r0, #0
	mov r1, #0xe0
	mov r2, #0xe
	bl sub_02002E98
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	mov r2, #3
	add r3, r7, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	ldr r1, _0225735C ; =0x000006B4
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x92
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r1]
	bl sub_0201A7E8
	ldr r0, _0225735C ; =0x000006B4
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	mov r1, #3
	mov r2, #0x74
	mov r3, #8
	bl sub_0200DD0C
	ldr r0, _0225735C ; =0x000006B4
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0x74
	mov r3, #8
	bl sub_0200E060
	ldr r2, _02257360 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	ldr r0, _02257364 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0225735C ; =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, _0225735C ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257358: .word 0x000006D4
_0225735C: .word 0x000006B4
_02257360: .word 0x00000181
_02257364: .word 0x0001020F
	thumb_func_end ov22_022572A0

	thumb_func_start ov22_02257368
ov22_02257368: ; 0x02257368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _022573E0 ; =0x000006B4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _022573E4 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	add r1, r4, #0
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	ldr r0, _022573E8 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022573E0 ; =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _022573E0 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022573E0: .word 0x000006B4
_022573E4: .word 0x00000181
_022573E8: .word 0x0001020F
	thumb_func_end ov22_02257368

	thumb_func_start ov22_022573EC
ov22_022573EC: ; 0x022573EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02257488 ; =0x000006DC
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02257400
	bl GF_AssertFail
_02257400:
	ldr r0, _0225748C ; =0x000006B4
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r2, _02257490 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	add r1, r4, #0
	add r7, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xd
	bl sub_02023790
	ldr r1, _02257488 ; =0x000006DC
	add r2, r4, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200C388
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _02257450
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027AC0
	b _02257452
_02257450:
	mov r0, #1
_02257452:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02257494 ; =0x0001020F
	ldr r2, _0225748C ; =0x000006B4
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, r2]
	add r2, #0x28
	ldr r2, [r5, r2]
	mov r1, #1
	bl sub_0201D78C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _0225748C ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257488: .word 0x000006DC
_0225748C: .word 0x000006B4
_02257490: .word 0x00000181
_02257494: .word 0x0001020F
	thumb_func_end ov22_022573EC

	thumb_func_start ov22_02257498
ov22_02257498: ; 0x02257498
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022574AC ; =0x000006DC
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022574AC ; =0x000006DC
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_022574AC: .word 0x000006DC
	thumb_func_end ov22_02257498

	thumb_func_start ov22_022574B0
ov22_022574B0: ; 0x022574B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022574C8 ; =0x000006B4
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	ldr r0, _022574C8 ; =0x000006B4
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_022574C8: .word 0x000006B4
	thumb_func_end ov22_022574B0

	thumb_func_start ov22_022574CC
ov22_022574CC: ; 0x022574CC
	push {r3, lr}
	sub sp, #8
	mov r2, #0x1b
	str r2, [sp]
	mov r2, #2
	mov r3, #1
	str r2, [sp, #4]
	bl ov22_022572A0
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_022574CC

	thumb_func_start ov22_022574E4
ov22_022574E4: ; 0x022574E4
	ldr r3, _022574E8 ; =ov22_02257368
	bx r3
	; .align 2, 0
_022574E8: .word ov22_02257368
	thumb_func_end ov22_022574E4

	thumb_func_start ov22_022574EC
ov22_022574EC: ; 0x022574EC
	ldr r3, _022574F0 ; =ov22_022574B0
	bx r3
	; .align 2, 0
_022574F0: .word ov22_022574B0
	thumb_func_end ov22_022574EC

	thumb_func_start ov22_022574F4
ov22_022574F4: ; 0x022574F4
	push {r4, lr}
	sub sp, #8
	mov r2, #0x1b
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #2
	mov r3, #0x13
	add r4, r0, #0
	bl ov22_022572A0
	mov r0, #0xd
	bl sub_0200B358
	mov r1, #0x6e
	lsl r1, r1, #4
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022574F4

	thumb_func_start ov22_0225751C
ov22_0225751C: ; 0x0225751C
	ldr r3, _02257520 ; =ov22_022573EC
	bx r3
	; .align 2, 0
_02257520: .word ov22_022573EC
	thumb_func_end ov22_0225751C

	thumb_func_start ov22_02257524
ov22_02257524: ; 0x02257524
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r3, #0x6e
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	mov r3, #2
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov22_02257524

	thumb_func_start ov22_02257540
ov22_02257540: ; 0x02257540
	ldr r3, _02257544 ; =ov22_02257498
	bx r3
	; .align 2, 0
_02257544: .word ov22_02257498
	thumb_func_end ov22_02257540

	thumb_func_start ov22_02257548
ov22_02257548: ; 0x02257548
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022574B0
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_02257548

	thumb_func_start ov22_02257564
ov22_02257564: ; 0x02257564
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257D00
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A6B8
	pop {r4, pc}
	thumb_func_end ov22_02257564

	thumb_func_start ov22_02257580
ov22_02257580: ; 0x02257580
	push {r4, lr}
	cmp r0, #3
	bhi _022575AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02257592: ; jump table
	.short _0225759A - _02257592 - 2 ; case 0
	.short _0225759E - _02257592 - 2 ; case 1
	.short _022575A2 - _02257592 - 2 ; case 2
	.short _022575A6 - _02257592 - 2 ; case 3
_0225759A:
	mov r4, #5
	b _022575AE
_0225759E:
	mov r4, #0xa
	b _022575AE
_022575A2:
	mov r4, #0xf
	b _022575AE
_022575A6:
	mov r4, #0x14
	b _022575AE
_022575AA:
	bl GF_AssertFail
_022575AE:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257580

	thumb_func_start ov22_022575B4
ov22_022575B4: ; 0x022575B4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #4
	strb r1, [r0, #0x11]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02015958
	add r0, r4, #0
	mov r1, #2
	bl ov22_022574E4
	ldr r0, _02257620 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02257620: .word 0x04000008
	thumb_func_end ov22_022575B4

	thumb_func_start ov22_02257624
ov22_02257624: ; 0x02257624
	push {r3, lr}
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020159FC
	cmp r0, #0
	beq _0225763E
	cmp r0, #1
	beq _02257642
	cmp r0, #2
	beq _02257646
	pop {r3, pc}
_0225763E:
	mov r0, #5
	pop {r3, pc}
_02257642:
	mov r0, #6
	pop {r3, pc}
_02257646:
	mov r0, #7
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02257624

	thumb_func_start ov22_0225764C
ov22_0225764C: ; 0x0225764C
	ldr r3, _02257654 ; =memset
	mov r1, #0
	mov r2, #0xac
	bx r3
	; .align 2, 0
_02257654: .word memset
	thumb_func_end ov22_0225764C

	thumb_func_start ov22_02257658
ov22_02257658: ; 0x02257658
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02257668
	bl GF_AssertFail
_02257668:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r0, r0, #3
	str r4, [r5, r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r0, r0, #3
	add r0, r5, r0
	str r6, [r0, #4]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r5, #0xa8
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257658

	thumb_func_start ov22_0225768C
ov22_0225768C: ; 0x0225768C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	mov r1, #0
	cmp r2, #0
	ble _022576E4
_0225769A:
	lsl r0, r1, #3
	add r7, r6, r0
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _022576D8
	mov r4, #0
	cmp r2, #0
	ble _022576D0
	add r5, r6, #0
_022576AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022576C2
	add r0, r7, #0
	add r1, r5, #0
	bl ov22_0225771C
	cmp r0, #1
	bne _022576C2
	mov r0, #1
	str r0, [r5, #4]
_022576C2:
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _022576AC
_022576D0:
	mov r0, #2
	str r0, [r7, #4]
	mov r1, #0
	b _022576DA
_022576D8:
	add r1, r1, #1
_022576DA:
	add r0, r6, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	cmp r1, r2
	blt _0225769A
_022576E4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225768C

	thumb_func_start ov22_022576E8
ov22_022576E8: ; 0x022576E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x15
	blo _022576F6
	bl GF_AssertFail
_022576F6:
	lsl r0, r5, #3
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576E8

	thumb_func_start ov22_022576FC
ov22_022576FC: ; 0x022576FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x15
	blo _0225770A
	bl GF_AssertFail
_0225770A:
	lsl r0, r5, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02257718
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257718:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576FC

	thumb_func_start ov22_0225771C
ov22_0225771C: ; 0x0225771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov22_02259780
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov22_02259724
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02257744:
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov22_022577EC
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov22_02259578
	cmp r0, #1
	bne _0225776A
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225776A:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02257744
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225771C

	thumb_func_start ov22_02257778
ov22_02257778: ; 0x02257778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r4, [r5, #8]
	add r6, r0, #0
	add r7, r2, #0
	cmp r4, r5
	beq _0225779C
_02257786:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257796
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov22_02257658
_02257796:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257786
_0225779C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257778

	thumb_func_start ov22_022577A0
ov22_022577A0: ; 0x022577A0
	push {r3, r4, r5, lr}
	mov r2, #0x6d
	lsl r2, r2, #4
	ldr r2, [r0, r2]
	mov r1, #0
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	bne _022577BC
	mov r2, #0x56
	lsl r2, r2, #4
	add r0, r0, r2
	bl ov22_0225A6CC
	pop {r3, r4, r5, pc}
_022577BC:
	ldrb r4, [r2, #0x14]
	ldrb r3, [r2, #0x15]
	cmp r4, r3
	bne _022577EA
	add r4, r1, #0
	add r5, r2, #0
_022577C8:
	ldrb r3, [r5, #0x10]
	cmp r3, #1
	bne _022577D0
	add r1, r1, #1
_022577D0:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #4
	blt _022577C8
	ldrb r2, [r2, #0x17]
	cmp r2, r1
	bgt _022577EA
	mov r1, #0x56
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl ov22_0225A6CC
_022577EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022577A0

	thumb_func_start ov22_022577EC
ov22_022577EC: ; 0x022577EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r0, r3, #0
	sub r0, r0, r7
	mov r1, #3
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	bl _u32_div_f
	add r1, r7, r0
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r1, [sp, #0xc]
	sub r0, r0, r6
	mov r1, #3
	bl _u32_div_f
	add r2, r6, r0
	lsl r0, r0, #1
	ldr r1, [sp, #0x28]
	add r0, r6, r0
	cmp r1, #0xf
	bhi _022578EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02257832: ; jump table
	.short _02257852 - _02257832 - 2 ; case 0
	.short _0225785A - _02257832 - 2 ; case 1
	.short _02257862 - _02257832 - 2 ; case 2
	.short _0225786A - _02257832 - 2 ; case 3
	.short _02257874 - _02257832 - 2 ; case 4
	.short _0225787E - _02257832 - 2 ; case 5
	.short _02257888 - _02257832 - 2 ; case 6
	.short _02257892 - _02257832 - 2 ; case 7
	.short _0225789E - _02257832 - 2 ; case 8
	.short _022578A8 - _02257832 - 2 ; case 9
	.short _022578B2 - _02257832 - 2 ; case 10
	.short _022578BC - _02257832 - 2 ; case 11
	.short _022578C8 - _02257832 - 2 ; case 12
	.short _022578D2 - _02257832 - 2 ; case 13
	.short _022578DC - _02257832 - 2 ; case 14
	.short _022578E6 - _02257832 - 2 ; case 15
_02257852:
	str r7, [r4, #0]
	add sp, #0x10
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225785A:
	str r7, [r4, #0]
	add sp, #0x10
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257862:
	str r7, [r4, #0]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225786A:
	ldr r0, [sp]
	str r7, [r4, #0]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257874:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225787E:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257888:
	ldr r1, [sp, #0xc]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257892:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225789E:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578A8:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578B2:
	ldr r1, [sp, #8]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578BC:
	ldr r0, [sp, #8]
	str r0, [r4, #0]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578C8:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578D2:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578DC:
	ldr r1, [sp, #4]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578E6:
	ldr r0, [sp, #4]
	str r0, [r4, #0]
	ldr r0, [sp]
	str r0, [r5, #0]
_022578EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022577EC