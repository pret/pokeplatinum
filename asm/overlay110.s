	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov110_021D0D80
ov110_021D0D80: ; 0x021D0D80
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0E90 ; =0xFFFFE0FF
	ldr r3, _021D0E94 ; =0x04001000
	and r1, r0
	str r1, [r2, #0]
	ldr r1, [r3, #0]
	lsr r2, r2, #9
	and r0, r1
	str r0, [r3, #0]
	mov r0, #3
	mov r1, #0x72
	bl sub_02017FC8
	mov r1, #0x13
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x72
	bl sub_0200681C
	mov r2, #0x13
	add r5, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	str r4, [r5, #0]
	mov r0, #0x72
	bl sub_02018340
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	mov r0, #0x4a
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_0203068C
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	strb r0, [r5, #5]
	ldrb r0, [r4, #5]
	strb r0, [r5, #6]
	ldrh r0, [r4, #6]
	strh r0, [r5, #8]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_02025E44
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov110_021D1180
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x10
	mov r3, #0x72
	bl sub_0200B144
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x72
	bl sub_0200B358
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x72
	bl sub_02023790
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x72
	bl sub_02023790
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	add r1, #0x84
	mov r2, #0x72
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x72
	bl sub_02002E98
	ldrb r0, [r5, #6]
	bl ov110_021D1208
	add r2, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0xc]
	add r1, #0x10
	bl ov110_021D2124
	ldr r0, _021D0E98 ; =ov110_021D1048
	add r1, r5, #0
	bl sub_02017798
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D0E90: .word 0xFFFFE0FF
_021D0E94: .word 0x04001000
_021D0E98: .word ov110_021D1048
	thumb_func_end ov110_021D0D80

	thumb_func_start ov110_021D0E9C
ov110_021D0E9C: ; 0x021D0E9C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _021D0EB6
	cmp r1, #1
	beq _021D0ECA
	cmp r1, #2
	beq _021D0EDE
	b _021D0EEA
_021D0EB6:
	bl ov110_021D0F78
	cmp r0, #1
	bne _021D0EEA
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov110_021D1200
	b _021D0EEA
_021D0ECA:
	bl ov110_021D0FD0
	cmp r0, #1
	bne _021D0EEA
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov110_021D1200
	b _021D0EEA
_021D0EDE:
	bl ov110_021D1000
	cmp r0, #1
	bne _021D0EEA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0EEA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov110_021D0E9C

	thumb_func_start ov110_021D0EF0
ov110_021D0EF0: ; 0x021D0EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02002F54
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldrb r0, [r4, #6]
	bl ov110_021D1208
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x10
	bl ov110_021D216C
	ldr r0, [r4, #0xc]
	bl ov110_021D11CC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x72
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov110_021D0EF0

	thumb_func_start ov110_021D0F78
ov110_021D0F78: ; 0x021D0F78
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021D0F8E
	cmp r0, #1
	beq _021D0F94
	cmp r0, #2
	beq _021D0FBA
	b _021D0FC8
_021D0F8E:
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021D0FC8
_021D0F94:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r4, #0
	bl ov110_021D140C
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021D0FC8
_021D0FBA:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0FC8
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D0FC8:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D0F78

	thumb_func_start ov110_021D0FD0
ov110_021D0FD0: ; 0x021D0FD0
	ldrb r1, [r0, #4]
	cmp r1, #0
	beq _021D0FDC
	cmp r1, #1
	beq _021D0FE2
	b _021D0FF6
_021D0FDC:
	add r1, r1, #1
	strb r1, [r0, #4]
	b _021D0FF6
_021D0FE2:
	ldr r0, _021D0FFC ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	bne _021D0FF2
	mov r0, #2
	tst r0, r1
	beq _021D0FF6
_021D0FF2:
	mov r0, #1
	bx lr
_021D0FF6:
	mov r0, #0
	bx lr
	nop
_021D0FFC: .word 0x021BF67C
	thumb_func_end ov110_021D0FD0

	thumb_func_start ov110_021D1000
ov110_021D1000: ; 0x021D1000
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021D1012
	cmp r0, #1
	beq _021D1032
	b _021D1040
_021D1012:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x72
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021D1040
_021D1032:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1040
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D1040:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1000

	thumb_func_start ov110_021D1048
ov110_021D1048: ; 0x021D1048
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D105A
	bl sub_02003694
_021D105A:
	ldr r0, [r4, #0xc]
	bl sub_0201C2B8
	ldr r3, _021D1070 ; =0x027E0000
	ldr r1, _021D1074 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D1070: .word 0x027E0000
_021D1074: .word 0x00003FF8
	thumb_func_end ov110_021D1048

	thumb_func_start ov110_021D1078
ov110_021D1078: ; 0x021D1078
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1094 ; =0x021D21F8
	add r3, sp, #0
	mov r2, #5
_021D1082:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1082
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1094: .word 0x021D21F8
	thumb_func_end ov110_021D1078

	thumb_func_start ov110_021D1098
ov110_021D1098: ; 0x021D1098
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _021D116C ; =0x021D2194
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1170 ; =0x021D21A4
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x72
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _021D1174 ; =0x021D21DC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x72
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _021D1178 ; =0x021D21C0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x72
	bl sub_02019690
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	ldr r1, _021D117C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x64
	pop {r4, r5, pc}
	; .align 2, 0
_021D116C: .word 0x021D2194
_021D1170: .word 0x021D21A4
_021D1174: .word 0x021D21DC
_021D1178: .word 0x021D21C0
_021D117C: .word 0x04000008
	thumb_func_end ov110_021D1098

	thumb_func_start ov110_021D1180
ov110_021D1180: ; 0x021D1180
	push {r4, lr}
	add r4, r0, #0
	bl ov110_021D1078
	ldr r0, [r4, #0xc]
	bl ov110_021D1098
	mov r0, #0x72
	bl sub_02002F38
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x72
	bl sub_02002F70
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0xe0
	mov r3, #0x72
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #2
	bl ov110_021D123C
	bl ov110_021D128C
	add r0, r4, #0
	mov r1, #6
	bl ov110_021D12C0
	pop {r4, pc}
	thumb_func_end ov110_021D1180

	thumb_func_start ov110_021D11CC
ov110_021D11CC: ; 0x021D11CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov110_021D11CC

	thumb_func_start ov110_021D1200
ov110_021D1200: ; 0x021D1200
	mov r3, #0
	strb r3, [r0, #4]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov110_021D1200

	thumb_func_start ov110_021D1208
ov110_021D1208: ; 0x021D1208
	mov r1, #0
	cmp r0, #6
	bhi _021D1238
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D121A: ; jump table
	.short _021D1238 - _021D121A - 2 ; case 0
	.short _021D1236 - _021D121A - 2 ; case 1
	.short _021D1228 - _021D121A - 2 ; case 2
	.short _021D1228 - _021D121A - 2 ; case 3
	.short _021D122E - _021D121A - 2 ; case 4
	.short _021D122A - _021D121A - 2 ; case 5
	.short _021D1232 - _021D121A - 2 ; case 6
_021D1228:
	b _021D1238
_021D122A:
	mov r1, #1
	b _021D1238
_021D122E:
	mov r1, #2
	b _021D1238
_021D1232:
	mov r1, #3
	b _021D1238
_021D1236:
	mov r1, #4
_021D1238:
	add r0, r1, #0
	bx lr
	thumb_func_end ov110_021D1208

	thumb_func_start ov110_021D123C
ov110_021D123C: ; 0x021D123C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x96
	mov r1, #0x72
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x72
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	mov r1, #0x7c
	add r3, r4, #0
	add r6, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x72
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	mov r1, #0x7b
	add r3, r4, #0
	bl sub_0200710C
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov110_021D123C

	thumb_func_start ov110_021D128C
ov110_021D128C: ; 0x021D128C
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0xaa
	add r2, sp, #0
	mov r3, #0x72
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x40
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x40
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D128C

	thumb_func_start ov110_021D12C0
ov110_021D12C0: ; 0x021D12C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xc
	mov r1, #0x72
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x72
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	mov r1, #0xa
	add r3, r6, #0
	add r4, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x72
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0xb
	add r3, r6, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x72
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov110_021D12C0

	thumb_func_start ov110_021D1324
ov110_021D1324: ; 0x021D1324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0x3c
	ldrb r0, [r0]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _021D1342
	add r1, sp, #0x18
	ldrb r1, [r1, #0x1c]
	add r0, r6, #0
	bl sub_0201ADA4
_021D1342:
	mov r2, #0x11
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl sub_0200B1B8
	mov r2, #0x45
	lsl r2, r2, #2
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _021D1370
	cmp r0, #2
	beq _021D1386
	b _021D1396
_021D1370:
	mov r1, #0x46
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _021D1396
_021D1386:
	mov r1, #0x46
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_021D1396:
	ldr r0, [sp, #0x28]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r3, sp, #0x18
	ldrb r0, [r3, #0x14]
	ldrb r1, [r3, #0x1c]
	ldrb r3, [r3, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r3, r3, #0x18
	lsr r3, r3, #0x10
	orr r0, r3
	orr r0, r1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r1, sp, #0x38
	mov r2, #0x46
	lsl r2, r2, #2
	ldrb r1, [r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov110_021D1324

	thumb_func_start ov110_021D13CC
ov110_021D13CC: ; 0x021D13CC
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r5, #0
	str r5, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #2
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r3, [sp, #0x14]
	add r3, r5, #0
	str r5, [sp, #0x18]
	bl ov110_021D1324
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov110_021D13CC

	thumb_func_start ov110_021D13F0
ov110_021D13F0: ; 0x021D13F0
	push {r3, lr}
	sub sp, #8
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	mov r3, #4
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov110_021D13F0

	thumb_func_start ov110_021D140C
ov110_021D140C: ; 0x021D140C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #6]
	cmp r1, #6
	bhi _021D1460
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1422: ; jump table
	.short _021D1460 - _021D1422 - 2 ; case 0
	.short _021D144E - _021D1422 - 2 ; case 1
	.short _021D1430 - _021D1422 - 2 ; case 2
	.short _021D1430 - _021D1422 - 2 ; case 3
	.short _021D1442 - _021D1422 - 2 ; case 4
	.short _021D143C - _021D1422 - 2 ; case 5
	.short _021D1448 - _021D1422 - 2 ; case 6
_021D1430:
	bl ov110_021D1468
	add r0, r4, #0
	bl ov110_021D1650
	pop {r4, pc}
_021D143C:
	bl ov110_021D1808
	pop {r4, pc}
_021D1442:
	bl ov110_021D19F4
	pop {r4, pc}
_021D1448:
	bl ov110_021D1C40
	pop {r4, pc}
_021D144E:
	ldrb r1, [r4, #5]
	cmp r1, #1
	bhi _021D145A
	bl ov110_021D1DBC
	pop {r4, pc}
_021D145A:
	bl ov110_021D1ED8
	pop {r4, pc}
_021D1460:
	add r0, r4, #0
	bl ov110_021D1C40
	pop {r4, pc}
	thumb_func_end ov110_021D140C

	thumb_func_start ov110_021D1468
ov110_021D1468: ; 0x021D1468
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x16
	mov r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D14A4
	mov r2, #0x1a
	mov r3, #0xd8
	b _021D14B2
_021D14A4:
	cmp r0, #1
	bne _021D14AE
	mov r2, #0x1b
	mov r3, #0xd8
	b _021D14B2
_021D14AE:
	mov r2, #0x1c
	mov r3, #0xd8
_021D14B2:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x10
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x20
	mov r2, #0x22
	mov r3, #1
	bl ov110_021D13CC
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x20
	mov r2, #0x24
	mov r3, #0xe0
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D17AC
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x30
	mov r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	mov r0, #0
	bl sub_0205E430
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x30
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	mov r0, #0
	bl sub_0205E488
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x30
	mov r2, #0x28
	mov r3, #0xe0
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x30
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x40
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	mov r0, #0
	bl sub_0205E45C
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x40
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	mov r0, #0
	bl sub_0205E4B4
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x40
	mov r2, #0x28
	mov r3, #0xe0
	bl ov110_021D1324
	add r4, #0x40
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov110_021D1468

	thumb_func_start ov110_021D1650
ov110_021D1650: ; 0x021D1650
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x50
	mov r2, #0x23
	mov r3, #1
	bl ov110_021D13CC
	add r0, r4, #0
	add r0, #0x50
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	bl ov110_021D17AC
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x60
	mov r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	mov r0, #1
	bl sub_0205E430
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x60
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	mov r0, #1
	bl sub_0205E488
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x60
	mov r2, #0x28
	mov r3, #0xe0
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	mov r0, #1
	bl sub_0205E45C
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	mov r0, #1
	bl sub_0205E4B4
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x70
	mov r2, #0x28
	mov r3, #0xe0
	bl ov110_021D1324
	add r4, #0x70
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1650

	thumb_func_start ov110_021D17AC
ov110_021D17AC: ; 0x021D17AC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	bne _021D17B6
	mov r5, #0x66
	b _021D17B8
_021D17B6:
	mov r5, #0x68
_021D17B8:
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D17DC
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02030698
	b _021D17F6
_021D17DC:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_020300F4
	lsl r2, r6, #2
	add r2, r4, r2
	lsl r2, r2, #0x18
	mov r1, #0xa
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020300E0
_021D17F6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021D1802
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_021D1802:
	mov r0, #0x1d
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov110_021D17AC

	thumb_func_start ov110_021D1808
ov110_021D1808: ; 0x021D1808
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x10
	mov r2, #0x18
	mov r3, #8
	bl ov110_021D1324
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _021D1844
	mov r2, #0x1a
	mov r3, #0xd8
	b _021D1852
_021D1844:
	cmp r0, #1
	bne _021D184E
	mov r2, #0x1b
	mov r3, #0xd8
	b _021D1852
_021D184E:
	mov r2, #0x1c
	mov r3, #0xd8
_021D1852:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, #0x10
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r0, r5, #0
	bl ov110_021D19B0
	mov r3, #0
	add r1, r5, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x20
	mov r2, #0x27
	str r3, [sp, #0x18]
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A9A4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x30
	mov r2, #0x1d
	mov r3, #1
	bl ov110_021D13CC
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E55C
	add r6, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E55C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	ldrh r1, [r5, #8]
	cmp r1, r0
	beq _021D18E6
	mov r2, #0
	b _021D18FC
_021D18E6:
	ldrb r0, [r5, #5]
	bl sub_0205E50C
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
_021D18FC:
	add r0, r5, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x30
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A9A4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x40
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xb
	add r2, sp, #0x1c
	bl sub_020308A0
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _021D1956
	mov r6, #0
	b _021D196E
_021D1956:
	ldrb r0, [r5, #5]
	bl sub_0205E584
	add r2, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldrh r3, [r5, #8]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_020308BC
	add r6, r0, #0
_021D196E:
	cmp r4, #0
	beq _021D1978
	add r0, r4, #0
	bl sub_020181C4
_021D1978:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x40
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r5, #0x40
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov110_021D1808

	thumb_func_start ov110_021D19B0
ov110_021D19B0: ; 0x021D19B0
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r2, #0x67
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x72
	bl sub_0200B144
	ldrh r1, [r5, #8]
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0200B190
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov110_021D19B0

	thumb_func_start ov110_021D19F4
ov110_021D19F4: ; 0x021D19F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x10
	mov r2, #0x17
	mov r3, #8
	bl ov110_021D1324
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _021D1A30
	mov r2, #0x1a
	mov r3, #0xd8
	b _021D1A3E
_021D1A30:
	cmp r0, #1
	bne _021D1A3A
	mov r2, #0x1b
	mov r3, #0xd8
	b _021D1A3E
_021D1A3A:
	mov r2, #0x1c
	mov r3, #0xd8
_021D1A3E:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, #0x10
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x10
	bl sub_0201A9A4
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, #0x20
	mov r2, #0x25
	mov r3, #0x60
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A9A4
	add r0, r5, #0
	bl ov110_021D1BEC
	add r1, r5, #0
	add r2, r0, #0
	add r0, r5, #0
	add r1, #0x30
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r5, #5]
	bl sub_0205E5E0
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x30
	mov r2, #0x2a
	mov r3, #0x70
	bl ov110_021D1324
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, #0x30
	mov r2, #0x29
	mov r3, #0xe0
	bl ov110_021D1324
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A9A4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x40
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r5, #5]
	bl sub_0205E608
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x40
	mov r2, #0x2a
	mov r3, #0x70
	bl ov110_021D1324
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E680
	add r6, r0, #0
	ldrb r0, [r5, #5]
	bl sub_0205E680
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, #0x40
	mov r2, #0x29
	mov r3, #0xe0
	bl ov110_021D1324
	add r5, #0x40
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov110_021D19F4

	thumb_func_start ov110_021D1BEC
ov110_021D1BEC: ; 0x021D1BEC
	push {r3, r4, lr}
	sub sp, #4
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D1C14
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6c
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6c
	bl sub_02030698
	b _021D1C2A
_021D1C14:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0203041C
	mov r3, #0
	mov r1, #9
	add r2, r4, #0
	str r3, [sp]
	bl sub_02030470
_021D1C2A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021D1C38
	add sp, #4
	mov r0, #0x1e
	pop {r3, r4, pc}
_021D1C38:
	mov r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1BEC

	thumb_func_start ov110_021D1C40
ov110_021D1C40: ; 0x021D1C40
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x19
	mov r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D1C7C
	mov r2, #0x1a
	mov r3, #0xd8
	b _021D1C8A
_021D1C7C:
	cmp r0, #1
	bne _021D1C86
	mov r2, #0x1b
	mov r3, #0xd8
	b _021D1C8A
_021D1C86:
	mov r2, #0x1c
	mov r3, #0xd8
_021D1C8A:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x10
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r0, r4, #0
	bl ov110_021D1D68
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x20
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E700
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x20
	mov r2, #0x2b
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x30
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E728
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x30
	mov r2, #0x2b
	mov r3, #0x70
	bl ov110_021D1324
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1C40

	thumb_func_start ov110_021D1D68
ov110_021D1D68: ; 0x021D1D68
	push {r3, r4, lr}
	sub sp, #4
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D1D90
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6e
	bl sub_02030698
	b _021D1DA6
_021D1D90:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_020305B8
	mov r3, #0
	mov r1, #8
	add r2, r4, #0
	str r3, [sp]
	bl sub_02030600
_021D1DA6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021D1DB4
	add sp, #4
	mov r0, #0x1e
	pop {r3, r4, pc}
_021D1DB4:
	mov r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1D68

	thumb_func_start ov110_021D1DBC
ov110_021D1DBC: ; 0x021D1DBC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x15
	mov r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D1DF6
	mov r2, #0x1a
	b _021D1DF8
_021D1DF6:
	mov r2, #0x1b
_021D1DF8:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	mov r3, #0xd8
	add r0, r4, #0
	add r1, #0x10
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A9A4
	ldrb r1, [r4, #5]
	add r0, r4, #0
	bl ov110_021D20CC
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x30
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E750
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x30
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x30
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x40
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E790
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x40
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r4, #0x40
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov110_021D1DBC

	thumb_func_start ov110_021D1ED8
ov110_021D1ED8: ; 0x021D1ED8
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x15
	mov r3, #8
	bl ov110_021D1324
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, r4, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0x1c
	mov r3, #0xd8
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x20
	mov r2, #0x20
	mov r3, #1
	bl ov110_021D13CC
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201A9A4
	ldrb r1, [r4, #5]
	add r0, r4, #0
	bl ov110_021D20CC
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x50
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E750
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x50
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x60
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl sub_0205E790
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x60
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	mov r2, #0x21
	mov r3, #1
	bl ov110_021D13CC
	add r0, r4, #0
	add r0, #0x70
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #3
	bl ov110_021D20CC
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x80
	mov r3, #1
	bl ov110_021D13CC
	mov r0, #3
	bl sub_0205E750
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x80
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r0, r4, #0
	add r0, #0x80
	bl sub_0201A9A4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x90
	mov r2, #0x1f
	mov r3, #1
	bl ov110_021D13CC
	mov r0, #3
	bl sub_0205E790
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xff
	bl sub_02030698
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov110_021D13F0
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x90
	mov r2, #0x26
	mov r3, #0x70
	bl ov110_021D1324
	add r4, #0x90
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov110_021D1ED8

	thumb_func_start ov110_021D20CC
ov110_021D20CC: ; 0x021D20CC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0202D750
	cmp r4, #6
	bhi _021D2110
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D20EA: ; jump table
	.short _021D20F8 - _021D20EA - 2 ; case 0
	.short _021D20FC - _021D20EA - 2 ; case 1
	.short _021D2100 - _021D20EA - 2 ; case 2
	.short _021D2104 - _021D20EA - 2 ; case 3
	.short _021D2108 - _021D20EA - 2 ; case 4
	.short _021D2110 - _021D20EA - 2 ; case 5
	.short _021D210C - _021D20EA - 2 ; case 6
_021D20F8:
	mov r1, #8
	b _021D2112
_021D20FC:
	mov r1, #9
	b _021D2112
_021D2100:
	mov r1, #0xa
	b _021D2112
_021D2104:
	mov r1, #0xb
	b _021D2112
_021D2108:
	mov r1, #0xc
	b _021D2112
_021D210C:
	mov r1, #0xf
	b _021D2112
_021D2110:
	mov r1, #8
_021D2112:
	mov r2, #0
	bl sub_0202D414
	cmp r0, #1
	bne _021D2120
	mov r0, #0x1e
	pop {r4, pc}
_021D2120:
	mov r0, #0x1d
	pop {r4, pc}
	thumb_func_end ov110_021D20CC

	thumb_func_start ov110_021D2124
ov110_021D2124: ; 0x021D2124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _021D2164 ; =0x021D2278
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, _021D2168 ; =0x021D227C
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _021D2160
_021D213E:
	ldr r2, [sp, #4]
	lsl r6, r4, #4
	lsl r3, r4, #3
	ldr r0, [sp]
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _021D213E
_021D2160:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2164: .word 0x021D2278
_021D2168: .word 0x021D227C
	thumb_func_end ov110_021D2124

	thumb_func_start ov110_021D216C
ov110_021D216C: ; 0x021D216C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021D2190 ; =0x021D227C
	lsl r1, r1, #3
	ldr r5, [r0, r1]
	mov r4, #0
	cmp r5, #0
	bls _021D218E
_021D217C:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _021D217C
_021D218E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2190: .word 0x021D227C
	thumb_func_end ov110_021D216C
	; 0x021D2194


	.rodata
	.incbin "incbin/overlay110_rodata.bin"
