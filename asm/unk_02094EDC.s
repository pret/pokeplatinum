	.include "macros/function.inc"
	.include "include/unk_02094EDC.inc"

	

	.text


	thumb_func_start sub_02094EDC
sub_02094EDC: ; 0x02094EDC
	ldr r2, _02094F00 ; =0x00000171
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _02094EF6
	cmp r1, #1
	bne _02094EFA
	add r1, r2, #0
	sub r1, #0x55
	sub r2, #0x4e
	ldrb r1, [r0, r1]
	ldrb r0, [r0, r2]
	cmp r1, r0
	bne _02094EFA
_02094EF6:
	mov r0, #1
	bx lr
_02094EFA:
	mov r0, #0
	bx lr
	nop
_02094F00: .word 0x00000171
	thumb_func_end sub_02094EDC

	thumb_func_start sub_02094F04
sub_02094F04: ; 0x02094F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #4]
	ldr r0, [sp, #0x70]
	mov r6, #0
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x74]
	add r5, r1, #0
	add r4, r3, #0
	str r2, [sp, #8]
	str r6, [sp, #0x20]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	cmp r0, #8
	bhi _02094F4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094F2E: ; jump table
	.short _02094F4A - _02094F2E - 2 ; case 0
	.short _02094F4A - _02094F2E - 2 ; case 1
	.short _02094F4A - _02094F2E - 2 ; case 2
	.short _02094F40 - _02094F2E - 2 ; case 3
	.short _02094F46 - _02094F2E - 2 ; case 4
	.short _02094F40 - _02094F2E - 2 ; case 5
	.short _02094F46 - _02094F2E - 2 ; case 6
	.short _02094F40 - _02094F2E - 2 ; case 7
	.short _02094F46 - _02094F2E - 2 ; case 8
_02094F40:
	mov r0, #1
	str r0, [sp, #0x18]
	b _02094F4A
_02094F46:
	mov r0, #1
	str r0, [sp, #0x1c]
_02094F4A:
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #0x5a
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02006FE8
	str r0, [sp, #0x14]
	mov r0, #0x5a
	mov r1, #0
	bl sub_02006B58
	mov r1, #0x30
	bl _u32_div_f
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_02018184
	add r5, r0, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne _02094F88
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne _02094F88
	mov r0, #1
	str r0, [sp, #0x20]
_02094F88:
	ldr r0, [sp, #0x24]
	mov r2, #0
	cmp r0, #0
	ble _0209503A
	ldr r3, [sp, #0x14]
_02094F92:
	ldrh r7, [r3, #0x20]
	lsl r0, r7, #0x1d
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0x70]
	cmp r0, r1
	bne _02095030
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02094FAE
	lsl r0, r7, #0x14
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _02095030
	b _02094FBA
_02094FAE:
	lsl r0, r7, #0x14
	lsr r0, r0, #0x1e
	cmp r0, #2
	beq _02095030
	cmp r0, #3
	beq _02095030
_02094FBA:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02094FCA
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _02095030
	b _02094FEA
_02094FCA:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	ldrh r0, [r3, #0x20]
	bne _02094FDA
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _02095030
	b _02094FEA
_02094FDA:
	lsl r1, r0, #0x16
	lsr r1, r1, #0x1f
	cmp r1, #1
	beq _02095030
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02095030
_02094FEA:
	cmp r4, #0
	bne _02094FF6
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02095026
_02094FF6:
	cmp r4, #1
	bne _02095002
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _02095026
_02095002:
	cmp r4, #2
	bne _0209500E
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _02095026
_0209500E:
	cmp r4, #3
	bne _0209501A
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _02095026
_0209501A:
	cmp r4, #4
	bne _02095030
	ldrh r0, [r3, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02095030
_02095026:
	add r1, r6, #1
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	strb r2, [r5, r0]
_02095030:
	ldr r0, [sp, #0x24]
	add r2, r2, #1
	add r3, #0x30
	cmp r2, r0
	blt _02094F92
_0209503A:
	mov r0, #0xff
	strb r0, [r5, r6]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02095046
	b _0209516E
_02095046:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _02095050
	bl sub_02022974
_02095050:
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r6, #0
	ble _0209507A
	mov r2, #0x30
_0209505A:
	ldrb r1, [r5, r0]
	add r3, r1, #0
	ldr r1, [sp, #0x14]
	mul r3, r2
	add r1, r1, r3
	ldrh r1, [r1, #0x20]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	cmp r1, #3
	bne _02095074
	ldr r1, [sp, #0x10]
	add r1, r1, #1
	str r1, [sp, #0x10]
_02095074:
	add r0, r0, #1
	cmp r0, r6
	blt _0209505A
_0209507A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _020950C2
	ldr r0, [sp, #4]
	bl sub_02094E98
	ldr r1, [sp, #0x10]
	bl _s32_div_f
	mov r3, #0
	cmp r6, #0
	ble _020950C2
	mov r0, #0x30
_02095094:
	ldrb r4, [r5, r3]
	add r2, r4, #0
	ldr r4, [sp, #0x14]
	mul r2, r0
	add r2, r4, r2
	ldrh r4, [r2, #0x20]
	lsl r4, r4, #0x14
	lsr r4, r4, #0x1e
	cmp r4, #3
	bne _020950BC
	cmp r1, #0
	bne _020950BA
	add r4, sp, #0x28
	mov r3, #6
_020950B0:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _020950B0
	b _020950C2
_020950BA:
	sub r1, r1, #1
_020950BC:
	add r3, r3, #1
	cmp r3, r6
	blt _02095094
_020950C2:
	ldr r0, [sp, #8]
	mov r1, #4
	sub r4, r1, r0
	add r0, r4, #0
	str r4, [sp, #0xc]
	cmp r0, #4
	bge _02095136
_020950D0:
	ldr r0, [sp, #4]
	bl sub_02094E98
	add r1, r6, #0
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldrb r3, [r5, r2]
	mov r0, #0x30
	add r1, r3, #0
	ldr r3, [sp, #0x14]
	mul r1, r0
	add r7, r3, r1
	ldrh r1, [r7, #0x20]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1e
	cmp r1, #3
	bne _020950FA
	sub r4, r4, #1
	b _02095130
_020950FA:
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r3, r0, r1
	mov r0, #6
	add r3, #0x10
	mov ip, r0
_02095108:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _02095108
	ldrb r1, [r5, r2]
	add r0, r5, r2
	cmp r1, #0xff
	beq _0209512A
_0209511C:
	ldrb r1, [r0, #1]
	add r2, r2, #1
	strb r1, [r0]
	ldrb r1, [r5, r2]
	add r0, r5, r2
	cmp r1, #0xff
	bne _0209511C
_0209512A:
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02095130:
	add r4, r4, #1
	cmp r4, #4
	blt _020950D0
_02095136:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0209519E
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_02094E98
	ldr r1, [sp, #8]
	bl _s32_div_f
	add r0, r4, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r1, r2, #0
	mov r0, #0x30
	mul r1, r0
	ldr r0, [sp, #4]
	add r4, sp, #0x28
	add r3, r0, r1
	add r3, #0x10
	mov r2, #6
_02095164:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02095164
	b _0209519E
_0209516E:
	cmp r6, #4
	bhs _02095176
	bl sub_02022974
_02095176:
	mov r6, #0
	mov r7, #0x30
_0209517A:
	ldrb r0, [r5, r6]
	ldr r3, [sp, #4]
	mov r2, #6
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mul r1, r7
	add r4, r0, r1
	add r3, #0x10
_0209518A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0209518A
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, #0x30
	str r0, [sp, #4]
	cmp r6, #4
	blt _0209517A
_0209519E:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02094F04

	thumb_func_start sub_020951B0
sub_020951B0: ; 0x020951B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	mov r0, #1
	add r3, r1, #0
	str r0, [sp]
	mov r0, #0x5a
	mov r1, #2
	mov r2, #0
	bl sub_02006FE8
	str r0, [sp, #0x14]
	ldr r1, _02095330 ; =0x00000121
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	cmp r0, #4
	beq _020951DA
	cmp r0, #6
	beq _020951DA
	cmp r0, #8
	bne _020951E0
_020951DA:
	mov r0, #0
	str r0, [sp, #0xc]
	b _020951E8
_020951E0:
	ldr r0, [sp, #8]
	add r1, r1, #6
	ldrb r0, [r0, r1]
	str r0, [sp, #0xc]
_020951E8:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	blt _020951F0
	b _02095326
_020951F0:
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #8]
	add r7, r0, r1
	ldr r0, [sp, #0xc]
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r6, r0, r1
_02095200:
	ldr r1, _02095334 ; =0x00000122
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	cmp r0, #0xb
	bhi _0209528E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095216: ; jump table
	.short _0209522E - _02095216 - 2 ; case 0
	.short _02095236 - _02095216 - 2 ; case 1
	.short _0209523E - _02095216 - 2 ; case 2
	.short _02095246 - _02095216 - 2 ; case 3
	.short _0209524E - _02095216 - 2 ; case 4
	.short _02095256 - _02095216 - 2 ; case 5
	.short _0209525E - _02095216 - 2 ; case 6
	.short _02095266 - _02095216 - 2 ; case 7
	.short _0209526E - _02095216 - 2 ; case 8
	.short _02095276 - _02095216 - 2 ; case 9
	.short _0209527E - _02095216 - 2 ; case 10
	.short _02095286 - _02095216 - 2 ; case 11
_0209522E:
	add r0, r7, #0
	add r0, #0x32
	ldrb r2, [r0]
	b _02095294
_02095236:
	add r0, r7, #0
	add r0, #0x33
	ldrb r2, [r0]
	b _02095294
_0209523E:
	add r0, r7, #0
	add r0, #0x34
	ldrb r2, [r0]
	b _02095294
_02095246:
	add r0, r7, #0
	add r0, #0x35
	ldrb r2, [r0]
	b _02095294
_0209524E:
	add r0, r7, #0
	add r0, #0x36
	ldrb r2, [r0]
	b _02095294
_02095256:
	add r0, r7, #0
	add r0, #0x37
	ldrb r2, [r0]
	b _02095294
_0209525E:
	add r0, r7, #0
	add r0, #0x38
	ldrb r2, [r0]
	b _02095294
_02095266:
	add r0, r7, #0
	add r0, #0x39
	ldrb r2, [r0]
	b _02095294
_0209526E:
	add r0, r7, #0
	add r0, #0x3a
	ldrb r2, [r0]
	b _02095294
_02095276:
	add r0, r7, #0
	add r0, #0x3b
	ldrb r2, [r0]
	b _02095294
_0209527E:
	add r0, r7, #0
	add r0, #0x3c
	ldrb r2, [r0]
	b _02095294
_02095286:
	add r0, r7, #0
	add r0, #0x3d
	ldrb r2, [r0]
	b _02095294
_0209528E:
	bl sub_02022974
	mov r2, #0
_02095294:
	mov r0, #0x54
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	add r0, r6, #0
	add r0, #0xf8
	ldr r2, [sp, #0x10]
	mov r3, #0x51
	ldrsb r2, [r2, r3]
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	bl sub_0202A3B0
	ldr r0, [sp, #0x10]
	mov r5, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	ble _020952F2
	ldr r4, [sp, #0x10]
_020952CA:
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #3
	ldrsb r0, [r4, r0]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xf8
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r0, #0]
	bl sub_0202A3EC
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, #0x50
	ldrb r0, [r0]
	add r4, r4, #4
	cmp r5, r0
	blt _020952CA
_020952F2:
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x52
	add r0, #0xf8
	str r1, [sp, #0x10]
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl sub_0202A35C
	mov r2, #0x12
	add r0, r6, #0
	add r0, #0xf8
	ldr r1, [sp, #8]
	lsl r2, r2, #4
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0]
	bl sub_0202A378
	ldr r0, [sp, #0xc]
	add r7, #0x30
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _02095326
	b _02095200
_02095326:
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095330: .word 0x00000121
_02095334: .word 0x00000122
	thumb_func_end sub_020951B0

	thumb_func_start sub_02095338
sub_02095338: ; 0x02095338
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x12
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02095344:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	add r0, r5, #0
	add r0, #0xf8
	mov r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	mvn r2, r2
	bl sub_0202A3B0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0202A35C
	add r0, r5, #0
	add r0, #0xf8
	ldrb r1, [r6, r7]
	ldr r0, [r0, #0]
	bl sub_0202A378
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02095344
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02095338

	thumb_func_start sub_02095380
sub_02095380: ; 0x02095380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	add r6, r1, #0
	ldrh r1, [r7, #0x20]
	str r2, [sp, #0x10]
	ldrh r0, [r7, #0x14]
	lsl r1, r1, #0x12
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02074128
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02095480 ; =0x0F0F0F0F
	mov r2, #0xa
	str r0, [sp, #0xc]
	ldrh r1, [r7, #0x14]
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02073D80
	mov r4, #0
	add r5, r7, #0
_020953BA:
	ldrh r1, [r5, #0xc]
	add r0, sp, #0x18
	add r2, sp, #0x1c
	strh r1, [r0, #6]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074B30
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _020953BA
	ldr r3, [sp, #0x10]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcd
	bl sub_0200B144
	ldrh r1, [r7, #0x16]
	add r4, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldrh r1, [r7, #0x18]
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x77
	add r2, r5, #0
	bl sub_02074B30
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x91
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add r2, sp, #0x1c
	ldrb r1, [r7, #0x1a]
	add r0, sp, #0x18
	add r2, #1
	strb r1, [r0, #5]
	ldrb r1, [r7, #0x1b]
	strb r1, [r0, #4]
	ldrb r1, [r7, #0x1c]
	strb r1, [r0, #3]
	ldrb r1, [r7, #0x1d]
	strb r1, [r0, #2]
	ldrb r1, [r7, #0x1e]
	strb r1, [r0, #1]
	ldrb r1, [r7, #0x1f]
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0x13
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x14
	add r2, sp, #0x1c
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x15
	add r2, #3
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x16
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x17
	add r2, #1
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0x18
	add r2, sp, #0x18
	bl sub_02074B30
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02095480: .word 0x0F0F0F0F
	thumb_func_end sub_02095380

	thumb_func_start sub_02095484
sub_02095484: ; 0x02095484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	add r5, r2, #0
	lsl r2, r6, #0x18
	str r0, [sp, #0x10]
	add r7, r1, #0
	add r0, sp, #0x14
	add r1, r5, #0
	lsr r2, r2, #0x18
	ldr r4, [sp, #0x38]
	bl sub_02075EF4
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_020765AC
	add r5, r0, #0
	cmp r4, #0
	beq _020954D0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020954B8
	bl sub_02022974
_020954B8:
	add r1, sp, #0x14
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x3c]
	ldr r3, [r4, #0]
	bl sub_02013610
	add r0, sp, #0x14
	ldrh r1, [r0, #4]
	str r1, [r4, #8]
	ldrh r0, [r0]
	str r0, [r4, #4]
_020954D0:
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x44]
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x40]
	add r1, sp, #0x14
	add r3, r3, r5
	bl sub_02007C34
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02095484

	thumb_func_start sub_020954F0
sub_020954F0: ; 0x020954F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x38]
	add r7, r3, #0
	mov r5, #0
	str r2, [sp, #0xc]
	str r0, [sp, #0x38]
	mov r1, #1
	ldr r3, [sp, #8]
	mov r0, #0x5a
	add r2, r5, #0
	add r4, r5, #0
	str r1, [sp]
	bl sub_02006FE8
	str r0, [sp, #0x14]
	mov r0, #0x5a
	mov r1, #1
	bl sub_02006B58
	lsr r0, r0, #3
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #8]
	add r1, r1, #1
	bl sub_02018184
	ldr r1, [sp, #0x18]
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r1, #1
	bl sub_02018184
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	cmp r0, #0
	ble _0209562A
	ldr r3, [sp, #0x14]
_02095542:
	ldrh r0, [r3, #4]
	mov ip, r0
	lsl r0, r0, #0x14
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x38]
	cmp r0, r1
	bne _02095620
	cmp r7, #0
	bne _0209557A
	mov r0, ip
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _0209557A
	cmp r0, #1
	bls _0209556E
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_0209556E:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_0209557A:
	cmp r7, #1
	bne _020955A4
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _020955A4
	cmp r0, #1
	bls _02095598
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_02095598:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955A4:
	cmp r7, #2
	bne _020955CE
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	beq _020955CE
	cmp r0, #1
	bls _020955C2
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_020955C2:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955CE:
	cmp r7, #3
	bne _020955F8
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	beq _020955F8
	cmp r0, #1
	bls _020955EC
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_020955EC:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
	b _02095620
_020955F8:
	cmp r7, #4
	bne _02095620
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	beq _02095620
	cmp r0, #1
	bls _02095616
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x10]
	strb r2, [r0, r1]
	b _02095620
_02095616:
	add r1, r5, #1
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	strb r2, [r6, r0]
_02095620:
	ldr r0, [sp, #0x18]
	add r2, r2, #1
	add r3, #8
	cmp r2, r0
	blt _02095542
_0209562A:
	mov r1, #0xff
	ldr r0, [sp, #0x10]
	strb r1, [r6, r5]
	strb r1, [r0, r4]
	cmp r5, #2
	bhs _0209563A
	bl sub_02022974
_0209563A:
	ldr r2, [sp, #4]
	mov r3, #0
_0209563E:
	ldrb r0, [r6, r3]
	ldr r5, [sp, #0x14]
	add r3, r3, #1
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	ldrh r5, [r5, r1]
	add r0, r0, r1
	add r1, r2, #0
	add r1, #0xd0
	strh r5, [r1]
	add r1, r2, #0
	ldrh r5, [r0, #2]
	add r1, #0xd2
	strh r5, [r1]
	add r1, r2, #0
	ldrh r5, [r0, #4]
	add r1, #0xd4
	strh r5, [r1]
	ldrh r1, [r0, #6]
	add r0, r2, #0
	add r0, #0xd6
	add r2, #8
	strh r1, [r0]
	cmp r3, #2
	blt _0209563E
	cmp r4, #1
	bhs _02095678
	bl sub_02022974
_02095678:
	ldr r0, [sp, #4]
	bl sub_02094E98
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x14]
	lsl r2, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	ldrh r2, [r1, r2]
	ldr r1, [sp, #4]
	add r1, #0xe0
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #2]
	add r1, #0xe2
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #4]
	add r1, #0xe4
	strh r2, [r1]
	ldrh r1, [r0, #6]
	ldr r0, [sp, #4]
	ldr r2, _02095730 ; =0x0000011E
	add r0, #0xe6
	strh r1, [r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r2, r0, #0
	add r0, r1, #0
	lsl r1, r0, #3
	add r2, #0xd0
	ldrh r4, [r2, r1]
	add r0, sp, #0x1c
	add r3, r2, r1
	strh r4, [r0]
	ldrh r4, [r3, #2]
	strh r4, [r0, #2]
	ldrh r4, [r3, #4]
	strh r4, [r0, #4]
	ldrh r4, [r3, #6]
	strh r4, [r0, #6]
	ldr r4, [sp, #4]
	add r4, #0xe0
	ldrh r4, [r4]
	strh r4, [r2, r1]
	ldr r1, [sp, #4]
	add r1, #0xe2
	ldrh r1, [r1]
	strh r1, [r3, #2]
	ldr r1, [sp, #4]
	add r1, #0xe4
	ldrh r1, [r1]
	strh r1, [r3, #4]
	ldr r1, [sp, #4]
	add r1, #0xe6
	ldrh r1, [r1]
	strh r1, [r3, #6]
	ldr r1, [sp, #4]
	ldrh r2, [r0]
	add r1, #0xe0
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #2]
	add r1, #0xe2
	strh r2, [r1]
	ldr r1, [sp, #4]
	ldrh r2, [r0, #4]
	add r1, #0xe4
	strh r2, [r1]
	ldrh r1, [r0, #6]
	ldr r0, [sp, #4]
	add r0, #0xe6
	str r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02095730: .word 0x0000011E
	thumb_func_end sub_020954F0

	thumb_func_start sub_02095734
sub_02095734: ; 0x02095734
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _02095740
	bl sub_02022974
_02095740:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0209574C ; =0x020F5690
	ldrsb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0209574C: .word 0x020F5690
	thumb_func_end sub_02095734

	thumb_func_start sub_02095750
sub_02095750: ; 0x02095750
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x18
	blo _02095760
	bl sub_02022974
_02095760:
	mov r0, #0x1a
	add r1, r5, #0
	mul r1, r0
	ldr r0, _02095774 ; =0x020F568C
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	ldr r0, _02095778 ; =0x020F568E
	ldrh r0, [r0, r1]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095774: .word 0x020F568C
_02095778: .word 0x020F568E
	thumb_func_end sub_02095750

	thumb_func_start sub_0209577C
sub_0209577C: ; 0x0209577C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _02095788
	bl sub_02022974
_02095788:
	add r4, #0x2d
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209577C

	thumb_func_start sub_02095790
sub_02095790: ; 0x02095790
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	cmp r4, #0x18
	blo _020957A2
	bl sub_02022974
_020957A2:
	cmp r7, #4
	bhi _020957BC
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020957B2: ; jump table
	.short _020957BC - _020957B2 - 2 ; case 0
	.short _020957D0 - _020957B2 - 2 ; case 1
	.short _020957E4 - _020957B2 - 2 ; case 2
	.short _020957F8 - _020957B2 - 2 ; case 3
	.short _0209580C - _020957B2 - 2 ; case 4
_020957BC:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095820 ; =0x020F5692
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095824 ; =0x020F5694
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957D0:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095828 ; =0x020F5696
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _0209582C ; =0x020F5698
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957E4:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095830 ; =0x020F569A
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095834 ; =0x020F569C
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_020957F8:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095838 ; =0x020F569E
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _0209583C ; =0x020F56A0
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0209580C:
	mov r0, #0x1a
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02095840 ; =0x020F56A2
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	ldr r0, _02095844 ; =0x020F56A4
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095820: .word 0x020F5692
_02095824: .word 0x020F5694
_02095828: .word 0x020F5696
_0209582C: .word 0x020F5698
_02095830: .word 0x020F569A
_02095834: .word 0x020F569C
_02095838: .word 0x020F569E
_0209583C: .word 0x020F56A0
_02095840: .word 0x020F56A2
_02095844: .word 0x020F56A4
	thumb_func_end sub_02095790

	thumb_func_start sub_02095848
sub_02095848: ; 0x02095848
	cmp r2, #1
	bne _02095850
	mov r0, #0x33
	bx lr
_02095850:
	cmp r1, #3
	beq _0209585C
	cmp r1, #5
	beq _0209585C
	cmp r1, #7
	bne _02095860
_0209585C:
	mov r0, #0x32
	bx lr
_02095860:
	cmp r0, #3
	bhi _02095884
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095870: ; jump table
	.short _02095878 - _02095870 - 2 ; case 0
	.short _0209587C - _02095870 - 2 ; case 1
	.short _02095880 - _02095870 - 2 ; case 2
	.short _02095884 - _02095870 - 2 ; case 3
_02095878:
	mov r0, #0x2e
	bx lr
_0209587C:
	mov r0, #0x2f
	bx lr
_02095880:
	mov r0, #0x30
	bx lr
_02095884:
	mov r0, #0x31
	bx lr
	thumb_func_end sub_02095848

	thumb_func_start sub_02095888
sub_02095888: ; 0x02095888
	cmp r0, #4
	bhi _020958B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095898: ; jump table
	.short _020958A2 - _02095898 - 2 ; case 0
	.short _020958A6 - _02095898 - 2 ; case 1
	.short _020958AA - _02095898 - 2 ; case 2
	.short _020958AE - _02095898 - 2 ; case 3
	.short _020958B2 - _02095898 - 2 ; case 4
_020958A2:
	mov r0, #0x2e
	bx lr
_020958A6:
	mov r0, #0x2f
	bx lr
_020958AA:
	mov r0, #0x30
	bx lr
_020958AE:
	mov r0, #0x31
	bx lr
_020958B2:
	mov r0, #0x33
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095888

	thumb_func_start sub_020958B8
sub_020958B8: ; 0x020958B8
	ldr r3, _020958C0 ; =sub_020958C4
	mov r1, #2
	bx r3
	nop
_020958C0: .word sub_020958C4
	thumb_func_end sub_020958B8

	thumb_func_start sub_020958C4
sub_020958C4: ; 0x020958C4
	cmp r1, #5
	bne _020958CC
	mov r0, #0x34
	bx lr
_020958CC:
	cmp r0, #4
	bhi _020958F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020958DC: ; jump table
	.short _020958E6 - _020958DC - 2 ; case 0
	.short _020958EA - _020958DC - 2 ; case 1
	.short _020958EE - _020958DC - 2 ; case 2
	.short _020958F2 - _020958DC - 2 ; case 3
	.short _020958F6 - _020958DC - 2 ; case 4
_020958E6:
	mov r0, #0x29
	bx lr
_020958EA:
	mov r0, #0x2a
	bx lr
_020958EE:
	mov r0, #0x2b
	bx lr
_020958F2:
	mov r0, #0x2c
	bx lr
_020958F6:
	mov r0, #0x2d
	bx lr
	; .align 2, 0
	thumb_func_end sub_020958C4

	thumb_func_start sub_020958FC
sub_020958FC: ; 0x020958FC
	mov r1, #3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020958FC

	thumb_func_start sub_02095904
sub_02095904: ; 0x02095904
	mov r1, #3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095904

	thumb_func_start sub_0209590C
sub_0209590C: ; 0x0209590C
	ldr r1, _02095924 ; =0x00000121
	ldrb r0, [r0, r1]
	cmp r0, #3
	beq _0209591C
	cmp r0, #5
	beq _0209591C
	cmp r0, #7
	bne _02095920
_0209591C:
	mov r0, #1
	bx lr
_02095920:
	mov r0, #0
	bx lr
	; .align 2, 0
_02095924: .word 0x00000121
	thumb_func_end sub_0209590C

	thumb_func_start sub_02095928
sub_02095928: ; 0x02095928
	push {r4, r5}
	sub sp, #0x50
	ldr r5, _02095988 ; =0x020F563C
	add r4, sp, #0
	mov r3, #0x28
_02095932:
	ldrh r2, [r5]
	add r5, r5, #2
	strh r2, [r4]
	add r4, r4, #2
	sub r3, r3, #1
	bne _02095932
	mov r3, #0xc
	mul r3, r1
	add r1, r0, r3
	mov r3, #0x4a
	lsl r3, r3, #2
	add r4, r3, #0
	add r4, #0x49
	ldrb r4, [r0, r4]
	mov r2, #0
	ldrsh r1, [r1, r3]
	cmp r4, #1
	bne _0209595A
	add r4, sp, #0x40
	b _02095964
_0209595A:
	sub r3, #8
	ldrb r0, [r0, r3]
	add r4, sp, #0
	lsl r0, r0, #4
	add r4, r4, r0
_02095964:
	mov r3, #0
_02095966:
	ldrh r0, [r4]
	cmp r1, r0
	bge _02095974
	add sp, #0x50
	add r0, r2, #0
	pop {r4, r5}
	bx lr
_02095974:
	add r3, r3, #1
	add r2, r2, #1
	add r4, r4, #2
	cmp r3, #8
	blt _02095966
	add r0, r2, #0
	add sp, #0x50
	pop {r4, r5}
	bx lr
	nop
_02095988: .word 0x020F563C
	thumb_func_end sub_02095928

	thumb_func_start sub_0209598C
sub_0209598C: ; 0x0209598C
	push {r4, r5}
	sub sp, #0x10
	ldr r5, _020959EC ; =0x020F562C
	add r4, sp, #0
	mov r3, #0xf
_02095996:
	ldrb r2, [r5]
	add r5, r5, #1
	strb r2, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _02095996
	mov r2, #0xc
	mul r2, r1
	ldr r3, _020959F0 ; =0x0000012A
	add r1, r0, r2
	ldrsh r1, [r1, r3]
	cmp r1, #0
	bne _020959B8
	add sp, #0x10
	mov r0, #0
	pop {r4, r5}
	bx lr
_020959B8:
	add r2, r3, #0
	add r2, #0x47
	ldrb r2, [r0, r2]
	cmp r2, #1
	bne _020959C6
	add r4, sp, #0xc
	b _020959D2
_020959C6:
	sub r3, #0xa
	ldrb r2, [r0, r3]
	add r4, sp, #0
	lsl r0, r2, #1
	add r0, r2, r0
	add r4, r4, r0
_020959D2:
	mov r0, #1
	mov r3, #0
_020959D6:
	ldrb r2, [r4, r3]
	cmp r1, r2
	ble _020959E4
	add r3, r3, #1
	add r0, r0, #1
	cmp r3, #3
	blt _020959D6
_020959E4:
	add sp, #0x10
	pop {r4, r5}
	bx lr
	nop
_020959EC: .word 0x020F562C
_020959F0: .word 0x0000012A
	thumb_func_end sub_0209598C

	thumb_func_start sub_020959F4
sub_020959F4: ; 0x020959F4
	push {r3, lr}
	cmp r0, #0
	bne _02095A0E
	mov r0, #1
	bl sub_02002AC8
	mov r0, #3
	bl sub_02002AE4
	mov r0, #1
	bl sub_02002B20
	pop {r3, pc}
_02095A0E:
	mov r0, #1
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020959F4

	thumb_func_start sub_02095A24
sub_02095A24: ; 0x02095A24
	push {r3, lr}
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095A24

	thumb_func_start sub_02095A3C
sub_02095A3C: ; 0x02095A3C
	push {r3, lr}
	cmp r1, #4
	bhi _02095A6C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02095A4E: ; jump table
	.short _02095A58 - _02095A4E - 2 ; case 0
	.short _02095A5C - _02095A4E - 2 ; case 1
	.short _02095A60 - _02095A4E - 2 ; case 2
	.short _02095A64 - _02095A4E - 2 ; case 3
	.short _02095A68 - _02095A4E - 2 ; case 4
_02095A58:
	add r0, #0x7b
	pop {r3, pc}
_02095A5C:
	add r0, #0x7f
	pop {r3, pc}
_02095A60:
	add r0, #0x83
	pop {r3, pc}
_02095A64:
	add r0, #0x87
	pop {r3, pc}
_02095A68:
	add r0, #0x8b
	pop {r3, pc}
_02095A6C:
	bl sub_02022974
	mov r0, #0x7b
	pop {r3, pc}
	thumb_func_end sub_02095A3C

	thumb_func_start sub_02095A74
sub_02095A74: ; 0x02095A74
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	cmp r5, #3
	beq _02095A84
	cmp r1, #1
	bne _02095A94
_02095A84:
	bl sub_0201D2E8
	mov r1, #0xc
	bl _s32_div_f
	add sp, #0xc
	add r0, r1, #0
	pop {r4, r5, pc}
_02095A94:
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #3
	strb r1, [r0, #1]
	mov r1, #4
	add r4, r4, #3
	strb r1, [r0, #2]
	cmp r5, #1
	blt _02095AC6
	mov r0, #0
	add r2, sp, #0
	strb r0, [r2, r4]
	mov r1, #1
	add r0, r4, #1
	strb r1, [r2, r0]
	add r1, r4, #2
	mov r0, #5
	add r4, r4, #3
	strb r0, [r2, r1]
_02095AC6:
	cmp r5, #2
	blt _02095ADE
	mov r0, #6
	add r2, sp, #0
	strb r0, [r2, r4]
	mov r1, #7
	add r0, r4, #1
	strb r1, [r2, r0]
	add r1, r4, #2
	mov r0, #8
	add r4, r4, #3
	strb r0, [r2, r1]
_02095ADE:
	bl sub_0201D2E8
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02095A74

	.rodata


	.global Unk_020F562C
Unk_020F562C: ; 0x020F562C
	.incbin "incbin/arm9_rodata.bin", 0x109EC, 0x109FC - 0x109EC

	.global Unk_020F563C
Unk_020F563C: ; 0x020F563C
	.incbin "incbin/arm9_rodata.bin", 0x109FC, 0x10A4C - 0x109FC

	.global Unk_020F568C
Unk_020F568C: ; 0x020F568C
	.incbin "incbin/arm9_rodata.bin", 0x10A4C, 0x270

