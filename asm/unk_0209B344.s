	.include "macros/function.inc"
	.include "include/unk_0209B344.inc"

	

	.text


	thumb_func_start sub_0209B344
sub_0209B344: ; 0x0209B344
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x20
	bl sub_0200B358
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202783C
	str r0, [r4, #0x14]
	add r0, r4, #0
	str r6, [r4, #0x20]
	add r0, #8
	mov r1, #4
	bl sub_02014A9C
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #8
	bl sub_02027938
	ldr r0, [r4, #0x10]
	bl sub_02097520
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r1, _0209B3A8 ; =sub_0209B3C4
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0209B3A8: .word sub_0209B3C4
	thumb_func_end sub_0209B344

	thumb_func_start sub_0209B3AC
sub_0209B3AC: ; 0x0209B3AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020974EC
	ldr r0, [r4, #4]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209B3AC

	thumb_func_start sub_0209B3C4
sub_0209B3C4: ; 0x0209B3C4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #4
	bhi _0209B478
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209B3DE: ; jump table
	.short _0209B3E8 - _0209B3DE - 2 ; case 0
	.short _0209B406 - _0209B3DE - 2 ; case 1
	.short _0209B41C - _0209B3DE - 2 ; case 2
	.short _0209B432 - _0209B3DE - 2 ; case 3
	.short _0209B470 - _0209B3DE - 2 ; case 4
_0209B3E8:
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #8
	bl sub_02097500
	ldr r0, [r4, #0x10]
	bl sub_02097514
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl sub_0203D874
	mov r0, #1
	str r0, [r4, #0x18]
	b _0209B478
_0209B406:
	ldr r0, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	bne _0209B478
	ldr r0, [r4, #0]
	bl sub_020509D4
	mov r0, #2
	str r0, [r4, #0x18]
	b _0209B478
_0209B41C:
	ldr r0, [r4, #0]
	bl sub_020509DC
	cmp r0, #0
	beq _0209B478
	mov r0, #1
	bl ov5_021D1744
	mov r0, #3
	str r0, [r4, #0x18]
	b _0209B478
_0209B432:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209B478
	ldr r0, [r4, #0x10]
	bl sub_02097528
	cmp r0, #0
	beq _0209B450
	ldr r0, [r4, #0x20]
	mov r1, #0
	strh r1, [r0]
	mov r0, #4
	str r0, [r4, #0x18]
	b _0209B478
_0209B450:
	ldr r0, [r4, #0x20]
	mov r1, #1
	strh r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #8
	bl sub_02097540
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #8
	bl sub_02027958
	mov r0, #4
	str r0, [r4, #0x18]
	b _0209B478
_0209B470:
	bl sub_0209B3AC
	mov r0, #1
	pop {r4, pc}
_0209B478:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0209B3C4