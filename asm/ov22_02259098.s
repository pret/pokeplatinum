	.include "macros/function.inc"
	.include "include/ov22_02259098.inc"

	

	.text


	thumb_func_start ov22_02259098
ov22_02259098: ; 0x02259098
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	str r2, [sp]
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	mov r3, #0xe
	bl sub_02006FE8
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x76
	bl ov22_02255340
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259098

	thumb_func_start ov22_022590C0
ov22_022590C0: ; 0x022590C0
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ov22_022590D4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_022590C0

	thumb_func_start ov22_022590D4
ov22_022590D4: ; 0x022590D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_02075F00
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0xc0
	mov r3, #0x38
	bl sub_02007C34
	str r0, [r5, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259270
	ldr r1, [sp, #0x1c]
	mov r2, #0x38
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x18]
	sub r0, r2, r0
	strb r0, [r5, #4]
	ldr r0, [sp, #0x18]
	mov r1, #0xc0
	add r0, #0x38
	strb r0, [r5, #5]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	strb r0, [r5, #6]
	ldr r0, [sp, #0x1c]
	add r0, #0xc0
	strb r0, [r5, #7]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r5, #4
	bl ov22_02259448
	add r0, r6, #0
	mov r1, #2
	bl sub_020765B8
	mov r2, #0
	str r2, [sp]
	add r7, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [sp, #0x38]
	bl sub_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl sub_020A7118
	ldr r0, [sp, #0x14]
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _02259196
	ldr r2, [sp, #0x14]
	add r3, r5, #0
	ldrh r1, [r2, #2]
	ldr r0, [r2, #0x14]
	ldrh r2, [r2]
	lsl r1, r1, #3
	add r3, #8
	lsl r2, r2, #3
	bl ov22_022593B8
	b _022591AC
_02259196:
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #2]
	lsl r1, r1, #3
	bl ov22_0225936C
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r7, [r5, #0xb]
	strb r7, [r5, #0xa]
_022591AC:
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	str r6, [r5, #0xc]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022590D4

	thumb_func_start ov22_022591B8
ov22_022591B8: ; 0x022591B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02007DC8
	mov r1, #0x10
	mov r0, #0
_022591C6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _022591C6
	pop {r4, pc}
	thumb_func_end ov22_022591B8

	thumb_func_start ov22_022591D0
ov22_022591D0: ; 0x022591D0
	ldr r3, _022591DC ; =sub_02007DEC
	add r2, r1, #0
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	nop
_022591DC: .word sub_02007DEC
	thumb_func_end ov22_022591D0

	thumb_func_start ov22_022591E0
ov22_022591E0: ; 0x022591E0
	ldr r3, _022591E8 ; =sub_020080C0
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	; .align 2, 0
_022591E8: .word sub_020080C0
	thumb_func_end ov22_022591E0

	thumb_func_start ov22_022591EC
ov22_022591EC: ; 0x022591EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	str r2, [sp]
	ldr r3, [sp, #8]
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl ov22_02259448
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_022591EC

	thumb_func_start ov22_02259238
ov22_02259238: ; 0x02259238
	ldr r3, _02259240 ; =sub_02022734
	add r0, r0, #4
	bx r3
	nop
_02259240: .word sub_02022734
	thumb_func_end ov22_02259238

	thumb_func_start ov22_02259244
ov22_02259244: ; 0x02259244
	ldr r3, _0225924C ; =sub_02022830
	add r0, r0, #4
	bx r3
	nop
_0225924C: .word sub_02022830
	thumb_func_end ov22_02259244

	thumb_func_start ov22_02259250
ov22_02259250: ; 0x02259250
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_020080C0
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_020080C0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02259250

	thumb_func_start ov22_02259270
ov22_02259270: ; 0x02259270
	mov r0, #0x50
	str r0, [r1, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov22_02259270

	thumb_func_start ov22_02259278
ov22_02259278: ; 0x02259278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_02259238
	cmp r0, #0
	bne _02259292
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259292:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	ldr r0, [sp]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	ldr r0, _022592EC ; =0x021BF6BC
	str r1, [sp, #4]
	ldrh r2, [r0, #0x1c]
	mov r3, #0
	sub r1, r2, r1
	str r1, [r4, #0]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp]
	sub r2, r1, r0
	str r2, [r6, #0]
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov22_02255420
	cmp r0, #0
	bne _022592E6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022592E6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022592EC: .word 0x021BF6BC
	thumb_func_end ov22_02259278

	thumb_func_start ov22_022592F0
ov22_022592F0: ; 0x022592F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_02259244
	cmp r0, #0
	bne _0225930A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225930A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	str r1, [sp, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	ldr r0, [sp]
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	sub r2, r6, r0
	sub r1, r4, r1
	add r0, r7, #0
	mov r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02259350
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02259350:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022592F0

	thumb_func_start ov22_02259358
ov22_02259358: ; 0x02259358
	ldrb r2, [r0, #8]
	strb r2, [r1]
	ldrb r2, [r0, #9]
	strb r2, [r1, #1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #2]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259358

	thumb_func_start ov22_0225936C
ov22_0225936C: ; 0x0225936C
	push {r4, r5, r6, r7}
	mov ip, r0
	add r7, r1, #0
	mov r2, #0
_02259374:
	mov r3, #0
	add r4, r3, #0
_02259378:
	add r1, r2, r4
	lsr r0, r1, #0x1f
	lsl r6, r1, #0x1f
	sub r6, r6, r0
	mov r5, #0x1f
	ror r6, r5
	add r5, r0, r6
	lsl r6, r5, #2
	mov r5, #0xf
	add r0, r1, r0
	lsl r5, r6
	asr r1, r0, #1
	mov r0, ip
	lsl r5, r5, #0x18
	ldrsb r0, [r0, r1]
	lsr r5, r5, #0x18
	tst r0, r5
	beq _022593A2
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_022593A2:
	add r3, r3, #1
	add r4, r4, r7
	cmp r3, #0x50
	blt _02259378
	add r2, r2, #1
	cmp r2, #0x50
	blt _02259374
	mov r0, #0x50
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225936C

	thumb_func_start ov22_022593B8
ov22_022593B8: ; 0x022593B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0x28
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	mov r6, #0
_022593CE:
	mov r2, #0x50
	sub r2, r2, r6
	str r2, [sp, #8]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	mov lr, r2
	ldr r2, [sp, #8]
	mov r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r5, r0, #0
	mov ip, r2
_022593E6:
	add r7, r6, r5
	lsr r3, r7, #0x1f
	lsl r4, r7, #0x1f
	sub r4, r4, r3
	mov r2, #0x1f
	ror r4, r2
	add r2, r3, r4
	lsl r4, r2, #2
	mov r2, #0xf
	lsl r2, r4
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r3, r7, r3
	ldr r2, [sp]
	asr r3, r3, #1
	ldrsb r2, [r2, r3]
	tst r2, r4
	beq _02259434
	ldrb r2, [r1]
	cmp r2, r6
	ble _02259414
	mov r2, lr
	strb r2, [r1]
_02259414:
	ldrb r3, [r1, #1]
	ldr r2, [sp, #8]
	cmp r3, r2
	ble _02259420
	mov r2, ip
	strb r2, [r1, #1]
_02259420:
	ldrb r2, [r1, #2]
	cmp r2, r0
	ble _02259428
	strb r0, [r1, #2]
_02259428:
	mov r2, #0x50
	sub r3, r2, r0
	ldrb r2, [r1, #3]
	cmp r2, r3
	ble _02259434
	strb r3, [r1, #3]
_02259434:
	ldr r2, [sp, #4]
	add r0, r0, #1
	add r5, r5, r2
	cmp r0, #0x50
	blt _022593E6
	add r6, r6, #1
	cmp r6, #0x50
	blt _022593CE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_022593B8

	thumb_func_start ov22_02259448
ov22_02259448: ; 0x02259448
	push {r3, r4}
	ldr r4, [sp, #8]
	sub r4, r2, r4
	bmi _02259452
	b _02259454
_02259452:
	mov r4, #0
_02259454:
	strb r4, [r0]
	ldr r4, [sp, #8]
	add r2, r2, r4
	cmp r2, #0xbf
	bgt _02259460
	b _02259462
_02259460:
	mov r2, #0xbf
_02259462:
	strb r2, [r0, #1]
	sub r2, r1, r3
	bmi _0225946A
	b _0225946C
_0225946A:
	mov r2, #0
_0225946C:
	add r1, r1, r3
	strb r2, [r0, #2]
	cmp r1, #0xff
	bgt _0225947A
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
_0225947A:
	mov r1, #0xff
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259448