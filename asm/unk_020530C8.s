	.include "macros/function.inc"
	.include "include/unk_020530C8.inc"

	

	.text


	thumb_func_start sub_020530C8
sub_020530C8: ; 0x020530C8
	ldr r1, [r0, #0x1c]
	ldr r2, _02053114 ; =0x0000014B
	ldr r1, [r1, #0]
	cmp r1, r2
	bgt _020530F0
	sub r2, r2, #5
	sub r2, r1, r2
	bmi _020530FA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020530E4: ; jump table
	.short _020530F6 - _020530E4 - 2 ; case 0
	.short _020530F6 - _020530E4 - 2 ; case 1
	.short _020530F6 - _020530E4 - 2 ; case 2
	.short _020530F6 - _020530E4 - 2 ; case 3
	.short _020530F6 - _020530E4 - 2 ; case 4
	.short _020530F6 - _020530E4 - 2 ; case 5
_020530F0:
	ldr r2, _02053118 ; =0x000001ED
	cmp r1, r2
	bne _020530FA
_020530F6:
	mov r2, #1
	b _020530FC
_020530FA:
	mov r2, #0
_020530FC:
	cmp r2, #0
	bne _0205310A
	ldr r1, [r0, #0x70]
	cmp r1, #4
	bne _0205310A
	mov r1, #0
	str r1, [r0, #0x70]
_0205310A:
	cmp r2, #0
	beq _02053112
	mov r1, #4
	str r1, [r0, #0x70]
_02053112:
	bx lr
	; .align 2, 0
_02053114: .word 0x0000014B
_02053118: .word 0x000001ED
	thumb_func_end sub_020530C8

	thumb_func_start sub_0205311C
sub_0205311C: ; 0x0205311C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0203A790
	add r6, r0, #0
	bl sub_0203A728
	add r2, r0, #0
	cmp r4, #0
	beq _02053150
	ldr r3, [r5, #0x1c]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r2, [r5, #0x1c]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_02053150:
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A3B0
	ldr r0, [r5, #0x1c]
	ldr r1, [r0, #4]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0205319E
	add r0, r5, #0
	bl sub_0203A450
	ldrh r2, [r0]
	ldr r1, [r5, #0x1c]
	str r2, [r1, #8]
	ldrh r2, [r0, #2]
	ldr r1, [r5, #0x1c]
	str r2, [r1, #0xc]
	ldrh r1, [r0, #6]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bne _0205319E
	add r0, r6, #0
	bl sub_0203A730
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203A724
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
_0205319E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205311C

	thumb_func_start sub_020531A0
sub_020531A0: ; 0x020531A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	cmp r0, #5
	blt _020531AE
	bl sub_02022974
_020531AE:
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1c
	ldr r0, _020531BC ; =0x021BF6DC
	strb r1, [r0, #5]
	pop {r4, pc}
	; .align 2, 0
_020531BC: .word 0x021BF6DC
	thumb_func_end sub_020531A0

	thumb_func_start sub_020531C0
sub_020531C0: ; 0x020531C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	ldr r7, [r0, #0]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02055414
	add r0, r5, #0
	bl sub_0203F1C4
	cmp r6, #0
	bne _020531EC
	add r0, r5, #0
	bl sub_02070494
	b _020531F2
_020531EC:
	add r0, r5, #0
	bl sub_02070430
_020531F2:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B0D4
	cmp r6, #0
	bne _02053206
	add r0, r5, #0
	bl sub_020559DC
_02053206:
	cmp r6, #0
	bne _02053214
	ldr r0, [r5, #0xc]
	bl sub_02027860
	bl sub_02027F50
_02053214:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203A944
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xe
	bne _02053236
	ldr r0, [sp]
	bl sub_0206AF0C
	cmp r0, #1
	beq _02053244
_02053236:
	cmp r4, #0x10
	bne _02053246
	ldr r0, [sp]
	bl sub_0206AEDC
	cmp r0, #1
	bne _02053246
_02053244:
	mov r4, #0
_02053246:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0203A754
	cmp r6, #0
	beq _0205326A
	ldr r0, [sp, #4]
	bl sub_0203A770
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203A188
	cmp r4, r0
	beq _02053278
	bl sub_02022974
	b _02053278
_0205326A:
	add r0, r7, #0
	bl sub_0203A188
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0203A778
_02053278:
	cmp r6, #0
	bne _0205328E
	add r0, r7, #0
	bl sub_0203A858
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _0205328E
	ldr r0, [sp, #4]
	bl sub_0203A764
_0205328E:
	add r0, r5, #0
	mov r1, #2
	bl sub_0203F5C0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	add r5, #0x7a
	strh r1, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020531C0

	thumb_func_start sub_020532A8
sub_020532A8: ; 0x020532A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r6, [r0, #0]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02055414
	add r0, r5, #0
	bl sub_0203F1C4
	cmp r4, #0
	bne _020532D2
	add r0, r5, #0
	bl sub_02070494
	b _020532D8
_020532D2:
	add r0, r5, #0
	bl sub_02070430
_020532D8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B0D4
	cmp r4, #0
	bne _020532EC
	add r0, r5, #0
	bl sub_020559DC
_020532EC:
	cmp r4, #0
	bne _020532FA
	ldr r0, [r5, #0xc]
	bl sub_02027860
	bl sub_02027F50
_020532FA:
	cmp r4, #0
	bne _02053310
	add r0, r6, #0
	bl sub_0203A858
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02053310
	add r0, r7, #0
	bl sub_0203A764
_02053310:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	add r5, #0x7a
	strh r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020532A8

	thumb_func_start sub_02053320
sub_02053320: ; 0x02053320
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #0x40
	mov r2, #5
	bl sub_02061804
	str r0, [r5, #0x38]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	ldr r3, [r5, #0x1c]
	ldr r1, [r0, #4]
	str r1, [sp]
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x38]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl sub_0205E7D0
	str r0, [r5, #0x3c]
	add r0, r5, #0
	bl sub_0203A418
	ldr r0, [r5, #0x38]
	bl sub_02062C30
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02053320

	thumb_func_start sub_02053374
sub_02053374: ; 0x02053374
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205E8E0
	ldr r0, [r4, #0x38]
	bl sub_02061BBC
	ldr r0, [r4, #0x38]
	bl sub_02061830
	pop {r4, pc}
	thumb_func_end sub_02053374

	thumb_func_start sub_0205338C
sub_0205338C: ; 0x0205338C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x40
	mov r2, #5
	bl sub_02061804
	str r0, [r5, #0x38]
	add r0, r5, #0
	bl sub_0203A7C0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	bl sub_0205E820
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x38]
	bl sub_02062C30
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205338C

	thumb_func_start sub_020533CC
sub_020533CC: ; 0x020533CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020530C8
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _020533DE
	bl sub_02022974
_020533DE:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x2c]
	ldr r0, [r0, #0]
	bl sub_02039DC0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #3
	bl sub_0206B1F0
	cmp r0, #0
	beq _020533FE
	ldr r0, [r4, #0x2c]
	bl sub_02039FE0
_020533FE:
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #2
	bl sub_0206B1F0
	cmp r0, #0
	bne _02053414
	ldr r0, [r4, #0x2c]
	bl sub_02039F8C
_02053414:
	ldr r0, [r4, #0x70]
	cmp r0, #5
	blt _0205341E
	bl sub_02022974
_0205341E:
	ldr r0, [r4, #0x70]
	ldr r1, _02053464 ; =0x020EC3A8
	lsl r0, r0, #3
	add r0, r1, r0
	str r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x74]
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0x5c
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	bl sub_02054F44
	ldr r0, [r4, #0x74]
	ldr r1, [r0, #0]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1c
	beq _02053460
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02054BD0
_02053460:
	pop {r4, pc}
	nop
_02053464: .word 0x020EC3A8
	thumb_func_end sub_020533CC

	thumb_func_start sub_02053468
sub_02053468: ; 0x02053468
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _02053476
	bl sub_02022974
_02053476:
	mov r0, #0
	str r0, [r4, #0x5c]
	mov r0, #5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1c
	beq _0205348E
	add r0, r4, #0
	bl sub_02054BF8
_0205348E:
	mov r0, #0
	str r0, [r4, #0x74]
	pop {r4, pc}
	thumb_func_end sub_02053468

	thumb_func_start sub_02053494
sub_02053494: ; 0x02053494
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020534BA
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0202BC58
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0202B758
_020534BA:
	pop {r4, pc}
	thumb_func_end sub_02053494

	thumb_func_start sub_020534BC
sub_020534BC: ; 0x020534BC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020534EA
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r0, [r0, #0]
	mov r1, #0xb
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0202BC58
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0202B758
_020534EA:
	pop {r4, pc}
	thumb_func_end sub_020534BC

	thumb_func_start sub_020534EC
sub_020534EC: ; 0x020534EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	ldr r1, [r4, #0x1c]
	ldr r1, [r1, #0]
	str r1, [r5, #0]
	mov r1, #0
	mvn r1, r1
	str r1, [r5, #4]
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020534EC

	thumb_func_start sub_02053518
sub_02053518: ; 0x02053518
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A334
	cmp r0, #0
	beq _0205353A
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #8]
	cmp r0, #7
	bne _0205353A
	ldr r0, [r1, #0xc]
	cmp r0, #6
	bne _0205353A
	mov r0, #1
	pop {r4, pc}
_0205353A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02053518

	thumb_func_start sub_02053540
sub_02053540: ; 0x02053540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053540

	thumb_func_start sub_02053570
sub_02053570: ; 0x02053570
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053592
	cmp r0, #1
	beq _020535B6
	cmp r0, #2
	beq _020535C4
	b _020535C8
_02053592:
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	bl sub_0205311C
	add r0, r5, #0
	bl sub_020533CC
	add r0, r5, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r5, #0
	bl sub_02053320
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020535C8
_020535B6:
	add r0, r6, #0
	bl sub_020559CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020535C8
_020535C4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_020535C8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053570

	thumb_func_start sub_020535CC
sub_020535CC: ; 0x020535CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x70]
	bl sub_0203F598
	ldr r1, _020535E4 ; =sub_02053570
	add r0, r4, #0
	mov r2, #0
	bl sub_02050904
	pop {r4, pc}
	; .align 2, 0
_020535E4: .word sub_02053570
	thumb_func_end sub_020535CC

	thumb_func_start sub_020535E8
sub_020535E8: ; 0x020535E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #4
	bhi _020536FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02053614: ; jump table
	.short _0205361E - _02053614 - 2 ; case 0
	.short _0205364C - _02053614 - 2 ; case 1
	.short _020536E0 - _02053614 - 2 ; case 2
	.short _020536EC - _02053614 - 2 ; case 3
	.short _020536F0 - _02053614 - 2 ; case 4
_0205361E:
	ldr r0, [r4, #0xc]
	bl sub_0202878C
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B6A4
	cmp r0, #0
	beq _0205364C
	add r0, r4, #0
	mov r1, #0
	bl sub_0203D30C
	mov r0, #4
	str r0, [r6, #0]
	b _020536FE
_0205364C:
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B634
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r7, #0
	bl sub_0206ADBC
	cmp r0, #0
	beq _020536B4
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02053518
	cmp r0, #0
	beq _0205368A
	add r0, r4, #0
	bl sub_02053540
_0205368A:
	add r0, r7, #0
	bl sub_0206ADAC
	add r0, r5, #0
	bl sub_0203A730
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r4, #0
	bl sub_02053320
	b _020536CE
_020536B4:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	bl sub_020559DC
	add r0, r4, #0
	bl sub_0205338C
_020536CE:
	add r0, r4, #0
	bl sub_02053494
	add r0, r4, #0
	bl sub_020705CC
	mov r0, #2
	str r0, [r6, #0]
	b _020536FE
_020536E0:
	add r0, r5, #0
	bl sub_020559CC
	mov r0, #3
	str r0, [r6, #0]
	b _020536FE
_020536EC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020536F0:
	add r0, r4, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020536FE
	mov r0, #1
	str r0, [r6, #0]
_020536FE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020535E8

	thumb_func_start sub_02053704
sub_02053704: ; 0x02053704
	ldr r3, _02053710 ; =sub_02050904
	mov r2, #0
	str r2, [r0, #0x70]
	ldr r1, _02053714 ; =sub_020535E8
	bx r3
	nop
_02053710: .word sub_02050904
_02053714: .word sub_020535E8
	thumb_func_end sub_02053704

	thumb_func_start sub_02053718
sub_02053718: ; 0x02053718
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r7, #0
	bl sub_02050A68
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #5
	bhi _02053802
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205374C: ; jump table
	.short _02053758 - _0205374C - 2 ; case 0
	.short _02053790 - _0205374C - 2 ; case 1
	.short _020537BA - _0205374C - 2 ; case 2
	.short _020537D8 - _0205374C - 2 ; case 3
	.short _020537EC - _0205374C - 2 ; case 4
	.short _020537F8 - _0205374C - 2 ; case 5
_02053758:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r4, #0xc]
	bl sub_0202878C
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF2C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	add r1, r5, #0
	bl sub_0202B634
	add r4, #0x9c
	str r0, [r4, #0]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_02053790:
	add r0, r4, #0
	add r1, r5, #4
	bl sub_0205311C
	add r0, r4, #0
	bl sub_020533CC
	add r0, r4, #0
	mov r1, #0
	bl sub_020531C0
	add r0, r4, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020534BC
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537BA:
	add r0, r4, #0
	bl sub_0205B33C
	str r0, [r4, #0x7c]
	bl sub_0205C22C
	add r4, #0x80
	str r0, [r4, #0]
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537D8:
	mov r1, #0
	str r1, [r5, #0]
	add r0, r4, #0
	add r2, r5, #0
	bl ov5_021E15A8
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537EC:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02053802
	add r0, r0, #1
	str r0, [r6, #0]
	b _02053802
_020537F8:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053802:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053718

	thumb_func_start sub_02053808
sub_02053808: ; 0x02053808
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A2DC
	cmp r0, #0
	bne _02053840
	add r0, r4, #0
	bl sub_02053518
	cmp r0, #0
	beq _02053838
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02053540
	add r0, r5, #0
	bl sub_0206AD9C
	b _02053840
_02053838:
	add r0, r4, #0
	bl sub_02053704
	pop {r3, r4, r5, pc}
_02053840:
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r2, r0, #0
	mov r1, #0
	ldr r0, _02053870 ; =0x000001D2
	str r1, [r2, #0]
	str r0, [r2, #4]
	sub r0, r1, #1
	str r0, [r2, #8]
	mov r0, #8
	str r0, [r2, #0xc]
	mov r0, #0xe
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	mov r0, #2
	str r0, [r4, #0x70]
	ldr r1, _02053874 ; =sub_02053718
	add r0, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	nop
_02053870: .word 0x000001D2
_02053874: .word sub_02053718
	thumb_func_end sub_02053808

	thumb_func_start sub_02053878
sub_02053878: ; 0x02053878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020538F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205389C: ; jump table
	.short _020538A4 - _0205389C - 2 ; case 0
	.short _020538C0 - _0205389C - 2 ; case 1
	.short _020538D0 - _0205389C - 2 ; case 2
	.short _020538EE - _0205389C - 2 ; case 3
_020538A4:
	ldr r0, _020538FC ; =0x00000603
	bl sub_02005748
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055974
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538C0:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538D0:
	bl sub_02005684
	cmp r0, #0
	bne _020538F6
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_020559CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020538F6
_020538EE:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020538F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020538FC: .word 0x00000603
	thumb_func_end sub_02053878

	thumb_func_start sub_02053900
sub_02053900: ; 0x02053900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	ldmia r4!, {r0, r1}
	add r3, r2, #4
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _0205392C ; =sub_02053878
	str r0, [r3, #0]
	add r0, r5, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205392C: .word sub_02053878
	thumb_func_end sub_02053900

	thumb_func_start sub_02053930
sub_02053930: ; 0x02053930
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053952
	cmp r0, #1
	beq _02053966
	cmp r0, #2
	beq _0205398C
	b _0205399C
_02053952:
	add r0, r5, #0
	bl sub_02053374
	add r0, r5, #0
	bl sub_02053468
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205399C
_02053966:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_0205311C
	add r0, r5, #0
	bl sub_020533CC
	add r0, r5, #0
	mov r1, #0
	bl sub_020531C0
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205399C
_0205398C:
	add r0, r5, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205399C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053930

	thumb_func_start sub_020539A0
sub_020539A0: ; 0x020539A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _020539C6
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_020539C6:
	mov r0, #0
	str r0, [r4, #0]
	ldmia r5!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _020539E4 ; =sub_02053930
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020539E4: .word sub_02053930
	thumb_func_end sub_020539A0

	thumb_func_start sub_020539E8
sub_020539E8: ; 0x020539E8
	push {lr}
	sub sp, #0x14
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	str r3, [sp, #8]
	str r1, [sp, #0x10]
	add r1, sp, #0
	bl sub_020539A0
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020539E8

	thumb_func_start sub_02053A04
sub_02053A04: ; 0x02053A04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _02053A7C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053A28: ; jump table
	.short _02053A30 - _02053A28 - 2 ; case 0
	.short _02053A46 - _02053A28 - 2 ; case 1
	.short _02053A56 - _02053A28 - 2 ; case 2
	.short _02053A74 - _02053A28 - 2 ; case 3
_02053A30:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A46:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A56:
	bl sub_02005684
	cmp r0, #0
	bne _02053A7C
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053A7C
_02053A74:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02053A7C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053A04

	thumb_func_start sub_02053A80
sub_02053A80: ; 0x02053A80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r5, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [sp, #0x18]
	str r6, [r2, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, _02053AB0 ; =sub_02053A04
	str r0, [r2, #0x14]
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02053AB0: .word sub_02053A04
	thumb_func_end sub_02053A80

	thumb_func_start sub_02053AB4
sub_02053AB4: ; 0x02053AB4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	add r3, r2, #0
	add r5, sp, #0
	str r0, [r2, #4]
	ldmia r5!, {r0, r1}
	add r3, #8
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053AF8 ; =sub_02053B44
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02050904
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02053AF8: .word sub_02053B44
	thumb_func_end sub_02053AB4

	thumb_func_start sub_02053AFC
sub_02053AFC: ; 0x02053AFC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r1, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xb
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	add r3, r2, #0
	add r5, sp, #0
	str r0, [r2, #4]
	ldmia r5!, {r0, r1}
	add r3, #8
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053B40 ; =sub_02053B44
	str r0, [r3, #0]
	add r0, r4, #0
	bl sub_02050924
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02053B40: .word sub_02053B44
	thumb_func_end sub_02053AFC

	thumb_func_start sub_02053B44
sub_02053B44: ; 0x02053B44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, [r4, #0]
	add r5, #8
	cmp r1, #3
	bhi _02053BD0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053B6C: ; jump table
	.short _02053B74 - _02053B6C - 2 ; case 0
	.short _02053B8A - _02053B6C - 2 ; case 1
	.short _02053BA4 - _02053B6C - 2 ; case 2
	.short _02053BC8 - _02053B6C - 2 ; case 3
_02053B74:
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02055644
	add r0, r7, #0
	bl sub_02053BD4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053B8A:
	ldr r0, [r6, #0x3c]
	mov r1, #0
	bl sub_0205EB58
	add r1, r4, #0
	add r0, r7, #0
	add r1, #8
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053BA4:
	bl sub_02005684
	cmp r0, #0
	bne _02053BD0
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_0207056C
	add r0, r7, #0
	bl sub_02053C10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053BD0
_02053BC8:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053BD0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02053B44

	thumb_func_start sub_02053BD4
sub_02053BD4: ; 0x02053BD4
	ldr r3, _02053BDC ; =sub_02050944
	ldr r1, _02053BE0 ; =sub_02053BE4
	mov r2, #0
	bx r3
	; .align 2, 0
_02053BDC: .word sub_02050944
_02053BE0: .word sub_02053BE4
	thumb_func_end sub_02053BD4

	thumb_func_start sub_02053BE4
sub_02053BE4: ; 0x02053BE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053BFA
	cmp r0, #1
	beq _02053C08
	b _02053C0C
_02053BFA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C0C
_02053C08:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053C0C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053BE4

	thumb_func_start sub_02053C10
sub_02053C10: ; 0x02053C10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _02053C24 ; =sub_02053C28
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02053C24: .word sub_02053C28
	thumb_func_end sub_02053C10

	thumb_func_start sub_02053C28
sub_02053C28: ; 0x02053C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02053C48
	cmp r1, #1
	beq _02053C56
	cmp r1, #2
	beq _02053C68
	b _02053C6C
_02053C48:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C6C
_02053C56:
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_02053C70
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053C6C
_02053C68:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053C6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053C28

	thumb_func_start sub_02053C70
sub_02053C70: ; 0x02053C70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02053C92
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02053C92:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB98
	add r1, r0, #0
	add r0, r5, #0
	bl ov6_02245CCC
	str r0, [r4, #4]
	ldr r1, _02053CB0 ; =sub_02053CB4
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_02053CB0: .word sub_02053CB4
	thumb_func_end sub_02053C70

	thumb_func_start sub_02053CB4
sub_02053CB4: ; 0x02053CB4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov6_02245CF0
	cmp r0, #1
	bne _02053CD0
	ldr r0, [r4, #4]
	bl ov6_02245CFC
	mov r0, #1
	pop {r4, pc}
_02053CD0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02053CB4

	thumb_func_start sub_02053CD4
sub_02053CD4: ; 0x02053CD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x20
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r4, [r2, #4]
	str r0, [r2, #8]
	add r3, r2, #0
	ldmia r5!, {r0, r1}
	add r3, #0xc
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02053D08 ; =sub_02053D0C
	str r0, [r3, #0]
	add r0, r6, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02053D08: .word sub_02053D0C
	thumb_func_end sub_02053CD4

	thumb_func_start sub_02053D0C
sub_02053D0C: ; 0x02053D0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	add r6, r4, #0
	ldr r1, [r4, #0]
	add r6, #0xc
	cmp r1, #3
	bhi _02053DB0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02053D34: ; jump table
	.short _02053D3C - _02053D34 - 2 ; case 0
	.short _02053D52 - _02053D34 - 2 ; case 1
	.short _02053D6C - _02053D34 - 2 ; case 2
	.short _02053DA8 - _02053D34 - 2 ; case 3
_02053D3C:
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl sub_02055644
	add r0, r7, #0
	bl sub_02053DB4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053D52:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205EB58
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xc
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053D6C:
	bl sub_02005684
	cmp r0, #0
	bne _02053DB0
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl sub_02055670
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _02053D8A
	add r0, r5, #0
	bl sub_02070588
	b _02053D9A
_02053D8A:
	cmp r0, #1
	bhi _02053D96
	add r0, r5, #0
	bl sub_020705A4
	b _02053D9A
_02053D96:
	bl sub_02022974
_02053D9A:
	add r0, r7, #0
	bl sub_02053DF0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DB0
_02053DA8:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053DB0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02053D0C

	thumb_func_start sub_02053DB4
sub_02053DB4: ; 0x02053DB4
	ldr r3, _02053DBC ; =sub_02050944
	ldr r1, _02053DC0 ; =sub_02053DC4
	mov r2, #0
	bx r3
	; .align 2, 0
_02053DBC: .word sub_02050944
_02053DC0: .word sub_02053DC4
	thumb_func_end sub_02053DB4

	thumb_func_start sub_02053DC4
sub_02053DC4: ; 0x02053DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053DDA
	cmp r0, #1
	beq _02053DE8
	b _02053DEC
_02053DDA:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053DEC
_02053DE8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02053DEC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02053DC4

	thumb_func_start sub_02053DF0
sub_02053DF0: ; 0x02053DF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02050A64
	add r2, r0, #0
	ldr r1, _02053E04 ; =sub_02053E08
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02053E04: .word sub_02053E08
	thumb_func_end sub_02053DF0

	thumb_func_start sub_02053E08
sub_02053E08: ; 0x02053E08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02053E30
	cmp r0, #1
	beq _02053E3E
	cmp r0, #2
	beq _02053E52
	b _02053E56
_02053E30:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053E56
_02053E3E:
	add r0, r6, #0
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_02053E5C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053E56
_02053E52:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02053E56:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02053E08

	thumb_func_start sub_02053E5C
sub_02053E5C: ; 0x02053E5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02053E7E
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02053E7E:
	ldr r2, [r6, #4]
	add r0, r4, #0
	mov r1, #4
	bl ov6_022472C8
	add r2, r0, #0
	ldr r1, _02053E94 ; =0x022472E9
	add r0, r5, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02053E94: .word 0x022472E9
	thumb_func_end sub_02053E5C

	thumb_func_start sub_02053E98
sub_02053E98: ; 0x02053E98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, [r4, #0]
	add r5, #8
	cmp r1, #6
	bhi _02053F52
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02053EC0: ; jump table
	.short _02053ECE - _02053EC0 - 2 ; case 0
	.short _02053EE0 - _02053EC0 - 2 ; case 1
	.short _02053EFC - _02053EC0 - 2 ; case 2
	.short _02053F0C - _02053EC0 - 2 ; case 3
	.short _02053F2A - _02053EC0 - 2 ; case 4
	.short _02053F3E - _02053EC0 - 2 ; case 5
	.short _02053F4A - _02053EC0 - 2 ; case 6
_02053ECE:
	add r0, r7, #0
	mov r1, #1
	add r2, r4, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053EE0:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02053F52
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02055644
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053EFC:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F0C:
	bl sub_02005684
	cmp r0, #0
	bne _02053F52
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02055670
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F2A:
	mov r1, #0
	str r1, [r4, #4]
	add r0, r7, #0
	add r2, r4, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02053F52
_02053F3E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02053F52
	add r0, r1, #1
	str r0, [r4, #0]
	b _02053F52
_02053F4A:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02053F52:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02053E98

	thumb_func_start sub_02053F58
sub_02053F58: ; 0x02053F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x1c
	add r6, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r7, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	mov r1, #0
	add r2, r7, #0
	str r4, [sp]
	str r6, [sp, #4]
	add r3, sp, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _02053FA8 ; =sub_02053E98
	str r0, [r2, #0]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050904
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02053FA8: .word sub_02053E98
	thumb_func_end sub_02053F58

	thumb_func_start sub_02053FAC
sub_02053FAC: ; 0x02053FAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x40
	bl sub_02018184
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	ldr r0, [r6, #0x70]
	cmp r0, #1
	bne _02053FE4
	ldr r0, [r4, #0]
	str r0, [r5, #8]
	sub r0, r1, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x14]
	b _02054060
_02053FE4:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020534EC
	mov r0, #2
	str r0, [r5, #8]
	sub r0, r0, #3
	str r0, [r5, #0xc]
	ldr r1, [r4, #8]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	ldr r1, [r4, #0xc]
	sub r6, r0, #1
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	sub r4, r0, #6
	cmp r6, #0
	bge _02054014
	bl sub_02022974
_02054014:
	cmp r4, #0
	bge _0205401C
	bl sub_02022974
_0205401C:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0205402E
	mov r0, #8
	b _02054030
_0205402E:
	mov r0, #0x17
_02054030:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	bne _02054042
	mov r1, #8
	b _02054044
_02054042:
	mov r1, #0x17
_02054044:
	lsr r2, r6, #0x1f
	add r2, r6, r2
	asr r2, r2, #1
	add r6, r2, #1
	lsr r2, r4, #0x1f
	add r2, r4, r2
	asr r2, r2, #1
	add r3, r2, #3
	lsl r2, r6, #5
	add r0, r0, r2
	str r0, [r5, #0x10]
	lsl r0, r3, #5
	add r0, r1, r0
	str r0, [r5, #0x14]
_02054060:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02053FAC

	thumb_func_start sub_02054064
sub_02054064: ; 0x02054064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02053FAC
	add r4, r0, #0
	beq _02054080
	add r0, r5, #0
	bl sub_02054428
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
_02054080:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02054064

	thumb_func_start sub_02054084
sub_02054084: ; 0x02054084
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bhi _0205416C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020540AA: ; jump table
	.short _020540C4 - _020540AA - 2 ; case 0
	.short _0205411C - _020540AA - 2 ; case 1
	.short _02054158 - _020540AA - 2 ; case 2
	.short _0205419E - _020540AA - 2 ; case 3
	.short _020541E2 - _020540AA - 2 ; case 4
	.short _02054210 - _020540AA - 2 ; case 5
	.short _02054222 - _020540AA - 2 ; case 6
	.short _02054232 - _020540AA - 2 ; case 7
	.short _02054246 - _020540AA - 2 ; case 8
	.short _02054254 - _020540AA - 2 ; case 9
	.short _02054282 - _020540AA - 2 ; case 10
	.short _020542A4 - _020540AA - 2 ; case 11
	.short _020542D6 - _020540AA - 2 ; case 12
_020540C4:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xdd
	mov r3, #0xb
	bl sub_0200B144
	add r6, r0, #0
	mov r1, #0x7c
	bl sub_0200B1EC
	str r0, [r4, #0x34]
	add r0, r6, #0
	bl sub_0200B190
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x24
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x24
	bl sub_0205D944
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x24
	mov r3, #1
	bl sub_0205D994
	add r1, r4, #0
	add r1, #0x38
	strb r0, [r1]
	mov r0, #1
	str r0, [r4, #0]
	b _020542F2
_0205411C:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #1
	bne _0205416C
	ldr r0, [r4, #0x34]
	bl sub_020237BC
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _020542F8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	mov r3, #0xb
	str r3, [sp]
	ldr r0, [r5, #8]
	ldr r1, _020542FC ; =0x020EC3A0
	ldr r2, _020542F8 ; =0x000003D9
	bl sub_02002100
	str r0, [r4, #0x3c]
	mov r0, #2
	str r0, [r4, #0]
	b _020542F2
_02054158:
	ldr r0, [r4, #0x3c]
	mov r1, #0xb
	bl sub_02002114
	cmp r0, #0
	beq _0205416E
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02054186
_0205416C:
	b _020542F2
_0205416E:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x24
	bl sub_0201A8FC
	mov r0, #3
	str r0, [r4, #0]
	b _020542F2
_02054186:
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x24
	bl sub_0201A8FC
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_0205419E:
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _020541B6
	mov r2, #0
	ldr r1, _02054300 ; =0x000007F2
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020541DC
_020541B6:
	ldr r0, [r5, #0xc]
	bl sub_020287E0
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #3
	bl ov5_021E1F98
	str r0, [r4, #0x20]
	bl ov5_021E1F04
	add r3, r4, #0
	mov r2, #0
	ldr r1, _02054304 ; =0x000007D5
	add r0, r6, #0
	add r3, #0x1c
	strh r2, [r4, #0x1c]
	bl sub_0203E8E0
_020541DC:
	mov r0, #4
	str r0, [r4, #0]
	b _020542F2
_020541E2:
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	beq _020541F2
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_020541F2:
	ldr r0, [r4, #0x20]
	bl ov5_021E1F7C
	ldr r0, [r4, #0x20]
	bl ov5_021E1FF4
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _0205420A
	mov r0, #5
	str r0, [r4, #0]
	b _020542F2
_0205420A:
	mov r0, #6
	str r0, [r4, #0]
	b _020542F2
_02054210:
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02054222:
	mov r0, #0
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054232:
	add r0, r6, #0
	mov r1, #0
	bl sub_0205444C
	cmp r0, #0
	beq _020542F2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054246:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054254:
	mov r0, #1
	str r0, [r5, #0x70]
	ldr r0, _02054308 ; =0x00000017
	mov r1, #2
	bl sub_02006590
	add r0, r5, #0
	bl ov23_022499E8
	ldr r0, [r4, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, r6, #0
	sub r2, r2, #2
	bl sub_020539E8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_02054282:
	bl sub_02005684
	cmp r0, #0
	bne _020542F2
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	bl sub_02055414
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_020542A4:
	add r0, r6, #0
	mov r1, #1
	bl sub_0205444C
	cmp r0, #0
	beq _020542F2
	bl ov23_02249A2C
	add r0, r5, #0
	bl ov23_02249404
	mov r1, #0
	str r0, [r5, #0x6c]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x1e
	sub r2, #0x10
	mov r3, #0x19
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020542F2
_020542D6:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _020542F2
	mov r0, #1
	bl ov23_0224DBF4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020542F2:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020542F8: .word 0x000003D9
_020542FC: .word 0x020EC3A0
_02054300: .word 0x000007F2
_02054304: .word 0x000007D5
_02054308: .word 0x00000017
	thumb_func_end sub_02054084

	thumb_func_start sub_0205430C
sub_0205430C: ; 0x0205430C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #7
	bhi _0205441C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02054332: ; jump table
	.short _02054342 - _02054332 - 2 ; case 0
	.short _0205436C - _02054332 - 2 ; case 1
	.short _02054394 - _02054332 - 2 ; case 2
	.short _020543A8 - _02054332 - 2 ; case 3
	.short _020543B6 - _02054332 - 2 ; case 4
	.short _020543DC - _02054332 - 2 ; case 5
	.short _020543FE - _02054332 - 2 ; case 6
	.short _02054412 - _02054332 - 2 ; case 7
_02054342:
	mov r0, #0
	bl ov23_0224DBF4
	bl ov23_02249A5C
	ldr r0, [r5, #0x6c]
	bl ov23_0224942C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1e
	add r1, r0, #0
	sub r1, #0x2e
	mov r2, #0
	mov r3, #1
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_0205436C:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _0205441C
	bl sub_02035E38
	cmp r0, #0
	bne _0205441C
	mov r0, #0
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_02054394:
	add r0, r6, #0
	mov r1, #2
	bl sub_0205444C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543A8:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543B6:
	mov r0, #0
	str r0, [r5, #0x70]
	ldr r0, _02054424 ; =0x00000017
	bl sub_02006514
	ldr r0, [r4, #0x14]
	mov r2, #1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, r6, #0
	sub r2, r2, #2
	bl sub_020539E8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543DC:
	bl sub_02005684
	cmp r0, #0
	bne _0205441C
	mov r0, #0
	bl sub_02004234
	add r0, r5, #0
	bl sub_02055414
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_020543FE:
	add r0, r6, #0
	mov r1, #3
	bl sub_0205444C
	cmp r0, #0
	beq _0205441C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205441C
_02054412:
	bl sub_020181C4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205441C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02054424: .word 0x00000017
	thumb_func_end sub_0205430C

	thumb_func_start sub_02054428
sub_02054428: ; 0x02054428
	push {r3, lr}
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _02054434
	ldr r0, _02054444 ; =sub_02054084
	pop {r3, pc}
_02054434:
	cmp r0, #1
	bne _0205443C
	ldr r0, _02054448 ; =sub_0205430C
	pop {r3, pc}
_0205443C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02054444: .word sub_02054084
_02054448: .word sub_0205430C
	thumb_func_end sub_02054428

	thumb_func_start sub_0205444C
sub_0205444C: ; 0x0205444C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	beq _0205446E
	cmp r0, #1
	beq _02054484
	b _0205448E
_0205446E:
	add r2, r4, #0
	str r5, [r4, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	add r2, #0x18
	bl sub_0205CFDC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0205448E
_02054484:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205448E
	str r5, [r4, #4]
	mov r5, #1
_0205448E:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205444C

	thumb_func_start sub_02054494
sub_02054494: ; 0x02054494
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020544B6
	cmp r0, #1
	beq _020544C4
	cmp r0, #2
	beq _020544DC
	b _020544EC
_020544B6:
	add r0, r5, #0
	bl sub_02053374
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020544EC
_020544C4:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_0205311C
	add r0, r5, #0
	mov r1, #2
	bl sub_0203F5C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020544EC
_020544DC:
	add r0, r5, #0
	bl sub_02053320
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020544EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02054494

	thumb_func_start sub_020544F0
sub_020544F0: ; 0x020544F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _02054516
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02054516:
	mov r0, #0
	str r0, [r4, #0]
	ldmia r5!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _02054534 ; =sub_02054494
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054534: .word sub_02054494
	thumb_func_end sub_020544F0

	thumb_func_start sub_02054538
sub_02054538: ; 0x02054538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	add r6, r7, #0
	ldr r0, [r4, #0]
	add r6, #8
	cmp r0, #5
	bhi _020545E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02054568: ; jump table
	.short _02054574 - _02054568 - 2 ; case 0
	.short _0205458E - _02054568 - 2 ; case 1
	.short _020545A2 - _02054568 - 2 ; case 2
	.short _020545B2 - _02054568 - 2 ; case 3
	.short _020545D0 - _02054568 - 2 ; case 4
	.short _020545DE - _02054568 - 2 ; case 5
_02054574:
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055644
	ldr r0, [sp]
	mov r1, #1
	add r2, r7, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_0205458E:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _020545E8
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545A2:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545B2:
	bl sub_02005684
	cmp r0, #0
	bne _020545E8
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545D0:
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020545E8
_020545DE:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020545E8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054538

	thumb_func_start sub_020545EC
sub_020545EC: ; 0x020545EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r6, r0, #0
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	add r2, r6, #0
	ldmia r4!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_0205B388
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0205C2E0
	mov r0, #0
	str r0, [r5, #0x70]
	ldr r1, _02054644 ; =sub_02054538
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02050904
	mov r0, #0
	str r0, [r5, #0x7c]
	pop {r4, r5, r6, pc}
	nop
_02054644: .word sub_02054538
	thumb_func_end sub_020545EC

	thumb_func_start sub_02054648
sub_02054648: ; 0x02054648
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	add r6, r7, #0
	ldr r0, [r4, #0]
	add r6, #8
	cmp r0, #6
	bhi _02054702
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02054678: ; jump table
	.short _02054686 - _02054678 - 2 ; case 0
	.short _0205469C - _02054678 - 2 ; case 1
	.short _020546AA - _02054678 - 2 ; case 2
	.short _020546BA - _02054678 - 2 ; case 3
	.short _020546D8 - _02054678 - 2 ; case 4
	.short _020546EC - _02054678 - 2 ; case 5
	.short _020546F8 - _02054678 - 2 ; case 6
_02054686:
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055644
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_0205469C:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546AA:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546BA:
	bl sub_02005684
	cmp r0, #0
	bne _02054702
	ldr r0, [sp]
	ldr r1, [r6, #0]
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546D8:
	mov r1, #0
	ldr r0, [sp]
	str r1, [r7, #4]
	add r2, r7, #4
	bl ov5_021E15A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546EC:
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02054702
	add r0, r0, #1
	str r0, [r4, #0]
	b _02054702
_020546F8:
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02054702:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02054648

	thumb_func_start sub_02054708
sub_02054708: ; 0x02054708
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020534EC
	ldr r0, _02054770 ; =0x000001D2
	str r0, [r4, #8]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	mov r0, #8
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0205B33C
	str r0, [r5, #0x7c]
	bl sub_0205C22C
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r0, #2
	str r0, [r5, #0x70]
	ldr r1, _02054774 ; =sub_02054648
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054770: .word 0x000001D2
_02054774: .word sub_02054648
	thumb_func_end sub_02054708

	thumb_func_start sub_02054778
sub_02054778: ; 0x02054778
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #3
	bhi _020547F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205479C: ; jump table
	.short _020547A4 - _0205479C - 2 ; case 0
	.short _020547C0 - _0205479C - 2 ; case 1
	.short _020547D0 - _0205479C - 2 ; case 2
	.short _020547EE - _0205479C - 2 ; case 3
_020547A4:
	ldr r0, _020547FC ; =0x00000603
	bl sub_02005748
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055644
	add r0, r5, #0
	bl sub_02055974
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547C0:
	add r0, r5, #0
	add r1, r4, #4
	bl sub_020539A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547D0:
	bl sub_02005684
	cmp r0, #0
	bne _020547F6
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl sub_02055670
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020547F6
_020547EE:
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020547F6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020547FC: .word 0x00000603
	thumb_func_end sub_02054778

	thumb_func_start sub_02054800
sub_02054800: ; 0x02054800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02050A60
	str r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r1, [sp]
	bl sub_020534EC
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x70]
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r2, r0, #0
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	str r5, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0
	str r6, [sp, #0xc]
	add r4, sp, #4
	str r0, [r2, #0]
	ldmia r4!, {r0, r1}
	add r3, r2, #4
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _02054860 ; =sub_02054778
	str r0, [r3, #0]
	add r0, r7, #0
	bl sub_02050944
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02054860: .word sub_02054778
	thumb_func_end sub_02054800

	thumb_func_start sub_02054864
sub_02054864: ; 0x02054864
	push {r4, lr}
	bl sub_02050A60
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r1, r0, #0
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x10]
	bl sub_02053900
	pop {r4, pc}
	thumb_func_end sub_02054864

	.rodata


	.global Unk_020EC3A0
Unk_020EC3A0: ; 0x020EC3A0
	.incbin "incbin/arm9_rodata.bin", 0x7760, 0x7768 - 0x7760

	.global Unk_020EC3A8
Unk_020EC3A8: ; 0x020EC3A8
	.incbin "incbin/arm9_rodata.bin", 0x7768, 0x28

