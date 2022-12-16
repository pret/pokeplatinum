	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021EF3A8
ov5_021EF3A8: ; 0x021EF3A8
	push {r4, lr}
	mov r1, #0x1c
	bl sub_02018144
	add r4, r0, #0
	bl ov5_021EF444
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF3A8

	thumb_func_start ov5_021EF3BC
ov5_021EF3BC: ; 0x021EF3BC
	push {r4, lr}
	add r4, r0, #0
	beq _021EF3D8
	ldr r1, [r4, #0]
	cmp r1, #1
	bne _021EF3CC
	bl ov5_021EF3FC
_021EF3CC:
	add r0, r4, #0
	bl ov5_021EF444
	add r0, r4, #0
	bl sub_020181C4
_021EF3D8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF3BC

	thumb_func_start ov5_021EF3DC
ov5_021EF3DC: ; 0x021EF3DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EF3F8 ; =ov5_021EF47C
	add r1, r4, #0
	bl sub_020177BC
	cmp r0, #1
	beq _021EF3F0
	bl sub_02022974
_021EF3F0:
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_021EF3F8: .word ov5_021EF47C
	thumb_func_end ov5_021EF3DC

	thumb_func_start ov5_021EF3FC
ov5_021EF3FC: ; 0x021EF3FC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	cmp r0, #1
	beq _021EF410
	bl sub_02022974
_021EF410:
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF3FC

	thumb_func_start ov5_021EF418
ov5_021EF418: ; 0x021EF418
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl ov5_021EF49C
	add r4, r0, #0
	bne _021EF42A
	bl sub_02022974
_021EF42A:
	cmp r4, #0
	beq _021EF436
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	str r0, [r4, #0]
_021EF436:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF418

	thumb_func_start ov5_021EF43C
ov5_021EF43C: ; 0x021EF43C
	ldr r3, _021EF440 ; =ov5_021EF46C
	bx r3
	; .align 2, 0
_021EF440: .word ov5_021EF46C
	thumb_func_end ov5_021EF43C

	thumb_func_start ov5_021EF444
ov5_021EF444: ; 0x021EF444
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_021EF44C:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021EF44C
	mov r4, #0
	str r4, [r0, #0]
	add r5, r0, #4
_021EF45A:
	add r0, r5, #0
	bl ov5_021EF46C
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #2
	blt _021EF45A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF444

	thumb_func_start ov5_021EF46C
ov5_021EF46C: ; 0x021EF46C
	mov r2, #0
	ldr r1, _021EF478 ; =ov5_021EF498
	str r2, [r0, #0]
	str r1, [r0, #8]
	str r2, [r0, #4]
	bx lr
	; .align 2, 0
_021EF478: .word ov5_021EF498
	thumb_func_end ov5_021EF46C

	thumb_func_start ov5_021EF47C
ov5_021EF47C: ; 0x021EF47C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #4
_021EF484:
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	blx r2
	add r6, r6, #1
	add r5, #0xc
	add r4, #0xc
	cmp r6, #2
	blt _021EF484
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EF47C

	thumb_func_start ov5_021EF498
ov5_021EF498: ; 0x021EF498
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EF498

	thumb_func_start ov5_021EF49C
ov5_021EF49C: ; 0x021EF49C
	mov r2, #0
	add r3, r0, #0
_021EF4A0:
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _021EF4B0
	add r1, r0, #4
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	bx lr
_021EF4B0:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #2
	blt _021EF4A0
	mov r0, #0
	bx lr
	thumb_func_end ov5_021EF49C