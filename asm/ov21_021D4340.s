	.include "macros/function.inc"
	.include "include/ov21_021D4340.inc"

	

	.text


	thumb_func_start ov21_021D4340
ov21_021D4340: ; 0x021D4340
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	cmp r0, #3
	bhi _021D43A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4358: ; jump table
	.short _021D4360 - _021D4358 - 2 ; case 0
	.short _021D436E - _021D4358 - 2 ; case 1
	.short _021D4380 - _021D4358 - 2 ; case 2
	.short _021D4392 - _021D4358 - 2 ; case 3
_021D4360:
	ldr r0, [r2, #4]
	bl ov21_021D4198
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D43A4
_021D436E:
	ldr r0, [r2, #4]
	bl ov21_021D41A8
	cmp r0, #1
	bne _021D43A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D43A4
_021D4380:
	ldr r0, [r2, #0]
	ldr r1, [r2, #8]
	ldr r2, [r2, #4]
	bl ov21_021D4628
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D43A4
_021D4392:
	ldr r0, [r2, #4]
	bl ov21_021D41C0
	cmp r0, #1
	bne _021D43A4
	mov r0, #1
	pop {r4, pc}
_021D43A0:
	bl sub_02022974
_021D43A4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D4340

	thumb_func_start ov21_021D43A8
ov21_021D43A8: ; 0x021D43A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _021D43C0
	cmp r0, #1
	beq _021D43E0
	cmp r0, #2
	beq _021D441E
	b _021D4428
_021D43C0:
	ldr r0, [r4, #0]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r4, #8]
	bl ov21_021D4198
	ldr r0, [r4, #0xc]
	bl ov21_021D4198
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D442C
_021D43E0:
	ldr r0, [r4, #0]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov21_021D41A8
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl ov21_021D41A8
	str r0, [sp, #0xc]
	mov r1, #0
	add r2, sp, #0
_021D4404:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021D4412
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #4
	blt _021D4404
_021D4412:
	cmp r1, #4
	blt _021D442C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D442C
_021D441E:
	ldr r1, [r4, #0x10]
	mov r0, #1
	str r0, [r1, #0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D4428:
	bl sub_02022974
_021D442C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D43A8

	thumb_func_start ov21_021D4434
ov21_021D4434: ; 0x021D4434
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #8]
	cmp r0, #3
	bls _021D4444
	b _021D454C
_021D4444:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4450: ; jump table
	.short _021D4458 - _021D4450 - 2 ; case 0
	.short _021D4478 - _021D4450 - 2 ; case 1
	.short _021D44B6 - _021D4450 - 2 ; case 2
	.short _021D44E6 - _021D4450 - 2 ; case 3
_021D4458:
	ldr r0, [r4, #0]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r4, #8]
	bl ov21_021D4198
	ldr r0, [r4, #0xc]
	bl ov21_021D4198
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4550
_021D4478:
	ldr r0, [r4, #0]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov21_021D41A8
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl ov21_021D41A8
	str r0, [sp, #0xc]
	mov r1, #0
	add r2, sp, #0
_021D449C:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021D44AA
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #4
	blt _021D449C
_021D44AA:
	cmp r1, #4
	blt _021D4550
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4550
_021D44B6:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0]
	bl ov21_021D4628
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #4]
	bl ov21_021D4628
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #8]
	bl ov21_021D4628
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	bl ov21_021D4628
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4550
_021D44E6:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021D44F6
	ldr r0, [r4, #0]
	bl ov21_021D41C0
	str r0, [sp]
	b _021D44FA
_021D44F6:
	mov r0, #1
	str r0, [sp]
_021D44FA:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D4508
	ldr r0, [r4, #4]
	bl ov21_021D41C0
	str r0, [sp, #4]
_021D4508:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D4518
	ldr r0, [r4, #8]
	bl ov21_021D41C0
	str r0, [sp, #8]
	b _021D451C
_021D4518:
	mov r0, #1
	str r0, [sp, #8]
_021D451C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021D452C
	ldr r0, [r4, #0xc]
	bl ov21_021D41C0
	str r0, [sp, #0xc]
	b _021D4530
_021D452C:
	mov r0, #1
	str r0, [sp, #0xc]
_021D4530:
	mov r2, #0
	add r1, sp, #0
_021D4534:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D4542
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #4
	blt _021D4534
_021D4542:
	cmp r2, #4
	blt _021D4550
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D454C:
	bl sub_02022974
_021D4550:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4434

	thumb_func_start ov21_021D4558
ov21_021D4558: ; 0x021D4558
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #8]
	cmp r0, #3
	bhi _021D461C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4572: ; jump table
	.short _021D457A - _021D4572 - 2 ; case 0
	.short _021D458E - _021D4572 - 2 ; case 1
	.short _021D45BC - _021D4572 - 2 ; case 2
	.short _021D45D8 - _021D4572 - 2 ; case 3
_021D457A:
	ldr r0, [r4, #0]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4620
_021D458E:
	ldr r0, [r4, #0]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	mov r1, #0
	add r2, sp, #0
_021D45A2:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021D45B0
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #2
	blt _021D45A2
_021D45B0:
	cmp r1, #2
	blt _021D4620
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4620
_021D45BC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0]
	bl ov21_021D4628
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	bl ov21_021D4628
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4620
_021D45D8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D45E8
	ldr r0, [r4, #0]
	bl ov21_021D41C0
	str r0, [sp]
	b _021D45EC
_021D45E8:
	mov r0, #1
	str r0, [sp]
_021D45EC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D45FC
	ldr r0, [r4, #4]
	bl ov21_021D41C0
	str r0, [sp, #4]
	b _021D4600
_021D45FC:
	mov r0, #1
	str r0, [sp, #4]
_021D4600:
	mov r2, #0
	add r1, sp, #0
_021D4604:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D4612
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #2
	blt _021D4604
_021D4612:
	cmp r2, #2
	blt _021D4620
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D461C:
	bl sub_02022974
_021D4620:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4558

	thumb_func_start ov21_021D4628
ov21_021D4628: ; 0x021D4628
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021D465A
	ldr r0, [r5, #0]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	str r0, [sp, #0xc]
	add r0, r2, #0
	bl ov21_021D4008
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x24]
	add r0, r4, #0
	bl ov21_021D426C
_021D465A:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4628

	thumb_func_start ov21_021D4660
ov21_021D4660: ; 0x021D4660
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021D466E
	bl sub_02022974
_021D466E:
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4660

	thumb_func_start ov21_021D467C
ov21_021D467C: ; 0x021D467C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _021D4700 ; =ov21_021D4434
	str r3, [r6, #0]
	str r1, [r6, #4]
	mov r1, #0x30
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4696
	bl sub_02022974
_021D4696:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	add r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #1
	bl ov21_021D1410
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #1
	bl ov21_021D1430
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4700: .word ov21_021D4434
	thumb_func_end ov21_021D467C

	thumb_func_start ov21_021D4704
ov21_021D4704: ; 0x021D4704
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4758 ; =ov21_021D43A8
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x14
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D471E
	bl sub_02022974
_021D471E:
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_021D4724:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D4724
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl ov21_021D13DC
	str r0, [r4, #0x10]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4758: .word ov21_021D43A8
	thumb_func_end ov21_021D4704

	thumb_func_start ov21_021D475C
ov21_021D475C: ; 0x021D475C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _021D47EC ; =ov21_021D4434
	str r3, [r6, #0]
	str r1, [r6, #4]
	mov r1, #0x30
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4776
	bl sub_02022974
_021D4776:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	add r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl ov21_021D1410
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #2
	bl ov21_021D1430
	str r0, [r4, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #3
	bl ov21_021D1430
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D47EC: .word ov21_021D4434
	thumb_func_end ov21_021D475C

	thumb_func_start ov21_021D47F0
ov21_021D47F0: ; 0x021D47F0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _021D4874 ; =ov21_021D4434
	str r3, [r6, #0]
	str r1, [r6, #4]
	mov r1, #0x30
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D480A
	bl sub_02022974
_021D480A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	add r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #0
	bl ov21_021D1410
	str r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #0
	bl ov21_021D1430
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4874: .word ov21_021D4434
	thumb_func_end ov21_021D47F0

	thumb_func_start ov21_021D4878
ov21_021D4878: ; 0x021D4878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D48B4 ; =ov21_021D4340
	str r3, [r5, #0]
	add r6, r1, #0
	str r0, [r5, #4]
	add r0, r2, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021D4894
	bl sub_02022974
_021D4894:
	add r0, r6, #0
	mov r1, #0
	bl ov21_021D1410
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D48B4: .word ov21_021D4340
	thumb_func_end ov21_021D4878

	thumb_func_start ov21_021D48B8
ov21_021D48B8: ; 0x021D48B8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4918 ; =ov21_021D4558
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x18
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D48D2
	bl sub_02022974
_021D48D2:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D48D8:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D48D8
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #6
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #4
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4918: .word ov21_021D4558
	thumb_func_end ov21_021D48B8

	thumb_func_start ov21_021D491C
ov21_021D491C: ; 0x021D491C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D497C ; =ov21_021D4558
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x18
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4936
	bl sub_02022974
_021D4936:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D493C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D493C
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #7
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #5
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D497C: .word ov21_021D4558
	thumb_func_end ov21_021D491C

	thumb_func_start ov21_021D4980
ov21_021D4980: ; 0x021D4980
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D49E0 ; =ov21_021D4558
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x18
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D499A
	bl sub_02022974
_021D499A:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D49A0:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D49A0
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #8
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #6
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D49E0: .word ov21_021D4558
	thumb_func_end ov21_021D4980

	thumb_func_start ov21_021D49E4
ov21_021D49E4: ; 0x021D49E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4A38 ; =ov21_021D4340
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D49FE
	bl sub_02022974
_021D49FE:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #8
	bl ov21_021D1410
	str r0, [r4, #0]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4A38: .word ov21_021D4340
	thumb_func_end ov21_021D49E4

	thumb_func_start ov21_021D4A3C
ov21_021D4A3C: ; 0x021D4A3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4A90 ; =ov21_021D4340
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4A56
	bl sub_02022974
_021D4A56:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #9
	bl ov21_021D1410
	str r0, [r4, #0]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4A90: .word ov21_021D4340
	thumb_func_end ov21_021D4A3C

	thumb_func_start ov21_021D4A94
ov21_021D4A94: ; 0x021D4A94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4AF4 ; =ov21_021D4558
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x18
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4AAE
	bl sub_02022974
_021D4AAE:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D4AB4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D4AB4
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #2
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #2
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4AF4: .word ov21_021D4558
	thumb_func_end ov21_021D4A94

	thumb_func_start ov21_021D4AF8
ov21_021D4AF8: ; 0x021D4AF8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4B4C ; =ov21_021D4340
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4B12
	bl sub_02022974
_021D4B12:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #2
	bl ov21_021D1410
	str r0, [r4, #0]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4B4C: .word ov21_021D4340
	thumb_func_end ov21_021D4AF8

	thumb_func_start ov21_021D4B50
ov21_021D4B50: ; 0x021D4B50
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4BB0 ; =ov21_021D4558
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0x18
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4B6A
	bl sub_02022974
_021D4B6A:
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D4B70:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D4B70
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #3
	bl ov21_021D1410
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #7
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4BB0: .word ov21_021D4558
	thumb_func_end ov21_021D4B50

	thumb_func_start ov21_021D4BB4
ov21_021D4BB4: ; 0x021D4BB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021D4C08 ; =ov21_021D4340
	str r3, [r5, #0]
	str r1, [r5, #4]
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D4BCE
	bl sub_02022974
_021D4BCE:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	add r0, r6, #0
	mov r1, #4
	bl ov21_021D1410
	str r0, [r4, #0]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4C08: .word ov21_021D4340
	thumb_func_end ov21_021D4BB4