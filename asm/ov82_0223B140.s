	.include "macros/function.inc"
	.include "include/ov82_0223B140.inc"

	

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