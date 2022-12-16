	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov27_0225680C
ov27_0225680C: ; 0x0225680C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x88
	bl sub_02018144
	add r4, r0, #0
	beq _02256888
	str r6, [r4, #0]
	bl ov25_02254664
	str r0, [r4, #0x5c]
	mov r0, #8
	bl sub_02018340
	str r0, [r4, #4]
	cmp r0, #0
	bne _0225683A
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0225683A:
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #0x12
	mov r3, #0x13
	bl ov25_02255958
	cmp r0, #0
	beq _02256888
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	cmp r0, #0
	beq _02256880
	add r0, r4, #0
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add sp, #4
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02256880:
	add r4, #0x34
	add r0, r4, #0
	bl ov25_022559B0
_02256888:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov27_0225680C

	thumb_func_start ov27_02256890
ov27_02256890: ; 0x02256890
	push {r4, lr}
	add r4, r0, #0
	beq _022568A6
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022568A0
	bl sub_020181C4
_022568A0:
	add r0, r4, #0
	bl sub_020181C4
_022568A6:
	pop {r4, pc}
	thumb_func_end ov27_02256890

	thumb_func_start ov27_022568A8
ov27_022568A8: ; 0x022568A8
	ldr r3, _022568B0 ; =ov27_022568B4
	add r0, r1, #0
	bx r3
	nop
_022568B0: .word ov27_022568B4
	thumb_func_end ov27_022568A8

	thumb_func_start ov27_022568B4
ov27_022568B4: ; 0x022568B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0x14]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_022568D0:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568D0
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_022568E0:
	ldrh r2, [r3]
	tst r2, r0
	bne _022568E0
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x60]
	bl ov25_022558C4
	ldr r0, [r4, #0x64]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0x10]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256910:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256910
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02256920:
	ldrh r2, [r3]
	tst r2, r0
	bne _02256920
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x68]
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0xc]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256950:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256950
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02256960:
	ldrh r2, [r3]
	tst r2, r0
	bne _02256960
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x70]
	bl ov25_022558C4
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #8]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256990:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256990
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_022569A0:
	ldrh r2, [r3]
	tst r2, r0
	bne _022569A0
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x78]
	bl ov25_022558C4
	ldr r0, [r4, #0x7c]
	add r1, r5, #0
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	nop
_022569BC: .word 0x04000280
_022569C0: .word 0x040002A0
_022569C4: .word 0x040002A8
	thumb_func_end ov27_022568B4

	thumb_func_start ov27_022569C8
ov27_022569C8: ; 0x022569C8
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022569E8 ; =0x02256FF0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022569E8: .word 0x02256FF0
	thumb_func_end ov27_022569C8

	thumb_func_start ov27_022569EC
ov27_022569EC: ; 0x022569EC
	ldr r3, _022569F4 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022569F4: .word ov25_02255130
	thumb_func_end ov27_022569EC

	thumb_func_start ov27_022569F8
ov27_022569F8: ; 0x022569F8
	ldr r3, _02256A00 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256A00: .word ov25_02255154
	thumb_func_end ov27_022569F8

	thumb_func_start ov27_02256A04
ov27_02256A04: ; 0x02256A04
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_02256A04

	thumb_func_start ov27_02256A18
ov27_02256A18: ; 0x02256A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r0, r7, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256ADC ; =0x02256FD4
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x15
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x14
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r7, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r7, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r4, #0
	bl ov27_02256AEC
	add r0, r4, #0
	add r1, r6, #0
	bl ov27_02256B24
	ldr r0, _02256AE0 ; =ov27_022568A8
	add r1, r5, #0
	mov r2, #3
	bl sub_0200D9E8
	add r5, #0x84
	str r0, [r5, #0]
	add r0, r4, #0
	bl ov27_022568B4
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _02256AB6
	add r0, r4, #0
	mov r1, #1
	bl ov27_022569C8
_02256AB6:
	ldr r1, _02256AE4 ; =0x04001000
	ldr r0, _02256AE8 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r7, #0
	bl ov27_02256A04
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256ADC: .word 0x02256FD4
_02256AE0: .word ov27_022568A8
_02256AE4: .word 0x04001000
_02256AE8: .word 0xFFFFE0FF
	thumb_func_end ov27_02256A18

	thumb_func_start ov27_02256AEC
ov27_02256AEC: ; 0x02256AEC
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r3, #0xa
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x16
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov27_02256AEC

	thumb_func_start ov27_02256B24
ov27_02256B24: ; 0x02256B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r0, [sp, #4]
	add r0, #0x48
	ldr r4, _02256B7C ; =0x02257020
	str r1, [sp]
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #4]
_02256B38:
	ldr r0, [r7, #0x5c]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x60]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #7
	bls _02256B38
	ldr r2, _02256B7C ; =0x02257020
	lsl r1, r6, #4
	add r1, r2, r1
	add r2, r7, #0
	ldr r0, [r7, #0x5c]
	add r2, #0x34
	bl ov25_02255810
	add r1, r7, #0
	add r1, #0x80
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02256B76
	add r7, #0x80
	ldr r0, [r7, #0]
	mov r1, #1
	bl ov25_02255914
_02256B76:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B7C: .word 0x02257020
	thumb_func_end ov27_02256B24

	thumb_func_start ov27_02256B80
ov27_02256B80: ; 0x02256B80
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02256BAC ; =0x02256FB8
	ldr r1, [r1, r2]
	bl sub_0201CECC
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	lsl r3, r2, #2
	ldr r2, _02256BAC ; =0x02256FB8
	add r1, r6, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256BAC: .word 0x02256FB8
	thumb_func_end ov27_02256B80

	thumb_func_start ov27_02256BB0
ov27_02256BB0: ; 0x02256BB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov27_02256BB0

	thumb_func_start ov27_02256BE8
ov27_02256BE8: ; 0x02256BE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov25_02255914
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256C28 ; =0x00000669
	bl ov25_02254424
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256C28: .word 0x00000669
	thumb_func_end ov27_02256BE8

	thumb_func_start ov27_02256C2C
ov27_02256C2C: ; 0x02256C2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r6, #0x18]
	cmp r0, #2
	beq _02256C4E
	add r0, r5, #0
	bl ov27_02256A04
	pop {r4, r5, r6, pc}
_02256C4E:
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256C5C
	cmp r0, #1
	pop {r4, r5, r6, pc}
_02256C5C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
	thumb_func_end ov27_02256C2C

	thumb_func_start ov27_02256C80
ov27_02256C80: ; 0x02256C80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #3
	beq _02256CAA
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256CAA:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256CBA
	cmp r0, #1
	beq _02256CD8
	pop {r3, r4, r5, r6, r7, pc}
_02256CBA:
	mov r0, #6
	strh r0, [r5]
	mov r0, #2
	strb r0, [r5, #3]
	mov r0, #0
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xd
	bl ov25_022558C4
	add r0, r6, #0
	bl ov25_0225524C
_02256CD8:
	add r0, r5, #0
	mov r1, #6
	bl ov27_02256E90
	cmp r0, #0
	beq _02256CFA
	ldr r0, _02256CFC ; =0x00000669
	bl ov25_02254424
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256CFA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256CFC: .word 0x00000669
	thumb_func_end ov27_02256C80

	thumb_func_start ov27_02256D00
ov27_02256D00: ; 0x02256D00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #4
	beq _02256D2A
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256D2A:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256D3A
	cmp r0, #1
	beq _02256D58
	pop {r3, r4, r5, r6, r7, pc}
_02256D3A:
	mov r0, #3
	strh r0, [r5]
	mov r0, #2
	strb r0, [r5, #3]
	mov r0, #0
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xe
	bl ov25_022558C4
	add r0, r6, #0
	bl ov25_0225524C
_02256D58:
	add r0, r5, #0
	mov r1, #3
	bl ov27_02256E90
	cmp r0, #0
	beq _02256D7A
	ldr r0, _02256D7C ; =0x00000669
	bl ov25_02254424
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256D7A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256D7C: .word 0x00000669
	thumb_func_end ov27_02256D00

	thumb_func_start ov27_02256D80
ov27_02256D80: ; 0x02256D80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #5
	beq _02256DAA
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256DAA:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256DBA
	cmp r0, #1
	beq _02256DE8
	pop {r3, r4, r5, r6, r7, pc}
_02256DBA:
	mov r0, #0
	strh r0, [r5]
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #5
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256E18 ; =0x00000666
	bl ov25_02254424
	add r0, r6, #0
	bl ov25_0225524C
_02256DE8:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #2
	bls _02256E16
	mov r0, #0
	strh r0, [r5]
	ldrb r1, [r5, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r5, #2]
	ldrb r0, [r5, #2]
	add r0, r0, #5
	strb r0, [r5, #3]
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256E16:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256E18: .word 0x00000666
	thumb_func_end ov27_02256D80

	thumb_func_start ov27_02256E1C
ov27_02256E1C: ; 0x02256E1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255244
	add r4, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #6
	beq _02256E46
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256E46:
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256E56
	cmp r0, #1
	beq _02256E7C
	pop {r3, r4, r5, r6, r7, pc}
_02256E56:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x10
	bl ov25_022558C4
	ldr r0, [r6, #4]
	mov r1, #6
	bl ov27_02256EC4
	ldr r0, [r6, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	mov r0, #0
	strh r0, [r4]
_02256E7C:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0x50
	bls _02256E8E
	add r0, r5, #0
	bl ov27_02256A04
_02256E8E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov27_02256E1C

	thumb_func_start ov27_02256E90
ov27_02256E90: ; 0x02256E90
	ldrh r2, [r0]
	add r2, r2, #1
	strh r2, [r0]
	ldrh r2, [r0]
	cmp r2, r1
	bls _02256EBA
	mov r2, #0
	strh r2, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #2]
	cmp r1, #3
	blo _02256EAE
	strb r2, [r0, #2]
_02256EAE:
	ldrb r2, [r0, #2]
	ldr r1, _02256EC0 ; =0x02256FB4
	ldrb r1, [r1, r2]
	strb r1, [r0, #3]
	mov r0, #1
	bx lr
_02256EBA:
	mov r0, #0
	bx lr
	nop
_02256EC0: .word 0x02256FB4
	thumb_func_end ov27_02256E90

	thumb_func_start ov27_02256EC4
ov27_02256EC4: ; 0x02256EC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_02019FE4
	ldr r1, _02256F20 ; =0x00000252
	mov r7, #1
	add r1, r0, r1
	lsl r0, r4, #2
	add r0, r4, r0
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov ip, r0
	lsl r7, r7, #0xa
	mov r6, #9
_02256EE8:
	ldr r3, [sp]
	mov r2, #0
	add r4, r1, #0
_02256EEE:
	sub r5, r6, r2
	add r0, r3, #0
	strh r3, [r4]
	orr r0, r7
	lsl r5, r5, #1
	add r2, r2, #1
	strh r0, [r1, r5]
	add r3, r3, #1
	add r4, r4, #2
	cmp r2, #5
	blo _02256EEE
	ldr r0, [sp]
	add r1, #0x40
	add r0, #0x25
	str r0, [sp]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0xb
	blo _02256EE8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256F20: .word 0x00000252
	thumb_func_end ov27_02256EC4

	thumb_func_start ov27_02256F24
ov27_02256F24: ; 0x02256F24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256F40
	cmp r0, #1
	beq _02256F4C
	pop {r3, r4, r5, pc}
_02256F40:
	add r0, r4, #0
	bl ov27_02256F7C
	add r0, r5, #0
	bl ov25_0225524C
_02256F4C:
	add r0, r4, #0
	add r0, #0x34
	bl ov25_022559B0
	add r0, r4, #0
	add r0, #0x48
	bl ov25_022559B0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0
	add r4, #0x84
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	thumb_func_end ov27_02256F24

	thumb_func_start ov27_02256F7C
ov27_02256F7C: ; 0x02256F7C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256F84:
	ldr r0, [r6, #0x5c]
	ldr r1, [r5, #0x60]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blo _02256F84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov27_02256F7C

	.rodata


	.global Unk_ov27_02256FB4
Unk_ov27_02256FB4: ; 0x02256FB4
	.incbin "incbin/overlay27_rodata.bin", 0x1C, 0x20 - 0x1C

	.global Unk_ov27_02256FB8
Unk_ov27_02256FB8: ; 0x02256FB8
	.incbin "incbin/overlay27_rodata.bin", 0x20, 0x3C - 0x20

	.global Unk_ov27_02256FD4
Unk_ov27_02256FD4: ; 0x02256FD4
	.incbin "incbin/overlay27_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov27_02256FF0
Unk_ov27_02256FF0: ; 0x02256FF0
	.incbin "incbin/overlay27_rodata.bin", 0x58, 0x88 - 0x58

	.global Unk_ov27_02257020
Unk_ov27_02257020: ; 0x02257020
	.incbin "incbin/overlay27_rodata.bin", 0x88, 0x90

