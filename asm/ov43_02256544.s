	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov43_02256544
ov43_02256544: ; 0x02256544
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0xc0
	bl sub_02018144
	add r4, r0, #0
	beq _022565AE
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	mov r2, #0x27
	str r0, [r4, #0x30]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	mov r3, #8
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r2, #0x72
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #8
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	mov r0, #0x80
	mov r1, #8
	bl sub_02023790
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov43_022565B4
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022565AE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov43_02256544

	thumb_func_start ov43_022565B4
ov43_022565B4: ; 0x022565B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r6, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x40
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x60
	mov r1, #0xc
	mov r2, #0x3e
	mov r3, #0x3f
	bl ov25_02255958
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x60
	ldr r4, _02256638 ; =0x02256C7C
	mov r7, #0
	add r5, r6, #0
	str r0, [sp, #0xc]
_022565EE:
	ldr r0, [r6, #0x30]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x34]
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #6
	blt _022565EE
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x60
	mov r7, #0
	add r4, r6, #0
	mov r5, #0x2c
	str r0, [sp, #0x10]
_02256612:
	ldr r0, [r6, #0x30]
	ldr r1, _0225663C ; =0x02256C08
	ldr r2, [sp, #0x10]
	bl ov25_02255810
	mov r2, #3
	lsl r1, r5, #0xc
	lsl r2, r2, #0x10
	str r0, [r4, #0x4c]
	bl ov25_02255900
	add r7, r7, #1
	add r4, r4, #4
	add r5, #8
	cmp r7, #5
	blt _02256612
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256638: .word 0x02256C7C
_0225663C: .word 0x02256C08
	thumb_func_end ov43_022565B4

	thumb_func_start ov43_02256640
ov43_02256640: ; 0x02256640
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_02256648:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02256654
	ldr r0, [r5, #0x30]
	bl ov25_022558B0
_02256654:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02256648
	mov r6, #0
	add r4, r5, #0
_02256660:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _0225666C
	ldr r0, [r5, #0x30]
	bl ov25_022558B0
_0225666C:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _02256660
	add r5, #0x60
	add r0, r5, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov43_02256640

	thumb_func_start ov43_02256680
ov43_02256680: ; 0x02256680
	push {r4, lr}
	add r4, r0, #0
	beq _022566AE
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	bl ov43_02256640
	add r0, r4, #0
	bl sub_020181C4
_022566AE:
	pop {r4, pc}
	thumb_func_end ov43_02256680

	thumb_func_start ov43_022566B0
ov43_022566B0: ; 0x022566B0
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022566D0 ; =0x02256C34
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022566D0: .word 0x02256C34
	thumb_func_end ov43_022566B0

	thumb_func_start ov43_022566D4
ov43_022566D4: ; 0x022566D4
	ldr r3, _022566DC ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022566DC: .word ov25_02255130
	thumb_func_end ov43_022566D4

	thumb_func_start ov43_022566E0
ov43_022566E0: ; 0x022566E0
	ldr r3, _022566E8 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022566E8: .word ov25_02255154
	thumb_func_end ov43_022566E0

	thumb_func_start ov43_022566EC
ov43_022566EC: ; 0x022566EC
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov43_022566EC

	thumb_func_start ov43_02256700
ov43_02256700: ; 0x02256700
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256798 ; =0x02256C18
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
	mov r1, #0x3d
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
	mov r1, #0x3c
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r4, #5
	bl ov43_022567A4
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _0225679C ; =0x04001000
	ldr r0, _022567A0 ; =0xFFFFE0FF
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
	add r0, r6, #0
	bl ov43_022566EC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256798: .word 0x02256C18
_0225679C: .word 0x04001000
_022567A0: .word 0xFFFFE0FF
	thumb_func_end ov43_02256700

	thumb_func_start ov43_022567A4
ov43_022567A4: ; 0x022567A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0xf
	add r4, r2, #0
	str r0, [sp]
	mov r2, #6
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r6, r1, #0
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x74
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #4
	str r0, [sp]
	mov r2, #6
	add r1, r5, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, #0x84
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #8
	str r0, [sp]
	mov r2, #6
	add r1, r5, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, #0x94
	mov r3, #0x10
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	add r1, r5, #0
	add r4, #0x24
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, #0xa4
	mov r2, #6
	mov r3, #3
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x74
	bl sub_0201A9F4
	add r0, r5, #0
	add r0, #0x84
	bl sub_0201A9F4
	add r0, r5, #0
	add r0, #0x94
	bl sub_0201A9F4
	add r0, r5, #0
	add r0, #0xa4
	bl sub_0201A9F4
	add r0, r5, #0
	add r1, r6, #0
	bl ov43_02256948
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov43_022567A4

	thumb_func_start ov43_02256870
ov43_02256870: ; 0x02256870
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x74
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x84
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201A8FC
	add r4, #0xa4
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov43_02256870

	thumb_func_start ov43_02256894
ov43_02256894: ; 0x02256894
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	bl ov43_02256870
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_02256894

	thumb_func_start ov43_022568B4
ov43_022568B4: ; 0x022568B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	ldr r2, [r0, #0]
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _022568D2
	mov r1, #3
_022568D2:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	bl ov25_022558C4
	ldr r0, _022568EC ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	nop
_022568EC: .word 0x00000663
	thumb_func_end ov43_022568B4

	thumb_func_start ov43_022568F0
ov43_022568F0: ; 0x022568F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	ldr r2, [r0, #0]
	mov r0, #1
	tst r0, r2
	beq _0225690E
	mov r1, #2
	b _02256910
_0225690E:
	mov r1, #0
_02256910:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	bl ov25_022558C4
	add r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov43_022568F0

	thumb_func_start ov43_02256924
ov43_02256924: ; 0x02256924
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_02256948
	add r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov43_02256924

	thumb_func_start ov43_02256948
ov43_02256948: ; 0x02256948
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r5, #0
	ldrh r2, [r4, #6]
	add r1, #0x74
	bl ov43_02256988
	add r1, r5, #0
	ldrh r2, [r4, #8]
	add r0, r5, #0
	add r1, #0x84
	bl ov43_02256988
	add r1, r5, #0
	ldrh r2, [r4, #0xa]
	add r0, r5, #0
	add r1, #0x94
	bl ov43_02256988
	add r1, r5, #0
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r1, #0xa4
	bl ov43_02256A00
	ldrh r1, [r4, #4]
	add r0, r5, #0
	bl ov43_02256A4C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov43_02256948

	thumb_func_start ov43_02256988
ov43_02256988: ; 0x02256988
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #4
	add r6, r2, #0
	bl sub_0201ADA4
	cmp r6, #0x12
	bne _022569B2
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xb8
	add r2, #0xbc
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	mov r1, #6
	bl sub_0200B1B8
	b _022569C4
_022569B2:
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xb4
	add r2, #0xbc
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl sub_0200B1B8
_022569C4:
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0
	ldr r1, [r1, #0]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022569FC ; =0x00010804
	add r5, #0xbc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r5, #0x30
	sub r3, r5, r3
	add r0, r4, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022569FC: .word 0x00010804
	thumb_func_end ov43_02256988

	thumb_func_start ov43_02256A00
ov43_02256A00: ; 0x02256A00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #4
	add r6, r2, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xb8
	add r2, #0xbc
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256A48 ; =0x00010804
	add r5, #0xbc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256A48: .word 0x00010804
	thumb_func_end ov43_02256A00

	thumb_func_start ov43_02256A4C
ov43_02256A4C: ; 0x02256A4C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	ldr r4, _02256A88 ; =0x00000000
	beq _02256A6A
	add r5, r0, #0
	mov r7, #4
_02256A5A:
	ldr r0, [r5, #0x4c]
	add r1, r7, #0
	bl ov25_022558C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02256A5A
_02256A6A:
	cmp r4, #5
	bhs _02256A86
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r6, #5
_02256A76:
	ldr r0, [r5, #0x4c]
	add r1, r6, #0
	bl ov25_022558C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blo _02256A76
_02256A86:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256A88: .word 0x00000000
	thumb_func_end ov43_02256A4C

	.rodata


	.global Unk_ov43_02256C08
Unk_ov43_02256C08: ; 0x02256C08
	.incbin "incbin/overlay43_rodata.bin", 0x17C, 0x18C - 0x17C

	.global Unk_ov43_02256C18
Unk_ov43_02256C18: ; 0x02256C18
	.incbin "incbin/overlay43_rodata.bin", 0x18C, 0x1A8 - 0x18C

	.global Unk_ov43_02256C34
Unk_ov43_02256C34: ; 0x02256C34
	.incbin "incbin/overlay43_rodata.bin", 0x1A8, 0x1F0 - 0x1A8

	.global Unk_ov43_02256C7C
Unk_ov43_02256C7C: ; 0x02256C7C
	.incbin "incbin/overlay43_rodata.bin", 0x1F0, 0x60

