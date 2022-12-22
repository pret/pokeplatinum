	.include "macros/function.inc"
	.include "include/ov70_02266E9C.inc"

	

	.text


	thumb_func_start ov70_02266E9C
ov70_02266E9C: ; 0x02266E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r7, #0
	bl ov66_0222EE30
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl ov66_0222EE3C
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov66_0222EE68
	cmp r0, #0
	beq _02266EF4
	cmp r4, #0
	beq _02266EF4
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266EF4
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02266EF4:
	cmp r4, #0
	beq _02266F16
	add r0, r7, #0
	bl ov66_0222E3BC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02266F12
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222E374
	str r0, [sp, #0x14]
	b _02266F16
_02266F12:
	mov r0, #0
	str r0, [sp, #0x14]
_02266F16:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266F3E
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266F3E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02266F3E
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02266F3E:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x26
	bls _02266F4C
	bl _02267A2E
_02266F4C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02266F58: ; jump table
	.short _02266FA6 - _02266F58 - 2 ; case 0
	.short _0226706C - _02266F58 - 2 ; case 1
	.short _02267090 - _02266F58 - 2 ; case 2
	.short _022670D8 - _02266F58 - 2 ; case 3
	.short _02267116 - _02266F58 - 2 ; case 4
	.short _02267146 - _02266F58 - 2 ; case 5
	.short _022671B8 - _02266F58 - 2 ; case 6
	.short _022671E6 - _02266F58 - 2 ; case 7
	.short _02267216 - _02266F58 - 2 ; case 8
	.short _0226724E - _02266F58 - 2 ; case 9
	.short _0226727C - _02266F58 - 2 ; case 10
	.short _022672AA - _02266F58 - 2 ; case 11
	.short _022672DA - _02266F58 - 2 ; case 12
	.short _02267356 - _02266F58 - 2 ; case 13
	.short _02267414 - _02266F58 - 2 ; case 14
	.short _02267444 - _02266F58 - 2 ; case 15
	.short _022674C4 - _02266F58 - 2 ; case 16
	.short _02267510 - _02266F58 - 2 ; case 17
	.short _02267520 - _02266F58 - 2 ; case 18
	.short _0226758E - _02266F58 - 2 ; case 19
	.short _022675A0 - _02266F58 - 2 ; case 20
	.short _022675E0 - _02266F58 - 2 ; case 21
	.short _02267622 - _02266F58 - 2 ; case 22
	.short _02267654 - _02266F58 - 2 ; case 23
	.short _02267682 - _02266F58 - 2 ; case 24
	.short _022676DA - _02266F58 - 2 ; case 25
	.short _02267720 - _02266F58 - 2 ; case 26
	.short _02267768 - _02266F58 - 2 ; case 27
	.short _022677AE - _02266F58 - 2 ; case 28
	.short _0226780C - _02266F58 - 2 ; case 29
	.short _02267874 - _02266F58 - 2 ; case 30
	.short _022678A2 - _02266F58 - 2 ; case 31
	.short _022678D0 - _02266F58 - 2 ; case 32
	.short _02267912 - _02266F58 - 2 ; case 33
	.short _02267944 - _02266F58 - 2 ; case 34
	.short _0226796C - _02266F58 - 2 ; case 35
	.short _022679A0 - _02266F58 - 2 ; case 36
	.short _022679AA - _02266F58 - 2 ; case 37
	.short _022679B6 - _02266F58 - 2 ; case 38
_02266FA6:
	add r0, r6, #0
	mov r1, #0x50
	bl ov70_02262E3C
	add r4, r0, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x38
	str r1, [r4, #0x48]
	bl ov70_02269114
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x28]
	bl ov70_0225CCAC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl ov70_0225CE40
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _02266FF2
	mov r0, #0
	strh r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0x26
	bl ov70_02262E88
	bl _02267A2E
_02266FF2:
	mov r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	str r0, [sp, #0x38]
	add r0, r7, #0
	bl ov66_0222EC60
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [r4, #0x10]
	bl ov70_0225D030
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	bl ov70_0225D060
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x34]
	mov r2, #0
	bl ov70_02262EEC
	ldr r0, _02267390 ; =0x000005E4
	bl sub_02005748
	add r0, r7, #0
	mov r1, #9
	bl ov66_0222E3E4
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _02267060
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	bl _02267A2E
_02267060:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_0226706C:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EC70
	cmp r0, #1
	bne _02267084
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	bl _02267A2E
_02267084:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_02267090:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022670CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022670A2: ; jump table
	.short _022670C0 - _022670A2 - 2 ; case 0
	.short _02267A2E - _022670A2 - 2 ; case 1
	.short _022670AC - _022670A2 - 2 ; case 2
	.short _022670CC - _022670A2 - 2 ; case 3
	.short _022670CC - _022670A2 - 2 ; case 4
_022670AC:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EEE4
	add r0, r6, #0
	mov r1, #3
	bl ov70_02262E88
	bl _02267A2E
_022670C0:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_022670CC:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	bl _02267A2E
_022670D8:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EEF4
	add r0, r7, #0
	bl ov66_0222F020
	add r0, r7, #0
	mov r1, #7
	bl ov66_0222F040
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #4
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267116:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #0
	bl ov66_0222ECD4
	bl _02267A2E
_02267146:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022671A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267158: ; jump table
	.short _022671A6 - _02267158 - 2 ; case 0
	.short _022671A6 - _02267158 - 2 ; case 1
	.short _02267162 - _02267158 - 2 ; case 2
	.short _0226718A - _02267158 - 2 ; case 3
	.short _022671A6 - _02267158 - 2 ; case 4
_02267162:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	bl ov66_0222EE24
	cmp r0, #0
	beq _0226717E
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	bl _02267A2E
_0226717E:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E88
	bl _02267A2E
_0226718A:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _0226719A
	add r0, r5, #0
	bl ov70_0225DFBC
_0226719A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	bl _02267A2E
_022671A6:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	bl _02267A2E
_022671B8:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _022671DA
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_022671DA:
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	bl _02267A2E
_022671E6:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x28
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267216:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	add r0, r5, #0
	bl ov70_02268AF8
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226724E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2e
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226727C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x36
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022672AA:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _02267394 ; =0x00000203
	add r0, #0x14
	add r1, r5, #0
	mov r2, #3
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _02267A2E
_022672DA:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _022672EE
	cmp r0, #1
	beq _022672FA
	cmp r0, #2
	beq _02267318
	b _0226732A
_022672EE:
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	mov r0, #1
	b _02267334
_022672FA:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov66_0222E990
	mov r0, #1
	b _02267334
_02267318:
	add r0, r7, #0
	bl ov66_0222ED7C
	add r0, r6, #0
	mov r1, #0x21
	bl ov70_02262E88
	mov r0, #1
	b _02267334
_0226732A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_02267334:
	cmp r0, #1
	beq _0226733A
	b _02267A2E
_0226733A:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_02267356:
	ldr r0, [sp, #0x18]
	bl ov66_0222E8C4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x14]
	bl ov66_0222E8C4
	ldr r1, [sp, #0x40]
	cmp r1, r0
	bne _022673C4
	mov r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267398 ; =0x000001FB
	b _0226739C
	nop
_02267390: .word 0x000005E4
_02267394: .word 0x00000203
_02267398: .word 0x000001FB
_0226739C:
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #4
	bl ov66_0222ECD4
	b _02267A2E
_022673C4:
	mov r2, #0
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov70_0225E234
	mov r3, #1
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	str r3, [sp]
	bl ov70_02268D38
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov70_02268D38
	mov r2, #0x7f
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xe
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267414:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _02267750 ; =0x00000206
	add r0, #0x14
	add r1, r5, #0
	mov r2, #2
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _02267A2E
_02267444:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _02267454
	cmp r0, #1
	beq _0226748C
	b _02267498
_02267454:
	add r0, r7, #0
	mov r1, #3
	bl ov66_0222ECD4
	add r0, r6, #0
	mov r1, #0x10
	bl ov70_02262E88
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EF44
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl ov66_0222E8C4
	add r3, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r2, r6, #0
	bl ov66_0222E9CC
	mov r0, #1
	b _022674A2
_0226748C:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	mov r0, #1
	b _022674A2
_02267498:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_022674A2:
	cmp r0, #1
	beq _022674A8
	b _02267A2E
_022674A8:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_022674C4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267754 ; =0x000001FE
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x11
	add r3, r6, #0
	bl ov70_02268BA4
	ldr r0, [sp, #0x14]
	bl ov66_0222E8C4
	add r1, r0, #0
	add r0, r7, #0
	bl ov66_0222E528
	b _02267A2E
_02267510:
	ldr r0, _02267758 ; =0x000005A8
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0x12
	bl ov70_02262E88
	b _02267A2E
_02267520:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _0226757E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267532: ; jump table
	.short _0226757E - _02267532 - 2 ; case 0
	.short _0226757E - _02267532 - 2 ; case 1
	.short _0226753C - _02267532 - 2 ; case 2
	.short _02267564 - _02267532 - 2 ; case 3
	.short _0226757E - _02267532 - 2 ; case 4
_0226753C:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov70_02268E20
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _02267554
	add r0, r6, #0
	mov r1, #0x21
	bl ov70_02262E88
	b _0226755C
_02267554:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
_0226755C:
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_02267564:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267574
	add r0, r5, #0
	bl ov70_0225DFBC
_02267574:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_0226757E:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226758E:
	add r0, r7, #0
	mov r1, #5
	bl ov66_0222ECD4
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	b _02267A2E
_022675A0:
	ldr r0, _0226775C ; =0x00000207
	add r1, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0x1e
	mov r3, #4
	bl ov70_02268EEC
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x17
	add r1, r4, #0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E0A4
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_02268DB8
	b _02267A2E
_022675E0:
	add r0, r5, #0
	bl ov70_0225E0D4
	mov r1, #1
	mvn r1, r1
	str r0, [sp, #0x44]
	cmp r0, r1
	beq _022675F6
	add r1, r1, #1
	cmp r0, r1
	bne _02267600
_022675F6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_02267600:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldr r0, [sp, #0x44]
	mov r1, #0x16
	strb r0, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _02267A2E
_02267622:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _02267760 ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x17
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267654:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #4
	add r3, #0x73
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #0x18
	bl ov70_02262E88
	b _02267A2E
_02267682:
	add r0, r5, #0
	bl ov70_0225E0D4
	str r0, [sp, #0x48]
	cmp r0, #3
	bhi _022676D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226769A: ; jump table
	.short _022676A2 - _0226769A - 2 ; case 0
	.short _022676A2 - _0226769A - 2 ; case 1
	.short _022676A2 - _0226769A - 2 ; case 2
	.short _022676A2 - _0226769A - 2 ; case 3
_022676A2:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	ldrb r0, [r4]
	lsl r1, r0, #2
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	strb r0, [r4, #1]
	add r0, r6, #0
	mov r1, #0x19
	bl ov70_02262E88
	b _02267A2E
_022676D0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_022676DA:
	ldrb r2, [r4, #1]
	add r0, r4, #0
	add r0, #0x38
	add r2, r2, #6
	lsl r2, r2, #0x10
	add r1, r7, #0
	lsr r2, r2, #0x10
	mov r3, #2
	bl ov70_0226911C
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02267764 ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1a
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267720:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x55
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
	; .align 2, 0
_02267750: .word 0x00000206
_02267754: .word 0x000001FE
_02267758: .word 0x000005A8
_0226775C: .word 0x00000207
_02267760: .word 0x000001DD
_02267764: .word 0x00000165
_02267768:
	add r0, r4, #0
	add r0, #0x38
	bl ov70_02269178
	cmp r0, #1
	bne _0226779A
	add r0, r4, #0
	add r0, #0x38
	bl ov70_02269188
	cmp r0, #2
	bne _0226778A
	add r0, r6, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _02267A2E
_0226778A:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226779A:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	beq _022677A6
	b _02267A2E
_022677A6:
	add r0, r5, #0
	bl ov70_0225DFBC
	b _02267A2E
_022677AE:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022677FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022677C0: ; jump table
	.short _022677FC - _022677C0 - 2 ; case 0
	.short _022677FC - _022677C0 - 2 ; case 1
	.short _022677CA - _022677C0 - 2 ; case 2
	.short _022677E2 - _022677C0 - 2 ; case 3
	.short _022677FC - _022677C0 - 2 ; case 4
_022677CA:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov70_02268E20
	add r0, r6, #0
	mov r1, #0x1d
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_022677E2:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _022677F2
	add r0, r5, #0
	bl ov70_0225DFBC
_022677F2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_022677FC:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226780C:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7e
	bhs _02267820
	cmp r0, #6
	bhs _0226782A
_02267820:
	add r0, r6, #0
	mov r1, #0x23
	bl ov70_02262E88
	b _02267A2E
_0226782A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldr r2, [sp, #0x10]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _02267862
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1e
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267862:
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267874:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x33
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678A2:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x32
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678D0:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2d
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	bl ov66_0222EDC0
	b _02267A2E
_02267912:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2b
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267944:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2a
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226796C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r2, #0x59
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022679A0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_02268BBC
	b _02267A2E
_022679AA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02268BD8
	b _02267A2E
_022679B6:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _022679CE
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl ov66_0222E500
_022679CE:
	add r0, r7, #0
	bl ov66_0222EC60
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r7, #0
	mov r1, #1
	bl ov66_0222E3E4
	add r0, r5, #0
	bl ov70_0225DEF0
	add r7, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02267A1C
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #1
	bl ov70_02262EEC
	add r0, r5, #0
	bl ov70_0225E3D0
_02267A1C:
	add r0, r4, #0
	bl ov70_02268BA0
	add r0, r6, #0
	bl ov70_02262E64
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02267A2E:
	add r0, r4, #0
	bl ov70_02268E08
	add r4, #0x38
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02269144
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02266E9C

	thumb_func_start ov70_02267A44
ov70_02267A44: ; 0x02267A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r7, #0
	bl ov66_0222EE30
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov66_0222EE3C
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov66_0222EE68
	cmp r0, #0
	beq _02267A92
	cmp r4, #0
	beq _02267A92
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267A92
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02267A92:
	cmp r4, #0
	beq _02267AA8
	add r0, r7, #0
	bl ov66_0222E3BC
	str r0, [sp, #0xc]
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222E374
	str r0, [sp, #8]
_02267AA8:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02267AD0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267AD0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02267AD0
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02267AD0:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x1f
	bhi _02267B96
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267AE6: ; jump table
	.short _02267B26 - _02267AE6 - 2 ; case 0
	.short _02267B8C - _02267AE6 - 2 ; case 1
	.short _02267BBE - _02267AE6 - 2 ; case 2
	.short _02267BFA - _02267AE6 - 2 ; case 3
	.short _02267C6C - _02267AE6 - 2 ; case 4
	.short _02267C96 - _02267AE6 - 2 ; case 5
	.short _02267CC4 - _02267AE6 - 2 ; case 6
	.short _02267CFC - _02267AE6 - 2 ; case 7
	.short _02267D2A - _02267AE6 - 2 ; case 8
	.short _02267D58 - _02267AE6 - 2 ; case 9
	.short _02267E1E - _02267AE6 - 2 ; case 10
	.short _02267E5A - _02267AE6 - 2 ; case 11
	.short _02267EA0 - _02267AE6 - 2 ; case 12
	.short _02267EDC - _02267AE6 - 2 ; case 13
	.short _02267F2A - _02267AE6 - 2 ; case 14
	.short _02267F6E - _02267AE6 - 2 ; case 15
	.short _02267F9C - _02267AE6 - 2 ; case 16
	.short _02267FFC - _02267AE6 - 2 ; case 17
	.short _0226804A - _02267AE6 - 2 ; case 18
	.short _0226807A - _02267AE6 - 2 ; case 19
	.short _022680AA - _02267AE6 - 2 ; case 20
	.short _022680DC - _02267AE6 - 2 ; case 21
	.short _02268110 - _02267AE6 - 2 ; case 22
	.short _0226819E - _02267AE6 - 2 ; case 23
	.short _022681EA - _02267AE6 - 2 ; case 24
	.short _02268234 - _02267AE6 - 2 ; case 25
	.short _02268262 - _02267AE6 - 2 ; case 26
	.short _022682A4 - _02267AE6 - 2 ; case 27
	.short _022682D6 - _02267AE6 - 2 ; case 28
	.short _02268304 - _02267AE6 - 2 ; case 29
	.short _0226830E - _02267AE6 - 2 ; case 30
	.short _0226831A - _02267AE6 - 2 ; case 31
_02267B26:
	add r0, r6, #0
	mov r1, #0x50
	bl ov70_02262E3C
	add r4, r0, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r7, #0
	str r1, [r4, #0x48]
	bl ov66_0222EE1C
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x1c]
	ldr r0, _02267E98 ; =0x000005E4
	bl sub_02005748
	add r0, r7, #0
	mov r1, #9
	bl ov66_0222E3E4
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02267B82
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov66_0222EEE4
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268382
_02267B82:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02267B8C:
	add r0, r7, #0
	bl ov66_0222EEAC
	cmp r0, #0
	bne _02267B98
_02267B96:
	b _02268382
_02267B98:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #2
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BBE:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EEF4
	add r0, r7, #0
	bl ov66_0222F020
	add r0, r7, #0
	mov r1, #7
	bl ov66_0222F040
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #3
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BFA:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267C5C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267C0C: ; jump table
	.short _02267C5C - _02267C0C - 2 ; case 0
	.short _02267C5C - _02267C0C - 2 ; case 1
	.short _02267C42 - _02267C0C - 2 ; case 2
	.short _02267C16 - _02267C0C - 2 ; case 3
	.short _02267C5C - _02267C0C - 2 ; case 4
_02267C16:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0
	bl ov66_0222ECD4
	add r0, r7, #0
	bl ov66_0222EE24
	cmp r0, #0
	beq _02267C38
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	b _02268382
_02267C38:
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _02268382
_02267C42:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267C52
	add r0, r5, #0
	bl ov70_0225DFBC
_02267C52:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267C5C:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267C6C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _02267C8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267C8C:
	add r0, r6, #0
	mov r1, #5
	bl ov70_02262E88
	b _02268382
_02267C96:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x28
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CC4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	add r0, r5, #0
	bl ov70_02268AF8
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CFC:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2f
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D2A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x35
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D58:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267E0E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267D6A: ; jump table
	.short _02267DFE - _02267D6A - 2 ; case 0
	.short _02267E0E - _02267D6A - 2 ; case 1
	.short _02267DE4 - _02267D6A - 2 ; case 2
	.short _02267D74 - _02267D6A - 2 ; case 3
	.short _02267E0E - _02267D6A - 2 ; case 4
_02267D74:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	beq _02267D84
	cmp r0, #4
	beq _02267DA0
	cmp r0, #5
	beq _02267DBC
	b _02267DCE
_02267D84:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	add r0, r7, #0
	bl ov66_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DA0:
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	add r0, r7, #0
	bl ov66_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DBC:
	add r0, r7, #0
	mov r1, #1
	bl ov66_0222ECD4
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _02267DDC
_02267DCE:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
_02267DDC:
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267DE4:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267DF4
	add r0, r5, #0
	bl ov70_0225DFBC
_02267DF4:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267DFE:
	add r0, r6, #0
	mov r1, #0x1b
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E0E:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E1E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267E9C ; =0x000001FF
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267E5A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	mov r2, #2
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #8
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xc
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	; .align 2, 0
_02267E98: .word 0x000005E4
_02267E9C: .word 0x000001FF
_02267EA0:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268218 ; =0x00000201
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xd
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267EDC:
	ldr r0, _0226821C ; =0x000005A8
	bl sub_02005748
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268220 ; =0x00000202
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #2
	bl ov66_0222ECD4
	add r0, r7, #0
	bl ov66_0222E3BC
	bl ov66_0222E8C4
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225E378
	b _02268382
_02267F2A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268224 ; =0x000001FB
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #2
	bl ov66_0222ECD4
	b _02268382
_02267F6E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268228 ; =0x000002AF
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x10
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267F9C:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267FEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267FAE: ; jump table
	.short _02267FEC - _02267FAE - 2 ; case 0
	.short _02267FEC - _02267FAE - 2 ; case 1
	.short _02267FD2 - _02267FAE - 2 ; case 2
	.short _02267FB8 - _02267FAE - 2 ; case 3
	.short _02267FEC - _02267FAE - 2 ; case 4
_02267FB8:
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	bl ov66_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	b _02268382
_02267FD2:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267FE2
	add r0, r5, #0
	bl ov70_0225DFBC
_02267FE2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267FEC:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267FFC:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	blo _02268006
	cmp r0, #0x7e
	blo _02268010
_02268006:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02268010:
	sub r0, r0, #6
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	mov r2, #0
	lsr r0, r0, #2
	strb r0, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x37
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226804A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x55
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x13
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226807A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x14
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680AA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _0226822C ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x15
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680DC:
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #5
	add r3, #0x73
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	b _02268382
_02268110:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #4
	bhi _0226816A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268126: ; jump table
	.short _02268130 - _02268126 - 2 ; case 0
	.short _02268130 - _02268126 - 2 ; case 1
	.short _02268130 - _02268126 - 2 ; case 2
	.short _02268130 - _02268126 - 2 ; case 3
	.short _02268152 - _02268126 - 2 ; case 4
_02268130:
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r0, r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov66_0222ECD4
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	mov r0, #1
	b _02268174
_02268152:
	mov r0, #0x7e
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	bl ov66_0222ECD4
	add r0, r6, #0
	mov r1, #0x1c
	bl ov70_02262E88
	mov r0, #1
	b _02268174
_0226816A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_02268174:
	cmp r0, #0
	bne _0226817A
	b _02268382
_0226817A:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02268382
_0226819E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02268230 ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	bne _022681D8
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x18
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681D8:
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681EA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x33
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	; .align 2, 0
_02268218: .word 0x00000201
_0226821C: .word 0x000005A8
_02268220: .word 0x00000202
_02268224: .word 0x000001FB
_02268228: .word 0x000002AF
_0226822C: .word 0x000001DD
_02268230: .word 0x00000165
_02268234:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x34
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268262:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2d
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x1d
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	bl ov66_0222EDC0
	b _02268382
_022682A4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2b
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x1d
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022682D6:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x31
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268304:
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_02268BBC
	b _02268382
_0226830E:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02268BD8
	b _02268382
_0226831A:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _02268332
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl ov66_0222E500
_02268332:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _02268340
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov66_0222EED4
_02268340:
	add r0, r7, #0
	bl ov66_0222EC60
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_02268BA0
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r7, #0
	mov r1, #1
	bl ov66_0222E3E4
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225E3D0
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268382:
	add r0, r4, #0
	bl ov70_02268E08
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02267A44

	thumb_func_start ov70_02268390
ov70_02268390: ; 0x02268390
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl ov70_02262E80
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x18
	bls _022683B2
	b _02268892
_022683B2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022683BE: ; jump table
	.short _022683F0 - _022683BE - 2 ; case 0
	.short _02268430 - _022683BE - 2 ; case 1
	.short _02268450 - _022683BE - 2 ; case 2
	.short _02268470 - _022683BE - 2 ; case 3
	.short _02268490 - _022683BE - 2 ; case 4
	.short _022684B0 - _022683BE - 2 ; case 5
	.short _022684DA - _022683BE - 2 ; case 6
	.short _02268588 - _022683BE - 2 ; case 7
	.short _022685A8 - _022683BE - 2 ; case 8
	.short _022685C6 - _022683BE - 2 ; case 9
	.short _0226863E - _022683BE - 2 ; case 10
	.short _02268668 - _022683BE - 2 ; case 11
	.short _02268692 - _022683BE - 2 ; case 12
	.short _022686BC - _022683BE - 2 ; case 13
	.short _022686DC - _022683BE - 2 ; case 14
	.short _022686FC - _022683BE - 2 ; case 15
	.short _0226871C - _022683BE - 2 ; case 16
	.short _02268740 - _022683BE - 2 ; case 17
	.short _022687B6 - _022683BE - 2 ; case 18
	.short _022687D6 - _022683BE - 2 ; case 19
	.short _022687F6 - _022683BE - 2 ; case 20
	.short _02268816 - _022683BE - 2 ; case 21
	.short _02268836 - _022683BE - 2 ; case 22
	.short _02268856 - _022683BE - 2 ; case 23
	.short _0226886A - _022683BE - 2 ; case 24
_022683F0:
	add r0, r6, #0
	mov r1, #0x28
	bl ov70_02262E3C
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
	add r0, r7, #0
	bl ov66_0222E12C
	cmp r0, #1
	bne _02268412
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	b _02268892
_02268412:
	add r0, r7, #0
	bl ov66_0222E170
	cmp r0, #1
	bne _02268426
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268892
_02268426:
	add r0, r6, #0
	mov r1, #3
	bl ov70_02262E88
	b _02268892
_02268430:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268450:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268470:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268490:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #5
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022684B0:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02268FB8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xf
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E0A4
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _02268892
_022684DA:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #7
	bhi _02268502
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022684F2: ; jump table
	.short _0226850C - _022684F2 - 2 ; case 0
	.short _02268518 - _022684F2 - 2 ; case 1
	.short _02268524 - _022684F2 - 2 ; case 2
	.short _02268530 - _022684F2 - 2 ; case 3
	.short _0226853C - _022684F2 - 2 ; case 4
	.short _02268548 - _022684F2 - 2 ; case 5
	.short _02268554 - _022684F2 - 2 ; case 6
	.short _02268566 - _022684F2 - 2 ; case 7
_02268502:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02268560
	b _02268570
_0226850C:
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268518:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268524:
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268530:
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_0226853C:
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268548:
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268554:
	add r0, r6, #0
	mov r1, #0x10
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268560:
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
_02268566:
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	mov r7, #1
_02268570:
	cmp r7, #1
	bne _02268628
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_02268588:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022685A8:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269090
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #9
	bl ov70_02262E88
	b _02268892
_022685C6:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _022685E6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022685DE: ; jump table
	.short _022685F0 - _022685DE - 2 ; case 0
	.short _022685FC - _022685DE - 2 ; case 1
	.short _02268608 - _022685DE - 2 ; case 2
	.short _0226861A - _022685DE - 2 ; case 3
_022685E6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02268614
	b _02268624
_022685F0:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_022685FC:
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_02268608:
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_02268614:
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
_0226861A:
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r7, #1
_02268624:
	cmp r7, #1
	beq _0226862A
_02268628:
	b _02268892
_0226862A:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_0226863E:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x18
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268668:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x19
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268692:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686BC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686DC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686FC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_0226871C:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269018
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	b _02268892
	nop
_0226873C: .word 0x000005DC
_02268740:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _02268760
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268758: ; jump table
	.short _0226876A - _02268758 - 2 ; case 0
	.short _02268776 - _02268758 - 2 ; case 1
	.short _02268782 - _02268758 - 2 ; case 2
	.short _02268794 - _02268758 - 2 ; case 3
_02268760:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0226878E
	b _0226879E
_0226876A:
	add r0, r6, #0
	mov r1, #0x12
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_02268776:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_02268782:
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_0226878E:
	ldr r0, _02268898 ; =0x000005DC
	bl sub_02005748
_02268794:
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r7, #1
_0226879E:
	cmp r7, #1
	bne _02268892
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_022687B6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1b
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687D6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1c
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687F6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268816:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268836:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x16
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268856:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268892
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl ov70_02262E88
	b _02268892
_0226886A:
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02268892:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02268898: .word 0x000005DC
	thumb_func_end ov70_02268390

	thumb_func_start ov70_0226889C
ov70_0226889C: ; 0x0226889C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_02262E80
	add r0, r4, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022688C6
	cmp r0, #1
	bne _022688BE
	b _022689FE
_022688BE:
	cmp r0, #2
	bne _022688C4
	b _02268A12
_022688C4:
	b _02268A32
_022688C6:
	ldr r0, _02268A38 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	bl ov66_0222E12C
	cmp r0, #0
	bne _022688FC
	add r0, r6, #0
	bl ov66_0222E170
	cmp r0, #1
	bne _02268918
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_022688FC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_02268918:
	add r0, r6, #0
	bl ov66_0222F05C
	cmp r0, #8
	bhi _022689E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226892E: ; jump table
	.short _02268940 - _0226892E - 2 ; case 0
	.short _02268958 - _0226892E - 2 ; case 1
	.short _02268970 - _0226892E - 2 ; case 2
	.short _02268988 - _0226892E - 2 ; case 3
	.short _022689A0 - _0226892E - 2 ; case 4
	.short _022689B8 - _0226892E - 2 ; case 5
	.short _022689C6 - _0226892E - 2 ; case 6
	.short _022689D4 - _0226892E - 2 ; case 7
	.short _022689E2 - _0226892E - 2 ; case 8
_02268940:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268958:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268970:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268988:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689A0:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689B8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4a
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689C6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4f
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689D4:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4b
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689E2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4c
	bl ov70_0225E20C
	add r1, r0, #0
_022689EE:
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_022689FE:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268A32
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02268A32
_02268A12:
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02268A32:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02268A38: .word 0x000005DC
	thumb_func_end ov70_0226889C

	thumb_func_start ov70_02268A3C
ov70_02268A3C: ; 0x02268A3C
	push {r3, lr}
	sub sp, #8
	bl ov66_0222E7C4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #0x18
	bhi _02268AA0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268A5C: ; jump table
	.short _02268A9A - _02268A5C - 2 ; case 0
	.short _02268A9A - _02268A5C - 2 ; case 1
	.short _02268A9A - _02268A5C - 2 ; case 2
	.short _02268A9A - _02268A5C - 2 ; case 3
	.short _02268A8E - _02268A5C - 2 ; case 4
	.short _02268A8E - _02268A5C - 2 ; case 5
	.short _02268A8E - _02268A5C - 2 ; case 6
	.short _02268A8E - _02268A5C - 2 ; case 7
	.short _02268A8E - _02268A5C - 2 ; case 8
	.short _02268A8E - _02268A5C - 2 ; case 9
	.short _02268A8E - _02268A5C - 2 ; case 10
	.short _02268A94 - _02268A5C - 2 ; case 11
	.short _02268A94 - _02268A5C - 2 ; case 12
	.short _02268A94 - _02268A5C - 2 ; case 13
	.short _02268A94 - _02268A5C - 2 ; case 14
	.short _02268A94 - _02268A5C - 2 ; case 15
	.short _02268A94 - _02268A5C - 2 ; case 16
	.short _02268A94 - _02268A5C - 2 ; case 17
	.short _02268A94 - _02268A5C - 2 ; case 18
	.short _02268A9A - _02268A5C - 2 ; case 19
	.short _02268A9A - _02268A5C - 2 ; case 20
	.short _02268A9A - _02268A5C - 2 ; case 21
	.short _02268A9A - _02268A5C - 2 ; case 22
	.short _02268A9A - _02268A5C - 2 ; case 23
	.short _02268A9A - _02268A5C - 2 ; case 24
_02268A8E:
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_02268A94:
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02268A9A:
	add sp, #8
	mov r0, #2
	pop {r3, pc}
_02268AA0:
	bl sub_02022974
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02268A3C

	thumb_func_start ov70_02268AAC
ov70_02268AAC: ; 0x02268AAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	add r1, r6, #0
	bl ov66_0222E924
	cmp r0, #1
	bne _02268ADE
	ldr r3, _02268AEC ; =0x0226DD5C
	ldr r0, _02268AF0 ; =0x00000163
	mov r2, #0
_02268AC8:
	ldrh r1, [r3]
	cmp r4, r1
	bne _02268AD6
	ldr r0, _02268AF4 ; =0x0226DD5E
	lsl r1, r2, #2
	ldrh r4, [r0, r1]
	b _02268ADE
_02268AD6:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r0
	blo _02268AC8
_02268ADE:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov70_0225E20C
	pop {r4, r5, r6, pc}
	nop
_02268AEC: .word 0x0226DD5C
_02268AF0: .word 0x00000163
_02268AF4: .word 0x0226DD5E
	thumb_func_end ov70_02268AAC

	thumb_func_start ov70_02268AF8
ov70_02268AF8: ; 0x02268AF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r1, r5, #0
	bl ov66_0222E924
	add r5, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov66_0222E924
	mov r2, #0x29
	cmp r5, #1
	bne _02268B24
	cmp r0, #1
	bne _02268B24
	ldr r2, _02268B44 ; =0x000002AA
	b _02268B3A
_02268B24:
	cmp r5, #1
	bne _02268B30
	cmp r0, #0
	bne _02268B30
	ldr r2, _02268B48 ; =0x00000226
	b _02268B3A
_02268B30:
	cmp r5, #0
	bne _02268B3A
	cmp r0, #1
	bne _02268B3A
	ldr r2, _02268B4C ; =0x000002A9
_02268B3A:
	add r0, r4, #0
	mov r1, #3
	bl ov70_0225E20C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268B44: .word 0x000002AA
_02268B48: .word 0x00000226
_02268B4C: .word 0x000002A9
	thumb_func_end ov70_02268AF8

	thumb_func_start ov70_02268B50
ov70_02268B50: ; 0x02268B50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r6, r0
	bne _02268B64
	bl sub_02022974
_02268B64:
	strb r6, [r5, #3]
	add r0, r4, #0
	bl ov66_0222E338
	strh r0, [r5, #8]
	mov r0, #1
	strh r0, [r5, #0xa]
	add r0, r4, #0
	bl ov66_0222E3BC
	add r6, r0, #0
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl ov66_0222E374
	add r4, r0, #0
	bne _02268B8A
	mov r0, #0
	pop {r4, r5, r6, pc}
_02268B8A:
	add r0, r6, #0
	bl ov70_02268A3C
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov70_02268A3C
	strb r0, [r5, #5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02268B50

	thumb_func_start ov70_02268BA0
ov70_02268BA0: ; 0x02268BA0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02268BA0

	thumb_func_start ov70_02268BA4
ov70_02268BA4: ; 0x02268BA4
	strb r1, [r0, #6]
	ldr r1, _02268BB4 ; =0xFFFFFFF0
	strb r2, [r0, #7]
	add r0, r3, #0
	add r1, sp
	ldr r3, _02268BB8 ; =ov70_02262E88
	ldrb r1, [r1, #0x10]
	bx r3
	; .align 2, 0
_02268BB4: .word 0xFFFFFFF0
_02268BB8: .word ov70_02262E88
	thumb_func_end ov70_02268BA4

	thumb_func_start ov70_02268BBC
ov70_02268BBC: ; 0x02268BBC
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _02268BCC
	sub r0, r0, #1
	strb r0, [r2, #6]
	pop {r3, pc}
_02268BCC:
	add r0, r1, #0
	ldrb r1, [r2, #7]
	bl ov70_02262E88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02268BBC

	thumb_func_start ov70_02268BD8
ov70_02268BD8: ; 0x02268BD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268BF0
	ldrb r1, [r5, #7]
	add r0, r4, #0
	bl ov70_02262E88
_02268BF0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02268BD8

	thumb_func_start ov70_02268BF4
ov70_02268BF4: ; 0x02268BF4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov70_02268C44
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov70_02268C44
	ldr r0, [sp, #0x10]
	bl ov66_0222E80C
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ov66_0222E80C
	add r3, r0, #0
	ldr r2, _02268C40 ; =0x0226DCDC
	lsl r4, r4, #4
	lsl r3, r3, #1
	add r2, r2, r4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	pop {r3, r4, r5, pc}
	nop
_02268C40: .word 0x0226DCDC
	thumb_func_end ov70_02268BF4

	thumb_func_start ov70_02268C44
ov70_02268C44: ; 0x02268C44
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov66_0222E80C
	cmp r0, #7
	bhi _02268CBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268C62: ; jump table
	.short _02268CBA - _02268C62 - 2 ; case 0
	.short _02268C72 - _02268C62 - 2 ; case 1
	.short _02268C7E - _02268C62 - 2 ; case 2
	.short _02268C8A - _02268C62 - 2 ; case 3
	.short _02268C96 - _02268C62 - 2 ; case 4
	.short _02268CA2 - _02268C62 - 2 ; case 5
	.short _02268CBA - _02268C62 - 2 ; case 6
	.short _02268CAE - _02268C62 - 2 ; case 7
_02268C72:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2AC
	pop {r4, r5, r6, pc}
_02268C7E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
_02268C8A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2CC
	pop {r4, r5, r6, pc}
_02268C96:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2DC
	pop {r4, r5, r6, pc}
_02268CA2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2EC
	pop {r4, r5, r6, pc}
_02268CAE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2FC
	pop {r4, r5, r6, pc}
_02268CBA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02268C44

	thumb_func_start ov70_02268CC8
ov70_02268CC8: ; 0x02268CC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov66_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r6, #0
	bl ov66_0222E374
	add r6, r0, #0
	ldr r0, [sp]
	bl ov66_0222E824
	cmp r0, #0
	bne _02268CF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CF0:
	add r0, r6, #0
	bl ov66_0222E824
	cmp r0, #0
	bne _02268CFE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CFE:
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #4]
	cmp r0, r1
	beq _02268D34
	cmp r1, #0
	beq _02268D14
	cmp r1, #1
	beq _02268D18
	cmp r1, #2
	beq _02268D1C
	b _02268D1E
_02268D14:
	mov r4, #0x27
	b _02268D1E
_02268D18:
	mov r4, #0x25
	b _02268D1E
_02268D1C:
	mov r4, #0x26
_02268D1E:
	add r0, r7, #0
	mov r1, #3
	add r2, r4, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r7, #0
	bl ov70_0225DF8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268D34:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268CC8

	thumb_func_start ov70_02268D38
ov70_02268D38: ; 0x02268D38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov66_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl ov66_0222E374
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _02268D5E
	bl ov66_0222E8C4
	b _02268D64
_02268D5E:
	ldr r0, [sp]
	bl ov66_0222E8C4
_02268D64:
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl ov70_0225E29C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268D38

	thumb_func_start ov70_02268D70
ov70_02268D70: ; 0x02268D70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	bl ov66_0222EE90
	ldr r1, _02268DB4 ; =0x000001C2
	cmp r0, r1
	bne _02268DB0
	add r0, r4, #0
	bl ov70_0225DFCC
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E234
	mov r2, #0xab
	ldrb r1, [r5, #3]
	add r0, r4, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r4, #0
	bl ov70_0225DFBC
_02268DB0:
	pop {r3, r4, r5, pc}
	nop
_02268DB4: .word 0x000001C2
	thumb_func_end ov70_02268D70

	thumb_func_start ov70_02268DB8
ov70_02268DB8: ; 0x02268DB8
	mov r1, #0
	strh r1, [r0, #0xe]
	mov r1, #1
	strb r1, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02268DB8

	thumb_func_start ov70_02268DC4
ov70_02268DC4: ; 0x02268DC4
	mov r1, #0
	strh r1, [r0, #0xe]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end ov70_02268DC4

	thumb_func_start ov70_02268DCC
ov70_02268DCC: ; 0x02268DCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xd]
	add r4, r1, #0
	cmp r0, #1
	bne _02268DFE
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	ldr r0, _02268E00 ; =0x000001C2
	cmp r1, r0
	bne _02268DFE
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r5, #3]
	ldr r2, _02268E04 ; =0x000002AB
	add r0, r4, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
_02268DFE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02268E00: .word 0x000001C2
_02268E04: .word 0x000002AB
	thumb_func_end ov70_02268DCC

	thumb_func_start ov70_02268E08
ov70_02268E08: ; 0x02268E08
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _02268E1E
	mov r1, #0xe
	ldrsh r2, [r0, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	cmp r2, r1
	bgt _02268E1E
	add r1, r2, #1
	strh r1, [r0, #0xe]
_02268E1E:
	bx lr
	thumb_func_end ov70_02268E08

	thumb_func_start ov70_02268E20
ov70_02268E20: ; 0x02268E20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov66_0222E7A0
	add r1, r5, #0
	mov r2, #1
	add r1, #0x44
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r4, #0
	bl ov66_0222E798
	str r0, [r5, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02268E20

	thumb_func_start ov70_02268E44
ov70_02268E44: ; 0x02268E44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl ov70_0225E00C
	ldr r0, [sp]
	mov r4, #0
	str r7, [r0, #0x20]
	cmp r7, #0
	bls _02268EAE
	sub r0, r7, #1
	str r0, [sp, #8]
_02268E68:
	cmp r6, #0
	beq _02268E92
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02268E92
	cmp r6, #1
	bne _02268E84
	ldr r2, _02268EE4 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268EA0
_02268E84:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268EA0
_02268E92:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r4
	bl ov70_0225E20C
	add r1, r0, #0
_02268EA0:
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, r7
	blo _02268E68
_02268EAE:
	ldr r3, _02268EE8 ; =0x0226DCBC
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268ED4
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268ED4:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02268EE4: .word 0x00000205
_02268EE8: .word 0x0226DCBC
	thumb_func_end ov70_02268E44

	thumb_func_start ov70_02268EEC
ov70_02268EEC: ; 0x02268EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r3, [sp, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r3, #0
	add r4, r2, #0
	bl ov70_0225E020
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	str r1, [r0, #0x20]
	add r0, r1, #0
	beq _02268F7C
	sub r0, r0, #1
	str r0, [sp, #8]
_02268F18:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02268F48
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _02268F48
	ldr r0, [sp, #0x24]
	add r6, r4, #0
	cmp r0, #1
	bne _02268F3A
	ldr r2, _02268FB0 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268F6C
_02268F3A:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268F6C
_02268F48:
	bl sub_0201D35C
	add r1, r4, #0
	bl _u32_div_f
	add r0, r5, #0
	add r6, r1, #0
	bl ov70_0225E064
	cmp r0, #1
	beq _02268F48
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r6
	bl ov70_0225E20C
	add r1, r0, #0
_02268F6C:
	add r0, r5, #0
	add r2, r6, #0
	bl ov70_0225E044
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blo _02268F18
_02268F7C:
	ldr r3, _02268FB4 ; =0x0226DCBC
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268FA2
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268FA2:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02268FB0: .word 0x00000205
_02268FB4: .word 0x0226DCBC
	thumb_func_end ov70_02268EEC

	thumb_func_start ov70_02268FB8
ov70_02268FB8: ; 0x02268FB8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl ov70_0225E00C
	mov r0, #8
	ldr r5, _02269010 ; =0x0226DCB4
	str r0, [r7, #0x20]
	mov r4, #0
_02268FCE:
	ldrb r2, [r5]
	add r0, r6, #0
	mov r1, #1
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _02268FCE
	ldr r3, _02269014 ; =0x0226DCBC
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	add r0, r6, #0
	bl ov70_0225E054
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269010: .word 0x0226DCB4
_02269014: .word 0x0226DCBC
	thumb_func_end ov70_02268FB8

	thumb_func_start ov70_02269018
ov70_02269018: ; 0x02269018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov70_0225E00C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_0226902E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0225E28C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x27
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #3
	blt _0226902E
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov70_0225E044
	ldr r3, _0226908C ; =0x0226DCBC
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov70_0225E054
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226908C: .word 0x0226DCBC
	thumb_func_end ov70_02269018

	thumb_func_start ov70_02269090
ov70_02269090: ; 0x02269090
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov70_0225E00C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_022690A6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0225E27C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x26
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #3
	blt _022690A6
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov70_0225E044
	ldr r3, _02269104 ; =0x0226DCBC
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov70_0225E054
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269104: .word 0x0226DCBC
	thumb_func_end ov70_02269090

	thumb_func_start ov70_02269108
ov70_02269108: ; 0x02269108
	ldr r3, _02269110 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02269110: .word ov70_0225E034
	thumb_func_end ov70_02269108

	thumb_func_start ov70_02269114
ov70_02269114: ; 0x02269114
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269114

	thumb_func_start ov70_0226911C
ov70_0226911C: ; 0x0226911C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02269130
	bl sub_02022974
_02269130:
	mov r0, #1
	strh r0, [r5]
	strh r4, [r5, #2]
	add r0, r7, #0
	strh r6, [r5, #4]
	bl ov66_0222EE30
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226911C

	thumb_func_start ov70_02269144
ov70_02269144: ; 0x02269144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _02269176
	add r0, r4, #0
	bl ov66_0222EE30
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bne _0226916C
	ldrh r1, [r5, #2]
	add r0, r4, #0
	bl ov66_0222ECD4
	mov r0, #0
	strh r0, [r5]
	pop {r3, r4, r5, pc}
_0226916C:
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02269176
	mov r0, #0
	strh r0, [r5]
_02269176:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269144

	thumb_func_start ov70_02269178
ov70_02269178: ; 0x02269178
	ldrh r0, [r0]
	cmp r0, #1
	beq _02269182
	mov r0, #1
	bx lr
_02269182:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269178

	thumb_func_start ov70_02269188
ov70_02269188: ; 0x02269188
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov70_02269188

	.rodata


	.global Unk_ov70_0226DCB4
Unk_ov70_0226DCB4: ; 0x0226DCB4
	.incbin "incbin/overlay70_rodata.bin", 0x7E8, 0x7F0 - 0x7E8

	.global Unk_ov70_0226DCBC
Unk_ov70_0226DCBC: ; 0x0226DCBC
	.incbin "incbin/overlay70_rodata.bin", 0x7F0, 0x810 - 0x7F0

	.global Unk_ov70_0226DCDC
Unk_ov70_0226DCDC: ; 0x0226DCDC
	.incbin "incbin/overlay70_rodata.bin", 0x810, 0x890 - 0x810

	.global Unk_ov70_0226DD5C
Unk_ov70_0226DD5C: ; 0x0226DD5C
	.incbin "incbin/overlay70_rodata.bin", 0x890, 0x58C

