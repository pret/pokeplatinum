	.include "macros/function.inc"
	.include "include/ov6_02243258.inc"

	

	.text


	thumb_func_start ov6_02243258
ov6_02243258: ; 0x02243258
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [sp, #0x1c]
	add r7, r3, #0
	strb r6, [r5]
	ldr r4, [sp, #0x18]
	strb r7, [r5, #1]
	strb r4, [r5, #2]
	str r0, [sp, #0x1c]
	strb r0, [r5, #3]
	ldr r0, [sp, #0x20]
	mov r2, #4
	strb r0, [r5, #4]
	ldr r0, [sp, #0x24]
	strb r0, [r5, #5]
	ldr r0, [sp, #0x28]
	strb r0, [r5, #6]
	ldr r0, [sp, #0x2c]
	strb r0, [r5, #7]
	add r0, r1, #0
	add r1, r5, #0
	add r1, #0xc
	bl sub_020095C4
	str r0, [r5, #8]
	add r0, r5, #0
	mov r2, #2
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	add r0, r6, #0
	mov r1, #0
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #0
	mov r1, #1
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	bl sub_02009714
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	mov r1, #3
	mov r2, #4
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r6, #3
	bl ov6_02245F44
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r7, #3
	bl ov6_02245F44
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	lsl r1, r4, #3
	bl ov6_02245F44
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x1c]
	mov r0, #4
	lsl r1, r1, #3
	bl ov6_02245F44
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0
	cmp r6, #0
	ble _02243334
	ble _02243334
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_02243324:
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r1, r1, #1
	strh r0, [r3, r2]
	add r2, #8
	cmp r1, r6
	blt _02243324
_02243334:
	mov r3, #0
	cmp r7, #0
	ble _02243354
	ble _02243354
	ldr r0, [sp, #0x24]
	mov r6, #0x52
	lsl r0, r0, #0x10
	add r2, r3, #0
	asr r1, r0, #0x10
	lsl r6, r6, #2
_02243348:
	ldr r0, [r5, r6]
	add r3, r3, #1
	strh r1, [r0, r2]
	add r2, #8
	cmp r3, r7
	blt _02243348
_02243354:
	mov r1, #0
	cmp r4, #0
	ble _02243374
	ble _02243374
	ldr r2, [sp, #0x28]
	add r0, r1, #0
	lsl r2, r2, #0x10
	asr r6, r2, #0x10
	mov r2, #0x53
	lsl r2, r2, #2
_02243368:
	ldr r3, [r5, r2]
	add r1, r1, #1
	strh r6, [r3, r0]
	add r0, #8
	cmp r1, r4
	blt _02243368
_02243374:
	ldr r0, [sp, #0x1c]
	mov r1, #0
	cmp r0, #0
	ble _02243398
	ble _02243398
	ldr r2, [sp, #0x2c]
	mov r3, #0x15
	lsl r2, r2, #0x10
	add r0, r1, #0
	asr r4, r2, #0x10
	lsl r3, r3, #4
_0224338A:
	ldr r2, [r5, r3]
	add r1, r1, #1
	strh r4, [r2, r0]
	ldr r2, [sp, #0x1c]
	add r0, #8
	cmp r1, r2
	blt _0224338A
_02243398:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02243258

	thumb_func_start ov6_0224339C
ov6_0224339C: ; 0x0224339C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0
	ble _022433CC
	add r4, r6, #0
	mov r7, #4
_022433AC:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _022433C2
	ldr r0, [r0, #4]
	bl sub_0200A4E4
_022433C2:
	ldrb r0, [r5]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _022433AC
_022433CC:
	ldrb r0, [r5, #1]
	mov r6, #0
	cmp r0, #0
	ble _022433F8
	add r4, r6, #0
	mov r7, #5
_022433D8:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _022433EE
	ldr r0, [r0, #4]
	bl sub_0200A6DC
_022433EE:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _022433D8
_022433F8:
	ldrb r0, [r5, #2]
	mov r6, #0
	cmp r0, #0
	ble _02243424
	add r4, r6, #0
	mov r7, #6
_02243404:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _0224341A
	ldr r0, [r0, #4]
	bl sub_02009D4C
_0224341A:
	ldrb r0, [r5, #2]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02243404
_02243424:
	ldrb r0, [r5, #3]
	mov r6, #0
	cmp r0, #0
	ble _02243450
	add r4, r6, #0
	mov r7, #7
_02243430:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldrsb r2, [r5, r7]
	add r0, r1, r4
	ldrsh r1, [r1, r4]
	cmp r2, r1
	beq _02243446
	ldr r0, [r0, #4]
	bl sub_02009D4C
_02243446:
	ldrb r0, [r5, #3]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02243430
_02243450:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02009754
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, [r5, #8]
	bl sub_020219C0
	ldr r0, [r5, #8]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_0224339C

	thumb_func_start ov6_022434B0
ov6_022434B0: ; 0x022434B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _02243516
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #4
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022434D2:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _0224350E
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009A4C
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_0224350E:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022434D2
_02243516:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022434B0

	thumb_func_start ov6_02243520
ov6_02243520: ; 0x02243520
	push {r4, r5, r6, lr}
	ldrb r3, [r0]
	mov r2, #0
	cmp r3, #0
	ble _0224354E
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243534:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _02243546
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_0200A3DC
	pop {r4, r5, r6, pc}
_02243546:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243534
_0224354E:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243520

	thumb_func_start ov6_02243554
ov6_02243554: ; 0x02243554
	push {r4, r5, r6, lr}
	ldrb r3, [r0]
	mov r2, #0
	cmp r3, #0
	ble _02243582
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243568:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _0224357A
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r4, r5, r6, pc}
_0224357A:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243568
_02243582:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243554

	thumb_func_start ov6_02243588
ov6_02243588: ; 0x02243588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _022435F0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #5
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022435AA:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _022435E8
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #4
	str r1, [sp, #0xc]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02009B04
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x18
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022435E8:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022435AA
_022435F0:
	bl sub_02022974
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02243588

	thumb_func_start ov6_022435F8
ov6_022435F8: ; 0x022435F8
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0
	ble _02243626
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_0224360C:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _0224361E
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_0200A640
	pop {r4, r5, r6, pc}
_0224361E:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _0224360C
_02243626:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022435F8

	thumb_func_start ov6_0224362C
ov6_0224362C: ; 0x0224362C
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0
	ble _0224365A
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	add r4, r2, #0
	add r6, r0, #0
_02243640:
	ldrsh r5, [r6, r4]
	cmp r1, r5
	bne _02243652
	lsl r1, r2, #3
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_02009D4C
	pop {r4, r5, r6, pc}
_02243652:
	add r2, r2, #1
	add r6, #8
	cmp r2, r3
	blt _02243640
_0224365A:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_0224362C

	thumb_func_start ov6_02243660
ov6_02243660: ; 0x02243660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _022436C6
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r3, [r6, r0]
	mov r0, #6
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_02243682:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _022436BE
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009BC4
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_022436BE:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _02243682
_022436C6:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02243660

	thumb_func_start ov6_022436D0
ov6_022436D0: ; 0x022436D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrb r5, [r6]
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	add r7, r3, #0
	mov r2, #0
	cmp r5, #0
	ble _02243736
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r3, [r6, r0]
	mov r0, #7
	ldrsb r4, [r6, r0]
	mov ip, r3
	add r0, r2, #0
_022436F2:
	ldrsh r1, [r3, r0]
	cmp r4, r1
	bne _0224372E
	lsl r4, r2, #3
	mov r0, ip
	strh r7, [r0, r4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	mov r3, #0
	add r1, r1, r4
	strh r3, [r1, #2]
	str r7, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	sub r0, #0x10
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02009BC4
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	add sp, #0x14
	add r1, r1, r4
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_0224372E:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _022436F2
_02243736:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022436D0

	thumb_func_start ov6_02243740
ov6_02243740: ; 0x02243740
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	mov r0, #7
	add r2, r3, #0
	ldrsb r3, [r5, r0]
	ldr r6, [sp, #0x84]
	cmp r6, r3
	bne _0224375A
	sub r0, #8
	str r0, [sp, #0x84]
_0224375A:
	ldr r0, [sp, #0x84]
	mov r3, #0
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r5, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r5, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
	ldr r0, [r5, #8]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #4
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r4, r0, #0
	bne _022437C2
	bl sub_02022974
_022437C2:
	add r0, r4, #0
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02243740

	thumb_func_start ov6_022437C8
ov6_022437C8: ; 0x022437C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_02021D28
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_022437C8

	thumb_func_start ov6_022437DC
ov6_022437DC: ; 0x022437DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r0, #0
	mov r2, #0
	add r0, sp, #0x1c
	str r2, [r0, #0]
	str r2, [r0, #4]
	add r3, sp, #0x28
	str r2, [r3, #0]
	str r2, [r3, #4]
	ldr r6, _02243844 ; =0x0224918C
	str r2, [r0, #8]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x10
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r2, [r3, #8]
	str r0, [r5, #0]
	add r1, r3, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x84
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r3, r2, #0
	bl ov6_02243740
	add r4, r0, #0
	mov r1, #2
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0x10
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02243844: .word 0x0224918C
	thumb_func_end ov6_022437DC

	thumb_func_start ov6_02243848
ov6_02243848: ; 0x02243848
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r3, #0
	add r2, sp, #0x10
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	cmp r1, #1
	bne _0224385C
	mov r3, #1
_0224385C:
	mov r2, #2
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x83
	str r1, [sp, #0xc]
	add r1, sp, #0x10
	bl ov6_02243740
	add r4, r0, #0
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #6
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov6_02243848

	thumb_func_start ov6_02243888
ov6_02243888: ; 0x02243888
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, sp, #0x18
	mov r4, #0
	str r4, [r5, #0]
	str r4, [r5, #4]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r3, [sp, #0x10]
	str r4, [r5, #8]
	str r1, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x82
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _022438B8 ; =0x0224925C
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02071330
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_022438B8: .word 0x0224925C
	thumb_func_end ov6_02243888

	thumb_func_start ov6_022438BC
ov6_022438BC: ; 0x022438BC
	push {r3, lr}
	bl sub_02071598
	ldrb r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022438BC

	thumb_func_start ov6_022438C8
ov6_022438C8: ; 0x022438C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x64]
	bl ov6_022437DC
	str r0, [r4, #0x68]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022438C8

	thumb_func_start ov6_022438EC
ov6_022438EC: ; 0x022438EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02243900
	bl sub_0207136C
_02243900:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0224390A
	bl ov5_021F0EFC
_0224390A:
	add r0, r5, #0
	bl sub_0207136C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022438EC

	thumb_func_start ov6_02243914
ov6_02243914: ; 0x02243914
	ldr r3, _0224391C ; =sub_02021BD4
	ldr r0, [r1, #0x68]
	bx r3
	nop
_0224391C: .word sub_02021BD4
	thumb_func_end ov6_02243914

	thumb_func_start ov6_02243920
ov6_02243920: ; 0x02243920
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5]
	lsl r1, r0, #2
	ldr r0, _0224393C ; =0x02249110
	ldr r4, [r0, r1]
_0224392C:
	ldrb r1, [r5, #1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224392C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224393C: .word 0x02249110
	thumb_func_end ov6_02243920

	thumb_func_start ov6_02243940
ov6_02243940: ; 0x02243940
	push {r3, lr}
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r0, #0x68]
	bl sub_02021CAC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_02243940

	thumb_func_start ov6_02243950
ov6_02243950: ; 0x02243950
	push {r4, r5, r6, lr}
	sub sp, #0x30
	ldr r4, _02243AA4 ; =0x02249150
	add r2, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _02243AA8 ; =0x022491A4
	str r0, [r3, #0]
	ldmia r4!, {r0, r1}
	add r3, sp, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	add r0, r2, #0
	bl sub_02071598
	add r4, r0, #0
	mov r3, #1
	add r5, r4, #0
	strb r3, [r4]
	mov r2, #0
	strb r2, [r4, #2]
	strb r2, [r4, #1]
	str r2, [r4, #4]
	add r6, sp, #0x24
	ldmia r6!, {r0, r1}
	add r5, #8
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	ldr r0, _02243AAC ; =0x0015E000
	add r2, r4, #0
	add r5, sp, #0x18
	str r0, [r4, #0x38]
	ldmia r5!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	lsl r0, r3, #0xa
	str r0, [r4, #0x50]
	mov r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x48]
	lsl r0, r3, #0x11
	str r0, [r4, #0x4c]
	mov r0, #0x2d
	bl sub_0201D264
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x68]
	add r1, sp, #0x24
	bl sub_02021C50
	ldr r0, [r4, #0x68]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_02021C94
	ldr r0, [r4, #0x68]
	mov r1, #0x84
	bl sub_02021F58
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x60]
	bl ov6_02245B4C
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl ov5_021F0EB0
	ldr r2, _02243AB0 ; =0xFFF88000
	mov r1, #1
	mov r3, #0xc
	str r0, [r4, #0x70]
	bl ov5_021F0F10
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _02243AB4 ; =0x022491C8
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r4, [r4, #0x60]
	add r0, r4, #0
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	mov r1, #2
	bl sub_02021D6C
	bl ov6_02243F2C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02243AA4: .word 0x02249150
_02243AA8: .word 0x022491A4
_02243AAC: .word 0x0015E000
_02243AB0: .word 0xFFF88000
_02243AB4: .word 0x022491C8
	thumb_func_end ov6_02243950

	thumb_func_start ov6_02243AB8
ov6_02243AB8: ; 0x02243AB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r6, [r5, #0x68]
	ldr r4, [r5, #0x60]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	bpl _02243AD0
	mov r0, #0
	str r0, [r5, #0x48]
_02243AD0:
	mov r0, #2
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _02243AE2
	mov r0, #7
	lsl r0, r0, #0xa
	sub r0, r1, r0
	str r0, [r5, #0x4c]
_02243AE2:
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02243AEE
	str r0, [r5, #0x4c]
_02243AEE:
	mov r0, #0x2d
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0x5a
	bge _02243B36
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_02243B36:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	bge _02243B48
	str r0, [r5, #0x2c]
_02243B48:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	bge _02243B5A
	str r0, [r5, #0x30]
_02243B5A:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x2c
	bl sub_02021C70
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x12
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _02243BAA
	mov r0, #0
	str r0, [r5, #4]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _02243BB0
_02243BAA:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02243BB0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02243AB8

	thumb_func_start ov6_02243BB8
ov6_02243BB8: ; 0x02243BB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	bl ov6_02245BC8
	ldr r0, [r4, #0x70]
	mov r1, #2
	mov r2, #0
	mov r3, #0xc
	bl ov5_021F0F10
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [r4, #0x50]
	lsl r0, r0, #9
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x48]
	mov r0, #6
	lsl r0, r0, #0xa
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02243BB8

	thumb_func_start ov6_02243BEC
ov6_02243BEC: ; 0x02243BEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x68]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r5, #0x4c]
	cmp r2, r1
	ble _02243C10
	lsl r0, r0, #4
	str r0, [r5, #0x4c]
_02243C10:
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	mov r0, #0x80
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	mov r0, #0xa
	ldr r1, [r5, #0x40]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02243C54
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x40]
_02243C54:
	mov r0, #2
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	str r1, [r5, #0x38]
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02243C86
	str r0, [r5, #0x2c]
_02243C86:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02243C98
	str r0, [r5, #0x30]
_02243C98:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	bgt _02243CD2
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02243CD2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02243BEC

	thumb_func_start ov6_02243CD8
ov6_02243CD8: ; 0x02243CD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243CD8

	thumb_func_start ov6_02243CFC
ov6_02243CFC: ; 0x02243CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x14
	bge _02243D12
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243D12:
	ldr r3, _02243DB4 ; =0x02249174
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02243DB8 ; =0x02249180
	str r0, [r2, #0]
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r7, #0
	str r0, [r2, #0]
	add r2, r4, #0
	str r7, [r4, #4]
	add r3, r6, #0
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x14]
	str r7, [r4, #0x18]
	str r7, [r4, #0x1c]
	str r7, [r4, #0x38]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r2, #0]
	lsl r1, r1, #8
	ldr r0, _02243DBC ; =0x0013B000
	str r1, [r4, #0x50]
	str r0, [r4, #0x40]
	lsl r0, r1, #0xa
	str r0, [r4, #0x48]
	lsl r0, r1, #4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x68]
	add r1, r6, #0
	bl sub_02021C50
	ldr r0, [r4, #0x68]
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_02021C94
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x60]
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021CC8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243DB4: .word 0x02249174
_02243DB8: .word 0x02249180
_02243DBC: .word 0x0013B000
	thumb_func_end ov6_02243CFC

	thumb_func_start ov6_02243DC0
ov6_02243DC0: ; 0x02243DC0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x68]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02243DE0
	lsr r0, r0, #3
	add r0, r1, r0
	str r0, [r5, #0x4c]
_02243DE0:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _02243DEA
	mov r0, #0
	str r0, [r5, #0x48]
_02243DEA:
	ldr r0, _02243EC8 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xb4
	bge _02243E32
	mov r0, #1
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [r5, #0x40]
_02243E32:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, #0x2c]
	cmp r1, r0
	bge _02243E44
	str r0, [r5, #0x2c]
_02243E44:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, #0x30]
	cmp r1, r0
	bge _02243E56
	str r0, [r5, #0x30]
_02243E56:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #6
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r1, [r5, #0x38]
	cmp r0, #0x3c
	ble _02243E7C
	mov r0, #0xf
	lsl r0, r0, #0xe
	str r0, [r5, #0x38]
_02243E7C:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _02243EC0
	add r0, r4, #0
	mov r1, #0
	bl sub_02021CAC
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02243EC0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02243EC8: .word 0x0000013B
	thumb_func_end ov6_02243DC0

	thumb_func_start ov6_02243ECC
ov6_02243ECC: ; 0x02243ECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	bne _02243EEA
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ov6_02243F74
_02243EEA:
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bne _02243EF8
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl sub_02021CAC
_02243EF8:
	ldr r0, [r4, #4]
	cmp r0, #0xf
	ble _02243F16
	ldr r0, [r4, #0x70]
	bl ov5_021F0EF0
	cmp r0, #1
	bne _02243F16
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	mov r0, #2
	strb r0, [r4, #2]
_02243F16:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243ECC

	thumb_func_start ov6_02243F1C
ov6_02243F1C: ; 0x02243F1C
	mov r0, #0
	bx lr
	thumb_func_end ov6_02243F1C

	thumb_func_start ov6_02243F20
ov6_02243F20: ; 0x02243F20
	ldr r3, _02243F28 ; =sub_02006C24
	mov r0, #0x61
	mov r1, #4
	bx r3
	; .align 2, 0
_02243F28: .word sub_02006C24
	thumb_func_end ov6_02243F20

	thumb_func_start ov6_02243F2C
ov6_02243F2C: ; 0x02243F2C
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _02243F4C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	nop
_02243F4C: .word 0x00007FFF
	thumb_func_end ov6_02243F2C

	thumb_func_start ov6_02243F50
ov6_02243F50: ; 0x02243F50
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02243F70 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_02243F70: .word 0x00007FFF
	thumb_func_end ov6_02243F50

	thumb_func_start ov6_02243F74
ov6_02243F74: ; 0x02243F74
	push {r4, lr}
	ldr r0, [r0, #0x3c]
	add r4, r1, #0
	bl sub_0205EB3C
	add r1, r4, #0
	bl sub_02062D64
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02243F74

	thumb_func_start ov6_02243F88
ov6_02243F88: ; 0x02243F88
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov6_02243FDC
	add r1, r0, #0
	str r4, [r1, #0x5c]
	str r6, [r1, #0xc]
	str r5, [r1, #0x20]
	cmp r5, #0
	bne _02243FAA
	ldr r0, _02243FB4 ; =ov6_02244004
	mov r2, #0x85
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
_02243FAA:
	ldr r0, _02243FB8 ; =ov6_022443B8
	mov r2, #0x85
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243FB4: .word ov6_02244004
_02243FB8: .word ov6_022443B8
	thumb_func_end ov6_02243F88

	thumb_func_start ov6_02243FBC
ov6_02243FBC: ; 0x02243FBC
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02243FBC

	thumb_func_start ov6_02243FC8
ov6_02243FC8: ; 0x02243FC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl ov6_02243FFC
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov6_02243FC8

	thumb_func_start ov6_02243FDC
ov6_02243FDC: ; 0x02243FDC
	push {r3, r4, r5, lr}
	mov r1, #0x87
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018184
	mov r2, #0x87
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	str r5, [r4, #0x60]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02243FDC

	thumb_func_start ov6_02243FFC
ov6_02243FFC: ; 0x02243FFC
	ldr r3, _02244000 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02244000: .word sub_020181C4
	thumb_func_end ov6_02243FFC

	thumb_func_start ov6_02244004
ov6_02244004: ; 0x02244004
	push {r3, r4, r5, lr}
	ldr r4, _02244034 ; =0x022492D8
	add r5, r1, #0
_0224400A:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224400A
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _02244032
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224402C
	bl sub_020713D0
_0224402C:
	add r0, r5, #0
	bl ov6_02244C10
_02244032:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244034: .word 0x022492D8
	thumb_func_end ov6_02244004

	thumb_func_start ov6_02244038
ov6_02244038: ; 0x02244038
	push {r4, lr}
	add r4, r0, #0
	bl ov6_0224481C
	add r0, r4, #0
	bl ov6_0224464C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02244038

	thumb_func_start ov6_02244050
ov6_02244050: ; 0x02244050
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244066
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02244066:
	ldr r5, _022440B8 ; =0x02249120
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r5, _022440BC ; =0x022491E0
	str r0, [r3, #0]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov6_02244CFC
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_0224529C
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov6_022452BC
	add r0, r4, #0
	bl ov6_0224469C
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022440B8: .word 0x02249120
_022440BC: .word 0x022491E0
	thumb_func_end ov6_02244050

	thumb_func_start ov6_022440C0
ov6_022440C0: ; 0x022440C0
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245FDC
	mov r0, #0
	ldr r1, _022440F4 ; =0xFFFC0000
	str r0, [r4, #0x2c]
	str r1, [r4, #0x54]
	mov r1, #0xfe
	lsl r1, r1, #0xc
	str r1, [r4, #0x44]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [r4, #0x48]
	mov r1, #0x5f
	lsl r1, r1, #0xc
	str r1, [r4, #0x4c]
	mov r1, #0x61
	lsl r1, r1, #0xc
	str r1, [r4, #0x50]
	mov r1, #1
	str r1, [r4, #0x2c]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_022440F4: .word 0xFFFC0000
	thumb_func_end ov6_022440C0

	thumb_func_start ov6_022440F8
ov6_022440F8: ; 0x022440F8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, #0x2c]
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x44]
	cmp r0, #0
	bgt _0224411C
	mov r0, #2
	str r2, [r4, #0x44]
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0224411C:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022440F8

	thumb_func_start ov6_02244138
ov6_02244138: ; 0x02244138
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244166
	lsl r0, r0, #4
	str r0, [r4, #0x54]
_02244166:
	mov r0, #0xe
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _02244172
	str r0, [r4, #0x4c]
_02244172:
	mov r0, #0x22
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	ble _0224417E
	str r0, [r4, #0x50]
_0224417E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0xe
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _022441B6
	mov r0, #0x22
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _022441B6
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_02244D34
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022441B6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244138

	thumb_func_start ov6_022441BC
ov6_022441BC: ; 0x022441BC
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xf
	blt _022441D4
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, _022441D8 ; =0xFFFC0000
	str r1, [r0, #0x58]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
_022441D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_022441D8: .word 0xFFFC0000
	thumb_func_end ov6_022441BC

	thumb_func_start ov6_022441DC
ov6_022441DC: ; 0x022441DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r1, r1, r0
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	bgt _02244214
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244214:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022441DC

	thumb_func_start ov6_02244228
ov6_02244228: ; 0x02244228
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x58]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, _02244280 ; =0xFFFFE000
	str r1, [r4, #0x58]
	cmp r1, r0
	ble _0224424C
	str r0, [r4, #0x58]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #0x5c]
	bl sub_02077E3C
_0224424C:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02244280: .word 0xFFFFE000
	thumb_func_end ov6_02244228

	thumb_func_start ov6_02244284
ov6_02244284: ; 0x02244284
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #8
	blt _0224429C
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, _022442A0 ; =0xFFFFF000
	str r1, [r0, #0x58]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
_0224429C:
	mov r0, #0
	bx lr
	; .align 2, 0
_022442A0: .word 0xFFFFF000
	thumb_func_end ov6_02244284

	thumb_func_start ov6_022442A4
ov6_022442A4: ; 0x022442A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	lsl r1, r0, #1
	ldr r0, _02244300 ; =0xFFFC0000
	str r1, [r4, #0x58]
	cmp r1, r0
	bge _022442B8
	str r0, [r4, #0x58]
_022442B8:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r4, #0x58]
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	ldr r1, [sp]
	ldr r0, _02244304 ; =0xFFFD8000
	cmp r1, r0
	bgt _022442F8
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022442F8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02244300: .word 0xFFFC0000
_02244304: .word 0xFFFD8000
	thumb_func_end ov6_022442A4

	thumb_func_start ov6_02244308
ov6_02244308: ; 0x02244308
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #1
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xe
	add r2, r1, r0
	lsl r1, r0, #3
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244336
	lsl r0, r0, #3
	str r0, [r4, #0x54]
_02244336:
	mov r0, #0x16
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _02244342
	str r0, [r4, #0x4c]
_02244342:
	mov r0, #0x1a
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _0224434E
	str r0, [r4, #0x50]
_0224434E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0x16
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02244382
	mov r0, #0x1a
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _02244382
	add r0, r4, #0
	bl ov6_02246018
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244382:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244308

	thumb_func_start ov6_02244388
ov6_02244388: ; 0x02244388
	push {r4, lr}
	add r4, r0, #0
	bl ov6_022448C8
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_02244388

	thumb_func_start ov6_0224439C
ov6_0224439C: ; 0x0224439C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244FB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224439C

	thumb_func_start ov6_022443B0
ov6_022443B0: ; 0x022443B0
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #0
	bx lr
	thumb_func_end ov6_022443B0

	thumb_func_start ov6_022443B8
ov6_022443B8: ; 0x022443B8
	push {r3, r4, r5, lr}
	ldr r4, _022443E8 ; =0x02249310
	add r5, r1, #0
_022443BE:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _022443BE
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _022443E6
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022443E0
	bl sub_020713D0
_022443E0:
	add r0, r5, #0
	bl ov6_02244C10
_022443E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022443E8: .word 0x02249310
	thumb_func_end ov6_022443B8

	thumb_func_start ov6_022443EC
ov6_022443EC: ; 0x022443EC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244402
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02244402:
	ldr r5, _02244454 ; =0x022491D4
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r5, _02244458 ; =0x0224912C
	str r0, [r3, #0]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r4, #0
	bl ov6_02244CFC
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_0224529C
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov6_022452BC
	add r0, r4, #0
	bl ov6_0224469C
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244454: .word 0x022491D4
_02244458: .word 0x0224912C
	thumb_func_end ov6_022443EC

	thumb_func_start ov6_0224445C
ov6_0224445C: ; 0x0224445C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_022451B8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224445C

	thumb_func_start ov6_02244470
ov6_02244470: ; 0x02244470
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244DB4
	add r0, r4, #0
	bl ov6_02244674
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02244470

	thumb_func_start ov6_02244488
ov6_02244488: ; 0x02244488
	push {r4, lr}
	mov r1, #0x82
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0224449A
	mov r0, #0
	pop {r4, pc}
_0224449A:
	bl ov6_0224469C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02244488

	thumb_func_start ov6_022444A8
ov6_022444A8: ; 0x022444A8
	push {r4, lr}
	add r4, r0, #0
	bl ov6_0224543C
	add r0, r4, #0
	bl ov6_0224551C
	add r0, r4, #0
	bl ov6_02244F74
	add r0, r4, #0
	mov r1, #1
	bl ov6_02245F64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022444A8

	thumb_func_start ov6_022444D0
ov6_022444D0: ; 0x022444D0
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245470
	cmp r0, #2
	beq _022444E0
	mov r0, #0
	pop {r4, pc}
_022444E0:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022444D0

	thumb_func_start ov6_022444F8
ov6_022444F8: ; 0x022444F8
	push {r3, lr}
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0x14
	blt _02244512
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl ov6_022456D4
_02244512:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022444F8

	thumb_func_start ov6_02244518
ov6_02244518: ; 0x02244518
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02245470
	cmp r0, #3
	beq _02244528
	mov r0, #0
	pop {r4, pc}
_02244528:
	ldr r0, _02244544 ; =0x00000649
	bl sub_02005748
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	nop
_02244544: .word 0x00000649
	thumb_func_end ov6_02244518

	thumb_func_start ov6_02244548
ov6_02244548: ; 0x02244548
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	add r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x50]
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xa
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [r4, #0x54]
	cmp r2, r1
	ble _02244576
	lsl r0, r0, #5
	str r0, [r4, #0x54]
_02244576:
	mov r0, #0x5f
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _02244582
	str r0, [r4, #0x4c]
_02244582:
	mov r0, #0x61
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0224458E
	str r0, [r4, #0x50]
_0224458E:
	ldr r0, [r4, #0x50]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x48]
	add r0, r4, #0
	bl ov6_02244F80
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _022445BA
	add r0, r4, #0
	bl ov6_02245470
	cmp r0, #4
	bne _022445BA
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_022445BA:
	mov r0, #0x5f
	ldr r1, [r4, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _022445E6
	mov r0, #0x61
	ldr r1, [r4, #0x50]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _022445E6
	ldr r0, [r4, #0x60]
	ldr r0, [r0, #8]
	bl ov6_02244F20
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov6_02244F58
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022445E6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_02244548

	thumb_func_start ov6_022445EC
ov6_022445EC: ; 0x022445EC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _02244606
	bl ov6_02245470
	cmp r0, #4
	bne _02244606
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_02244606:
	add r0, r4, #0
	bl ov6_02245470
	cmp r0, #2
	beq _02244614
	mov r0, #0
	pop {r4, pc}
_02244614:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02244622
	mov r0, #1
	str r0, [r4, #0x18]
	bl ov6_02243F50
_02244622:
	add r0, r4, #0
	bl ov6_02245480
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022445EC

	thumb_func_start ov6_02244634
ov6_02244634: ; 0x02244634
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02244646
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02244646:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02244634

	thumb_func_start ov6_0224464C
ov6_0224464C: ; 0x0224464C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02244670 ; =ov6_022446B8
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA04
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244670: .word ov6_022446B8
	thumb_func_end ov6_0224464C

	thumb_func_start ov6_02244674
ov6_02244674: ; 0x02244674
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02244698 ; =ov6_022447B4
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA04
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244698: .word ov6_022447B4
	thumb_func_end ov6_02244674

	thumb_func_start ov6_0224469C
ov6_0224469C: ; 0x0224469C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022446B6
	bl sub_0200DA58
	mov r0, #0x85
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022446B6:
	pop {r4, pc}
	thumb_func_end ov6_0224469C

	thumb_func_start ov6_022446B8
ov6_022446B8: ; 0x022446B8
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x81
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0224472E
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_022446CE:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022446D8
	bl sub_0200A3DC
_022446D8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022446CE
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022446E8:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022446F2
	bl sub_0200A640
_022446F2:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _022446E8
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0224470A
	add r0, r6, #0
	bl ov6_02245118
_0224470A:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0224471A
	add r0, r6, #0
	bl ov6_02245170
_0224471A:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r2, #0x80
	add r1, r1, #1
	str r1, [r6, r0]
	ldr r0, _02244730 ; =ov6_02244734
	add r1, r6, #0
	bl sub_0200DA3C
_0224472E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244730: .word ov6_02244734
	thumb_func_end ov6_022446B8

	thumb_func_start ov6_02244734
ov6_02244734: ; 0x02244734
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x81
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _022447B2
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_0224474C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02244756
	bl sub_02009D4C
_02244756:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0224474C
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244766:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244770
	bl sub_02009D4C
_02244770:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02244766
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224478E
	bl sub_020181C4
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
_0224478E:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022447A4
	bl sub_020181C4
	mov r0, #0x21
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_022447A4:
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [sp]
	bl sub_0200DA58
_022447B2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02244734

	thumb_func_start ov6_022447B4
ov6_022447B4: ; 0x022447B4
	push {r4, lr}
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02009DC8
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _022447E6
	bl sub_0200A3DC
	ldr r0, _022447E8 ; =ov6_022447EC
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022447E6:
	pop {r4, pc}
	; .align 2, 0
_022447E8: .word ov6_022447EC
	thumb_func_end ov6_022447B4

	thumb_func_start ov6_022447EC
ov6_022447EC: ; 0x022447EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02009DC8
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _0224481A
	bl sub_02009D4C
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_0224481A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022447EC

	thumb_func_start ov6_0224481C
ov6_0224481C: ; 0x0224481C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov6_0224491C
	mov r2, #3
	mov r3, #1
	add r4, r0, #0
	lsl r2, r2, #0x12
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0xc
	str r2, [sp]
	bl ov6_02244F80
	add r0, r5, #0
	bl ov6_02244F2C
	ldr r0, [r5, #0x60]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0201A008
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x60]
	mov r1, #3
	ldr r0, [r0, #8]
	bl sub_0201A008
	strh r0, [r5, #0x26]
	ldr r2, _022448C4 ; =0x0400000A
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r1
	strh r0, [r2, #4]
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #2
	add r2, #0x6c
	bl ov6_02244E54
	ldr r0, [r5, #0x60]
	add r3, r5, #0
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #0
	add r3, #0x68
	bl ov6_02244E7C
	ldr r0, [r5, #0x60]
	add r3, r5, #0
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #1
	add r3, #0x64
	bl ov6_02244EB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_02244928
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #4
	mov r1, #0x20
	bl sub_020711EC
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022448C4: .word 0x0400000A
	thumb_func_end ov6_0224481C

	thumb_func_start ov6_022448C8
ov6_022448C8: ; 0x022448C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207121C
	ldr r0, [r4, #0x60]
	ldr r0, [r0, #8]
	bl ov6_02244F20
	add r0, r4, #0
	bl ov6_02244B6C
	ldr r2, _02244918 ; =0x04000008
	ldrh r1, [r4, #0x24]
	ldrh r3, [r2]
	mov r0, #3
	bic r3, r0
	orr r1, r3
	strh r1, [r2]
	ldrh r1, [r2, #6]
	bic r1, r0
	ldrh r0, [r4, #0x26]
	orr r0, r1
	strh r0, [r2, #6]
	mov r0, #0
	mov r1, #1
	bl sub_0205D8CC
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_02244918: .word 0x04000008
	thumb_func_end ov6_022448C8

	thumb_func_start ov6_0224491C
ov6_0224491C: ; 0x0224491C
	ldr r3, _02244924 ; =sub_02006C24
	mov r0, #0x61
	mov r1, #4
	bx r3
	; .align 2, 0
_02244924: .word sub_02006C24
	thumb_func_end ov6_0224491C

	thumb_func_start ov6_02244928
ov6_02244928: ; 0x02244928
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x7d
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	bl ov6_0224508C
	add r1, r5, #0
	mov r0, #0x20
	add r1, #0x74
	mov r2, #4
	bl sub_020095C4
	str r0, [r5, #0x70]
	add r0, r5, #0
	mov r2, #2
	add r0, #0x74
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #4
	mov r1, #0
	add r2, r0, #0
	bl sub_02009714
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	mov r1, #1
	mov r2, #4
	bl sub_02009714
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #4
	mov r1, #2
	add r2, r0, #0
	bl sub_02009714
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #3
	mov r2, #4
	bl sub_02009714
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _022449D6
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_02009A4C
	b _022449F0
_022449D6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_02009A4C
_022449F0:
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_022450F4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r6, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #3
	add r3, r6, #0
	bl sub_02009B04
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	cmp r0, #0
	beq _02244A52
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #4
	str r2, [sp, #0xc]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009B04
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r6, r6, #1
_02244A52:
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_0224514C
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02244AA4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x24
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xe
	mov r3, #0
	bl sub_02009BC4
	b _02244ABC
_02244AA4:
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x24
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x11
	mov r3, #0
	bl sub_02009BC4
_02244ABC:
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x28
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xc
	bl sub_02009BC4
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02244B24
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0xf
	mov r3, #0
	bl sub_02009BC4
	b _02244B3E
_02244B24:
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	sub r1, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #0x12
	mov r3, #0
	bl sub_02009BC4
_02244B3E:
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0x5c]
	add r1, r5, r1
	mov r2, #4
	bl ov6_0224509C
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x18
	add r0, r5, r1
	mov r1, #4
	bl ov6_022450E4
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02244928

	thumb_func_start ov6_02244B6C
ov6_02244B6C: ; 0x02244B6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x6b
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02244B78:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02244B82
	bl sub_0200A4E4
_02244B82:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02244B78
	mov r7, #0x6f
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244B92:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244B9C
	bl sub_0200A6DC
_02244B9C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02244B92
	mov r7, #0x72
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244BAC:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244BB6
	bl sub_02009D4C
_02244BB6:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _02244BAC
	mov r7, #0x76
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02244BC6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02244BD0
	bl sub_02009D4C
_02244BD0:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _02244BC6
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02009754
	ldr r0, [r6, #0x70]
	bl sub_020219C0
	ldr r0, [r6, #0x70]
	bl sub_02021964
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02244B6C

	thumb_func_start ov6_02244C10
ov6_02244C10: ; 0x02244C10
	push {r3, lr}
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02244C1C
	bl sub_020219F8
_02244C1C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02244C10

	thumb_func_start ov6_02244C20
ov6_02244C20: ; 0x02244C20
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [sp, #0x84]
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	cmp r0, #4
	bne _02244C68
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #0x67
	ldr r3, [sp, #0x88]
	str r0, [sp, #0xc]
	lsl r6, r6, #2
	str r3, [sp, #0x10]
	ldr r3, [r5, r6]
	str r3, [sp, #0x14]
	add r3, r6, #4
	ldr r3, [r5, r3]
	add r6, #8
	str r3, [sp, #0x18]
	ldr r3, [r5, r6]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
	b _02244CA2
_02244C68:
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0
	ldr r0, [sp, #0x88]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r5, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r5, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x80]
	add r0, sp, #0x4c
	bl sub_020093B4
_02244CA2:
	ldr r0, [r5, #0x70]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #4
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add r4, r0, #0
	bne _02244CCE
	bl sub_02022974
_02244CCE:
	add r0, r4, #0
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02244C20

	thumb_func_start ov6_02244CD4
ov6_02244CD4: ; 0x02244CD4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r5, #1
	add r4, r3, #0
	str r5, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	add r2, r5, #0
	bl ov6_02244C20
	add r1, r4, #0
	add r5, r0, #0
	bl sub_02021D6C
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02244CD4

	thumb_func_start ov6_02244CFC
ov6_02244CFC: ; 0x02244CFC
	push {r4, lr}
	sub sp, #0x10
	ldr r2, [r0, #0xc]
	mov r3, #0
	cmp r2, #1
	bne _02244D0A
	mov r3, #1
_02244D0A:
	mov r2, #2
	str r2, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	mov r4, #0x83
	str r4, [sp, #0xc]
	bl ov6_02244C20
	add r4, r0, #0
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #6
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov6_02244CFC

	thumb_func_start ov6_02244D34
ov6_02244D34: ; 0x02244D34
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02244D34

	thumb_func_start ov6_02244D4C
ov6_02244D4C: ; 0x02244D4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0x1c
	mov r7, #0
	str r7, [r0, #0]
	str r7, [r0, #4]
	add r6, r2, #0
	ldr r5, _02244DB0 ; =0x02249168
	add r3, r1, #0
	str r7, [r0, #8]
	ldmia r5!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	str r7, [sp]
	sub r0, r7, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r7, #0
	str r6, [sp, #0xc]
	bl ov6_02244C20
	add r4, r0, #0
	mov r1, #2
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0x10
	bl sub_02021C70
	add r0, r7, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244DB0: .word 0x02249168
	thumb_func_end ov6_02244D4C

	thumb_func_start ov6_02244DB4
ov6_02244DB4: ; 0x02244DB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov6_0224491C
	add r6, r0, #0
	mov r0, #0x6b
	mov r5, #0
	add r2, r4, #0
	lsl r0, r0, #2
_02244DC8:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02244DF4
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #7
	bl sub_02009A4C
	lsl r1, r5, #2
	add r2, r4, r1
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _02244DFC
_02244DF4:
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #4
	blt _02244DC8
_02244DFC:
	cmp r5, #4
	blt _02244E04
	bl sub_02022974
_02244E04:
	mov r0, #0x72
	mov r5, #0
	add r2, r4, #0
	lsl r0, r0, #2
_02244E0C:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02244E38
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #8
	bl sub_02009BC4
	lsl r1, r5, #2
	add r2, r4, r1
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _02244E40
_02244E38:
	add r5, r5, #1
	add r2, r2, #4
	cmp r5, #4
	blt _02244E0C
_02244E40:
	cmp r5, #4
	blt _02244E48
	bl sub_02022974
_02244E48:
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02244DB4

	thumb_func_start ov6_02244E54
ov6_02244E54: ; 0x02244E54
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A71B0
	ldr r1, [r5, #0]
	mov r0, #3
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	lsl r3, r0, #7
	bl sub_0201972C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02244E54

	thumb_func_start ov6_02244E7C
ov6_02244E7C: ; 0x02244E7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r4, #0
	add r6, r0, #0
	bl sub_020A7118
	ldr r3, [r4, #0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r3, [r3, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl sub_0201958C
	add r0, r6, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02244E7C

	thumb_func_start ov6_02244EB4
ov6_02244EB4: ; 0x02244EB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r6, r1, #0
	mov r2, #0
	add r4, r3, #0
	mov r1, #3
	add r3, r2, #0
	add r5, r0, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #4
	bl sub_02006CB8
	add r1, r4, #0
	add r6, r0, #0
	bl sub_020A7248
	ldr r3, [r4, #0]
	add r0, r5, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #3
	add r2, #0xc
	bl sub_02019574
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xc
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r5, #0
	mov r1, #3
	bl sub_02019448
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02244EB4

	thumb_func_start ov6_02244F20
ov6_02244F20: ; 0x02244F20
	ldr r3, _02244F28 ; =sub_02019EBC
	mov r1, #3
	bx r3
	nop
_02244F28: .word sub_02019EBC
	thumb_func_end ov6_02244F20

	thumb_func_start ov6_02244F2C
ov6_02244F2C: ; 0x02244F2C
	push {r4, lr}
	add r4, r0, #0
	bl ov6_02244F8C
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov6_02244F58
	add r0, r4, #0
	bl ov6_02244F60
	add r0, r4, #0
	bl ov6_02244F50
	mov r0, #1
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov6_02244F2C

	thumb_func_start ov6_02244F50
ov6_02244F50: ; 0x02244F50
	mov r1, #1
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F50

	thumb_func_start ov6_02244F58
ov6_02244F58: ; 0x02244F58
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F58

	thumb_func_start ov6_02244F60
ov6_02244F60: ; 0x02244F60
	mov r1, #0x18
	str r1, [r0, #0x34]
	mov r1, #0
	str r1, [r0, #0x38]
	mov r1, #0x17
	str r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F60

	thumb_func_start ov6_02244F74
ov6_02244F74: ; 0x02244F74
	mov r1, #0x17
	str r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02244F74

	thumb_func_start ov6_02244F80
ov6_02244F80: ; 0x02244F80
	str r1, [r0, #0x44]
	str r3, [r0, #0x48]
	ldr r1, [sp]
	str r2, [r0, #0x4c]
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end ov6_02244F80

	thumb_func_start ov6_02244F8C
ov6_02244F8C: ; 0x02244F8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244F9E
	bl sub_02022974
_02244F9E:
	ldr r0, _02244FB0 ; =ov6_02244FE4
	add r1, r4, #0
	mov r2, #0x81
	bl sub_0200DA04
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_02244FB0: .word ov6_02244FE4
	thumb_func_end ov6_02244F8C

	thumb_func_start ov6_02244FB4
ov6_02244FB4: ; 0x02244FB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02244FC6
	bl sub_02022974
_02244FC6:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02244FE0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	pop {r4, pc}
	nop
_02244FE0: .word 0xFFFF1FFF
	thumb_func_end ov6_02244FB4

	thumb_func_start ov6_02244FE4
ov6_02244FE4: ; 0x02244FE4
	push {r3, r4, r5, r6}
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0224507A
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r0, _02245080 ; =0xFFFF1FFF
	and r2, r0
	ldr r0, [r1, #0x30]
	lsl r0, r0, #0xd
	orr r0, r2
	str r0, [r3, #0]
	add r3, #0x48
	ldrh r2, [r3]
	mov r0, #0x3f
	bic r2, r0
	ldr r0, [r1, #0x34]
	orr r2, r0
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _02245014
	mov r0, #0x20
	orr r2, r0
_02245014:
	ldr r0, _02245084 ; =0x04000048
	strh r2, [r0]
	ldrh r2, [r0, #2]
	mov r0, #0x3f
	bic r2, r0
	ldr r0, [r1, #0x3c]
	orr r2, r0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0224502C
	mov r0, #0x20
	orr r2, r0
_0224502C:
	ldr r5, _02245088 ; =0x0400004A
	strh r2, [r5]
	ldr r2, [r1, #0x50]
	ldr r6, [r1, #0x48]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	ldr r2, [r1, #0x4c]
	asr r4, r0, #0xc
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	ldr r2, [r1, #0x44]
	asr r3, r0, #0xc
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	asr r1, r6, #0xb
	add r0, r2, r0
	lsr r1, r1, #0x14
	asr r0, r0, #0xc
	add r1, r6, r1
	lsl r2, r0, #8
	mov r0, #0xff
	asr r1, r1, #0xc
	lsl r0, r0, #8
	lsl r1, r1, #0x18
	and r2, r0
	lsr r1, r1, #0x18
	orr r2, r1
	add r1, r5, #0
	sub r1, #0xa
	strh r2, [r1]
	lsl r1, r3, #8
	and r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	sub r0, r5, #6
	strh r1, [r0]
_0224507A:
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02245080: .word 0xFFFF1FFF
_02245084: .word 0x04000048
_02245088: .word 0x0400004A
	thumb_func_end ov6_02244FE4

	thumb_func_start ov6_0224508C
ov6_0224508C: ; 0x0224508C
	ldr r3, _02245098 ; =sub_02075EF4
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x5c]
	mov r2, #2
	bx r3
	; .align 2, 0
_02245098: .word sub_02075EF4
	thumb_func_end ov6_0224508C

	thumb_func_start ov6_0224509C
ov6_0224509C: ; 0x0224509C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0x32
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #6
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _022450B8
	bl sub_02022974
_022450B8:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r5, #6]
	add r2, r7, #0
	add r3, r4, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl sub_02013750
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_0224509C

	thumb_func_start ov6_022450E4
ov6_022450E4: ; 0x022450E4
	add r3, r0, #0
	add r2, r1, #0
	ldrh r0, [r3]
	ldrh r1, [r3, #4]
	ldr r3, _022450F0 ; =sub_02013660
	bx r3
	; .align 2, 0
_022450F0: .word sub_02013660
	thumb_func_end ov6_022450E4

	thumb_func_start ov6_022450F4
ov6_022450F4: ; 0x022450F4
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0x67
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	mov r2, #5
	mov r3, #0
	bl sub_02009A4C
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov6_022450F4

	thumb_func_start ov6_02245118
ov6_02245118: ; 0x02245118
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #3
	bl sub_02009DC8
	bl sub_0200A534
	mov r1, #1
	bl sub_020A81B0
	mov r1, #0x32
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	mov r2, #0x32
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #6
	bl sub_020C02BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245118

	thumb_func_start ov6_0224514C
ov6_0224514C: ; 0x0224514C
	push {r3, lr}
	sub sp, #0x10
	mov r2, #2
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #4
	str r2, [sp, #0xc]
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov6_0224514C

	thumb_func_start ov6_02245170
ov6_02245170: ; 0x02245170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	bl sub_0200A534
	add r6, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02009DC8
	add r1, r6, #0
	bl sub_0200A72C
	mov r1, #1
	bl sub_020A81FC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02245170

	thumb_func_start ov6_022451B8
ov6_022451B8: ; 0x022451B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_0200A4E4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x6b
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_022451E2:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _022451F6
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x6b
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _022451FE
_022451F6:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #4
	blt _022451E2
_022451FE:
	cmp r0, #4
	blt _02245206
	bl sub_02022974
_02245206:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_0200A6DC
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x6f
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_0224522C:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _02245240
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x6f
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _02245248
_02245240:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #3
	blt _0224522C
_02245248:
	cmp r0, #3
	blt _02245250
	bl sub_02022974
_02245250:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r4, r0, #0
	bl sub_02009D4C
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02009D68
	mov r1, #0x72
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_02245276:
	ldr r2, [r3, r1]
	cmp r2, r4
	bne _0224528A
	lsl r1, r0, #2
	add r2, r5, r1
	mov r1, #0x72
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r2, r1]
	b _02245292
_0224528A:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #4
	blt _02245276
_02245292:
	cmp r0, #4
	blt _0224529A
	bl sub_02022974
_0224529A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022451B8

	thumb_func_start ov6_0224529C
ov6_0224529C: ; 0x0224529C
	push {r3, lr}
	sub sp, #0x10
	mov r2, #3
	str r2, [sp]
	sub r3, r2, #4
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r3, #0x81
	str r3, [sp, #0xc]
	mov r3, #2
	bl ov6_02244C20
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224529C

	thumb_func_start ov6_022452BC
ov6_022452BC: ; 0x022452BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #2
	ldr r4, _02245324 ; =0x0224936C
	add r6, r1, #0
	str r0, [r5, #0x14]
	mov r7, #0
_022452CC:
	ldr r0, [r4, #0]
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r2, sp, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r3, [sp, #8]
	str r0, [sp]
	str r0, [sp, #0xc]
	str r6, [sp, #4]
	add r0, r5, #0
	bl ov6_02245328
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #8]
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x10
	str r6, [sp, #4]
	bl ov6_02245328
	add r7, r7, #1
	add r4, #0x14
	cmp r7, #0xd
	blt _022452CC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245324: .word 0x0224936C
	thumb_func_end ov6_022452BC

	thumb_func_start ov6_02245328
ov6_02245328: ; 0x02245328
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	str r3, [sp, #8]
	str r5, [sp, #0x10]
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldmia r2!, {r0, r1}
	add r3, sp, #0x14
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	ldr r1, _02245360 ; =0x02249220
	str r0, [r3, #0]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x84
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x30]
	add r2, r4, #0
	bl sub_02071330
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_02245360: .word 0x02249220
	thumb_func_end ov6_02245328

	thumb_func_start ov6_02245364
ov6_02245364: ; 0x02245364
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #4]
	add r1, sp, #0
	bl ov6_02244CD4
	mov r1, #0
	str r0, [r4, #8]
	bl sub_02021CAC
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02245364

	thumb_func_start ov6_022453AC
ov6_022453AC: ; 0x022453AC
	ldr r3, _022453B4 ; =sub_02021BD4
	ldr r0, [r1, #8]
	bx r3
	nop
_022453B4: .word sub_02021BD4
	thumb_func_end ov6_022453AC

	thumb_func_start ov6_022453B8
ov6_022453B8: ; 0x022453B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020715E4
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0xb
	str r0, [sp]
	sub r1, r1, r2
	mov r0, #0xb
	ror r1, r0
	add r0, r2, r1
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _02245432
	ldr r3, [r4, #0x14]
	ldr r0, [r3, #0x14]
	cmp r0, #2
	bne _02245426
	ldr r2, [r3, #0x4c]
	ldr r0, [r3, #0x50]
	mov r3, #2
	ldr r6, [sp, #4]
	lsl r3, r3, #0xc
	sub r5, r6, r3
	mov r1, #0
	cmp r5, r2
	blt _0224541C
	cmp r5, r0
	bgt _0224541C
	add r3, r6, r3
	cmp r3, r2
	blt _0224541C
	cmp r3, r0
	bgt _0224541C
	mov r1, #1
_0224541C:
	ldr r0, [r4, #8]
	bl sub_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02245426:
	cmp r0, #1
	bne _02245432
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
_02245432:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_022453B8

	thumb_func_start ov6_02245438
ov6_02245438: ; 0x02245438
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02245438

	thumb_func_start ov6_0224543C
ov6_0224543C: ; 0x0224543C
	push {r4, lr}
	sub sp, #0x18
	add r2, sp, #0xc
	mov r3, #0
	add r4, r0, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r4, [sp, #8]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0x82
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, _0224546C ; =0x02249248
	bl sub_02071330
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_0224546C: .word 0x02249248
	thumb_func_end ov6_0224543C

	thumb_func_start ov6_02245470
ov6_02245470: ; 0x02245470
	push {r3, lr}
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02071598
	ldrb r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end ov6_02245470

	thumb_func_start ov6_02245480
ov6_02245480: ; 0x02245480
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02071598
	add r5, r0, #0
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0224549A
	bl sub_0207136C
_0224549A:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _022454A4
	bl ov5_021F0EFC
_022454A4:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207136C
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245480

	thumb_func_start ov6_022454B0
ov6_022454B0: ; 0x022454B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl sub_020715E4
	mov r2, #0
	ldr r0, [r4, #0x5c]
	add r1, sp, #0
	add r3, r2, #0
	bl ov6_02244D4C
	str r0, [r4, #0x58]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_022454B0

	thumb_func_start ov6_022454DC
ov6_022454DC: ; 0x022454DC
	ldr r3, _022454E4 ; =sub_02021BD4
	ldr r0, [r1, #0x58]
	bx r3
	nop
_022454E4: .word sub_02021BD4
	thumb_func_end ov6_022454DC

	thumb_func_start ov6_022454E8
ov6_022454E8: ; 0x022454E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r0, [r5]
	lsl r1, r0, #2
	ldr r0, _02245504 ; =0x02249198
	ldr r4, [r0, r1]
_022454F4:
	ldrb r1, [r5, #1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _022454F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245504: .word 0x02249198
	thumb_func_end ov6_022454E8

	thumb_func_start ov6_02245508
ov6_02245508: ; 0x02245508
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02245508

	thumb_func_start ov6_0224550C
ov6_0224550C: ; 0x0224550C
	push {r3, lr}
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r0, #0x58]
	bl sub_02021CAC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_0224550C

	thumb_func_start ov6_0224551C
ov6_0224551C: ; 0x0224551C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r4, _022455BC ; =0x022491B0
	add r2, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0xc
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _022455C0 ; =0x0224915C
	str r0, [r3, #0]
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_02071598
	add r4, r0, #0
	mov r3, #1
	add r5, r4, #0
	strb r3, [r4]
	mov r2, #0
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	add r6, sp, #0xc
	ldmia r6!, {r0, r1}
	add r5, #8
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, sp, #0
	str r0, [r5, #0]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	mov r0, #0xf
	add r5, r4, #0
	str r2, [r4, #0x1c]
	lsl r0, r0, #0xe
	str r0, [r4, #0x38]
	ldmia r6!, {r0, r1}
	add r5, #0x2c
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, sp, #0xc
	str r0, [r5, #0]
	lsl r0, r3, #9
	str r0, [r4, #0x50]
	mov r0, #0x2d
	lsl r0, r0, #0xe
	str r0, [r4, #0x40]
	str r2, [r4, #0x48]
	lsl r0, r3, #0xd
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x58]
	bl sub_02021C50
	ldr r0, [r4, #0x58]
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_02021C94
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022455BC: .word 0x022491B0
_022455C0: .word 0x0224915C
	thumb_func_end ov6_0224551C

	thumb_func_start ov6_022455C4
ov6_022455C4: ; 0x022455C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _022455E4
	lsr r0, r0, #2
	add r0, r1, r0
	str r0, [r5, #0x4c]
_022455E4:
	ldr r0, _022456C4 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	ldr r0, _022456C8 ; =0x0000010E
	cmp r2, r0
	bge _0224562E
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_0224562E:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02245640
	str r0, [r5, #0x2c]
_02245640:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02245652
	str r0, [r5, #0x30]
_02245652:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #6
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r5, #0x38]
	asr r0, r0, #0xc
	bpl _02245674
	mov r0, #0
	str r0, [r5, #0x38]
_02245674:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [sp, #4]
	ldr r0, _022456CC ; =0xFFFC0000
	cmp r1, r0
	bge _022456BE
	add r0, r4, #0
	mov r1, #0
	bl sub_02021CAC
	mov r0, #2
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_022456BE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022456C4: .word 0x0000013B
_022456C8: .word 0x0000010E
_022456CC: .word 0xFFFC0000
	thumb_func_end ov6_022455C4

	thumb_func_start ov6_022456D0
ov6_022456D0: ; 0x022456D0
	mov r0, #0
	bx lr
	thumb_func_end ov6_022456D0

	thumb_func_start ov6_022456D4
ov6_022456D4: ; 0x022456D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _0224582C ; =0x02249144
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02245830 ; =0x02249138
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02071598
	add r4, r0, #0
	mov r0, #2
	add r2, r4, #0
	strb r0, [r4]
	mov r6, #0
	strb r6, [r4, #1]
	mov r7, #1
	strb r7, [r4, #2]
	str r6, [r4, #4]
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x18
	str r0, [r2, #0]
	str r6, [r4, #0x14]
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r6, _02245834 ; =0x0013B000
	add r2, r4, #0
	str r6, [r4, #0x38]
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r7, #0
	add r0, #0xff
	str r0, [r4, #0x50]
	mov r0, #0xe1
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x48]
	lsl r0, r7, #0x11
	str r0, [r4, #0x4c]
	lsr r0, r6, #0xc
	bl sub_0201D264
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x58]
	add r1, sp, #0x24
	bl sub_02021C50
	ldr r0, [r4, #0x58]
	add r1, sp, #0x18
	bl sub_02021C70
	ldr r1, [r4, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_02021C94
	ldr r0, [r4, #0x58]
	add r1, r7, #0
	bl sub_02021CAC
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl ov6_02245B4C
	str r0, [r4, #0x60]
	add r0, r7, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x60]
	mov r1, #4
	bl ov5_021F0EB0
	ldr r2, _02245838 ; =0xFFF88000
	add r1, r7, #0
	mov r3, #0xc
	str r0, [r4, #0x64]
	bl ov5_021F0F10
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r3, _0224583C ; =0x022491BC
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x79
	ldr r1, [r4, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r1, #2
	add r0, r4, #0
	bl sub_02021CF8
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C60
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224582C: .word 0x02249144
_02245830: .word 0x02249138
_02245834: .word 0x0013B000
_02245838: .word 0xFFF88000
_0224583C: .word 0x022491BC
	thumb_func_end ov6_022456D4

	thumb_func_start ov6_02245840
ov6_02245840: ; 0x02245840
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	sub r0, r1, r0
	str r0, [r5, #0x48]
	bpl _02245856
	mov r0, #0
	str r0, [r5, #0x48]
_02245856:
	mov r0, #2
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _02245868
	mov r0, #6
	lsl r0, r0, #0xa
	sub r0, r1, r0
	str r0, [r5, #0x4c]
_02245868:
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02245874
	str r0, [r5, #0x4c]
_02245874:
	ldr r0, _022459A8 ; =0x0000013B
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r2, r0, #0xc
	ldr r0, _022459AC ; =0x0000010E
	cmp r2, r0
	bge _022458BE
	mov r0, #1
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x40]
_022458BE:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #0xa
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _022458D0
	str r0, [r5, #0x2c]
_022458D0:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #0xa
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _022458E2
	str r0, [r5, #0x30]
_022458E2:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	mov r0, #2
	ldr r1, [r5, #0x38]
	lsl r0, r0, #0xe
	add r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r5, #0x38]
	asr r1, r0, #0xc
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r1, r0
	ble _0224590A
	lsl r0, r0, #0xc
	str r0, [r5, #0x38]
_0224590A:
	ldr r1, [r5, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D2A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C94
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02021C50
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0224594C
	mov r0, #0
	str r0, [r5, #4]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _02245952
_0224594C:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_02245952:
	ldr r0, [r5, #4]
	cmp r0, #0xc
	bne _0224595E
	ldr r0, [r5, #0x60]
	bl ov6_02245B80
_0224595E:
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_02021D2C
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	mov r0, #5
	add r1, #0x80
	lsl r0, r0, #0xa
	str r1, [sp]
	cmp r1, r0
	ble _02245988
	str r0, [sp]
_02245988:
	ldr r1, [sp, #4]
	mov r0, #5
	add r1, #0x80
	lsl r0, r0, #0xa
	str r1, [sp, #4]
	cmp r1, r0
	ble _02245998
	str r0, [sp, #4]
_02245998:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022459A8: .word 0x0000013B
_022459AC: .word 0x0000010E
	thumb_func_end ov6_02245840

	thumb_func_start ov6_022459B0
ov6_022459B0: ; 0x022459B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r1, #3
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	bl sub_02021D28
	ldr r4, [r0, #4]
	ldr r0, [r5, #0x58]
	bl sub_02021D28
	ldr r0, [r0, #4]
	sub r0, r4, r0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x60]
	bl ov6_02245B74
	ldr r0, [r5, #0x64]
	mov r1, #2
	mov r2, #0
	mov r3, #0xc
	bl ov5_021F0F10
	mov r1, #1
	lsl r1, r1, #8
	str r1, [r5, #0x50]
	lsl r0, r1, #0xb
	str r0, [r5, #0x40]
	mov r0, #0
	str r0, [r5, #0x48]
	lsl r0, r1, #3
	str r0, [r5, #0x4c]
	mov r0, #3
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_022459B0

	thumb_func_start ov6_02245A0C
ov6_02245A0C: ; 0x02245A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	ldr r4, [r5, #0x58]
	add r0, r1, r0
	str r0, [r5, #0x48]
	mov r0, #1
	ldr r1, [r5, #0x4c]
	lsl r0, r0, #0xc
	add r2, r1, r0
	lsl r1, r0, #4
	str r2, [r5, #0x4c]
	cmp r2, r1
	ble _02245A30
	lsl r0, r0, #4
	str r0, [r5, #0x4c]
_02245A30:
	ldr r1, [r5, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x14]
	mov r0, #0x80
	bl sub_0201D250
	ldr r2, [r5, #0x48]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	mul r0, r1
	str r0, [r5, #0x18]
	mov r0, #0x87
	ldr r1, [r5, #0x40]
	lsl r0, r0, #0xc
	cmp r1, r0
	bge _02245A74
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0x40]
_02245A74:
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r5, #0x2c]
	cmp r1, r0
	ble _02245A86
	str r0, [r5, #0x2c]
_02245A86:
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x50]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r5, #0x30]
	cmp r1, r0
	ble _02245A98
	str r0, [r5, #0x30]
_02245A98:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x2c
	bl sub_02021C70
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, sp, #0x18
	bl sub_02021C50
	mov r0, #0x79
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_02021D2C
	add r2, sp, #0xc
	add r3, sp, #0x18
	add r6, r0, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldmia r6!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #1
	ldr r1, [r5, #0x54]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	str r1, [r5, #0x54]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp]
	cmp r2, r1
	ble _02245B0E
	lsl r0, r0, #5
	str r0, [sp]
_02245B0E:
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	add r2, r1, r0
	lsl r1, r0, #5
	str r2, [sp, #4]
	cmp r2, r1
	ble _02245B22
	lsl r0, r0, #5
	str r0, [sp, #4]
_02245B22:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C70
	ldr r1, [sp, #0x1c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	cmp r0, #0xf0
	blt _02245B42
	mov r0, #2
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02245B42:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02245A0C

	thumb_func_start ov6_02245B48
ov6_02245B48: ; 0x02245B48
	mov r0, #0
	bx lr
	thumb_func_end ov6_02245B48

	thumb_func_start ov6_02245B4C
ov6_02245B4C: ; 0x02245B4C
	push {lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r1, [sp, #0xc]
	str r3, [r2, #8]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #0x81
	str r1, [sp, #4]
	ldr r1, _02245B70 ; =0x0224920C
	bl sub_02071330
	add sp, #0x1c
	pop {pc}
	nop
_02245B70: .word 0x0224920C
	thumb_func_end ov6_02245B4C

	thumb_func_start ov6_02245B74
ov6_02245B74: ; 0x02245B74
	push {r3, lr}
	bl sub_02071598
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_02245B74

	thumb_func_start ov6_02245B80
ov6_02245B80: ; 0x02245B80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r5, #0
	bl sub_020715D4
	ldr r0, [r4, #0x20]
	mov r1, #5
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02245B80

	thumb_func_start ov6_02245BC8
ov6_02245BC8: ; 0x02245BC8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02071598
	add r4, r0, #0
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl ov6_022437C8
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02021D6C
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245BC8

	thumb_func_start ov6_02245C04
ov6_02245C04: ; 0x02245C04
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	ldr r1, [r0, #0]
	str r1, [r4, #0x1c]
	ldr r0, [r0, #4]
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02245C04

	thumb_func_start ov6_02245C18
ov6_02245C18: ; 0x02245C18
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02245C5C
	ldr r1, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, _02245C60 ; =0x022492A8
	ldr r1, [r1, r2]
	str r1, [r4, #0x14]
	add r1, sp, #0
	bl sub_020715E4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xc
	blt _02245C5C
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02245C5C:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02245C60: .word 0x022492A8
	thumb_func_end ov6_02245C18

	thumb_func_start ov6_02245C64
ov6_02245C64: ; 0x02245C64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02245CA8
	ldr r1, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, _02245CAC ; =0x022491FC
	ldr r1, [r1, r2]
	str r1, [r4, #0x14]
	add r1, sp, #0
	bl sub_020715E4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #4
	blt _02245CA8
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_02245CA8:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02245CAC: .word 0x022491FC
	thumb_func_end ov6_02245C64

	thumb_func_start ov6_02245CB0
ov6_02245CB0: ; 0x02245CB0
	push {r3, lr}
	ldr r2, [r1, #0]
	cmp r2, #1
	beq _02245CBE
	cmp r2, #2
	beq _02245CC4
	pop {r3, pc}
_02245CBE:
	bl ov6_02245C18
	pop {r3, pc}
_02245CC4:
	bl ov6_02245C64
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02245CB0

	thumb_func_start ov6_02245CCC
ov6_02245CCC: ; 0x02245CCC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x5f
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl ov6_02245F44
	add r1, r0, #0
	str r4, [r1, #0xc]
	ldr r0, _02245CEC ; =ov6_02245D10
	mov r2, #0x85
	str r5, [r1, #0x14]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245CEC: .word ov6_02245D10
	thumb_func_end ov6_02245CCC

	thumb_func_start ov6_02245CF0
ov6_02245CF0: ; 0x02245CF0
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02245CF0

	thumb_func_start ov6_02245CFC
ov6_02245CFC: ; 0x02245CFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov6_02245CFC

	thumb_func_start ov6_02245D10
ov6_02245D10: ; 0x02245D10
	push {r3, r4, r5, lr}
	ldr r4, _02245D44 ; =0x02249270
	add r5, r1, #0
_02245D16:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _02245D16
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02245D42
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245D38
	bl sub_020713D0
_02245D38:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02245D42
	bl sub_020219F8
_02245D42:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245D44: .word 0x02249270
	thumb_func_end ov6_02245D10

	thumb_func_start ov6_02245D48
ov6_02245D48: ; 0x02245D48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov6_02243F74
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245D48

	thumb_func_start ov6_02245D60
ov6_02245D60: ; 0x02245D60
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x20
	bl sub_020711EC
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #2
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0x20
	add r3, r2, #0
	str r2, [sp, #0x14]
	bl ov6_02243258
	bl ov6_02243F20
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #7
	mov r3, #0
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov6_02243588
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_022435F8
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_02243554
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0
	bl ov6_0224362C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02245E32
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xd
	mov r3, #2
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xe
	mov r3, #2
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0xf
	mov r3, #1
	bl ov6_022436D0
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243554
	b _02245E92
_02245E32:
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #2
	bl ov6_022434B0
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #4
	mov r3, #1
	bl ov6_02243588
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x11
	mov r3, #2
	bl ov6_02243660
	add r0, r5, #0
	add r0, #0x18
	add r1, r4, #0
	mov r2, #0x12
	mov r3, #1
	bl ov6_022436D0
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243520
	add r0, r5, #0
	add r0, #0x18
	mov r1, #1
	bl ov6_022435F8
	add r0, r5, #0
	add r0, #0x18
	mov r1, #2
	bl ov6_02243554
	add r0, r5, #0
	add r0, #0x18
	mov r1, #1
	bl ov6_0224362C
_02245E92:
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245D60

	thumb_func_start ov6_02245EA4
ov6_02245EA4: ; 0x02245EA4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	add r0, #0x18
	bl ov6_02243848
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	mov r3, #0x17
	lsl r3, r3, #4
	ldr r1, [r4, r3]
	sub r3, r3, #4
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	ldr r3, [r4, r3]
	add r2, #0x18
	bl ov6_02243888
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl ov6_02243950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_02245EA4

	thumb_func_start ov6_02245EEC
ov6_02245EEC: ; 0x02245EEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_022438BC
	cmp r0, #2
	beq _02245F02
	mov r0, #0
	pop {r4, pc}
_02245F02:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov6_022438EC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245EEC

	thumb_func_start ov6_02245F18
ov6_02245F18: ; 0x02245F18
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207121C
	add r0, r4, #0
	add r0, #0x18
	bl ov6_0224339C
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #1
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	add r1, r1, #1
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F18

	thumb_func_start ov6_02245F40
ov6_02245F40: ; 0x02245F40
	mov r0, #0
	bx lr
	thumb_func_end ov6_02245F40

	thumb_func_start ov6_02245F44
ov6_02245F44: ; 0x02245F44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02018184
	add r4, r0, #0
	bne _02245F54
	bl sub_02022974
_02245F54:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F44

	thumb_func_start ov6_02245F64
ov6_02245F64: ; 0x02245F64
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x60]
	add r4, r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02062DDC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062D64
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02245F64

	thumb_func_start ov6_02245F80
ov6_02245F80: ; 0x02245F80
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r4, #0]
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov6_02245F80

	thumb_func_start ov6_02245F94
ov6_02245F94: ; 0x02245F94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_02021D28
	ldr r1, [r4, #4]
	ldr r0, [r0, #4]
	ldr r5, [r1, #0x4c]
	ldr r3, [r1, #0x50]
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	bne _02245FD0
	mov r1, #2
	lsl r1, r1, #0xe
	sub r2, r0, r1
	cmp r2, r5
	blt _02245FC6
	add r0, r0, r1
	cmp r0, r3
	bgt _02245FC6
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_02245FC6:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_02245FD0:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02245F94

	thumb_func_start ov6_02245FDC
ov6_02245FDC: ; 0x02245FDC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #0]
	add r4, r0, #0
	str r3, [r2, #4]
	mov r0, #0x79
	str r3, [r2, #8]
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, r0, #4
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #0x86
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	ldr r1, _02246014 ; =0x02249234
	bl sub_02071330
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_02246014: .word 0x02249234
	thumb_func_end ov6_02245FDC

	thumb_func_start ov6_02246018
ov6_02246018: ; 0x02246018
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02246032
	bl sub_0207136C
	mov r0, #0x1f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02246032:
	pop {r4, pc}
	thumb_func_end ov6_02246018

	.rodata


	.global Unk_ov6_022490E8
Unk_ov6_022490E8: ; 0x022490E8
	.incbin "incbin/overlay6_rodata.bin", 0x2D4, 0x2D8 - 0x2D4

	.global Unk_ov6_022490EC
Unk_ov6_022490EC: ; 0x022490EC
	.incbin "incbin/overlay6_rodata.bin", 0x2D8, 0x2DC - 0x2D8

	.global Unk_ov6_022490F0
Unk_ov6_022490F0: ; 0x022490F0
	.incbin "incbin/overlay6_rodata.bin", 0x2DC, 0x2E4 - 0x2DC

	.global Unk_ov6_022490F8
Unk_ov6_022490F8: ; 0x022490F8
	.incbin "incbin/overlay6_rodata.bin", 0x2E4, 0x2EC - 0x2E4

	.global Unk_ov6_02249100
Unk_ov6_02249100: ; 0x02249100
	.incbin "incbin/overlay6_rodata.bin", 0x2EC, 0x2F4 - 0x2EC

	.global Unk_ov6_02249108
Unk_ov6_02249108: ; 0x02249108
	.incbin "incbin/overlay6_rodata.bin", 0x2F4, 0x2FC - 0x2F4

	.global Unk_ov6_02249110
Unk_ov6_02249110: ; 0x02249110
	.incbin "incbin/overlay6_rodata.bin", 0x2FC, 0x304 - 0x2FC

	.global Unk_ov6_02249118
Unk_ov6_02249118: ; 0x02249118
	.incbin "incbin/overlay6_rodata.bin", 0x304, 0x30C - 0x304

	.global Unk_ov6_02249120
Unk_ov6_02249120: ; 0x02249120
	.incbin "incbin/overlay6_rodata.bin", 0x30C, 0x318 - 0x30C

	.global Unk_ov6_0224912C
Unk_ov6_0224912C: ; 0x0224912C
	.incbin "incbin/overlay6_rodata.bin", 0x318, 0x324 - 0x318

	.global Unk_ov6_02249138
Unk_ov6_02249138: ; 0x02249138
	.incbin "incbin/overlay6_rodata.bin", 0x324, 0x330 - 0x324

	.global Unk_ov6_02249144
Unk_ov6_02249144: ; 0x02249144
	.incbin "incbin/overlay6_rodata.bin", 0x330, 0x33C - 0x330

	.global Unk_ov6_02249150
Unk_ov6_02249150: ; 0x02249150
	.incbin "incbin/overlay6_rodata.bin", 0x33C, 0x348 - 0x33C

	.global Unk_ov6_0224915C
Unk_ov6_0224915C: ; 0x0224915C
	.incbin "incbin/overlay6_rodata.bin", 0x348, 0x354 - 0x348

	.global Unk_ov6_02249168
Unk_ov6_02249168: ; 0x02249168
	.incbin "incbin/overlay6_rodata.bin", 0x354, 0x360 - 0x354

	.global Unk_ov6_02249174
Unk_ov6_02249174: ; 0x02249174
	.incbin "incbin/overlay6_rodata.bin", 0x360, 0x36C - 0x360

	.global Unk_ov6_02249180
Unk_ov6_02249180: ; 0x02249180
	.incbin "incbin/overlay6_rodata.bin", 0x36C, 0x378 - 0x36C

	.global Unk_ov6_0224918C
Unk_ov6_0224918C: ; 0x0224918C
	.incbin "incbin/overlay6_rodata.bin", 0x378, 0x384 - 0x378

	.global Unk_ov6_02249198
Unk_ov6_02249198: ; 0x02249198
	.incbin "incbin/overlay6_rodata.bin", 0x384, 0x390 - 0x384

	.global Unk_ov6_022491A4
Unk_ov6_022491A4: ; 0x022491A4
	.incbin "incbin/overlay6_rodata.bin", 0x390, 0x39C - 0x390

	.global Unk_ov6_022491B0
Unk_ov6_022491B0: ; 0x022491B0
	.incbin "incbin/overlay6_rodata.bin", 0x39C, 0x3A8 - 0x39C

	.global Unk_ov6_022491BC
Unk_ov6_022491BC: ; 0x022491BC
	.incbin "incbin/overlay6_rodata.bin", 0x3A8, 0x3B4 - 0x3A8

	.global Unk_ov6_022491C8
Unk_ov6_022491C8: ; 0x022491C8
	.incbin "incbin/overlay6_rodata.bin", 0x3B4, 0x3C0 - 0x3B4

	.global Unk_ov6_022491D4
Unk_ov6_022491D4: ; 0x022491D4
	.incbin "incbin/overlay6_rodata.bin", 0x3C0, 0x3CC - 0x3C0

	.global Unk_ov6_022491E0
Unk_ov6_022491E0: ; 0x022491E0
	.incbin "incbin/overlay6_rodata.bin", 0x3CC, 0x3D8 - 0x3CC

	.global Unk_ov6_022491EC
Unk_ov6_022491EC: ; 0x022491EC
	.incbin "incbin/overlay6_rodata.bin", 0x3D8, 0x3E8 - 0x3D8

	.global Unk_ov6_022491FC
Unk_ov6_022491FC: ; 0x022491FC
	.incbin "incbin/overlay6_rodata.bin", 0x3E8, 0x3F8 - 0x3E8

	.global Unk_ov6_0224920C
Unk_ov6_0224920C: ; 0x0224920C
	.incbin "incbin/overlay6_rodata.bin", 0x3F8, 0x40C - 0x3F8

	.global Unk_ov6_02249220
Unk_ov6_02249220: ; 0x02249220
	.incbin "incbin/overlay6_rodata.bin", 0x40C, 0x420 - 0x40C

	.global Unk_ov6_02249234
Unk_ov6_02249234: ; 0x02249234
	.incbin "incbin/overlay6_rodata.bin", 0x420, 0x434 - 0x420

	.global Unk_ov6_02249248
Unk_ov6_02249248: ; 0x02249248
	.incbin "incbin/overlay6_rodata.bin", 0x434, 0x448 - 0x434

	.global Unk_ov6_0224925C
Unk_ov6_0224925C: ; 0x0224925C
	.incbin "incbin/overlay6_rodata.bin", 0x448, 0x45C - 0x448

	.global Unk_ov6_02249270
Unk_ov6_02249270: ; 0x02249270
	.incbin "incbin/overlay6_rodata.bin", 0x45C, 0x474 - 0x45C

	.global Unk_ov6_02249288
Unk_ov6_02249288: ; 0x02249288
	.incbin "incbin/overlay6_rodata.bin", 0x474, 0x494 - 0x474

	.global Unk_ov6_022492A8
Unk_ov6_022492A8: ; 0x022492A8
	.incbin "incbin/overlay6_rodata.bin", 0x494, 0x4C4 - 0x494

	.global Unk_ov6_022492D8
Unk_ov6_022492D8: ; 0x022492D8
	.incbin "incbin/overlay6_rodata.bin", 0x4C4, 0x4FC - 0x4C4

	.global Unk_ov6_02249310
Unk_ov6_02249310: ; 0x02249310
	.incbin "incbin/overlay6_rodata.bin", 0x4FC, 0x558 - 0x4FC

	.global Unk_ov6_0224936C
Unk_ov6_0224936C: ; 0x0224936C
	.incbin "incbin/overlay6_rodata.bin", 0x558, 0x104

