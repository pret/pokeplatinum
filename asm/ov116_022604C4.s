	.include "macros/function.inc"
	.include "include/ov116_022604C4.inc"

	

	.text


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
	bl NNS_G2dGetUnpackedPaletteData
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02260688
_0226067A:
	add r0, r6, #0
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02260688:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x14]
	bl _f_ftoi
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022606CA
_022606BC:
	add r0, r6, #0
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022606CA:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x18]
	bl _f_ftoi
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02260716
_02260708:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02260716:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x1c]
	bl _f_ftoi
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
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02260754
_02260746:
	add r0, r6, #0
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02260754:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x20]
	bl _f_ftoi
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
	bl memset
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
	bl MTX_MultVec43
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
	bl _s32_div_f
	bl _f_itof
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
	bl MTX_MultVec43
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
	bl _s32_div_f
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
	ldr r3, _02261268 ; =memset
	add r0, #0x24
	mov r2, #0x20
	bx r3
	; .align 2, 0
_02261268: .word memset
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
	bl G3X_SetEdgeColorTable
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
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
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
	bl G2x_SetBlendAlpha_
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _022616C8 ; =0x04001050
	mov r1, #0
	mov r2, #0x11
	mov r3, #7
	bl G2x_SetBlendAlpha_
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

	.rodata


	.global Unk_ov116_0226777C
Unk_ov116_0226777C: ; 0x0226777C
	.incbin "incbin/overlay116_rodata.bin", 0x3C, 0x48 - 0x3C

	.global Unk_ov116_02267788
Unk_ov116_02267788: ; 0x02267788
	.incbin "incbin/overlay116_rodata.bin", 0x48, 0x54 - 0x48

	.global Unk_ov116_02267794
Unk_ov116_02267794: ; 0x02267794
	.incbin "incbin/overlay116_rodata.bin", 0x54, 0x64 - 0x54

	.global Unk_ov116_022677A4
Unk_ov116_022677A4: ; 0x022677A4
	.incbin "incbin/overlay116_rodata.bin", 0x64, 0x74 - 0x64

	.global Unk_ov116_022677B4
Unk_ov116_022677B4: ; 0x022677B4
	.incbin "incbin/overlay116_rodata.bin", 0x74, 0x84 - 0x74

	.global Unk_ov116_022677C4
Unk_ov116_022677C4: ; 0x022677C4
	.incbin "incbin/overlay116_rodata.bin", 0x84, 0x98 - 0x84

	.global Unk_ov116_022677D8
Unk_ov116_022677D8: ; 0x022677D8
	.incbin "incbin/overlay116_rodata.bin", 0x98, 0xB0 - 0x98

	.global Unk_ov116_022677F0
Unk_ov116_022677F0: ; 0x022677F0
	.incbin "incbin/overlay116_rodata.bin", 0xB0, 0xD0 - 0xB0

	.global Unk_ov116_02267810
Unk_ov116_02267810: ; 0x02267810
	.incbin "incbin/overlay116_rodata.bin", 0xD0, 0xF8 - 0xD0

	.global Unk_ov116_02267838
Unk_ov116_02267838: ; 0x02267838
	.incbin "incbin/overlay116_rodata.bin", 0xF8, 0x168 - 0xF8

	.global Unk_ov116_022678A8
Unk_ov116_022678A8: ; 0x022678A8
	.incbin "incbin/overlay116_rodata.bin", 0x168, 0x1D8 - 0x168

	.global Unk_ov116_02267918
Unk_ov116_02267918: ; 0x02267918
	.incbin "incbin/overlay116_rodata.bin", 0x1D8, 0x258 - 0x1D8

	.global Unk_ov116_02267998
Unk_ov116_02267998: ; 0x02267998
	.incbin "incbin/overlay116_rodata.bin", 0x258, 0xC0

