	.include "macros/function.inc"


	.text

	thumb_func_start ov95_02246C20
ov95_02246C20: ; 0x02246C20
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _02246C30
	b _02246DCA
_02246C30:
	mov r0, #3
	mov r1, #0x39
	lsl r2, r0, #0xf
	bl sub_02017FC8
	mov r0, #3
	mov r1, #0x3a
	lsl r2, r0, #0xf
	bl sub_02017FC8
	bl ov95_02247688
	ldr r1, _02246DD0 ; =0x00000492
	mov r0, #3
	mov r2, #1
	bl sub_02004550
	mov r1, #0x56
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x39
	bl sub_0200681C
	add r4, r0, #0
	bne _02246C64
	b _02246DC4
_02246C64:
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #0x39
	bl sub_02018340
	str r0, [r4, #8]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0x39
	bl sub_02023790
	str r0, [r4, #0x14]
	ldr r2, _02246DD4 ; =0x0000015E
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x39
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0x39
	bl sub_0200B358
	str r0, [r4, #0xc]
	ldr r2, [r4, #0]
	ldr r0, [r2, #0x10]
	cmp r0, #1
	beq _02246CAC
	cmp r0, #2
	beq _02246CDE
	cmp r0, #4
	beq _02246CEA
	b _02246D02
_02246CAC:
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r2, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #4]
	mov r1, #1
	bl sub_0200B5CC
	ldr r2, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r1, #2
	bl sub_0200B498
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl ov95_02246DEC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _02246D02
_02246CDE:
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B5CC
	b _02246D02
_02246CEA:
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #4]
	mov r1, #1
	bl sub_0200B5CC
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl ov95_02246DEC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
_02246D02:
	bl sub_020A7944
	mov r0, #1
	str r0, [sp]
	mov r0, #0x7f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r1, #0x39
	str r1, [sp, #0x10]
	mov r1, #0x80
	add r2, r0, #0
	bl sub_0200A784
	add r1, r4, #0
	mov r0, #0x40
	add r1, #0x1c
	mov r2, #0x39
	bl sub_020095C4
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r2, #0x3a
	add r0, #0x1c
	mov r1, #0
	lsl r2, r2, #0xe
	bl sub_0200964C
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_02074570
	mov r1, #0x53
	lsl r1, r1, #2
	strh r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_02074570
	ldr r1, _02246DD8 ; =0x0000014E
	mov r2, #0
	strh r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #5
	ldr r0, [r0, #4]
	bl sub_02074570
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #0x70
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_02074570
	ldr r1, _02246DDC ; =0x00000152
	strh r0, [r4, r1]
	mov r0, #0
	add r1, r1, #2
	str r0, [r4, r1]
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02246DE0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02246DE4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _02246DE8 ; =ov95_02246F0C
	add r1, r4, #0
	mov r2, #1
	bl sub_0200DA20
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	add r1, #0x10
	str r0, [r4, r1]
_02246DC4:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_02246DCA:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02246DD0: .word 0x00000492
_02246DD4: .word 0x0000015E
_02246DD8: .word 0x0000014E
_02246DDC: .word 0x00000152
_02246DE0: .word 0xFFFFE0FF
_02246DE4: .word 0x04001000
_02246DE8: .word ov95_02246F0C
	thumb_func_end ov95_02246C20

	thumb_func_start ov95_02246DEC
ov95_02246DEC: ; 0x02246DEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1c
	bl sub_020759CC
	cmp r0, #0
	bne _02246E16
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246E16:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02246DEC

	thumb_func_start ov95_02246E1C
ov95_02246E1C: ; 0x02246E1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020C3D98
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	bl sub_02039794
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x18]
	bl sub_02021964
	bl sub_0200A878
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x39
	bl sub_0201807C
	mov r0, #0x3a
	bl sub_0201807C
	add r0, r6, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02246E1C

	thumb_func_start ov95_02246E7C
ov95_02246E7C: ; 0x02246E7C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #7
	bhs _02246EF8
	ldr r1, [r4, #0]
	ldr r6, _02246EFC ; =0x0224BE98
	lsl r2, r3, #4
	ldr r1, [r1, #0x10]
	ldr r6, [r6, r2]
	tst r1, r6
	beq _02246EE8
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02246EB0
	ldr r1, _02246F00 ; =0x0224BE8C
	ldr r1, [r1, r2]
	blx r1
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
_02246EB0:
	ldr r2, [r4, #4]
	mov r0, #0x55
	lsl r3, r2, #4
	ldr r2, _02246F04 ; =0x0224BE90
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, r3]
	add r1, r5, #0
	blx r2
	cmp r0, #0
	beq _02246EF0
	ldr r1, [r4, #4]
	mov r0, #0x55
	lsl r2, r1, #4
	ldr r1, _02246F08 ; =0x0224BE94
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	blx r1
	mov r0, #0x55
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	str r1, [r5, #0]
	b _02246EF0
_02246EE8:
	add r0, r3, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r5, #0]
_02246EF0:
	bl ov95_02247694
	mov r0, #0
	pop {r4, r5, r6, pc}
_02246EF8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246EFC: .word 0x0224BE98
_02246F00: .word 0x0224BE8C
_02246F04: .word 0x0224BE90
_02246F08: .word 0x0224BE94
	thumb_func_end ov95_02246E7C

	thumb_func_start ov95_02246F0C
ov95_02246F0C: ; 0x02246F0C
	push {r3, lr}
	ldr r0, [r1, #0x18]
	bl sub_020219F8
	bl sub_0200A858
	ldr r3, _02246F28 ; =0x027E0000
	ldr r1, _02246F2C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_02246F28: .word 0x027E0000
_02246F2C: .word 0x00003FF8
	thumb_func_end ov95_02246F0C

	thumb_func_start ov95_02246F30
ov95_02246F30: ; 0x02246F30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x39
	add r6, r1, #0
	add r1, r0, #0
	add r1, #0xc7
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _02246FF4 ; =0x00000000
	str r0, [r5, #0]
	beq _02246FEC
	mov r0, #0x5d
	mov r1, #6
	add r2, sp, #4
	mov r3, #0x39
	bl sub_02006F88
	add r7, r0, #0
	beq _02246F6A
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x60
	bl sub_020C4AF0
	add r0, r7, #0
	bl sub_020181C4
_02246F6A:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xf4
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xe4
	str r5, [r1, #0]
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xfc
	str r6, [r1, #0]
	add r3, r4, #0
	add r2, r0, #0
_02246F9A:
	add r1, r3, #0
	add r1, #0xc4
	add r0, r0, #1
	add r3, r3, #4
	str r2, [r1, #0]
	cmp r0, #8
	blt _02246F9A
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246FF8 ; =0x04000050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl sub_020BF55C
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246FFC ; =0x04001050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl sub_020BF55C
	ldr r0, _02247000 ; =ov95_02247060
	add r1, r4, #0
	mov r2, #0x14
	bl sub_0200DA3C
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02246FEC
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #1
	str r1, [r0, #0]
_02246FEC:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246FF4: .word 0x00000000
_02246FF8: .word 0x04000050
_02246FFC: .word 0x04001050
_02247000: .word ov95_02247060
	thumb_func_end ov95_02246F30

	thumb_func_start ov95_02247004
ov95_02247004: ; 0x02247004
	add r1, r0, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	cmp r1, #1
	bne _02247016
	mov r1, #1
	add r0, #0xe8
	str r1, [r0, #0]
_02247016:
	bx lr
	thumb_func_end ov95_02247004

	thumb_func_start ov95_02247018
ov95_02247018: ; 0x02247018
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0224705E
	mov r4, #0
	add r5, r6, #0
_0224702A:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224703C
	add r0, r6, #0
	add r1, r4, #0
	bl ov95_02247224
_0224703C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0224702A
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
_0224705E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_02247018

	thumb_func_start ov95_02247060
ov95_02247060: ; 0x02247060
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022470DE
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _0224709C
	ldr r0, _02247144 ; =0x000006AE
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0xf0
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov95_02247170
_0224709C:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247140
	bl sub_020C096C
	bl sub_020C0BBC
	add r0, r4, #0
	mov r1, #0x60
	bl sub_020C2C54
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0A0C
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0BD4
	bl sub_020C0A7C
	bl sub_020C0C38
	mov r0, #0
	add r4, #0xec
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022470DE:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247120
	bl sub_020C096C
	bl sub_020C0BBC
	add r0, r4, #0
	mov r1, #0x60
	bl sub_020C2C54
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0A0C
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0BD4
	bl sub_020C0A7C
	bl sub_020C0C38
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
_02247120:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02247140
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02247140:
	pop {r3, r4, r5, pc}
	nop
_02247144: .word 0x000006AE
	thumb_func_end ov95_02247060

	thumb_func_start ov95_02247148
ov95_02247148: ; 0x02247148
	push {r3, r4}
	cmp r1, #0
	blt _02247158
	cmp r1, #0x60
	bge _02247158
	mov r4, #0
	lsl r1, r1, #1
	strh r4, [r0, r1]
_02247158:
	cmp r2, #0
	blt _02247164
	cmp r2, #0x60
	bge _02247164
	lsl r1, r2, #1
	strh r3, [r0, r1]
_02247164:
	mov r1, #1
	add r0, #0xec
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247148

	thumb_func_start ov95_02247170
ov95_02247170: ; 0x02247170
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224721C
	mov r0, #0x39
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	beq _0224721C
	add r0, r5, #0
	str r5, [r4, #0]
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _022471A2
	mov r0, #0
	mvn r0, r0
	b _022471A4
_022471A2:
	mov r0, #0xf
_022471A4:
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #2
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r2, #0xa
	str r0, [r4, #0x14]
	ldr r0, _02247220 ; =ov95_02247254
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1, #0]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247216
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #8
	blt _0224721C
	mov r0, #0
	add r5, #0xf8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_02247216:
	add r0, r4, #0
	bl sub_020181C4
_0224721C:
	pop {r3, r4, r5, pc}
	nop
_02247220: .word ov95_02247254
	thumb_func_end ov95_02247170

	thumb_func_start ov95_02247224
ov95_02247224: ; 0x02247224
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	lsl r4, r1, #2
	add r6, #0xc4
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _02247252
	bl sub_0201CED0
	bl sub_020181C4
	ldr r0, [r6, r4]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r6, r4]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	add r5, #0xf4
	sub r0, r0, #1
	str r0, [r5, #0]
_02247252:
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_02247224

	thumb_func_start ov95_02247254
ov95_02247254: ; 0x02247254
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	add r1, r0, #1
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _022472BC
	mov r3, #0
	str r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _02247294
	ldr r1, [r4, #4]
	ldr r0, [r4, #0]
	add r2, r1, #1
	cmp r2, #0xf
	blt _02247286
	bl ov95_02247148
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov95_02247224
	pop {r4, pc}
_02247286:
	ldr r3, _022472C0 ; =0x00007FFF
	bl ov95_02247148
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_02247294:
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	cmp r2, #0
	bge _022472AE
	add r1, r2, #0
	add r2, r2, #1
	bl ov95_02247148
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl ov95_02247224
	pop {r4, pc}
_022472AE:
	ldr r3, _022472C0 ; =0x00007FFF
	add r1, r2, #1
	bl ov95_02247148
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
_022472BC:
	pop {r4, pc}
	nop
_022472C0: .word 0x00007FFF
	thumb_func_end ov95_02247254

	thumb_func_start ov95_022472C4
ov95_022472C4: ; 0x022472C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x39
	mov r1, #0x24
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x28]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _02247324 ; =0x00000001
	str r0, [r5, #0]
	beq _0224731C
	ldr r1, [sp]
	str r1, [r4, #0]
	str r6, [r4, #8]
	ldr r1, [sp, #4]
	str r7, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r1, [r4, #0x14]
	cmp r6, r7
	bge _022472F8
	mov r0, #0
_022472F8:
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [r4, #0x1c]
	str r5, [r4, #4]
	ldr r0, _02247328 ; =ov95_0224732C
	add r1, r4, #0
	str r2, [r5, #0]
	bl sub_0200DA04
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _0224731C
	mov r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
_0224731C:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247324: .word 0x00000001
_02247328: .word ov95_0224732C
	thumb_func_end ov95_022472C4

	thumb_func_start ov95_0224732C
ov95_0224732C: ; 0x0224732C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mul r1, r0
	asr r2, r1, #0xc
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	asr r2, r1, #5
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0224734E
	cmp r1, #1
	beq _02247364
	b _02247378
_0224734E:
	ldr r1, [r4, #0xc]
	add r0, r0, r2
	cmp r0, r1
	bge _0224735A
	str r0, [r4, #8]
	b _02247378
_0224735A:
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0]
	b _02247378
_02247364:
	ldr r1, [r4, #0xc]
	sub r0, r0, r2
	cmp r0, r1
	ble _02247370
	str r0, [r4, #8]
	b _02247378
_02247370:
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0]
_02247378:
	add r0, r4, #0
	bl ov95_022473A0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247394
	add r0, r4, #0
	bl ov95_022476C8
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_02247394:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224732C

	thumb_func_start ov95_022473A0
ov95_022473A0: ; 0x022473A0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r2, sp, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r3, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #2
	ldr r0, _022473E4 ; =0x0224BE74
	ldr r0, [r0, r1]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r4, #0]
	bl sub_02019348
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	lsl r1, r0, #2
	ldr r0, _022473E4 ; =0x0224BE74
	mov r3, #0x80
	ldr r0, [r0, r1]
	mov r1, #6
	str r0, [sp]
	ldr r0, [r4, #0]
	bl sub_02019348
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_022473E4: .word 0x0224BE74
	thumb_func_end ov95_022473A0

	thumb_func_start ov95_022473E8
ov95_022473E8: ; 0x022473E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [sp, #0x58]
	add r4, r1, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	cmp r0, #0
	beq _02247400
	mov r6, #0x19
	lsl r6, r6, #8
	b _02247404
_02247400:
	mov r6, #0x32
	lsl r6, r6, #6
_02247404:
	mov r0, #0x39
	add r1, r6, #0
	bl sub_02018184
	add r7, r0, #0
	beq _022474AA
	ldr r3, _022474D0 ; =0x0224BE7C
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r4, #0
	ldr r0, [r5, #0]
	bne _02247426
	ldr r4, [r0, #0]
	b _02247428
_02247426:
	ldr r4, [r0, #4]
_02247428:
	add r0, r4, #0
	bl sub_02073D20
	str r0, [sp, #0x20]
	add r0, sp, #0x34
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074570
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	ldr r1, [sp, #0x58]
	lsr r0, r0, #0x10
	cmp r1, #0
	beq _02247462
	ldr r1, [sp, #0x2c]
	lsl r1, r1, #1
	str r1, [sp, #0x2c]
_02247462:
	ldr r1, [sp, #0x1c]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x58]
	mov r2, #0x39
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r1, sp, #0x24
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	add r3, sp, #0x24
	bl sub_02013720
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020C2C54
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0201958C
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	bl sub_02073D48
	add r0, r7, #0
	bl sub_020181C4
_022474AA:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	blo _022474B4
	mov r2, #4
	b _022474B6
_022474B4:
	mov r2, #0
_022474B6:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	add r1, sp, #0x24
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x14]
	lsl r3, r3, #5
	bl sub_02006E84
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022474D0: .word 0x0224BE7C
	thumb_func_end ov95_022473E8

	thumb_func_start ov95_022474D4
ov95_022474D4: ; 0x022474D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r1, #0
	bne _022474E6
	ldr r1, _02247564 ; =0x00000106
	b _022474F6
_022474E6:
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _022474F4
	sub r1, #0x41
	b _022474F6
_022474F4:
	sub r1, #0x42
_022474F6:
	mov r0, #0x39
	str r0, [sp]
	mov r0, #7
	mov r2, #0
	add r3, sp, #0x1c
	bl sub_02006F6C
	add r7, r0, #0
	beq _0224755E
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x38]
	add r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x20
	ldr r3, [sp, #0x3c]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r6, #0x18
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	add r0, r7, #0
	bl sub_020181C4
_0224755E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247564: .word 0x00000106
	thumb_func_end ov95_022474D4

	thumb_func_start ov95_02247568
ov95_02247568: ; 0x02247568
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	mov r0, #0x3a
	add r3, r5, #0
	str r0, [sp]
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #1
	add r3, #8
	bl sub_02006FA0
	str r0, [r5, #0]
	mov r0, #0x3a
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	add r3, #0xc
	bl sub_02006FBC
	str r0, [r5, #4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02247568

	thumb_func_start ov95_022475A0
ov95_022475A0: ; 0x022475A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022475B2
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
_022475B2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022475C0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
_022475C0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022475A0

	thumb_func_start ov95_022475C4
ov95_022475C4: ; 0x022475C4
	str r2, [r0, #0]
	str r3, [r0, #8]
	ldr r2, [r1, #8]
	str r2, [r0, #0xc]
	ldr r1, [r1, #0xc]
	ldr r2, [sp]
	str r1, [r0, #0x10]
	add r1, r0, #0
	add r1, #0x20
	strb r2, [r1]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov95_022475C4

	thumb_func_start ov95_022475E4
ov95_022475E4: ; 0x022475E4
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x18]
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #8]
	lsl r0, r3, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	mov r0, #0x39
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02021B90
	add r4, r0, #0
	beq _02247620
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_02247620:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022475E4

	thumb_func_start ov95_02247628
ov95_02247628: ; 0x02247628
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov95_02247628

	thumb_func_start ov95_0224762C
ov95_0224762C: ; 0x0224762C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov95_0224762C

	thumb_func_start ov95_02247630
ov95_02247630: ; 0x02247630
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov95_02247630

	thumb_func_start ov95_02247634
ov95_02247634: ; 0x02247634
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247634

	thumb_func_start ov95_0224763C
ov95_0224763C: ; 0x0224763C
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224763C

	thumb_func_start ov95_02247644
ov95_02247644: ; 0x02247644
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247644

	thumb_func_start ov95_0224764C
ov95_0224764C: ; 0x0224764C
	mov r1, #0x53
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end ov95_0224764C

	thumb_func_start ov95_02247654
ov95_02247654: ; 0x02247654
	ldr r1, _0224765C ; =0x0000014E
	ldrh r0, [r0, r1]
	bx lr
	nop
_0224765C: .word 0x0000014E
	thumb_func_end ov95_02247654

	thumb_func_start ov95_02247660
ov95_02247660: ; 0x02247660
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end ov95_02247660

	thumb_func_start ov95_02247668
ov95_02247668: ; 0x02247668
	ldr r1, _02247670 ; =0x00000152
	ldrh r0, [r0, r1]
	bx lr
	nop
_02247670: .word 0x00000152
	thumb_func_end ov95_02247668

	thumb_func_start ov95_02247674
ov95_02247674: ; 0x02247674
	ldr r0, [r0, #0]
	ldr r3, _0224767C ; =sub_02027B50
	ldr r0, [r0, #0x14]
	bx r3
	; .align 2, 0
_0224767C: .word sub_02027B50
	thumb_func_end ov95_02247674

	thumb_func_start ov95_02247680
ov95_02247680: ; 0x02247680
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247680

	thumb_func_start ov95_02247688
ov95_02247688: ; 0x02247688
	ldr r0, _02247690 ; =0x0224C2E0
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_02247690: .word 0x0224C2E0
	thumb_func_end ov95_02247688

	thumb_func_start ov95_02247694
ov95_02247694: ; 0x02247694
	push {r4, r5, r6, lr}
	ldr r6, _022476C0 ; =0x0224C2E0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _022476BC
	mov r4, #0
	cmp r0, #0
	ble _022476B6
	ldr r5, _022476C4 ; =0x0224C2E4
_022476A6:
	ldr r0, [r5, #0]
	bl sub_020181C4
	ldr r0, [r6, #0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022476A6
_022476B6:
	ldr r0, _022476C0 ; =0x0224C2E0
	mov r1, #0
	str r1, [r0, #0]
_022476BC:
	pop {r4, r5, r6, pc}
	nop
_022476C0: .word 0x0224C2E0
_022476C4: .word 0x0224C2E4
	thumb_func_end ov95_02247694

	thumb_func_start ov95_022476C8
ov95_022476C8: ; 0x022476C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022476E8 ; =0x0224C2E0
	ldr r0, [r0, #0]
	cmp r0, #0x20
	blt _022476D8
	bl sub_02022974
_022476D8:
	ldr r0, _022476E8 ; =0x0224C2E0
	ldr r2, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #0]
	ldr r0, _022476EC ; =0x0224C2E4
	lsl r1, r2, #2
	str r4, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_022476E8: .word 0x0224C2E0
_022476EC: .word 0x0224C2E4
	thumb_func_end ov95_022476C8

	thumb_func_start ov95_022476F0
ov95_022476F0: ; 0x022476F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3a
	mov r1, #0x20
	add r5, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r6, r0, #0
	beq _02247736
	ldr r3, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl ov95_02247AF0
	mov r1, #0x8c
	mov r0, #0x3a
	mul r1, r7
	bl sub_02018144
	str r0, [r6, #0x18]
	mov r4, #0
	str r7, [r6, #0x1c]
	cmp r7, #0
	bls _02247736
	add r5, r4, #0
_02247726:
	ldr r0, [r6, #0x18]
	add r0, r0, r5
	bl ov95_02247868
	add r4, r4, #1
	add r5, #0x8c
	cmp r4, r7
	blo _02247726
_02247736:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_022476F0

	thumb_func_start ov95_0224773C
ov95_0224773C: ; 0x0224773C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _0224775C
	add r4, r6, #0
_0224774A:
	ldr r0, [r5, #0x18]
	add r0, r0, r4
	bl ov95_0224789C
	ldr r0, [r5, #0x1c]
	add r6, r6, #1
	add r4, #0x8c
	cmp r6, r0
	blo _0224774A
_0224775C:
	ldr r0, [r5, #0x18]
	bl sub_020181C4
	add r0, r5, #0
	bl ov95_02247B5C
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_0224773C

	thumb_func_start ov95_02247770
ov95_02247770: ; 0x02247770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r5, r0, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020203EC
	ldr r0, [r5, #0x1c]
	mov r6, #0
	cmp r0, #0
	bls _022477A6
	add r4, r6, #0
_0224778E:
	ldr r0, [r5, #0x18]
	add r0, r0, r4
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0224779C
	bl ov95_022477B8
_0224779C:
	ldr r0, [r5, #0x1c]
	add r6, r6, #1
	add r4, #0x8c
	cmp r6, r0
	blo _0224778E
_022477A6:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02247770

	thumb_func_start ov95_022477B8
ov95_022477B8: ; 0x022477B8
	push {r4, lr}
	sub sp, #0x50
	add r4, r0, #0
	add r0, sp, #0x2c
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5AC
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5C8
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	ldr r3, _02247864 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #8
	bl sub_020BB5E4
	add r1, sp, #0x2c
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0x1f
	beq _02247850
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020AF5B4
_02247850:
	add r1, r4, #0
	add r0, r4, #4
	add r4, #0x74
	add r1, #0x68
	add r2, sp, #0x2c
	add r3, r4, #0
	bl sub_0201CA74
	add sp, #0x50
	pop {r4, pc}
	; .align 2, 0
_02247864: .word 0x020F983C
	thumb_func_end ov95_022477B8

	thumb_func_start ov95_02247868
ov95_02247868: ; 0x02247868
	mov r1, #0
	str r1, [r0, #0x64]
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x84
	strh r1, [r2]
	mov r2, #0x84
	ldrsh r3, [r0, r2]
	add r2, r0, #0
	add r2, #0x82
	strh r3, [r2]
	mov r2, #0x82
	ldrsh r3, [r0, r2]
	add r2, r0, #0
	add r2, #0x80
	strh r3, [r2]
	mov r2, #1
	lsl r2, r2, #0xc
	str r2, [r0, #0x7c]
	str r2, [r0, #0x78]
	str r2, [r0, #0x74]
	str r1, [r0, #0x70]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02247868

	thumb_func_start ov95_0224789C
ov95_0224789C: ; 0x0224789C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022478B0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x64]
_022478B0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224789C

	thumb_func_start ov95_022478B4
ov95_022478B4: ; 0x022478B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #0x18]
	add r6, r1, #0
	mov r0, #0x8c
	mul r6, r0
	add r7, r2, #0
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r1, r3, #0
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x3a
	add r5, r4, r6
	bl sub_02006FE8
	str r0, [r4, r6]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_02006B58
	add r1, r0, #0
	ldr r0, [r4, r6]
	bl sub_020C2C54
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _02247950
	bl sub_020B3C0C
	str r0, [r5, #0x58]
	cmp r0, #0
	beq _02247918
	add r2, r0, #0
	add r2, #8
	beq _0224790C
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0224790C
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0224790E
_0224790C:
	mov r1, #0
_0224790E:
	cmp r1, #0
	beq _02247918
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0224791A
_02247918:
	mov r0, #0
_0224791A:
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0]
	bl sub_020B3C1C
	str r0, [r5, #0x60]
	bl sub_0201CBCC
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x60]
	bl sub_0201CBB0
	ldr r1, [r5, #0x5c]
	add r0, r5, #4
	bl sub_020AE608
	ldr r0, [sp, #0x20]
	mov r1, #0x1f
	str r0, [r5, #0x68]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x6c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x70]
	add r0, r5, #0
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #0x64]
_02247950:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_022478B4

	thumb_func_start ov95_02247958
ov95_02247958: ; 0x02247958
	add r2, r0, #0
	add r2, #0x68
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end ov95_02247958

	thumb_func_start ov95_02247968
ov95_02247968: ; 0x02247968
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov95_02247968

	thumb_func_start ov95_02247978
ov95_02247978: ; 0x02247978
	add r2, r0, #0
	add r2, #0x80
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x82
	ldrh r2, [r2]
	add r0, #0x84
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end ov95_02247978

	thumb_func_start ov95_02247990
ov95_02247990: ; 0x02247990
	ldrh r3, [r1]
	add r2, r0, #0
	add r2, #0x80
	strh r3, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #2]
	add r2, #0x82
	add r0, #0x84
	strh r3, [r2]
	ldrh r1, [r1, #4]
	strh r1, [r0]
	bx lr
	thumb_func_end ov95_02247990

	thumb_func_start ov95_022479A8
ov95_022479A8: ; 0x022479A8
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end ov95_022479A8

	thumb_func_start ov95_022479AC
ov95_022479AC: ; 0x022479AC
	push {r3, lr}
	add r2, r0, #0
	add r2, #0x88
	str r1, [r2, #0]
	cmp r1, #0x1f
	ldr r0, [r0, #0x5c]
	beq _022479C6
	mov r2, #0x1f
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	pop {r3, pc}
_022479C6:
	mov r2, #0x1f
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_022479AC

	thumb_func_start ov95_022479D4
ov95_022479D4: ; 0x022479D4
	str r1, [r0, #0x74]
	str r1, [r0, #0x78]
	str r1, [r0, #0x7c]
	bx lr
	thumb_func_end ov95_022479D4

	thumb_func_start ov95_022479DC
ov95_022479DC: ; 0x022479DC
	push {r3, r4, lr}
	sub sp, #0x4c
	add r4, r0, #0
	add r0, sp, #0x28
	bl sub_020BB4C8
	add r0, r4, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5AC
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5C8
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	add r0, r4, #0
	add r0, #0x84
	ldrh r0, [r0]
	ldr r3, _02247A8C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #4
	bl sub_020BB5E4
	add r1, sp, #0x28
	add r0, sp, #4
	add r2, r1, #0
	bl sub_020BB8EC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020203EC
	add r1, r4, #0
	ldr r0, [r4, #0x5c]
	add r4, #0x74
	add r1, #0x68
	add r2, sp, #0x28
	add r3, r4, #0
	bl sub_0201CED8
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add r0, r4, #0
	add sp, #0x4c
	pop {r3, r4, pc}
	; .align 2, 0
_02247A8C: .word 0x020F983C
	thumb_func_end ov95_022479DC

	thumb_func_start ov95_02247A90
ov95_02247A90: ; 0x02247A90
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r0, #0
	add r4, r1, #0
	ldr r1, [r2, #0]
	add r0, sp, #0
	bl sub_02020ABC
	add r2, sp, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247A90

	thumb_func_start ov95_02247AB0
ov95_02247AB0: ; 0x02247AB0
	ldr r3, _02247ABC ; =sub_020209D4
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ABC: .word sub_020209D4
	thumb_func_end ov95_02247AB0

	thumb_func_start ov95_02247AC0
ov95_02247AC0: ; 0x02247AC0
	ldr r3, _02247ACC ; =sub_020209F8
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ACC: .word sub_020209F8
	thumb_func_end ov95_02247AC0

	thumb_func_start ov95_02247AD0
ov95_02247AD0: ; 0x02247AD0
	ldr r3, _02247ADC ; =sub_02020854
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247ADC: .word sub_02020854
	thumb_func_end ov95_02247AD0

	thumb_func_start ov95_02247AE0
ov95_02247AE0: ; 0x02247AE0
	ldr r3, _02247AEC ; =sub_02020910
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0]
	bx r3
	nop
_02247AEC: .word sub_02020910
	thumb_func_end ov95_02247AE0

	thumb_func_start ov95_02247AF0
ov95_02247AF0: ; 0x02247AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x3a
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020203AC
	str r0, [r5, #0]
	str r4, [r5, #4]
	str r6, [r5, #8]
	mov r1, #0x4b
	add r2, r5, #0
	str r7, [r5, #0xc]
	mov r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	strh r0, [r5, #0x14]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, _02247B58 ; =0x00000FA4
	str r0, [sp, #8]
	add r0, r5, #4
	lsl r1, r1, #0xe
	add r2, #0x10
	bl sub_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0]
	add r0, sp, #0xc
	bl sub_02020680
	ldr r0, [r5, #0]
	bl sub_020203D4
	mov r1, #0xfa
	ldr r2, [r5, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247B58: .word 0x00000FA4
	thumb_func_end ov95_02247AF0

	thumb_func_start ov95_02247B5C
ov95_02247B5C: ; 0x02247B5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020203E0
	ldr r0, [r4, #0]
	bl sub_020203B8
	pop {r4, pc}
	thumb_func_end ov95_02247B5C

	thumb_func_start ov95_02247B6C
ov95_02247B6C: ; 0x02247B6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	beq _02247BC2
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x54]
	mov r0, #0x3a
	bl sub_0200762C
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #0
	str r0, [r4, #0x78]
	str r0, [r4, #0x7c]
	mov r0, #0x93
	mov r1, #0x3a
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
_02247BC2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02247B6C

	thumb_func_start ov95_02247BC8
ov95_02247BC8: ; 0x02247BC8
	push {r4, lr}
	add r4, r0, #0
	beq _02247C30
	bl ov95_022483C4
	add r0, r4, #0
	bl ov95_02248490
	add r0, r4, #0
	bl ov95_02248340
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl ov95_0224773C
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x54]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02247C24
	bl sub_02007DC8
_02247C24:
	ldr r0, [r4, #0xc]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_020181C4
_02247C30:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247BC8

	thumb_func_start ov95_02247C34
ov95_02247C34: ; 0x02247C34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #4
	bhs _02247C62
	lsl r3, r2, #2
	ldr r2, _02247C68 ; =0x0224BF04
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02247C58
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_02247C58:
	add r0, r5, #0
	bl ov95_02247C6C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02247C62:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02247C68: .word 0x0224BF04
	thumb_func_end ov95_02247C34

	thumb_func_start ov95_02247C6C
ov95_02247C6C: ; 0x02247C6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_020BFAB8
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020B2628
	bl sub_020A73C0
	ldr r0, [r4, #0xc]
	bl sub_02008A94
	ldr r0, [r4, #0xc]
	bl sub_02007768
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl sub_020B275C
	ldr r0, [r4, #0x70]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247C6C

	thumb_func_start ov95_02247CB4
ov95_02247CB4: ; 0x02247CB4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _02247EB0 ; =0x0224BF5C
	bl sub_0201FE94
	ldr r2, _02247EB4 ; =0x04000304
	ldr r0, _02247EB8 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _02247EBC ; =0x0224BF14
	bl sub_02018368
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC0 ; =0x0224BF24
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC4 ; =0x0224BF40
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC4 ; =0x0224BF40
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r2, _02247EC8 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	mov r1, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x54]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #0]
	bl ov95_02247674
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	ldr r0, [r4, #0x54]
	mov r1, #1
	mov r2, #0x6d
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	add r1, r4, #0
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x54]
	add r1, #0x58
	mov r3, #2
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0x20
	str r3, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0xe
	mov r1, #7
	mov r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x16
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x15
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x17
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x16
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x15
	mov r3, #6
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x17
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov95_02248174
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x70]
	add r0, r4, #0
	bl ov95_02248240
	str r0, [r4, #0x10]
	mov r1, #0
	mov r0, #0x6a
	str r1, [sp]
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	ldr r0, _02247ECC ; =0x00073800
	mov r2, #0x5d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x70]
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r2, _02247ED0 ; =0x0224BEFC
	str r0, [r4, #0x74]
	ldrh r3, [r2]
	add r0, sp, #0x14
	add r1, sp, #0x14
	strh r3, [r0]
	ldrh r3, [r2, #2]
	ldrh r2, [r2, #4]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, [r4, #0x74]
	bl ov95_02247990
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	bl ov95_0224829C
	ldr r0, _02247ED4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl sub_02039734
	mov r0, #1
	mov r1, #0x39
	bl sub_020397C8
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_02247EB0: .word 0x0224BF5C
_02247EB4: .word 0x04000304
_02247EB8: .word 0xFFFF7FFF
_02247EBC: .word 0x0224BF14
_02247EC0: .word 0x0224BF24
_02247EC4: .word 0x0224BF40
_02247EC8: .word 0x04000008
_02247ECC: .word 0x00073800
_02247ED0: .word 0x0224BEFC
_02247ED4: .word 0x04000050
	thumb_func_end ov95_02247CB4

	thumb_func_start ov95_02247ED8
ov95_02247ED8: ; 0x02247ED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02247EFE
	bl sub_0200F2AC
	cmp r0, #0
	beq _02247EFE
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_02247EFE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247ED8

	thumb_func_start ov95_02247F04
ov95_02247F04: ; 0x02247F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02247F3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247F1E: ; jump table
	.short _02247F28 - _02247F1E - 2 ; case 0
	.short _02247F34 - _02247F1E - 2 ; case 1
	.short _02247FA8 - _02247F1E - 2 ; case 2
	.short _02248058 - _02247F1E - 2 ; case 3
	.short _02248078 - _02247F1E - 2 ; case 4
_02247F28:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02247F34:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _02247F40
_02247F3E:
	b _02248088
_02247F40:
	ldr r0, [r4, #0]
	bl ov95_02247630
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247680
	cmp r0, #1
	bne _02247F60
	mov r1, #0
	mov r6, #2
	b _02247F64
_02247F60:
	mov r1, #4
	mov r6, #3
_02247F64:
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	bl sub_0200B1B8
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0x6d
	mov r2, #2
	bl sub_0200E010
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A954
	mov r0, #0
	str r0, [r4, #8]
	str r6, [r5, #0]
	b _02248088
_02247FA8:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02248088
	ldr r0, [r4, #0]
	bl ov95_02247630
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r2, [r4, #0x68]
	add r0, r6, #0
	mov r1, #1
	bl sub_0200B1B8
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0]
	bl ov95_02247634
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02248024
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #0]
	bl ov95_0224764C
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, sp, #0x10
	mov r3, #1
	bl sub_02078A4C
	ldr r0, [r4, #0]
	bl ov95_0224764C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247654
	add r2, r0, #0
	add r1, sp, #0x10
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0200590C
_02248024:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201ACCC
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02248058:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02248088
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02248078:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x14
	ble _02248088
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248088:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_02247F04

	thumb_func_start ov95_02248090
ov95_02248090: ; 0x02248090
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #4
	bhi _0224816A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022480AA: ; jump table
	.short _022480B4 - _022480AA - 2 ; case 0
	.short _022480CE - _022480AA - 2 ; case 1
	.short _022480F4 - _022480AA - 2 ; case 2
	.short _02248120 - _022480AA - 2 ; case 3
	.short _02248152 - _022480AA - 2 ; case 4
_022480B4:
	ldr r0, _02248170 ; =0x000006A8
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl ov95_02248364
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_022480CE:
	bl ov95_022483B4
	cmp r0, #0
	beq _0224816A
	ldr r0, [r5, #0x10]
	bl sub_02007DC8
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_022480F4:
	ldr r0, [r5, #0x40]
	bl sub_02021FD0
	cmp r0, #0
	bne _0224816A
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl ov95_022479A8
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0
	add r3, r1, #0
	bl ov95_02248364
	add r0, r5, #0
	bl ov95_02248420
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_02248120:
	bl ov95_0224847C
	cmp r0, #2
	bge _02248132
	add r0, r5, #0
	bl ov95_0224846C
	cmp r0, #1
	bne _0224816A
_02248132:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_02248152:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224816A
	add r0, r5, #0
	bl ov95_0224846C
	cmp r0, #0
	beq _0224816A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224816A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02248170: .word 0x000006A8
	thumb_func_end ov95_02248090

	thumb_func_start ov95_02248174
ov95_02248174: ; 0x02248174
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0224821C ; =0x04000060
	ldr r2, _02248220 ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _02248224 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _02248228 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224822C ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	ldr r3, _02248230 ; =0x02100DEC
	mov r0, #1
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _02248234 ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _02248238 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _0224823C ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224821C: .word 0x04000060
_02248220: .word 0xFFFFCFFD
_02248224: .word 0x0000CFFB
_02248228: .word 0x04000540
_0224822C: .word 0xBFFF0000
_02248230: .word 0x02100DEC
_02248234: .word 0x02100DF4
_02248238: .word 0x7FFF0000
_0224823C: .word 0xFFFF0000
	thumb_func_end ov95_02248174

	thumb_func_start ov95_02248240
ov95_02248240: ; 0x02248240
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov95_02247634
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	ldr r0, [r5, #0]
	bl ov95_0224764C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x80
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x14
	mov r3, #1
	bl sub_020789BC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_020765C4
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl sub_02007C34
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_02248240

	thumb_func_start ov95_0224829C
ov95_0224829C: ; 0x0224829C
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x44
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl sub_020A81D0
	add r0, sp, #0x38
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #9
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x44
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov95_022475C4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x64
	bl ov95_022475E4
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x5a
	bl ov95_022475E4
	str r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	thumb_func_end ov95_0224829C

	thumb_func_start ov95_02248340
ov95_02248340: ; 0x02248340
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02248348:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _02248352
	bl sub_02021BD4
_02248352:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02248348
	add r6, #0x44
	add r0, r6, #0
	bl ov95_022475A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_02248340

	thumb_func_start ov95_02248364
ov95_02248364: ; 0x02248364
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x14
	str r2, [sp]
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _022483AA
	str r5, [r4, #0]
	lsl r0, r6, #0xc
	str r0, [r4, #4]
	ldr r0, [sp]
	lsl r1, r0, #0xc
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r1, r7, #0
	bl sub_020E1F6C
	str r0, [r4, #0xc]
	ldr r0, _022483AC ; =ov95_022483E4
	str r7, [r4, #0x10]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0x78]
	ldr r0, _022483B0 ; =0x04000050
	mov r1, #1
	add r2, r6, #0
	bl sub_020BF578
_022483AA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022483AC: .word ov95_022483E4
_022483B0: .word 0x04000050
	thumb_func_end ov95_02248364

	thumb_func_start ov95_022483B4
ov95_022483B4: ; 0x022483B4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bne _022483BE
	mov r0, #1
	bx lr
_022483BE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_022483B4

	thumb_func_start ov95_022483C4
ov95_022483C4: ; 0x022483C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _022483E0
	bl sub_0201CED0
	bl ov95_022476C8
	ldr r0, [r4, #0x78]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x78]
_022483E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022483C4

	thumb_func_start ov95_022483E4
ov95_022483E4: ; 0x022483E4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _02248406
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, _0224841C ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_020BF578
	pop {r4, pc}
_02248406:
	ldr r2, [r4, #8]
	ldr r0, _0224841C ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_020BF578
	ldr r0, [r4, #0]
	bl ov95_022483C4
	pop {r4, pc}
	nop
_0224841C: .word 0x04000050
	thumb_func_end ov95_022483E4

	thumb_func_start ov95_02248420
ov95_02248420: ; 0x02248420
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	beq _02248460
	str r5, [r4, #0]
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	str r0, [r4, #4]
	add r1, #8
	bl ov95_02247958
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x14
	bl ov95_02247978
	ldr r0, _02248464 ; =0x00002F60
	mov r2, #0
	str r0, [r4, #0x1c]
	str r2, [r4, #0x20]
	strh r2, [r4, #0x2c]
	str r2, [r4, #0x24]
	ldr r0, _02248468 ; =ov95_022484B0
	add r1, r4, #0
	str r2, [r4, #0x28]
	bl sub_0200D9E8
	str r0, [r5, #0x7c]
_02248460:
	pop {r3, r4, r5, pc}
	nop
_02248464: .word 0x00002F60
_02248468: .word ov95_022484B0
	thumb_func_end ov95_02248420

	thumb_func_start ov95_0224846C
ov95_0224846C: ; 0x0224846C
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	bne _02248476
	mov r0, #1
	bx lr
_02248476:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224846C

	thumb_func_start ov95_0224847C
ov95_0224847C: ; 0x0224847C
	push {r3, lr}
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	beq _0224848C
	bl sub_0201CED0
	ldr r0, [r0, #0x20]
	pop {r3, pc}
_0224848C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov95_0224847C

	thumb_func_start ov95_02248490
ov95_02248490: ; 0x02248490
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022484AC
	bl sub_0201CED0
	bl sub_020181C4
	ldr r0, [r4, #0x7c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x7c]
_022484AC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02248490

	thumb_func_start ov95_022484B0
ov95_022484B0: ; 0x022484B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02248524
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	blt _022484D2
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	b _02248524
_022484D2:
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	ldr r0, _02248588 ; =0xFFFFC000
	cmp r1, r0
	bgt _02248524
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	mov r0, #0x2c
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	neg r1, r0
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r4, #0x1c]
	cmp r1, r0
	bge _02248500
	mov r0, #1
	str r0, [r4, #0x24]
_02248500:
	ldr r0, _0224858C ; =0x000005E6
	bl sub_02005748
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	cmp r0, #1
	beq _02248516
	cmp r0, #3
	beq _0224851C
	b _02248524
_02248516:
	mov r0, #0xb0
	strh r0, [r4, #0x2c]
	b _02248524
_0224851C:
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, #0x50
	strh r0, [r4, #0x2c]
_02248524:
	mov r0, #0x14
	mov r2, #0x2c
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	add r1, r4, #0
	add r1, #0x14
	add r0, r3, r0
	strh r0, [r4, #0x14]
	mov r0, #0x18
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	sub r0, r3, r0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	bl ov95_02247990
	mov r2, #0x2c
	ldrsh r3, [r4, r2]
	ldr r5, [r4, #8]
	add r1, r4, #0
	lsl r0, r3, #2
	add r0, r3, r0
	add r0, r5, r0
	str r0, [r4, #8]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r1, #8
	lsl r0, r2, #2
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl ov95_02247968
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02248586
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r0, #0xe
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0x1e
	ble _02248586
	ldr r0, [r4, #0]
	bl ov95_02248490
_02248586:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248588: .word 0xFFFFC000
_0224858C: .word 0x000005E6
	thumb_func_end ov95_022484B0

	thumb_func_start ov95_02248590
ov95_02248590: ; 0x02248590
	push {r3, r4, r5, lr}
	mov r1, #0x5b
	add r5, r0, #0
	mov r0, #0x3a
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	beq _022485F2
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0, #0]
	mov r0, #0x16
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xd0
	str r2, [r0, #0]
	mov r0, #0x5a
	lsl r0, r0, #2
	str r2, [r4, r0]
	ldr r0, _022485F8 ; =ov95_02248E00
	add r1, r4, #0
	bl sub_0200DA3C
_022485F2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022485F8: .word ov95_02248E00
	thumb_func_end ov95_02248590

	thumb_func_start ov95_022485FC
ov95_022485FC: ; 0x022485FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020C3D98
	add r4, r0, #0
	cmp r5, #0
	beq _02248648
	add r0, r5, #0
	bl ov95_02248B3C
	add r0, r5, #0
	bl ov95_02248C98
	add r0, r5, #0
	bl ov95_02248DC4
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224862A
	bl sub_0200DA58
_0224862A:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02248638
	bl ov95_022490A4
_02248638:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0201D318
	add r0, r5, #0
	bl sub_020181C4
_02248648:
	add r0, r4, #0
	bl sub_020C3DAC
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_022485FC

	thumb_func_start ov95_02248650
ov95_02248650: ; 0x02248650
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #4
	bhs _0224867E
	lsl r3, r2, #2
	ldr r2, _02248684 ; =0x0224BF9C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02248674
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_02248674:
	add r0, r5, #0
	bl ov95_02248688
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224867E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02248684: .word 0x0224BF9C
	thumb_func_end ov95_02248650

	thumb_func_start ov95_02248688
ov95_02248688: ; 0x02248688
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022486A8
	bl sub_020BFAB8
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_022486A8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02248688

	thumb_func_start ov95_022486AC
ov95_022486AC: ; 0x022486AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_022488A4
	add r0, r4, #0
	bl ov95_02248B84
	add r0, r4, #0
	bl ov95_02248CA8
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022486AC

	thumb_func_start ov95_022486E0
ov95_022486E0: ; 0x022486E0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _022486F0
	cmp r1, #1
	beq _02248706
	b _0224871E
_022486F0:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224871E
	ldr r0, _02248724 ; =0x0224C364
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224871E
_02248706:
	ldr r1, _02248724 ; =0x0224C364
	ldr r2, [r1, #0]
	cmp r2, #0x1e
	bge _02248712
	add r2, r2, #1
	str r2, [r1, #0]
_02248712:
	add r0, #0xd0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224871E
	mov r0, #1
	pop {r4, pc}
_0224871E:
	mov r0, #0
	pop {r4, pc}
	nop
_02248724: .word 0x0224C364
	thumb_func_end ov95_022486E0

	thumb_func_start ov95_02248728
ov95_02248728: ; 0x02248728
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #4
	bhi _022487CE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248740: ; jump table
	.short _0224874A - _02248740 - 2 ; case 0
	.short _02248756 - _02248740 - 2 ; case 1
	.short _0224879A - _02248740 - 2 ; case 2
	.short _022487B0 - _02248740 - 2 ; case 3
	.short _022487C6 - _02248740 - 2 ; case 4
_0224874A:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022487CE
_02248756:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	ble _022487CE
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0x18
	bl ov95_022490D0
	add r0, r4, #0
	bl ov95_02249154
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov95_022479AC
	add r4, #0xd8
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov95_022479A8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022487CE
_0224879A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov95_02249500
	cmp r0, #0
	beq _022487CE
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022487CE
_022487B0:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov95_022494F4
	cmp r0, #0
	beq _022487CE
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022487CE
_022487C6:
	bl ov95_02248DF4
	mov r0, #1
	pop {r3, r4, r5, pc}
_022487CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02248728

	thumb_func_start ov95_022487D4
ov95_022487D4: ; 0x022487D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224889A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022487EE: ; jump table
	.short _022487F8 - _022487EE - 2 ; case 0
	.short _0224880E - _022487EE - 2 ; case 1
	.short _0224882C - _022487EE - 2 ; case 2
	.short _02248848 - _022487EE - 2 ; case 3
	.short _0224888C - _022487EE - 2 ; case 4
_022487F8:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov95_0224950C
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224889A
_0224880E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #2
	ble _0224889A
	mov r0, #0
	str r0, [r4, #8]
	add r4, #0xc4
	ldr r0, [r4, #0]
	bl ov95_02247004
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224889A
_0224882C:
	add r1, r4, #0
	add r1, #0xc8
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0224889A
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov95_02248FAC
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224889A
_02248848:
	ldr r0, [r4, #8]
	cmp r0, #0x28
	bge _0224885E
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x28
	bne _0224885E
	mov r0, #0x6b
	lsl r0, r0, #4
	bl sub_02005748
_0224885E:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov95_022494F4
	cmp r0, #0
	beq _0224889A
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _022488A0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224889A
_0224888C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224889A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224889A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022488A0: .word 0x00007FFF
	thumb_func_end ov95_022487D4

	thumb_func_start ov95_022488A4
ov95_022488A4: ; 0x022488A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02248B20 ; =0x0224BFF4
	bl sub_0201FE94
	ldr r2, _02248B24 ; =0x04000304
	ldr r0, _02248B28 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _02248B2C ; =0x0224BF8C
	bl sub_02018368
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r2, _02248B30 ; =0x0224BFBC
	mov r1, #2
	mov r3, #1
	bl sub_020183C4
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r2, _02248B30 ; =0x0224BFBC
	mov r1, #6
	mov r3, #1
	bl sub_020183C4
	bl sub_020C3D98
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r2, _02248B34 ; =0x0224BFD8
	mov r1, #3
	mov r3, #2
	bl sub_020183C4
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	ldr r2, _02248B34 ; =0x0224BFD8
	mov r1, #7
	mov r3, #2
	bl sub_020183C4
	add r0, r5, #0
	bl sub_020C3DAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	mov r1, #2
	ldr r2, [r2, #0]
	mov r0, #0x5d
	add r3, r1, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r1, #2
	mov r3, #6
	bl sub_02006E3C
	mov r1, #0
	str r1, [sp]
	add r2, r4, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r3, #2
	bl sub_02006E60
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r3, #6
	bl sub_02006E60
	ldr r0, [r4, #0]
	bl ov95_02247644
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, _02248B38 ; =0x0224BF84
	lsl r1, r5, #1
	ldrh r5, [r0, r1]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2, #0]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #7
	bl sub_02006E60
	mov r0, #0x3a
	mov r1, #0x60
	bl sub_02018144
	add r5, r0, #0
	beq _02248AAA
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x60
	bl sub_020C4B4C
	add r0, r5, #0
	mov r1, #0x60
	bl sub_020C2C54
	bl sub_020C096C
	bl sub_020C0BBC
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0A0C
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0BD4
	bl sub_020C0A7C
	bl sub_020C0C38
	add r0, r5, #0
	bl sub_020181C4
_02248AAA:
	add r0, r4, #0
	add r0, #0xc0
	mov r3, #0xff
	ldr r0, [r0, #0]
	mov r1, #6
	mov r2, #3
	mvn r3, r3
	bl sub_02019184
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #3
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #1
	bl ov95_02246F30
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #0x12
	mov r2, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	lsl r2, r2, #0xc
	mov r3, #1
	bl ov95_022472C4
	add r4, #0xcc
	str r0, [r4, #0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248B20: .word 0x0224BFF4
_02248B24: .word 0x04000304
_02248B28: .word 0xFFFF7FFF
_02248B2C: .word 0x0224BF8C
_02248B30: .word 0x0224BFBC
_02248B34: .word 0x0224BFD8
_02248B38: .word 0x0224BF84
	thumb_func_end ov95_022488A4

	thumb_func_start ov95_02248B3C
ov95_02248B3C: ; 0x02248B3C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248B52
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl ov95_02247018
_02248B52:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02019044
	add r4, #0xc0
	ldr r0, [r4, #0]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02248B3C

	thumb_func_start ov95_02248B84
ov95_02248B84: ; 0x02248B84
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _02248C64 ; =0x04000060
	ldr r1, _02248C68 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02248C6C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _02248C70 ; =0x0224BFAC
	bl sub_020BFD2C
	mov r1, #0
	ldr r0, _02248C74 ; =0x000043FF
	ldr r2, _02248C78 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _02248C7C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _02248C80 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _02248C84 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r1, #0
	ldr r0, _02248C88 ; =0xFFFC8800
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	ldr r1, _02248C8C ; =0x0000EBE0
	ldr r0, _02248C90 ; =0x0224C364
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r1, _02248C94 ; =0x0224C368
	bl ov95_02247AB0
	add r4, #0xd8
	mov r1, #7
	ldr r0, [r4, #0]
	lsl r1, r1, #0xa
	bl ov95_022479D4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02248C64: .word 0x04000060
_02248C68: .word 0xFFFFCFFD
_02248C6C: .word 0x0000CFFB
_02248C70: .word 0x0224BFAC
_02248C74: .word 0x000043FF
_02248C78: .word 0x00007FFF
_02248C7C: .word 0x04000540
_02248C80: .word 0xBFFF0000
_02248C84: .word 0x04000008
_02248C88: .word 0xFFFC8800
_02248C8C: .word 0x0000EBE0
_02248C90: .word 0x0224C364
_02248C94: .word 0x0224C368
	thumb_func_end ov95_02248B84

	thumb_func_start ov95_02248C98
ov95_02248C98: ; 0x02248C98
	push {r3, lr}
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248CA6
	bl ov95_0224773C
_02248CA6:
	pop {r3, pc}
	thumb_func_end ov95_02248C98

	thumb_func_start ov95_02248CA8
ov95_02248CA8: ; 0x02248CA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r7, r0, #0
	add r0, #0xc
	mov r1, #0x5d
	mov r2, #0xb
	mov r3, #0xc
	bl ov95_02247568
	add r0, sp, #0x60
	bl sub_020A81D0
	add r0, sp, #0x3c
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #0xd
	bl sub_02006F00
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #0xd
	mov r2, #1
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x60
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x60
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xe
	mov r2, #2
	mov r3, #0
	bl sub_02006EE0
	mov r0, #1
	add r1, r7, #0
	str r0, [sp]
	add r0, sp, #0x18
	add r1, #0xc
	add r2, sp, #0x3c
	add r3, sp, #0x60
	bl ov95_022475C4
	ldr r0, _02248DC0 ; =0x035947D1
	bl sub_0201D318
	mov r0, #0
	str r0, [sp, #0x14]
	add r4, r7, #0
_02248D42:
	bl sub_0201D35C
	mov r1, #0xe8
	bl sub_020E2178
	add r6, r1, #0
	add r6, #0xc
	bl sub_0201D35C
	mov r1, #0x71
	lsl r1, r1, #2
	bl sub_020E2178
	add r5, r1, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	sub r5, #0x1c
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r1, sp, #0x18
	add r2, r6, #0
	add r3, r5, #0
	bl ov95_022475E4
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, #0x38
	ldr r0, [r7, #0]
	add r1, sp, #0x18
	add r2, r6, #0
	add r3, r5, #0
	bl ov95_022475E4
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x14
	blt _02248D42
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_02248DC0: .word 0x035947D1
	thumb_func_end ov95_02248CA8

	thumb_func_start ov95_02248DC4
ov95_02248DC4: ; 0x02248DC4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02248DCC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02248DD6
	bl sub_02021BD4
_02248DD6:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02248DE0
	bl sub_02021BD4
_02248DE0:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x14
	blt _02248DCC
	add r6, #0xc
	add r0, r6, #0
	bl ov95_022475A0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02248DC4

	thumb_func_start ov95_02248DF4
ov95_02248DF4: ; 0x02248DF4
	mov r1, #0x5a
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02248DF4

	thumb_func_start ov95_02248E00
ov95_02248E00: ; 0x02248E00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5a
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02248E54
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xc0
	mov r3, #0xff
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #3
	mvn r3, r3
	bl sub_02019184
	add r4, #0xc0
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	ldr r2, _02248E58 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl sub_0200DA58
_02248E54:
	pop {r3, r4, r5, pc}
	nop
_02248E58: .word 0x04000304
	thumb_func_end ov95_02248E00

	thumb_func_start ov95_02248E5C
ov95_02248E5C: ; 0x02248E5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r5, [r2, #4]
	add r0, r2, #0
	str r1, [r0, #0]
	mov r1, #0x52
	mov r7, #0
	lsl r1, r1, #2
	str r7, [r0, r1]
	add r1, r1, #4
	str r2, [sp]
	str r7, [r0, r1]
	add r4, r2, #0
	add r6, r2, #0
_02248E78:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0x1c]
	bl sub_02021D28
	add r2, r6, #0
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r7, r7, #1
	str r0, [r2, #0]
	add r4, r4, #4
	add r5, #8
	add r6, #0xc
	cmp r7, #0x14
	blt _02248E78
	ldr r0, _02248EC0 ; =ov95_02248EC4
	ldr r1, [sp]
	mov r2, #0
	bl sub_0200D9E8
	ldr r1, [sp]
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02248EBC
	ldr r0, [sp]
	bl sub_020181C4
_02248EBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248EC0: .word ov95_02248EC4
	thumb_func_end ov95_02248E5C

	thumb_func_start ov95_02248EC4
ov95_02248EC4: ; 0x02248EC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0xc
	ble _02248EF8
	mov r0, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0x14
	bge _02248EF8
	lsl r0, r0, #2
	mov r2, #1
	add r0, r5, r0
	str r2, [r0, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
_02248EF8:
	mov r0, #0
	add r7, r5, #0
	str r0, [sp, #4]
	add r6, r5, #0
	str r5, [sp]
	add r4, r0, #0
	add r7, #0x58
_02248F06:
	mov r1, #0x21
	ldr r2, [r6, #0x5c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0x6a
	add r0, r6, #0
	lsl r1, r1, #0xe
	add r0, #0x5c
	str r2, [r6, #0x5c]
	cmp r2, r1
	blt _02248F46
	mov r1, #0x71
	ldr r2, [r0, #0]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	str r1, [r0, #0]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02248F46
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl sub_02021CAC
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl sub_02021CAC
_02248F46:
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl sub_02021C50
	add r2, r6, #0
	add r2, #0x58
	add r3, sp, #8
	ldmia r2!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #0xe
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, ip
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl sub_02021C50
	ldr r0, [sp]
	add r6, #0xc
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r7, #0xc
	str r0, [sp, #4]
	cmp r0, #0x14
	blt _02248F06
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_02248EC4

	thumb_func_start ov95_02248F94
ov95_02248F94: ; 0x02248F94
	push {r4, lr}
	add r4, r0, #0
	beq _02248FAA
	bl sub_0201CED0
	ldr r0, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_0200DA58
_02248FAA:
	pop {r4, pc}
	thumb_func_end ov95_02248F94

	thumb_func_start ov95_02248FAC
ov95_02248FAC: ; 0x02248FAC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x17
	add r6, r0, #0
	mov r0, #0x3a
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	beq _02249018
	str r6, [r4, #0]
	add r6, #0xc0
	mov r0, #0x55
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_020192F8
	lsl r1, r0, #0xc
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl sub_020192F8
	mov r1, #0x57
	lsl r0, r0, #0xc
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	str r5, [r4, r0]
	add r1, #0x10
	str r2, [r4, r1]
	ldr r0, _0224901C ; =ov95_02249020
	add r1, r4, #0
	bl sub_0200DA04
	str r0, [r5, #0]
	cmp r0, #0
	bne _02249018
	add r0, r4, #0
	bl sub_020181C4
_02249018:
	pop {r4, r5, r6, pc}
	nop
_0224901C: .word ov95_02249020
	thumb_func_end ov95_02248FAC

	thumb_func_start ov95_02249020
ov95_02249020: ; 0x02249020
	push {r4, r5, r6, lr}
	mov r3, #0x59
	add r4, r1, #0
	lsl r3, r3, #2
	mov r0, #2
	ldr r1, [r4, r3]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _022490A2
	sub r0, r3, #4
	ldr r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x44
	add r1, r1, r0
	sub r0, r3, #4
	str r1, [r4, r0]
	add r5, r3, #0
	ldr r1, [r4, r3]
	ldr r0, [r4, r0]
	sub r5, #0xc
	add r0, r1, r0
	str r0, [r4, r3]
	add r0, r3, #0
	sub r0, #0x10
	ldr r5, [r4, r5]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	sub r3, r5, r3
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r5, #0x55
	lsl r5, r5, #2
	add r3, r5, #0
	ldr r0, [r4, r5]
	add r3, #8
	add r5, #0x10
	ldr r6, [r4, r3]
	ldr r3, [r4, r5]
	mov r1, #6
	sub r3, r6, r3
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r1, #0x59
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x12
	cmp r2, r0
	blt _022490A2
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022490A2
	add r1, #8
	ldr r0, [r4, #0]
	add r1, r4, r1
	add r2, r4, #4
	bl ov95_02248E5C
_022490A2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_02249020

	thumb_func_start ov95_022490A4
ov95_022490A4: ; 0x022490A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _022490CE
	bl sub_0201CED0
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0
	str r2, [r1, #0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl ov95_02248F94
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022490CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_022490A4

	thumb_func_start ov95_022490D0
ov95_022490D0: ; 0x022490D0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0x3a
	mov r1, #0x14
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02249110
	lsl r0, r5, #0xc
	str r0, [r4, #0]
	lsl r1, r7, #0xc
	str r1, [r4, #8]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	add r1, r5, #0
	str r0, [r4, #0x10]
	bl ov95_022479AC
	ldr r0, _02249114 ; =ov95_02249118
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
_02249110:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249114: .word ov95_02249118
	thumb_func_end ov95_022490D0

	thumb_func_start ov95_02249118
ov95_02249118: ; 0x02249118
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	ble _0224913A
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r1, r1, r0
	str r1, [r4, #0]
	ldr r0, [r4, #0x10]
	asr r1, r1, #0xc
	bl ov95_022479AC
	pop {r3, r4, r5, pc}
_0224913A:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	asr r1, r1, #0xc
	bl ov95_022479AC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02249118

	thumb_func_start ov95_02249154
ov95_02249154: ; 0x02249154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xdc
	add r0, #0xd8
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #8
	bl ov95_02247958
	add r0, r5, #0
	add r0, #0xd8
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x20
	bl ov95_02247978
	add r3, r4, #0
	add r3, #8
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r5, #0xdc
	str r0, [r5, #0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	ldr r0, _02249224 ; =0xFFFF8000
	sub r0, r0, r1
	mov r1, #0x1e
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #1
	mov r1, #0x1e
	add r0, #0x80
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	add r0, r4, #0
	str r1, [r4, #0x44]
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x56
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	str r1, [r4, #0x7c]
	add r2, r4, #0
	add r0, r1, #0
_022491D8:
	add r3, r2, #0
	add r3, #0x5c
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x5e
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x60
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x62
	add r1, r1, #1
	add r2, #8
	strh r0, [r3]
	cmp r1, #3
	blt _022491D8
	mov r1, #0xd
	str r0, [r4, #0x78]
	add r0, r4, #0
	lsl r1, r1, #8
	mov r2, #0x1e
	bl ov95_0224922C
	mov r1, #0x29
	mov r2, #5
	add r0, r4, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xe
	mov r3, #0x1e
	bl ov95_02249268
	ldr r0, _02249228 ; =ov95_02249424
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02249224: .word 0xFFFF8000
_02249228: .word ov95_02249424
	thumb_func_end ov95_02249154

	thumb_func_start ov95_0224922C
ov95_0224922C: ; 0x0224922C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	beq _0224925A
	mov r0, #0x56
	ldrsh r0, [r5, r0]
	add r1, r6, #0
	sub r0, r4, r0
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x5a
	strh r0, [r1]
	mov r0, #0x56
	ldrsh r1, [r5, r0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x56
	strh r1, [r0]
	b _0224925E
_0224925A:
	add r0, #0x56
	strh r4, [r0]
_0224925E:
	add r0, r5, #0
	add r0, #0x58
	strh r4, [r0]
	str r6, [r5, #0x74]
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_0224922C

	thumb_func_start ov95_02249268
ov95_02249268: ; 0x02249268
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	beq _022492A0
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	sub r0, r4, r0
	bl sub_020E1F6C
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x40]
	add r0, r1, r0
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	add r0, r1, r0
	str r0, [r5, #0x3c]
	str r4, [r5, #0x48]
	str r6, [r5, #0x4c]
_022492A0:
	str r7, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov95_02249268

	thumb_func_start ov95_022492A4
ov95_022492A4: ; 0x022492A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	beq _022492CA
	lsl r0, r4, #3
	str r0, [sp]
	add r1, r5, r0
	mov r0, #0x5c
	ldrsh r0, [r1, r0]
	add r1, r7, #0
	sub r0, r6, r0
	bl sub_020E1F6C
	ldr r1, [sp]
	add r1, r5, r1
	add r1, #0x5e
	strh r0, [r1]
_022492CA:
	lsl r1, r4, #3
	add r0, r5, r1
	add r0, #0x60
	strh r6, [r0]
	add r0, r5, r1
	add r0, #0x62
	strh r7, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_022492A4

	thumb_func_start ov95_022492DC
ov95_022492DC: ; 0x022492DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _02249308
	sub r0, r0, #1
	str r0, [r5, #0x74]
	beq _022492FE
	mov r0, #0x56
	ldrsh r1, [r5, r0]
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x56
	strh r1, [r0]
	b _02249308
_022492FE:
	mov r0, #0x58
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x56
	strh r1, [r0]
_02249308:
	mov r0, #0x54
	ldrsh r1, [r5, r0]
	mov r0, #0x56
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x54
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x54
	ldrh r0, [r0]
	mov r1, #0xb6
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _02249330
	sub r4, r4, r0
_02249330:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _02249356
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x40]
	add r0, r1, r0
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	add r0, r1, r0
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x50]
	sub r0, r0, #1
	str r0, [r5, #0x50]
	bne _02249356
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x3c]
_02249356:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x38]
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [r5, #8]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0x14]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x3c]
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r4, #2
	mov r3, #0
	lsl r4, r4, #0xa
	add r4, r0, r4
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	ldr r2, [r5, #0x10]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0x1c]
	mov r0, #0x22
	ldrsh r1, [r5, r0]
	mov r0, #0x56
	ldrsh r0, [r5, r0]
	mov r2, #0x5e
	mov r6, #0x60
	add r0, r1, r0
	strh r0, [r5, #0x22]
	add r0, r5, #0
	mov r1, #0x5c
_022493BE:
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	cmp r4, #0
	beq _022493F6
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	sub r7, r4, #1
	add r4, r0, #0
	add r4, #0x62
	strh r7, [r4]
	add r4, r0, #0
	add r4, #0x62
	ldrh r4, [r4]
	cmp r4, #0
	bne _022493EA
	ldrsh r7, [r0, r6]
	add r4, r0, #0
	add r4, #0x5c
	strh r7, [r4]
	b _022493F6
_022493EA:
	ldrsh r7, [r0, r1]
	ldrsh r4, [r0, r2]
	add r7, r7, r4
	add r4, r0, #0
	add r4, #0x5c
	strh r7, [r4]
_022493F6:
	add r3, r3, #1
	add r0, #8
	cmp r3, #3
	blt _022493BE
	mov r0, #0x20
	ldrsh r1, [r5, r0]
	mov r0, #0x5c
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x20]
	mov r0, #0x22
	ldrsh r1, [r5, r0]
	mov r0, #0x64
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x22]
	mov r0, #0x24
	ldrsh r1, [r5, r0]
	mov r0, #0x6c
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov95_022492DC

	thumb_func_start ov95_02249424
ov95_02249424: ; 0x02249424
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249484
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _02249484
	mov r1, #2
	lsl r1, r1, #8
	str r1, [r4, #0x30]
	mov r0, #0
	lsl r1, r1, #5
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x3c
	bl ov95_02249268
	ldr r2, _022494A0 ; =0xFFFFF800
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x1e
	bl ov95_022492A4
	mov r0, #1
	str r0, [r4, #0x7c]
	ldr r1, _022494A4 ; =ov95_022494A8
	add r0, r5, #0
	bl sub_0201CECC
_02249484:
	add r0, r4, #0
	bl ov95_022492DC
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	ldr r0, [r4, #0]
	add r4, #0x20
	add r1, r4, #0
	bl ov95_02247990
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022494A0: .word 0xFFFFF800
_022494A4: .word ov95_022494A8
	thumb_func_end ov95_02249424

	thumb_func_start ov95_022494A8
ov95_022494A8: ; 0x022494A8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _022494F2
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	add r1, r1, r0
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, r1
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_022492DC
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x20
	bl ov95_02247990
	ldr r0, [r4, #0]
	bl ov95_022479DC
	cmp r0, #0
	bne _022494F2
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #1
	str r0, [r4, #0x78]
_022494F2:
	pop {r4, pc}
	thumb_func_end ov95_022494A8

	thumb_func_start ov95_022494F4
ov95_022494F4: ; 0x022494F4
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #0x78]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_022494F4

	thumb_func_start ov95_02249500
ov95_02249500: ; 0x02249500
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #0x7c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_02249500

	thumb_func_start ov95_0224950C
ov95_0224950C: ; 0x0224950C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x78]
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov95_02247AD0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov95_02247AB0
	ldr r1, _02249594 ; =0x000058CC
	mov r0, #2
	lsl r0, r0, #0x12
	str r1, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x14
	add r0, #0x80
	str r3, [r0, #0]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249268
	mov r2, #0x56
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #1
	neg r2, r2
	mov r3, #0x1e
	bl ov95_022492A4
	mov r1, #2
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xfe
	mov r3, #0x32
	bl ov95_022492A4
	mov r1, #2
	ldr r0, [r4, #0]
	lsl r1, r1, #0xc
	bl ov95_022479D4
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov95_022479A8
	ldr r1, _02249598 ; =ov95_0224959C
	add r0, r5, #0
	bl sub_0201CECC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249594: .word 0x000058CC
_02249598: .word ov95_0224959C
	thumb_func_end ov95_0224950C

	thumb_func_start ov95_0224959C
ov95_0224959C: ; 0x0224959C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_022492DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022495DC
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022495DC
	ldr r1, _022495F4 ; =ov95_022495F8
	add r0, r5, #0
	bl sub_0201CECC
_022495DC:
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	ldr r0, [r4, #0]
	add r4, #0x20
	add r1, r4, #0
	bl ov95_02247990
	pop {r3, r4, r5, pc}
	nop
_022495F4: .word ov95_022495F8
	thumb_func_end ov95_0224959C

	thumb_func_start ov95_022495F8
ov95_022495F8: ; 0x022495F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_022492DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0x6e
	ble _0224963A
	ldr r1, [r4, #0x28]
	ldr r0, _02249650 ; =0xFFFC5800
	sub r0, r0, r1
	mov r1, #0x35
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0x35
	add r0, #0x80
	str r1, [r0, #0]
	ldr r1, _02249654 ; =ov95_02249658
	add r0, r5, #0
	bl sub_0201CECC
_0224963A:
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	ldr r0, [r4, #0]
	add r4, #0x20
	add r1, r4, #0
	bl ov95_02247990
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249650: .word 0xFFFC5800
_02249654: .word ov95_02249658
	thumb_func_end ov95_022495F8

	thumb_func_start ov95_02249658
ov95_02249658: ; 0x02249658
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_022492DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249698
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02249698
	ldr r1, _022496B0 ; =ov95_022496B4
	add r0, r5, #0
	bl sub_0201CECC
_02249698:
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	ldr r0, [r4, #0]
	add r4, #0x20
	add r1, r4, #0
	bl ov95_02247990
	pop {r3, r4, r5, pc}
	nop
_022496B0: .word ov95_022496B4
	thumb_func_end ov95_02249658

	thumb_func_start ov95_022496B4
ov95_022496B4: ; 0x022496B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_022492DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	ble _022496E6
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [r4, #0x2c]
	ldr r1, _022496FC ; =ov95_02249700
	add r0, r5, #0
	bl sub_0201CECC
_022496E6:
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	ldr r0, [r4, #0]
	add r4, #0x20
	add r1, r4, #0
	bl ov95_02247990
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022496FC: .word ov95_02249700
	thumb_func_end ov95_022496B4

	thumb_func_start ov95_02249700
ov95_02249700: ; 0x02249700
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0224973C
	add r0, r4, #0
	bl ov95_022492DC
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x28]
	str r0, [r4, #0x18]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x20
	bl ov95_02247990
	ldr r0, [r4, #0]
	bl ov95_022479DC
	cmp r0, #0
	bne _0224973C
	mov r0, #1
	str r0, [r4, #0x78]
_0224973C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02249700

	thumb_func_start ov95_02249740
ov95_02249740: ; 0x02249740
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0xa4
	bl sub_02018144
	add r4, r0, #0
	beq _0224976A
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x34
	bl ov95_02249C28
_0224976A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02249740

	thumb_func_start ov95_02249770
ov95_02249770: ; 0x02249770
	push {r4, lr}
	add r4, r0, #0
	beq _0224979E
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov95_02249A68
	add r0, r4, #0
	bl ov95_02249B80
	add r0, r4, #0
	bl ov95_02249C10
	add r0, r4, #0
	add r0, #0x34
	bl ov95_02249C30
	add r0, r4, #0
	bl sub_020181C4
_0224979E:
	pop {r4, pc}
	thumb_func_end ov95_02249770

	thumb_func_start ov95_022497A0
ov95_022497A0: ; 0x022497A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _022497CE
	lsl r3, r2, #2
	ldr r2, _022497D4 ; =0x0224C01C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _022497C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_022497C4:
	add r0, r5, #0
	bl ov95_022497D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022497CE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022497D4: .word 0x0224C01C
	thumb_func_end ov95_022497A0

	thumb_func_start ov95_022497D8
ov95_022497D8: ; 0x022497D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022497F4
	bl sub_020BFAB8
	ldr r0, [r4, #0x28]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_022497F4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022497D8

	thumb_func_start ov95_022497F8
ov95_022497F8: ; 0x022497F8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_02249910
	add r0, r4, #0
	bl ov95_02249A80
	add r0, r4, #0
	bl ov95_02249B90
	mov r2, #0
	ldr r0, _02249838 ; =ov95_02249F38
	add r1, r4, #0
	str r2, [r4, #0xc]
	bl sub_0200DA3C
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224983C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02249838: .word ov95_02249F38
_0224983C: .word 0x00007FFF
	thumb_func_end ov95_022497F8

	thumb_func_start ov95_02249840
ov95_02249840: ; 0x02249840
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _022498FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224985A: ; jump table
	.short _02249864 - _0224985A - 2 ; case 0
	.short _02249870 - _0224985A - 2 ; case 1
	.short _0224989A - _0224985A - 2 ; case 2
	.short _022498C4 - _0224985A - 2 ; case 3
	.short _022498EE - _0224985A - 2 ; case 4
_02249864:
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_02249870:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xa
	ble _022498FC
	ldr r0, _02249904 ; =0x000006AC
	bl sub_02005748
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x34
	bl ov95_02249C44
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl ov95_022479A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_0224989A:
	add r0, r5, #0
	add r0, #0x34
	bl ov95_02249CF0
	cmp r0, #0
	beq _022498FC
	ldr r0, _02249908 ; =0x000006AD
	bl sub_02005748
	ldr r0, [r5, #0x20]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_022498C4:
	ldr r0, [r5, #0x20]
	bl sub_02021FD0
	cmp r0, #0
	bne _022498FC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224990C ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_022498EE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _022498FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022498FC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02249904: .word 0x000006AC
_02249908: .word 0x000006AD
_0224990C: .word 0x00007FFF
	thumb_func_end ov95_02249840

	thumb_func_start ov95_02249910
ov95_02249910: ; 0x02249910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _02249A54 ; =0x0224C060
	bl sub_0201FE94
	ldr r2, _02249A58 ; =0x04000304
	ldr r0, _02249A5C ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _02249A60 ; =0x0224C024
	bl sub_02018368
	ldr r0, [r4, #0x24]
	ldr r2, _02249A64 ; =0x0224C044
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x24]
	ldr r2, _02249A64 ; =0x0224C044
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	bl ov95_02247644
	cmp r0, #3
	bhi _02249962
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224995A: ; jump table
	.short _02249962 - _0224995A - 2 ; case 0
	.short _0224996E - _0224995A - 2 ; case 1
	.short _0224997A - _0224995A - 2 ; case 2
	.short _02249986 - _0224995A - 2 ; case 3
_02249962:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0
	b _02249990
_0224996E:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x20
	b _02249990
_0224997A:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x40
	b _02249990
_02249986:
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x19
	mov r6, #0x1a
	mov r5, #0
_02249990:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #7
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x24]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249A54: .word 0x0224C060
_02249A58: .word 0x04000304
_02249A5C: .word 0xFFFF7FFF
_02249A60: .word 0x0224C024
_02249A64: .word 0x0224C044
	thumb_func_end ov95_02249910

	thumb_func_start ov95_02249A68
ov95_02249A68: ; 0x02249A68
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02249A68

	thumb_func_start ov95_02249A80
ov95_02249A80: ; 0x02249A80
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _02249B54 ; =0x04000060
	ldr r1, _02249B58 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02249B5C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _02249B60 ; =0x0224C034
	bl sub_020BFD2C
	mov r1, #0
	ldr r0, _02249B64 ; =0x000043FF
	ldr r2, _02249B68 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _02249B6C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _02249B70 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _02249B74 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r1, _02249B78 ; =0x000018E3
	str r0, [r4, #0x2c]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AB0
	ldr r0, [r4, #0x28]
	ldr r1, _02249B7C ; =0x000007D2
	bl ov95_02247AE0
	ldr r0, [r4, #0x28]
	add r1, sp, #0x18
	bl ov95_02247A90
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_02249B54: .word 0x04000060
_02249B58: .word 0xFFFFCFFD
_02249B5C: .word 0x0000CFFB
_02249B60: .word 0x0224C034
_02249B64: .word 0x000043FF
_02249B68: .word 0x00007FFF
_02249B6C: .word 0x04000540
_02249B70: .word 0xBFFF0000
_02249B74: .word 0x04000008
_02249B78: .word 0x000018E3
_02249B7C: .word 0x000007D2
	thumb_func_end ov95_02249A80

	thumb_func_start ov95_02249B80
ov95_02249B80: ; 0x02249B80
	push {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02249B8C
	bl ov95_0224773C
_02249B8C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_02249B80

	thumb_func_start ov95_02249B90
ov95_02249B90: ; 0x02249B90
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl sub_020A81D0
	add r0, sp, #0x38
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #9
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x10
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov95_022475C4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x60
	bl ov95_022475E4
	mov r1, #0
	str r0, [r4, #0x20]
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02249B90

	thumb_func_start ov95_02249C10
ov95_02249C10: ; 0x02249C10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02249C1E
	bl sub_02021BD4
_02249C1E:
	add r4, #0x10
	add r0, r4, #0
	bl ov95_022475A0
	pop {r4, pc}
	thumb_func_end ov95_02249C10

	thumb_func_start ov95_02249C28
ov95_02249C28: ; 0x02249C28
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249C28

	thumb_func_start ov95_02249C30
ov95_02249C30: ; 0x02249C30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02249C42
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_02249C42:
	pop {r4, pc}
	thumb_func_end ov95_02249C30

	thumb_func_start ov95_02249C44
ov95_02249C44: ; 0x02249C44
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r1, [r0, #0x2c]
	ldr r2, _02249CD4 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _02249CD8 ; =0xFFF50E00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	mov r1, #0xe2
	lsl r1, r1, #0xc
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x6c
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _02249CDC ; =0xFFFFF550
	add r1, #0x6e
	strh r2, [r1]
	ldr r1, _02249CE0 ; =0x000134C4
	str r1, [r4, #0x3c]
	ldr r1, _02249CE4 ; =0xFFFF4D56
	str r1, [r4, #0x40]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	mov r1, #2
	str r0, [r4, #0x68]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _02249CE8 ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247990
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	mov r0, #0x4a
	lsl r0, r0, #0xa
	str r0, [r4, #0x44]
	mov r0, #0x63
	lsl r0, r0, #0xa
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x5c]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _02249CEC ; =ov95_02249E04
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02249CD4: .word 0xFFFFD870
_02249CD8: .word 0xFFF50E00
_02249CDC: .word 0xFFFFF550
_02249CE0: .word 0x000134C4
_02249CE4: .word 0xFFFF4D56
_02249CE8: .word 0xFFFFE000
_02249CEC: .word ov95_02249E04
	thumb_func_end ov95_02249C44

	thumb_func_start ov95_02249CF0
ov95_02249CF0: ; 0x02249CF0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02249CFA
	mov r0, #1
	bx lr
_02249CFA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249CF0

	thumb_func_start ov95_02249D00
ov95_02249D00: ; 0x02249D00
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _02249D36
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	add r1, r4, #0
	bl sub_020E1F6C
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	sub r0, r7, r0
	bl sub_020E1F6C
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x5c]
_02249D36:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov95_02249D00

	thumb_func_start ov95_02249D38
ov95_02249D38: ; 0x02249D38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0xb6
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _02249D52
	sub r4, r4, r0
_02249D52:
	mov r0, #0x6c
	ldrsh r1, [r5, r0]
	mov r0, #0x6e
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _02249D8C
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x58]
	add r1, r1, r0
	str r1, [r5, #0x54]
	ldr r0, [r5, #0xc]
	bl ov95_022479D4
	ldr r0, [r5, #0x5c]
	sub r0, r0, #1
	str r0, [r5, #0x5c]
_02249D8C:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x44]
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x1c]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x48]
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x20]
	add r1, r5, #0
	str r3, [r5, #0x24]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	mov r0, #3
	lsl r0, r0, #8
	add r0, r2, r0
	strh r0, [r5, #0x34]
	ldr r0, [r5, #0xc]
	add r1, #0x34
	bl ov95_02247990
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x28
	add r0, #0x1c
	add r1, #0x10
	add r2, r5, #0
	bl sub_020BD17C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02249D38

	thumb_func_start ov95_02249E04
ov95_02249E04: ; 0x02249E04
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0x3c
	bge _02249E14
	add r1, r1, #1
	str r1, [r4, #0x68]
_02249E14:
	ldr r1, [r4, #0x60]
	cmp r1, #4
	bls _02249E1C
	b _02249F2C
_02249E1C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249E28: ; jump table
	.short _02249E32 - _02249E28 - 2 ; case 0
	.short _02249E66 - _02249E28 - 2 ; case 1
	.short _02249EA4 - _02249E28 - 2 ; case 2
	.short _02249EEA - _02249E28 - 2 ; case 3
	.short _02249F1A - _02249E28 - 2 ; case 4
_02249E32:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	beq _02249F2C
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249E66:
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	bne _02249E80
	ldr r0, [r4, #0]
	bl ov95_02249F30
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249E80:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247968
	add sp, #4
	pop {r3, r4, pc}
_02249EA4:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x68]
	cmp r0, #0x3c
	blt _02249F2C
	mov r1, #2
	lsl r1, r1, #0xa
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov95_02249D00
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249EEA:
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xc
	blt _02249F2C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249F1A:
	ldr r1, [r4, #0x64]
	add r1, r1, #1
	str r1, [r4, #0x64]
	cmp r1, #8
	ble _02249F2C
	mov r1, #0
	str r1, [r4, #4]
	bl sub_0200DA58
_02249F2C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov95_02249E04

	thumb_func_start ov95_02249F30
ov95_02249F30: ; 0x02249F30
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249F30

	thumb_func_start ov95_02249F38
ov95_02249F38: ; 0x02249F38
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249F84
	mov r3, #0
	ldr r1, _02249F88 ; =0x00001150
	str r3, [r4, #0xc]
	add r0, sp, #0
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov95_02247AC0
	ldr r2, _02249F8C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl sub_0200DA58
_02249F84:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249F88: .word 0x00001150
_02249F8C: .word 0x04000304
	thumb_func_end ov95_02249F38

	thumb_func_start ov95_02249F90
ov95_02249F90: ; 0x02249F90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	beq _02249FAE
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0xc]
_02249FAE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02249F90

	thumb_func_start ov95_02249FB4
ov95_02249FB4: ; 0x02249FB4
	push {r4, lr}
	add r4, r0, #0
	beq _02249FC4
	bl ov95_0224A320
	add r0, r4, #0
	bl sub_020181C4
_02249FC4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02249FB4

	thumb_func_start ov95_02249FC8
ov95_02249FC8: ; 0x02249FC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _02249FF0
	lsl r3, r2, #2
	ldr r2, _02249FF4 ; =0x0224C088
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02249FEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_02249FEC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02249FF0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249FF4: .word 0x0224C088
	thumb_func_end ov95_02249FC8

	thumb_func_start ov95_02249FF8
ov95_02249FF8: ; 0x02249FF8
	push {lr}
	sub sp, #0xc
	bl ov95_0224A10C
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224A01C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_0224A01C: .word 0x00007FFF
	thumb_func_end ov95_02249FF8

	thumb_func_start ov95_0224A020
ov95_0224A020: ; 0x0224A020
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224A038
	cmp r0, #1
	beq _0224A06A
	cmp r0, #2
	beq _0224A096
	b _0224A0A4
_0224A038:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A0A4
	ldr r0, _0224A0AC ; =0xFFE80000
	mov r2, #0
	str r0, [r5, #0x10]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [r5, #0x14]
	ldr r0, _0224A0B0 ; =0x00005999
	add r1, r5, #0
	str r0, [r5, #0x18]
	ldr r0, _0224A0B4 ; =0xFFFFDDDE
	str r0, [r5, #0x1c]
	mov r0, #0x3c
	str r0, [r5, #8]
	ldr r0, _0224A0B8 ; =ov95_0224A0C4
	str r2, [r5, #0x20]
	bl sub_0200DA04
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0A4
_0224A06A:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0224A0A4
	ldr r0, _0224A0BC ; =0x000006A9
	bl sub_02005748
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224A0C0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A0A4
_0224A096:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A0A4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224A0A4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224A0AC: .word 0xFFE80000
_0224A0B0: .word 0x00005999
_0224A0B4: .word 0xFFFFDDDE
_0224A0B8: .word ov95_0224A0C4
_0224A0BC: .word 0x000006A9
_0224A0C0: .word 0x00007FFF
	thumb_func_end ov95_0224A020

	thumb_func_start ov95_0224A0C4
ov95_0224A0C4: ; 0x0224A0C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224A0F2
	sub r0, r0, #1
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	add r2, r1, r0
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	bl ov95_0224A358
	pop {r3, r4, r5, pc}
_0224A0F2:
	mov r1, #0x2f
	mvn r1, r1
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov95_0224A358
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A0C4

	thumb_func_start ov95_0224A10C
ov95_0224A10C: ; 0x0224A10C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224A304 ; =0x0224C0F4
	bl sub_0201FE94
	ldr r2, _0224A308 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A30C ; =0x0224C090
	bl sub_02018368
	ldr r0, [r4, #0xc]
	ldr r2, _0224A310 ; =0x0224C0A0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A310 ; =0x0224C0A0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A314 ; =0x0224C0BC
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A318 ; =0x0224C0D8
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224A318 ; =0x0224C0D8
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x13
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x13
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x12
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #0x12
	mov r3, #7
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x14
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x14
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0xc8
	str r0, [sp]
	mov r1, #1
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r3, r1, #0
	bl sub_020196C0
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl sub_020196C0
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_020196C0
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #0xe
	bl ov95_022473E8
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #5
	mov r3, #0xe
	bl ov95_022473E8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #2
	mov r3, #0xf
	bl ov95_022473E8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0xc8
	bl sub_02019CB8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0xc8
	bl sub_02019CB8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0xc8
	bl sub_02019CB8
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #0xe
	bl ov95_022474D4
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #5
	mov r3, #0xe
	bl ov95_022474D4
	mov r2, #2
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r3, #0xf
	bl ov95_022474D4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019448
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019448
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019448
	ldr r0, [r4, #0xc]
	ldr r2, _0224A31C ; =0xFFFFFE80
	mov r1, #0x50
	bl ov95_0224A358
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224A304: .word 0x0224C0F4
_0224A308: .word 0x04000304
_0224A30C: .word 0x0224C090
_0224A310: .word 0x0224C0A0
_0224A314: .word 0x0224C0BC
_0224A318: .word 0x0224C0D8
_0224A31C: .word 0xFFFFFE80
	thumb_func_end ov95_0224A10C

	thumb_func_start ov95_0224A320
ov95_0224A320: ; 0x0224A320
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A320

	thumb_func_start ov95_0224A358
ov95_0224A358: ; 0x0224A358
	push {r4, r5, r6, lr}
	ldr r3, _0224A38C ; =0x000001FF
	add r4, r1, #0
	add r6, r2, #0
	and r4, r3
	add r5, r0, #0
	mov r1, #2
	mov r2, #3
	and r3, r6
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r4, #0
	bl sub_02019184
	add r4, #0xc0
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	add r3, r4, #0
	bl sub_02019184
	pop {r4, r5, r6, pc}
	nop
_0224A38C: .word 0x000001FF
	thumb_func_end ov95_0224A358

	thumb_func_start ov95_0224A390
ov95_0224A390: ; 0x0224A390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0xb0
	bl sub_02018144
	add r4, r0, #0
	beq _0224A3C4
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x34
	bl ov95_0224A848
	ldr r0, _0224A3C8 ; =ov95_0224AB50
	add r1, r4, #0
	bl sub_02017798
_0224A3C4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A3C8: .word ov95_0224AB50
	thumb_func_end ov95_0224A390

	thumb_func_start ov95_0224A3CC
ov95_0224A3CC: ; 0x0224A3CC
	push {r4, lr}
	add r4, r0, #0
	beq _0224A3FA
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov95_0224A678
	add r0, r4, #0
	bl ov95_0224A7A0
	add r0, r4, #0
	bl ov95_0224A830
	add r0, r4, #0
	add r0, #0x34
	bl ov95_0224A850
	add r0, r4, #0
	bl sub_020181C4
_0224A3FA:
	pop {r4, pc}
	thumb_func_end ov95_0224A3CC

	thumb_func_start ov95_0224A3FC
ov95_0224A3FC: ; 0x0224A3FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _0224A424
	lsl r3, r2, #2
	ldr r2, _0224A428 ; =0x0224C11C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224A420
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224A420:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A424:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A428: .word 0x0224C11C
	thumb_func_end ov95_0224A3FC

	thumb_func_start ov95_0224A42C
ov95_0224A42C: ; 0x0224A42C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_0224A518
	add r0, r4, #0
	bl ov95_0224A690
	add r0, r4, #0
	bl ov95_0224A7B0
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224A460 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224A460: .word 0x00007FFF
	thumb_func_end ov95_0224A42C

	thumb_func_start ov95_0224A464
ov95_0224A464: ; 0x0224A464
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _0224A50A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A47E: ; jump table
	.short _0224A486 - _0224A47E - 2 ; case 0
	.short _0224A4A6 - _0224A47E - 2 ; case 1
	.short _0224A4D0 - _0224A47E - 2 ; case 2
	.short _0224A4FC - _0224A47E - 2 ; case 3
_0224A486:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A50A
	ldr r0, [r5, #0x20]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4A6:
	ldr r0, [r5, #0x20]
	bl sub_02021FD0
	cmp r0, #0
	bne _0224A50A
	ldr r0, _0224A510 ; =0x000006AB
	bl sub_02005748
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x34
	bl ov95_0224A864
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl ov95_022479A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4D0:
	add r5, #0x34
	add r0, r5, #0
	bl ov95_0224A924
	cmp r0, #0
	beq _0224A50A
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224A514 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4FC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A50A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224A50A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224A510: .word 0x000006AB
_0224A514: .word 0x00007FFF
	thumb_func_end ov95_0224A464

	thumb_func_start ov95_0224A518
ov95_0224A518: ; 0x0224A518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224A668 ; =0x0224C160
	bl sub_0201FE94
	ldr r2, _0224A66C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A670 ; =0x0224C124
	bl sub_02018368
	ldr r0, [r4, #0x24]
	ldr r2, _0224A674 ; =0x0224C144
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x24]
	ldr r2, _0224A674 ; =0x0224C144
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	bl ov95_02247644
	cmp r0, #3
	bhi _0224A56A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A562: ; jump table
	.short _0224A56A - _0224A562 - 2 ; case 0
	.short _0224A576 - _0224A562 - 2 ; case 1
	.short _0224A582 - _0224A562 - 2 ; case 2
	.short _0224A58E - _0224A562 - 2 ; case 3
_0224A56A:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0
	b _0224A598
_0224A576:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x20
	b _0224A598
_0224A582:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x40
	b _0224A598
_0224A58E:
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x19
	mov r6, #0x1a
	mov r5, #0
_0224A598:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #7
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	bl sub_02039734
	mov r0, #1
	mov r1, #0x39
	bl sub_020397C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A668: .word 0x0224C160
_0224A66C: .word 0x04000304
_0224A670: .word 0x0224C124
_0224A674: .word 0x0224C144
	thumb_func_end ov95_0224A518

	thumb_func_start ov95_0224A678
ov95_0224A678: ; 0x0224A678
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A678

	thumb_func_start ov95_0224A690
ov95_0224A690: ; 0x0224A690
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0224A770 ; =0x04000060
	ldr r1, _0224A774 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0224A778 ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0224A77C ; =0x0224C134
	bl sub_020BFD2C
	mov r1, #0
	ldr r0, _0224A780 ; =0x000043FF
	ldr r2, _0224A784 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _0224A788 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224A78C ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0224A790 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r1, _0224A794 ; =0x000018E3
	str r0, [r4, #0x2c]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AB0
	ldr r1, _0224A798 ; =0x00001150
	add r0, sp, #0x10
	strh r1, [r0]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AC0
	ldr r0, [r4, #0x28]
	ldr r1, _0224A79C ; =0x000007D2
	bl ov95_02247AE0
	ldr r0, [r4, #0x28]
	add r1, sp, #0x18
	bl ov95_02247A90
	add sp, #0x24
	pop {r3, r4, pc}
	; .align 2, 0
_0224A770: .word 0x04000060
_0224A774: .word 0xFFFFCFFD
_0224A778: .word 0x0000CFFB
_0224A77C: .word 0x0224C134
_0224A780: .word 0x000043FF
_0224A784: .word 0x00007FFF
_0224A788: .word 0x04000540
_0224A78C: .word 0xBFFF0000
_0224A790: .word 0x04000008
_0224A794: .word 0x000018E3
_0224A798: .word 0x00001150
_0224A79C: .word 0x000007D2
	thumb_func_end ov95_0224A690

	thumb_func_start ov95_0224A7A0
ov95_0224A7A0: ; 0x0224A7A0
	push {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0224A7AC
	bl ov95_0224773C
_0224A7AC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A7A0

	thumb_func_start ov95_0224A7B0
ov95_0224A7B0: ; 0x0224A7B0
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl sub_020A81D0
	add r0, sp, #0x38
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #9
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #1
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x10
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov95_022475C4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x60
	bl ov95_022475E4
	mov r1, #0
	str r0, [r4, #0x20]
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A7B0

	thumb_func_start ov95_0224A830
ov95_0224A830: ; 0x0224A830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224A83E
	bl sub_02021BD4
_0224A83E:
	add r4, #0x10
	add r0, r4, #0
	bl ov95_022475A0
	pop {r4, pc}
	thumb_func_end ov95_0224A830

	thumb_func_start ov95_0224A848
ov95_0224A848: ; 0x0224A848
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224A848

	thumb_func_start ov95_0224A850
ov95_0224A850: ; 0x0224A850
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224A862
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_0224A862:
	pop {r4, pc}
	thumb_func_end ov95_0224A850

	thumb_func_start ov95_0224A864
ov95_0224A864: ; 0x0224A864
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r1, [r0, #0x2c]
	ldr r2, _0224A904 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _0224A908 ; =0x003D6C00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r1, _0224A90C ; =0xFFE44000
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x78
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _0224A910 ; =0xFFFFF550
	add r1, #0x7a
	strh r2, [r1]
	ldr r1, _0224A914 ; =0xFFFEF2C6
	str r1, [r4, #0x3c]
	ldr r1, _0224A918 ; =0x0000936D
	str r1, [r4, #0x40]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	mov r1, #2
	str r0, [r4, #0x74]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _0224A91C ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247990
	mov r3, #2
	lsl r3, r3, #8
	mov r1, #0x4a
	mov r2, #0x63
	str r3, [r4, #0x5c]
	lsl r0, r3, #2
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x68]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r1, #0xa
	lsl r2, r2, #0xa
	lsl r3, r3, #3
	bl ov95_0224A934
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _0224A920 ; =ov95_0224AA70
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224A904: .word 0xFFFFD870
_0224A908: .word 0x003D6C00
_0224A90C: .word 0xFFE44000
_0224A910: .word 0xFFFFF550
_0224A914: .word 0xFFFEF2C6
_0224A918: .word 0x0000936D
_0224A91C: .word 0xFFFFE000
_0224A920: .word ov95_0224AA70
	thumb_func_end ov95_0224A864

	thumb_func_start ov95_0224A924
ov95_0224A924: ; 0x0224A924
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224A92E
	mov r0, #1
	bx lr
_0224A92E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224A924

	thumb_func_start ov95_0224A934
ov95_0224A934: ; 0x0224A934
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp]
	cmp r0, #0
	beq _0224A974
	ldr r0, [r5, #0x44]
	ldr r1, [sp]
	sub r0, r4, r0
	bl sub_020E1F6C
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	ldr r1, [sp]
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	ldr r1, [sp]
	sub r0, r7, r0
	bl sub_020E1F6C
	str r0, [r5, #0x60]
	str r4, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x64]
	str r0, [r5, #0x68]
_0224A974:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A934

	thumb_func_start ov95_0224A978
ov95_0224A978: ; 0x0224A978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224AA6C ; =0x0224C2C0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224AA5A
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	mov r1, #0xb6
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _0224A99C
	sub r4, r4, r0
_0224A99C:
	mov r0, #0x78
	ldrsh r1, [r5, r0]
	mov r0, #0x7a
	ldrsh r0, [r5, r0]
	sub r1, r1, r0
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224A9E4
	sub r0, r0, #1
	str r0, [r5, #0x68]
	beq _0224A9D0
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	add r0, r1, r0
	b _0224A9DA
_0224A9D0:
	ldr r0, [r5, #0x54]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x58]
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x64]
_0224A9DA:
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x5c]
	bl ov95_022479D4
_0224A9E4:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x44]
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x1c]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x48]
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x20]
	add r1, r5, #0
	str r3, [r5, #0x24]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	mov r0, #3
	lsl r0, r0, #8
	sub r0, r2, r0
	strh r0, [r5, #0x34]
	ldr r0, [r5, #0xc]
	add r1, #0x34
	bl ov95_02247990
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x28
	add r0, #0x1c
	add r1, #0x10
	add r2, r5, #0
	bl sub_020BD17C
	pop {r4, r5, r6, pc}
_0224AA5A:
	add r2, r5, #0
	add r2, #0x10
	ldmia r2!, {r0, r1}
	add r5, #0x28
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	nop
_0224AA6C: .word 0x0224C2C0
	thumb_func_end ov95_0224A978

	thumb_func_start ov95_0224AA70
ov95_0224AA70: ; 0x0224AA70
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x74]
	cmp r1, #0x46
	bge _0224AA7E
	add r1, r1, #1
	str r1, [r4, #0x74]
_0224AA7E:
	ldr r1, [r4, #0x6c]
	cmp r1, #3
	bhi _0224AB44
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224AA90: ; jump table
	.short _0224AA98 - _0224AA90 - 2 ; case 0
	.short _0224AABE - _0224AA90 - 2 ; case 1
	.short _0224AAF8 - _0224AA90 - 2 ; case 2
	.short _0224AB32 - _0224AA90 - 2 ; case 3
_0224AA98:
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0xc
	blt _0224AB44
	mov r0, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AABE:
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	bne _0224AAD6
	ldr r0, [r4, #0]
	bl ov95_0224AB48
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AAD6:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_0224A978
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247968
	pop {r4, pc}
_0224AAF8:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x74]
	cmp r0, #0x46
	blt _0224AB44
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AB32:
	ldr r1, [r4, #0x70]
	add r1, r1, #1
	str r1, [r4, #0x70]
	cmp r1, #8
	ble _0224AB44
	mov r1, #0
	str r1, [r4, #4]
	bl sub_0200DA58
_0224AB44:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224AA70

	thumb_func_start ov95_0224AB48
ov95_0224AB48: ; 0x0224AB48
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224AB48

	thumb_func_start ov95_0224AB50
ov95_0224AB50: ; 0x0224AB50
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0224AB6E
	bl sub_020BFAB8
	ldr r0, [r4, #0x28]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_0224AB6E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224ABB0
	ldr r1, _0224ABB4 ; =0x0000EEB0
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x24]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov95_02247AC0
	ldr r2, _0224ABB8 ; =0x04000304
	ldr r0, _0224ABBC ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #0
	str r0, [r4, #0xc]
_0224ABB0:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0224ABB4: .word 0x0000EEB0
_0224ABB8: .word 0x04000304
_0224ABBC: .word 0xFFFF7FFF
	thumb_func_end ov95_0224AB50

	thumb_func_start ov95_0224ABC0
ov95_0224ABC0: ; 0x0224ABC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	beq _0224ABEE
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
_0224ABEE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ABC0

	thumb_func_start ov95_0224ABF4
ov95_0224ABF4: ; 0x0224ABF4
	push {r4, lr}
	add r4, r0, #0
	beq _0224AC28
	bl ov95_0224B050
	add r0, r4, #0
	bl ov95_0224B194
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0224AC0E
	bl ov95_0224B308
_0224AC0E:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0224AC18
	bl ov95_0224B258
_0224AC18:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0224AC22
	bl ov95_0224B3BC
_0224AC22:
	add r0, r4, #0
	bl sub_020181C4
_0224AC28:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ABF4

	thumb_func_start ov95_0224AC2C
ov95_0224AC2C: ; 0x0224AC2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #3
	bhs _0224AC5A
	lsl r3, r2, #2
	ldr r2, _0224AC60 ; =0x0224C190
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224AC50
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224AC50:
	add r0, r5, #0
	bl ov95_0224AC64
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224AC5A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224AC60: .word 0x0224C190
	thumb_func_end ov95_0224AC2C

	thumb_func_start ov95_0224AC64
ov95_0224AC64: ; 0x0224AC64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224AC96
	mov r0, #0x2a
	ldrsh r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	strh r0, [r4, #0x2a]
	add r1, r4, #0
	ldr r0, [r4, #0x24]
	add r1, #0x28
	bl ov95_02247990
	bl sub_020BFAB8
	ldr r0, [r4, #0x20]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_0224AC96:
	pop {r4, pc}
	thumb_func_end ov95_0224AC64

	thumb_func_start ov95_0224AC98
ov95_0224AC98: ; 0x0224AC98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_0224AE1C
	add r0, r4, #0
	bl ov95_0224B084
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224ACC4 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224ACC4: .word 0x00007FFF
	thumb_func_end ov95_0224AC98

	thumb_func_start ov95_0224ACC8
ov95_0224ACC8: ; 0x0224ACC8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bhi _0224AD92
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224ACE0: ; jump table
	.short _0224ACEE - _0224ACE0 - 2 ; case 0
	.short _0224AD0C - _0224ACE0 - 2 ; case 1
	.short _0224AD26 - _0224ACE0 - 2 ; case 2
	.short _0224AD38 - _0224ACE0 - 2 ; case 3
	.short _0224AD50 - _0224ACE0 - 2 ; case 4
	.short _0224AD74 - _0224ACE0 - 2 ; case 5
	.short _0224AD88 - _0224ACE0 - 2 ; case 6
_0224ACEE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224AD92
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	add r4, #0x30
	add r1, r4, #0
	bl ov95_0224B274
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD0C:
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	cmp r1, #8
	ble _0224AD92
	add r4, #0x34
	add r1, r4, #0
	bl ov95_0224B1A8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD26:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0224AD92
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0224AD92
	add r0, r1, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD38:
	mov r1, #0
	add r0, #0x14
	mvn r1, r1
	bl ov95_02246F30
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD50:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224AD92
	add r0, r4, #0
	add r0, #0x38
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r1, #0x1f
	mov r2, #0
	mov r3, #0x28
	bl ov95_0224B324
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD74:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0224AD92
	ldr r0, [r4, #0x10]
	bl ov95_02247004
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224AD92
_0224AD88:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0224AD92
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AD92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224ACC8

	thumb_func_start ov95_0224AD98
ov95_0224AD98: ; 0x0224AD98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0224ADB0
	cmp r0, #1
	beq _0224ADD8
	cmp r0, #2
	beq _0224AE02
	b _0224AE16
_0224ADB0:
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r3, #1
	str r0, [sp]
	add r0, r5, #0
	str r3, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	lsl r1, r3, #0xc
	lsl r2, r3, #0xa
	bl ov95_022472C4
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224AE16
_0224ADD8:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xd
	ble _0224AE16
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224AE16
_0224AE02:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224AE16
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0224AE16
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224AE16:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov95_0224AD98

	thumb_func_start ov95_0224AE1C
ov95_0224AE1C: ; 0x0224AE1C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224B034 ; =0x0224C1F4
	bl sub_0201FE94
	ldr r2, _0224B038 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224B03C ; =0x0224C19C
	bl sub_02018368
	ldr r0, [r4, #0xc]
	ldr r2, _0224B040 ; =0x0224C1BC
	mov r1, #2
	mov r3, #1
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224B040 ; =0x0224C1BC
	mov r1, #6
	mov r3, #1
	bl sub_020183C4
	bl sub_020C3D98
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, _0224B044 ; =0x0224C1D8
	mov r1, #3
	mov r3, #2
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	ldr r2, _0224B044 ; =0x0224C1D8
	mov r1, #7
	mov r3, #2
	bl sub_020183C4
	add r0, r5, #0
	bl sub_020C3DAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r1, #2
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	add r3, r1, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #2
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r3, #2
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r3, #6
	bl sub_02006E60
	ldr r0, [r4, #0]
	bl ov95_02247644
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, _0224B048 ; =0x0224C188
	lsl r1, r5, #1
	ldrh r5, [r0, r1]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #5
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x5d
	mov r1, #4
	mov r3, #7
	bl sub_02006E60
	mov r0, #0x3a
	mov r1, #0x60
	bl sub_02018144
	add r5, r0, #0
	beq _0224AFF2
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x60
	bl sub_020C4B4C
	add r0, r5, #0
	mov r1, #0x60
	bl sub_020C2C54
	bl sub_020C096C
	bl sub_020C0BBC
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0A0C
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl sub_020C0BD4
	bl sub_020C0A7C
	bl sub_020C0C38
	add r0, r5, #0
	bl sub_020181C4
_0224AFF2:
	ldr r0, [r4, #0xc]
	ldr r3, _0224B04C ; =0xFFFFFE80
	mov r1, #2
	mov r2, #3
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #6
	sub r3, #0xc3
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	mov r3, #0x43
	bl sub_02019184
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B034: .word 0x0224C1F4
_0224B038: .word 0x04000304
_0224B03C: .word 0x0224C19C
_0224B040: .word 0x0224C1BC
_0224B044: .word 0x0224C1D8
_0224B048: .word 0x0224C188
_0224B04C: .word 0xFFFFFE80
	thumb_func_end ov95_0224AE1C

	thumb_func_start ov95_0224B050
ov95_0224B050: ; 0x0224B050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224B060
	ldr r0, [r4, #0x10]
	bl ov95_02247018
_0224B060:
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B050

	thumb_func_start ov95_0224B084
ov95_0224B084: ; 0x0224B084
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0224B168 ; =0x04000060
	ldr r1, _0224B16C ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0224B170 ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0224B174 ; =0x0224C1AC
	bl sub_020BFD2C
	mov r1, #0
	ldr r0, _0224B178 ; =0x000043FF
	ldr r2, _0224B17C ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _0224B180 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224B184 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0224B188 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x20]
	mov r1, #0
	mov r0, #0x23
	str r1, [sp]
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	str r0, [r4, #0x24]
	ldr r0, _0224B18C ; =0x0224C370
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x20]
	ldr r1, _0224B190 ; =0x0224C370
	bl ov95_02247AB0
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov95_02247AD0
	mov r1, #2
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl ov95_022479D4
	ldr r0, [r4, #0x24]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247978
	add sp, #0x10
	pop {r4, pc}
	nop
_0224B168: .word 0x04000060
_0224B16C: .word 0xFFFFCFFD
_0224B170: .word 0x0000CFFB
_0224B174: .word 0x0224C1AC
_0224B178: .word 0x000043FF
_0224B17C: .word 0x00007FFF
_0224B180: .word 0x04000540
_0224B184: .word 0xBFFF0000
_0224B188: .word 0x04000008
_0224B18C: .word 0x0224C370
_0224B190: .word 0x0224C370
	thumb_func_end ov95_0224B084

	thumb_func_start ov95_0224B194
ov95_0224B194: ; 0x0224B194
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224B1A6
	bl ov95_0224773C
	mov r0, #0
	str r0, [r4, #0x20]
_0224B1A6:
	pop {r4, pc}
	thumb_func_end ov95_0224B194

	thumb_func_start ov95_0224B1A8
ov95_0224B1A8: ; 0x0224B1A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x3a
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	beq _0224B1E8
	str r6, [r4, #0]
	ldr r0, [r6, #0xc]
	add r1, r4, #0
	str r0, [r4, #4]
	ldr r0, _0224B1EC ; =0xFFE80000
	mov r2, #0
	str r0, [r4, #0xc]
	asr r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, _0224B1F0 ; =0x00009999
	str r0, [r4, #0x14]
	mov r0, #0x28
	str r0, [r4, #8]
	ldr r0, _0224B1F4 ; =ov95_0224B1F8
	str r5, [r4, #0x1c]
	bl sub_0200DA04
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B1E8
	add r0, r4, #0
	bl sub_020181C4
_0224B1E8:
	pop {r4, r5, r6, pc}
	nop
_0224B1EC: .word 0xFFE80000
_0224B1F0: .word 0x00009999
_0224B1F4: .word ov95_0224B1F8
	thumb_func_end ov95_0224B1A8

	thumb_func_start ov95_0224B1F8
ov95_0224B1F8: ; 0x0224B1F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224B238
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	mov r2, #3
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #2
	asr r3, r3, #0xc
	bl sub_02019184
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224B238:
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0xc0
	bl sub_02019184
	add r0, r5, #0
	bl ov95_0224B258
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224B1F8

	thumb_func_start ov95_0224B258
ov95_0224B258: ; 0x0224B258
	push {r4, lr}
	add r4, r0, #0
	beq _0224B272
	bl sub_0201CED0
	ldr r1, [r0, #0x1c]
	mov r2, #0
	str r2, [r1, #0]
	bl ov95_022476C8
	add r0, r4, #0
	bl sub_0200DA58
_0224B272:
	pop {r4, pc}
	thumb_func_end ov95_0224B258

	thumb_func_start ov95_0224B274
ov95_0224B274: ; 0x0224B274
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x3a
	mov r1, #0x1c
	bl sub_02018144
	add r4, r0, #0
	beq _0224B2C0
	str r5, [r4, #0]
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	str r0, [r4, #8]
	add r1, #0xc
	bl ov95_02247958
	mov r0, #0x32
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [r4, #0x18]
	mov r0, #0x10
	str r0, [r4, #4]
	ldr r0, _0224B2C4 ; =ov95_0224B2C8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B2C0
	add r0, r4, #0
	bl sub_020181C4
_0224B2C0:
	pop {r4, r5, r6, pc}
	nop
_0224B2C4: .word ov95_0224B2C8
	thumb_func_end ov95_0224B274

	thumb_func_start ov95_0224B2C8
ov95_0224B2C8: ; 0x0224B2C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224B2EE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	bl ov95_02247968
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224B2EE:
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	add r4, #0xc
	add r1, r4, #0
	bl ov95_02247968
	add r0, r5, #0
	bl ov95_0224B308
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B2C8

	thumb_func_start ov95_0224B308
ov95_0224B308: ; 0x0224B308
	push {r4, lr}
	add r4, r0, #0
	beq _0224B322
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224B322:
	pop {r4, pc}
	thumb_func_end ov95_0224B308

	thumb_func_start ov95_0224B324
ov95_0224B324: ; 0x0224B324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x18
	str r2, [sp, #4]
	add r7, r3, #0
	ldr r5, [sp, #0x20]
	bl sub_02018144
	add r4, r0, #0
	beq _0224B37C
	str r5, [r4, #0]
	lsl r0, r6, #0xc
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	lsl r1, r0, #0xc
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r1, r7, #0
	bl sub_020E1F6C
	str r0, [r4, #8]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	add r1, r6, #0
	str r0, [r4, #0x14]
	bl ov95_022479AC
	ldr r0, _0224B384 ; =ov95_0224B388
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #0]
	cmp r0, #0
	bne _0224B380
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224B37C:
	mov r0, #0
	str r0, [r5, #0]
_0224B380:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B384: .word ov95_0224B388
	thumb_func_end ov95_0224B324

	thumb_func_start ov95_0224B388
ov95_0224B388: ; 0x0224B388
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x10]
	sub r0, r0, #1
	str r0, [r1, #0x10]
	cmp r0, #0
	ble _0224B3A8
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	add r2, r2, r0
	str r2, [r1, #4]
	ldr r0, [r1, #0x14]
	asr r1, r2, #0xc
	bl ov95_022479AC
	pop {r4, pc}
_0224B3A8:
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0xc]
	asr r1, r1, #0xc
	bl ov95_022479AC
	add r0, r4, #0
	bl ov95_0224B3BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B388

	thumb_func_start ov95_0224B3BC
ov95_0224B3BC: ; 0x0224B3BC
	push {r4, lr}
	add r4, r0, #0
	beq _0224B3D6
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224B3D6:
	pop {r4, pc}
	thumb_func_end ov95_0224B3BC

	thumb_func_start ov95_0224B3D8
ov95_0224B3D8: ; 0x0224B3D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x88
	bl sub_02018144
	add r4, r0, #0
	beq _0224B434
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x58]
	mov r0, #0x3a
	bl sub_0200762C
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x70]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	str r1, [r4, #0x74]
	mov r0, #0x93
	mov r1, #0x3a
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1, #0]
_0224B434:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224B3D8

	thumb_func_start ov95_0224B438
ov95_0224B438: ; 0x0224B438
	push {r4, lr}
	add r4, r0, #0
	beq _0224B498
	bl ov95_0224BC10
	add r0, r4, #0
	bl ov95_0224BB8C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov95_0224BCE8
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_020237BC
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0224B468
	bl ov95_0224773C
_0224B468:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201A8FC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224B482
	bl sub_02007DC8
_0224B482:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0x10]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_020181C4
_0224B498:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B438

	thumb_func_start ov95_0224B49C
ov95_0224B49C: ; 0x0224B49C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #4
	bhs _0224B4CA
	lsl r3, r2, #2
	ldr r2, _0224B4D0 ; =0x0224C224
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224B4C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224B4C0:
	add r0, r5, #0
	bl ov95_0224B4D4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B4CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224B4D0: .word 0x0224C224
	thumb_func_end ov95_0224B49C

	thumb_func_start ov95_0224B4D4
ov95_0224B4D4: ; 0x0224B4D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_020BFAB8
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020B2628
	bl sub_020A73C0
	ldr r0, [r4, #0x10]
	bl sub_02008A94
	ldr r0, [r4, #0x10]
	bl sub_02007768
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl sub_020B275C
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0224B512
	bl ov95_02247770
_0224B512:
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B4D4

	thumb_func_start ov95_0224B520
ov95_0224B520: ; 0x0224B520
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0224B6D0 ; =0x0224C27C
	bl sub_0201FE94
	ldr r2, _0224B6D4 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224B6D8 ; =0x0224C234
	bl sub_02018368
	ldr r0, [r4, #0x58]
	ldr r2, _0224B6DC ; =0x0224C244
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x58]
	ldr r2, _0224B6E0 ; =0x0224C260
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r2, _0224B6E4 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	mov r1, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x58]
	add r3, r1, #0
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #0]
	bl ov95_02247674
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0x6d
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	add r1, r4, #0
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x58]
	add r1, #0x5c
	mov r3, #2
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0x20
	str r3, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0xe
	mov r1, #7
	mov r2, #0
	bl sub_02006E84
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02019448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x5d
	mov r1, #0x16
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x5d
	mov r1, #0x15
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x17
	add r3, r2, #0
	bl sub_02006E84
	add r0, r4, #0
	bl ov95_0224B9C0
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x74]
	add r0, r4, #0
	bl ov95_0224BA8C
	mov r1, #6
	mov r2, #1
	str r0, [r4, #0x14]
	bl sub_02007DEC
	mov r1, #0
	mov r0, #0x13
	str r1, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x74]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r2, _0224B6E8 ; =0x0224C21C
	str r0, [r4, #0x78]
	ldrh r3, [r2]
	add r0, sp, #0x14
	add r1, sp, #0x14
	strh r3, [r0]
	ldrh r3, [r2, #2]
	ldrh r2, [r2, #4]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, [r4, #0x78]
	bl ov95_02247990
	add r0, r4, #0
	bl ov95_0224BAE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224B6EC ; =0x04000050
	mov r1, #1
	mov r2, #4
	mov r3, #0x10
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0224B6D0: .word 0x0224C27C
_0224B6D4: .word 0x04000304
_0224B6D8: .word 0x0224C234
_0224B6DC: .word 0x0224C244
_0224B6E0: .word 0x0224C260
_0224B6E4: .word 0x04000008
_0224B6E8: .word 0x0224C21C
_0224B6EC: .word 0x04000050
	thumb_func_end ov95_0224B520

	thumb_func_start ov95_0224B6F0
ov95_0224B6F0: ; 0x0224B6F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0224B716
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224B716
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0224B716:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B6F0

	thumb_func_start ov95_0224B71C
ov95_0224B71C: ; 0x0224B71C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224B816
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B736: ; jump table
	.short _0224B740 - _0224B736 - 2 ; case 0
	.short _0224B74E - _0224B736 - 2 ; case 1
	.short _0224B77C - _0224B736 - 2 ; case 2
	.short _0224B7A4 - _0224B736 - 2 ; case 3
	.short _0224B806 - _0224B736 - 2 ; case 4
_0224B740:
	add r1, r4, #0
	add r1, #0x80
	bl ov95_0224BC6C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_0224B74E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224B816
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x78]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B816
_0224B77C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _0224B816
	ldr r0, [r4, #0x14]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc
	bl ov95_0224BBB0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0224B816
_0224B7A4:
	bl ov95_0224BC00
	cmp r0, #0
	beq _0224B816
	ldr r0, [r4, #0]
	bl ov95_0224763C
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _0224B7FA
	ldr r0, [r4, #0]
	bl ov95_02247660
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r1, sp, #0
	mov r3, #1
	bl sub_02078A4C
	ldr r0, [r4, #0]
	bl ov95_02247660
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247668
	add r2, r0, #0
	add r1, sp, #0
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0200590C
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007B98
_0224B7FA:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B816
_0224B806:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224B816
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224B816:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov95_0224B71C

	thumb_func_start ov95_0224B81C
ov95_0224B81C: ; 0x0224B81C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bhi _0224B858
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B836: ; jump table
	.short _0224B842 - _0224B836 - 2 ; case 0
	.short _0224B84E - _0224B836 - 2 ; case 1
	.short _0224B8CC - _0224B836 - 2 ; case 2
	.short _0224B92E - _0224B836 - 2 ; case 3
	.short _0224B94E - _0224B836 - 2 ; case 4
	.short _0224B978 - _0224B836 - 2 ; case 5
_0224B842:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B84E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _0224B85A
_0224B858:
	b _0224B986
_0224B85A:
	ldr r0, [r4, #0]
	bl ov95_02247630
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247680
	cmp r0, #1
	bne _0224B87A
	mov r1, #2
	add r6, r1, #0
	b _0224B87E
_0224B87A:
	mov r1, #5
	mov r6, #3
_0224B87E:
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x6c]
	bl sub_0200B1B8
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x6c]
	add r0, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x70]
	add r0, #0x5c
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0x6d
	mov r2, #2
	bl sub_0200E010
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201A954
	ldr r0, _0224B98C ; =0x00000484
	bl sub_02006150
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r6, [r5, #0]
	b _0224B986
_0224B8CC:
	mov r1, #0x3c
	bl ov95_0224B990
	cmp r0, #0
	beq _0224B986
	ldr r0, [r4, #0]
	bl ov95_02247630
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r2, [r4, #0x6c]
	add r0, r6, #0
	mov r1, #3
	bl sub_0200B1B8
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x6c]
	add r0, r7, #0
	bl sub_0200C388
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x70]
	add r0, #0x5c
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACCC
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B92E:
	mov r1, #0x3c
	bl ov95_0224B990
	cmp r0, #0
	beq _0224B986
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B94E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _0224B986
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B978:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224B986
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B986:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B98C: .word 0x00000484
	thumb_func_end ov95_0224B81C

	thumb_func_start ov95_0224B990
ov95_0224B990: ; 0x0224B990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	beq _0224B9A2
	bl sub_020061E4
	str r0, [r5, #0xc]
_0224B9A2:
	ldr r0, [r5, #8]
	cmp r0, r4
	bge _0224B9B0
	add r0, r0, #1
	str r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B9B0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0224B9BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224B9BA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B990

	thumb_func_start ov95_0224B9C0
ov95_0224B9C0: ; 0x0224B9C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0224BA68 ; =0x04000060
	ldr r2, _0224BA6C ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224BA70 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0224BA74 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224BA78 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	ldr r3, _0224BA7C ; =0x02100DEC
	mov r0, #1
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224BA80 ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _0224BA84 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _0224BA88 ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224BA68: .word 0x04000060
_0224BA6C: .word 0xFFFFCFFD
_0224BA70: .word 0x0000CFFB
_0224BA74: .word 0x04000540
_0224BA78: .word 0xBFFF0000
_0224BA7C: .word 0x02100DEC
_0224BA80: .word 0x02100DF4
_0224BA84: .word 0x7FFF0000
_0224BA88: .word 0xFFFF0000
	thumb_func_end ov95_0224B9C0

	thumb_func_start ov95_0224BA8C
ov95_0224BA8C: ; 0x0224BA8C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov95_0224763C
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	ldr r0, [r5, #0]
	bl ov95_02247660
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x84
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x18
	mov r3, #1
	bl sub_020789BC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_020765C4
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl sub_02007C34
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224BA8C

	thumb_func_start ov95_0224BAE8
ov95_0224BAE8: ; 0x0224BAE8
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl sub_020A81D0
	add r0, sp, #0x38
	bl sub_020A818C
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #9
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x48
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov95_022475C4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x64
	bl ov95_022475E4
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x5a
	bl ov95_022475E4
	str r0, [r4, #0x44]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	thumb_func_end ov95_0224BAE8

	thumb_func_start ov95_0224BB8C
ov95_0224BB8C: ; 0x0224BB8C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0224BB94:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0224BB9E
	bl sub_02021BD4
_0224BB9E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224BB94
	add r6, #0x48
	add r0, r6, #0
	bl ov95_022475A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_0224BB8C

	thumb_func_start ov95_0224BBB0
ov95_0224BBB0: ; 0x0224BBB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x14
	str r2, [sp]
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _0224BBF6
	str r5, [r4, #0]
	lsl r0, r6, #0xc
	str r0, [r4, #4]
	ldr r0, [sp]
	lsl r1, r0, #0xc
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r1, r7, #0
	bl sub_020E1F6C
	str r0, [r4, #0xc]
	ldr r0, _0224BBF8 ; =ov95_0224BC30
	str r7, [r4, #0x10]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0x7c]
	ldr r0, _0224BBFC ; =0x04000050
	mov r1, #1
	add r2, r6, #0
	bl sub_020BF578
_0224BBF6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BBF8: .word ov95_0224BC30
_0224BBFC: .word 0x04000050
	thumb_func_end ov95_0224BBB0

	thumb_func_start ov95_0224BC00
ov95_0224BC00: ; 0x0224BC00
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	bne _0224BC0A
	mov r0, #1
	bx lr
_0224BC0A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224BC00

	thumb_func_start ov95_0224BC10
ov95_0224BC10: ; 0x0224BC10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0224BC2C
	bl sub_0201CED0
	bl ov95_022476C8
	ldr r0, [r4, #0x7c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x7c]
_0224BC2C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224BC10

	thumb_func_start ov95_0224BC30
ov95_0224BC30: ; 0x0224BC30
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _0224BC52
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, _0224BC68 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_020BF578
	pop {r4, pc}
_0224BC52:
	ldr r2, [r4, #8]
	ldr r0, _0224BC68 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_020BF578
	ldr r0, [r4, #0]
	bl ov95_0224BC10
	pop {r4, pc}
	nop
_0224BC68: .word 0x04000050
	thumb_func_end ov95_0224BC30

	thumb_func_start ov95_0224BC6C
ov95_0224BC6C: ; 0x0224BC6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	beq _0224BCDA
	mov r1, #0
	str r1, [r4, #4]
	str r6, [r4, #0]
	ldr r0, [r5, #0x74]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x78]
	str r0, [r4, #0x14]
	str r5, [r4, #8]
	ldr r0, _0224BCE0 ; =0x000018CC
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0x14
	str r0, [r4, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #0x3a]
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x14]
	bl ov95_022479AC
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov95_022479A8
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247958
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _0224BCE4 ; =ov95_0224BD5C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r6, #0]
	cmp r0, #0
	bne _0224BCDE
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0224BCDA:
	mov r0, #0
	str r0, [r6, #0]
_0224BCDE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224BCE0: .word 0x000018CC
_0224BCE4: .word ov95_0224BD5C
	thumb_func_end ov95_0224BC6C

	thumb_func_start ov95_0224BCE8
ov95_0224BCE8: ; 0x0224BCE8
	push {r4, lr}
	add r4, r0, #0
	beq _0224BD02
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224BD02:
	pop {r4, pc}
	thumb_func_end ov95_0224BCE8

	thumb_func_start ov95_0224BD04
ov95_0224BD04: ; 0x0224BD04
	add r1, r0, #0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0224BD26
	mov r0, #0x3a
	ldrsh r2, [r1, r0]
	mov r0, #0x3c
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #0x3a]
	ldr r0, [r1, #0x40]
	sub r0, r0, #1
	str r0, [r1, #0x40]
	bne _0224BD26
	mov r0, #0x3e
	ldrsh r0, [r1, r0]
	strh r0, [r1, #0x3a]
_0224BD26:
	mov r0, #0x36
	ldrsh r2, [r1, r0]
	mov r0, #0x3a
	ldrsh r0, [r1, r0]
	ldr r3, _0224BD3C ; =ov95_02247990
	add r0, r2, r0
	strh r0, [r1, #0x36]
	ldr r0, [r1, #0x14]
	add r1, #0x34
	bx r3
	nop
_0224BD3C: .word ov95_02247990
	thumb_func_end ov95_0224BD04

	thumb_func_start ov95_0224BD40
ov95_0224BD40: ; 0x0224BD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	beq _0224BD58
	mov r0, #0x3a
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	add r1, r4, #0
	bl sub_020E1F6C
	strh r0, [r5, #0x3c]
	str r4, [r5, #0x40]
_0224BD58:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224BD40

	thumb_func_start ov95_0224BD5C
ov95_0224BD5C: ; 0x0224BD5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_0224BD04
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _0224BE6A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BD7A: ; jump table
	.short _0224BD86 - _0224BD7A - 2 ; case 0
	.short _0224BDB6 - _0224BD7A - 2 ; case 1
	.short _0224BDCE - _0224BD7A - 2 ; case 2
	.short _0224BDE4 - _0224BD7A - 2 ; case 3
	.short _0224BE2C - _0224BD7A - 2 ; case 4
	.short _0224BE5A - _0224BD7A - 2 ; case 5
_0224BD86:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224BDA6
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	asr r1, r1, #0xc
	bl ov95_022479AC
	pop {r3, r4, r5, pc}
_0224BDA6:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ov95_022479AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDB6:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x1e
	bl ov95_0224BD40
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDCE:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xa
	ble _0224BE6A
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDE4:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	add r0, r1, r0
	str r0, [r4, #0x28]
	mov r0, #0x1e
	ldr r1, [r4, #0x30]
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x30]
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247968
	ldr r1, [r4, #0x28]
	ldr r0, _0224BE6C ; =0xFFFF5000
	cmp r1, r0
	bge _0224BE6A
	ldr r0, _0224BE70 ; =0x000005E6
	bl sub_02005748
	mov r0, #0
	ldr r1, [r4, #0x30]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov95_0224BBB0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BE2C:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	add r1, r1, r0
	mov r0, #0x13
	lsl r0, r0, #0xc
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _0224BE3E
	str r0, [r4, #0x28]
_0224BE3E:
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247968
	mov r0, #0x13
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _0224BE6A
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BE5A:
	ldr r0, [r4, #8]
	bl ov95_0224BC00
	cmp r0, #0
	beq _0224BE6A
	add r0, r5, #0
	bl ov95_0224BCE8
_0224BE6A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BE6C: .word 0xFFFF5000
_0224BE70: .word 0x000005E6
	thumb_func_end ov95_0224BD5C
	; 0x0224BE74
