	.include "macros/function.inc"
	.include "overlay061/ov61_0222E0B8.inc"

	

	.text


	arm_func_start ov61_0222E0B8
ov61_0222E0B8: ; 0x0222E0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E10C ; =0x0222E65C
	mov ip, r5
_0222E0D0:
	cmp r5, #0
	moveq r4, ip
	beq _0222E0F0
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E0F0:
	ldrb r3, [r0, r5]
	add r5, r5, #1
	cmp r5, r1
	eor r3, r4, r3
	strb r3, [r2], #1
	blt _0222E0D0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E10C: .word Unk_ov61_0222E65C
	arm_func_end ov61_0222E0B8

	arm_func_start ov61_0222E110
ov61_0222E110: ; 0x0222E110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E164 ; =0x0222E65C
	mov ip, r5
_0222E128:
	cmp r5, #0
	moveq r4, ip
	beq _0222E148
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E148:
	ldrb r3, [r2, r5]
	eor r3, r3, r4
	strb r3, [r2, r5]
	add r5, r5, #1
	cmp r5, r1
	blt _0222E128
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E164: .word Unk_ov61_0222E65C
	arm_func_end ov61_0222E110

	arm_func_start ov61_0222E168
ov61_0222E168: ; 0x0222E168
	ldr r2, _0222E294 ; =0x00005209
	cmp r0, r2
	bgt _0222E1C0
	bge _0222E24C
	sub r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1B0
	ldr r1, _0222E298 ; =0x00004E20
	cmp r0, r1
	blt _0222E1A4
	beq _0222E234
	add r1, r1, #1
	cmp r0, r1
	beq _0222E23C
	b _0222E284
_0222E1A4:
	cmp r0, #0
	beq _0222E22C
	b _0222E284
_0222E1B0:
	sub r1, r2, #1
	cmp r0, r1
	beq _0222E244
	b _0222E284
_0222E1C0:
	add r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1E0
	bge _0222E25C
	ldr r1, _0222E29C ; =0x000055F0
	cmp r0, r1
	beq _0222E254
	b _0222E284
_0222E1E0:
	ldr r2, _0222E2A0 ; =0x000059D8
	cmp r0, r2
	bgt _0222E1F4
	beq _0222E264
	b _0222E284
_0222E1F4:
	add r1, r2, #3
	cmp r0, r1
	bgt _0222E284
	add r1, r2, #1
	cmp r0, r1
	blt _0222E284
	beq _0222E26C
	add r1, r2, #2
	cmp r0, r1
	beq _0222E274
	add r1, r2, #3
	cmp r0, r1
	beq _0222E27C
	b _0222E284
_0222E22C:
	mov r0, #0x400
	b _0222E28C
_0222E234:
	mov r0, #0xe0
	b _0222E28C
_0222E23C:
	mov r0, #0xc
	b _0222E28C
_0222E244:
	mov r0, #0x220
	b _0222E28C
_0222E24C:
	mov r0, #0xc
	b _0222E28C
_0222E254:
	mov r0, #0
	b _0222E28C
_0222E25C:
	mov r0, #0x24
	b _0222E28C
_0222E264:
	ldr r0, _0222E2A4 ; =0x00001D4C
	b _0222E28C
_0222E26C:
	mov r0, #0x1c
	b _0222E28C
_0222E274:
	mov r0, #0xc
	b _0222E28C
_0222E27C:
	mov r0, #8
	b _0222E28C
_0222E284:
	mvn r0, #0
	bx lr
_0222E28C:
	add r0, r0, #0x140
	bx lr
	; .align 2, 0
_0222E294: .word 0x00005209
_0222E298: .word 0x00004E20
_0222E29C: .word 0x000055F0
_0222E2A0: .word 0x000059D8
_0222E2A4: .word 0x00001D4C
	arm_func_end ov61_0222E168

	arm_func_start ov61_0222E2A8
ov61_0222E2A8: ; 0x0222E2A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r6, _0222E458 ; =0x0222E580
	add lr, sp, #0
	mov ip, r0
	mov r5, lr
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r4, _0222E45C ; =0x00005209
	ldmia r6, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	cmp ip, r4
	bgt _0222E340
	bge _0222E408
	ldr r1, _0222E460 ; =0x00004E20
	cmp ip, r1
	bgt _0222E31C
	bge _0222E3F0
	cmp ip, #0
	bgt _0222E440
	mvn r6, #0
	cmp ip, r6
	blt _0222E440
	beq _0222E3AC
	cmp ip, #0
	beq _0222E3E8
	b _0222E440
_0222E31C:
	add r0, r1, #1
	cmp ip, r0
	bgt _0222E330
	beq _0222E3F8
	b _0222E440
_0222E330:
	add r0, r1, #0x3e8
	cmp ip, r0
	beq _0222E400
	b _0222E440
_0222E340:
	add r0, r4, #0x3e8
	cmp ip, r0
	bgt _0222E360
	bge _0222E418
	ldr r0, _0222E464 ; =0x000055F0
	cmp ip, r0
	beq _0222E410
	b _0222E440
_0222E360:
	ldr r1, _0222E468 ; =0x000059D8
	cmp ip, r1
	bgt _0222E374
	beq _0222E420
	b _0222E440
_0222E374:
	add r0, r1, #3
	cmp ip, r0
	bgt _0222E440
	add r0, r1, #1
	cmp ip, r0
	blt _0222E440
	beq _0222E428
	add r0, r1, #2
	cmp ip, r0
	beq _0222E430
	add r0, r1, #3
	cmp ip, r0
	beq _0222E438
	b _0222E440
_0222E3AC:
	mov r7, #0
	mov r4, r6
_0222E3B4:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, r4
	beq _0222E3D4
	bl ov61_0222E2A8
	cmp r0, r6
	movgt r6, r0
	add r7, r7, #1
	b _0222E3B4
_0222E3D4:
	mvn r0, #0
	cmp r6, r0
	bne _0222E44C
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E3E8:
	mov r6, #0x400
	b _0222E44C
_0222E3F0:
	mov r6, #8
	b _0222E44C
_0222E3F8:
	ldr r6, _0222E46C ; =0x0000093C
	b _0222E44C
_0222E400:
	mov r6, #8
	b _0222E44C
_0222E408:
	ldr r6, _0222E470 ; =0x00002B74
	b _0222E44C
_0222E410:
	mov r6, #4
	b _0222E44C
_0222E418:
	mov r6, #0x630
	b _0222E44C
_0222E420:
	mov r6, #8
	b _0222E44C
_0222E428:
	ldr r6, _0222E474 ; =0x00001C24
	b _0222E44C
_0222E430:
	sub r6, r1, #0x3c80
	b _0222E44C
_0222E438:
	mov r6, #0
	b _0222E44C
_0222E440:
	add sp, sp, #0x30
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E44C:
	add r0, r6, #8
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E458: .word Unk_ov61_0222E580
_0222E45C: .word 0x00005209
_0222E460: .word 0x00004E20
_0222E464: .word 0x000055F0
_0222E468: .word 0x000059D8
_0222E46C: .word 0x0000093C
_0222E470: .word 0x00002B74
_0222E474: .word 0x00001C24
	arm_func_end ov61_0222E2A8

	.rodata


	.global Unk_ov61_0222E550
Unk_ov61_0222E550: ; 0x0222E550
	.incbin "incbin/overlay61_rodata.bin", 0xD4, 0x104 - 0xD4

	.global Unk_ov61_0222E580
Unk_ov61_0222E580: ; 0x0222E580
	.incbin "incbin/overlay61_rodata.bin", 0x104, 0x134 - 0x104

	.global Unk_ov61_0222E5B0
Unk_ov61_0222E5B0: ; 0x0222E5B0
	.incbin "incbin/overlay61_rodata.bin", 0x134, 0x30


	.data


	.global Unk_ov61_0222E65C
Unk_ov61_0222E65C: ; 0x0222E65C
	.incbin "incbin/overlay61_data.bin", 0x5C, 0x100

