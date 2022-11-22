	.include "macros/function.inc"


	.text

	thumb_func_start ov98_02246C20
ov98_02246C20: ; 0x02246C20
	push {r3, r4, r5, lr}
	mov r2, #0xa
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6c
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r2, #3
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	mov r1, #0x47
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x6c
	bl sub_0200681C
	mov r2, #0x47
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl sub_02025E44
	str r0, [r4, #8]
	mov r0, #0x64
	mov r1, #0x6c
	bl sub_02023790
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x64
	mov r1, #0x6c
	bl sub_02023790
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02246C94 ; =0x00000497
	mov r0, #0x11
	mov r2, #1
	bl sub_02004550
	mov r0, #0
	add r4, #0x88
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246C94: .word 0x00000497
	thumb_func_end ov98_02246C20

	thumb_func_start ov98_02246C98
ov98_02246C98: ; 0x02246C98
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246CBC
	bl FUN_021D8018
	bl FUN_0223B15C
	bl FUN_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02246CBC:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02246D9E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246CCE: ; jump table
	.short _02246CD8 - _02246CCE - 2 ; case 0
	.short _02246CE4 - _02246CCE - 2 ; case 1
	.short _02246D04 - _02246CCE - 2 ; case 2
	.short _02246D42 - _02246CCE - 2 ; case 3
	.short _02246D9A - _02246CCE - 2 ; case 4
_02246CD8:
	add r0, r4, #0
	bl ov98_02246E08
	mov r0, #1
	str r0, [r5, #0]
	b _02246D9E
_02246CE4:
	bl sub_020334A4
	cmp r0, #0
	beq _02246D9E
	ldr r1, [r4, #0x10]
	ldr r0, _02246DA4 ; =0x02249E20
	str r1, [r0, #0]
	ldr r0, _02246DA8 ; =ov98_02246EAC
	ldr r1, _02246DAC ; =ov98_02246ED4
	bl FUN_021D776C
	mov r0, #1
	str r0, [r4, #0x7c]
	mov r0, #2
	str r0, [r5, #0]
	b _02246D9E
_02246D04:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r2, r1, #4
	ldr r1, _02246DB0 ; =0x02249B4C
	ldr r1, [r1, r2]
	blx r1
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r2, r0, #4
	ldr r0, _02246DB4 ; =0x02249B54
	ldr r0, [r0, r2]
	mov r2, #0x6c
	bl sub_020067E8
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	mov r0, #6
	add r4, #0x88
	str r0, [r4, #0]
	mov r0, #3
	str r0, [r5, #0]
	b _02246D9E
_02246D42:
	ldr r0, [r4, #0]
	bl sub_02006844
	cmp r0, #1
	bne _02246D9E
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r2, r1, #4
	ldr r1, _02246DB8 ; =0x02249B50
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4, #0]
	bl sub_02006814
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #6
	bne _02246D72
	mov r0, #4
	str r0, [r5, #0]
	b _02246D9E
_02246D72:
	lsl r1, r0, #4
	ldr r0, _02246DBC ; =0x02249B58
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02246D88
	add r0, r4, #0
	bl ov98_02246E54
	mov r0, #2
	str r0, [r5, #0]
	b _02246D9E
_02246D88:
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246D94
	mov r0, #2
	str r0, [r5, #0]
	b _02246D9E
_02246D94:
	mov r0, #0
	str r0, [r5, #0]
	b _02246D9E
_02246D9A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246D9E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02246DA4: .word 0x02249E20
_02246DA8: .word ov98_02246EAC
_02246DAC: .word ov98_02246ED4
_02246DB0: .word 0x02249B4C
_02246DB4: .word 0x02249B54
_02246DB8: .word 0x02249B50
_02246DBC: .word 0x02249B58
	thumb_func_end ov98_02246C98

	thumb_func_start ov98_02246DC0
ov98_02246DC0: ; 0x02246DC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov98_02246E54
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x6c
	bl sub_0201807C
	mov r0, #0x5b
	bl sub_0201807C
	ldr r0, _02246E00 ; =0x0000004D
	ldr r1, _02246E04 ; =0x021D742C
	bl sub_02000EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246E00: .word 0x0000004D
_02246E04: .word 0x021D742C
	thumb_func_end ov98_02246DC0

	thumb_func_start ov98_02246E08
ov98_02246E08: ; 0x02246E08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _02246E48
	ldr r0, _02246E4C ; =0x0000005E
	mov r1, #2
	bl sub_02006590
	ldr r1, _02246E50 ; =0x00020020
	mov r0, #0x6c
	bl sub_02018144
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020A5404
	str r0, [r4, #0x10]
	bl sub_02099550
	bl sub_020995B4
	bl sub_02033478
	mov r0, #4
	bl sub_02017B8C
_02246E48:
	pop {r4, pc}
	nop
_02246E4C: .word 0x0000005E
_02246E50: .word 0x00020020
	thumb_func_end ov98_02246E08

	thumb_func_start ov98_02246E54
ov98_02246E54: ; 0x02246E54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246E80
	ldr r0, [r4, #0x10]
	bl sub_020A543C
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	bl sub_020995C4
	bl sub_02099560
	bl sub_020334CC
	ldr r0, _02246E84 ; =0x0000005E
	bl sub_02006514
	mov r0, #0
	str r0, [r4, #0x7c]
_02246E80:
	pop {r4, pc}
	nop
_02246E84: .word 0x0000005E
	thumb_func_end ov98_02246E54

	thumb_func_start ov98_02246E88
ov98_02246E88: ; 0x02246E88
	add r3, r0, #0
	add r3, #0x88
	str r1, [r3, #0]
	add r0, #0x8c
	str r2, [r0, #0]
	bx lr
	thumb_func_end ov98_02246E88

	thumb_func_start ov98_02246E94
ov98_02246E94: ; 0x02246E94
	mov r1, #6
	add r0, #0x88
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov98_02246E94

	thumb_func_start ov98_02246E9C
ov98_02246E9C: ; 0x02246E9C
	add r0, #0x7a
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02246E9C

	thumb_func_start ov98_02246EA4
ov98_02246EA4: ; 0x02246EA4
	add r0, #0x7a
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02246EA4

	thumb_func_start ov98_02246EAC
ov98_02246EAC: ; 0x02246EAC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020C3D98
	add r6, r0, #0
	ldr r0, _02246ED0 ; =0x02249E20
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_020A5448
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020C3DAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246ED0: .word 0x02249E20
	thumb_func_end ov98_02246EAC

	thumb_func_start ov98_02246ED4
ov98_02246ED4: ; 0x02246ED4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02246EF0
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _02246EF4 ; =0x02249E20
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
_02246EF0:
	pop {r3, r4, r5, pc}
	nop
_02246EF4: .word 0x02249E20
	thumb_func_end ov98_02246ED4

	thumb_func_start ov98_02246EF8
ov98_02246EF8: ; 0x02246EF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6c
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x6c
	bl ov98_022499C8
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02030D38
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov98_02246EF8

	thumb_func_start ov98_02246F24
ov98_02246F24: ; 0x02246F24
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x78
	ldrh r2, [r2]
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02030D5C
	mov r2, #0x42
	lsl r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	mov r1, #2
	bl sub_02030D5C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02246F24

	thumb_func_start ov98_02246F48
ov98_02246F48: ; 0x02246F48
	mov r2, #0x41
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r0, [r3, #4]
	ldr r2, [r3, r2]
	ldr r3, _02246F58 ; =sub_02030D5C
	mov r1, #3
	bx r3
	; .align 2, 0
_02246F58: .word sub_02030D5C
	thumb_func_end ov98_02246F48

	thumb_func_start ov98_02246F5C
ov98_02246F5C: ; 0x02246F5C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x98
	bl sub_02030E48
	add r1, r0, #0
	add r0, r4, #0
	bl ov98_02246F94
	pop {r4, pc}
	thumb_func_end ov98_02246F5C

	thumb_func_start ov98_02246F74
ov98_02246F74: ; 0x02246F74
	add r1, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _02246F84 ; =ov98_022499C8
	add r1, #0xbc
	mov r2, #0x6c
	bx r3
	; .align 2, 0
_02246F84: .word ov98_022499C8
	thumb_func_end ov98_02246F74

	thumb_func_start ov98_02246F88
ov98_02246F88: ; 0x02246F88
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r0, #0xfa
	strh r1, [r0]
	bx lr
	thumb_func_end ov98_02246F88

	thumb_func_start ov98_02246F94
ov98_02246F94: ; 0x02246F94
	add r0, #0x78
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02246F94

	thumb_func_start ov98_02246F9C
ov98_02246F9C: ; 0x02246F9C
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246F9C

	thumb_func_start ov98_02246FA4
ov98_02246FA4: ; 0x02246FA4
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246FA4

	thumb_func_start ov98_02246FAC
ov98_02246FAC: ; 0x02246FAC
	mov r2, #0x43
	lsl r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end ov98_02246FAC

	thumb_func_start ov98_02246FB4
ov98_02246FB4: ; 0x02246FB4
	mov r1, #0x43
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246FB4

	thumb_func_start ov98_02246FBC
ov98_02246FBC: ; 0x02246FBC
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02246FBC

	thumb_func_start ov98_02246FC0
ov98_02246FC0: ; 0x02246FC0
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02246FC0

	thumb_func_start ov98_02246FC4
ov98_02246FC4: ; 0x02246FC4
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_02025E44
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x6c
	mov r1, #0x10
	add r2, sp, #8
	bl sub_02089400
	add r1, r4, #0
	add r1, #0x94
	add r4, #0x94
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov98_02246FC4

	thumb_func_start ov98_02246FFC
ov98_02246FFC: ; 0x02246FFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r4, [r0, #0]
	mov r1, #0x6c
	ldr r0, [r4, #0x1c]
	bl ov98_02249A80
	cmp r0, #0
	beq _0224701A
	add r0, r5, #0
	mov r1, #1
	bl ov98_02246FAC
	b _0224705C
_0224701A:
	add r0, r5, #0
	bl ov98_02246FB4
	cmp r0, #2
	bne _02247048
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl sub_02023BE0
	cmp r0, #0
	beq _0224703E
	add r0, r5, #0
	mov r1, #3
	bl ov98_02246FAC
	b _0224705C
_0224703E:
	add r0, r5, #0
	mov r1, #0
	bl ov98_02246FAC
	b _0224705C
_02247048:
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl sub_02023810
	add r0, r5, #0
	mov r1, #2
	bl ov98_02246FAC
_0224705C:
	add r0, r4, #0
	bl sub_02089438
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov98_02246FFC

	thumb_func_start ov98_02247070
ov98_02247070: ; 0x02247070
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02025E44
	add r3, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x78
	ldrh r0, [r0]
	mov r1, #7
	add r2, sp, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x6c
	bl sub_0208941C
	add r1, r4, #0
	add r1, #0x94
	add r4, #0x94
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02247070

	thumb_func_start ov98_022470B8
ov98_022470B8: ; 0x022470B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r4, [r0, #0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl sub_02023B38
	ldr r2, _022470F4 ; =0x00002710
	mov r3, #0
	bl sub_020E1EE0
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _022470E0
	bl sub_02022974
_022470E0:
	add r0, r4, #0
	bl sub_02089438
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	nop
_022470F4: .word 0x00002710
	thumb_func_end ov98_022470B8

	thumb_func_start ov98_022470F8
ov98_022470F8: ; 0x022470F8
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_02025E44
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x6c
	mov r1, #4
	add r2, sp, #8
	bl sub_02089400
	add r1, r4, #0
	add r1, #0x94
	add r4, #0x94
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_022470F8

	thumb_func_start ov98_02247134
ov98_02247134: ; 0x02247134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r4, [r0, #0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl sub_02023B38
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02247154
	bl sub_02022974
_02247154:
	add r0, r4, #0
	bl sub_02089438
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov98_02247134

	thumb_func_start ov98_02247168
ov98_02247168: ; 0x02247168
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6c
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #4]
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0x94
	add r5, #0x94
	str r4, [r0, #0]
	ldr r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov98_02247168

	thumb_func_start ov98_02247198
ov98_02247198: ; 0x02247198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02039074
	cmp r0, #0
	beq _022471B0
	ldr r0, [r4, #4]
	bl sub_020507E4
	bl sub_0206AF5C
_022471B0:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov98_02246E88
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02247198

	thumb_func_start ov98_022471C8
ov98_022471C8: ; 0x022471C8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _022473B0 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _022473B4 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _022473B8 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x6d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _022473BC ; =0x00000418
	add r0, r4, #0
	mov r2, #0x6d
	bl sub_0200681C
	ldr r2, _022473BC ; =0x00000418
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	mov r0, #0x6d
	bl sub_02018340
	str r0, [r5, #4]
	mov r0, #0x40
	mov r1, #0x6d
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #4]
	bl ov98_02247510
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x6d
	bl sub_0200B368
	str r0, [r5, #0x20]
	ldr r2, _022473C0 ; =0x0000029F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6d
	bl sub_0200B144
	str r0, [r5, #0x24]
	ldr r2, _022473C4 ; =0x000002A2
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6d
	bl sub_0200B144
	str r0, [r5, #0x2c]
	ldr r2, _022473C8 ; =0x000002B7
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6d
	bl sub_0200B144
	mov r2, #0x67
	str r0, [r5, #0x30]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x6d
	bl sub_0200B144
	str r0, [r5, #0x28]
	ldr r2, _022473CC ; =0x00000166
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6d
	bl sub_0200B144
	str r0, [r5, #0x34]
	mov r0, #0xb4
	mov r1, #0x6d
	bl sub_02023790
	str r0, [r5, #0x38]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x6d
	bl sub_02023790
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x24]
	mov r1, #0x1f
	bl sub_0200B1EC
	str r0, [r5, #0x3c]
	add r0, r5, #0
	bl ov98_02247704
	add r0, r5, #0
	bl ov98_02247A24
	ldr r0, [r5, #0]
	bl ov98_02246EA4
	cmp r0, #0xc
	beq _022472EE
	cmp r0, #0x16
	beq _0224731A
	b _02247330
_022472EE:
	bl FUN_021D7A8C
	cmp r0, #0
	bne _02247314
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02039074
	cmp r0, #1
	bne _02247314
	mov r0, #0xc
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02038548
	bl sub_02039734
	b _02247338
_02247314:
	mov r0, #0
	str r0, [r5, #8]
	b _02247338
_0224731A:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0, #0]
	bl sub_02039734
	ldr r0, [r5, #0]
	bl ov98_02246EA4
	str r0, [r5, #8]
	b _02247338
_02247330:
	ldr r0, [r5, #0]
	bl ov98_02246EA4
	str r0, [r5, #8]
_02247338:
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov98_02246E9C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _022473D0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, _022473D4 ; =ov98_022474E8
	add r1, r5, #0
	bl sub_02017798
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022473B0: .word 0xFFFFE0FF
_022473B4: .word 0x04001000
_022473B8: .word 0xFFFF1FFF
_022473BC: .word 0x00000418
_022473C0: .word 0x0000029F
_022473C4: .word 0x000002A2
_022473C8: .word 0x000002B7
_022473CC: .word 0x00000166
_022473D0: .word 0x021BF6DC
_022473D4: .word ov98_022474E8
	thumb_func_end ov98_022471C8

	thumb_func_start ov98_022473D8
ov98_022473D8: ; 0x022473D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _022473F2
	cmp r1, #1
	beq _02247400
	cmp r1, #2
	beq _0224742C
	b _02247438
_022473F2:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02247438
	mov r0, #1
	str r0, [r5, #0]
	b _02247438
_02247400:
	ldr r6, [r4, #8]
	ldr r1, _0224743C ; =0x02249D70
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _02247422
	add r1, r4, #0
	mov r2, #0
	add r1, #0x94
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0x9c
	str r2, [r1, #0]
	add r4, #0x98
	str r2, [r4, #0]
_02247422:
	cmp r0, #1
	bne _02247438
	mov r0, #2
	str r0, [r5, #0]
	b _02247438
_0224742C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02247438
	mov r0, #1
	pop {r4, r5, r6, pc}
_02247438:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224743C: .word 0x02249D70
	thumb_func_end ov98_022473D8

	thumb_func_start ov98_02247440
ov98_02247440: ; 0x02247440
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247464
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0, #0]
_02247464:
	ldr r0, [r4, #0x34]
	bl sub_0200B190
	ldr r0, [r4, #0x28]
	bl sub_0200B190
	ldr r0, [r4, #0x30]
	bl sub_0200B190
	ldr r0, [r4, #0x2c]
	bl sub_0200B190
	ldr r0, [r4, #0x24]
	bl sub_0200B190
	ldr r0, [r4, #0x20]
	bl sub_0200B3F0
	ldr r0, [r4, #0x3c]
	bl sub_020237BC
	ldr r0, [r4, #0x40]
	bl sub_020237BC
	ldr r0, [r4, #0x38]
	bl sub_020237BC
	add r0, r4, #0
	bl ov98_02247ACC
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl ov98_022476D0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	bl sub_0201E530
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x6d
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov98_02247440

	thumb_func_start ov98_022474E8
ov98_022474E8: ; 0x022474E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #4]
	bl sub_0201C2B8
	ldr r3, _02247508 ; =0x027E0000
	ldr r1, _0224750C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_02247508: .word 0x027E0000
_0224750C: .word 0x00003FF8
	thumb_func_end ov98_022474E8

	thumb_func_start ov98_02247510
ov98_02247510: ; 0x02247510
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r5, _022476C0 ; =0x02249C4C
	add r3, sp, #0x48
	mov r2, #5
_02247524:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02247524
	add r0, sp, #0x48
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
	ldr r5, _022476C4 ; =0x02249BCC
	add r3, sp, #0x38
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _022476C8 ; =0x02249CAC
	add r3, sp, #0x70
	mov r2, #0xe
_02247584:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02247584
	mov r1, #0
	add r0, r4, #0
	add r2, sp, #0x70
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019184
	mov r1, #0
	add r0, r4, #0
	mov r2, #3
	add r3, r1, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xa8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xc4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r5, _022476CC ; =0x02249C74
	add r3, sp, #0
	mov r2, #7
_02247642:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02247642
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x1c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x6d
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6d
	bl sub_02019690
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_022476C0: .word 0x02249C4C
_022476C4: .word 0x02249BCC
_022476C8: .word 0x02249CAC
_022476CC: .word 0x02249C74
	thumb_func_end ov98_02247510

	thumb_func_start ov98_022476D0
ov98_022476D0: ; 0x022476D0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov98_022476D0

	thumb_func_start ov98_02247704
ov98_02247704: ; 0x02247704
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r0, #4]
	mov r1, #0x6d
	str r0, [sp, #0x30]
	mov r0, #0x5c
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x6d
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x6d
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x6d
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r1, #2
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r1, #2
	mov r3, #1
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r1, #5
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r1, #0xa
	mov r3, #5
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r1, #0xb
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	ldr r0, [sp, #0x10]
	mov r2, #0xcb
	add r0, #0xec
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x3c
	mov r3, #0x6d
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, #0xf4
	mov r2, #0x80
	bl sub_020C4B18
	ldr r0, [sp, #0x3c]
	mov r2, #0x5d
	ldr r1, [sp, #0x10]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	mov r1, #0x5d
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0xf4
	str r0, [sp, #0x14]
_0224786A:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x34]
_0224787C:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _02247886
	bl sub_02022974
_02247886:
	ldr r0, [sp, #0x34]
	mov r7, #1
	add r6, r0, #2
	ldr r0, [sp, #0x18]
	add r4, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
_0224789E:
	add r0, r6, #0
	add r0, #0xf4
	ldrh r0, [r0]
	ldr r3, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0200393C
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0224789E
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _022478EA
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0224787C
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0224787C
_022478EA:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0224786A
	mov r1, #0x5d
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl sub_020C2C54
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r0, _0224798C ; =ov98_02247990
	add r1, #0xec
	mov r2, #0x14
	bl sub_0200DA04
	ldr r1, [sp, #0x10]
	add r1, #0xec
	str r0, [r1, #0]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl sub_02006CA8
	mov r0, #0xaa
	mov r1, #0x6d
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	mov r1, #0xb
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	mov r1, #0xa
	mov r3, #3
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x6d
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	add r3, #0xb3
	bl sub_02007130
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224798C: .word ov98_02247990
	thumb_func_end ov98_02247704

	thumb_func_start ov98_02247990
ov98_02247990: ; 0x02247990
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02247A18
	ldr r0, _02247A1C ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _02247A18
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C00B4
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C0108
	ldr r0, _02247A20 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _022479FC
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02247A18
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_022479FC:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02247A18
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_02247A18:
	pop {r4, pc}
	nop
_02247A1C: .word 0x0000032B
_02247A20: .word 0x0000032A
	thumb_func_end ov98_02247990

	thumb_func_start ov98_02247A24
ov98_02247A24: ; 0x02247A24
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x68
	mov r2, #0
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x81
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x58
	mov r2, #0
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _02247AC8 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x3c]
	add r0, #0x58
	mov r2, #0
	bl ov98_022498CC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	add r4, #0x48
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02247AC8: .word 0x000F0E00
	thumb_func_end ov98_02247A24

	thumb_func_start ov98_02247ACC
ov98_02247ACC: ; 0x02247ACC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x48
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A8FC
	add r4, #0x68
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov98_02247ACC

	thumb_func_start ov98_02247AE8
ov98_02247AE8: ; 0x02247AE8
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov98_02247AE8

	thumb_func_start ov98_02247AF0
ov98_02247AF0: ; 0x02247AF0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02247B0A
	add r0, r4, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200E7FC
	add r4, #0x8c
	str r0, [r4, #0]
_02247B0A:
	pop {r4, pc}
	thumb_func_end ov98_02247AF0

	thumb_func_start ov98_02247B0C
ov98_02247B0C: ; 0x02247B0C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247B22
	bl sub_0200EBA0
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_02247B22:
	pop {r4, pc}
	thumb_func_end ov98_02247B0C

	thumb_func_start ov98_02247B24
ov98_02247B24: ; 0x02247B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _02247B54 ; =0x02249BC4
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	mov r1, #0x6d
	str r1, [sp]
	add r1, r3, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247B54: .word 0x02249BC4
	thumb_func_end ov98_02247B24

	thumb_func_start ov98_02247B58
ov98_02247B58: ; 0x02247B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _02247B94 ; =0x02249BC4
	add r4, r1, #0
	ldrh r6, [r5]
	add r1, r3, #0
	add r3, sp, #8
	strh r6, [r3]
	ldrh r6, [r5, #2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	strh r6, [r3, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	add r7, sp, #8
	strh r6, [r3, #4]
	strh r5, [r3, #6]
	strb r4, [r3, #2]
	strh r2, [r3, #6]
	str r1, [sp]
	mov r1, #0x6d
	str r1, [sp, #4]
	add r1, r7, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002054
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247B94: .word 0x02249BC4
	thumb_func_end ov98_02247B58

	thumb_func_start ov98_02247B98
ov98_02247B98: ; 0x02247B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02247BAC
	cmp r0, #1
	beq _02247C78
	b _02247CD4
_02247BAC:
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02030D20
	cmp r0, #1
	bne _02247BC2
	ldr r3, _02247D14 ; =0x02249BC0
	ldr r4, _02247D18 ; =0x02249BEC
	mov r7, #4
	ldr r2, _02247D1C ; =0x02249C0C
	b _02247BCA
_02247BC2:
	ldr r3, _02247D20 ; =0x02249BBC
	ldr r4, _02247D24 ; =0x02249BDC
	ldr r2, _02247D28 ; =0x02249C2C
	mov r7, #2
_02247BCA:
	add r6, sp, #0x14
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldrb r0, [r3, #1]
	add r1, r5, #0
	add r1, #0x78
	str r0, [sp]
	ldrb r0, [r3, #2]
	mov r2, #0
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0x6d
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xa0
	mov r6, #0
	str r0, [r1, #0]
	cmp r7, #0
	ble _02247C2A
_02247C12:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x34]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _02247C12
_02247C2A:
	add r0, r5, #0
	add r0, #0x78
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r2, r1, #0
	mov r3, #0x6d
	bl sub_0200112C
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x78
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x78
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	b _02247D0E
_02247C78:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02247C94
	add r0, r0, #1
	cmp r4, r0
	beq _02247D0E
	b _02247CBA
_02247C94:
	ldr r0, _02247D2C ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #0
	bl ov98_02246E88
	add r0, r5, #0
	mov r1, #0x1d
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	b _02247D0E
_02247CBA:
	ldr r0, _02247D2C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x9c
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r5, #0x94
	add r0, r0, #1
	str r0, [r5, #0]
	b _02247D0E
_02247CD4:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r5, #0
	add r0, #0xa4
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_02001384
	add r0, r5, #0
	add r0, #0x78
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x78
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0x78
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r5, #8]
_02247D0E:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247D14: .word 0x02249BC0
_02247D18: .word 0x02249BEC
_02247D1C: .word 0x02249C0C
_02247D20: .word 0x02249BBC
_02247D24: .word 0x02249BDC
_02247D28: .word 0x02249C2C
_02247D2C: .word 0x000005DC
	thumb_func_end ov98_02247B98

	thumb_func_start ov98_02247D30
ov98_02247D30: ; 0x02247D30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #3
	bl ov98_02246E88
	ldr r0, [r4, #0]
	mov r1, #0x26
	bl ov98_02246E9C
	mov r0, #0x1d
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02247D30

	thumb_func_start ov98_02247D50
ov98_02247D50: ; 0x02247D50
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02247D66
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02247D66:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #3
	bhi _02247E2C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247D7C: ; jump table
	.short _02247D84 - _02247D7C - 2 ; case 0
	.short _02247DA2 - _02247D7C - 2 ; case 1
	.short _02247DC2 - _02247D7C - 2 ; case 2
	.short _02247E22 - _02247D7C - 2 ; case 3
_02247D84:
	ldr r0, _02247E34 ; =0x00000F0F
	mov r2, #0x19
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247E2C
_02247DA2:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247E2C
_02247DC2:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02247E2C
	sub r1, r1, #1
	cmp r0, r1
	ldr r0, _02247E34 ; =0x00000F0F
	bne _02247DFA
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #1
	bl ov98_02249714
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r1, #0
	bl sub_02030D5C
	b _02247E14
_02247DFA:
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r2, #0x1a
	mov r3, #1
	bl ov98_02249714
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #1
	bl sub_02030D5C
_02247E14:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247E2C
_02247E22:
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #0
	bl ov98_02247AE8
_02247E2C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02247E34: .word 0x00000F0F
	thumb_func_end ov98_02247D50

	thumb_func_start ov98_02247E38
ov98_02247E38: ; 0x02247E38
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02247E4E
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02247E4E:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #3
	bhi _02247EFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247E64: ; jump table
	.short _02247E6C - _02247E64 - 2 ; case 0
	.short _02247E8A - _02247E64 - 2 ; case 1
	.short _02247EAC - _02247E64 - 2 ; case 2
	.short _02247EF2 - _02247E64 - 2 ; case 3
_02247E6C:
	ldr r0, _02247F04 ; =0x00000F0F
	mov r2, #0x1c
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247EFC
_02247E8A:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	mov r3, #1
	bl ov98_02247B58
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247EFC
_02247EAC:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02247EFC
	sub r1, r1, #1
	cmp r0, r1
	bne _02247ECC
	mov r0, #0
	str r0, [r4, #8]
	b _02247EFC
_02247ECC:
	ldr r0, _02247F04 ; =0x00000F0F
	mov r2, #0x1d
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_02030D10
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02247EFC
_02247EF2:
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #0
	bl ov98_02247AE8
_02247EFC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02247F04: .word 0x00000F0F
	thumb_func_end ov98_02247E38

	thumb_func_start ov98_02247F08
ov98_02247F08: ; 0x02247F08
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xd4
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r4, #0x34]
	mov r1, #0x2a
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r3, _02247F98 ; =0x02249D60
	mov r1, #0
	ldr r0, [r3, #4]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r0, #0xd4
	add r3, #0xc
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #0x34]
	mov r1, #0x2b
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r3, _02247F98 ; =0x02249D60
	mov r1, #0
	ldr r0, [r3, #0xc]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #8]
	add r0, r4, #0
	add r0, #0xd4
	add r3, #0xc
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsl r3, r0, #3
	add r0, r4, #0
	ldr r2, _02247F9C ; =0x02249D60
	add r0, #0xe4
	ldr r5, _02247FA0 ; =0x02249D64
	ldr r2, [r2, r3]
	ldr r0, [r0, #0]
	ldr r3, [r5, r3]
	add r1, #0xd4
	bl sub_02014A58
	add r4, #0xd4
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02247F98: .word 0x02249D60
_02247F9C: .word 0x02249D60
_02247FA0: .word 0x02249D64
	thumb_func_end ov98_02247F08

	thumb_func_start ov98_02247FA4
ov98_02247FA4: ; 0x02247FA4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd4
	mov r1, #0xf
	bl sub_0201ADA4
	add r4, #0xd4
	add r0, r4, #0
	bl sub_0201A954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02247FA4

	thumb_func_start ov98_02247FBC
ov98_02247FBC: ; 0x02247FBC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	cmp r0, #8
	beq _02247FDA
	b _022482C8
_02247FDA:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r0, #0
	add r0, r4, #0
	eor r2, r1
	add r0, #0xc0
	str r2, [r0, #0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xbc
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	add r3, r0, #6
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r3, r0
	bne _02248008
	b _02248146
_02248008:
	mov r0, #0x11
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02019CB8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_02019CB8
	mov r0, #0x11
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #3
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02019CB8
	mov r3, #0x11
	add r2, r4, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r5, [r2, #0]
	mov r2, #0x14
	mul r2, r5
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	bl sub_02019CB8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0xb
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02019CB8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0xc
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_02019CB8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0xd
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02019CB8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0xe
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x11
	bl sub_02019CB8
	b _02248160
_02248146:
	mov r0, #0x11
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #3
	mov r3, #0xe
	bl sub_02019CB8
_02248160:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224816C
	b _022482A6
_0224816C:
	mov r1, #3
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #5
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02019CB8
	mov r1, #3
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #6
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_02019CB8
	mov r1, #3
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, r2, #7
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02019CB8
	mov r1, #3
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #8
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	mov r3, #0x11
	bl sub_02019CB8
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0xf
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02019CB8
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_02019CB8
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0x11
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_02019CB8
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r3, [r2, #0]
	mov r2, #0x14
	mul r2, r3
	add r2, #0x12
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x11
	bl sub_02019CB8
	b _022482C0
_022482A6:
	mov r1, #3
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r2, #0
	mov r3, #0xe
	bl sub_02019CB8
_022482C0:
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_0201C3C0
_022482C8:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov98_02247FBC

	thumb_func_start ov98_022482CC
ov98_022482CC: ; 0x022482CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r0, #0xc4
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r7, #0x34]
	mov r1, #0x2c
	bl sub_0200B1EC
	str r0, [sp, #0xc]
	bl sub_02023C3C
	mov r1, #0x6d
	bl sub_02023790
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xac
	ldr r4, [r0, #0]
	add r0, r4, #6
	cmp r4, r0
	bge _02248336
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #0xc4
	mov r5, #0
	str r0, [sp, #0x10]
_02248306:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02023C9C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r2, r6, #0
	mov r3, #4
	bl sub_0201D738
	add r0, r7, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r0, r0, #6
	add r5, #0x10
	cmp r4, r0
	blt _02248306
_02248336:
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r7, #0xc4
	add r0, r7, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov98_022482CC

	thumb_func_start ov98_02248350
ov98_02248350: ; 0x02248350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224836E
	cmp r1, #1
	bne _02248366
	b _022484B8
_02248366:
	cmp r1, #2
	bne _0224836C
	b _02248566
_0224836C:
	b _02248614
_0224836E:
	ldr r0, [r5, #0x34]
	mov r1, #0x2c
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	bl sub_02023C5C
	add r1, r5, #0
	mov r2, #0
	add r1, #0xac
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xb0
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xb8
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xc4
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x7f
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xd4
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	bl sub_02023C3C
	mov r1, #0x6d
	bl sub_02023790
	add r7, r0, #0
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x18]
	add r0, #0xc4
	add r4, r6, #0
	str r0, [sp, #0x18]
_02248400:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_02023C9C
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r2, r7, #0
	mov r3, #4
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #6
	blt _02248400
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0xc4
	bl sub_0201A954
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0201A954
	mov r0, #0x6d
	bl sub_020149F0
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x48
	bl sub_0201ACF4
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	b _02248670
_022484B8:
	ldr r1, _0224867C ; =0x021BF67C
	add r0, #0xac
	ldr r2, [r1, #0x4c]
	ldr r4, [r0, #0]
	mov r0, #0x40
	tst r0, r2
	beq _022484E0
	cmp r4, #0
	beq _02248552
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	b _02248552
_022484E0:
	mov r0, #0x80
	tst r0, r2
	beq _02248534
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, r4, #6
	cmp r1, r0
	bge _02248506
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
_02248506:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	add r1, r0, #6
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _02248552
	add r0, r5, #0
	bl ov98_02247F08
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	b _02248552
_02248534:
	ldr r1, [r1, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02248552
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0xa8
	str r1, [r0, #0]
_02248552:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r4, r0
	bne _0224855E
	b _02248670
_0224855E:
	add r0, r5, #0
	bl ov98_022482CC
	b _02248670
_02248566:
	ldr r1, _0224867C ; =0x021BF67C
	mov r2, #0x10
	ldr r1, [r1, #0x48]
	tst r2, r1
	bne _02248576
	mov r2, #0x20
	tst r2, r1
	beq _02248594
_02248576:
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov98_02247F08
	b _02248670
_02248594:
	mov r2, #1
	tst r2, r1
	beq _022485BE
	add r0, #0xb0
	ldr r1, [r0, #0]
	mov r0, #2
	sub r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	b _02248670
_022485BE:
	mov r2, #2
	add r3, r1, #0
	tst r3, r2
	beq _022485E0
	add r0, #0xb8
	str r2, [r0, #0]
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	b _02248670
_022485E0:
	mov r2, #0x40
	tst r1, r2
	beq _02248670
	bl ov98_02247FA4
	ldr r0, _02248680 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov98_022482CC
	b _02248670
_02248614:
	add r0, #0xc4
	mov r1, #0
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0xc4
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0xc4
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_02014A20
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02019EBC
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r5, #0xb8
	add sp, #0x1c
	ldr r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_02248670:
	add r0, r5, #0
	bl ov98_02247FBC
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224867C: .word 0x021BF67C
_02248680: .word 0x000005DC
	thumb_func_end ov98_02248350

	thumb_func_start ov98_02248684
ov98_02248684: ; 0x02248684
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224869A
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224869A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _02248768
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022486B0: ; jump table
	.short _022486BA - _022486B0 - 2 ; case 0
	.short _022486C2 - _022486B0 - 2 ; case 1
	.short _022486D0 - _022486B0 - 2 ; case 2
	.short _02248710 - _022486B0 - 2 ; case 3
	.short _02248748 - _022486B0 - 2 ; case 4
_022486BA:
	mov r0, #3
	add r4, #0x94
	str r0, [r4, #0]
	b _022487A2
_022486C2:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022487A2
_022486D0:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022487A2
	sub r1, r1, #1
	cmp r0, r1
	bne _022486F8
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022487A2
_022486F8:
	ldr r0, _022487A8 ; =0x00000F0F
	mov r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	mov r0, #4
	add r4, #0x94
	str r0, [r4, #0]
	b _022487A2
_02248710:
	add r0, r4, #0
	bl ov98_02248350
	cmp r0, #1
	bne _02248738
	ldr r0, _022487A8 ; =0x00000F0F
	mov r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022487A2
_02248738:
	cmp r0, #2
	bne _022487A2
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	bl ov98_02247AE8
	b _022487A2
_02248748:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022487A2
_02248768:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022487A2
	sub r1, r1, #1
	cmp r0, r1
	bne _0224879E
	ldr r0, _022487A8 ; =0x00000F0F
	mov r2, #0xa
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	bl ov98_02247AE8
	b _022487A2
_0224879E:
	mov r0, #5
	str r0, [r4, #8]
_022487A2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022487A8: .word 0x00000F0F
	thumb_func_end ov98_02248684

	thumb_func_start ov98_022487AC
ov98_022487AC: ; 0x022487AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0
	bl ov98_02246E88
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov98_02246E9C
	mov r0, #0x1d
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_022487AC

	thumb_func_start ov98_022487CC
ov98_022487CC: ; 0x022487CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov98_02246FB4
	cmp r0, #1
	beq _022487E4
	cmp r0, #2
	beq _022487EA
	cmp r0, #3
	beq _022487EA
	b _022487F2
_022487E4:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_022487EA:
	mov r0, #0x25
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
_022487F2:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02248800
	mov r0, #7
	str r0, [r4, #8]
_02248800:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022487CC

	thumb_func_start ov98_02248804
ov98_02248804: ; 0x02248804
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224881A
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224881A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _022488EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248830: ; jump table
	.short _0224883A - _02248830 - 2 ; case 0
	.short _02248848 - _02248830 - 2 ; case 1
	.short _02248866 - _02248830 - 2 ; case 2
	.short _02248886 - _02248830 - 2 ; case 3
	.short _022488BA - _02248830 - 2 ; case 4
_0224883A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022488EC
_02248848:
	ldr r0, _022488F4 ; =0x00000F0F
	mov r2, #0xb
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022488EC
_02248866:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022488EC
_02248886:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022488EC
	sub r1, r1, #1
	cmp r0, r1
	bne _022488AC
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	bl ov98_02247AE8
	b _022488EC
_022488AC:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022488EC
_022488BA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_02039074
	cmp r0, #0
	bne _022488E2
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl ov98_02246E88
	ldr r0, [r4, #0]
	mov r1, #0xc
	bl ov98_02246E9C
	mov r0, #0x1d
	str r0, [r4, #8]
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022488E2:
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0xc
	bl ov98_02247AE8
_022488EC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022488F4: .word 0x00000F0F
	thumb_func_end ov98_02248804

	thumb_func_start ov98_022488F8
ov98_022488F8: ; 0x022488F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224894A
	sub r1, r1, #1
	cmp r0, r1
	bne _0224892A
	bl sub_0203859C
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #0
	bl ov98_02246E88
	mov r0, #0x1d
	str r0, [r4, #8]
	b _0224894A
_0224892A:
	ldr r0, _02248950 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	add r3, r2, #0
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0xc
	bl ov98_02247AE8
	add r0, r4, #0
	bl ov98_02247AF0
_0224894A:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248950: .word 0x00000F0F
	thumb_func_end ov98_022488F8

	thumb_func_start ov98_02248954
ov98_02248954: ; 0x02248954
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02248978 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	mov r2, #0x1a
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0xa
	bl ov98_02247AE8
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248978: .word 0x00000F0F
	thumb_func_end ov98_02248954

	thumb_func_start ov98_0224897C
ov98_0224897C: ; 0x0224897C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203859C
	bl FUN_021D7DB0
	bl sub_02039794
	mov r0, #4
	bl sub_02017B8C
	mov r0, #0x46
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022489AC
	bl FUN_0223B7AC
	mov r0, #0x46
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_022489AC:
	mov r0, #0xb
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov98_0224897C

	thumb_func_start ov98_022489B4
ov98_022489B4: ; 0x022489B4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022489D8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	mov r2, #0x1b
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x23
	mov r2, #0x1d
	bl ov98_02247AE8
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022489D8: .word 0x00000F0F
	thumb_func_end ov98_022489B4

	thumb_func_start ov98_022489DC
ov98_022489DC: ; 0x022489DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022489F4
	cmp r0, #1
	beq _02248A24
	cmp r0, #2
	beq _02248A3C
	b _02248A5E
_022489F4:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_02038548
	bl sub_02039734
	ldr r0, _02248A64 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	add r3, r2, #0
	bl ov98_02249714
	add r0, r4, #0
	bl ov98_02247AF0
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248A5E
_02248A24:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02248A5E
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248A5E
_02248A3C:
	mov r0, #4
	bl sub_02017B7C
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	mov r2, #1
	mov r3, #0x14
	bl FUN_021D78C8
	mov r0, #2
	bl FUN_021D792C
	bl FUN_021D797C
	mov r0, #0xd
	str r0, [r4, #8]
_02248A5E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248A64: .word 0x00000F0F
	thumb_func_end ov98_022489DC

	thumb_func_start ov98_02248A68
ov98_02248A68: ; 0x02248A68
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl FUN_021D7AE4
	bl FUN_021D7A8C
	cmp r0, #0
	beq _02248B0E
	bl FUN_021D7BFC
	cmp r0, #8
	bhi _02248AEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248A8E: ; jump table
	.short _02248AEE - _02248A8E - 2 ; case 0
	.short _02248AEE - _02248A8E - 2 ; case 1
	.short _02248AEE - _02248A8E - 2 ; case 2
	.short _02248AEE - _02248A8E - 2 ; case 3
	.short _02248B04 - _02248A8E - 2 ; case 4
	.short _02248AEE - _02248A8E - 2 ; case 5
	.short _02248AEE - _02248A8E - 2 ; case 6
	.short _02248AA0 - _02248A8E - 2 ; case 7
	.short _02248AEE - _02248A8E - 2 ; case 8
_02248AA0:
	add r0, sp, #8
	add r1, sp, #4
	bl FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
	bl FUN_021D76E8
	bl FUN_021D7DB0
	bl sub_02039794
	bl sub_0203859C
	mov r0, #4
	bl sub_02017B8C
	mov r0, #0x46
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02248AE2
	bl FUN_0223B7AC
	mov r0, #0x46
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_02248AE2:
	add r0, r4, #0
	bl ov98_02247B0C
	mov r0, #0x1b
	str r0, [r4, #8]
	b _02248B0E
_02248AEE:
	add r0, sp, #0
	bl FUN_021D75D4
	add r0, r4, #0
	bl ov98_02247B0C
	mov r0, #0x20
	str r0, [r4, #8]
	sub r0, #0x22
	str r0, [r4, #0x10]
	b _02248B0E
_02248B04:
	add r0, sp, #0xc
	bl FUN_021D7EB8
	mov r0, #0xe
	str r0, [r4, #8]
_02248B0E:
	mov r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov98_02248A68

	thumb_func_start ov98_02248B14
ov98_02248B14: ; 0x02248B14
	push {r4, lr}
	add r4, r0, #0
	bl FUN_021D81DC
	mov r0, #0xf
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov98_02248B14

	thumb_func_start ov98_02248B24
ov98_02248B24: ; 0x02248B24
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl FUN_021D82A0
	cmp r0, #5
	bhi _02248BEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248B3E: ; jump table
	.short _02248B50 - _02248B3E - 2 ; case 0
	.short _02248BEC - _02248B3E - 2 ; case 1
	.short _02248BEC - _02248B3E - 2 ; case 2
	.short _02248B4A - _02248B3E - 2 ; case 3
	.short _02248B50 - _02248B3E - 2 ; case 4
	.short _02248B50 - _02248B3E - 2 ; case 5
_02248B4A:
	mov r0, #0x10
	str r0, [r4, #8]
	b _02248BEC
_02248B50:
	add r0, r4, #0
	bl ov98_02247B0C
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	bl FUN_021D76E8
	bl FUN_021D7DB0
	bl sub_02039794
	bl sub_0203859C
	mov r0, #4
	bl sub_02017B8C
	mov r0, #0x46
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02248B94
	bl FUN_0223B7AC
	mov r0, #0x46
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_02248B94:
	mov r0, #0x1b
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _02248BDA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248BAA: ; jump table
	.short _02248BDA - _02248BAA - 2 ; case 0
	.short _02248BBA - _02248BAA - 2 ; case 1
	.short _02248BBA - _02248BAA - 2 ; case 2
	.short _02248BCC - _02248BAA - 2 ; case 3
	.short _02248BBE - _02248BAA - 2 ; case 4
	.short _02248BD6 - _02248BAA - 2 ; case 5
	.short _02248BC8 - _02248BAA - 2 ; case 6
	.short _02248BD6 - _02248BAA - 2 ; case 7
_02248BBA:
	str r0, [r4, #8]
	b _02248BDA
_02248BBE:
	bl FUN_021E55B0
	mov r0, #0x1b
	str r0, [r4, #8]
	b _02248BDA
_02248BC8:
	str r0, [r4, #8]
	b _02248BDA
_02248BCC:
	bl FUN_021D8E8C
	mov r0, #0x1b
	str r0, [r4, #8]
	b _02248BDA
_02248BD6:
	bl sub_02038A0C
_02248BDA:
	ldr r1, [sp, #4]
	ldr r0, _02248BF4 ; =0xFFFFB1E0
	cmp r1, r0
	bge _02248BEC
	ldr r0, _02248BF8 ; =0xFFFF8AD1
	cmp r1, r0
	blt _02248BEC
	mov r0, #0x1b
	str r0, [r4, #8]
_02248BEC:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_02248BF4: .word 0xFFFFB1E0
_02248BF8: .word 0xFFFF8AD1
	thumb_func_end ov98_02248B24

	thumb_func_start ov98_02248BFC
ov98_02248BFC: ; 0x02248BFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_0202B370
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02025CCC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202AD28
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025D74
	cmp r0, #0
	bne _02248C34
	add r0, r6, #0
	bl sub_02039058
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025D78
_02248C34:
	add r0, r4, #0
	bl sub_02025D74
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020A471C
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl FUN_0223B140
	mov r0, #0x46
	ldr r1, [r5, #0]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #0x11
	str r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov98_02248BFC

	thumb_func_start ov98_02248C60
ov98_02248C60: ; 0x02248C60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov98_02246F5C
	ldr r0, [r4, #0]
	bl ov98_02246F74
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x98
	add r1, #0xfc
	bl FUN_0223BB84
	mov r0, #0x12
	str r0, [r4, #8]
	mov r0, #0
	add r4, #0xe8
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov98_02248C60

	thumb_func_start ov98_02248C88
ov98_02248C88: ; 0x02248C88
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_0223B7B8
	cmp r0, #0
	bne _02248C96
	b _02248DBE
_02248C96:
	bl FUN_0223B7D8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bls _02248CAE
	b _02248DB2
_02248CAE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248CBA: ; jump table
	.short _02248D96 - _02248CBA - 2 ; case 0
	.short _02248DA4 - _02248CBA - 2 ; case 1
	.short _02248DB2 - _02248CBA - 2 ; case 2
	.short _02248D96 - _02248CBA - 2 ; case 3
	.short _02248DB2 - _02248CBA - 2 ; case 4
	.short _02248DB2 - _02248CBA - 2 ; case 5
	.short _02248DB2 - _02248CBA - 2 ; case 6
	.short _02248DB2 - _02248CBA - 2 ; case 7
	.short _02248DB2 - _02248CBA - 2 ; case 8
	.short _02248DB2 - _02248CBA - 2 ; case 9
	.short _02248DB2 - _02248CBA - 2 ; case 10
	.short _02248DB2 - _02248CBA - 2 ; case 11
	.short _02248DB2 - _02248CBA - 2 ; case 12
	.short _02248DA4 - _02248CBA - 2 ; case 13
	.short _02248D88 - _02248CBA - 2 ; case 14
	.short _02248CDE - _02248CBA - 2 ; case 15
	.short _02248D7A - _02248CBA - 2 ; case 16
	.short _02248D88 - _02248CBA - 2 ; case 17
_02248CDE:
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248CF4
	cmp r0, #1
	beq _02248D4E
	cmp r0, #2
	beq _02248D5E
	b _02248D6E
_02248CF4:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _02248D48
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248D0A: ; jump table
	.short _02248D28 - _02248D0A - 2 ; case 0
	.short _02248D12 - _02248D0A - 2 ; case 1
	.short _02248D18 - _02248D0A - 2 ; case 2
	.short _02248D38 - _02248D0A - 2 ; case 3
_02248D12:
	mov r0, #0x13
	str r0, [r4, #8]
	b _02248DDC
_02248D18:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE0 ; =0xFFFFEC77
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D28:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE4 ; =0xFFFFEC76
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D38:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE8 ; =0xFFFFEC75
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D48:
	bl sub_02038A0C
	b _02248DDC
_02248D4E:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DEC ; =0xFFFFEC74
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D5E:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DF0 ; =0xFFFFEC73
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D6E:
	add r0, r4, #0
	bl ov98_02247B0C
	bl sub_02038A0C
	b _02248DDC
_02248D7A:
	add r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D88:
	add r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D96:
	add r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248DA4:
	add r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248DB2:
	add r0, r4, #0
	bl ov98_02247B0C
	bl sub_02038A0C
	b _02248DDC
_02248DBE:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0, #0]
	add r4, #0xe8
	mov r0, #0xe1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	cmp r1, r0
	bne _02248DDC
	bl sub_02038A0C
_02248DDC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248DE0: .word 0xFFFFEC77
_02248DE4: .word 0xFFFFEC76
_02248DE8: .word 0xFFFFEC75
_02248DEC: .word 0xFFFFEC74
_02248DF0: .word 0xFFFFEC73
	thumb_func_end ov98_02248C88

	thumb_func_start ov98_02248DF4
ov98_02248DF4: ; 0x02248DF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02248E0A
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02248E0A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #3
	bhi _02248EB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248E20: ; jump table
	.short _02248E28 - _02248E20 - 2 ; case 0
	.short _02248E4C - _02248E20 - 2 ; case 1
	.short _02248E6C - _02248E20 - 2 ; case 2
	.short _02248E9A - _02248E20 - 2 ; case 3
_02248E28:
	add r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248EBC ; =0x00000F0F
	mov r2, #0xd
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248EB4
_02248E4C:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248EB4
_02248E6C:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02248EB4
	sub r1, r1, #1
	cmp r0, r1
	bne _02248E8C
	mov r0, #0x15
	str r0, [r4, #8]
	b _02248EB4
_02248E8C:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248EB4
_02248E9A:
	ldr r0, _02248EBC ; =0x00000F0F
	mov r2, #0x11
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0x14
	bl ov98_02247AE8
_02248EB4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248EBC: .word 0x00000F0F
	thumb_func_end ov98_02248DF4

	thumb_func_start ov98_02248EC0
ov98_02248EC0: ; 0x02248EC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #2
	mov r2, #1
	bl ov98_02246E88
	ldr r0, [r4, #0]
	mov r1, #0x16
	bl ov98_02246E9C
	mov r0, #0x1e
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02248EC0

	thumb_func_start ov98_02248EE0
ov98_02248EE0: ; 0x02248EE0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02248EF6
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02248EF6:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02248F0A
	cmp r0, #1
	beq _02248F28
	cmp r0, #2
	beq _02248F48
	b _02248F72
_02248F0A:
	ldr r0, _02248F78 ; =0x00000F0F
	mov r2, #0xe
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248F72
_02248F28:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02248F72
_02248F48:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x6d
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02248F72
	sub r1, r1, #1
	cmp r0, r1
	bne _02248F68
	mov r0, #0x13
	str r0, [r4, #8]
	b _02248F72
_02248F68:
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0
	bl ov98_02247AE8
_02248F72:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248F78: .word 0x00000F0F
	thumb_func_end ov98_02248EE0

	thumb_func_start ov98_02248F7C
ov98_02248F7C: ; 0x02248F7C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov98_02246F9C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02248F96
	mov r0, #0x15
	str r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02248F96:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #3
	bls _02248FA2
	b _02249150
_02248FA2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248FAE: ; jump table
	.short _02248FB6 - _02248FAE - 2 ; case 0
	.short _02248FEC - _02248FAE - 2 ; case 1
	.short _0224911E - _02248FAE - 2 ; case 2
	.short _0224913C - _02248FAE - 2 ; case 3
_02248FB6:
	ldr r0, _02249154 ; =0x00000F0F
	mov r2, #0x12
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl ov98_02249714
	add r0, r4, #0
	bl ov98_02247AF0
	ldr r0, [r4, #0]
	bl ov98_02246F88
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x98
	add r1, #0xfc
	bl FUN_0223BB84
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249150
_02248FEC:
	bl FUN_0223B7B8
	cmp r0, #0
	bne _02248FF6
	b _022490FE
_02248FF6:
	bl FUN_0223B7D8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov98_02247B0C
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _022490F8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224901E: ; jump table
	.short _022490E8 - _0224901E - 2 ; case 0
	.short _022490F0 - _0224901E - 2 ; case 1
	.short _022490F8 - _0224901E - 2 ; case 2
	.short _022490E8 - _0224901E - 2 ; case 3
	.short _022490F8 - _0224901E - 2 ; case 4
	.short _022490F8 - _0224901E - 2 ; case 5
	.short _022490F8 - _0224901E - 2 ; case 6
	.short _022490F8 - _0224901E - 2 ; case 7
	.short _022490F8 - _0224901E - 2 ; case 8
	.short _022490F8 - _0224901E - 2 ; case 9
	.short _022490F8 - _0224901E - 2 ; case 10
	.short _022490F8 - _0224901E - 2 ; case 11
	.short _022490F8 - _0224901E - 2 ; case 12
	.short _022490F0 - _0224901E - 2 ; case 13
	.short _022490E0 - _0224901E - 2 ; case 14
	.short _02249042 - _0224901E - 2 ; case 15
	.short _022490D8 - _0224901E - 2 ; case 16
	.short _022490E0 - _0224901E - 2 ; case 17
_02249042:
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249058
	cmp r0, #1
	beq _022490BA
	cmp r0, #2
	beq _022490C4
	b _022490CE
_02249058:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _022490B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224906E: ; jump table
	.short _02249076 - _0224906E - 2 ; case 0
	.short _022490A0 - _0224906E - 2 ; case 1
	.short _022490AA - _0224906E - 2 ; case 2
	.short _02249084 - _0224906E - 2 ; case 3
_02249076:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249150
_02249084:
	ldr r0, _02249154 ; =0x00000F0F
	mov r2, #0x13
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0x15
	bl ov98_02247AE8
	b _02249150
_022490A0:
	ldr r0, _02249158 ; =0xFFFFEC72
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490AA:
	ldr r0, _0224915C ; =0xFFFFEC71
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490B4:
	bl sub_02038A0C
	b _02249150
_022490BA:
	ldr r0, _02249160 ; =0xFFFFEC6E
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490C4:
	ldr r0, _02249164 ; =0xFFFFEC6D
	str r0, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490CE:
	bl sub_02022974
	bl sub_02038A0C
	b _02249150
_022490D8:
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490E0:
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490E8:
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490F0:
	str r5, [r4, #0x10]
	mov r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490F8:
	bl sub_02038A0C
	b _02249150
_022490FE:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0, #0]
	add r4, #0xe8
	mov r0, #0xe1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	cmp r1, r0
	bne _02249150
	bl sub_02038A0C
	b _02249150
_0224911E:
	ldr r0, _02249154 ; =0x00000F0F
	mov r2, #0x14
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249150
_0224913C:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249150
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0x17
	bl ov98_02247AE8
_02249150:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249154: .word 0x00000F0F
_02249158: .word 0xFFFFEC72
_0224915C: .word 0xFFFFEC71
_02249160: .word 0xFFFFEC6E
_02249164: .word 0xFFFFEC6D
	thumb_func_end ov98_02248F7C

	thumb_func_start ov98_02249168
ov98_02249168: ; 0x02249168
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224917E
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224917E:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224918E
	cmp r0, #1
	beq _022491AC
	b _022491C2
_0224918E:
	ldr r0, _022491C8 ; =0x00000F0F
	mov r2, #0x15
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022491C2
_022491AC:
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #2
	bl ov98_02246E88
	ldr r0, [r4, #0]
	mov r1, #0x18
	bl ov98_02246E9C
	mov r0, #0x1e
	str r0, [r4, #8]
_022491C2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022491C8: .word 0x00000F0F
	thumb_func_end ov98_02249168

	thumb_func_start ov98_022491CC
ov98_022491CC: ; 0x022491CC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _022491E2
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022491E2:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022491F2
	cmp r0, #1
	beq _02249210
	b _0224922C
_022491F2:
	ldr r0, _02249234 ; =0x00000F0F
	mov r2, #0x18
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224922C
_02249210:
	ldr r0, [r4, #0]
	bl ov98_02246EF8
	ldr r0, [r4, #0]
	bl ov98_02246F24
	ldr r0, [r4, #0]
	bl ov98_02246F48
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #0
	bl ov98_02247AE8
_0224922C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02249234: .word 0x00000F0F
	thumb_func_end ov98_022491CC

	thumb_func_start ov98_02249238
ov98_02249238: ; 0x02249238
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	cmp r1, #3
	bhi _02249312
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249254: ; jump table
	.short _0224925C - _02249254 - 2 ; case 0
	.short _0224927E - _02249254 - 2 ; case 1
	.short _022492D8 - _02249254 - 2 ; case 2
	.short _022492F0 - _02249254 - 2 ; case 3
_0224925C:
	ldr r1, _02249318 ; =0x00000F0F
	mov r2, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x34]
	mov r3, #0
	bl ov98_02249714
	add r0, r4, #0
	bl ov98_02247AF0
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249312
_0224927E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_020246E0
	cmp r0, #2
	bne _022492B4
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0200B498
	ldr r0, _02249318 ; =0x00000F0F
	mov r2, #0x21
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl ov98_02249714
	ldr r0, _0224931C ; =0x0000061B
	bl sub_02005748
	b _022492C4
_022492B4:
	ldr r0, _02249318 ; =0x00000F0F
	mov r2, #0x22
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl ov98_02249714
_022492C4:
	add r0, r4, #0
	bl ov98_02247B0C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249312
_022492D8:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249312
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _02249312
_022492F0:
	add r0, #0x98
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0x3c
	ble _02249312
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249312:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02249318: .word 0x00000F0F
_0224931C: .word 0x0000061B
	thumb_func_end ov98_02249238

	thumb_func_start ov98_02249320
ov98_02249320: ; 0x02249320
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02249336
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02249336:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0224940A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224934C: ; jump table
	.short _02249356 - _0224934C - 2 ; case 0
	.short _02249374 - _0224934C - 2 ; case 1
	.short _022493AE - _0224934C - 2 ; case 2
	.short _022493D6 - _0224934C - 2 ; case 3
	.short _022493EE - _0224934C - 2 ; case 4
_02249356:
	ldr r0, _02249410 ; =0x00000F0F
	mov r2, #0xf
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224940A
_02249374:
	bl FUN_021D7DB0
	bl sub_02039794
	bl sub_0203859C
	mov r0, #4
	bl sub_02017B8C
	mov r0, #0x46
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022493A0
	bl FUN_0223B7AC
	mov r0, #0x46
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_022493A0:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224940A
_022493AE:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224940A
	ldr r0, _02249410 ; =0x00000F0F
	mov r2, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224940A
_022493D6:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224940A
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224940A
_022493EE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0x1e
	ble _0224940A
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0224940A:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02249410: .word 0x00000F0F
	thumb_func_end ov98_02249320

	thumb_func_start ov98_02249414
ov98_02249414: ; 0x02249414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	neg r0, r0
	bl FUN_021D1F3C
	ldr r2, [r4, #0x18]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov98_02249964
	mov r0, #0x1c
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02249414

	thumb_func_start ov98_02249438
ov98_02249438: ; 0x02249438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02249460 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0224944C
	mov r0, #2
	tst r0, r1
	beq _0224945A
_0224944C:
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0
	str r0, [r4, #8]
_0224945A:
	mov r0, #0
	pop {r4, pc}
	nop
_02249460: .word 0x021BF67C
	thumb_func_end ov98_02249438

	thumb_func_start ov98_02249464
ov98_02249464: ; 0x02249464
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0x1e
	beq _02249474
	bl sub_0203859C
_02249474:
	bl sub_02039794
	add r0, r4, #0
	bl ov98_02247B0C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov98_02249464

	thumb_func_start ov98_022494A0
ov98_022494A0: ; 0x022494A0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_022494A0

	thumb_func_start ov98_022494C0
ov98_022494C0: ; 0x022494C0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x10]
	sub r2, r1, #5
	cmp r0, r2
	bgt _0224951E
	bge _02249552
	add r2, r1, #0
	sub r2, #0xf
	cmp r0, r2
	bgt _0224950C
	add r2, r1, #0
	sub r2, #0xf
	cmp r0, r2
	bge _02249552
	ldr r2, _022495BC ; =0x00001393
	add r2, r0, r2
	cmp r2, #0xa
	bhi _02249552
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022494F6: ; jump table
	.short _02249586 - _022494F6 - 2 ; case 0
	.short _02249580 - _022494F6 - 2 ; case 1
	.short _02249552 - _022494F6 - 2 ; case 2
	.short _02249552 - _022494F6 - 2 ; case 3
	.short _0224957A - _022494F6 - 2 ; case 4
	.short _02249574 - _022494F6 - 2 ; case 5
	.short _0224956E - _022494F6 - 2 ; case 6
	.short _02249568 - _022494F6 - 2 ; case 7
	.short _02249562 - _022494F6 - 2 ; case 8
	.short _0224955C - _022494F6 - 2 ; case 9
	.short _02249556 - _022494F6 - 2 ; case 10
_0224950C:
	mov r2, #0xd
	mvn r2, r2
	cmp r0, r2
	bgt _02249518
	beq _0224954E
	b _02249552
_02249518:
	add r2, r2, #2
	cmp r0, r2
	b _02249552
_0224951E:
	sub r2, r1, #1
	cmp r0, r2
	bgt _02249538
	bge _0224954A
	sub r2, r1, #3
	cmp r0, r2
	bgt _02249530
	cmp r0, r2
	b _02249552
_02249530:
	sub r2, r1, #2
	cmp r0, r2
	beq _0224954E
	b _02249552
_02249538:
	cmp r0, #1
	bgt _02249540
	beq _02249546
	b _02249552
_02249540:
	cmp r0, #2
	beq _0224954A
	b _02249552
_02249546:
	mov r2, #0x36
	b _0224958A
_0224954A:
	mov r2, #0x37
	b _0224958A
_0224954E:
	mov r2, #0x39
	b _0224958A
_02249552:
	mov r2, #0x38
	b _0224958A
_02249556:
	mov r2, #0xad
	add r1, r1, #1
	b _0224958A
_0224955C:
	mov r2, #0xae
	add r1, r1, #1
	b _0224958A
_02249562:
	mov r2, #0xae
	add r1, r1, #1
	b _0224958A
_02249568:
	mov r2, #0xaf
	add r1, r1, #1
	b _0224958A
_0224956E:
	mov r2, #0xb0
	add r1, r1, #1
	b _0224958A
_02249574:
	mov r2, #0xae
	add r1, r1, #1
	b _0224958A
_0224957A:
	mov r2, #0xae
	add r1, r1, #1
	b _0224958A
_02249580:
	mov r2, #0xaf
	add r1, r1, #1
	b _0224958A
_02249586:
	mov r2, #0xb0
	add r1, r1, #1
_0224958A:
	cmp r1, #0
	ldr r0, _022495C0 ; =0x00000F0F
	bne _0224959E
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
	b _022495AA
_0224959E:
	str r0, [sp]
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	mov r3, #1
	bl ov98_02249714
_022495AA:
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0x21
	bl ov98_02247AE8
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022495BC: .word 0x00001393
_022495C0: .word 0x00000F0F
	thumb_func_end ov98_022494C0

	thumb_func_start ov98_022495C4
ov98_022495C4: ; 0x022495C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	cmp r1, #3
	bhi _0224967C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022495E0: ; jump table
	.short _022495E8 - _022495E0 - 2 ; case 0
	.short _02249604 - _022495E0 - 2 ; case 1
	.short _02249648 - _022495E0 - 2 ; case 2
	.short _02249664 - _022495E0 - 2 ; case 3
_022495E8:
	ldr r1, _022496A4 ; =0x00000F0F
	mov r2, #0xf
	str r1, [sp]
	ldr r1, [r4, #0x34]
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224969E
_02249604:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224969E
	bl sub_0203859C
	bl FUN_021D7DB0
	bl sub_02039794
	mov r0, #4
	bl sub_02017B8C
	mov r0, #0x46
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0224963A
	bl FUN_0223B7AC
	mov r0, #0x46
	ldr r1, [r4, #0]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_0224963A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224969E
_02249648:
	ldr r1, _022496A4 ; =0x00000F0F
	mov r2, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x34]
	mov r3, #1
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224969E
_02249664:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224969E
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224969E
_0224967C:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0x1e
	ble _0224969E
	ldr r0, [r4, #0]
	bl ov98_02246E94
	mov r0, #0x1d
	str r0, [r4, #8]
_0224969E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022496A4: .word 0x00000F0F
	thumb_func_end ov98_022495C4

	thumb_func_start ov98_022496A8
ov98_022496A8: ; 0x022496A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _022496BA
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022496BA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_022496A8

	thumb_func_start ov98_022496C0
ov98_022496C0: ; 0x022496C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _022496E8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0x1e
	ble _022496DC
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022496DC:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
_022496E8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022496C0

	thumb_func_start ov98_022496EC
ov98_022496EC: ; 0x022496EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249710
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov98_02247B24
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249710:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022496EC

	thumb_func_start ov98_02249714
ov98_02249714: ; 0x02249714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x38]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x38]
	add r0, #0x48
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x44]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	cmp r4, #0xff
	beq _02249774
	cmp r4, #0
	bne _02249778
_02249774:
	mov r0, #0xff
	str r0, [r5, #0x44]
_02249778:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov98_02249714

	thumb_func_start ov98_0224977C
ov98_0224977C: ; 0x0224977C
	push {r3, lr}
	cmp r0, #0xff
	beq _0224978E
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02249792
_0224978E:
	mov r0, #0
	pop {r3, pc}
_02249792:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov98_0224977C

	thumb_func_start ov98_02249798
ov98_02249798: ; 0x02249798
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _022497AE
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022497AE:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022497BE
	cmp r0, #1
	beq _022497EA
	b _022497EE
_022497BE:
	ldr r0, [r4, #0]
	bl ov98_02246FB4
	cmp r0, #2
	bne _022497CC
	mov r2, #0x26
	b _022497CE
_022497CC:
	mov r2, #0x27
_022497CE:
	ldr r0, _022497F4 ; =0x00000F0F
	mov r3, #1
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	bl ov98_02249714
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	b _022497EE
_022497EA:
	mov r0, #5
	str r0, [r4, #8]
_022497EE:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022497F4: .word 0x00000F0F
	thumb_func_end ov98_02249798

	thumb_func_start ov98_022497F8
ov98_022497F8: ; 0x022497F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	ldr r4, [r6, #0]
	bl ov98_0224977C
	cmp r0, #1
	bne _02249810
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249810:
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02249820
	cmp r0, #1
	beq _02249884
	b _02249888
_02249820:
	add r0, r4, #0
	bl ov98_02246FA4
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02030D98
	cmp r5, r0
	bne _02249866
	ldr r0, [r4, #4]
	bl sub_02030D50
	add r1, sp, #8
	mov r2, #0x6c
	bl ov98_02249ACC
	mov r4, #0
	add r5, sp, #8
	mov r7, #2
_02249848:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r2, [r5, #0]
	add r1, r4, #0
	mov r3, #4
	bl sub_0200B60C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _02249848
	mov r2, #0x29
	b _02249868
_02249866:
	mov r2, #0x28
_02249868:
	ldr r0, _02249890 ; =0x00000F0F
	mov r3, #1
	str r0, [sp]
	ldr r1, [r6, #0x34]
	add r0, r6, #0
	bl ov98_02249714
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r6, #0x94
	add r0, r0, #1
	str r0, [r6, #0]
	b _02249888
_02249884:
	mov r0, #0
	str r0, [r6, #8]
_02249888:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249890: .word 0x00000F0F
	thumb_func_end ov98_022497F8

	thumb_func_start ov98_02249894
ov98_02249894: ; 0x02249894
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _022498A2
	cmp r3, #2
	beq _022498B8
	b _022498C6
_022498A2:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _022498C6
_022498B8:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_022498C6:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov98_02249894

	thumb_func_start ov98_022498CC
ov98_022498CC: ; 0x022498CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov98_02249894
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov98_022498CC

	thumb_func_start ov98_02249900
ov98_02249900: ; 0x02249900
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r6, r1, #0
	lsl r0, r0, #8
	mov r1, #0x6d
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x40]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x68
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x40]
	add r0, #0x68
	mov r1, #1
	bl sub_0201D738
	mov r0, #0xff
	str r0, [r5, #0x44]
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov98_02249900

	thumb_func_start ov98_02249964
ov98_02249964: ; 0x02249964
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	bne _02249976
	mov r4, #0xb
_02249976:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r1, r4, #0
	bl ov98_02249900
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov98_02249964

	thumb_func_start ov98_022499A0
ov98_022499A0: ; 0x022499A0
	push {r3, lr}
	cmp r2, #0
	bne _022499AC
	ldr r0, _022499B0 ; =0x000005DC
	bl sub_02005748
_022499AC:
	pop {r3, pc}
	nop
_022499B0: .word 0x000005DC
	thumb_func_end ov98_022499A0

	thumb_func_start ov98_022499B4
ov98_022499B4: ; 0x022499B4
	push {r3, lr}
	cmp r2, #0
	bne _022499C0
	ldr r0, _022499C4 ; =0x000005DC
	bl sub_02005748
_022499C0:
	pop {r3, pc}
	nop
_022499C4: .word 0x000005DC
	thumb_func_end ov98_022499B4

	thumb_func_start ov98_022499C8
ov98_022499C8: ; 0x022499C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	mov r4, #0
	add r5, r1, #0
	ldr r2, _02249A70 ; =0x02249D1C
	str r0, [sp]
	add r1, r4, #0
	add r0, r2, #0
	add r3, r4, #0
_022499DC:
	add r6, r1, #0
	ldrsb r6, [r0, r6]
	add r2, r2, #1
	add r1, r1, #1
	strb r6, [r5, r4]
	ldrsb r6, [r2, r3]
	add r4, r4, #1
	cmp r6, #0
	bne _022499DC
	add r0, r7, #0
	mov r1, #0xc8
	bl sub_02018144
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0x64
	bl sub_02023DF0
	ldr r7, [sp, #4]
	mov r6, #0
_02249A06:
	ldrh r1, [r7]
	ldr r0, _02249A74 ; =0x0000FFFF
	cmp r1, r0
	bne _02249A14
	mov r2, #0
	strb r2, [r5, r4]
	b _02249A4A
_02249A14:
	ldr r2, [sp, #4]
	lsl r3, r6, #1
	ldrh r3, [r2, r3]
	ldr r1, _02249A78 ; =0x02249D2C
	mov r0, #0
_02249A1E:
	ldrh r2, [r1]
	cmp r2, r3
	bne _02249A32
	ldr r1, _02249A78 ; =0x02249D2C
	lsl r2, r0, #2
	add r2, r1, r2
	mov r1, #2
	ldrsb r1, [r2, r1]
	strb r1, [r5, r4]
	b _02249A3A
_02249A32:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, #0xa
	blo _02249A1E
_02249A3A:
	cmp r0, #0xa
	blo _02249A42
	bl sub_02022974
_02249A42:
	add r4, r4, #1
	add r7, r7, #2
	add r6, r6, #1
	b _02249A06
_02249A4A:
	ldr r1, _02249A7C ; =0x02249D20
	add r3, r2, #0
	add r0, r1, #0
_02249A50:
	add r6, r2, #0
	ldrsb r6, [r0, r6]
	add r1, r1, #1
	add r2, r2, #1
	strb r6, [r5, r4]
	ldrsb r6, [r1, r3]
	add r4, r4, #1
	cmp r6, #0
	bne _02249A50
	mov r0, #0
	strb r0, [r5, r4]
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249A70: .word 0x02249D1C
_02249A74: .word 0x0000FFFF
_02249A78: .word 0x02249D2C
_02249A7C: .word 0x02249D20
	thumb_func_end ov98_022499C8

	thumb_func_start ov98_02249A80
ov98_02249A80: ; 0x02249A80
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0xc8
	mov r5, #1
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x64
	bl sub_02023DF0
	ldrh r1, [r4]
	ldr r0, _02249AC4 ; =0x0000FFFF
	cmp r1, r0
	beq _02249AB8
	ldr r1, _02249AC8 ; =0x00000121
	add r3, r4, #0
_02249AA6:
	ldrh r2, [r3]
	cmp r2, r1
	beq _02249AB0
	mov r5, #0
	b _02249AB8
_02249AB0:
	add r3, r3, #2
	ldrh r2, [r3]
	cmp r2, r0
	bne _02249AA6
_02249AB8:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02249AC4: .word 0x0000FFFF
_02249AC8: .word 0x00000121
	thumb_func_end ov98_02249A80

	thumb_func_start ov98_02249ACC
ov98_02249ACC: ; 0x02249ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	str r4, [sp, #4]
_02249AD8:
	mov r0, #0
	str r0, [r7, #0]
	str r0, [sp]
	b _02249B14
_02249AE0:
	cmp r0, #0
	bne _02249AEC
	bne _02249AFA
	bl sub_02022974
	b _02249AFA
_02249AEC:
	add r4, r4, #1
_02249AEE:
	ldrsb r0, [r5, r4]
	add r6, r5, r4
	cmp r0, #0x30
	blt _02249AE0
	cmp r0, #0x39
	bgt _02249AE0
_02249AFA:
	ldr r1, [r7, #0]
	mov r0, #0xa
	mul r0, r1
	str r0, [r7, #0]
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r4, r4, #1
	sub r1, #0x30
	add r0, r0, r1
	str r0, [r7, #0]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
_02249B14:
	ldr r0, [sp]
	cmp r0, #4
	blt _02249AEE
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02249AD8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov98_02249ACC
	; 0x02249B2C

	.incbin "data/overlay98.bin"
