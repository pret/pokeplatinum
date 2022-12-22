	.include "macros/function.inc"
	.include "include/ov95_02246C20.inc"

	

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
	bl NNS_G2dInitOamManagerModule
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
	bl OS_DisableInterrupts
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
	bl OS_RestoreInterrupts
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
	bl MIi_CpuClear16
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
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246FFC ; =0x04001050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
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
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	add r0, r4, #0
	mov r1, #0x60
	bl DC_FlushRange
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
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
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	add r0, r4, #0
	mov r1, #0x60
	bl DC_FlushRange
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
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
	bl DC_FlushRange
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
	bl GF_AssertFail
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

	.rodata


	.global Unk_ov95_0224BE74
Unk_ov95_0224BE74: ; 0x0224BE74
	.incbin "incbin/overlay95_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov95_0224BE7C
Unk_ov95_0224BE7C: ; 0x0224BE7C
	.incbin "incbin/overlay95_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov95_0224BE8C
Unk_ov95_0224BE8C: ; 0x0224BE8C
	.incbin "incbin/overlay95_rodata.bin", 0x18, 0x70


	.bss


	.global Unk_ov95_0224C2E0
Unk_ov95_0224C2E0: ; 0x0224C2E0
	.space 0x4

	.global Unk_ov95_0224C2E4
Unk_ov95_0224C2E4: ; 0x0224C2E4
	.space 0x80

