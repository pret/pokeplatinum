	.include "macros/function.inc"
	.include "include/ov29_022561C0.inc"

	

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

	.rodata


	.global Unk_ov29_02256B3C
Unk_ov29_02256B3C: ; 0x02256B3C
	.incbin "incbin/overlay29_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov29_02256B44
Unk_ov29_02256B44: ; 0x02256B44
	.incbin "incbin/overlay29_rodata.bin", 0x8, 0xC

	.section .sinit, 4
	.word ov29_022561C0
