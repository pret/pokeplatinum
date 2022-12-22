	.include "macros/function.inc"
	.include "include/ov100_021D44C0.inc"

	

	.text


	thumb_func_start ov100_021D44C0
ov100_021D44C0: ; 0x021D44C0
	push {r4, r5}
	mov r2, #0x16
	mov r3, #1
	lsl r2, r2, #4
	str r3, [r0, r2]
	add r3, r2, #0
	add r3, #0x24
	str r1, [r0, r3]
	add r3, r2, #0
	mov r4, #0
	add r3, #0x20
	str r4, [r0, r3]
	add r3, r2, #0
	add r3, #0x20
	ldr r3, [r0, r3]
	mov r4, #0xc
	add r5, r3, #0
	mul r5, r4
	add r3, r1, r5
	ldr r5, [r3, #4]
	add r3, r2, #0
	add r3, #0x18
	str r5, [r0, r3]
	lsl r3, r4, #5
	ldr r3, [r0, r3]
	add r5, r3, #0
	mul r5, r4
	add r3, r1, r5
	ldr r5, [r3, #4]
	add r3, r2, #0
	add r3, #0x1c
	str r5, [r0, r3]
	lsl r3, r4, #5
	ldr r3, [r0, r3]
	sub r2, #8
	mul r4, r3
	ldr r1, [r1, r4]
	str r1, [r0, r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov100_021D44C0

	thumb_func_start ov100_021D4510
ov100_021D4510: ; 0x021D4510
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x88
	bl sub_02017248
	asr r1, r0, #0xc
	mov r5, #0x55
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	lsl r5, r5, #2
	add r2, r3, r2
	ldr r3, [r4, r5]
	ldr r7, _021D45A0 ; =0x021D5344
	add r3, r0, r3
	asr r0, r3, #0xc
	lsr r6, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r6
	ror r0, r1
	add r1, r6, r0
	add r0, r5, #4
	ldr r0, [r4, r0]
	sub r6, r0, #1
	mov r0, #0x14
	mul r0, r6
	add r6, r5, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, r7, r0
	lsl r6, r6, #2
	ldr r0, [r6, r0]
	cmp r0, #0xff
	beq _021D459E
	cmp r1, r2
	beq _021D4594
	add r1, r5, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r5, #8
	add r1, r1, #1
	str r1, [r4, r5]
	lsl r1, r0, #2
	cmp r1, #0
	ble _021D4580
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D458E
_021D4580:
	lsl r0, r0, #0xe
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D458E:
	bl _f_ftoi
	add r3, r0, #0
_021D4594:
	add r4, #0x88
	add r0, r4, #0
	add r1, r3, #0
	bl sub_02017240
_021D459E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D45A0: .word 0x021D5344
	thumb_func_end ov100_021D4510

	thumb_func_start ov100_021D45A4
ov100_021D45A4: ; 0x021D45A4
	push {r3, r4, r5, r6}
	mov r2, #0x61
	lsl r2, r2, #2
	add r1, r2, #0
	sub r1, #0xc
	ldr r3, [r0, r1]
	ldr r4, [r0, r2]
	cmp r3, #0xff
	beq _021D45BE
	sub r1, r2, #4
	ldr r6, [r0, r1]
	cmp r6, #0xff
	bne _021D45C0
_021D45BE:
	b _021D46C2
_021D45C0:
	mov r1, #0xc
	add r5, r6, #0
	mul r5, r1
	ldr r6, [r4, r5]
	cmp r6, #0
	bne _021D45EA
	mov r1, #0
	sub r2, #0x24
	str r1, [r0, r2]
	mov r2, #0xff
	add r1, r2, #0
	add r1, #0x81
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x79
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D45EA:
	add r6, r2, #0
	sub r6, #0x28
	ldr r6, [r0, r6]
	cmp r6, #4
	blt _021D4674
	add r3, r2, #0
	sub r3, #0xc
	ldr r3, [r0, r3]
	sub r5, r3, #1
	add r3, r2, #0
	sub r3, #0xc
	str r5, [r0, r3]
	add r5, r2, #0
	mov r3, #0
	sub r5, #0x28
	str r3, [r0, r5]
	add r5, r2, #0
	sub r5, #0xc
	ldr r5, [r0, r5]
	cmp r5, #0
	bne _021D46C2
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	add r6, r5, #1
	lsl r5, r1, #5
	str r6, [r0, r5]
	ldr r5, [r0, r5]
	add r6, r5, #0
	mul r6, r1
	add r5, r2, #0
	ldr r6, [r4, r6]
	sub r5, #0x2c
	str r6, [r0, r5]
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	add r6, r5, #0
	mul r6, r1
	add r5, r4, r6
	ldr r6, [r5, #4]
	add r5, r2, #0
	sub r5, #0xc
	str r6, [r0, r5]
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	mul r1, r5
	add r1, r4, r1
	ldr r4, [r1, #4]
	add r1, r2, #0
	sub r1, #8
	str r4, [r0, r1]
	add r1, r2, #0
	sub r1, #0x2c
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021D46C2
	sub r2, #0x24
	str r3, [r0, r2]
	mov r2, #0xff
	add r1, r2, #0
	add r1, #0x81
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x79
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D4674:
	cmp r6, #0
	bne _021D4680
	sub r2, #8
	ldr r1, [r0, r2]
	cmp r3, r1
	beq _021D46C2
_021D4680:
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #9
	bhi _021D46C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D4696: ; jump table
	.short _021D46C2 - _021D4696 - 2 ; case 0
	.short _021D46AA - _021D4696 - 2 ; case 1
	.short _021D46AA - _021D4696 - 2 ; case 2
	.short _021D46B8 - _021D4696 - 2 ; case 3
	.short _021D46B8 - _021D4696 - 2 ; case 4
	.short _021D46C2 - _021D4696 - 2 ; case 5
	.short _021D46C2 - _021D4696 - 2 ; case 6
	.short _021D46C2 - _021D4696 - 2 ; case 7
	.short _021D46C2 - _021D4696 - 2 ; case 8
	.short _021D46AA - _021D4696 - 2 ; case 9
_021D46AA:
	add r1, r4, r5
	ldr r2, [r0, #0x5c]
	ldr r1, [r1, #8]
	sub r1, r2, r1
	str r1, [r0, #0x5c]
	pop {r3, r4, r5, r6}
	bx lr
_021D46B8:
	add r1, r4, r5
	ldr r2, [r0, #0x54]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x54]
_021D46C2:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov100_021D45A4

	.rodata


	.global Unk_ov100_021D5344
Unk_ov100_021D5344: ; 0x021D5344
	.incbin "incbin/overlay100_rodata.bin", 0x270, 0x104

