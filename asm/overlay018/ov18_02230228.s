	.include "macros/function.inc"
	.include "overlay018/ov18_02230228.inc"

	

	.text


	arm_func_start ov18_02230228
ov18_02230228: ; 0x02230228
	stmfd sp!, {r3, lr}
	bl ov18_022302A4
	mov r0, #0
	bl ov18_0222BBC0
	mov r0, #0x2e
	sub r1, r0, #0x2f
	mov r2, #0
	bl ov18_0222B594
	mov r0, #4
	bl ov18_0223F4D0
	ldr r0, _0223028C ; =0x022532DC
	ldr r3, _02230290 ; =0x0224911A
	ldrb r0, [r0]
	ldr r1, _02230294 ; =0x0224911E
	ldr r2, _02230298 ; =0x0224911C
	mov ip, r0, lsl #3
	ldrh r0, [r3, ip]
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldr r3, _0223029C ; =0x02249120
	ldrh r3, [r3, ip]
	bl ov18_0222BA04
	ldr r0, _022302A0 ; =ov18_02230390
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223028C: .word Unk_ov18_022532DC
_02230290: .word 0x0224911A
_02230294: .word 0x0224911E
_02230298: .word 0x0224911C
_0223029C: .word 0x02249120
_022302A0: .word ov18_02230390
	arm_func_end ov18_02230228

	arm_func_start ov18_022302A4
ov18_022302A4: ; 0x022302A4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _02230368 ; =0x0224912A
	add r3, sp, #0
	mov r2, #0xb
_022302B8:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _022302B8
	ldr r0, _0223036C ; =0x02249F2C
	ldr r1, _02230370 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02230374 ; =0x02249F44
	ldr r1, _02230378 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223037C ; =0x02249F5C
	ldr r1, _02230380 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02230384 ; =0x022532DC
	ldr r2, _02230388 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _0223038C ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230368: .word 0x0224912A
_0223036C: .word 0x02249F2C
_02230370: .word 0x020C07EC
_02230374: .word 0x02249F44
_02230378: .word GX_LoadBGPltt
_0223037C: .word 0x02249F5C
_02230380: .word GX_LoadBG2Scr
_02230384: .word Unk_ov18_022532DC
_02230388: .word 0x04001008
_0223038C: .word 0x0400000A
	arm_func_end ov18_022302A4

	arm_func_start ov18_02230390
ov18_02230390: ; 0x02230390
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022303E0 ; =ov18_022303E4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022303E0: .word ov18_022303E4
	arm_func_end ov18_02230390

	arm_func_start ov18_022303E4
ov18_022303E4: ; 0x022303E4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223041C ; =ov18_02230420
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223041C: .word ov18_02230420
	arm_func_end ov18_022303E4

	arm_func_start ov18_02230420
ov18_02230420: ; 0x02230420
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02230444 ; =ov18_02230448
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230444: .word ov18_02230448
	arm_func_end ov18_02230420

	arm_func_start ov18_02230448
ov18_02230448: ; 0x02230448
	stmfd sp!, {r3, lr}
	bl ov18_0223045C
	bl ov18_02230588
	bl ov18_0223058C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230448

	arm_func_start ov18_0223045C
ov18_0223045C: ; 0x0223045C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02230570 ; =0x0224910A
	mov r4, #0
_02230468:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _022304B8
	mov r0, #1
	bl ov18_0222B048
	and r1, r4, #0xff
	mov lr, r1, lsl #3
	ldr r0, _02230574 ; =0x0224911A
	ldr r1, _02230578 ; =0x0224911E
	ldr r2, _0223057C ; =0x0224911C
	ldr r3, _02230580 ; =0x02249120
	ldr ip, _02230584 ; =0x022532DC
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [ip]
	bl ov18_0222BA04
	ldmia sp!, {r3, r4, r5, pc}
_022304B8:
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #8
	blo _02230468
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022304E4
	mov r0, #1
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_022304E4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02230500
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_02230500:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223051C
	mov r0, #1
	bl ov18_022306F0
	ldmia sp!, {r3, r4, r5, pc}
_0223051C:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _02230538
	mov r0, #3
	bl ov18_022306F0
	ldmia sp!, {r3, r4, r5, pc}
_02230538:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _02230554
	mov r0, #0
	bl ov18_022306F0
	ldmia sp!, {r3, r4, r5, pc}
_02230554:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #2
	bl ov18_022306F0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02230570: .word 0x0224910A
_02230574: .word 0x0224911A
_02230578: .word 0x0224911E
_0223057C: .word 0x0224911C
_02230580: .word 0x02249120
_02230584: .word Unk_ov18_022532DC
	arm_func_end ov18_0223045C

	arm_func_start ov18_02230588
ov18_02230588: ; 0x02230588
	bx lr
	arm_func_end ov18_02230588

	arm_func_start ov18_0223058C
ov18_0223058C: ; 0x0223058C
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _022305A8
	cmp r0, #1
	beq _022305BC
	ldmia sp!, {r3, pc}
_022305A8:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022305D4 ; =ov18_0222FEE8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022305BC:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_02230760
	ldr r0, _022305D8 ; =ov18_022305DC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022305D4: .word ov18_0222FEE8
_022305D8: .word ov18_022305DC
	arm_func_end ov18_0223058C

	arm_func_start ov18_022305DC
ov18_022305DC: ; 0x022305DC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022305F8 ; =ov18_022305FC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022305F8: .word ov18_022305FC
	arm_func_end ov18_022305DC

	arm_func_start ov18_022305FC
ov18_022305FC: ; 0x022305FC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x16
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02230644 ; =ov18_02230648
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230644: .word ov18_02230648
	arm_func_end ov18_022305FC

	arm_func_start ov18_02230648
ov18_02230648: ; 0x02230648
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _022306E4 ; =0x022532DC
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _022306E4 ; =0x022532DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _022306B4
	cmp r0, #1
	beq _022306CC
	ldmia sp!, {r3, pc}
_022306B4:
	mov r0, #1
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _022306E8 ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022306CC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _022306EC ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022306E4: .word Unk_ov18_022532DC
_022306E8: .word ov18_0223A6B4
_022306EC: .word ov18_02231230
	arm_func_end ov18_02230648

	arm_func_start ov18_022306F0
ov18_022306F0: ; 0x022306F0
	stmfd sp!, {r3, lr}
	cmp r0, #1
	cmpne r0, #3
	ldmeqia sp!, {r3, pc}
	ldr r1, _0223074C ; =0x022532DC
	mov r0, #8
	ldrb r2, [r1]
	eor r2, r2, #1
	strb r2, [r1]
	bl ov18_0223E994
	ldr r0, _0223074C ; =0x022532DC
	ldr ip, _02230750 ; =0x0224911A
	ldrb r0, [r0]
	ldr r1, _02230754 ; =0x0224911E
	ldr r2, _02230758 ; =0x0224911C
	mov lr, r0, lsl #3
	ldr r3, _0223075C ; =0x02249120
	ldrh r0, [ip, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	bl ov18_0222BA04
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223074C: .word Unk_ov18_022532DC
_02230750: .word 0x0224911A
_02230754: .word 0x0224911E
_02230758: .word 0x0224911C
_0223075C: .word 0x02249120
	arm_func_end ov18_022306F0

	arm_func_start ov18_02230760
ov18_02230760: ; 0x02230760
	stmfd sp!, {r3, lr}
	ldr r1, _02230798 ; =0x02249108
	ldr r0, _0223079C ; =0x022532DC
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb r1, [r0]
	add ip, sp, #0
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r1, [ip, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl ov18_0223D154
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230798: .word 0x02249108
_0223079C: .word Unk_ov18_022532DC
	arm_func_end ov18_02230760

	.rodata


	.global Unk_ov18_02249108
Unk_ov18_02249108: ; 0x02249108
	.incbin "incbin/overlay18_rodata.bin", 0x2CD4, 0x2CD6 - 0x2CD4

	.global Unk_ov18_0224910A
Unk_ov18_0224910A: ; 0x0224910A
	.incbin "incbin/overlay18_rodata.bin", 0x2CD6, 0x2CE6 - 0x2CD6

	.global Unk_ov18_0224911A
Unk_ov18_0224911A: ; 0x0224911A
	.incbin "incbin/overlay18_rodata.bin", 0x2CE6, 0x2CF6 - 0x2CE6

	.global Unk_ov18_0224912A
Unk_ov18_0224912A: ; 0x0224912A
	.incbin "incbin/overlay18_rodata.bin", 0x2CF6, 0x16



	.data


	.global Unk_ov18_02249F2C
Unk_ov18_02249F2C: ; 0x02249F2C
	.incbin "incbin/overlay18_data.bin", 0x7CC, 0x7E4 - 0x7CC

	.global Unk_ov18_02249F44
Unk_ov18_02249F44: ; 0x02249F44
	.incbin "incbin/overlay18_data.bin", 0x7E4, 0x7FC - 0x7E4

	.global Unk_ov18_02249F5C
Unk_ov18_02249F5C: ; 0x02249F5C
	.incbin "incbin/overlay18_data.bin", 0x7FC, 0x13



	.bss


	.global Unk_ov18_022532DC
Unk_ov18_022532DC: ; 0x022532DC
	.space 0x4

	.global Unk_ov18_022532E0
Unk_ov18_022532E0: ; 0x022532E0
	.space 0x4

