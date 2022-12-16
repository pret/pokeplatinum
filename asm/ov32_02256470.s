	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov32_02256470
ov32_02256470: ; 0x02256470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0xe3
	str r0, [sp, #4]
	mov r0, #8
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [sp, #8]
	cmp r0, #0
	beq _02256502
	add r0, #0xc
	mov r1, #8
	bl ov25_02255090
	ldr r0, [sp, #8]
	str r4, [r0, #0]
	bl ov25_02254674
	ldr r1, [sp, #8]
	str r0, [r1, #4]
	bl ov25_02254664
	ldr r1, [sp, #8]
	mov r6, #0
	str r0, [r1, #8]
	add r0, r1, #0
	str r6, [r0, #0x38]
	add r0, #0xf4
	add r4, r1, #0
	str r6, [r0, #0]
	add r4, #0x3c
	add r5, r1, #0
	add r7, r6, #0
_022564B6:
	add r0, r4, #0
	bl sub_0201A7A0
	add r0, r5, #0
	add r0, #0x9c
	str r7, [r0, #0]
	add r0, r5, #0
	add r0, #0xb4
	add r6, r6, #1
	str r7, [r0, #0]
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #6
	blt _022564B6
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #0xc
	add r0, #0xcc
	mov r2, #5
	mov r3, #6
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #0xc
	add r0, #0xe0
	mov r2, #0x6b
	mov r3, #0x6c
	bl ov25_02255958
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add sp, #0xc
	str r1, [r0, #0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02256502:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov32_02256470

	thumb_func_start ov32_02256508
ov32_02256508: ; 0x02256508
	push {r4, lr}
	add r4, r0, #0
	beq _02256536
	bl ov32_02256BD4
	add r0, r4, #0
	add r0, #0xcc
	bl ov25_022559B0
	add r0, r4, #0
	add r0, #0xe0
	bl ov25_022559B0
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256530
	bl sub_0200DA58
_02256530:
	add r0, r4, #0
	bl sub_020181C4
_02256536:
	pop {r4, pc}
	thumb_func_end ov32_02256508

	thumb_func_start ov32_02256538
ov32_02256538: ; 0x02256538
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #0xc
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256558 ; =0x02256D18
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256558: .word 0x02256D18
	thumb_func_end ov32_02256538

	thumb_func_start ov32_0225655C
ov32_0225655C: ; 0x0225655C
	ldr r3, _02256564 ; =ov25_02255130
	add r0, #0xc
	bx r3
	nop
_02256564: .word ov25_02255130
	thumb_func_end ov32_0225655C

	thumb_func_start ov32_02256568
ov32_02256568: ; 0x02256568
	ldr r3, _02256570 ; =ov25_02255154
	add r0, #0xc
	bx r3
	nop
_02256570: .word ov25_02255154
	thumb_func_end ov32_02256568

	thumb_func_start ov32_02256574
ov32_02256574: ; 0x02256574
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #0xc
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_02256574

	thumb_func_start ov32_02256588
ov32_02256588: ; 0x02256588
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0225663C ; =0x02256CFC
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
	mov r1, #0x6a
	mov r3, #6
	bl sub_02006E3C
	mov r3, #0
	lsr r5, r0, #5
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #5
	bl sub_02019CB8
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	str r5, [r4, #0x34]
	ldr r1, [r4, #0]
	add r0, r4, #0
	add r2, r5, #0
	bl ov32_02256648
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	mov r0, #0xf
	mov r1, #1
	bl ov25_02255308
	mov r0, #2
	bl ov25_02255360
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl ov32_02256898
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl ov32_0225692C
	add r0, r4, #0
	bl ov32_02256A48
	ldr r1, _02256640 ; =0x04001000
	ldr r0, _02256644 ; =0xFFFFE0FF
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
	add r0, r6, #0
	bl ov32_02256574
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225663C: .word 0x02256CFC
_02256640: .word 0x04001000
_02256644: .word 0xFFFFE0FF
	thumb_func_end ov32_02256588

	thumb_func_start ov32_02256648
ov32_02256648: ; 0x02256648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, r1, #0
	str r1, [sp, #0x18]
	ldr r1, [r0, #0]
	str r2, [sp, #0x1c]
	cmp r1, #0
	ble _022566D4
	ldr r4, [sp, #0x14]
	ldr r7, [sp, #0x20]
	ldr r5, _022566DC ; =0x02256CE4
	ldr r6, [sp, #0x18]
	add r4, #0x3c
_02256668:
	add r0, r4, #0
	bl sub_0201A7A0
	ldrh r0, [r5, #2]
	add r1, r4, #0
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r5]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r4, #0
	bl sub_0201A9F4
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov32_022566E0
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #0xc]
	bl ov32_0225686C
	add r1, r0, #0
	add r0, r4, #0
	bl ov32_0225682C
	ldr r0, [sp, #0x20]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r7, #8
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r6, #0x10
	cmp r0, r1
	blt _02256668
_022566D4:
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x38]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022566DC: .word 0x02256CE4
	thumb_func_end ov32_02256648

	thumb_func_start ov32_022566E0
ov32_022566E0: ; 0x022566E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #6]
	add r4, r1, #0
	mov r2, #1
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	mov r1, #6
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldrb r0, [r5, #6]
	mov r1, #6
	mov r2, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	bl sub_02019CB8
	ldrb r0, [r5, #6]
	ldr r2, _02256818 ; =0x00000401
	mov r1, #6
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r6, [r5, #5]
	ldrb r3, [r5, #7]
	ldr r0, [r4, #4]
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldrb r0, [r5, #6]
	mov r1, #6
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #8]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldrb r0, [r5, #6]
	ldr r2, _0225681C ; =0x00000406
	mov r1, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #8]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r6, [r5, #5]
	ldrb r3, [r5, #7]
	ldr r0, [r4, #4]
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256820 ; =0x00000801
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	mov r1, #6
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256824 ; =0x00000802
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #7]
	mov r1, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	bl sub_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256828 ; =0x00000C01
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	ldrb r4, [r5, #5]
	ldrb r3, [r5, #7]
	mov r1, #6
	add r3, r4, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256818: .word 0x00000401
_0225681C: .word 0x00000406
_02256820: .word 0x00000801
_02256824: .word 0x00000802
_02256828: .word 0x00000C01
	thumb_func_end ov32_022566E0

	thumb_func_start ov32_0225682C
ov32_0225682C: ; 0x0225682C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x40
	str r1, [sp]
	mov r1, #8
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl sub_0201AE78
	cmp r4, #0
	beq _02256860
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
_02256860:
	add r0, r5, #0
	bl sub_0201ACCC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov32_0225682C

	thumb_func_start ov32_0225686C
ov32_0225686C: ; 0x0225686C
	push {r3, lr}
	cmp r0, #0
	bne _02256876
	mov r0, #0
	pop {r3, pc}
_02256876:
	cmp r0, r1
	bne _0225687E
	mov r0, #0x40
	pop {r3, pc}
_0225687E:
	lsl r0, r0, #0xc
	bl sub_020E2178
	lsl r0, r0, #5
	lsr r0, r0, #0xc
	bne _0225688E
	mov r0, #1
	b _02256894
_0225688E:
	cmp r0, #0x20
	bne _02256894
	mov r0, #0x1f
_02256894:
	lsl r0, r0, #1
	pop {r3, pc}
	thumb_func_end ov32_0225686C

	thumb_func_start ov32_02256898
ov32_02256898: ; 0x02256898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x6d
	bl sub_02006EC0
	mov r4, #0
	add r0, sp, #0x18
	strb r4, [r0, #0xa]
	mov r1, #2
	strb r1, [r0, #0xb]
	strb r4, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _02256922
	ldr r7, [sp, #0xc]
	ldr r6, [sp, #0x10]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0xe0
	ldr r5, _02256928 ; =0x02256CCC
	str r0, [sp, #0x14]
_022568D8:
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	beq _02256912
	bl sub_0207D2D0
	cmp r0, #0
	beq _022568EA
	mov r1, #1
	b _022568EC
_022568EA:
	mov r1, #0
_022568EC:
	add r0, sp, #0x18
	strh r1, [r0, #8]
	ldrh r0, [r5]
	ldr r2, [sp, #0x14]
	add r1, sp, #0x18
	add r0, #0x1c
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldrh r0, [r5, #2]
	add r0, #0x15
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl ov25_02255810
	add r1, r7, #0
	add r1, #0xb4
	str r0, [r1, #0]
_02256912:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r6, #0x10
	add r5, r5, #4
	add r7, r7, #4
	cmp r4, r0
	blt _022568D8
_02256922:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256928: .word 0x02256CCC
	thumb_func_end ov32_02256898

	thumb_func_start ov32_0225692C
ov32_0225692C: ; 0x0225692C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x13
	mov r1, #8
	bl sub_02006C24
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _02256A40
	mov r0, #0
	add r1, sp, #0x20
	strh r0, [r1, #0xc]
	str r0, [sp, #0x10]
	strb r0, [r1, #0xe]
	mov r0, #2
	strb r0, [r1, #0xf]
	mov r7, #1
	strb r7, [r1, #0x10]
	ldr r0, [sp, #8]
	strb r7, [r1, #0x11]
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _02256A3A
	ldr r5, [sp, #4]
	mov r0, #8
	mov r1, #0x43
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r5, #0
	add r0, r0, r1
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0xcc
	ldr r4, [sp, #8]
	ldr r6, _02256A44 ; =0x02256CCC
	add r7, #0xff
	str r0, [sp, #0x1c]
_0225697C:
	ldr r0, [sp, #0x18]
	mov r3, #0xa
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006DC8
	ldr r0, [sp, #0x18]
	add r1, sp, #0x20
	bl sub_020A7118
	ldr r0, [sp, #0x20]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x20]
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, r7, #0
	lsl r2, r2, #8
	bl sub_020C0314
	ldrh r0, [r6]
	ldr r2, [sp, #0x1c]
	add r1, sp, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl ov25_02255810
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	bl ov25_02255940
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #4
	bl ov25_022558C4
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _022569F2
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _02256A00
_022569F2:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov25_02255938
	b _02256A18
_02256A00:
	ldrh r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	bl sub_02079EDC
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r1, r1, #2
	bl ov25_02255938
_02256A18:
	mov r0, #2
	lsl r0, r0, #8
	add r7, r7, r0
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r5, r5, #4
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0225697C
_02256A3A:
	ldr r0, [sp, #0x14]
	bl sub_02006CA8
_02256A40:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256A44: .word 0x02256CCC
	thumb_func_end ov32_0225692C

	thumb_func_start ov32_02256A48
ov32_02256A48: ; 0x02256A48
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #8
	strb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xf8
	str r4, [r0, #0]
	add r0, r4, #0
	ldr r1, [r4, #0]
	add r0, #0xfc
	str r1, [r0, #0]
	add r1, r4, #0
	ldr r0, _02256A74 ; =ov32_02256A78
	add r1, #0xf8
	mov r2, #1
	bl sub_0200D9E8
	add r4, #0xf4
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_02256A74: .word ov32_02256A78
	thumb_func_end ov32_02256A48

	thumb_func_start ov32_02256A78
ov32_02256A78: ; 0x02256A78
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r0, [r5, #8]
	ldr r4, [r5, #4]
	ldr r6, [r5, #0]
	cmp r0, #0
	beq _02256A8C
	cmp r0, #1
	beq _02256AE6
	pop {r4, r5, r6, pc}
_02256A8C:
	add r0, r4, #0
	add r0, #0x66
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256B6C
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0]
	bl ov32_02256B78
	ldr r1, [r4, #0]
	cmp r0, r1
	bhs _02256B6C
	lsl r2, r0, #4
	add r1, r4, r2
	ldrh r3, [r1, #0xa]
	cmp r3, #0
	beq _02256B6C
	ldrb r3, [r1, #0x12]
	cmp r3, #0
	bne _02256B6C
	mov r3, #0
	strb r3, [r5, #9]
	strb r3, [r5, #0xb]
	strb r0, [r5, #0xa]
	mov r3, #2
	str r3, [r5, #0x10]
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	bne _02256AD0
	mov r0, #1
	strb r0, [r5, #0xc]
	mov r0, #8
	b _02256AD4
_02256AD0:
	strb r3, [r5, #0xc]
	mov r0, #4
_02256AD4:
	strb r0, [r5, #0xd]
	mov r0, #1
	strb r0, [r5, #8]
	add r1, r4, r2
	ldrh r0, [r1, #8]
	ldrb r1, [r1, #0x13]
	bl ov25_02254444
	pop {r4, r5, r6, pc}
_02256AE6:
	ldrb r1, [r5, #0xb]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _02256B28
	add r0, r4, #0
	add r0, #0x64
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256B08
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0]
	bl ov32_02256B78
	ldrb r1, [r5, #0xa]
	cmp r1, r0
	beq _02256B28
_02256B08:
	ldrb r0, [r5, #0xa]
	ldr r1, _02256B70 ; =0x02256CCC
	ldr r3, _02256B74 ; =0x02256CCE
	lsl r2, r0, #2
	add r0, r6, r2
	ldrh r1, [r1, r2]
	ldrh r2, [r3, r2]
	add r0, #0x9c
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	mov r0, #0
	strb r0, [r5, #8]
	pop {r4, r5, r6, pc}
_02256B28:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _02256B68
	ldrb r0, [r5, #0xa]
	ldr r1, _02256B70 ; =0x02256CCC
	ldr r3, _02256B74 ; =0x02256CCE
	lsl r2, r0, #2
	add r0, r6, r2
	ldrh r1, [r1, r2]
	add r0, #0x9c
	ldrh r2, [r3, r2]
	ldr r4, [r5, #0x10]
	ldr r0, [r0, #0]
	add r2, r4, r2
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldrb r1, [r5, #0xb]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bhs _02256B58
	add r0, r1, #1
	strb r0, [r5, #0xb]
_02256B58:
	mov r0, #0
	ldr r1, [r5, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xc]
	strb r0, [r5, #9]
	pop {r4, r5, r6, pc}
_02256B68:
	sub r0, r0, #1
	strb r0, [r5, #9]
_02256B6C:
	pop {r4, r5, r6, pc}
	nop
_02256B70: .word 0x02256CCC
_02256B74: .word 0x02256CCE
	thumb_func_end ov32_02256A78

	thumb_func_start ov32_02256B78
ov32_02256B78: ; 0x02256B78
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	mov ip, r1
	add r7, r2, #0
	ldr r6, _02256BCC ; =0x00000000
	beq _02256BC6
	ldr r3, _02256BD0 ; =0x02256CCC
_02256B86:
	ldrh r1, [r3]
	ldrh r4, [r3, #2]
	mov r5, lr
	add r0, r1, #0
	sub r0, #0x10
	add r2, r4, #0
	add r1, #0x10
	sub r5, r5, r0
	sub r0, r1, r0
	sub r2, #8
	cmp r5, r0
	bhs _02256BA2
	mov r0, #1
	b _02256BA4
_02256BA2:
	mov r0, #0
_02256BA4:
	mov r1, ip
	add r4, #0x18
	sub r1, r1, r2
	sub r2, r4, r2
	cmp r1, r2
	bhs _02256BB4
	mov r1, #1
	b _02256BB6
_02256BB4:
	mov r1, #0
_02256BB6:
	tst r0, r1
	beq _02256BBE
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02256BBE:
	add r6, r6, #1
	add r3, r3, #4
	cmp r6, r7
	blo _02256B86
_02256BC6:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256BCC: .word 0x00000000
_02256BD0: .word 0x02256CCC
	thumb_func_end ov32_02256B78

	thumb_func_start ov32_02256BD4
ov32_02256BD4: ; 0x02256BD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02256BDE:
	add r0, r4, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02256BF4
	ldr r0, [r5, #8]
	bl ov25_022558B0
	add r0, r4, #0
	add r0, #0x9c
	str r7, [r0, #0]
_02256BF4:
	add r0, r4, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02256C0C
	ldr r0, [r5, #8]
	bl ov25_022558B0
	add r1, r4, #0
	add r1, #0xb4
	mov r0, #0
	str r0, [r1, #0]
_02256C0C:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02256BDE
	ldr r0, [r5, #0x38]
	mov r6, #0
	cmp r0, #0
	bls _02256C30
	add r4, r5, #0
	add r4, #0x3c
_02256C20:
	add r0, r4, #0
	bl sub_0201A8FC
	ldr r0, [r5, #0x38]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blo _02256C20
_02256C30:
	mov r0, #0
	str r0, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov32_02256BD4

	thumb_func_start ov32_02256C38
ov32_02256C38: ; 0x02256C38
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov32_02256574
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov32_02256C38

	thumb_func_start ov32_02256C54
ov32_02256C54: ; 0x02256C54
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	add r0, r5, #0
	bl ov32_02256BD4
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, #6
	mov r2, #5
	bl sub_02019CB8
	add r0, r5, #0
	add r1, r4, #0
	bl ov32_02256898
	add r0, r5, #0
	add r1, r4, #0
	bl ov32_0225692C
	ldr r2, [r5, #0x34]
	add r0, r5, #0
	add r1, r4, #0
	bl ov32_02256648
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256CBC ; =0x00000669
	bl ov25_02254424
	add r0, r6, #0
	bl ov32_02256574
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256CBC: .word 0x00000669
	thumb_func_end ov32_02256C54

	.rodata


	.global Unk_ov32_02256CCC
Unk_ov32_02256CCC: ; 0x02256CCC
	.incbin "incbin/overlay32_rodata.bin", 0xC, 0x24 - 0xC

	.global Unk_ov32_02256CE4
Unk_ov32_02256CE4: ; 0x02256CE4
	.incbin "incbin/overlay32_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov32_02256CFC
Unk_ov32_02256CFC: ; 0x02256CFC
	.incbin "incbin/overlay32_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov32_02256D18
Unk_ov32_02256D18: ; 0x02256D18
	.incbin "incbin/overlay32_rodata.bin", 0x58, 0x30

