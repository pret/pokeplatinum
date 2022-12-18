	.include "macros/function.inc"
	.include "include/ov28_0225697C.inc"

	

	.text


	thumb_func_start ov28_0225697C
ov28_0225697C: ; 0x0225697C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _022569A8 ; =0x0000048C
	mov r0, #8
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	beq _022569A2
	str r6, [r4, #0]
	str r7, [r4, #4]
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022569A2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022569A8: .word 0x0000048C
	thumb_func_end ov28_0225697C

	thumb_func_start ov28_022569AC
ov28_022569AC: ; 0x022569AC
	push {r3, lr}
	cmp r0, #0
	beq _022569B6
	bl sub_020181C4
_022569B6:
	pop {r3, pc}
	thumb_func_end ov28_022569AC

	thumb_func_start ov28_022569B8
ov28_022569B8: ; 0x022569B8
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022569D8 ; =0x022579C0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022569D8: .word 0x022579C0
	thumb_func_end ov28_022569B8

	thumb_func_start ov28_022569DC
ov28_022569DC: ; 0x022569DC
	ldr r3, _022569E4 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022569E4: .word ov25_02255130
	thumb_func_end ov28_022569DC

	thumb_func_start ov28_022569E8
ov28_022569E8: ; 0x022569E8
	ldr r3, _022569F0 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022569F0: .word ov25_02255154
	thumb_func_end ov28_022569E8

	thumb_func_start ov28_022569F4
ov28_022569F4: ; 0x022569F4
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_022569F4

	thumb_func_start ov28_02256A08
ov28_02256A08: ; 0x02256A08
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_02255240
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256A98 ; =0x0225769C
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
	mov r1, #0x10
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
	mov r1, #0x11
	mov r3, #6
	bl sub_02006E60
	add r0, r5, #0
	bl ov28_02256AA4
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256A9C ; =0x04001000
	ldr r0, _02256AA0 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov28_022569F4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256A98: .word 0x0225769C
_02256A9C: .word 0x04001000
_02256AA0: .word 0xFFFFE0FF
	thumb_func_end ov28_02256A08

	thumb_func_start ov28_02256AA4
ov28_02256AA4: ; 0x02256AA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r1, #6
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	ldr r3, _02256B20 ; =0x02257938
	str r0, [sp, #4]
_02256ABA:
	ldrb r7, [r3, #1]
	ldrb r0, [r3, #3]
	mov r2, #0
	add r0, r7, r0
	cmp r7, r0
	bhs _02256B0C
	lsl r0, r7, #5
	str r0, [sp]
_02256ACA:
	ldrb r1, [r3]
	ldrb r0, [r3, #2]
	add r0, r1, r0
	cmp r1, r0
	bhs _02256AFA
	ldr r0, [sp]
	lsl r4, r0, #1
	mov r0, ip
	add r4, r0, r4
	lsl r0, r1, #1
	add r4, r4, r0
_02256AE0:
	lsl r5, r2, #1
	ldrh r0, [r4]
	add r5, r6, r5
	add r5, #0x4c
	strh r0, [r5]
	ldrb r5, [r3]
	ldrb r0, [r3, #2]
	add r1, r1, #1
	add r2, r2, #1
	add r0, r5, r0
	add r4, r4, #2
	cmp r1, r0
	blo _02256AE0
_02256AFA:
	ldr r0, [sp]
	ldrb r1, [r3, #1]
	add r0, #0x20
	str r0, [sp]
	ldrb r0, [r3, #3]
	add r7, r7, #1
	add r0, r1, r0
	cmp r7, r0
	blo _02256ACA
_02256B0C:
	ldr r0, [sp, #4]
	add r3, r3, #4
	add r0, r0, #1
	add r6, #0x40
	str r0, [sp, #4]
	cmp r0, #0x11
	blo _02256ABA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B20: .word 0x02257938
	thumb_func_end ov28_02256AA4

	thumb_func_start ov28_02256B24
ov28_02256B24: ; 0x02256B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldrh r5, [r5]
	ldr r0, _02256B78 ; =0x00000663
	bl ov25_02254424
	lsl r3, r5, #2
	ldr r0, _02256B7C ; =0x02257939
	ldr r2, _02256B80 ; =0x0225797C
	ldrb r0, [r0, r3]
	ldr r5, _02256B84 ; =0x02257938
	ldr r2, [r2, r3]
	str r0, [sp]
	ldr r0, _02256B88 ; =0x0225793A
	mov r1, #6
	ldrb r0, [r0, r3]
	str r0, [sp, #4]
	ldr r0, _02256B8C ; =0x0225793B
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_020198C0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02256B78: .word 0x00000663
_02256B7C: .word 0x02257939
_02256B80: .word 0x0225797C
_02256B84: .word 0x02257938
_02256B88: .word 0x0225793A
_02256B8C: .word 0x0225793B
	thumb_func_end ov28_02256B24

	thumb_func_start ov28_02256B90
ov28_02256B90: ; 0x02256B90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	ldrh r5, [r0]
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	lsl r3, r5, #2
	ldr r0, _02256BE0 ; =0x02257939
	add r2, r4, #0
	ldrb r0, [r0, r3]
	add r2, #0x4c
	lsl r5, r5, #6
	str r0, [sp]
	ldr r0, _02256BE4 ; =0x0225793A
	add r2, r2, r5
	ldrb r0, [r0, r3]
	ldr r5, _02256BE8 ; =0x02257938
	mov r1, #6
	str r0, [sp, #4]
	ldr r0, _02256BEC ; =0x0225793B
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_020198C0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02256BE0: .word 0x02257939
_02256BE4: .word 0x0225793A
_02256BE8: .word 0x02257938
_02256BEC: .word 0x0225793B
	thumb_func_end ov28_02256B90

	thumb_func_start ov28_02256BF0
ov28_02256BF0: ; 0x02256BF0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r5, #4]
	add r1, #0x30
	bl ov28_0225726C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256BF0

	thumb_func_start ov28_02256C28
ov28_02256C28: ; 0x02256C28
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r5, #4]
	add r1, #0x30
	bl ov28_0225726C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov28_02256C28

	thumb_func_start ov28_02256C68
ov28_02256C68: ; 0x02256C68
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x30
	bl ov28_0225726C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256C68

	thumb_func_start ov28_02256CA0
ov28_02256CA0: ; 0x02256CA0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r5, #0xc]
	add r1, #0x30
	bl ov28_0225726C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov28_02256CA0

	thumb_func_start ov28_02256CE0
ov28_02256CE0: ; 0x02256CE0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r5, #0xc]
	add r1, #0x30
	bl ov28_0225726C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov28_02256D90
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256CE0

	thumb_func_start ov28_02256D20
ov28_02256D20: ; 0x02256D20
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	mov r2, #0
	add r1, r4, #0
	mov r0, #0xc
_02256D32:
	add r2, r2, #1
	strh r0, [r1, #0x30]
	add r1, r1, #2
	cmp r2, #0xa
	blo _02256D32
	lsl r0, r2, #1
	mov r1, #0xd
	add r0, r4, r0
	strh r1, [r0, #0x30]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov28_022569F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov28_02256D20

	thumb_func_start ov28_02256D64
ov28_02256D64: ; 0x02256D64
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov28_02256D90
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov28_022569F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov28_02256D64

	thumb_func_start ov28_02256D90
ov28_02256D90: ; 0x02256D90
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #6
	add r4, r0, #0
	bl sub_02019FE4
	ldrh r1, [r5, #2]
	cmp r1, #0x11
	bne _02256DAE
	add r0, r4, #0
	bl ov28_02256DCC
	add sp, #0xc
	pop {r4, r5, pc}
_02256DAE:
	sub r1, #0xb
	lsl r1, r1, #1
	add r1, #0xf0
	str r1, [sp]
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #3
	add r2, r1, #0
	mov r3, #0x20
	bl ov25_02255258
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov28_02256D90

	thumb_func_start ov28_02256DCC
ov28_02256DCC: ; 0x02256DCC
	push {lr}
	sub sp, #0xc
	mov r1, #6
	bl sub_02019FE4
	mov r1, #0x29
	str r1, [sp]
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #3
	add r2, r1, #0
	mov r3, #0x20
	bl ov25_02255258
	add sp, #0xc
	pop {pc}
	thumb_func_end ov28_02256DCC

	thumb_func_start ov28_02256DF0
ov28_02256DF0: ; 0x02256DF0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov28_022569F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_02256DF0

	thumb_func_start ov28_02256E0C
ov28_02256E0C: ; 0x02256E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #6
	bl sub_02019FE4
	add r7, r0, #0
	ldrh r0, [r6]
	mov r1, #0
	cmp r0, #0xd
	beq _02256E2E
	add r2, r6, #0
_02256E24:
	add r2, r2, #2
	ldrh r0, [r2]
	add r1, r1, #1
	cmp r0, #0xd
	bne _02256E24
_02256E2E:
	mov r0, #0xa
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0xc]
	beq _02256E5C
	mov r5, #5
_02256E3A:
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x20
	bl ov25_02255258
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blo _02256E3A
_02256E5C:
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r4, #0xa
	bhs _02256E96
	bhs _02256E96
	lsl r0, r4, #1
	add r5, r0, #5
_02256E6A:
	ldrh r0, [r6]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #1
	add r0, #0xa5
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x20
	bl ov25_02255258
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #1
	add r5, r5, #2
	add r6, r6, #2
	str r0, [sp, #0x10]
	cmp r4, #0xa
	blo _02256E6A
_02256E96:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov28_02256E0C

	.rodata


	.global Unk_ov28_0225769C
Unk_ov28_0225769C: ; 0x0225769C
	.incbin "incbin/overlay28_rodata.bin", 0x60, 0x7C - 0x60

	.global Unk_ov28_022576B8
Unk_ov28_022576B8: ; 0x022576B8
	.incbin "incbin/overlay28_rodata.bin", 0x7C, 0x9C - 0x7C

	.global Unk_ov28_022576D8
Unk_ov28_022576D8: ; 0x022576D8
	.incbin "incbin/overlay28_rodata.bin", 0x9C, 0xBC - 0x9C

	.global Unk_ov28_022576F8
Unk_ov28_022576F8: ; 0x022576F8
	.incbin "incbin/overlay28_rodata.bin", 0xBC, 0xDC - 0xBC

	.global Unk_ov28_02257718
Unk_ov28_02257718: ; 0x02257718
	.incbin "incbin/overlay28_rodata.bin", 0xDC, 0xFC - 0xDC

	.global Unk_ov28_02257738
Unk_ov28_02257738: ; 0x02257738
	.incbin "incbin/overlay28_rodata.bin", 0xFC, 0x11C - 0xFC

	.global Unk_ov28_02257758
Unk_ov28_02257758: ; 0x02257758
	.incbin "incbin/overlay28_rodata.bin", 0x11C, 0x13C - 0x11C

	.global Unk_ov28_02257778
Unk_ov28_02257778: ; 0x02257778
	.incbin "incbin/overlay28_rodata.bin", 0x13C, 0x15C - 0x13C

	.global Unk_ov28_02257798
Unk_ov28_02257798: ; 0x02257798
	.incbin "incbin/overlay28_rodata.bin", 0x15C, 0x17C - 0x15C

	.global Unk_ov28_022577B8
Unk_ov28_022577B8: ; 0x022577B8
	.incbin "incbin/overlay28_rodata.bin", 0x17C, 0x19C - 0x17C

	.global Unk_ov28_022577D8
Unk_ov28_022577D8: ; 0x022577D8
	.incbin "incbin/overlay28_rodata.bin", 0x19C, 0x1BC - 0x19C

	.global Unk_ov28_022577F8
Unk_ov28_022577F8: ; 0x022577F8
	.incbin "incbin/overlay28_rodata.bin", 0x1BC, 0x1DC - 0x1BC

	.global Unk_ov28_02257818
Unk_ov28_02257818: ; 0x02257818
	.incbin "incbin/overlay28_rodata.bin", 0x1DC, 0x1FC - 0x1DC

	.global Unk_ov28_02257838
Unk_ov28_02257838: ; 0x02257838
	.incbin "incbin/overlay28_rodata.bin", 0x1FC, 0x21C - 0x1FC

	.global Unk_ov28_02257858
Unk_ov28_02257858: ; 0x02257858
	.incbin "incbin/overlay28_rodata.bin", 0x21C, 0x23C - 0x21C

	.global Unk_ov28_02257878
Unk_ov28_02257878: ; 0x02257878
	.incbin "incbin/overlay28_rodata.bin", 0x23C, 0x27C - 0x23C

	.global Unk_ov28_022578B8
Unk_ov28_022578B8: ; 0x022578B8
	.incbin "incbin/overlay28_rodata.bin", 0x27C, 0x2BC - 0x27C

	.global Unk_ov28_022578F8
Unk_ov28_022578F8: ; 0x022578F8
	.incbin "incbin/overlay28_rodata.bin", 0x2BC, 0x2FC - 0x2BC

	.global Unk_ov28_02257938
Unk_ov28_02257938: ; 0x02257938
	.incbin "incbin/overlay28_rodata.bin", 0x2FC, 0x340 - 0x2FC

	.global Unk_ov28_0225797C
Unk_ov28_0225797C: ; 0x0225797C
	.incbin "incbin/overlay28_rodata.bin", 0x340, 0x384 - 0x340

	.global Unk_ov28_022579C0
Unk_ov28_022579C0: ; 0x022579C0
	.incbin "incbin/overlay28_rodata.bin", 0x384, 0x90

