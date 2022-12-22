	.include "macros/function.inc"
	.include "include/unk_02014000.inc"

	

	.text


	thumb_func_start sub_02014000
sub_02014000: ; 0x02014000
	mov r1, #0
	ldr r2, _02014010 ; =0x021BF618
	add r0, r1, #0
_02014006:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #0x10
	blt _02014006
	bx lr
	; .align 2, 0
_02014010: .word 0x021BF618
	thumb_func_end sub_02014000

	thumb_func_start sub_02014014
sub_02014014: ; 0x02014014
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _02014108 ; =0x021BF618
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp, #0xc]
	mov r5, #0
_02014024:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02014032
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #0x10
	blt _02014024
_02014032:
	cmp r5, #0x10
	blt _0201403C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201403C:
	ldr r0, [sp, #0x2c]
	mov r1, #0xdc
	bl sub_02018144
	add r4, r0, #0
	bne _0201404C
	bl sub_02022974
_0201404C:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl memset
	add r2, r4, #0
	ldr r0, [sp, #8]
	str r7, [r4, #0x18]
	ldr r3, _0201410C ; =0x020E5448
	str r0, [r4, #0x1c]
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02014110 ; =0x020E5430
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02014114 ; =0x020E543C
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl memset
	ldr r0, [sp, #0xc]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0xda
	strb r5, [r0]
	ldr r0, _02014108 ; =0x021BF618
	lsl r5, r5, #2
	str r4, [r0, r5]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _020140E0
	ldr r0, [sp, #0x2c]
	bl sub_020203AC
	str r0, [r4, #0x20]
	mov r3, #0
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #2
	str r3, [r4, #0x2c]
	lsl r0, r0, #0xc
	strh r0, [r4, #0x30]
	str r3, [sp]
	ldr r0, [r4, #0x20]
	ldr r1, _0201410C ; =0x020E5448
	str r0, [sp, #4]
	ldrh r2, [r4, #0x30]
	ldr r0, _02014114 ; =0x020E543C
	bl sub_02020784
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdb
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	bl sub_020203D4
_020140E0:
	mov r0, #6
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	ldr r0, _02014118 ; =0x020E5454
	mov r1, #0x14
	ldr r0, [r0, r5]
	mov r2, #0xc8
	mov r3, #5
	bl sub_0209CD00
	str r0, [r4, #0]
	ldr r1, _02014110 ; =0x020E5430
	add r0, r4, #0
	bl sub_02014744
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014108: .word 0x021BF618
_0201410C: .word 0x020E5448
_02014110: .word 0x020E5430
_02014114: .word 0x020E543C
_02014118: .word 0x020E5454
	thumb_func_end sub_02014014

	thumb_func_start sub_0201411C
sub_0201411C: ; 0x0201411C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02014718
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0201413A
	add r0, r5, #0
	add r0, #0x58
	bl NNS_GfdSetFrmTexVramState
	b _0201415A
_0201413A:
	mov r0, #2
	tst r0, r1
	beq _0201415A
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014146:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02014152
	bl NNS_GfdFreeLnkTexVram
	str r7, [r4, #0x58]
_02014152:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014146
_0201415A:
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02014170
	add r0, r5, #0
	add r0, #0x98
	bl NNS_GfdSetFrmPlttVramState
	b _02014198
_02014170:
	mov r0, #8
	tst r0, r1
	beq _02014198
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_0201417C:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02014190
	bl NNS_GfdFreeLnkPlttVram
	add r0, r4, #0
	add r0, #0x98
	str r7, [r0, #0]
_02014190:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _0201417C
_02014198:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd8
	strb r1, [r0]
	str r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020141B0
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #4]
_020141B0:
	ldr r2, _020141E0 ; =0x021BF618
	mov r1, #0
_020141B4:
	ldr r0, [r2, #0]
	cmp r0, r5
	bne _020141C4
	ldr r0, _020141E0 ; =0x021BF618
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _020141CC
_020141C4:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020141B4
_020141CC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020141D6
	bl sub_020203B8
_020141D6:
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020141E0: .word 0x021BF618
	thumb_func_end sub_0201411C

	thumb_func_start sub_020141E4
sub_020141E4: ; 0x020141E4
	push {r3, r4, r5, lr}
	ldr r5, _02014200 ; =0x021BF618
	mov r4, #0
_020141EA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020141F4
	bl sub_0201411C
_020141F4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _020141EA
	pop {r3, r4, r5, pc}
	nop
_02014200: .word 0x021BF618
	thumb_func_end sub_020141E4

	thumb_func_start sub_02014204
sub_02014204: ; 0x02014204
	push {r4, lr}
	ldr r1, _0201422C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #8]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201421C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201421C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014228
	bl sub_02022974
_02014228:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201422C: .word 0x021BF610
	thumb_func_end sub_02014204

	thumb_func_start sub_02014230
sub_02014230: ; 0x02014230
	push {r4, lr}
	ldr r1, _02014258 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0xc]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014248
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014248:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014254
	bl sub_02022974
_02014254:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014258: .word 0x021BF610
	thumb_func_end sub_02014230

	thumb_func_start sub_0201425C
sub_0201425C: ; 0x0201425C
	push {r4, lr}
	ldr r1, _02014284 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x10]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014274
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014274:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014280
	bl sub_02022974
_02014280:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014284: .word 0x021BF610
	thumb_func_end sub_0201425C

	thumb_func_start sub_02014288
sub_02014288: ; 0x02014288
	push {r4, lr}
	ldr r1, _020142B0 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x14]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142A0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142A0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020142AC
	bl sub_02022974
_020142AC:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020142B0: .word 0x021BF610
	thumb_func_end sub_02014288

	thumb_func_start sub_020142B4
sub_020142B4: ; 0x020142B4
	push {r4, lr}
	ldr r1, _020142DC ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x18]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142CC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142CC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020142D8
	bl sub_02022974
_020142D8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020142DC: .word 0x021BF610
	thumb_func_end sub_020142B4

	thumb_func_start sub_020142E0
sub_020142E0: ; 0x020142E0
	push {r4, lr}
	ldr r1, _02014308 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x1c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020142F8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020142F8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014304
	bl sub_02022974
_02014304:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014308: .word 0x021BF610
	thumb_func_end sub_020142E0

	thumb_func_start sub_0201430C
sub_0201430C: ; 0x0201430C
	push {r4, lr}
	ldr r1, _02014334 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x20]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014324
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014324:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014330
	bl sub_02022974
_02014330:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014334: .word 0x021BF610
	thumb_func_end sub_0201430C

	thumb_func_start sub_02014338
sub_02014338: ; 0x02014338
	push {r4, lr}
	ldr r1, _02014360 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x24]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014350
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014350:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201435C
	bl sub_02022974
_0201435C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014360: .word 0x021BF610
	thumb_func_end sub_02014338

	thumb_func_start sub_02014364
sub_02014364: ; 0x02014364
	push {r4, lr}
	ldr r1, _0201438C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x28]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201437C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201437C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014388
	bl sub_02022974
_02014388:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201438C: .word 0x021BF610
	thumb_func_end sub_02014364

	thumb_func_start sub_02014390
sub_02014390: ; 0x02014390
	push {r4, lr}
	ldr r1, _020143B8 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x2c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020143A8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020143A8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020143B4
	bl sub_02022974
_020143B4:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020143B8: .word 0x021BF610
	thumb_func_end sub_02014390

	thumb_func_start sub_020143BC
sub_020143BC: ; 0x020143BC
	push {r4, lr}
	ldr r1, _020143E4 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x30]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020143D4
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020143D4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020143E0
	bl sub_02022974
_020143E0:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020143E4: .word 0x021BF610
	thumb_func_end sub_020143BC

	thumb_func_start sub_020143E8
sub_020143E8: ; 0x020143E8
	push {r4, lr}
	ldr r1, _02014410 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x34]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014400
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014400:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201440C
	bl sub_02022974
_0201440C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014410: .word 0x021BF610
	thumb_func_end sub_020143E8

	thumb_func_start sub_02014414
sub_02014414: ; 0x02014414
	push {r4, lr}
	ldr r1, _0201443C ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x38]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201442C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201442C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014438
	bl sub_02022974
_02014438:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0201443C: .word 0x021BF610
	thumb_func_end sub_02014414

	thumb_func_start sub_02014440
sub_02014440: ; 0x02014440
	push {r4, lr}
	ldr r1, _02014468 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x3c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014458
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014458:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014464
	bl sub_02022974
_02014464:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014468: .word 0x021BF610
	thumb_func_end sub_02014440

	thumb_func_start sub_0201446C
sub_0201446C: ; 0x0201446C
	push {r4, lr}
	ldr r1, _02014494 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x40]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014484
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014484:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014490
	bl sub_02022974
_02014490:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02014494: .word 0x021BF610
	thumb_func_end sub_0201446C

	thumb_func_start sub_02014498
sub_02014498: ; 0x02014498
	push {r4, lr}
	ldr r1, _020144C0 ; =0x021BF610
	mov r2, #3
	ldr r1, [r1, #0x44]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020144B0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020144B0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020144BC
	bl sub_02022974
_020144BC:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_020144C0: .word 0x021BF610
	thumb_func_end sub_02014498

	thumb_func_start sub_020144C4
sub_020144C4: ; 0x020144C4
	ldr r3, _020144C8 ; =sub_02006AC0
	bx r3
	; .align 2, 0
_020144C8: .word sub_02006AC0
	thumb_func_end sub_020144C4

	thumb_func_start sub_020144CC
sub_020144CC: ; 0x020144CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _020144E0
	bl sub_02022974
_020144E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020144EA
	bl sub_02022974
_020144EA:
	add r0, r5, #0
	add r0, #0xd8
	strb r4, [r0]
	mov r0, #1
	tst r0, r4
	beq _02014500
	add r0, r5, #0
	add r0, #0x58
	bl NNS_GfdGetFrmTexVramState
	b _02014516
_02014500:
	mov r0, #2
	tst r0, r4
	beq _02014516
	mov r1, #0
	add r2, r5, #0
	add r0, r1, #0
_0201450C:
	add r1, r1, #1
	str r0, [r2, #0x58]
	add r2, r2, #4
	cmp r1, #0x10
	blt _0201450C
_02014516:
	mov r0, #4
	tst r0, r4
	beq _02014526
	add r0, r5, #0
	add r0, #0x98
	bl NNS_GfdGetFrmPlttVramState
	b _02014540
_02014526:
	mov r0, #8
	tst r0, r4
	beq _02014540
	mov r2, #0
	add r3, r5, #0
	add r1, r2, #0
_02014532:
	add r0, r3, #0
	add r0, #0x98
	add r2, r2, #1
	add r3, r3, #4
	str r1, [r0, #0]
	cmp r2, #0x10
	blt _02014532
_02014540:
	str r6, [r5, #4]
	cmp r7, #1
	bne _0201454E
	add r0, r5, #0
	bl sub_02014560
	pop {r3, r4, r5, r6, r7, pc}
_0201454E:
	ldr r0, _0201455C ; =sub_020145A0
	add r1, r5, #0
	mov r2, #5
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201455C: .word sub_020145A0
	thumb_func_end sub_020144CC

	thumb_func_start sub_02014560
sub_02014560: ; 0x02014560
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_0209C988
	ldr r0, _0201459C ; =0x021BF610
	str r4, [r0, #0]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0]
	cmp r1, #0
	bne _0201457E
	bl sub_0209C7F4
	b _02014582
_0201457E:
	bl sub_0209C8BC
_02014582:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0]
	cmp r1, #0
	bne _02014590
	bl sub_0209C7E0
	b _02014594
_02014590:
	bl sub_0209C808
_02014594:
	ldr r0, _0201459C ; =0x021BF610
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_0201459C: .word 0x021BF610
	thumb_func_end sub_02014560

	thumb_func_start sub_020145A0
sub_020145A0: ; 0x020145A0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02014560
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020145A0

	thumb_func_start sub_020145B4
sub_020145B4: ; 0x020145B4
	push {r4, lr}
	add r4, r0, #0
	bne _020145BE
	bl sub_02022974
_020145BE:
	ldr r0, _020145F0 ; =0x021BF610
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020145CA
	bl sub_02022974
_020145CA:
	ldr r0, _020145F0 ; =0x021BF610
	mov r1, #0
	ldr r3, [r0, #0]
	add r2, r3, #0
_020145D2:
	ldr r0, [r2, #0x58]
	cmp r0, #0
	bne _020145E0
	lsl r0, r1, #2
	add r0, r3, r0
	str r4, [r0, #0x58]
	pop {r4, pc}
_020145E0:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020145D2
	bl sub_02022974
	pop {r4, pc}
	nop
_020145F0: .word 0x021BF610
	thumb_func_end sub_020145B4

	thumb_func_start sub_020145F4
sub_020145F4: ; 0x020145F4
	push {r4, lr}
	add r4, r0, #0
	bne _020145FE
	bl sub_02022974
_020145FE:
	ldr r0, _02014634 ; =0x021BF610
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201460A
	bl sub_02022974
_0201460A:
	ldr r0, _02014634 ; =0x021BF610
	mov r1, #0
	ldr r3, [r0, #0]
	add r2, r3, #0
_02014612:
	add r0, r2, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02014626
	lsl r0, r1, #2
	add r0, r3, r0
	add r0, #0x98
	str r4, [r0, #0]
	pop {r4, pc}
_02014626:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02014612
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_02014634: .word 0x021BF610
	thumb_func_end sub_020145F4

	thumb_func_start sub_02014638
sub_02014638: ; 0x02014638
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _02014654
	add r0, #0xdb
	ldrb r0, [r0]
	bl sub_02020854
	ldr r0, [r4, #0x20]
	bl sub_020203D4
	bl sub_020203EC
_02014654:
	bl NNS_G3dGlbFlushP
	ldr r0, [r4, #0]
	ldr r1, _02014670 ; =0x021C5AD8
	bl sub_0209C5E0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0201466A
	bl sub_020203E0
_0201466A:
	bl NNS_G3dGlbFlushP
	pop {r4, pc}
	; .align 2, 0
_02014670: .word 0x021C5AD8
	thumb_func_end sub_02014638

	thumb_func_start sub_02014674
sub_02014674: ; 0x02014674
	ldr r3, _0201467C ; =sub_0209C6A8
	ldr r0, [r0, #0]
	bx r3
	nop
_0201467C: .word sub_0209C6A8
	thumb_func_end sub_02014674

	thumb_func_start sub_02014680
sub_02014680: ; 0x02014680
	mov r0, #0
	ldr r3, _02014698 ; =0x021BF618
	add r2, r0, #0
_02014686:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0201468E
	add r0, r0, #1
_0201468E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _02014686
	bx lr
	; .align 2, 0
_02014698: .word 0x021BF618
	thumb_func_end sub_02014680

	thumb_func_start sub_0201469C
sub_0201469C: ; 0x0201469C
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _020146BC ; =0x021BF618
	add r6, r4, #0
_020146A4:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020146B0
	bl sub_02014638
	add r4, r4, #1
_020146B0:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _020146A4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020146BC: .word 0x021BF618
	thumb_func_end sub_0201469C

	thumb_func_start sub_020146C0
sub_020146C0: ; 0x020146C0
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _020146E0 ; =0x021BF618
	add r6, r4, #0
_020146C8:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _020146D4
	bl sub_02014674
	add r4, r4, #1
_020146D4:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _020146C8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020146E0: .word 0x021BF618
	thumb_func_end sub_020146C0

	thumb_func_start sub_020146E4
sub_020146E4: ; 0x020146E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0209C56C
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020146E4

	thumb_func_start sub_020146F4
sub_020146F4: ; 0x020146F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201470C ; =0x021BF610
	str r3, [r0, #4]
	ldr r0, [r4, #0]
	bl sub_0209C4D8
	ldr r1, _0201470C ; =0x021BF610
	mov r2, #0
	str r2, [r1, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_0201470C: .word 0x021BF610
	thumb_func_end sub_020146F4

	thumb_func_start sub_02014710
sub_02014710: ; 0x02014710
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014710

	thumb_func_start sub_02014718
sub_02014718: ; 0x02014718
	ldr r3, _02014720 ; =sub_0209C400
	ldr r0, [r0, #0]
	bx r3
	nop
_02014720: .word sub_0209C400
	thumb_func_end sub_02014718

	thumb_func_start sub_02014724
sub_02014724: ; 0x02014724
	ldr r3, _0201472C ; =sub_0209C444
	ldr r0, [r0, #0]
	bx r3
	nop
_0201472C: .word sub_0209C444
	thumb_func_end sub_02014724

	thumb_func_start sub_02014730
sub_02014730: ; 0x02014730
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02014730

	thumb_func_start sub_02014734
sub_02014734: ; 0x02014734
	add r2, r0, #0
	add r2, #0x40
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02014734

	thumb_func_start sub_02014744
sub_02014744: ; 0x02014744
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r5, #0x20]
	add r0, r4, #0
	bl sub_02020680
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014744

	thumb_func_start sub_02014764
sub_02014764: ; 0x02014764
	ldr r0, _0201476C ; =0x021BF610
	ldr r0, [r0, #4]
	bx lr
	nop
_0201476C: .word 0x021BF610
	thumb_func_end sub_02014764

	thumb_func_start sub_02014770
sub_02014770: ; 0x02014770
	ldr r2, _02014780 ; =0x020E5430
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	nop
_02014780: .word 0x020E5430
	thumb_func_end sub_02014770

	thumb_func_start sub_02014784
sub_02014784: ; 0x02014784
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02014784

	thumb_func_start sub_02014788
sub_02014788: ; 0x02014788
	add r0, #0xdb
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014788

	thumb_func_start sub_02014790
sub_02014790: ; 0x02014790
	add r0, #0xdb
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02014790

	thumb_func_start sub_02014798
sub_02014798: ; 0x02014798
	add r2, r0, #0
	add r2, #0x50
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x52
	ldrh r2, [r2]
	add r0, #0x54
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end sub_02014798

	thumb_func_start sub_020147B0
sub_020147B0: ; 0x020147B0
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_020147B0

	thumb_func_start sub_020147B8
sub_020147B8: ; 0x020147B8
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0
	bne _020147CA
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020147CA:
	mov r1, #0
	cmp r2, #0
	ble _02014854
	ldr r3, [r0, #0x18]
	ldr r7, _0201485C ; =sub_020A213C
	ldr r0, _02014860 ; =sub_020A2204
_020147D6:
	cmp r3, #0
	beq _0201484C
	cmp r4, #5
	bhi _02014846
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_020147EA: ; jump table
	.short _020147F6 - _020147EA - 2 ; case 0
	.short _02014802 - _020147EA - 2 ; case 1
	.short _0201480E - _020147EA - 2 ; case 2
	.short _0201481C - _020147EA - 2 ; case 3
	.short _0201482A - _020147EA - 2 ; case 4
	.short _02014838 - _020147EA - 2 ; case 5
_020147F6:
	ldr r5, [r3, #0]
	cmp r5, r0
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014802:
	ldr r5, [r3, #0]
	cmp r5, r7
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201480E:
	ldr r6, [r3, #0]
	ldr r5, _02014864 ; =sub_020A20B8
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201481C:
	ldr r6, [r3, #0]
	ldr r5, _02014868 ; =sub_020A1FE0
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201482A:
	ldr r6, [r3, #0]
	ldr r5, _0201486C ; =sub_020A1EC4
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014838:
	ldr r6, [r3, #0]
	ldr r5, _02014870 ; =sub_020A1E30
	cmp r6, r5
	bne _0201484C
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_02014846:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0201484C:
	add r1, r1, #1
	add r3, #8
	cmp r1, r2
	blt _020147D6
_02014854:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0201485C: .word sub_020A213C
_02014860: .word sub_020A2204
_02014864: .word sub_020A20B8
_02014868: .word sub_020A1FE0
_0201486C: .word sub_020A1EC4
_02014870: .word sub_020A1E30
	thumb_func_end sub_020147B8

	thumb_func_start sub_02014874
sub_02014874: ; 0x02014874
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_020147B8
	cmp r0, #0
	beq _0201488E
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
_0201488E:
	pop {r4, pc}
	thumb_func_end sub_02014874

	thumb_func_start sub_02014890
sub_02014890: ; 0x02014890
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	add r2, r0, #0
	beq _020148A6
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_020148A6:
	pop {r4, pc}
	thumb_func_end sub_02014890

	thumb_func_start sub_020148A8
sub_020148A8: ; 0x020148A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	add r2, r0, #0
	bne _020148CE
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_020148CE:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020148A8

	thumb_func_start sub_020148DC
sub_020148DC: ; 0x020148DC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	cmp r0, #0
	beq _020148F0
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_020148F0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020148DC

	thumb_func_start sub_020148F4
sub_020148F4: ; 0x020148F4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_020147B8
	cmp r0, #0
	bne _02014908
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014908:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_020148F4

	thumb_func_start sub_02014910
sub_02014910: ; 0x02014910
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	beq _02014922
	ldrh r1, [r4]
	strh r1, [r0]
_02014922:
	pop {r4, pc}
	thumb_func_end sub_02014910

	thumb_func_start sub_02014924
sub_02014924: ; 0x02014924
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	bne _02014938
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014938:
	ldrh r0, [r0]
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014924

	thumb_func_start sub_02014940
sub_02014940: ; 0x02014940
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	beq _02014952
	ldrh r1, [r4]
	strh r1, [r0, #2]
_02014952:
	pop {r4, pc}
	thumb_func_end sub_02014940

	thumb_func_start sub_02014954
sub_02014954: ; 0x02014954
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_020147B8
	cmp r0, #0
	bne _02014968
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02014968:
	ldrh r0, [r0, #2]
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014954

	thumb_func_start sub_02014970
sub_02014970: ; 0x02014970
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	add r2, r0, #0
	beq _02014986
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
_02014986:
	pop {r4, pc}
	thumb_func_end sub_02014970

	thumb_func_start sub_02014988
sub_02014988: ; 0x02014988
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	add r2, r0, #0
	bne _020149AE
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_020149AE:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02014988

	thumb_func_start sub_020149BC
sub_020149BC: ; 0x020149BC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	cmp r0, #0
	beq _020149D0
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_020149D0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020149BC

	thumb_func_start sub_020149D4
sub_020149D4: ; 0x020149D4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_020147B8
	cmp r0, #0
	bne _020149E8
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_020149E8:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_020149D4

	.rodata


	.global Unk_020E5430
Unk_020E5430: ; 0x020E5430
	.incbin "incbin/arm9_rodata.bin", 0x7F0, 0x7FC - 0x7F0

	.global Unk_020E543C
Unk_020E543C: ; 0x020E543C
	.incbin "incbin/arm9_rodata.bin", 0x7FC, 0x808 - 0x7FC

	.global Unk_020E5448
Unk_020E5448: ; 0x020E5448
	.incbin "incbin/arm9_rodata.bin", 0x808, 0x814 - 0x808

	.global Unk_020E5454
Unk_020E5454: ; 0x020E5454
	.incbin "incbin/arm9_rodata.bin", 0x814, 0x40



	.bss


	.global Unk_021BF610
Unk_021BF610: ; 0x021BF610
	.space 0x4

	.global Unk_021BF614
Unk_021BF614: ; 0x021BF614
	.space 0x4

	.global Unk_021BF618
Unk_021BF618: ; 0x021BF618
	.space 0x40

