	.include "macros/function.inc"
	.include "include/ov33_02256474.inc"

	

	.text


	thumb_func_start ov33_02256474
ov33_02256474: ; 0x02256474
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0xa3
	add r5, r0, #0
	mov r0, #8
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	beq _022564EA
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r3, #0
	add r0, #0xb0
	str r3, [r0, #0]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r6, r4, #0
	add r2, r3, #0
	add r1, r0, #4
_022564B2:
	str r2, [r6, r0]
	str r2, [r6, r1]
	add r3, r3, #1
	add r6, #0x38
	cmp r3, #6
	blt _022564B2
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #5
	mov r3, #6
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0xc
	mov r2, #0x24
	mov r3, #0x25
	bl ov25_02255958
	add sp, #4
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_022564EA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov33_02256474

	thumb_func_start ov33_022564F0
ov33_022564F0: ; 0x022564F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	beq _02256546
	mov r7, #0x4d
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_022564FE:
	ldr r1, [r4, r7]
	cmp r1, #0
	beq _0225650A
	ldr r0, [r5, #0x30]
	bl ov25_022558B0
_0225650A:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225651A
	ldr r0, [r5, #0x30]
	bl ov25_022558B0
_0225651A:
	add r6, r6, #1
	add r4, #0x38
	cmp r6, #6
	blt _022564FE
	add r0, r5, #0
	add r0, #0x34
	bl ov25_022559B0
	add r0, r5, #0
	add r0, #0x48
	bl ov25_022559B0
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256540
	bl sub_0200DA58
_02256540:
	add r0, r5, #0
	bl sub_020181C4
_02256546:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov33_022564F0

	thumb_func_start ov33_02256548
ov33_02256548: ; 0x02256548
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256568 ; =0x02257878
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256568: .word 0x02257878
	thumb_func_end ov33_02256548

	thumb_func_start ov33_0225656C
ov33_0225656C: ; 0x0225656C
	ldr r3, _02256574 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256574: .word ov25_02255130
	thumb_func_end ov33_0225656C

	thumb_func_start ov33_02256578
ov33_02256578: ; 0x02256578
	ldr r3, _02256580 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256580: .word ov25_02255154
	thumb_func_end ov33_02256578

	thumb_func_start ov33_02256584
ov33_02256584: ; 0x02256584
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_02256584

	thumb_func_start ov33_02256598
ov33_02256598: ; 0x02256598
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256628 ; =0x0225785C
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
	mov r1, #7
	mov r3, #6
	bl sub_02006E3C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, [r5, #0]
	add r0, r5, #0
	bl ov33_02256634
	ldr r1, [r5, #0]
	add r0, r5, #0
	bl ov33_0225681C
	ldr r1, _0225662C ; =0x04001000
	ldr r0, _02256630 ; =0xFFFFE0FF
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
	add r0, r4, #0
	bl ov33_02256584
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02256628: .word 0x0225785C
_0225662C: .word 0x04001000
_02256630: .word 0xFFFFE0FF
	thumb_func_end ov33_02256598

	thumb_func_start ov33_02256634
ov33_02256634: ; 0x02256634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0xc]
	mov r0, #1
	str r1, [sp, #0x10]
	bl ov25_02255360
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x23
	lsl r3, r0, #9
	bl sub_02006EC0
	mov r0, #0x13
	mov r1, #8
	bl sub_02006C24
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _02256668
	b _022567C8
_02256668:
	mov r0, #0
	str r0, [sp, #0x18]
	add r1, r0, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0xc]
	ldr r1, [sp, #0x18]
	strb r1, [r0, #0xe]
	mov r1, #2
	strb r1, [r0, #0xf]
	mov r1, #1
	strb r1, [r0, #0x11]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	bgt _02256688
	b _022567C2
_02256688:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0xc]
	str r0, [sp, #0x14]
	add r7, r0, #0
	add r0, r5, #0
	str r0, [sp, #0x24]
	add r0, #0x34
	str r0, [sp, #0x24]
	add r0, r5, #0
	str r0, [sp, #0x28]
	add r0, #0x48
	ldr r4, [sp, #0x10]
	ldr r6, _022567CC ; =0x02257844
	str r0, [sp, #0x28]
_022566A4:
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #4]
	mov r2, #8
	bl sub_02006CB8
	add r1, sp, #0x2c
	str r0, [sp, #0x20]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r0, #0x14]
	lsl r1, r1, #0xa
	bl DC_FlushRange
	ldr r0, [sp, #0x2c]
	mov r2, #1
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x14]
	lsl r2, r2, #0xa
	bl GXS_LoadOBJ
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	ldrh r0, [r6]
	mov r1, #1
	ldr r2, [sp, #0x24]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	strb r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x30
	ldr r0, [r0, #0x30]
	bl ov25_02255810
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl ov25_02255940
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl ov25_02255938
	mov r1, #0
	add r0, sp, #0x2c
	strb r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x28]
	ldr r0, [r0, #0x30]
	add r1, sp, #0x30
	bl ov25_02255810
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225675C
	mov r1, #1
	bl ov25_02255914
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	bl ov25_02255940
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov25_02255938
	b _02256760
_0225675C:
	bl GF_AssertFail
_02256760:
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	mov r2, #0x1c
	bl sub_020759CC
	mov r1, #0x59
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldr r0, _022567D0 ; =0x00000165
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	mov r1, #0x52
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	lsl r1, r1, #2
	str r2, [r5, r1]
	add r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x18]
	add r5, #0x38
	add r7, #0x20
	cmp r0, r1
	bge _022567C2
	b _022566A4
_022567C2:
	ldr r0, [sp, #0x1c]
	bl sub_02006CA8
_022567C8:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022567CC: .word 0x02257844
_022567D0: .word 0x00000165
	thumb_func_end ov33_02256634

	thumb_func_start ov33_022567D4
ov33_022567D4: ; 0x022567D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201D35C
	mov r1, #0x3f
	and r0, r1
	sub r0, #0x20
	lsl r4, r0, #0xc
	bl sub_0201D35C
	mov r1, #0x3f
	and r0, r1
	sub r0, #0x20
	lsl r0, r0, #0xc
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #8]
	add r0, r5, #0
	add r1, r5, #0
	bl VEC_Normalize
	ldr r1, [r5, #0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [r5, #0]
	ldr r1, [r5, #4]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov33_022567D4

	thumb_func_start ov33_0225681C
ov33_0225681C: ; 0x0225681C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #0]
	mov r6, #0
	cmp r0, #0
	ble _02256878
	mov r1, #0x4f
	ldr r0, [sp]
	lsl r1, r1, #2
	add r4, r0, r1
	add r5, r0, #0
_02256834:
	add r0, r4, #0
	bl ov33_022567D4
	mov r0, #0x59
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256852
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov25_022558C4
	b _0225686C
_02256852:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _02256860
	mov r1, #7
	b _02256862
_02256860:
	mov r1, #6
_02256862:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov25_022558C4
_0225686C:
	ldr r0, [r7, #0]
	add r6, r6, #1
	add r4, #0x38
	add r5, #0x38
	cmp r6, r0
	blt _02256834
_02256878:
	ldr r0, [sp]
	bl ov33_022568B4
	ldr r0, _02256894 ; =ov33_02256904
	ldr r1, [sp]
	mov r2, #1
	bl sub_0200D9E8
	ldr r1, [sp]
	add r1, #0xb0
	str r1, [sp]
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256894: .word ov33_02256904
	thumb_func_end ov33_0225681C

	thumb_func_start ov33_02256898
ov33_02256898: ; 0x02256898
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov33_02256584
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_02256898

	thumb_func_start ov33_022568B4
ov33_022568B4: ; 0x022568B4
	push {r3, r4, r5, r6}
	add r1, r0, #0
	mov r5, #0
	add r1, #0xe4
	str r5, [r1, #0]
	ldr r1, [r0, #0]
	ldr r3, [r1, #0]
	cmp r3, #0
	ble _022568E0
	mov r1, #0x16
	lsl r1, r1, #4
	add r6, r0, #0
	add r4, r5, #0
	add r2, r1, #3
_022568D0:
	strb r4, [r6, r1]
	strb r4, [r6, r2]
	ldr r3, [r0, #0]
	add r5, r5, #1
	ldr r3, [r3, #0]
	add r6, #0x38
	cmp r5, r3
	blt _022568D0
_022568E0:
	add r1, r0, #0
	add r1, #0xec
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0xec
	ldr r1, [r1, #0]
	add r0, #0xf0
	str r1, [r0, #0]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov33_022568B4

	thumb_func_start ov33_022568F4
ov33_022568F4: ; 0x022568F4
	add r2, r0, #0
	add r2, #0xe4
	str r1, [r2, #0]
	mov r1, #0
	add r0, #0xe8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov33_022568F4

	thumb_func_start ov33_02256904
ov33_02256904: ; 0x02256904
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0225697E
	mov r0, #0xa1
	ldr r1, [r4, #0x50]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0x54]
	add r0, r0, #4
	sub r1, #8
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov33_022569C0
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xec
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	cmp r1, r0
	bhs _02256940
	mov r1, #1
	b _02256942
_02256940:
	mov r1, #0
_02256942:
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256970
	add r0, r5, #0
	add r0, #0xec
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _02256970
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0xc]
	bl ov25_02254444
_02256970:
	add r0, r5, #0
	add r0, #0xec
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0, #0]
	b _0225698E
_0225697E:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0]
	add r0, #0xf0
	str r1, [r0, #0]
_0225698E:
	add r2, r5, #0
	add r2, #0xe4
	ldr r2, [r2, #0]
	add r0, r5, #0
	lsl r3, r2, #2
	ldr r2, _022569BC ; =0x02257818
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	add r0, r5, #0
	add r1, r4, #0
	bl ov33_02256B44
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #4
	beq _022569BA
	add r0, r5, #0
	add r1, r4, #0
	bl ov33_022572A0
_022569BA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022569BC: .word 0x02257818
	thumb_func_end ov33_02256904

	thumb_func_start ov33_022569C0
ov33_022569C0: ; 0x022569C0
	push {r4, r5, r6, r7}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	ldr r4, [r0, #0]
	cmp r4, #0
	ble _02256A0C
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r0, r0, #4
	ldr r3, [r5, r0]
_022569D8:
	mov r0, #0x52
	lsl r0, r0, #2
	mov r6, #0x53
	ldr r0, [r5, r0]
	lsl r6, r6, #2
	ldr r6, [r5, r6]
	asr r0, r0, #0xc
	asr r6, r6, #0xc
	sub r0, r2, r0
	sub r7, r3, r6
	add r6, r0, #0
	mul r6, r0
	add r0, r7, #0
	mul r0, r7
	add r6, r6, r0
	mov r0, #1
	lsl r0, r0, #8
	cmp r6, r0
	bge _02256A04
	add r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
_02256A04:
	add r1, r1, #1
	add r5, #0x38
	cmp r1, r4
	blt _022569D8
_02256A0C:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov33_022569C0

	thumb_func_start ov33_02256A14
ov33_02256A14: ; 0x02256A14
	push {r4, r5}
	lsl r4, r0, #0xc
	ldr r0, [r3, #0]
	sub r0, r4, r0
	lsl r4, r1, #0xc
	ldr r1, [r3, #4]
	sub r5, r4, r1
	asr r1, r0, #0xc
	add r4, r0, #0
	mul r4, r1
	add r1, r2, #0
	mul r1, r2
	asr r0, r5, #0xc
	add r3, r5, #0
	mul r3, r0
	lsl r2, r1, #0xc
	add r1, r4, r3
	mov r0, #0
	cmp r2, r1
	ble _02256A3E
	mov r0, #1
_02256A3E:
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov33_02256A14

	thumb_func_start ov33_02256A44
ov33_02256A44: ; 0x02256A44
	push {r3, lr}
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	beq _02256A60
	add r1, r0, #0
	add r1, #0xf8
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xfc
	str r2, [r1, #0]
	mov r1, #1
	bl ov33_022568F4
_02256A60:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov33_02256A44

	thumb_func_start ov33_02256A64
ov33_02256A64: ; 0x02256A64
	push {r3, lr}
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	beq _02256A8E
	add r1, r0, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xe8
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	cmp r1, #6
	bls _02256AA6
	mov r1, #2
	bl ov33_022568F4
	pop {r3, pc}
_02256A8E:
	add r1, r0, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02256AA0
	mov r1, #0
	bl ov33_022568F4
	pop {r3, pc}
_02256AA0:
	mov r1, #3
	bl ov33_022568F4
_02256AA6:
	pop {r3, pc}
	thumb_func_end ov33_02256A64

	thumb_func_start ov33_02256AA8
ov33_02256AA8: ; 0x02256AA8
	push {r3, lr}
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	bne _02256AB8
	mov r1, #0
	bl ov33_022568F4
_02256AB8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov33_02256AA8

	thumb_func_start ov33_02256ABC
ov33_02256ABC: ; 0x02256ABC
	push {r3, lr}
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	bne _02256AE6
	add r1, r0, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xe8
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	cmp r1, #6
	bls _02256B04
	mov r1, #0
	bl ov33_022568F4
	pop {r3, pc}
_02256AE6:
	add r1, r0, #0
	add r1, #0xf8
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02256AFE
	add r2, r0, #0
	mov r1, #1
	add r2, #0xfc
	str r1, [r2, #0]
	bl ov33_022568F4
	pop {r3, pc}
_02256AFE:
	mov r1, #4
	bl ov33_022568F4
_02256B04:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov33_02256ABC

	thumb_func_start ov33_02256B08
ov33_02256B08: ; 0x02256B08
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02256B28
	bl ov33_02256C08
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r4, #0xe8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02256B28:
	bl ov33_02256C40
	cmp r0, #0
	beq _02256B38
	add r0, r4, #0
	mov r1, #0
	bl ov33_022568F4
_02256B38:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov33_02256B08

	thumb_func_start ov33_02256B3C
ov33_02256B3C: ; 0x02256B3C
	push {r0, r1, r2, r3}
	add sp, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov33_02256B3C

	thumb_func_start ov33_02256B44
ov33_02256B44: ; 0x02256B44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ble _02256B92
	ldr r5, [sp]
_02256B54:
	ldr r0, _02256B9C ; =0x00000163
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B74
	ldr r0, _02256B9C ; =0x00000163
	ldr r2, _02256B9C ; =0x00000163
	ldrb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _02256B9C ; =0x00000163
	strb r1, [r5, r0]
	ldrb r2, [r5, r2]
	ldr r0, _02256BA0 ; =0x022578C0
	add r1, r4, #0
	bl ov33_02256B3C
	b _02256B88
_02256B74:
	mov r3, #0x16
	lsl r3, r3, #4
	ldrb r3, [r5, r3]
	ldr r0, [sp]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02256BA4 ; =0x0225782C
	add r2, r4, #0
	ldr r3, [r3, r6]
	blx r3
_02256B88:
	ldr r0, [r7, #0]
	add r4, r4, #1
	add r5, #0x38
	cmp r4, r0
	blt _02256B54
_02256B92:
	ldr r0, _02256BA8 ; =0x022578D4
	bl ov33_02256B3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B9C: .word 0x00000163
_02256BA0: .word 0x022578C0
_02256BA4: .word 0x0225782C
_02256BA8: .word 0x022578D4
	thumb_func_end ov33_02256B44

	thumb_func_start ov33_02256BAC
ov33_02256BAC: ; 0x02256BAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r2, #0x38
	add r4, r6, #0
	mul r4, r2
	add r5, r0, #0
	mov r2, #0x16
	add r3, r5, r4
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	cmp r2, #3
	bne _02256BCA
	bl ov33_02256CC4
_02256BCA:
	mov r0, #0x16
	lsl r0, r0, #4
	add r2, r5, r0
	mov r3, #0x16
	lsl r3, r3, #4
	strb r7, [r2, r4]
	mov r1, #0
	add r0, r5, r4
	add r3, #8
	str r1, [r0, r3]
	mov r3, #0x16
	lsl r3, r3, #4
	sub r3, #0xc
	str r1, [r0, r3]
	mov r3, #0x16
	lsl r3, r3, #4
	sub r3, #8
	str r1, [r0, r3]
	mov r3, #0x16
	lsl r3, r3, #4
	sub r3, r3, #4
	str r1, [r0, r3]
	ldrb r0, [r2, r4]
	cmp r0, #3
	bne _02256C04
	add r0, r5, #0
	add r1, r6, #0
	bl ov33_02256C54
_02256C04:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov33_02256BAC

	thumb_func_start ov33_02256C08
ov33_02256C08: ; 0x02256C08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r1, [r0, #0]
	cmp r1, #0
	ble _02256C34
	add r5, r6, #0
	add r7, r4, #0
_02256C1A:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #5
	bl ov33_02256BAC
	ldr r0, _02256C3C ; =0x00000163
	add r4, r4, #1
	strb r7, [r5, r0]
	ldr r0, [r6, #0]
	add r5, #0x38
	ldr r1, [r0, #0]
	cmp r4, r1
	blt _02256C1A
_02256C34:
	mov r0, #1
	lsl r0, r0, #8
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256C3C: .word 0x00000163
	thumb_func_end ov33_02256C08

	thumb_func_start ov33_02256C40
ov33_02256C40: ; 0x02256C40
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02256C4E
	mov r0, #1
	bx lr
_02256C4E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov33_02256C40

	thumb_func_start ov33_02256C54
ov33_02256C54: ; 0x02256C54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xc
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r5, #0]
	add r0, r0, r7
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _02256C94
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r5, r0
	mov r0, #0x38
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r5, #0x30]
	ldr r1, [r4, r6]
	mov r2, #0
	bl ov25_0225591C
	ldr r1, [r5, #0]
	ldr r0, [r4, r6]
	add r1, r1, r7
	ldrb r1, [r1, #0xf]
	sub r1, r1, #1
	bl ov25_022558C4
	ldr r0, [r4, r6]
	mov r1, #0
	bl ov25_02255914
_02256C94:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov33_02256C54

	thumb_func_start ov33_02256C98
ov33_02256C98: ; 0x02256C98
	push {r3, r4, r5, lr}
	mov r2, #0x4e
	lsl r2, r2, #2
	add r4, r0, r2
	mov r2, #0x38
	add r5, r1, #0
	mul r5, r2
	ldr r0, [r0, #0x30]
	ldr r1, [r4, r5]
	mov r2, #2
	bl ov25_0225591C
	ldr r0, [r4, r5]
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r4, r5]
	mov r1, #0
	bl ov25_02255914
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov33_02256C98

	thumb_func_start ov33_02256CC4
ov33_02256CC4: ; 0x02256CC4
	mov r2, #0x38
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _02256CD8 ; =ov25_02255914
	mov r1, #1
	bx r3
	nop
_02256CD8: .word ov25_02255914
	thumb_func_end ov33_02256CC4

	thumb_func_start ov33_02256CDC
ov33_02256CDC: ; 0x02256CDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl VEC_Mag
	cmp r0, r5
	ble _02256D1A
	add r1, r0, #0
	mul r1, r4
	add r0, r1, #0
	mov r1, #0x64
	bl _u32_div_f
	add r4, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	bl VEC_Normalize
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	add r1, sp, #0
	add r2, r6, #0
	add r3, r6, #0
	bl VEC_MultAdd
_02256D1A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov33_02256CDC

	thumb_func_start ov33_02256D20
ov33_02256D20: ; 0x02256D20
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _02256D30
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02256D30
	mov r0, #1
	bx lr
_02256D30:
	mov r0, #0
	bx lr
	thumb_func_end ov33_02256D20

	thumb_func_start ov33_02256D34
ov33_02256D34: ; 0x02256D34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, _02256E18 ; =0x022578E4
	add r1, r4, #0
	bl ov33_02256B3C
	add r0, r6, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	bne _02256D66
	mov r1, #0x60
	add r2, r1, #0
	add r2, #0xdc
	add r3, r5, r2
	mov r2, #0x38
	mov r0, #3
	mul r2, r4
	lsl r0, r0, #8
	add r2, r3, r2
	bl ov33_02256CDC
	pop {r3, r4, r5, r6, r7, pc}
_02256D66:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02256DC8
	mov r1, #0xa1
	mov r3, #0x52
	lsl r1, r1, #2
	lsl r3, r3, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r7, r5, r3
	mov r3, #0x38
	mul r3, r4
	ldr r1, [r5, r1]
	mov r2, #0x30
	add r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E14
	mov r0, #0xc
	mul r0, r4
	add r0, r6, r0
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _02256DB2
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov33_02256BAC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov33_02256E1C
	pop {r3, r4, r5, r6, r7, pc}
_02256DB2:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov33_02256BAC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov33_02256F34
	pop {r3, r4, r5, r6, r7, pc}
_02256DC8:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, r4
	bne _02256E14
	mov r1, #0xa1
	mov r3, #0x52
	lsl r1, r1, #2
	lsl r3, r3, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r7, r5, r3
	mov r3, #0x38
	mul r3, r4
	ldr r1, [r5, r1]
	mov r2, #8
	add r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E14
	mov r0, #0xc
	mul r0, r4
	add r0, r6, r0
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _02256E0A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
_02256E0A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	bl ov33_02256BAC
_02256E14:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256E18: .word 0x022578E4
	thumb_func_end ov33_02256D34

	thumb_func_start ov33_02256E1C
ov33_02256E1C: ; 0x02256E1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, _02256F2C ; =0x022578F8
	add r1, r4, #0
	bl ov33_02256B3C
	add r0, r6, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256F1C
	mov r0, #0x52
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0x38
	mul r0, r4
	mov r1, #0xa1
	str r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	mov r2, #0x40
	add r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256F1C
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256E70
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	cmp r0, r4
	bne _02256F26
_02256E70:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	mov r2, #8
	add r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E96
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov33_02256BAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02256E96:
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	ldr r1, [sp]
	str r0, [sp, #0xc]
	add r0, sp, #4
	add r1, r7, r1
	add r2, r0, #0
	bl VEC_Subtract
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Normalize
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r6, #0xf
	ldrb r2, [r6, r7]
	ldr r0, _02256F30 ; =0x02257814
	ldr r1, [sp, #4]
	ldrb r0, [r0, r2]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #4]
	ldrb r2, [r6, r7]
	ldr r0, _02256F30 ; =0x02257814
	ldr r1, [sp, #8]
	ldrb r0, [r0, r2]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #4]
	str r0, [sp, #8]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #4]
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r0, r1, #4
	str r0, [sp, #8]
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x4f
	add r3, sp, #4
	lsl r0, r0, #2
	add r2, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add sp, #0x10
	str r0, [r2, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02256F1C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov33_02256BAC
_02256F26:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256F2C: .word 0x022578F8
_02256F30: .word 0x02257814
	thumb_func_end ov33_02256E1C

	thumb_func_start ov33_02256F34
ov33_02256F34: ; 0x02256F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r0, _02257008 ; =0x0225790C
	add r1, r6, #0
	bl ov33_02256B3C
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256FFA
	mov r0, #0x52
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0x38
	mul r0, r6
	mov r1, #0xa1
	str r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	mov r2, #0x40
	add r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256FFA
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	lsl r1, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	add r0, r7, r0
	add r2, r1, #0
	bl VEC_Subtract
	add r0, sp, #4
	add r1, r0, #0
	bl VEC_Normalize
	mov r0, #0xc
	add r7, r6, #0
	mul r7, r0
	add r4, #0xf
	ldrb r2, [r4, r7]
	ldr r0, _0225700C ; =0x02257810
	ldr r1, [sp, #4]
	ldrb r0, [r0, r2]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #4]
	ldrb r2, [r4, r7]
	ldr r0, _0225700C ; =0x02257810
	ldr r1, [sp, #8]
	ldrb r0, [r0, r2]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #4]
	str r0, [sp, #8]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #4]
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r0, r1, #4
	str r0, [sp, #8]
	mov r0, #0x38
	mul r0, r6
	add r1, r5, r0
	mov r0, #0x4f
	add r3, sp, #4
	lsl r0, r0, #2
	add r2, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add sp, #0x10
	str r0, [r2, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02256FFA:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov33_02256BAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257008: .word 0x0225790C
_0225700C: .word 0x02257810
	thumb_func_end ov33_02256F34

	thumb_func_start ov33_02257010
ov33_02257010: ; 0x02257010
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r2, #0
	add r4, r1, #0
	ldr r0, _022570E4 ; =0x02257920
	add r1, r7, #0
	bl ov33_02256B3C
	add r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	beq _022570D6
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r4, r7, #0
	lsl r2, r0, #0xc
	sub r0, r1, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x38
	mul r4, r0
	mov r0, #0x52
	lsl r0, r0, #2
	add r6, r5, r0
	str r2, [sp, #4]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #8
	add r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _022570B2
	add r0, sp, #0
	add r1, r6, r4
	add r2, r0, #0
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	mov r1, #6
	lsl r1, r1, #8
	cmp r0, r1
	ble _02257084
	add r0, sp, #0
	add r1, r0, #0
	bl VEC_Normalize
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
_02257084:
	ldr r1, [sp]
	add r3, sp, #0
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	ldr r1, [sp, #4]
	str r0, [sp]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0x4f
	add r1, r5, r4
	lsl r0, r0, #2
	add r2, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add sp, #0xc
	str r0, [r2, #0]
	pop {r4, r5, r6, r7, pc}
_022570B2:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x40
	add r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _022570D6
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov33_02256BAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022570D6:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov33_02256BAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022570E4: .word 0x02257920
	thumb_func_end ov33_02257010

	thumb_func_start ov33_022570E8
ov33_022570E8: ; 0x022570E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r4, r1, #0
	ldr r0, _02257188 ; =0x02257934
	add r1, r7, #0
	bl ov33_02256B3C
	add r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	beq _02257158
	mov r0, #0x38
	add r4, r7, #0
	mul r4, r0
	mov r0, #0x52
	mov r1, #0xa1
	lsl r0, r0, #2
	add r6, r5, r0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #8
	add r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _02257136
	mov r1, #0x4f
	lsl r1, r1, #2
	mov r3, #0
	add r2, r5, r4
	str r3, [r2, r1]
	add r0, r1, #4
	str r3, [r2, r0]
	add r1, #8
	str r3, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02257136:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x40
	add r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _0225717A
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
_02257158:
	mov r0, #0x38
	add r4, r7, #0
	mul r4, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r4
	bl ov33_02256D20
	cmp r0, #0
	beq _0225717A
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r4
	bl ov33_022567D4
_0225717A:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257188: .word 0x02257934
	thumb_func_end ov33_022570E8

	thumb_func_start ov33_0225718C
ov33_0225718C: ; 0x0225718C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r1, r5, r0
	add r6, r2, #0
	mov r0, #0x38
	mul r0, r6
	add r4, r1, r0
	ldr r0, _02257298 ; =0x02257948
	add r1, r6, #0
	bl ov33_02256B3C
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _022571B6
	cmp r0, #1
	beq _022571DA
	pop {r4, r5, r6, pc}
_022571B6:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl ov33_02256C98
	ldr r0, _0225729C ; =0x00000669
	bl ov25_02254424
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
_022571DA:
	add r0, r4, #0
	add r0, #0x35
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x35
	add r1, #8
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225720C
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x8c
	bls _0225720C
	add r0, r5, #0
	add r1, r6, #0
	bl ov33_02256CC4
	add r0, r4, #0
	mov r1, #1
	add r0, #0x36
	strb r1, [r0]
_0225720C:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xb4
	bls _02257226
	add r0, r4, #0
	mov r1, #0xb4
	add r0, #0x35
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x36
	strb r1, [r0]
_02257226:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	bl sub_0201D15C
	mov r1, #0x13
	mvn r1, r1
	mul r1, r0
	mov r0, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r1, r4, #0
	add r2, r5, #0
	add r0, #0x14
	add r1, #0x20
	add r2, #0xa4
	bl VEC_Add
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xa4
	add r2, #0xa8
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov25_02255900
	mov r2, #2
	ldr r3, [r4, #0x18]
	lsl r2, r2, #0xe
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	add r2, r3, r2
	bl ov25_02255900
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #2
	bne _02257296
	add r4, #8
	add r0, r4, #0
	bl ov33_022567D4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov33_02256BAC
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
_02257296:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02257298: .word 0x02257948
_0225729C: .word 0x00000669
	thumb_func_end ov33_0225718C

	thumb_func_start ov33_022572A0
ov33_022572A0: ; 0x022572A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x10
	str r1, [sp, #4]
	str r0, [sp, #0x34]
_022572AE:
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x34]
	ldr r0, [r0, #0]
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _022572F4
	mov r1, #0x52
	ldr r5, [sp]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r7, r0, r1
	sub r1, #0xc
	add r5, #0x5c
	add r6, r0, r1
_022572D0:
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl VEC_MultAdd
	ldr r0, [sp, #0x24]
	add r5, #0xc
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0]
	add r7, #0x38
	add r6, #0x38
	str r0, [sp, #0x10]
	cmp r1, r0
	blt _022572D0
_022572F4:
	ldr r0, [sp, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _022573BE
	ldr r0, [sp]
	str r0, [sp, #0x14]
	add r6, r0, #0
_02257302:
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0x5c]
	ldr r0, _02257624 ; =0xFFFF6000
	cmp r7, r0
	bge _0225732E
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0225732E
	mov r0, #0xa
	lsl r0, r0, #0xc
	add r0, r7, r0
	bl _s32_div_f
	sub r1, r4, r0
	cmp r1, r4
	bge _0225732E
	mov r0, #2
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	add r4, r1, #0
_0225732E:
	mov r0, #0xd9
	lsl r0, r0, #0xc
	cmp r7, r0
	ble _02257358
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02257358
	mov r0, #0xd9
	lsl r0, r0, #0xc
	sub r0, r7, r0
	bl _s32_div_f
	sub r1, r4, r0
	cmp r1, r4
	bge _02257358
	mov r0, #3
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	add r4, r1, #0
_02257358:
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0x60]
	ldr r0, _02257628 ; =0xFFFEA000
	cmp r7, r0
	bge _02257384
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02257384
	mov r0, #0x16
	lsl r0, r0, #0xc
	add r0, r7, r0
	bl _s32_div_f
	sub r1, r4, r0
	cmp r1, r4
	bge _02257384
	mov r0, #4
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	add r4, r1, #0
_02257384:
	mov r0, #0xb7
	lsl r0, r0, #0xc
	cmp r7, r0
	ble _022573AE
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _022573AE
	mov r0, #0xb7
	lsl r0, r0, #0xc
	sub r0, r7, r0
	bl _s32_div_f
	sub r1, r4, r0
	cmp r1, r4
	bge _022573AE
	mov r0, #5
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	add r4, r1, #0
_022573AE:
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x38
	cmp r5, r0
	blt _02257302
_022573BE:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0225746E
	ldr r0, [sp]
	mov r1, #0x4f
	str r0, [sp, #0x1c]
	add r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x3c]
_022573E2:
	ldr r0, [sp, #0x20]
	mov r5, #0
	cmp r0, #0
	ble _02257450
	ldr r7, [sp, #0x38]
	ldr r6, [sp, #0x3c]
_022573EE:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, sp, #0x68
	bl VEC_Subtract
	add r0, sp, #0x68
	bl VEC_Mag
	mov r1, #2
	lsl r1, r1, #0x10
	str r0, [sp, #0x40]
	cmp r0, r1
	bge _02257444
	add r0, sp, #0x68
	add r1, sp, #0x5c
	bl VEC_Normalize
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	add r2, sp, #0x50
	bl VEC_Subtract
	add r0, sp, #0x50
	add r1, sp, #0x5c
	bl VEC_DotProduct
	add r2, r0, #0
	mov r1, #2
	ldr r0, [sp, #0x40]
	lsl r1, r1, #0x10
	sub r0, r1, r0
	neg r1, r2
	bl _s32_div_f
	sub r0, r4, r0
	cmp r0, r4
	bge _02257444
	mov r1, #1
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x20]
	str r5, [sp, #0x30]
	str r1, [sp, #0x2c]
	add r4, r0, #0
_02257444:
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r7, #0xc
	add r6, #0x38
	cmp r5, r0
	blt _022573EE
_02257450:
	ldr r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0x38
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	str r0, [sp, #0x10]
	cmp r1, r0
	blt _022573E2
_0225746E:
	cmp r4, #0
	bgt _02257474
	b _0225774C
_02257474:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _022574AE
	mov r1, #0x52
	ldr r0, [sp]
	lsl r1, r1, #2
	add r7, r0, r1
	sub r1, #0xc
	add r6, r7, #0
	add r5, r0, r1
_0225748C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl VEC_MultAdd
	ldr r0, [sp, #8]
	add r7, #0x38
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, #0x38
	ldr r1, [r0, #0]
	ldr r0, [sp, #8]
	add r5, #0x38
	cmp r0, r1
	blt _0225748C
_022574AE:
	ldr r0, [sp, #0x28]
	cmp r0, #5
	bls _022574B6
	b _0225773E
_022574B6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022574C2: ; jump table
	.short _0225773E - _022574C2 - 2 ; case 0
	.short _022574CE - _022574C2 - 2 ; case 1
	.short _02257700 - _022574C2 - 2 ; case 2
	.short _02257700 - _022574C2 - 2 ; case 3
	.short _02257720 - _022574C2 - 2 ; case 4
	.short _02257720 - _022574C2 - 2 ; case 5
_022574CE:
	ldr r1, [sp, #0x30]
	mov r0, #0x38
	add r6, r1, #0
	ldr r1, [sp]
	mul r6, r0
	add r1, r1, r6
	str r1, [sp, #0xc]
	mov r1, #0x16
	ldr r2, [sp, #0xc]
	lsl r1, r1, #4
	ldrb r2, [r2, r1]
	cmp r2, #3
	bne _0225759C
	ldr r2, [sp, #0x2c]
	sub r1, #0x24
	add r7, r2, #0
	mul r7, r0
	ldr r0, [sp]
	add r0, r0, r1
	add r5, r0, r7
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _02257502
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225750E
_02257502:
	ldr r0, [sp]
	ldr r1, _0225762C ; =0x00000166
	add r0, r0, r7
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02257582
_0225750E:
	mov r1, #0x52
	ldr r0, [sp]
	lsl r1, r1, #2
	add r1, r0, r1
	add r0, r1, r7
	add r1, r1, r6
	add r2, sp, #0x68
	bl VEC_Subtract
	add r0, sp, #0x68
	add r1, sp, #0x5c
	bl VEC_Normalize
	ldr r0, [sp, #0x5c]
	ldr r2, _02257630 ; =0x0000019A
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0]
	ldr r0, [sp, #0x60]
	ldr r2, _02257630 ; =0x0000019A
	asr r1, r0, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [sp]
	ldr r1, _0225762C ; =0x00000166
	add r0, r0, r7
	mov r2, #1
	strb r2, [r0, r1]
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225757C
	ldr r1, [sp, #0x2c]
	cmp r1, #2
	beq _02257594
_0225757C:
	ldr r1, [sp, #0x2c]
	cmp r1, #1
	b _02257594
_02257582:
	ldr r2, [r5, #0]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	mul r3, r1
	str r3, [r5, #0]
	ldr r2, [r5, #4]
	mul r1, r2
	str r1, [r5, #4]
_02257594:
	ldr r1, _02257634 ; =0x00000163
	mov r2, #0x14
	strb r2, [r0, r1]
	b _0225773E
_0225759C:
	ldr r2, [sp, #0x2c]
	add r7, r2, #0
	mul r7, r0
	ldr r0, [sp]
	add r0, r0, r7
	ldrb r0, [r0, r1]
	cmp r0, #3
	bne _0225766C
	ldr r0, [sp]
	sub r1, #0x24
	add r0, r0, r1
	add r5, r0, r6
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _022575C0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022575CA
_022575C0:
	ldr r1, _0225762C ; =0x00000166
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02257650
_022575CA:
	mov r1, #0x52
	ldr r0, [sp]
	lsl r1, r1, #2
	add r1, r0, r1
	add r0, r1, r6
	add r1, r1, r7
	add r2, sp, #0x68
	bl VEC_Subtract
	add r0, sp, #0x68
	add r1, sp, #0x5c
	bl VEC_Normalize
	ldr r0, [sp, #0x5c]
	ldr r2, _02257630 ; =0x0000019A
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0]
	ldr r0, [sp, #0x60]
	ldr r2, _02257630 ; =0x0000019A
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #4]
	ldr r1, _0225762C ; =0x00000166
	b _02257638
	nop
_02257624: .word 0xFFFF6000
_02257628: .word 0xFFFEA000
_0225762C: .word 0x00000166
_02257630: .word 0x0000019A
_02257634: .word 0x00000163
_02257638:
	ldr r0, [sp, #0xc]
	mov r2, #1
	strb r2, [r0, r1]
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0225764A
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	beq _02257662
_0225764A:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	b _02257662
_02257650:
	ldr r1, [r5, #0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	str r2, [r5, #0]
	ldr r1, [r5, #4]
	mul r0, r1
	str r0, [r5, #4]
_02257662:
	ldr r1, _022577F8 ; =0x00000163
	ldr r0, [sp, #0xc]
	mov r2, #0x14
	strb r2, [r0, r1]
	b _0225773E
_0225766C:
	ldr r0, [sp]
	sub r1, #0x18
	add r1, r0, r1
	add r0, r1, r6
	add r1, r1, r7
	add r2, sp, #0x68
	bl VEC_Subtract
	add r0, sp, #0x68
	bl VEC_Mag
	add r0, sp, #0x68
	add r1, sp, #0x5c
	bl VEC_Normalize
	mov r1, #0x4f
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r0, r0, r6
	add r1, r1, r7
	add r2, sp, #0x50
	bl VEC_Subtract
	add r0, sp, #0x50
	add r1, sp, #0x5c
	bl VEC_DotProduct
	mov r5, #0x4f
	ldr r2, [sp, #0x4c]
	str r0, [sp, #0x44]
	ldr r3, [sp]
	lsl r5, r5, #2
	add r3, r3, r5
	neg r0, r0
	add r1, sp, #0x5c
	add r2, r2, r6
	add r3, r3, r6
	bl VEC_MultAdd
	ldr r3, [sp]
	ldr r2, [sp, #0x4c]
	add r3, r3, r5
	ldr r0, [sp, #0x44]
	add r1, sp, #0x5c
	add r2, r2, r7
	add r3, r3, r7
	bl VEC_MultAdd
	ldr r0, [sp]
	add r1, r5, #0
	ldr r3, [sp]
	add r1, #0x27
	add r0, r0, r6
	mov r2, #0x14
	strb r2, [r0, r1]
	add r3, r3, r7
	strb r2, [r3, r1]
	mov r2, #0
	add r5, r1, #3
	strb r2, [r0, r5]
	add r0, r5, #0
	strb r2, [r3, r0]
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _022576FA
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	beq _0225773E
_022576FA:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	b _0225773E
_02257700:
	ldr r0, [sp, #0x30]
	mov r1, #0x38
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp]
	sub r1, #0x39
	add r0, r0, r2
	mov r2, #0x4f
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mul r1, r3
	str r1, [r0, r2]
	mov r1, #0
	add r2, #0x2a
	strb r1, [r0, r2]
	b _0225773E
_02257720:
	ldr r0, [sp, #0x30]
	mov r1, #0x38
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp]
	sub r1, #0x39
	add r0, r0, r2
	mov r2, #5
	lsl r2, r2, #6
	ldr r3, [r0, r2]
	mul r1, r3
	str r1, [r0, r2]
	mov r1, #0
	add r2, #0x26
	strb r1, [r0, r2]
_0225773E:
	ldr r0, [sp, #0x34]
	sub r0, r0, r4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0225774C
	b _022572AE
_0225774C:
	ldr r0, [sp, #4]
	mov r5, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _022577F2
	ldr r4, [sp]
	mov r1, #0x55
	add r0, r4, #0
	lsl r1, r1, #2
	add r7, r0, r1
	sub r1, #0xc
	add r6, r0, r1
	str r0, [sp, #0x48]
	add r0, #0xa4
	str r0, [sp, #0x48]
_0225776A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhs _022577A6
	mov r0, #0x59
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0225778C
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov25_022558C4
	b _022577A6
_0225778C:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0225779A
	mov r1, #7
	b _0225779C
_0225779A:
	mov r1, #6
_0225779C:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_022558C4
_022577A6:
	ldr r2, [sp, #0x48]
	add r0, r6, #0
	add r1, r7, #0
	bl VEC_Add
	ldr r1, [sp]
	ldr r2, [sp]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r1, #0xa4
	add r2, #0xa8
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov25_02255900
	mov r2, #0x53
	mov r0, #0x4e
	mov r1, #0x52
	lsl r2, r2, #2
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r3, [r4, r2]
	mov r2, #2
	lsl r2, r2, #0xe
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r3, r2
	bl ov25_02255900
	ldr r0, [sp, #4]
	add r5, r5, #1
	ldr r0, [r0, #0]
	add r4, #0x38
	add r7, #0x38
	add r6, #0x38
	cmp r5, r0
	blt _0225776A
_022577F2:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_022577F8: .word 0x00000163
	thumb_func_end ov33_022572A0

	.rodata


	.global Unk_ov33_02257810
Unk_ov33_02257810: ; 0x02257810
	.incbin "incbin/overlay33_rodata.bin", 0x14, 0x18 - 0x14

	.global Unk_ov33_02257814
Unk_ov33_02257814: ; 0x02257814
	.incbin "incbin/overlay33_rodata.bin", 0x18, 0x1C - 0x18

	.global Unk_ov33_02257818
Unk_ov33_02257818: ; 0x02257818
	.incbin "incbin/overlay33_rodata.bin", 0x1C, 0x30 - 0x1C

	.global Unk_ov33_0225782C
Unk_ov33_0225782C: ; 0x0225782C
	.incbin "incbin/overlay33_rodata.bin", 0x30, 0x48 - 0x30

	.global Unk_ov33_02257844
Unk_ov33_02257844: ; 0x02257844
	.incbin "incbin/overlay33_rodata.bin", 0x48, 0x60 - 0x48

	.global Unk_ov33_0225785C
Unk_ov33_0225785C: ; 0x0225785C
	.incbin "incbin/overlay33_rodata.bin", 0x60, 0x7C - 0x60

	.global Unk_ov33_02257878
Unk_ov33_02257878: ; 0x02257878
	.incbin "incbin/overlay33_rodata.bin", 0x7C, 0x24


	.data


	.global Unk_ov33_022578C0
Unk_ov33_022578C0: ; 0x022578C0
	.incbin "incbin/overlay33_data.bin", 0x0, 0x14 - 0x0

	.global Unk_ov33_022578D4
Unk_ov33_022578D4: ; 0x022578D4
	.incbin "incbin/overlay33_data.bin", 0x14, 0x24 - 0x14

	.global Unk_ov33_022578E4
Unk_ov33_022578E4: ; 0x022578E4
	.incbin "incbin/overlay33_data.bin", 0x24, 0x38 - 0x24

	.global Unk_ov33_022578F8
Unk_ov33_022578F8: ; 0x022578F8
	.incbin "incbin/overlay33_data.bin", 0x38, 0x4C - 0x38

	.global Unk_ov33_0225790C
Unk_ov33_0225790C: ; 0x0225790C
	.incbin "incbin/overlay33_data.bin", 0x4C, 0x60 - 0x4C

	.global Unk_ov33_02257920
Unk_ov33_02257920: ; 0x02257920
	.incbin "incbin/overlay33_data.bin", 0x60, 0x74 - 0x60

	.global Unk_ov33_02257934
Unk_ov33_02257934: ; 0x02257934
	.incbin "incbin/overlay33_data.bin", 0x74, 0x88 - 0x74

	.global Unk_ov33_02257948
Unk_ov33_02257948: ; 0x02257948
	.incbin "incbin/overlay33_data.bin", 0x88, 0x13

