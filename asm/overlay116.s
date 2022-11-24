	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov116_02260440
ov116_02260440: ; 0x02260440
	push {r4, lr}
	ldr r1, [r2, #0]
	ldr r0, [r2, #4]
	add r4, r3, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	bl sub_0201D2DC
	add r0, r4, #0
	bl ov116_022617D4
	pop {r4, pc}
	thumb_func_end ov116_02260440

	thumb_func_start ov116_02260458
ov116_02260458: ; 0x02260458
	add r0, r3, #0
	ldr r3, _02260460 ; =ov116_022617DC
	bx r3
	nop
_02260460: .word ov116_022617DC
	thumb_func_end ov116_02260458

	thumb_func_start ov116_02260464
ov116_02260464: ; 0x02260464
	ldr r1, [r3, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r2, [r2, #0]
	ldr r0, _02260474 ; =0x00002B9C
	str r2, [r1, r0]
	bx lr
	nop
_02260474: .word 0x00002B9C
	thumb_func_end ov116_02260464

	thumb_func_start ov116_02260478
ov116_02260478: ; 0x02260478
	lsl r0, r0, #3
	ldr r1, [r2, #0]
	add r0, r3, r0
	str r1, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02260478

	thumb_func_start ov116_02260484
ov116_02260484: ; 0x02260484
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02260484

	thumb_func_start ov116_02260488
ov116_02260488: ; 0x02260488
	mov r0, #0
	bx lr
	thumb_func_end ov116_02260488

	thumb_func_start ov116_0226048C
ov116_0226048C: ; 0x0226048C
	mov r0, #8
	bx lr
	thumb_func_end ov116_0226048C

	thumb_func_start ov116_02260490
ov116_02260490: ; 0x02260490
	mov r0, #4
	bx lr
	thumb_func_end ov116_02260490

	thumb_func_start ov116_02260494
ov116_02260494: ; 0x02260494
	mov r0, #8
	bx lr
	thumb_func_end ov116_02260494

	thumb_func_start ov116_02260498
ov116_02260498: ; 0x02260498
	mov r0, #0x20
	bx lr
	thumb_func_end ov116_02260498

	thumb_func_start ov116_0226049C
ov116_0226049C: ; 0x0226049C
	ldr r0, _022604A0 ; =0x02267740
	bx lr
	; .align 2, 0
_022604A0: .word 0x02267740
	thumb_func_end ov116_0226049C

	thumb_func_start ov116_022604A4
ov116_022604A4: ; 0x022604A4
	mov r0, #5
	bx lr
	thumb_func_end ov116_022604A4

	thumb_func_start ov116_022604A8
ov116_022604A8: ; 0x022604A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov116_0226049C
	add r4, r0, #0
	bl ov116_022604A4
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_022604A8

	thumb_func_start ov116_022604C4
ov116_022604C4: ; 0x022604C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	bl sub_0201D2D0
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov116_022612CC
	ldr r0, _02260834 ; =ov116_02261794
	add r1, r5, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x20
	mov r1, #0x6a
	bl sub_0201DBEC
	ldr r1, _02260838 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
	mov r0, #0x6a
	bl sub_020394A8
	add r1, sp, #0x24
	add r4, r0, #0
	bl sub_020A71B0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x24]
	ldr r0, [r5, #0x5c]
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02032E64
	add r4, r0, #0
	bl sub_0203608C
	str r0, [r5, #0x44]
	add r0, r5, #0
	bl ov116_022604A8
	add r0, r5, #0
	bl ov116_022617C4
	cmp r0, #1
	bne _0226054E
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x48
	bl ov116_02262A44
	str r0, [r5, #0]
_0226054E:
	add r2, r5, #0
	ldr r1, [r5, #0x44]
	add r0, r4, #0
	add r2, #0x48
	bl ov116_02262A8C
	str r0, [r5, #4]
	ldrb r2, [r5, #0x14]
	ldr r1, _0226083C ; =0x00002BB4
	str r2, [r0, r1]
	add r0, r5, #0
	add r0, #0x80
	ldr r3, [r0, #0]
	ldr r2, [r5, #4]
	sub r0, r1, #4
	str r3, [r2, r0]
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r5, #0
	bl ov116_022628B8
	add r0, r5, #0
	bl ov116_022622C8
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov116_022625A8
	ldr r0, [r5, #4]
	bl ov116_02261D70
	ldr r0, [r5, #4]
	bl ov116_02261D08
	ldr r0, [r5, #4]
	bl ov116_02262724
	ldr r0, [r5, #4]
	bl ov116_02262840
	ldr r1, [r5, #0x44]
	add r0, r5, #0
	bl ov116_02264680
	add r1, r0, #0
	add r0, r5, #0
	bl ov116_02262034
	ldr r4, _02260840 ; =0x02267918
	add r3, sp, #0x38
	mov r2, #0x10
_022605BA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022605BA
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r4, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x6c
	add r7, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x10]
_022605D8:
	mov r0, #0xb5
	ldr r2, [sp, #8]
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	ldr r2, [r2, #0]
	add r0, r0, r4
	bl ov116_022618A8
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	add r0, r0, r4
	bl ov116_022618B4
	ldr r1, [r5, #4]
	mov r0, #0x6a
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _02260844 ; =0x00000BC8
	str r0, [sp, #4]
	ldr r0, _02260848 ; =0x00000BD8
	ldr r3, [sp, #8]
	add r0, r1, r0
	add r1, r1, r2
	ldr r2, [r5, #0x48]
	ldr r3, [r3, #4]
	add r0, r0, r4
	add r1, r1, r4
	bl sub_02017164
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r2, _02260848 ; =0x00000BD8
	add r0, r0, r4
	add r1, r1, r2
	add r1, r1, r4
	bl sub_0201727C
	ldr r1, [r5, #4]
	ldr r0, _02260848 ; =0x00000BD8
	add r0, r1, r0
	add r0, r0, r4
	mov r1, #0
	bl sub_02017240
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r0, r4
	mov r1, #0
	bl sub_02017348
	ldrb r0, [r5, #0x14]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	lsl r2, r1, #0x1f
	lsr r0, r0, #0x1f
	sub r2, r2, r0
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, r2
	beq _022606A6
	cmp r7, #0
	ble _0226067A
	add r0, r6, #0
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260688
_0226067A:
	add r0, r6, #0
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260688:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x14]
	bl sub_020E1740
	mov r1, #0xd3
	ldr r2, [sp, #0x14]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r1, r0
	mov r0, #0xd3
	ldr r1, [sp, #0x14]
	lsl r0, r0, #4
	str r2, [r1, r0]
	b _022606E6
_022606A6:
	cmp r7, #0
	ble _022606BC
	add r0, r6, #0
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022606CA
_022606BC:
	add r0, r6, #0
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022606CA:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x18]
	bl sub_020E1740
	mov r1, #0xd3
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	sub r2, r1, r0
	mov r0, #0xd3
	ldr r1, [sp, #0x18]
	lsl r0, r0, #4
	str r2, [r1, r0]
_022606E6:
	ldr r0, [sp, #0xc]
	cmp r0, #8
	bge _02260730
	add r1, r0, #1
	mov r0, #5
	mul r0, r1
	cmp r0, #0
	ble _02260708
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260716
_02260708:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260716:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x1c]
	bl sub_020E1740
	ldr r2, [sp, #0x1c]
	ldr r1, _0226084C ; =0x00000D38
	ldr r1, [r2, r1]
	add r2, r1, r0
	ldr r1, [sp, #0x1c]
	ldr r0, _0226084C ; =0x00000D38
	str r2, [r1, r0]
	b _0226076C
_02260730:
	cmp r7, #0
	ble _02260746
	add r0, r6, #0
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260754
_02260746:
	add r0, r6, #0
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260754:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x20]
	bl sub_020E1740
	ldr r2, [sp, #0x20]
	ldr r1, _0226084C ; =0x00000D38
	ldr r1, [r2, r1]
	sub r2, r1, r0
	ldr r1, [sp, #0x20]
	ldr r0, _0226084C ; =0x00000D38
	str r2, [r1, r0]
_0226076C:
	ldr r0, [sp, #8]
	add r7, r7, #5
	add r0, #8
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r4, r0
	mov r0, #5
	lsl r0, r0, #0xc
	add r6, r6, r0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #8
	bge _0226078C
	b _022605D8
_0226078C:
	ldr r1, [r5, #4]
	ldr r0, _02260850 ; =0x00000944
	mov r2, #0x47
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov116_022618A8
	ldr r1, [r5, #4]
	ldr r0, _02260850 ; =0x00000944
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov116_022618B4
	ldr r1, [r5, #4]
	ldr r0, _02260850 ; =0x00000944
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r3, _02260854 ; =0x022677A4
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0x44]
	add r0, r5, #0
	bl ov116_02264680
	lsl r1, r0, #2
	add r0, sp, #0x28
	ldr r2, [r0, r1]
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov116_022618A8
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov116_022618B4
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	mov r2, #0x33
	bl ov116_022618A8
	ldr r1, [r5, #4]
	ldr r0, _02260858 ; =0x0000052C
	mov r2, #0x39
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov116_022618A8
	ldr r1, [r5, #4]
	ldr r0, _0226085C ; =0x00000738
	mov r2, #0x37
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov116_022618A8
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov116_022618B4
	ldr r1, [r5, #4]
	ldr r0, _02260858 ; =0x0000052C
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov116_022618B4
	ldr r1, [r5, #4]
	ldr r0, _0226085C ; =0x00000738
	b _02260860
	; .align 2, 0
_02260834: .word ov116_02261794
_02260838: .word 0x00200010
_0226083C: .word 0x00002BB4
_02260840: .word 0x02267918
_02260844: .word 0x00000BC8
_02260848: .word 0x00000BD8
_0226084C: .word 0x00000D38
_02260850: .word 0x00000944
_02260854: .word 0x022677A4
_02260858: .word 0x0000052C
_0226085C: .word 0x00000738
_02260860:
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov116_022618B4
	mov r6, #0x32
	ldr r4, [r5, #4]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	lsl r6, r6, #4
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x35
	bl sub_02017164
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_0201727C
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	mov r0, #0x6a
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x34
	bl sub_02017164
	add r0, r4, r6
	add r0, #0x9c
	mov r1, #0
	bl sub_02017240
	mov r0, #0x6a
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0xb0
	add r1, #0x78
	mov r3, #0x3a
	bl sub_02017164
	add r0, r4, r6
	add r0, #0xb0
	mov r1, #0
	bl sub_02017240
	ldr r4, [r5, #4]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _022609A0 ; =0x0000052C
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x38
	bl sub_02017164
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_0201727C
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	ldr r4, [r5, #4]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _022609A4 ; =0x00000738
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x36
	bl sub_02017164
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_0201727C
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0226096C
	mov r1, #0xbe
	ldr r0, _022609A8 ; =0xFFFF8000
	ldr r2, [r5, #4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r2, [r5, #4]
	ldr r1, _022609AC ; =0x00000504
	str r0, [r2, r1]
	add r1, r6, #0
	ldr r2, [r5, #4]
	sub r1, #0x28
	str r0, [r2, r1]
	ldr r2, [r5, #4]
	ldr r1, _022609B0 ; =0x0000091C
	str r0, [r2, r1]
_0226096C:
	ldr r0, [r5, #0x54]
	bl sub_0200D9B0
	mov r1, #0x6a
	bl ov114_0225CAD4
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	mov r1, #2
	ldr r0, [r5, #0x5c]
	mov r2, #0
	lsl r3, r1, #8
	bl sub_02003070
	add r5, #0x88
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0226099A
	mov r0, #0x6a
	bl ov4_021D1E74
_0226099A:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022609A0: .word 0x0000052C
_022609A4: .word 0x00000738
_022609A8: .word 0xFFFF8000
_022609AC: .word 0x00000504
_022609B0: .word 0x0000091C
	thumb_func_end ov116_022604C4

	thumb_func_start ov116_022609B4
ov116_022609B4: ; 0x022609B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r2, #0x65
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x6a
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0xd0
	mov r2, #0x6a
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xd0
	str r0, [sp, #4]
	bl sub_020D5124
	add r0, r4, #0
	bl sub_02006840
	ldr r1, [sp, #4]
	ldr r6, [sp, #4]
	add r1, #0x88
	str r0, [r1, #0]
	mov r4, #0
	add r5, r6, #0
	mov r7, #0xff
_022609EE:
	add r0, r6, #0
	add r0, #0xbc
	str r7, [r0, #0]
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02260A06
	add r0, r5, #0
	add r0, #0xbc
	str r4, [r0, #0]
	add r5, r5, #4
_02260A06:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _022609EE
	ldr r0, [sp, #4]
	add r0, #0x88
	ldr r3, [r0, #0]
	ldr r0, [sp, #4]
	str r3, [sp]
	ldr r1, [r3, #0x38]
	ldr r2, [r3, #0x34]
	add r0, #0x8c
	ldr r3, [r3, #0x3c]
	str r0, [sp, #4]
	bl ov114_0225C700
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_022609B4

	thumb_func_start ov116_02260A2C
ov116_02260A2C: ; 0x02260A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02260AC6
	cmp r6, #0
	bne _02260AC6
	ldr r3, _02260B48 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02260A82
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov116_0226452C
	ldr r4, _02260B4C ; =0x02267788
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02260B50 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02260A82:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _02260B54 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	ldr r0, _02260B58 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _02260B5C ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02260AC6:
	ldr r0, _02260B60 ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r7, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r7
	bl sub_020E1F6C
	bl sub_020E17B4
	ldr r0, _02260B48 ; =0x00001FD4
	cmp r7, #0x5f
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02260AEA
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
_02260AEA:
	ldr r3, _02260B58 ; =0x00001FD8
	add r1, r4, #0
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [r5, r3]
	add r0, r5, r0
	add r2, r6, #0
	bl ov116_0226432C
	ldr r3, _02260B64 ; =0x0226777C
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0x4d
	str r0, [r2, #0]
	ldr r2, _02260B50 ; =0x00001FC8
	lsl r1, r1, #4
	add r0, r7, #0
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
	ldr r0, _02260B68 ; =0x00000572
	bl sub_020057D4
	cmp r0, #0
	bne _02260B3A
	ldr r0, _02260B68 ; =0x00000572
	bl sub_02005748
_02260B3A:
	ldr r0, _02260B48 ; =0x00001FD4
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02260B48: .word 0x00001FD4
_02260B4C: .word 0x02267788
_02260B50: .word 0x00001FC8
_02260B54: .word 0x3FF0A3D7
_02260B58: .word 0x00001FD8
_02260B5C: .word 0x3E6147AE
_02260B60: .word 0x00001FCC
_02260B64: .word 0x0226777C
_02260B68: .word 0x00000572
	thumb_func_end ov116_02260A2C

	thumb_func_start ov116_02260B6C
ov116_02260B6C: ; 0x02260B6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	ldr r3, _02260CEC ; =0x02267998
	add r5, r0, #0
	add r2, sp, #0xc
	mov r1, #0x60
_02260B78:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02260B78
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0200D3E0
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	mul r0, r1
	add r0, r7, r0
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldrsh r4, [r0, r1]
	add r0, sp, #0xc
	add r0, #2
	ldrsh r6, [r0, r1]
	cmp r4, #0
	bne _02260BB8
	cmp r6, #0
	bne _02260BB8
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov116_02260A2C
	b _02260BF0
_02260BB8:
	add r1, r4, #0
	add r2, r6, #0
	add r0, r5, #0
	add r1, #0x80
	add r2, #0x80
	bl ov116_02260A2C
	cmp r4, #0
	beq _02260BDE
	add r4, #0x58
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov116_0226493C
	b _02260BF0
_02260BDE:
	add r4, #0x80
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov116_0226493C
_02260BF0:
	cmp r7, #0
	bne _02260C00
	ldr r0, [r5, #8]
	cmp r0, r7
	beq _02260C00
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
_02260C00:
	str r7, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _02260C76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0200D37C
	cmp r0, #2
	beq _02260C76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #0x80
	mov r2, #0x64
	bl sub_0200D4C4
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200D370
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov116_02266FEC
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02260CF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02260CF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
_02260C76:
	ldr r0, [r5, #0xc]
	cmp r0, #3
	bne _02260CDC
	cmp r7, #0xb
	bne _02260CDC
	mov r1, #0
	str r1, [r5, #8]
	add r0, r5, #0
	str r1, [r5, #0xc]
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0200D3F4
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov116_02266FEC
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02260CF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02260CF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	add sp, #0xcc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02260CDC:
	add r5, #0xf0
	ldr r0, [r5, #0]
	bl sub_0200D33C
	mov r0, #0
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_02260CEC: .word 0x02267998
_02260CF0: .word 0x3F4CCCCD
	thumb_func_end ov116_02260B6C

	thumb_func_start ov116_02260CF4
ov116_02260CF4: ; 0x02260CF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov116_022617E4
	cmp r0, #0
	beq _02260D18
	cmp r0, #1
	beq _02260D10
	cmp r0, #2
	beq _02260D14
	b _02260D18
_02260D10:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260D14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02260D18:
	ldr r0, [r7, #0]
	cmp r0, #0x14
	bls _02260D20
	b _022610B8
_02260D20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260D2C: ; jump table
	.short _02260D56 - _02260D2C - 2 ; case 0
	.short _02260D74 - _02260D2C - 2 ; case 1
	.short _02260D8C - _02260D2C - 2 ; case 2
	.short _02260DBE - _02260D2C - 2 ; case 3
	.short _02260DDC - _02260D2C - 2 ; case 4
	.short _02260DEE - _02260D2C - 2 ; case 5
	.short _02260E0E - _02260D2C - 2 ; case 6
	.short _02260E44 - _02260D2C - 2 ; case 7
	.short _02260E52 - _02260D2C - 2 ; case 8
	.short _02260E6A - _02260D2C - 2 ; case 9
	.short _02260E92 - _02260D2C - 2 ; case 10
	.short _02260EE6 - _02260D2C - 2 ; case 11
	.short _02260F0E - _02260D2C - 2 ; case 12
	.short _02260F26 - _02260D2C - 2 ; case 13
	.short _02260F68 - _02260D2C - 2 ; case 14
	.short _02260F96 - _02260D2C - 2 ; case 15
	.short _02260FAA - _02260D2C - 2 ; case 16
	.short _02260FC6 - _02260D2C - 2 ; case 17
	.short _0226102A - _02260D2C - 2 ; case 18
	.short _02261094 - _02260D2C - 2 ; case 19
	.short _022610B8 - _02260D2C - 2 ; case 20
_02260D56:
	add r0, r4, #0
	add r0, #0x8c
	mov r1, #0x6a
	bl ov114_0225C820
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260D74:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov114_0225C8BC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260D8C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov114_0225C8CC
	strb r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov114_0225C838
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov116_022604C4
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260DBE:
	mov r0, #0x1b
	bl ov116_02261768
	add r5, r0, #0
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov116_022620AC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260DDC:
	bl sub_0200F2AC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #5
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260DEE:
	ldr r0, [r4, #4]
	bl ov116_02261F70
	ldr r0, [r4, #4]
	bl ov116_02265470
	ldr r0, [r4, #4]
	bl ov116_02265A1C
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260E0E:
	ldr r0, [r4, #4]
	bl ov116_02260B6C
	add r5, r0, #0
	beq _02260E36
	add r0, r4, #0
	bl ov116_022617C4
	cmp r0, #1
	bne _02260E36
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [r4, #0x18]
	mov r0, #0x16
	add r1, #0x14
	mov r2, #8
	bl sub_020359DC
_02260E36:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260E44:
	ldr r1, [r4, #8]
	add r0, r4, #0
	mov r2, #8
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260E52:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov114_0225CB8C
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260E6A:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov114_0225CBE0
	add r5, r0, #0
	beq _02260E84
	ldr r0, [r4, #4]
	bl ov116_02262264
	ldr r0, [r4, #4]
	bl ov116_02262004
_02260E84:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260E92:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02260EA8
	ldr r1, [r4, #4]
	ldr r0, _022610E4 ; =0x00002AE4
	ldr r1, [r1, r0]
	mov r0, #0x4b
	lsl r0, r0, #4
	cmp r1, r0
	bge _02260EA8
	mov r5, #0
_02260EA8:
	cmp r5, #0
	bne _02260ED8
	add r0, r4, #0
	bl ov116_022617C4
	cmp r0, #1
	bne _02260ED2
	ldr r0, [r4, #0]
	bl ov116_02262A74
	cmp r0, #0
	bne _02260ED2
	ldr r0, _022610E8 ; =0x00000571
	mov r1, #0
	bl sub_020057A4
	mov r1, #0
	mov r0, #0x17
	add r2, r1, #0
	bl sub_020359DC
_02260ED2:
	ldr r0, [r4, #4]
	bl ov116_02263B30
_02260ED8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260EE6:
	ldr r0, _022610EC ; =0x00000573
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022610E8 ; =0x00000571
	mov r1, #0
	bl sub_020057A4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov114_0225CBB0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xc
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260F0E:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov114_0225CBE0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xd
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260F26:
	ldr r1, [r4, #4]
	ldr r0, _022610F0 ; =0x00002AF0
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_020E1F6C
	mov r1, #0x64
	mul r1, r0
	ldr r0, _022610F4 ; =0x000186A0
	str r1, [r4, #0x1c]
	cmp r1, r0
	blo _02260F40
	str r0, [r4, #0x1c]
_02260F40:
	ldr r1, [r4, #4]
	ldr r0, _022610F8 ; =0x00002B94
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02260F4E
	mov r0, #1
	str r0, [r4, #0x1c]
_02260F4E:
	add r1, r4, #0
	mov r0, #0x19
	add r1, #0x1c
	mov r2, #8
	bl sub_020359DC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260F68:
	mov r1, #0
	add r0, r1, #0
	add r3, r1, #0
	add r5, r4, #0
_02260F70:
	ldr r2, [r5, #0x24]
	cmp r2, #0
	beq _02260F78
	add r0, r0, #1
_02260F78:
	add r3, r3, #1
	add r5, #8
	cmp r3, #4
	blt _02260F70
	ldr r2, [r4, #4]
	ldr r2, [r2, #4]
	cmp r0, r2
	bne _02260F8A
	mov r1, #1
_02260F8A:
	add r0, r4, #0
	mov r2, #0xf
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260F96:
	mov r0, #0x1a
	bl ov116_02261768
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x10
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260FAA:
	bl sub_0200F2AC
	add r5, r0, #0
	beq _02260FB8
	add r0, r4, #0
	bl ov116_022610FC
_02260FB8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02260FC6:
	mov r6, #0
	add r5, r4, #0
_02260FCA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov116_02264680
	cmp r0, #0xff
	beq _02260FF2
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r2, [r5, #0x24]
	add r1, #0xa0
	str r2, [r1, #0]
	add r1, r4, r0
	add r1, #0xa0
	ldr r1, [r1, #0]
	cmp r1, #1
	bhi _02260FF2
	add r1, r4, r0
	add r1, #0xa0
	mov r0, #0
	str r0, [r1, #0]
_02260FF2:
	add r6, r6, #1
	add r5, #8
	cmp r6, #4
	blt _02260FCA
	add r1, r4, #0
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xa0
	bl ov114_0225C9A8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x8c
	add r1, #0xa0
	mov r2, #0x6a
	bl ov114_0225C8EC
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_0226102A:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov114_0225C9A0
	add r5, r0, #0
	beq _02261086
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov114_0225C9A4
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov114_0225C904
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
	cmp r6, #0
	beq _02261086
	add r0, r4, #0
	mov r1, #1
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov116_02261244
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl ov116_0226178C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _022610CA
	bl ov4_021D1F18
	b _022610CA
_02261086:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x13
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_02261094:
	mov r0, #0x1b
	bl sub_020364F0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _022610AA
	bl ov4_021D1F18
_022610AA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	add r3, r7, #0
	bl ov116_0226178C
	b _022610CA
_022610B8:
	mov r0, #0x1b
	bl sub_02036540
	cmp r0, #1
	bne _022610C6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022610C6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022610CA:
	ldr r0, [r7, #0]
	cmp r0, #3
	blt _022610E0
	cmp r0, #0x10
	bge _022610E0
	ldr r0, [r4, #4]
	bl ov116_02261F08
	add r0, r4, #0
	bl ov116_02261940
_022610E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022610E4: .word 0x00002AE4
_022610E8: .word 0x00000571
_022610EC: .word 0x00000573
_022610F0: .word 0x00002AF0
_022610F4: .word 0x000186A0
_022610F8: .word 0x00002B94
	thumb_func_end ov116_02260CF4

	thumb_func_start ov116_022610FC
ov116_022610FC: ; 0x022610FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	bl sub_0201E530
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0201D2DC
	ldr r0, [r5, #4]
	bl ov116_02261F3C
	ldr r0, [r5, #4]
	bl ov116_02261DF0
	ldr r0, [r5, #4]
	bl ov116_02261E40
	ldr r0, [r5, #4]
	bl ov116_0226281C
	ldr r0, [r5, #4]
	bl ov116_022628AC
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov116_0226192C
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov116_0226192C
	ldr r1, [r5, #4]
	ldr r0, _0226122C ; =0x0000052C
	add r0, r1, r0
	bl ov116_0226192C
	ldr r1, [r5, #4]
	ldr r0, _02261230 ; =0x00000738
	add r0, r1, r0
	bl ov116_0226192C
	ldr r1, [r5, #4]
	ldr r0, _02261234 ; =0x00000944
	add r0, r1, r0
	bl ov116_0226192C
	mov r0, #0xea
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0x6c
	bl sub_020171A0
	mov r0, #0xef
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0x6c
	bl sub_020171A0
	mov r0, #0x3d
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0x6c
	bl sub_020171A0
	ldr r1, [r5, #4]
	ldr r0, _02261238 ; =0x000005B4
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0x6c
	bl sub_020171A0
	mov r0, #0x1f
	ldr r1, [r5, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0x6c
	bl sub_020171A0
	mov r7, #0
	add r6, r5, #0
	add r4, r7, #0
	add r6, #0x6c
_022611C8:
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r0, r4
	bl ov116_0226192C
	ldr r1, [r5, #4]
	ldr r0, _0226123C ; =0x00000BD8
	add r0, r1, r0
	add r0, r0, r4
	add r1, r6, #0
	bl sub_020171A0
	ldr r1, [r5, #4]
	ldr r0, _02261240 ; =0x00000BEC
	add r0, r1, r0
	add r0, r0, r4
	add r1, r6, #0
	bl sub_020171A0
	mov r0, #0x83
	lsl r0, r0, #2
	add r7, r7, #1
	add r4, r4, r0
	cmp r7, #8
	blt _022611C8
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov114_0225CB38
	add r0, r5, #0
	bl ov116_0226139C
	add r0, r5, #0
	bl ov116_022617C4
	cmp r0, #1
	bne _0226121E
	ldr r0, [r5, #0]
	bl ov116_02262A6C
_0226121E:
	ldr r0, [r5, #4]
	bl ov116_02262C64
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226122C: .word 0x0000052C
_02261230: .word 0x00000738
_02261234: .word 0x00000944
_02261238: .word 0x000005B4
_0226123C: .word 0x00000BD8
_02261240: .word 0x00000BEC
	thumb_func_end ov116_022610FC

	thumb_func_start ov116_02261244
ov116_02261244: ; 0x02261244
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	add r2, r0, #0
	strb r1, [r0, #0x1c]
	add r2, #0x1c
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	strb r1, [r2, #6]
	strb r1, [r2, #7]
	ldr r3, _02261268 ; =sub_020D5124
	add r0, #0x24
	mov r2, #0x20
	bx r3
	; .align 2, 0
_02261268: .word sub_020D5124
	thumb_func_end ov116_02261244

	thumb_func_start ov116_0226126C
ov116_0226126C: ; 0x0226126C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	bne _022612AC
	bl sub_0200682C
	bl ov116_022617E4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006830
	mov r0, #0x6a
	bl sub_0201807C
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	cmp r4, #0
	beq _0226129E
	mov r0, #1
	pop {r4, r5, r6, pc}
_0226129E:
	mov r0, #0xe7
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022612C8
_022612AC:
	mov r0, #0xe7
	bl sub_02036540
	cmp r0, #1
	beq _022612C4
	bl sub_02035E18
	add r4, r0, #0
	bl sub_02032E64
	cmp r4, r0
	bge _022612C8
_022612C4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022612C8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov116_0226126C

	thumb_func_start ov116_022612CC
ov116_022612CC: ; 0x022612CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xa4
	mov r1, #0x6a
	bl sub_02006C24
	str r0, [r4, #0x48]
	mov r0, #0x9e
	mov r1, #0x6a
	bl sub_02006C24
	str r0, [r4, #0x4c]
	mov r0, #0x6a
	bl sub_02018340
	str r0, [r4, #0x58]
	mov r0, #0x6a
	bl sub_02002F38
	str r0, [r4, #0x5c]
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x6a
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #0x60]
	mov r0, #0x6a
	bl sub_020203AC
	str r0, [r4, #0x64]
	add r0, r4, #0
	bl ov116_02261C88
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6a
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x5c]
	lsl r2, r1, #9
	mov r3, #0x6a
	bl sub_02002F70
	mov r1, #2
	ldr r0, [r4, #0x5c]
	lsl r2, r1, #8
	mov r3, #0x6a
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x6a
	bl sub_02002F70
	ldr r0, [r4, #0x58]
	bl ov116_02261494
	add r0, r4, #0
	bl ov116_022616CC
	ldr r0, _02261390 ; =0x04000060
	ldr r1, _02261394 ; =0xFFFFCFFF
	ldrh r2, [r0]
	add r3, r2, #0
	and r3, r1
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _02261398 ; =0x022677B4
	bl sub_020BFD2C
	add r4, #0x6c
	add r0, r4, #0
	mov r1, #0x6a
	mov r2, #0x20
	bl sub_020182CC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02261390: .word 0x04000060
_02261394: .word 0xFFFFCFFF
_02261398: .word 0x022677B4
	thumb_func_end ov116_022612CC

	thumb_func_start ov116_0226139C
ov116_0226139C: ; 0x0226139C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0x58]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0x58]
	bl sub_020181C4
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x5c]
	bl sub_02002F54
	ldr r0, [r4, #0x48]
	bl sub_02006CA8
	ldr r0, [r4, #0x4c]
	bl sub_02006CA8
	ldr r0, [r4, #0x60]
	bl sub_020242C4
	ldr r0, [r4, #0x64]
	bl sub_020203B8
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	bl sub_0200D0B0
	ldr r0, [r4, #0x50]
	bl sub_0200C8D4
	ldr r0, _02261488 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r2, _0226148C ; =0x04000060
	ldr r0, _02261490 ; =0x0000CFF7
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	pop {r4, pc}
	; .align 2, 0
_02261488: .word 0x021BF6DC
_0226148C: .word 0x04000060
_02261490: .word 0x0000CFF7
	thumb_func_end ov116_0226139C

	thumb_func_start ov116_02261494
ov116_02261494: ; 0x02261494
	push {r4, r5, lr}
	sub sp, #0x11c
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _022616B0 ; =0x02267794
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _022616B4 ; =0x02267810
	add r3, sp, #4
	mov r2, #5
_022614B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022614B8
	add r0, sp, #4
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
	ldr r5, _022616B8 ; =0x02267838
	add r3, sp, #0xac
	mov r2, #0xe
_02261504:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02261504
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0xc8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xe4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x100
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _022616BC ; =0x022678A8
	add r3, sp, #0x3c
	mov r2, #0xe
_0226157A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0226157A
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x3c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x58
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x74
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x90
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6a
	bl sub_02019690
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _022616C0 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _022616C4 ; =0x04000050
	mov r1, #0
	mov r2, #0x1e
	mov r3, #7
	bl sub_020BF55C
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _022616C8 ; =0x04001050
	mov r1, #0
	mov r2, #0x11
	mov r3, #7
	bl sub_020BF55C
	add sp, #0x11c
	pop {r4, r5, pc}
	; .align 2, 0
_022616B0: .word 0x02267794
_022616B4: .word 0x02267810
_022616B8: .word 0x02267838
_022616BC: .word 0x022678A8
_022616C0: .word 0x021BF6DC
_022616C4: .word 0x04000050
_022616C8: .word 0x04001050
	thumb_func_end ov116_02261494

	thumb_func_start ov116_022616CC
ov116_022616CC: ; 0x022616CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x6a
	bl sub_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _0226175C ; =0x022677F0
	str r0, [r4, #0x50]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _02261760 ; =0x022677C4
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0x50]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _02261764 ; =0x022677D8
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x50]
	bl sub_0200C704
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	mov r2, #0xff
	bl sub_0200C7C0
	cmp r0, #0
	bne _02261736
	bl sub_02022974
_02261736:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _02261748
	bl sub_02022974
_02261748:
	ldr r0, [r4, #0x50]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0226175C: .word 0x022677F0
_02261760: .word 0x022677C4
_02261764: .word 0x022677D8
	thumb_func_end ov116_022616CC

	thumb_func_start ov116_02261768
ov116_02261768: ; 0x02261768
	push {lr}
	sub sp, #0xc
	add r1, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov116_02261768

	thumb_func_start ov116_0226178C
ov116_0226178C: ; 0x0226178C
	cmp r1, #0
	beq _02261792
	str r2, [r3, #0]
_02261792:
	bx lr
	thumb_func_end ov116_0226178C

	thumb_func_start ov116_02261794
ov116_02261794: ; 0x02261794
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0x5c]
	bl sub_02003694
	ldr r0, [r4, #0x58]
	bl sub_0201C2B8
	ldr r3, _022617BC ; =0x027E0000
	ldr r1, _022617C0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_022617BC: .word 0x027E0000
_022617C0: .word 0x00003FF8
	thumb_func_end ov116_02261794

	thumb_func_start ov116_022617C4
ov116_022617C4: ; 0x022617C4
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _022617CE
	mov r0, #1
	bx lr
_022617CE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov116_022617C4

	thumb_func_start ov116_022617D4
ov116_022617D4: ; 0x022617D4
	mov r1, #1
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_022617D4

	thumb_func_start ov116_022617DC
ov116_022617DC: ; 0x022617DC
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_022617DC

	thumb_func_start ov116_022617E4
ov116_022617E4: ; 0x022617E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x8c
	bl ov114_0225CA54
	cmp r0, #1
	bne _0226186A
	add r0, r4, #0
	add r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02261816
	bl sub_0200F2AC
	cmp r0, #1
	bne _02261808
	bl sub_0200F2C0
_02261808:
	mov r0, #0
	bl sub_0200F370
	mov r0, #1
	add r4, #0x7c
	strb r0, [r4]
	pop {r4, pc}
_02261816:
	add r0, r4, #0
	add r0, #0x8c
	bl ov114_0225CA98
	cmp r0, #0
	bne _02261826
	mov r0, #1
	pop {r4, pc}
_02261826:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226183C
	bl ov116_02262264
	ldr r0, [r4, #4]
	bl ov116_02262004
	add r0, r4, #0
	bl ov116_022610FC
_0226183C:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02261852
	bl ov114_0225C904
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0, #0]
_02261852:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02261866
	bl ov114_0225C838
	mov r0, #0
	add r4, #0x9c
	str r0, [r4, #0]
_02261866:
	mov r0, #2
	pop {r4, pc}
_0226186A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov116_022617E4

	thumb_func_start ov116_02261870
ov116_02261870: ; 0x02261870
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _022618A4
	bl sub_020AF480
	mov r0, #0x1c
	add r1, r6, #0
	mov r2, #3
	bl sub_020B275C
	mov r0, #0x19
	add r1, r4, #0
	mov r2, #0xc
	bl sub_020B275C
	add r0, r5, #0
	add r0, #0x60
	bl sub_020AF4EC
	add r0, r5, #0
	bl sub_020AFEFC
_022618A4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261870

	thumb_func_start ov116_022618A8
ov116_022618A8: ; 0x022618A8
	push {r3, lr}
	add r0, #0x78
	mov r3, #0x6a
	bl sub_020170D8
	pop {r3, pc}
	thumb_func_end ov116_022618A8

	thumb_func_start ov116_022618B4
ov116_022618B4: ; 0x022618B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r1, r4, #0
	add r1, #0x78
	bl sub_02017258
	mov r1, #0
	ldr r2, _02261928 ; =0xFFFEC000
	add r0, r4, #0
	add r3, r1, #0
	bl sub_02017350
	cmp r5, #0
	bne _022618E2
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	b _022618F0
_022618E2:
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
_022618F0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r2, #0x1e
	lsl r2, r2, #4
	mov r0, #0
	ldr r3, _02261928 ; =0xFFFEC000
	str r0, [r4, r2]
	add r1, r2, #4
	str r3, [r4, r1]
	add r1, r2, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x1c
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x20
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0xc
	str r0, [r4, r1]
	mov r0, #1
	add r2, #0x10
	str r0, [r4, r2]
	pop {r3, r4, r5, pc}
	nop
_02261928: .word 0xFFFEC000
	thumb_func_end ov116_022618B4

	thumb_func_start ov116_0226192C
ov116_0226192C: ; 0x0226192C
	mov r1, #0x1f
	ldr r3, _0226193C ; =sub_02017110
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	add r0, #0x78
	bx r3
	nop
_0226193C: .word sub_02017110
	thumb_func_end ov116_0226192C

	thumb_func_start ov116_02261940
ov116_02261940: ; 0x02261940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r4, _02261C04 ; =0x02267A6C
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r2, #0
	bl sub_020BD3E4
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _02261C08 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	ldr r0, _02261C08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF56C
	ldr r0, _02261C08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF590
	mov r7, #0
	add r4, r7, #0
_0226199C:
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r6, r0, r4
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r1, #0x1b
	mov r2, #0x1e
	lsl r1, r1, #4
	lsl r2, r2, #4
	add r0, r6, #0
	add r1, r6, r1
	add r2, r6, r2
	bl ov116_02261870
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x12
	add r1, sp, #0x14
	mov r2, #1
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C0C ; =0x00000BD8
	add r0, r1, r0
	mov r1, #1
	add r0, r0, r4
	lsl r1, r1, #0xc
	bl sub_020171CC
	mov r0, #0x83
	lsl r0, r0, #2
	add r7, r7, #1
	add r4, r4, r0
	cmp r7, #8
	blt _0226199C
	ldr r1, [r5, #4]
	sub r0, #0xfc
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261A00
	cmp r0, #1
	beq _02261A40
	cmp r0, #2
	beq _02261A74
	b _02261AA8
_02261A00:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	mov r0, #0xea
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r0, _02261C18 ; =0x00000514
	ldr r1, [r1, r0]
	mov r0, #0x14
	mul r0, r1
	mov r1, #1
	add r0, r2, r0
	lsl r1, r1, #0xc
	bl sub_020171CC
	b _02261AA8
_02261A40:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C1C ; =0x000005B4
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	b _02261AA8
_02261A74:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x1f
	ldr r1, [r5, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
_02261AA8:
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r4, r1, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	add r0, #0xfc
	add r6, r1, #0
	mov r1, #0
	mul r6, r0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, r6
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #0x10]
	mov r0, #0x12
	add r1, sp, #0x10
	bl sub_020B275C
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #0xc]
	mov r0, #0x12
	add r1, sp, #0xc
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C20 ; =0x00000944
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #8]
	mov r0, #0x12
	add r1, sp, #8
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C24 ; =0x00001FAC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BA6
	ldr r0, _02261C28 ; =0x00001DBC
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0x12
	add r1, sp, #4
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C2C ; =0x00001FA8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BA6
	ldr r0, _02261C30 ; =0x00001E44
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	add r4, r0, #0
	ldr r1, [r5, #4]
	ldr r0, _02261C34 ; =0x00001E58
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r4, #0
	beq _02261BA6
	cmp r0, #0
	beq _02261BA6
	ldr r1, [r5, #4]
	ldr r0, _02261C2C ; =0x00001FA8
	mov r2, #0
	str r2, [r1, r0]
_02261BA6:
	ldr r1, [r5, #4]
	ldr r0, _02261C38 ; =0x00001DA0
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BF0
	ldr r0, _02261C3C ; =0x00001BB0
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C40 ; =0x00001D9C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BF0
	ldr r0, _02261C44 ; =0x00001C4C
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_020171CC
_02261BF0:
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	ldr r0, [r5, #0x54]
	bl sub_0200C7EC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02261C04: .word 0x02267A6C
_02261C08: .word 0x00007FFF
_02261C0C: .word 0x00000BD8
_02261C10: .word 0x0000052C
_02261C14: .word 0x00000738
_02261C18: .word 0x00000514
_02261C1C: .word 0x000005B4
_02261C20: .word 0x00000944
_02261C24: .word 0x00001FAC
_02261C28: .word 0x00001DBC
_02261C2C: .word 0x00001FA8
_02261C30: .word 0x00001E44
_02261C34: .word 0x00001E58
_02261C38: .word 0x00001DA0
_02261C3C: .word 0x00001BB0
_02261C40: .word 0x00001D9C
_02261C44: .word 0x00001C4C
	thumb_func_end ov116_02261940

	thumb_func_start ov116_02261C48
ov116_02261C48: ; 0x02261C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02261C84 ; =0x00000514
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _02261C82
	mov r2, #0x32
	lsl r2, r2, #4
	add r0, r5, r2
	add r2, #0x88
	add r3, r5, r2
	mov r2, #0x14
	mul r2, r1
	add r1, r3, r2
	bl sub_02017288
	ldr r0, _02261C84 ; =0x00000514
	mov r1, #0x32
	lsl r1, r1, #4
	str r4, [r5, r0]
	add r0, r5, r1
	add r1, #0x88
	add r2, r5, r1
	mov r1, #0x14
	mul r1, r4
	add r1, r2, r1
	bl sub_0201727C
_02261C82:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02261C84: .word 0x00000514
	thumb_func_end ov116_02261C48

	thumb_func_start ov116_02261C88
ov116_02261C88: ; 0x02261C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r6, _02261CD0 ; =0x02267A60
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #8
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	mov r2, #0xb6
	add r7, sp, #0x14
	mov r3, #0
	str r3, [r7, #0]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r0, [r5, #0]
	str r3, [sp]
	ldr r0, [r4, #0x64]
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02020784
	mov r1, #0xfa
	ldr r0, _02261CD4 ; =0xFFC18000
	ldr r2, [r4, #0x64]
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r0, [r4, #0x64]
	bl sub_020203D4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261CD0: .word 0x02267A60
_02261CD4: .word 0xFFC18000
	thumb_func_end ov116_02261C88

	thumb_func_start ov116_02261CD8
ov116_02261CD8: ; 0x02261CD8
	push {r3, r4}
	strh r1, [r0]
	strh r2, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r2, #2
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	ldr r1, [sp, #8]
	ldr r4, [sp, #0xc]
	str r1, [r0, #0xc]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x20]
	sub r1, r2, #3
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02261CD8

	thumb_func_start ov116_02261D08
ov116_02261D08: ; 0x02261D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [r0, #0x14]
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	mov r6, #0
	ldr r7, [r1, #0xc]
	ldr r5, [sp, #8]
	str r0, [sp, #0xc]
	add r4, r6, #0
_02261D1C:
	mov r0, #3
	str r0, [sp]
	ldr r0, _02261D6C ; =0x0000232E
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x10
	asr r1, r1, #0x10
	mov r2, #0x14
	mov r3, #1
	bl ov116_02261CD8
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_0200CE6C
	mov r1, #3
	str r0, [r5, #0x40]
	bl sub_0200D430
	add r0, r6, #0
	mov r1, #0xb
	bl sub_020E1F6C
	ldr r0, [r5, #0x40]
	add r1, r1, #1
	bl sub_0200D364
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #0x24
	blt _02261D1C
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl ov116_02261E0C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02261D6C: .word 0x0000232E
	thumb_func_end ov116_02261D08

	thumb_func_start ov116_02261D70
ov116_02261D70: ; 0x02261D70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	add r4, sp, #0xc
	ldr r0, [r1, #8]
	ldr r7, [r1, #0xc]
	ldr r1, _02261DE8 ; =0x02267A58
	str r0, [sp, #8]
	ldrh r2, [r1]
	add r0, sp, #0xc
	mov r6, #0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
_02261D96:
	mov r0, #1
	str r0, [sp]
	ldr r0, _02261DEC ; =0x0000232C
	mov r1, #0
	str r0, [sp, #4]
	ldrsh r1, [r4, r1]
	add r0, sp, #0x14
	mov r2, #0xe0
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r1, r7, #0
	add r2, sp, #0x14
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200D33C
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D430
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _02261D96
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261DE8: .word 0x02267A58
_02261DEC: .word 0x0000232C
	thumb_func_end ov116_02261D70

	thumb_func_start ov116_02261DF0
ov116_02261DF0: ; 0x02261DF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261DF6:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02261DF6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261DF0

	thumb_func_start ov116_02261E0C
ov116_02261E0C: ; 0x02261E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02261E14:
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E14
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E0C

	thumb_func_start ov116_02261E28
ov116_02261E28: ; 0x02261E28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261E2E:
	ldr r0, [r5, #0x40]
	bl sub_0200D33C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E2E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E28

	thumb_func_start ov116_02261E40
ov116_02261E40: ; 0x02261E40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261E46:
	ldr r0, [r5, #0x40]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E46
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E40

	thumb_func_start ov116_02261E58
ov116_02261E58: ; 0x02261E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _02261EA0 ; =0x02267AD0
	add r6, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r3, r1, #0
	add r7, r2, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r3, #1
	add r0, r5, r0
	add r0, #0xf4
	lsl r4, r6, #3
	ldrh r0, [r0]
	ldr r1, [r7, r4]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D364
	add r0, r5, r6
	add r1, sp, #4
	ldr r0, [r0, #0x28]
	ldr r1, [r1, r4]
	bl sub_0200D364
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261EA0: .word 0x02267AD0
	thumb_func_end ov116_02261E58

	thumb_func_start ov116_02261EA4
ov116_02261EA4: ; 0x02261EA4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r3, _02261F04 ; =0x02267A90
	add r2, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xf4
	ldrh r0, [r0]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D37C
	add r4, r0, #0
	add r0, r5, r6
	ldr r0, [r0, #0x28]
	bl sub_0200D37C
	mov r2, #0
	add r3, sp, #0
_02261EE0:
	ldr r1, [r3, #0]
	cmp r4, r1
	bne _02261EF2
	ldr r1, [r3, #4]
	cmp r0, r1
	bne _02261EF2
	add sp, #0x20
	add r0, r2, #0
	pop {r4, r5, r6, pc}
_02261EF2:
	add r2, r2, #1
	add r3, #8
	cmp r2, #4
	blt _02261EE0
	bl sub_02022974
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02261F04: .word 0x02267A90
	thumb_func_end ov116_02261EA4

	thumb_func_start ov116_02261F08
ov116_02261F08: ; 0x02261F08
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _02261F38
	add r5, r6, #0
_02261F16:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _02261F30
	ldr r0, [r5, #0x1c]
	bl sub_0200D33C
	ldr r0, [r5, #0x28]
	bl sub_0200D33C
	ldr r0, [r5, #0x34]
	bl sub_0200D33C
	add r5, r5, #4
_02261F30:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02261F16
_02261F38:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261F08

	thumb_func_start ov116_02261F3C
ov116_02261F3C: ; 0x02261F3C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _02261F6C
	add r5, r6, #0
_02261F4A:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _02261F64
	ldr r0, [r5, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r5, #0x28]
	bl sub_0200D0F4
	ldr r0, [r5, #0x34]
	bl sub_0200D0F4
	add r5, r5, #4
_02261F64:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02261F4A
_02261F6C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261F3C

	thumb_func_start ov116_02261F70
ov116_02261F70: ; 0x02261F70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _02261FFC ; =0x00001FE0
	add r0, r5, r0
	bl sub_0201A7A0
	mov r1, #0x13
	str r1, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r1, #4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, _02261FFC ; =0x00001FE0
	ldr r0, [r0, #0x10]
	add r1, r5, r1
	mov r2, #7
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02261FFC ; =0x00001FE0
	mov r1, #0xff
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r2, _02262000 ; =0x0000019A
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6a
	bl sub_0200B144
	mov r1, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r1, #0
	ldr r0, _02261FFC ; =0x00001FE0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, r0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, _02261FFC ; =0x00001FE0
	mov r1, #0
	add r0, r5, r0
	mov r2, #0xb4
	mov r3, #0xd
	bl sub_0200DC48
	ldr r0, _02261FFC ; =0x00001FE0
	add r0, r5, r0
	bl sub_0201A954
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02261FFC: .word 0x00001FE0
_02262000: .word 0x0000019A
	thumb_func_end ov116_02261F70

	thumb_func_start ov116_02262004
ov116_02262004: ; 0x02262004
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0226202E
	ldr r0, _02262030 ; =0x00001FE0
	mov r1, #1
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201A8FC
_0226202E:
	pop {r4, pc}
	; .align 2, 0
_02262030: .word 0x00001FE0
	thumb_func_end ov116_02262004

	thumb_func_start ov116_02262034
ov116_02262034: ; 0x02262034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [r7, #0x5c]
	mov r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	ldr r2, _02262088 ; =0x02267F20
	mul r0, r1
	add r5, r4, #0
	add r6, r2, r0
_0226204A:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	mov r2, #0x49
	ldr r1, [r0, #4]
	mov r0, #0x50
	mul r0, r1
	add r0, r6, r0
	add r0, r5, r0
	sub r0, #0x4c
	ldr r0, [r0, #0]
	mov r1, #0xa4
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r3, #0x6a
	bl sub_02002FEC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226204A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02262088: .word 0x02267F20
	thumb_func_end ov116_02262034

	thumb_func_start ov116_0226208C
ov116_0226208C: ; 0x0226208C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	lsl r0, r0, #3
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_0226208C

	thumb_func_start ov116_022620AC
ov116_022620AC: ; 0x022620AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	add r5, r1, #0
	ldr r3, _02262254 ; =0x02267AF0
	str r0, [sp, #0x24]
	add r2, sp, #0x34
	mov r1, #0x24
_022620C0:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _022620C0
	ldr r0, [r5, #4]
	cmp r0, #2
	beq _022620DC
	cmp r0, #3
	beq _022620F8
	cmp r0, #4
	beq _02262114
	b _02262130
_022620DC:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	b _02262134
_022620F8:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x50
	mov r3, #7
	bl sub_0200710C
	b _02262134
_02262114:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x51
	mov r3, #7
	bl sub_0200710C
	b _02262134
_02262130:
	bl sub_02022974
_02262134:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bgt _0226213E
	b _02262250
_0226213E:
	ldr r0, _02262258 ; =0x00001FF0
	str r6, [sp, #0x1c]
	add r4, r5, r0
	ldr r0, [sp, #0x18]
	add r0, #0x8c
	str r0, [sp, #0x18]
_0226214A:
	ldr r0, [r5, #0]
	cmp r6, r0
	beq _02262246
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov114_0225C7A4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov114_0225C7CC
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r1, [r5, #4]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x34
	add r1, r0, r2
	ldr r0, [sp, #0x1c]
	mov r2, #7
	add r7, r1, r0
	mov r0, #0x2b
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r3, r2, #0
	sub r3, #0x37
	str r0, [sp, #0x20]
	mov r0, #0x29
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r1, r4, #0
	str r0, [sp, #0x30]
	mov r0, #0x2d
	mvn r0, r0
	ldrsh r0, [r7, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r7, r3]
	ldr r0, [r5, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x10]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	mov r1, #0xff
	add r0, r0, r2
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x2c]
	mov r1, #0x6a
	bl sub_02025F04
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov116_0226208C
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02262216
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0226225C ; =0x0005060F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201D7E0
	b _02262232
_02262216:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02262260 ; =0x0001020F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201D7E0
_02262232:
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A954
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, #8
	str r0, [sp, #0x1c]
_02262246:
	ldr r0, [r5, #4]
	add r6, r6, #1
	cmp r6, r0
	bge _02262250
	b _0226214A
_02262250:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02262254: .word 0x02267AF0
_02262258: .word 0x00001FF0
_0226225C: .word 0x0005060F
_02262260: .word 0x0001020F
	thumb_func_end ov116_022620AC

	thumb_func_start ov116_02262264
ov116_02262264: ; 0x02262264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _022622A6
	ldr r0, _022622C4 ; =0x00001FF0
	mov r7, #1
	add r5, r6, r0
_02262278:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _0226229E
	add r0, r5, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0226229C
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200DC9C
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_0226229C:
	add r5, #0x10
_0226229E:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02262278
_022622A6:
	ldr r2, [r6, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022622C4: .word 0x00001FF0
	thumb_func_end ov116_02262264

	thumb_func_start ov116_022622C8
ov116_022622C8: ; 0x022622C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x48]
	ldr r5, [r0, #0x54]
	ldr r6, [r0, #0x50]
	ldr r7, [r0, #0x5c]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x54
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x52
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0226258C ; =0x00002328
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1d
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1c
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1b
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262590 ; =0x0000232B
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xd
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xc
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262594 ; =0x0000232C
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x14
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x13
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262598 ; =0x0000232D
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x10
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xf
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0226259C ; =0x0000232E
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x19
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x18
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022625A0 ; =0x0000232A
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0xab
	mov r1, #0x6a
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022625A4 ; =0x0000232F
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r5, #0
	bl sub_0200CDC4
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226258C: .word 0x00002328
_02262590: .word 0x0000232B
_02262594: .word 0x0000232C
_02262598: .word 0x0000232D
_0226259C: .word 0x0000232E
_022625A0: .word 0x0000232A
_022625A4: .word 0x0000232F
	thumb_func_end ov116_022622C8

	thumb_func_start ov116_022625A8
ov116_022625A8: ; 0x022625A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r1, #0
	ldr r1, [r6, #0x14]
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	mov r4, #0
	str r0, [sp, #0x18]
	ldr r0, [r1, #0xc]
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _022625C6
	b _022626DC
_022625C6:
	str r6, [sp, #0xc]
	add r7, r4, #0
	add r5, r6, #0
_022625CC:
	ldr r1, [sp, #0xc]
	mov r0, #0xff
	add r1, #0xf4
	strh r0, [r1]
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _022626CC
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0xf4
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x28]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov116_02264680
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0200D430
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #3
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x34]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov116_02264680
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0200D430
	ldr r0, [r5, #0x34]
	mov r1, #5
	bl sub_0200D364
	ldr r0, [r5, #0x1c]
	bl sub_0200D33C
	ldr r0, [r5, #0x28]
	bl sub_0200D33C
	ldr r0, [r5, #0x34]
	bl sub_0200D33C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov116_02261E58
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x10]
_022626CC:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	cmp r4, r0
	bge _022626DC
	b _022625CC
_022626DC:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022626E0: .word 0x00002328
_022626E4: .word 0x02267A78
	thumb_func_end ov116_022625A8

	thumb_func_start ov116_022626E8
ov116_022626E8: ; 0x022626E8
	push {r4, r5, lr}
	sub sp, #0x3c
	ldr r0, [r0, #0x14]
	mov r3, #1
	ldr r4, [r0, #8]
	ldr r5, [r0, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262720 ; =0x0000232B
	str r0, [sp, #4]
	add r0, sp, #8
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #8
	bl sub_0200CE6C
	add r4, r0, #0
	bl sub_0200D33C
	add r0, r4, #0
	add sp, #0x3c
	pop {r4, r5, pc}
	nop
_02262720: .word 0x0000232B
	thumb_func_end ov116_022626E8

	thumb_func_start ov116_02262724
ov116_02262724: ; 0x02262724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r7, sp, #0xc
	ldr r6, [r0, #8]
	ldr r4, [r0, #0xc]
	mov r0, #0
	str r0, [sp, #8]
_02262736:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02262814 ; =0x0000232A
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x38]
	mov r0, #0x14
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262818 ; =0x00002328
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #2
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x38]
	mov r0, #0x14
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _02262736
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262814: .word 0x0000232A
_02262818: .word 0x00002328
	thumb_func_end ov116_02262724

	thumb_func_start ov116_0226281C
ov116_0226281C: ; 0x0226281C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02262822:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02262822
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_0226281C

	thumb_func_start ov116_02262840
ov116_02262840: ; 0x02262840
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0x80
	ldr r6, [r0, #8]
	ldr r4, [r0, #0xc]
	mov r0, #7
	str r0, [sp]
	ldr r0, _022628A8 ; =0x0000232F
	add r2, r1, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #8
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r5, #0xf0
	ldr r0, [r5, #0]
	mov r1, #7
	bl sub_0200D430
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_022628A8: .word 0x0000232F
	thumb_func_end ov116_02262840

	thumb_func_start ov116_022628AC
ov116_022628AC: ; 0x022628AC
	ldr r3, _022628B4 ; =sub_0200D0F4
	add r0, #0xf0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_022628B4: .word sub_0200D0F4
	thumb_func_end ov116_022628AC

	thumb_func_start ov116_022628B8
ov116_022628B8: ; 0x022628B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, [r0, #0x58]
	ldr r4, [r0, #0x48]
	ldr r6, [r0, #0x5c]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r5, #0
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, r5, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, r5, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, r5, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4d
	add r2, r5, #0
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4e
	add r2, r5, #0
	mov r3, #7
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0x49
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #5
	add r2, r5, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #8
	add r2, r5, #0
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #9
	add r2, r5, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #6
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x6a
	bl sub_02003050
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x26
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6a
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xb4
	mov r3, #0xd
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov116_022628B8

	thumb_func_start ov116_02262A44
ov116_02262A44: ; 0x02262A44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x6a
	mov r1, #0x10
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_02262A58:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02262A58
	mov r1, #0x4b
	str r5, [r0, #4]
	lsl r1, r1, #4
	strh r1, [r0, #8]
	str r4, [r0, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_02262A44

	thumb_func_start ov116_02262A6C
ov116_02262A6C: ; 0x02262A6C
	ldr r3, _02262A70 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02262A70: .word sub_020181C4
	thumb_func_end ov116_02262A6C

	thumb_func_start ov116_02262A74
ov116_02262A74: ; 0x02262A74
	mov r1, #8
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0, #8]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _02262A86
	mov r0, #1
	bx lr
_02262A86:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02262A74

	thumb_func_start ov116_02262A8C
ov116_02262A8C: ; 0x02262A8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02262AD8 ; =0x00002BBC
	mov r0, #0x6a
	add r7, r2, #0
	bl sub_02018144
	ldr r2, _02262AD8 ; =0x00002BBC
	add r4, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r5, [r4, #4]
	ldr r3, _02262ADC ; =0x00002BB8
	str r6, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r7, [r4, #0x14]
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0xcc
	ldr r2, [r4, r1]
	ldr r1, _02262AE0 ; =0x00002228
	str r2, [r4, r1]
	add r2, r3, #0
	sub r2, #0xcc
	add r2, r4, r2
	add r1, r1, #4
	str r2, [r4, r1]
	sub r3, #0x24
	str r0, [r4, r3]
	add r0, r4, #0
	bl ov116_02262AE4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262AD8: .word 0x00002BBC
_02262ADC: .word 0x00002BB8
_02262AE0: .word 0x00002228
	thumb_func_end ov116_02262A8C

	thumb_func_start ov116_02262AE4
ov116_02262AE4: ; 0x02262AE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02262C48 ; =0x00001FC8
	add r7, r0, #0
	mov r0, #0
	mov r3, #0x19
	str r0, [r7, r2]
	add r1, r2, #4
	lsl r3, r3, #0xe
	str r3, [r7, r1]
	add r2, #8
	mov r3, #0x31
	ldr r1, _02262C4C ; =0x0000051C
	str r0, [r7, r2]
	str r0, [r7, r1]
	add r2, r1, #4
	str r0, [r7, r2]
	lsl r3, r3, #4
	str r0, [r7, r3]
	add r2, r3, #4
	str r0, [r7, r2]
	sub r1, r1, #4
	str r0, [r7, r1]
	sub r1, r3, #4
	sub r3, #0x6c
	str r0, [r7, r1]
	add r0, r7, r3
	bl ov116_02266FEC
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r7, r0
	bl ov116_02266FEC
	ldr r0, _02262C50 ; =0x00000AD4
	add r0, r7, r0
	bl ov116_02266FEC
	ldr r0, _02262C54 ; =0x00000AE4
	add r0, r7, r0
	bl ov116_02266FEC
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xce
	lsl r0, r0, #4
	add r6, r7, r0
	add r0, #0x10
	add r4, r7, r0
	mov r0, #0xb5
	lsl r0, r0, #4
	add r5, r7, r0
_02262B60:
	add r0, r6, #0
	bl ov116_02266FEC
	add r0, r4, #0
	bl ov116_02266FEC
	mov r0, #5
	str r0, [sp]
	ldr r0, _02262C58 ; =0x3F4CCCCD
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #5
	bl ov116_0226432C
	mov r1, #0
	mov r0, #4
	mvn r0, r0
	str r0, [sp]
	ldr r0, _02262C58 ; =0x3F4CCCCD
	add r2, r1, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	sub r3, r1, #5
	bl ov116_0226432C
	mov r0, #0x83
	lsl r0, r0, #2
	add r6, r6, r0
	add r4, r4, r0
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _02262B60
	mov r3, #5
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #5
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r7, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #5
	mov r1, #0
	ldr r0, _02262C5C ; =0x3FF0A3D7
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02262C60 ; =0x00000944
	add r2, r1, #0
	add r0, r7, r0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02262C58 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02262C60 ; =0x00000944
	add r2, r1, #0
	add r0, r7, r0
	str r1, [sp, #8]
	bl ov116_0226432C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262C48: .word 0x00001FC8
_02262C4C: .word 0x0000051C
_02262C50: .word 0x00000AD4
_02262C54: .word 0x00000AE4
_02262C58: .word 0x3F4CCCCD
_02262C5C: .word 0x3FF0A3D7
_02262C60: .word 0x00000944
	thumb_func_end ov116_02262AE4

	thumb_func_start ov116_02262C64
ov116_02262C64: ; 0x02262C64
	ldr r3, _02262C68 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02262C68: .word sub_020181C4
	thumb_func_end ov116_02262C64

	thumb_func_start ov116_02262C6C
ov116_02262C6C: ; 0x02262C6C
	ldr r1, _02262C80 ; =0x00001FCC
	ldr r0, [r0, r1]
	asr r0, r0, #0xc
	cmp r0, #0x2d
	bgt _02262C7A
	mov r0, #1
	bx lr
_02262C7A:
	mov r0, #0
	bx lr
	nop
_02262C80: .word 0x00001FCC
	thumb_func_end ov116_02262C6C

	thumb_func_start ov116_02262C84
ov116_02262C84: ; 0x02262C84
	push {r3, lr}
	ldr r1, _02262CB4 ; =0x00001FCC
	ldr r1, [r0, r1]
	asr r1, r1, #0xc
	cmp r1, #0x4b
	bge _02262C9C
	cmp r1, #0x3d
	ble _02262C9C
	mov r1, #1
	bl ov116_02261C48
	pop {r3, pc}
_02262C9C:
	cmp r1, #0x3c
	bge _02262CAC
	cmp r1, #0x2e
	ble _02262CAC
	mov r1, #2
	bl ov116_02261C48
	pop {r3, pc}
_02262CAC:
	mov r1, #0
	bl ov116_02261C48
	pop {r3, pc}
	; .align 2, 0
_02262CB4: .word 0x00001FCC
	thumb_func_end ov116_02262C84

	thumb_func_start ov116_02262CB8
ov116_02262CB8: ; 0x02262CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x6a
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	add r1, r5, #0
	add r1, #0xf4
	lsl r0, r6, #1
	ldrh r2, [r1, r0]
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, #0x1c]
	str r2, [r4, #0xc]
	ldrh r0, [r1, r0]
	mov r2, #1
	add r1, r4, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xc
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x2c]
	ldr r0, _02262D04 ; =ov116_02263158
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02262D04: .word ov116_02263158
	thumb_func_end ov116_02262CB8

	thumb_func_start ov116_02262D08
ov116_02262D08: ; 0x02262D08
	push {r3, r4, r5, lr}
	ldr r2, _02262D58 ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r3, r3, r2
	ldr r2, [r3, #0x30]
	cmp r2, #1
	beq _02262D56
	ldr r4, _02262D5C ; =0x00002BB4
	ldr r2, [r0, r4]
	sub r4, #0xac
	str r2, [r3, #0x40]
	mov r2, #1
	add r5, r0, r4
	lsl r4, r1, #2
	str r2, [r3, #0x30]
	add r4, r5, r4
	str r4, [r3, #0x2c]
	ldr r4, [r4, #0]
	lsl r1, r1, #1
	add r1, r0, r1
	str r4, [r3, #0x28]
	add r1, #0xf4
	ldrh r1, [r1]
	lsl r2, r2, #0xc
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x34]
	str r1, [r3, #0xc]
	mov r1, #0
	str r1, [r3, #0]
	str r1, [r3, #4]
	ldr r0, [r0, #0x14]
	add r1, r3, #0
	str r0, [r3, #0x3c]
	ldr r0, _02262D60 ; =ov116_0226323C
	bl sub_0200D9E8
_02262D56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262D58: .word 0x000029D0
_02262D5C: .word 0x00002BB4
_02262D60: .word ov116_0226323C
	thumb_func_end ov116_02262D08

	thumb_func_start ov116_02262D64
ov116_02262D64: ; 0x02262D64
	push {r3, lr}
	ldr r2, _02262DAC ; =0x000029D0
	add r3, r0, r2
	mov r2, #0x44
	mul r2, r1
	add r1, r3, r2
	ldr r2, [r1, #0x30]
	cmp r2, #1
	beq _02262DA8
	ldr r3, _02262DB0 ; =0x00002BB4
	ldr r2, [r0, r3]
	sub r3, #0xc8
	str r2, [r1, #0x40]
	mov r2, #1
	str r2, [r1, #0x30]
	add r3, r0, r3
	str r3, [r1, #0x2c]
	ldr r3, [r3, #0]
	lsl r2, r2, #0xc
	str r3, [r1, #0x28]
	ldr r3, _02262DB4 ; =0x00001BB0
	add r3, r0, r3
	str r3, [r1, #0x34]
	ldr r3, _02262DB8 ; =0x00001DBC
	add r3, r0, r3
	str r3, [r1, #0x38]
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x3c]
	ldr r0, _02262DBC ; =ov116_02263434
	bl sub_0200D9E8
_02262DA8:
	pop {r3, pc}
	nop
_02262DAC: .word 0x000029D0
_02262DB0: .word 0x00002BB4
_02262DB4: .word 0x00001BB0
_02262DB8: .word 0x00001DBC
_02262DBC: .word ov116_02263434
	thumb_func_end ov116_02262D64

	thumb_func_start ov116_02262DC0
ov116_02262DC0: ; 0x02262DC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6a
	mov r1, #0x7c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x7c
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r5, r0
	str r1, [r4, #0xc]
	mov r1, #0x32
	lsl r1, r1, #4
	add r1, r5, r1
	add r0, r0, #4
	add r2, r4, #0
	str r1, [r4, #0x10]
	add r0, r5, r0
	str r0, [r4, #0x14]
	ldr r0, _02262E40 ; =0x00001FC8
	add r2, #0x20
	add r3, r5, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r0, _02262E44 ; =0x00002BB4
	ldr r0, [r5, r0]
	str r0, [r4, #0x74]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x78]
	add r0, r5, #0
	bl ov116_02261C48
	mov r0, #0xea
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	ldr r0, _02262E48 ; =0x000005B4
	mov r1, #0
	add r0, r5, r0
	bl sub_02017240
	mov r0, #0x1f
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	mov r2, #1
	ldr r0, _02262E4C ; =ov116_02262E50
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02262E40: .word 0x00001FC8
_02262E44: .word 0x00002BB4
_02262E48: .word 0x000005B4
_02262E4C: .word ov116_02262E50
	thumb_func_end ov116_02262DC0

	thumb_func_start ov116_02262E50
ov116_02262E50: ; 0x02262E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #4
	asr r5, r0, #0x10
	bl sub_0200F2AC
	cmp r0, #0
	beq _02262E70
	ldr r0, [r4, #0x78]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02262E80
_02262E70:
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02262E80:
	ldr r0, [r4, #0]
	cmp r0, #3
	bls _02262E88
	b _022630E0
_02262E88:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262E94: ; jump table
	.short _02262E9C - _02262E94 - 2 ; case 0
	.short _02262F4E - _02262E94 - 2 ; case 1
	.short _0226306A - _02262E94 - 2 ; case 2
	.short _022630AC - _02262E94 - 2 ; case 3
_02262E9C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	cmp r0, #0
	bne _02262EF0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02262ED8
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02262F3A
_02262ED8:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02262F3A
_02262EF0:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #3
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	add r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02262F24
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02262F3A
_02262F24:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_02262F3A:
	ldr r0, _02263140 ; =0x0000060B
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02262F4E:
	add r0, r4, #0
	add r0, #0x44
	bl ov116_02264774
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov116_02264774
	add r6, r0, #0
	mov r0, #0x79
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r1, r0, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r7, #0
	str r3, [r2, r1]
	beq _02262F7C
	cmp r6, #0
	bne _02262F7E
_02262F7C:
	b _0226313C
_02262F7E:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02263018
	ldr r1, [r4, #0xc]
	mov r2, #1
	str r2, [r1, #0]
	ldr r1, [r4, #0x10]
	sub r0, #0x54
	add r0, r1, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	ldr r1, [r4, #0x10]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263144 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263144 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov116_0226432C
	mov r0, #0x79
	mov r2, #3
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _02263000
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02263060
_02263000:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #8
	bl ov116_02264764
	b _02263060
_02263018:
	ldr r1, [r4, #0x10]
	mov r2, #3
	ldr r1, [r1, r0]
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x44
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	cmp r5, #0
	ldr r1, [r4, #0x10]
	ble _0226304A
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
	b _02263060
_0226304A:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x5c
	add r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_02263060:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0226306A:
	add r0, r4, #0
	add r0, #0x44
	bl ov116_02264774
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x5c
	bl ov116_02264774
	mov r1, #0x79
	ldr r3, [r4, #0x44]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	str r3, [r2, r1]
	add r1, r1, #4
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x10]
	cmp r5, #0
	str r3, [r2, r1]
	beq _0226313C
	cmp r0, #0
	beq _0226313C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022630A2
	ldr r0, _02263148 ; =0x00000631
	bl sub_02005748
_022630A2:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630AC:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022630D8
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _022630BE
	ldr r0, _0226314C ; =0x00000575
	bl sub_02005748
_022630BE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x28
	blt _0226313C
	ldr r0, [r4, #0xc]
	mov r1, #2
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630D8:
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022630E0:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0226310A
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x2d
	blt _0226313C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, _02263140 ; =0x0000060B
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_0226310A:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0226313C
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0226311C
	ldr r2, _02263150 ; =0xFFFF8000
	b _0226311E
_0226311C:
	ldr r2, _02263154 ; =0xFFFEC000
_0226311E:
	mov r0, #0x79
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #0x7a
	ldr r1, [r4, #0x10]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
_0226313C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02263140: .word 0x0000060B
_02263144: .word 0x3F4CCCCD
_02263148: .word 0x00000631
_0226314C: .word 0x00000575
_02263150: .word 0xFFFF8000
_02263154: .word 0xFFFEC000
	thumb_func_end ov116_02262E50

	thumb_func_start ov116_02263158
ov116_02263158: ; 0x02263158
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D3E0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263178
	ldr r0, [r4, #0x2c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02263188
_02263178:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
_02263188:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02263194
	cmp r0, #1
	beq _022631D8
	b _02263204
_02263194:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0200D638
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022631BC
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	add r2, r1, r2
	mov r3, #0x10
	bl ov116_02264764
	b _022631CE
_022631BC:
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	add r0, #0x14
	sub r2, r1, r2
	mov r3, #4
	bl ov116_02264764
_022631CE:
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022631D8:
	add r0, r4, #0
	add r0, #0x14
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0200D638
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [r4, #0x14]
	bl sub_0200D614
	cmp r5, #0
	beq _02263236
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263204:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02263222
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x23
	blt _02263236
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263222:
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _02263236
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
_02263236:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02263158

	thumb_func_start ov116_0226323C
ov116_0226323C: ; 0x0226323C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263256
	ldr r0, [r4, #0x3c]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02263264
_02263256:
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, pc}
_02263264:
	ldr r0, [r4, #0]
	cmp r0, #5
	bls _0226326C
	b _022633F6
_0226326C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263278: ; jump table
	.short _02263284 - _02263278 - 2 ; case 0
	.short _022632F8 - _02263278 - 2 ; case 1
	.short _0226332A - _02263278 - 2 ; case 2
	.short _02263340 - _02263278 - 2 ; case 3
	.short _02263370 - _02263278 - 2 ; case 4
	.short _022633C0 - _02263278 - 2 ; case 5
_02263284:
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0xc]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0200D788
	ldr r0, [sp]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02263428 ; =0x45800000
	bls _022632C4
	ldr r1, [sp]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022632D2
_022632C4:
	ldr r1, [sp]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022632D2:
	bl sub_020E1740
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r0, #0x10
	lsl r2, r2, #0xc
	mov r3, #2
	bl ov116_02264764
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0]
	sub r1, r1, #1
	bl sub_0200D430
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022632F8:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020E17B4
	ldr r1, _02263428 ; =0x45800000
	bl sub_020E1304
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	bne _02263320
	b _02263424
_02263320:
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0226332A:
	add r0, r4, #0
	mov r1, #2
	ldr r2, _0226342C ; =0x00000666
	add r0, #0x10
	lsl r1, r1, #0xc
	mov r3, #4
	bl ov116_02264764
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02263340:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020E17B4
	ldr r1, _02263428 ; =0x45800000
	bl sub_020E1304
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	beq _02263424
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02263370:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _02263380
	mov r0, #0
	str r0, [r4, #0]
	b _022633AA
_02263380:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02263396
	add r0, r4, #0
	ldr r1, _0226342C ; =0x00000666
	ldr r2, _02263430 ; =0x00000CCD
	add r0, #0x10
	mov r3, #2
	bl ov116_02264764
	b _022633A4
_02263396:
	ldr r1, _02263430 ; =0x00000CCD
	add r0, r4, #0
	add r0, #0x10
	lsr r2, r1, #1
	mov r3, #4
	bl ov116_02264764
_022633A4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022633AA:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02263424
	mov r0, #0xff
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022633C0:
	add r0, r4, #0
	add r0, #0x10
	bl ov116_02264774
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020E17B4
	ldr r1, _02263428 ; =0x45800000
	bl sub_020E1304
	add r2, r0, #0
	mov r1, #0xfe
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x16
	bl sub_0200D6E8
	cmp r5, #0
	beq _02263424
	mov r0, #4
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_022633F6:
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_0200D474
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D6A4
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
_02263424:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02263428: .word 0x45800000
_0226342C: .word 0x00000666
_02263430: .word 0x00000CCD
	thumb_func_end ov116_0226323C

	thumb_func_start ov116_02263434
ov116_02263434: ; 0x02263434
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldr r6, [r4, #0x34]
	ldr r5, [r4, #0x38]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02263454
	ldr r2, [r4, #0x3c]
	add r0, r2, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0226349E
_02263454:
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0226349E:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0, #0]
	sub r3, r1, #1
	bmi _022634AA
	cmp r3, #4
	ble _022634AC
_022634AA:
	mov r3, #0
_022634AC:
	ldr r0, [r4, #0]
	cmp r0, #5
	bls _022634B4
	b _02263722
_022634B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022634C0: ; jump table
	.short _022634CC - _022634C0 - 2 ; case 0
	.short _022634EC - _022634C0 - 2 ; case 1
	.short _022635A0 - _022634C0 - 2 ; case 2
	.short _022635C0 - _022634C0 - 2 ; case 3
	.short _0226369C - _022634C0 - 2 ; case 4
	.short _022636C8 - _022634C0 - 2 ; case 5
_022634CC:
	ldr r1, [r2, #0]
	ldr r2, _0226376C ; =0x02267BD4
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r6, #0
	bl ov116_022618A8
	ldr r1, [r4, #0x40]
	add r0, r6, #0
	bl ov116_022618B4
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022634EC:
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r6, #0
	ldr r2, [r2, #0]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x27
	bl sub_02017164
	add r1, r6, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r2, [r2, #0]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x28
	bl sub_02017164
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x88
	bl sub_0201727C
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x9c
	bl sub_0201727C
	add r0, r6, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	sub r0, #0x5c
	add r0, r6, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	bl ov116_0226432C
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022635A0:
	ldr r1, [r2, #0]
	ldr r2, _02263774 ; =0x02267BD8
	lsl r3, r3, #3
	ldr r2, [r2, r3]
	add r0, r5, #0
	bl ov116_022618A8
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	bl ov116_022618B4
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022635C0:
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r2, [r2, #0]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x29
	bl sub_02017164
	add r1, r5, #0
	ldr r2, [r4, #0x3c]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x24
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [r2, #0]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x2a
	bl sub_02017164
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x88
	bl sub_0201727C
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x9c
	bl sub_0201727C
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x5c
	add r0, r5, r0
	bl ov116_02266FEC
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov116_02266FEC
	mov r3, #5
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _02263770 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl ov116_0226432C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _02263692
	mov r1, #0
	ldr r2, _02263778 ; =0xFFFF8000
	add r0, r6, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #0
	ldr r2, _02263778 ; =0xFFFF8000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_02017350
	mov r0, #0x79
	ldr r1, _02263778 ; =0xFFFF8000
	lsl r0, r0, #2
	str r1, [r6, r0]
	str r1, [r5, r0]
_02263692:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_0226369C:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263768
	add r0, r6, #0
	mov r1, #1
	bl sub_02017348
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x7b
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022636C8:
	cmp r1, #0
	bne _022636D2
	mov r0, #0xff
	str r0, [r4, #0]
	b _02263718
_022636D2:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _02263718
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0]
_02263718:
	ldr r0, [r4, #0x2c]
	add sp, #0xc
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	pop {r4, r5, r6, r7, pc}
_02263722:
	add r0, r6, #0
	bl ov116_0226192C
	add r0, r5, #0
	bl ov116_0226192C
	ldr r1, [r4, #0x3c]
	add r0, r6, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r6, #0x9c
	add r0, r6, #0
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r0, r5, #0
	add r0, #0x88
	add r1, #0x24
	bl sub_020171A0
	ldr r1, [r4, #0x3c]
	add r5, #0x9c
	add r0, r5, #0
	add r1, #0x24
	bl sub_020171A0
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl sub_0200DA58
_02263768:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226376C: .word 0x02267BD4
_02263770: .word 0x3F4CCCCD
_02263774: .word 0x02267BD8
_02263778: .word 0xFFFF8000
	thumb_func_end ov116_02263434

	thumb_func_start ov116_0226377C
ov116_0226377C: ; 0x0226377C
	push {r3, r4}
	sub sp, #8
	ldr r3, _022637AC ; =0x02267B38
	add r2, sp, #0
	ldrh r4, [r3, #0x10]
	add r1, sp, #0
	strh r4, [r2]
	ldrh r4, [r3, #0x12]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x14]
	ldrh r3, [r3, #0x16]
	strh r4, [r2, #4]
	strh r3, [r2, #6]
	ldr r3, _022637B0 ; =0x00002AF0
	sub r2, r3, #4
	ldr r2, [r0, r2]
	ldr r4, [r0, r3]
	lsl r2, r2, #1
	ldrh r1, [r1, r2]
	add r1, r4, r1
	str r1, [r0, r3]
	add sp, #8
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022637AC: .word 0x02267B38
_022637B0: .word 0x00002AF0
	thumb_func_end ov116_0226377C

	thumb_func_start ov116_022637B4
ov116_022637B4: ; 0x022637B4
	push {r3, r4}
	sub sp, #8
	ldr r3, _022637E8 ; =0x02267B38
	add r1, sp, #0
	ldrh r4, [r3, #0x18]
	add r2, sp, #0
	strh r4, [r1]
	ldrh r4, [r3, #0x1a]
	strh r4, [r1, #2]
	ldrh r4, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	strh r4, [r1, #4]
	ldr r4, _022637EC ; =0x00002AF0
	strh r3, [r1, #6]
	sub r3, r4, #4
	ldr r3, [r0, r3]
	ldr r1, [r0, r4]
	sub r3, r3, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	add r1, r1, r2
	str r1, [r0, r4]
	add sp, #8
	pop {r3, r4}
	bx lr
	nop
_022637E8: .word 0x02267B38
_022637EC: .word 0x00002AF0
	thumb_func_end ov116_022637B4

	thumb_func_start ov116_022637F0
ov116_022637F0: ; 0x022637F0
	ldr r2, _0226385C ; =0x00002B18
	ldr r1, _02263860 ; =0x0000010D
	ldr r3, [r0, r2]
	cmp r3, r1
	bgt _0226380A
	bge _0226382A
	cmp r3, #0
	bgt _02263804
	beq _0226384A
	b _02263850
_02263804:
	cmp r3, #0x77
	beq _02263822
	b _02263850
_0226380A:
	ldr r1, _02263864 ; =0x00000239
	cmp r3, r1
	bgt _0226381A
	bge _0226383A
	sub r1, #0x96
	cmp r3, r1
	beq _02263832
	b _02263850
_0226381A:
	add r1, #0x96
	cmp r3, r1
	beq _02263842
	b _02263850
_02263822:
	mov r1, #1
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226382A:
	mov r1, #2
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_02263832:
	mov r1, #3
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226383A:
	mov r1, #4
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_02263842:
	mov r1, #5
	sub r2, #0x30
	str r1, [r0, r2]
	b _02263850
_0226384A:
	mov r1, #0
	sub r2, #0x30
	str r1, [r0, r2]
_02263850:
	ldr r2, _0226385C ; =0x00002B18
	ldr r3, _02263868 ; =ov116_0226386C
	ldr r1, [r0, r2]
	sub r2, #0x2c
	add r2, r0, r2
	bx r3
	; .align 2, 0
_0226385C: .word 0x00002B18
_02263860: .word 0x0000010D
_02263864: .word 0x00000239
_02263868: .word ov116_0226386C
	thumb_func_end ov116_022637F0

	thumb_func_start ov116_0226386C
ov116_0226386C: ; 0x0226386C
	ldr r0, _022638BC ; =0x00000257
	cmp r1, r0
	bgt _02263884
	bge _0226389C
	cmp r1, #0
	bgt _0226387C
	beq _022638B4
	b _022638B8
_0226387C:
	lsr r0, r0, #1
	cmp r1, r0
	beq _02263896
	b _022638B8
_02263884:
	ldr r0, _022638C0 ; =0x00000383
	cmp r1, r0
	bgt _0226388E
	beq _022638A4
	b _022638B8
_0226388E:
	ldr r0, _022638C4 ; =0x000004AF
	cmp r1, r0
	beq _022638AC
	b _022638B8
_02263896:
	mov r0, #1
	str r0, [r2, #0]
	bx lr
_0226389C:
	mov r0, #2
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638A4:
	mov r0, #3
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638AC:
	mov r0, #4
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_022638B4:
	mov r0, #0
	str r0, [r2, #0]
_022638B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_022638BC: .word 0x00000257
_022638C0: .word 0x00000383
_022638C4: .word 0x000004AF
	thumb_func_end ov116_0226386C

	thumb_func_start ov116_022638C8
ov116_022638C8: ; 0x022638C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _022639A4
	ldr r0, _022639A8 ; =0x00002B08
	add r7, r5, #0
	add r0, r5, r0
	str r0, [sp]
	add r6, r5, #0
_022638E2:
	ldr r0, [r5, #0]
	cmp r4, r0
	beq _02263992
	ldr r0, _022639AC ; =0x00002B9C
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _022638FA
	cmp r0, #1
	beq _0226393A
	cmp r0, #2
	beq _0226397A
	b _02263992
_022638FA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02261EA4
	cmp r0, #1
	beq _02263910
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov116_02261E58
_02263910:
	mov r1, #0x2b
	lsl r1, r1, #8
	ldrsh r1, [r6, r1]
	ldr r2, [sp]
	add r0, r5, #0
	bl ov116_0226386C
	cmp r0, #0
	beq _0226392A
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02262D08
_0226392A:
	mov r0, #0x2b
	lsl r0, r0, #8
	ldrsh r0, [r6, r0]
	add r1, r0, #1
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	b _02263992
_0226393A:
	ldr r0, _022639B0 ; =0x00002AFE
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r6, r0]
	ldr r0, _022639A8 ; =0x00002B08
	str r1, [r7, r0]
	ldr r0, _022639B4 ; =0x000021A4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02261EA4
	cmp r0, #3
	beq _02263992
	ldr r0, _022639B8 ; =0x00002BB8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263992
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov116_02261E58
	add r0, r5, #0
	add r1, r4, #0
	bl ov116_02262CB8
	ldr r0, _022639B8 ; =0x00002BB8
	mov r1, #1
	str r1, [r5, r0]
	b _02263992
_0226397A:
	ldr r0, _022639B8 ; =0x00002BB8
	mov r1, #0
	str r1, [r5, r0]
	sub r0, #0xba
	strh r1, [r5, r0]
	mov r0, #0x2b
	lsl r0, r0, #8
	strh r1, [r6, r0]
	add r0, #8
	str r1, [r7, r0]
	ldr r0, _022639AC ; =0x00002B9C
	str r1, [r7, r0]
_02263992:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r6, r6, #2
	cmp r4, r0
	blt _022638E2
_022639A4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022639A8: .word 0x00002B08
_022639AC: .word 0x00002B9C
_022639B0: .word 0x00002AFE
_022639B4: .word 0x000021A4
_022639B8: .word 0x00002BB8
	thumb_func_end ov116_022638C8

	thumb_func_start ov116_022639BC
ov116_022639BC: ; 0x022639BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, _02263B20 ; =0x00002B9C
	ldr r2, [r4, #0]
	add r3, r4, r1
	lsl r2, r2, #2
	ldr r5, [r3, r2]
	cmp r5, #3
	bls _022639D0
	b _02263B1C
_022639D0:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_022639DC: ; jump table
	.short _022639E4 - _022639DC - 2 ; case 0
	.short _02263A56 - _022639DC - 2 ; case 1
	.short _02263A90 - _022639DC - 2 ; case 2
	.short _02263AEE - _022639DC - 2 ; case 3
_022639E4:
	mov r1, #0
	bl ov116_02262C6C
	cmp r0, #0
	beq _02263A2C
	ldr r0, _02263B24 ; =0x00002AFC
	mov r1, #0
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov116_02262DC0
	add r0, r4, #0
	bl ov116_02263DB8
	ldr r0, [r4, #0]
	ldr r1, _02263B20 ; =0x00002B9C
	lsl r0, r0, #2
	mov r2, #1
	add r0, r4, r0
	str r2, [r0, r1]
	add r2, r4, r1
	ldr r1, [r4, #0]
	mov r0, #0x18
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_020359DC
	ldr r0, _02263B28 ; =0x00002B18
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0x1a
	strh r1, [r4, r0]
	ldr r0, _02263B2C ; =0x000021A4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02263A2C:
	add r0, r4, #0
	bl ov116_02262C84
	add r0, r4, #0
	bl ov116_02263BA0
	add r0, r4, #0
	bl ov116_02263E20
	add r0, r4, #0
	bl ov116_0226377C
	mov r0, #0x2b
	lsl r0, r0, #8
	add r2, r4, r0
	ldr r0, [r4, #0]
	lsl r1, r0, #1
	ldrsh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	pop {r3, r4, r5, pc}
_02263A56:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0xa0
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0x5a
	blt _02263A78
	ldr r0, [r4, #0]
	mov r2, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, r1]
_02263A78:
	ldr r1, _02263B28 ; =0x00002B18
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r0, #0x1a
	strh r2, [r4, r0]
	ldr r0, [r4, #0]
	sub r1, #0x18
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, r1]
	pop {r3, r4, r5, pc}
_02263A90:
	add r0, r1, #0
	sub r0, #0xa0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _02263AE8
	add r2, r1, #0
	mov r0, #0
	sub r2, #0x84
	str r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0x9e
	strh r0, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	strh r0, [r4, r2]
	ldr r2, [r4, #0]
	lsl r2, r2, #1
	add r3, r4, r2
	add r2, r1, #0
	sub r2, #0x9c
	strh r0, [r3, r2]
	add r0, r1, #0
	sub r0, #0xa4
	ldr r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa8
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _02263ACE
	sub r1, #0xa8
	str r2, [r4, r1]
_02263ACE:
	add r0, r4, #0
	bl ov116_02262AE4
	ldr r1, _02263B20 ; =0x00002B9C
	mov r0, #0x18
	add r2, r4, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #4
	bl sub_020359DC
	pop {r3, r4, r5, pc}
_02263AE8:
	mov r0, #0
	str r0, [r3, r2]
	pop {r3, r4, r5, pc}
_02263AEE:
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	add r3, r2, #1
	add r2, r1, #0
	sub r2, #0xa0
	strh r3, [r4, r2]
	add r2, r1, #0
	sub r2, #0xa0
	ldrsh r2, [r4, r2]
	cmp r2, #0x1d
	blo _02263B1C
	mov r2, #0
	sub r1, #0xa0
	strh r2, [r4, r1]
	bl ov116_02262AE4
	ldr r0, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _02263B20 ; =0x00002B9C
	str r2, [r1, r0]
_02263B1C:
	pop {r3, r4, r5, pc}
	nop
_02263B20: .word 0x00002B9C
_02263B24: .word 0x00002AFC
_02263B28: .word 0x00002B18
_02263B2C: .word 0x000021A4
	thumb_func_end ov116_022639BC

	thumb_func_start ov116_02263B30
ov116_02263B30: ; 0x02263B30
	push {r4, lr}
	ldr r1, _02263B94 ; =0x00002AE4
	add r4, r0, #0
	ldr r2, [r4, r1]
	mov r1, #0x4b
	lsl r1, r1, #4
	cmp r2, r1
	bge _02263B90
	bl ov116_022639BC
	add r0, r4, #0
	bl ov116_022638C8
	add r0, r4, #0
	bl ov116_022637F0
	cmp r0, #1
	bne _02263B68
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl ov116_02262D64
	add r0, r4, #0
	bl ov116_022637B4
	ldr r0, _02263B98 ; =0x00000574
	bl sub_02005748
_02263B68:
	add r0, r4, #0
	bl ov116_02263DE8
	ldr r1, _02263B9C ; =0x00002B18
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x34
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0x34
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x1a
	ldrsh r0, [r4, r0]
	sub r1, #0x1a
	add r0, r0, #1
	strh r0, [r4, r1]
_02263B90:
	pop {r4, pc}
	nop
_02263B94: .word 0x00002AE4
_02263B98: .word 0x00000574
_02263B9C: .word 0x00002B18
	thumb_func_end ov116_02263B30

	thumb_func_start ov116_02263BA0
ov116_02263BA0: ; 0x02263BA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_020227A4
	ldr r0, _02263D7C ; =0x00002B84
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0x30
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02263BC8
	ldr r0, _02263D80 ; =0x02267B40
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_020227DC
	b _02263BD2
_02263BC8:
	ldr r0, _02263D84 ; =0x02267B38
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_020227DC
_02263BD2:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02263C76
	ldr r3, _02263D88 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02263C32
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov116_0226452C
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x3f
	add r0, r5, r0
	lsl r1, r1, #0x18
	bl ov116_0226452C
	ldr r4, _02263D8C ; =0x02267B60
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02263D90 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
	ldr r0, _02263D7C ; =0x00002B84
	mov r1, #1
	add sp, #0x2c
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_02263C32:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _02263D94 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	ldr r0, _02263D98 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _02263D9C ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226432C
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
_02263C76:
	ldr r0, _02263DA0 ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r4, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r4
	bl sub_020E1F6C
	bl sub_020E17B4
	add r6, r0, #0
	cmp r4, #0x5f
	blt _02263C92
	ldr r6, _02263DA4 ; =0x3DCCCCCD
_02263C92:
	add r0, r6, #0
	bl sub_020E16BC
	ldr r2, _02263DA8 ; =0xC28F5C29
	ldr r3, _02263DAC ; =0x3FCC28F5
	bl sub_020E0D24
	blo _02263CA6
	ldr r4, _02263D9C ; =0x3E6147AE
	b _02263CBE
_02263CA6:
	add r0, r6, #0
	bl sub_020E16BC
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02263DA8 ; =0xC28F5C29
	ldr r1, _02263DAC ; =0x3FCC28F5
	bl sub_020E074C
	bl sub_020DFF84
	add r4, r0, #0
_02263CBE:
	ldr r0, _02263D88 ; =0x00001FD4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02263CD0
	ldr r1, [sp, #0x10]
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
_02263CD0:
	ldr r3, _02263D98 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov116_0226432C
	ldr r3, _02263D98 ; =0x00001FD8
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov116_0226432C
	ldr r4, _02263DB0 ; =0x02267B6C
	add r3, sp, #0x14
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02263D90 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
	ldr r0, _02263D7C ; =0x00002B84
	mov r2, #1
	add r1, r0, #0
	str r2, [r5, r0]
	add r1, #0x10
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _02263D42
	add r0, #0x10
	str r2, [r5, r0]
_02263D42:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02263D6A
	ldr r0, _02263DB4 ; =0x00000572
	bl sub_020057D4
	cmp r0, #0
	bne _02263D58
	ldr r0, _02263DB4 ; =0x00000572
	bl sub_02005748
_02263D58:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov116_0226493C
_02263D6A:
	ldr r1, [sp, #0x10]
	ldr r0, _02263D88 ; =0x00001FD4
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_02263D7C: .word 0x00002B84
_02263D80: .word 0x02267B40
_02263D84: .word 0x02267B38
_02263D88: .word 0x00001FD4
_02263D8C: .word 0x02267B60
_02263D90: .word 0x00001FC8
_02263D94: .word 0x3FF0A3D7
_02263D98: .word 0x00001FD8
_02263D9C: .word 0x3E6147AE
_02263DA0: .word 0x00001FCC
_02263DA4: .word 0x3DCCCCCD
_02263DA8: .word 0xC28F5C29
_02263DAC: .word 0x3FCC28F5
_02263DB0: .word 0x02267B6C
_02263DB4: .word 0x00000572
	thumb_func_end ov116_02263BA0

	thumb_func_start ov116_02263DB8
ov116_02263DB8: ; 0x02263DB8
	ldr r2, _02263DE4 ; =0x00002B20
	mov r3, #0
	add r1, r2, #0
	strh r3, [r0, r2]
	sub r1, #0x40
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x64
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x68
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x6c
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x70
	str r3, [r0, r1]
	sub r2, #0x34
	str r3, [r0, r2]
	bx lr
	nop
_02263DE4: .word 0x00002B20
	thumb_func_end ov116_02263DB8

	thumb_func_start ov116_02263DE8
ov116_02263DE8: ; 0x02263DE8
	ldr r2, _02263E18 ; =0x00002AFE
	ldrsh r1, [r0, r2]
	cmp r1, #0x95
	blt _02263E16
	add r1, r2, #0
	sub r1, #0xa
	ldr r3, [r0, r1]
	cmp r3, #8
	beq _02263E16
	sub r1, r2, #6
	str r3, [r0, r1]
	add r1, r2, #0
	sub r1, #0xa
	ldr r1, [r0, r1]
	add r3, r1, #1
	add r1, r2, #0
	sub r1, #0xa
	str r3, [r0, r1]
	mov r1, #0
	strh r1, [r0, r2]
	ldr r1, _02263E1C ; =0x000021A4
	mov r2, #1
	str r2, [r0, r1]
_02263E16:
	bx lr
	; .align 2, 0
_02263E18: .word 0x00002AFE
_02263E1C: .word 0x000021A4
	thumb_func_end ov116_02263DE8

	thumb_func_start ov116_02263E20
ov116_02263E20: ; 0x02263E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, _02264140 ; =0x02267B38
	add r5, r0, #0
	ldrh r3, [r1, #0x20]
	add r0, sp, #0x18
	add r2, sp, #0x18
	strh r3, [r0]
	ldrh r3, [r1, #0x22]
	strh r3, [r0, #2]
	ldrh r3, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r3, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _02264144 ; =0x00002AE0
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _02263E50
	b _02263F94
_02263E50:
	add r0, r1, #0
	add r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #9
	bge _02263EC8
	cmp r0, #8
	bgt _02263EB2
	add r0, r1, #0
	add r0, #0x74
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x8c
	add r1, #0x74
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov116_022646FC
	str r0, [sp, #0x10]
	ldr r0, _02264148 ; =0x00002B6C
	add r0, r5, r0
	bl ov116_022646FC
	ldr r2, _0226414C ; =0x00002B54
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _02263E9C
	cmp r0, #1
	bne _02263F2C
_02263E9C:
	ldr r1, _0226414C ; =0x00002B54
	ldr r0, [r5, r1]
	sub r0, r0, r7
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, #0x18
	sub r0, r0, r6
	str r0, [r5, r1]
	b _02263F2C
_02263EB2:
	add r0, r1, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	add r1, #0x8c
	lsl r0, r0, #4
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	lsl r0, r0, #4
	asr r4, r0, #0x10
	b _02263F2C
_02263EC8:
	add r0, r1, #0
	add r0, #0x44
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x5c
	add r1, #0x44
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov116_022646FC
	str r0, [sp, #0x14]
	ldr r0, _02264150 ; =0x00002B3C
	add r0, r5, r0
	bl ov116_022646FC
	ldr r2, _02264154 ; =0x00002B24
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x14]
	cmp r1, #1
	beq _02263F06
	cmp r0, #1
	bne _02263F2C
_02263F06:
	ldr r0, _02264158 ; =0x00002B88
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02263F2C
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x64
	ldr r1, [r5, r1]
	sub r2, r1, r7
	add r1, r0, #0
	sub r1, #0x64
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x4c
	ldr r1, [r5, r1]
	sub r0, #0x4c
	sub r1, r1, r6
	str r1, [r5, r0]
_02263F2C:
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov116_0226432C
	cmp r0, #0
	beq _02263F7E
	ldr r4, _02264164 ; =0x02267B90
	add r3, sp, #0x38
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
_02263F7E:
	ldr r0, _0226416C ; =0x00002B22
	add sp, #0x44
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	sub r1, r0, #2
	ldrsh r1, [r5, r1]
	sub r0, r0, #2
	sub r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02263F94:
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	lsl r1, r1, #1
	ldrsh r1, [r2, r1]
	bl sub_020E1F6C
	cmp r1, #0
	bne _02263FB2
	ldr r0, _02264144 ; =0x00002AE0
	mov r1, #0
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0xac
	str r1, [r5, r0]
_02263FB2:
	ldr r1, _02264170 ; =0x00002B84
	ldr r2, [r5, r1]
	cmp r2, #0
	bne _02264028
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02264028
	add r0, r1, #0
	sub r0, #0x48
	ldr r0, [r5, r0]
	sub r1, #0x60
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	cmp r0, #0
	beq _02264098
	ldr r4, _02264174 ; =0x02267B78
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
	b _02264098
_02264028:
	cmp r2, #1
	bne _02264098
	ldr r1, _02264158 ; =0x00002B88
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _02264098
	add r0, r1, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	sub r1, #0x64
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _0226415C ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	mov r1, #0
	ldr r0, _02264160 ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov116_0226432C
	cmp r0, #0
	beq _02264098
	ldr r4, _02264178 ; =0x02267B84
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #0x4d
	str r0, [r3, #0]
	add r0, r2, #0
	ldr r2, _02264168 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl sub_020BC2CC
_02264098:
	ldr r1, _0226417C ; =0x00002B90
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _022640B2
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _022640B0
	sub r1, #8
	ldr r0, [r5, r1]
	cmp r0, #1
	beq _022640B2
_022640B0:
	b _0226430C
_022640B2:
	bl sub_0201D2D0
	add r4, r0, #0
	bl sub_0201D2E8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0201D2DC
	add r0, r6, #0
	mov r1, #0x64
	bl sub_020E2178
	ldr r0, _02264180 ; =0x00002AEC
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r7, r0, #5
	ldr r0, _02264184 ; =0x02267C8C
	add r3, r1, #0
	ldr r2, [r0, r7]
	ldr r0, _02264188 ; =0x02267C88
	add r0, r0, r7
_022640E0:
	cmp r4, r2
	blt _022640F2
	add r6, r3, r0
	ldr r6, [r6, #0xc]
	add r1, r1, #1
	add r2, r2, r6
	add r3, #8
	cmp r1, #3
	blt _022640E0
_022640F2:
	ldr r0, _02264188 ; =0x02267C88
	lsl r1, r1, #3
	add r0, r0, r7
	ldr r6, [r1, r0]
	ldr r1, _02264168 ; =0x00001FC8
	ldr r0, [r5, r1]
	add r1, #8
	lsl r0, r0, #4
	ldr r1, [r5, r1]
	asr r7, r0, #0x10
	lsl r0, r1, #4
	asr r0, r0, #0x10
	cmp r1, #0
	bne _02264128
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	mov r4, #0x1f
	ror r0, r4
	add r0, r1, r0
	beq _02264124
	mov r4, #1
	b _0226413A
_02264124:
	sub r4, #0x20
	b _0226413A
_02264128:
	cmp r0, #0
	blt _02264130
	mov r0, #1
	b _02264134
_02264130:
	mov r0, #0
	mvn r0, r0
_02264134:
	neg r0, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0226413A:
	ldr r0, _02264168 ; =0x00001FC8
	b _0226418C
	nop
_02264140: .word 0x02267B38
_02264144: .word 0x00002AE0
_02264148: .word 0x00002B6C
_0226414C: .word 0x00002B54
_02264150: .word 0x00002B3C
_02264154: .word 0x00002B24
_02264158: .word 0x00002B88
_0226415C: .word 0x3FF0A3D7
_02264160: .word 0x3F4CCCCD
_02264164: .word 0x02267B90
_02264168: .word 0x00001FC8
_0226416C: .word 0x00002B22
_02264170: .word 0x00002B84
_02264174: .word 0x02267B78
_02264178: .word 0x02267B84
_0226417C: .word 0x00002B90
_02264180: .word 0x00002AEC
_02264184: .word 0x02267C8C
_02264188: .word 0x02267C88
_0226418C:
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022641AC
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r2
	mov r1, #0x1f
	ror r0, r1
	add r0, r2, r0
	beq _022641A8
	mov r1, #1
	b _022641C6
_022641A8:
	sub r1, #0x20
	b _022641C6
_022641AC:
	cmp r7, #0
	blt _022641B4
	mov r1, #1
	b _022641B8
_022641B4:
	mov r1, #0
	mvn r1, r1
_022641B8:
	cmp r4, #0
	bge _022641C6
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_022641C6:
	ldr r0, _02264310 ; =0x00002AEC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022641D0
	mov r1, #0
_022641D0:
	add r0, r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r6, #0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, _02264314 ; =0x00002B98
	lsl r1, r2, #0x10
	strh r7, [r5, r0]
	add r0, r0, #2
	asr r1, r1, #0x10
	strh r6, [r5, r0]
	cmp r1, #0
	ble _0226420E
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226421C
_0226420E:
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226421C:
	bl sub_020E1740
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _02264318 ; =0x00002B54
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r4, #0
	ble _02264248
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02264256
_02264248:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02264256:
	bl sub_020E1740
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _0226431C ; =0x00002B6C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r7, #0
	ble _02264282
	lsl r0, r7, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02264290
_02264282:
	lsl r0, r7, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02264290:
	bl sub_020E1740
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02264320 ; =0x00002B24
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	cmp r6, #0
	ble _022642BC
	lsl r0, r6, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022642CA
_022642BC:
	lsl r0, r6, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022642CA:
	bl sub_020E1740
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02264324 ; =0x00002B3C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov116_0226469C
	ldr r0, _02264328 ; =0x00002B20
	mov r1, #0x16
	strh r1, [r5, r0]
	mov r1, #0
	add r2, r0, #2
	strh r1, [r5, r2]
	sub r2, r0, #4
	strh r7, [r5, r2]
	sub r2, r0, #2
	strh r6, [r5, r2]
	add r2, r0, #0
	add r2, #0x64
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x6c
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x68
	str r1, [r5, r2]
	mov r1, #1
	add r0, #0x70
	str r1, [r5, r0]
_0226430C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264310: .word 0x00002AEC
_02264314: .word 0x00002B98
_02264318: .word 0x00002B54
_0226431C: .word 0x00002B6C
_02264320: .word 0x00002B24
_02264324: .word 0x00002B3C
_02264328: .word 0x00002B20
	thumb_func_end ov116_02263E20

	thumb_func_start ov116_0226432C
ov116_0226432C: ; 0x0226432C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [sp, #0x64]
	add r4, r1, #0
	add r6, r3, #0
	add r7, r2, #0
	bl sub_020E16BC
	str r0, [sp, #0x10]
	sub r0, r4, r6
	str r1, [sp, #4]
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02264514 ; =0x147AE148
	ldr r1, _02264518 ; =0x3F7547AE
	bl sub_020E0234
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	bl sub_020E0234
	bl sub_020DFF84
	add r6, r0, #0
	ldr r0, [sp, #0x64]
	bl sub_020E16BC
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	add r4, r1, #0
	sub r0, r7, r0
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0226451C ; =0x55555555
	ldr r1, _02264520 ; =0x3F755555
	bl sub_020E0234
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_020E0234
	bl sub_020DFF84
	add r4, r0, #0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _022643E0
	mov r0, #0x7f
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r1, r0, #4
	str r4, [r5, r1]
	sub r1, r0, #4
	mov r2, #8
	str r2, [r5, r1]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020E1304
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_020E1304
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
_022643E0:
	add r0, r6, #0
	add r1, r6, #0
	bl sub_020E18B0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	mov r1, #0
	add r7, r0, #0
	bl sub_020E1108
	ldr r0, _02264524 ; =0x45800000
	bls _02264418
	add r1, r7, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02264426
_02264418:
	add r1, r7, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02264426:
	bl sub_020E1740
	bl sub_020BCFF0
	add r7, r0, #0
	bl sub_020E17B4
	ldr r1, _02264524 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #0x18]
	bl sub_020E16BC
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl sub_020E1020
	beq _0226450E
	add r0, r7, #0
	bl sub_020BD838
	str r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_020BD8D0
	str r0, [sp, #0x20]
	add r7, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	bl sub_020E1844
	ldr r1, _02264528 ; =0x4F800000
	bl sub_020E1304
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	bl sub_020E1844
	ldr r1, _02264528 ; =0x4F800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl sub_020E1304
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	str r7, [sp, #0x3c]
	bl sub_020E18B0
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x28]
	add r0, r6, #0
	bl sub_020E18B0
	mov r2, #0x19
	str r0, [sp, #0x44]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x48]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x3c
	add r2, r5, r2
	bl ov116_0226700C
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x40
	add r1, r5, r1
	bl ov116_022671EC
	mov r1, #0x1a
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	bl ov116_02266FFC
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x60
	add r1, r5, r1
	bl ov116_02267728
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov116_02267160
	mov r7, #0x19
	lsl r7, r7, #4
	add r3, sp, #0x2c
	add r4, r5, r7
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r5, r7
	add r2, r6, #0
	bl ov116_022671B8
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226450E:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264514: .word 0x147AE148
_02264518: .word 0x3F7547AE
_0226451C: .word 0x55555555
_02264520: .word 0x3F755555
_02264524: .word 0x45800000
_02264528: .word 0x4F800000
	thumb_func_end ov116_0226432C

	thumb_func_start ov116_0226452C
ov116_0226452C: ; 0x0226452C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x7f
	lsl r1, r1, #2
	add r5, r0, #0
	add r0, r1, #4
	ldr r4, [r5, r1]
	ldr r0, [r5, r0]
	add r1, #8
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_020E1A9C
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	add r1, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_020E1A9C
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	sub r0, r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020E18B0
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r0, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	mov r1, #0
	add r6, r0, #0
	bl sub_020E1108
	ldr r0, _02264678 ; =0x45800000
	bls _022645A4
	add r1, r6, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022645B2
_022645A4:
	add r1, r6, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022645B2:
	bl sub_020E1740
	bl sub_020BCFF0
	add r6, r0, #0
	bl sub_020E17B4
	ldr r1, _02264678 ; =0x45800000
	bl sub_020E1304
	str r0, [sp, #4]
	bl sub_020E16BC
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl sub_020E1020
	beq _02264672
	add r0, r6, #0
	bl sub_020BD838
	str r0, [sp, #8]
	add r0, r6, #0
	add r7, r1, #0
	bl sub_020BD8D0
	str r0, [sp, #0xc]
	add r6, r1, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl sub_020E1844
	ldr r1, _0226467C ; =0x4F800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_020E1844
	ldr r1, _0226467C ; =0x4F800000
	bl sub_020E1304
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	str r6, [sp, #0x10]
	bl sub_020E18B0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E18B0
	mov r2, #0x19
	str r0, [sp, #0x18]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x1c]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x10
	add r2, r5, r2
	bl ov116_0226700C
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x40
	add r1, r5, r1
	bl ov116_022671EC
	mov r1, #0x1a
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	bl ov116_02266FFC
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x60
	add r1, r5, r1
	bl ov116_02267728
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264672:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264678: .word 0x45800000
_0226467C: .word 0x4F800000
	thumb_func_end ov116_0226452C

	thumb_func_start ov116_02264680
ov116_02264680: ; 0x02264680
	mov r3, #0
_02264682:
	add r2, r0, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	cmp r1, r2
	bne _02264690
	add r0, r3, #0
	bx lr
_02264690:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #4
	blt _02264682
	mov r0, #0xff
	bx lr
	thumb_func_end ov116_02264680

	thumb_func_start ov116_0226469C
ov116_0226469C: ; 0x0226469C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r6, [r5, #0]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226469C

	thumb_func_start ov116_022646FC
ov116_022646FC: ; 0x022646FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _0226475C
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0226475C:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_022646FC

	thumb_func_start ov116_02264764
ov116_02264764: ; 0x02264764
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r3, [r0, #0x14]
	bx lr
	thumb_func_end ov116_02264764

	thumb_func_start ov116_02264774
ov116_02264774: ; 0x02264774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x14]
	ldr r0, [r5, #0x10]
	cmp r0, r2
	blt _02264784
	mov r4, #1
	b _0226478C
_02264784:
	add r2, r0, #0
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r4, #0
_0226478C:
	ldr r0, [r5, #0xc]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02264774

	thumb_func_start ov116_022647BC
ov116_022647BC: ; 0x022647BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r3, _0226492C ; =0x02267D74
	add r6, r0, #0
	mov r0, #1
	str r1, [sp, #4]
	str r0, [sp, #0x18]
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02264930 ; =0x02267D8C
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _022647FE
	ldr r0, [sp, #4]
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02264820
_022647FE:
	ldr r5, [sp, #4]
	mov r4, #0
_02264802:
	ldr r0, [r5, #8]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02264802
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
_02264820:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0226482E
	cmp r0, #1
	beq _02264898
	b _0226490A
_0226482E:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, sp, #0x3c
	add r6, r0, #0
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r6, #0x14
	add r4, sp, #0x24
	add r5, #0x2c
_02264842:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	ldr r0, [r0, #8]
	add r2, sp, #0x1c
	bl sub_0200D638
	ldr r1, [sp, #0x20]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r7, #0]
	ldr r3, _02264934 ; =0x000004CD
	add r0, r6, #0
	add r2, r1, r2
	bl ov116_0226469C
	ldr r1, [sp, #0x1c]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r4, #0]
	ldr r3, _02264938 ; =0x00000333
	add r0, r5, #0
	add r2, r1, r2
	bl ov116_0226469C
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r6, #0x30
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x30
	str r0, [sp, #8]
	cmp r0, #3
	blt _02264842
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_02264898:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r7, [sp, #4]
	ldr r6, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	add r4, sp, #0x54
	add r7, #0x2c
	add r5, r6, #0
_022648AE:
	ldr r0, [sp, #0x14]
	bl ov116_022646FC
	str r0, [r4, #0]
	add r0, r7, #0
	bl ov116_022646FC
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x2c]
	bl sub_0200D614
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022648D4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022648D8
_022648D4:
	mov r0, #0
	str r0, [sp, #0x18]
_022648D8:
	ldr r0, [r5, #8]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, #0x30
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r7, #0x30
	add r0, r0, #1
	add r6, #0x30
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _022648AE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02264928
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_0226490A:
	ldr r4, [sp, #4]
	mov r5, #0
_0226490E:
	ldr r0, [r4, #8]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _0226490E
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0200DA58
_02264928:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226492C: .word 0x02267D74
_02264930: .word 0x02267D8C
_02264934: .word 0x000004CD
_02264938: .word 0x00000333
	thumb_func_end ov116_022647BC

	thumb_func_start ov116_0226493C
ov116_0226493C: ; 0x0226493C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [sp]
	ldr r1, _022649D4 ; =0x00002490
	add r5, r2, #0
	mov r0, #0
_0226494C:
	ldr r2, [r3, r1]
	cmp r2, #1
	beq _022649C8
	mov r1, #0xa8
	mul r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp]
	mov r7, #0
	ldr r3, [r1, #0x14]
	add r2, r1, #0
	ldr r1, [sp, #0xc]
	add r6, r7, #0
	add r4, r2, r1
	ldr r2, _022649D8 ; =0x00002534
	add r1, r2, #0
	str r3, [r4, r2]
	sub r1, #0xa0
	str r7, [r4, r1]
	ldr r1, [sp]
	sub r2, #0xa4
	add r1, r1, r2
	str r1, [sp, #0x10]
	add r2, r1, #0
	ldr r1, [sp, #0xc]
	mov r3, #1
	str r3, [r2, r1]
	add r1, r0, #1
	ldr r0, [sp, #4]
	mul r1, r0
	str r1, [sp, #8]
_02264988:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov116_022626E8
	ldr r1, _022649DC ; =0x00002498
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	add r1, r6, r5
	add r0, r0, r1
	mov r1, #3
	bl sub_020E1F6C
	ldr r0, _022649DC ; =0x00002498
	ldr r0, [r4, r0]
	bl sub_0200D364
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, r5
	cmp r7, #3
	blt _02264988
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, _022649E0 ; =ov116_022647BC
	add r1, r2, r1
	mov r2, #1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_022649C8:
	add r0, r0, #1
	add r3, #0xa8
	cmp r0, #8
	blt _0226494C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022649D4: .word 0x00002490
_022649D8: .word 0x00002534
_022649DC: .word 0x00002498
_022649E0: .word ov116_022647BC
	thumb_func_end ov116_0226493C

	thumb_func_start ov116_022649E4
ov116_022649E4: ; 0x022649E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1, #0]
	str r1, [sp]
	ldr r5, [r0, #0x14]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02264A00
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _02264A18
_02264A00:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x10]
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_0200DA58
	ldr r0, [sp]
	bl sub_020181C4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02264A18:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02264A2C
	cmp r0, #1
	beq _02264A3A
	cmp r0, #2
	bne _02264A2A
	b _02264C8A
_02264A2A:
	b _02264FC2
_02264A2C:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
_02264A3A:
	ldr r3, _02264D78 ; =0x02267D60
	add r2, sp, #0x1c
	mov r1, #0xa
_02264A40:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02264A40
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0xc]
	mov r6, #0x3f
	lsl r1, r0, #2
	add r0, sp, #0x1c
	ldrsh r0, [r0, r1]
	str r5, [sp, #0xc]
	lsl r6, r6, #0x18
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r0, #2
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r5, [r0, #8]
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_02264A7A:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x3a
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #3
	bl sub_020E1F6C
	add r7, r1, #0
	mov r0, #6
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r4, #0
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldr r0, [r0, #0x40]
	mov r1, #3
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_020E1F6C
	mov r1, #0x1e
	mul r1, r0
	str r1, [r4, #0x3c]
	add r0, r1, #0
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r1, [r4, #0x3c]
	add r1, r4, #0
	add r1, #0x40
	mov r0, #0
	strh r0, [r1]
	lsl r0, r7, #1
	neg r1, r0
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02264AF8
	ldr r0, [sp, #8]
	bl sub_020E17FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B04
_02264AF8:
	ldr r0, [sp, #8]
	bl sub_020E17FC
	add r1, r6, #0
	bl sub_020E1A9C
_02264B04:
	bl sub_020E1740
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02264B20
	ldr r0, [sp, #4]
	bl sub_020E17FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B2C
_02264B20:
	ldr r0, [sp, #4]
	bl sub_020E17FC
	add r1, r6, #0
	bl sub_020E1A9C
_02264B2C:
	bl sub_020E1740
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0x38
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x39
	mov r0, #1
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x3b
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x3c]
	cmp r0, #0xb4
	bne _02264B64
	add r1, r4, #0
	add r1, #0x38
	mov r0, #2
	strb r0, [r1]
_02264B64:
	ldr r1, [r4, #0x3c]
	ldr r0, _02264D7C ; =0x0000010E
	cmp r1, r0
	blt _02264B78
	cmp r1, #0x5a
	bgt _02264B78
	add r1, r4, #0
	add r1, #0x38
	mov r0, #1
	strb r0, [r1]
_02264B78:
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264B90
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264B9C
_02264B90:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264B9C:
	bl sub_020E1740
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264D80 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x30]
	mov r0, #0x44
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264BE0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264BEC
_02264BE0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264BEC:
	bl sub_020E1740
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264D80 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x34]
	mov r0, #0x40
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02264C30
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	b _02264C3C
_02264C30:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
_02264C3C:
	bl sub_020E1740
	ldr r1, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x20]
	mov ip, r0
	add r1, r2, r1
	ldr r7, [r4, #0x30]
	ldr r3, [r4, #0x18]
	add r1, r7, r1
	add r1, r3, r1
	ldr r3, [r4, #0x2c]
	ldr r2, [r4, #0x24]
	ldr r7, [r4, #0x34]
	add r2, r3, r2
	add r2, r7, r2
	mov r3, ip
	add r2, r3, r2
	mov r3, #0xe
	ldr r0, [r4, #0x14]
	lsl r3, r3, #0x10
	bl sub_0200D650
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, #4
	add r4, #0x34
	str r0, [sp, #0xc]
	cmp r5, #0x24
	bge _02264C7E
	b _02264A7A
_02264C7E:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02264FDA
_02264C8A:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02264CA8
	add r1, r0, #1
	ldr r0, [sp]
	mov r2, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov116_02261E0C
	ldr r0, _02264D84 ; =0x00000573
	bl sub_02005748
_02264CA8:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0x1e
	ble _02264CD4
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0xc]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r1, #0xc]
	mov r1, #5
	bl sub_020E1F6C
	ldr r0, [sp]
	mov r2, #1
	str r1, [r0, #0xc]
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov116_02261E0C
	b _02264FAC
_02264CD4:
	add r1, r0, #1
	ldr r0, [sp]
	mov r4, #0x3f
	str r1, [r0, #8]
	mov r0, #0
	ldr r5, [sp]
	str r0, [sp, #0x10]
	lsl r4, r4, #0x18
_02264CE4:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x46
	strh r1, [r0]
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _02264CFA
	b _02264F9E
_02264CFA:
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0xa
	cmp r1, r0
	blt _02264DB2
	cmp r1, r0
	bne _02264D12
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D364
_02264D12:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r0, #0x12
	cmp r1, r0
	bne _02264D2C
	add r1, r5, #0
	add r1, #0x39
	mov r0, #0
	strb r0, [r1]
	b _02264D4A
_02264D2C:
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _02264D4A
	add r0, r5, #0
	add r0, #0x39
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x39
	strb r1, [r0]
_02264D4A:
	add r1, r5, #0
	add r1, #0x39
	ldrb r1, [r1]
	ldr r0, [r5, #0x14]
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264D6A
	cmp r0, #1
	beq _02264D70
	cmp r0, #2
	beq _02264D8C
	b _02264D92
_02264D6A:
	ldr r0, _02264D88 ; =0xFFFFF000
	str r0, [r5, #0x28]
	b _02264D92
_02264D70:
	mov r0, #0
	str r0, [r5, #0x28]
	b _02264D92
	nop
_02264D78: .word 0x02267D60
_02264D7C: .word 0x0000010E
_02264D80: .word 0x00000000
_02264D84: .word 0x00000573
_02264D88: .word 0xFFFFF000
_02264D8C:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
_02264D92:
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	mov r1, #3
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x3b
	strb r1, [r0]
_02264DB2:
	mov r0, #0x46
	ldrsh r1, [r5, r0]
	cmp r1, #5
	ble _02264DFA
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264DEC
	cmp r0, #1
	beq _02264DDC
	cmp r0, #2
	bne _02264DFA
	add r0, r1, #5
	mov r1, #6
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02264DFA
_02264DDC:
	add r0, r1, #5
	mov r1, #6
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
	b _02264DFA
_02264DEC:
	add r0, r1, #5
	mov r1, #7
	bl sub_020E1F6C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_02264DFA:
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _02264E58
	cmp r0, #1
	beq _02264E32
	cmp r0, #2
	bne _02264E32
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #7
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02264E7C
_02264E32:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #6
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	b _02264E7C
_02264E58:
	mov r0, #0x46
	ldrsh r0, [r5, r0]
	mov r1, #0x1e
	add r2, r0, #5
	sub r2, r1, r2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	add r2, r0, #4
	mov r0, #0x1e
	sub r2, r0, r2
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r1, r1, #0xd
	lsl r0, r0, #0xd
	asr r1, r1, #0x10
	asr r0, r0, #0x10
_02264E7C:
	cmp r1, #0
	ble _02264E88
	mov r2, #0x42
	ldrsh r2, [r5, r2]
	add r2, r2, r1
	b _02264E8E
_02264E88:
	mov r1, #0x42
	ldrsh r1, [r5, r1]
	add r2, r1, #1
_02264E8E:
	add r1, r5, #0
	add r1, #0x42
	strh r2, [r1]
	cmp r0, #0
	ble _02264EA0
	mov r1, #0x44
	ldrsh r1, [r5, r1]
	add r1, r1, r0
	b _02264EA6
_02264EA0:
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	add r1, r0, #1
_02264EA6:
	add r0, r5, #0
	add r0, #0x44
	strh r1, [r0]
	mov r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264EC4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264ED0
_02264EC4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264ED0:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264FE8 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x30]
	mov r0, #0x44
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264F14
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264F20
_02264F14:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264F20:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _02264FE8 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x34]
	mov r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02264F64
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	b _02264F70
_02264F64:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
_02264F70:
	bl sub_020E1740
	ldr r1, [r5, #0x1c]
	add r7, r1, r0
	str r7, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x20]
	ldr r3, [r5, #0x30]
	add r1, r2, r1
	add r1, r3, r1
	ldr r6, [r5, #0x18]
	ldr r3, [r5, #0x2c]
	ldr r2, [r5, #0x24]
	add r1, r6, r1
	add r2, r3, r2
	ldr r6, [r5, #0x34]
	mov r3, #0xe
	add r2, r6, r2
	ldr r0, [r5, #0x14]
	add r2, r7, r2
	lsl r3, r3, #0x10
	bl sub_0200D650
_02264F9E:
	ldr r0, [sp, #0x10]
	add r5, #0x34
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x24
	bge _02264FAC
	b _02264CE4
_02264FAC:
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02264FDA
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02264FDA
_02264FC2:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl ov116_02261E0C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02264FDA:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov116_02261E28
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264FE8: .word 0x00000000
	thumb_func_end ov116_022649E4

	thumb_func_start ov116_02264FEC
ov116_02264FEC: ; 0x02264FEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02265014 ; =0x00000764
	mov r0, #0x6a
	bl sub_02018144
	add r1, r0, #0
	mov r2, #1
	str r5, [r1, #0]
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _02265018 ; =ov116_022649E4
	lsl r2, r2, #0xc
	str r4, [r1, #0x10]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_02265014: .word 0x00000764
_02265018: .word ov116_022649E4
	thumb_func_end ov116_02264FEC

	thumb_func_start ov116_0226501C
ov116_0226501C: ; 0x0226501C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	ldr r5, [r4, #0xc]
	ldr r6, [r4, #0x14]
	ldr r7, [r4, #0x10]
	cmp r1, #0
	beq _0226510A
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _022650FE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02265040: ; jump table
	.short _02265048 - _02265040 - 2 ; case 0
	.short _0226508E - _02265040 - 2 ; case 1
	.short _022650A0 - _02265040 - 2 ; case 2
	.short _022650B8 - _02265040 - 2 ; case 3
_02265048:
	ldr r0, [r5, #0]
	cmp r0, #4
	bge _02265054
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226505E
_02265054:
	mov r0, #4
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0226505E:
	mov r1, #0
	str r1, [sp]
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	pop {r3, r4, r5, r6, r7, pc}
_0226508E:
	mov r1, #1
	bl sub_02017348
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022650A0:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _0226510A
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0xf
	blt _0226510A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022650B8:
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _022650C4
	sub r0, r0, #1
	str r0, [r5, #0]
	b _022650CE
_022650C4:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022650CE:
	mov r1, #0
	str r1, [sp]
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r4, [r5, #0]
	ldr r3, [r6, #0]
	add r0, r7, #0
	add r3, r4, r3
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	pop {r3, r4, r5, r6, r7, pc}
_022650FE:
	mov r1, #0
	str r1, [r4, #0x50]
	str r1, [r4, #4]
	str r1, [r4, #0]
	bl sub_02017348
_0226510A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_0226501C

	thumb_func_start ov116_0226510C
ov116_0226510C: ; 0x0226510C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02265258 ; =0x02267D08
	add r3, sp, #0x20
	ldrh r1, [r0]
	add r6, sp, #0x14
	ldr r2, _0226525C ; =0x02267D40
	strh r1, [r6, #4]
	ldrh r1, [r0, #2]
	add r4, r3, #0
	add r7, sp, #0x18
	strh r1, [r6, #6]
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #6]
	strh r1, [r6, #8]
	strh r0, [r6, #0xa]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0226513E
	b _02265252
_0226513E:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0226514E
	cmp r0, #1
	beq _022651BE
	cmp r0, #2
	beq _022651D6
	b _02265236
_0226514E:
	mov r0, #0
	str r0, [sp, #0x10]
	str r5, [sp, #8]
_02265154:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02265188
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r1, [r6, r0]
	ldrsh r0, [r7, r0]
	cmp r1, r0
	ble _02265188
	sub r0, r1, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp, #0xc]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r4, #0]
_02265188:
	ldr r0, [sp, #8]
	add r7, r7, #2
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02265154
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226523E
	beq _0226523E
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x50]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_022651BE:
	ldr r0, [r5, #0x50]
	cmp r0, #1
	bne _0226523E
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
	cmp r0, #0xf
	blt _0226523E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_022651D6:
	mov r0, #0
	str r0, [sp, #4]
	add r7, r5, #0
_022651DC:
	ldr r0, [r7, #8]
	str r0, [sp]
	cmp r0, #0
	beq _0226520C
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r6, r0]
	cmp r0, #0xe0
	bge _0226520C
	add r0, r0, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r4, #0]
_0226520C:
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _022651DC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226523E
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226523E
	beq _0226523E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0226523E
_02265236:
	mov r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #4]
	str r0, [r5, #0]
_0226523E:
	mov r4, #0
_02265240:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0226524A
	bl sub_0200D33C
_0226524A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02265240
_02265252:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265258: .word 0x02267D08
_0226525C: .word 0x02267D40
	thumb_func_end ov116_0226510C

	thumb_func_start ov116_02265260
ov116_02265260: ; 0x02265260
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022652F2
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02265278
	cmp r0, #1
	beq _022652B2
	b _022652D2
_02265278:
	mov r7, #0
	ldr r4, [sp]
	add r5, r7, #0
_0226527E:
	ldr r6, [r4, #8]
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020E1F6C
	add r0, r6, #0
	add r0, #0x88
	bl sub_02017240
	add r0, r6, #0
	mov r1, #1
	bl sub_02017348
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #8
	blt _0226527E
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x4c]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022652B2:
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	cmp r0, #1
	bne _022652F2
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	add r1, r0, #1
	ldr r0, [sp]
	cmp r1, #0xf
	str r1, [r0, #0x4c]
	blt _022652F2
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022652D2:
	mov r5, #0
	ldr r4, [sp]
	add r6, r5, #0
_022652D8:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_02017348
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _022652D8
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #4]
	str r1, [r0, #0]
_022652F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_02265260

	thumb_func_start ov116_022652F4
ov116_022652F4: ; 0x022652F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226534A
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0226530A
	cmp r0, #1
	beq _02265320
	b _0226533C
_0226530A:
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0x54
	bl ov116_02264FEC
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02265320:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _0226534A
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0xf
	blt _0226534A
	mov r0, #1
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0226533C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0226534A
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #4]
	str r0, [r4, #0]
_0226534A:
	pop {r4, pc}
	thumb_func_end ov116_022652F4

	thumb_func_start ov116_0226534C
ov116_0226534C: ; 0x0226534C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x99
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265368
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _02265370
_02265368:
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
_02265370:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	cmp r0, #5
	bhi _0226540C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02265384: ; jump table
	.short _0226540C - _02265384 - 2 ; case 0
	.short _022653FC - _02265384 - 2 ; case 1
	.short _022653DC - _02265384 - 2 ; case 2
	.short _022653C2 - _02265384 - 2 ; case 3
	.short _022653A4 - _02265384 - 2 ; case 4
	.short _02265390 - _02265384 - 2 ; case 5
_02265390:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022653A4
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022653A4:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022653C2
	ldr r0, _02265468 ; =0x0000060F
	bl sub_02005748
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022653C2:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022653DC
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022653DC:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022653FC
	ldr r0, _0226546C ; =0x00000571
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0, #0]
_022653FC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02265434
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x58]
	b _02265434
_0226540C:
	ldr r1, [r4, #0]
	cmp r0, r1
	beq _02265434
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x52
	str r2, [r4, #0x58]
	add r0, #0xd0
	lsl r1, r1, #2
	str r2, [r0, #0]
	add r0, r1, #0
	str r2, [r4, r1]
	add r0, #0x78
	str r2, [r4, r0]
	add r1, #0xf0
	str r2, [r4, r1]
	ldr r0, _0226546C ; =0x00000571
	mov r1, #0
	bl sub_020057A4
_02265434:
	add r0, r4, #0
	add r0, #8
	bl ov116_0226501C
	add r0, r4, #0
	add r0, #0x80
	bl ov116_0226510C
	add r0, r4, #0
	add r0, #0xf8
	bl ov116_02265260
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov116_0226510C
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov116_022652F4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265468: .word 0x0000060F
_0226546C: .word 0x00000571
	thumb_func_end ov116_0226534C

	thumb_func_start ov116_02265470
ov116_02265470: ; 0x02265470
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, _022655C0 ; =0x0000248C
	mov r6, #0
	str r1, [r4, r0]
	ldr r0, _022655C4 ; =0x00002AE8
	add r1, r4, r0
	ldr r0, _022655C8 ; =0x0000222C
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	ldr r2, [r1, #0]
	sub r1, r0, #4
	add r0, r0, #4
	str r2, [r4, r1]
	add r5, r4, r0
_02265492:
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	cmp r6, #4
	bhi _02265540
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022654A8: ; jump table
	.short _022654B2 - _022654A8 - 2 ; case 0
	.short _022654CE - _022654A8 - 2 ; case 1
	.short _02265528 - _022654A8 - 2 ; case 2
	.short _02265542 - _022654A8 - 2 ; case 3
	.short _0226559C - _022654A8 - 2 ; case 4
_022654B2:
	ldr r0, _022655CC ; =0x00000944
	add r0, r4, r0
	str r0, [r5, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r0, #4
	str r1, [r5, #0xc]
	add r0, r4, r0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x10]
	b _0226559E
_022654CE:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #4
	str r0, [r5, #8]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	str r0, [r5, #0xc]
	str r1, [r5, #0x10]
	add r0, r4, #0
	str r1, [r5, #0x14]
	add r0, #0xd0
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd0
	add r2, sp, #0
	mov r1, #6
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xd4
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd4
	add r2, sp, #0
	mov r1, #6
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	b _0226559E
_02265528:
	mov r0, #0xb5
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x83
	add r3, r5, #0
	lsl r0, r0, #2
_02265534:
	add r1, r1, #1
	str r2, [r3, #8]
	add r2, r2, r0
	add r3, r3, #4
	cmp r1, #8
	blt _02265534
_02265540:
	b _0226559E
_02265542:
	str r1, [r5, #8]
	add r0, r4, #0
	str r1, [r5, #0xc]
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	add r1, #2
	str r0, [r5, #0x14]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xd8
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	add r0, r4, #0
	add r0, #0xdc
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xdc
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r0, [r0, #0]
	mov r2, #0xe0
	bl sub_0200D4C4
	b _0226559E
_0226559C:
	str r4, [r5, #8]
_0226559E:
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #5
	bge _022655A8
	b _02265492
_022655A8:
	ldr r1, _022655D0 ; =0x00002228
	mov r2, #1
	ldr r0, _022655D4 ; =ov116_0226534C
	add r1, r4, r1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r1, _022655D8 ; =0x00002488
	str r0, [r4, r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022655C0: .word 0x0000248C
_022655C4: .word 0x00002AE8
_022655C8: .word 0x0000222C
_022655CC: .word 0x00000944
_022655D0: .word 0x00002228
_022655D4: .word ov116_0226534C
_022655D8: .word 0x00002488
	thumb_func_end ov116_02265470

	thumb_func_start ov116_022655DC
ov116_022655DC: ; 0x022655DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x57
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02265604
	cmp r0, #1
	beq _02265642
	cmp r0, #2
	beq _022656E6
	b _022656F4
_02265604:
	add r1, #0x24
	mov r2, #0xa
	add r0, r5, r1
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x66
	lsl r0, r0, #2
	mov r2, #5
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, _02265750 ; =0xFFFB0000
	add r0, r5, r0
	mov r1, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _022656F4
_02265642:
	add r1, #0x24
	mov r7, #0
	add r6, r5, r1
	add r4, sp, #0xc
_0226564A:
	add r0, r6, #0
	bl ov116_02264774
	add r7, r7, #1
	add r6, #0x18
	stmia r4!, {r0}
	cmp r7, #3
	blt _0226564A
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #3
	ldr r0, [r5, r0]
	lsl r3, r2, #7
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #7
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #5
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #6
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #1
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #2
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022656F4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022656F4
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022656F4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _022656F4
_022656E6:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x1c
	str r2, [r5, r0]
	mov r0, #0
	add r1, #0x14
	str r0, [r5, r1]
_022656F4:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	cmp r0, #6
	bge _02265702
	add r1, r0, #1
	ldr r0, [sp, #4]
	b _02265706
_02265702:
	ldr r0, [sp, #4]
	mov r1, #6
_02265706:
	str r1, [r0, #0]
	mov r1, #0
	ldr r3, [sp, #8]
	str r1, [sp]
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	mov r0, #0x5f
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	mov r1, #1
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265750: .word 0xFFFB0000
	thumb_func_end ov116_022655DC

	thumb_func_start ov116_02265754
ov116_02265754: ; 0x02265754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x57
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226577C
	cmp r0, #1
	beq _022657BA
	cmp r0, #2
	beq _0226585E
	b _0226586A
_0226577C:
	add r1, #0x24
	add r0, r5, r1
	mov r1, #0xa
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x66
	lsl r0, r0, #2
	mov r1, #5
	add r0, r5, r0
	lsl r1, r1, #0x10
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, _022658C4 ; =0xFFFB0000
	add r0, r5, r0
	mov r2, #0
	mov r3, #0xa
	bl ov116_02264764
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _0226586A
_022657BA:
	add r1, #0x24
	mov r7, #0
	add r6, r5, r1
	add r4, sp, #0xc
_022657C2:
	add r0, r6, #0
	bl ov116_02264774
	add r7, r7, #1
	add r6, #0x18
	stmia r4!, {r0}
	cmp r7, #3
	blt _022657C2
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #3
	ldr r0, [r5, r0]
	lsl r3, r2, #7
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #7
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #5
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #6
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x1c
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #1
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0x34
	ldr r3, [r5, r3]
	ldr r0, [r0, #0x10]
	mov r1, #2
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_0201C63C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0226586A
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0226586A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0226586A
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _0226586A
_0226585E:
	add r0, r1, #0
	mov r2, #0
	add r0, #0x1c
	str r2, [r5, r0]
	add r1, #0x14
	str r2, [r5, r1]
_0226586A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	cmp r0, #4
	ble _02265878
	sub r1, r0, #1
	ldr r0, [sp, #4]
	b _0226587C
_02265878:
	ldr r0, [sp, #4]
	mov r1, #0
_0226587C:
	str r1, [r0, #0]
	mov r1, #0
	ldr r3, [sp, #8]
	str r1, [sp]
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	mov r0, #0x5f
	ldr r4, [r3, #0]
	ldr r3, [sp, #4]
	lsl r0, r0, #2
	ldr r3, [r3, #0]
	ldr r0, [r5, r0]
	add r3, r4, r3
	mov r1, #1
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_02003A2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022658C4: .word 0xFFFB0000
	thumb_func_end ov116_02265754

	thumb_func_start ov116_022658C8
ov116_022658C8: ; 0x022658C8
	cmp r0, #0xa
	bhi _02265916
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022658D8: ; jump table
	.short _02265916 - _022658D8 - 2 ; case 0
	.short _022658EE - _022658D8 - 2 ; case 1
	.short _022658F2 - _022658D8 - 2 ; case 2
	.short _022658F6 - _022658D8 - 2 ; case 3
	.short _022658FA - _022658D8 - 2 ; case 4
	.short _022658FE - _022658D8 - 2 ; case 5
	.short _02265902 - _022658D8 - 2 ; case 6
	.short _02265906 - _022658D8 - 2 ; case 7
	.short _0226590A - _022658D8 - 2 ; case 8
	.short _0226590E - _022658D8 - 2 ; case 9
	.short _02265912 - _022658D8 - 2 ; case 10
_022658EE:
	mov r0, #0x1c
	bx lr
_022658F2:
	mov r0, #0xe
	bx lr
_022658F6:
	mov r0, #0xc
	bx lr
_022658FA:
	mov r0, #0xa
	bx lr
_022658FE:
	mov r0, #9
	bx lr
_02265902:
	mov r0, #0x20
	bx lr
_02265906:
	mov r0, #0xe
	bx lr
_0226590A:
	mov r0, #0xc
	bx lr
_0226590E:
	mov r0, #0xb
	bx lr
_02265912:
	mov r0, #0xb
	bx lr
_02265916:
	mov r0, #9
	bx lr
	; .align 2, 0
	thumb_func_end ov116_022658C8

	thumb_func_start ov116_0226591C
ov116_0226591C: ; 0x0226591C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x56
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r4, [r0, #0]
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265940
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265948
_02265940:
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_02265948:
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022659DC
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02265960
	add r0, r6, #0
	bl ov116_022655DC
_02265960:
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _022659F6
	cmp r4, #0
	beq _022659F6
	cmp r4, #8
	bge _022659F6
	add r2, r4, #0
	mov r0, #0x28
	mul r2, r0
	str r2, [sp]
	ldr r2, _02265A08 ; =0x02267DA4
	ldr r3, [sp]
	mov r7, #0
	ldr r3, [r2, r3]
	ldr r4, _02265A0C ; =0x02267DA8
	str r3, [r6, r1]
	add r3, r1, #4
	str r7, [r6, r3]
	ldr r3, [sp]
	lsl r0, r0, #3
	ldr r3, [r4, r3]
	add r5, r6, #0
	sub r3, r3, #1
	str r3, [r6, r0]
	ldr r3, _02265A10 ; =0x02267DAC
	ldr r0, [sp]
	ldr r3, [r3, r0]
	add r0, r1, #0
	sub r0, #0x20
	str r3, [r6, r0]
	add r0, r3, #5
	sub r1, #0x1c
	str r0, [r6, r1]
	ldr r0, [sp]
	add r4, r2, r0
_022659AC:
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0]
	add r1, r1, #4
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x18]
	bl sub_0200D430
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x50
	cmp r7, #2
	blt _022659AC
	ldr r1, _02265A14 ; =0x02267DC8
	ldr r0, [sp]
	ldr r2, _02265A18 ; =0x00001001
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0200D9E8
	b _022659F6
_022659DC:
	bne _022659F6
	add r0, r1, #0
	sub r0, #0x18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _022659F6
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _022659F6
	add r0, r6, #0
	bl ov116_02265754
_022659F6:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02265A04
	sub r1, r1, #1
	str r1, [r6, r0]
_02265A04:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265A08: .word 0x02267DA4
_02265A0C: .word 0x02267DA8
_02265A10: .word 0x02267DAC
_02265A14: .word 0x02267DC8
_02265A18: .word 0x00001001
	thumb_func_end ov116_0226591C

	thumb_func_start ov116_02265A1C
ov116_02265A1C: ; 0x02265A1C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _02265A90 ; =0x00002AF4
	ldr r6, _02265A94 ; =0x00002030
	add r1, r4, r0
	ldr r0, _02265A98 ; =0x00002188
	str r1, [r4, r0]
	mov r1, #0x42
	lsl r1, r1, #2
	add r3, r4, r1
	add r2, r0, #4
	str r3, [r4, r2]
	add r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r4, #0x14]
	add r1, #0x24
	str r2, [r4, r1]
	add r2, r0, #0
	mov r1, #0
	add r2, #0xc
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0x18
	str r1, [r4, r2]
	add r0, #0x1c
	str r1, [r4, r0]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r4, #0
	add r0, #0xa0
_02265A60:
	add r5, r2, #0
	add r5, #0xe8
	ldr r5, [r5, #0]
	add r1, r1, #1
	str r5, [r3, r6]
	add r5, r2, #0
	add r5, #0xe0
	ldr r5, [r5, #0]
	add r2, r2, #4
	str r5, [r3, r0]
	add r3, #0x50
	cmp r1, #2
	blt _02265A60
	ldr r1, _02265A94 ; =0x00002030
	mov r2, #1
	ldr r0, _02265A9C ; =ov116_0226591C
	add r1, r4, r1
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r1, _02265AA0 ; =0x00002184
	str r0, [r4, r1]
	pop {r4, r5, r6, pc}
	nop
_02265A90: .word 0x00002AF4
_02265A94: .word 0x00002030
_02265A98: .word 0x00002188
_02265A9C: .word ov116_0226591C
_02265AA0: .word 0x00002184
	thumb_func_end ov116_02265A1C

	thumb_func_start ov116_02265AA4
ov116_02265AA4: ; 0x02265AA4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02265AC2
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265ACC
_02265AC2:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
_02265ACC:
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #4
	bls _02265AD8
	b _02265D78
_02265AD8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265AE4: ; jump table
	.short _02265AEE - _02265AE4 - 2 ; case 0
	.short _02265C5E - _02265AE4 - 2 ; case 1
	.short _02265CA6 - _02265AE4 - 2 ; case 2
	.short _02265CEC - _02265AE4 - 2 ; case 3
	.short _02265D32 - _02265AE4 - 2 ; case 4
_02265AEE:
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #0x80
	strh r0, [r4, #0x14]
	mov r0, #0xa0
	strh r0, [r4, #0x16]
	mov r0, #0x40
	str r0, [r4, #0x18]
	mov r0, #0x18
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa8
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x80
	add r0, #0xb4
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xa0
	add r0, #0xb6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r4, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	add r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x1c]
	mul r0, r1
	add r6, r2, r0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0200D650
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r5, #0
	add r2, r5, r2
	bl ov116_02264764
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	add r0, r4, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	mul r0, r1
	add r6, r2, r0
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	mul r0, r1
	sub r5, r2, r0
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200D650
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0xc0
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0xd8
	add r1, r5, #0
	add r2, r5, r2
	bl ov116_02264764
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02265C5E:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265CA6:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265CEC:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265D32:
	sub r1, #0x38
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r1, #0x52
	lsl r1, r1, #2
	add r5, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	cmp r5, #0
	beq _02265D7E
	cmp r0, #0
	beq _02265D7E
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02265D78:
	add r0, r5, #0
	bl sub_0200DA58
_02265D7E:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02265AA4

	thumb_func_start ov116_02265D84
ov116_02265D84: ; 0x02265D84
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02265D84

	thumb_func_start ov116_02265D8C
ov116_02265D8C: ; 0x02265D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _02265DA4
	cmp r0, #1
	beq _02265E2C
	b _02265E56
_02265DA4:
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	cmp r6, #0
	bne _02265DD2
	add r0, r4, #0
	ldr r6, [sp, #4]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	b _02265DEC
_02265DD2:
	add r0, r4, #0
	ldr r6, [sp, #4]
	bl ov116_022658C8
	mov r2, #0x2d
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x20
	add r1, r6, #0
	add r2, r6, r2
	bl ov116_02264764
_02265DEC:
	cmp r7, #2
	bne _02265E0C
	add r0, r4, #0
	ldr r6, [sp]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	sub r2, r6, r2
	bl ov116_02264764
	b _02265E26
_02265E0C:
	add r0, r4, #0
	ldr r6, [sp]
	bl ov116_022658C8
	mov r2, #6
	add r3, r0, #0
	add r0, r5, #0
	lsl r2, r2, #0xe
	add r0, #0x38
	add r1, r6, #0
	add r2, r6, r2
	bl ov116_02264764
_02265E26:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265E2C:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265E5C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265E56:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265E5C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_02265D8C

	thumb_func_start ov116_02265E64
ov116_02265E64: ; 0x02265E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265E78
	cmp r0, #1
	beq _02265EE8
	b _02265F10
_02265E78:
	cmp r2, #0
	bne _02265E96
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #2
	add r0, #0x20
	lsl r1, r1, #0xe
	lsl r2, r2, #0x12
	bl ov116_02264764
	b _02265EAC
_02265E96:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r2, #2
	ldr r1, _02265F18 ; =0xFFFC2000
	add r0, #0x20
	lsl r2, r2, #0x12
	bl ov116_02264764
_02265EAC:
	cmp r6, #2
	bne _02265ECA
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x22
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
	b _02265EE2
_02265ECA:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x2e
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
_02265EE2:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265EE8:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265F14
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265F10:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265F14:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265F18: .word 0xFFFC2000
	thumb_func_end ov116_02265E64

	thumb_func_start ov116_02265F1C
ov116_02265F1C: ; 0x02265F1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265F30
	cmp r0, #1
	beq _02265FA0
	b _02265FC8
_02265F30:
	cmp r2, #0
	bne _02265F4E
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #2
	add r0, #0x20
	lsl r1, r1, #0xe
	lsl r2, r2, #0x12
	bl ov116_02264764
	b _02265F64
_02265F4E:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r2, #2
	ldr r1, _02265FD0 ; =0xFFFC2000
	add r0, #0x20
	lsl r2, r2, #0x12
	bl ov116_02264764
_02265F64:
	cmp r6, #2
	bne _02265F82
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x12
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
	b _02265F9A
_02265F82:
	add r0, r4, #0
	bl ov116_022658C8
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x1e
	add r0, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl ov116_02264764
_02265F9A:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02265FA0:
	add r0, r5, #0
	add r0, #0x20
	bl ov116_02264774
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov116_02264774
	mov r3, #1
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x38]
	lsl r3, r3, #0x14
	bl sub_0200D650
	cmp r4, #0
	beq _02265FCC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265FC8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02265FCC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265FD0: .word 0xFFFC2000
	thumb_func_end ov116_02265F1C

	thumb_func_start ov116_02265FD4
ov116_02265FD4: ; 0x02265FD4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265FEA
	cmp r0, #1
	beq _02265FF6
	b _0226609A
_02265FEA:
	mov r0, #0
	str r0, [r4, #0x10]
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02265FF6:
	add r0, r1, #0
	bl ov116_022658C8
	add r1, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	bl sub_020E1F6C
	mov r1, #8
	ldrsh r2, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, #8]
	mov r0, #0x5a
	ldrsh r1, [r4, r1]
	lsl r0, r0, #2
	cmp r1, r0
	blt _0226601C
	mov r0, #0
	strh r0, [r4, #8]
_0226601C:
	mov r3, #1
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl sub_0200D67C
	cmp r5, #0
	ldrh r0, [r4, #8]
	bne _02266048
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	sub r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
	b _0226605E
_02266048:
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x18]
	mul r0, r1
	add r5, r2, r0
	ldrh r0, [r4, #8]
	bl sub_0201D264
_0226605E:
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	mov r3, #1
	lsl r3, r3, #0x14
	lsl r2, r1, #0xc
	ldr r1, [r4, #0x1c]
	mul r0, r1
	sub r2, r2, r0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200D650
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022660A0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, r6
	blt _02266094
	ldr r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02266094:
	mov r0, #1
	str r0, [r4, #4]
	b _022660A0
_0226609A:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022660A0:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02265FD4

	thumb_func_start ov116_022660A8
ov116_022660A8: ; 0x022660A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266100 ; =0x02267D20
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _022660D2
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _022660DC
_022660D2:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022660DC:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _022660E8
	b _02266442
_022660E8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022660F4: ; jump table
	.short _02266104 - _022660F4 - 2 ; case 0
	.short _0226623C - _022660F4 - 2 ; case 1
	.short _022662BE - _022660F4 - 2 ; case 2
	.short _0226633A - _022660F4 - 2 ; case 3
	.short _022663B6 - _022660F4 - 2 ; case 4
	nop
_02266100: .word 0x02267D20
_02266104:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _0226620C
	add r5, r4, #0
_02266112:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266112
_0226620C:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226623C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266310
	cmp r0, #0
	beq _02266310
	cmp r2, #0
	beq _02266310
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022662BE:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266310
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266310
	cmp r0, #0
	bne _02266312
_02266310:
	b _02266448
_02266312:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226633A:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266448
	cmp r0, #0
	beq _02266448
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022663B6:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266448
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266448
	cmp r0, #0
	beq _02266448
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _0226642E
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_0226642E:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266442:
	add r0, r5, #0
	bl sub_0200DA58
_02266448:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_022660A8

	thumb_func_start ov116_0226644C
ov116_0226644C: ; 0x0226644C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _022664A4 ; =0x02267D10
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _02266476
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266480
_02266476:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266480:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #4
	bls _0226648C
	b _022667E8
_0226648C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266498: ; jump table
	.short _022664A8 - _02266498 - 2 ; case 0
	.short _022665E0 - _02266498 - 2 ; case 1
	.short _02266662 - _02266498 - 2 ; case 2
	.short _022666E0 - _02266498 - 2 ; case 3
	.short _0226675C - _02266498 - 2 ; case 4
	nop
_022664A4: .word 0x02267D10
_022664A8:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _022665B0
	add r5, r4, #0
_022664B6:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _022664B6
_022665B0:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022665E0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022666B6
	cmp r0, #0
	beq _022666B6
	cmp r2, #0
	beq _022666B6
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266662:
	mov r0, #1
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022666B6
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022666B6
	cmp r0, #0
	bne _022666B8
_022666B6:
	b _022667EE
_022666B8:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022666E0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022667EE
	cmp r0, #0
	beq _022667EE
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226675C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022667EE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _022667EE
	cmp r0, #0
	beq _022667EE
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _022667D4
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022667D4:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022667E8:
	add r0, r5, #0
	bl sub_0200DA58
_022667EE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226644C

	thumb_func_start ov116_022667F4
ov116_022667F4: ; 0x022667F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266850 ; =0x02267D30
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _0226681E
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266828
_0226681E:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266828:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02266834
	b _02266BE6
_02266834:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266840: ; jump table
	.short _02266854 - _02266840 - 2 ; case 0
	.short _0226698C - _02266840 - 2 ; case 1
	.short _02266A0E - _02266840 - 2 ; case 2
	.short _02266A88 - _02266840 - 2 ; case 3
	.short _02266AB4 - _02266840 - 2 ; case 4
	.short _02266B30 - _02266840 - 2 ; case 5
	.short _02266B9A - _02266840 - 2 ; case 6
	nop
_02266850: .word 0x02267D30
_02266854:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _0226695C
	add r5, r4, #0
_02266862:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266862
_0226695C:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0226698C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266AA0
	cmp r0, #0
	beq _02266AA0
	cmp r2, #0
	beq _02266AA0
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266A0E:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266AA0
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266AA0
	cmp r0, #0
	beq _02266AA0
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266A88:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02266AA2
_02266AA0:
	b _02266BEC
_02266AA2:
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266AB4:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266BEC
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266B30:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266BEC
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266BEC
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266B9A:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02266BEC
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	beq _02266BD2
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266BD2:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266BE6:
	add r0, r5, #0
	bl sub_0200DA58
_02266BEC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_022667F4

	thumb_func_start ov116_02266BF0
ov116_02266BF0: ; 0x02266BF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _02266C4C ; =0x02267D50
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl sub_0200F2AC
	cmp r0, #0
	beq _02266C1A
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266C24
_02266C1A:
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02266C24:
	add r1, r0, #0
	sub r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #6
	bls _02266C30
	b _02266FE2
_02266C30:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02266C3C: ; jump table
	.short _02266C50 - _02266C3C - 2 ; case 0
	.short _02266D88 - _02266C3C - 2 ; case 1
	.short _02266E0A - _02266C3C - 2 ; case 2
	.short _02266E84 - _02266C3C - 2 ; case 3
	.short _02266EB0 - _02266C3C - 2 ; case 4
	.short _02266F2C - _02266C3C - 2 ; case 5
	.short _02266F96 - _02266C3C - 2 ; case 6
	nop
_02266C4C: .word 0x02267D50
_02266C50:
	sub r0, #0x3c
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [sp]
	cmp r0, #0
	ble _02266D58
	add r5, r4, #0
_02266C5E:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #0x80
	strh r0, [r5, #0x14]
	mov r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, #0x40
	str r0, [r5, #0x18]
	mov r0, #0x18
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r1, r5, #0
	add r1, #0xa8
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0x80
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb6
	mov r0, #0xa0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0x40
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0x18
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	ldrh r0, [r5, #8]
	bl sub_0201D250
	mov r1, #0x14
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldrh r0, [r5, #8]
	bl sub_0201D264
	mov r1, #0x16
	ldrsh r1, [r5, r1]
	lsl r3, r1, #0xc
	ldr r1, [r5, #0x1c]
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #1
	ldr r0, [r5, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x14
	bl sub_0200D67C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xb4
	ldrsh r1, [r5, r1]
	lsl r6, r1, #0xc
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	add r7, r1, #0
	mul r7, r0
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	bl sub_0201D264
	mov r1, #0xb6
	add r2, r5, #0
	ldrsh r1, [r5, r1]
	add r2, #0xbc
	ldr r2, [r2, #0]
	lsl r1, r1, #0xc
	mul r0, r2
	sub r2, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	mov r3, #1
	ldr r0, [r0, #0]
	add r1, r6, r7
	lsl r3, r3, #0x14
	bl sub_0200D650
	ldr r0, [sp]
	add r5, #0x50
	add r0, r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	blt _02266C5E
_02266D58:
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266D88:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	mov r2, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266E9C
	cmp r0, #0
	beq _02266E9C
	cmp r2, #0
	beq _02266E9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	ldr r0, [r4, #0x50]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266E0A:
	mov r3, #1
	mov r1, #0x51
	add r0, r4, #0
	str r3, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	bl ov116_02265FD4
	mov r1, #0x52
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov116_02265D8C
	mov r1, #0x52
	str r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r2, #1
	mov r3, #3
	bl ov116_02265F1C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266E9C
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266E9C
	cmp r0, #0
	beq _02266E9C
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266E84:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xf0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _02266E9E
_02266E9C:
	b _02266FE8
_02266E9E:
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266EB0:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #2
	bl ov116_02265E64
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xf0
	mov r2, #0
	mov r3, #3
	bl ov116_02265D8C
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266FE8
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266F2C:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0xa0
	mov r2, #0
	mov r3, #1
	bl ov116_02265FD4
	mov r2, #1
	mov r1, #0x52
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x50
	mov r3, #2
	bl ov116_02265D8C
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02266FE8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02266FE8
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0xf0
	bl ov116_02265D84
	add r0, r4, #0
	bl ov116_02265D84
	add r0, r4, #0
	add r0, #0x50
	bl ov116_02265D84
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_02266F96:
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, #0xa0
	add r3, r2, #0
	bl ov116_02265FD4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02266FE8
	add r0, r4, #0
	add r0, #0xa0
	bl ov116_02265D84
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #8
	beq _02266FCE
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x1c
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266FCE:
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r0, r0, #1
	add sp, #0x1c
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_02266FE2:
	add r0, r5, #0
	bl sub_0200DA58
_02266FE8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov116_02266BF0

	thumb_func_start ov116_02266FEC
ov116_02266FEC: ; 0x02266FEC
	mov r1, #0xfe
	lsl r1, r1, #0x16
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov116_02266FEC

	thumb_func_start ov116_02266FFC
ov116_02266FFC: ; 0x02266FFC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02266FFC

	thumb_func_start ov116_0226700C
ov116_0226700C: ; 0x0226700C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_020E18B0
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E1A9C
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E1A9C
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E1A9C
	str r0, [r6, #0]
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	bl sub_020E18B0
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	bl sub_020E18B0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E1A9C
	str r0, [r6, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #4]
	bl sub_020E18B0
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #0]
	bl sub_020E18B0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #8]
	bl sub_020E18B0
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	bl sub_020E18B0
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_020E1A9C
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	str r0, [r6, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0]
	bl sub_020E18B0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	bl sub_020E18B0
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #4]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E1A9C
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020E0B00
	str r0, [r6, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226700C

	thumb_func_start ov116_0226711C
ov116_0226711C: ; 0x0226711C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, #0
	bl sub_020E0B00
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #0
	bl sub_020E0B00
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r0, #0
	bl sub_020E18B0
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, r0, #0
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_0226711C

	thumb_func_start ov116_02267160
ov116_02267160: ; 0x02267160
	push {r4, lr}
	add r4, r0, #0
	bl ov116_0226711C
	mov r1, #0
	bl sub_020E1108
	bls _0226718A
	add r0, r4, #0
	bl ov116_0226711C
	add r1, r0, #0
	ldr r0, _022671B4 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022671A0
_0226718A:
	add r0, r4, #0
	bl ov116_0226711C
	add r1, r0, #0
	ldr r0, _022671B4 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022671A0:
	bl sub_020E1740
	bl sub_020BCFF0
	bl sub_020E17B4
	ldr r1, _022671B4 ; =0x45800000
	bl sub_020E1304
	pop {r4, pc}
	; .align 2, 0
_022671B4: .word 0x45800000
	thumb_func_end ov116_02267160

	thumb_func_start ov116_022671B8
ov116_022671B8: ; 0x022671B8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_020E1304
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_020E1304
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_020E1304
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl sub_020E1304
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_022671B8

	thumb_func_start ov116_022671EC
ov116_022671EC: ; 0x022671EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r1, r0, #0
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	add r1, r0, #0
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r1, r0, #0
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #4]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0]
	bl sub_020E18B0
	bl sub_020E16BC
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl sub_020E0234
	bl sub_020DFF84
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020E16BC
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl sub_020E074C
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	add r0, r6, #0
	bl sub_020E16BC
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #4]
	bl sub_020E074C
	bl sub_020DFF84
	str r0, [r4, #0]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_020E0B00
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl sub_020E1A9C
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_020E1A9C
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_020E16BC
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl sub_020E074C
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r5, r1, #0
	bl sub_020E16BC
	add r2, r0, #0
	add r3, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020E074C
	bl sub_020DFF84
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl sub_020E0B00
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl sub_020E0B00
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl sub_020E1A9C
	str r0, [r4, #0x24]
	ldr r0, [sp, #8]
	bl sub_020E16BC
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl sub_020E074C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	add r5, r1, #0
	bl sub_020E16BC
	add r2, r0, #0
	add r3, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020E074C
	bl sub_020DFF84
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0x3c]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022673F8: .word 0x3FF00000
	thumb_func_end ov116_022671EC

	thumb_func_start ov116_022673FC
ov116_022673FC: ; 0x022673FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267420
	ldr r1, [r5, #0]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226742E
_02267420:
	ldr r1, [r5, #0]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226742E:
	bl sub_020E1740
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267452
	ldr r1, [r5, #4]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267460
_02267452:
	ldr r1, [r5, #4]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267460:
	bl sub_020E1740
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267484
	ldr r1, [r5, #8]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267492
_02267484:
	ldr r1, [r5, #8]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267492:
	bl sub_020E1740
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022674B6
	ldr r1, [r5, #0xc]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022674C4
_022674B6:
	ldr r1, [r5, #0xc]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022674C4:
	bl sub_020E1740
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022674E8
	ldr r1, [r5, #0x10]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022674F6
_022674E8:
	ldr r1, [r5, #0x10]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022674F6:
	bl sub_020E1740
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _0226751A
	ldr r1, [r5, #0x14]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267528
_0226751A:
	ldr r1, [r5, #0x14]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267528:
	bl sub_020E1740
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _0226754C
	ldr r1, [r5, #0x18]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226755A
_0226754C:
	ldr r1, [r5, #0x18]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226755A:
	bl sub_020E1740
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _0226757E
	ldr r1, [r5, #0x1c]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226758C
_0226757E:
	ldr r1, [r5, #0x1c]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226758C:
	bl sub_020E1740
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022675B0
	ldr r1, [r5, #0x20]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022675BE
_022675B0:
	ldr r1, [r5, #0x20]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022675BE:
	bl sub_020E1740
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022675E2
	ldr r1, [r5, #0x24]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022675F0
_022675E2:
	ldr r1, [r5, #0x24]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022675F0:
	bl sub_020E1740
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267614
	ldr r1, [r5, #0x28]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267622
_02267614:
	ldr r1, [r5, #0x28]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267622:
	bl sub_020E1740
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267646
	ldr r1, [r5, #0x2c]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267654
_02267646:
	ldr r1, [r5, #0x2c]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267654:
	bl sub_020E1740
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _02267678
	ldr r1, [r5, #0x30]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02267686
_02267678:
	ldr r1, [r5, #0x30]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02267686:
	bl sub_020E1740
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022676AA
	ldr r1, [r5, #0x34]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022676B8
_022676AA:
	ldr r1, [r5, #0x34]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022676B8:
	bl sub_020E1740
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _022676DC
	ldr r1, [r5, #0x38]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022676EA
_022676DC:
	ldr r1, [r5, #0x38]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022676EA:
	bl sub_020E1740
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _02267724 ; =0x45800000
	bls _0226770E
	ldr r1, [r5, #0x3c]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226771C
_0226770E:
	ldr r1, [r5, #0x3c]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226771C:
	bl sub_020E1740
	str r0, [r4, #0x3c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02267724: .word 0x45800000
	thumb_func_end ov116_022673FC

	thumb_func_start ov116_02267728
ov116_02267728: ; 0x02267728
	push {r4, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r1, sp, #0
	bl ov116_022673FC
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020BC4A0
	add sp, #0x40
	pop {r4, pc}
	; 0x02267740

	.incbin "incbin/overlay116.bin"
