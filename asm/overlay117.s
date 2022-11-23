	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov117_02260440
ov117_02260440: ; 0x02260440
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6e
	lsl r2, r0, #0x11
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x40
	mov r2, #0x6e
	bl sub_0200681C
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, r5, #0
	bl ov117_022605D8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02260440

	thumb_func_start ov117_02260474
ov117_02260474: ; 0x02260474
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r6, r0, #0
	add r0, r5, #0
	bl ov117_02260630
	cmp r0, #1
	bne _02260496
	mov r0, #1
	pop {r4, r5, r6, pc}
_02260496:
	ldr r0, [r4, #0]
	cmp r0, #8
	bls _0226049E
	b _022605B0
_0226049E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022604AA: ; jump table
	.short _022604BC - _022604AA - 2 ; case 0
	.short _022604D8 - _022604AA - 2 ; case 1
	.short _022604F4 - _022604AA - 2 ; case 2
	.short _02260510 - _022604AA - 2 ; case 3
	.short _0226052C - _022604AA - 2 ; case 4
	.short _02260554 - _022604AA - 2 ; case 5
	.short _0226057A - _022604AA - 2 ; case 6
	.short _02260590 - _022604AA - 2 ; case 7
	.short _022605B0 - _022604AA - 2 ; case 8
_022604BC:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x31
	strb r1, [r0]
	ldr r0, _022605B8 ; =0x02266908
	add r1, r5, #0
	mov r2, #0x6e
	bl sub_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_022604D8:
	ldr r0, [r5, #0x28]
	bl sub_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl sub_02006814
	mov r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_022604F4:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x31
	strb r1, [r0]
	ldr r0, _022605BC ; =0x022668F8
	add r1, r5, #0
	mov r2, #0x6e
	bl sub_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_02260510:
	ldr r0, [r5, #0x28]
	bl sub_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl sub_02006814
	mov r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_0226052C:
	add r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260538
	bl ov4_021D1F18
_02260538:
	add r0, r5, #0
	mov r1, #2
	add r0, #0x31
	strb r1, [r0]
	ldr r0, _022605B8 ; =0x02266908
	add r1, r5, #0
	mov r2, #0x6e
	bl sub_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_02260554:
	ldr r0, [r5, #0x28]
	bl sub_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl sub_02006814
	mov r1, #0
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #1
	bne _02260572
	str r1, [r4, #0]
	b _022605B4
_02260572:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_0226057A:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #0xde
	bl sub_020364F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_02260590:
	mov r0, #0xde
	bl sub_02036540
	cmp r0, #1
	beq _022605A8
	bl sub_02035E18
	add r5, r0, #0
	bl sub_02032E64
	cmp r5, r0
	bge _022605B4
_022605A8:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022605B4
_022605B0:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022605B4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022605B8: .word 0x02266908
_022605BC: .word 0x022668F8
	thumb_func_end ov117_02260474

	thumb_func_start ov117_022605C0
ov117_022605C0: ; 0x022605C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x6e
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov117_022605C0

	thumb_func_start ov117_022605D8
ov117_022605D8: ; 0x022605D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0203608C
	mov r5, #0
	add r4, r5, #0
_022605E6:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _022605FA
	add r0, r6, r5
	add r0, #0x2c
	strb r4, [r0]
	add r5, r5, #1
	b _02260602
_022605FA:
	add r1, r6, r4
	add r1, #0x2c
	mov r0, #0xff
	strb r0, [r1]
_02260602:
	add r4, r4, #1
	cmp r4, #4
	blt _022605E6
	add r0, r6, #0
	add r0, #0x30
	strb r5, [r0]
	add r0, r7, #0
	add r0, #0x38
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x3c
	strb r1, [r0]
	str r7, [sp]
	add r1, r7, #0
	add r1, #0x39
	ldr r2, [r7, #0x34]
	add r7, #0x38
	ldrb r1, [r1]
	ldrb r3, [r7]
	add r0, r6, #0
	bl ov114_0225C700
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_022605D8

	thumb_func_start ov117_02260630
ov117_02260630: ; 0x02260630
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0226064E
	bl ov114_0225CA54
	cmp r0, #1
	bne _0226064E
	add r0, r4, #0
	mov r1, #1
	add r0, #0x3d
	strb r1, [r0]
_0226064E:
	add r0, r4, #0
	add r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bne _02260662
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02260662
	mov r0, #1
	pop {r4, pc}
_02260662:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02260630

	thumb_func_start ov117_02260668
ov117_02260668: ; 0x02260668
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _02260954 ; =0xFFFFE0FF
	and r1, r2
	str r1, [r0, #0]
	ldr r1, _02260958 ; =0x04001000
	ldr r3, [r1, #0]
	and r2, r3
	str r2, [r1, #0]
	ldr r3, [r0, #0]
	ldr r2, _0226095C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r0, #0]
	ldr r3, [r1, #0]
	add r0, #0x50
	and r2, r3
	str r2, [r1, #0]
	mov r3, #0x10
	mov r1, #1
	mov r2, #0x3f
	str r3, [sp]
	bl sub_020BF55C
	mov r0, #3
	str r0, [sp]
	ldr r0, _02260960 ; =0x04001050
	mov r1, #8
	mov r2, #0x1f
	mov r3, #0xd
	bl sub_020BF55C
	ldr r1, _02260964 ; =0x00003850
	add r0, r4, #0
	mov r2, #0x6e
	bl sub_0200681C
	ldr r2, _02260964 ; =0x00003850
	add r5, r0, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r5, #0
	add r0, #0xa8
	mov r1, #0x6e
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x6e
	bl ov117_02260E14
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	add r0, r5, #0
	bl ov117_022665FC
	mov r0, #0x6e
	bl sub_02002F38
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #7
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x6e
	bl sub_02002F70
	mov r0, #0x6e
	bl sub_02018340
	str r0, [r5, #0x2c]
	mov r0, #0x40
	mov r1, #0x6e
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #0x2c]
	bl ov117_022610D8
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r5, #0
	bl ov117_02260EC0
	mov r0, #0x6e
	bl sub_0200C6E4
	ldr r1, _02260968 ; =0x022669A8
	ldr r2, _0226096C ; =0x0226697C
	mov r3, #0x20
	str r0, [r5, #0x24]
	bl sub_0200C73C
	ldr r1, _02260970 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x24]
	bl sub_0200C704
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, #0xe0
	bl sub_0200C7C0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02260974 ; =0x02266990
	bl sub_0200CB30
	ldr r0, [r5, #0x24]
	bl sub_0200C738
	mov r2, #0x16
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add r0, r5, #0
	bl ov117_02261574
	mov r0, #0
	mov r1, #0x1a
	mov r2, #9
	mov r3, #0x6e
	bl sub_0200B144
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r0, #0x6e
	bl sub_0200B358
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x6e
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
	mov r0, #0x13
	mov r1, #0x6e
	bl sub_02012744
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	ldr r1, _02260978 ; =0x00001468
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265210
	mov r0, #0xad
	mov r1, #0x6e
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261A2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261AC8
	add r0, r5, #0
	bl ov117_02261280
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_0226168C
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261940
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261C2C
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x6e
	bl sub_02003050
	add r0, r5, #0
	bl ov117_022613EC
	add r0, r5, #0
	mov r1, #0
	bl ov117_022614AC
	add r0, r5, #0
	bl ov117_02261368
	bl sub_02039734
	add r0, r5, #0
	bl ov117_022626B0
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6e
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x1b
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _0226097C ; =ov117_02260F7C
	ldr r2, _02260980 ; =0x0000EA60
	add r1, r5, #0
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	ldr r0, _02260984 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	ldr r0, [r5, #0x28]
	bl sub_0200D9B0
	mov r1, #0x6e
	bl ov114_0225CAD4
	str r0, [r5, #0x1c]
	bl ov114_0225CB74
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	lsl r2, r2, #0x14
	ldr r0, [r0, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x60
	bl sub_02003070
	ldr r0, _02260988 ; =ov117_02260DA0
	add r1, r5, #0
	bl sub_02017798
	ldr r0, [r5, #0]
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226094C
	mov r0, #0x6e
	bl ov4_021D1E74
_0226094C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02260954: .word 0xFFFFE0FF
_02260958: .word 0x04001000
_0226095C: .word 0xFFFF1FFF
_02260960: .word 0x04001050
_02260964: .word 0x00003850
_02260968: .word 0x022669A8
_0226096C: .word 0x0226697C
_02260970: .word 0x00100010
_02260974: .word 0x02266990
_02260978: .word 0x00001468
_0226097C: .word ov117_02260F7C
_02260980: .word 0x0000EA60
_02260984: .word 0x021BF6DC
_02260988: .word ov117_02260DA0
	thumb_func_end ov117_02260668

	thumb_func_start ov117_0226098C
ov117_0226098C: ; 0x0226098C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r4, #0]
	add r2, r1, #0
	add r2, #0x3d
	ldrb r2, [r2]
	cmp r2, #1
	bne _022609F6
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _022609B2
	cmp r0, #1
	b _022609E0
_022609B2:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022609BE
	bl sub_0200F2C0
_022609BE:
	mov r0, #0
	bl sub_0200F370
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02260BE0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _022609F0
_022609E0:
	add r0, r1, #0
	bl ov114_0225CA98
	cmp r0, #1
	bne _022609F0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022609F0:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_022609F6:
	ldr r2, [r5, #0]
	cmp r2, #6
	bhi _02260A60
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02260A08: ; jump table
	.short _02260A16 - _02260A08 - 2 ; case 0
	.short _02260A26 - _02260A08 - 2 ; case 1
	.short _02260A34 - _02260A08 - 2 ; case 2
	.short _02260A46 - _02260A08 - 2 ; case 3
	.short _02260A56 - _02260A08 - 2 ; case 4
	.short _02260A6E - _02260A08 - 2 ; case 5
	.short _02260BBA - _02260A08 - 2 ; case 6
_02260A16:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A26:
	mov r0, #0xd3
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A34:
	mov r0, #0xd3
	bl sub_02036540
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A46:
	bl ov117_022666A4
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A56:
	add r1, #0x30
	ldrb r1, [r1]
	ldr r2, [r4, #8]
	cmp r2, r1
	bhs _02260A62
_02260A60:
	b _02260BC8
_02260A62:
	bl ov117_0226200C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A6E:
	mov r1, #0xbf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _02260A9A
	bl ov117_02266150
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6e
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x1a
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02260A9A:
	add r0, r4, #0
	bl ov117_02262664
	ldr r0, [r4, #0x20]
	cmp r0, #7
	bhi _02260B78
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260AB2: ; jump table
	.short _02260B78 - _02260AB2 - 2 ; case 0
	.short _02260AC2 - _02260AB2 - 2 ; case 1
	.short _02260B0E - _02260AB2 - 2 ; case 2
	.short _02260B28 - _02260AB2 - 2 ; case 3
	.short _02260B34 - _02260AB2 - 2 ; case 4
	.short _02260B78 - _02260AB2 - 2 ; case 5
	.short _02260B5E - _02260AB2 - 2 ; case 6
	.short _02260B6A - _02260AB2 - 2 ; case 7
_02260AC2:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _02260BE0 ; =0xFFFF1FFF
	add r3, r0, #0
	and r2, r1
	lsr r1, r0, #0xc
	orr r1, r2
	str r1, [r0, #0]
	add r1, r0, #0
	ldr r2, _02260BE4 ; =0x0000044C
	add r1, #0x42
	strh r2, [r1]
	add r1, r0, #0
	ldr r2, _02260BE8 ; =0x0000A8B8
	add r1, #0x46
	strh r2, [r1]
	add r3, #0x48
	ldrh r2, [r3]
	ldr r1, _02260BEC ; =0xFFFFC0FF
	and r2, r1
	lsr r1, r0, #0xe
	orr r1, r2
	strh r1, [r3]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl ov117_02266210
	mov r0, #2
	str r0, [r4, #0x20]
_02260B0E:
	ldr r1, _02260BF0 ; =0x0000174C
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02266274
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF4 ; =0x00001768
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x20]
	b _02260B78
_02260B28:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CB8C
	mov r0, #4
	str r0, [r4, #0x20]
	b _02260B78
_02260B34:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBE0
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF8 ; =0x00002FB8
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _02260BFC ; =0x00001559
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl ov117_022613B8
	add r0, r4, #0
	mov r1, #1
	bl ov117_022614AC
	b _02260B78
_02260B5E:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBB0
	mov r0, #7
	str r0, [r4, #0x20]
	b _02260B78
_02260B6A:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBE0
	cmp r0, #1
	bne _02260B78
	mov r0, #8
	str r0, [r4, #0x20]
_02260B78:
	add r0, r4, #0
	bl ov117_022623B0
	add r0, r4, #0
	bl ov117_02262270
	ldr r0, _02260C00 ; =0x00002FBC
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02260BC8
	add r0, r4, #0
	bl ov117_02262200
	cmp r0, #1
	bne _02260B9C
	ldr r0, _02260C04 ; =0x00002FC4
	mov r1, #0xd
	str r1, [r4, r0]
_02260B9C:
	ldr r1, _02260BF8 ; =0x00002FB8
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260BC8
	sub r0, r1, #4
	ldr r2, [r4, r0]
	ldr r0, _02260C08 ; =0x00000516
	cmp r2, r0
	bhi _02260BC8
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r4, r0]
	b _02260BC8
_02260BBA:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02260BC8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02260BC8:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov117_022626AC
	ldr r0, _02260C0C ; =0x0000384C
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02260BE0: .word 0xFFFF1FFF
_02260BE4: .word 0x0000044C
_02260BE8: .word 0x0000A8B8
_02260BEC: .word 0xFFFFC0FF
_02260BF0: .word 0x0000174C
_02260BF4: .word 0x00001768
_02260BF8: .word 0x00002FB8
_02260BFC: .word 0x00001559
_02260C00: .word 0x00002FBC
_02260C04: .word 0x00002FC4
_02260C08: .word 0x00000516
_02260C0C: .word 0x0000384C
	thumb_func_end ov117_0226098C

	thumb_func_start ov117_02260C10
ov117_02260C10: ; 0x02260C10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _02260D94 ; =0x00002FD0
	ldr r1, [r4, r0]
	ldr r0, [r4, #0]
	str r1, [r0, #0x24]
	ldr r0, [r4, #0x1c]
	bl ov114_0225CB38
	add r0, r4, #0
	bl ov117_022641E4
	add r0, r4, #0
	bl ov117_02264508
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov117_022615E0
	add r0, r4, #0
	bl ov117_022618E8
	add r0, r4, #0
	bl ov117_022619F8
	add r0, r4, #0
	bl ov117_02261AC4
	add r0, r4, #0
	bl ov117_02261C28
	add r0, r4, #0
	bl ov117_02261DD0
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov117_02262760
	add r5, r4, #0
	mov r6, #0
	add r5, #0x30
_02260C72:
	add r0, r5, #0
	bl sub_0201A8FC
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #5
	blt _02260C72
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020127BC
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	bl sub_0200D0B0
	ldr r0, [r4, #0x24]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0200B190
	ldr r0, [r4, #0x2c]
	bl sub_020181C4
	add r0, r4, #0
	bl ov117_02260F64
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02260D98 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02260D9C ; =0x04001000
	add r4, #0x98
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl ov117_02260EB8
	bl sub_0201E530
	add r0, r7, #0
	bl sub_02006830
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D94: .word 0x00002FD0
_02260D98: .word 0xFFFF1FFF
_02260D9C: .word 0x04001000
	thumb_func_end ov117_02260C10

	thumb_func_start ov117_02260DA0
ov117_02260DA0: ; 0x02260DA0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	bl ov117_02262950
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02003694
	ldr r0, _02260E04 ; =0x00001454
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _02260DD8
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	ldr r0, _02260E04 ; =0x00001454
	mov r1, #0
	strb r1, [r4, r0]
	b _02260DEE
_02260DD8:
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02260DEE
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, _02260E08 ; =0x00001455
	mov r1, #0
	strb r1, [r4, r0]
_02260DEE:
	ldr r0, [r4, #0x2c]
	bl sub_0201C2B8
	ldr r3, _02260E0C ; =0x027E0000
	ldr r1, _02260E10 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02260E04: .word 0x00001454
_02260E08: .word 0x00001455
_02260E0C: .word 0x027E0000
_02260E10: .word 0x00003FF8
	thumb_func_end ov117_02260DA0

	thumb_func_start ov117_02260E14
ov117_02260E14: ; 0x02260E14
	push {r3, lr}
	sub sp, #8
	mov r1, #2
	str r1, [sp]
	ldr r1, _02260E30 ; =ov117_02260E34
	mov r2, #1
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_02260E30: .word ov117_02260E34
	thumb_func_end ov117_02260E14

	thumb_func_start ov117_02260E34
ov117_02260E34: ; 0x02260E34
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02260EA0 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02260EA4 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02260EA8 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _02260EAC ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _02260EB0 ; =0xBFFF0000
	ldr r0, _02260EB4 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02260EA0: .word 0x04000008
_02260EA4: .word 0xFFFFCFFD
_02260EA8: .word 0x0000CFFB
_02260EAC: .word 0x00007FFF
_02260EB0: .word 0xBFFF0000
_02260EB4: .word 0x04000580
	thumb_func_end ov117_02260E34

	thumb_func_start ov117_02260EB8
ov117_02260EB8: ; 0x02260EB8
	ldr r3, _02260EBC ; =sub_020242C4
	bx r3
	; .align 2, 0
_02260EBC: .word sub_020242C4
	thumb_func_end ov117_02260EB8

	thumb_func_start ov117_02260EC0
ov117_02260EC0: ; 0x02260EC0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _02260F58 ; =0x02266938
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x6e
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0x7b
	str r0, [sp, #8]
	ldr r2, _02260F5C ; =0x02266918
	ldr r3, _02260F60 ; =0x00000FA4
	add r0, sp, #0xc
	lsl r1, r1, #0xc
	bl sub_020206D0
	add r2, r4, #0
	add r2, #0x9c
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r2, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203D4
	mov r0, #0x6e
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #5
	str r0, [sp, #8]
	ldr r2, _02260F5C ; =0x02266918
	ldr r3, _02260F60 ; =0x00000FA4
	add r0, sp, #0xc
	lsl r1, r1, #0x10
	bl sub_020206D0
	add r4, #0xa0
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r4, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add sp, #0x18
	pop {r4, pc}
	nop
_02260F58: .word 0x02266938
_02260F5C: .word 0x02266918
_02260F60: .word 0x00000FA4
	thumb_func_end ov117_02260EC0

	thumb_func_start ov117_02260F64
ov117_02260F64: ; 0x02260F64
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203B8
	add r4, #0xa0
	ldr r0, [r4, #0]
	bl sub_020203B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02260F64

	thumb_func_start ov117_02260F7C
ov117_02260F7C: ; 0x02260F7C
	push {r4, lr}
	sub sp, #0x40
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #4
	add r4, r1, #0
	bl sub_020BB4C8
	ldr r1, _022610B0 ; =0x000015A8
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265F34
	ldr r1, _022610B4 ; =0x00001468
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265254
	ldr r1, _022610B8 ; =0x00001560
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265C1C
	add r0, r4, #0
	bl ov117_02263EF8
	ldr r2, _022610BC ; =0x00001428
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	add r2, r4, r2
	bl ov117_02263D80
	add r0, r4, #0
	bl ov117_02264560
	add r0, r4, #0
	bl ov117_02261F3C
	add r0, r4, #0
	bl ov117_02264930
	bl sub_020241B4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203D4
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	mov r0, #1
	bl sub_02020854
	bl sub_020203EC
	mov r0, #0
	ldr r2, _022610C0 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl sub_020AF51C
	ldr r1, _022610C4 ; =0x0000739C
	mov r0, #0
	bl sub_020AF558
	ldr r0, _022610C8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF56C
	ldr r0, _022610C8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF590
	add r0, sp, #0x28
	bl sub_020AF4BC
	ldr r1, _022610CC ; =0x021C5B48
	add r0, sp, #4
	bl sub_020C4C88
	ldr r1, _022610D0 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	bl sub_020AF4EC
	bl sub_020AF480
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov117_02262798
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	ldr r0, _022610D4 ; =0x000013B0
	add r0, r4, r0
	bl sub_02017294
	add r0, r4, #0
	add r0, #0xe8
	bl sub_02017294
	add r0, r4, #0
	bl ov117_02261FA4
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	bl sub_020241B4
	bl sub_0201469C
	cmp r0, #0
	ble _0226108C
	bl sub_020241B4
_0226108C:
	bl sub_020146C0
	ldr r0, [r4, #0x28]
	bl sub_0200C7EC
	bl sub_0200C808
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	ldr r1, [r4, #0x2c]
	mov r0, #0x6e
	bl sub_02038A1C
	add sp, #0x40
	pop {r4, pc}
	nop
_022610B0: .word 0x000015A8
_022610B4: .word 0x00001468
_022610B8: .word 0x00001560
_022610BC: .word 0x00001428
_022610C0: .word 0xFFFFF000
_022610C4: .word 0x0000739C
_022610C8: .word 0x00007FFF
_022610CC: .word 0x021C5B48
_022610D0: .word 0x021C5B0C
_022610D4: .word 0x000013B0
	thumb_func_end ov117_02260F7C

	thumb_func_start ov117_022610D8
ov117_022610D8: ; 0x022610D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r5, r0, #0
	bl sub_0201FF00
	ldr r4, _0226126C ; =0x022669C8
	add r3, sp, #0x10
	mov r2, #5
_022610E8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022610E8
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r4, _02261270 ; =0x02266944
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _02261274 ; =0x02266A40
	add r3, sp, #0x38
	mov r2, #0xa
_02261148:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02261148
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r5, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _02261278 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r4, #0
	ldr r6, _0226127C ; =0x02266A94
	add r7, r4, #0
_022611F4:
	cmp r4, #3
	bge _0226120A
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	b _0226121A
_0226120A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #1
	bl sub_020183C4
_0226121A:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6e
	bl sub_02019690
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _022611F4
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0226126C: .word 0x022669C8
_02261270: .word 0x02266944
_02261274: .word 0x02266A40
_02261278: .word 0x04000008
_0226127C: .word 0x02266A94
	thumb_func_end ov117_022610D8

	thumb_func_start ov117_02261280
ov117_02261280: ; 0x02261280
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #3
	lsl r0, r0, #8
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x30
	mov r2, #1
	mov r3, #0xb
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xc5
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x40
	mov r2, #4
	mov r3, #0x12
	bl sub_0201A7E8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x50
	mov r2, #4
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xcf
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x60
	mov r2, #4
	mov r3, #1
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x60
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, _02261364 ; =0x00000359
	add r1, #0x70
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x2c]
	mov r3, #2
	bl sub_0201A7E8
	add r4, #0x70
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02261364: .word 0x00000359
	thumb_func_end ov117_02261280

	thumb_func_start ov117_02261368
ov117_02261368: ; 0x02261368
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0x35
	add r5, r0, #0
	add r0, #0x70
	mov r1, #1
	lsl r2, r2, #4
	mov r3, #6
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	ldr r0, _022613B4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x70
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x70
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022613B4: .word 0x0001020F
	thumb_func_end ov117_02261368

	thumb_func_start ov117_022613B8
ov117_022613B8: ; 0x022613B8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _022613E8 ; =0x000003FF
	mov r1, #4
	mov r3, #1
	bl sub_02019CB8
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_022613E8: .word 0x000003FF
	thumb_func_end ov117_022613B8

	thumb_func_start ov117_022613EC
ov117_022613EC: ; 0x022613EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_0203608C
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	mov r4, #0
	str r0, [sp, #0x18]
	b _02261490
_02261404:
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x10]
	add r1, r0, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r2, r1
	beq _0226148E
	bl ov114_0225C7CC
	mov r1, #0x6e
	bl sub_02025F04
	ldr r1, [r5, #0]
	add r6, r0, #0
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov117_022622C4
	str r0, [sp, #0x14]
	ldr r0, [r5, #0]
	add r1, r0, r4
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov114_0225C7A4
	cmp r0, #1
	bne _02261442
	ldr r7, _022614A0 ; =0x0007080F
	b _02261444
_02261442:
	ldr r7, _022614A4 ; =0x0001020F
_02261444:
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r2, r1, #1
	mov r1, #0x28
	sub r3, r1, r2
	mov r1, #1
	tst r0, r1
	beq _02261460
	sub r3, r3, #1
_02261460:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r6, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _022614A8 ; =0x02266968
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r1]
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020181C4
_0226148E:
	add r4, r4, #1
_02261490:
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _02261404
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022614A0: .word 0x0007080F
_022614A4: .word 0x0001020F
_022614A8: .word 0x02266968
	thumb_func_end ov117_022613EC

	thumb_func_start ov117_022614AC
ov117_022614AC: ; 0x022614AC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #1
	bne _02261504
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0
	bl sub_02019CB8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	bl sub_02019CB8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0x14
	bl sub_02019CB8
	b _02261562
_02261504:
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261514
	cmp r0, #3
	beq _0226154A
	b _02261562
_02261514:
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0
	bl sub_02019CB8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0x14
	bl sub_02019CB8
	b _02261562
_0226154A:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	bl sub_02019CB8
_02261562:
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_02261570: .word 0x000003FF
	thumb_func_end ov117_022614AC

	thumb_func_start ov117_02261574
ov117_02261574: ; 0x02261574
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02014000
	mov r1, #0x12
	mov r0, #0x6e
	lsl r1, r1, #0xa
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x6e
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _022615D8 ; =ov117_02261644
	ldr r1, _022615DC ; =ov117_02261668
	lsl r3, r3, #0xa
	bl sub_02014014
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0xbe
	mov r1, #0
	mov r2, #0x6e
	bl sub_020144C4
	add r4, #0xa4
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_022615D8: .word ov117_02261644
_022615DC: .word ov117_02261668
	thumb_func_end ov117_02261574

	thumb_func_start ov117_022615E0
ov117_022615E0: ; 0x022615E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02014730
	add r4, #0xa4
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201411C
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022615E0

	thumb_func_start ov117_02261600
ov117_02261600: ; 0x02261600
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #0
	beq _02261612
	cmp r1, #1
	beq _02261620
	cmp r1, #2
	beq _0226162E
	b _0226163C
_02261612:
	add r0, #0xa4
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_020146F4
	pop {r3, pc}
_02261620:
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #0
	bl sub_020146F4
	pop {r3, pc}
_0226162E:
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #0
	bl sub_020146F4
	pop {r3, pc}
_0226163C:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov117_02261600

	thumb_func_start ov117_02261644
ov117_02261644: ; 0x02261644
	push {r4, lr}
	ldr r3, _02261664 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _02261656
	bl sub_02022974
_02261656:
	add r0, r4, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_02261664: .word 0x02100DEC
	thumb_func_end ov117_02261644

	thumb_func_start ov117_02261668
ov117_02261668: ; 0x02261668
	push {r4, lr}
	ldr r3, _02261688 ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _0226167A
	bl sub_02022974
_0226167A:
	add r0, r4, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_02261688: .word 0x02100DF4
	thumb_func_end ov117_02261668

	thumb_func_start ov117_0226168C
ov117_0226168C: ; 0x0226168C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618C4 ; =0x00002713
	str r1, [sp, #0x2c]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	mov r1, #2
	bl sub_0200CDC4
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x1e
	sub r0, r1, r0
	lsr r0, r0, #1
	add r4, r0, #6
	add r2, r5, #0
	ldr r3, _022618C8 ; =0x0000169C
	str r6, [sp]
	mov r0, #0
	ldr r1, _022618CC ; =0x000E0F00
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _022618C4 ; =0x00002713
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r1, #0x24
	str r1, [sp, #0x14]
	mov r1, #0xa8
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r2, #0x90
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	add r3, r5, r3
	bl ov117_02265DB8
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B1EC
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B1EC
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, _022618D0 ; =0x000015AC
	add r7, r5, r0
	add r0, #0x14
	add r6, r5, r0
_02261740:
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 ; =0x00002713
	add r3, r7, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x38]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 ; =0x00002713
	add r3, r6, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	add r4, r4, #6
	add r0, r0, #1
	add r7, #0x28
	add r6, #0x28
	str r0, [sp, #0x34]
	cmp r0, #6
	blt _02261740
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, _022618D4 ; =0x000015A8
	add r0, r5, r0
	bl ov117_02265EC8
	add r0, r5, #0
	bl ov117_02266150
	ldr r0, [sp, #0x2c]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618D8 ; =0x00002714
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x18
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x1a
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x19
	bl sub_0200CE54
	add r0, r5, #0
	bl ov117_02266130
	ldr r1, _022618D4 ; =0x000015A8
	str r0, [r5, r1]
	mov r0, #0xab
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618DC ; =0x00002712
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x15
	bl sub_0200CBDC
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x16
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x17
	bl sub_0200CE3C
	add r0, r5, #0
	bl ov117_02266244
	ldr r1, _022618E4 ; =0x0000174C
	str r0, [r5, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_022618C4: .word 0x00002713
_022618C8: .word 0x0000169C
_022618CC: .word 0x000E0F00
_022618D0: .word 0x000015AC
_022618D4: .word 0x000015A8
_022618D8: .word 0x00002714
_022618DC: .word 0x00002712
_022618E0: .word 0x00002711
_022618E4: .word 0x0000174C
	thumb_func_end ov117_0226168C

	thumb_func_start ov117_022618E8
ov117_022618E8: ; 0x022618E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02261930 ; =0x000015AC
	mov r6, #0
	add r4, r7, r0
	add r0, #0x14
	add r5, r7, r0
_022618F6:
	add r0, r4, #0
	bl ov117_02265EB0
	add r0, r5, #0
	bl ov117_02265EB0
	add r6, r6, #1
	add r4, #0x28
	add r5, #0x28
	cmp r6, #6
	blt _022618F6
	ldr r0, _02261934 ; =0x0000169C
	add r0, r7, r0
	bl ov117_02265EB0
	add r0, r7, #0
	bl ov117_02266210
	ldr r1, _02261938 ; =0x000015A8
	add r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266238
	ldr r1, _0226193C ; =0x0000174C
	add r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266268
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261930: .word 0x000015AC
_02261934: .word 0x0000169C
_02261938: .word 0x000015A8
_0226193C: .word 0x0000174C
	thumb_func_end ov117_022618E8

	thumb_func_start ov117_02261940
ov117_02261940: ; 0x02261940
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022619E4 ; =0x00002716
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x14
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x15
	bl sub_0200CE54
	add r0, r5, #0
	bl ov117_022648E0
	ldr r1, _022619EC ; =0x00001458
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02264FB0
	ldr r1, _022619F0 ; =0x00001468
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265064
	ldr r1, _022619F4 ; =0x00001560
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265ABC
	add r0, r5, #0
	bl ov117_02264BF8
	add r0, r5, #0
	bl ov117_02264D1C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022619E4: .word 0x00002716
_022619E8: .word 0x00002714
_022619EC: .word 0x00001458
_022619F0: .word 0x00001468
_022619F4: .word 0x00001560
	thumb_func_end ov117_02261940

	thumb_func_start ov117_022619F8
ov117_022619F8: ; 0x022619F8
	push {r4, lr}
	add r4, r0, #0
	bl ov117_02264914
	ldr r1, _02261A20 ; =0x00001458
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_0226504C
	ldr r1, _02261A24 ; =0x00001468
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_022651E0
	ldr r1, _02261A28 ; =0x00001560
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265B3C
	pop {r4, pc}
	; .align 2, 0
_02261A20: .word 0x00001458
_02261A24: .word 0x00001468
_02261A28: .word 0x00001560
	thumb_func_end ov117_022619F8

	thumb_func_start ov117_02261A2C
ov117_02261A2C: ; 0x02261A2C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #4
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #2
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	add r5, #0x8c
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02261A2C

	thumb_func_start ov117_02261AC4
ov117_02261AC4: ; 0x02261AC4
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02261AC4

	thumb_func_start ov117_02261AC8
ov117_02261AC8: ; 0x02261AC8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #5
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #6
	mov r3, #0x6e
	bl sub_02002FEC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xd
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #5
	bl sub_020070E8
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261B64
	cmp r0, #3
	beq _02261B7E
	b _02261B98
_02261B64:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_0200710C
	b _02261BB0
_02261B7E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x10
	mov r3, #5
	bl sub_0200710C
	b _02261BB0
_02261B98:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #5
	bl sub_0200710C
_02261BB0:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x13
	mov r3, #4
	bl sub_0200710C
	add r0, r5, #0
	bl ov117_02264AF0
	add r0, r5, #0
	bl ov117_02264AB0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6e
	str r0, [sp, #4]
	mov r2, #0x35
	ldr r0, [r5, #0x2c]
	mov r1, #4
	lsl r2, r2, #4
	mov r3, #6
	bl sub_0200DAA4
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #0x60
	mov r3, #0x20
	bl sub_02003070
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r5, #0x8c
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02261AC8

	thumb_func_start ov117_02261C28
ov117_02261C28: ; 0x02261C28
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02261C28

	thumb_func_start ov117_02261C2C
ov117_02261C2C: ; 0x02261C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	add r0, #0xd8
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r7, #0
	bl sub_0203608C
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl ov117_0226235C
	add r4, r0, #0
	mov r1, #0x14
	mul r4, r1
	ldr r2, _02261DB4 ; =0x022669F0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	mov r3, #0x6e
	bl sub_020170D8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, #0x10
	bl sub_02017258
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	ldr r2, _02261DB8 ; =0xFFFE7000
	add r0, #0x10
	add r3, r1, #0
	bl sub_02017350
	ldr r0, [sp, #0x10]
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0x10
	bl sub_02017348
	ldr r2, _02261DBC ; =0x022669F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0x88
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC0 ; =0x022669F8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0x98
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC4 ; =0x022669FC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0xa8
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC8 ; =0x02266A00
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0xb8
	mov r3, #0x6e
	bl sub_020170D8
	add r0, r7, #0
	str r0, [sp, #0x1c]
	mov r1, #0x51
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	add r0, #0xa8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	add r0, #0x88
	str r0, [sp, #0x20]
_02261CEC:
	mov r0, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x18]
_02261CF6:
	cmp r7, #0
	bne _02261D18
	mov r0, #0x6e
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r3, #0x23
	bl sub_02017164
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	b _02261D24
_02261D18:
	ldr r3, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02017190
_02261D24:
	add r0, r5, #0
	mov r1, #0
	bl sub_02017240
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x90
	add r6, #0x90
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02261CF6
	mov r0, #9
	ldr r1, [sp, #0x14]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #9
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _02261CEC
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	mov r2, #0x1e
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	mov r3, #0x6e
	bl sub_020170D8
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r2, r1, #0
	add r0, r1, r0
	ldr r1, _02261DCC ; =0x000013A0
	add r0, #0x10
	add r1, r2, r1
	bl sub_02017258
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	ldr r2, _02261DB8 ; =0xFFFE7000
	add r0, r1, r0
	mov r1, #0
	add r0, #0x10
	add r3, r1, #0
	bl sub_02017350
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r0, r1, r0
	add r0, #0x10
	mov r1, #1
	bl sub_02017348
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261DB4: .word 0x022669F0
_02261DB8: .word 0xFFFE7000
_02261DBC: .word 0x022669F4
_02261DC0: .word 0x022669F8
_02261DC4: .word 0x022669FC
_02261DC8: .word 0x02266A00
_02261DCC: .word 0x000013A0
	thumb_func_end ov117_02261C2C

	thumb_func_start ov117_02261DD0
ov117_02261DD0: ; 0x02261DD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r6, #0xd8
	str r0, [sp]
	add r0, r6, #0
	bl sub_02017110
	add r5, r6, #0
	mov r4, #0
	add r5, #0x88
_02261DE6:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _02261DE6
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x51
	lsl r0, r0, #2
	add r7, r6, r0
	ldr r6, [sp]
	add r6, #0xa8
_02261E02:
	mov r4, #0
	add r5, r7, #0
_02261E06:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #4
	blt _02261E06
	mov r0, #9
	lsl r0, r0, #6
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261E02
	ldr r1, _02261E34 ; =0x000013A0
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_02017110
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261E34: .word 0x000013A0
	thumb_func_end ov117_02261DD0

	thumb_func_start ov117_02261E38
ov117_02261E38: ; 0x02261E38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #4
	add r5, #0xd8
	cmp r1, r0
	ble _02261E4C
	mov r2, #3
	b _02261E5E
_02261E4C:
	cmp r1, #2
	ble _02261E54
	mov r2, #2
	b _02261E5E
_02261E54:
	cmp r1, #1
	ble _02261E5C
	mov r2, #1
	b _02261E5E
_02261E5C:
	mov r2, #0
_02261E5E:
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x88
	mov r1, #0x90
	str r0, [sp, #4]
	lsl r0, r2, #4
	mul r1, r2
	mov r3, #9
	mov ip, r0
	mov r0, #0
	add r1, r5, r1
	lsl r3, r3, #6
_02261E76:
	add r4, r1, #0
	add r4, #0xc8
	ldr r4, [r4, #0]
	cmp r4, #0
	bne _02261EF2
	add r4, r2, #0
	mov r1, #0x90
	mul r4, r1
	lsl r1, r0, #3
	add r0, r0, r1
	lsl r7, r0, #6
	add r0, r5, #0
	add r0, #0xcc
	add r6, r0, r7
	ldr r1, [sp, #4]
	mov r2, ip
	add r0, r6, r4
	add r1, r1, r2
	bl sub_02017258
	mov r1, #0
	ldr r2, _02261F00 ; =0xFFFE7000
	add r0, r6, r4
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r6, r4
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r6, r4
	mov r1, #1
	bl sub_02017348
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	add r0, r0, r4
	mov r1, #0
	bl sub_02017240
	ldr r1, [sp]
	add r0, r6, r4
	add r1, r1, r4
	bl sub_0201727C
	add r0, r5, r7
	add r0, r0, r4
	mov r1, #1
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, _02261F04 ; =0x00000579
	bl sub_02005748
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02261EF2:
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, #8
	blt _02261E76
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261F00: .word 0xFFFE7000
_02261F04: .word 0x00000579
	thumb_func_end ov117_02261E38

	thumb_func_start ov117_02261F08
ov117_02261F08: ; 0x02261F08
	push {r4, r5, r6, lr}
	add r4, r0, #0
	lsl r0, r1, #3
	add r0, r1, r0
	add r4, #0xd8
	lsl r6, r0, #6
	add r0, r4, #0
	add r0, #0xcc
	mov r3, #0x90
	add r5, r2, #0
	mul r5, r3
	add r3, #0xb4
	add r1, r4, r3
	add r0, r0, r6
	add r1, r1, r6
	add r0, r0, r5
	add r1, r1, r5
	bl sub_02017288
	add r0, r4, r6
	add r0, r0, r5
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02261F08

	thumb_func_start ov117_02261F3C
ov117_02261F3C: ; 0x02261F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x51
	str r0, [sp]
	str r0, [sp, #8]
	add r0, #0xd8
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r0, r1
	mov r7, #0
	str r0, [sp, #4]
_02261F52:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r6, #0
_02261F58:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261F7A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r0, #1
	bne _02261F7A
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl ov117_02261F08
_02261F7A:
	add r6, r6, #1
	add r4, #0x90
	add r5, #0x90
	cmp r6, #4
	blt _02261F58
	mov r0, #9
	ldr r1, [sp, #8]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #9
	ldr r1, [sp, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	add r7, r7, #1
	str r0, [sp, #4]
	cmp r7, #8
	blt _02261F52
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02261F3C

	thumb_func_start ov117_02261FA4
ov117_02261FA4: ; 0x02261FA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0xd8
	str r0, [sp]
	ldr r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r7, #0xcc
_02261FB6:
	ldr r4, [sp]
	mov r6, #0
	add r5, r7, #0
_02261FBC:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261FCC
	add r0, r5, #0
	bl sub_02017294
_02261FCC:
	add r6, r6, #1
	add r4, #0x90
	add r5, #0x90
	cmp r6, #4
	blt _02261FBC
	mov r0, #9
	ldr r1, [sp]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp]
	mov r0, #9
	lsl r0, r0, #6
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261FB6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02261FA4

	thumb_func_start ov117_02261FF4
ov117_02261FF4: ; 0x02261FF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	ldr r1, [r4, #4]
	cmp r1, r0
	bne _02262006
	mov r0, #1
	pop {r4, pc}
_02262006:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02261FF4

	thumb_func_start ov117_0226200C
ov117_0226200C: ; 0x0226200C
	push {r4, r5, r6, r7}
	ldr r5, [r0, #0]
	ldr r3, [r0, #0xc]
	add r4, r5, #0
	add r4, #0x30
	ldrb r6, [r4]
	add r1, r5, #0
	add r1, #0x2c
	mov r2, #1
	ldrb r1, [r1]
	cmp r6, #1
	ble _0226203C
	add r4, r0, #4
_02262026:
	ldr r7, [r4, #0xc]
	cmp r3, r7
	bhs _02262034
	add r1, r5, r2
	add r1, #0x2c
	ldrb r1, [r1]
	add r3, r7, #0
_02262034:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, r6
	blt _02262026
_0226203C:
	str r1, [r0, #4]
	add r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov117_0226200C

	thumb_func_start ov117_02262044
ov117_02262044: ; 0x02262044
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	add r5, r2, #0
	bl ov117_022620E0
	cmp r0, #1
	beq _02262096
	ldr r0, _02262098 ; =0x00002F04
	mov r1, #0x3c
	add r6, r4, r0
	ldr r0, [sp]
	lsl r7, r0, #2
	ldr r0, [r6, r7]
	bl sub_020E1F6C
	add r0, r1, #0
	ldr r1, _0226209C ; =0x00001C1C
	mov r3, #0x4b
	ldr r2, [sp]
	lsl r3, r3, #4
	add r1, r4, r1
	mul r3, r2
	add r2, r1, r3
	mov r1, #0x14
	mul r1, r0
	ldr r0, [r6, r7]
	add r4, r2, r1
	add r0, r0, #1
	str r0, [r6, r7]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _0226208A
	bl sub_02022974
_0226208A:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
_02262096:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262098: .word 0x00002F04
_0226209C: .word 0x00001C1C
	thumb_func_end ov117_02262044

	thumb_func_start ov117_022620A0
ov117_022620A0: ; 0x022620A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, _022620D8 ; =0x00002F14
	lsl r4, r7, #2
	add r5, r6, r0
	ldr r0, [r5, r4]
	mov r1, #0x3c
	bl sub_020E1F6C
	ldr r0, _022620DC ; =0x00001C1C
	add r2, r6, r0
	mov r0, #0x4b
	lsl r0, r0, #4
	mul r0, r7
	add r0, r2, r0
	mov r2, #0x14
	mul r2, r1
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _022620D4
	ldr r1, [r5, r4]
	add r0, r0, r2
	add r1, r1, #1
	str r1, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_022620D4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022620D8: .word 0x00002F14
_022620DC: .word 0x00001C1C
	thumb_func_end ov117_022620A0

	thumb_func_start ov117_022620E0
ov117_022620E0: ; 0x022620E0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02262128
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022620F8: ; jump table
	.short _02262128 - _022620F8 - 2 ; case 0
	.short _02262128 - _022620F8 - 2 ; case 1
	.short _02262108 - _022620F8 - 2 ; case 2
	.short _02262108 - _022620F8 - 2 ; case 3
	.short _02262108 - _022620F8 - 2 ; case 4
	.short _02262108 - _022620F8 - 2 ; case 5
	.short _02262108 - _022620F8 - 2 ; case 6
	.short _02262108 - _022620F8 - 2 ; case 7
_02262108:
	ldr r0, _0226212C ; =0x00002EF0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262114
	bl sub_02022974
_02262114:
	ldr r0, _0226212C ; =0x00002EF0
	add r2, r5, r0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262128:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226212C: .word 0x00002EF0
	thumb_func_end ov117_022620E0

	thumb_func_start ov117_02262130
ov117_02262130: ; 0x02262130
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov117_0226217C
	cmp r0, #1
	beq _02262170
	ldr r0, _02262174 ; =0x00002F24
	mov r1, #0x3c
	ldr r0, [r5, r0]
	bl sub_020E1F6C
	ldr r0, _02262178 ; =0x0000176C
	add r2, r5, r0
	mov r0, #0x14
	mul r0, r1
	ldr r1, _02262174 ; =0x00002F24
	add r6, r2, r0
	ldr r3, [r5, r1]
	add r3, r3, #1
	str r3, [r5, r1]
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02262164
	bl sub_02022974
_02262164:
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r6, #0]
_02262170:
	pop {r4, r5, r6, pc}
	nop
_02262174: .word 0x00002F24
_02262178: .word 0x0000176C
	thumb_func_end ov117_02262130

	thumb_func_start ov117_0226217C
ov117_0226217C: ; 0x0226217C
	push {r4, lr}
	add r2, r1, #0
	ldr r1, [r2, #0]
	cmp r1, #7
	bhi _022621CC
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02262192: ; jump table
	.short _022621CC - _02262192 - 2 ; case 0
	.short _022621CC - _02262192 - 2 ; case 1
	.short _022621A2 - _02262192 - 2 ; case 2
	.short _022621A2 - _02262192 - 2 ; case 3
	.short _022621A2 - _02262192 - 2 ; case 4
	.short _022621A2 - _02262192 - 2 ; case 5
	.short _022621A2 - _02262192 - 2 ; case 6
	.short _022621A2 - _02262192 - 2 ; case 7
_022621A2:
	ldr r3, _022621D0 ; =0x00002EDC
	ldr r4, [r0, r3]
	cmp r4, #0
	bne _022621BC
	add r3, r0, r3
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #1
	pop {r4, pc}
_022621BC:
	cmp r1, r4
	bne _022621C4
	mov r0, #1
	pop {r4, pc}
_022621C4:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_022621CC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022621D0: .word 0x00002EDC
	thumb_func_end ov117_0226217C

	thumb_func_start ov117_022621D4
ov117_022621D4: ; 0x022621D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022621F8 ; =0x00002F28
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_020E1F6C
	ldr r0, _022621FC ; =0x0000176C
	add r2, r1, #0
	add r3, r4, r0
	mov r0, #0x14
	mul r2, r0
	ldr r1, [r3, r2]
	add r0, r3, r2
	cmp r1, #0
	bne _022621F6
	mov r0, #0
_022621F6:
	pop {r4, pc}
	; .align 2, 0
_022621F8: .word 0x00002F28
_022621FC: .word 0x0000176C
	thumb_func_end ov117_022621D4

	thumb_func_start ov117_02262200
ov117_02262200: ; 0x02262200
	push {r3, r4, r5, lr}
	ldr r2, _02262264 ; =0x00002FC4
	add r5, r0, #0
	ldr r1, [r5, r2]
	cmp r1, #0
	ble _02262214
	sub r0, r1, #1
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262214:
	add r1, r2, #0
	sub r1, #0xe8
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _02262238
	sub r2, #0xe8
	add r1, r5, r2
	bl ov117_02266624
	cmp r0, #1
	bne _02262234
	ldr r0, _02262268 ; =0x00002EDC
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262234:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262238:
	bl ov117_022621D4
	add r4, r0, #0
	bne _02262244
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262244:
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02266624
	cmp r0, #1
	bne _02262260
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _0226226C ; =0x00002F28
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262260:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262264: .word 0x00002FC4
_02262268: .word 0x00002EDC
_0226226C: .word 0x00002F28
	thumb_func_end ov117_02262200

	thumb_func_start ov117_02262270
ov117_02262270: ; 0x02262270
	push {r3, r4, r5, lr}
	ldr r1, _022622B4 ; =0x00002EF0
	add r5, r0, #0
	add r1, r5, r1
	bl ov117_022666C0
	cmp r0, #1
	beq _022622B2
	ldr r0, [r5, #0]
	mov r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _022622B2
_0226228C:
	ldr r1, [r5, #0]
	add r0, r5, #0
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022620A0
	add r1, r0, #0
	beq _022622A6
	add r0, r5, #0
	bl ov117_022666C0
	b _0226228C
_022622A6:
	ldr r0, [r5, #0]
	add r4, r4, #1
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _0226228C
_022622B2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022622B4: .word 0x00002EF0
	thumb_func_end ov117_02262270

	thumb_func_start ov117_022622B8
ov117_022622B8: ; 0x022622B8
	ldr r1, _022622C0 ; =0x00002FC8
	ldr r0, [r0, r1]
	bx lr
	nop
_022622C0: .word 0x00002FC8
	thumb_func_end ov117_022622B8

	thumb_func_start ov117_022622C4
ov117_022622C4: ; 0x022622C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203608C
	mov r6, #0xff
	add r4, r6, #0
	mov r1, #0
	b _022622F6
_022622D8:
	ldr r2, [r5, #0]
	add r2, r2, r1
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r0, r2
	bne _022622E6
	add r4, r1, #0
_022622E6:
	ldr r2, [r5, #0]
	add r2, r2, r1
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r7, r2
	bne _022622F4
	add r6, r1, #0
_022622F4:
	add r1, r1, #1
_022622F6:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _022622D8
	mov r0, #0
	cmp r6, #0xff
	beq _0226230C
	cmp r4, #0xff
	beq _0226230C
	mov r0, #1
_0226230C:
	cmp r0, #0
	bne _02262314
	bl sub_02022974
_02262314:
	mov r1, #0
	ldr r0, _02262358 ; =0x02266954
	b _02262340
_0226231A:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r4, r2
	bne _0226232C
	str r1, [sp]
_0226232C:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r6, r2
	bne _0226233E
	str r1, [sp, #4]
_0226233E:
	add r1, r1, #1
_02262340:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _0226231A
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	bpl _02262354
	add r0, r0, r2
_02262354:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262358: .word 0x02266954
	thumb_func_end ov117_022622C4

	thumb_func_start ov117_0226235C
ov117_0226235C: ; 0x0226235C
	push {r4, lr}
	ldr r3, [r0, #0]
	mov r2, #0
	add r0, r3, #0
	add r0, #0x30
	ldrb r4, [r0]
	cmp r4, #0
	ble _02262382
_0226236C:
	add r0, r3, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r1, r0
	bne _0226237A
	add r0, r2, #0
	pop {r4, pc}
_0226237A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _0226236C
_02262382:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_0226235C

	thumb_func_start ov117_0226238C
ov117_0226238C: ; 0x0226238C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022623AC ; =0x00002FD4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _022623A0
	bl sub_02022974
_022623A0:
	ldr r0, _022623AC ; =0x00002FD4
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_022623AC: .word 0x00002FD4
	thumb_func_end ov117_0226238C

	thumb_func_start ov117_022623B0
ov117_022623B0: ; 0x022623B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262438 ; =0x00002FD4
	mov r1, #0
	ldr r2, [r4, r0]
	cmp r2, #6
	bhi _02262408
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022623CA: ; jump table
	.short _02262408 - _022623CA - 2 ; case 0
	.short _022623D8 - _022623CA - 2 ; case 1
	.short _022623DC - _022623CA - 2 ; case 2
	.short _022623E0 - _022623CA - 2 ; case 3
	.short _022623E4 - _022623CA - 2 ; case 4
	.short _022623F0 - _022623CA - 2 ; case 5
	.short _022623FC - _022623CA - 2 ; case 6
_022623D8:
	mov r1, #1
	b _0226240C
_022623DC:
	mov r1, #1
	b _0226240C
_022623E0:
	mov r1, #1
	b _0226240C
_022623E4:
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	mov r1, #1
	b _0226240C
_022623F0:
	ldr r0, _0226243C ; =0x0000339C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0226240C
	mov r1, #1
	b _0226240C
_022623FC:
	ldr r0, _02262440 ; =0x00001768
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	mov r1, #1
	b _0226240C
_02262408:
	mov r0, #0
	pop {r4, pc}
_0226240C:
	cmp r1, #1
	bne _02262434
	ldr r0, _02262444 ; =0x00002FD8
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	add r0, r4, #0
	bl ov117_02261FF4
	cmp r0, #1
	bne _0226242A
	mov r1, #7
	b _0226242C
_0226242A:
	mov r1, #0
_0226242C:
	ldr r0, _02262438 ; =0x00002FD4
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02262434:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02262438: .word 0x00002FD4
_0226243C: .word 0x0000339C
_02262440: .word 0x00001768
_02262444: .word 0x00002FD8
	thumb_func_end ov117_022623B0

	thumb_func_start ov117_02262448
ov117_02262448: ; 0x02262448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262480 ; =0x00002FD4
	ldr r2, [r4, r0]
	cmp r2, #7
	beq _02262458
	mov r0, #0
	pop {r4, pc}
_02262458:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _02262464
	mov r0, #0
	pop {r4, pc}
_02262464:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #1
	bne _0226247A
	ldr r0, _02262480 ; =0x00002FD4
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0226247A:
	mov r0, #0
	pop {r4, pc}
	nop
_02262480: .word 0x00002FD4
	thumb_func_end ov117_02262448

	thumb_func_start ov117_02262484
ov117_02262484: ; 0x02262484
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _02262516
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226249A: ; jump table
	.short _022624A6 - _0226249A - 2 ; case 0
	.short _022624B6 - _0226249A - 2 ; case 1
	.short _022624CE - _0226249A - 2 ; case 2
	.short _022624DC - _0226249A - 2 ; case 3
	.short _022624F4 - _0226249A - 2 ; case 4
	.short _02262502 - _0226249A - 2 ; case 5
_022624A6:
	ldrb r2, [r4, #0x18]
	mov r1, #1
	bl ov117_0226687C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624B6:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624CE:
	ldrb r1, [r4, #0x18]
	bl ov117_022668B8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624DC:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624F4:
	ldrb r1, [r4, #0x18]
	bl ov117_022667F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_02262502:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_02262516:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262484

	thumb_func_start ov117_0226251C
ov117_0226251C: ; 0x0226251C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _022625E8 ; =0x00002FB4
	ldr r0, _022625EC ; =0x00000516
	ldr r2, [r5, r1]
	cmp r2, r0
	bls _0226254C
	add r0, r1, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	add r0, r1, #0
	sub r0, #0xd8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	sub r1, #0xc4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0226254C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226254C:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _022625E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226255E: ; jump table
	.short _02262566 - _0226255E - 2 ; case 0
	.short _02262584 - _0226255E - 2 ; case 1
	.short _0226259E - _0226255E - 2 ; case 2
	.short _022625CE - _0226255E - 2 ; case 3
_02262566:
	ldr r0, _022625F0 ; =0x00002FC8
	ldr r0, [r5, r0]
	bl ov117_02263CF4
	ldr r1, _022625F0 ; =0x00002FC8
	add r2, r0, #0
	ldrb r3, [r4, #0x18]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov117_02266784
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_02262584:
	ldrb r1, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_0226259E:
	ldr r0, _022625F4 ; =0x00001434
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022625E4
	sub r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	blt _022625E4
	ldr r0, _022625F0 ; =0x00002FC8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov117_022622B8
	add r1, r0, #0
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02266730
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_022625CE:
	ldrb r1, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0xc]
_022625E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022625E8: .word 0x00002FB4
_022625EC: .word 0x00000516
_022625F0: .word 0x00002FC8
_022625F4: .word 0x00001434
	thumb_func_end ov117_0226251C

	thumb_func_start ov117_022625F8
ov117_022625F8: ; 0x022625F8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bhi _0226265E
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0226260E: ; jump table
	.short _02262616 - _0226260E - 2 ; case 0
	.short _02262624 - _0226260E - 2 ; case 1
	.short _0226263C - _0226260E - 2 ; case 2
	.short _02262648 - _0226260E - 2 ; case 3
_02262616:
	ldrb r1, [r4, #0x18]
	bl ov117_02266834
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262624:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _0226265E
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_0226263C:
	ldr r0, [r0, #0x20]
	cmp r0, #8
	bne _0226265E
	add r0, r1, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262648:
	ldr r1, [r4, #0x14]
	add r1, r1, #1
	str r1, [r4, #0x14]
	cmp r1, #0x5a
	blt _0226265E
	bl ov117_02266648
	cmp r0, #1
	bne _0226265E
	mov r0, #1
	pop {r4, pc}
_0226265E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_022625F8

	thumb_func_start ov117_02262664
ov117_02262664: ; 0x02262664
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov117_02261FF4
	cmp r0, #0
	bne _02262674
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262674:
	add r0, r5, #0
	add r0, #0xb8
	ldr r2, [r0, #0]
	add r4, r5, #0
	add r4, #0xb8
	cmp r2, #3
	blo _02262686
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262686:
	lsl r3, r2, #2
	ldr r2, _022626A8 ; =0x02266920
	add r0, r5, #0
	ldr r2, [r2, r3]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	bne _022626A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
_022626A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022626A8: .word 0x02266920
	thumb_func_end ov117_02262664

	thumb_func_start ov117_022626AC
ov117_022626AC: ; 0x022626AC
	bx lr
	; .align 2, 0
	thumb_func_end ov117_022626AC

	thumb_func_start ov117_022626B0
ov117_022626B0: ; 0x022626B0
	push {r3, r4, r5, lr}
	mov r1, #0x9e
	add r5, r0, #0
	mov r0, #0x6e
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9e
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0]
	ldr r1, [r0, #0x34]
	mov r0, #0x27
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov117_02262B98
	add r0, r4, #0
	bl ov117_02262E0C
	add r0, r4, #0
	bl ov117_02262E5C
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x34]
	cmp r0, #1
	beq _02262706
	cmp r0, #2
	bne _0226271A
	mov r1, #1
	mov r0, #0x26
	lsl r1, r1, #0x12
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x1a
	lsl r1, r1, #0xe
	add r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_02262706:
	mov r1, #9
	mov r0, #0x26
	lsl r1, r1, #0x10
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #7
	lsl r1, r1, #0x10
	add r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_0226271A:
	mov r1, #6
	mov r0, #0x26
	lsl r1, r1, #0x10
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02262728:
	mov r0, #0x87
	mov r1, #0x80
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x28
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov117_022638D8
	add r0, r5, #0
	bl ov117_02263A00
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_02263A6C
	mov r1, #2
	mov r0, #0x92
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022626B0

	thumb_func_start ov117_02262760
ov117_02262760: ; 0x02262760
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov117_02263AE4
	add r0, r5, #0
	bl ov117_022639BC
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02262760

	thumb_func_start ov117_02262798
ov117_02262798: ; 0x02262798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x91
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #2
	bne _022627D8
	ldr r0, _02262938 ; =0x00001758
	add r2, r1, #0
	ldr r3, [r5, r0]
	sub r2, #0x38
	str r3, [r4, r2]
	add r2, r0, #4
	ldr r3, [r5, r2]
	add r2, r1, #0
	sub r2, #0x34
	str r3, [r4, r2]
	add r2, r0, #0
	add r2, #8
	ldr r3, [r5, r2]
	add r2, r1, #0
	sub r2, #0x30
	str r3, [r4, r2]
	add r0, #0xc
	ldr r0, [r5, r0]
	sub r1, #0x2c
	str r0, [r4, r1]
	b _02262820
_022627D8:
	ldr r0, _0226293C ; =0x00002FB8
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _022627E8
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262800
_022627E8:
	mov r1, #0x83
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	b _02262820
_02262800:
	ldr r2, _02262940 ; =0x021BF6BC
	add r0, r1, #0
	ldrh r3, [r2, #0x1c]
	sub r0, #0x38
	str r3, [r4, r0]
	add r0, r1, #0
	ldrh r3, [r2, #0x1e]
	sub r0, #0x34
	str r3, [r4, r0]
	add r0, r1, #0
	ldrh r3, [r2, #0x22]
	sub r0, #0x30
	sub r1, #0x2c
	str r3, [r4, r0]
	ldrh r0, [r2, #0x20]
	str r0, [r4, r1]
_02262820:
	add r0, r4, #0
	bl ov117_02263270
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02262846
	add r0, r4, #0
	bl ov117_02262A38
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02262846
	bne _02262846
	mov r0, #0x9d
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
_02262846:
	add r0, r4, #0
	bl ov117_0226334C
	add r0, r4, #0
	bl ov117_02262A70
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_02263A6C
	mov r0, #0x9a
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0226287C
	add r1, #8
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0x1e
	ble _02262876
	mov r1, #0x1e
	strh r1, [r4, r0]
_02262876:
	add r0, r4, #0
	bl ov117_02262CFC
_0226287C:
	ldr r0, _02262944 ; =0x00002FBC
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02262934
	sub r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262934
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	ble _02262934
	add r0, r2, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	add r2, #0xdc
	mov r7, #0
	cmp r0, r2
	bge _022628C4
	add r0, r4, #0
	bl ov117_02262CB8
	cmp r0, #1
	bne _022628D4
	mov r0, #0x9a
	mov r1, #8
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r1, r7, #0
	add r0, #0xd
	strb r1, [r4, r0]
	ldr r0, _02262948 ; =0x00000576
	bl sub_02005748
	b _022628D4
_022628C4:
	add r0, r4, #0
	bl ov117_02262CE8
	mov r0, #0x9a
	add r1, r7, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r7, #1
_022628D4:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_0226296C
	add r6, r0, #0
	cmp r7, #1
	bne _022628F2
	mov r0, #0x19
	mul r0, r6
	mov r1, #0x64
	bl sub_020E1F6C
	add r6, r6, r0
_022628F2:
	ldr r1, _0226294C ; =0x00002FC8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	add r3, sp, #0
	bl ov117_02264E14
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02264E3C
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02263DC4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov117_02262998
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov117_022629E0
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02262934:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262938: .word 0x00001758
_0226293C: .word 0x00002FB8
_02262940: .word 0x021BF6BC
_02262944: .word 0x00002FBC
_02262948: .word 0x00000576
_0226294C: .word 0x00002FC8
	thumb_func_end ov117_02262798

	thumb_func_start ov117_02262950
ov117_02262950: ; 0x02262950
	push {r3, lr}
	ldr r0, _02262968 ; =0x00000276
	ldrb r2, [r1, r0]
	cmp r2, #1
	bne _02262964
	mov r2, #0
	strb r2, [r1, r0]
	add r0, r1, #0
	bl ov117_02262C3C
_02262964:
	pop {r3, pc}
	nop
_02262968: .word 0x00000276
	thumb_func_end ov117_02262950

	thumb_func_start ov117_0226296C
ov117_0226296C: ; 0x0226296C
	cmp r1, #0x62
	blt _02262976
	mov r2, #0x4b
	lsl r2, r2, #4
	b _0226297A
_02262976:
	mov r2, #0xa
	mul r2, r1
_0226297A:
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _02262990 ; =sub_020E1F6C
	lsl r1, r0, #2
	ldr r0, _02262994 ; =0x02266FD8
	ldr r0, [r0, r1]
	mov r1, #0x64
	mul r0, r2
	bx r3
	nop
_02262990: .word sub_020E1F6C
_02262994: .word 0x02266FD8
	thumb_func_end ov117_0226296C

	thumb_func_start ov117_02262998
ov117_02262998: ; 0x02262998
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0x62
	blt _022629B2
	add r1, r2, #4
	ldr r3, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	add r3, r3, r1
	add r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629B2:
	blt _022629C4
	add r1, r2, #4
	ldr r3, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	add r3, r3, r1
	add r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629C4:
	mov r3, #2
	lsl r3, r3, #0xc
	add r1, r2, #4
	str r3, [r0, r1]
_022629CC:
	mov r1, #0x92
	lsl r1, r1, #2
	mov r2, #0x11
	ldr r3, [r0, r1]
	lsl r2, r2, #0xc
	cmp r3, r2
	ble _022629DC
	str r2, [r0, r1]
_022629DC:
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02262998

	thumb_func_start ov117_022629E0
ov117_022629E0: ; 0x022629E0
	push {r3, lr}
	cmp r3, #1
	bne _022629FE
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	blt _022629FE
	mov r1, #0
	bl ov117_02261600
	ldr r0, _02262A30 ; =0x0000057A
	bl sub_02005748
	pop {r3, pc}
_022629FE:
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	bge _02262A2E
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x10]
	cmp r1, r2
	bge _02262A1E
	mov r1, #2
	bl ov117_02261600
	ldr r0, _02262A34 ; =0x00000578
	bl sub_02005748
	pop {r3, pc}
_02262A1E:
	cmp r1, r2
	ble _02262A2E
	mov r1, #1
	bl ov117_02261600
	ldr r0, _02262A34 ; =0x00000578
	bl sub_02005748
_02262A2E:
	pop {r3, pc}
	; .align 2, 0
_02262A30: .word 0x0000057A
_02262A34: .word 0x00000578
	thumb_func_end ov117_022629E0

	thumb_func_start ov117_02262A38
ov117_02262A38: ; 0x02262A38
	push {r4, lr}
	mov r1, #0x8e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _02262A6C
	mov r2, #0
	str r2, [r4, r1]
	sub r2, r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov117_022638AC
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	sub r2, r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x19
	bge _02262A6C
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
_02262A6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262A38

	thumb_func_start ov117_02262A70
ov117_02262A70: ; 0x02262A70
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, _02262B80 ; =0x2D8B6127
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	mov r0, #0x32
	mov r2, #1
	bl sub_020B275C
	ldr r0, _02262B84 ; =0x00007FFF
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x33
	mov r2, #1
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #0
	str r0, [sp, #0x2c]
	mov r0, #0x13
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, _02262B88 ; =0xFFFFB000
	add r1, sp, #0x2c
	str r0, [sp, #0x34]
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	mul r0, r4
	bl sub_020E1F6C
	mov r1, #0x26
	lsl r1, r1, #4
	add r6, r4, r0
	add r0, r1, #0
	ldr r4, [r5, r1]
	add r0, #8
	add r1, #0xc
	ldrsh r2, [r5, r0]
	ldrsh r0, [r5, r1]
	mov r1, #0x64
	add r0, r2, r0
	mul r0, r4
	bl sub_020E1F6C
	add r0, r4, r0
	str r0, [sp, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	mov r0, #0x1b
	add r1, sp, #0x20
	mov r2, #3
	str r6, [sp, #0x24]
	bl sub_020B275C
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #0x10
	add r1, sp, #0x14
	mov r2, #1
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x15
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r1, sp, #0x10
	mov r2, #1
	bl sub_020B275C
	mov r0, #1
	add r1, r0, #0
	bl ov117_02262D4C
	bl ov117_02262D98
	ldr r1, [r5, #4]
	mov r2, #1
	ldr r0, [r1, #0x2c]
	lsl r4, r0, #0x10
	ldr r0, [r1, #8]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02262B8C ; =0x1FFFFFFF
	and r1, r0
	ldr r0, _02262B90 ; =0x72400000
	orr r0, r1
	str r0, [sp, #0xc]
	mov r0, #0x2a
	add r1, sp, #0xc
	bl sub_020B275C
	lsr r0, r4, #0x11
	str r0, [sp, #8]
	mov r0, #0x2b
	add r1, sp, #8
	mov r2, #1
	bl sub_020B275C
	ldr r0, _02262B94 ; =0x001F00C1
	add r1, sp, #4
	str r0, [sp, #4]
	mov r0, #0x29
	mov r2, #1
	bl sub_020B275C
	add r0, r5, #0
	bl ov117_02262EAC
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	bl sub_020B2628
	add sp, #0x38
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02262B80: .word 0x2D8B6127
_02262B84: .word 0x00007FFF
_02262B88: .word 0xFFFFB000
_02262B8C: .word 0x1FFFFFFF
_02262B90: .word 0x72400000
_02262B94: .word 0x001F00C1
	thumb_func_end ov117_02262A70

	thumb_func_start ov117_02262B98
ov117_02262B98: ; 0x02262B98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xad
	mov r1, #0x1d
	mov r2, #0x6e
	bl sub_02006AC0
	str r0, [r5, #0]
	bl sub_020B3C1C
	str r0, [r5, #4]
	bl sub_0201CBCC
	ldr r6, [r5, #4]
	ldrh r0, [r6, #0x30]
	ldr r7, [r6, #0x38]
	lsl r4, r0, #3
	ldr r0, [r6, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	str r0, [sp]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262BD0
	bl sub_02022974
_02262BD0:
	mov r0, #0x6e
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x6e
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r6, r7
	add r2, r4, #0
	bl sub_020C4DB0
	mov r1, #0x25
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r6, r7
	add r2, r4, #0
	bl sub_020C4DB0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020C2C54
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r0, r1, #4
	str r4, [r5, r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02262C2A
	bl sub_02022974
_02262C2A:
	ldr r2, [r5, #4]
	ldr r0, [r5, #0]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	sub r1, r1, r0
	bl sub_020182F0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02262B98

	thumb_func_start ov117_02262C3C
ov117_02262C3C: ; 0x02262C3C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C0F1C
	mov r2, #0x25
	lsl r2, r2, #4
	add r1, r2, #0
	ldr r0, [r4, r2]
	add r1, #8
	add r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_020C0F50
	bl sub_020C0FBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262C3C

	thumb_func_start ov117_02262C60
ov117_02262C60: ; 0x02262C60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0x32
	lsl r0, r0, #0xa
	lsl r1, r1, #4
	bl sub_020E1F6C
	add r0, #0x80
	asr r3, r0, #8
	cmp r3, #0x10
	ble _02262C7E
	mov r3, #0x10
_02262C7E:
	mov r2, #0x93
	mov r0, #0x1f
	lsl r2, r2, #2
	str r0, [sp]
	add r1, r2, #4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	lsl r3, r3, #0x18
	lsl r2, r2, #0xf
	ldr r1, [r4, r1]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200393C
	mov r1, #0x25
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020C2C54
	ldr r0, _02262CB4 ; =0x00000276
	mov r1, #1
	strb r1, [r4, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02262CB4: .word 0x00000276
	thumb_func_end ov117_02262C60

	thumb_func_start ov117_02262CB8
ov117_02262CB8: ; 0x02262CB8
	push {r4, lr}
	mov r2, #0x97
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r4, #0
	add r1, r3, r1
	str r1, [r0, r2]
	add r1, r2, #0
	ldr r3, [r0, r2]
	add r1, #0xc4
	cmp r3, r1
	blt _02262CD8
	add r1, r2, #0
	add r1, #0xc4
	str r1, [r0, r2]
	mov r4, #1
_02262CD8:
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	bl ov117_02262C60
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262CB8

	thumb_func_start ov117_02262CE8
ov117_02262CE8: ; 0x02262CE8
	mov r1, #0x97
	ldr r3, _02262CF8 ; =ov117_02262C60
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	bx r3
	nop
_02262CF8: .word ov117_02262C60
	thumb_func_end ov117_02262CE8

	thumb_func_start ov117_02262CFC
ov117_02262CFC: ; 0x02262CFC
	push {r4, lr}
	mov r2, #0x9a
	add r4, r0, #0
	lsl r2, r2, #2
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _02262D44
	add r1, r2, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #0
	add r1, #0xd
	strb r3, [r4, r1]
	add r1, r2, #0
	add r1, #0xd
	ldrb r1, [r4, r1]
	cmp r1, #4
	bne _02262D32
	sub r2, #0xc
	ldr r2, [r4, r2]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	bl ov117_02262C60
	pop {r4, pc}
_02262D32:
	cmp r1, #8
	bne _02262D44
	sub r2, #0xc
	ldr r1, [r4, r2]
	bl ov117_02262C60
	ldr r0, _02262D48 ; =0x00000275
	mov r1, #0
	strb r1, [r4, r0]
_02262D44:
	pop {r4, pc}
	nop
_02262D48: .word 0x00000275
	thumb_func_end ov117_02262CFC

	thumb_func_start ov117_02262D4C
ov117_02262D4C: ; 0x02262D4C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	cmp r0, #0
	beq _02262D5A
	mov r0, #1
	b _02262D5C
_02262D5A:
	mov r0, #0
_02262D5C:
	lsl r1, r0, #0xf
	ldr r0, _02262D90 ; =0x21085EF7
	mov r2, #1
	orr r0, r1
	str r0, [sp, #4]
	mov r0, #0x30
	add r1, sp, #4
	bl sub_020B275C
	cmp r4, #0
	beq _02262D76
	mov r0, #1
	b _02262D78
_02262D76:
	mov r0, #0
_02262D78:
	lsl r1, r0, #0xf
	ldr r0, _02262D94 ; =0x00007FFF
	mov r2, #1
	orr r0, r1
	str r0, [sp]
	mov r0, #0x31
	add r1, sp, #0
	bl sub_020B275C
	add sp, #8
	pop {r4, pc}
	nop
_02262D90: .word 0x21085EF7
_02262D94: .word 0x00007FFF
	thumb_func_end ov117_02262D4C

	arm_func_start ov117_02262D98
ov117_02262D98: ; 0x02262D98
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	add r3, sp, #0
	mov r6, #0
_02262DA8:
	lsl r0, r6, #1
	add r5, r0, #1
	smull r1, r0, r5, r5
	umull ip, r2, r5, r1
	mla r2, r5, r0, r2
	asr r4, r5, #0x1f
	umull lr, r0, r5, ip
	mla r2, r4, r1, r2
	mla r0, r5, r2, r0
	mla r0, r4, ip, r0
	lsr r1, lr, #0x18
	orr r1, r1, r0, lsl #8
	add r0, r6, #1
	strb r1, [r3, r6]
	and r6, r0, #0xff
	cmp r6, #0x7f
	blo _02262DA8
	mov ip, #0xff
	add r1, sp, #0
	mov r0, #0x34
	mov r2, #0x20
	strb ip, [r3, #0x7f]
	bl sub_020B275C
	add sp, sp, #0x80
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov117_02262D98

	arm_func_start ov117_02262E0C
ov117_02262E0C: ; 0x02262E0C
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E20:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0xc]
	str r4, [r3, #0x10]
	str ip, [r3, #0x14]
	sub r2, r4, #0x10000
	str r2, [r3, #0x18]
	str r1, [r3, #0x1c]
	str r4, [r3, #0x20]
	str r1, [r3, #0x24]
	add lr, lr, #1
	str r2, [r3, #0x28]
	cmp lr, #8
	sub r4, r4, #0x10000
	blt _02262E20
	ldmia sp!, {r4, pc}
	arm_func_end ov117_02262E0C

	arm_func_start ov117_02262E5C
ov117_02262E5C: ; 0x02262E5C
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E70:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0x10c]
	str r4, [r3, #0x110]
	str ip, [r3, #0x114]
	add r2, r4, #0x10000
	str r2, [r3, #0x118]
	str r1, [r3, #0x11c]
	str r4, [r3, #0x120]
	str r1, [r3, #0x124]
	add lr, lr, #1
	mov r4, r2
	str r2, [r3, #0x128]
	cmp lr, #8
	blt _02262E70
	ldmia sp!, {r4, pc}
	arm_func_end ov117_02262E5C

	arm_func_start ov117_02262EAC
ov117_02262EAC: ; 0x02262EAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, #0
	ldr r6, _02263164 ; =0x1FF00000
	mov sl, r0
	mov r4, sb
	add r8, sp, #2
	add r7, sp, #0
	mov fp, sb
	mov r5, sb
_02262ED4:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0x40
	add r1, sp, #0x44
	mov r2, #1
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x10c]
	ldr r1, [r1, #0x110]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x40]
	mov r0, #0x22
	add r1, sp, #0x40
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x3c
	mov r2, #1
	str r6, [sp, #0x3c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x34
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x34]
	mov r2, #2
	str r5, [sp, #0x38]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x114]
	ldr r1, [r1, #0x118]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x30]
	mov r0, #0x22
	add r1, sp, #0x30
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x2c
	mov r2, #1
	str r6, [sp, #0x2c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x24
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x24]
	mov r2, #2
	str r4, [sp, #0x28]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x124]
	ldr r1, [r1, #0x128]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x20]
	mov r0, #0x22
	add r1, sp, #0x20
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0x1c
	mov r2, #1
	str r6, [sp, #0x1c]
	bl sub_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x14
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x14]
	mov r2, #2
	str fp, [sp, #0x18]
	bl sub_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x11c]
	ldr r1, [r1, #0x120]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x10]
	mov r0, #0x22
	add r1, sp, #0x10
	mov r2, #1
	bl sub_020B275C
	mov r0, #0x21
	add r1, sp, #0xc
	mov r2, #1
	str r6, [sp, #0xc]
	bl sub_020B275C
	mov r0, #0
	str r0, [sp, #8]
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #4
	orr r2, r3, r2, lsl #16
	str r2, [sp, #4]
	mov r2, #2
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x41
	mov r2, r1
	bl sub_020B275C
	add sb, sb, #1
	cmp sb, #8
	blt _02262ED4
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02263164: .word 0x1FF00000
	arm_func_end ov117_02262EAC

	arm_func_start ov117_02263168
ov117_02263168: ; 0x02263168
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	asr r4, r0, #0x1f
	mov r5, r1
	lsl r1, r4, #0xc
	mov r7, r2
	mov r6, r3
	orr r1, r1, r0, lsr #20
	lsl r0, r0, #0xc
	mov r2, #0x80000
	mov r3, #0
	bl sub_020E1D24
	asr r1, r5, #0x1f
	lsl r1, r1, #0xc
	mov r4, r0
	orr r1, r1, r5, lsr #20
	lsl r0, r5, #0xc
	mov r2, #0x80000
	mov r3, #0
	bl sub_020E1D24
	mov r5, r0
	ldr r0, _0226326C ; =0x00007FFF
	cmp r4, r0
	ble _022631C8
	bl sub_02022974
_022631C8:
	mov r0, #0x8000
	neg r0, r0
	cmp r4, r0
	bge _022631DC
	bl sub_02022974
_022631DC:
	ldr r0, _0226326C ; =0x00007FFF
	cmp r5, r0
	ble _022631EC
	bl sub_02022974
_022631EC:
	mov r0, #0x8000
	neg r0, r0
	cmp r5, r0
	bge _02263200
	bl sub_02022974
_02263200:
	ldr r0, _0226326C ; =0x00007FFF
	sub r1, r4, #0x800
	cmp r1, r0
	ble _02263214
	bl sub_02022974
_02263214:
	mov r0, #0x8000
	sub r1, r4, #0x800
	neg r0, r0
	cmp r1, r0
	bge _0226322C
	bl sub_02022974
_0226322C:
	ldr r0, _0226326C ; =0x00007FFF
	add r1, r5, #0x800
	cmp r1, r0
	ble _02263240
	bl sub_02022974
_02263240:
	mov r0, #0x8000
	add r1, r5, #0x800
	neg r0, r0
	cmp r1, r0
	bge _02263258
	bl sub_02022974
_02263258:
	sub r0, r4, #0x800
	strh r0, [r7]
	add r0, r5, #0x800
	strh r0, [r6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226326C: .word 0x00007FFF
	arm_func_end ov117_02263168

	arm_func_start ov117_02263270
ov117_02263270: ; 0x02263270
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x238]
	cmp r1, #1
	ldrne r1, [r4, #0x218]
	cmpne r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x270]
	ldr r3, _0226333C ; =0x02266B07
	ldr r1, _02263340 ; =0x02266B05
	ldrb lr, [r3, r2, lsl #2]
	ldr r5, [r4, #0x230]
	ldrb r3, [r1, r2, lsl #2]
	ldr ip, [r4, #0x20c]
	add r1, lr, r5, asr #12
	cmp ip, r3
	blt _022632E4
	ldr r3, _02263344 ; =0x02266B06
	ldrb r3, [r3, r2, lsl #2]
	cmp ip, r3
	bgt _022632E4
	ldr ip, [r4, #0x210]
	cmp ip, r1
	blt _022632E4
	ldr r3, _02263348 ; =0x02266B08
	ldrb r2, [r3, r2, lsl #2]
	cmp ip, r2
	ble _022632EC
_022632E4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022632EC:
	mov r2, #1
	str r2, [r4, #0x238]
	ldr r2, [r4, #0x20c]
	str r2, [r4, #0x224]
	ldr r2, [r4, #0x210]
	str r2, [r4, #0x228]
	ldr r2, [r4, #0x210]
	sub r1, r2, r1
	str r1, [r4, #0x22c]
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x10]
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	neg r1, r1
	str r1, [r4, #0x230]
	bl ov117_022638AC
	str r0, [r4, #0x240]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0226333C: .word 0x02266B07
_02263340: .word 0x02266B05
_02263344: .word 0x02266B06
_02263348: .word 0x02266B08
	arm_func_end ov117_02263270

	arm_func_start ov117_0226334C
ov117_0226334C: ; 0x0226334C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x238]
	mov r4, #0
	cmp r0, #1
	bne _022633E8
	ldr r2, [r5, #0x23c]
	ldr r1, [r5, #0x210]
	cmp r1, r2
	movlt r0, r4
	strblt r4, [r5, #0x274]
	ldmia sp!,lt {r3, r4, r5, pc}
	strbeq r4, [r5, #0x274]
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	sub r0, r4, #1
	cmp r2, r0
	beq _022633BC
	cmp r1, r2
	ble _022633BC
	ldr r0, _02263440 ; =0x00000577
	bl sub_020057D4
	cmp r0, #0
	bne _022633BC
	ldr r0, _02263440 ; =0x00000577
	bl sub_02005748
	mov r0, #1
	strb r0, [r5, #0x274]
_022633BC:
	ldr r1, [r5, #0x270]
	ldr r0, _02263444 ; =0x02266B07
	ldr ip, [r5, #0x210]
	ldr r3, [r5, #0x22c]
	ldr r2, [r5, #0x230]
	ldrb r0, [r0, r1, lsl #2]
	sub r1, ip, r3
	str ip, [r5, #0x23c]
	add r0, r2, r0, lsl #12
	rsb r2, r0, r1, lsl #12
	b _022633F4
_022633E8:
	ldr r0, [r5, #0x248]
	mov r4, #1
	neg r2, r0
_022633F4:
	mov r0, r5
	mov r1, r4
	bl ov117_02263448
	cmp r0, #0
	beq _0226341C
	cmp r0, #1
	cmpne r0, #2
	bne _0226341C
	mov r0, r5
	bl ov117_02262A38
_0226341C:
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x10]
	mov r0, #1
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	neg r1, r1
	str r1, [r5, #0x230]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02263440: .word 0x00000577
_02263444: .word 0x02266B07
	arm_func_end ov117_0226334C

	arm_func_start ov117_02263448
ov117_02263448: ; 0x02263448
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4, #0x10]
	ldr r3, [r4, #0x20]
	neg r6, r5
	neg r7, r3
	sub r3, r6, r7
	add r3, r3, r3, lsr #31
	mov r5, r2
	mov r2, #0
	mov sb, r1
	add r8, r7, r3, asr #1
	str r2, [sp, #8]
	bl ov117_022637AC
	cmp r0, #0
	beq _022634A0
	cmp r0, #1
	beq _022634B4
	cmp r0, #2
	beq _022634E0
	b _02263508
_022634A0:
	add r1, r6, r5
	add r0, r7, r5
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	b _02263508
_022634B4:
	add r0, sp, #0x10
	str r0, [sp]
	add sl, sp, #0xc
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
	b _02263508
_022634E0:
	add r0, sp, #0xc
	str r0, [sp]
	add sl, sp, #0x10
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
_02263508:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	sub r0, r2, r1
	add r0, r0, r0, lsr #31
	add r5, r1, r0, asr #1
	cmp r8, r5
	cmpeq r6, r2
	cmpeq r7, r1
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	movlt r5, #0
	cmp r2, #0
	movlt r0, #0
	strlt r0, [sp, #0x10]
	cmp r1, #0
	movlt r0, #0
	strlt r0, [sp, #0xc]
	cmp r5, #0x64000
	movgt r0, #1
	strgt r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movgt r5, #0x64000
	cmp r0, #0x64000
	ble _02263580
	mov r0, #0x64000
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #8]
_02263580:
	ldr r0, [sp, #0xc]
	cmp r0, #0x64000
	ble _0226359C
	mov r0, #0x64000
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
_0226359C:
	mov r0, r4
	mov r1, sb
	bl ov117_022637AC
	cmp r0, #0
	beq _022635C0
	cmp r0, #1
	beq _02263600
	cmp r0, #2
	beq _022635E0
_022635C0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl sub_020BDA20
	add r1, r0, #0x8000
	lsl r1, r1, #0x10
	lsr fp, r1, #0x10
	b _02263624
_022635E0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl sub_020BDA20
	add r1, r0, #0x8000
	lsl r1, r1, #0x10
	lsr fp, r1, #0x10
	b _02263624
_02263600:
	ldr r0, [sp, #0x10]
	mov r1, #0x40000
	sub r0, r0, r5
	neg r1, r1
	bl sub_020BDA20
	mov fp, r0
	add r0, fp, #0x8000
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_02263624:
	asr r1, fp, #4
	lsl r7, r1, #1
	add r2, r7, #1
	ldr r1, _022637A4 ; =0x020F983C
	lsl r2, r2, #1
	ldrsh r3, [r1, r2]
	asr r2, r0, #4
	lsl r6, r2, #1
	lsl r2, r3, #6
	add r2, r2, #0x40000
	str r2, [r4, #0xc]
	lsl r2, r7, #1
	ldrsh r7, [r1, r2]
	add r2, r6, #1
	lsl r2, r2, #1
	add r7, r5, r7, lsl #6
	neg r7, r7
	str r7, [r4, #0x10]
	ldrsh r7, [r1, r2]
	ldr r2, _022637A8 ; =0x92492493
	neg r3, r5x70000
	lsl r7, r7, #6
	add r7, r7, #0x40000
	lsl r6, r6, #1
	str r7, [r4, #0x1c]
	ldrsh r6, [r1, r6]
	smull r1, lr, r2, r3
	add r1, r5, r6, lsl #6
	neg r6, r1
	add lr, r3, lr
	lsr r1, r3, #0x1f
	str r6, [r4, #0x20]
	cmp r0, #0x8000
	add lr, r1, lr, asr #2
	smullls r1, r6, r2, r0
	addls r6, r0, r6
	lsrls r1, r0, #0x1f
	bls _022636D0
	neg r1, r0x10000
	neg r3, r1
	smull r1, r6, r2, r3
	add r6, r3, r6
	lsr r1, r3, #0x1f
_022636D0:
	add r6, r1, r6, asr #2
	ldr r3, _022637A4 ; =0x020F983C
	mov r7, r6
	mov r8, lr
	mov ip, #1
_022636E4:
	sub r1, fp, r7
	asr r1, r1, #4
	lsl r1, r1, #1
	add r2, r3, r1, lsl #1
	ldrsh sb, [r2, #2]
	sub r2, r0, r7
	lsl r1, r1, #1
	lsl sb, sb, #6
	add sl, sb, #0x40000
	asr r2, r2, #4
	lsl sb, r2, #1
	add r2, r4, ip, lsl #5
	str sl, [r2, #0xc]
	ldrsh r1, [r3, r1]
	lsl sl, sb, #1
	add sb, r3, sb, lsl #1
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	neg r1, r1
	str r1, [r2, #0x10]
	ldrsh r1, [sb, #2]
	add r7, r7, r6
	add ip, ip, #1
	lsl r1, r1, #6
	add r1, r1, #0x40000
	str r1, [r2, #0x1c]
	ldrsh r1, [r3, sl]
	cmp ip, #7
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	neg r1, r1
	str r1, [r2, #0x20]
	ldr r1, [r2, #0xc]
	add r8, r8, lr
	str r1, [r2, #-0xc]
	ldr r1, [r2, #0x10]
	str r1, [r2, #-8]
	ldr r1, [r2, #0x1c]
	str r1, [r2, #4]
	ldr r1, [r2, #0x20]
	str r1, [r2, #8]
	blt _022636E4
	ldr r0, [sp, #8]
	cmp r0, #1
	moveq r0, #2
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022637A4: .word 0x020F983C
_022637A8: .word 0x92492493
	arm_func_end ov117_02263448

	arm_func_start ov117_022637AC
ov117_022637AC: ; 0x022637AC
	cmp r1, #1
	moveq r0, #0
	bxeq lr
	ldr r2, [r0, #0x21c]
	ldr r1, [r0, #0x224]
	sub r0, r2, #0x10
	cmp r1, r0
	movlt r0, #1
	bxlt lr
	add r0, r2, #0x10
	cmp r1, r0
	movgt r0, #2
	movle r0, #0
	bx lr
	arm_func_end ov117_022637AC

	arm_func_start ov117_022637E4
ov117_022637E4: ; 0x022637E4
	stmfd sp!, {r4, lr}
	ldr lr, [sp, #8]
	add r4, r2, r1
	mov r0, #0
	cmp r4, #0x64000
	subgt r0, r4, #0x64000
	subgt r1, r1, r0
	movgt r0, #1
	ldr ip, [sp, #0xc]
	str r2, [lr]
	str r3, [ip]
	add r4, r2, r1
	str r4, [lr]
	cmp r3, r2
	strgt r3, [ip]
	ldmia sp!,gt {r4, pc}
	mov r2, #0x19
	mul r2, r1
	ldr lr, _02263848 ; =0x51EB851F
	lsr r1, r2, #0x1f
	smull r2, r4, lr, r2
	add r4, r1, r4, asr #5
	sub r1, r3, r4
	str r1, [ip]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02263848: .word 0x51EB851F
	arm_func_end ov117_022637E4

	arm_func_start ov117_0226384C
ov117_0226384C: ; 0x0226384C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #0x20]
	ldr r1, [r0, #0x10]
	ldr r4, [r0, #0x1c]
	sub r1, r1, r5
	add r1, r1, r1, lsr #31
	ldr lr, [r0, #0xc]
	ldr ip, [r0, #0xe4]
	ldr r3, [r0, #0xd4]
	ldr r2, [r0, #0xd8]
	add r0, r5, r1, asr #1
	sub r0, r2, r0
	sub r2, r4, lr
	sub r1, ip, r3
	add r1, r2, r1
	neg r0, r0
	smull r2, r0, r1, r0
	add r1, r2, #0x800
	adc r0, r0, #0
	lsr r1, r1, #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, r1, lsr #31
	asr r0, r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov117_0226384C

	arm_func_start ov117_022638AC
ov117_022638AC: ; 0x022638AC
	stmfd sp!, {r3, lr}
	bl ov117_0226384C
	mov r2, #0x64
	umull r3, r1, r0, r2
	asr r0, r0, #0x1f
	mla r1, r0, r2, r1
	mov r0, r3
	mov r3, #0
	mov r2, #0x3200000
	bl sub_020E1D24
	ldmia sp!, {r3, pc}
	arm_func_end ov117_022638AC

	arm_func_start ov117_022638D8
ov117_022638D8: ; 0x022638D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r0, #0xad
	mov r1, #0x6e
	bl sub_02006C24
	mov r4, r0
	str r4, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, _022639B4 ; =0x00002715
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x8c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, _022639B8 ; =0x00002713
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, r4
	mov r3, #0x37
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 ; =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x39
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 ; =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x38
	bl sub_0200CE54
	mov r0, r4
	bl sub_02006CA8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022639B4: .word 0x00002715
_022639B8: .word 0x00002713
	arm_func_end ov117_022638D8

	arm_func_start ov117_022639BC
ov117_022639BC: ; 0x022639BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D070
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D090
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 ; =0x00002713
	bl sub_0200D0A0
	ldr r0, [r4, #0x28]
	ldr r1, _022639FC ; =0x00002715
	bl sub_0200D080
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022639F8: .word 0x00002713
_022639FC: .word 0x00002715
	arm_func_end ov117_022639BC

	arm_func_start ov117_02263A00
ov117_02263A00: ; 0x02263A00
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	ldr lr, _02263A68 ; =0x02266B38
	mov r5, r0
	ldmia lr!, {r0, r1, r2, r3}
	add ip, sp, #0
	mov r4, ip
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	mov r2, r4
	str r0, [ip]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	bl sub_0200CE6C
	mov r4, r0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	mov r0, r4
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02263A68: .word 0x02266B38
	arm_func_end ov117_02263A00

	arm_func_start ov117_02263A6C
ov117_02263A6C: ; 0x02263A6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0x238]
	mov r5, r1
	cmp r2, #0
	moveq r4, #0
	beq _02263A94
	mov r1, #0
	bl ov117_022637AC
	add r4, r0, #1
_02263A94:
	ldr r1, [r6, #0x270]
	ldr r0, _02263AE0 ; =0x02266B07
	ldr r3, [r6, #0x21c]
	ldrb r0, [r0, r1, lsl #2]
	ldr r2, [r6, #0x230]
	lsl r1, r3, #0x10
	add r0, r0, r2, asr #12
	lsl r2, r0, #0x10
	mov r0, r5
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0x160000
	bl sub_0200D500
	mov r0, r5
	mov r1, r4
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02263AE0: .word 0x02266B07
	arm_func_end ov117_02263A6C

	arm_func_start ov117_02263AE4
ov117_02263AE4: ; 0x02263AE4
	ldr ip, _02263AEC ; =sub_0200D0F4
	bx ip
	; .align 2, 0
_02263AEC: .word sub_0200D0F4
	arm_func_end ov117_02263AE4

	thumb_func_start ov117_02263AF0
ov117_02263AF0: ; 0x02263AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x10]
	mov r0, #0xad
	mov r1, #0x6e
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x6e
	str r1, [sp, #0xc]
	ldr r1, _02263B7C ; =0x02266BEC
	lsl r6, r5, #3
	ldrh r1, [r1, r6]
	add r2, r7, #0
	mov r3, #7
	str r0, [sp, #0x14]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	ldr r1, _02263B80 ; =0x02266BEE
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldrh r1, [r1, r6]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	mov r3, #7
	bl sub_0200710C
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020C4CF4
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02263B84 ; =0x02266ED4
	lsl r1, r5, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	mov r1, #1
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	add r0, r4, #0
	str r1, [r4, #0]
	add r0, #0x2c
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r4, #0
	bl ov117_02263BA4
	ldr r0, _02263B88 ; =0x000005EB
	bl sub_02005748
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263B7C: .word 0x02266BEC
_02263B80: .word 0x02266BEE
_02263B84: .word 0x02266ED4
_02263B88: .word 0x000005EB
	thumb_func_end ov117_02263AF0

	thumb_func_start ov117_02263B8C
ov117_02263B8C: ; 0x02263B8C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	add r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02263B8C

	thumb_func_start ov117_02263BA4
ov117_02263BA4: ; 0x02263BA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02263C86
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r2, #0
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r3, sp, #0x10
	bl ov117_02263C8C
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _02263BD0
	mov r7, #0
	b _02263BF0
_02263BD0:
	bge _02263BE2
	lsl r1, r1, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0x80
	sub r7, r0, r1
	b _02263BF0
_02263BE2:
	sub r0, r1, r0
	lsl r1, r0, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	neg r7, r0
_02263BF0:
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _02263BFE
	mov r6, #0
	b _02263C1E
_02263BFE:
	bge _02263C10
	lsl r1, r1, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0x80
	sub r6, r0, r1
	b _02263C1E
_02263C10:
	sub r0, r1, r0
	lsl r1, r0, #7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	neg r6, r0
_02263C1E:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02263C28
	mov r4, #0
	b _02263C44
_02263C28:
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	add r4, r0, #1
	ldr r1, [r5, #0x28]
	mov r0, #1
	tst r0, r1
	beq _02263C3C
	neg r4, r4
_02263C3C:
	ldr r1, [r5, #0x28]
	mov r0, #1
	eor r0, r1
	str r0, [r5, #0x28]
_02263C44:
	ldr r0, [sp, #0x10]
	bl sub_020BCFE0
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020BCFE0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #3
	add r3, r5, #0
	bl sub_0201C6A8
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, #7
	mov r2, #6
	bl sub_0201C6A8
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #0
	sub r3, r4, r7
	bl sub_0201C63C
	mov r3, #0x27
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #3
	sub r3, r3, r6
	bl sub_0201C63C
_02263C86:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02263BA4

	thumb_func_start ov117_02263C8C
ov117_02263C8C: ; 0x02263C8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r3, #0
	ldr r0, _02263CE8 ; =0x02266BF0
	lsl r3, r1, #3
	ldr r0, [r0, r3]
	add r6, r5, #0
	mul r0, r2
	mov r2, #0xc
	mul r6, r2
	ldr r3, _02263CEC ; =0x02266ED4
	lsl r2, r1, #2
	add r1, r3, r6
	ldr r1, [r2, r1]
	bl sub_020E1F6C
	mov r1, #3
	lsl r1, r1, #8
	add r2, r0, r1
	ldr r1, [sp, #0x10]
	str r2, [r4, #0]
	str r2, [r1, #0]
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	ble _02263CE6
	mov r1, #0xd
	lsl r1, r1, #8
	sub r0, r0, r1
	ldr r2, _02263CF0 ; =0x0000119A
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r5, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [r4, #0]
	orr r1, r0
	add r0, r2, r1
	str r0, [r4, #0]
_02263CE6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02263CE8: .word 0x02266BF0
_02263CEC: .word 0x02266ED4
_02263CF0: .word 0x0000119A
	thumb_func_end ov117_02263C8C

	thumb_func_start ov117_02263CF4
ov117_02263CF4: ; 0x02263CF4
	cmp r0, #0xa
	blt _02263CFC
	mov r0, #2
	bx lr
_02263CFC:
	cmp r0, #5
	blt _02263D04
	mov r0, #1
	bx lr
_02263D04:
	mov r0, #0
	bx lr
	thumb_func_end ov117_02263CF4

	thumb_func_start ov117_02263D08
ov117_02263D08: ; 0x02263D08
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	add r0, r0, r6
	add r7, r3, #0
	str r0, [r4, #0x10]
	mov r1, #6
	bl sub_020E1F6C
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	bl ov117_022622C4
	add r1, r4, #0
	add r1, #0x18
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	add r2, r2, r6
	str r2, [r1, r0]
	bl sub_0203608C
	cmp r7, r0
	bne _02263D4E
	ldr r1, _02263D54 ; =0x00003848
	ldr r0, [r5, r1]
	add r0, r0, r6
	str r0, [r5, r1]
	ldr r0, _02263D58 ; =0x000015A8
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov117_02265F98
_02263D4E:
	ldr r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263D54: .word 0x00003848
_02263D58: .word 0x000015A8
	thumb_func_end ov117_02263D08

	thumb_func_start ov117_02263D5C
ov117_02263D5C: ; 0x02263D5C
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02263D66
	mov r0, #0
	bx lr
_02263D66:
	ldr r2, [r0, #0x14]
	cmp r1, r2
	bge _02263D6E
	add r2, r1, #0
_02263D6E:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #8]
	add r1, r1, r2
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02263D5C

	thumb_func_start ov117_02263D80
ov117_02263D80: ; 0x02263D80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02263DA8 ; =0x00002FCC
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r4, r2, #0
	cmp r0, #0
	beq _02263DA4
	add r0, r4, #0
	bl ov117_02263D5C
	ldr r2, [r5, #0]
	add r0, r6, #0
	add r2, #0x30
	ldrb r2, [r2]
	add r1, r4, #0
	bl ov117_02263BA4
_02263DA4:
	pop {r4, r5, r6, pc}
	nop
_02263DA8: .word 0x00002FCC
	thumb_func_end ov117_02263D80

	thumb_func_start ov117_02263DAC
ov117_02263DAC: ; 0x02263DAC
	ldr r1, _02263DBC ; =0x00001428
	ldr r3, _02263DC0 ; =sub_020E1F6C
	add r2, r0, r1
	ldr r1, [r2, #8]
	mov r0, #0x64
	mul r0, r1
	ldr r1, [r2, #0xc]
	bx r3
	; .align 2, 0
_02263DBC: .word 0x00001428
_02263DC0: .word sub_020E1F6C
	thumb_func_end ov117_02263DAC

	thumb_func_start ov117_02263DC4
ov117_02263DC4: ; 0x02263DC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02263E14 ; =0x00002FDC
	add r4, r1, #0
	mov r3, #0
	add r2, r5, #0
_02263DD2:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02263E00
	ldr r2, _02263E14 ; =0x00002FDC
	mov r6, #0x18
	add r2, r5, r2
	mul r6, r3
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, r6
	bl ov117_02263E1C
	str r0, [sp]
	ldr r1, _02263E18 ; =0x00001560
	ldrb r2, [r4, #1]
	ldrb r3, [r4]
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265B58
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02263E00:
	add r3, r3, #1
	add r2, #0x18
	cmp r3, #0x28
	blt _02263DD2
	bl sub_02022974
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02263E14: .word 0x00002FDC
_02263E18: .word 0x00001560
	thumb_func_end ov117_02263DC4

	thumb_func_start ov117_02263E1C
ov117_02263E1C: ; 0x02263E1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	cmp r0, #0
	beq _02263E2E
	bl sub_02022974
_02263E2E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	bl sub_020C4CF4
	ldrb r1, [r5]
	add r0, r7, #0
	bl ov117_022622C4
	ldr r1, [r7, #0]
	ldr r3, _02263EF4 ; =0x02266F10
	add r1, #0x30
	ldrb r2, [r1]
	mov r1, #0x28
	mul r1, r2
	mov r2, #0xa
	mul r2, r0
	ldrb r0, [r5]
	add r1, r3, r1
	add r6, r1, r2
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	add r1, r6, #0
	strh r0, [r4, #6]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
	add r0, r7, #0
	bl ov117_0226417C
	str r0, [r4, #0x10]
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _02263E8E
	ldr r1, [r5, #4]
	add r0, r7, #0
	bl ov117_02261E38
	mov r0, #0x19
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
_02263E8E:
	mov r0, #1
	str r0, [r4, #0]
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	mov r5, #0
	bl sub_0200D5A0
	ldrb r0, [r6, #7]
	cmp r0, #3
	bhi _02263EE8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263EB6: ; jump table
	.short _02263EBE - _02263EB6 - 2 ; case 0
	.short _02263ECA - _02263EB6 - 2 ; case 1
	.short _02263ED4 - _02263EB6 - 2 ; case 2
	.short _02263EDE - _02263EB6 - 2 ; case 3
_02263EBE:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r1, [r1, r0]
	mov r0, #0x1c
	sub r5, r0, r1
	b _02263EE8
_02263ECA:
	add r1, sp, #0
	mov r0, #2
	ldrsh r5, [r1, r0]
	sub r5, #0xcc
	b _02263EE8
_02263ED4:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r5, [r1, r0]
	sub r5, #0xa4
	b _02263EE8
_02263EDE:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	sub r5, r0, r1
_02263EE8:
	mov r1, #5
	lsl r0, r5, #0xc
	lsl r1, r1, #0xc
	bl sub_020E1F6C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263EF4: .word 0x02266F10
	thumb_func_end ov117_02263E1C

	thumb_func_start ov117_02263EF8
ov117_02263EF8: ; 0x02263EF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02263F70 ; =0x00002FDC
	mov r6, #0
	add r4, r5, r0
	add r7, r6, #0
_02263F04:
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02263F64
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02263F2C
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02263F64
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	b _02263F64
_02263F2C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02263F80
	cmp r0, #1
	bne _02263F64
	ldr r0, _02263F74 ; =0x00002FCC
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02263F5C
	ldr r0, _02263F78 ; =0x00002FBC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263F5C
	ldrb r0, [r4, #0xe]
	ldr r1, _02263F7C ; =0x00001428
	mov r3, #4
	str r0, [sp]
	ldrsh r3, [r4, r3]
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02263D08
_02263F5C:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	str r7, [r4, #0]
_02263F64:
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #0x28
	blt _02263F04
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263F70: .word 0x00002FDC
_02263F74: .word 0x00002FCC
_02263F78: .word 0x00002FBC
_02263F7C: .word 0x00001428
	thumb_func_end ov117_02263EF8

	thumb_func_start ov117_02263F80
ov117_02263F80: ; 0x02263F80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	add r1, sp, #4
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	mov r7, #0
	bl sub_0200D5A0
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #7]
	cmp r0, #3
	bhi _02264088
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263FAE: ; jump table
	.short _02263FB6 - _02263FAE - 2 ; case 0
	.short _02263FEC - _02263FAE - 2 ; case 1
	.short _02264020 - _02263FAE - 2 ; case 2
	.short _02264052 - _02263FAE - 2 ; case 3
_02263FB6:
	add r0, sp, #4
	add r1, r7, #0
	ldrsh r2, [r0, r1]
	mov r0, #0x1c
	sub r6, r0, r2
	mov r2, #5
	ldr r0, [r4, #0x10]
	lsl r2, r2, #0xc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #4
	ldrsh r1, [r1, r0]
	mov r0, #0x1c
	sub r5, r0, r1
	cmp r1, #0x4a
	ble _02264088
	mov r7, #1
	b _02264088
_02263FEC:
	add r1, sp, #4
	mov r0, #2
	ldrsh r6, [r1, r0]
	ldr r0, [r4, #0x10]
	ldr r1, _02264170 ; =0xFFFFB000
	add r2, r7, #0
	sub r6, #0xcc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #6
	ldrsh r0, [r1, r0]
	add r5, r0, #0
	sub r5, #0xcc
	cmp r0, #0x98
	bge _02264088
	mov r7, #1
	b _02264088
_02264020:
	add r0, sp, #4
	add r1, r7, #0
	ldrsh r6, [r0, r1]
	ldr r0, [r4, #0x10]
	ldr r2, _02264170 ; =0xFFFFB000
	sub r6, #0xa4
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r5, r0, #0
	sub r5, #0xa4
	cmp r0, #0x72
	bge _02264088
	mov r7, #1
	b _02264088
_02264052:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	add r2, r7, #0
	sub r6, r0, r1
	mov r1, #5
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_0200D5E8
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r0, #6
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	sub r5, r0, r1
	cmp r1, #0x68
	ble _02264088
	mov r7, #1
_02264088:
	cmp r5, #0
	blt _022640B8
	cmp r5, #0xe
	bge _022640F0
	lsl r0, r5, #0xc
	mov r1, #0xe
	bl sub_020E1F6C
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bge _022640A2
	add r0, r1, #0
_022640A2:
	bl sub_020E17B4
	ldr r1, _02264174 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
	b _022640F0
_022640B8:
	mov r0, #0xd
	mvn r0, r0
	cmp r5, r0
	ble _022640F0
	ldrb r0, [r4, #0xe]
	neg r1, r5
	lsl r2, r0, #2
	ldr r0, _02264178 ; =0x02266BA4
	ldr r0, [r0, r2]
	mul r0, r1
	mov r1, #0xe
	bl sub_020E1F6C
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bge _022640DC
	add r0, r1, #0
_022640DC:
	bl sub_020E17B4
	ldr r1, _02264174 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl sub_0200D6E8
_022640F0:
	bl sub_0203608C
	mov r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, r0
	bne _02264160
	cmp r6, #0
	blt _02264160
	cmp r5, #0
	bgt _02264160
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov117_022653F4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	beq _0226411E
	cmp r0, #2
	beq _02264126
	cmp r0, #3
	beq _02264132
	b _0226413A
_0226411E:
	ldr r0, [r4, #8]
	lsl r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264126:
	ldr r1, [r4, #8]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264132:
	ldr r1, [r4, #8]
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [r4, #8]
_0226413A:
	ldrb r1, [r4, #0xe]
	ldr r0, [sp]
	bl ov117_02264EB8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _02264150
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl ov117_02265428
_02264150:
	ldr r0, [sp]
	bl ov117_02264E84
	add r1, r0, #0
	beq _02264160
	ldr r0, [sp]
	bl ov117_022666E8
_02264160:
	cmp r7, #1
	bne _0226416A
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226416A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264170: .word 0xFFFFB000
_02264174: .word 0x45800000
_02264178: .word 0x02266BA4
	thumb_func_end ov117_02263F80

	thumb_func_start ov117_0226417C
ov117_0226417C: ; 0x0226417C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r6, _022641E0 ; =0x02266CCC
	add r2, r0, #0
	add r5, r1, #0
	add r4, sp, #0
	mov r3, #6
_0226418A:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0226418A
	ldr r0, [r6, #0]
	add r1, sp, #0
	str r0, [r4, #0]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #2]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x24]
	ldr r1, [r2, #0x28]
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0
	mov r2, #2
	mov r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsl r3, r3, #0x10
	add r4, r0, #0
	bl sub_0200D500
	ldrh r1, [r5, #4]
	add r0, r4, #0
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022641E0: .word 0x02266CCC
	thumb_func_end ov117_0226417C

	thumb_func_start ov117_022641E4
ov117_022641E4: ; 0x022641E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0226420C ; =0x00002FDC
	add r5, r0, #0
	add r6, r4, #0
_022641EE:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _02264200
	ldr r0, _02264210 ; =0x00002FEC
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	ldr r0, _0226420C ; =0x00002FDC
	str r6, [r5, r0]
_02264200:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x28
	blt _022641EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226420C: .word 0x00002FDC
_02264210: .word 0x00002FEC
	thumb_func_end ov117_022641E4

	thumb_func_start ov117_02264214
ov117_02264214: ; 0x02264214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	ldr r5, _022644F8 ; =0x02266D00
	str r2, [sp, #4]
	add r7, r0, #0
	str r1, [sp]
	mov r4, #0
	add r3, sp, #0x34
	mov r2, #6
_02264226:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02264226
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0xc]
	b _0226434C
_02264244:
	ldr r2, [r7, #0]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r1, r2, r1
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022622C4
	add r5, r0, #0
	ldr r0, [sp, #4]
	lsl r1, r5, #2
	add r0, r0, r1
	ldr r1, [r0, #0x18]
	mov r0, #0x24
	mul r0, r1
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r1, r2, r1
	bl sub_020E1F6C
	ldr r1, [sp, #0xc]
	lsl r5, r5, #1
	lsl r2, r1, #2
	add r1, sp, #0x24
	str r0, [r1, r2]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	lsl r3, r0, #3
	ldr r0, _022644FC ; =0x02266C7C
	add r0, r0, r3
	ldrh r0, [r5, r0]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [r1, r2]
	str r0, [sp, #0x20]
	b _0226433E
_02264296:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x34
	add r5, r0, r1
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	bl sub_0200CE6C
	add r6, r0, #0
	beq _02264346
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_0200D364
	ldr r0, [r6, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0xc
	str r0, [r5, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl sub_020E1F6C
	mov r0, #0xa
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl sub_020E1F6C
	add r1, #0x14
	strh r1, [r5, #0x14]
	add r1, r4, #0
	mov r0, #0x18
	mul r1, r0
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, r1
	str r6, [r0, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0226433E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	blt _02264296
_02264346:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0226434C:
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0226435A
	b _02264244
_0226435A:
	mov r0, #0xe
	str r0, [sp, #0x3c]
	mov r0, #0
	mov r1, #0xd9
	str r0, [sp, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r6, r0, r1
	b _02264422
_0226436E:
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	mul r0, r1
	add r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl sub_0200CE6C
	add r5, r0, #0
	beq _02264428
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	bl sub_0201D2E8
	mov r1, #3
	bl sub_020E1F6C
	add r0, r5, #0
	add r1, #0x1c
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl sub_020E1F6C
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl sub_020E1F6C
	add r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	mov r0, #0xd9
	lsl r0, r0, #2
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_02264422:
	ldr r0, [sp, #0xc]
	cmp r0, #8
	blt _0226436E
_02264428:
	mov r0, #0xd
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	lsl r1, r0, #1
	ldr r0, _02264500 ; =0x02266B6C
	ldrh r0, [r0, r1]
	ldr r1, _02264504 ; =0x00000424
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r6, r0, r1
	b _022644EC
_02264444:
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	mul r0, r1
	add r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl sub_0200CE6C
	add r5, r0, #0
	beq _022644F2
	mov r3, #0x16
	mov r1, #0x80
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x13
	sub r2, r2, r1
	mov r0, #0x13
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x12
	sub r2, r2, r1
	mov r0, #0x12
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #8]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	bl sub_0201D2E8
	mov r1, #5
	lsl r1, r1, #0xe
	bl sub_020E1F6C
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x10]
	bl sub_0201D2E8
	mov r1, #0xf
	bl sub_020E1F6C
	add r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldr r0, _02264504 ; =0x00000424
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_022644EC:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	blt _02264444
_022644F2:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022644F8: .word 0x02266D00
_022644FC: .word 0x02266C7C
_02264500: .word 0x02266B6C
_02264504: .word 0x00000424
	thumb_func_end ov117_02264214

	thumb_func_start ov117_02264508
ov117_02264508: ; 0x02264508
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0226455C ; =0x000033A0
	mov r4, #0
	add r5, r6, r0
_02264512:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226451C
	bl sub_0200D0F4
_0226451C:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x24
	blt _02264512
	mov r0, #0x37
	lsl r0, r0, #8
	mov r5, #0
	add r4, r6, r0
_0226452C:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02264536
	bl sub_0200D0F4
_02264536:
	add r5, r5, #1
	add r4, #0x18
	cmp r5, #8
	blt _0226452C
	mov r0, #0xdf
	lsl r0, r0, #6
	mov r4, #0
	add r5, r6, r0
_02264546:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02264550
	bl sub_0200D0F4
_02264550:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02264546
	pop {r4, r5, r6, pc}
	nop
_0226455C: .word 0x000033A0
	thumb_func_end ov117_02264508

	thumb_func_start ov117_02264560
ov117_02264560: ; 0x02264560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r1, _022647FC ; =0x0000339C
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02264578
	add sp, #0x34
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_02264578:
	ldr r0, [sp, #0x18]
	str r4, [sp, #0x14]
	add r5, r0, #4
_0226457E:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226463A
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _02264596
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _0226463A
_02264596:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _022645B0
	str r0, [r5, #4]
_022645B0:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x1c]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x28]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_0226463A:
	ldr r0, [sp, #0x14]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x24
	blt _0226457E
	mov r0, #0
	str r0, [sp]
	mov r1, #0xd9
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r5, r0, r1
_02264652:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226470E
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226466A
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _0226470E
_0226466A:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264684
	str r0, [r5, #4]
_02264684:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x20]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x2c]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_0226470E:
	ldr r0, [sp]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _02264652
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _02264804 ; =0x00000424
	ldr r0, [sp, #0x18]
	add r5, r0, r1
_02264724:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022647E0
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226473C
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r5, #0]
	b _022647E0
_0226473C:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264756
	str r0, [r5, #4]
_02264756:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl sub_0201D2B8
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_0201D2C4
	str r0, [sp, #0x24]
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	str r0, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x24]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #0x30]
	lsl r3, r3, #0xa
	add r3, r1, r3
	ldr r1, _02264800 ; =0x00000000
	ldr r0, [r5, #0]
	adc r6, r1
	lsl r1, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	asr r1, r1, #0xc
	add r1, #0x80
	mov r3, #2
	lsl r1, r1, #0x10
	ldr r6, _02264800 ; =0x00000000
	lsl r3, r3, #0xa
	asr r1, r1, #0x10
	add r3, r7, r3
	adc r2, r6
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	neg r3, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r2, #0x60
	lsl r2, r2, #0x10
	mov r3, #0x16
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	sub r0, r0, #1
	strh r0, [r5, #0x14]
_022647E0:
	ldr r0, [sp, #4]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _02264724
	cmp r4, #0
	bne _022647F6
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0]
_022647F6:
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022647FC: .word 0x0000339C
_02264800: .word 0x00000000
_02264804: .word 0x00000424
	thumb_func_end ov117_02264560

	thumb_func_start ov117_02264808
ov117_02264808: ; 0x02264808
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02264870 ; =0x0000339C
	add r4, r5, r0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0226481A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0226481A:
	mov r2, #0x47
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	ldr r1, _02264870 ; =0x0000339C
	ldr r2, _02264874 ; =0x00001428
	add r0, r5, #0
	add r1, r5, r1
	add r2, r5, r2
	bl ov117_02264214
	ldr r1, _02264874 ; =0x00001428
	ldr r0, [r5, #0x2c]
	add r1, r5, r1
	bl ov117_02263B8C
	add r0, r5, #0
	bl ov117_02264A84
	mov r2, #0
	ldr r0, _02264878 ; =0x00002FCC
	add r1, r2, #0
	str r2, [r5, r0]
	ldr r0, _0226487C ; =0x00001430
	str r2, [r5, r0]
	add r0, #8
	str r2, [r5, r0]
	mov r0, #0x51
	lsl r0, r0, #6
_02264858:
	add r2, r2, #1
	str r1, [r5, r0]
	add r5, r5, #4
	cmp r2, #4
	blt _02264858
	ldr r0, _02264880 ; =0x0000057C
	bl sub_02005748
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02264870: .word 0x0000339C
_02264874: .word 0x00001428
_02264878: .word 0x00002FCC
_0226487C: .word 0x00001430
_02264880: .word 0x0000057C
	thumb_func_end ov117_02264808

	thumb_func_start ov117_02264884
ov117_02264884: ; 0x02264884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _022648DC ; =0x02266D34
	add r4, r2, #0
	add r3, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r2, #6
_02264894:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _02264894
	ldr r0, [r6, #0]
	add r2, sp, #0
	str r0, [r5, #0]
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	bl sub_0200CE6C
	mov r3, #0x16
	lsl r2, r4, #4
	mov r1, #0x48
	sub r1, r1, r2
	lsl r1, r1, #0x10
	add r5, r0, #0
	asr r1, r1, #0x10
	mov r2, #0x20
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r5, #0]
	bl sub_0200D324
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022648DC: .word 0x02266D34
	thumb_func_end ov117_02264884

	thumb_func_start ov117_022648E0
ov117_022648E0: ; 0x022648E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02264910 ; =0x0000380C
	mov r4, #0
	add r5, r7, r0
	add r6, r4, #0
_022648EC:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ov117_02264958
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_0200D34C
	mov r0, #1
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r5, #0xc
	add r6, r6, r0
	cmp r4, #5
	blt _022648EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264910: .word 0x0000380C
	thumb_func_end ov117_022648E0

	thumb_func_start ov117_02264914
ov117_02264914: ; 0x02264914
	push {r4, r5, r6, lr}
	ldr r6, _0226492C ; =0x0000380C
	add r5, r0, #0
	mov r4, #0
_0226491C:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #5
	blt _0226491C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226492C: .word 0x0000380C
	thumb_func_end ov117_02264914

	thumb_func_start ov117_02264930
ov117_02264930: ; 0x02264930
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02264954 ; =0x0000380C
	mov r4, #0
	add r5, r6, r0
_0226493A:
	add r0, r5, #0
	bl ov117_0226498C
	add r0, r6, #0
	add r1, r5, #0
	bl ov117_022649D8
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #5
	blt _0226493A
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02264954: .word 0x0000380C
	thumb_func_end ov117_02264930

	thumb_func_start ov117_02264958
ov117_02264958: ; 0x02264958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	add r0, r6, #0
	bl ov117_02264A70
	strb r0, [r5, #4]
	mov r0, #1
	strb r0, [r5, #5]
	ldrb r1, [r5, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl ov117_02264884
	str r0, [r5, #0]
	strb r4, [r5, #6]
	strh r6, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02264958

	thumb_func_start ov117_0226498C
ov117_0226498C: ; 0x0226498C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #6]
	mov r3, #0x16
	add r2, sp, #0
	lsl r1, r0, #4
	mov r0, #0x48
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r1, sp, #0
	ldr r0, [r5, #0]
	add r1, #2
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	cmp r4, r2
	ble _022649D6
	add r2, r2, #2
	strh r2, [r1, #2]
	ldrsh r0, [r1, r0]
	cmp r0, r4
	ble _022649C2
	strh r4, [r1, #2]
_022649C2:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x16
	ldr r0, [r5, #0]
	lsl r3, r3, #0x10
	bl sub_0200D500
_022649D6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_0226498C

	thumb_func_start ov117_022649D8
ov117_022649D8: ; 0x022649D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #6]
	add r5, r0, #0
	cmp r1, #0
	bne _02264A66
	ldrb r1, [r4, #5]
	cmp r1, #1
	beq _02264A44
	cmp r1, #3
	bne _02264A66
	ldr r0, [r4, #0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02264A66
	mov r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #5
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	bl ov117_02264A70
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0200D364
	mov r1, #7
	mov r3, #0x16
	ldr r0, [r4, #0]
	mvn r1, r1
	mov r2, #0x20
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, _02264A68 ; =0x0000380C
	mov r2, #0
	add r3, r5, r0
	mov r1, #4
_02264A2C:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _02264A36
	strb r1, [r3, #6]
	b _02264A3A
_02264A36:
	sub r0, r0, #1
	strb r0, [r3, #6]
_02264A3A:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #5
	blt _02264A2C
	pop {r3, r4, r5, pc}
_02264A44:
	bl ov117_02263DAC
	ldrb r1, [r4, #5]
	cmp r1, #1
	bne _02264A66
	cmp r0, #0x4b
	ble _02264A66
	mov r0, #2
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	add r1, r1, #3
	bl sub_0200D364
	ldr r0, _02264A6C ; =0x0000057E
	bl sub_02005748
_02264A66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02264A68: .word 0x0000380C
_02264A6C: .word 0x0000057E
	thumb_func_end ov117_022649D8

	thumb_func_start ov117_02264A70
ov117_02264A70: ; 0x02264A70
	cmp r0, #0xa
	blt _02264A78
	mov r0, #2
	bx lr
_02264A78:
	cmp r0, #5
	blt _02264A80
	mov r0, #1
	bx lr
_02264A80:
	mov r0, #0
	bx lr
	thumb_func_end ov117_02264A70

	thumb_func_start ov117_02264A84
ov117_02264A84: ; 0x02264A84
	push {r3, lr}
	ldr r1, _02264AAC ; =0x0000380C
	mov r2, #0
	add r1, r0, r1
_02264A8C:
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _02264AA0
	mov r0, #3
	strb r0, [r1, #5]
	ldr r0, [r1, #0]
	mov r1, #6
	bl sub_0200D364
	pop {r3, pc}
_02264AA0:
	add r2, r2, #1
	add r1, #0xc
	cmp r2, #5
	blt _02264A8C
	pop {r3, pc}
	nop
_02264AAC: .word 0x0000380C
	thumb_func_end ov117_02264A84

	thumb_func_start ov117_02264AB0
ov117_02264AB0: ; 0x02264AB0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bne _02264AEC
	mov r0, #0xc
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	mov r2, #0
	mov r3, #0xd
	bl sub_02019E2C
	mov r0, #0xc
	str r0, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	mov r2, #0x14
	mov r3, #0xd
	bl sub_02019E2C
_02264AEC:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov117_02264AB0

	thumb_func_start ov117_02264AF0
ov117_02264AF0: ; 0x02264AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264B50
	ldr r0, _02264BF0 ; =0x02266B72
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp]
_02264B0C:
	ldr r0, [sp, #4]
	ldr r5, [sp]
	ldrh r7, [r0]
	mov r4, #0
_02264B14:
	add r0, r6, #0
	add r0, #0x8c
	add r3, r7, r4
	mov r1, #1
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _02264B14
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02264B0C
_02264B50:
	bl sub_0203608C
	ldr r3, [r6, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264B74
_02264B62:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264B74
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264B62
_02264B74:
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003164
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200316C
	ldr r1, [r6, #0]
	add r7, r0, #0
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _02264BEA
_02264B9E:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r6, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264BF4 ; =0x02266CA4
	lsl r2, r5, #3
	add r0, r0, r2
	ldrh r2, [r1, r0]
	mov r1, #6
	add r3, r4, #0
	mul r3, r1
	add r1, sp, #0x10
	add r1, r1, r3
	lsl r3, r2, #1
	ldr r2, [sp, #8]
	mov r0, #0
	add r2, r2, r3
	add r3, r7, r3
_02264BC8:
	ldrh r5, [r1]
	add r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	add r1, r1, #2
	add r2, r2, #2
	strh r5, [r3]
	add r3, r3, #2
	cmp r0, #3
	blt _02264BC8
	ldr r1, [r6, #0]
	add r4, r4, #1
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264B9E
_02264BEA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264BF0: .word 0x02266B72
_02264BF4: .word 0x02266CA4
	thumb_func_end ov117_02264AF0

	thumb_func_start ov117_02264BF8
ov117_02264BF8: ; 0x02264BF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r7, r0, #0
	ldr r0, [r7, #0x28]
	ldr r1, _02264D10 ; =0x00002716
	mov r2, #2
	bl sub_0200D05C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264C6E
	ldr r0, _02264D14 ; =0x02266B8A
	str r0, [sp, #8]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #4
	str r0, [sp]
_02264C26:
	ldr r0, [sp, #8]
	ldr r5, [sp, #4]
	ldrh r1, [r0]
	ldr r0, [sp]
	mov r6, #0
	add r4, r1, r0
_02264C32:
	add r0, r7, #0
	add r0, #0x8c
	lsl r3, r4, #0x10
	ldr r0, [r0, #0]
	mov r1, #3
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r5]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #2
	cmp r6, #0x10
	blt _02264C32
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	blt _02264C26
_02264C6E:
	bl sub_0203608C
	ldr r3, [r7, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264C92
_02264C80:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264C92
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264C80
_02264C92:
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02003164
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200316C
	ldr r1, [r7, #0]
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	mov r4, #0
	cmp r5, #0
	ble _02264D0C
	ldr r0, [sp, #0xc]
	lsl r6, r0, #4
_02264CC0:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r7, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264D18 ; =0x02266C04
	lsl r2, r5, #3
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r3, r4, #5
	add r1, sp, #0x1c
	add r2, r6, r0
	add r1, r1, r3
	lsl r5, r2, #1
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, #0
	add r2, r2, r5
	add r3, r3, r5
_02264CEA:
	ldrh r5, [r1]
	add r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	add r1, r1, #2
	add r2, r2, #2
	strh r5, [r3]
	add r3, r3, #2
	cmp r0, #0x10
	blt _02264CEA
	ldr r1, [r7, #0]
	add r4, r4, #1
	add r0, r1, #0
	add r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264CC0
_02264D0C:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264D10: .word 0x00002716
_02264D14: .word 0x02266B8A
_02264D18: .word 0x02266C04
	thumb_func_end ov117_02264BF8

	thumb_func_start ov117_02264D1C
ov117_02264D1C: ; 0x02264D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, _02264E08 ; =0x00002716
	mov r2, #2
	bl sub_0200D05C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264D76
	ldr r0, [sp, #4]
	ldr r7, _02264E0C ; =0x02266B82
	lsl r0, r0, #4
	add r4, sp, #0x14
	str r0, [sp]
_02264D46:
	ldrh r6, [r7]
	ldr r3, [sp]
	add r0, r5, #0
	add r0, #0x8c
	add r3, r6, r3
	lsl r3, r3, #0x10
	ldr r0, [r0, #0]
	mov r1, #3
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02003910
	strh r0, [r4]
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r4, r4, #2
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _02264D46
_02264D76:
	bl sub_0203608C
	ldr r3, [r5, #0]
	mov r2, #0
	add r1, r3, #0
	add r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264D9A
_02264D88:
	add r1, r3, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264D9A
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _02264D88
_02264D9A:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02003164
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200316C
	ldr r1, [r5, #0]
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x30
	ldrb r6, [r0]
	mov r4, #0
	cmp r6, #0
	ble _02264E02
	ldr r0, [sp, #4]
	lsl r7, r0, #4
_02264DC8:
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov117_022622C4
	lsl r1, r0, #1
	ldr r0, _02264E10 ; =0x02266C54
	lsl r2, r6, #3
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r1, r4, #1
	add r2, sp, #0x14
	ldrh r3, [r2, r1]
	add r0, r7, r0
	ldr r2, [sp, #0xc]
	lsl r0, r0, #1
	strh r3, [r2, r0]
	add r2, sp, #0x14
	ldrh r2, [r2, r1]
	ldr r1, [sp, #8]
	add r4, r4, #1
	strh r2, [r1, r0]
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x30
	ldrb r6, [r0]
	cmp r4, r6
	blt _02264DC8
_02264E02:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02264E08: .word 0x00002716
_02264E0C: .word 0x02266B82
_02264E10: .word 0x02266C54
	thumb_func_end ov117_02264D1C

	thumb_func_start ov117_02264E14
ov117_02264E14: ; 0x02264E14
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	bl sub_0203608C
	strb r0, [r4]
	strh r5, [r4, #2]
	str r6, [r4, #4]
	str r6, [r4, #8]
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02264E14

	thumb_func_start ov117_02264E3C
ov117_02264E3C: ; 0x02264E3C
	push {r4, r5}
	ldr r2, _02264E80 ; =0x00002FB0
	add r4, r0, #0
	sub r0, r2, #4
	add r3, r1, #0
	ldr r1, [r4, r2]
	ldr r0, [r4, r0]
	sub r0, r1, r0
	cmp r0, #8
	blt _02264E56
	mov r0, #0
	pop {r4, r5}
	bx lr
_02264E56:
	lsr r5, r1, #0x1f
	lsl r1, r1, #0x1d
	sub r1, r1, r5
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, r1
	lsl r0, r0, #4
	add r1, r4, r0
	add r0, r2, #0
	sub r0, #0x84
	add r5, r1, r0
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, r2]
	add r0, r0, #1
	str r0, [r4, r2]
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02264E80: .word 0x00002FB0
	thumb_func_end ov117_02264E3C

	thumb_func_start ov117_02264E84
ov117_02264E84: ; 0x02264E84
	push {r3, r4}
	ldr r1, _02264EB4 ; =0x00002FAC
	add r2, r1, #4
	ldr r4, [r0, r1]
	ldr r2, [r0, r2]
	cmp r4, r2
	blt _02264E98
	mov r0, #0
	pop {r3, r4}
	bx lr
_02264E98:
	add r2, r4, #1
	str r2, [r0, r1]
	sub r1, #0x80
	add r3, r0, r1
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #4
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02264EB4: .word 0x00002FAC
	thumb_func_end ov117_02264E84

	thumb_func_start ov117_02264EB8
ov117_02264EB8: ; 0x02264EB8
	push {r3, r4, r5, r6, r7, lr}
	add r2, r0, #0
	ldr r0, _02264FA4 ; =0x00002FB0
	add r7, r1, #0
	ldr r5, [r2, r0]
	sub r0, r0, #4
	ldr r0, [r2, r0]
	mov r4, #0
	cmp r0, r5
	beq _02264ED0
	cmp r7, #0
	bne _02264ED4
_02264ED0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264ED4:
	lsr r3, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r3
	mov r0, #0x1d
	ror r1, r0
	add r1, r3, r1
	lsr r3, r5, #0x1f
	lsl r5, r5, #0x1d
	sub r5, r5, r3
	ror r5, r0
	add r0, r3, r5
	cmp r1, r0
	bge _02264F12
	cmp r1, r0
	bge _02264F5A
	lsl r3, r1, #4
	add r6, r2, r3
	ldr r3, _02264FA8 ; =0x00002F38
_02264EF8:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F08
	ldr r0, _02264FAC ; =0x00002F2C
	add r2, r2, r0
	lsl r0, r1, #4
	add r4, r2, r0
	b _02264F5A
_02264F08:
	add r1, r1, #1
	add r6, #0x10
	cmp r1, r0
	blt _02264EF8
	b _02264F5A
_02264F12:
	cmp r1, #8
	bge _02264F34
	lsl r3, r1, #4
	add r6, r2, r3
	ldr r3, _02264FA8 ; =0x00002F38
_02264F1C:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F2C
	ldr r3, _02264FAC ; =0x00002F2C
	lsl r1, r1, #4
	add r3, r2, r3
	add r4, r3, r1
	b _02264F34
_02264F2C:
	add r1, r1, #1
	add r6, #0x10
	cmp r1, #8
	blt _02264F1C
_02264F34:
	cmp r4, #0
	bne _02264F5A
	mov r6, #0
	cmp r0, #0
	ble _02264F5A
	ldr r1, _02264FA8 ; =0x00002F38
	add r5, r2, #0
_02264F42:
	ldrb r3, [r5, r1]
	cmp r3, #0
	bne _02264F52
	ldr r0, _02264FAC ; =0x00002F2C
	add r1, r2, r0
	lsl r0, r6, #4
	add r4, r1, r0
	b _02264F5A
_02264F52:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, r0
	blt _02264F42
_02264F5A:
	cmp r4, #0
	bne _02264F66
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264F66:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02264F70
	bl sub_02022974
_02264F70:
	mov r0, #1
	strb r7, [r4, #1]
	strb r0, [r4, #0xc]
	cmp r7, #1
	beq _02264F84
	cmp r7, #2
	beq _02264F8C
	cmp r7, #3
	beq _02264F98
	b _02264FA0
_02264F84:
	ldr r0, [r4, #4]
	lsl r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F8C:
	ldr r1, [r4, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F98:
	ldr r1, [r4, #4]
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [r4, #8]
_02264FA0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264FA4: .word 0x00002FB0
_02264FA8: .word 0x00002F38
_02264FAC: .word 0x00002F2C
	thumb_func_end ov117_02264EB8

	thumb_func_start ov117_02264FB0
ov117_02264FB0: ; 0x02264FB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _02265044 ; =0x02266D68
	add r7, r0, #0
	str r1, [sp]
	add r3, sp, #4
	mov r2, #6
_02264FBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02264FBE
	ldr r0, [r4, #0]
	ldr r4, [sp]
	ldr r5, _02265048 ; =0x02266BB4
	str r0, [r3, #0]
	mov r6, #0
_02264FD0:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #4
	bl sub_0200CE6C
	mov r3, #0x16
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsl r3, r3, #0x10
	bl sub_0200D500
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	ldr r0, [r4, #0]
	add r1, #0x1f
	bl sub_0200D364
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _02264FD0
	ldr r0, [r7, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _0226501E
	cmp r0, #3
	beq _02265036
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_0226501E:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0200D3F4
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_02265036:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265044: .word 0x02266D68
_02265048: .word 0x02266BB4
	thumb_func_end ov117_02264FB0

	thumb_func_start ov117_0226504C
ov117_0226504C: ; 0x0226504C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_02265052:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02265052
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_0226504C

	thumb_func_start ov117_02265064
ov117_02265064: ; 0x02265064
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022651CC ; =0x02266D9C
	add r5, r0, #0
	str r1, [sp]
	add r3, sp, #0xc
	mov r2, #6
_02265072:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02265072
	ldr r0, [r4, #0]
	ldr r4, [sp]
	str r0, [r3, #0]
	mov r0, #0
	ldr r7, _022651D0 ; =0x02266B7A
	str r0, [sp, #8]
_02265086:
	ldr r0, [sp]
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	mov r2, #0x4c
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _022651D4 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp]
	add r6, #0x80
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	mov r2, #0x44
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022651D4 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0xc
	bl sub_0200CE6C
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	sub r2, #0x18
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrh r1, [r7, #2]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651D8 ; =0x02266DD0
	bl sub_0200CE6C
	mov r1, #0
	mov r3, #0x16
	add r2, r1, #0
	lsl r3, r3, #0x10
	str r0, [r4, #4]
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651DC ; =0x02266E04
	bl sub_0200CE6C
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x16
	str r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D6A4
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	add r1, #0x22
	bl sub_0200D364
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200D3F4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x30
	bl ov117_02266344
	ldr r0, [sp, #8]
	add r4, #0x4c
	add r0, r0, #1
	add r7, r7, #2
	str r0, [sp, #8]
	cmp r0, #3
	bge _022651B4
	b _02265086
_022651B4:
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_0200D3F4
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #8]
	bl sub_0200D3F4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022651CC: .word 0x02266D9C
_022651D0: .word 0x02266B7A
_022651D4: .word 0x00000000
_022651D8: .word 0x02266DD0
_022651DC: .word 0x02266E04
	thumb_func_end ov117_02265064

	thumb_func_start ov117_022651E0
ov117_022651E0: ; 0x022651E0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_022651E8:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	ldr r0, [r5, #4]
	bl sub_0200D0F4
	ldr r0, [r5, #8]
	bl sub_0200D0F4
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x30
	bl ov117_02266384
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _022651E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_022651E0

	thumb_func_start ov117_02265210
ov117_02265210: ; 0x02265210
	push {r4, lr}
	add r4, r1, #0
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _02265250 ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl sub_020E1F6C
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	mov r1, #0
	add r2, r1, #0
	add r3, r4, #0
_02265232:
	lsl r0, r2, #0xc
	str r0, [r3, #0xc]
	add r1, r1, #1
	strb r1, [r3, #0x14]
	add r2, #0x5a
	add r3, #0x4c
	cmp r1, #3
	blt _02265232
	mov r0, #2
	strb r0, [r4, #0x10]
	mov r0, #1
	add r4, #0xf1
	strb r0, [r4]
	pop {r4, pc}
	nop
_02265250: .word 0x02266BC4
	thumb_func_end ov117_02265210

	thumb_func_start ov117_02265254
ov117_02265254: ; 0x02265254
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xf1
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #1
	bne _02265268
	b _022653E8
_02265268:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _022652F4
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf3
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf3
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xf3
	lsl r2, r1, #2
	ldr r1, _022653EC ; =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _02265356
	add r0, r4, #0
	add r0, #0xf3
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r1, [r0]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0xe4
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _022653F0 ; =0x02266BC5
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	b _02265356
_022652F4:
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02265356
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _02265356
	add r0, r4, #0
	add r0, #0xf0
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #5
	blo _0226533C
	add r0, r4, #0
	mov r1, #4
	add r0, #0xf4
	strb r1, [r0]
_0226533C:
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _022653EC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl sub_020E1F6C
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
_02265356:
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265392
	ldr r1, _022653EC ; =0x02266BC4
	mov r0, #0
	mov r7, #0xc
_02265366:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, r0, #1
	add r1, r1, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r0, #2
	blt _02265366
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	sub r5, #0xf
	cmp r5, r0
	bne _022653C6
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #1
	bl ov117_02265428
	b _022653C6
_02265392:
	cmp r0, #2
	bne _022653C6
	ldr r0, _022653EC ; =0x02266BC4
	mov r1, #0
	mov r7, #0xc
_0226539C:
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	add r1, r1, #1
	add r0, r0, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r1, #3
	blt _0226539C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	sub r5, #0xf
	cmp r5, r0
	bne _022653C6
	add r0, r4, #0
	add r0, #0x98
	mov r1, #1
	bl ov117_02265428
_022653C6:
	mov r7, #0
	add r5, r4, #0
_022653CA:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov117_02265438
	add r2, r5, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, #0x30
	bl ov117_02266440
	add r7, r7, #1
	add r5, #0x4c
	cmp r7, #3
	blt _022653CA
_022653E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022653EC: .word 0x02266BC4
_022653F0: .word 0x02266BC5
	thumb_func_end ov117_02265254

	thumb_func_start ov117_022653F4
ov117_022653F4: ; 0x022653F4
	push {r3, r4}
	ldr r2, _02265424 ; =0x00001468
	mov r3, #0
	add r2, r0, r2
	add r4, r2, #0
_022653FE:
	ldrb r0, [r4, #0x15]
	cmp r0, #1
	bne _02265412
	mov r0, #0x4c
	mul r0, r3
	add r0, r2, r0
	str r0, [r1, #0]
	ldrb r0, [r0, #0x14]
	pop {r3, r4}
	bx lr
_02265412:
	add r3, r3, #1
	add r4, #0x4c
	cmp r3, #3
	blt _022653FE
	mov r0, #0
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	nop
_02265424: .word 0x00001468
	thumb_func_end ov117_022653F4

	thumb_func_start ov117_02265428
ov117_02265428: ; 0x02265428
	strb r1, [r0, #0x10]
	mov r1, #0
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	str r1, [r0, #0x18]
	strb r1, [r0, #0x15]
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02265428

	thumb_func_start ov117_02265438
ov117_02265438: ; 0x02265438
	push {r4, lr}
	ldrb r3, [r2, #0x10]
	lsl r4, r3, #2
	ldr r3, _02265448 ; =0x02266B94
	ldr r3, [r3, r4]
	blx r3
	pop {r4, pc}
	nop
_02265448: .word 0x02266B94
	thumb_func_end ov117_02265438

	thumb_func_start ov117_0226544C
ov117_0226544C: ; 0x0226544C
	mov r0, #0
	strb r0, [r2, #0x15]
	mov r0, #1
	bx lr
	thumb_func_end ov117_0226544C

	thumb_func_start ov117_02265454
ov117_02265454: ; 0x02265454
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	add r1, sp, #0
	strh r0, [r1, #2]
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02265474
	cmp r0, #1
	beq _022654A8
	b _02265632
_02265474:
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200D3F4
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r5, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1c]
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0x11]
	add r0, r0, #1
	strb r0, [r5, #0x11]
_022654A8:
	mov r1, #0x5a
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0xc
	cmp r2, r1
	bgt _022654BA
	bge _022654EC
	cmp r2, #0
	beq _022654CC
	b _02265554
_022654BA:
	lsl r0, r1, #1
	cmp r2, r0
	bgt _022654C4
	beq _02265514
	b _02265554
_022654C4:
	ldr r0, _0226563C ; =0x0010E000
	cmp r2, r0
	beq _02265534
	b _02265554
_022654CC:
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	sub r1, #0x20
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_022654EC:
	mov r0, #0x1c
	ldrsh r2, [r5, r0]
	mov r0, #0x12
	lsl r0, r0, #4
	sub r0, r2, r0
	lsl r0, r0, #0x10
	ldrb r1, [r5, #0x12]
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265514:
	mov r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	sub r0, #0xe4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r1, #0xe4
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_02265534:
	mov r0, #0x1c
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r1
	mov r1, #0xf
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	sub r1, #0x20
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265554:
	bl sub_02022974
_02265558:
	ldrb r1, [r5, #0x12]
	cmp r1, #0xf
	blo _022655A0
	mov r1, #0x1c
	mov r2, #0x1e
	mov r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0]
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r2, #0x1e
	ldrsh r2, [r5, r2]
	mov r1, #0x1c
	mov r3, #0x16
	add r2, #0x18
	lsl r2, r2, #0x10
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #8]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r0, r5, #0
	mov r1, #2
	bl ov117_02265428
	add r1, r5, #0
	add r5, #0x30
	add r0, r4, #0
	add r2, r5, #0
	bl ov117_0226639C
	mov r0, #1
	pop {r3, r4, r5, pc}
_022655A0:
	mov r0, #0xb4
	mul r0, r1
	lsl r0, r0, #0xc
	mov r1, #0xf
	bl sub_020E1F6C
	bl sub_0201D2B8
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	neg r1, r1
	asr r0, r1, #0xb
	add r3, sp, #0
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r4, r0, #0xc
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, r2, r4
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r5, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, #0x18
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r5, #8]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	neg r0, r4
	mov r1, #3
	bl sub_020E1F6C
	lsl r0, r0, #0xc
	mov r1, #0x18
	bl sub_020E1F6C
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	bl sub_020E17B4
	ldr r1, _02265640 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	bl sub_0200D6E8
_02265632:
	ldrb r0, [r5, #0x12]
	add r0, r0, #1
	strb r0, [r5, #0x12]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226563C: .word 0x0010E000
_02265640: .word 0x45800000
	thumb_func_end ov117_02265454

	thumb_func_start ov117_02265644
ov117_02265644: ; 0x02265644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf3
	ldrb r0, [r0]
	add r4, r2, #0
	cmp r0, #0
	beq _02265674
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0xb
	lsl r0, r0, #0xe
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D34C
	b _0226567C
_02265674:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3CC
_0226567C:
	add r0, r5, #0
	add r0, #0xf3
	ldrb r1, [r0]
	mov r0, #0xb4
	mul r0, r1
	add r1, r5, #0
	add r1, #0xf4
	ldrb r1, [r1]
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r1, [r1, r2]
	bl sub_020E1F6C
	bl sub_0201D2B8
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r1, r1
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r7, r0, #0xc
	add r0, r5, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	mov r2, #0x4c
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	add r0, r5, #0
	add r0, #0xe4
	ldr r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r6, #0x80
	add r0, r1, r0
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	mov r2, #0x44
	mov r3, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	sub r2, #0x18
	add r2, r2, r7
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r2, [sp, #4]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	neg r0, r7
	mov r1, #3
	bl sub_020E1F6C
	lsl r0, r0, #0xc
	mov r1, #0xc
	bl sub_020E1F6C
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	bl sub_020E17B4
	ldr r1, _022657C0 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_0200D6E8
	add r1, r5, #0
	add r1, #0xf4
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0xf3
	lsl r2, r1, #2
	ldr r1, _022657BC ; =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	cmp r0, r1
	bne _02265796
	add r2, r4, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, #0x30
	bl ov117_0226639C
_02265796:
	add r5, #0xe4
	ldr r1, [r5, #0]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	mov r1, #0x5a
	asr r0, r0, #0xc
	lsl r1, r1, #2
	bl sub_020E1F6C
	cmp r1, #0xb4
	bne _022657B0
	mov r0, #1
	b _022657B2
_022657B0:
	mov r0, #0
_022657B2:
	strb r0, [r4, #0x15]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022657BC: .word 0x02266BC4
_022657C0: .word 0x45800000
	thumb_func_end ov117_02265644

	thumb_func_start ov117_022657C4
ov117_022657C4: ; 0x022657C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldrb r0, [r4, #0x11]
	add r5, r1, #0
	cmp r0, #3
	bls _022657D4
	b _02265AA2
_022657D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022657E0: ; jump table
	.short _022657E8 - _022657E0 - 2 ; case 0
	.short _0226585A - _022657E0 - 2 ; case 1
	.short _022658AE - _022657E0 - 2 ; case 2
	.short _022659CA - _022657E0 - 2 ; case 3
_022657E8:
	ldr r0, _02265AA8 ; =0x0000057B
	bl sub_02005748
	add r1, sp, #8
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r3, sp, #4
	mov r2, #4
	ldrsh r2, [r3, r2]
	mov r1, #6
	ldrsh r1, [r3, r1]
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #2
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xf4
	ldrb r0, [r0]
	ldr r1, _02265AB0 ; =0x02266BC6
	add r5, #0xf4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	strb r0, [r4, #0x12]
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	lsr r0, r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_0226585A:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r1, r0
	bne _02265884
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #1
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl sub_0200D34C
_02265884:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _022658A8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_022658A8:
	sub r0, r0, #1
	strb r0, [r4, #0x12]
	b _02265AA2
_022658AE:
	add r0, r5, #0
	add r0, #0xf2
	ldrb r0, [r0]
	mov r2, #0
	cmp r0, #0
	bne _022658E0
	add r0, r5, #0
	add r0, #0xf4
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0xf3
	lsl r1, r0, #2
	ldr r0, _02265AB4 ; =0x02266BC4
	ldrb r3, [r3]
	ldrb r0, [r0, r1]
	add r5, #0xf0
	sub r3, r0, r3
	add r3, r2, r3
	ldr r2, _02265AB8 ; =0x02266BC5
	ldrb r1, [r2, r1]
	add r1, r3, r1
	add r6, r1, r0
	ldrb r0, [r5]
	add r5, r0, #2
	b _0226590C
_022658E0:
	add r1, r2, r0
	add r0, r5, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _022658FE
	add r5, #0xf4
	ldrb r0, [r5]
	mov r5, #1
	add r0, r0, #1
	lsl r2, r0, #2
	ldr r0, _02265AB4 ; =0x02266BC4
	ldrb r0, [r0, r2]
	add r6, r1, r0
	b _0226590C
_022658FE:
	add r5, #0xf4
	ldrb r2, [r5]
	add r5, r0, #1
	lsl r3, r2, #2
	ldr r2, _02265AB4 ; =0x02266BC4
	ldrb r2, [r2, r3]
	add r6, r1, r2
_0226590C:
	mov r1, #0x1e
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_020E1F6C
	add r0, r5, r0
	mov r1, #0xc
	bl sub_020E1F6C
	add r5, r1, #0
	mov r0, #0x1e
	lsl r0, r0, #0xc
	add r7, r5, #0
	mul r7, r0
	add r0, r7, #0
	bl sub_0201D2B8
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0201D2C4
	str r0, [sp]
	add r1, sp, #4
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #4
	mov r3, #0
	ldrsh r0, [r1, r3]
	mov r2, #0x4c
	add r0, #0x18
	strh r0, [r1]
	mov r0, #2
	ldrsh r7, [r1, r0]
	asr r1, r5, #0x1f
	add r0, r5, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r1, #0x80
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	sub r0, r0, r7
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [r4, #0x20]
	add r0, sp, #4
	mov r3, #0
	ldrsh r5, [r0, r3]
	ldr r0, [sp]
	mov r2, #0x44
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	mov r0, #0x62
	sub r0, r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r0, r5
	lsl r0, r0, #0xc
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [r4, #0x24]
	lsl r0, r7, #0xc
	str r0, [r4, #0x28]
	lsl r0, r5, #0xc
	str r0, [r4, #0x2c]
	strb r6, [r4, #0x12]
	str r6, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
_022659CA:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldrb r1, [r4, #0x12]
	mov r0, #0xb4
	mul r0, r1
	ldr r1, [r4, #0x18]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	bl sub_0201D2B8
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	add r5, r0, #0
	ldr r2, [r4, #0x28]
	add r6, r1, #0
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #4
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	mov r2, #2
	asr r3, r3, #0xc
	mov r7, #0
	lsl r2, r2, #0xa
	asr r1, r1, #0x10
	sub r3, #0x18
	add r2, r5, r2
	adc r6, r7
	lsl r5, r6, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	neg r5, r2
	asr r2, r5, #0xb
	lsr r2, r2, #0x14
	add r2, r5, r2
	asr r2, r2, #0xc
	add r2, r3, r2
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0xb
	ldr r1, [r4, #0x18]
	lsl r0, r0, #0xe
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D34C
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x2c]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	lsl r1, r1, #4
	lsl r2, r2, #4
	mov r3, #0x16
	ldr r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrb r0, [r4, #0x12]
	sub r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02265AA2
	ldrb r1, [r4, #0x14]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265AAC ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #2
	bl ov117_02265428
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02265AA2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265AA8: .word 0x0000057B
_02265AAC: .word 0x02266B7A
_02265AB0: .word 0x02266BC6
_02265AB4: .word 0x02266BC4
_02265AB8: .word 0x02266BC5
	thumb_func_end ov117_022657C4

	thumb_func_start ov117_02265ABC
ov117_02265ABC: ; 0x02265ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _02265B34 ; =0x02266D9C
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #6
_02265ACA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02265ACA
	ldr r0, [r6, #0]
	mov r7, #0x16
	str r0, [r3, #0]
	mov r6, #0
	lsl r7, r7, #0x10
_02265ADC:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #0]
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0200D500
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02265B38 ; =0x02266DD0
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #4]
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #3
	blt _02265ADC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265B34: .word 0x02266D9C
_02265B38: .word 0x02266DD0
	thumb_func_end ov117_02265ABC

	thumb_func_start ov117_02265B3C
ov117_02265B3C: ; 0x02265B3C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_02265B42:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	ldr r0, [r5, #4]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02265B42
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02265B3C

	thumb_func_start ov117_02265B58
ov117_02265B58: ; 0x02265B58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	ldr r4, _02265C04 ; =0x00000000
	beq _02265C02
	bl sub_0203608C
	ldr r1, [sp]
	cmp r1, r0
	beq _02265C02
	add r0, r4, #0
	add r2, r7, #0
_02265B74:
	ldrb r1, [r2, #0x15]
	cmp r1, #0
	bne _02265B82
	mov r1, #0x18
	mul r1, r0
	add r4, r7, r1
	b _02265B8A
_02265B82:
	add r0, r0, #1
	add r2, #0x18
	cmp r0, #3
	blt _02265B74
_02265B8A:
	cmp r4, #0
	beq _02265C02
	ldr r1, [sp]
	add r0, r6, #0
	bl ov117_022622C4
	ldr r1, [r6, #0]
	ldr r2, _02265C08 ; =0x02266C2C
	add r1, #0x30
	ldrb r1, [r1]
	add r7, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r1, #3
	lsl r1, r7, #1
	add r2, r2, r3
	ldrh r1, [r1, r2]
	bl sub_0200D41C
	ldr r1, _02265C0C ; =0x02266B7A
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [r4, #0]
	bl sub_0200D364
	ldr r0, [r6, #0]
	mov r3, #0x16
	add r0, #0x30
	ldrb r0, [r0]
	lsl r3, r3, #0x10
	lsl r1, r0, #2
	ldr r0, _02265C10 ; =0x02266BD8
	add r0, r0, r1
	ldrb r0, [r7, r0]
	ldr r1, _02265C14 ; =0x02266BB4
	lsl r2, r0, #2
	ldr r0, _02265C18 ; =0x02266BB6
	ldrsh r1, [r1, r2]
	ldrsh r0, [r0, r2]
	mov r2, #0x10
	sub r0, #0x18
	strh r0, [r4, #0x10]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0]
	sub r2, #0x60
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [sp, #0x18]
	strb r5, [r4, #0x12]
	sub r0, #0xc
	strh r0, [r4, #0x16]
	mov r0, #0
	strb r0, [r4, #0x13]
	mov r0, #1
	strb r0, [r4, #0x15]
_02265C02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265C04: .word 0x00000000
_02265C08: .word 0x02266C2C
_02265C0C: .word 0x02266B7A
_02265C10: .word 0x02266BD8
_02265C14: .word 0x02266BB4
_02265C18: .word 0x02266BB6
	thumb_func_end ov117_02265B58

	thumb_func_start ov117_02265C1C
ov117_02265C1C: ; 0x02265C1C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r4, #0
	add r5, r6, #0
_02265C24:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _02265C32
	add r0, r6, #0
	add r1, r5, #0
	bl ov117_02265C3C
_02265C32:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blt _02265C24
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02265C1C

	thumb_func_start ov117_02265C3C
ov117_02265C3C: ; 0x02265C3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #4
	bls _02265C4A
	b _02265D88
_02265C4A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265C56: ; jump table
	.short _02265C60 - _02265C56 - 2 ; case 0
	.short _02265C88 - _02265C56 - 2 ; case 1
	.short _02265CC4 - _02265C56 - 2 ; case 2
	.short _02265D20 - _02265C56 - 2 ; case 3
	.short _02265D5A - _02265C56 - 2 ; case 4
_02265C60:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
_02265C88:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265C96
	sub r0, r0, #1
	strh r0, [r4, #0x16]
	b _02265D88
_02265C96:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	str r2, [r4, #0xc]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	cmp r0, r1
	blt _02265D88
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265CC4:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _02265DB0 ; =0x0000057B
	bl sub_02005748
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265DB4 ; =0x02266B7A
	ldrh r1, [r1, r2]
	add r1, r1, #2
	bl sub_0200D364
	mov r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D20:
	ldrb r0, [r4, #0x14]
	sub r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _02265D36
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl sub_0200D34C
_02265D36:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _02265D88
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3F4
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0]
	lsl r2, r1, #1
	ldr r1, _02265DB4 ; =0x02266B7A
	ldrh r1, [r1, r2]
	bl sub_0200D364
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D5A:
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r4, #0xc]
	asr r1, r0, #0xc
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	sub r0, #0x60
	cmp r1, r0
	bgt _02265D88
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #0x13]
	add sp, #4
	strb r0, [r4, #0x15]
	pop {r3, r4, pc}
_02265D88:
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	lsl r1, r1, #4
	lsl r2, r2, #4
	mov r3, #0x16
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02265DB0: .word 0x0000057B
_02265DB4: .word 0x02266B7A
	thumb_func_end ov117_02265C3C

	thumb_func_start ov117_02265DB8
ov117_02265DB8: ; 0x02265DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x88]
	mov r2, #0
	add r5, r3, #0
	ldr r4, [sp, #0x9c]
	bl sub_02002EB4
	add r7, r0, #0
	asr r1, r7, #2
	lsr r1, r1, #0x1d
	add r1, r7, r1
	asr r6, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _02265DE6
	add r6, r6, #1
_02265DE6:
	add r0, sp, #0x30
	bl sub_0201A7A0
	mov r0, #0
	ldr r3, [sp, #0xb0]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x88]
	add r0, sp, #0x30
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add r0, sp, #0x30
	mov r1, #1
	mov r2, #0x6e
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x24
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02265E42
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	sub r4, r4, r0
_02265E42:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	bl sub_0200D9B0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	str r0, [sp, #0x4c]
	mov r0, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0x58]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	mov r0, #1
	str r0, [sp, #0x68]
	mov r0, #0x6e
	str r0, [sp, #0x6c]
	add r0, sp, #0x40
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	cmp r1, #0
	beq _02265E8C
	bl sub_02012A90
_02265E8C:
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020128C4
	add r0, sp, #0x30
	bl sub_0201A8FC
	str r6, [r5, #0]
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	strh r7, [r5, #0x10]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02265DB8

	thumb_func_start ov117_02265EB0
ov117_02265EB0: ; 0x02265EB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02265EB0

	thumb_func_start ov117_02265EC8
ov117_02265EC8: ; 0x02265EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02265ED2:
	ldr r0, [sp]
	add r1, r0, r7
	mov r0, #6
	lsl r0, r0, #6
	ldrb r1, [r1, r0]
	cmp r1, #0x40
	bge _02265EEA
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
	b _02265F04
_02265EEA:
	cmp r1, #0x80
	bge _02265EFA
	mov r0, #0xa0
	sub r4, r0, r1
	sub r4, #0x10
	add r6, r4, #0
	sub r6, #0x50
	b _02265F04
_02265EFA:
	sub r1, #0xa0
	mov r0, #0x40
	sub r6, r0, r1
	add r4, r6, #0
	sub r4, #0x50
_02265F04:
	ldr r0, [r5, #4]
	add r1, sp, #8
	add r2, sp, #4
	bl sub_020129A4
	mov r2, #0xa8
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	sub r2, r2, r6
	bl sub_020128C4
	mov r2, #0xa8
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	sub r2, r2, r4
	bl sub_020128C4
	add r7, r7, #1
	add r5, #0x28
	cmp r7, #6
	blt _02265ED2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02265EC8

	thumb_func_start ov117_02265F34
ov117_02265F34: ; 0x02265F34
	push {r3, r4, r5, lr}
	ldr r0, _02265F94 ; =0x0000019E
	add r4, r1, #0
	ldrsb r1, [r4, r0]
	cmp r1, #0
	ble _02265F46
	sub r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02265F46:
	add r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02265F54
	cmp r0, #1
	beq _02265F70
	pop {r3, r4, r5, pc}
_02265F54:
	add r0, r4, #0
	bl ov117_02266008
	cmp r0, #1
	bne _02265F66
	add r0, r4, #0
	bl ov117_02265FD4
	pop {r3, r4, r5, pc}
_02265F66:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_02265F70:
	add r0, r4, #0
	bl ov117_02266030
	add r5, r0, #0
	add r0, r4, #0
	bl ov117_02265EC8
	cmp r5, #1
	bne _02265F92
	ldr r0, _02265F94 ; =0x0000019E
	mov r1, #0xf
	strb r1, [r4, r0]
	add r1, r0, #2
	ldrb r1, [r4, r1]
	add r0, r0, #2
	sub r1, r1, #1
	strb r1, [r4, r0]
_02265F92:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02265F94: .word 0x0000019E
	thumb_func_end ov117_02265F34

	thumb_func_start ov117_02265F98
ov117_02265F98: ; 0x02265F98
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02265FD0 ; =0x000186A0
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
_02265FA2:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020E1F6C
	add r3, r0, #0
	mov r0, #0x63
	lsl r2, r3, #4
	add r1, r7, r4
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r3, #0
	mul r0, r5
	sub r6, r6, r0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r4, r4, #1
	add r5, r0, #0
	cmp r4, #6
	blt _02265FA2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265FD0: .word 0x000186A0
	thumb_func_end ov117_02265F98

	thumb_func_start ov117_02265FD4
ov117_02265FD4: ; 0x02265FD4
	push {r4, r5, r6, r7}
	mov r1, #0x66
	mov r5, #0
	lsl r1, r1, #2
	add r3, r5, #0
	sub r2, r1, #6
_02265FE0:
	mov r6, #0x63
	add r4, r0, r5
	lsl r6, r6, #2
	ldrb r7, [r4, r6]
	sub r6, r6, #6
	strb r7, [r4, r6]
	mov r6, #5
	sub r6, r6, r5
	lsl r6, r6, #1
	strb r6, [r4, r1]
	add r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #6
	blt _02265FE0
	ldr r1, _02266004 ; =0x0000019F
	strb r3, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02266004: .word 0x0000019F
	thumb_func_end ov117_02265FD4

	thumb_func_start ov117_02266008
ov117_02266008: ; 0x02266008
	push {r4, r5}
	mov r1, #6
	lsl r1, r1, #6
	mov r5, #0
	add r2, r1, #6
_02266012:
	add r3, r0, r5
	ldrb r4, [r3, r1]
	ldrb r3, [r3, r2]
	cmp r4, r3
	beq _02266022
	mov r0, #0
	pop {r4, r5}
	bx lr
_02266022:
	add r5, r5, #1
	cmp r5, #6
	blt _02266012
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02266008

	thumb_func_start ov117_02266030
ov117_02266030: ; 0x02266030
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02266124 ; =0x0000019F
	mov r7, #5
	ldrb r0, [r6, r0]
	cmp r0, #6
	bls _02266042
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266042:
	mov r4, #0
	str r4, [sp]
_02266046:
	ldr r0, [sp]
	add r5, r6, r7
	mov ip, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226606A
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	mov r0, #0x66
	lsl r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	b _02266116
_0226606A:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bls _02266086
	mov r0, #6
	ldr r1, _0226612C ; =0x00000186
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r0, r1
	bne _02266086
	mov r0, #1
	str r0, [sp]
	b _02266116
_02266086:
	mov r0, #0
	mov r1, #6
	str r0, [sp]
	mov r0, #6
	lsl r1, r1, #6
	lsl r0, r0, #6
	ldrb r2, [r5, r1]
	ldrb r0, [r5, r0]
	add r2, #0x17
	strb r2, [r5, r1]
	add r1, r1, #6
	ldrb r3, [r5, r1]
	add r1, r3, #0
	add r1, #0xa0
	cmp r0, r3
	bgt _022660B0
	mov r2, #6
	lsl r2, r2, #6
	ldrb r2, [r5, r2]
	cmp r2, r3
	bhs _022660BE
_022660B0:
	cmp r0, r1
	bgt _02266104
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, r1
	blt _02266104
_022660BE:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bhs _022660D2
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02266128 ; =0x00000192
	strb r1, [r5, r0]
	b _02266104
_022660D2:
	cmp r7, #5
	beq _022660DC
	mov r0, ip
	cmp r0, #1
	bne _02266104
_022660DC:
	ldr r0, _02266128 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02266128 ; =0x00000192
	strb r1, [r5, r0]
	sub r0, #0xc
	ldrb r1, [r5, r0]
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
	add r0, #0x1f
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02266124 ; =0x0000019F
	strb r1, [r6, r0]
	ldrb r0, [r6, r0]
	cmp r0, #6
	blo _02266104
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266104:
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	mov r1, #0xa0
	bl sub_020E1F6C
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
_02266116:
	add r4, r4, #1
	sub r7, r7, #1
	cmp r4, #6
	blt _02266046
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266124: .word 0x0000019F
_02266128: .word 0x00000192
_0226612C: .word 0x00000186
	thumb_func_end ov117_02266030

	thumb_func_start ov117_02266130
ov117_02266130: ; 0x02266130
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _0226614C ; =0x02266E6C
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, pc}
	nop
_0226614C: .word 0x02266E6C
	thumb_func_end ov117_02266130

	thumb_func_start ov117_02266150
ov117_02266150: ; 0x02266150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	ldr r0, _022661FC ; =0x00003848
	add r6, r7, #0
	ldr r0, [r7, r0]
	add r4, r7, #0
	str r0, [sp, #0x2c]
	mov r0, #5
	str r0, [sp, #0x30]
	ldr r0, _02266200 ; =0x000016B0
	add r6, #0x64
	add r5, r7, r0
	add r4, #0xc8
	add r5, #0x64
_0226616E:
	ldr r0, _02266200 ; =0x000016B0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0226617A
	bl sub_02022974
_0226617A:
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	bl sub_020E2178
	add r0, r7, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r1, #4
	bl sub_0200B1EC
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	bl sub_020E2178
	str r0, [sp, #0x2c]
	ldr r0, _02266204 ; =0x000015AC
	add r1, sp, #0x3c
	ldr r0, [r4, r0]
	add r2, sp, #0x38
	bl sub_020129A4
	ldr r0, [sp, #0x34]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02266208 ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0226620C ; =0x00002713
	add r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	sub r6, #0x14
	sub r4, #0x28
	sub r5, #0x14
	sub r0, r0, #1
	str r0, [sp, #0x30]
	bpl _0226616E
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022661FC: .word 0x00003848
_02266200: .word 0x000016B0
_02266204: .word 0x000015AC
_02266208: .word 0x000E0F00
_0226620C: .word 0x00002713
	thumb_func_end ov117_02266150

	thumb_func_start ov117_02266210
ov117_02266210: ; 0x02266210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02266234 ; =0x000016B0
	mov r6, #0
	add r4, r5, r0
	add r7, r0, #0
_0226621C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02266228
	add r0, r4, #0
	bl ov117_02265EB0
_02266228:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #6
	blt _0226621C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266234: .word 0x000016B0
	thumb_func_end ov117_02266210

	thumb_func_start ov117_02266238
ov117_02266238: ; 0x02266238
	ldr r3, _02266240 ; =sub_0200D0F4
	add r0, r1, #0
	bx r3
	nop
_02266240: .word sub_0200D0F4
	thumb_func_end ov117_02266238

	thumb_func_start ov117_02266244
ov117_02266244: ; 0x02266244
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _02266264 ; =0x02266EA0
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02266264: .word 0x02266EA0
	thumb_func_end ov117_02266244

	thumb_func_start ov117_02266268
ov117_02266268: ; 0x02266268
	ldr r3, _02266270 ; =sub_0200D0F4
	add r0, r1, #0
	bx r3
	nop
_02266270: .word sub_0200D0F4
	thumb_func_end ov117_02266268

	thumb_func_start ov117_02266274
ov117_02266274: ; 0x02266274
	push {r4, lr}
	add r4, r1, #0
	mov r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bhi _0226633E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226628C: ; jump table
	.short _022662A2 - _0226628C - 2 ; case 0
	.short _022662C2 - _0226628C - 2 ; case 1
	.short _022662EA - _0226628C - 2 ; case 2
	.short _0226630C - _0226628C - 2 ; case 3
	.short _0226631E - _0226628C - 2 ; case 4
	.short _022662A2 - _0226628C - 2 ; case 5
	.short _022662C2 - _0226628C - 2 ; case 6
	.short _022662EA - _0226628C - 2 ; case 7
	.short _0226630C - _0226628C - 2 ; case 8
	.short _0226631E - _0226628C - 2 ; case 9
	.short _0226633A - _0226628C - 2 ; case 10
_022662A2:
	mov r3, #0x16
	ldr r0, [r4, #0]
	mov r1, #0x80
	mov r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662C2:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, #1
	strh r2, [r4, #6]
	ldrsh r1, [r4, r1]
	cmp r1, #0xf
	ble _0226633E
	mov r1, #0
	strh r1, [r4, #6]
	mov r1, #1
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	mov r1, #0x80
	str r1, [r4, #0xc]
	mov r1, #0x20
	str r1, [r4, #0x10]
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662EA:
	mov r1, #0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	mov r2, #6
	add r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	bl sub_0200D5DC
	ldr r0, [r4, #0x10]
	cmp r0, #0x60
	ble _0226633E
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226630C:
	mov r1, #0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0200D3F4
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
_0226631E:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0226633E
	mov r0, #0
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226633A:
	mov r0, #1
	pop {r4, pc}
_0226633E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02266274

	thumb_func_start ov117_02266344
ov117_02266344: ; 0x02266344
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
_0226634C:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r2, _02266380 ; =0x02266E38
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #0x1b
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r6, r6, #1
	stmia r5!, {r4}
	cmp r6, #2
	blt _0226634C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266380: .word 0x02266E38
	thumb_func_end ov117_02266344

	thumb_func_start ov117_02266384
ov117_02266384: ; 0x02266384
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_0226638A:
	ldr r0, [r5, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226638A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266384

	thumb_func_start ov117_0226639C
ov117_0226639C: ; 0x0226639C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r1, #0]
	add r1, sp, #4
	mov r3, #0x16
	str r2, [sp]
	add r1, #2
	add r2, sp, #4
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	ldr r5, [sp]
	mov r4, #0
	add r6, sp, #4
	mov r7, #1
_022663BA:
	mov r2, #0
	ldrsh r2, [r6, r2]
	mov r1, #2
	mov r3, #0x16
	add r2, #0x1c
	lsl r2, r2, #0x10
	ldrsh r1, [r6, r1]
	ldr r0, [r5, #0]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r5, #0]
	mov r1, #0x1b
	bl sub_0200D364
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x14
	sub r2, r2, r1
	mov r0, #0x14
	ror r2, r0
	mov r0, #1
	add r1, r1, r2
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #8]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x16
	sub r2, r2, r1
	mov r0, #0x16
	ror r2, r0
	mov r0, #1
	add r1, r1, r2
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #0x10]
	add r0, r4, #0
	tst r0, r7
	beq _0226642A
	mov r0, #0
	ldr r1, [r5, #8]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #8]
_0226642A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022663BA
	ldr r0, [sp]
	mov r1, #0
	strb r1, [r0, #0x19]
	mov r1, #1
	strb r1, [r0, #0x18]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_0226639C

	thumb_func_start ov117_02266440
ov117_02266440: ; 0x02266440
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _02266494
	cmp r0, #1
	bne _02266494
	mov r4, #0
	add r5, r6, #0
_02266452:
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	neg r2, r2
	bl sub_0200D5E8
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02266452
	ldrb r0, [r6, #0x19]
	add r0, r0, #1
	strb r0, [r6, #0x19]
	ldrb r0, [r6, #0x19]
	cmp r0, #8
	bls _02266494
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_02266480:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_0200D3F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _02266480
	mov r0, #0
	strb r0, [r6, #0x18]
_02266494:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02266440

	thumb_func_start ov117_02266498
ov117_02266498: ; 0x02266498
	push {r3, r4, r5, lr}
	mov r1, #0xc
	mov r2, #0x6e
	add r5, r0, #0
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266498

	thumb_func_start ov117_022664BC
ov117_022664BC: ; 0x022664BC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266542
	add r1, r0, #0
	add r1, #0x3e
	ldrb r1, [r1]
	cmp r1, #0
	beq _022664E4
	cmp r1, #1
	beq _02266506
	cmp r1, #2
	b _0226651E
_022664E4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022664F0
	bl sub_0200F2C0
_022664F0:
	mov r0, #0
	bl sub_0200F370
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226653E
_02266506:
	bl ov114_0225CA98
	cmp r0, #1
	bne _0226653E
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226653E
_0226651E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226652C
	bl ov114_0225C838
	mov r0, #0
	str r0, [r4, #4]
_0226652C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0226653A
	bl ov114_0225C904
	mov r0, #0
	str r0, [r4, #8]
_0226653A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226653E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02266542:
	ldr r1, [r5, #0]
	cmp r1, #5
	bhi _022665E0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266554: ; jump table
	.short _02266560 - _02266554 - 2 ; case 0
	.short _02266574 - _02266554 - 2 ; case 1
	.short _02266584 - _02266554 - 2 ; case 2
	.short _022665A8 - _02266554 - 2 ; case 3
	.short _022665BC - _02266554 - 2 ; case 4
	.short _022665E0 - _02266554 - 2 ; case 5
_02266560:
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0226656E
	mov r0, #1
	str r0, [r5, #0]
	b _022665E4
_0226656E:
	mov r0, #3
	str r0, [r5, #0]
	b _022665E4
_02266574:
	mov r1, #0x6e
	bl ov114_0225C82C
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022665E4
_02266584:
	ldr r0, [r4, #4]
	bl ov114_0225C8BC
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #4]
	bl ov114_0225C8CC
	ldr r1, [r4, #0]
	str r0, [r1, #0x34]
	ldr r0, [r4, #4]
	bl ov114_0225C838
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r5, #0]
	b _022665E4
_022665A8:
	add r1, r0, #0
	add r1, #0x10
	mov r2, #0x6e
	bl ov114_0225C8F8
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022665E4
_022665BC:
	ldr r0, [r4, #8]
	bl ov114_0225C9A0
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #8]
	bl ov114_0225C9A4
	ldr r1, [r4, #0]
	str r0, [r1, #0x38]
	ldr r0, [r4, #8]
	bl ov114_0225C904
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r5, #0]
	b _022665E4
_022665E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022665E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_022664BC

	thumb_func_start ov117_022665E8
ov117_022665E8: ; 0x022665E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_022665E8

	thumb_func_start ov117_022665FC
ov117_022665FC: ; 0x022665FC
	ldr r3, _02266608 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0226660C ; =0x02266FE4
	mov r1, #4
	bx r3
	nop
_02266608: .word sub_02032798
_0226660C: .word 0x02266FE4
	thumb_func_end ov117_022665FC

	thumb_func_start ov117_02266610
ov117_02266610: ; 0x02266610
	mov r0, #0x14
	bx lr
	thumb_func_end ov117_02266610

	thumb_func_start ov117_02266614
ov117_02266614: ; 0x02266614
	mov r0, #4
	bx lr
	thumb_func_end ov117_02266614

	thumb_func_start ov117_02266618
ov117_02266618: ; 0x02266618
	add r1, r0, #0
	add r0, r3, #0
	ldr r3, _02266620 ; =ov117_02262044
	bx r3
	; .align 2, 0
_02266620: .word ov117_02262044
	thumb_func_end ov117_02266618

	thumb_func_start ov117_02266624
ov117_02266624: ; 0x02266624
	push {r3, lr}
	mov r0, #0x18
	mov r2, #0x14
	bl sub_020359DC
	cmp r0, #1
	bne _02266636
	mov r0, #1
	pop {r3, pc}
_02266636:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov117_02266624

	thumb_func_start ov117_0226663C
ov117_0226663C: ; 0x0226663C
	mov r0, #0xbf
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r3, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov117_0226663C

	thumb_func_start ov117_02266648
ov117_02266648: ; 0x02266648
	push {r3, lr}
	mov r1, #0
	mov r0, #0x19
	add r2, r1, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0226665C
	mov r0, #1
	pop {r3, pc}
_0226665C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov117_02266648

	thumb_func_start ov117_02266660
ov117_02266660: ; 0x02266660
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r3, [r4, #0]
	ldr r1, [r2, #0]
	add r5, r3, #0
	add r5, #0x30
	ldrb r5, [r5]
	mov r2, #0
	cmp r5, #0
	ble _0226668E
_02266674:
	add r6, r3, #0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r0, r6
	bne _02266686
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #0xc]
	b _0226668E
_02266686:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r5
	blt _02266674
_0226668E:
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r2, r0
	blt _0226669C
	bl sub_02022974
_0226669C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02266660

	thumb_func_start ov117_022666A4
ov117_022666A4: ; 0x022666A4
	push {r3, lr}
	mov r0, #0x64
	str r0, [sp]
	mov r0, #0x17
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	cmp r0, #1
	bne _022666BC
	mov r0, #1
	pop {r3, pc}
_022666BC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov117_022666A4

	thumb_func_start ov117_022666C0
ov117_022666C0: ; 0x022666C0
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	lsl r3, r2, #2
	ldr r2, _022666E4 ; =0x02267014
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _022666E0
	blx r2
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #1
	pop {r4, pc}
_022666E0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022666E4: .word 0x02267014
	thumb_func_end ov117_022666C0

	thumb_func_start ov117_022666E8
ov117_022666E8: ; 0x022666E8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov117_022666E8

	thumb_func_start ov117_02266714
ov117_02266714: ; 0x02266714
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203608C
	ldrb r1, [r4, #4]
	cmp r1, r0
	beq _0226672C
	add r0, r5, #0
	add r1, r4, #4
	bl ov117_02263DC4
_0226672C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266714

	thumb_func_start ov117_02266730
ov117_02266730: ; 0x02266730
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	mov r1, #5
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	add r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02266730

	thumb_func_start ov117_02266760
ov117_02266760: ; 0x02266760
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02266780 ; =0x00002FD0
	add r5, r0, #0
	ldr r2, [r5, r1]
	add r2, r2, #1
	str r2, [r5, r1]
	bl ov117_02264808
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	add r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	nop
_02266780: .word 0x00002FD0
	thumb_func_end ov117_02266760

	thumb_func_start ov117_02266784
ov117_02266784: ; 0x02266784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	add r6, r3, #0
	bl sub_020C4CF4
	mov r0, #3
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	strb r4, [r0, #6]
	mov r1, #4
	strb r1, [r0, #7]
	strb r6, [r0, #8]
	add r0, r7, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02266784

	thumb_func_start ov117_022667B8
ov117_022667B8: ; 0x022667B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4, #4]
	add r5, r0, #0
	ldr r0, _022667E8 ; =0x00002FC8
	ldr r3, _022667EC ; =0x00001428
	str r1, [r5, r0]
	ldr r1, [r5, #0]
	ldrb r2, [r4, #6]
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r5, #0x2c]
	add r3, r5, r3
	bl ov117_02263AF0
	ldr r0, _022667F0 ; =0x00002FCC
	mov r1, #1
	str r1, [r5, r0]
	ldrb r1, [r4, #7]
	ldrb r2, [r4, #8]
	add r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022667E8: .word 0x00002FC8
_022667EC: .word 0x00001428
_022667F0: .word 0x00002FCC
	thumb_func_end ov117_022667B8

	thumb_func_start ov117_022667F4
ov117_022667F4: ; 0x022667F4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #4
	str r0, [sp]
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022667F4

	thumb_func_start ov117_02266820
ov117_02266820: ; 0x02266820
	add r2, r1, #0
	mov r1, #3
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _02266830 ; =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_02266830: .word ov117_0226238C
	thumb_func_end ov117_02266820

	thumb_func_start ov117_02266834
ov117_02266834: ; 0x02266834
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #5
	str r0, [sp]
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02266834

	thumb_func_start ov117_02266860
ov117_02266860: ; 0x02266860
	add r3, r1, #0
	ldr r1, _02266874 ; =0x00002FBC
	mov r2, #1
	str r2, [r0, r1]
	mov r1, #6
	str r1, [r0, #0x20]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	ldr r3, _02266878 ; =ov117_0226238C
	bx r3
	; .align 2, 0
_02266874: .word 0x00002FBC
_02266878: .word ov117_0226238C
	thumb_func_end ov117_02266860

	thumb_func_start ov117_0226687C
ov117_0226687C: ; 0x0226687C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #6
	str r0, [sp]
	add r0, sp, #0
	strb r5, [r0, #4]
	strb r4, [r0, #5]
	add r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_0226687C

	thumb_func_start ov117_022668A8
ov117_022668A8: ; 0x022668A8
	ldr r3, _022668B4 ; =ov117_0226238C
	add r2, r1, #0
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668B4: .word ov117_0226238C
	thumb_func_end ov117_022668A8

	thumb_func_start ov117_022668B8
ov117_022668B8: ; 0x022668B8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	mov r0, #7
	str r0, [sp]
	mov r1, #6
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022668B8

	thumb_func_start ov117_022668E4
ov117_022668E4: ; 0x022668E4
	add r2, r1, #0
	mov r1, #1
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _022668F4 ; =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668F4: .word ov117_0226238C
	thumb_func_end ov117_022668E4
	; 0x022668F8

	.incbin "data/overlay117.bin"
