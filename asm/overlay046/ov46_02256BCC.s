	.include "macros/function.inc"
	.include "overlay046/ov46_02256BCC.inc"

	

	.text


	thumb_func_start ov46_02256BCC
ov46_02256BCC: ; 0x02256BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0xac
	bl sub_02018144
	add r4, r0, #0
	beq _02256C08
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	bl ov46_02256C20
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256C08
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256C08:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov46_02256BCC

	thumb_func_start ov46_02256C0C
ov46_02256C0C: ; 0x02256C0C
	push {r4, lr}
	add r4, r0, #0
	beq _02256C1C
	bl ov46_02256CF4
	add r0, r4, #0
	bl sub_020181C4
_02256C1C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov46_02256C0C

	thumb_func_start ov46_02256C20
ov46_02256C20: ; 0x02256C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r1, [sp, #0xc]
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
	mov r1, #0x5e
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x78
	mov r1, #0xc
	mov r2, #0x5c
	mov r3, #0x5d
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x8c
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #0x8c
	ldr r6, _02256CF0 ; =0x022571E4
	mov r4, #0
	add r5, r7, #0
	str r0, [sp, #0x10]
_02256C8E:
	cmp r4, #0xd
	blt _02256CA4
	cmp r4, #0x10
	bgt _02256CA4
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ov25_02255810
	str r0, [r5, #0x34]
	b _02256CB6
_02256CA4:
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	bl ov25_02255810
	mov r1, #0x50
	str r0, [r5, #0x34]
	bl ov25_02255940
_02256CB6:
	add r4, r4, #1
	add r6, #0x10
	add r5, r5, #4
	cmp r4, #0x11
	blt _02256C8E
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov46_02257054
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov46_02257094
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02256CDC
	mov r1, #1
	b _02256CDE
_02256CDC:
	mov r1, #0
_02256CDE:
	add r0, r7, #0
	bl ov46_022570C4
	mov r0, #0
	add r7, #0xa8
	str r0, [r7, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256CF0: .word 0x022571E4
	thumb_func_end ov46_02256C20

	thumb_func_start ov46_02256CF4
ov46_02256CF4: ; 0x02256CF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256CFC:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256D08
	ldr r0, [r6, #0x30]
	bl ov25_022558B0
_02256D08:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x11
	blt _02256CFC
	add r0, r6, #0
	add r0, #0x78
	bl ov25_022559B0
	add r6, #0x8c
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov46_02256CF4

	thumb_func_start ov46_02256D24
ov46_02256D24: ; 0x02256D24
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256D44 ; =0x02257178
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256D44: .word 0x02257178
	thumb_func_end ov46_02256D24

	thumb_func_start ov46_02256D48
ov46_02256D48: ; 0x02256D48
	ldr r3, _02256D50 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256D50: .word ov25_02255130
	thumb_func_end ov46_02256D48

	thumb_func_start ov46_02256D54
ov46_02256D54: ; 0x02256D54
	ldr r3, _02256D5C ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256D5C: .word ov25_02255154
	thumb_func_end ov46_02256D54

	thumb_func_start ov46_02256D60
ov46_02256D60: ; 0x02256D60
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov46_02256D60

	thumb_func_start ov46_02256D74
ov46_02256D74: ; 0x02256D74
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02256E4C ; =0x0225715C
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
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x5b
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x5a
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256E50 ; =0x04001000
	ldr r0, _02256E54 ; =0xFFFFE0FF
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
	ldr r1, [r4, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	beq _02256E08
	cmp r0, #2
	beq _02256DFE
	cmp r0, #3
	beq _02256E1A
	b _02256E40
_02256DFE:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D24
	b _02256E40
_02256E08:
	ldr r0, [r4, #0x34]
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	b _02256E40
_02256E1A:
	ldr r0, [r1, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x34]
	beq _02256E32
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	b _02256E40
_02256E32:
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov25_022558C4
_02256E40:
	add r0, r5, #0
	bl ov46_02256D60
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256E4C: .word 0x0225715C
_02256E50: .word 0x04001000
_02256E54: .word 0xFFFFE0FF
	thumb_func_end ov46_02256D74

	thumb_func_start ov46_02256E58
ov46_02256E58: ; 0x02256E58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256E7A
	cmp r0, #1
	beq _02256E88
	pop {r3, r4, r5, pc}
_02256E7A:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov25_0225524C
_02256E88:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D48
	cmp r0, #0
	beq _02256EA2
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov46_02256D60
_02256EA2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02256E58

	thumb_func_start ov46_02256EA4
ov46_02256EA4: ; 0x02256EA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r4, #0
	mov r1, #0
	bl ov46_022570C4
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov25_022558C4
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256EA4

	thumb_func_start ov46_02256ED8
ov46_02256ED8: ; 0x02256ED8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r4, #0
	mov r1, #1
	bl ov46_022570C4
	ldr r0, [r4, #0x34]
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256ED8

	thumb_func_start ov46_02256F0C
ov46_02256F0C: ; 0x02256F0C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov46_02257054
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256F0C

	thumb_func_start ov46_02256F30
ov46_02256F30: ; 0x02256F30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov46_02257094
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256F30

	thumb_func_start ov46_02256F54
ov46_02256F54: ; 0x02256F54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256F76
	cmp r0, #1
	beq _02256F9A
	pop {r3, r4, r5, pc}
_02256F76:
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov25_022558C4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov25_0225524C
_02256F9A:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256FAC
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
_02256FAC:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #8
	blo _0225700A
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	ldr r0, [r4, #0x34]
	beq _02256FF0
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	b _02256FFE
_02256FF0:
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov25_022558C4
_02256FFE:
	ldr r0, _0225700C ; =0x00000677
	bl ov25_02254424
	mov r0, #0
	add r4, #0xa4
	str r0, [r4, #0]
_0225700A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225700C: .word 0x00000677
	thumb_func_end ov46_02256F54

	thumb_func_start ov46_02257010
ov46_02257010: ; 0x02257010
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02257032
	cmp r0, #1
	beq _02257040
	pop {r3, r4, r5, pc}
_02257032:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov25_0225524C
_02257040:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D48
	cmp r0, #0
	beq _02257052
	add r0, r5, #0
	bl ov46_02256D60
_02257052:
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02257010

	thumb_func_start ov46_02257054
ov46_02257054: ; 0x02257054
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _02257064
	mov r1, #6
	b _02257066
_02257064:
	mov r1, #5
_02257066:
	ldr r0, [r5, #0x3c]
	bl ov25_022558C4
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02257076
	mov r1, #8
	b _02257078
_02257076:
	mov r1, #7
_02257078:
	ldr r0, [r5, #0x40]
	bl ov25_022558C4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02257088
	mov r1, #0xa
	b _0225708A
_02257088:
	mov r1, #9
_0225708A:
	ldr r0, [r5, #0x44]
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02257054

	thumb_func_start ov46_02257094
ov46_02257094: ; 0x02257094
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x68]
	bl ov25_022558C4
	mov r1, #1
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x6c]
	bl ov25_022558C4
	mov r1, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x70]
	bl ov25_022558C4
	mov r1, #3
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x74]
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02257094

	thumb_func_start ov46_022570C4
ov46_022570C4: ; 0x022570C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	add r4, r1, #0
	bl ov25_02255914
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x58]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x5c]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x60]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r5, #0x64]
	add r1, r4, #0
	bl ov25_02255914
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_022570C4

	thumb_func_start ov46_0225710C
ov46_0225710C: ; 0x0225710C
	add r0, #0xa8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov46_0225710C

	.rodata


	.global Unk_ov46_0225715C
Unk_ov46_0225715C: ; 0x0225715C
	.incbin "incbin/overlay46_rodata.bin", 0x48, 0x64 - 0x48

	.global Unk_ov46_02257178
Unk_ov46_02257178: ; 0x02257178
	.incbin "incbin/overlay46_rodata.bin", 0x64, 0xD0 - 0x64

	.global Unk_ov46_022571E4
Unk_ov46_022571E4: ; 0x022571E4
	.incbin "incbin/overlay46_rodata.bin", 0xD0, 0x110

