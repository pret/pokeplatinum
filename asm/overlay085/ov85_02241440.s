	.include "macros/function.inc"
	.include "overlay085/ov85_02241440.inc"

	

	.text


	thumb_func_start ov85_02241440
ov85_02241440: ; 0x02241440
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02241540 ; =0xFFFFE0FF
	ldr r3, _02241544 ; =0x04001000
	and r1, r0
	str r1, [r2, #0]
	ldr r1, [r3, #0]
	and r0, r1
	str r0, [r3, #0]
	add r0, r2, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	mov r0, #3
	mov r1, #0x24
	lsr r2, r2, #9
	bl sub_02017FC8
	mov r1, #0x81
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x24
	bl sub_0200681C
	mov r2, #0x81
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl memset
	add r0, r4, #0
	bl sub_02006840
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x24
	bl sub_02018340
	str r0, [r5, #0]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x24
	ldrb r0, [r0, #8]
	bl sub_020973B8
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x24
	bl sub_0208C120
	mov r0, #0x35
	mov r1, #0x24
	bl sub_02006C24
	add r4, r0, #0
	bl ov85_02241614
	ldr r0, [r5, #0]
	bl ov85_02241634
	add r0, r5, #0
	add r1, r4, #0
	bl ov85_02241718
	bl ov85_022417CC
	add r0, r5, #0
	bl ov85_022417E4
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r5, #0
	add r1, r4, #0
	bl ov85_02241E60
	add r0, r5, #0
	bl ov85_0224183C
	add r0, r5, #0
	bl ov85_02241CD0
	add r0, r5, #0
	bl ov85_02242038
	add r0, r5, #0
	bl ov85_02242218
	ldr r0, _02241548 ; =ov85_022415F4
	add r1, r5, #0
	bl sub_02017798
	bl sub_020397E4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241540: .word 0xFFFFE0FF
_02241544: .word 0x04001000
_02241548: .word ov85_022415F4
	thumb_func_end ov85_02241440

	thumb_func_start ov85_0224154C
ov85_0224154C: ; 0x0224154C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	bhi _02241594
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241568: ; jump table
	.short _02241570 - _02241568 - 2 ; case 0
	.short _02241578 - _02241568 - 2 ; case 1
	.short _02241580 - _02241568 - 2 ; case 2
	.short _02241588 - _02241568 - 2 ; case 3
_02241570:
	bl ov85_02241CE8
	str r0, [r4, #0]
	b _02241594
_02241578:
	bl ov85_02241D10
	str r0, [r4, #0]
	b _02241594
_02241580:
	bl ov85_02241DF8
	str r0, [r4, #0]
	b _02241594
_02241588:
	bl ov85_02241DEC
	cmp r0, #1
	bne _02241594
	mov r0, #1
	pop {r3, r4, r5, pc}
_02241594:
	add r0, r5, #0
	bl ov85_02241FF0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov85_0224154C

	thumb_func_start ov85_022415A0
ov85_022415A0: ; 0x022415A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r4, #4
	bl ov85_02241860
	ldr r0, [r4, #0]
	bl ov85_022416E8
	bl sub_0201E530
	add r0, r4, #0
	bl ov85_0224181C
	add r0, r4, #0
	bl ov85_0224202C
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x24
	bl sub_0201807C
	ldr r0, _022415F0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022415F0: .word 0x04000050
	thumb_func_end ov85_022415A0

	thumb_func_start ov85_022415F4
ov85_022415F4: ; 0x022415F4
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	ldr r3, _0224160C ; =0x027E0000
	ldr r1, _02241610 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0224160C: .word 0x027E0000
_02241610: .word 0x00003FF8
	thumb_func_end ov85_022415F4

	thumb_func_start ov85_02241614
ov85_02241614: ; 0x02241614
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02241630 ; =0x022428B0
	add r3, sp, #0
	mov r2, #5
_0224161E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224161E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02241630: .word 0x022428B0
	thumb_func_end ov85_02241614

	thumb_func_start ov85_02241634
ov85_02241634: ; 0x02241634
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _022416D8 ; =0x0224284C
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	bl ov85_02241F5C
	ldr r5, _022416DC ; =0x02242894
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _022416E0 ; =0x0224285C
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #8
	bl sub_0201C63C
	ldr r5, _022416E4 ; =0x02242878
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x24
	bl sub_02019690
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_022416D8: .word 0x0224284C
_022416DC: .word 0x02242894
_022416E0: .word 0x0224285C
_022416E4: .word 0x02242878
	thumb_func_end ov85_02241634

	thumb_func_start ov85_022416E8
ov85_022416E8: ; 0x022416E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	mov r0, #0x24
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov85_022416E8

	thumb_func_start ov85_02241718
ov85_02241718: ; 0x02241718
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	add r5, r1, #0
	mov r1, #2
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	mov r3, #3
	bl sub_0200710C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02007130
	mov r0, #0x24
	mov r1, #0x80
	bl sub_02018144
	add r5, r0, #0
	ldr r0, _022417C8 ; =0x00003001
	mov r2, #0
	add r3, r5, #0
_02241788:
	add r1, r2, r0
	strh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x40
	blo _02241788
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, r5, #0
	mov r3, #2
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019448
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x24
	bl sub_02002E7C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022417C8: .word 0x00003001
	thumb_func_end ov85_02241718

	thumb_func_start ov85_022417CC
ov85_022417CC: ; 0x022417CC
	push {r3, lr}
	mov r0, #8
	str r0, [sp]
	ldr r0, _022417E0 ; =0x04000050
	mov r1, #1
	mov r2, #0xe
	mov r3, #0x17
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	; .align 2, 0
_022417E0: .word 0x04000050
	thumb_func_end ov85_022417CC

	thumb_func_start ov85_022417E4
ov85_022417E4: ; 0x022417E4
	push {r4, lr}
	ldr r2, _02241818 ; =0x0000018E
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x24
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	mov r3, #0x24
	bl sub_0200C440
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	mov r0, #0x24
	bl sub_0200B358
	add r4, #0xc8
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_02241818: .word 0x0000018E
	thumb_func_end ov85_022417E4

	thumb_func_start ov85_0224181C
ov85_0224181C: ; 0x0224181C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_0200C560
	add r4, #0xc8
	ldr r0, [r4, #0]
	bl sub_0200B3F0
	pop {r4, pc}
	thumb_func_end ov85_0224181C

	thumb_func_start ov85_0224183C
ov85_0224183C: ; 0x0224183C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r4, _0224185C ; =0x022428D8
	mov r6, #0
	add r5, r7, #4
_02241846:
	ldr r0, [r7, #0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0xc
	blo _02241846
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224185C: .word 0x022428D8
	thumb_func_end ov85_0224183C

	thumb_func_start ov85_02241860
ov85_02241860: ; 0x02241860
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02241866:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blo _02241866
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov85_02241860

	thumb_func_start ov85_02241878
ov85_02241878: ; 0x02241878
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #4
	add r0, #0xc4
	lsl r4, r1, #4
	ldr r0, [r0, #0]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	add r3, r0, #0
	mov r1, #0
	lsl r3, r3, #3
	sub r3, r3, r7
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r5, r4
	lsr r3, r3, #1
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov85_02241878

	thumb_func_start ov85_022418CC
ov85_022418CC: ; 0x022418CC
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #4
	bl sub_0201ADA4
	mov r1, #0
	ldr r3, _022418E8 ; =0x00010204
	add r0, r4, #0
	add r2, r1, #0
	bl ov85_02241878
	pop {r4, pc}
	nop
_022418E8: .word 0x00010204
	thumb_func_end ov85_022418CC

	thumb_func_start ov85_022418EC
ov85_022418EC: ; 0x022418EC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, _02241908 ; =0x000F0200
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241908: .word 0x000F0200
	thumb_func_end ov85_022418EC

	thumb_func_start ov85_0224190C
ov85_0224190C: ; 0x0224190C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x34
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, _02241928 ; =0x000F0200
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241928: .word 0x000F0200
	thumb_func_end ov85_0224190C

	thumb_func_start ov85_0224192C
ov85_0224192C: ; 0x0224192C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x44
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, _02241948 ; =0x000F0200
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241948: .word 0x000F0200
	thumb_func_end ov85_0224192C

	thumb_func_start ov85_0224194C
ov85_0224194C: ; 0x0224194C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, _02241968 ; =0x000F0200
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241968: .word 0x000F0200
	thumb_func_end ov85_0224194C

	thumb_func_start ov85_0224196C
ov85_0224196C: ; 0x0224196C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, _02241988 ; =0x000F0200
	add r0, r4, #0
	mov r1, #6
	mov r2, #5
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241988: .word 0x000F0200
	thumb_func_end ov85_0224196C

	thumb_func_start ov85_0224198C
ov85_0224198C: ; 0x0224198C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x14
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0
	bl sub_0200C578
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #6
	mov r1, #0x24
	bl sub_02023790
	mov r3, #2
	add r6, r0, #0
	mov r2, #0x7e
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	ldrb r2, [r2, #8]
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	add r2, r2, #1
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241A54 ; =0x000F0200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0x10
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x24
	ldrb r0, [r0, #8]
	bl sub_0209742C
	add r5, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241A54 ; =0x000F0200
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241A54: .word 0x000F0200
	thumb_func_end ov85_0224198C

	thumb_func_start ov85_02241A58
ov85_02241A58: ; 0x02241A58
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0xb4
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x24
	ldrb r0, [r0, #8]
	bl sub_02097454
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AA4 ; =0x00010200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241AA4: .word 0x00010200
	thumb_func_end ov85_02241A58

	thumb_func_start ov85_02241AA8
ov85_02241AA8: ; 0x02241AA8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0x94
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #0xa
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AF0 ; =0x000F0200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241AF0: .word 0x000F0200
	thumb_func_end ov85_02241AA8

	thumb_func_start ov85_02241AF4
ov85_02241AF4: ; 0x02241AF4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0xa4
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020973D4
	add r1, r0, #0
	beq _02241B18
	sub r1, r1, #1
_02241B18:
	add r4, #0xc4
	ldr r0, [r4, #0]
	add r1, #0xb
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241B4C ; =0x000F0200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241B4C: .word 0x000F0200
	thumb_func_end ov85_02241AF4

	thumb_func_start ov85_02241B50
ov85_02241B50: ; 0x02241B50
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0x74
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0xc4
	ldr r0, [r4, #0]
	mov r1, #8
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241B98 ; =0x000F0200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241B98: .word 0x000F0200
	thumb_func_end ov85_02241B50

	thumb_func_start ov85_02241B9C
ov85_02241B9C: ; 0x02241B9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0x84
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020973D4
	mov r1, #0xfa
	lsl r1, r1, #2
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xfe
	bl _u32_div_f
	add r0, r0, #5
	mov r1, #0xa
	bl _u32_div_f
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0x20
	mov r1, #0x24
	bl sub_02023790
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r3, #2
	bl sub_0200B60C
	add r0, r7, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r0, #0
	add r2, r1, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0xc8
	ldr r0, [r0, #0]
	add r3, r1, #0
	bl sub_0200B60C
	add r5, #0xc8
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241C60 ; =0x000F0200
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02241C60: .word 0x000F0200
	thumb_func_end ov85_02241B9C

	thumb_func_start ov85_02241C64
ov85_02241C64: ; 0x02241C64
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #7
	bhi _02241CCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241C78: ; jump table
	.short _02241C88 - _02241C78 - 2 ; case 0
	.short _02241C8E - _02241C78 - 2 ; case 1
	.short _02241C94 - _02241C78 - 2 ; case 2
	.short _02241C9A - _02241C78 - 2 ; case 3
	.short _02241CA6 - _02241C78 - 2 ; case 4
	.short _02241CB2 - _02241C78 - 2 ; case 5
	.short _02241CBE - _02241C78 - 2 ; case 6
	.short _02241CCA - _02241C78 - 2 ; case 7
_02241C88:
	bl ov85_022418CC
	pop {r4, pc}
_02241C8E:
	bl ov85_022418EC
	pop {r4, pc}
_02241C94:
	bl ov85_0224198C
	pop {r4, pc}
_02241C9A:
	bl ov85_0224196C
	add r0, r4, #0
	bl ov85_0224190C
	pop {r4, pc}
_02241CA6:
	bl ov85_0224192C
	add r0, r4, #0
	bl ov85_0224194C
	pop {r4, pc}
_02241CB2:
	bl ov85_02241B50
	add r0, r4, #0
	bl ov85_02241B9C
	pop {r4, pc}
_02241CBE:
	bl ov85_02241AA8
	add r0, r4, #0
	bl ov85_02241AF4
	pop {r4, pc}
_02241CCA:
	bl ov85_02241A58
_02241CCE:
	pop {r4, pc}
	thumb_func_end ov85_02241C64

	thumb_func_start ov85_02241CD0
ov85_02241CD0: ; 0x02241CD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02241CD6:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov85_02241C64
	add r4, r4, #1
	cmp r4, #8
	blo _02241CD6
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241CD0

	thumb_func_start ov85_02241CE8
ov85_02241CE8: ; 0x02241CE8
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _02241D06
	mov r0, #0
	str r0, [sp]
	ldr r0, _02241D0C ; =0x04000050
	mov r1, #2
	mov r2, #4
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #1
	pop {r3, pc}
_02241D06:
	mov r0, #0
	pop {r3, pc}
	nop
_02241D0C: .word 0x04000050
	thumb_func_end ov85_02241CE8

	thumb_func_start ov85_02241D10
ov85_02241D10: ; 0x02241D10
	push {r4, lr}
	ldr r1, _02241DE4 ; =0x021BF67C
	add r4, r0, #0
	ldr r3, [r1, #0x44]
	mov r2, #0x40
	add r0, r3, #0
	tst r0, r2
	beq _02241D6C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	sub r2, #0x41
	ldrb r1, [r0, #8]
	bl ov85_02241EB8
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	ldrb r2, [r3, #8]
	cmp r2, r0
	beq _02241D68
	strb r0, [r3, #8]
	add r0, r1, #0
	mov r2, #0
	add r0, #9
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	strb r2, [r4, r0]
	ldr r1, [r4, r1]
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _02241D5E
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _02241D5E
	sub r0, r0, #1
	strb r0, [r1, #9]
	b _02241D64
_02241D5E:
	ldrb r0, [r1, #0xa]
	sub r0, r0, #1
	strb r0, [r1, #0xa]
_02241D64:
	mov r0, #2
	pop {r4, pc}
_02241D68:
	mov r0, #1
	pop {r4, pc}
_02241D6C:
	mov r0, #0x80
	tst r0, r3
	beq _02241DC4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	ldrb r1, [r0, #8]
	bl ov85_02241EB8
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	ldrb r2, [r3, #8]
	cmp r2, r0
	beq _02241DC0
	strb r0, [r3, #8]
	add r0, r1, #0
	mov r2, #0
	add r0, #9
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	strb r2, [r4, r0]
	ldr r3, [r4, r1]
	ldrb r0, [r3, #0xa]
	cmp r0, #5
	bne _02241DB6
	ldrb r1, [r3, #9]
	ldrb r0, [r3, #0xb]
	add r2, r1, #0
	add r2, #9
	cmp r2, r0
	bge _02241DB6
	add r0, r1, #1
	strb r0, [r3, #9]
	b _02241DBC
_02241DB6:
	ldrb r0, [r3, #0xa]
	add r0, r0, #1
	strb r0, [r3, #0xa]
_02241DBC:
	mov r0, #2
	pop {r4, pc}
_02241DC0:
	mov r0, #1
	pop {r4, pc}
_02241DC4:
	ldr r1, [r1, #0x48]
	mov r0, #2
	tst r0, r1
	bne _02241DD4
	ldr r0, _02241DE8 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02241DE0
_02241DD4:
	mov r0, #1
	mov r1, #0x24
	bl sub_0208C120
	mov r0, #3
	pop {r4, pc}
_02241DE0:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02241DE4: .word 0x021BF67C
_02241DE8: .word 0x021BF6BC
	thumb_func_end ov85_02241D10

	thumb_func_start ov85_02241DEC
ov85_02241DEC: ; 0x02241DEC
	push {r3, lr}
	bl sub_0200F2AC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov85_02241DEC

	thumb_func_start ov85_02241DF8
ov85_02241DF8: ; 0x02241DF8
	push {r3, r4, r5, lr}
	mov r4, #2
	add r5, r0, #0
	lsl r1, r4, #8
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _02241E1C
	ldr r0, _02241E58 ; =0x00000201
	ldrb r1, [r5, r0]
	add r1, r1, #4
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0x10
	bne _02241E42
	mov r1, #1
	lsl r0, r1, #9
	strb r1, [r5, r0]
	b _02241E42
_02241E1C:
	cmp r1, #1
	bne _02241E2C
	bl ov85_02241F0C
	add r1, r4, #0
	lsl r0, r1, #8
	strb r1, [r5, r0]
	b _02241E42
_02241E2C:
	ldr r0, _02241E58 ; =0x00000201
	ldrb r1, [r5, r0]
	sub r1, r1, #4
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _02241E42
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r5, r0]
	mov r4, #1
_02241E42:
	ldr r0, _02241E58 ; =0x00000201
	ldrb r2, [r5, r0]
	mov r0, #0x10
	sub r1, r0, r2
	lsl r0, r2, #8
	orr r1, r0
	ldr r0, _02241E5C ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02241E58: .word 0x00000201
_02241E5C: .word 0x04000052
	thumb_func_end ov85_02241DF8

	thumb_func_start ov85_02241E60
ov85_02241E60: ; 0x02241E60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldrb r0, [r0, #8]
	bl ov85_02241EB0
	mov r3, #1
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	bl sub_020070E8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #8]
	bl ov85_02241EB4
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x60
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241E60

	thumb_func_start ov85_02241EB0
ov85_02241EB0: ; 0x02241EB0
	add r0, r0, #6
	bx lr
	thumb_func_end ov85_02241EB0

	thumb_func_start ov85_02241EB4
ov85_02241EB4: ; 0x02241EB4
	add r0, #0x46
	bx lr
	thumb_func_end ov85_02241EB4

	thumb_func_start ov85_02241EB8
ov85_02241EB8: ; 0x02241EB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r6, r0, #0
	add r4, r7, #0
	cmp r5, #0
	bge _02241EE6
	cmp r7, #0
	beq _02241F06
_02241ECA:
	sub r4, r4, #1
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02097368
	cmp r0, #1
	bne _02241EE0
	add r7, r4, #0
	add r5, r5, #1
	beq _02241F06
_02241EE0:
	cmp r4, #0
	beq _02241F06
	b _02241ECA
_02241EE6:
	cmp r7, #0x3f
	beq _02241F06
_02241EEA:
	add r4, r4, #1
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02097368
	cmp r0, #1
	bne _02241F02
	lsl r0, r4, #0x10
	lsr r7, r0, #0x10
	sub r5, r5, #1
	beq _02241F06
_02241F02:
	cmp r4, #0x3f
	bne _02241EEA
_02241F06:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov85_02241EB8

	thumb_func_start ov85_02241F0C
ov85_02241F0C: ; 0x02241F0C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x24
	ldrb r0, [r0, #8]
	bl sub_020973B8
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov85_02241CD0
	mov r0, #0x35
	mov r1, #0x24
	bl sub_02006C24
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov85_02241E60
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r4, #0
	bl ov85_02242578
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019448
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241F0C

	thumb_func_start ov85_02241F5C
ov85_02241F5C: ; 0x02241F5C
	push {r3, r4, lr}
	sub sp, #4
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r0, _02241FD4 ; =0x04000060
	ldr r1, _02241FD8 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _02241FDC ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r4, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r4, r2
	mov r2, #8
	orr r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02241FE0 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02241FE4 ; =0x04000540
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, _02241FE8 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _02241FEC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02241FD4: .word 0x04000060
_02241FD8: .word 0xFFFFCFFD
_02241FDC: .word 0x0000CFFB
_02241FE0: .word 0x00007FFF
_02241FE4: .word 0x04000540
_02241FE8: .word 0xBFFF0000
_02241FEC: .word 0x04000008
	thumb_func_end ov85_02241F5C

	thumb_func_start ov85_02241FF0
ov85_02241FF0: ; 0x02241FF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r2, _02242024 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0xd4
	str r3, [r1, #0]
	bl ov85_022420A8
	add r0, r4, #0
	bl ov85_02242144
	ldr r0, _02242028 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_02242024: .word 0x04000440
_02242028: .word 0x04000540
	thumb_func_end ov85_02241FF0

	thumb_func_start ov85_0224202C
ov85_0224202C: ; 0x0224202C
	ldr r3, _02242034 ; =sub_020203B8
	add r0, #0xd0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_02242034: .word sub_020203B8
	thumb_func_end ov85_0224202C

	thumb_func_start ov85_02242038
ov85_02242038: ; 0x02242038
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _022420A0 ; =0x02242840
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #8
	str r0, [r2, #0]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r0, #0x24
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r1, #1
	add r0, r4, #0
	str r1, [sp]
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r3, _022420A4 ; =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #8
	bl sub_02020738
	add r2, r4, #0
	add r2, #0xd0
	mov r1, #0x19
	ldr r2, [r2, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_020206B0
	add r4, #0xd0
	ldr r0, [r4, #0]
	bl sub_020203D4
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_022420A0: .word 0x02242840
_022420A4: .word 0x000005C1
	thumb_func_end ov85_02242038

	thumb_func_start ov85_022420A8
ov85_022420A8: ; 0x022420A8
	push {r4, r5, r6, r7}
	add r4, r0, #0
	ldr r0, _02242110 ; =0x121800C0
	ldr r1, _02242114 ; =0x040004A4
	ldr r2, _02242118 ; =0x00003FE8
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0x5c]
	ldr r0, _0224211C ; =0x0400048C
	mov r3, #0
	sub r1, #0x24
_022420BE:
	str r2, [r1, #0]
	ldrh r7, [r4, #2]
	ldrh r5, [r4]
	ldrh r6, [r4, #4]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #8]
	ldrh r5, [r4, #6]
	ldrh r6, [r4, #0xa]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0x14]
	ldrh r5, [r4, #0x12]
	ldrh r6, [r4, #0x16]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0xe]
	ldrh r5, [r4, #0xc]
	ldrh r6, [r4, #0x10]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	add r3, r3, #1
	add r4, #0x18
	str r6, [r0, #0]
	cmp r3, #4
	blo _022420BE
	ldr r0, _02242120 ; =0x04000504
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02242110: .word 0x121800C0
_02242114: .word 0x040004A4
_02242118: .word 0x00003FE8
_0224211C: .word 0x0400048C
_02242120: .word 0x04000504
	thumb_func_end ov85_022420A8

	thumb_func_start ov85_02242124
ov85_02242124: ; 0x02242124
	mov r2, #0
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0]
	mov r2, #2
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0, #2]
	mov r2, #4
	ldrsh r3, [r0, r2]
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov85_02242124

	thumb_func_start ov85_02242144
ov85_02242144: ; 0x02242144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0x7d
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #4
	beq _02242212
	cmp r1, #3
	bne _0224217E
	ldr r6, [sp]
	mov r5, #0
	sub r0, #0x60
_02242160:
	add r3, r6, #0
	add r4, r6, r0
	add r3, #0xd4
	mov r2, #0xc
_02242168:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _02242168
	add r5, r5, #1
	add r6, #0x18
	cmp r5, #4
	blo _02242160
	b _02242204
_0224217E:
	mov r1, #0
	str r1, [sp, #4]
	add r2, r0, #0
	ldr r1, [sp]
	sub r2, #0xc0
	add r1, r1, r2
	str r1, [sp, #0x14]
	ldr r1, [sp]
	add r2, r0, #0
	str r1, [sp, #0x10]
	add r1, #0xd4
	str r1, [sp, #0x10]
	ldr r1, [sp]
	sub r2, #0xba
	add r1, r1, r2
	add r2, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [sp]
	sub r2, #0xb4
	str r1, [sp, #8]
	add r1, #0xda
	str r1, [sp, #8]
	ldr r1, [sp]
	sub r0, #0xae
	add r4, r1, #0
	add r5, r1, #0
	add r7, r1, r2
	add r4, #0xe0
	add r6, r1, r0
	add r5, #0xe6
_022421BA:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov85_02242124
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl ov85_02242124
	add r0, r4, #0
	add r1, r7, #0
	bl ov85_02242124
	add r0, r5, #0
	add r1, r6, #0
	bl ov85_02242124
	ldr r0, [sp, #0x14]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, #0x18
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _022421BA
_02242204:
	mov r1, #0x7d
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
_02242212:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov85_02242144

	thumb_func_start ov85_02242218
ov85_02242218: ; 0x02242218
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r2, _02242390 ; =0x02242940
	add r5, r0, #0
	ldrh r3, [r2, #0x34]
	add r1, sp, #0
	add r5, #0xd8
	strh r3, [r1, #0x12]
	ldrh r3, [r2, #0x36]
	strh r3, [r1, #0x14]
	ldrh r2, [r2, #0x38]
	strh r2, [r1, #0x16]
	add r2, r0, #0
	ldrh r4, [r1, #0x12]
	add r2, #0xd4
	strh r4, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #0x14]
	add r2, #0xd6
	strh r3, [r2]
	ldrh r2, [r1, #0x16]
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xda
	strh r4, [r5]
	add r5, r0, #0
	add r5, #0xdc
	strh r3, [r5]
	add r5, r0, #0
	add r5, #0xde
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xe0
	strh r4, [r5]
	add r5, r0, #0
	add r5, #0xe2
	strh r3, [r5]
	add r5, r0, #0
	add r5, #0xe4
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xe6
	strh r4, [r5]
	add r4, r0, #0
	add r4, #0xe8
	strh r3, [r4]
	add r3, r0, #0
	add r3, #0xea
	strh r2, [r3]
	ldr r2, _02242394 ; =0x02242980
	add r5, r0, #0
	ldrh r3, [r2, #0x2a]
	add r5, #0xf0
	strh r3, [r1, #0xc]
	ldrh r3, [r2, #0x2c]
	strh r3, [r1, #0xe]
	ldrh r2, [r2, #0x2e]
	strh r2, [r1, #0x10]
	add r2, r0, #0
	ldrh r4, [r1, #0xc]
	add r2, #0xec
	strh r4, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #0xe]
	add r2, #0xee
	strh r3, [r2]
	ldrh r2, [r1, #0x10]
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xf2
	strh r4, [r5]
	add r5, r0, #0
	add r5, #0xf4
	strh r3, [r5]
	add r5, r0, #0
	add r5, #0xf6
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xf8
	strh r4, [r5]
	add r5, r0, #0
	add r5, #0xfa
	strh r3, [r5]
	add r5, r0, #0
	add r5, #0xfc
	strh r2, [r5]
	add r5, r0, #0
	add r5, #0xfe
	strh r4, [r5]
	mov r5, #1
	lsl r5, r5, #8
	strh r3, [r0, r5]
	add r3, r5, #2
	strh r2, [r0, r3]
	ldr r2, _02242398 ; =0x022429C0
	add r4, r5, #6
	ldrh r3, [r2, #0x20]
	strh r3, [r1, #6]
	ldrh r3, [r2, #0x22]
	strh r3, [r1, #8]
	ldrh r2, [r2, #0x24]
	strh r2, [r1, #0xa]
	ldrh r3, [r1, #6]
	add r2, r5, #4
	strh r3, [r0, r2]
	ldrh r2, [r1, #8]
	strh r2, [r0, r4]
	add r4, r5, #0
	ldrh r6, [r1, #0xa]
	add r4, #8
	strh r6, [r0, r4]
	add r4, r5, #0
	add r4, #0xa
	strh r3, [r0, r4]
	add r4, r5, #0
	add r4, #0xc
	strh r2, [r0, r4]
	add r4, r5, #0
	add r4, #0xe
	strh r6, [r0, r4]
	add r4, r5, #0
	add r4, #0x10
	strh r3, [r0, r4]
	add r4, r5, #0
	add r4, #0x12
	strh r2, [r0, r4]
	add r4, r5, #0
	add r4, #0x14
	strh r6, [r0, r4]
	add r4, r5, #0
	add r4, #0x16
	strh r3, [r0, r4]
	add r3, r5, #0
	add r3, #0x18
	strh r2, [r0, r3]
	add r2, r5, #0
	add r2, #0x1a
	strh r6, [r0, r2]
	ldr r2, _0224239C ; =0x02242A00
	add r4, r5, #0
	ldrh r3, [r2, #0x16]
	add r4, #0x1e
	strh r3, [r1]
	ldrh r3, [r2, #0x18]
	strh r3, [r1, #2]
	ldrh r2, [r2, #0x1a]
	strh r2, [r1, #4]
	add r2, r5, #0
	ldrh r3, [r1]
	add r2, #0x1c
	strh r3, [r0, r2]
	ldrh r2, [r1, #2]
	strh r2, [r0, r4]
	add r4, r5, #0
	ldrh r1, [r1, #4]
	add r4, #0x20
	strh r1, [r0, r4]
	add r4, r5, #0
	add r4, #0x22
	strh r3, [r0, r4]
	add r4, r5, #0
	add r4, #0x24
	strh r2, [r0, r4]
	add r4, r5, #0
	add r4, #0x26
	strh r1, [r0, r4]
	add r4, r5, #0
	add r4, #0x28
	strh r3, [r0, r4]
	add r4, r5, #0
	add r4, #0x2a
	strh r2, [r0, r4]
	add r4, r5, #0
	add r4, #0x2c
	strh r1, [r0, r4]
	add r4, r5, #0
	add r4, #0x2e
	strh r3, [r0, r4]
	add r3, r5, #0
	add r3, #0x30
	strh r2, [r0, r3]
	add r5, #0x32
	strh r1, [r0, r5]
	bl ov85_02242578
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02242390: .word 0x02242940
_02242394: .word 0x02242980
_02242398: .word 0x022429C0
_0224239C: .word 0x02242A00
	thumb_func_end ov85_02242218

	thumb_func_start ov85_022423A0
ov85_022423A0: ; 0x022423A0
	push {r4, r5}
	cmp r2, #0xff
	bne _022423B6
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_022423B6:
	cmp r2, #0
	bne _022423CA
	ldrh r2, [r0, #6]
	strh r2, [r1]
	ldrh r2, [r0, #8]
	strh r2, [r1, #2]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_022423CA:
	mov r3, #6
	ldrsh r5, [r0, r3]
	mov r3, #0xc
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1]
	mov r3, #8
	ldrsh r5, [r0, r3]
	mov r3, #0xe
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1, #2]
	mov r3, #0xa
	ldrsh r4, [r0, r3]
	mov r3, #0x10
	ldrsh r0, [r0, r3]
	mul r2, r0
	add r0, r4, r2
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end ov85_022423A0

	thumb_func_start ov85_022423FC
ov85_022423FC: ; 0x022423FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	add r6, r2, #0
	sub r7, r1, r0
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	mov r1, #0
	bl _f_fgt
	bls _02242450
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	b _02242476
_02242450:
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	bl _f_ftoi
_02242476:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6]
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r7, r1, r0
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	mov r1, #0
	bl _f_fgt
	bls _022424C8
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	b _022424EE
_022424C8:
	add r0, r7, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	bl _f_ftoi
_022424EE:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #2]
	mov r0, #4
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r4, r1, r0
	add r0, r4, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	mov r1, #0
	bl _f_fgt
	bls _02242540
	add r0, r4, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	b _02242566
_02242540:
	add r0, r4, #0
	bl _f_itof
	ldr r1, _02242570 ; =0x45800000
	bl _fdiv
	ldr r1, _02242574 ; =0x40800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _02242570 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	bl _f_ftoi
_02242566:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242570: .word 0x45800000
_02242574: .word 0x40800000
	thumb_func_end ov85_022423FC

	thumb_func_start ov85_02242578
ov85_02242578: ; 0x02242578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x65
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	ldr r0, _022427E0 ; =0x02242938
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _022427E4 ; =0x0000019A
	lsl r2, r2, #0x18
	ldr r0, _022427E8 ; =0x0224294A
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _022427EC ; =0x000001A6
	lsl r2, r2, #0x18
	ldr r0, _022427F0 ; =0x0224295C
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r0, _022427F4 ; =0x0224296E
	add r1, r5, r1
	mov r2, #0
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x6b
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	ldr r0, _022427F8 ; =0x02242980
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _022427FC ; =0x000001B2
	lsl r2, r2, #0x18
	ldr r0, _02242800 ; =0x02242992
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	ldr r1, _02242804 ; =0x000001BE
	ldr r0, _02242808 ; =0x022429A4
	add r1, r5, r1
	mov r2, #0
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x6e
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	ldr r0, _0224280C ; =0x022429B6
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x71
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	ldr r0, _02242810 ; =0x022429C8
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	ldr r1, _02242814 ; =0x000001CA
	ldr r0, _02242818 ; =0x022429DA
	add r1, r5, r1
	mov r2, #0
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _0224281C ; =0x000001D6
	lsl r2, r2, #0x18
	ldr r0, _02242820 ; =0x022429EC
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x1d
	lsl r1, r1, #4
	lsl r2, r2, #0x18
	ldr r0, _02242824 ; =0x022429FE
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r1, #0x77
	lsl r1, r1, #2
	ldr r0, _02242828 ; =0x02242A10
	add r1, r5, r1
	mov r2, #0
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _0224282C ; =0x000001E2
	lsl r2, r2, #0x18
	ldr r0, _02242830 ; =0x02242A22
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_020973D4
	add r2, r0, #0
	ldr r1, _02242834 ; =0x000001EE
	lsl r2, r2, #0x18
	ldr r0, _02242838 ; =0x02242A34
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_020973D4
	add r2, r0, #0
	mov r1, #0x7a
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	ldr r0, _0224283C ; =0x02242A46
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov85_022423A0
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r1, r5, r0
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x60
	add r1, r5, r1
	str r1, [sp, #0x1c]
	add r1, r5, #0
	str r1, [sp, #0x18]
	add r1, #0xd4
	str r1, [sp, #0x18]
	add r1, r0, #6
	add r1, r5, r1
	str r1, [sp, #0x14]
	add r1, r0, #0
	add r1, #0x66
	add r1, r5, r1
	str r1, [sp, #0x10]
	add r1, r5, #0
	str r1, [sp, #0xc]
	add r1, #0xda
	str r1, [sp, #0xc]
	add r1, r0, #0
	add r1, #0xc
	add r1, r5, r1
	str r1, [sp, #8]
	add r1, r0, #0
	add r1, #0x6c
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r5, #0
	str r1, [sp]
	add r1, #0xe0
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x12
	add r0, #0x72
	add r4, r5, #0
	add r7, r5, r1
	add r6, r5, r0
	add r4, #0xe6
_02242766:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov85_022423FC
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl ov85_022423FC
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl ov85_022423FC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov85_022423FC
	ldr r0, [sp, #0x20]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _02242766
	mov r0, #0x7d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022427E0: .word 0x02242938
_022427E4: .word 0x0000019A
_022427E8: .word 0x0224294A
_022427EC: .word 0x000001A6
_022427F0: .word 0x0224295C
_022427F4: .word 0x0224296E
_022427F8: .word 0x02242980
_022427FC: .word 0x000001B2
_02242800: .word 0x02242992
_02242804: .word 0x000001BE
_02242808: .word 0x022429A4
_0224280C: .word 0x022429B6
_02242810: .word 0x022429C8
_02242814: .word 0x000001CA
_02242818: .word 0x022429DA
_0224281C: .word 0x000001D6
_02242820: .word 0x022429EC
_02242824: .word 0x022429FE
_02242828: .word 0x02242A10
_0224282C: .word 0x000001E2
_02242830: .word 0x02242A22
_02242834: .word 0x000001EE
_02242838: .word 0x02242A34
_0224283C: .word 0x02242A46
	thumb_func_end ov85_02242578

	.rodata


	.global Unk_ov85_02242840
Unk_ov85_02242840: ; 0x02242840
	.incbin "incbin/overlay85_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov85_0224284C
Unk_ov85_0224284C: ; 0x0224284C
	.incbin "incbin/overlay85_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov85_0224285C
Unk_ov85_0224285C: ; 0x0224285C
	.incbin "incbin/overlay85_rodata.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov85_02242878
Unk_ov85_02242878: ; 0x02242878
	.incbin "incbin/overlay85_rodata.bin", 0x38, 0x54 - 0x38

	.global Unk_ov85_02242894
Unk_ov85_02242894: ; 0x02242894
	.incbin "incbin/overlay85_rodata.bin", 0x54, 0x70 - 0x54

	.global Unk_ov85_022428B0
Unk_ov85_022428B0: ; 0x022428B0
	.incbin "incbin/overlay85_rodata.bin", 0x70, 0x98 - 0x70

	.global Unk_ov85_022428D8
Unk_ov85_022428D8: ; 0x022428D8
	.incbin "incbin/overlay85_rodata.bin", 0x98, 0xF8 - 0x98

	.global Unk_ov85_02242938
Unk_ov85_02242938: ; 0x02242938
	.incbin "incbin/overlay85_rodata.bin", 0xF8, 0x120

