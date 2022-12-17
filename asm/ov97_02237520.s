	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov97_02237520
ov97_02237520: ; 0x02237520
	ldr r1, _02237528 ; =0x0223F54C
	str r0, [r1, #0]
	bx lr
	nop
_02237528: .word 0x0223F54C
	thumb_func_end ov97_02237520

	thumb_func_start ov97_0223752C
ov97_0223752C: ; 0x0223752C
	add r1, r0, #0
	ldr r0, _02237538 ; =0x0223F54C
	ldr r3, _0223753C ; =sub_02018144
	ldr r0, [r0, #0]
	bx r3
	nop
_02237538: .word 0x0223F54C
_0223753C: .word sub_02018144
	thumb_func_end ov97_0223752C

	thumb_func_start ov97_02237540
ov97_02237540: ; 0x02237540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x130
	bl sub_020D0928
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsr r1, r0, #0x10
	lsl r3, r0, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r3
	orr r0, r1
	add r6, r2, #0
	orr r6, r0
	ldr r0, _022375D4 ; =0x0223EF9C
	mov r4, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _022375CA
	ldr r5, _022375D8 ; =0x0223EF9C
	add r7, sp, #0x80
_02237576:
	ldr r0, [r5, #0]
	cmp r6, r0
	bne _022375C0
	mov r0, #1
	bl sub_020D0F48
	mov r0, #0x81
	ldr r2, _022375DC ; =0x000004A8
	lsl r0, r0, #0x14
	add r1, r7, #0
	bl sub_020D0C5C
	ldr r0, _022375E0 ; =0x08020000
	add r1, sp, #0
	mov r2, #0x80
	bl sub_020D0C5C
	mov r0, #0
	bl sub_020D0F48
	ldr r0, _022375E4 ; =ov97_0223752C
	ldr r1, _022375E8 ; =sub_020181C4
	blx ov97_0223D5C8
	ldr r1, _022375DC ; =0x000004A8
	ldr r3, _022375EC ; =0x0223DA1C
	add r0, r7, #0
	add r2, sp, #0
	blx ov97_02239498
	cmp r0, #0
	beq _022375C0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022375C0:
	add r5, r5, #4
	ldr r0, [r5, #0]
	add r4, r4, #1
	cmp r4, r0
	blo _02237576
_022375CA:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022375D4: .word 0x0223EF9C
_022375D8: .word 0x0223EF9C
_022375DC: .word 0x000004A8
_022375E0: .word 0x08020000
_022375E4: .word ov97_0223752C
_022375E8: .word sub_020181C4
_022375EC: .word 0x0223DA1C
	thumb_func_end ov97_02237540

	thumb_func_start ov97_022375F0
ov97_022375F0: ; 0x022375F0
	push {r3, lr}
	bl sub_020D0FB4
	bl sub_020D08C0
	cmp r0, #0
	bne _02237602
	mov r0, #0
	pop {r3, pc}
_02237602:
	bl sub_020D0970
	ldr r1, _02237620 ; =0x00003130
	cmp r0, r1
	beq _02237610
	mov r0, #0
	pop {r3, pc}
_02237610:
	bl ov97_02237540
	cmp r0, #0
	beq _0223761C
	mov r0, #1
	pop {r3, pc}
_0223761C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02237620: .word 0x00003130
	thumb_func_end ov97_022375F0

	thumb_func_start ov97_02237624
ov97_02237624: ; 0x02237624
	push {r3, lr}
	bl ov97_022375F0
	cmp r0, #0
	bne _02237632
	mov r0, #0
	pop {r3, pc}
_02237632:
	mov r0, #1
	bl sub_020D0F48
	mov r0, #0x81
	lsl r0, r0, #0x14
	add r1, sp, #0
	bl sub_020D0E40
	mov r0, #0
	bl sub_020D0F48
	ldr r0, [sp]
	pop {r3, pc}
	thumb_func_end ov97_02237624

	thumb_func_start ov97_0223764C
ov97_0223764C: ; 0x0223764C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov97_022375F0
	cmp r0, #0
	bne _0223765E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223765E:
	cmp r4, #0
	bne _02237668
	bl ov97_02237624
	add r4, r0, #0
_02237668:
	mov r0, #1
	bl sub_020D0F48
	ldr r0, _02237690 ; =0x08100100
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020D0CB4
	add r4, r0, #0
	mov r0, #0
	bl sub_020D0F48
	bl sub_020D0A04
	cmp r0, #0
	bne _0223768C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223768C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237690: .word 0x08100100
	thumb_func_end ov97_0223764C

	.rodata


	.global Unk_ov97_0223DA1C
Unk_ov97_0223DA1C: ; 0x0223DA1C
	.incbin "incbin/overlay97_rodata.bin", 0x3A8, 0x80


	.data


	.global Unk_ov97_0223EF9C
Unk_ov97_0223EF9C: ; 0x0223EF9C
	.incbin "incbin/overlay97_data.bin", 0x105C, 0x54


	.bss


	.global Unk_ov97_0223F54C
Unk_ov97_0223F54C: ; 0x0223F54C
	.space 0x4

