	.include "macros/function.inc"
	.include "include/ov50_02256510.inc"

	

	.text


	thumb_func_start ov50_02256510
ov50_02256510: ; 0x02256510
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x3c
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
	add r0, r4, #0
	add r1, r5, #0
	bl ov50_02256560
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256546:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov50_02256510

	thumb_func_start ov50_0225654C
ov50_0225654C: ; 0x0225654C
	push {r4, lr}
	add r4, r0, #0
	beq _0225655C
	bl ov50_022565E4
	add r0, r4, #0
	bl sub_020181C4
_0225655C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_0225654C

	thumb_func_start ov50_02256560
ov50_02256560: ; 0x02256560
	push {r4, r5, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x72
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xc
	mov r2, #0x70
	mov r3, #0x71
	bl ov25_02255958
	add r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _022565AC ; =0x02256A38
	add r2, #0x28
	bl ov25_02255810
	str r0, [r5, #0x24]
	ldr r1, [r4, #8]
	lsl r1, r1, #2
	add r1, r4, r1
	ldrb r1, [r1, #0xa]
	bl ov50_022565B0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022565AC: .word 0x02256A38
	thumb_func_end ov50_02256560

	thumb_func_start ov50_022565B0
ov50_022565B0: ; 0x022565B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #7
	bl _u32_div_f
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #7
	bl _u32_div_f
	add r2, r0, #0
	lsl r1, r4, #1
	lsl r3, r2, #1
	add r1, r4, r1
	add r2, r2, r3
	add r1, r1, #5
	add r2, r2, #6
	add r0, r5, #0
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	bl ov25_02255900
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov50_022565B0

	thumb_func_start ov50_022565E4
ov50_022565E4: ; 0x022565E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	bl ov25_022558B0
	add r4, #0x28
	add r0, r4, #0
	bl ov25_022559B0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_022565E4

	thumb_func_start ov50_022565FC
ov50_022565FC: ; 0x022565FC
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225661C ; =0x02256AC0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225661C: .word 0x02256AC0
	thumb_func_end ov50_022565FC

	thumb_func_start ov50_02256620
ov50_02256620: ; 0x02256620
	ldr r3, _02256628 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256628: .word ov25_02255130
	thumb_func_end ov50_02256620

	thumb_func_start ov50_0225662C
ov50_0225662C: ; 0x0225662C
	ldr r3, _02256634 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256634: .word ov25_02255154
	thumb_func_end ov50_0225662C

	thumb_func_start ov50_02256638
ov50_02256638: ; 0x02256638
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_02256638

	thumb_func_start ov50_0225664C
ov50_0225664C: ; 0x0225664C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022566E0 ; =0x02256A7C
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	ldr r2, _022566E4 ; =0x02256A60
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov50_0225675C
	add r0, r5, #0
	add r1, r4, #0
	bl ov50_022567F4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x6f
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _022566E8 ; =0x04001000
	ldr r0, _022566EC ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0xc
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r6, #0
	bl ov50_02256638
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022566E0: .word 0x02256A7C
_022566E4: .word 0x02256A60
_022566E8: .word 0x04001000
_022566EC: .word 0xFFFFE0FF
	thumb_func_end ov50_0225664C

	thumb_func_start ov50_022566F0
ov50_022566F0: ; 0x022566F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	thumb_func_end ov50_022566F0

	thumb_func_start ov50_02256714
ov50_02256714: ; 0x02256714
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r4, #0
	bl ov25_02255240
	add r2, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r3, r0, #2
	add r0, r2, r3
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0225673A
	mov r1, #0x8f
	b _0225673C
_0225673A:
	mov r1, #0x83
_0225673C:
	add r2, r2, r3
	ldrb r2, [r2, #0xe]
	lsl r1, r1, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl ov50_022567A8
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	add r0, r4, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov50_02256714

	thumb_func_start ov50_0225675C
ov50_0225675C: ; 0x0225675C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r6, r1, #0
	ldr r2, [r7, #4]
	mov r0, #0xc
	mov r1, #0x6e
	mov r3, #7
	bl sub_02006E60
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	bls _022567A2
	add r5, r6, #0
_02256788:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _02256798
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	mov r1, #0x8f
	bl ov50_022567A8
_02256798:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _02256788
_022567A2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov50_0225675C

	thumb_func_start ov50_022567A8
ov50_022567A8: ; 0x022567A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #7
	bl _u32_div_f
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #7
	bl _u32_div_f
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r3, r4, #1
	str r0, [sp]
	mov r0, #2
	add r3, r4, r3
	str r0, [sp, #4]
	add r3, r3, #4
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov50_022567A8

	thumb_func_start ov50_022567F4
ov50_022567F4: ; 0x022567F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r6, r1, #0
	ldr r0, [r7, #4]
	mov r1, #6
	mov r2, #0x82
	bl sub_02019CB8
	ldr r0, [r7, #4]
	ldr r1, [r6, #0]
	bl ov50_0225683C
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	bls _02256838
	add r5, r6, #0
_02256824:
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	add r1, r4, #1
	bl ov50_02256894
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _02256824
_02256838:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov50_022567F4

	thumb_func_start ov50_0225683C
ov50_0225683C: ; 0x0225683C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, _02256890 ; =0x02256A46
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x10]
_0225684C:
	ldr r0, [sp, #0x10]
	mov r5, #0
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02256856:
	add r3, r5, #0
	add r2, r4, r5
	add r3, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r5, r5, #1
	cmp r5, #4
	blt _02256856
	ldr r0, [sp, #0x10]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _0225684C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256890: .word 0x02256A46
	thumb_func_end ov50_0225683C

	thumb_func_start ov50_02256894
ov50_02256894: ; 0x02256894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	mov r1, #7
	bl _u32_div_f
	add r6, r1, #0
	lsl r0, r6, #1
	add r0, r6, r0
	add r4, r0, #4
	add r0, r5, #0
	mov r1, #7
	bl _u32_div_f
	lsl r1, r0, #1
	add r0, r0, r1
	add r5, r0, #5
	cmp r6, #0
	bne _022568C4
	mov r6, #1
	b _022568C6
_022568C4:
	mov r6, #0
_022568C6:
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	bl _u32_div_f
	str r1, [sp, #0x18]
	cmp r7, #0
	beq _0225692E
	mov r0, #0x14
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02256988 ; =0x02256A98
	lsl r1, r7, #1
	add r0, r0, r2
	ldrh r7, [r1, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r3, r4, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r7, #0xc
	str r0, [sp, #0xc]
	lsl r2, r7, #0x10
	lsl r3, r4, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0225692E:
	mov r0, #0x14
	add r3, r6, #0
	mul r3, r0
	ldr r0, [sp, #0x18]
	ldr r2, _02256988 ; =0x02256A98
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r6, [r1, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r3, r4, #1
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r6, #0xc
	add r3, r4, #1
	str r0, [sp, #0xc]
	lsl r2, r6, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256988: .word 0x02256A98
	thumb_func_end ov50_02256894

	.rodata


	.global Unk_ov50_02256A38
Unk_ov50_02256A38: ; 0x02256A38
	.incbin "incbin/overlay50_rodata.bin", 0xAC, 0xBC - 0xAC

	.global Unk_ov50_02256A48
Unk_ov50_02256A48: ; 0x02256A48
	.incbin "incbin/overlay50_rodata.bin", 0xBC, 0xD4 - 0xBC

	.global Unk_ov50_02256A60
Unk_ov50_02256A60: ; 0x02256A60
	.incbin "incbin/overlay50_rodata.bin", 0xD4, 0xF0 - 0xD4

	.global Unk_ov50_02256A7C
Unk_ov50_02256A7C: ; 0x02256A7C
	.incbin "incbin/overlay50_rodata.bin", 0xF0, 0x10C - 0xF0

	.global Unk_ov50_02256A98
Unk_ov50_02256A98: ; 0x02256A98
	.incbin "incbin/overlay50_rodata.bin", 0x10C, 0x134 - 0x10C

	.global Unk_ov50_02256AC0
Unk_ov50_02256AC0: ; 0x02256AC0
	.incbin "incbin/overlay50_rodata.bin", 0x134, 0x30

