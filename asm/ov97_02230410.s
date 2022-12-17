	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov97_02230410
ov97_02230410: ; 0x02230410
	push {r3, lr}
	sub sp, #8
	bl ov97_02230438
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xf
	mov r2, #0xc
	mov r3, #0xe
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_02230410

	thumb_func_start ov97_02230438
ov97_02230438: ; 0x02230438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223049C ; =0x00002DC4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230448
	bl sub_02021BD4
_02230448:
	ldr r0, _022304A0 ; =0x00002DC8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230454
	bl sub_02021BD4
_02230454:
	ldr r0, _022304A0 ; =0x00002DC8
	mov r1, #0
	str r1, [r4, r0]
	ldr r2, [r4, r0]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223046C
	bl sub_02021BD4
_0223046C:
	ldr r0, _022304A4 ; =0x00002DD0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230478
	bl sub_02021BD4
_02230478:
	ldr r0, _022304A8 ; =0x00002DD4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230484
	bl sub_02021BD4
_02230484:
	ldr r1, _022304A8 ; =0x00002DD4
	mov r0, #0
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	sub r1, #8
	str r0, [r4, r1]
	bl ov97_02237DA0
	pop {r4, pc}
	; .align 2, 0
_0223049C: .word 0x00002DC4
_022304A0: .word 0x00002DC8
_022304A4: .word 0x00002DD0
_022304A8: .word 0x00002DD4
	thumb_func_end ov97_02230438

	thumb_func_start ov97_022304AC
ov97_022304AC: ; 0x022304AC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022304F4 ; =0x00003D4C
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, r1]
	mov r1, #1
	str r1, [sp]
	ldr r1, _022304F8 ; =0x00002DC4
	mov r2, #0x48
	ldr r1, [r4, r1]
	mov r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304F8 ; =0x00002DC4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021E80
	mov r0, #0
	ldr r1, _022304FC ; =0x00002DC8
	str r0, [sp]
	ldr r1, [r4, r1]
	mov r2, #0xb8
	mov r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304FC ; =0x00002DC8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021E80
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022304F4: .word 0x00003D4C
_022304F8: .word 0x00002DC4
_022304FC: .word 0x00002DC8
	thumb_func_end ov97_022304AC

	thumb_func_start ov97_02230500
ov97_02230500: ; 0x02230500
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _02230516
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200DC9C
_02230516:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230500

	thumb_func_start ov97_02230518
ov97_02230518: ; 0x02230518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0223052E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200E084
_0223052E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230518

	thumb_func_start ov97_02230530
ov97_02230530: ; 0x02230530
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _022305D8 ; =0x00002BCC
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _02230548
	bl sub_02013A3C
_02230548:
	ldr r0, _022305DC ; =0x00002BC8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230558
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_02230558:
	add r0, r7, #0
	mov r1, #0x57
	bl sub_02013A04
	ldr r1, _022305D8 ; =0x00002BCC
	ldr r2, _022305E0 ; =0x000001A5
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _022305E4 ; =0x00002A04
	mov r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _02230592
_0223057A:
	ldr r0, _022305D8 ; =0x00002BCC
	ldr r1, _022305E4 ; =0x00002A04
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _0223057A
_02230592:
	ldr r0, _022305E4 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	ldr r4, _022305E8 ; =0x0223E660
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _022305D8 ; =0x00002BCC
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #0x57
	str r0, [sp, #4]
	add r0, sp, #4
	strh r7, [r0, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r2, [sp, #0x38]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0200112C
	ldr r1, _022305DC ; =0x00002BC8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022305D8: .word 0x00002BCC
_022305DC: .word 0x00002BC8
_022305E0: .word 0x000001A5
_022305E4: .word 0x00002A04
_022305E8: .word 0x0223E660
	thumb_func_end ov97_02230530

	thumb_func_start ov97_022305EC
ov97_022305EC: ; 0x022305EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0223065C ; =0x000001A5
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	add r4, r0, #0
	mov r0, #0x57
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #1
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0x57
	bl sub_0200B29C
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230660 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223065C: .word 0x000001A5
_02230660: .word 0x00010200
	thumb_func_end ov97_022305EC

	thumb_func_start ov97_02230664
ov97_02230664: ; 0x02230664
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x57
	mov r3, #0x1e
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xb
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x57
	mov r3, #6
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x10
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x57
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #0x11
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x57
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #0x12
	add r2, r4, #0
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xc
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02230664

	thumb_func_start ov97_022306F4
ov97_022306F4: ; 0x022306F4
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230720 ; =0x00002BD0
	mov r1, #0x2e
	add r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230724 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #0xa
	bl ov97_02230E04
	mov r0, #0xd
	pop {r4, pc}
	nop
_02230720: .word 0x00002BD0
_02230724: .word 0x00002BE0
	thumb_func_end ov97_022306F4

	thumb_func_start ov97_02230728
ov97_02230728: ; 0x02230728
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r1, _0223076C ; =0x00002BA0
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DDA8
	cmp r0, #1
	ldr r0, _02230770 ; =0x00002BD0
	bne _02230750
	add r0, r4, r0
	mov r1, #0x3e
	bl ov97_022305EC
	b _02230758
_02230750:
	add r0, r4, r0
	mov r1, #0x3d
	bl ov97_022305EC
_02230758:
	ldr r3, _02230774 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #9
	bl ov97_02230E04
	mov r0, #0xc
	pop {r4, pc}
	; .align 2, 0
_0223076C: .word 0x00002BA0
_02230770: .word 0x00002BD0
_02230774: .word 0x00002BE0
	thumb_func_end ov97_02230728

	thumb_func_start ov97_02230778
ov97_02230778: ; 0x02230778
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230820 ; =0x00002BD0
	mov r1, #0x3f
	add r0, r4, r0
	bl ov97_022305EC
	ldr r0, _02230820 ; =0x00002BD0
	mov r1, #0x13
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _02230824 ; =0x00003D50
	str r0, [r4, r1]
	ldr r1, _02230828 ; =0x00002BA0
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DDA8
	cmp r0, #1
	ldr r1, _02230828 ; =0x00002BA0
	bne _022307BA
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DC7C
	b _022307C4
_022307BA:
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DCB8
_022307C4:
	ldr r0, _0223082C ; =0x00002BA4
	ldr r0, [r4, r0]
	bl sub_020246E0
	ldr r0, _02230824 ; =0x00003D50
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _02230828 ; =0x00002BA0
	ldr r0, [r4, r0]
	bl sub_0202DD88
	cmp r0, #0
	bne _022307E4
	mov r0, #0x1a
	pop {r4, pc}
_022307E4:
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov97_02230F20
	mov r1, #0xaf
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r1, #0x10
	add r0, r4, r1
	mov r1, #0x24
	bl ov97_022305EC
	ldr r3, _02230830 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #8
	bl ov97_02230E04
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_02230820: .word 0x00002BD0
_02230824: .word 0x00003D50
_02230828: .word 0x00002BA0
_0223082C: .word 0x00002BA4
_02230830: .word 0x00002BE0
	thumb_func_end ov97_02230778

	thumb_func_start ov97_02230834
ov97_02230834: ; 0x02230834
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230860 ; =0x00002BD0
	mov r1, #0x24
	add r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230864 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #8
	bl ov97_02230E04
	mov r0, #5
	pop {r4, pc}
	nop
_02230860: .word 0x00002BD0
_02230864: .word 0x00002BE0
	thumb_func_end ov97_02230834

	thumb_func_start ov97_02230868
ov97_02230868: ; 0x02230868
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022308A4 ; =0x00002BCC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r1, #0
	ldr r0, _022308A4 ; =0x00002BCC
	add r2, r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001384
	ldr r0, _022308A8 ; =0x00002BC8
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x18
	add r0, r4, r0
	bl ov97_02230500
	ldr r0, _022308AC ; =0x00002BE0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022308AC ; =0x00002BE0
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
_022308A4: .word 0x00002BCC
_022308A8: .word 0x00002BC8
_022308AC: .word 0x00002BE0
	thumb_func_end ov97_02230868

	thumb_func_start ov97_022308B0
ov97_022308B0: ; 0x022308B0
	mov r0, #1
	bx lr
	thumb_func_end ov97_022308B0

	thumb_func_start ov97_022308B4
ov97_022308B4: ; 0x022308B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0]
	mov r0, #0x25
	add r4, r2, #0
	bl sub_02023790
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #0x24
	add r6, r0, #0
	bl sub_02023D8C
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022308B4

	thumb_func_start ov97_02230904
ov97_02230904: ; 0x02230904
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	add r6, r1, #0
	ldr r1, [r4, r0]
	add r5, r2, #0
	lsl r2, r1, #2
	add r3, r4, r2
	add r2, r0, #0
	sub r2, #0xc
	ldr r3, [r3, r2]
	ldr r2, _02230978 ; =0x00000152
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	bne _0223092C
	mov r2, #0x27
	b _02230942
_0223092C:
	sub r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223093C
	bl sub_0202DDA8
	cmp r0, #1
	bne _02230940
_0223093C:
	mov r2, #0x25
	b _02230942
_02230940:
	mov r2, #0x26
_02230942:
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r3, [r4, #0]
	bl sub_0200B29C
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02230978: .word 0x00000152
	thumb_func_end ov97_02230904

	thumb_func_start ov97_0223097C
ov97_0223097C: ; 0x0223097C
	push {r4, lr}
	sub sp, #0x18
	mov r1, #0xaf
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, r1]
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, sp, #8
	bl sub_020CC27C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	mov r2, #0x7d
	ldr r3, [sp, #8]
	lsl r2, r2, #4
	add r2, r3, r2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	mov r1, #1
	bl sub_0200C2E0
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x10]
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov97_0223097C

	thumb_func_start ov97_022309E4
ov97_022309E4: ; 0x022309E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xfb
	mov r1, #0x57
	add r4, r2, #0
	bl sub_02023790
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r1]
	mov r1, #0x55
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #0xfa
	add r6, r0, #0
	bl sub_02023D8C
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022309E4

	thumb_func_start ov97_02230A34
ov97_02230A34: ; 0x02230A34
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r3, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	add r6, r1, #0
	ldr r1, [r3, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r3, r1
	ldr r1, [r1, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	add r5, r2, #0
	ldrb r2, [r1, r0]
	cmp r2, #0xff
	bne _02230A8C
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	mov r2, #0x33
	mov r3, #0x57
	bl sub_0200B29C
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_02230A8C:
	cmp r2, #0
	beq _02230AAA
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r3, r0]
	mov r3, #3
	bl sub_0200B60C
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230AAA:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02230A34

	thumb_func_start ov97_02230AB0
ov97_02230AB0: ; 0x02230AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0
	add r7, r1, #0
	add r1, r0, #1
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x34]
	str r0, [sp, #0x14]
	mov r0, #0xaf
	lsl r0, r0, #6
	str r2, [sp, #0x18]
	ldr r2, [r5, r0]
	sub r0, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldrb r0, [r2, r0]
	add r4, r1, #0
	add r6, sp, #0x14
	cmp r0, #0
	beq _02230AF6
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x38]
	add r4, r1, #1
	lsl r1, r1, #3
	ldr r2, [r2, #0x3c]
	add r3, r6, r1
	str r0, [r6, r1]
	str r2, [r3, #4]
_02230AF6:
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x40]
	lsl r1, r4, #3
	add r6, sp, #0x14
	str r0, [r6, r1]
	ldr r2, [r2, #0x44]
	add r3, r6, r1
	add r0, r4, #1
	lsl r1, r0, #3
	str r2, [r3, #4]
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x48]
	ldr r2, [r2, #0x4c]
	str r0, [r6, r1]
	add r3, r6, r1
	ldr r0, _02230B88 ; =0x00002B9C
	str r2, [r3, #4]
	ldr r6, [r5, r0]
	add r0, r7, #0
	bl sub_0201ACF4
	add r0, r7, #0
	bl sub_0201A8FC
	add r1, r4, #2
	mov r0, #4
	sub r0, r0, r1
	ldr r1, [r6, #8]
	lsl r0, r0, #1
	add r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0xc]
	mov r2, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r6, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _02230B8C ; =0x00002B98
	add r1, r7, #0
	ldr r0, [r5, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230B90 ; =0x000029FC
	ldr r3, [r6, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, r4, #2
	add r3, r7, #0
	bl ov97_02230530
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02230B84: .word 0x0223E610
_02230B88: .word 0x00002B9C
_02230B8C: .word 0x00002B98
_02230B90: .word 0x000029FC
	thumb_func_end ov97_02230AB0

	thumb_func_start ov97_02230B94
ov97_02230B94: ; 0x02230B94
	push {r3, lr}
	add r3, r1, #0
	mov r1, #1
	str r1, [sp]
	ldr r1, _02230BA8 ; =0x0223E610
	mov r2, #2
	bl ov97_02230530
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02230BA8: .word 0x0223E610
	thumb_func_end ov97_02230B94

	thumb_func_start ov97_02230BAC
ov97_02230BAC: ; 0x02230BAC
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0
	str r1, [sp]
	ldr r1, _02230BC0 ; =0x0223E630
	mov r2, #2
	bl ov97_02230530
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02230BC0: .word 0x0223E630
	thumb_func_end ov97_02230BAC

	thumb_func_start ov97_02230BC4
ov97_02230BC4: ; 0x02230BC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02230BE8 ; =0x00002BD0
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #2
	bl ov97_022305EC
	mov r0, #0
	str r0, [sp]
	ldr r1, _02230BEC ; =0x0223E620
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov97_02230530
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230BE8: .word 0x00002BD0
_02230BEC: .word 0x0223E620
	thumb_func_end ov97_02230BC4

	thumb_func_start ov97_02230BF0
ov97_02230BF0: ; 0x02230BF0
	push {r3, lr}
	sub sp, #8
	mov r3, #1
	str r3, [sp]
	mov r1, #0x2a
	str r3, [sp, #4]
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	mov r1, #0
	add r2, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02230BF0

	thumb_func_start ov97_02230C10
ov97_02230C10: ; 0x02230C10
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x57
	str r0, [sp, #8]
	add r6, r2, #0
	mov r0, #0
	add r4, r3, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02230C38
	mov r0, #0x1b
	str r0, [r4, #0]
_02230C38:
	mov r0, #0xb1
	lsl r0, r0, #6
	str r6, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02230C10

	thumb_func_start ov97_02230C44
ov97_02230C44: ; 0x02230C44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r2, [sp, #0x14]
	ldr r2, _02230DE8 ; =0x000001A5
	ldr r3, [r5, #0]
	mov r0, #1
	mov r1, #0x1a
	ldr r4, _02230DEC ; =0x0223E680
	bl sub_0200B144
	ldr r1, _02230DF0 ; =0x00002A04
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r1, _02230DF4 ; =0x00002BC4
	ldr r0, [sp, #0x14]
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov97_02230F98
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, _02230DF8 ; =0x00002A08
	add r7, r4, #0
	str r5, [sp, #0x1c]
	add r6, r5, r0
_02230C84:
	ldr r1, [r7, #0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _02230CA6
	cmp r1, #2
	beq _02230CA6
	ldr r1, [sp, #0x1c]
	ldr r0, _02230DF8 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02230CA6
	add r0, r6, #0
	bl sub_0201ACF4
	add r0, r6, #0
	bl sub_0201A8FC
_02230CA6:
	ldr r0, [sp, #0x1c]
	add r7, #0x30
	add r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #0x13
	blo _02230C84
	mov r0, #0x31
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02230DF8 ; =0x00002A08
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	add r6, r5, r0
_02230CCA:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _02230DAA
	ldr r1, [sp, #0x24]
	ldr r0, _02230DF8 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02230D1A
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	ldr r0, _02230DFC ; =0x00002B48
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	add r1, r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230E00 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02230D1A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x24]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	cmp r0, #1
	bne _02230D96
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230D96
	mov r0, #0x2a
	ldr r1, _02230DF0 ; =0x00002A04
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5, #0]
	bl sub_0200B29C
	add r7, r0, #0
	mov r0, #0
	ldr r3, [r4, #0x28]
	mvn r0, r0
	cmp r3, r0
	bne _02230D76
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	mov r2, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r3, r0, #0
_02230D76:
	ldr r0, [r4, #0x2c]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
_02230D96:
	add r0, r6, #0
	bl sub_0201A954
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, r2
	str r0, [sp, #0x2c]
_02230DAA:
	ldr r0, [sp, #0x24]
	add r4, #0x30
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x13
	blo _02230CCA
	ldr r0, _02230DF0 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02230DE2
	add r0, r5, #0
	bl ov97_022310FC
_02230DE2:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02230DE8: .word 0x000001A5
_02230DEC: .word 0x0223E680
_02230DF0: .word 0x00002A04
_02230DF4: .word 0x00002BC4
_02230DF8: .word 0x00002A08
_02230DFC: .word 0x00002B48
_02230E00: .word 0x000029FC
	thumb_func_end ov97_02230C44

	thumb_func_start ov97_02230E04
ov97_02230E04: ; 0x02230E04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r3, #0
	mov r3, #0x30
	ldr r0, _02230F04 ; =0x0223E680
	mul r3, r2
	add r6, r1, #0
	add r4, r0, r3
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02230E4E
	ldr r0, [r4, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230F08 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02230E4E:
	ldr r1, [r4, #0x1c]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02230E7C
	ldr r2, _02230F0C ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _02230F10 ; =0x00002A04
	str r0, [r5, r1]
	mov r0, #0x57
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
_02230E7C:
	ldr r0, _02230F14 ; =0x00002B98
	ldr r2, _02230F18 ; =0x00010200
	str r7, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230ED6
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0x57
	bl sub_0200B29C
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, _02230F10 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
_02230ED6:
	ldr r0, _02230F1C ; =0x00002BD0
	add r0, r5, r0
	cmp r6, r0
	bne _02230EEC
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x13
	mov r3, #0xa
	bl sub_0200E060
	b _02230EF8
_02230EEC:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DC48
_02230EF8:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mul r0, r1
	add r0, r7, r0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230F04: .word 0x0223E680
_02230F08: .word 0x000029FC
_02230F0C: .word 0x000001A5
_02230F10: .word 0x00002A04
_02230F14: .word 0x00002B98
_02230F18: .word 0x00010200
_02230F1C: .word 0x00002BD0
	thumb_func_end ov97_02230E04

	thumb_func_start ov97_02230F20
ov97_02230F20: ; 0x02230F20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r4, #0
_02230F2A:
	add r4, r4, r6
	cmp r4, #3
	bne _02230F32
	mov r4, #0
_02230F32:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02230F3C
	mov r4, #2
_02230F3C:
	cmp r7, r4
	beq _02230F4E
	ldr r0, _02230F54 ; =0x00002BA0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202DD5C
	cmp r0, #0
	beq _02230F2A
_02230F4E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F54: .word 0x00002BA0
	thumb_func_end ov97_02230F20

	thumb_func_start ov97_02230F58
ov97_02230F58: ; 0x02230F58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	mov r2, #1
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	ldr r3, [r5, #0]
	mov r0, #0x74
	bl sub_02006FE8
	add r1, sp, #4
	add r7, r0, #0
	bl sub_020A7248
	ldr r0, _02230F94 ; =0x000029FC
	ldr r2, [sp, #4]
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r6, #0
	bl sub_02019574
	add r0, r7, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F94: .word 0x000029FC
	thumb_func_end ov97_02230F58

	thumb_func_start ov97_02230F98
ov97_02230F98: ; 0x02230F98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	add r4, r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #3
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #6
	bl sub_02006E3C
	cmp r4, #0
	beq _02230FDE
	cmp r4, #1
	beq _02230FFE
	b _0223101C
_02230FDE:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #4
	bl sub_02006E60
	b _0223101C
_02230FFE:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #5
	bl sub_02006E60
_0223101C:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0xec
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r3, #3
	bl sub_02006E3C
	mov r2, #3
	add r0, r5, #0
	mov r1, #2
	lsl r3, r2, #9
	bl ov97_02230F58
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, _02231084 ; =0x000029FC
	mov r2, #0
	ldr r0, [r5, r0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, _02231084 ; =0x000029FC
	mov r1, #3
	ldr r0, [r5, r0]
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231084: .word 0x000029FC
	thumb_func_end ov97_02230F98

	thumb_func_start ov97_02231088
ov97_02231088: ; 0x02231088
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	ldr r1, _022310F0 ; =0x00002BC8
	ldr r0, [r0, r1]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022310AE
	add r0, r0, #1
	cmp r4, r0
	beq _022310EC
	b _022310C8
_022310AE:
	ldr r0, _022310F4 ; =0x000005DC
	bl sub_02005748
	cmp r6, #0
	beq _022310EC
	add r0, r7, #0
	blx r6
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022310C8:
	ldr r0, _022310F4 ; =0x000005DC
	bl sub_02005748
	cmp r4, #0
	beq _022310EC
	cmp r4, #0x1e
	bhs _022310DA
	str r4, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022310DA:
	ldr r0, _022310F8 ; =0x0223F1BC
	str r4, [r0, #0]
	add r0, r7, #0
	blx r4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5, #0]
_022310EC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022310F0: .word 0x00002BC8
_022310F4: .word 0x000005DC
_022310F8: .word 0x0223F1BC
	thumb_func_end ov97_02231088

	thumb_func_start ov97_022310FC
ov97_022310FC: ; 0x022310FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _02231218 ; =0x00002DCC
	add r6, r0, #0
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	add r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0223115C
	add r1, #8
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	bl ov97_02237A60
	cmp r0, #1
	bne _02231128
	add r0, r6, #0
	bl ov97_02230438
_02231128:
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x1a
	mov r2, #0x17
	mov r3, #0x19
	bl ov97_02237B0C
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x13
	mov r3, #0x60
	bl sub_02006E84
_0223115C:
	mov r0, #0xb2
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0xc]
	add r5, r6, #0
	mov r7, #0x64
_02231168:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	lsl r0, r0, #2
	add r1, r6, r0
	ldr r0, _0223121C ; =0x00002BB4
	ldr r0, [r1, r0]
	add r1, r0, r4
	ldr r0, _02231220 ; =0x0000034A
	ldrh r0, [r1, r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _02231192
	ldr r0, _02231218 ; =0x00002DCC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022311FC
	mov r1, #0
	bl sub_02021CAC
	b _022311FC
_02231192:
	ldr r0, [sp, #0xc]
	ldr r1, _02231218 ; =0x00002DCC
	add r0, #0xa
	str r0, [sp]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x10]
	mov r0, #0
	mov r3, #0x10
	bl ov97_02237D14
	ldr r1, _02231218 ; =0x00002DCC
	str r0, [r5, r1]
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl sub_02079D8C
	add r1, r0, #0
	ldr r0, [r6, #0]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x13
	add r3, sp, #0x18
	bl sub_02006F50
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x18]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r7, #5
	lsl r2, r2, #8
	bl sub_020C02BC
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _02231218 ; =0x00002DCC
	add r1, r1, #3
	ldr r0, [r5, r0]
	bl sub_02021E90
	ldr r0, [sp, #0x14]
	bl sub_020181C4
_022311FC:
	ldr r0, [sp, #0xc]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r5, r5, #4
	add r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r7, #0x10
	cmp r0, #3
	blt _02231168
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02231218: .word 0x00002DCC
_0223121C: .word 0x00002BB4
_02231220: .word 0x0000034A
	thumb_func_end ov97_022310FC

	thumb_func_start ov97_02231224
ov97_02231224: ; 0x02231224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x57
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r1, _02231288 ; =0x00003D54
	add r0, r4, #0
	mov r2, #0x57
	bl sub_0200681C
	ldr r2, _02231288 ; =0x00003D54
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x57
	bl sub_02018340
	ldr r1, _0223128C ; =0x000029FC
	str r0, [r4, r1]
	mov r0, #0x57
	str r0, [r4, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0xaf
	mov r1, #2
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r1, #1
	add r0, #0x7c
	str r1, [r4, r0]
	mov r0, #0x57
	bl ov97_02237694
	mov r2, #3
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02231288: .word 0x00003D54
_0223128C: .word 0x000029FC
	thumb_func_end ov97_02231224

	thumb_func_start ov97_02231290
ov97_02231290: ; 0x02231290
	push {r4, lr}
	add r4, r1, #0
	bl sub_02013BA8
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B68
	ldr r1, _022312B0 ; =0x04000010
	mov r2, #8
	mov r3, #1
	bl sub_02013BB8
	pop {r4, pc}
	nop
_022312B0: .word 0x04000010
	thumb_func_end ov97_02231290

	thumb_func_start ov97_022312B4
ov97_022312B4: ; 0x022312B4
	push {r3, r4, r5, lr}
	ldr r4, _02231308 ; =0x00003130
	ldr r5, _0223130C ; =0x00000C14
	add r4, r0, r4
	add r0, r5, #0
	str r1, [r4, r5]
	sub r0, #0xc
	str r2, [r4, r0]
	add r0, r5, #0
	sub r0, #8
	sub r5, #0x14
	str r3, [r4, r0]
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _022312E6
	mov r2, #6
	lsl r2, r2, #8
	mov r0, #0x57
	add r1, r4, #0
	add r2, r4, r2
	bl sub_02013B10
	mov r1, #3
	lsl r1, r1, #0xa
	str r0, [r4, r1]
_022312E6:
	ldr r0, _02231310 ; =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022312FE
	mov r2, #1
	ldr r0, _02231314 ; =ov97_02231290
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200DA04
	ldr r1, _02231310 ; =0x00000C04
	str r0, [r4, r1]
_022312FE:
	mov r0, #0xc1
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231308: .word 0x00003130
_0223130C: .word 0x00000C14
_02231310: .word 0x00000C04
_02231314: .word ov97_02231290
	thumb_func_end ov97_022312B4

	thumb_func_start ov97_02231318
ov97_02231318: ; 0x02231318
	push {r4, lr}
	ldr r1, _0223134C ; =0x00003130
	add r4, r0, r1
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223132C
	bl sub_02013B40
_0223132C:
	ldr r0, _02231350 ; =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231338
	bl sub_0200DA58
_02231338:
	mov r0, #3
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	bl sub_02013BA8
	pop {r4, pc}
	nop
_0223134C: .word 0x00003130
_02231350: .word 0x00000C04
	thumb_func_end ov97_02231318

	thumb_func_start ov97_02231354
ov97_02231354: ; 0x02231354
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0223145C ; =0x00003130
	mov r5, #0x15
	add r4, r0, r1
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	lsl r5, r5, #0xe
	cmp r1, #0
	bne _0223136C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223136C:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _022313BA
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	add r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r2, r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	mov r1, #0xfa
	lsl r1, r1, #2
	cmp r2, r1
	ble _022313F4
	mov r2, #0
	add r1, r0, #0
	str r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
	sub r0, r0, #4
	mov r5, #0xa8
	str r2, [r4, r0]
	b _022313F4
_022313BA:
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	sub r1, r0, #4
	str r2, [r4, r1]
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xa
	cmp r1, r2
	bge _022313F4
	mov r1, #0
	lsl r3, r2, #2
	add r2, r0, #0
	str r1, [r4, r0]
	sub r2, #8
	str r3, [r4, r2]
	sub r0, r0, #4
	str r1, [r4, r0]
_022313F4:
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B54
	add r2, r0, #0
	mov r0, #0x54
	add r3, r0, #0
	add r3, #0xfc
_02231406:
	asr r1, r5, #0xb
	lsr r1, r1, #0x14
	add r1, r5, r1
	asr r1, r1, #0xc
	bpl _02231412
	mov r1, #0
_02231412:
	cmp r1, #0xa8
	ble _02231418
	mov r1, #0xa8
_02231418:
	lsl r6, r3, #1
	add r7, r2, r6
	sub r6, r1, r0
	strh r6, [r7, #6]
	ldrh r6, [r7, #6]
	sub r1, r0, r1
	add r3, r3, #4
	strh r6, [r7, #2]
	mov r6, #0xa8
	sub r6, r6, r0
	lsl r6, r6, #3
	add r6, r2, r6
	strh r1, [r6, #6]
	ldrh r1, [r6, #6]
	add r0, r0, #1
	strh r1, [r6, #2]
	ldr r1, _02231460 ; =0x00000C08
	ldr r1, [r4, r1]
	add r5, r5, r1
	cmp r0, #0xa8
	blt _02231406
	mov r1, #6
	add r0, r2, #0
	lsl r1, r1, #8
	bl sub_020C2C54
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B94
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223145C: .word 0x00003130
_02231460: .word 0x00000C08
	thumb_func_end ov97_02231354

	thumb_func_start ov97_02231464
ov97_02231464: ; 0x02231464
	push {r4, lr}
	add r4, r0, #0
	bl ov97_0223847C
	sub r0, r0, #2
	cmp r0, #1
	bhi _0223147E
	ldr r0, _02231480 ; =0x0000061B
	bl sub_02005748
	ldr r0, _02231484 ; =0x00003D48
	mov r1, #0
	str r1, [r4, r0]
_0223147E:
	pop {r4, pc}
	; .align 2, 0
_02231480: .word 0x0000061B
_02231484: .word 0x00003D48
	thumb_func_end ov97_02231464

	thumb_func_start ov97_02231488
ov97_02231488: ; 0x02231488
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #3
	blt _0223149A
	bl sub_02022974
_0223149A:
	mov r0, #0x1f
	bl sub_02025C48
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r2, [r1, r0]
	mov r0, #0x35
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314BC
	add r1, r1, #1
	strb r1, [r2, r0]
_022314BC:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r2, [r1, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314D8
	sub r1, r1, #1
	strb r1, [r2, r0]
_022314D8:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, _022314F0 ; =0x00002BA4
	ldr r0, [r4, r0]
	bl ov97_0223846C
	ldr r1, _022314F4 ; =ov97_02231464
	ldr r0, _022314F8 ; =0x00003D48
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_022314F0: .word 0x00002BA4
_022314F4: .word ov97_02231464
_022314F8: .word 0x00003D48
	thumb_func_end ov97_02231488

	thumb_func_start ov97_022314FC
ov97_022314FC: ; 0x022314FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _022315FC ; =0x021BF67C
	add r6, r1, #0
	ldr r3, [r2, #0x48]
	ldr r1, _02231600 ; =0x00003D4C
	add r5, r0, #0
	mov r2, #0x10
	ldr r0, [r5, r1]
	tst r2, r3
	beq _0223151A
	cmp r0, #1
	beq _0223151A
	mov r2, #1
	str r2, [r5, r1]
_0223151A:
	ldr r1, _022315FC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _02231530
	ldr r1, _02231600 ; =0x00003D4C
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _02231530
	mov r2, #0
	str r2, [r5, r1]
_02231530:
	ldr r1, _02231600 ; =0x00003D4C
	ldr r1, [r5, r1]
	cmp r0, r1
	beq _02231560
	cmp r1, #0
	bne _02231540
	mov r1, #1
	b _02231542
_02231540:
	mov r1, #0
_02231542:
	ldr r0, _02231604 ; =0x00002DC4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02231600 ; =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231556
	mov r1, #1
	b _02231558
_02231556:
	mov r1, #0
_02231558:
	ldr r0, _02231608 ; =0x00002DC8
	ldr r0, [r5, r0]
	bl sub_02021D6C
_02231560:
	ldr r0, _022315FC ; =0x021BF67C
	mov r4, #0
	ldr r1, [r0, #0x48]
	mov r0, #2
	add r2, r1, #0
	tst r2, r0
	beq _02231572
	add r4, r0, #0
	b _022315A2
_02231572:
	mov r0, #1
	and r1, r0
	beq _02231588
	cmp r6, #0
	beq _02231588
	ldr r2, _02231600 ; =0x00003D4C
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _02231588
	add r4, r0, #0
	b _022315A2
_02231588:
	cmp r1, #0
	beq _02231598
	ldr r0, _02231600 ; =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02231598
	mov r4, #2
	b _022315A2
_02231598:
	cmp r1, #0
	beq _022315A2
	cmp r6, #0
	bne _022315A2
	mov r4, #3
_022315A2:
	cmp r4, #1
	bne _022315DA
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xab
	bl sub_020364F0
	mov r3, #0xa
	ldr r1, _02231610 ; =0x00002C34
	mov r0, #1
	str r0, [r5, r1]
	mov r0, #0x15
	sub r1, #0x64
	str r0, [r7, #0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x11
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231614 ; =0x00002BD0
	mov r1, #0x13
	add r0, r5, r0
	bl sub_0200E7FC
	ldr r1, _02231618 ; =0x00003D50
	str r0, [r5, r1]
_022315DA:
	cmp r4, #2
	bne _022315EE
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x13
	bl ov97_02231F1C
_022315EE:
	cmp r4, #3
	bne _022315F8
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
_022315F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022315FC: .word 0x021BF67C
_02231600: .word 0x00003D4C
_02231604: .word 0x00002DC4
_02231608: .word 0x00002DC8
_0223160C: .word 0x000005DC
_02231610: .word 0x00002C34
_02231614: .word 0x00002BD0
_02231618: .word 0x00003D50
	thumb_func_end ov97_022314FC

	thumb_func_start ov97_0223161C
ov97_0223161C: ; 0x0223161C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0x1d
	bls _02231632
	b _02231B88
_02231632:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223163E: ; jump table
	.short _0223167A - _0223163E - 2 ; case 0
	.short _022316E8 - _0223163E - 2 ; case 1
	.short _022316FA - _0223163E - 2 ; case 2
	.short _02231770 - _0223163E - 2 ; case 3
	.short _022317F0 - _0223163E - 2 ; case 4
	.short _02231818 - _0223163E - 2 ; case 5
	.short _02231838 - _0223163E - 2 ; case 6
	.short _0223186E - _0223163E - 2 ; case 7
	.short _02231892 - _0223163E - 2 ; case 8
	.short _022318B8 - _0223163E - 2 ; case 9
	.short _022318E4 - _0223163E - 2 ; case 10
	.short _0223191E - _0223163E - 2 ; case 11
	.short _02231942 - _0223163E - 2 ; case 12
	.short _0223194E - _0223163E - 2 ; case 13
	.short _0223195A - _0223163E - 2 ; case 14
	.short _0223196A - _0223163E - 2 ; case 15
	.short _02231976 - _0223163E - 2 ; case 16
	.short _022319B8 - _0223163E - 2 ; case 17
	.short _02231A10 - _0223163E - 2 ; case 18
	.short _02231A6E - _0223163E - 2 ; case 19
	.short _02231A7A - _0223163E - 2 ; case 20
	.short _02231AC8 - _0223163E - 2 ; case 21
	.short _02231AB6 - _0223163E - 2 ; case 22
	.short _02231AFC - _0223163E - 2 ; case 23
	.short _02231B10 - _0223163E - 2 ; case 24
	.short _02231B4A - _0223163E - 2 ; case 25
	.short _02231B5A - _0223163E - 2 ; case 26
	.short _02231B66 - _0223163E - 2 ; case 27
	.short _02231B78 - _0223163E - 2 ; case 28
	.short _02231B88 - _0223163E - 2 ; case 29
_0223167A:
	add r0, r6, #0
	bl sub_02006840
	ldr r1, [r0, #8]
	ldr r0, _022319D0 ; =0x00002BA4
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	bl sub_0202442C
	ldr r1, _022319D4 ; =0x00002BA0
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	bl sub_02025E44
	ldr r1, _022319D8 ; =0x00002BA8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_02027B50
	ldr r1, _022319DC ; =0x00002BAC
	str r0, [r4, r1]
	sub r1, #0xc
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_0202DB00
	ldr r1, _022319E0 ; =0x00002BB4
	str r0, [r4, r1]
	sub r1, #0x14
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0202DB00
	ldr r1, _022319E4 ; =0x00002BB8
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_0202DB00
	ldr r1, _022319E8 ; =0x00002BBC
	mov r2, #1
	str r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov97_02230F20
	mov r1, #0xaf
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5, #0]
	b _02231B88
_022316E8:
	bl ov97_02232054
	ldr r0, _022319EC ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02232074
	mov r0, #2
	str r0, [r5, #0]
	b _02231B88
_022316FA:
	bl sub_0201D710
	add r0, r4, #0
	mov r1, #0
	bl ov97_02230F98
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x57
	bl sub_02002E7C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r2, #1
	ldr r0, [r4, r0]
	mov r3, #0xd
	bl sub_0200DAA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, _022319DC ; =0x00002BAC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x13
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r3, #0xa
	ldr r0, [r4, r0]
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231770:
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r6, [r4, r1]
	ldr r1, _022319F0 ; =0x021BF67C
	mov r2, #0x40
	ldr r1, [r1, #0x48]
	add r3, r1, #0
	tst r3, r2
	beq _0223178E
	add r1, r6, #0
	sub r2, #0x41
	bl ov97_02230F20
	add r6, r0, #0
	b _022317CA
_0223178E:
	mov r2, #0x80
	tst r2, r1
	beq _022317A0
	add r1, r6, #0
	mov r2, #1
	bl ov97_02230F20
	add r6, r0, #0
	b _022317CA
_022317A0:
	mov r0, #2
	tst r0, r1
	beq _022317BA
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	add r3, r5, #0
	bl ov97_02230C10
	b _022317CA
_022317BA:
	mov r0, #1
	tst r0, r1
	beq _022317CA
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	str r0, [r5, #0]
_022317CA:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, r6
	bne _022317D6
	b _02231B88
_022317D6:
	mov r0, #6
	lsl r0, r0, #8
	bl sub_02005748
	mov r0, #0xaf
	lsl r0, r0, #6
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	b _02231B88
_022317F0:
	ldr r1, _022319F8 ; =0x00002BD0
	mov r3, #0xa
	add r1, r4, r1
	mov r2, #7
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r3, _022319FC ; =0x00002BF0
	mov r2, #8
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0x10
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02230E04
	mov r0, #5
	str r0, [r5, #0]
	b _02231B88
_02231818:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov97_02231088
	ldr r0, _022319F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022318EC
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xb
	str r0, [r5, #0]
	b _02231B88
_02231838:
	mov r0, #6
	lsl r0, r0, #8
	bl sub_02005748
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231A00 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230500
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov97_022312B4
	mov r0, #7
	str r0, [r5, #0]
	b _02231B88
_0223186E:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_02230C44
	ldr r2, _02231A04 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov97_022312B4
	mov r0, #8
	str r0, [r5, #0]
	b _02231B88
_02231892:
	bl ov97_02231354
	ldr r0, _022319F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r1, r0
	beq _022318EC
	lsl r0, r0, #9
	bl sub_02005748
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov97_022312B4
	mov r0, #9
	str r0, [r5, #0]
	b _02231B88
_022318B8:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	ldr r2, _02231A04 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov97_022312B4
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xa
	str r0, [r5, #0]
	b _02231B88
_022318E4:
	bl ov97_02231354
	cmp r0, #0
	bne _022318EE
_022318EC:
	b _02231B88
_022318EE:
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x13
	mov r3, #0xa
	bl sub_0200E060
	ldr r0, _02231A00 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov97_02231318
	mov r0, #5
	str r0, [r5, #0]
	b _02231B88
_0223191E:
	bl ov97_02230868
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #3
	str r0, [r5, #0]
	b _02231B88
_02231942:
	ldr r2, _02231A08 ; =ov97_02230834
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223194E:
	ldr r2, _02231A08 ; =ov97_02230834
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223195A:
	ldr r1, _02231A00 ; =0x00002BE0
	ldr r2, _02231A0C ; =0x00010200
	add r1, r4, r1
	bl ov97_02230BC4
	mov r0, #0xd
	str r0, [r5, #0]
	b _02231B88
_0223196A:
	mov r1, #0
	mov r2, #0x10
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231976:
	bl ov97_02230868
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	bl ov97_02230C44
	ldr r0, _022319EC ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02230664
	add r0, r4, #0
	bl ov97_02230410
	add r0, r4, #0
	bl ov97_022304AC
	mov r0, #0x11
	str r0, [r5, #0]
	b _02231B88
_022319B8:
	bl ov97_02231BD8
	bl sub_02039734
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
	nop
_022319D0: .word 0x00002BA4
_022319D4: .word 0x00002BA0
_022319D8: .word 0x00002BA8
_022319DC: .word 0x00002BAC
_022319E0: .word 0x00002BB4
_022319E4: .word 0x00002BB8
_022319E8: .word 0x00002BBC
_022319EC: .word 0x000029FC
_022319F0: .word 0x021BF67C
_022319F4: .word 0x000005DC
_022319F8: .word 0x00002BD0
_022319FC: .word 0x00002BF0
_02231A00: .word 0x00002BE0
_02231A04: .word 0x00708000
_02231A08: .word ov97_02230834
_02231A0C: .word 0x00010200
_02231A10:
	mov r6, #0
	add r0, r6, #0
	bl sub_02035D78
	cmp r0, #0
	beq _02231A62
	add r0, r4, #0
	add r0, #0x90
	bl sub_02034150
	ldr r1, _02231BAC ; =0x00002B08
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02231CA0
	add r6, r0, #0
	bne _02231A52
	ldr r0, _02231BB0 ; =0x00002C30
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231A52
	ldr r0, _02231BAC ; =0x00002B08
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02231BAC ; =0x00002B08
	add r0, r4, r0
	bl sub_0201A954
	ldr r0, _02231BB0 ; =0x00002C30
	mov r1, #0
	str r1, [r4, r0]
_02231A52:
	ldr r1, _02231BB4 ; =0x00002AF8
	add r0, r4, #0
	add r1, r4, r1
	add r2, r6, #0
	bl ov97_02231E78
	ldr r0, _02231BB0 ; =0x00002C30
	str r6, [r4, r0]
_02231A62:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov97_022314FC
	b _02231B88
_02231A6E:
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231A7A:
	bl ov97_02230438
	ldr r0, _02231BB8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231BBC ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230500
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x57
	bl sub_02002E7C
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231AB6:
	bl sub_02036780
	cmp r0, #0
	bne _02231B88
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _02231B88
_02231AC8:
	ldr r0, _02231BC0 ; =0x00002C34
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02231B88
	ldr r1, _02231BC4 ; =0x00002DD8
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x90
	add r1, r4, r1
	bl ov97_0223829C
	ldr r0, _02231BC4 ; =0x00002DD8
	mov r1, #0xd6
	add r0, r4, r0
	lsl r1, r1, #2
	bl ov97_0222D1F0
	add r0, r4, #0
	bl ov97_02231488
	mov r0, #0x17
	str r0, [r5, #0]
	b _02231B88
_02231AFC:
	bl ov97_02238528
	cmp r0, #4
	bne _02231B88
	mov r0, #0x93
	bl sub_020364F0
	mov r0, #0x18
	str r0, [r5, #0]
	b _02231B88
_02231B10:
	bl ov97_02231C84
	cmp r0, #0
	beq _02231B22
	mov r0, #0x93
	bl sub_02036540
	cmp r0, #1
	bne _02231B88
_02231B22:
	bl ov97_022384F4
	ldr r1, _02231BB8 ; =0x00002BD0
	mov r3, #0xa
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0x12
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231BC8 ; =0x00003D50
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x19
	bl ov97_02231F1C
	b _02231B88
_02231B4A:
	ldr r0, _02231BCC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02231B88
	mov r0, #0x13
	str r0, [r5, #0]
	b _02231B88
_02231B5A:
	mov r1, #0
	mov r2, #0x1c
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231B66:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02231B88
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _02231B88
_02231B78:
	bl ov97_02230438
	add r0, r4, #0
	bl ov97_02231318
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02231B88:
	ldr r0, _02231BD0 ; =0x00002C44
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231B94
	bl sub_020219F8
_02231B94:
	bl ov97_02237CA0
	ldr r0, _02231BD4 ; =0x00003D48
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231BA4
	add r0, r4, #0
	blx r1
_02231BA4:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02231BAC: .word 0x00002B08
_02231BB0: .word 0x00002C30
_02231BB4: .word 0x00002AF8
_02231BB8: .word 0x00002BD0
_02231BBC: .word 0x00002BE0
_02231BC0: .word 0x00002C34
_02231BC4: .word 0x00002DD8
_02231BC8: .word 0x00003D50
_02231BCC: .word 0x021BF67C
_02231BD0: .word 0x00002C44
_02231BD4: .word 0x00003D48
	thumb_func_end ov97_0223161C

	thumb_func_start ov97_02231BD8
ov97_02231BD8: ; 0x02231BD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r2, #0xd6
	lsl r1, r1, #2
	add r1, r5, r1
	sub r0, #0xc
	ldr r4, [r1, r0]
	add r0, r5, #0
	add r0, #0xe0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020D50B8
	mov r1, #0x41
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0x90
	add r1, r4, r1
	mov r2, #0x50
	bl sub_020D50B8
	ldr r0, _02231C40 ; =0x00000428
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xde
	ldrb r1, [r0]
	mov r0, #0x10
	mov r2, #0xf
	bic r1, r0
	add r0, r5, #0
	add r0, #0xde
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xde
	ldrb r1, [r0]
	mov r0, #0x20
	orr r1, r0
	add r0, r5, #0
	add r0, #0xde
	strb r1, [r0]
	ldr r1, _02231C44 ; =0x00002BA4
	add r0, r5, #4
	ldr r1, [r5, r1]
	bl ov97_0222D1C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231C40: .word 0x00000428
_02231C44: .word 0x00002BA4
	thumb_func_end ov97_02231BD8

	thumb_func_start ov97_02231C48
ov97_02231C48: ; 0x02231C48
	push {r3, r4}
	ldr r3, [r0, #0]
	ldr r1, [r0, #4]
	add r2, r0, #0
	mov r4, #0
	cmp r1, r3
	bge _02231C5C
	add r3, r1, #0
	mov r4, #1
	add r2, r0, #4
_02231C5C:
	ldr r1, [r0, #8]
	cmp r1, r3
	bge _02231C6A
	add r2, r0, #0
	add r3, r1, #0
	mov r4, #2
	add r2, #8
_02231C6A:
	ldr r1, [r0, #0xc]
	cmp r1, r3
	bge _02231C76
	add r2, r0, #0
	mov r4, #3
	add r2, #0xc
_02231C76:
	ldr r0, _02231C80 ; =0x3FFF0001
	str r0, [r2, #0]
	add r0, r4, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02231C80: .word 0x3FFF0001
	thumb_func_end ov97_02231C48

	thumb_func_start ov97_02231C84
ov97_02231C84: ; 0x02231C84
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_02231C8A:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02231C96
	add r5, r5, #1
_02231C96:
	add r4, r4, #1
	cmp r4, #5
	blt _02231C8A
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02231C84

	thumb_func_start ov97_02231CA0
ov97_02231CA0: ; 0x02231CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	mov r6, #0
	mov r0, #1
	str r1, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #0x24]
	add r4, r5, #4
_02231CB2:
	ldr r0, [sp, #0x24]
	bl sub_02032EE8
	cmp r0, #0
	bne _02231CD4
	ldr r0, _02231E5C ; =0x00002C08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231CC6
	add r7, r7, #1
_02231CC6:
	ldr r0, _02231E5C ; =0x00002C08
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _02231E60 ; =0x3FFF0001
	add r0, #0x14
	str r1, [r4, r0]
	b _02231CFC
_02231CD4:
	ldr r1, _02231E5C ; =0x00002C08
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _02231CFA
	ldr r1, _02231E5C ; =0x00002C08
	add r7, r7, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r1, #0x34
	ldr r1, [r5, r1]
	add r0, #0x34
	add r2, r1, #1
	ldr r0, [r5, r0]
	ldr r1, _02231E64 ; =0x00002C3C
	add r6, r6, #1
	str r2, [r5, r1]
	sub r1, #0x20
	str r0, [r4, r1]
	b _02231CFC
_02231CFA:
	add r6, r6, #1
_02231CFC:
	ldr r0, [sp, #0x24]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _02231CB2
	cmp r7, #0
	bne _02231D12
	add sp, #0x48
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231D12:
	ldr r1, _02231E68 ; =0x00002C20
	ldr r0, [r5, r1]
	str r0, [sp, #0x38]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x3c]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x40]
	ldr r0, [r5, r1]
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x28]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x2c]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x30]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x34]
	mov r0, #0x57
	bl sub_0200B358
	add r4, r0, #0
	ldr r2, _02231E6C ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	str r0, [sp, #0x1c]
	mov r5, #0
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_0201ADA4
	add r0, r5, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _02231E40
	add r0, sp, #0x28
	str r0, [sp, #0x18]
_02231D78:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r7, r0, #0
	beq _02231E30
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_0200B498
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x35
	mov r3, #0x57
	bl sub_0200B29C
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	str r5, [sp]
	bne _02231DC2
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E70 ; =0x00050600
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl sub_0201D78C
	b _02231DDC
_02231DC2:
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl sub_0201D78C
_02231DDC:
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_02025F20
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #5
	bl sub_0200B60C
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x36
	mov r3, #0x57
	bl sub_0200B29C
	add r7, r0, #0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E74 ; =0x000E0F00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r7, #0
	mov r3, #0x50
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r5, #0x18
_02231E30:
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _02231D78
_02231E40:
	cmp r6, #0
	beq _02231E4A
	ldr r0, [sp, #0x10]
	bl sub_0201A954
_02231E4A:
	ldr r0, [sp, #0x1c]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r6, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02231E5C: .word 0x00002C08
_02231E60: .word 0x3FFF0001
_02231E64: .word 0x00002C3C
_02231E68: .word 0x00002C20
_02231E6C: .word 0x000001A5
_02231E70: .word 0x00050600
_02231E74: .word 0x000E0F00
	thumb_func_end ov97_02231CA0

	thumb_func_start ov97_02231E78
ov97_02231E78: ; 0x02231E78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02231F0C ; =0x00002BF4
	add r4, r1, #0
	str r2, [r5, r0]
	ldr r2, _02231F10 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _02231F14 ; =0x00002A04
	str r0, [r5, r1]
	mov r0, #0x57
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #1
	str r3, [sp]
	mov r0, #0x2a
	ldr r2, _02231F0C ; =0x00002BF4
	str r3, [sp, #4]
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0
	bl sub_0200B60C
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x38
	mov r3, #0x57
	bl sub_0200B29C
	add r6, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231F18 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02231F14 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231F0C: .word 0x00002BF4
_02231F10: .word 0x000001A5
_02231F14: .word 0x00002A04
_02231F18: .word 0x00010200
	thumb_func_end ov97_02231E78

	thumb_func_start ov97_02231F1C
ov97_02231F1C: ; 0x02231F1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0xb1
	lsl r0, r0, #6
	str r6, [r5, r0]
	mov r0, #0x16
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02231F1C

	thumb_func_start ov97_02231F38
ov97_02231F38: ; 0x02231F38
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r7, r0, #0
	ldr r0, _02231FE4 ; =0x00002A08
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_02231F4A:
	ldr r0, _02231FE4 ; =0x00002A08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231F5E
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_02231F5E:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #0x13
	blo _02231F4A
	ldr r0, _02231FE8 ; =0x00002BD0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F7E
	add r0, r7, r0
	bl sub_0201ACF4
	ldr r0, _02231FE8 ; =0x00002BD0
	add r0, r7, r0
	bl sub_0201A8FC
_02231F7E:
	ldr r0, _02231FEC ; =0x00002BE0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F94
	add r0, r7, r0
	bl sub_0201ACF4
	ldr r0, _02231FEC ; =0x00002BE0
	add r0, r7, r0
	bl sub_0201A8FC
_02231F94:
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #0
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #2
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #3
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	ldr r0, [r7, r0]
	bl sub_020181C4
	ldr r0, _02231FF4 ; =0x00000061
	ldr r1, _02231FF8 ; =0x0223D71C
	bl sub_02000EC4
	mov r0, #0x5b
	bl sub_0201807C
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0x57
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231FE4: .word 0x00002A08
_02231FE8: .word 0x00002BD0
_02231FEC: .word 0x00002BE0
_02231FF0: .word 0x000029FC
_02231FF4: .word 0x00000061
_02231FF8: .word 0x0223D71C
	thumb_func_end ov97_02231F38

	thumb_func_start ov97_02231FFC
ov97_02231FFC: ; 0x02231FFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov97_02232074
	ldr r1, _02232048 ; =0x00003D54
	add r0, r5, #0
	bl sub_02018184
	ldr r2, _02232048 ; =0x00003D54
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0223204C ; =0x000029FC
	mov r1, #0x1e
	str r6, [r4, r0]
	mov r0, #0
	lsl r1, r1, #4
	add r2, r5, #0
	str r5, [r4, #0]
	bl sub_02002E7C
	ldr r0, _02232050 ; =0x00002BB4
	mov r2, #0
	str r7, [r4, r0]
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov97_02230C44
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232048: .word 0x00003D54
_0223204C: .word 0x000029FC
_02232050: .word 0x00002BB4
	thumb_func_end ov97_02231FFC

	.rodata


	.global Unk_ov97_0223D7AC
Unk_ov97_0223D7AC: ; 0x0223D7AC
	.incbin "incbin/overlay97_rodata.bin", 0x138, 0x10


	.data


	.global Unk_ov97_0223E610
Unk_ov97_0223E610: ; 0x0223E610
	.incbin "incbin/overlay97_data.bin", 0x6D0, 0x6E0 - 0x6D0

	.global Unk_ov97_0223E620
Unk_ov97_0223E620: ; 0x0223E620
	.incbin "incbin/overlay97_data.bin", 0x6E0, 0x6F0 - 0x6E0

	.global Unk_ov97_0223E630
Unk_ov97_0223E630: ; 0x0223E630
	.incbin "incbin/overlay97_data.bin", 0x6F0, 0x700 - 0x6F0

	.global Unk_ov97_0223E640
Unk_ov97_0223E640: ; 0x0223E640
	.incbin "incbin/overlay97_data.bin", 0x700, 0x720 - 0x700

	.global Unk_ov97_0223E660
Unk_ov97_0223E660: ; 0x0223E660
	.incbin "incbin/overlay97_data.bin", 0x720, 0x740 - 0x720

	.global Unk_ov97_0223E680
Unk_ov97_0223E680: ; 0x0223E680
	.incbin "incbin/overlay97_data.bin", 0x740, 0x3A0


	.bss


	.global Unk_ov97_0223F1BC
Unk_ov97_0223F1BC: ; 0x0223F1BC
	.space 0x4

