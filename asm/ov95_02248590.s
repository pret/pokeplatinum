	.include "macros/function.inc"
	.include "include/ov95_02248590.inc"

	

	.text


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
	bl OS_DisableInterrupts
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
	bl OS_RestoreInterrupts
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
	bl G3X_Reset
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
	bl OS_DisableInterrupts
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
	bl OS_RestoreInterrupts
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
	bl MIi_CpuClear32
	add r0, r5, #0
	mov r1, #0x60
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
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
	bl NNS_G3dInit
	bl G3X_InitMtxStack
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
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _02248C74 ; =0x000043FF
	ldr r2, _02248C78 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _02248C7C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _02248C80 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
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
	bl NNS_G2dInitImagePaletteProxy
	add r0, sp, #0x3c
	bl NNS_G2dInitImageProxy
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
	bl _u32_div_f
	add r6, r1, #0
	add r6, #0xc
	bl sub_0201D35C
	mov r1, #0x71
	lsl r1, r1, #2
	bl _u32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	sub r0, r6, r0
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _ull_mul
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
	bl _ull_mul
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
	bl _s32_div_f
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

	.rodata


	.global Unk_ov95_0224BF84
Unk_ov95_0224BF84: ; 0x0224BF84
	.incbin "incbin/overlay95_rodata.bin", 0x110, 0x118 - 0x110

	.global Unk_ov95_0224BF8C
Unk_ov95_0224BF8C: ; 0x0224BF8C
	.incbin "incbin/overlay95_rodata.bin", 0x118, 0x128 - 0x118

	.global Unk_ov95_0224BF9C
Unk_ov95_0224BF9C: ; 0x0224BF9C
	.incbin "incbin/overlay95_rodata.bin", 0x128, 0x138 - 0x128

	.global Unk_ov95_0224BFAC
Unk_ov95_0224BFAC: ; 0x0224BFAC
	.incbin "incbin/overlay95_rodata.bin", 0x138, 0x148 - 0x138

	.global Unk_ov95_0224BFBC
Unk_ov95_0224BFBC: ; 0x0224BFBC
	.incbin "incbin/overlay95_rodata.bin", 0x148, 0x164 - 0x148

	.global Unk_ov95_0224BFD8
Unk_ov95_0224BFD8: ; 0x0224BFD8
	.incbin "incbin/overlay95_rodata.bin", 0x164, 0x180 - 0x164

	.global Unk_ov95_0224BFF4
Unk_ov95_0224BFF4: ; 0x0224BFF4
	.incbin "incbin/overlay95_rodata.bin", 0x180, 0x28


	.bss


	.global Unk_ov95_0224C364
Unk_ov95_0224C364: ; 0x0224C364
	.space 0x4

	.global Unk_ov95_0224C368
Unk_ov95_0224C368: ; 0x0224C368
	.space 0x8

