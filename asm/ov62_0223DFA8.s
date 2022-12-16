	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov62_0223DFA8
ov62_0223DFA8: ; 0x0223DFA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _0223E014 ; =0x02249064
	add r3, sp, #0xc
	mov r2, #0x3c
_0223DFB2:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223DFB2
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0223E018 ; =0x00002090
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0223DFD0:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	mov r6, #0
	add r5, r0, r1
_0223DFDC:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0223DFEE
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl sub_0200D4C4
_0223DFEE:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223DFDC
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0223DFD0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223E014: .word 0x02249064
_0223E018: .word 0x00002090
	thumb_func_end ov62_0223DFA8

	thumb_func_start ov62_0223E01C
ov62_0223E01C: ; 0x0223E01C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_022312CC
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	add r0, r4, r1
	add r1, r5, #0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r0, #0x47
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223F0A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223E01C

	thumb_func_start ov62_0223E0FC
ov62_0223E0FC: ; 0x0223E0FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0223E224 ; =0x000008A4
	add r4, r1, #0
	sub r0, #0x44
	ldr r3, [r5, r0]
	cmp r4, #0x64
	bne _0223E176
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [sp, #0x14]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _0223E1EE
_0223E176:
	cmp r4, #0x66
	bne _0223E1E6
	lsl r0, r2, #2
	add r1, r5, r0
	ldr r0, _0223E224 ; =0x000008A4
	sub r0, #0x18
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _0223E1EE
_0223E1E6:
	ldr r0, [r5, #0x48]
	bl sub_0200B1EC
	add r6, r0, #0
_0223E1EE:
	ldr r0, _0223E224 ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E228 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0223E224 ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _0223E224 ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E224: .word 0x000008A4
_0223E228: .word 0x000F0D0C
	thumb_func_end ov62_0223E0FC

	thumb_func_start ov62_0223E22C
ov62_0223E22C: ; 0x0223E22C
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E246
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223E246:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _0223E24E
	b _0223E3D4
_0223E24E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E25A: ; jump table
	.short _0223E264 - _0223E25A - 2 ; case 0
	.short _0223E29A - _0223E25A - 2 ; case 1
	.short _0223E2D4 - _0223E25A - 2 ; case 2
	.short _0223E31A - _0223E25A - 2 ; case 3
	.short _0223E346 - _0223E25A - 2 ; case 4
_0223E264:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223E288
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	b _0223E294
_0223E288:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_022323B8
_0223E294:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E29A:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E2BA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E2BA:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223E3FE
_0223E2D4:
	add r0, r4, #0
	mov r1, #0x75
	bl ov62_02231AAC
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _0223E404 ; =0x00002038
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, _0223E408 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E3FE
_0223E31A:
	add r0, r4, #0
	bl ov62_0224112C
	ldr r1, _0223E40C ; =0x000004D4
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, _0223E410 ; =0x00002608
	ldr r2, [r2, r1]
	add r1, r2, #0
	add r1, #0xd8
	add r2, #0xdc
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov61_0222B524
	cmp r0, #1
	bne _0223E3FE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E3FE
_0223E346:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _0223E408 ; =0x00000565
	bne _0223E380
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #8
	bl ov62_022348B8
	ldr r0, [r4, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0223E404 ; =0x00002038
	str r1, [r5, r0]
	b _0223E3B8
_0223E380:
	mov r1, #0
	bl sub_020057A4
	mov r0, #0xff
	ldr r1, _0223E404 ; =0x00002038
	str r0, [r4, #8]
	mov r2, #1
	str r2, [r5, r1]
	ldr r1, _0223E414 ; =0x0000413C
	add r2, r4, r1
	ldr r1, _0223E40C ; =0x000004D4
	ldr r1, [r4, r1]
	add r1, r2, r1
	ldr r2, _0223E418 ; =0x00000878
	str r1, [r4, r2]
	add r1, r2, #0
	add r1, #0x3c
	ldr r3, [r4, r1]
	add r1, r0, #0
	add r1, #0x85
	str r3, [r5, r1]
	add r0, #0x85
	add r2, #0x40
	add r1, r4, r2
	ldr r0, [r5, r0]
	ldr r2, _0223E41C ; =0x00001D4C
	bl sub_020C4DB0
_0223E3B8:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	b _0223E3FE
_0223E3D4:
	ldr r0, _0223E404 ; =0x00002038
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223E3F6
	ldr r0, _0223E420 ; =0x0000055F
	bl sub_02005748
	ldr r1, _0223E424 ; =0x00002034
	add r0, r4, #0
	ldr r1, [r5, r1]
	bl ov62_0222FB60
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223381C
	b _0223E3FE
_0223E3F6:
	add r0, r4, #0
	mov r1, #0x14
	bl ov62_0222FB60
_0223E3FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E404: .word 0x00002038
_0223E408: .word 0x00000565
_0223E40C: .word 0x000004D4
_0223E410: .word 0x00002608
_0223E414: .word 0x0000413C
_0223E418: .word 0x00000878
_0223E41C: .word 0x00001D4C
_0223E420: .word 0x0000055F
_0223E424: .word 0x00002034
	thumb_func_end ov62_0223E22C

	thumb_func_start ov62_0223E428
ov62_0223E428: ; 0x0223E428
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202FF44
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02030A98
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0223E428

	thumb_func_start ov62_0223E448
ov62_0223E448: ; 0x0223E448
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223E448

	thumb_func_start ov62_0223E460
ov62_0223E460: ; 0x0223E460
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E47A
	cmp r1, #1
	beq _0223E48A
	cmp r1, #2
	beq _0223E4B8
	b _0223E504
_0223E47A:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223E50A
_0223E48A:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E50A
	add r0, r5, #0
	bl ov62_02240A24
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223E50A
_0223E4B8:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E4EA
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #0
	bl ov62_0223E0FC
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E4EA:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223E50A
_0223E504:
	mov r1, #0xc
	bl ov62_0222FB60
_0223E50A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223E460

	thumb_func_start ov62_0223E510
ov62_0223E510: ; 0x0223E510
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #7
	bls _0223E524
	b _0223E736
_0223E524:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E530: ; jump table
	.short _0223E540 - _0223E530 - 2 ; case 0
	.short _0223E550 - _0223E530 - 2 ; case 1
	.short _0223E5A2 - _0223E530 - 2 ; case 2
	.short _0223E5C0 - _0223E530 - 2 ; case 3
	.short _0223E5F6 - _0223E530 - 2 ; case 4
	.short _0223E63A - _0223E530 - 2 ; case 5
	.short _0223E680 - _0223E530 - 2 ; case 6
	.short _0223E6DC - _0223E530 - 2 ; case 7
_0223E540:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E550:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E588
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r1, _0223E7F0 ; =0x00000116
	add r0, r4, #0
	mov r2, #0
	bl ov62_0223E0FC
	add r0, r4, #0
	bl ov62_022342BC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E588:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223E7E8
_0223E5A2:
	ldr r2, _0223E7F4 ; =0x000004D4
	ldr r1, _0223E7F8 ; =0x00002028
	ldr r2, [r4, r2]
	ldr r1, [r5, r1]
	add r3, r4, r2
	ldr r2, _0223E7FC ; =0x0000413C
	ldrb r2, [r3, r2]
	bl ov62_022337F0
	cmp r0, #0
	beq _0223E688
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E5C0:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0223E800 ; =0x00000565
	bl sub_02005748
	b _0223E7E8
_0223E5F6:
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E604
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E604:
	mov r1, #0x46
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0
	bl ov62_0223E0FC
	bl sub_0202FE04
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl ov62_0224112C
	add r1, r6, #0
	add r2, r5, #0
	bl ov61_0222B550
	cmp r0, #1
	bne _0223E688
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E63A:
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E648
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223E648:
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _0223E800 ; =0x00000565
	bne _0223E662
	mov r1, #0
	bl sub_020057A4
	b _0223E66E
_0223E662:
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223E804 ; =0x0000055F
	bl sub_02005748
_0223E66E:
	ldr r0, [r4, #8]
	ldr r1, _0223E808 ; =0x00000119
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov62_0223E0FC
	b _0223E7E8
_0223E680:
	bl sub_02022798
	cmp r0, #0
	bne _0223E68A
_0223E688:
	b _0223E7E8
_0223E68A:
	add r0, r4, #0
	bl ov62_02231A88
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223F038
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	bl ov62_022339A0
	add r0, r4, #0
	bl ov62_022338A8
	ldr r0, _0223E80C ; =0x0000049C
	add r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E6DC:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024034
	add r0, r4, #0
	bl ov62_0223E428
	add r5, #8
	add r0, r5, #0
	bl ov62_02231688
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #1
	mov r1, #0x66
	bl sub_020397C8
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E736:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223E7E8
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223E7B8
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	bl sub_020181C4
	bl sub_0202F250
	cmp r0, #1
	bne _0223E7E8
	bl sub_0202F22C
	b _0223E7E8
_0223E7B8:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223E7E8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E7F0: .word 0x00000116
_0223E7F4: .word 0x000004D4
_0223E7F8: .word 0x00002028
_0223E7FC: .word 0x0000413C
_0223E800: .word 0x00000565
_0223E804: .word 0x0000055F
_0223E808: .word 0x00000119
_0223E80C: .word 0x0000049C
	thumb_func_end ov62_0223E510

	thumb_func_start ov62_0223E810
ov62_0223E810: ; 0x0223E810
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E828
	cmp r1, #1
	beq _0223E886
	b _0223E8AC
_0223E828:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E86C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl sub_0200710C
	ldr r2, _0223E8B8 ; =0x00002028
	add r0, r5, #0
	ldr r2, [r4, r2]
	mov r1, #0x66
	bl ov62_0223E0FC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E86C:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223E8B2
_0223E886:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E8B2
	add r0, r5, #0
	bl ov62_02240944
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223E8B2
_0223E8AC:
	mov r1, #0xf
	bl ov62_0222FB60
_0223E8B2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E8B8: .word 0x00002028
	thumb_func_end ov62_0223E810

	thumb_func_start ov62_0223E8BC
ov62_0223E8BC: ; 0x0223E8BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r0]
	cmp r1, #3
	bls _0223E8D0
	b _0223EAD8
_0223E8D0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E8DC: ; jump table
	.short _0223E8E4 - _0223E8DC - 2 ; case 0
	.short _0223E90C - _0223E8DC - 2 ; case 1
	.short _0223E946 - _0223E8DC - 2 ; case 2
	.short _0223EA6E - _0223E8DC - 2 ; case 3
_0223E8E4:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223EB04
_0223E90C:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E92C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E92C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223EB04
_0223E946:
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223E986
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0200D364
_0223E986:
	add r0, r4, #0
	bl ov62_0224088C
	add r0, r4, #0
	bl ov62_02240900
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EA0A
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _0223EA46
_0223EA0A:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232394
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232378
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_0223EA46:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223EB04
_0223EA6E:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EABE
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EA9C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _0223EAA8
_0223EA9C:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_022323B8
_0223EAA8:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223EABE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223EB04
_0223EAD8:
	ldr r1, _0223EB0C ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223EAFC
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223EB0C ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223EAEE:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223EAEE
_0223EAFC:
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
_0223EB04:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223EB0C: .word 0x00004138
	thumb_func_end ov62_0223E8BC

	thumb_func_start ov62_0223EB10
ov62_0223EB10: ; 0x0223EB10
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223EB10

	thumb_func_start ov62_0223EB28
ov62_0223EB28: ; 0x0223EB28
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223EB3C
	b _0223ED40
_0223EB3C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223EB48: ; jump table
	.short _0223EB50 - _0223EB48 - 2 ; case 0
	.short _0223EB78 - _0223EB48 - 2 ; case 1
	.short _0223EBC8 - _0223EB48 - 2 ; case 2
	.short _0223ECD6 - _0223EB48 - 2 ; case 3
_0223EB50:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223ED6C
_0223EB78:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EBAE
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223F038
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223EBAE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223ED6C
_0223EBC8:
	bl ov62_0223E01C
	ldr r0, _0223ED74 ; =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223EC0C
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0200D364
_0223EC0C:
	add r0, r4, #0
	bl ov62_02240900
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EC7E
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _0223ECAE
_0223EC7E:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232378
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_0223ECAE:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223ED6C
_0223ECD6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223ED26
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223ED04
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _0223ED10
_0223ED04:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_022323B8
_0223ED10:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223ED26:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223ED6C
_0223ED40:
	ldr r1, _0223ED78 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223ED64
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223ED78 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223ED56:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223ED56
_0223ED64:
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
_0223ED6C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ED74: .word 0x0000086C
_0223ED78: .word 0x00004138
	thumb_func_end ov62_0223EB28

	thumb_func_start ov62_0223ED7C
ov62_0223ED7C: ; 0x0223ED7C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223ED92
	cmp r1, #1
	beq _0223EE04
	b _0223EE7E
_0223ED92:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov62_0223E428
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223EDE2
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _0223EDEE
_0223EDE2:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
_0223EDEE:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0224088C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223EE84
_0223EE04:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EE64
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #0x6f
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223F0A8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223EE64:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223EE84
_0223EE7E:
	mov r1, #3
	bl ov62_0222FB60
_0223EE84:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223ED7C

	thumb_func_start ov62_0223EE88
ov62_0223EE88: ; 0x0223EE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, _0223EF58 ; =0x0000088C
	lsl r6, r2, #2
	add r4, r5, r1
	ldr r1, [r4, r6]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r1, #0
	bne _0223EEA8
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	b _0223EF06
_0223EEA8:
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	ldr r0, [r4, r6]
	mov r1, #0x66
	bl sub_02030B94
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_022349A8
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
_0223EF06:
	add r0, sp, #0x18
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, sp, #0x18
	mov r2, #0x14
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223EF5C ; =0x000E0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x18
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r2, sp, #0x18
	mov r3, #0x66
	bl sub_02012BE0
	add r0, r4, #0
	bl sub_020237BC
	add r0, sp, #0x18
	bl sub_0201A8FC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EF58: .word 0x0000088C
_0223EF5C: .word 0x000E0D00
	thumb_func_end ov62_0223EE88

	thumb_func_start ov62_0223EF60
ov62_0223EF60: ; 0x0223EF60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r3, _0223F030 ; =0x02248FA8
	ldr r4, [r0, r1]
	str r0, [sp]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _0223F034 ; =0x02248FB8
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	mov r1, #2
	bl ov62_0223136C
	mov r0, #0x45
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, sp, #0x20
	str r0, [sp, #8]
	mov r0, #0x69
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r6, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	add r7, sp, #0x10
	str r0, [sp, #0xc]
_0223EFA6:
	ldr r0, [sp]
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #2
	bl ov62_0223118C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl ov62_0223124C
	cmp r6, #3
	beq _0223EFD8
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #1
	bl ov62_0223EE88
_0223EFD8:
	mov r0, #0x46
	ldr r2, [sp, #4]
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x32
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r7, #0]
	bl sub_0200D364
	mov r0, #0x47
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0x1c
	add r0, #0x24
	add r5, #0x1c
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223EFA6
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F030: .word 0x02248FA8
_0223F034: .word 0x02248FB8
	thumb_func_end ov62_0223EF60

	thumb_func_start ov62_0223F038
ov62_0223F038: ; 0x0223F038
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp]
	ldr r5, [r0, r1]
	mov r0, #0x45
	lsl r0, r0, #2
	mov r6, #0
	add r4, r5, r0
	add r7, r0, #4
_0223F04C:
	add r0, r4, #0
	bl ov62_022312B0
	ldr r0, [r5, r7]
	bl sub_0200D0F4
	add r6, r6, #1
	add r4, #0x1c
	add r5, #0x1c
	cmp r6, #4
	blt _0223F04C
	ldr r0, [sp]
	bl ov62_022313BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_0223F038

	thumb_func_start ov62_0223F06C
ov62_0223F06C: ; 0x0223F06C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223F06C

	thumb_func_start ov62_0223F0A8
ov62_0223F0A8: ; 0x0223F0A8
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223F0DC
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0xe8
	bl sub_0200D4C4
	b _0223F102
_0223F0DC:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020129D0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
_0223F102:
	mov r0, #0x47
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223F0A8

	thumb_func_start ov62_0223F124
ov62_0223F124: ; 0x0223F124
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223F15C ; =0x00002030
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223F152
	add r5, r6, #0
	ldr r7, _0223F15C ; =0x00002030
	add r5, #0x14
_0223F13C:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223F13C
_0223F152:
	ldr r0, _0223F15C ; =0x00002030
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F15C: .word 0x00002030
	thumb_func_end ov62_0223F124

	thumb_func_start ov62_0223F160
ov62_0223F160: ; 0x0223F160
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223F198 ; =0x0000202C
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223F18E
	add r5, r6, #0
	ldr r7, _0223F198 ; =0x0000202C
	add r5, #0x94
_0223F178:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223F178
_0223F18E:
	ldr r0, _0223F198 ; =0x0000202C
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F198: .word 0x0000202C
	thumb_func_end ov62_0223F160

	thumb_func_start ov62_0223F19C
ov62_0223F19C: ; 0x0223F19C
	push {r3, r4, r5, lr}
	ldr r1, _0223F214 ; =0x0000217C
	add r5, r0, #0
	mov r0, #0x66
	bl sub_02018144
	ldr r2, _0223F214 ; =0x0000217C
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223F1CA
	mov r0, #0
	str r0, [r4, #0xc]
	b _0223F1DE
_0223F1CA:
	add r0, r0, #1
	cmp r1, r0
	bne _0223F1D6
	mov r0, #1
	str r0, [r4, #0xc]
	b _0223F1DE
_0223F1D6:
	cmp r1, #0xc8
	bne _0223F1DE
	mov r0, #2
	str r0, [r4, #0xc]
_0223F1DE:
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223F214: .word 0x0000217C
	thumb_func_end ov62_0223F19C

	thumb_func_start ov62_0223F218
ov62_0223F218: ; 0x0223F218
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F232
	cmp r1, #1
	beq _0223F290
	cmp r1, #2
	beq _0223F2EC
	b _0223F328
_0223F232:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223F246
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F246:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223F342
_0223F290:
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223376C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F342
_0223F2EC:
	bl ov62_02233790
	cmp r0, #0
	beq _0223F342
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223E01C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F342
_0223F328:
	bl ov62_022300BC
	cmp r0, #1
	bne _0223F33A
	add r0, r5, #0
	mov r1, #0x13
	bl ov62_0222FB60
	b _0223F342
_0223F33A:
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_0223F342:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223F218

	thumb_func_start ov62_0223F348
ov62_0223F348: ; 0x0223F348
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223F362
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223F362:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _0223F36A
	b _0223F622
_0223F36A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F376: ; jump table
	.short _0223F384 - _0223F376 - 2 ; case 0
	.short _0223F3DC - _0223F376 - 2 ; case 1
	.short _0223F468 - _0223F376 - 2 ; case 2
	.short _0223F4EA - _0223F376 - 2 ; case 3
	.short _0223F50C - _0223F376 - 2 ; case 4
	.short _0223F546 - _0223F376 - 2 ; case 5
	.short _0223F57A - _0223F376 - 2 ; case 6
_0223F384:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _0223F64C ; =0x0000086C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	sub r0, r0, r1
	cmp r0, #1
	bhi _0223F3C6
	add r0, r4, #0
	sub r1, #0x15
	bl ov62_02231AAC
	b _0223F3CE
_0223F3C6:
	add r0, r4, #0
	sub r1, #8
	bl ov62_02231AAC
_0223F3CE:
	ldr r0, _0223F650 ; =0x00000565
	bl sub_02005748
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F3DC:
	ldr r0, _0223F64C ; =0x0000086C
	ldr r1, [r4, r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223F402
	mov r0, #0
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl ov62_0224112C
	bl ov61_0222B4A8
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F402:
	add r0, r0, #1
	cmp r1, r0
	bne _0223F422
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl ov62_0224112C
	bl ov61_0222B4E4
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F422:
	cmp r1, #0xc8
	bne _0223F462
	mov r0, #2
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0208BE68
	cmp r0, #1
	bne _0223F44A
	add r0, r4, #0
	bl ov62_0224112C
	bl ov61_0222B44C
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F44A:
	add r0, r4, #0
	bl ov62_0224112C
	bl ov61_0222B3EC
	cmp r0, #1
	beq _0223F45A
_0223F458:
	b _0223F644
_0223F45A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F462:
	bl sub_02022974
	b _0223F644
_0223F468:
	add r0, r4, #0
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl ov61_0222BB48
	cmp r0, #1
	ldr r0, _0223F650 ; =0x00000565
	bne _0223F49C
	mov r1, #0
	bl sub_020057A4
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #7
	bl ov62_022348B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F49C:
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223F654 ; =0x0000055F
	bl sub_02005748
	ldr r0, _0223F658 ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F4E4
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl ov62_022348B8
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _0223F4C6
	mov r1, #0x76
	b _0223F4CA
_0223F4C6:
	mov r1, #0x4b
	lsl r1, r1, #2
_0223F4CA:
	mov r0, #0x51
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F4E4:
	mov r0, #0xff
	str r0, [r4, #8]
	b _0223F644
_0223F4EA:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F50C:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223F52C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223F52C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223F644
_0223F546:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223F06C
	add r0, r4, #0
	bl ov62_0223146C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #1
	mov r1, #0x66
	bl sub_020397C8
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F57A:
	add r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223F644
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223F5F0
	add r0, r4, #0
	bl ov62_022318E8
	add r0, r5, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r4, #0
	mov r1, #5
	bl ov62_0222FB60
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	bl sub_020181C4
	b _0223F644
_0223F5F0:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223F644
_0223F622:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_0223F644:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223F64C: .word 0x0000086C
_0223F650: .word 0x00000565
_0223F654: .word 0x0000055F
_0223F658: .word 0x00004138
	thumb_func_end ov62_0223F348

	thumb_func_start ov62_0223F65C
ov62_0223F65C: ; 0x0223F65C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r3, _0223F754 ; =0x02248F8C
	add r6, r4, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r6, #0x14
	str r0, [r2, #0]
	add r0, r6, #0
	bl sub_0201A7A0
	mov r3, #3
	str r3, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r2, #2
	bl sub_0201A7E8
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0x48]
	lsl r2, r1, #2
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F758 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	add r6, r4, #0
	add r6, #0x94
	add r0, r6, #0
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	add r0, #0xf2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r3, #0xb
	bl sub_0201A7E8
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x5f
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0x50
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F758 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, _0223F75C ; =0x0000202C
	mov r1, #1
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F754: .word 0x02248F8C
_0223F758: .word 0x000F0D00
_0223F75C: .word 0x0000202C
	thumb_func_end ov62_0223F65C

	thumb_func_start ov62_0223F760
ov62_0223F760: ; 0x0223F760
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F77A
	cmp r1, #1
	bne _0223F778
	b _0223F8BA
_0223F778:
	b _0223F95A
_0223F77A:
	bl sub_0202F250
	cmp r0, #0
	beq _0223F786
	bl sub_0202F22C
_0223F786:
	ldr r0, _0223F968 ; =0x00002054
	ldr r3, _0223F96C ; =0x02248FD8
	add r2, r4, r0
	mov r6, #5
_0223F78E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223F78E
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r0, _0223F968 ; =0x00002054
	str r1, [r4, r0]
	ldr r1, _0223F970 ; =0x00004138
	add r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov62_022339DC
	mov r0, #0x66
	bl ov62_02233A68
	mov r1, #0x82
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x7d
	lsl r0, r0, #2
	add r1, #8
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ov62_022343B8
	mov r1, #7
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223F0A8
	add r0, r5, #0
	bl ov62_0223F65C
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, _0223F974 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022335B0
	ldr r0, _0223F978 ; =0x0000049C
	ldr r3, _0223F968 ; =0x00002054
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0
	add r3, r4, r3
	bl ov62_02232594
	ldr r1, _0223F97C ; =0x000004E4
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x68
	sub r1, #0x48
	add r0, r5, r0
	add r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223F978 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov62_0223331C
	ldr r0, _0223F978 ; =0x0000049C
	mov r1, #0x40
	add r0, r5, r0
	mov r2, #0xb8
	bl ov62_02233434
	ldr r0, _0223F978 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_02233064
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02240BF4
	add r0, r5, #0
	mov r1, #0
	bl ov62_02240D98
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F960
_0223F8BA:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223F928
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #1
	bl ov62_02240D98
	ldr r3, _0223F980 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x4c
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov62_02234358
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F928:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223F960
_0223F95A:
	mov r1, #4
	bl ov62_0222FB60
_0223F960:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F968: .word 0x00002054
_0223F96C: .word 0x02248FD8
_0223F970: .word 0x00004138
_0223F974: .word 0x0000047C
_0223F978: .word 0x0000049C
_0223F97C: .word 0x000004E4
_0223F980: .word 0x000004D8
	thumb_func_end ov62_0223F760

	thumb_func_start ov62_0223F984
ov62_0223F984: ; 0x0223F984
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F9A0
	cmp r1, #1
	beq _0223FA2E
	cmp r1, #2
	bne _0223F99E
	b _0223FAA8
_0223F99E:
	b _0223FB42
_0223F9A0:
	ldr r0, _0223FB50 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223FB54 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223FB54 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_02233064
	ldr r2, _0223FB58 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x4c
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8EC
	add r0, r5, #0
	bl ov62_02240E30
	ldr r0, _0223FB5C ; =0x02248F7C
	bl sub_02022760
	cmp r0, #0
	beq _0223FA0E
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, _0223FB60 ; =0x000004D4
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0223FB64 ; =0x00002608
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223FA0E
	ldr r0, _0223FB68 ; =0x00002034
	mov r1, #6
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223FA0E:
	ldr r0, _0223FB6C ; =0x02248F80
	bl sub_02022760
	cmp r0, #0
	bne _0223FA1A
	b _0223FB4A
_0223FA1A:
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, _0223FB68 ; =0x00002034
	mov r1, #5
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FB4A
_0223FA2E:
	ldr r0, _0223FB50 ; =0x0000047C
	add r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223FB54 ; =0x0000049C
	add r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223FB54 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov62_022334FC
	mov r0, #0x82
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov62_02233A74
	add r0, r5, #0
	bl ov62_02240DDC
	add r0, r5, #0
	bl ov62_02233A44
	add r0, r5, #0
	bl ov62_0223F124
	add r0, r5, #0
	bl ov62_0223F160
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0208B9E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _0223FB68 ; =0x00002034
	ldr r0, [r4, r0]
	cmp r0, #5
	bne _0223FAA2
	ldr r0, _0223FB50 ; =0x0000047C
	add r0, r5, r0
	bl ov62_022335F4
	ldr r0, _0223FB54 ; =0x0000049C
	add r0, r5, r0
	bl ov62_02233310
	ldr r0, _0223FB70 ; =0x00002084
	mov r1, #0
	str r1, [r4, r0]
_0223FAA2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223FAA8:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FB10
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223F0A8
	ldr r0, _0223FB68 ; =0x00002034
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _0223FB0A
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
_0223FB0A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223FB10:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223FB4A
_0223FB42:
	ldr r1, _0223FB68 ; =0x00002034
	ldr r1, [r4, r1]
	bl ov62_0222FB60
_0223FB4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FB50: .word 0x0000047C
_0223FB54: .word 0x0000049C
_0223FB58: .word 0x000004D8
_0223FB5C: .word 0x02248F7C
_0223FB60: .word 0x000004D4
_0223FB64: .word 0x00002608
_0223FB68: .word 0x00002034
_0223FB6C: .word 0x02248F80
_0223FB70: .word 0x00002084
	thumb_func_end ov62_0223F984

	thumb_func_start ov62_0223FB74
ov62_0223FB74: ; 0x0223FB74
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223FB8E
	cmp r1, #1
	beq _0223FBA6
	cmp r1, #2
	beq _0223FBF6
	b _0223FC1C
_0223FB8E:
	bl ov62_0223F124
	add r0, r5, #0
	bl ov62_0223F160
	add r0, r5, #0
	bl ov62_02231B8C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FCC0
_0223FBA6:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FBDC
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223F06C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223FBDC:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223FCC0
_0223FBF6:
	add r4, #8
	add r0, r4, #0
	bl ov62_02231688
	add r0, r5, #0
	bl ov62_0223146C
	mov r0, #1
	mov r1, #0x66
	bl sub_020397C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FCC0
_0223FC1C:
	bl ov62_02233790
	cmp r0, #0
	beq _0223FCC0
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223FC90
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_020181C4
	b _0223FCC0
_0223FC90:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223FCC0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223FB74

	thumb_func_start ov62_0223FCC4
ov62_0223FCC4: ; 0x0223FCC4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223FCD6
	b _0223FE06
_0223FCD6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FCE2: ; jump table
	.short _0223FCEA - _0223FCE2 - 2 ; case 0
	.short _0223FCFA - _0223FCE2 - 2 ; case 1
	.short _0223FD48 - _0223FCE2 - 2 ; case 2
	.short _0223FDAA - _0223FCE2 - 2 ; case 3
_0223FCEA:
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FCFA:
	bl ov62_02240B94
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE14 ; =0x02248FC8
	ldr r2, _0223FE18 ; =ov62_02240A50
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE1C ; =0x02248F98
	ldr r2, _0223FE20 ; =ov62_02240AEC
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE24 ; =0x02248F84
	ldr r2, _0223FE28 ; =ov62_02240B5C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FD48:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FDAA:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FDEC
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02240900
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223FDEC:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223FE0E
_0223FE06:
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
_0223FE0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FE14: .word 0x02248FC8
_0223FE18: .word ov62_02240A50
_0223FE1C: .word 0x02248F98
_0223FE20: .word ov62_02240AEC
_0223FE24: .word 0x02248F84
_0223FE28: .word ov62_02240B5C
	thumb_func_end ov62_0223FCC4

	thumb_func_start ov62_0223FE2C
ov62_0223FE2C: ; 0x0223FE2C
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_0223FE2C

	thumb_func_start ov62_0223FE44
ov62_0223FE44: ; 0x0223FE44
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bls _0223FE56
	b _0223FF74
_0223FE56:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FE62: ; jump table
	.short _0223FE6A - _0223FE62 - 2 ; case 0
	.short _0223FEA8 - _0223FE62 - 2 ; case 1
	.short _0223FEC0 - _0223FE62 - 2 ; case 2
	.short _0223FF2C - _0223FE62 - 2 ; case 3
_0223FE6A:
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FE84
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _0223FE90
_0223FE84:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
_0223FE90:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FEA8:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FF8C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FEC0:
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FEF0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232378
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov62_022343B8
	b _0223FF1C
_0223FEF0:
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov62_022343B8
_0223FF1C:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FF2C:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FF8C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FF50
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov62_022323B8
	b _0223FF5C
_0223FF50:
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl ov62_0223427C
_0223FF5C:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FF74:
	ldr r1, [r4, #0x10]
	mov r0, #1
	eor r1, r0
	str r1, [r4, #0x10]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_022408A8
	add r0, r5, #0
	mov r1, #7
	bl ov62_0222FB60
_0223FF8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223FE44

	thumb_func_start ov62_0223FF90
ov62_0223FF90: ; 0x0223FF90
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223FFAC
	cmp r1, #1
	beq _0223FFCC
	cmp r1, #2
	beq _0223FFDC
	b _0224006E
_0223FFAC:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0223FFCC:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224007A
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0223FFDC:
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FFF6
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02234228
	b _02240002
_0223FFF6:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov62_02232394
_02240002:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r5, #0
	bl ov62_0223E428
	add r0, r5, #0
	bl ov62_0224088C
	add r0, r5, #0
	bl ov62_022410F0
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022314A8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl ov62_022300C8
	ldr r0, _02240080 ; =0x00000868
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0208BA84
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0224006E:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224007A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02240080: .word 0x00000868
	thumb_func_end ov62_0223FF90

	thumb_func_start ov62_02240084
ov62_02240084: ; 0x02240084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02240098
	b _022402B8
_02240098:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022400A4: ; jump table
	.short _022400B0 - _022400A4 - 2 ; case 0
	.short _0224017E - _022400A4 - 2 ; case 1
	.short _022401CC - _022400A4 - 2 ; case 2
	.short _0224022E - _022400A4 - 2 ; case 3
	.short _0224028A - _022400A4 - 2 ; case 4
	.short _022402A8 - _022400A4 - 2 ; case 5
_022400B0:
	bl ov62_02234314
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	bl ov62_022315C8
	ldr r0, _022402D4 ; =0x00004138
	mov r2, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _022400E4
	mov r0, #0x9a
	lsl r0, r0, #6
	add r7, r0, #0
	add r3, r4, r0
	ldr r0, _022402D4 ; =0x00004138
	add r6, r4, #0
	sub r7, #0x78
_022400D6:
	str r3, [r6, r7]
	ldr r1, [r4, r0]
	add r2, r2, #1
	add r3, #0xe4
	add r6, r6, #4
	cmp r2, r1
	blt _022400D6
_022400E4:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0200D364
	mov r1, #0x7d
	ldr r0, _022402D8 ; =0x00002088
	lsl r1, r1, #2
	str r1, [r5, r0]
	ldr r1, _022402DC ; =0x000004A4
	sub r0, r0, #4
	ldrsh r1, [r4, r1]
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_0224017E:
	bl ov62_02240B94
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022402E0 ; =0x02248FC8
	ldr r2, _022402E4 ; =ov62_02240A50
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022402E8 ; =0x02248F98
	ldr r2, _022402EC ; =ov62_02240AEC
	mov r1, #4
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _022402F0 ; =0x02248F84
	ldr r2, _022402F4 ; =ov62_02240B5C
	mov r1, #2
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022401CC:
	mov r1, #1
	bl ov62_02234540
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_0224022E:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240270
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02240900
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240270:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _022402CE
_0224028A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022402A8:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022402CE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022402B8:
	ldr r0, _022402F8 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_02230098
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
_022402CE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022402D4: .word 0x00004138
_022402D8: .word 0x00002088
_022402DC: .word 0x000004A4
_022402E0: .word 0x02248FC8
_022402E4: .word ov62_02240A50
_022402E8: .word 0x02248F98
_022402EC: .word ov62_02240AEC
_022402F0: .word 0x02248F84
_022402F4: .word ov62_02240B5C
_022402F8: .word 0x000006D8
	thumb_func_end ov62_02240084

	thumb_func_start ov62_022402FC
ov62_022402FC: ; 0x022402FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r1, _022403F0 ; =0x000008A4
	add r5, r0, #0
	sub r1, #0x44
	ldr r6, [r5, r1]
	mov r1, #2
	bl ov62_022302A8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _022403F0 ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, _022403F0 ; =0x000008A4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r1
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	cmp r4, #0x64
	bne _022403B0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	str r0, [sp, #0x14]
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	b _022403BA
_022403B0:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl sub_0200B1EC
	add r6, r0, #0
_022403BA:
	ldr r0, _022403F0 ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022403F4 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _022403F0 ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _022403F0 ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022403F0: .word 0x000008A4
_022403F4: .word 0x000F0D0C
	thumb_func_end ov62_022402FC

	thumb_func_start ov62_022403F8
ov62_022403F8: ; 0x022403F8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	bl sub_0202FE04
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02240424
	b _02240758
_02240424:
	cmp r0, #6
	bls _0224042A
	b _0224072A
_0224042A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240436: ; jump table
	.short _02240444 - _02240436 - 2 ; case 0
	.short _022404A8 - _02240436 - 2 ; case 1
	.short _02240508 - _02240436 - 2 ; case 2
	.short _02240518 - _02240436 - 2 ; case 3
	.short _02240550 - _02240436 - 2 ; case 4
	.short _022405A0 - _02240436 - 2 ; case 5
	.short _022406C0 - _02240436 - 2 ; case 6
_02240444:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240460
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	b _0224046C
_02240460:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232394
_0224046C:
	add r0, r4, #0
	bl ov62_0224088C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022410F0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022404A8:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022404EE
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223EF60
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022404EE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02240884
_02240508:
	ldr r1, _0224082C ; =0x00000115
	add r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_02240518:
	bl sub_02022798
	cmp r0, #0
	bne _02240522
	b _02240884
_02240522:
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_02240550:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240586
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223F038
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240586:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02240884
_022405A0:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223E01C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, _02240830 ; =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022405F6
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov62_0223124C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0200D364
_022405F6:
	add r0, r4, #0
	bl ov62_02240900
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240668
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234214
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov62_0223427C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	b _02240698
_02240668:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232378
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov62_022323B8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl sub_0200710C
_02240698:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022406C0:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240710
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _022406EE
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov62_0223427C
	b _022406FA
_022406EE:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov62_022323B8
_022406FA:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240710:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02240884
_0224072A:
	ldr r1, _02240834 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0224074E
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _02240834 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_02240740:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _02240740
_0224074E:
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
	b _02240884
_02240758:
	cmp r0, #0
	beq _02240766
	cmp r0, #1
	beq _022407CA
	cmp r0, #2
	beq _02240838
	b _0224087C
_02240766:
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240782
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02234228
	b _0224078E
_02240782:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov62_02232394
_0224078E:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_022410F0
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0224088C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022407CA:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240810
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_0223EF60
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240810:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02240884
	nop
_0224082C: .word 0x00000115
_02240830: .word 0x0000086C
_02240834: .word 0x00004138
_02240838:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02240862
	add r0, r4, #0
	mov r1, #0x64
	mov r2, #0
	bl ov62_022402FC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240862:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02240884
_0224087C:
	add r0, r4, #0
	mov r1, #0xc
	bl ov62_0222FB60
_02240884:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_022403F8

	thumb_func_start ov62_0224088C
ov62_0224088C: ; 0x0224088C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201ACF4
	add r4, #0x94
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0224088C

	thumb_func_start ov62_022408A8
ov62_022408A8: ; 0x022408A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r1, #0
	add r4, #0x94
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022408FC ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022408FC: .word 0x000F0D00
	thumb_func_end ov62_022408A8

	thumb_func_start ov62_02240900
ov62_02240900: ; 0x02240900
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r4, #0
	add r6, #0x94
	add r0, r6, #0
	bl sub_0201A7A0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r2, #6
	mov r3, #8
	bl sub_0201A7E8
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_022408A8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov62_02240900

	thumb_func_start ov62_02240944
ov62_02240944: ; 0x02240944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r4, #0
	add r6, #0x94
	add r0, r6, #0
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r3, #4
	bl sub_0201A7E8
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240A20 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0201A9A4
	add r4, #0xa4
	add r0, r4, #0
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	mov r3, #0x12
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240A20 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02240A20: .word 0x000F0D00
	thumb_func_end ov62_02240944

	thumb_func_start ov62_02240A24
ov62_02240A24: ; 0x02240A24
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0xa4
	bl sub_0201ACF4
	add r4, #0xa4
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02240A24

	thumb_func_start ov62_02240A50
ov62_02240A50: ; 0x02240A50
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r5, [r4, r2]
	cmp r1, #0
	bne _02240AE4
	cmp r0, #3
	bhi _02240AE4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240A6E: ; jump table
	.short _02240A76 - _02240A6E - 2 ; case 0
	.short _02240A86 - _02240A6E - 2 ; case 1
	.short _02240AAE - _02240A6E - 2 ; case 2
	.short _02240AD6 - _02240A6E - 2 ; case 3
_02240A76:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #8
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240A86:
	add r0, r4, #0
	bl ov62_02234520
	bl sub_0202F250
	cmp r0, #0
	beq _02240A9E
	add r0, r4, #0
	mov r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240A9E:
	ldr r0, _02240AE8 ; =0x00002034
	mov r1, #9
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AAE:
	add r0, r4, #0
	bl ov62_02234520
	bl sub_0202F250
	cmp r0, #0
	beq _02240AC6
	add r0, r4, #0
	mov r1, #0xb
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AC6:
	ldr r0, _02240AE8 ; =0x00002034
	mov r1, #0xb
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AD6:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0xa
	bl ov62_0222FB60
_02240AE4:
	pop {r3, r4, r5, pc}
	nop
_02240AE8: .word 0x00002034
	thumb_func_end ov62_02240A50

	thumb_func_start ov62_02240AEC
ov62_02240AEC: ; 0x02240AEC
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02240B54
	cmp r0, #3
	bhi _02240B54
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02240B0A: ; jump table
	.short _02240B12 - _02240B0A - 2 ; case 0
	.short _02240B12 - _02240B0A - 2 ; case 1
	.short _02240B12 - _02240B0A - 2 ; case 2
	.short _02240B40 - _02240B0A - 2 ; case 3
_02240B12:
	add r1, r0, #1
	ldr r0, _02240B58 ; =0x00002028
	add r2, #0x2c
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02240B30
	add r0, r4, #0
	mov r1, #0xe
	bl ov62_0222FB60
	b _02240B38
_02240B30:
	add r0, r4, #0
	mov r1, #0x11
	bl ov62_0222FB60
_02240B38:
	add r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02240B40:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_02231A88
	add r0, r4, #0
	mov r1, #0xd
	bl ov62_0222FB60
_02240B54:
	pop {r4, pc}
	nop
_02240B58: .word 0x00002028
	thumb_func_end ov62_02240AEC

	thumb_func_start ov62_02240B5C
ov62_02240B5C: ; 0x02240B5C
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _02240B92
	cmp r0, #0
	beq _02240B6E
	cmp r0, #1
	beq _02240B84
	pop {r4, pc}
_02240B6E:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_02240A24
	add r0, r4, #0
	mov r1, #0x11
	bl ov62_0222FB60
	pop {r4, pc}
_02240B84:
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	mov r1, #0x10
	bl ov62_0222FB60
_02240B92:
	pop {r4, pc}
	thumb_func_end ov62_02240B5C

	thumb_func_start ov62_02240B94
ov62_02240B94: ; 0x02240B94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x66
	bl sub_02030A80
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02240BEC ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _02240BF0 ; =0x00002608
	ldr r0, [r2, r0]
	bl ov61_0222AFC0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #0x8c
	str r1, [r4, r0]
	mov r0, #0x66
	bl sub_0202FF2C
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02240BEC ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _02240BF0 ; =0x00002608
	ldr r0, [r2, r0]
	mov r2, #0x64
	add r0, #0x80
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	nop
_02240BEC: .word 0x000004D4
_02240BF0: .word 0x00002608
	thumb_func_end ov62_02240B94

	thumb_func_start ov62_02240BF4
ov62_02240BF4: ; 0x02240BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r1, _02240D80 ; =0x000004A4
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r5, _02240D84 ; =0x02249034
	ldrsh r2, [r0, r1]
	add r4, sp, #0x50
	mov r3, #6
_02240C0E:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _02240C0E
	mov r1, #0
	add r0, sp, #0x38
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	add r0, sp, #0x20
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [sp, #8]
	lsl r1, r2, #2
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_02240C42:
	ldr r1, _02240D88 ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02240C4E
	b _02240D5C
_02240C4E:
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240C5C
	mov r0, #1
	b _02240C5E
_02240C5C:
	mov r0, #0
_02240C5E:
	mov r7, #0
	add r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	add r3, r7, #0
_02240C68:
	stmia r2!, {r3}
	add r1, r1, #1
	stmia r4!, {r3}
	cmp r1, #6
	blt _02240C68
	mov r1, #0x18
	mul r1, r0
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	add r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_02240C80:
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 ; =0x00002608
	ldr r6, [r0, #0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _02240CA6
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_02240CA6:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #3
	blt _02240C80
	ldr r1, _02240D88 ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240CC0
	mov r7, #3
_02240CC0:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	add r0, r1, r0
	lsl r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	mov r3, #3
	add r0, #0xc
	add r1, r1, r4
	add r2, r2, r4
_02240CD4:
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 ; =0x00002608
	ldr r6, [r0, #0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _02240CFA
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_02240CFA:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #6
	blt _02240CD4
	ldr r5, [sp, #0xc]
	mov r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_02240D0A:
	ldr r2, [sp, #0x14]
	ldr r1, _02240D8C ; =0x00002088
	ldr r3, [r6, #0]
	ldr r2, [r2, r1]
	ldr r0, [r4, #0]
	add r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	mov r0, #0
	mov r1, #0x82
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldr r2, _02240D90 ; =0x0000208C
	ldr r0, [sp, #8]
	ldr r2, [r5, r2]
	bl ov62_02233A7C
	ldr r1, _02240D94 ; =0x00002090
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02240D44
	mov r1, #6
	sub r1, r1, r7
	bl sub_0200D474
_02240D44:
	ldr r1, [sp, #0x14]
	ldr r0, _02240D8C ; =0x00002088
	add r7, r7, #1
	ldr r0, [r1, r0]
	add r6, r6, #4
	add r2, r0, #1
	ldr r0, _02240D8C ; =0x00002088
	add r4, r4, #4
	add r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _02240D0A
_02240D5C:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _02240D74
	b _02240C42
_02240D74:
	ldr r0, [sp, #8]
	bl ov62_0223DFA8
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240D80: .word 0x000004A4
_02240D84: .word 0x02249034
_02240D88: .word 0x00002608
_02240D8C: .word 0x00002088
_02240D90: .word 0x0000208C
_02240D94: .word 0x00002090
	thumb_func_end ov62_02240BF4

	thumb_func_start ov62_02240D98
ov62_02240D98: ; 0x02240D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _02240DD8 ; =0x00002090
	str r0, [sp]
_02240DAC:
	ldr r5, [sp]
	mov r4, #0
_02240DB0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02240DBC
	add r1, r6, #0
	bl sub_0200D3F4
_02240DBC:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _02240DB0
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02240DAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240DD8: .word 0x00002090
	thumb_func_end ov62_02240D98

	thumb_func_start ov62_02240DDC
ov62_02240DDC: ; 0x02240DDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r7, #0
	str r0, [sp]
_02240DF0:
	ldr r5, [sp]
	mov r4, #0
_02240DF4:
	ldr r0, _02240E28 ; =0x00002090
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _02240E0A
	ldr r1, _02240E2C ; =0x0000208C
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl ov62_02233B24
	ldr r0, _02240E28 ; =0x00002090
	str r7, [r5, r0]
_02240E0A:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _02240DF4
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02240DF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240E28: .word 0x00002090
_02240E2C: .word 0x0000208C
	thumb_func_end ov62_02240DDC

	thumb_func_start ov62_02240E30
ov62_02240E30: ; 0x02240E30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	mov r1, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r1, sp, #0x8c
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0x86
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	ldr r2, _022410CC ; =0x00002084
	str r1, [sp, #0x1c]
	ldr r3, [r1, r2]
	ldr r2, _022410D0 ; =0x000004A4
	add r1, r0, #0
	ldrsh r1, [r1, r2]
	str r0, [sp, #8]
	cmp r3, r1
	bne _02240E64
	b _022410C6
_02240E64:
	mov r1, #1
	bl ov62_02234540
	ldr r1, _022410CC ; =0x00002084
	ldr r0, [sp, #0x1c]
	ldr r2, [r0, r1]
	ldr r1, _022410D0 ; =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _02240E7E
	mov r0, #4
	str r0, [sp, #0x20]
_02240E7E:
	ldr r0, [sp, #0x20]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r6, #0
	add r4, r0, r1
	add r5, sp, #0x8c
	add r7, r6, #0
_02240E8E:
	ldr r0, _022410D4 ; =0x00002090
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02240EAA
	ldr r1, _022410D8 ; =0x0000208C
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl ov62_02233B40
	ldr r0, _022410D8 ; =0x0000208C
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	ldr r0, _022410D4 ; =0x00002090
	str r7, [r4, r0]
_02240EAA:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _02240E8E
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02240EF4
	ldr r2, _022410DC ; =0x00002060
	ldr r7, [sp, #0x1c]
	mov r0, #4
	add r3, r2, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r3, #0x30
	sub r4, r2, #4
	add r5, #0x2c
_02240ECE:
	mov r0, #0
	add r1, r7, #0
_02240ED2:
	ldr r6, [r1, r2]
	add r0, r0, #1
	str r6, [r1, r3]
	ldr r6, [r1, r4]
	str r6, [r1, r5]
	add r1, #8
	cmp r0, #6
	blt _02240ED2
	ldr r0, [sp, #0xc]
	sub r7, #0x30
	sub r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #1
	bge _02240ECE
	mov r0, #0
	str r0, [sp, #0x10]
	b _02240F2C
_02240EF4:
	ldr r6, _022410D4 ; =0x00002090
	ldr r7, [sp, #0x1c]
	mov r0, #1
	add r2, r6, #0
	add r4, r6, #0
	mov ip, r0
	add r7, #0x30
	sub r2, #0x30
	sub r3, r6, #4
	sub r4, #0x34
_02240F08:
	mov r1, #0
	add r0, r7, #0
_02240F0C:
	ldr r5, [r0, r6]
	add r1, r1, #1
	str r5, [r0, r2]
	ldr r5, [r0, r3]
	str r5, [r0, r4]
	add r0, #8
	cmp r1, #6
	blt _02240F0C
	mov r0, ip
	add r0, r0, #1
	add r7, #0x30
	mov ip, r0
	cmp r0, #5
	blt _02240F08
	mov r0, #4
	str r0, [sp, #0x10]
_02240F2C:
	ldr r1, _022410D0 ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r5, _022410E0 ; =0x02249004
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x5c
	add r2, r1, r0
	mov r3, #6
_02240F3C:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _02240F3C
	add r0, sp, #0x44
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	add r0, sp, #0x2c
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	lsl r0, r2, #2
	str r0, [sp, #0x14]
	ldr r1, _022410E4 ; =0x00002608
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240F7E
	mov r4, #1
_02240F7E:
	mov r0, #0
	str r0, [sp, #0x18]
	add r1, sp, #0x44
	add r2, sp, #0x2c
	add r6, r0, #0
_02240F88:
	stmia r1!, {r6}
	add r0, r0, #1
	stmia r2!, {r6}
	cmp r0, #6
	blt _02240F88
	mov r0, #0x18
	mul r0, r4
	add r1, sp, #0x5c
	add r2, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x44
	add r5, sp, #0x2c
	add r4, r1, r0
_02240FA6:
	ldr r0, _022410E4 ; =0x00002608
	ldr r7, [r2, #0]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02240FCC
	stmia r3!, {r0}
	ldr r0, _022410E4 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02240FCC:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #3
	blt _02240FA6
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240FE8
	mov r0, #3
	str r0, [sp, #0x18]
_02240FE8:
	ldr r0, [sp, #0x28]
	add r1, sp, #0x5c
	add r2, r1, r0
	ldr r0, [sp, #0x18]
	mov r6, #3
	lsl r1, r0, #2
	add r0, sp, #0x44
	add r3, r0, r1
	add r0, sp, #0x2c
	add r2, #0xc
	add r5, r0, r1
_02240FFE:
	ldr r0, _022410E4 ; =0x00002608
	ldr r7, [r2, #0]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02241024
	stmia r3!, {r0}
	ldr r0, _022410E4 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02241024:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #6
	blt _02240FFE
	ldr r0, [sp, #0x10]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r5, #0
	add r7, sp, #0x44
	add r6, sp, #0x2c
	add r4, r0, r1
_0224103C:
	ldr r2, [sp, #0x1c]
	ldr r1, _022410E8 ; =0x00002088
	ldr r3, [r7, #0]
	ldr r2, [r2, r1]
	ldr r0, [r6, #0]
	add r1, r1, #4
	str r2, [r4, r1]
	str r0, [sp]
	mov r0, #0
	mov r1, #0x82
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldr r2, _022410D8 ; =0x0000208C
	ldr r0, [sp, #8]
	ldr r2, [r4, r2]
	bl ov62_02233A7C
	ldr r1, _022410D4 ; =0x00002090
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241076
	mov r1, #6
	sub r1, r1, r5
	bl sub_0200D474
_02241076:
	ldr r1, [sp, #0x1c]
	ldr r0, _022410E8 ; =0x00002088
	add r5, r5, #1
	ldr r0, [r1, r0]
	add r7, r7, #4
	add r2, r0, #1
	ldr r0, _022410E8 ; =0x00002088
	add r6, r6, #4
	add r4, #8
	str r2, [r1, r0]
	cmp r5, #6
	blt _0224103C
	ldr r0, [sp, #8]
	bl ov62_0223DFA8
	ldr r1, _022410D0 ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r6, _022410EC ; =0x000186A0
	ldrsh r2, [r0, r1]
	ldr r1, _022410CC ; =0x00002084
	ldr r0, [sp, #0x1c]
	mov r5, #0
	str r2, [r0, r1]
	add r4, sp, #0x8c
_022410A6:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _022410B6
	ldr r0, [sp, #8]
	add r1, r1, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D070
_022410B6:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _022410A6
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov62_02234540
_022410C6:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	nop
_022410CC: .word 0x00002084
_022410D0: .word 0x000004A4
_022410D4: .word 0x00002090
_022410D8: .word 0x0000208C
_022410DC: .word 0x00002060
_022410E0: .word 0x02249004
_022410E4: .word 0x00002608
_022410E8: .word 0x00002088
_022410EC: .word 0x000186A0
	thumb_func_end ov62_02240E30

	thumb_func_start ov62_022410F0
ov62_022410F0: ; 0x022410F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_022410F0

	.rodata


	.global Unk_ov62_02248F7C
Unk_ov62_02248F7C: ; 0x02248F7C
	.incbin "incbin/overlay62_rodata.bin", 0x850, 0x854 - 0x850

	.global Unk_ov62_02248F80
Unk_ov62_02248F80: ; 0x02248F80
	.incbin "incbin/overlay62_rodata.bin", 0x854, 0x858 - 0x854

	.global Unk_ov62_02248F84
Unk_ov62_02248F84: ; 0x02248F84
	.incbin "incbin/overlay62_rodata.bin", 0x858, 0x860 - 0x858

	.global Unk_ov62_02248F8C
Unk_ov62_02248F8C: ; 0x02248F8C
	.incbin "incbin/overlay62_rodata.bin", 0x860, 0x86C - 0x860

	.global Unk_ov62_02248F98
Unk_ov62_02248F98: ; 0x02248F98
	.incbin "incbin/overlay62_rodata.bin", 0x86C, 0x87C - 0x86C

	.global Unk_ov62_02248FA8
Unk_ov62_02248FA8: ; 0x02248FA8
	.incbin "incbin/overlay62_rodata.bin", 0x87C, 0x88C - 0x87C

	.global Unk_ov62_02248FB8
Unk_ov62_02248FB8: ; 0x02248FB8
	.incbin "incbin/overlay62_rodata.bin", 0x88C, 0x89C - 0x88C

	.global Unk_ov62_02248FC8
Unk_ov62_02248FC8: ; 0x02248FC8
	.incbin "incbin/overlay62_rodata.bin", 0x89C, 0x8AC - 0x89C

	.global Unk_ov62_02248FD8
Unk_ov62_02248FD8: ; 0x02248FD8
	.incbin "incbin/overlay62_rodata.bin", 0x8AC, 0x8D8 - 0x8AC

	.global Unk_ov62_02249004
Unk_ov62_02249004: ; 0x02249004
	.incbin "incbin/overlay62_rodata.bin", 0x8D8, 0x908 - 0x8D8

	.global Unk_ov62_02249034
Unk_ov62_02249034: ; 0x02249034
	.incbin "incbin/overlay62_rodata.bin", 0x908, 0x938 - 0x908

	.global Unk_ov62_02249064
Unk_ov62_02249064: ; 0x02249064
	.incbin "incbin/overlay62_rodata.bin", 0x938, 0x9B0 - 0x938

	.global Unk_ov62_022490DC
Unk_ov62_022490DC: ; 0x022490DC
	.incbin "incbin/overlay62_rodata.bin", 0x9B0, 0x54

