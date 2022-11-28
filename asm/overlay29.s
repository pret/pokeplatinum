	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov29_022561C0
ov29_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov29_022561D4
	ldr r1, _022561D0 ; =ov29_02256324
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov29_022561D4
_022561D0: .word ov29_02256324
	thumb_func_end ov29_022561C0

	thumb_func_start ov29_022561D4
ov29_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x17
	add r5, r0, #0
	mov r0, #8
	lsl r1, r1, #8
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256214
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov29_0225621C
	cmp r0, #0
	beq _0225620E
	ldr r0, _02256218 ; =ov29_022562AC
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620E
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620E:
	add r0, r4, #0
	bl sub_020181C4
_02256214:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256218: .word ov29_022562AC
	thumb_func_end ov29_022561D4

	thumb_func_start ov29_0225621C
ov29_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r2, _02256274 ; =0x000016DA
	add r0, #0x14
	mov r1, #0
	add r6, r3, #0
	bl sub_020D5124
	ldr r0, _02256278 ; =0x000016F0
	mov r1, #1
	str r6, [r5, r0]
	str r1, [r5, #8]
	add r0, r0, #4
	add r1, r5, #0
	add r0, r5, r0
	add r1, #8
	add r2, r7, #0
	bl ov29_022566C8
	cmp r0, #0
	beq _02256270
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	mov r0, #8
	str r0, [sp]
	ldr r0, _0225627C ; =0x02256B3C
	ldr r2, _02256280 ; =ov29_022562F4
	mov r1, #2
	add r3, r5, #0
	bl ov25_02255ACC
	ldr r1, _02256284 ; =0x000016FC
	str r0, [r5, r1]
	sub r0, r1, #4
	str r4, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256270:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256274: .word 0x000016DA
_02256278: .word 0x000016F0
_0225627C: .word 0x02256B3C
_02256280: .word ov29_022562F4
_02256284: .word 0x000016FC
	thumb_func_end ov29_0225621C

	thumb_func_start ov29_02256288
ov29_02256288: ; 0x02256288
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022562A4 ; =0x000016FC
	ldr r0, [r4, r0]
	bl ov25_02255B34
	ldr r0, _022562A8 ; =0x000016F4
	ldr r0, [r4, r0]
	bl ov29_02256770
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_022562A4: .word 0x000016FC
_022562A8: .word 0x000016F4
	thumb_func_end ov29_02256288

	thumb_func_start ov29_022562AC
ov29_022562AC: ; 0x022562AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562E8
	ldr r1, _022562EC ; =0x000016F8
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562F0 ; =0x02256B44
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562E8
	add r0, r4, #0
	bl ov29_02256288
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _022562EC ; =0x000016F8
	ldr r0, [r4, r0]
	bl ov25_02254260
_022562E8:
	pop {r3, r4, r5, pc}
	nop
_022562EC: .word 0x000016F8
_022562F0: .word 0x02256B44
	thumb_func_end ov29_022562AC

	thumb_func_start ov29_022562F4
ov29_022562F4: ; 0x022562F4
	push {r3, lr}
	cmp r2, #1
	bne _0225631C
	ldr r1, [r3, #8]
	cmp r1, #1
	bne _02256304
	cmp r0, #0
	beq _0225630C
_02256304:
	cmp r1, #0
	bne _0225631C
	cmp r0, #1
	bne _0225631C
_0225630C:
	ldr r0, [r3, #8]
	mov r1, #1
	eor r0, r1
	str r0, [r3, #8]
	ldr r0, _02256320 ; =0x000016F4
	ldr r0, [r3, r0]
	bl ov29_022567B4
_0225631C:
	pop {r3, pc}
	nop
_02256320: .word 0x000016F4
	thumb_func_end ov29_022562F4

	thumb_func_start ov29_02256324
ov29_02256324: ; 0x02256324
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov29_02256324

	thumb_func_start ov29_0225632C
ov29_0225632C: ; 0x0225632C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256334
	b _02256336
_02256334:
	mov r1, #2
_02256336:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov29_0225632C

	thumb_func_start ov29_02256340
ov29_02256340: ; 0x02256340
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256350
	cmp r0, #1
	beq _02256362
	b _02256380
_02256350:
	ldr r0, _02256384 ; =0x000016F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov29_022567B4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256380
_02256362:
	ldr r0, _02256384 ; =0x000016F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov29_022567D8
	cmp r0, #0
	beq _02256380
	ldr r0, _02256388 ; =0x000016F8
	ldr r0, [r4, r0]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov29_0225632C
_02256380:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256384: .word 0x000016F4
_02256388: .word 0x000016F8
	thumb_func_end ov29_02256340

	thumb_func_start ov29_0225638C
ov29_0225638C: ; 0x0225638C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrb r1, [r5, #2]
	cmp r1, #0
	beq _0225639E
	mov r1, #2
	bl ov29_0225632C
_0225639E:
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _022563F4
	ldr r0, _022563FC ; =0x000016F8
	ldr r0, [r5, r0]
	bl ov25_0225450C
	cmp r0, #0
	bne _022563F4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _022563DC
	add r0, r5, #0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #0x10]
	bl ov29_02256460
	cmp r0, #0
	beq _022563D6
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r3, [r5, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl ov29_022564F4
	b _022563F4
_022563D6:
	mov r0, #0
	strb r0, [r5, #3]
	b _022563F4
_022563DC:
	add r0, r5, #0
	bl ov29_02256404
	cmp r0, #0
	beq _022563F4
	ldr r0, _02256400 ; =0x000016F4
	mov r1, #3
	ldr r0, [r5, r0]
	bl ov29_022567B4
	mov r0, #1
	strb r0, [r5, #3]
_022563F4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022563FC: .word 0x000016F8
_02256400: .word 0x000016F4
	thumb_func_end ov29_0225638C

	thumb_func_start ov29_02256404
ov29_02256404: ; 0x02256404
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_0225446C
	cmp r0, #0
	beq _02256458
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r1, #0x10
	sub r2, #0x10
	cmp r1, #0x9c
	bhs _02256426
	mov r0, #1
	b _02256428
_02256426:
	mov r0, #0
_02256428:
	cmp r2, #0x96
	bhs _02256430
	mov r3, #1
	b _02256432
_02256430:
	mov r3, #0
_02256432:
	tst r0, r3
	beq _02256458
	lsr r3, r1, #1
	lsr r2, r2, #1
	mov r0, #0x4b
	mul r0, r3
	add r0, r4, r0
	str r3, [sp, #4]
	str r2, [sp]
	ldr r1, [r4, #8]
	add r0, r0, r2
	strb r1, [r0, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	ldr r0, [sp]
	add sp, #8
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_02256458:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov29_02256404

	thumb_func_start ov29_02256460
ov29_02256460: ; 0x02256460
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_0225446C
	cmp r0, #0
	beq _022564A6
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r1, #0x10
	sub r2, #0x10
	cmp r1, #0x9c
	bhs _02256482
	mov r0, #1
	b _02256484
_02256482:
	mov r0, #0
_02256484:
	cmp r2, #0x96
	bhs _0225648C
	mov r3, #1
	b _0225648E
_0225648C:
	mov r3, #0
_0225648E:
	tst r0, r3
	beq _022564A6
	lsr r1, r1, #1
	lsr r0, r2, #1
	str r1, [sp, #4]
	str r0, [sp]
	str r1, [r4, #0xc]
	ldr r0, [sp]
	add sp, #8
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_022564A6:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov29_02256460

	thumb_func_start ov29_022564AC
ov29_022564AC: ; 0x022564AC
	push {r4, r5, r6, r7}
	sub r3, r1, #2
	bpl _022564B4
	mov r3, #0
_022564B4:
	sub r4, r2, #2
	bpl _022564BA
	mov r4, #0
_022564BA:
	add r1, r1, #2
	cmp r1, #0x4e
	blt _022564C2
	mov r1, #0x4e
_022564C2:
	add r2, r2, #2
	cmp r2, #0x4b
	blt _022564CA
	mov r2, #0x4b
_022564CA:
	cmp r3, r1
	bge _022564EE
	mov r5, #0x4b
	mul r5, r3
	add r7, r0, r5
	mov r5, #0
_022564D6:
	add r6, r4, #0
	cmp r4, r2
	bge _022564E6
_022564DC:
	add r0, r7, r6
	add r6, r6, #1
	strb r5, [r0, #0x14]
	cmp r6, r2
	blt _022564DC
_022564E6:
	add r3, r3, #1
	add r7, #0x4b
	cmp r3, r1
	blt _022564D6
_022564EE:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov29_022564AC

	thumb_func_start ov29_022564F4
ov29_022564F4: ; 0x022564F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r2, #0
	add r6, r1, #0
	str r3, [sp]
	str r0, [sp, #0x30]
	cmp r4, r0
	bne _02256510
	add r0, r3, #0
	cmp r6, r0
	bne _02256510
	b _02256684
_02256510:
	ldr r0, [sp]
	cmp r0, r6
	bls _0225651A
	sub r1, r0, r6
	b _0225651C
_0225651A:
	sub r1, r6, r0
_0225651C:
	ldr r0, [sp, #0x30]
	cmp r0, r4
	bls _02256526
	sub r2, r0, r4
	b _02256528
_02256526:
	sub r2, r4, r0
_02256528:
	cmp r1, r2
	bls _022565C8
	ldr r0, [sp]
	cmp r0, r6
	bls _02256538
	mov r0, #1
	str r0, [sp, #8]
	b _0225653E
_02256538:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #8]
_0225653E:
	cmp r1, #0
	beq _02256550
	ldr r0, [sp, #0x30]
	sub r0, r0, r4
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #0x14]
	b _02256554
_02256550:
	mov r0, #0
	str r0, [sp, #0x14]
_02256554:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #0xc
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r6, r6, r0
	ldr r0, [sp]
	cmp r6, r0
	beq _02256656
	mov r1, #0x4b
	add r0, r6, #0
	mul r0, r1
	add r7, r5, r0
	ldr r0, [sp, #8]
	mul r1, r0
	str r1, [sp, #0x10]
_02256574:
	ldr r0, [sp, #0x18]
	asr r4, r0, #0xc
	cmp r6, #0x4e
	bhs _022565B0
	cmp r4, #0x4b
	bhs _022565B0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0225658E
	add r0, r7, r4
	ldrb r0, [r0, #0x14]
	cmp r1, r0
	beq _022565B0
_0225658E:
	cmp r1, #0
	bne _0225659C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov29_022564AC
_0225659C:
	ldr r1, [r5, #8]
	add r0, r7, r4
	strb r1, [r0, #0x14]
	str r6, [r5, #0xc]
	ldr r0, _02256688 ; =0x000016F4
	str r4, [r5, #0x10]
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov29_022567B4
_022565B0:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r7, r7, r0
	ldr r0, [sp, #8]
	add r6, r6, r0
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp]
	cmp r6, r0
	bne _02256574
	b _02256656
_022565C8:
	ldr r0, [sp, #0x30]
	cmp r0, r4
	bls _022565D4
	mov r0, #1
	str r0, [sp, #4]
	b _022565DA
_022565D4:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
_022565DA:
	cmp r2, #0
	beq _022565EE
	ldr r0, [sp]
	add r1, r2, #0
	sub r0, r0, r6
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #0xc]
	b _022565F2
_022565EE:
	mov r0, #0
	str r0, [sp, #0xc]
_022565F2:
	ldr r0, [sp, #0xc]
	lsl r1, r6, #0xc
	add r7, r1, r0
	ldr r0, [sp, #4]
	add r4, r4, r0
	ldr r0, [sp, #0x30]
	cmp r4, r0
	beq _02256656
_02256602:
	asr r6, r7, #0xc
	cmp r4, #0x4b
	bhs _02256648
	cmp r6, #0x4e
	bhs _02256648
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02256620
	mov r1, #0x4b
	mul r1, r6
	add r1, r5, r1
	add r1, r4, r1
	ldrb r1, [r1, #0x14]
	cmp r0, r1
	beq _02256648
_02256620:
	cmp r0, #0
	bne _0225662E
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov29_022564AC
_0225662E:
	mov r1, #0x4b
	mul r1, r6
	add r1, r5, r1
	ldr r0, [r5, #8]
	add r1, r4, r1
	strb r0, [r1, #0x14]
	str r6, [r5, #0xc]
	ldr r0, _02256688 ; =0x000016F4
	str r4, [r5, #0x10]
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov29_022567B4
_02256648:
	ldr r0, [sp, #4]
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r7, r7, r0
	ldr r0, [sp, #0x30]
	cmp r4, r0
	bne _02256602
_02256656:
	ldr r0, [sp, #0x30]
	cmp r0, #0x4b
	bhs _02256684
	ldr r0, [sp]
	cmp r0, #0x4e
	bhs _02256684
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02256672
	ldr r1, [sp]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	bl ov29_022564AC
_02256672:
	ldr r0, [sp]
	mov r1, #3
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [r5, #0x10]
	ldr r0, _02256688 ; =0x000016F4
	ldr r0, [r5, r0]
	bl ov29_022567B4
_02256684:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256688: .word 0x000016F4
	thumb_func_end ov29_022564F4

	thumb_func_start ov29_0225668C
ov29_0225668C: ; 0x0225668C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225669C
	cmp r0, #1
	beq _022566AE
	b _022566BE
_0225669C:
	ldr r0, _022566C4 ; =0x000016F4
	mov r1, #5
	ldr r0, [r4, r0]
	bl ov29_022567B4
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022566BE
_022566AE:
	ldr r0, _022566C4 ; =0x000016F4
	ldr r0, [r4, r0]
	bl ov29_022567E4
	cmp r0, #0
	beq _022566BE
	mov r0, #1
	pop {r4, pc}
_022566BE:
	mov r0, #0
	pop {r4, pc}
	nop
_022566C4: .word 0x000016F4
	thumb_func_end ov29_0225668C

	thumb_func_start ov29_022566C8
ov29_022566C8: ; 0x022566C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x74
	bl sub_02018144
	add r4, r0, #0
	beq _02256722
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _022566E8
	bl sub_02022974
_022566E8:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	bl ov25_02255090
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _02256700
	bl sub_02022974
_02256700:
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x50]
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _0225671C
	bl sub_02022974
_0225671C:
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256722:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov29_022566C8

	thumb_func_start ov29_02256728
ov29_02256728: ; 0x02256728
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x70]
	add r1, r0, #0
	beq _02256764
	ldr r0, [r4, #4]
	ldr r2, _02256768 ; =0x02256B50
	bl sub_0201A8D4
	mov r2, #0xbe
	ldr r1, [r4, #0]
	ldr r0, _0225676C ; =0x000016E8
	lsl r2, r2, #6
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0xc]
	bl sub_02099DD0
	cmp r0, #0
	bne _02256760
	ldr r0, [r4, #0x70]
	mov r1, #4
	bl sub_0201ADA4
_02256760:
	mov r0, #1
	pop {r4, pc}
_02256764:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256768: .word 0x02256B50
_0225676C: .word 0x000016E8
	thumb_func_end ov29_02256728

	thumb_func_start ov29_02256770
ov29_02256770: ; 0x02256770
	push {r4, lr}
	add r4, r0, #0
	beq _022567AC
	mov r0, #7
	bl sub_0201833C
	cmp r0, #0
	bne _02256784
	bl sub_02022974
_02256784:
	ldr r2, [r4, #0x70]
	cmp r2, #0
	beq _022567A6
	ldr r1, [r4, #0]
	ldr r0, _022567B0 ; =0x000016E8
	ldr r0, [r1, r0]
	ldr r1, [r2, #0xc]
	mov r2, #0xbe
	lsl r2, r2, #6
	bl sub_02099DA8
	ldr r0, [r4, #0x70]
	bl sub_0201A8FC
	ldr r0, [r4, #0x70]
	bl sub_020181C4
_022567A6:
	add r0, r4, #0
	bl sub_020181C4
_022567AC:
	pop {r4, pc}
	nop
_022567B0: .word 0x000016E8
	thumb_func_end ov29_02256770

	thumb_func_start ov29_022567B4
ov29_022567B4: ; 0x022567B4
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022567D4 ; =0x02256BB0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022567D4: .word 0x02256BB0
	thumb_func_end ov29_022567B4

	thumb_func_start ov29_022567D8
ov29_022567D8: ; 0x022567D8
	ldr r3, _022567E0 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022567E0: .word ov25_02255130
	thumb_func_end ov29_022567D8

	thumb_func_start ov29_022567E4
ov29_022567E4: ; 0x022567E4
	ldr r3, _022567EC ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022567EC: .word ov25_02255154
	thumb_func_end ov29_022567E4

	thumb_func_start ov29_022567F0
ov29_022567F0: ; 0x022567F0
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov29_022567F0

	thumb_func_start ov29_02256804
ov29_02256804: ; 0x02256804
	push {r4, r5, lr}
	sub sp, #0x14
	mov r0, #8
	add r4, r1, #0
	bl sub_0201833C
	cmp r0, #0
	bne _02256818
	bl sub_02022974
_02256818:
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022568F8 ; =0x02256B58
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	ldr r2, _022568FC ; =0x02256B74
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _02256846
	bl sub_02022974
_02256846:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x1e
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
	mov r1, #0x1f
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _02256890
	bl sub_02022974
_02256890:
	add r0, r5, #0
	bl ov29_02256728
	ldr r0, [r5, #0x70]
	bl sub_0201A954
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568AA
	bl sub_02022974
_022568AA:
	add r0, r5, #0
	bl ov29_02256ABC
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568BE
	bl sub_02022974
_022568BE:
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _02256900 ; =0x04001000
	ldr r0, _02256904 ; =0xFFFFE0FF
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
	bl ov29_022567F0
	mov r0, #8
	bl sub_0201833C
	cmp r0, #0
	bne _022568F4
	bl sub_02022974
_022568F4:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_022568F8: .word 0x02256B58
_022568FC: .word 0x02256B74
_02256900: .word 0x04001000
_02256904: .word 0xFFFFE0FF
	thumb_func_end ov29_02256804

	thumb_func_start ov29_02256908
ov29_02256908: ; 0x02256908
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	ldr r0, [r4, #0x68]
	bne _0225692E
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	mov r1, #3
	bl ov25_022558C4
	b _0225693C
_0225692E:
	mov r1, #1
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	mov r1, #2
	bl ov25_022558C4
_0225693C:
	ldr r0, _0225694C ; =0x00000663
	bl ov25_02254424
	add r0, r5, #0
	bl ov29_022567F0
	pop {r3, r4, r5, pc}
	nop
_0225694C: .word 0x00000663
	thumb_func_end ov29_02256908

	thumb_func_start ov29_02256950
ov29_02256950: ; 0x02256950
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #0x70]
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov29_022567F0
	pop {r4, pc}
	thumb_func_end ov29_02256950

	thumb_func_start ov29_02256968
ov29_02256968: ; 0x02256968
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r4, r0, #3
	sub r0, r3, #1
	add r1, r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r3, r1, #3
	ldr r1, [sp, #0x18]
	asr r0, r0, #3
	sub r1, r1, #1
	add r2, r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	sub r1, r1, r3
	mov r2, #0x14
	sub r0, r0, r4
	mul r2, r3
	add r1, r1, #1
	add r4, r4, r2
	sub r2, r1, #1
	add r0, r0, #1
	str r2, [sp]
	cmp r1, #0
	beq _022569DA
	lsl r5, r4, #5
	lsl r7, r0, #5
_022569B0:
	add r0, r6, r5
	add r1, r7, #0
	bl sub_020C2C54
	add r1, r4, #0
	add r1, #0xc
	add r0, r6, r5
	lsl r1, r1, #5
	add r2, r7, #0
	bl sub_020C090C
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r1, [sp]
	add r5, r5, r0
	add r0, r1, #0
	sub r0, r0, #1
	add r4, #0x14
	str r0, [sp]
	cmp r1, #0
	bne _022569B0
_022569DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov29_02256968

	thumb_func_start ov29_022569DC
ov29_022569DC: ; 0x022569DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r0, r1, #0
	str r1, [sp, #8]
	bl ov25_0225523C
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _02256A44
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	lsl r1, r1, #1
	mov r5, #8
	lsl r0, r0, #1
	sub r6, r1, #4
	sub r4, r0, #4
	str r5, [sp, #0xc]
	cmp r6, #0
	bge _02256A0C
	add r0, r5, r6
	str r0, [sp, #0xc]
	mov r6, #0
_02256A0C:
	cmp r4, #0
	bge _02256A14
	add r5, r5, r4
	mov r4, #0
_02256A14:
	ldr r0, [sp, #0xc]
	lsl r2, r6, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r3, r4, #0x10
	ldr r0, [r7, #0x70]
	mov r1, #4
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	str r5, [sp]
	ldr r0, [r7, #0x70]
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0xc]
	add r1, r6, #0
	add r2, r4, #0
	bl ov29_02256968
	b _02256A72
_02256A44:
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	lsl r5, r1, #1
	lsl r4, r0, #1
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r5, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r7, #0x70]
	mov r1, #1
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r3, #2
	str r3, [sp]
	ldr r0, [r7, #0x70]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	bl ov29_02256968
_02256A72:
	ldr r0, [sp, #8]
	bl ov29_022567F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov29_022569DC

	thumb_func_start ov29_02256A7C
ov29_02256A7C: ; 0x02256A7C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #0x70]
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov29_022567F0
	pop {r4, pc}
	thumb_func_end ov29_02256A7C

	thumb_func_start ov29_02256A94
ov29_02256A94: ; 0x02256A94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	bl ov29_02256B18
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov29_022567F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov29_02256A94

	thumb_func_start ov29_02256ABC
ov29_02256ABC: ; 0x02256ABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x20
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x54
	mov r1, #0xc
	mov r2, #0x21
	mov r3, #0x22
	bl ov25_02255958
	cmp r0, #0
	beq _02256B10
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x54
	ldr r4, _02256B14 ; =0x02256B90
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02256AFA:
	ldr r0, [r7, #0x50]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x68]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _02256AFA
_02256B10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256B14: .word 0x02256B90
	thumb_func_end ov29_02256ABC

	thumb_func_start ov29_02256B18
ov29_02256B18: ; 0x02256B18
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256B20:
	ldr r0, [r6, #0x50]
	ldr r1, [r5, #0x68]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blo _02256B20
	add r6, #0x54
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov29_02256B18
	; 0x02256B3C


	.rodata
	.incbin "incbin/overlay29_rodata.bin"

	.section .sinit, 4
	.word ov29_022561C0

	.bss
	.space 0x0
