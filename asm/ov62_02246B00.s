	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov62_02246B00
ov62_02246B00: ; 0x02246B00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x20
	str r0, [sp]
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r1, [sp]
	add r0, r6, #1
	str r6, [r4, #0]
	bl sub_02023790
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	mov r2, #0
	add r1, r5, #0
	add r3, r4, #0
_02246B2E:
	ldr r0, [r1, #0]
	add r2, r2, #1
	str r0, [r3, #4]
	add r1, r1, #4
	add r3, r3, #4
	cmp r2, #3
	blt _02246B2E
	sub r0, r2, #1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02246B00

	thumb_func_start ov62_02246B4C
ov62_02246B4C: ; 0x02246B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02246B5A
	bl sub_02022974
_02246B5A:
	cmp r4, #0
	bne _02246B62
	bl sub_02022974
_02246B62:
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov62_02246B4C

	thumb_func_start ov62_02246B70
ov62_02246B70: ; 0x02246B70
	push {r3, r4}
	mov r2, #0x82
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	add r3, r2, #4
	str r4, [r0, r3]
	str r1, [r0, r2]
	add r1, r2, #0
	mov r3, #0
	add r1, #8
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x10
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #0x14
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02246BC2
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x24
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x22
	ldrh r1, [r3, r1]
	add r2, #0xc
	str r1, [r0, r2]
_02246BC2:
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02246BF0
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x28
	ldrh r3, [r3, r1]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x26
	ldrh r1, [r3, r1]
	add r2, #0x10
	str r1, [r0, r2]
_02246BF0:
	pop {r3, r4}
	bx lr
	thumb_func_end ov62_02246B70

	thumb_func_start ov62_02246BF4
ov62_02246BF4: ; 0x02246BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r2, #0xa6
	lsl r2, r2, #2
	add r4, r2, #0
	mov r1, #1
	add r3, r0, #0
	str r1, [r3, r2]
	mov r5, #0
	sub r4, #0xb4
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	sub r4, #0xb2
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	sub r4, #0xb0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x18
	ldr r3, [r3, r4]
	add r4, r2, #0
	add r5, r5, r3
	add r6, r2, #0
	sub r4, #0xae
	add r3, r0, #0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x18
	ldr r3, [r3, r4]
	add r4, r2, #0
	add r5, r5, r3
	sub r4, #0xac
	add r3, r0, #0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r5, r2, #0
	add r4, #0x1c
	add r5, #0x14
	ldr r4, [r3, r4]
	ldr r3, [r3, r5]
	add r6, #0x18
	add r5, r0, #0
	ldr r5, [r5, r6]
	sub r2, #0xaa
	add r3, r3, r5
	add r4, r4, r3
	add r3, r0, #0
	str r0, [sp]
	strh r4, [r3, r2]
	bl ov62_02246B70
	mov r4, #0x81
	lsl r4, r4, #2
	add r3, r4, #0
	ldr r1, [sp]
	mov r0, #0
	add r3, #0xa8
_02246C7E:
	ldr r2, [sp]
	add r0, r0, #1
	ldr r5, [r2, r4]
	ldr r2, [r1, r3]
	add r1, r1, #4
	add r5, r5, r2
	ldr r2, [sp]
	cmp r0, #3
	str r5, [r2, r4]
	blt _02246C7E
	ldr r4, _02246D5C ; =0x02249710
	add r3, sp, #8
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0xab
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	cmp r0, #4
	beq _02246CB2
	mov r2, #1
_02246CB2:
	mov r0, #0xc
	mul r0, r2
	add r3, sp, #8
	add r0, r3, r0
	mov r2, #0x77
	ldr r5, [sp]
	mov r1, #0
	add r4, r0, #0
	lsl r2, r2, #2
_02246CC4:
	ldr r3, [r4, #0]
	add r1, r1, #1
	strh r3, [r5, r2]
	add r4, r4, #4
	add r5, r5, #2
	cmp r1, #3
	blt _02246CC4
	sub r2, r1, #1
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r0, [sp]
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x77
	lsl r0, r0, #2
	strh r2, [r1, r0]
	ldr r1, [sp]
	mov r0, #0
	mov r4, #0xab
	mov r5, #0x15
	add r3, r0, #0
	add r2, r1, #0
	lsl r4, r4, #2
	lsl r5, r5, #4
_02246CF4:
	ldr r6, [r1, r4]
	add r3, r3, #1
	add r0, r0, r6
	sub r6, r0, #1
	str r6, [r2, r5]
	add r1, r1, #4
	add r2, #0x1c
	cmp r3, #2
	blt _02246CF4
	ldr r0, [sp]
	mov r5, #0
	mov r7, #0xab
	mov ip, r5
	str r0, [sp, #4]
	add r4, r0, #0
	lsl r7, r7, #2
_02246D14:
	mov r0, #0xab
	ldr r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r1, #0
	cmp r0, #0
	ble _02246D40
	mov r0, ip
	lsl r3, r0, #2
	ldr r0, [sp]
	add r2, r4, #0
	add r3, r0, r3
	mov r0, ip
	add r6, r0, #1
_02246D30:
	str r6, [r2, #4]
	ldr r0, [r3, r7]
	add r1, r1, #1
	add r2, #0x1c
	add r4, #0x1c
	add r5, r5, #1
	cmp r1, r0
	blt _02246D30
_02246D40:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r0, r0, #4
	str r0, [sp, #4]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r5, r0
	blt _02246D14
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246D5C: .word 0x02249710
	thumb_func_end ov62_02246BF4

	thumb_func_start ov62_02246D60
ov62_02246D60: ; 0x02246D60
	mov r2, #0x7d
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r3, #0
	add r1, r2, #4
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	add r2, #0xc
	str r3, [r0, r2]
	bx lr
	thumb_func_end ov62_02246D60

	thumb_func_start ov62_02246D78
ov62_02246D78: ; 0x02246D78
	push {r4, lr}
	add r4, r0, #0
	bl ov62_02246BF4
	add r0, r4, #0
	bl ov62_02247220
	add r0, r4, #0
	bl ov62_02247574
	add r0, r4, #0
	bl ov62_02247B48
	add r0, r4, #0
	bl ov62_02247754
	add r0, r4, #0
	mov r1, #0
	bl ov62_02247B88
	add r0, r4, #0
	bl ov62_0224784C
	add r0, r4, #0
	bl ov62_02247CE0
	add r0, r4, #0
	mov r1, #1
	bl ov62_02246D60
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02246D78

	thumb_func_start ov62_02246DB8
ov62_02246DB8: ; 0x02246DB8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r4, #0
	bl ov62_02247694
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov62_02246DB8

	thumb_func_start ov62_02246DD0
ov62_02246DD0: ; 0x02246DD0
	push {r4, lr}
	mov r1, #0x7f
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	bne _02246DE4
	add r0, r2, #1
	str r0, [r4, r1]
	b _02246DF2
_02246DE4:
	bl ov62_022474A8
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202404C
_02246DF2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02246DD0

	thumb_func_start ov62_02246DF8
ov62_02246DF8: ; 0x02246DF8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x7f
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _02246E0E
	cmp r2, #1
	bne _02246E0C
	b _02246F74
_02246E0C:
	b _0224701C
_02246E0E:
	mov r1, #0
	add r2, r1, #0
	bl ov62_02247968
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02246EB0
	ldr r7, _02247078 ; =0x02249974
	add r4, r5, #0
_02246E26:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02246EA2
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl sub_0200D5DC
	ldrb r0, [r4, #0x18]
	sub r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02246E70
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246E70
	ldrb r0, [r4, #0x19]
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	mov r1, #2
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl sub_0200D6A4
_02246E70:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02246EA2
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246EA2
	ldrb r0, [r4, #0x19]
	ldr r1, _0224707C ; =0x02249958
	lsl r2, r0, #2
	ldr r1, [r1, r2]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	mov r1, #2
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl sub_0200D6A4
_02246EA2:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02246E26
_02246EB0:
	mov r7, #0x5a
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02246EB8:
	ldrb r0, [r4, r7]
	cmp r0, #0
	beq _02246EE0
	mov r1, #0x59
	ldr r2, _02247080 ; =0x00000166
	mov r0, #0x57
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0200D5DC
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	mov r0, #0x5a
	lsl r0, r0, #2
	strb r1, [r4, r0]
_02246EE0:
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, #2
	blt _02246EB8
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _02246F68
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246F26
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0x85
	add r4, r5, r0
	lsl r7, r7, #2
_02246F06:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02246F06
_02246F26:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246F5E
	mov r0, #0x1c
	mul r0, r6
	mov r7, #0x87
	add r4, r5, r0
	lsl r7, r7, #2
_02246F3E:
	ldr r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02246F3E
_02246F5E:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_02246F68:
	mov r0, #2
	lsl r0, r0, #8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	b _02247072
_02246F74:
	add r0, r1, #0
	add r0, #0x14
	add r1, #0x18
	ldr r6, [r5, r0]
	ldr r0, [r5, r1]
	cmp r6, r0
	bge _02246FBA
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _02247078 ; =0x02249974
	add r4, r5, r0
_02246F8A:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	bne _02246F9A
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D6A4
	b _02246FAC
_02246F9A:
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02246FAC:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02246F8A
_02246FBA:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02247000
	mov r0, #0x1c
	mul r0, r6
	ldr r7, _0224707C ; =0x02249958
	add r4, r5, r0
_02246FD0:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	bne _02246FE0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D6A4
	b _02246FF2
_02246FE0:
	lsl r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl sub_0200D6E8
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
_02246FF2:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02246FD0
_02247000:
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #6
	bne _02247072
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r5, r0]
	b _02247072
_0224701C:
	bl ov62_02247CE0
	mov r1, #0xa9
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0224703E
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov62_02247518
	add r1, r0, #0
	add r0, r5, #0
	bl ov62_02247998
	b _02247050
_0224703E:
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov62_02247540
	add r1, r0, #0
	add r0, r5, #0
	bl ov62_02247998
_02247050:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02247064
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov62_02247968
_02247064:
	add r0, r5, #0
	bl ov62_02247504
	add r0, r5, #0
	mov r1, #1
	bl ov62_02246D60
_02247072:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247078: .word 0x02249974
_0224707C: .word 0x02249958
_02247080: .word 0x00000166
	thumb_func_end ov62_02246DF8

	thumb_func_start ov62_02247084
ov62_02247084: ; 0x02247084
	push {r3, r4, r5, lr}
	mov r1, #0x7d
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _022470A4 ; =0x02249700
	ldr r1, [r1, r2]
	blx r1
	add r5, r0, #0
	bne _022470A0
	add r0, r4, #0
	bl ov62_02247A70
_022470A0:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022470A4: .word 0x02249700
	thumb_func_end ov62_02247084

	thumb_func_start ov62_022470A8
ov62_022470A8: ; 0x022470A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0x64
	mov r1, #0x66
	bl sub_02023790
	mov r1, #0xb2
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r6, #0
	add r0, r1, #4
	str r6, [r7, r0]
	add r0, r1, #0
	add r0, #8
	sub r1, #0xc4
	str r6, [r7, r0]
	ldr r0, [r7, r1]
	cmp r0, #0
	ble _02247148
	mov r0, #0xb3
	lsl r0, r0, #2
	add r4, r7, #0
	add r5, r7, r0
_022470DC:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _022470F4
	mov r0, #1
	str r0, [r4, #0]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200D364
_022470F4:
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r6, #0
	beq _0224710E
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	str r0, [r5, #0]
	str r1, [r5, #4]
_0224710E:
	ldr r2, [r5, #0]
	ldr r1, [sp, #8]
	ldr r0, [r5, #4]
	add r2, r2, r1
	ldr r1, _0224715C ; =0x00000000
	str r2, [r5, #0]
	adc r0, r1
	str r0, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r2, #1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	bl sub_02023E4C
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _022470DC
_02247148:
	ldr r0, [sp, #4]
	bl sub_020237BC
	add r0, r7, #0
	mov r1, #3
	bl ov62_02246D60
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224715C: .word 0x00000000
	thumb_func_end ov62_022470A8

	thumb_func_start ov62_02247160
ov62_02247160: ; 0x02247160
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224719C
	sub r1, r0, #4
	ldr r1, [r5, r1]
	sub r2, r1, #1
	add r1, r0, #0
	sub r1, #0x80
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x80
	ldr r2, [r5, r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r5, r1
	ldr r3, [r1, #4]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x94
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x98
	str r3, [r5, r1]
	add r0, #0x9c
	str r2, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224719C:
	sub r0, #0x80
	ldr r6, [r5, r0]
	mov r0, #0x1c
	add r4, r6, #0
	mul r4, r0
	mov r0, #0
	str r0, [r5, r4]
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r7, [r0, #4]
	cmp r6, #0
	ble _0224720C
	sub r1, r6, #1
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	add r0, r5, r4
	ldr r3, [r0, #4]
	cmp r7, r3
	beq _022471FC
	mov r1, #0xa7
	lsl r1, r1, #2
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r3, [r5, r0]
	add r1, #8
	str r2, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_022471FC:
	mov r0, #0xa7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r1, r6, #1
	add r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224720C:
	mov r0, #0xb2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #3
	bl ov62_02246D60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_02247160

	thumb_func_start ov62_02247220
ov62_02247220: ; 0x02247220
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	mov r1, #0x8e
	add r4, r0, #0
	lsl r1, r1, #2
	mov r0, #0
	add r1, r4, r1
	add r2, r4, #0
_02247230:
	add r0, r0, #1
	str r1, [r2, #0x10]
	add r1, r1, #4
	add r2, #0x1c
	cmp r0, #0xc
	blt _02247230
	ldr r5, _022472F8 ; =0x02249728
	add r3, sp, #4
	mov r2, #0x30
_02247242:
	ldrh r1, [r5]
	add r5, r5, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _02247242
	cmp r0, #0x18
	bge _022472B0
	add r2, sp, #4
	lsl r1, r0, #3
	add r1, r2, r1
	lsl r2, r0, #2
	mov r7, #0x5b
	ldr r3, _022472FC ; =0x0000023B
	add r2, r4, r2
	mvn r7, r7
_02247262:
	mov r5, #0x5d
	mov r6, #0x59
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r0, r0, #1
	sub r6, r5, r6
	mov r5, #0x8e
	lsl r5, r5, #2
	strb r6, [r2, r5]
	mov r5, #0x5f
	mov r6, #0x5b
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	sub r6, r5, r6
	ldr r5, _02247300 ; =0x0000023A
	strb r6, [r2, r5]
	mov r5, #0x5d
	mov r6, #0x59
	mvn r5, r5
	mvn r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	add r6, r5, r6
	ldr r5, _02247304 ; =0x00000239
	strb r6, [r2, r5]
	mov r5, #0x5f
	mvn r5, r5
	ldrsh r6, [r1, r5]
	ldrsh r5, [r1, r7]
	add r1, #8
	add r5, r6, r5
	strb r5, [r2, r3]
	add r2, r2, #4
	cmp r0, #0x18
	blt _02247262
_022472B0:
	mov r0, #0x29
	lsl r0, r0, #4
	mov r3, #0x98
	strb r3, [r4, r0]
	mov r2, #0x20
	add r1, r0, #2
	strb r2, [r4, r1]
	mov r2, #0xb8
	add r1, r0, #1
	strb r2, [r4, r1]
	mov r1, #0x80
	add r5, r0, #3
	strb r1, [r4, r5]
	add r5, r0, #4
	strb r3, [r4, r5]
	add r3, r0, #6
	strb r1, [r4, r3]
	add r1, r0, #5
	strb r2, [r4, r1]
	add r1, r0, #7
	mov r2, #0xe0
	strb r2, [r4, r1]
	mov r1, #0x66
	sub r0, #0x58
	str r1, [sp]
	ldr r2, _02247308 ; =ov62_0224730C
	add r0, r4, r0
	mov r1, #0x18
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022472F8: .word 0x02249728
_022472FC: .word 0x0000023B
_02247300: .word 0x0000023A
_02247304: .word 0x00000239
_02247308: .word ov62_0224730C
	thumb_func_end ov62_02247220

	thumb_func_start ov62_0224730C
ov62_0224730C: ; 0x0224730C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0x7d
	lsl r2, r2, #2
	add r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #1
	beq _0224731E
	b _0224749C
_0224731E:
	add r0, r2, #0
	add r0, #0xa4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0224732E
	mov r0, #1
	add r2, #0xa4
	str r0, [r4, r2]
_0224732E:
	cmp r1, #0
	beq _02247334
	b _0224749C
_02247334:
	cmp r5, #0xb
	bhi _02247368
	mov r0, #0x1c
	mul r0, r5
	add r2, r4, r0
	ldr r0, [r2, #8]
	cmp r0, #1
	bne _02247352
	mov r0, #0xa7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	b _02247360
_02247352:
	mov r0, #0xa7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r2, #4]
	add r0, r0, #4
	str r1, [r4, r0]
_02247360:
	ldr r0, _022474A0 ; =0x00000563
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_02247368:
	cmp r5, #0x16
	bne _0224737C
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	b _022473AE
_0224737C:
	cmp r5, #0x17
	bne _02247390
	mov r0, #0x6e
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	b _022473AE
_02247390:
	add r0, r5, #0
	sub r0, #0xc
	mov r1, #5
	bl sub_020E2178
	mov r0, #0x6e
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0xc
	mov r1, #5
	bl sub_020E2178
	ldr r1, _022474A4 ; =0x000001BA
	strh r0, [r4, r1]
_022473AE:
	cmp r5, #0xc
	blo _02247480
	cmp r5, #0x15
	bhi _02247480
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224749C
	ldr r0, _022474A0 ; =0x00000563
	bl sub_02005748
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	mov r0, #0x1c
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	sub r0, #0xb
	str r0, [r4, r6]
	add r1, r4, r6
	ldr r0, [r4, r6]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0xc]
	bl sub_0200D364
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov62_02247968
	sub r5, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_022479D4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov62_02247968
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov62_02247968
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov62_02247A20
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_0200D364
	add r0, r4, r6
	ldr r2, [r0, #4]
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r1, r7, #1
	cmp r1, r3
	bne _02247450
	add r1, r0, #0
	mov r2, #1
	add r1, #0x98
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x9c
	str r2, [r4, r1]
	add r0, #0xa0
	str r2, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247450:
	mov r3, #0x1c
	mul r3, r1
	add r3, r4, r3
	ldr r3, [r3, #4]
	cmp r2, r3
	beq _02247472
	add r1, r0, #0
	mov r2, #1
	add r1, #0x98
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x9c
	str r3, [r4, r1]
	mov r1, #0
	add r0, #0xa0
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247472:
	add r2, r0, #0
	mov r3, #2
	add r2, #0x98
	str r3, [r4, r2]
	add r0, #0x9c
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247480:
	cmp r5, #0x16
	ldr r0, _022474A0 ; =0x00000563
	bne _02247492
	bl sub_02005748
	add r0, r4, #0
	bl ov62_02247160
	pop {r3, r4, r5, r6, r7, pc}
_02247492:
	bl sub_02005748
	add r0, r4, #0
	bl ov62_022470A8
_0224749C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022474A0: .word 0x00000563
_022474A4: .word 0x000001BA
	thumb_func_end ov62_0224730C

	thumb_func_start ov62_022474A8
ov62_022474A8: ; 0x022474A8
	push {r4, lr}
	mov r1, #0xa7
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #2
	bgt _022474C6
	cmp r2, #0
	blt _02247500
	beq _02247500
	cmp r2, #1
	beq _022474CA
	cmp r2, #2
	beq _022474F2
	pop {r4, pc}
_022474C6:
	cmp r2, #0xff
	pop {r4, pc}
_022474CA:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov62_02246B70
	add r0, r4, #0
	bl ov62_02247B48
	add r0, r4, #0
	mov r1, #1
	bl ov62_02247B88
	add r0, r4, #0
	mov r1, #2
	bl ov62_02246D60
	mov r0, #0xa7
	mov r1, #0xff
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_022474F2:
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov62_02247998
	add r0, r4, #0
	bl ov62_02247504
_02247500:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_022474A8

	thumb_func_start ov62_02247504
ov62_02247504: ; 0x02247504
	mov r2, #0xa7
	lsl r2, r2, #2
	mov r3, #0
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	add r2, #8
	str r3, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02247504

	thumb_func_start ov62_02247518
ov62_02247518: ; 0x02247518
	push {r3, r4}
	mov r2, #0x81
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	mov r3, #0
	cmp r4, #0
	ble _0224753A
_02247526:
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _02247532
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_02247532:
	add r3, r3, #1
	add r0, #0x1c
	cmp r3, r4
	blt _02247526
_0224753A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov62_02247518

	thumb_func_start ov62_02247540
ov62_02247540: ; 0x02247540
	push {r3, r4, r5, r6}
	mov r2, #0x81
	lsl r2, r2, #2
	ldr r6, [r0, r2]
	mov r5, #0
	add r4, r5, #0
	cmp r6, #0
	ble _0224756E
	mov r2, #1
_02247552:
	ldr r3, [r0, #4]
	cmp r1, r3
	bne _0224755C
	add r5, r2, #0
	b _02247566
_0224755C:
	cmp r5, #1
	bne _02247566
	sub r0, r4, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247566:
	add r4, r4, #1
	add r0, #0x1c
	cmp r4, r6
	blt _02247552
_0224756E:
	sub r0, r6, #1
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov62_02247540

	thumb_func_start ov62_02247574
ov62_02247574: ; 0x02247574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r2, #0x89
	lsl r2, r2, #2
	add r1, r2, #4
	ldr r5, [r0, r1]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r0, r1]
	ldr r6, [r0, r2]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r7, [r0, r1]
	sub r1, r2, #4
	ldr r4, [r0, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x36
	add r2, r7, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x2b
	add r2, r7, #0
	mov r3, #3
	bl sub_0200710C
	str r4, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x28
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x29
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x2a
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02247690 ; =0x000003E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02247690 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02247690 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x55
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02247690 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x56
	bl sub_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247690: .word 0x000003E9
	thumb_func_end ov62_02247574

	thumb_func_start ov62_02247694
ov62_02247694: ; 0x02247694
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _022476BA
	mov r7, #0x81
	add r5, r6, #0
	lsl r7, r7, #2
_022476AA:
	ldr r0, [r5, #0xc]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _022476AA
_022476BA:
	mov r7, #0x57
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022476C2:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #2
	blt _022476C2
	mov r7, #0x65
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022476D8:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #3
	blt _022476D8
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r1, #0xfa
	ldr r0, [r6, r0]
	lsl r1, r1, #2
	bl sub_0200D070
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r1, #0xfa
	ldr r0, [r6, r0]
	lsl r1, r1, #2
	bl sub_0200D080
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r1, #0xfa
	ldr r0, [r6, r0]
	lsl r1, r1, #2
	bl sub_0200D090
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r1, #0xfa
	ldr r0, [r6, r0]
	lsl r1, r1, #2
	bl sub_0200D0A0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 ; =0x000003E9
	bl sub_0200D070
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 ; =0x000003E9
	bl sub_0200D080
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 ; =0x000003E9
	bl sub_0200D090
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 ; =0x000003E9
	bl sub_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247750: .word 0x000003E9
	thumb_func_end ov62_02247694

	thumb_func_start ov62_02247754
ov62_02247754: ; 0x02247754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [sp]
	add r2, r0, #4
	ldr r1, [r1, r0]
	sub r0, #0x20
	str r1, [sp, #8]
	ldr r1, [sp]
	ldr r7, [sp, #0xc]
	ldr r1, [r1, r2]
	add r2, sp, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r1, #0xa
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x1c]
	mov r1, #0xfa
	lsl r1, r1, #2
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	sub r1, r2, #2
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	ldr r1, [sp]
	str r2, [sp, #0x20]
	ldr r0, [r1, r0]
	add r0, r0, #2
	cmp r0, #0
	ble _02247846
	add r4, r1, #0
	mov r6, #0x4c
	add r5, r1, #0
_022477B2:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r0, r0, #1
	cmp r7, r0
	add r2, sp, #0x10
	bne _02247800
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0200CE6C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	lsl r1, r6, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl sub_0200D364
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	ldr r0, [sp, #0xc]
	add r4, #0x1c
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _02247834
_02247800:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0200CE6C
	lsl r1, r6, #0x10
	str r0, [r5, #0xc]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl ov62_02247B3C
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0200D6A4
	ldr r0, [r5, #0xc]
	bl sub_0200D330
	add r5, #0x1c
_02247834:
	mov r0, #0x81
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r7, #1
	add r0, r0, #2
	add r6, #8
	cmp r7, r0
	blt _022477B2
_02247846:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_02247754

	thumb_func_start ov62_0224784C
ov62_0224784C: ; 0x0224784C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r0, r0, #4
	ldr r4, [r5, r0]
	mov r2, #0
	add r0, sp, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _02247964 ; =0x000003E9
	mov r1, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	sub r0, r1, #2
	str r1, [sp, #0x10]
	str r2, [sp, #8]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0xc]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl ov62_02247998
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r2, #0x6e
	lsl r2, r2, #2
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl ov62_022479D4
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	mov r2, #0x75
	lsl r2, r2, #2
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl ov62_022479D4
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov62_02247968
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov62_02247968
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02247964: .word 0x000003E9
	thumb_func_end ov62_0224784C

	thumb_func_start ov62_02247968
ov62_02247968: ; 0x02247968
	push {r3, lr}
	cmp r2, #1
	bne _02247982
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, pc}
_02247982:
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02247968

	thumb_func_start ov62_02247998
ov62_02247998: ; 0x02247998
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	mov r2, #0x62
	ldr r0, [r0, #0xc]
	lsl r2, r2, #2
	str r1, [r4, r2]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r0, #0x65
	lsl r0, r0, #2
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov62_02247998

	thumb_func_start ov62_022479D4
ov62_022479D4: ; 0x022479D4
	push {r4, lr}
	add r1, #0xc
	mov r2, #0x1b
	add r3, r0, #0
	lsl r2, r2, #4
	lsl r1, r1, #2
	ldr r0, [r3, r2]
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0x8a
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0x8b
	ldrb r1, [r3, r1]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0x88
	add r2, #0x89
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	sub r2, #8
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_022479D4

	thumb_func_start ov62_02247A20
ov62_02247A20: ; 0x02247A20
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0x1c
	mul r0, r2
	add r1, #0xc
	mov r2, #0x65
	lsl r1, r1, #2
	add r0, r3, r0
	lsl r2, r2, #2
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0xa6
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0xa7
	ldrb r1, [r3, r1]
	ldr r0, [r0, r2]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0xa4
	add r2, #0xa5
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	sub r2, #8
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end ov62_02247A20

	thumb_func_start ov62_02247A70
ov62_02247A70: ; 0x02247A70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	add r4, r5, #0
	mov r7, #0x65
	mov r6, #1
	add r4, #0x1c
	lsl r7, r7, #2
_02247A9C:
	ldr r0, [r4, r7]
	bl sub_0200D37C
	cmp r0, #3
	bne _02247AF0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02247B32
	mov r0, #0x65
	mov r1, #0x62
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl sub_0200D364
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02247ADA
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov62_02247968
	b _02247AE4
_02247ADA:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_02247968
_02247AE4:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov62_02247968
	b _02247B32
_02247AF0:
	mov r1, #0x62
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _02247B04
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D364
_02247B04:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D37C
	cmp r0, #3
	beq _02247B32
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02247B28
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov62_02247968
	b _02247B32
_02247B28:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_02247968
_02247B32:
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, #3
	blt _02247A9C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02247A70

	thumb_func_start ov62_02247B3C
ov62_02247B3C: ; 0x02247B3C
	mov r2, #0
	cmp r1, #0
	bne _02247B44
	mov r2, #0xb
_02247B44:
	add r0, r2, r0
	bx lr
	thumb_func_end ov62_02247B3C

	thumb_func_start ov62_02247B48
ov62_02247B48: ; 0x02247B48
	push {r4, r5, r6, r7}
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r3, #0
	cmp r1, #0
	ble _02247B82
	mov r6, #0x85
	lsl r6, r6, #2
	add r4, r0, #0
	add r1, r3, #0
	mov r2, #1
	sub r7, r6, #4
_02247B62:
	ldr r5, [r0, r7]
	cmp r3, r5
	blt _02247B72
	ldr r5, [r0, r6]
	cmp r3, r5
	bge _02247B72
	str r2, [r4, #8]
	b _02247B74
_02247B72:
	str r1, [r4, #8]
_02247B74:
	mov r5, #0x81
	lsl r5, r5, #2
	ldr r5, [r0, r5]
	add r3, r3, #1
	add r4, #0x1c
	cmp r3, r5
	blt _02247B62
_02247B82:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02247B48

	thumb_func_start ov62_02247B88
ov62_02247B88: ; 0x02247B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	mov r4, #0
	lsl r2, r0, #1
	ldr r0, [sp]
	str r4, [sp, #8]
	add r2, r0, r2
	add r0, r1, #0
	sub r0, #0x2c
	ldrsh r5, [r2, r0]
	ldr r0, [sp]
	sub r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bgt _02247BB2
	b _02247CDA
_02247BB2:
	ldr r7, [sp]
	add r6, r7, #0
_02247BB6:
	mov r0, #0x21
	ldr r1, [sp]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r4, r0
	blt _02247BE2
	add r2, r1, #0
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r4, r1
	bge _02247BE2
	cmp r4, r0
	bne _02247BDA
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _02247BF4
_02247BDA:
	add r5, #0x20
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _02247BF4
_02247BE2:
	cmp r4, #0
	bne _02247BEE
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _02247BF4
_02247BEE:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_02247BF4:
	add r1, sp, #0xc
	ldr r0, [r7, #0xc]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02247C16
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	bl sub_0200D4C4
	b _02247C32
_02247C16:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r7, #0x14]
	mov r0, #0
	strh r0, [r7, #0x16]
	mov r0, #2
	strb r0, [r7, #0x18]
	mov r0, #0
	strb r0, [r7, #0x19]
_02247C32:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	bne _02247CC8
	ldr r0, [sp, #8]
	cmp r0, #2
	beq _02247CC8
	mov r0, #0x57
	lsl r0, r0, #2
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r1, [sp]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	bne _02247C6E
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _02247C84
_02247C6E:
	cmp r4, r1
	ble _02247C7E
	cmp r4, r0
	bge _02247C7E
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _02247C84
_02247C7E:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_02247C84:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02247C9E
	mov r0, #0x57
	lsl r0, r0, #2
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_0200D4C4
	b _02247CC0
_02247C9E:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x59
	lsl r0, r0, #2
	strh r1, [r6, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r6, r0]
	mov r0, #0x5a
	mov r1, #2
	lsl r0, r0, #2
	strb r1, [r6, r0]
_02247CC0:
	ldr r0, [sp, #8]
	add r6, #0x1c
	add r0, r0, #1
	str r0, [sp, #8]
_02247CC8:
	mov r0, #0x81
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r4, r4, #1
	add r7, #0x1c
	cmp r4, r0
	bge _02247CDA
	b _02247BB6
_02247CDA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov62_02247B88

	thumb_func_start ov62_02247CE0
ov62_02247CE0: ; 0x02247CE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _02247D70
	add r5, r6, #0
_02247CF4:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _02247D10
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	bge _02247D10
	mov r0, #0x10
	str r0, [sp]
	add r7, r0, #0
	b _02247D16
_02247D10:
	mov r0, #4
	str r0, [sp]
	mov r7, #8
_02247D16:
	add r2, sp, #4
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	add r2, #2
	bl sub_0200D550
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [r5, #0x10]
	strb r1, [r0, #2]
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0, #1]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	add r1, r1, r0
	ldr r0, [r5, #0x10]
	cmp r4, #0
	strb r1, [r0, #3]
	bne _02247D62
	ldr r1, [r5, #0x10]
	ldrb r0, [r1, #2]
	sub r0, r0, #4
	strb r0, [r1, #2]
_02247D62:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _02247CF4
_02247D70:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02247CE0

	.rodata


	.global Unk_ov62_02249700
Unk_ov62_02249700: ; 0x02249700
	.incbin "incbin/overlay62_rodata.bin", 0xFD4, 0xFE4 - 0xFD4

	.global Unk_ov62_02249710
Unk_ov62_02249710: ; 0x02249710
	.incbin "incbin/overlay62_rodata.bin", 0xFE4, 0xFFC - 0xFE4

	.global Unk_ov62_02249728
Unk_ov62_02249728: ; 0x02249728
	.incbin "incbin/overlay62_rodata.bin", 0xFFC, 0x60


	.data


	.global Unk_ov62_02249958
Unk_ov62_02249958: ; 0x02249958
	.incbin "incbin/overlay62_data.bin", 0x198, 0x1B4 - 0x198

	.global Unk_ov62_02249974
Unk_ov62_02249974: ; 0x02249974
	.incbin "incbin/overlay62_data.bin", 0x1B4, 0x1C

