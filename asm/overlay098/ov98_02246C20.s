	.include "macros/function.inc"
	.include "overlay098/ov98_02246C20.inc"

	

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
	bl MI_CpuFill8
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
	bl DWC_UpdateConnection
	bl ov94_0223B15C
	bl DWC_GetLinkLevel
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
	bl DWC_SetMemFunc
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
	bl NNS_FndCreateExpHeapEx
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
	bl NNS_FndDestroyExpHeap
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
	bl OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _02246ED0 ; =0x02249E20
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	add r0, r6, #0
	bl OS_RestoreInterrupts
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
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02246EF4 ; =0x02249E20
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl NNS_FndFreeToExpHeap
	add r0, r4, #0
	bl OS_RestoreInterrupts
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
	bl _ull_mod
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _022470E0
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl MI_CpuFill8
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

	.rodata


	.global Unk_ov98_02249B2C
Unk_ov98_02249B2C: ; 0x02249B2C
	.incbin "incbin/overlay98_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov98_02249B3C
Unk_ov98_02249B3C: ; 0x02249B3C
	.incbin "incbin/overlay98_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov98_02249B4C
Unk_ov98_02249B4C: ; 0x02249B4C
	.incbin "incbin/overlay98_rodata.bin", 0x20, 0x80 - 0x20

	.global Unk_ov98_02249BAC
Unk_ov98_02249BAC: ; 0x02249BAC
	.incbin "incbin/overlay98_rodata.bin", 0x80, 0x10


	.bss


	.global Unk_ov98_02249E20
Unk_ov98_02249E20: ; 0x02249E20
	.space 0x4

