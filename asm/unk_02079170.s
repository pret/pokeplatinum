	.include "macros/function.inc"
	.include "include/unk_02079170.inc"

	

	.text


	thumb_func_start sub_02079170
sub_02079170: ; 0x02079170
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r2, [sp, #4]
	ldr r2, _0207921C ; =0x0000026A
	str r0, [sp]
	add r4, r1, #0
	ldr r3, [sp, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02027848
	bl sub_02027870
	ldr r4, [sp]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r5, r4, #0
	mov r7, #0
	str r0, [sp, #8]
	add r5, #0x3c
_020791A0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020791F4
	add r1, sp, #0x14
	bl sub_0207938C
	ldr r3, [sp, #8]
	add r6, sp, #0x14
	add r3, #0x28
	mov r2, #6
_020791B4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020791B4
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	cmp r0, #0x3f
	bne _020791D2
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_020021B0
	b _020791EA
_020791D2:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x18]
	bl sub_0200B1EC
	add r6, r0, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	add r0, r6, #0
	bl sub_020237BC
_020791EA:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl sub_020793B8
_020791F4:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, #0x34
	add r4, r4, #4
	add r5, #0x34
	str r0, [sp, #8]
	cmp r7, #4
	blt _020791A0
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x24]
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207921C: .word 0x0000026A
	thumb_func_end sub_02079170

	thumb_func_start sub_02079220
sub_02079220: ; 0x02079220
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r1, #0
	add r1, sp, #0
	bl sub_0207938C
	cmp r5, #9
	bhi _02079278
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207923C: ; jump table
	.short _02079250 - _0207923C - 2 ; case 0
	.short _02079256 - _0207923C - 2 ; case 1
	.short _0207925C - _0207923C - 2 ; case 2
	.short _02079262 - _0207923C - 2 ; case 3
	.short _02079268 - _0207923C - 2 ; case 4
	.short _02079268 - _0207923C - 2 ; case 5
	.short _02079268 - _0207923C - 2 ; case 6
	.short _02079268 - _0207923C - 2 ; case 7
	.short _02079272 - _0207923C - 2 ; case 8
	.short _02079276 - _0207923C - 2 ; case 9
_02079250:
	add r0, sp, #0
	ldrb r4, [r0]
	b _02079278
_02079256:
	add r0, sp, #0
	ldrb r4, [r0, #1]
	b _02079278
_0207925C:
	add r0, sp, #0
	ldrb r4, [r0, #2]
	b _02079278
_02079262:
	add r0, sp, #0
	ldrb r4, [r0, #3]
	b _02079278
_02079268:
	sub r0, r5, #4
	lsl r1, r0, #1
	add r0, sp, #4
	ldrh r4, [r0, r1]
	b _02079278
_02079272:
	ldr r4, [sp, #0xc]
	b _02079278
_02079276:
	ldr r4, [sp, #0x10]
_02079278:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02079220

	thumb_func_start sub_02079280
sub_02079280: ; 0x02079280
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r7, r1, #0
	ldr r1, [sp, #4]
	mov r0, #0x3b
	add r4, r2, #0
	bl sub_02006B58
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	mov r1, #0x89
	mov r2, #0
	lsl r3, r5, #1
	bl sub_02006AFC
	mov r0, #0x3b
	add r1, r4, #0
	bl sub_02006C24
	add r4, sp, #0xc
	ldrh r2, [r4]
	str r0, [sp, #8]
	cmp r2, r6
	beq _020792EC
_020792BA:
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #0
	mov r3, #4
	bl sub_02006DC8
	ldrh r1, [r4, #2]
	cmp r1, r5
	bne _020792DC
	ldrh r0, [r4, #4]
	cmp r0, r7
	bne _020792DC
	mov r0, #1
	str r0, [sp, #4]
	b _020792EC
_020792DC:
	cmp r1, r5
	bne _020792EC
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r2, [r4]
	cmp r2, r6
	bne _020792BA
_020792EC:
	ldr r0, [sp, #8]
	bl sub_02006CA8
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02079280

	thumb_func_start sub_020792F8
sub_020792F8: ; 0x020792F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x3b
	mov r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02006B58
	add r5, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, #0x89
	mov r2, #0
	lsl r3, r6, #1
	bl sub_02006AFC
	ldr r1, [sp, #8]
	mov r0, #0x3b
	bl sub_02006C24
	add r4, sp, #0x10
	ldrh r2, [r4]
	str r0, [sp, #0xc]
	cmp r2, r5
	beq _0207936E
_02079330:
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0
	mov r3, #4
	bl sub_02006DC8
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _02079362
	ldrh r0, [r4, #4]
	cmp r0, r7
	bne _02079362
	ldr r0, [sp, #4]
	add r2, sp, #0x10
	str r0, [sp]
	ldrh r2, [r2]
	ldr r1, _02079388 ; =0x00000269
	ldr r3, [sp, #8]
	mov r0, #0x1a
	lsr r2, r2, #2
	bl sub_0200AF20
	b _0207936E
_02079362:
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r2, [r4]
	cmp r2, r5
	bne _02079330
_0207936E:
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, r5
	bne _02079382
	ldr r0, [sp, #4]
	bl sub_020237E8
_02079382:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02079388: .word 0x00000269
	thumb_func_end sub_020792F8

	thumb_func_start sub_0207938C
sub_0207938C: ; 0x0207938C
	ldr r3, _02079398 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x39
	bx r3
	nop
_02079398: .word sub_02006AA4
	thumb_func_end sub_0207938C

	thumb_func_start sub_0207939C
sub_0207939C: ; 0x0207939C
	ldr r3, _020793A8 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x3a
	bx r3
	nop
_020793A8: .word sub_02006AA4
	thumb_func_end sub_0207939C

	thumb_func_start sub_020793AC
sub_020793AC: ; 0x020793AC
	ldr r1, _020793B4 ; =0x020F0714
	ldrb r0, [r1, r0]
	bx lr
	nop
_020793B4: .word 0x020F0714
	thumb_func_end sub_020793AC

	thumb_func_start sub_020793B8
sub_020793B8: ; 0x020793B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r1, #0
	add r4, r0, #0
	str r2, [sp, #0x10]
	bl sub_0201D2D0
	lsl r6, r7, #2
	str r0, [sp, #0x54]
	add r0, r4, r6
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_0207A014
	ldr r0, [sp, #0x10]
	mov r1, #0x6c
	bl sub_02018144
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x10]
	bl sub_02073C74
	str r0, [sp, #0x50]
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x60]
	bl sub_0207939C
	mov r0, #0x34
	add r5, r7, #0
	mul r5, r0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	cmp r0, #1
	bne _0207940A
	mov r0, #0x78
	str r0, [sp, #0x14]
	b _0207940E
_0207940A:
	mov r0, #0x88
	str r0, [sp, #0x14]
_0207940E:
	add r0, r4, r5
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #3
	bhi _020794F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02079424: ; jump table
	.short _0207942C - _02079424 - 2 ; case 0
	.short _020794F4 - _02079424 - 2 ; case 1
	.short _020795E2 - _02079424 - 2 ; case 2
	.short _020796B4 - _02079424 - 2 ; case 3
_0207942C:
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020794F2
	add r0, r4, r6
	ldr r7, [sp, #0x60]
	str r0, [sp, #0x38]
_02079440:
	ldrh r0, [r7, #4]
	mov r1, #0x3f
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #3]
	ldr r1, _020796E0 ; =0x000003FF
	ldrh r2, [r7]
	and r0, r1
	lsl r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r2, r2, r1
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	str r0, [sp, #0x58]
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _0207948C
_0207947A:
	bl sub_0201D2E8
	str r0, [sp, #0x58]
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _0207947A
_0207948C:
	ldr r0, [sp, #0x58]
	lsl r1, r0, #8
	ldr r0, [sp, #0x14]
	add r6, r1, r0
	ldrh r1, [r7]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x34]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldrh r0, [r7, #6]
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #3
	bl sub_02074B30
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x5c]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x5c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x5c]
	cmp r0, r1
	blt _02079440
_020794F2:
	b _020797B2
_020794F4:
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020795E0
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x40]
	add r0, r4, r6
	str r0, [sp, #0x3c]
_0207950A:
	ldr r0, [sp, #0x40]
	mov r1, #0x3f
	ldrh r0, [r0, #4]
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #2]
	ldr r1, _020796E0 ; =0x000003FF
	and r0, r1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	add r2, r2, r1
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r7, r0, r1
	add r0, r7, #0
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _0207955A
_02079548:
	bl sub_0201D2E8
	add r7, r0, #0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079548
_0207955A:
	ldr r0, [sp, #0x14]
	lsl r1, r7, #8
	add r6, r1, r0
	ldr r0, [sp, #0x40]
	ldrh r1, [r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x50]
	ldrh r2, [r2, #2]
	ldr r1, [sp, #0x30]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r7, [sp, #0x40]
	mov r6, #0
_02079592:
	ldrh r1, [r7, #6]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x50]
	lsr r2, r2, #0x18
	bl sub_02077230
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _02079592
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #2
	bl sub_02074B30
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x40]
	add r0, #0x10
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0207950A
_020795E0:
	b _020797B2
_020795E2:
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020796B2
	add r0, r4, r6
	ldr r7, [sp, #0x60]
	str r0, [sp, #0x44]
_020795F6:
	ldrh r0, [r7, #4]
	mov r1, #0x3f
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #1]
	ldr r1, _020796E0 ; =0x000003FF
	ldrh r2, [r7]
	and r0, r1
	lsl r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	str r0, [sp, #0x18]
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _02079642
_02079630:
	bl sub_0201D2E8
	str r0, [sp, #0x18]
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079630
_02079642:
	ldr r0, [sp, #0x18]
	lsl r1, r0, #8
	ldr r0, [sp, #0x14]
	add r6, r1, r0
	ldrh r1, [r7]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x2c]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r0, [sp, #0x50]
	mov r1, #6
	add r2, r7, #6
	bl sub_02074B30
	ldrh r0, [r7, #8]
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #1
	bl sub_02074B30
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, r0, #1
	str r0, [sp, #0x20]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _020795F6
_020796B2:
	b _020797B2
_020796B4:
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020797B2
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x4c]
	add r0, r4, r6
	str r0, [sp, #0x48]
_020796CA:
	ldr r0, [sp, #0x4c]
	mov r1, #0x3f
	ldrh r0, [r0, #4]
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1]
	ldr r1, _020796E0 ; =0x000003FF
	b _020796E4
	nop
_020796E0: .word 0x000003FF
_020796E4:
	and r0, r1
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x48]
	add r2, r2, r1
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r7, r0, r1
	add r0, r7, #0
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _02079722
_02079710:
	bl sub_0201D2E8
	add r7, r0, #0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079710
_02079722:
	ldr r0, [sp, #0x14]
	lsl r1, r7, #8
	add r6, r1, r0
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldrh r2, [r2, #2]
	ldr r1, [sp, #0x28]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r2, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	mov r1, #6
	add r2, r2, #6
	bl sub_02074B30
	ldr r7, [sp, #0x4c]
	mov r6, #0
_02079766:
	ldrh r1, [r7, #8]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x50]
	lsr r2, r2, #0x18
	bl sub_02077230
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _02079766
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	ldrh r0, [r0, #0x10]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, sp, #0x64
	bl sub_02074B30
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x4c]
	add r0, #0x12
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	blt _020796CA
_020797B2:
	ldr r0, [sp, #0x60]
	bl sub_020181C4
	ldr r0, [sp, #0x50]
	bl sub_020181C4
	ldr r0, [sp, #0x54]
	bl sub_0201D2DC
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020793B8

	.rodata


	.global Unk_020F0714
Unk_020F0714: ; 0x020F0714
	.incbin "incbin/arm9_rodata.bin", 0xBAD4, 0x69

