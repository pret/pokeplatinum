	.include "macros/function.inc"
	.include "include/ov4_021D6A88.inc"

	

	.text


	arm_func_start ov4_021D6A88
ov4_021D6A88: ; 0x021D6A88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	bl sub_020D8B60
	mov r4, r0
	ldr r0, _021D6C94 ; =0x02216570
	bl sub_020D8B60
	cmp r4, r0
	ldreqsb r0, [r6, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x19]
	cmpeq r0, #0x20
	bne _021D6C88
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl sub_020CBAE4
	cmp r0, #0
	bne _021D6C88
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl sub_020CC218
	mov r4, r0
	mov r5, r1
	mvn r0, #0
	cmp r5, r0
	cmpeq r4, r0
	beq _021D6C88
	add r0, sp, #0
	mov r1, r6
	bl sub_020D8B7C
	mov r2, #0
	ldr r1, _021D6C98 ; =0x021D0D40
	add r0, sp, #0xc
	strb r2, [sp, #7]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x10]
	strb r2, [sp, #0x13]
	strb r2, [sp, #0x16]
	strb r2, [sp, #0x19]
	str r2, [r1, #0]
	bl sub_020DAE0C
	ldr r1, _021D6C98 ; =0x021D0D40
	str r0, [sp, #0x2c]
	ldr r1, [r1, #0]
	cmp r1, #0x22
	beq _021D6C88
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r7, _021D6C9C ; =0x02216540
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r6, sp, #8
_021D6B7C:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	bl sub_020D8D14
	cmp r0, #0
	addeq r0, r8, #1
	streq r0, [sp, #0x30]
	beq _021D6BA4
	add r8, r8, #1
	cmp r8, #0xc
	blt _021D6B7C
_021D6BA4:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _021D6C88
	ldr r1, _021D6C98 ; =0x021D0D40
	mov r2, #0
	add r0, sp, #5
	str r2, [r1, #0]
	bl sub_020DAE0C
	ldr r1, _021D6C98 ; =0x021D0D40
	str r0, [sp, #0x34]
	ldr r0, [r1, #0]
	cmp r0, #0x22
	beq _021D6C88
	mov r2, #0
	add r0, sp, #0x11
	str r2, [r1, #0]
	bl sub_020DAE0C
	ldr r1, _021D6C98 ; =0x021D0D40
	str r0, [sp, #0x20]
	ldr r0, [r1, #0]
	cmp r0, #0x22
	beq _021D6C88
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1, #0]
	bl sub_020DAE0C
	ldr r1, _021D6C98 ; =0x021D0D40
	str r0, [sp, #0x24]
	ldr r0, [r1, #0]
	cmp r0, #0x22
	beq _021D6C88
	mov r2, #0
	add r0, sp, #0x17
	str r2, [r1, #0]
	bl sub_020DAE0C
	ldr r1, _021D6C98 ; =0x021D0D40
	str r0, [sp, #0x28]
	ldr r0, [r1, #0]
	cmp r0, #0x22
	beq _021D6C88
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl sub_020CC218
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	beq _021D6C88
	ldr r2, _021D6CA0 ; =0x0221A4B4
	subs r0, r4, r0
	str r0, [r2, #0xc]
	sbc r0, r5, r1
	str r0, [r2, #0x10]
	stmib r2, {r4, r5}
	mov r0, #1
	str r0, [r2, #0]
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021D6C88:
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021D6C94: .word 0x02216570
_021D6C98: .word 0x021D0D40
_021D6C9C: .word 0x02216540
_021D6CA0: .word 0x0221A4B4
	arm_func_end ov4_021D6A88

	.data


	.global Unk_ov4_02216510
Unk_ov4_02216510: ; 0x02216510
	.incbin "incbin/overlay4_data.bin", 0x690, 0x694 - 0x690

	.global Unk_ov4_02216514
Unk_ov4_02216514: ; 0x02216514
	.incbin "incbin/overlay4_data.bin", 0x694, 0x698 - 0x694

	.global Unk_ov4_02216518
Unk_ov4_02216518: ; 0x02216518
	.incbin "incbin/overlay4_data.bin", 0x698, 0x69C - 0x698

	.global Unk_ov4_0221651C
Unk_ov4_0221651C: ; 0x0221651C
	.incbin "incbin/overlay4_data.bin", 0x69C, 0x6A0 - 0x69C

	.global Unk_ov4_02216520
Unk_ov4_02216520: ; 0x02216520
	.incbin "incbin/overlay4_data.bin", 0x6A0, 0x6A4 - 0x6A0

	.global Unk_ov4_02216524
Unk_ov4_02216524: ; 0x02216524
	.incbin "incbin/overlay4_data.bin", 0x6A4, 0x6A8 - 0x6A4

	.global Unk_ov4_02216528
Unk_ov4_02216528: ; 0x02216528
	.incbin "incbin/overlay4_data.bin", 0x6A8, 0x6AC - 0x6A8

	.global Unk_ov4_0221652C
Unk_ov4_0221652C: ; 0x0221652C
	.incbin "incbin/overlay4_data.bin", 0x6AC, 0x6B0 - 0x6AC

	.global Unk_ov4_02216530
Unk_ov4_02216530: ; 0x02216530
	.incbin "incbin/overlay4_data.bin", 0x6B0, 0x6B4 - 0x6B0

	.global Unk_ov4_02216534
Unk_ov4_02216534: ; 0x02216534
	.incbin "incbin/overlay4_data.bin", 0x6B4, 0x6B8 - 0x6B4

	.global Unk_ov4_02216538
Unk_ov4_02216538: ; 0x02216538
	.incbin "incbin/overlay4_data.bin", 0x6B8, 0x6BC - 0x6B8

	.global Unk_ov4_0221653C
Unk_ov4_0221653C: ; 0x0221653C
	.incbin "incbin/overlay4_data.bin", 0x6BC, 0x6C0 - 0x6BC

	.global Unk_ov4_02216540
Unk_ov4_02216540: ; 0x02216540
	.incbin "incbin/overlay4_data.bin", 0x6C0, 0x6F0 - 0x6C0

	.global Unk_ov4_02216570
Unk_ov4_02216570: ; 0x02216570
	.incbin "incbin/overlay4_data.bin", 0x6F0, 0x1E



	.bss


	.global Unk_ov4_0221A4B4
Unk_ov4_0221A4B4: ; 0x0221A4B4
	.space 0x4

	.global Unk_ov4_0221A4B8
Unk_ov4_0221A4B8: ; 0x0221A4B8
	.space 0x8

	.global Unk_ov4_0221A4C0
Unk_ov4_0221A4C0: ; 0x0221A4C0
	.space 0x8

