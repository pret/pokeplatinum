	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov82_0223B140
ov82_0223B140: ; 0x0223B140
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B160
	bl sub_02006844
	cmp r0, #0
	beq _0223B160
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_0223B160:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov82_0223B140

	thumb_func_start ov82_0223B164
ov82_0223B164: ; 0x0223B164
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x37
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x37
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x37
	str r0, [r4, #0]
	str r5, [r4, #0x10]
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _0223B1A4
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _0223B1A4
	bl ov4_021D1E74
_0223B1A4:
	add r0, r4, #0
	ldr r1, [r5, #0x20]
	add r0, #0x26
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0x27
	strb r1, [r0]
	ldr r0, [r4, #0]
	bl sub_0207D99C
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0223B1CE
	ldrh r1, [r4, #6]
	mov r0, #0xff
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #6]
_0223B1CE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov82_0223B164

	thumb_func_start ov82_0223B1D4
ov82_0223B1D4: ; 0x0223B1D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldr r5, [r4, #0]
	cmp r5, #4
	bhi _0223B23E
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B1F8: ; jump table
	.short _0223B202 - _0223B1F8 - 2 ; case 0
	.short _0223B210 - _0223B1F8 - 2 ; case 1
	.short _0223B21E - _0223B1F8 - 2 ; case 2
	.short _0223B22C - _0223B1F8 - 2 ; case 3
	.short _0223B23A - _0223B1F8 - 2 ; case 4
_0223B202:
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x14
	bl ov82_0223B2E0
	str r0, [r4, #0]
	b _0223B23E
_0223B210:
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x14
	bl ov82_0223B330
	str r0, [r4, #0]
	b _0223B23E
_0223B21E:
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x14
	bl ov82_0223B35C
	str r0, [r4, #0]
	b _0223B23E
_0223B22C:
	add r1, r6, #0
	add r0, r6, #0
	add r1, #0x14
	bl ov82_0223B37C
	str r0, [r4, #0]
	b _0223B23E
_0223B23A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B23E:
	ldr r0, [r4, #0]
	cmp r5, r0
	beq _0223B248
	mov r0, #0
	str r0, [r6, #0x14]
_0223B248:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov82_0223B1D4

	thumb_func_start ov82_0223B24C
ov82_0223B24C: ; 0x0223B24C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223B26C
	cmp r0, #1
	beq _0223B2BC
	b _0223B2D8
_0223B26C:
	ldr r0, [r6, #0]
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl sub_020181C4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020C4CF4
	add r0, r7, #0
	bl sub_02006830
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0223B296
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0223B296
	bl ov4_021D1F18
_0223B296:
	ldr r0, [sp]
	bl sub_0201807C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0223B2A6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B2A6:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #4
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223B2DC
_0223B2BC:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	bne _0223B2D4
	bl sub_02035E18
	add r4, r0, #0
	bl sub_02032E64
	cmp r4, r0
	bge _0223B2DC
_0223B2D4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B2D8:
	bl sub_02022974
_0223B2DC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223B24C

	thumb_func_start ov82_0223B2E0
ov82_0223B2E0: ; 0x0223B2E0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #5
	bhi _0223B32A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B2F6: ; jump table
	.short _0223B302 - _0223B2F6 - 2 ; case 0
	.short _0223B30A - _0223B2F6 - 2 ; case 1
	.short _0223B312 - _0223B2F6 - 2 ; case 2
	.short _0223B31A - _0223B2F6 - 2 ; case 3
	.short _0223B322 - _0223B2F6 - 2 ; case 4
	.short _0223B326 - _0223B2F6 - 2 ; case 5
_0223B302:
	bl ov82_0223B380
	str r0, [r4, #0]
	b _0223B32A
_0223B30A:
	bl ov82_0223B3DC
	str r0, [r4, #0]
	b _0223B32A
_0223B312:
	bl ov82_0223B470
	str r0, [r4, #0]
	b _0223B32A
_0223B31A:
	bl ov82_0223B510
	str r0, [r4, #0]
	b _0223B32A
_0223B322:
	mov r0, #1
	pop {r4, pc}
_0223B326:
	mov r0, #4
	pop {r4, pc}
_0223B32A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov82_0223B2E0

	thumb_func_start ov82_0223B330
ov82_0223B330: ; 0x0223B330
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0223B358 ; =0x0223B564
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r2, [r4, #0]
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r4, #0x1c]
	mov r0, #2
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B358: .word 0x0223B564
	thumb_func_end ov82_0223B330

	thumb_func_start ov82_0223B35C
ov82_0223B35C: ; 0x0223B35C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B36E
	mov r0, #2
	pop {r4, pc}
_0223B36E:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0223B378
	mov r0, #0
	pop {r4, pc}
_0223B378:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov82_0223B35C

	thumb_func_start ov82_0223B37C
ov82_0223B37C: ; 0x0223B37C
	mov r0, #4
	bx lr
	thumb_func_end ov82_0223B37C

	thumb_func_start ov82_0223B380
ov82_0223B380: ; 0x0223B380
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _0223B3D4 ; =0x0223B554
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0x10]
	ldr r1, _0223B3D8 ; =0x0223B550
	ldr r0, [r0, #0x14]
	ldr r2, [r5, #0]
	bl sub_0207D824
	add r4, r0, #0
	ldrh r0, [r5, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _0223B3AE
	mov r2, #5
	b _0223B3B0
_0223B3AE:
	mov r2, #4
_0223B3B0:
	ldr r1, [r5, #0x10]
	lsl r2, r2, #0x18
	ldr r1, [r1, #0xc]
	ldr r3, [r5, #0xc]
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl sub_0207CB2C
	ldr r2, [r5, #0]
	add r0, sp, #0
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r5, #0x1c]
	str r4, [r5, #0x18]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B3D4: .word 0x0223B554
_0223B3D8: .word 0x0223B550
	thumb_func_end ov82_0223B380

	thumb_func_start ov82_0223B3DC
ov82_0223B3DC: ; 0x0223B3DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B3EE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223B3EE:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0207CB08
	add r5, r0, #0
	bl sub_0207CB20
	add r2, r0, #0
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_020D50B8
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0207CB94
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0207CB9C
	cmp r0, #5
	bhi _0223B44A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B436: ; jump table
	.short _0223B452 - _0223B436 - 2 ; case 0
	.short _0223B442 - _0223B436 - 2 ; case 1
	.short _0223B452 - _0223B436 - 2 ; case 2
	.short _0223B452 - _0223B436 - 2 ; case 3
	.short _0223B452 - _0223B436 - 2 ; case 4
	.short _0223B446 - _0223B436 - 2 ; case 5
_0223B442:
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223B446:
	mov r0, #5
	pop {r3, r4, r5, pc}
_0223B44A:
	bl sub_02022974
	mov r0, #0x95
	str r0, [r4, #8]
_0223B452:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r0, #0x14]
	lsl r1, r1, #0x10
	ldr r3, [r4, #0]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0207D60C
	cmp r0, #0
	bne _0223B46C
	bl sub_02022974
_0223B46C:
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov82_0223B3DC

	thumb_func_start ov82_0223B470
ov82_0223B470: ; 0x0223B470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r3, _0223B50C ; =0x0223B574
	ldr r0, [r0, #0x14]
	add r2, sp, #8
	str r0, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020972FC
	str r0, [r5, #0x18]
	ldr r1, [r5, #8]
	mov r2, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02097320
	mov r6, #0
	add r4, r6, #0
_0223B4A4:
	add r0, r4, #0
	bl sub_0207D354
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	ldr r3, [r5, #0]
	add r1, r7, #0
	mov r2, #1
	bl sub_0207D688
	cmp r0, #1
	bne _0223B4CE
	ldr r0, [r5, #0x18]
	add r1, r7, #0
	mov r2, #0
	bl sub_02097320
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_0223B4CE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x40
	blo _0223B4A4
	add r3, sp, #4
	ldr r0, [r5, #0xc]
	mov r1, #4
	add r2, sp, #4
	add r3, #1
	bl sub_0207D9B4
	add r2, sp, #4
	ldrb r1, [r2, #1]
	add r3, r6, #2
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	ldr r0, [r5, #0x18]
	lsr r3, r3, #0x18
	bl sub_0209733C
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0]
	add r0, sp, #8
	bl sub_020067E8
	str r0, [r5, #0x1c]
	mov r0, #3
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B50C: .word 0x0223B574
	thumb_func_end ov82_0223B470

	thumb_func_start ov82_0223B510
ov82_0223B510: ; 0x0223B510
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B526
	add sp, #4
	mov r0, #3
	pop {r3, r4, pc}
_0223B526:
	add r1, sp, #0
	ldr r0, [r4, #0x18]
	add r1, #1
	add r2, sp, #0
	bl sub_02097390
	add r3, sp, #0
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl sub_0207D9C8
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x18]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov82_0223B510
	; 0x0223B550


	.rodata
	.incbin "incbin/overlay82_rodata.bin"


	.bss
	.space 0x0
