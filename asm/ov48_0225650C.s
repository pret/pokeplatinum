	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov48_0225650C
ov48_0225650C: ; 0x0225650C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x16
	add r6, r0, #0
	mov r0, #8
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	beq _02256546
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x20]
	add r5, #0x8c
	mov r0, #0x15
	ldr r1, [r5, #0]
	lsl r0, r0, #4
	str r1, [r4, r0]
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256546:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov48_0225650C

	thumb_func_start ov48_0225654C
ov48_0225654C: ; 0x0225654C
	push {r3, lr}
	cmp r0, #0
	beq _02256556
	bl sub_020181C4
_02256556:
	pop {r3, pc}
	thumb_func_end ov48_0225654C

	thumb_func_start ov48_02256558
ov48_02256558: ; 0x02256558
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256578 ; =0x02256B40
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256578: .word 0x02256B40
	thumb_func_end ov48_02256558

	thumb_func_start ov48_0225657C
ov48_0225657C: ; 0x0225657C
	ldr r3, _02256584 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256584: .word ov25_02255130
	thumb_func_end ov48_0225657C

	thumb_func_start ov48_02256588
ov48_02256588: ; 0x02256588
	ldr r3, _02256590 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256590: .word ov25_02255154
	thumb_func_end ov48_02256588

	thumb_func_start ov48_02256594
ov48_02256594: ; 0x02256594
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov48_02256594

	thumb_func_start ov48_022565A8
ov48_022565A8: ; 0x022565A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, _02256640 ; =0x0400104C
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	ldr r0, [r5, #4]
	ldr r2, _02256644 ; =0x02256B24
	mov r1, #6
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
	mov r1, #0x75
	mov r3, #6
	bl sub_02006E3C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x74
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	add r0, r5, #0
	lsr r1, r4, #5
	bl ov48_02256650
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256648 ; =0x04001000
	ldr r0, _0225664C ; =0xFFFFE0FF
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
	add r0, r5, #0
	bl ov48_022567FC
	add r0, r6, #0
	bl ov48_02256594
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02256640: .word 0x0400104C
_02256644: .word 0x02256B24
_02256648: .word 0x04001000
_0225664C: .word 0xFFFFE0FF
	thumb_func_end ov48_022565A8

	thumb_func_start ov48_02256650
ov48_02256650: ; 0x02256650
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _022566C8 ; =0x000001CB
	mov r0, #0x1a
	mov r2, #0
	mov r3, #8
	bl sub_0200B010
	add r6, r0, #0
	beq _022566C2
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	mov r2, #6
	mov r3, #0x12
	bl sub_0201A7E8
	add r0, sp, #0x14
	mov r1, #4
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022566CC ; =0x00010804
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, sp, #0x14
	bl sub_0201A9F4
	add r0, sp, #0x14
	bl sub_0201ACCC
	add r0, sp, #0x14
	bl sub_0201A8FC
	add r0, r6, #0
	bl sub_020237BC
_022566C2:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_022566C8: .word 0x000001CB
_022566CC: .word 0x00010804
	thumb_func_end ov48_02256650

	thumb_func_start ov48_022566D0
ov48_022566D0: ; 0x022566D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _022566EC
	cmp r0, #1
	beq _022566FC
	pop {r3, r4, r5, pc}
_022566EC:
	mov r0, #0x57
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_022566FC:
	add r0, r4, #0
	mov r1, #2
	bl ov48_0225657C
	cmp r0, #0
	beq _02256724
	add r0, r4, #0
	bl ov48_02256984
	ldr r0, _02256728 ; =0x0400104C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov48_02256594
_02256724:
	pop {r3, r4, r5, pc}
	nop
_02256728: .word 0x0400104C
	thumb_func_end ov48_022566D0

	thumb_func_start ov48_0225672C
ov48_0225672C: ; 0x0225672C
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
	beq _02256752
	cmp r0, #1
	beq _02256786
	cmp r0, #2
	beq _02256794
	pop {r3, r4, r5, pc}
_02256752:
	mov r1, #0x55
	mov r0, #6
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	lsl r0, r2, #4
	orr r0, r2
	ldr r2, _022567F4 ; =0x0400104C
	strb r0, [r2]
	ldr r1, [r4, r1]
	lsl r0, r1, #4
	orr r0, r1
	strb r0, [r2, #1]
	ldr r0, _022567F8 ; =0x00000678
	bl ov25_02254424
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256786:
	add r0, r4, #0
	bl ov48_02256920
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256794:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022567A6
	add r0, r5, #0
	bl ov48_02256594
	pop {r3, r4, r5, pc}
_022567A6:
	sub r1, r0, #4
	ldr r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #4
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #3
	blt _022567F2
	mov r2, #0
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	lsl r1, r2, #4
	orr r2, r1
	ldr r1, _022567F4 ; =0x0400104C
	strb r2, [r1]
	add r2, r0, #0
	sub r2, #8
	ldr r3, [r4, r2]
	sub r0, #8
	lsl r2, r3, #4
	orr r2, r3
	strb r2, [r1, #1]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022567F2
	add r0, r5, #0
	bl ov48_02256594
_022567F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022567F4: .word 0x0400104C
_022567F8: .word 0x00000678
	thumb_func_end ov48_0225672C

	thumb_func_start ov48_022567FC
ov48_022567FC: ; 0x022567FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	ldr r7, [r6, #0]
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x78
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0xc
	mov r2, #0x76
	mov r3, #0x77
	bl ov25_02255958
	mov r2, #0
	add r0, sp, #0xc
	strb r2, [r0, #0x12]
	mov r1, #2
	strb r1, [r0, #0x13]
	strb r2, [r0, #0x15]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov25_02255DBC
	ldr r0, [sp, #0x10]
	mov r2, #0x4e
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r2, r2, #2
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	strh r1, [r0, #0x10]
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	add r2, r6, r2
	bl ov25_02255810
	mov r1, #1
	str r0, [r6, #0x24]
	bl ov25_02255948
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	mov r1, #7
	strh r1, [r0, #0x10]
	mov r5, #0
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	add r4, r6, #0
_02256880:
	mov r2, #0x4e
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	add r2, r6, r2
	bl ov25_02255810
	mov r1, #1
	str r0, [r4, #0x28]
	bl ov25_02255948
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x40
	blt _02256880
	add r0, r6, #0
	bl ov48_02256920
	mov r5, #0
	add r4, r6, #0
_022568A8:
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov25_02255DFC
	ldr r0, [sp, #0x10]
	mov r1, #2
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r2, #0x4e
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	add r1, r5, #0
	add r1, #0xe
	strh r1, [r0, #0x10]
	lsl r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	add r2, r6, r2
	bl ov25_02255810
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov25_02255948
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022568FE
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov25_02255914
_022568FE:
	add r5, r5, #1
	add r4, r4, #4
	add r7, r7, #4
	cmp r5, #4
	blt _022568A8
	ldr r0, _0225691C ; =ov48_022569FC
	add r1, r6, #0
	mov r2, #3
	bl sub_0200D9E8
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r6, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225691C: .word ov48_022569FC
	thumb_func_end ov48_022567FC

	thumb_func_start ov48_02256920
ov48_02256920: ; 0x02256920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r1, [r7, #0]
	mov r4, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _02256966
	add r6, r4, #0
	add r5, r7, #0
_02256934:
	add r1, r1, r6
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r2, sp, #4
	add r3, sp, #0
	bl ov25_02255DBC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [r5, #0x28]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl ov25_02255914
	ldr r1, [r7, #0]
	add r4, r4, #1
	ldr r0, [r1, #8]
	add r6, r6, #2
	add r5, r5, #4
	cmp r4, r0
	blt _02256934
_02256966:
	cmp r4, #0x40
	bge _02256980
	lsl r0, r4, #2
	add r5, r7, r0
	mov r6, #1
_02256970:
	ldr r0, [r5, #0x28]
	add r1, r6, #0
	bl ov25_02255914
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x40
	blt _02256970
_02256980:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02256920

	thumb_func_start ov48_02256984
ov48_02256984: ; 0x02256984
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225699E
	bl sub_0200DA58
	mov r0, #0x53
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0225699E:
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_022569A4:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022569BA
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	mov r0, #0x4a
	lsl r0, r0, #2
	str r7, [r4, r0]
_022569BA:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _022569A4
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_022569C8:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _022569D6
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x28]
_022569D6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x40
	blt _022569C8
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022569EE
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	mov r0, #0
	str r0, [r5, #0x24]
_022569EE:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov25_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov48_02256984

	thumb_func_start ov48_022569FC
ov48_022569FC: ; 0x022569FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256A26
	ldmia r1!, {r0, r1}
	add r2, sp, #4
	add r3, sp, #0
	bl ov25_02255DBC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
_02256A26:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov48_022569FC

	.rodata


	.global Unk_ov48_02256B24
Unk_ov48_02256B24: ; 0x02256B24
	.incbin "incbin/overlay48_rodata.bin", 0xF8, 0x114 - 0xF8

	.global Unk_ov48_02256B40
Unk_ov48_02256B40: ; 0x02256B40
	.incbin "incbin/overlay48_rodata.bin", 0x114, 0x30

