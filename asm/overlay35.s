	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov35_022561C0
ov35_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov35_022561D4
	ldr r1, _022561D0 ; =ov35_022562EC
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov35_022561D4
_022561D0: .word ov35_022562EC
	thumb_func_end ov35_022561C0

	thumb_func_start ov35_022561D4
ov35_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x20
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov35_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov35_022562B0
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	add r0, r4, #0
	bl sub_020181C4
_02256212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .word ov35_022562B0
	thumb_func_end ov35_022561D4

	thumb_func_start ov35_0225621C
ov35_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	add r1, r5, #0
	add r7, r2, #0
	add r4, r3, #0
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r1, #8
	mov r2, #4
	bl sub_02099D7C
	cmp r0, #0
	bne _0225623E
	mov r0, #0
	str r0, [r5, #8]
_0225623E:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #8
	add r2, r7, #0
	str r4, [r5, #4]
	bl ov35_02256410
	cmp r0, #0
	beq _02256276
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _0225627C ; =0x02256720
	ldr r2, _02256280 ; =ov35_02256284
	mov r1, #1
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	str r6, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256276:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225627C: .word 0x02256720
_02256280: .word ov35_02256284
	thumb_func_end ov35_0225621C

	thumb_func_start ov35_02256284
ov35_02256284: ; 0x02256284
	cmp r0, #0
	bne _0225628A
	str r1, [r3, #0x1c]
_0225628A:
	bx lr
	thumb_func_end ov35_02256284

	thumb_func_start ov35_0225628C
ov35_0225628C: ; 0x0225628C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	mov r2, #4
	bl sub_02099D54
	ldr r0, [r4, #0x18]
	bl ov25_02255B34
	ldr r0, [r4, #0x10]
	bl ov35_0225644C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov35_0225628C

	thumb_func_start ov35_022562B0
ov35_022562B0: ; 0x022562B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562E6
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562E8 ; =0x02256724
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562E6
	add r0, r4, #0
	bl ov35_0225628C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x14]
	bl ov25_02254260
_022562E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562E8: .word 0x02256724
	thumb_func_end ov35_022562B0

	thumb_func_start ov35_022562EC
ov35_022562EC: ; 0x022562EC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov35_022562EC

	thumb_func_start ov35_022562F4
ov35_022562F4: ; 0x022562F4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562FC
	b _022562FE
_022562FC:
	mov r1, #2
_022562FE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov35_022562F4

	thumb_func_start ov35_02256308
ov35_02256308: ; 0x02256308
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256318
	cmp r0, #1
	beq _02256328
	b _02256342
_02256318:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ov35_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256342
_02256328:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ov35_0225656C
	cmp r0, #0
	beq _02256342
	ldr r0, [r4, #0x14]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov35_022562F4
_02256342:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_02256308

	thumb_func_start ov35_02256348
ov35_02256348: ; 0x02256348
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4, #2]
	add r1, r4, #0
	add r1, #8
	cmp r2, #0
	beq _02256360
	mov r1, #2
	bl ov35_022562F4
	mov r0, #0
	pop {r4, pc}
_02256360:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225636C
	cmp r0, #1
	beq _0225638A
	b _022563D2
_0225636C:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _022563D2
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563D2
_0225638A:
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	bne _022563A4
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	strb r0, [r4, #1]
	b _022563D2
_022563A4:
	cmp r0, #3
	bne _022563D2
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r1, #0]
	add r2, r0, #1
	ldr r0, _022563D8 ; =0x0000270F
	str r2, [r1, #0]
	cmp r2, r0
	bls _022563BC
	mov r0, #0
	str r0, [r1, #0]
_022563BC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ov35_02256548
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ov35_02256548
	mov r0, #0
	str r0, [r4, #0x1c]
	strb r0, [r4, #1]
_022563D2:
	mov r0, #0
	pop {r4, pc}
	nop
_022563D8: .word 0x0000270F
	thumb_func_end ov35_02256348

	thumb_func_start ov35_022563DC
ov35_022563DC: ; 0x022563DC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563EC
	cmp r0, #1
	beq _022563FC
	b _0225640A
_022563EC:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov35_02256548
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225640A
_022563FC:
	ldr r0, [r4, #0x10]
	bl ov35_02256578
	cmp r0, #0
	beq _0225640A
	mov r0, #1
	pop {r4, pc}
_0225640A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov35_022563DC

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
	; 0x02256720

	.incbin "data/overlay35.bin"
