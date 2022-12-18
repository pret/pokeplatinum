	.include "macros/function.inc"
	.include "include/ov117_02260440.inc"

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

	.rodata

	.global Unk_ov117_022668F8
Unk_ov117_022668F8: ; 0x022668F8
	.incbin "incbin/overlay117_rodata.bin", 0x0, 0x10

	.global Unk_ov117_02266908
Unk_ov117_02266908: ; 0x02266908
	.incbin "incbin/overlay117_rodata.bin", 0x10, 0x20 - 0x10