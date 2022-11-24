	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov93_021D0D80
ov93_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x48
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xa0
	mov r2, #0x48
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xa0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x9c
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9d
	strb r1, [r0]
	mov r0, #0x48
	bl sub_020203AC
	str r0, [r4, #0]
	bl ov93_021D0FA8
	add r0, r4, #0
	bl ov93_021D102C
	add r0, sp, #0xc
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	ldr r2, _021D0E64 ; =0x021D14BC
	str r1, [sp, #8]
	ldr r1, _021D0E68 ; =0x0029AEC1
	ldr r3, _021D0E6C ; =0x000005C1
	bl sub_020206D0
	ldr r0, [r4, #0]
	bl sub_020203D4
	mov r4, #0
	mov r7, #2
	mov r6, #4
_021D0DF8:
	ldr r2, [r5, #4]
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r3, r2, r1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r3, r7]
	ldrsh r3, [r3, r6]
	add r0, r4, #0
	bl sub_020AF51C
	ldr r2, [r5, #4]
	lsl r1, r4, #1
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	add r0, r4, #0
	bl sub_020AF558
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D0DF8
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r2, #0x22]
	ldr r2, [r2, #0x28]
	bl sub_020AF56C
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x24]
	ldrh r1, [r2, #0x26]
	ldr r2, [r2, #0x2c]
	bl sub_020AF590
	ldr r3, [r5, #4]
	ldr r0, [r3, #0x40]
	str r0, [sp]
	ldr r0, [r3, #0x44]
	str r0, [sp, #4]
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x34]
	ldr r2, [r3, #0x38]
	ldr r3, [r3, #0x3c]
	bl sub_020AF5B4
	mov r0, #0
	mov r1, #0x48
	bl sub_0208C120
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0E64: .word 0x021D14BC
_021D0E68: .word 0x0029AEC1
_021D0E6C: .word 0x000005C1
	thumb_func_end ov93_021D0D80

	thumb_func_start ov93_021D0E70
ov93_021D0E70: ; 0x021D0E70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r6, _021D0F4C ; =0x021D14CC
	add r2, r0, #0
	add r5, r1, #0
	add r4, sp, #0x18
	mov r3, #4
_021D0E7E:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021D0E7E
	ldr r0, [r6, #0]
	add r3, sp, #0xc
	str r0, [r4, #0]
	ldr r4, _021D0F50 ; =0x021D149C
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, sp, #0
	str r0, [r3, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r2, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D0EB4
	cmp r0, #1
	beq _021D0EC2
	b _021D0F02
_021D0EB4:
	ldr r0, _021D0F54 ; =0x000006DC
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D0F02
_021D0EC2:
	add r0, r4, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D0EF4
	add r0, r4, #0
	add r0, #0x80
	ldr r2, [r0, #0]
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0xc
	add r1, r1, r0
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021D0F02
	add r1, r4, #0
	mov r0, #1
	add r1, #0x9d
	strb r0, [r1]
	mov r1, #0x48
	bl sub_0208C120
	b _021D0F02
_021D0EF4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0F02
	add sp, #0x3c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D0F02:
	mov r3, #1
	mov r2, #0
	lsl r3, r3, #0xc
_021D0F08:
	lsl r0, r2, #2
	add r0, r4, r0
	add r0, #0x80
	ldr r1, [r0, #0]
	ldr r5, [r1, #8]
	ldr r0, [r1, #0]
	ldrh r5, [r5, #4]
	add r0, r0, r3
	lsl r5, r5, #0xc
	cmp r0, r5
	bge _021D0F20
	str r0, [r1, #0]
_021D0F20:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _021D0F08
	bl sub_020241B4
	bl sub_020203EC
	add r0, r4, #4
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl sub_0201CA74
	mov r0, #1
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D0F4C: .word 0x021D14CC
_021D0F50: .word 0x021D149C
_021D0F54: .word 0x000006DC
	thumb_func_end ov93_021D0E70

	thumb_func_start ov93_021D0F58
ov93_021D0F58: ; 0x021D0F58
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	add r7, r6, #0
	mov r4, #0
	add r7, #0x70
_021D0F68:
	lsl r0, r4, #2
	add r5, r6, r0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl sub_020B2CD8
	ldr r0, [r5, #0x60]
	bl sub_020181C4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D0F68
	ldr r0, [r6, #0x5c]
	bl sub_020181C4
	ldr r0, [r6, #0]
	bl sub_020203B8
	ldr r0, [sp]
	bl sub_02006830
	bl sub_0201CBA0
	mov r0, #0x48
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov93_021D0F58

	thumb_func_start ov93_021D0FA8
ov93_021D0FA8: ; 0x021D0FA8
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0FF8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0FFC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bl ov93_021D100C
	mov r0, #0x48
	bl sub_0201CAF4
	ldr r2, _021D1000 ; =0x04000060
	ldr r0, _021D1004 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D1008 ; =0x021D14A8
	bl sub_020BFD2C
	bl sub_0201FFE8
	pop {r3, pc}
	nop
_021D0FF8: .word 0xFFFFE0FF
_021D0FFC: .word 0x04001000
_021D1000: .word 0x04000060
_021D1004: .word 0xFFFFCFFF
_021D1008: .word 0x021D14A8
	thumb_func_end ov93_021D0FA8

	thumb_func_start ov93_021D100C
ov93_021D100C: ; 0x021D100C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1028 ; =0x021D14F0
	add r3, sp, #0
	mov r2, #5
_021D1016:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1016
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1028: .word 0x021D14F0
	thumb_func_end ov93_021D100C

	thumb_func_start ov93_021D102C
ov93_021D102C: ; 0x021D102C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x78
	mov r1, #0x48
	bl sub_02006C24
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0x48
	mov r2, #4
	bl sub_020182CC
	add r1, r5, #0
	add r1, #0x9c
	ldrb r2, [r1]
	mov r1, #0xa
	ldr r0, [sp]
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D1118 ; =0x021D15A0
	mov r2, #0x48
	ldrh r1, [r1, r3]
	bl sub_02006CB8
	add r1, r5, #0
	add r2, r5, #0
	str r0, [r5, #0x5c]
	add r0, r5, #4
	add r1, #0x58
	add r2, #0x5c
	bl sub_0201CA3C
	ldr r0, [r5, #0x5c]
	bl sub_020B3C1C
	str r0, [sp, #4]
	ldr r0, [r5, #0x58]
	mov r1, #0
	mov r2, #0x40
	bl sub_020B2CE4
	ldr r0, [r5, #0x58]
	mov r1, #0
	mov r2, #0x80
	bl sub_020B2CE4
	mov r2, #2
	ldr r0, [r5, #0x58]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020B2CE4
	mov r2, #1
	ldr r0, [r5, #0x58]
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020B2CE4
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x70
	mov r6, #0
	str r0, [sp, #8]
_021D10AE:
	add r1, r5, #0
	add r1, #0x9c
	ldrb r3, [r1]
	lsl r0, r6, #2
	add r4, r5, r0
	add r2, r3, #0
	mov r1, #0xa
	mul r2, r1
	ldr r3, _021D1118 ; =0x021D15A0
	lsl r1, r6, #1
	add r2, r3, r2
	add r1, r1, r2
	ldrh r1, [r1, #2]
	ldr r0, [sp]
	mov r2, #0x48
	bl sub_02006CB8
	str r0, [r4, #0x60]
	mov r1, #0
	bl sub_020B3C5C
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x58]
	add r1, r7, #0
	bl sub_020B2CB4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x58]
	ldr r3, [sp, #4]
	add r1, r7, #0
	bl sub_020AE4F0
	add r4, #0x80
	ldr r1, [r4, #0]
	add r0, r5, #4
	bl sub_020AE77C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021D10AE
	ldr r0, [sp]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1118: .word 0x021D15A0
	thumb_func_end ov93_021D102C

	thumb_func_start ov93_021D111C
ov93_021D111C: ; 0x021D111C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x48
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0x48
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x98
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x94
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x95
	strb r1, [r0]
	mov r0, #0x48
	bl sub_020203AC
	str r0, [r4, #0]
	bl ov93_021D133C
	add r0, r4, #0
	bl ov93_021D13C0
	add r0, sp, #0xc
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	ldr r2, _021D1200 ; =0x021D1538
	str r1, [sp, #8]
	ldr r1, _021D1204 ; =0x0029AEC1
	ldr r3, _021D1208 ; =0x000005C1
	bl sub_020206D0
	ldr r0, [r4, #0]
	bl sub_020203D4
	mov r4, #0
	mov r7, #2
	mov r6, #4
_021D1194:
	ldr r2, [r5, #4]
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r3, r2, r1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r3, r7]
	ldrsh r3, [r3, r6]
	add r0, r4, #0
	bl sub_020AF51C
	ldr r2, [r5, #4]
	lsl r1, r4, #1
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	add r0, r4, #0
	bl sub_020AF558
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D1194
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r2, #0x22]
	ldr r2, [r2, #0x28]
	bl sub_020AF56C
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x24]
	ldrh r1, [r2, #0x26]
	ldr r2, [r2, #0x2c]
	bl sub_020AF590
	ldr r3, [r5, #4]
	ldr r0, [r3, #0x40]
	str r0, [sp]
	ldr r0, [r3, #0x44]
	str r0, [sp, #4]
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x34]
	ldr r2, [r3, #0x38]
	ldr r3, [r3, #0x3c]
	bl sub_020AF5B4
	mov r0, #0
	mov r1, #0x48
	bl sub_0208C120
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1200: .word 0x021D1538
_021D1204: .word 0x0029AEC1
_021D1208: .word 0x000005C1
	thumb_func_end ov93_021D111C

	thumb_func_start ov93_021D120C
ov93_021D120C: ; 0x021D120C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r6, _021D12E4 ; =0x021D1548
	add r2, r0, #0
	add r5, r1, #0
	add r4, sp, #0x18
	mov r3, #4
_021D121A:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021D121A
	ldr r0, [r6, #0]
	add r3, sp, #0xc
	str r0, [r4, #0]
	ldr r4, _021D12E8 ; =0x021D1518
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, sp, #0
	str r0, [r3, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r2, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D1250
	cmp r0, #1
	beq _021D125E
	b _021D129A
_021D1250:
	ldr r0, _021D12EC ; =0x000006DC
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D129A
_021D125E:
	add r0, r4, #0
	add r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D128C
	ldr r2, [r4, #0x7c]
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0xc
	add r1, r1, r0
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021D129A
	add r1, r4, #0
	mov r0, #1
	add r1, #0x95
	strb r0, [r1]
	mov r1, #0x48
	bl sub_0208C120
	b _021D129A
_021D128C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D129A
	add sp, #0x3c
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D129A:
	mov r3, #1
	mov r2, #0
	lsl r3, r3, #0xc
_021D12A0:
	lsl r0, r2, #2
	add r0, r4, r0
	ldr r1, [r0, #0x7c]
	ldr r5, [r1, #8]
	ldr r0, [r1, #0]
	ldrh r5, [r5, #4]
	add r0, r0, r3
	lsl r5, r5, #0xc
	cmp r0, r5
	bge _021D12B6
	str r0, [r1, #0]
_021D12B6:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	blo _021D12A0
	bl sub_020241B4
	bl sub_020203EC
	add r0, r4, #4
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl sub_0201CA74
	mov r0, #1
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021D12E4: .word 0x021D1548
_021D12E8: .word 0x021D1518
_021D12EC: .word 0x000006DC
	thumb_func_end ov93_021D120C

	thumb_func_start ov93_021D12F0
ov93_021D12F0: ; 0x021D12F0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	add r7, r6, #0
	mov r4, #0
	add r7, #0x6c
_021D1300:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r1, [r5, #0x7c]
	add r0, r7, #0
	bl sub_020B2CD8
	ldr r0, [r5, #0x60]
	bl sub_020181C4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D1300
	ldr r0, [r6, #0x5c]
	bl sub_020181C4
	ldr r0, [r6, #0]
	bl sub_020203B8
	ldr r0, [sp]
	bl sub_02006830
	bl sub_0201CBA0
	mov r0, #0x48
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov93_021D12F0

	thumb_func_start ov93_021D133C
ov93_021D133C: ; 0x021D133C
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D138C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1390 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bl ov93_021D13A0
	mov r0, #0x48
	bl sub_0201CAF4
	ldr r2, _021D1394 ; =0x04000060
	ldr r0, _021D1398 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D139C ; =0x021D1524
	bl sub_020BFD2C
	bl sub_0201FFE8
	pop {r3, pc}
	nop
_021D138C: .word 0xFFFFE0FF
_021D1390: .word 0x04001000
_021D1394: .word 0x04000060
_021D1398: .word 0xFFFFCFFF
_021D139C: .word 0x021D1524
	thumb_func_end ov93_021D133C

	thumb_func_start ov93_021D13A0
ov93_021D13A0: ; 0x021D13A0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D13BC ; =0x021D156C
	add r3, sp, #0
	mov r2, #5
_021D13AA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D13AA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D13BC: .word 0x021D156C
	thumb_func_end ov93_021D13A0

	thumb_func_start ov93_021D13C0
ov93_021D13C0: ; 0x021D13C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x9c
	mov r1, #0x48
	bl sub_02006C24
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #0x48
	mov r2, #4
	bl sub_020182CC
	add r1, r5, #0
	add r1, #0x94
	ldrb r1, [r1]
	ldr r0, [sp]
	lsl r2, r1, #3
	ldr r1, _021D1498 ; =0x021D15C8
	ldrh r1, [r1, r2]
	mov r2, #0x48
	bl sub_02006CB8
	add r1, r5, #0
	add r2, r5, #0
	str r0, [r5, #0x5c]
	add r0, r5, #4
	add r1, #0x58
	add r2, #0x5c
	bl sub_0201CA3C
	ldr r0, [r5, #0x5c]
	bl sub_020B3C1C
	str r0, [sp, #4]
	ldr r0, [r5, #0x58]
	mov r1, #0
	mov r2, #0x40
	bl sub_020B2CE4
	ldr r0, [r5, #0x58]
	mov r1, #0
	mov r2, #0x80
	bl sub_020B2CE4
	mov r2, #2
	ldr r0, [r5, #0x58]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020B2CE4
	mov r2, #1
	ldr r0, [r5, #0x58]
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020B2CE4
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x6c
	mov r4, #0
	str r0, [sp, #8]
_021D143E:
	add r1, r5, #0
	add r1, #0x94
	ldrb r1, [r1]
	lsl r0, r4, #2
	add r6, r5, r0
	lsl r3, r1, #3
	ldr r1, _021D1498 ; =0x021D15C8
	lsl r2, r4, #1
	add r1, r1, r3
	add r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r0, [sp]
	mov r2, #0x48
	bl sub_02006CB8
	str r0, [r6, #0x60]
	mov r1, #0
	bl sub_020B3C5C
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x58]
	add r1, r7, #0
	bl sub_020B2CB4
	str r0, [r6, #0x7c]
	ldr r2, [r5, #0x58]
	ldr r3, [sp, #4]
	add r1, r7, #0
	bl sub_020AE4F0
	ldr r1, [r6, #0x7c]
	add r0, r5, #4
	bl sub_020AE77C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D143E
	ldr r0, [sp]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1498: .word 0x021D15C8
	thumb_func_end ov93_021D13C0
	; 0x021D149C

	.incbin "incbin/overlay93.bin"
