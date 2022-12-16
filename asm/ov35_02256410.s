	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov35_02256410
ov35_02256410: ; 0x02256410
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x60
	bl sub_02018144
	add r4, r0, #0
	beq _02256446
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
	bl ov35_02256460
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256446:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov35_02256410

	thumb_func_start ov35_0225644C
ov35_0225644C: ; 0x0225644C
	push {r4, lr}
	add r4, r0, #0
	beq _0225645C
	bl ov35_02256514
	add r0, r4, #0
	bl sub_020181C4
_0225645C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_0225644C

	thumb_func_start ov35_02256460
ov35_02256460: ; 0x02256460
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
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
	mov r1, #0x2f
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x38
	mov r1, #0xc
	mov r2, #0x2d
	mov r3, #0x2e
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x4c
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	add r2, r7, #0
	ldr r0, [r7, #0x20]
	ldr r1, _0225650C ; =0x02256730
	add r2, #0x38
	bl ov25_02255810
	mov r1, #0x50
	str r0, [r7, #0x24]
	bl ov25_02255940
	add r0, r7, #0
	mov r5, #0x16
	str r0, [sp, #0x10]
	add r0, #0x4c
	mov r6, #0
	add r4, r7, #0
	lsl r5, r5, #0xe
	str r0, [sp, #0x10]
_022564DC:
	ldr r0, [r7, #0x20]
	ldr r1, _02256510 ; =0x02256740
	ldr r2, [sp, #0x10]
	bl ov25_02255810
	mov r2, #1
	add r1, r5, #0
	lsl r2, r2, #0x12
	str r0, [r4, #0x28]
	bl ov25_02255900
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, r0
	cmp r6, #4
	blt _022564DC
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov35_022566A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225650C: .word 0x02256730
_02256510: .word 0x02256740
	thumb_func_end ov35_02256460

	thumb_func_start ov35_02256514
ov35_02256514: ; 0x02256514
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	ldr r1, [r6, #0x24]
	bl ov25_022558B0
	mov r4, #0
	add r5, r6, #0
_02256524:
	ldr r0, [r6, #0x20]
	ldr r1, [r5, #0x28]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02256524
	add r0, r6, #0
	add r0, #0x38
	bl ov25_022559B0
	add r6, #0x4c
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov35_02256514

	thumb_func_start ov35_02256548
ov35_02256548: ; 0x02256548
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256568 ; =0x0225676C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256568: .word 0x0225676C
	thumb_func_end ov35_02256548

	thumb_func_start ov35_0225656C
ov35_0225656C: ; 0x0225656C
	ldr r3, _02256574 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256574: .word ov25_02255130
	thumb_func_end ov35_0225656C

	thumb_func_start ov35_02256578
ov35_02256578: ; 0x02256578
	ldr r3, _02256580 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256580: .word ov25_02255154
	thumb_func_end ov35_02256578

	thumb_func_start ov35_02256584
ov35_02256584: ; 0x02256584
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_02256584

	thumb_func_start ov35_02256598
ov35_02256598: ; 0x02256598
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225661C ; =0x02256750
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
	mov r1, #0x2c
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
	mov r1, #0x2b
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256620 ; =0x04001000
	ldr r0, _02256624 ; =0xFFFFE0FF
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
	bl ov35_02256584
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0225661C: .word 0x02256750
_02256620: .word 0x04001000
_02256624: .word 0xFFFFE0FF
	thumb_func_end ov35_02256598

	thumb_func_start ov35_02256628
ov35_02256628: ; 0x02256628
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov35_02256584
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_02256628

	thumb_func_start ov35_02256644
ov35_02256644: ; 0x02256644
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0225665E
	cmp r0, #1
	beq _0225666E
	b _02256676
_0225665E:
	ldr r0, _02256680 ; =0x00000669
	bl ov25_02254424
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov25_022558C4
	b _02256676
_0225666E:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov25_022558C4
_02256676:
	add r0, r5, #0
	bl ov35_02256584
	pop {r3, r4, r5, pc}
	nop
_02256680: .word 0x00000669
	thumb_func_end ov35_02256644

	thumb_func_start ov35_02256684
ov35_02256684: ; 0x02256684
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov35_022566A8
	add r0, r5, #0
	bl ov35_02256584
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov35_02256684

	thumb_func_start ov35_022566A8
ov35_022566A8: ; 0x022566A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r1, #0]
	ldr r5, _0225670C ; =0x04000280
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	lsr r4, r5, #0xb
	lsr r6, r5, #0xb
_022566C2:
	mov r0, #0
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldr r0, _02256710 ; =0x04000290
	str r1, [r0, #0]
	ldr r1, [sp]
	str r1, [r0, #8]
	ldr r0, _02256714 ; =0x04000298
	mov r1, #0
	str r1, [r0, #4]
_022566D6:
	ldrh r0, [r5]
	tst r0, r4
	bne _022566D6
	ldr r1, _02256718 ; =0x040002A0
	ldr r0, [r7, #0x28]
	ldr r1, [r1, #0]
	bl ov25_022558C4
_022566E6:
	ldrh r0, [r5]
	tst r0, r6
	bne _022566E6
	ldr r0, _0225671C ; =0x040002A8
	mov r1, #0xa
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_020E2178
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _022566C2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225670C: .word 0x04000280
_02256710: .word 0x04000290
_02256714: .word 0x04000298
_02256718: .word 0x040002A0
_0225671C: .word 0x040002A8
	thumb_func_end ov35_022566A8

	.rodata


	.global Unk_ov35_02256730
Unk_ov35_02256730: ; 0x02256730
	.incbin "incbin/overlay35_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov35_02256740
Unk_ov35_02256740: ; 0x02256740
	.incbin "incbin/overlay35_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov35_02256750
Unk_ov35_02256750: ; 0x02256750
	.incbin "incbin/overlay35_rodata.bin", 0x30, 0x4C - 0x30

	.global Unk_ov35_0225676C
Unk_ov35_0225676C: ; 0x0225676C
	.incbin "incbin/overlay35_rodata.bin", 0x4C, 0x3C

