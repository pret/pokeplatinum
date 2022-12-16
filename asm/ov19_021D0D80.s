	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov19_021D0D80
ov19_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #9
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r2, #0xf
	mov r0, #3
	mov r1, #0xa
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r1, #0x87
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #9
	bl sub_0200681C
	add r4, r0, #0
	beq _021D0DE4
	add r0, r5, #0
	bl sub_02006840
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D4BE0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, #0
	bl ov19_021D61B0
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov19_021D0ECC
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _021D0DE8 ; =ov19_021D0F20
	add r0, r4, #0
	bl ov19_021D0EB0
_021D0DE4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0DE8: .word ov19_021D0F20
	thumb_func_end ov19_021D0D80

	thumb_func_start ov19_021D0DEC
ov19_021D0DEC: ; 0x021D0DEC
	push {r4, lr}
	bl sub_0200682C
	mov r1, #0x6b
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D0E08
	add r1, #8
	add r1, r4, r1
	blx r2
	mov r0, #0
	pop {r4, pc}
_021D0E08:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0E4A
	ldr r0, _021D0E54 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r2
	beq _021D0E3E
	sub r1, #0x98
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #1
	bne _021D0E3E
	add r0, r4, #0
	bl ov19_021D5DD8
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2b
	bl ov19_021D6594
	mov r0, #0
	pop {r4, pc}
_021D0E3E:
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	pop {r4, pc}
_021D0E4A:
	bl sub_02022974
	mov r0, #1
	pop {r4, pc}
	nop
_021D0E54: .word 0x021BF67C
	thumb_func_end ov19_021D0DEC

	thumb_func_start ov19_021D0E58
ov19_021D0E58: ; 0x021D0E58
	push {r4, lr}
	bl sub_0200682C
	mov r1, #0x49
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x95
	bl sub_0207A230
	cmp r0, #0
	bne _021D0E7E
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202CC98
	bl sub_0202CCA8
_021D0E7E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	add r0, r4, #0
	bl ov19_021D4D58
	mov r0, #9
	bl sub_0201807C
	mov r0, #0xa
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D0E58

	thumb_func_start ov19_021D0EA0
ov19_021D0EA0: ; 0x021D0EA0
	mov r2, #0x6a
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #0
	add r2, #8
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D0EA0

	thumb_func_start ov19_021D0EB0
ov19_021D0EB0: ; 0x021D0EB0
	mov r2, #0x6b
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #0
	add r2, #8
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D0EB0

	thumb_func_start ov19_021D0EC0
ov19_021D0EC0: ; 0x021D0EC0
	mov r1, #0x6b
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D0EC0

	thumb_func_start ov19_021D0ECC
ov19_021D0ECC: ; 0x021D0ECC
	push {r3, lr}
	bl ov19_021D5E10
	cmp r0, #4
	bhi _021D0EEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0EE2: ; jump table
	.short _021D0EEC - _021D0EE2 - 2 ; case 0
	.short _021D0EF0 - _021D0EE2 - 2 ; case 1
	.short _021D0EF4 - _021D0EE2 - 2 ; case 2
	.short _021D0EFC - _021D0EE2 - 2 ; case 3
	.short _021D0EF8 - _021D0EE2 - 2 ; case 4
_021D0EEC:
	ldr r0, _021D0F00 ; =ov19_021D0FF0
	pop {r3, pc}
_021D0EF0:
	ldr r0, _021D0F04 ; =ov19_021D1270
	pop {r3, pc}
_021D0EF4:
	ldr r0, _021D0F08 ; =ov19_021D15C0
	pop {r3, pc}
_021D0EF8:
	ldr r0, _021D0F0C ; =ov19_021D17AC
	pop {r3, pc}
_021D0EFC:
	ldr r0, _021D0F10 ; =ov19_021D19B8
	pop {r3, pc}
	; .align 2, 0
_021D0F00: .word ov19_021D0FF0
_021D0F04: .word ov19_021D1270
_021D0F08: .word ov19_021D15C0
_021D0F0C: .word ov19_021D17AC
_021D0F10: .word ov19_021D19B8
	thumb_func_end ov19_021D0ECC

	thumb_func_start ov19_021D0F14
ov19_021D0F14: ; 0x021D0F14
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #1
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov19_021D0F14

	thumb_func_start ov19_021D0F20
ov19_021D0F20: ; 0x021D0F20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D0F36
	cmp r0, #1
	beq _021D0F4A
	cmp r0, #2
	beq _021D0F6E
	pop {r3, r4, r5, pc}
_021D0F36:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D0F4A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0F84
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D0F6E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0F84
	add r0, r5, #0
	bl ov19_021D0EC0
_021D0F84:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D0F20

	thumb_func_start ov19_021D0F88
ov19_021D0F88: ; 0x021D0F88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D0F9E
	cmp r0, #1
	beq _021D0FB2
	cmp r0, #2
	beq _021D0FD6
	pop {r3, r4, r5, pc}
_021D0F9E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D0FB2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0FEC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D0FD6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0FEC
	add r0, r5, #0
	bl ov19_021D0EC0
_021D0FEC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D0F88

	thumb_func_start ov19_021D0FF0
ov19_021D0FF0: ; 0x021D0FF0
	push {r4, lr}
	mov r1, #0x1b
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D100C
	cmp r2, #1
	bne _021D1004
	b _021D11DE
_021D1004:
	cmp r2, #2
	bne _021D100A
	b _021D11FC
_021D100A:
	b _021D1210
_021D100C:
	ldr r1, _021D1214 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _021D103C
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021D103C
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1032
	ldr r1, _021D1218 ; =ov19_021D20A4
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1032:
	ldr r1, _021D121C ; =ov19_021D2308
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D103C:
	ldr r0, _021D1214 ; =0x021BF67C
	mov r2, #2
	ldr r1, [r0, #0x48]
	tst r1, r2
	beq _021D1050
	ldr r1, _021D1220 ; =ov19_021D1F5C
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1050:
	ldr r0, [r0, #0x44]
	lsl r1, r2, #8
	tst r1, r0
	beq _021D1068
	add r0, r4, #0
	bl ov19_021D5CE8
	ldr r1, _021D1224 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1068:
	add r2, #0xfe
	add r1, r0, #0
	tst r1, r2
	beq _021D1080
	add r0, r4, #0
	bl ov19_021D5CBC
	ldr r1, _021D1224 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1080:
	add r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D10B8
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D10AC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D10AC:
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021D1210
_021D10B8:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D10DA
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1102
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D10DC
	cmp r0, #1
	beq _021D10E6
_021D10DA:
	b _021D11CE
_021D10DC:
	ldr r1, _021D1228 ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D11CE
_021D10E6:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D10FA
	ldr r1, _021D122C ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D11CE
_021D10FA:
	ldr r0, _021D1230 ; =0x000005F3
	bl sub_02005748
	b _021D11CE
_021D1102:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1116
	cmp r0, #1
	beq _021D1164
	cmp r0, #2
	beq _021D11B2
	b _021D11CE
_021D1116:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D115C
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D115C
	ldr r0, _021D1234 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #1
	b _021D11D0
_021D115C:
	ldr r0, _021D1230 ; =0x000005F3
	bl sub_02005748
	b _021D11CE
_021D1164:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D11AA
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D11AA
	ldr r0, _021D1234 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #1
	b _021D11D0
_021D11AA:
	ldr r0, _021D1230 ; =0x000005F3
	bl sub_02005748
	b _021D11CE
_021D11B2:
	ldr r0, _021D1234 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B80
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl ov19_021D6594
	mov r0, #1
	b _021D11D0
_021D11CE:
	mov r0, #0
_021D11D0:
	cmp r0, #0
	beq _021D1210
	mov r0, #0x1b
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1210
_021D11DE:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1210
	add r0, r4, #0
	bl ov19_021D0ECC
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D0EA0
	b _021D1210
_021D11FC:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D1210
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021D1210:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1214: .word 0x021BF67C
_021D1218: .word ov19_021D20A4
_021D121C: .word ov19_021D2308
_021D1220: .word ov19_021D1F5C
_021D1224: .word ov19_021D45A8
_021D1228: .word ov19_021D4640
_021D122C: .word ov19_021D4938
_021D1230: .word 0x000005F3
_021D1234: .word 0x000005DD
	thumb_func_end ov19_021D0FF0

	thumb_func_start ov19_021D1238
ov19_021D1238: ; 0x021D1238
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov19_021D5E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D1256
	mov r0, #0x1e
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1256:
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D126C
	mov r0, #0x1d
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D126C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D1238

	thumb_func_start ov19_021D1270
ov19_021D1270: ; 0x021D1270
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x1b
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #6
	bhi _021D12C0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D128C: ; jump table
	.short _021D129A - _021D128C - 2 ; case 0
	.short _021D1474 - _021D128C - 2 ; case 1
	.short _021D148E - _021D128C - 2 ; case 2
	.short _021D14F8 - _021D128C - 2 ; case 3
	.short _021D1538 - _021D128C - 2 ; case 4
	.short _021D1556 - _021D128C - 2 ; case 5
	.short _021D15A4 - _021D128C - 2 ; case 6
_021D129A:
	ldr r1, _021D1584 ; =0x021BF67C
	mov r2, #1
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021D12E0
	bl ov19_021D5E2C
	cmp r0, #6
	bne _021D12B6
	mov r0, #0x1b
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D12B6:
	add r0, r4, #0
	bl ov19_021D5E4C
	cmp r0, #0
	bne _021D12C2
_021D12C0:
	b _021D15B8
_021D12C2:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D12D6
	ldr r1, _021D1588 ; =ov19_021D20A4
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D15B8
_021D12D6:
	ldr r1, _021D158C ; =ov19_021D2308
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D15B8
_021D12E0:
	mov r2, #2
	tst r2, r1
	bne _021D130A
	mov r2, #0x10
	tst r1, r2
	beq _021D12F6
	bl ov19_021D5E2C
	mov r1, #1
	tst r0, r1
	bne _021D130A
_021D12F6:
	ldr r0, _021D1584 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021D1314
	add r0, r4, #0
	bl ov19_021D5E2C
	cmp r0, #6
	bne _021D1314
_021D130A:
	mov r0, #0x1b
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1314:
	ldr r0, _021D1584 ; =0x021BF67C
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D134E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1344
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D1344:
	mov r0, #0x1b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D134E:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1370
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1398
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1372
	cmp r0, #1
	beq _021D137C
_021D1370:
	b _021D1464
_021D1372:
	ldr r1, _021D1590 ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1464
_021D137C:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1390
	ldr r1, _021D1594 ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1464
_021D1390:
	ldr r0, _021D1598 ; =0x000005F3
	bl sub_02005748
	b _021D1464
_021D1398:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D13AC
	cmp r0, #1
	beq _021D13FA
	cmp r0, #2
	beq _021D1448
	b _021D1464
_021D13AC:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D13F2
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D13F2
	ldr r0, _021D159C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #1
	b _021D1466
_021D13F2:
	ldr r0, _021D1598 ; =0x000005F3
	bl sub_02005748
	b _021D1464
_021D13FA:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D1440
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1440
	ldr r0, _021D159C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #1
	b _021D1466
_021D1440:
	ldr r0, _021D1598 ; =0x000005F3
	bl sub_02005748
	b _021D1464
_021D1448:
	ldr r0, _021D159C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B80
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl ov19_021D6594
	mov r0, #1
	b _021D1466
_021D1464:
	mov r0, #0
_021D1466:
	cmp r0, #0
	beq _021D1482
	mov r0, #0x1b
	mov r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1474:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	bne _021D1484
_021D1482:
	b _021D15B8
_021D1484:
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D148E:
	bl ov19_021D5E08
	cmp r0, #0
	bne _021D14A8
	ldr r1, _021D15A0 ; =ov19_021D1F5C
	add r0, r4, #0
	bl ov19_021D0EB0
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14A8:
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D14E2
	add r0, r4, #0
	add r1, sp, #0
	bl ov19_021D1238
	cmp r0, #0
	beq _021D14E2
	ldr r0, _021D1598 ; =0x000005F3
	bl sub_02005748
	ldr r1, [sp]
	add r0, r4, #0
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14E2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x24
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14F8:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #0x24
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	add r0, r4, #0
	bl ov19_021D52D0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D152E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D152E:
	mov r0, #0x1b
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1538:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	add r0, r4, #0
	bl ov19_021D0ECC
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D0EA0
	b _021D15B8
_021D1556:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	ldr r0, _021D1584 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D15B8
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
	; .align 2, 0
_021D1584: .word 0x021BF67C
_021D1588: .word ov19_021D20A4
_021D158C: .word ov19_021D2308
_021D1590: .word ov19_021D4640
_021D1594: .word ov19_021D4938
_021D1598: .word 0x000005F3
_021D159C: .word 0x000005DD
_021D15A0: .word ov19_021D1F5C
_021D15A4:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D15B8
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021D15B8:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D1270

	thumb_func_start ov19_021D15C0
ov19_021D15C0: ; 0x021D15C0
	push {r3, r4, r5, lr}
	mov r3, #0x1b
	add r4, r0, #0
	lsl r3, r3, #4
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _021D15D6
	cmp r1, #1
	bne _021D15D4
	b _021D176C
_021D15D4:
	b _021D1788
_021D15D6:
	ldr r5, _021D178C ; =0x021BF67C
	add r2, r3, #0
	ldr r1, [r5, #0x44]
	add r2, #0x70
	tst r2, r1
	beq _021D15F0
	bl ov19_021D5CE8
	ldr r1, _021D1790 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D15F0:
	sub r3, #0xa0
	add r2, r1, #0
	tst r2, r3
	beq _021D1606
	bl ov19_021D5CBC
	ldr r1, _021D1790 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D1606:
	ldr r3, [r5, #0x48]
	mov r2, #1
	tst r2, r3
	beq _021D1616
	ldr r1, _021D1794 ; =ov19_021D2694
	bl ov19_021D0EB0
	b _021D1788
_021D1616:
	mov r2, #2
	tst r2, r3
	beq _021D1624
	ldr r1, _021D1798 ; =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1788
_021D1624:
	add r0, r1, #0
	add r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D165C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1652
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D1652:
	mov r0, #0x1b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1788
_021D165C:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D167E
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D16A6
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1680
	cmp r0, #1
	beq _021D168A
_021D167E:
	b _021D1788
_021D1680:
	ldr r1, _021D179C ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D168A:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D169E
	ldr r1, _021D17A0 ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D169E:
	ldr r0, _021D17A4 ; =0x000005F3
	bl sub_02005748
	b _021D1788
_021D16A6:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D16BA
	cmp r0, #1
	beq _021D1706
	cmp r0, #2
	beq _021D1752
	b _021D1788
_021D16BA:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D16FE
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D16FE
	ldr r0, _021D17A8 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1788
_021D16FE:
	ldr r0, _021D17A4 ; =0x000005F3
	bl sub_02005748
	b _021D1788
_021D1706:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D174A
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D174A
	ldr r0, _021D17A8 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1788
_021D174A:
	ldr r0, _021D17A4 ; =0x000005F3
	bl sub_02005748
	b _021D1788
_021D1752:
	ldr r0, _021D17A8 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B80
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl ov19_021D6594
	b _021D1788
_021D176C:
	sub r3, #0x9c
	ldr r0, [r4, r3]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1788
	add r0, r4, #0
	bl ov19_021D0ECC
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D0EA0
_021D1788:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D178C: .word 0x021BF67C
_021D1790: .word ov19_021D45A8
_021D1794: .word ov19_021D2694
_021D1798: .word ov19_021D1F5C
_021D179C: .word ov19_021D4640
_021D17A0: .word ov19_021D4938
_021D17A4: .word 0x000005F3
_021D17A8: .word 0x000005DD
	thumb_func_end ov19_021D15C0

	thumb_func_start ov19_021D17AC
ov19_021D17AC: ; 0x021D17AC
	push {r3, r4, r5, lr}
	mov r1, #0x1b
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D17C8
	cmp r2, #1
	bne _021D17C0
	b _021D195E
_021D17C0:
	cmp r2, #2
	bne _021D17C6
	b _021D1976
_021D17C6:
	b _021D1992
_021D17C8:
	ldr r3, _021D1998 ; =0x021BF67C
	mov r1, #1
	ldr r5, [r3, #0x48]
	tst r1, r5
	beq _021D17DA
	ldr r1, _021D199C ; =ov19_021D1DEC
	bl ov19_021D0EB0
	b _021D1992
_021D17DA:
	mov r2, #2
	add r1, r5, #0
	tst r1, r2
	beq _021D17EA
	ldr r1, _021D19A0 ; =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1992
_021D17EA:
	ldr r3, [r3, #0x44]
	lsl r1, r2, #8
	tst r1, r3
	beq _021D1800
	bl ov19_021D5CE8
	ldr r1, _021D19A4 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1800:
	add r2, #0xfe
	add r1, r3, #0
	tst r1, r2
	beq _021D1816
	bl ov19_021D5CBC
	ldr r1, _021D19A4 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1816:
	add r0, r3, #0
	add r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D184E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1844
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D1844:
	mov r0, #0x1b
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1992
_021D184E:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1870
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1898
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1872
	cmp r0, #1
	beq _021D187C
_021D1870:
	b _021D1992
_021D1872:
	ldr r1, _021D19A8 ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D187C:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1890
	ldr r1, _021D19AC ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1890:
	ldr r0, _021D19B0 ; =0x000005F3
	bl sub_02005748
	b _021D1992
_021D1898:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D18AC
	cmp r0, #1
	beq _021D18F8
	cmp r0, #2
	beq _021D1944
	b _021D1992
_021D18AC:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D18F0
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D18F0
	ldr r0, _021D19B4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1992
_021D18F0:
	ldr r0, _021D19B0 ; =0x000005F3
	bl sub_02005748
	b _021D1992
_021D18F8:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D193C
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D193C
	ldr r0, _021D19B4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1992
_021D193C:
	ldr r0, _021D19B0 ; =0x000005F3
	bl sub_02005748
	b _021D1992
_021D1944:
	ldr r0, _021D19B4 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B80
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl ov19_021D6594
	b _021D1992
_021D195E:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1992
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1992
_021D1976:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1992
	add r0, r4, #0
	bl ov19_021D0ECC
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D0EA0
_021D1992:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1998: .word 0x021BF67C
_021D199C: .word ov19_021D1DEC
_021D19A0: .word ov19_021D1F5C
_021D19A4: .word ov19_021D45A8
_021D19A8: .word ov19_021D4640
_021D19AC: .word ov19_021D4938
_021D19B0: .word 0x000005F3
_021D19B4: .word 0x000005DD
	thumb_func_end ov19_021D17AC

	thumb_func_start ov19_021D19B8
ov19_021D19B8: ; 0x021D19B8
	push {r3, r4, r5, lr}
	mov r1, #0x1b
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #5
	bhi _021D1AC0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D19D2: ; jump table
	.short _021D19DE - _021D19D2 - 2 ; case 0
	.short _021D1BAE - _021D19D2 - 2 ; case 1
	.short _021D1BD2 - _021D19D2 - 2 ; case 2
	.short _021D1C12 - _021D19D2 - 2 ; case 3
	.short _021D1C2A - _021D19D2 - 2 ; case 4
	.short _021D1C48 - _021D19D2 - 2 ; case 5
_021D19DE:
	ldr r3, _021D1C68 ; =0x021BF67C
	mov r1, #1
	ldr r5, [r3, #0x48]
	tst r1, r5
	beq _021D1A2A
	bl ov19_021D5E08
	cmp r0, #1
	beq _021D1A06
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x22
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A06:
	ldr r0, _021D1C6C ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x12
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A2A:
	mov r2, #2
	add r1, r5, #0
	tst r1, r2
	beq _021D1A3A
	ldr r1, _021D1C70 ; =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1C64
_021D1A3A:
	ldr r3, [r3, #0x44]
	lsl r1, r2, #8
	tst r1, r3
	beq _021D1A50
	bl ov19_021D5CE8
	ldr r1, _021D1C74 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1A50:
	add r2, #0xfe
	add r1, r3, #0
	tst r1, r2
	beq _021D1A66
	bl ov19_021D5CBC
	ldr r1, _021D1C74 ; =ov19_021D45A8
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1A66:
	add r0, r3, #0
	add r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D1A9E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1A94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D1A94:
	mov r0, #0x1b
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A9E:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1AC0
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1AE8
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1AC2
	cmp r0, #1
	beq _021D1ACC
_021D1AC0:
	b _021D1C64
_021D1AC2:
	ldr r1, _021D1C78 ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1ACC:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1AE0
	ldr r1, _021D1C7C ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1AE0:
	ldr r0, _021D1C6C ; =0x000005F3
	bl sub_02005748
	b _021D1C64
_021D1AE8:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1AFC
	cmp r0, #1
	beq _021D1B48
	cmp r0, #2
	beq _021D1B94
	b _021D1C64
_021D1AFC:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D1B40
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1B40
	ldr r0, _021D1C80 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1C64
_021D1B40:
	ldr r0, _021D1C6C ; =0x000005F3
	bl sub_02005748
	b _021D1C64
_021D1B48:
	add r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D1B8C
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1B8C
	ldr r0, _021D1C80 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	b _021D1C64
_021D1B8C:
	ldr r0, _021D1C6C ; =0x000005F3
	bl sub_02005748
	b _021D1C64
_021D1B94:
	ldr r0, _021D1C80 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021D5B80
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl ov19_021D6594
	b _021D1C64
_021D1BAE:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #0x22
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x23
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1BD2:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #0x23
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	add r0, r4, #0
	bl ov19_021D5290
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1C08
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D1C08:
	mov r0, #0x1b
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1C12:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1C2A:
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	add r0, r4, #0
	bl ov19_021D0ECC
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D0EA0
	b _021D1C64
_021D1C48:
	ldr r0, _021D1C68 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _021D1C64
	sub r1, #0x9c
	ldr r0, [r4, r1]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x1b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021D1C64:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1C68: .word 0x021BF67C
_021D1C6C: .word 0x000005F3
_021D1C70: .word ov19_021D1F5C
_021D1C74: .word ov19_021D45A8
_021D1C78: .word ov19_021D4640
_021D1C7C: .word ov19_021D4938
_021D1C80: .word 0x000005DD
	thumb_func_end ov19_021D19B8

	thumb_func_start ov19_021D1C84
ov19_021D1C84: ; 0x021D1C84
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D1CC8
	mov r0, #0x4b
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _021D1CA2
	mov r0, #0
	b _021D1CA4
_021D1CA2:
	mov r0, #2
_021D1CA4:
	ldr r1, _021D1DA0 ; =0x0000013D
	mov r2, #1
	strb r0, [r4, r1]
	add r0, r1, #2
	strb r2, [r4, r0]
	mov r2, #0
	add r0, r1, #3
	strb r2, [r4, r0]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #7
	strh r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x67
	ldr r0, [r4, r0]
	sub r1, #0xd
	str r0, [r4, r1]
	b _021D1D4A
_021D1CC8:
	add r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D1D16
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207999C
	add r1, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_02079C9C
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #2
	add r0, #0x11
	strb r2, [r4, r0]
	mov r0, #0x1e
	add r1, #0x13
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov19_021D5E24
	mov r1, #5
	lsl r1, r1, #6
	strb r0, [r4, r1]
	mov r2, #0
	sub r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #4
	strh r2, [r4, r0]
	b _021D1D4A
_021D1D16:
	mov r1, #0x49
	lsl r1, r1, #2
	add r0, r1, #0
	ldr r2, [r4, r1]
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #1
	add r0, #0x19
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	bl sub_0207A0F8
	ldr r1, _021D1DA4 ; =0x0000013F
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov19_021D5E2C
	mov r1, #5
	lsl r1, r1, #6
	strb r0, [r4, r1]
	mov r2, #0
	sub r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #4
	strh r2, [r4, r0]
_021D1D4A:
	mov r0, #0x55
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0x38
	ldr r0, [r4, r0]
	bl sub_0207A274
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x2c
	ldr r0, [r4, r1]
	bl sub_0208C324
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x3c
	ldr r0, [r4, r1]
	bl sub_0202D79C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	add r0, r4, r1
	ldr r1, _021D1DA8 ; =0x021DFE38
	bl sub_0208D720
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02025E38
	add r1, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0208E9C0
	pop {r4, pc}
	nop
_021D1DA0: .word 0x0000013D
_021D1DA4: .word 0x0000013F
_021D1DA8: .word 0x021DFE38
	thumb_func_end ov19_021D1C84

	thumb_func_start ov19_021D1DAC
ov19_021D1DAC: ; 0x021D1DAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D1DC0
	cmp r1, #1
	beq _021D1DD6
	b _021D1DE6
_021D1DC0:
	sub r0, #0x9c
	ldr r0, [r4, r0]
	mov r1, #0x33
	bl ov19_021D6594
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _021D1DE6
_021D1DD6:
	sub r0, #0x9c
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D1DE6
	mov r0, #1
	pop {r4, pc}
_021D1DE6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D1DAC

	thumb_func_start ov19_021D1DEC
ov19_021D1DEC: ; 0x021D1DEC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bls _021D1DFA
	b _021D1F46
_021D1DFA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1E06: ; jump table
	.short _021D1E14 - _021D1E06 - 2 ; case 0
	.short _021D1E6C - _021D1E06 - 2 ; case 1
	.short _021D1EA4 - _021D1E06 - 2 ; case 2
	.short _021D1F46 - _021D1E06 - 2 ; case 3
	.short _021D1F00 - _021D1E06 - 2 ; case 4
	.short _021D1F14 - _021D1E06 - 2 ; case 5
	.short _021D1F30 - _021D1E06 - 2 ; case 6
_021D1E14:
	bl ov19_021D5E08
	cmp r0, #3
	bne _021D1E30
	add r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D1E30
	ldr r1, _021D1F48 ; =ov19_021D4184
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D1E30:
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D1E5A
	ldr r0, _021D1F4C ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x11
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1E5A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x22
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1E6C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x22
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	ldr r0, _021D1F50 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xb
	bl ov19_021D5408
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DF964
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1EA4:
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D1EC4
	bge _021D1EF0
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bgt _021D1F46
	sub r1, r2, #1
	cmp r0, r1
	blt _021D1F46
	beq _021D1ECA
	cmp r0, r2
	beq _021D1ED8
	pop {r3, r4, r5, pc}
_021D1EC4:
	cmp r0, #0x37
	beq _021D1ED8
	pop {r3, r4, r5, pc}
_021D1ECA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D1ED8:
	ldr r0, _021D1F50 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1EF0:
	ldr r1, _021D1F54 ; =ov19_021D1DAC
	add r0, r4, #0
	bl ov19_021D0EA0
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D1F00:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	mov r0, #5
	str r0, [r5, #0]
_021D1F14:
	ldr r0, _021D1F58 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D1F46
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1F30:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	add r0, r4, #0
	bl ov19_021D0EC0
_021D1F46:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1F48: .word ov19_021D4184
_021D1F4C: .word 0x000005F3
_021D1F50: .word 0x000005DD
_021D1F54: .word ov19_021D1DAC
_021D1F58: .word 0x021BF67C
	thumb_func_end ov19_021D1DEC

	thumb_func_start ov19_021D1F5C
ov19_021D1F5C: ; 0x021D1F5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bls _021D1F6A
	b _021D208C
_021D1F6A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1F76: ; jump table
	.short _021D1F82 - _021D1F76 - 2 ; case 0
	.short _021D208C - _021D1F76 - 2 ; case 1
	.short _021D2046 - _021D1F76 - 2 ; case 2
	.short _021D205A - _021D1F76 - 2 ; case 3
	.short _021D2076 - _021D1F76 - 2 ; case 4
	.short _021D1FF0 - _021D1F76 - 2 ; case 5
_021D1F82:
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D1FAA
	ldr r0, _021D2090 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x11
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1FAA:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	bne _021D1FC8
	add r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D1FC8
	ldr r1, _021D2094 ; =ov19_021D4184
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D1FC8:
	ldr r0, _021D2098 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xc
	bl ov19_021D5408
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DF964
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1FF0:
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D2010
	bge _021D2034
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bgt _021D208C
	sub r1, r2, #1
	cmp r0, r1
	blt _021D208C
	beq _021D2016
	cmp r0, r2
	beq _021D2024
	pop {r3, r4, r5, pc}
_021D2010:
	cmp r0, #0x37
	beq _021D2024
	pop {r3, r4, r5, pc}
_021D2016:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2024:
	ldr r1, _021D209C ; =ov19_021D1DAC
	add r0, r4, #0
	bl ov19_021D0EA0
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2034:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2046:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D208C
	mov r0, #3
	str r0, [r5, #0]
_021D205A:
	ldr r0, _021D20A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D208C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2076:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D208C
	add r0, r4, #0
	bl ov19_021D0EC0
_021D208C:
	pop {r3, r4, r5, pc}
	nop
_021D2090: .word 0x000005F3
_021D2094: .word ov19_021D4184
_021D2098: .word 0x000005DD
_021D209C: .word ov19_021D1DAC
_021D20A0: .word 0x021BF67C
	thumb_func_end ov19_021D1F5C

	thumb_func_start ov19_021D20A4
ov19_021D20A4: ; 0x021D20A4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bhi _021D2196
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D20BC: ; jump table
	.short _021D20C8 - _021D20BC - 2 ; case 0
	.short _021D211C - _021D20BC - 2 ; case 1
	.short _021D2130 - _021D20BC - 2 ; case 2
	.short _021D218A - _021D20BC - 2 ; case 3
	.short _021D22A8 - _021D20BC - 2 ; case 4
	.short _021D22C0 - _021D20BC - 2 ; case 5
_021D20C8:
	bl ov19_021D5E9C
	add r2, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5408
	add r0, r4, #0
	bl ov19_021DF990
	add r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	beq _021D2104
	add r0, r4, #0
	bl ov19_021DFDEC
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2104:
	ldr r0, _021D22D8 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D211C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2196
	mov r0, #2
	str r0, [r5, #0]
_021D2130:
	add r0, r4, #0
	bl ov19_021DFD2C
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	cmp r2, r0
	bgt _021D215A
	sub r3, r0, #2
	cmp r2, r3
	blt _021D2184
	beq _021D2196
	sub r3, r0, #1
	cmp r2, r3
	beq _021D2160
	cmp r2, r0
	beq _021D216C
	b _021D2184
_021D215A:
	cmp r2, #0x2b
	beq _021D216C
	b _021D2184
_021D2160:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D216C:
	ldr r0, _021D22D8 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2184:
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D218A:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	sub r2, #0x22
	cmp r2, #0x13
	bls _021D2198
_021D2196:
	b _021D22D4
_021D2198:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D21A4: ; jump table
	.short _021D21CC - _021D21A4 - 2 ; case 0
	.short _021D21FE - _021D21A4 - 2 ; case 1
	.short _021D2212 - _021D21A4 - 2 ; case 2
	.short _021D2246 - _021D21A4 - 2 ; case 3
	.short _021D2226 - _021D21A4 - 2 ; case 4
	.short _021D222E - _021D21A4 - 2 ; case 5
	.short _021D224E - _021D21A4 - 2 ; case 6
	.short _021D2236 - _021D21A4 - 2 ; case 7
	.short _021D223E - _021D21A4 - 2 ; case 8
	.short _021D22D4 - _021D21A4 - 2 ; case 9
	.short _021D22D4 - _021D21A4 - 2 ; case 10
	.short _021D22D4 - _021D21A4 - 2 ; case 11
	.short _021D22D4 - _021D21A4 - 2 ; case 12
	.short _021D22D4 - _021D21A4 - 2 ; case 13
	.short _021D22D4 - _021D21A4 - 2 ; case 14
	.short _021D22D4 - _021D21A4 - 2 ; case 15
	.short _021D22D4 - _021D21A4 - 2 ; case 16
	.short _021D22D4 - _021D21A4 - 2 ; case 17
	.short _021D226A - _021D21A4 - 2 ; case 18
	.short _021D226A - _021D21A4 - 2 ; case 19
_021D21CC:
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D21E8
	add r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #1
	bne _021D21E8
	ldr r1, _021D22DC ; =ov19_021D2B54
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D21E8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E0 ; =ov19_021D2E1C
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D21FE:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E4 ; =ov19_021D2F14
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2212:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E8 ; =ov19_021D3010
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2226:
	ldr r1, _021D22EC ; =ov19_021D30D0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D222E:
	ldr r1, _021D22F0 ; =ov19_021D3294
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2236:
	ldr r1, _021D22F4 ; =ov19_021D2A5C
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D223E:
	ldr r1, _021D22F8 ; =ov19_021D35F8
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2246:
	ldr r1, _021D22FC ; =ov19_021D3C28
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D224E:
	bl ov19_021D5E74
	cmp r0, #0
	bne _021D2260
	ldr r1, _021D2300 ; =ov19_021D3D44
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2260:
	ldr r1, _021D2304 ; =ov19_021D3FB0
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D226A:
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r4, #0
	bl ov19_021D5888
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	ldr r0, _021D22D8 ; =0x000005DD
	bl sub_02005748
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D22A8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D22D4
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D22C0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D22D4
	add r0, r4, #0
	bl ov19_021D0EC0
_021D22D4:
	pop {r3, r4, r5, pc}
	nop
_021D22D8: .word 0x000005DD
_021D22DC: .word ov19_021D2B54
_021D22E0: .word ov19_021D2E1C
_021D22E4: .word ov19_021D2F14
_021D22E8: .word ov19_021D3010
_021D22EC: .word ov19_021D30D0
_021D22F0: .word ov19_021D3294
_021D22F4: .word ov19_021D2A5C
_021D22F8: .word ov19_021D35F8
_021D22FC: .word ov19_021D3C28
_021D2300: .word ov19_021D3D44
_021D2304: .word ov19_021D3FB0
	thumb_func_end ov19_021D20A4

	thumb_func_start ov19_021D2308
ov19_021D2308: ; 0x021D2308
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #7
	bls _021D2316
	b _021D2672
_021D2316:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2322: ; jump table
	.short _021D2332 - _021D2322 - 2 ; case 0
	.short _021D23DC - _021D2322 - 2 ; case 1
	.short _021D23F0 - _021D2322 - 2 ; case 2
	.short _021D2450 - _021D2322 - 2 ; case 3
	.short _021D25FE - _021D2322 - 2 ; case 4
	.short _021D2616 - _021D2322 - 2 ; case 5
	.short _021D2642 - _021D2322 - 2 ; case 6
	.short _021D2658 - _021D2322 - 2 ; case 7
_021D2332:
	bl ov19_021D5F7C
	add r2, r0, #0
	beq _021D2350
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x19
	bl ov19_021D5408
	b _021D2378
_021D2350:
	add r0, r4, #0
	bl ov19_021D5E74
	add r2, r0, #0
	beq _021D2370
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x19
	bl ov19_021D5408
	b _021D2378
_021D2370:
	add r0, r4, #0
	mov r1, #0x1c
	bl ov19_021D5408
_021D2378:
	add r0, r4, #0
	bl ov19_021DFAD0
	add r0, r4, #0
	bl ov19_021D5FC8
	cmp r0, #0
	beq _021D23A8
	ldr r0, _021D2674 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x22
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D23A8:
	add r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	beq _021D23C4
	add r0, r4, #0
	bl ov19_021DFDEC
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D23C4:
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D23DC:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D245C
	mov r0, #2
	str r0, [r5, #0]
_021D23F0:
	add r0, r4, #0
	bl ov19_021DFD2C
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	cmp r2, r0
	bgt _021D241A
	sub r3, r0, #2
	cmp r2, r3
	blt _021D2444
	beq _021D245C
	sub r3, r0, #1
	cmp r2, r3
	beq _021D2420
	cmp r2, r0
	beq _021D242C
	b _021D2444
_021D241A:
	cmp r2, #0x33
	beq _021D242C
	b _021D2444
_021D2420:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D242C:
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2444:
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2450:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	sub r1, #0x2e
	cmp r1, #4
	bls _021D245E
_021D245C:
	b _021D2672
_021D245E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D246A: ; jump table
	.short _021D2474 - _021D246A - 2 ; case 0
	.short _021D24F2 - _021D246A - 2 ; case 1
	.short _021D2554 - _021D246A - 2 ; case 2
	.short _021D255C - _021D246A - 2 ; case 3
	.short _021D25F6 - _021D246A - 2 ; case 4
_021D2474:
	bl ov19_021D5F7C
	cmp r0, #0x70
	bne _021D24B2
	ldr r0, [r4, #0x4c]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _021D267C ; =0x000001E7
	cmp r0, r1
	beq _021D24B2
	sub r1, #0x4b
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x70
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x2d
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D24B2:
	add r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D24E8
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5D60
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl ov19_021D6594
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D24E8:
	ldr r1, _021D2680 ; =ov19_021D3D44
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D24F2:
	bl ov19_021D5E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D2522
	ldr r0, _021D2674 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x18
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2522:
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5D28
	add r0, r4, #0
	bl ov19_021D0F14
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x13
	bl ov19_021D6594
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2554:
	ldr r1, _021D2684 ; =ov19_021D4390
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D255C:
	bl ov19_021D5E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D258C
	ldr r0, _021D2674 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x18
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D258C:
	ldr r0, _021D2688 ; =0x00000112
	ldrh r0, [r4, r0]
	cmp r0, #0x70
	bne _021D25CA
	ldr r0, [r4, #0x4c]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _021D267C ; =0x000001E7
	cmp r0, r1
	beq _021D25CA
	sub r1, #0x4b
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x70
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x2d
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D25CA:
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5D78
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl ov19_021D6594
	ldr r0, _021D2678 ; =0x000005DD
	bl sub_02005748
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D25F6:
	ldr r1, _021D268C ; =ov19_021D4184
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D25FE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2672
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2616:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2672
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2642:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2672
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2658:
	ldr r0, _021D2690 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D2672
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
_021D2672:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2674: .word 0x000005F3
_021D2678: .word 0x000005DD
_021D267C: .word 0x000001E7
_021D2680: .word ov19_021D3D44
_021D2684: .word ov19_021D4390
_021D2688: .word 0x00000112
_021D268C: .word ov19_021D4184
_021D2690: .word 0x021BF67C
	thumb_func_end ov19_021D2308

	thumb_func_start ov19_021D2694
ov19_021D2694: ; 0x021D2694
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #7
	bls _021D26A2
	b _021D27D4
_021D26A2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D26AE: ; jump table
	.short _021D26BE - _021D26AE - 2 ; case 0
	.short _021D2702 - _021D26AE - 2 ; case 1
	.short _021D2716 - _021D26AE - 2 ; case 2
	.short _021D2766 - _021D26AE - 2 ; case 3
	.short _021D27A6 - _021D26AE - 2 ; case 4
	.short _021D27D4 - _021D26AE - 2 ; case 5
	.short _021D27D4 - _021D26AE - 2 ; case 6
	.short _021D27BE - _021D26AE - 2 ; case 7
_021D26BE:
	mov r1, #7
	bl ov19_021D5408
	add r0, r4, #0
	bl ov19_021DFB50
	add r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	ldr r0, _021D27D8 ; =0x000005DD
	beq _021D26EC
	bl sub_02005748
	add r0, r4, #0
	bl ov19_021DFDEC
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D26EC:
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2702:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D27D4
	mov r0, #2
	str r0, [r5, #0]
_021D2716:
	add r0, r4, #0
	bl ov19_021DFD2C
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r0, r0, #3
	cmp r0, #6
	bhi _021D2760
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2736: ; jump table
	.short _021D27D4 - _021D2736 - 2 ; case 0
	.short _021D2744 - _021D2736 - 2 ; case 1
	.short _021D2750 - _021D2736 - 2 ; case 2
	.short _021D2760 - _021D2736 - 2 ; case 3
	.short _021D2760 - _021D2736 - 2 ; case 4
	.short _021D2760 - _021D2736 - 2 ; case 5
	.short _021D2750 - _021D2736 - 2 ; case 6
_021D2744:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2750:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2760:
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2766:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D277A
	cmp r2, #1
	beq _021D278E
	cmp r2, #2
	beq _021D279E
	pop {r3, r4, r5, pc}
_021D277A:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D27DC ; =ov19_021D27E8
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D278E:
	sub r1, #0xa4
	ldr r0, [r4, r1]
	mov r1, #0x1b
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D279E:
	ldr r1, _021D27E0 ; =ov19_021D3B34
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D27A6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D27D4
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D27BE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D27D4
	ldr r1, _021D27E4 ; =ov19_021D2890
	add r0, r4, #0
	bl ov19_021D0EB0
_021D27D4:
	pop {r3, r4, r5, pc}
	nop
_021D27D8: .word 0x000005DD
_021D27DC: .word ov19_021D27E8
_021D27E0: .word ov19_021D3B34
_021D27E4: .word ov19_021D2890
	thumb_func_end ov19_021D2694

	thumb_func_start ov19_021D27E8
ov19_021D27E8: ; 0x021D27E8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D27FE
	cmp r1, #1
	beq _021D2812
	cmp r1, #2
	beq _021D2876
	pop {r4, r5, r6, pc}
_021D27FE:
	bl ov19_021D5E68
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #8
	bl ov19_021D443C
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D2812:
	bl ov19_021D4468
	cmp r0, #0
	beq _021D288A
	ldr r0, _021D288C ; =0x000001C1
	ldrsb r6, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021D2830
	add r0, r5, #0
	bl ov19_021D5E68
	cmp r6, r0
	bne _021D2836
_021D2830:
	mov r0, #2
	str r0, [r4, #0]
	b _021D285C
_021D2836:
	add r0, r5, #0
	add r1, r6, #0
	bl ov19_021D5D08
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0xa1
	ldrsb r1, [r5, r1]
	bl sub_02079A94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
_021D285C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x20
	bl ov19_021D6594
	pop {r4, r5, r6, pc}
_021D2876:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D288A
	add r0, r5, #0
	bl ov19_021D0EC0
_021D288A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D288C: .word 0x000001C1
	thumb_func_end ov19_021D27E8

	thumb_func_start ov19_021D2890
ov19_021D2890: ; 0x021D2890
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #8
	bhi _021D28FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D28A8: ; jump table
	.short _021D28BA - _021D28A8 - 2 ; case 0
	.short _021D28C6 - _021D28A8 - 2 ; case 1
	.short _021D28EC - _021D28A8 - 2 ; case 2
	.short _021D2902 - _021D28A8 - 2 ; case 3
	.short _021D2986 - _021D28A8 - 2 ; case 4
	.short _021D299A - _021D28A8 - 2 ; case 5
	.short _021D2A20 - _021D28A8 - 2 ; case 6
	.short _021D2A32 - _021D28A8 - 2 ; case 7
	.short _021D2A46 - _021D28A8 - 2 ; case 8
_021D28BA:
	mov r0, #0x6e
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r5, #0]
_021D28C6:
	add r0, r4, #0
	mov r1, #9
	bl ov19_021D5408
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov19_021DFB94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D28EC:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	bne _021D28FE
_021D28FC:
	b _021D2A5A
_021D28FE:
	mov r0, #3
	str r0, [r5, #0]
_021D2902:
	add r0, r4, #0
	bl ov19_021DFD2C
	add r0, r0, #3
	cmp r0, #0xc
	bhi _021D2942
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D291A: ; jump table
	.short _021D2A5A - _021D291A - 2 ; case 0
	.short _021D2934 - _021D291A - 2 ; case 1
	.short _021D2942 - _021D291A - 2 ; case 2
	.short _021D2942 - _021D291A - 2 ; case 3
	.short _021D2942 - _021D291A - 2 ; case 4
	.short _021D2942 - _021D291A - 2 ; case 5
	.short _021D2942 - _021D291A - 2 ; case 6
	.short _021D2954 - _021D291A - 2 ; case 7
	.short _021D2954 - _021D291A - 2 ; case 8
	.short _021D2954 - _021D291A - 2 ; case 9
	.short _021D2954 - _021D291A - 2 ; case 10
	.short _021D2954 - _021D291A - 2 ; case 11
	.short _021D2954 - _021D291A - 2 ; case 12
_021D2934:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2942:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2954:
	add r0, r4, #0
	bl ov19_021DFDDC
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0xa
	bl ov19_021D5408
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov19_021DFC04
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2986:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2A5A
	mov r0, #5
	str r0, [r5, #0]
_021D299A:
	add r0, r4, #0
	bl ov19_021DFD2C
	add r0, r0, #3
	cmp r0, #6
	bhi _021D29D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D29B2: ; jump table
	.short _021D2A5A - _021D29B2 - 2 ; case 0
	.short _021D29C0 - _021D29B2 - 2 ; case 1
	.short _021D29CE - _021D29B2 - 2 ; case 2
	.short _021D29D4 - _021D29B2 - 2 ; case 3
	.short _021D29D4 - _021D29B2 - 2 ; case 4
	.short _021D29D4 - _021D29B2 - 2 ; case 5
	.short _021D29CE - _021D29B2 - 2 ; case 6
_021D29C0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D29CE:
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D29D4:
	add r0, r4, #0
	bl ov19_021DFDDC
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	cmp r2, #0xa
	blt _021D2A16
	cmp r2, #0x21
	bgt _021D2A16
	sub r1, #0x98
	ldr r0, [r4, r1]
	mov r1, #0
	mvn r1, r1
	sub r2, #0xa
	bl sub_02079AC4
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov19_021D4F5C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2A16:
	bl sub_02022974
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2A20:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x21
	bl ov19_021D6594
	mov r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2A32:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2A5A
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2A46:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2A5A
	add r0, r4, #0
	bl ov19_021D0EC0
_021D2A5A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2890

	thumb_func_start ov19_021D2A5C
ov19_021D2A5C: ; 0x021D2A5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D2A72
	cmp r1, #1
	beq _021D2A90
	cmp r1, #2
	beq _021D2B3E
	pop {r3, r4, r5, pc}
_021D2A72:
	bl ov19_021DFC80
	add r0, r5, #0
	mov r1, #1
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D2A90:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2B52
	add r0, r5, #0
	bl ov19_021DFD2C
	mov r2, #2
	add r1, r0, #0
	mvn r2, r2
	cmp r1, r2
	bhi _021D2AC0
	bhs _021D2B52
	cmp r1, #0x2d
	bhi _021D2B20
	cmp r1, #0x2c
	blo _021D2B20
	beq _021D2AF0
	cmp r1, #0x2d
	beq _021D2ADE
	b _021D2B20
_021D2AC0:
	add r0, r2, #1
	cmp r1, r0
	blo _021D2B20
	beq _021D2AD0
	add r0, r2, #2
	cmp r1, r0
	beq _021D2ADE
	b _021D2B20
_021D2AD0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2ADE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D2AF0:
	add r0, r5, #0
	bl ov19_021D5BAC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x27
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D2B20:
	cmp r1, #0x38
	blo _021D2B52
	cmp r1, #0x3d
	bhi _021D2B52
	add r0, r5, #0
	sub r1, #0x38
	bl ov19_021DFCE4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1d
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2B3E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2B52
	add r0, r5, #0
	bl ov19_021D0EC0
_021D2B52:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2A5C

	thumb_func_start ov19_021D2B54
ov19_021D2B54: ; 0x021D2B54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bls _021D2B62
	b _021D2DB6
_021D2B62:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2B6E: ; jump table
	.short _021D2B7A - _021D2B6E - 2 ; case 0
	.short _021D2BAA - _021D2B6E - 2 ; case 1
	.short _021D2C4C - _021D2B6E - 2 ; case 2
	.short _021D2D8E - _021D2B6E - 2 ; case 3
	.short _021D2DA2 - _021D2B6E - 2 ; case 4
	.short _021D2D5A - _021D2B6E - 2 ; case 5
_021D2B7A:
	ldr r1, _021D2DB8 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #1
	tst r1, r2
	beq _021D2BA2
	add r1, r4, #0
	bl ov19_021D5594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2c
	bl ov19_021D6594
	ldr r0, _021D2DBC ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2BA2:
	ldr r1, _021D2DC0 ; =ov19_021D2E1C
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2BAA:
	ldr r1, _021D2DB8 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #1
	tst r1, r2
	beq _021D2C0E
	add r0, r2, #0
	add r1, r4, #0
	bl ov19_021D5150
	cmp r0, #1
	beq _021D2BDC
	cmp r0, #2
	bne _021D2CAE
	ldr r1, _021D2DB8 ; =0x021BF67C
	mov r0, #0xf0
	ldr r2, [r1, #0x44]
	ldr r1, [r1, #0x48]
	and r2, r0
	and r0, r1
	cmp r2, r0
	bne _021D2CAE
	ldr r0, _021D2DC4 ; =0x000005F3
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D2BDC:
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D55B0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2e
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2C0E:
	bl ov19_021D5F20
	cmp r0, #0
	beq _021D2C2C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2d
	bl ov19_021D6594
	ldr r1, _021D2DC0 ; =ov19_021D2E1C
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2C2C:
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D54A4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2f
	bl ov19_021D6594
	ldr r0, _021D2DC8 ; =0x000005EB
	bl sub_02005748
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2C4C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2CAE
	ldr r0, _021D2DB8 ; =0x021BF67C
	add r1, r4, #0
	ldr r0, [r0, #0x44]
	bl ov19_021D5150
	cmp r0, #4
	bhi _021D2CAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2C74: ; jump table
	.short _021D2D10 - _021D2C74 - 2 ; case 0
	.short _021D2C96 - _021D2C74 - 2 ; case 1
	.short _021D2C7E - _021D2C74 - 2 ; case 2
	.short _021D2CBC - _021D2C74 - 2 ; case 3
	.short _021D2CE6 - _021D2C74 - 2 ; case 4
_021D2C7E:
	ldr r1, _021D2DB8 ; =0x021BF67C
	mov r0, #0xf0
	ldr r2, [r1, #0x44]
	ldr r1, [r1, #0x48]
	and r2, r0
	and r0, r1
	cmp r2, r0
	bne _021D2CAE
	ldr r0, _021D2DC4 ; =0x000005F3
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D2C96:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	mov r1, #6
	tst r0, r1
	beq _021D2CB0
_021D2CAE:
	b _021D2DB6
_021D2CB0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2CBC:
	add r0, r4, #0
	bl ov19_021D5CE8
	add r0, r4, #0
	bl ov19_021D5E68
	add r1, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02079A94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2CE6:
	add r0, r4, #0
	bl ov19_021D5CBC
	add r0, r4, #0
	bl ov19_021D5E68
	add r1, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02079A94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2D10:
	ldr r0, _021D2DB8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021D2D4C
	add r0, r4, #0
	bl ov19_021D2DD0
	cmp r0, #0
	beq _021D2D44
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D56AC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl ov19_021D6594
	ldr r0, _021D2DCC ; =0x000005EA
	bl sub_02005748
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2D44:
	ldr r0, _021D2DC4 ; =0x000005F3
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D2D4C:
	mov r0, #2
	tst r0, r1
	beq _021D2DB6
	ldr r0, _021D2DC4 ; =0x000005F3
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D2D5A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2DB6
	add r0, r4, #0
	bl ov19_021D5E38
	mov r1, #6
	tst r0, r1
	bne _021D2D88
	add r0, r4, #0
	bl ov19_021D52F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
_021D2D88:
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2D8E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2DB6
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2DA2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2DB6
	add r0, r4, #0
	bl ov19_021D0EC0
_021D2DB6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2DB8: .word 0x021BF67C
_021D2DBC: .word 0x000005DC
_021D2DC0: .word ov19_021D2E1C
_021D2DC4: .word 0x000005F3
_021D2DC8: .word 0x000005EB
_021D2DCC: .word 0x000005EA
	thumb_func_end ov19_021D2B54

	thumb_func_start ov19_021D2DD0
ov19_021D2DD0: ; 0x021D2DD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r5, #0x14
	str r0, [sp]
	bl ov19_021D5F3C
	add r7, r0, #0
	ldrb r0, [r5, #8]
	mov r4, #0
	ldrb r6, [r5, #9]
	cmp r0, #0
	ble _021D2E16
_021D2DE8:
	add r3, r5, r4
	mov r2, #0xc
	ldrsb r2, [r3, r2]
	ldr r0, [sp]
	mov r1, #0
	sub r2, r2, r6
	ldr r0, [r0, #0]
	mvn r1, r1
	add r2, r7, r2
	bl sub_02079C9C
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021D2E0E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2E0E:
	ldrb r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021D2DE8
_021D2E16:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D2DD0

	thumb_func_start ov19_021D2E1C
ov19_021D2E1C: ; 0x021D2E1C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bhi _021D2F04
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2E34: ; jump table
	.short _021D2E3C - _021D2E34 - 2 ; case 0
	.short _021D2EAE - _021D2E34 - 2 ; case 1
	.short _021D2ED4 - _021D2E34 - 2 ; case 2
	.short _021D2EF0 - _021D2E34 - 2 ; case 3
_021D2E3C:
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D2E8E
	add r0, r4, #0
	bl ov19_021D34E4
	cmp r0, #0
	bne _021D2E6E
	ldr r0, _021D2F08 ; =0x000005EB
	bl sub_02005748
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5420
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2E6E:
	ldr r0, _021D2F0C ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2E8E:
	ldr r0, _021D2F08 ; =0x000005EB
	bl sub_02005748
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5420
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2EAE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2F04
	add r0, r4, #0
	bl ov19_021D52F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2ED4:
	ldr r0, _021D2F10 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D2F04
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D2EF0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2F04
	add r0, r4, #0
	bl ov19_021D0EC0
_021D2F04:
	pop {r3, r4, r5, pc}
	nop
_021D2F08: .word 0x000005EB
_021D2F0C: .word 0x000005F3
_021D2F10: .word 0x021BF67C
	thumb_func_end ov19_021D2E1C

	thumb_func_start ov19_021D2F14
ov19_021D2F14: ; 0x021D2F14
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D2F2A
	cmp r1, #1
	beq _021D2F76
	cmp r1, #2
	beq _021D2FA8
	pop {r4, r5, r6, pc}
_021D2F2A:
	add r1, r5, #0
	bl ov19_021D55C4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl ov19_021D6594
	ldr r0, _021D2FC4 ; =0x000005EA
	bl sub_02005748
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D2F70
	add r0, r5, #0
	bl ov19_021D5E2C
	add r6, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	sub r0, r0, #1
	cmp r6, r0
	beq _021D2F70
	mov r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov19_021D52F4
	pop {r4, r5, r6, pc}
_021D2F70:
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D2F76:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2FC2
	add r0, r5, #0
	bl ov19_021D52F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x26
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_021D2FA8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2FC2
	add r0, r5, #0
	bl ov19_021D0F14
	add r0, r5, #0
	bl ov19_021D0EC0
_021D2FC2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2FC4: .word 0x000005EA
	thumb_func_end ov19_021D2F14

	thumb_func_start ov19_021D2FC8
ov19_021D2FC8: ; 0x021D2FC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov19_021D34E4
	cmp r0, #0
	beq _021D300C
	add r0, r5, #0
	mov r1, #0xad
	mov r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D2FEC
	mov r0, #6
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2FEC:
	add r0, r5, #0
	bl ov19_021D5E3C
	cmp r0, #0
	beq _021D300C
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	bne _021D300C
	mov r0, #6
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D300C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2FC8

	thumb_func_start ov19_021D3010
ov19_021D3010: ; 0x021D3010
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D3026
	cmp r1, #1
	beq _021D307C
	cmp r1, #2
	beq _021D30A8
	pop {r3, r4, r5, pc}
_021D3026:
	add r1, sp, #0
	bl ov19_021D2FC8
	cmp r0, #0
	beq _021D3050
	ldr r0, _021D30C4 ; =0x000005F3
	bl sub_02005748
	ldr r1, [sp]
	add r0, r5, #0
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D3050:
	add r0, r5, #0
	add r1, r5, #0
	bl ov19_021D5734
	ldr r0, _021D30C8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D307C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D30C2
	ldr r0, _021D30CC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D30C2
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D30A8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D30C2
	add r0, r5, #0
	bl ov19_021D0F14
	add r0, r5, #0
	bl ov19_021D0EC0
_021D30C2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D30C4: .word 0x000005F3
_021D30C8: .word 0x000005DC
_021D30CC: .word 0x021BF67C
	thumb_func_end ov19_021D3010

	thumb_func_start ov19_021D30D0
ov19_021D30D0: ; 0x021D30D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #8
	bls _021D30DE
	b _021D3288
_021D30DE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D30EA: ; jump table
	.short _021D30FC - _021D30EA - 2 ; case 0
	.short _021D3178 - _021D30EA - 2 ; case 1
	.short _021D319A - _021D30EA - 2 ; case 2
	.short _021D31C2 - _021D30EA - 2 ; case 3
	.short _021D31F2 - _021D30EA - 2 ; case 4
	.short _021D3214 - _021D30EA - 2 ; case 5
	.short _021D3288 - _021D30EA - 2 ; case 6
	.short _021D3248 - _021D30EA - 2 ; case 7
	.short _021D3274 - _021D30EA - 2 ; case 8
_021D30FC:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0F8
	cmp r0, #6
	beq _021D3152
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3132
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x23
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3132:
	ldr r0, _021D328C ; =0x000005EB
	bl sub_02005748
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D5420
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3152:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1b
	bl ov19_021D6594
	add r0, r4, #0
	mov r1, #5
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3178:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #9
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x23
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D319A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x23
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	add r0, r4, #0
	bl ov19_021D5290
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D31C2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	add r0, r4, #0
	add r1, r4, #0
	bl ov19_021D55C4
	add r0, r4, #0
	bl ov19_021D0F14
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D31F2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x24
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3214:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x24
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	add r0, r4, #0
	bl ov19_021D52D0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3248:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	ldr r0, _021D3290 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D3288
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3274:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D3288
	add r0, r4, #0
	bl ov19_021D0EC0
_021D3288:
	pop {r3, r4, r5, pc}
	nop
_021D328C: .word 0x000005EB
_021D3290: .word 0x021BF67C
	thumb_func_end ov19_021D30D0

	thumb_func_start ov19_021D3294
ov19_021D3294: ; 0x021D3294
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bhi _021D3358
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D32AC: ; jump table
	.short _021D32BA - _021D32AC - 2 ; case 0
	.short _021D3350 - _021D32AC - 2 ; case 1
	.short _021D3412 - _021D32AC - 2 ; case 2
	.short _021D3438 - _021D32AC - 2 ; case 3
	.short _021D3464 - _021D32AC - 2 ; case 4
	.short _021D3492 - _021D32AC - 2 ; case 5
	.short _021D34C0 - _021D32AC - 2 ; case 6
_021D32BA:
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D32F8
	add r0, r4, #0
	bl ov19_021D34E4
	cmp r0, #1
	bne _021D32F8
	ldr r0, _021D34D8 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #6
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1b
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D32F8:
	add r0, r4, #0
	add r1, sp, #0
	bl ov19_021D1238
	cmp r0, #0
	beq _021D3330
	ldr r0, _021D34D8 ; =0x000005F3
	bl sub_02005748
	ldr r1, [sp]
	add r0, r4, #0
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1b
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3330:
	mov r1, #0x11
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x13
	bl ov19_021D443C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3350:
	bl ov19_021D4468
	cmp r0, #0
	bne _021D335A
_021D3358:
	b _021D34D4
_021D335A:
	ldr r0, _021D34DC ; =0x000001C1
	mov r1, #0
	ldrsb r2, [r4, r0]
	mvn r1, r1
	cmp r2, r1
	bne _021D3382
	sub r0, #0xad
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3382:
	sub r0, #0xb1
	strh r2, [r4, r0]
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	ldr r1, _021D34DC ; =0x000001C1
	bne _021D33C2
	ldrsb r1, [r4, r1]
	add r0, r4, #0
	bl ov19_021D57D8
	cmp r0, #0
	beq _021D33F2
	add r0, r4, #0
	bl ov19_021D0F14
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D33C2:
	ldrsb r1, [r4, r1]
	add r0, r4, #0
	bl ov19_021D5800
	cmp r0, #0
	beq _021D33F2
	add r0, r4, #0
	bl ov19_021D0F14
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D33F2:
	ldr r0, _021D34D8 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xd
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3412:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	ldr r0, _021D34E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D34D4
	add r0, r4, #0
	bl ov19_021D4458
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3438:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	ldr r0, _021D34E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D34D4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3464:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3492:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D34C0:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D34D4
	add r0, r4, #0
	bl ov19_021D0EC0
_021D34D4:
	pop {r3, r4, r5, pc}
	nop
_021D34D8: .word 0x000005F3
_021D34DC: .word 0x000001C1
_021D34E0: .word 0x021BF67C
	thumb_func_end ov19_021D3294

	thumb_func_start ov19_021D34E4
ov19_021D34E4: ; 0x021D34E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl sub_0207A0F8
	mov r6, #0
	add r5, r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _021D354C
_021D34FE:
	mov r0, #0x49
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02073C88
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _021D3532
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _021D3532
	add r5, r5, #1
_021D3532:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02073CD4
	cmp r5, #2
	blt _021D3544
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3544:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _021D34FE
_021D354C:
	ldr r0, [sp]
	mov r1, #0xad
	mov r2, #0
	bl ov19_021D6014
	cmp r0, #0
	beq _021D3560
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3560:
	ldr r0, [sp]
	mov r1, #0xa3
	mov r2, #0
	bl ov19_021D6014
	cmp r0, #0
	beq _021D3574
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3574:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D34E4

	thumb_func_start ov19_021D357C
ov19_021D357C: ; 0x021D357C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xad
	mov r2, #0
	add r5, r0, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D3596
	mov r0, #0x1f
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D3596:
	add r0, r5, #0
	bl ov19_021D5E74
	add r0, r5, #0
	bl ov19_021D5E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D35B6
	mov r0, #0x1e
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D35B6:
	add r0, r5, #0
	mov r1, #0xa2
	mov r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D35CC
	mov r0, #0x1d
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D35CC:
	add r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D35F2
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D35F2
	add r0, r5, #0
	bl ov19_021D34E4
	cmp r0, #0
	beq _021D35F2
	mov r0, #6
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D35F2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D357C

	thumb_func_start ov19_021D35F8
ov19_021D35F8: ; 0x021D35F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #9
	bhi _021D36A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3610: ; jump table
	.short _021D3624 - _021D3610 - 2 ; case 0
	.short _021D367C - _021D3610 - 2 ; case 1
	.short _021D36E6 - _021D3610 - 2 ; case 2
	.short _021D376A - _021D3610 - 2 ; case 3
	.short _021D37F6 - _021D3610 - 2 ; case 4
	.short _021D37C2 - _021D3610 - 2 ; case 5
	.short _021D3828 - _021D3610 - 2 ; case 6
	.short _021D3852 - _021D3610 - 2 ; case 7
	.short _021D3896 - _021D3610 - 2 ; case 8
	.short _021D38C2 - _021D3610 - 2 ; case 9
_021D3624:
	add r1, sp, #0
	bl ov19_021D357C
	cmp r0, #0
	beq _021D3650
	add r0, r4, #0
	mov r1, #2
	bl ov19_021D5408
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DF964
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3650:
	ldr r0, _021D38D8 ; =0x000005F3
	bl sub_02005748
	ldr r1, [sp]
	add r0, r4, #0
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1b
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D367C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D36A4
	add r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D36AE
	bge _021D36D4
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bgt _021D36A4
	sub r1, r2, #1
	cmp r0, r1
	bge _021D36A6
_021D36A4:
	b _021D38D6
_021D36A6:
	beq _021D36B4
	cmp r0, r2
	beq _021D36C2
	pop {r3, r4, r5, pc}
_021D36AE:
	cmp r0, #0x37
	beq _021D36C2
	pop {r3, r4, r5, pc}
_021D36B4:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D36C2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #9
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D36D4:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D36E6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D37D0
	add r0, r4, #0
	bl ov19_021D5E9C
	add r2, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r4, #0
	bl ov19_021D38E0
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3730
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl ov19_021D6594
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021D3764
_021D3730:
	add r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D3750
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl ov19_021D6594
	mov r0, #0x6e
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021D3764
_021D3750:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x10
	bl ov19_021D6594
	mov r0, #0x6e
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D3764:
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D376A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D37D0
	add r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D37A8
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3794
	add r0, r4, #0
	bl ov19_021D5834
	b _021D379A
_021D3794:
	add r0, r4, #0
	bl ov19_021D584C
_021D379A:
	add r0, r4, #0
	mov r1, #3
	bl ov19_021D5408
	mov r0, #5
	str r0, [r5, #0]
	b _021D37B4
_021D37A8:
	add r0, r4, #0
	mov r1, #0x20
	bl ov19_021D5408
	mov r0, #4
	str r0, [r5, #0]
_021D37B4:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D37C2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	bne _021D37D2
_021D37D0:
	b _021D38D6
_021D37D2:
	ldr r0, _021D38DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D38D6
	add r0, r4, #0
	mov r1, #4
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D37F6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D38D6
	add r0, r4, #0
	mov r1, #0x21
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3828:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D38D6
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #7
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3852:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	add r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D3884
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _021D387E
	sub r0, #0xa4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl ov19_021D6594
_021D387E:
	add r0, r4, #0
	bl ov19_021D0F14
_021D3884:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #9
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3896:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D38D6
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #9
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D38C2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	add r0, r4, #0
	bl ov19_021D0EC0
_021D38D6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D38D8: .word 0x000005F3
_021D38DC: .word 0x021BF67C
	thumb_func_end ov19_021D35F8

	thumb_func_start ov19_021D38E0
ov19_021D38E0: ; 0x021D38E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [sp]
	add r7, r0, r1
	ldr r0, [r0, #0x4c]
	mov r4, #0
	ldr r5, _021D3970 ; =0x021DFDF0
	str r0, [r7, #0x10]
	str r4, [sp, #4]
_021D38F6:
	ldrh r1, [r5]
	ldr r0, [r7, #0x10]
	add r6, r7, r4
	bl ov19_021D3AC8
	strb r0, [r6, #4]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _021D390E
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_021D390E:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blo _021D38F6
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021D3926
	mov r0, #1
	strb r0, [r7]
	add sp, #8
	strb r0, [r7, #1]
	pop {r3, r4, r5, r6, r7, pc}
_021D3926:
	mov r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	strb r0, [r7, #3]
	mov r1, #0x12
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r1, #4
	str r0, [r7, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, r1]
	str r0, [r7, #0x18]
	ldr r0, [sp]
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D3950
	mov r0, #1
	b _021D3952
_021D3950:
	mov r0, #0
_021D3952:
	mov r1, #0
	str r0, [r7, #0x1c]
	add r0, r7, #0
	add r2, r1, #0
_021D395A:
	add r1, r1, #1
	strh r2, [r0, #8]
	add r0, r0, #2
	cmp r1, #3
	blo _021D395A
	ldr r0, _021D3974 ; =ov19_021D3978
	add r1, r7, #0
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3970: .word 0x021DFDF0
_021D3974: .word ov19_021D3978
	thumb_func_end ov19_021D38E0

	thumb_func_start ov19_021D3978
ov19_021D3978: ; 0x021D3978
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldrb r0, [r1, #2]
	str r1, [sp, #4]
	cmp r0, #0x12
	bhs _021D3A0E
	add r0, r1, #0
	ldrb r0, [r0, #3]
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, #0xf
	str r0, [sp, #0x14]
	cmp r0, #0x1e
	ble _021D399A
	mov r0, #0x1e
	str r0, [sp, #0x14]
_021D399A:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _021D39EC
_021D39A2:
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldrb r1, [r1, #2]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0xc]
	bl sub_02079C9C
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl sub_02074570
	cmp r0, #0
	beq _021D39E0
	ldr r4, _021D3AC4 ; =0x021DFDF0
	ldr r5, [sp, #4]
	mov r6, #0
_021D39C4:
	ldrh r1, [r4]
	add r0, r7, #0
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D39D6
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
_021D39D6:
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #3
	blo _021D39C4
_021D39E0:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D39A2
_021D39EC:
	ldr r0, [sp, #0x14]
	cmp r0, #0x1e
	bne _021D3A04
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #3]
	ldrb r0, [r0, #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x18
	strb r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_021D3A04:
	add r1, r0, #0
	ldr r0, [sp, #4]
	add sp, #0x18
	strb r1, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021D3A0E:
	add r0, r1, #0
	ldr r0, [r0, #0x18]
	bl sub_0207A0F8
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021D3A5C
_021D3A22:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x18]
	bl sub_0207A0FC
	ldr r4, _021D3AC4 ; =0x021DFDF0
	ldr r5, [sp, #4]
	add r7, r0, #0
	mov r6, #0
_021D3A34:
	ldrh r1, [r4]
	add r0, r7, #0
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D3A46
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
_021D3A46:
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #3
	blo _021D3A34
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021D3A22
_021D3A5C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021D3A88
	ldr r4, _021D3AC4 ; =0x021DFDF0
	ldr r5, [sp, #4]
	mov r6, #0
_021D3A6A:
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	ldr r0, [r0, #0x10]
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D3A7E
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
_021D3A7E:
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #3
	blo _021D3A6A
_021D3A88:
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0, #1]
	mov r2, #0
	add r1, r0, #0
_021D3A92:
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021D3AAA
	ldr r0, [sp, #4]
	add r0, r0, r2
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _021D3AAA
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #1]
	b _021D3AB2
_021D3AAA:
	add r2, r2, #1
	add r1, r1, #2
	cmp r2, #3
	blo _021D3A92
_021D3AB2:
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	ldr r0, [sp]
	bl sub_0200DA58
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3AC4: .word 0x021DFDF0
	thumb_func_end ov19_021D3978

	thumb_func_start ov19_021D3AC8
ov19_021D3AC8: ; 0x021D3AC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp, #4]
	bl sub_02073D20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _021D3B08
	mov r4, #0
	add r7, r4, #0
_021D3AEC:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074570
	cmp r6, r0
	bne _021D3B02
	mov r0, #1
	str r0, [sp, #4]
	b _021D3B08
_021D3B02:
	add r4, r4, #1
	cmp r4, #4
	blt _021D3AEC
_021D3B08:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D3AC8

	thumb_func_start ov19_021D3B18
ov19_021D3B18: ; 0x021D3B18
	mov r1, #0x57
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D3B18

	thumb_func_start ov19_021D3B20
ov19_021D3B20: ; 0x021D3B20
	mov r1, #0x57
	lsl r1, r1, #2
	add r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _021D3B30
	ldrb r0, [r1, #1]
	bx lr
_021D3B30:
	mov r0, #0
	bx lr
	thumb_func_end ov19_021D3B20

	thumb_func_start ov19_021D3B34
ov19_021D3B34: ; 0x021D3B34
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D3B4A
	cmp r0, #1
	beq _021D3B5E
	cmp r0, #2
	beq _021D3BB6
	pop {r3, r4, r5, pc}
_021D3B4A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3B5E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3C1C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	mov r0, #0xa
	bl sub_0201807C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207999C
	mov r2, #0x12
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	ldr r2, [r2, #0x18]
	bl sub_02079AF4
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, _021D3C20 ; =0x020F2DAC
	ldr r1, [r4, r1]
	mov r2, #9
	bl sub_020067E8
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D3BB6:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006844
	cmp r0, #0
	beq _021D3C1C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0207999C
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006814
	mov r2, #0xf
	mov r0, #3
	mov r1, #0xa
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	add r1, r5, #0
	ldr r2, [r2, #0x18]
	bl sub_02079B24
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x40
	bl ov19_021D4F40
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, #0
	bl ov19_021D61B0
	ldr r1, _021D3C24 ; =ov19_021D0F88
	add r0, r4, #0
	bl ov19_021D0EB0
_021D3C1C:
	pop {r3, r4, r5, pc}
	nop
_021D3C20: .word 0x020F2DAC
_021D3C24: .word ov19_021D0F88
	thumb_func_end ov19_021D3B34

	thumb_func_start ov19_021D3C28
ov19_021D3C28: ; 0x021D3C28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D3C3E
	cmp r0, #1
	beq _021D3C52
	cmp r0, #2
	beq _021D3C94
	pop {r3, r4, r5, pc}
_021D3C3E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D3C52:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3CF0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D64A0
	mov r0, #0xa
	bl sub_0201807C
	add r0, r5, #0
	bl ov19_021D1C84
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, _021D3CF4 ; =0x020F410C
	add r1, r5, r1
	mov r2, #9
	bl sub_020067E8
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D3C94:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02006844
	cmp r0, #0
	beq _021D3CF0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0207999C
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02006814
	mov r2, #0xf
	mov r0, #3
	mov r1, #0xa
	lsl r2, r2, #0xe
	bl sub_02017FC8
	add r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D3CD4
	add r0, r5, #0
	add r1, r5, #0
	bl ov19_021D3CFC
_021D3CD4:
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	add r2, r5, #0
	bl ov19_021D61B0
	ldr r1, _021D3CF8 ; =ov19_021D0F88
	add r0, r5, #0
	bl ov19_021D0EB0
	add r0, r5, #0
	bl ov19_021D0F14
_021D3CF0:
	pop {r3, r4, r5, pc}
	nop
_021D3CF4: .word 0x020F410C
_021D3CF8: .word ov19_021D0F88
	thumb_func_end ov19_021D3C28

	thumb_func_start ov19_021D3CFC
ov19_021D3CFC: ; 0x021D3CFC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r4, #8
	ldrb r0, [r4, #4]
	add r5, r1, #0
	cmp r0, #0
	beq _021D3D10
	cmp r0, #1
	beq _021D3D32
	pop {r3, r4, r5, pc}
_021D3D10:
	mov r0, #5
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	mov r1, #6
	strb r0, [r4, #7]
	mov r0, #7
	ldrsb r0, [r4, r0]
	bl sub_020E1F6C
	strb r1, [r4, #5]
	mov r0, #7
	ldrsb r0, [r4, r0]
	mov r1, #6
	bl sub_020E1F6C
	strb r0, [r4, #6]
	b _021D3D3A
_021D3D32:
	mov r0, #5
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	strb r0, [r4, #8]
_021D3D3A:
	add r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D3CFC

	thumb_func_start ov19_021D3D44
ov19_021D3D44: ; 0x021D3D44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #6
	bhi _021D3DF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3D5C: ; jump table
	.short _021D3D6A - _021D3D5C - 2 ; case 0
	.short _021D3D7E - _021D3D5C - 2 ; case 1
	.short _021D3DE8 - _021D3D5C - 2 ; case 2
	.short _021D3E9A - _021D3D5C - 2 ; case 3
	.short _021D3EBE - _021D3D5C - 2 ; case 4
	.short _021D3F48 - _021D3D5C - 2 ; case 5
	.short _021D3F7C - _021D3D5C - 2 ; case 6
_021D3D6A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3D7E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3DF6
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	mov r0, #0xa
	bl sub_0201807C
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207D990
	ldr r1, _021D3F94 ; =0x021DFE30
	mov r2, #9
	bl sub_0207D824
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	sub r1, #0xf8
	ldr r1, [r4, r1]
	mov r2, #1
	mov r3, #0
	bl sub_0207CB2C
	ldr r0, _021D3F98 ; =0x00000054
	mov r1, #2
	bl sub_02006590
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r0, _021D3F9C ; =0x02241130
	ldr r1, [r4, r1]
	mov r2, #9
	bl sub_020067E8
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3DE8:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006844
	cmp r0, #0
	bne _021D3DF8
_021D3DF6:
	b _021D3F90
_021D3DF8:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207CB94
	ldr r1, _021D3FA0 ; =0x021E05E0
	str r0, [r1, #8]
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006814
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _021D3F98 ; =0x00000054
	bl sub_02006514
	ldr r0, _021D3FA0 ; =0x021E05E0
	ldr r0, [r0, #8]
	cmp r0, #0x70
	bne _021D3E38
	ldr r0, [r4, #0x4c]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _021D3FA4 ; =0x000001E7
	cmp r0, r1
	bne _021D3E6C
_021D3E38:
	ldr r0, _021D3FA0 ; =0x021E05E0
	ldr r6, [r0, #8]
	cmp r6, #0
	beq _021D3E6C
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207D990
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #9
	bl sub_0207D60C
	ldr r1, _021D3FA0 ; =0x021E05E0
	add r0, r4, #0
	ldr r1, [r1, #8]
	add r2, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov19_021D5BE8
	add r0, r4, #0
	bl ov19_021D0F14
_021D3E6C:
	mov r2, #0xf
	mov r0, #3
	mov r1, #0xa
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, #0
	bl ov19_021D61B0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3E9A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3EBE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	ldr r0, _021D3FA0 ; =0x021E05E0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021D3EDE
	add r0, r4, #0
	bl ov19_021D0EC0
	pop {r4, r5, r6, pc}
_021D3EDE:
	cmp r0, #0x70
	bne _021D3F1C
	ldr r0, [r4, #0x4c]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _021D3FA4 ; =0x000001E7
	cmp r0, r1
	beq _021D3F1C
	ldr r2, _021D3FA0 ; =0x021E05E0
	sub r1, #0x4b
	ldr r0, [r4, r1]
	ldr r2, [r2, #8]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x2d
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3F1C:
	mov r0, #0x67
	ldr r2, _021D3FA0 ; =0x021E05E0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, #8]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x10
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3F48:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	ldr r0, _021D3FA8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D3F90
	ldr r0, _021D3FAC ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021D3F7C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D3F90
	add r0, r4, #0
	bl ov19_021D0EC0
_021D3F90:
	pop {r4, r5, r6, pc}
	nop
_021D3F94: .word 0x021DFE30
_021D3F98: .word 0x00000054
_021D3F9C: .word 0x02241130
_021D3FA0: .word 0x021E05E0
_021D3FA4: .word 0x000001E7
_021D3FA8: .word 0x021BF67C
_021D3FAC: .word 0x000005DD
	thumb_func_end ov19_021D3D44

	thumb_func_start ov19_021D3FB0
ov19_021D3FB0: ; 0x021D3FB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bhi _021D4062
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3FC8: ; jump table
	.short _021D3FD4 - _021D3FC8 - 2 ; case 0
	.short _021D403A - _021D3FC8 - 2 ; case 1
	.short _021D40A4 - _021D3FC8 - 2 ; case 2
	.short _021D4104 - _021D3FC8 - 2 ; case 3
	.short _021D412C - _021D3FC8 - 2 ; case 4
	.short _021D415E - _021D3FC8 - 2 ; case 5
_021D3FD4:
	bl ov19_021D5E74
	ldr r1, _021D4174 ; =0x021E05E0
	str r0, [r1, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D4008
	ldr r0, _021D4178 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x18
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4008:
	mov r0, #0x67
	ldr r2, _021D4174 ; =0x021E05E0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DF964
	add r0, r4, #0
	mov r1, #0x17
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D403A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4062
	add r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D406C
	bge _021D4092
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bgt _021D4062
	sub r1, r2, #1
	cmp r0, r1
	bge _021D4064
_021D4062:
	b _021D4172
_021D4064:
	beq _021D4072
	cmp r0, r2
	beq _021D4080
	pop {r3, r4, r5, pc}
_021D406C:
	cmp r0, #0x37
	beq _021D4080
	pop {r3, r4, r5, pc}
_021D4072:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D4080:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4092:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1b
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D40A4:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207D990
	ldr r1, _021D4174 ; =0x021E05E0
	mov r2, #1
	ldr r1, [r1, #4]
	mov r3, #9
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D570
	cmp r0, #0
	beq _021D40EA
	add r0, r4, #0
	mov r1, #0
	add r2, r4, #0
	bl ov19_021D5BE8
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D40EA:
	add r0, r4, #0
	mov r1, #0xe
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4104:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4172
	add r0, r4, #0
	mov r1, #0xf
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D412C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4172
	ldr r0, _021D417C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D4172
	ldr r0, _021D4180 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D415E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4172
	add r0, r4, #0
	bl ov19_021D0EC0
_021D4172:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4174: .word 0x021E05E0
_021D4178: .word 0x000005F3
_021D417C: .word 0x021BF67C
_021D4180: .word 0x000005DD
	thumb_func_end ov19_021D3FB0

	thumb_func_start ov19_021D4184
ov19_021D4184: ; 0x021D4184
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bhi _021D4238
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D419C: ; jump table
	.short _021D41AA - _021D419C - 2 ; case 0
	.short _021D4210 - _021D419C - 2 ; case 1
	.short _021D427A - _021D419C - 2 ; case 2
	.short _021D42E2 - _021D419C - 2 ; case 3
	.short _021D4310 - _021D419C - 2 ; case 4
	.short _021D4338 - _021D419C - 2 ; case 5
	.short _021D436A - _021D419C - 2 ; case 6
_021D41AA:
	bl ov19_021D5F88
	ldr r1, _021D4380 ; =0x021E05E0
	str r0, [r1, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D2D0
	cmp r0, #0
	beq _021D41DE
	ldr r0, _021D4384 ; =0x000005F3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x18
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D41DE:
	mov r0, #0x67
	ldr r2, _021D4380 ; =0x021E05E0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B70C
	add r0, r4, #0
	mov r1, #0x1a
	bl ov19_021D5408
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DF964
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl ov19_021D6594
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4210:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4238
	add r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D4242
	bge _021D4268
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	bgt _021D4238
	sub r1, r2, #1
	cmp r0, r1
	bge _021D423A
_021D4238:
	b _021D437E
_021D423A:
	beq _021D4248
	cmp r0, r2
	beq _021D4256
	pop {r3, r4, r5, pc}
_021D4242:
	cmp r0, #0x37
	beq _021D4256
	pop {r3, r4, r5, pc}
_021D4248:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D4256:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4268:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D427A:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207D990
	ldr r1, _021D4380 ; =0x021E05E0
	mov r2, #1
	ldr r1, [r1, #0]
	mov r3, #9
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207D570
	cmp r0, #0
	beq _021D42C8
	add r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D42AC
	add r0, r4, #0
	bl ov19_021D5D54
	mov r0, #4
	b _021D42B8
_021D42AC:
	add r0, r4, #0
	mov r1, #0
	add r2, r4, #0
	bl ov19_021D5BE8
	mov r0, #3
_021D42B8:
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x17
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D42C8:
	add r0, r4, #0
	mov r1, #0xe
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D42E2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x17
	bl ov19_021D6600
	cmp r0, #0
	beq _021D437E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4310:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D437E
	add r0, r4, #0
	mov r1, #0x1b
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #5
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4338:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D437E
	ldr r0, _021D4388 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D437E
	ldr r0, _021D438C ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	mov r0, #6
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D436A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D437E
	add r0, r4, #0
	bl ov19_021D0EC0
_021D437E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4380: .word 0x021E05E0
_021D4384: .word 0x000005F3
_021D4388: .word 0x021BF67C
_021D438C: .word 0x000005DD
	thumb_func_end ov19_021D4184

	thumb_func_start ov19_021D4390
ov19_021D4390: ; 0x021D4390
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _021D4434
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D43A8: ; jump table
	.short _021D43B2 - _021D43A8 - 2 ; case 0
	.short _021D43C6 - _021D43A8 - 2 ; case 1
	.short _021D43EA - _021D43A8 - 2 ; case 2
	.short _021D4402 - _021D43A8 - 2 ; case 3
	.short _021D441E - _021D43A8 - 2 ; case 4
_021D43B2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D43C6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x11
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D43EA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x11
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D4402:
	ldr r0, _021D4438 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r1, r0
	beq _021D4434
	add r0, #0x21
	ldr r0, [r5, r0]
	mov r1, #0x12
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D441E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x12
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	add r0, r5, #0
	bl ov19_021D0EC0
_021D4434:
	pop {r3, r4, r5, pc}
	nop
_021D4438: .word 0x021BF67C
	thumb_func_end ov19_021D4390

	thumb_func_start ov19_021D443C
ov19_021D443C: ; 0x021D443C
	push {r4, r5}
	mov r3, #0x6f
	lsl r3, r3, #2
	mov r5, #0
	str r5, [r0, r3]
	add r4, r3, #5
	strb r1, [r0, r4]
	add r1, r3, #6
	strh r2, [r0, r1]
	add r1, r3, #4
	strb r5, [r0, r1]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D443C

	thumb_func_start ov19_021D4458
ov19_021D4458: ; 0x021D4458
	mov r1, #0x6f
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r2, #1
	add r1, r1, #4
	strb r2, [r0, r1]
	bx lr
	thumb_func_end ov19_021D4458

	thumb_func_start ov19_021D4468
ov19_021D4468: ; 0x021D4468
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r1, [r4, #0]
	cmp r1, #3
	bls _021D447A
	b _021D459C
_021D447A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D4486: ; jump table
	.short _021D448E - _021D4486 - 2 ; case 0
	.short _021D44C4 - _021D4486 - 2 ; case 1
	.short _021D44EC - _021D4486 - 2 ; case 2
	.short _021D44FE - _021D4486 - 2 ; case 3
_021D448E:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _021D449A
	mov r0, #1
	str r0, [r4, #0]
	b _021D459C
_021D449A:
	mov r0, #5
	ldrsb r1, [r4, r0]
	sub r0, r0, #6
	cmp r1, r0
	bne _021D44A8
	mov r0, #0
	strb r0, [r4, #5]
_021D44A8:
	mov r1, #5
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl ov19_021D5D20
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1e
	bl ov19_021D6594
	mov r0, #1
	str r0, [r4, #0]
	b _021D459C
_021D44C4:
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0x1e
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	ldrh r1, [r4, #6]
	add r0, r5, #0
	bl ov19_021D5408
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl ov19_021D6594
	mov r0, #2
	str r0, [r4, #0]
	b _021D459C
_021D44EC:
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	mov r0, #3
	str r0, [r4, #0]
_021D44FE:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	ldr r0, _021D45A0 ; =0x021BF67C
	mov r1, #0x22
	ldr r0, [r0, #0x48]
	lsl r1, r1, #4
	add r2, r0, #0
	tst r2, r1
	beq _021D4546
	mov r0, #5
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, #5]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _021D452E
	mov r0, #0x11
	strb r0, [r4, #5]
_021D452E:
	mov r1, #5
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl ov19_021D5D20
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	bl ov19_021D6594
	b _021D459C
_021D4546:
	lsr r1, r1, #1
	tst r1, r0
	beq _021D4576
	mov r0, #5
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #5]
	ldrsb r0, [r4, r0]
	cmp r0, #0x12
	blt _021D455E
	mov r0, #0
	strb r0, [r4, #5]
_021D455E:
	mov r1, #5
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl ov19_021D5D20
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	bl ov19_021D6594
	b _021D459C
_021D4576:
	mov r1, #1
	tst r1, r0
	beq _021D4586
	ldr r0, _021D45A4 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D4586:
	mov r1, #2
	tst r0, r1
	beq _021D459C
	ldr r0, _021D45A4 ; =0x000005DD
	bl sub_02005748
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D459C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D45A0: .word 0x021BF67C
_021D45A4: .word 0x000005DD
	thumb_func_end ov19_021D4468

	thumb_func_start ov19_021D45A8
ov19_021D45A8: ; 0x021D45A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D45BE
	cmp r1, #1
	beq _021D45E8
	cmp r1, #2
	beq _021D4628
	pop {r3, r4, r5, pc}
_021D45BE:
	bl ov19_021D5E68
	add r1, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02079A94
	add r0, r5, #0
	bl ov19_021D52F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D45E8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D463E
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D4620
	add r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D4620
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov19_021D6594
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D4620:
	add r0, r5, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D4628:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov19_021D6600
	cmp r0, #0
	beq _021D463E
	add r0, r5, #0
	bl ov19_021D0EC0
_021D463E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D45A8

	thumb_func_start ov19_021D4640
ov19_021D4640: ; 0x021D4640
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #5
	bhi _021D46C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4658: ; jump table
	.short _021D4664 - _021D4658 - 2 ; case 0
	.short _021D46B2 - _021D4658 - 2 ; case 1
	.short _021D4862 - _021D4658 - 2 ; case 2
	.short _021D48B8 - _021D4658 - 2 ; case 3
	.short _021D48F4 - _021D4658 - 2 ; case 4
	.short _021D490A - _021D4658 - 2 ; case 5
_021D4664:
	ldr r0, _021D4920 ; =0x000005E4
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov19_021D5D94
	add r0, r4, #0
	bl ov19_021D5E68
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D5D9C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6594
	mov r0, #0x58
	str r0, [sp]
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc0
	mov r3, #0x38
	bl ov19_021D603C
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	str r1, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D46B2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6600
	cmp r0, #0
	bne _021D46C4
_021D46C2:
	b _021D491E
_021D46C4:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D46F4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021D46F4
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D46EC
	ldr r1, _021D4924 ; =ov19_021D4938
	add r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, r6, r7, pc}
_021D46EC:
	ldr r0, _021D4928 ; =0x000005F3
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021D46F4:
	ldr r0, _021D492C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _021D472C
	ldr r0, _021D4930 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5D94
	add r0, r4, #0
	bl ov19_021D5E68
	add r1, r0, #0
	add r0, r4, #0
	bl ov19_021D5D9C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6594
	mov r0, #5
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D472C:
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021D47A4
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D47A4
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x14
	bls _021D47A4
	add r0, r4, #0
	bl ov19_021D5EB8
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov19_021D5D08
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_02079A94
	add r0, r4, #0
	bl ov19_021D52F4
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D4786
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	bl ov19_021D6594
_021D4786:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov19_021D6594
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	mov r0, #3
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D47A4:
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #1
	beq _021D47BC
	cmp r0, #2
	beq _021D47DC
	cmp r0, #3
	beq _021D4836
	pop {r3, r4, r5, r6, r7, pc}
_021D47BC:
	add r0, r4, #0
	bl ov19_021D5EB8
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D47DC:
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov19_021D614C
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021D47F4
	b _021D491E
_021D47F4:
	sub r7, r5, r0
	add r0, r4, #0
	bl ov19_021D5EB8
	add r1, r7, r0
	bpl _021D4804
	add r1, #0x12
	b _021D480A
_021D4804:
	cmp r1, #0x12
	blt _021D480A
	sub r1, #0x12
_021D480A:
	mov r0, #0x83
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov19_021D5D9C
	add r0, r4, #0
	add r1, r7, #0
	bl ov19_021D5DAC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x29
	bl ov19_021D6594
	ldr r0, _021D4934 ; =0x000005DC
	bl sub_02005748
	mov r0, #2
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4836:
	add r0, r4, #0
	bl ov19_021D5E68
	add r5, r0, #0
	add r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D484C
	mov r1, #1
	b _021D484E
_021D484C:
	mov r1, #0
_021D484E:
	mov r0, #0x81
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	mov r2, #0
	str r2, [r4, r1]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4862:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021D48A2
	sub r0, #0x40
	add r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #3
	bne _021D48A2
	add r0, r4, #0
	bl ov19_021D5E68
	add r5, r0, #0
	add r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D488E
	mov r1, #1
	b _021D4890
_021D488E:
	mov r1, #0
_021D4890:
	mov r0, #0x81
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	mov r2, #0
	str r2, [r4, r1]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_021D48A2:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x29
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	mov r0, #1
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D48B8:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D48EE
	add r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #0
	beq _021D48EE
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6594
	mov r0, #4
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D48EE:
	mov r0, #1
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D48F4:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	mov r0, #1
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D490A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D491E
	add r0, r4, #0
	bl ov19_021D0EC0
_021D491E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4920: .word 0x000005E4
_021D4924: .word ov19_021D4938
_021D4928: .word 0x000005F3
_021D492C: .word 0x021BF67C
_021D4930: .word 0x000005DD
_021D4934: .word 0x000005DC
	thumb_func_end ov19_021D4640

	thumb_func_start ov19_021D4938
ov19_021D4938: ; 0x021D4938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #3
	bhi _021D49BC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4952: ; jump table
	.short _021D495A - _021D4952 - 2 ; case 0
	.short _021D49AC - _021D4952 - 2 ; case 1
	.short _021D4B04 - _021D4952 - 2 ; case 2
	.short _021D4B5C - _021D4952 - 2 ; case 3
_021D495A:
	ldr r0, _021D4B74 ; =0x000005E4
	bl sub_02005748
	add r0, r4, #0
	mov r1, #2
	bl ov19_021D5D94
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5DA4
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5D9C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6594
	mov r0, #0x58
	str r0, [sp]
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xff
	mov r2, #0xc0
	mov r3, #0x38
	bl ov19_021D603C
	mov r0, #0x81
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	add sp, #8
	str r1, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D49AC:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6600
	cmp r0, #0
	bne _021D49BE
_021D49BC:
	b _021D4B70
_021D49BE:
	add r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D49DE
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D49DE
	ldr r1, _021D4B78 ; =ov19_021D4640
	add r0, r4, #0
	bl ov19_021D0EB0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D49DE:
	ldr r0, _021D4B7C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _021D4A06
	ldr r0, _021D4B80 ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5D94
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x28
	bl ov19_021D6594
	mov r0, #3
	str r0, [r6, #0]
_021D4A06:
	add r0, r4, #0
	bl ov19_021D4B88
	cmp r0, #0
	beq _021D4A32
	ldr r0, _021D4B80 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2a
	bl ov19_021D6594
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl ov19_021D6594
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4A32:
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #1
	beq _021D4A4C
	cmp r0, #2
	beq _021D4A6E
	cmp r0, #3
	beq _021D4AD6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4A4C:
	add r0, r4, #0
	bl ov19_021D5EB8
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r1, #0xc
	add sp, #8
	str r2, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D4A6E:
	mov r0, #0x72
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov19_021D614C
	add r7, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r7, r0
	beq _021D4B70
	sub r0, r7, r0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov19_021D5EB8
	ldr r1, [sp, #4]
	add r5, r1, r0
	bpl _021D4A98
	add r5, #8
	b _021D4A9E
_021D4A98:
	cmp r5, #8
	blt _021D4A9E
	sub r5, #8
_021D4A9E:
	mov r0, #0x83
	lsl r0, r0, #2
	str r7, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov19_021D5D9C
	add r0, r4, #0
	add r1, r5, #0
	bl ov19_021D5DA4
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov19_021D5DAC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x29
	bl ov19_021D6594
	ldr r0, _021D4B84 ; =0x000005DC
	bl sub_02005748
	mov r0, #2
	add sp, #8
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4AD6:
	add r0, r4, #0
	bl ov19_021D5E68
	add r5, r0, #0
	add r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D4AEC
	mov r1, #1
	b _021D4AEE
_021D4AEC:
	mov r1, #0
_021D4AEE:
	mov r0, #0x81
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	mov r2, #0
	str r2, [r4, r1]
	mov r1, #1
	add r0, r0, #4
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4B04:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021D4B44
	sub r0, #0x40
	add r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #3
	bne _021D4B44
	add r0, r4, #0
	bl ov19_021D5E68
	add r5, r0, #0
	add r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D4B30
	mov r1, #1
	b _021D4B32
_021D4B30:
	mov r1, #0
_021D4B32:
	mov r0, #0x81
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	mov r2, #0
	str r2, [r4, r1]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_021D4B44:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x29
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4B70
	mov r0, #1
	add sp, #8
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4B5C:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4B70
	add r0, r4, #0
	bl ov19_021D0EC0
_021D4B70:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4B74: .word 0x000005E4
_021D4B78: .word ov19_021D4640
_021D4B7C: .word 0x021BF67C
_021D4B80: .word 0x000005DD
_021D4B84: .word 0x000005DC
	thumb_func_end ov19_021D4938

	thumb_func_start ov19_021D4B88
ov19_021D4B88: ; 0x021D4B88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_0202404C
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _021D4BAA
	mov r0, #1
	pop {r4, pc}
_021D4BAA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4B88

	thumb_func_start ov19_021D4BB0
ov19_021D4BB0: ; 0x021D4BB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x62
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #8
	bne _021D4BDE
	cmp r1, #0
	bne _021D4BDE
	add r0, r4, #0
	bl ov19_021D5EC0
	add r1, r0, r5
	cmp r1, #8
	blo _021D4BD2
	sub r1, #8
_021D4BD2:
	add r0, r4, #0
	bl ov19_021D5DB4
	mov r0, #0x62
	lsl r0, r0, #2
	str r5, [r4, r0]
_021D4BDE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4BB0

	thumb_func_start ov19_021D4BE0
ov19_021D4BE0: ; 0x021D4BE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024420
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r2, [r4, #0]
	sub r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [r4, #0]
	bl sub_0207A268
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	bl sub_02025E44
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x8c
	str r4, [r5, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0x13
	mov r3, #9
	str r0, [r4, #8]
	bl sub_0200B144
	mov r2, #0x63
	lsl r2, r2, #2
	str r0, [r5, r2]
	mov r0, #1
	mov r1, #0x1a
	add r2, #0x10
	mov r3, #9
	bl sub_0200B144
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xca
	mov r3, #9
	bl sub_0200B144
	mov r2, #0x65
	lsl r2, r2, #2
	str r0, [r5, r2]
	mov r0, #0
	mov r1, #0x1a
	add r2, #0xce
	mov r3, #9
	bl sub_0200B144
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	bl sub_0200B358
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02073C70
	add r1, r0, #0
	mov r0, #9
	bl sub_02018144
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D4C88
	bl sub_02022974
_021D4C88:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	str r0, [sp]
	mov r0, #9
	mov r2, #0
	mov r3, #8
	bl sub_0208712C
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _021D4CBA
	mov r0, #9
	str r0, [sp]
	ldr r0, _021D4D44 ; =0x021DFDF6
	ldr r2, _021D4D48 ; =ov19_021D53B8
	mov r1, #3
	add r3, r5, #0
	bl sub_02023FCC
	b _021D4CCA
_021D4CBA:
	mov r0, #9
	str r0, [sp]
	ldr r0, _021D4D4C ; =0x021DFE02
	ldr r2, _021D4D48 ; =ov19_021D53B8
	mov r1, #4
	add r3, r5, #0
	bl sub_02023FCC
_021D4CCA:
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	ldr r0, _021D4D50 ; =0x021DFE12
	ldr r2, _021D4D54 ; =ov19_021D4BB0
	mov r1, #7
	add r3, r5, #0
	bl sub_02023FCC
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x60
	ldr r0, [r5, r0]
	mov r2, #0
	str r0, [r5, #0]
	add r0, r1, #0
	sub r0, #0x5c
	ldr r0, [r5, r0]
	str r0, [r5, #4]
	add r0, r1, #0
	sub r0, #0x70
	strh r2, [r5, r0]
	sub r1, #0x6e
	strh r2, [r5, r1]
	add r0, r5, #0
	ldr r1, [r4, #4]
	add r0, #0x48
	bl ov19_021D4DE4
	add r0, r5, #0
	add r0, #0x4c
	bl ov19_021D4E88
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, r5, #0
	ldr r0, [r5, r0]
	add r1, #0x40
	bl ov19_021D4E5C
	add r0, r5, #0
	add r0, #0xa4
	bl ov19_021D4EE4
	add r0, r5, #0
	bl ov19_021D4DF0
	add r0, r5, #0
	add r0, #0x14
	bl ov19_021D4E30
	add r5, #0x9c
	add r0, r5, #0
	bl ov19_021D4F34
	pop {r3, r4, r5, pc}
	nop
_021D4D44: .word 0x021DFDF6
_021D4D48: .word ov19_021D53B8
_021D4D4C: .word 0x021DFE02
_021D4D50: .word 0x021DFE12
_021D4D54: .word ov19_021D4BB0
	thumb_func_end ov19_021D4BE0

	thumb_func_start ov19_021D4D58
ov19_021D4D58: ; 0x021D4D58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D4D7E
	bl sub_020181C4
_021D4D7E:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0208716C
	add r0, r4, #0
	add r0, #0x4c
	bl ov19_021D4EC0
	add r0, r4, #0
	add r0, #0x14
	bl ov19_021D4E50
	add r0, r4, #0
	add r0, #0x40
	bl ov19_021D4E7C
	add r0, r4, #0
	add r0, #0xa4
	bl ov19_021D4F18
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4D58

	thumb_func_start ov19_021D4DE4
ov19_021D4DE4: ; 0x021D4DE4
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D4DE4

	thumb_func_start ov19_021D4DF0
ov19_021D4DF0: ; 0x021D4DF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	add r4, r5, #0
	add r2, r1, #0
	add r4, #8
	bl ov19_021D5410
	mov r2, #0
	add r0, r5, #0
	strb r2, [r4, #8]
	mov r1, #1
	strb r1, [r4, #9]
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D4E18
	cmp r0, #4
	beq _021D4E1C
	b _021D4E22
_021D4E18:
	strb r1, [r4, #4]
	b _021D4E24
_021D4E1C:
	mov r0, #2
	strb r0, [r4, #4]
	b _021D4E24
_021D4E22:
	strb r2, [r4, #4]
_021D4E24:
	mov r0, #1
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4DF0

	thumb_func_start ov19_021D4E30
ov19_021D4E30: ; 0x021D4E30
	push {r4, lr}
	add r4, r0, #0
	bl sub_02076AF4
	add r2, r0, #0
	mov r1, #0x1e
	mov r0, #9
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0]
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #0xb]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4E30

	thumb_func_start ov19_021D4E50
ov19_021D4E50: ; 0x021D4E50
	ldr r3, _021D4E58 ; =sub_020181C4
	ldr r0, [r0, #0]
	bx r3
	nop
_021D4E58: .word sub_020181C4
	thumb_func_end ov19_021D4E50

	thumb_func_start ov19_021D4E5C
ov19_021D4E5C: ; 0x021D4E5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0207999C
	strb r0, [r4]
	mov r0, #0x14
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021D4F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4E5C

	thumb_func_start ov19_021D4E7C
ov19_021D4E7C: ; 0x021D4E7C
	ldr r3, _021D4E84 ; =sub_020237BC
	ldr r0, [r0, #4]
	bx r3
	nop
_021D4E84: .word sub_020237BC
	thumb_func_end ov19_021D4E7C

	thumb_func_start ov19_021D4E88
ov19_021D4E88: ; 0x021D4E88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #0x14]
	mov r0, #0xc
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #0x18]
	mov r0, #0x12
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #0x1c]
	mov r0, #0xc
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #0x20]
	mov r0, #0x10
	mov r1, #9
	bl sub_02023790
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov19_021D4E88

	thumb_func_start ov19_021D4EC0
ov19_021D4EC0: ; 0x021D4EC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	ldr r0, [r4, #0x1c]
	bl sub_020237BC
	ldr r0, [r4, #0x20]
	bl sub_020237BC
	ldr r0, [r4, #0x24]
	bl sub_020237BC
	pop {r4, pc}
	thumb_func_end ov19_021D4EC0

	thumb_func_start ov19_021D4EE4
ov19_021D4EE4: ; 0x021D4EE4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	strb r4, [r6]
	strb r4, [r6, #1]
	str r4, [r6, #4]
	add r5, r6, #0
	add r7, r4, #0
_021D4EF4:
	add r0, r6, r4
	strb r7, [r0, #2]
	mov r0, #0xc
	mov r1, #9
	bl sub_02023790
	str r0, [r5, #0x30]
	mov r0, #0xc
	mov r1, #9
	bl sub_02023790
	str r0, [r5, #0x34]
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #2
	blt _021D4EF4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4EE4

	thumb_func_start ov19_021D4F18
ov19_021D4F18: ; 0x021D4F18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D4F1E:
	ldr r0, [r5, #0x30]
	bl sub_020237BC
	ldr r0, [r5, #0x34]
	bl sub_020237BC
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #2
	blt _021D4F1E
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4F18

	thumb_func_start ov19_021D4F34
ov19_021D4F34: ; 0x021D4F34
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov19_021D4F34

	thumb_func_start ov19_021D4F40
ov19_021D4F40: ; 0x021D4F40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	bl sub_02079AA8
	strb r0, [r4, #1]
	ldrb r1, [r4]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_02079AF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4F40

	thumb_func_start ov19_021D4F5C
ov19_021D4F5C: ; 0x021D4F5C
	push {r4, lr}
	add r2, r0, #0
	add r4, r2, #0
	add r2, #0x40
	add r0, r1, #0
	ldrb r1, [r2]
	add r4, #0x40
	bl sub_02079AA8
	strb r0, [r4, #1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4F5C

	thumb_func_start ov19_021D4F74
ov19_021D4F74: ; 0x021D4F74
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r4, #0
	tst r2, r1
	beq _021D4F90
	add r0, r5, #0
	sub r1, #0x21
	add r2, r4, #0
	bl ov19_021D4FDC
	add r4, r0, #0
	b _021D4FCC
_021D4F90:
	mov r1, #0x10
	tst r1, r0
	beq _021D4FA4
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov19_021D4FDC
	add r4, r0, #0
	b _021D4FCC
_021D4FA4:
	mov r2, #0x40
	add r1, r0, #0
	tst r1, r2
	beq _021D4FBA
	add r0, r5, #0
	add r1, r4, #0
	sub r2, #0x41
	bl ov19_021D4FDC
	add r4, r0, #0
	b _021D4FCC
_021D4FBA:
	mov r1, #0x80
	tst r0, r1
	beq _021D4FCC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov19_021D4FDC
	add r4, r0, #0
_021D4FCC:
	cmp r4, #1
	bne _021D4FD6
	add r0, r5, #0
	bl ov19_021D52F4
_021D4FD6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4F74

	thumb_func_start ov19_021D4FDC
ov19_021D4FDC: ; 0x021D4FDC
	push {r4, lr}
	add r3, r0, #0
	add r3, #8
	ldrb r4, [r3, #4]
	cmp r4, #4
	bhi _021D502A
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021D4FF4: ; jump table
	.short _021D4FFE - _021D4FF4 - 2 ; case 0
	.short _021D50E0 - _021D4FF4 - 2 ; case 1
	.short _021D505E - _021D4FF4 - 2 ; case 2
	.short _021D50B4 - _021D4FF4 - 2 ; case 3
	.short _021D5088 - _021D4FF4 - 2 ; case 4
_021D4FFE:
	cmp r1, #0
	beq _021D5026
	mov r2, #5
	ldrsb r4, [r3, r2]
	add r1, r4, r1
	strb r1, [r3, #5]
	ldrsb r1, [r3, r2]
	cmp r1, #0
	bge _021D5014
	add r1, r2, #0
	b _021D501A
_021D5014:
	cmp r1, #6
	blt _021D501A
	mov r1, #0
_021D501A:
	mov r2, #6
	ldrsb r2, [r3, r2]
	bl ov19_021D5410
	mov r0, #1
	pop {r4, pc}
_021D5026:
	cmp r2, #0
	bne _021D502C
_021D502A:
	b _021D514A
_021D502C:
	mov r1, #6
	ldrsb r1, [r3, r1]
	add r2, r1, r2
	bpl _021D503C
	mov r1, #2
	mov r2, #0
	strb r1, [r3, #4]
	b _021D5052
_021D503C:
	cmp r2, #4
	ble _021D5052
	mov r1, #5
	ldrsb r1, [r3, r1]
	mov r2, #4
	cmp r1, #5
	bne _021D504E
	add r1, r2, #0
	b _021D5050
_021D504E:
	mov r1, #3
_021D5050:
	strb r1, [r3, #4]
_021D5052:
	mov r1, #5
	ldrsb r1, [r3, r1]
	bl ov19_021D5410
	mov r0, #1
	pop {r4, pc}
_021D505E:
	cmp r2, #0
	ble _021D5072
	mov r2, #0
	strb r2, [r3, #4]
	mov r1, #5
	ldrsb r1, [r3, r1]
	bl ov19_021D5410
	mov r0, #1
	pop {r4, pc}
_021D5072:
	bge _021D514A
	mov r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _021D5080
	mov r0, #4
	b _021D5082
_021D5080:
	mov r0, #3
_021D5082:
	strb r0, [r3, #4]
	mov r0, #1
	pop {r4, pc}
_021D5088:
	cmp r2, #0
	bge _021D509E
	mov r1, #0
	strb r1, [r3, #4]
	mov r1, #5
	ldrsb r1, [r3, r1]
	mov r2, #4
	bl ov19_021D5410
	mov r0, #1
	pop {r4, pc}
_021D509E:
	ble _021D50A8
	mov r0, #2
	strb r0, [r3, #4]
	mov r0, #1
	pop {r4, pc}
_021D50A8:
	cmp r1, #0
	beq _021D514A
	mov r0, #3
	strb r0, [r3, #4]
	mov r0, #1
	pop {r4, pc}
_021D50B4:
	cmp r2, #0
	bge _021D50CA
	mov r1, #0
	strb r1, [r3, #4]
	mov r1, #5
	ldrsb r1, [r3, r1]
	mov r2, #4
	bl ov19_021D5410
	mov r0, #1
	pop {r4, pc}
_021D50CA:
	ble _021D50D4
	mov r0, #2
	strb r0, [r3, #4]
	mov r0, #1
	pop {r4, pc}
_021D50D4:
	cmp r1, #0
	beq _021D514A
	mov r0, #4
	strb r0, [r3, #4]
	mov r0, #1
	pop {r4, pc}
_021D50E0:
	mov r4, #8
	ldrsb r0, [r3, r4]
	cmp r2, #0
	bge _021D5102
	cmp r0, #6
	bne _021D50F2
	mov r1, #5
	strb r1, [r3, #8]
	b _021D513E
_021D50F2:
	sub r1, r0, #2
	strb r1, [r3, #8]
	ldrsb r1, [r3, r4]
	cmp r1, #0
	bge _021D513E
	mov r1, #6
	strb r1, [r3, #8]
	b _021D513E
_021D5102:
	ble _021D511E
	cmp r0, #6
	bne _021D510E
	mov r1, #0
	strb r1, [r3, #8]
	b _021D513E
_021D510E:
	add r1, r0, #2
	strb r1, [r3, #8]
	ldrsb r1, [r3, r4]
	cmp r1, #6
	blt _021D513E
	mov r1, #6
	strb r1, [r3, #8]
	b _021D513E
_021D511E:
	cmp r1, #0
	bge _021D512E
	mov r1, #1
	tst r1, r0
	beq _021D513E
	sub r1, r0, #1
	strb r1, [r3, #8]
	b _021D513E
_021D512E:
	ble _021D513E
	cmp r0, #6
	beq _021D513E
	mov r1, #1
	tst r1, r0
	bne _021D513E
	add r1, r0, #1
	strb r1, [r3, #8]
_021D513E:
	mov r1, #8
	ldrsb r1, [r3, r1]
	cmp r0, r1
	beq _021D514A
	mov r0, #1
	pop {r4, pc}
_021D514A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D4FDC

	thumb_func_start ov19_021D5150
ov19_021D5150: ; 0x021D5150
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r4, #0
	tst r2, r1
	beq _021D516C
	add r0, r5, #0
	sub r1, #0x21
	add r2, r4, #0
	bl ov19_021D51CC
	add r4, r0, #0
	b _021D51BE
_021D516C:
	mov r1, #0x10
	tst r1, r0
	beq _021D5180
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov19_021D51CC
	add r4, r0, #0
	b _021D51BE
_021D5180:
	mov r2, #0x40
	add r1, r0, #0
	tst r1, r2
	beq _021D5196
	add r0, r5, #0
	add r1, r4, #0
	sub r2, #0x41
	bl ov19_021D51CC
	add r4, r0, #0
	b _021D51BE
_021D5196:
	mov r2, #0x80
	add r1, r0, #0
	tst r1, r2
	beq _021D51AC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov19_021D51CC
	add r4, r0, #0
	b _021D51BE
_021D51AC:
	lsl r1, r2, #2
	tst r1, r0
	beq _021D51B6
	mov r4, #3
	b _021D51BE
_021D51B6:
	add r2, #0x80
	tst r0, r2
	beq _021D51BE
	mov r4, #4
_021D51BE:
	cmp r4, #1
	bne _021D51C8
	add r0, r5, #0
	bl ov19_021D52F4
_021D51C8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D5150

	thumb_func_start ov19_021D51CC
ov19_021D51CC: ; 0x021D51CC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r7, #0
	add r4, #8
	ldrb r3, [r4, #4]
	add r6, r7, #0
	add r6, #0x14
	cmp r3, #0
	bne _021D5286
	cmp r1, #0
	beq _021D5234
	mov r2, #5
	ldrsb r2, [r4, r2]
	add r5, r2, r1
	bl ov19_021D5E38
	mov r1, #0xc
	tst r0, r1
	beq _021D5218
	ldrb r0, [r6, #4]
	ldrb r3, [r6, #6]
	add r2, r5, #0
	add r1, r5, #0
	cmp r3, r0
	bls _021D5204
	sub r0, r3, r0
	sub r1, r5, r0
	b _021D5208
_021D5204:
	sub r0, r0, r3
	add r2, r5, r0
_021D5208:
	cmp r1, #0
	bge _021D5210
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021D5210:
	cmp r2, #6
	blt _021D5224
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021D5218:
	cmp r5, #0
	blt _021D5220
	cmp r5, #6
	blt _021D5224
_021D5220:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D5224:
	mov r2, #6
	ldrsb r2, [r4, r2]
	add r0, r7, #0
	add r1, r5, #0
	bl ov19_021D5410
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5234:
	cmp r2, #0
	beq _021D5286
	mov r1, #6
	ldrsb r1, [r4, r1]
	add r5, r1, r2
	bl ov19_021D5E38
	mov r1, #0xc
	tst r0, r1
	beq _021D526A
	ldrb r0, [r6, #5]
	ldrb r3, [r6, #7]
	add r2, r5, #0
	add r1, r5, #0
	cmp r3, r0
	bls _021D525A
	sub r0, r3, r0
	sub r1, r5, r0
	b _021D525E
_021D525A:
	sub r0, r0, r3
	add r2, r5, r0
_021D525E:
	cmp r1, #0
	blt _021D5266
	cmp r2, #5
	blt _021D5276
_021D5266:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D526A:
	cmp r5, #0
	blt _021D5272
	cmp r5, #5
	blt _021D5276
_021D5272:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D5276:
	mov r1, #5
	ldrsb r1, [r4, r1]
	add r0, r7, #0
	add r2, r5, #0
	bl ov19_021D5410
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5286:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D51CC

	thumb_func_start ov19_021D5290
ov19_021D5290: ; 0x021D5290
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #8
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D52BA
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	strb r0, [r4, #8]
	mov r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #6
	blt _021D52BE
	mov r0, #5
	strb r0, [r4, #8]
	b _021D52BE
_021D52BA:
	mov r0, #0
	strb r0, [r4, #8]
_021D52BE:
	ldrb r0, [r4, #4]
	strb r0, [r4, #9]
	mov r0, #1
	strb r0, [r4, #4]
	add r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5290

	thumb_func_start ov19_021D52D0
ov19_021D52D0: ; 0x021D52D0
	push {r4, lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, #8
	mov r1, #0
	strb r1, [r3, #4]
	mov r2, #9
	ldrsb r2, [r3, r2]
	cmp r2, #0
	beq _021D52EA
	add r2, r1, #0
	bl ov19_021D5410
_021D52EA:
	add r0, r4, #0
	bl ov19_021D52F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D52D0

	thumb_func_start ov19_021D52F4
ov19_021D52F4: ; 0x021D52F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #8
	mov r1, #0
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #4
	bhi _021D5354
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5312: ; jump table
	.short _021D531C - _021D5312 - 2 ; case 0
	.short _021D532C - _021D5312 - 2 ; case 1
	.short _021D5354 - _021D5312 - 2 ; case 2
	.short _021D5354 - _021D5312 - 2 ; case 3
	.short _021D5354 - _021D5312 - 2 ; case 4
_021D531C:
	mov r2, #7
	ldrsb r2, [r4, r2]
	ldr r0, [r5, #0]
	sub r1, r1, #1
	bl sub_02079C9C
	str r0, [r4, #0]
	b _021D5358
_021D532C:
	mov r0, #8
	ldrsb r6, [r4, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	cmp r6, r0
	bge _021D534E
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	str r0, [r4, #0]
	b _021D5358
_021D534E:
	mov r0, #0
	str r0, [r4, #0]
	b _021D5358
_021D5354:
	mov r0, #0
	str r0, [r4, #0]
_021D5358:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D5388
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021D5388
	mov r0, #1
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl ov19_021D5E38
	mov r1, #6
	tst r0, r1
	bne _021D5388
	ldr r1, [r4, #0]
	add r0, r5, #0
	add r2, r5, #0
	bl ov19_021D5888
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D5388:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D52F4

	thumb_func_start ov19_021D538C
ov19_021D538C: ; 0x021D538C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	ldr r1, _021D53B4 ; =0x0000FFFF
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_0202404C
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _021D53B4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D53B0
	mov r0, #1
	pop {r4, pc}
_021D53B0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D53B4: .word 0x0000FFFF
	thumb_func_end ov19_021D538C

	thumb_func_start ov19_021D53B8
ov19_021D53B8: ; 0x021D53B8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _021D53D2
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	ldr r1, _021D5404 ; =0x0000FFFF
	cmp r2, r1
	bne _021D53D2
	str r6, [r4, r0]
_021D53D2:
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021D5400
	cmp r6, #2
	bne _021D5400
	cmp r5, #0
	beq _021D53EE
	cmp r5, #1
	beq _021D53F8
	cmp r5, #3
	beq _021D53F8
	pop {r4, r5, r6, pc}
_021D53EE:
	add r0, r4, #0
	mov r1, #1
	bl ov19_021D5BA0
	pop {r4, r5, r6, pc}
_021D53F8:
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D5BA0
_021D5400:
	pop {r4, r5, r6, pc}
	nop
_021D5404: .word 0x0000FFFF
	thumb_func_end ov19_021D53B8

	thumb_func_start ov19_021D5408
ov19_021D5408: ; 0x021D5408
	mov r2, #0x43
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov19_021D5408

	thumb_func_start ov19_021D5410
ov19_021D5410: ; 0x021D5410
	add r0, #8
	mov r3, #6
	strb r1, [r0, #5]
	mul r3, r2
	strb r2, [r0, #6]
	add r1, r1, r3
	strb r1, [r0, #7]
	bx lr
	thumb_func_end ov19_021D5410

	thumb_func_start ov19_021D5420
ov19_021D5420: ; 0x021D5420
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r4, r7, #0
	add r5, r7, #0
	add r0, r7, #0
	add r4, #0x14
	add r5, #8
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D545C
	bl sub_02076AF4
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_020C4B68
	mov r0, #0x12
	mov r2, #7
	lsl r0, r0, #4
	mov r1, #0
	ldrsb r2, [r5, r2]
	ldr r0, [r6, r0]
	mvn r1, r1
	bl sub_02079968
	mov r0, #0
	b _021D547A
_021D545C:
	bl sub_02076AF0
	add r2, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_020C4B68
	mov r0, #0x49
	mov r1, #8
	lsl r0, r0, #2
	ldrsb r1, [r5, r1]
	ldr r0, [r6, r0]
	bl sub_0207A080
	mov r0, #1
_021D547A:
	strb r0, [r4, #0xb]
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov19_021D5BA8
	mov r0, #5
	ldrsb r0, [r5, r0]
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	strb r0, [r4, #4]
	mov r0, #6
	ldrsb r0, [r5, r0]
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	strb r0, [r4, #5]
	mov r0, #2
	strb r0, [r7, #0x13]
	mov r0, #0
	strb r0, [r7, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5420

	thumb_func_start ov19_021D54A4
ov19_021D54A4: ; 0x021D54A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r7, r0, #0
	add r6, #0x14
	mov r0, #1
	strb r0, [r6, #0xa]
	add r0, r1, #0
	str r1, [sp, #4]
	bl ov19_021D5E24
	str r0, [sp, #0x14]
	bl sub_02076AF4
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, sp, #0x30
	ldr r5, [r0, #0x14]
	add r0, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov19_021D5EE8
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x18]
	cmp r0, r1
	bhi _021D556A
	mov r1, #6
	mul r1, r0
	str r1, [sp, #8]
_021D54EA:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #8]
	str r1, [sp, #0x1c]
	add r4, r1, r0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	bhi _021D5558
_021D54FA:
	mov r0, #0x12
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r7, r0]
	mvn r1, r1
	add r2, r4, #0
	bl sub_02079C9C
	mov r1, #0xac
	mov r2, #0
	str r0, [sp, #0x20]
	bl sub_02074570
	cmp r0, #0
	beq _021D554A
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl sub_020C4B68
	mov r0, #0x12
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r7, r0]
	mvn r1, r1
	add r2, r4, #0
	bl sub_02079968
	ldr r0, [sp, #0x10]
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r1, r6, r0
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	strb r4, [r1, #0xc]
	cmp r4, r0
	bne _021D554A
	mov r0, #0
	strb r0, [r6, #0xa]
_021D554A:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	add r0, r0, #1
	add r4, r4, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	bls _021D54FA
_021D5558:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x24]
	add r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	bls _021D54EA
_021D556A:
	ldr r0, [sp, #0xc]
	strb r0, [r6, #8]
	ldr r1, [sp, #0x28]
	mov r0, #6
	ldr r2, [sp, #0x30]
	mul r0, r1
	add r0, r2, r0
	strb r0, [r6, #9]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _021D5586
	mov r1, #4
	b _021D5588
_021D5586:
	mov r1, #8
_021D5588:
	ldr r0, [sp, #4]
	strb r1, [r0, #0x13]
	mov r1, #0
	strb r1, [r0, #0x12]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D54A4

	thumb_func_start ov19_021D5594
ov19_021D5594: ; 0x021D5594
	add r2, r1, #0
	add r1, #8
	mov r0, #5
	ldrsb r0, [r1, r0]
	add r2, #0x14
	strb r0, [r2, #6]
	ldrb r0, [r2, #6]
	strb r0, [r2, #4]
	mov r0, #6
	ldrsb r0, [r1, r0]
	strb r0, [r2, #7]
	ldrb r0, [r2, #7]
	strb r0, [r2, #5]
	bx lr
	thumb_func_end ov19_021D5594

	thumb_func_start ov19_021D55B0
ov19_021D55B0: ; 0x021D55B0
	add r2, r1, #0
	add r1, #8
	mov r0, #5
	ldrsb r0, [r1, r0]
	add r2, #0x14
	strb r0, [r2, #6]
	mov r0, #6
	ldrsb r0, [r1, r0]
	strb r0, [r2, #7]
	bx lr
	thumb_func_end ov19_021D55B0

	thumb_func_start ov19_021D55C4
ov19_021D55C4: ; 0x021D55C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r1, #0
	add r0, r1, #0
	str r1, [sp]
	add r4, #0x14
	add r6, #8
	mov r7, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D562A
	ldr r0, [r4, #0]
	mov r1, #0x70
	add r2, r7, #0
	bl sub_02074570
	str r0, [sp, #4]
	mov r0, #0x12
	mov r2, #7
	lsl r0, r0, #4
	ldrsb r2, [r6, r2]
	ldr r0, [r5, r0]
	ldr r3, [r4, #0]
	sub r1, r7, #1
	bl sub_02079914
	mov r0, #0x12
	mov r2, #7
	lsl r0, r0, #4
	ldrsb r2, [r6, r2]
	ldr r0, [r5, r0]
	sub r1, r7, #1
	bl sub_02079C9C
	mov r1, #5
	add r2, r7, #0
	add r4, r0, #0
	bl sub_02074570
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _021D5672
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021D5672
	mov r7, #1
	b _021D5672
_021D562A:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021D563E
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	bl sub_0207A048
	b _021D5658
_021D563E:
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r0, [r4, #0]
	ldr r1, [r5, r1]
	bl sub_020774C8
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0x7c
	ldr r1, [r5, r1]
	bl sub_0207A048
_021D5658:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0F8
	add r1, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	sub r1, r1, #1
	bl sub_0207A0FC
	add r4, r0, #0
_021D5672:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov19_021D5BA8
	add r0, r5, #0
	bl ov19_021D52F4
	cmp r0, #0
	bne _021D569E
	cmp r7, #1
	bne _021D569E
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl ov19_021D58AC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov19_021D6594
_021D569E:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	strb r1, [r0, #0x12]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D55C4

	thumb_func_start ov19_021D56AC
ov19_021D56AC: ; 0x021D56AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r0, #0
	add r6, #0x14
	add r0, r1, #0
	str r1, [sp]
	bl ov19_021D5F3C
	str r0, [sp, #8]
	ldrb r0, [r6, #9]
	str r0, [sp, #0xc]
	bl sub_02076AF4
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r5, #0
	ldr r4, [r0, #0x14]
	ldrb r0, [r6, #8]
	cmp r0, #0
	ble _021D5700
_021D56D6:
	add r3, r6, r5
	mov r2, #0xc
	ldrsb r3, [r3, r2]
	ldr r2, [sp, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	sub r3, r3, r2
	ldr r2, [sp, #8]
	mov r1, #0
	add r2, r2, r3
	ldr r0, [r7, r0]
	mvn r1, r1
	add r3, r4, #0
	bl sub_02079914
	ldr r0, [sp, #4]
	add r5, r5, #1
	add r4, r4, r0
	ldrb r0, [r6, #8]
	cmp r5, r0
	blt _021D56D6
_021D5700:
	ldr r0, [sp]
	bl ov19_021D5E24
	add r2, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r7, r0]
	mvn r1, r1
	bl sub_02079C9C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov19_021D5BA8
	add r0, r7, #0
	bl ov19_021D52F4
	mov r0, #0
	strb r0, [r6, #8]
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D56AC

	thumb_func_start ov19_021D5734
ov19_021D5734: ; 0x021D5734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	str r1, [sp]
	add r5, r0, #0
	add r4, #0x14
	bl sub_02076AF0
	add r6, r0, #0
	ldr r0, [sp]
	add r2, r6, #0
	ldr r7, [r0, #0x14]
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r7, r6
	bl sub_020C4B68
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0x14]
	add r2, r6, #0
	bl sub_020C4B68
	ldr r0, [sp]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D578E
	ldr r2, [sp, #4]
	mov r0, #0x12
	mov r3, #7
	lsl r0, r0, #4
	ldrsb r2, [r2, r3]
	mov r1, #0
	ldr r0, [r5, r0]
	mvn r1, r1
	add r3, r7, r6
	bl sub_02079914
	mov r0, #0
	strb r0, [r4, #0xb]
	b _021D57C8
_021D578E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _021D57A2
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r7, r6
	bl sub_020774C8
	b _021D57B0
_021D57A2:
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r7, r6
	add r2, r6, #0
	bl sub_020C4B68
_021D57B0:
	mov r3, #0x49
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	ldr r1, [sp, #4]
	mov r2, #8
	ldrsb r1, [r1, r2]
	add r3, #0x7c
	ldr r2, [r5, r3]
	bl sub_0207A128
	mov r0, #1
	strb r0, [r4, #0xb]
_021D57C8:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	add r2, r5, #0
	bl ov19_021D5888
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5734

	thumb_func_start ov19_021D57D8
ov19_021D57D8: ; 0x021D57D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x14]
	bl sub_020798A0
	cmp r0, #0
	beq _021D57FA
	mov r0, #1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	bl ov19_021D52F4
	mov r0, #1
	pop {r4, pc}
_021D57FA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D57D8

	thumb_func_start ov19_021D5800
ov19_021D5800: ; 0x021D5800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	add r4, r5, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	add r4, #8
	bl sub_020798A0
	cmp r0, #0
	beq _021D5830
	mov r0, #0x49
	mov r1, #8
	lsl r0, r0, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, r0]
	bl sub_0207A080
	add r0, r5, #0
	bl ov19_021D52F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D5830:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D5800

	thumb_func_start ov19_021D5834
ov19_021D5834: ; 0x021D5834
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02073C54
	mov r0, #1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	bl ov19_021D52F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5834

	thumb_func_start ov19_021D584C
ov19_021D584C: ; 0x021D584C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #8
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5870
	mov r0, #0x12
	mov r2, #7
	lsl r0, r0, #4
	mov r1, #0
	ldrsb r2, [r4, r2]
	ldr r0, [r5, r0]
	mvn r1, r1
	bl sub_02079968
	b _021D587E
_021D5870:
	mov r0, #0x49
	mov r1, #8
	lsl r0, r0, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, r0]
	bl sub_0207A080
_021D587E:
	add r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D584C

	thumb_func_start ov19_021D5888
ov19_021D5888: ; 0x021D5888
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov19_021D58AC
	add r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021D58A8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov19_021D59F4
_021D58A8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5888

	thumb_func_start ov19_021D58AC
ov19_021D58AC: ; 0x021D58AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r7, #0
	add r0, r5, #0
	add r6, r2, #0
	add r4, #0x4c
	bl sub_02073D20
	str r0, [sp]
	str r5, [r7, #0x4c]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #4]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #6]
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0207A274
	ldrh r1, [r4, #4]
	bl sub_0207A294
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_02074570
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #4]
	mov r1, #9
	bl sub_02075894
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	add r2, r0, #0
	ldrh r1, [r4, #4]
	add r0, r7, #0
	bl sub_02075B9C
	strb r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074570
	strb r0, [r4, #0xb]
	add r0, r5, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074570
	strb r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074570
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D5968
	add r0, r5, #0
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _021D5968
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r2, r0, #0
	ldrh r1, [r4, #4]
	add r0, r7, #0
	bl sub_02075DD0
	strb r0, [r4, #0xe]
	b _021D596C
_021D5968:
	mov r0, #0xff
	strb r0, [r4, #0xe]
_021D596C:
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0x77
	bl sub_02074570
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D598C
	mov r0, #0x19
	lsl r0, r0, #4
	ldrh r1, [r4, #4]
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x18]
	bl sub_0200B1B8
	b _021D599A
_021D598C:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	bl sub_02023810
	ldr r0, [r4, #0x14]
	bl sub_020237E8
_021D599A:
	ldrh r1, [r4, #6]
	cmp r1, #0
	beq _021D59AA
	ldr r0, [r4, #0x1c]
	mov r2, #9
	bl sub_0207CFA0
	b _021D59B8
_021D59AA:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200B1B8
_021D59B8:
	add r0, r5, #0
	bl sub_02075BD4
	add r1, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x20]
	bl sub_0200B1B8
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x24]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_020759B8
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D58AC

	thumb_func_start ov19_021D59F4
ov19_021D59F4: ; 0x021D59F4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r1, #0
	ldr r1, [sp]
	add r6, r0, #0
	add r1, #0xa4
	add r5, r2, #0
	ldrb r2, [r1]
	mov r1, #0x30
	add r6, #0x4c
	add r0, #0xac
	mul r1, r2
	add r4, r0, r1
	str r7, [r0, r1]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrb r0, [r6, #0xf]
	strb r0, [r4, #6]
	ldrb r0, [r6, #0xa]
	strh r0, [r4, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldr r0, [r4, #0x28]
	beq _021D5A2C
	ldr r1, [r6, #0x18]
	bl sub_02023810
	b _021D5A32
_021D5A2C:
	ldr r1, [r6, #0x14]
	bl sub_02023810
_021D5A32:
	ldr r0, [r4, #0x2c]
	ldr r1, [r6, #0x20]
	bl sub_02023810
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_020774C8
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02073C88
	add r6, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xa]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xc]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0xe]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x10]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x12]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x14]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x13
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x16]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x18]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x15
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x1a]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x16
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x1c]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x17
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x1e]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x20]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x22]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x24]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	strh r0, [r4, #0x26]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #7]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02073CD4
	ldr r0, [sp]
	mov r2, #1
	add r0, #0xa4
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, r0, r1
	add r0, #0xa6
	strb r2, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D59F4

	thumb_func_start ov19_021D5B70
ov19_021D5B70: ; 0x021D5B70
	add r1, r0, #0
	add r1, #0xa4
	ldrb r2, [r1]
	mov r1, #1
	add r0, #0xa4
	eor r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D5B70

	thumb_func_start ov19_021D5B80
ov19_021D5B80: ; 0x021D5B80
	add r1, r0, #0
	add r1, #0xa5
	ldrb r1, [r1]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xa5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xa5
	ldrb r1, [r1]
	cmp r1, #3
	blo _021D5B9E
	mov r1, #0
	add r0, #0xa5
	strb r1, [r0]
_021D5B9E:
	bx lr
	thumb_func_end ov19_021D5B80

	thumb_func_start ov19_021D5BA0
ov19_021D5BA0: ; 0x021D5BA0
	add r0, #0xa8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5BA0

	thumb_func_start ov19_021D5BA8
ov19_021D5BA8: ; 0x021D5BA8
	str r1, [r0, #0x4c]
	bx lr
	thumb_func_end ov19_021D5BA8

	thumb_func_start ov19_021D5BAC
ov19_021D5BAC: ; 0x021D5BAC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x96
	ldrb r1, [r0]
	add r2, r4, #0
	add r0, sp, #0
	add r2, #0x4c
	strb r1, [r0]
	strb r1, [r2, #0xb]
	ldr r0, [r4, #0x4c]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5BE2
	add r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5BE2
	bl sub_02024804
_021D5BE2:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5BAC

	thumb_func_start ov19_021D5BE8
ov19_021D5BE8: ; 0x021D5BE8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r0, sp, #0x18
	add r4, r6, #0
	ldrh r1, [r0, #4]
	add r4, #0x4c
	add r5, r2, #0
	strh r1, [r4, #6]
	cmp r1, #0
	beq _021D5C0A
	ldr r0, [r4, #0x1c]
	mov r2, #9
	bl sub_0207CFA0
	b _021D5C18
_021D5C0A:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200B1B8
_021D5C18:
	add r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5C48
	add r0, r6, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5C48
	add r0, r6, #0
	bl ov19_021D5E24
	add r2, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	mvn r1, r1
	mov r3, #6
	bl sub_02079C50
_021D5C48:
	ldr r0, [r4, #0]
	mov r1, #6
	add r2, sp, #0x1c
	bl sub_02074C60
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _021D5CB8 ; =0x000001ED
	cmp r0, r1
	bne _021D5C8A
	ldr r0, [r4, #0]
	bl sub_02077930
	ldr r0, [r4, #0]
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074570
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074570
	add sp, #4
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_021D5C8A:
	sub r1, r1, #6
	cmp r0, r1
	bne _021D5CAE
	ldr r0, [r4, #0]
	bl sub_02077A1C
	ldr r0, [r4, #0]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x24]
	bl sub_0200B1B8
_021D5CAE:
	add sp, #4
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_021D5CB8: .word 0x000001ED
	thumb_func_end ov19_021D5BE8

	thumb_func_start ov19_021D5CBC
ov19_021D5CBC: ; 0x021D5CBC
	add r2, r0, #0
	add r2, #0x40
	ldrb r2, [r2]
	add r1, r0, #0
	add r1, #0x40
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0x40
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0x40
	ldrb r2, [r2]
	cmp r2, #0x12
	blo _021D5CDC
	mov r2, #0
	strb r2, [r1]
_021D5CDC:
	ldr r3, _021D5CE4 ; =ov19_021D4F40
	ldr r0, [r0, #0]
	bx r3
	nop
_021D5CE4: .word ov19_021D4F40
	thumb_func_end ov19_021D5CBC

	thumb_func_start ov19_021D5CE8
ov19_021D5CE8: ; 0x021D5CE8
	add r2, r0, #0
	add r2, #0x40
	ldrb r2, [r2]
	add r1, r0, #0
	add r1, #0x40
	cmp r2, #0
	beq _021D5CFA
	sub r2, r2, #1
	b _021D5CFC
_021D5CFA:
	mov r2, #0x11
_021D5CFC:
	ldr r3, _021D5D04 ; =ov19_021D4F40
	strb r2, [r1]
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_021D5D04: .word ov19_021D4F40
	thumb_func_end ov19_021D5CE8

	thumb_func_start ov19_021D5D08
ov19_021D5D08: ; 0x021D5D08
	add r3, r0, #0
	add r2, r0, #0
	add r2, #0x40
	strb r1, [r2]
	add r3, #0x40
	add r1, r3, #0
	ldr r3, _021D5D1C ; =ov19_021D4F40
	ldr r0, [r0, #0]
	bx r3
	nop
_021D5D1C: .word ov19_021D4F40
	thumb_func_end ov19_021D5D08

	thumb_func_start ov19_021D5D20
ov19_021D5D20: ; 0x021D5D20
	add r0, #0x98
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5D20

	thumb_func_start ov19_021D5D28
ov19_021D5D28: ; 0x021D5D28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0x4c
	add r4, r1, #0
	ldrh r1, [r2, #6]
	ldr r0, _021D5D50 ; =0x00000112
	strh r1, [r5, r0]
	add r0, #0x7a
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x1c]
	mov r1, #0x14
	bl sub_0200B1B8
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov19_021D5BE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D5D50: .word 0x00000112
	thumb_func_end ov19_021D5D28

	thumb_func_start ov19_021D5D54
ov19_021D5D54: ; 0x021D5D54
	ldr r1, _021D5D5C ; =0x00000112
	mov r2, #0
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
_021D5D5C: .word 0x00000112
	thumb_func_end ov19_021D5D54

	thumb_func_start ov19_021D5D60
ov19_021D5D60: ; 0x021D5D60
	push {r4, lr}
	ldr r3, _021D5D74 ; =0x00000112
	add r2, r1, #0
	ldrh r1, [r0, r3]
	mov r4, #0
	strh r4, [r0, r3]
	bl ov19_021D5BE8
	pop {r4, pc}
	nop
_021D5D74: .word 0x00000112
	thumb_func_end ov19_021D5D60

	thumb_func_start ov19_021D5D78
ov19_021D5D78: ; 0x021D5D78
	push {r4, lr}
	add r3, r0, #0
	add r3, #0x52
	ldr r4, _021D5D90 ; =0x00000112
	add r2, r1, #0
	ldrh r1, [r0, r4]
	ldrh r3, [r3]
	strh r3, [r0, r4]
	bl ov19_021D5BE8
	pop {r4, pc}
	nop
_021D5D90: .word 0x00000112
	thumb_func_end ov19_021D5D78

	thumb_func_start ov19_021D5D94
ov19_021D5D94: ; 0x021D5D94
	add r0, #0x9c
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5D94

	thumb_func_start ov19_021D5D9C
ov19_021D5D9C: ; 0x021D5D9C
	add r0, #0x9e
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5D9C

	thumb_func_start ov19_021D5DA4
ov19_021D5DA4: ; 0x021D5DA4
	add r0, #0x9d
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5DA4

	thumb_func_start ov19_021D5DAC
ov19_021D5DAC: ; 0x021D5DAC
	add r0, #0xa0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5DAC

	thumb_func_start ov19_021D5DB4
ov19_021D5DB4: ; 0x021D5DB4
	cmp r1, #0
	bne _021D5DC0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	bx lr
_021D5DC0:
	add r2, r0, #0
	add r2, #0x4a
	ldrh r3, [r2]
	mov r2, #1
	sub r1, r1, #1
	lsl r2, r1
	add r1, r3, #0
	eor r1, r2
	add r0, #0x4a
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5DB4

	thumb_func_start ov19_021D5DD8
ov19_021D5DD8: ; 0x021D5DD8
	add r1, r0, #0
	add r1, #0x49
	ldrb r2, [r1]
	mov r1, #1
	add r0, #0x49
	eor r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D5DD8

	thumb_func_start ov19_021D5DE8
ov19_021D5DE8: ; 0x021D5DE8
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5DE8

	thumb_func_start ov19_021D5DF0
ov19_021D5DF0: ; 0x021D5DF0
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5DF0

	thumb_func_start ov19_021D5DF8
ov19_021D5DF8: ; 0x021D5DF8
	mov r1, #0x69
	lsl r1, r1, #2
	ldr r3, _021D5E04 ; =sub_02027B50
	ldr r0, [r0, r1]
	bx r3
	nop
_021D5E04: .word sub_02027B50
	thumb_func_end ov19_021D5DF8

	thumb_func_start ov19_021D5E08
ov19_021D5E08: ; 0x021D5E08
	add r0, #0x48
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E08

	thumb_func_start ov19_021D5E10
ov19_021D5E10: ; 0x021D5E10
	ldrb r0, [r0, #0xc]
	bx lr
	thumb_func_end ov19_021D5E10

	thumb_func_start ov19_021D5E14
ov19_021D5E14: ; 0x021D5E14
	mov r1, #0xd
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E14

	thumb_func_start ov19_021D5E1C
ov19_021D5E1C: ; 0x021D5E1C
	mov r1, #0xe
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E1C

	thumb_func_start ov19_021D5E24
ov19_021D5E24: ; 0x021D5E24
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E24

	thumb_func_start ov19_021D5E2C
ov19_021D5E2C: ; 0x021D5E2C
	mov r1, #0x10
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E2C

	thumb_func_start ov19_021D5E34
ov19_021D5E34: ; 0x021D5E34
	ldrb r0, [r0, #0x12]
	bx lr
	thumb_func_end ov19_021D5E34

	thumb_func_start ov19_021D5E38
ov19_021D5E38: ; 0x021D5E38
	ldrb r0, [r0, #0x13]
	bx lr
	thumb_func_end ov19_021D5E38

	thumb_func_start ov19_021D5E3C
ov19_021D5E3C: ; 0x021D5E3C
	ldrb r1, [r0, #0x13]
	cmp r1, #0
	beq _021D5E46
	ldrb r0, [r0, #0x1f]
	bx lr
_021D5E46:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E3C

	thumb_func_start ov19_021D5E4C
ov19_021D5E4C: ; 0x021D5E4C
	ldrb r1, [r0, #0x13]
	cmp r1, #2
	beq _021D5E56
	cmp r1, #4
	bne _021D5E5A
_021D5E56:
	mov r0, #1
	bx lr
_021D5E5A:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _021D5E64
	mov r0, #1
	bx lr
_021D5E64:
	mov r0, #0
	bx lr
	thumb_func_end ov19_021D5E4C

	thumb_func_start ov19_021D5E68
ov19_021D5E68: ; 0x021D5E68
	add r0, #0x40
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5E68

	thumb_func_start ov19_021D5E70
ov19_021D5E70: ; 0x021D5E70
	add r0, #0x4c
	bx lr
	thumb_func_end ov19_021D5E70

	thumb_func_start ov19_021D5E74
ov19_021D5E74: ; 0x021D5E74
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021D5E86
	add r4, #0x52
	ldrh r0, [r4]
	pop {r4, pc}
_021D5E86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5E74

	thumb_func_start ov19_021D5E8C
ov19_021D5E8C: ; 0x021D5E8C
	add r0, #0x40
	bx lr
	thumb_func_end ov19_021D5E8C

	thumb_func_start ov19_021D5E90
ov19_021D5E90: ; 0x021D5E90
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov19_021D5E90

	thumb_func_start ov19_021D5E94
ov19_021D5E94: ; 0x021D5E94
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5E94

	thumb_func_start ov19_021D5E9C
ov19_021D5E9C: ; 0x021D5E9C
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end ov19_021D5E9C

	thumb_func_start ov19_021D5EA0
ov19_021D5EA0: ; 0x021D5EA0
	add r0, #0x57
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EA0

	thumb_func_start ov19_021D5EA8
ov19_021D5EA8: ; 0x021D5EA8
	add r0, #0x98
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EA8

	thumb_func_start ov19_021D5EB0
ov19_021D5EB0: ; 0x021D5EB0
	mov r1, #0xa0
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EB0

	thumb_func_start ov19_021D5EB8
ov19_021D5EB8: ; 0x021D5EB8
	add r0, #0x9e
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EB8

	thumb_func_start ov19_021D5EC0
ov19_021D5EC0: ; 0x021D5EC0
	add r0, #0x9d
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EC0

	thumb_func_start ov19_021D5EC8
ov19_021D5EC8: ; 0x021D5EC8
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D5EDA
	add r4, #0x4a
	ldrh r0, [r4]
	pop {r4, pc}
_021D5EDA:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D5EC8

	thumb_func_start ov19_021D5EE0
ov19_021D5EE0: ; 0x021D5EE0
	add r0, #0x49
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EE0

	thumb_func_start ov19_021D5EE8
ov19_021D5EE8: ; 0x021D5EE8
	push {r3, r4, r5, r6}
	add r0, #0x14
	ldrb r6, [r0, #6]
	ldrb r5, [r0, #4]
	ldr r4, [sp, #0x10]
	cmp r5, r6
	bhi _021D5EFC
	str r5, [r1, #0]
	ldrb r1, [r0, #6]
	b _021D5F00
_021D5EFC:
	str r6, [r1, #0]
	ldrb r1, [r0, #4]
_021D5F00:
	str r1, [r2, #0]
	ldrb r2, [r0, #7]
	ldrb r1, [r0, #5]
	cmp r1, r2
	bhi _021D5F14
	str r1, [r3, #0]
	ldrb r0, [r0, #7]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6}
	bx lr
_021D5F14:
	str r2, [r3, #0]
	ldrb r0, [r0, #5]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5EE8

	thumb_func_start ov19_021D5F20
ov19_021D5F20: ; 0x021D5F20
	add r0, #0x14
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #6]
	cmp r2, r1
	bne _021D5F36
	ldrb r1, [r0, #5]
	ldrb r0, [r0, #7]
	cmp r1, r0
	bne _021D5F36
	mov r0, #1
	bx lr
_021D5F36:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5F20

	thumb_func_start ov19_021D5F3C
ov19_021D5F3C: ; 0x021D5F3C
	push {r3, r4}
	add r1, r0, #0
	add r1, #0x14
	mov r2, #0xd
	mov r3, #0xe
	ldrsb r2, [r0, r2]
	ldrsb r0, [r0, r3]
	ldrb r4, [r1, #4]
	ldrb r3, [r1, #6]
	cmp r3, r4
	bls _021D5F56
	sub r3, r3, r4
	sub r2, r2, r3
_021D5F56:
	ldrb r3, [r1, #5]
	ldrb r1, [r1, #7]
	cmp r1, r3
	bls _021D5F62
	sub r1, r1, r3
	sub r0, r0, r1
_021D5F62:
	mov r1, #6
	mul r1, r0
	add r0, r2, r1
	pop {r3, r4}
	bx lr
	thumb_func_end ov19_021D5F3C

	thumb_func_start ov19_021D5F6C
ov19_021D5F6C: ; 0x021D5F6C
	add r0, #0x14
	add r2, r0, r1
	mov r1, #0xc
	ldrsb r1, [r2, r1]
	ldrb r0, [r0, #9]
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5F6C

	thumb_func_start ov19_021D5F7C
ov19_021D5F7C: ; 0x021D5F7C
	ldr r1, _021D5F84 ; =0x00000112
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D5F84: .word 0x00000112
	thumb_func_end ov19_021D5F7C

	thumb_func_start ov19_021D5F88
ov19_021D5F88: ; 0x021D5F88
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021D5F7C
	cmp r0, #0
	bne _021D5F9A
	add r0, r4, #0
	bl ov19_021D5E74
_021D5F9A:
	pop {r4, pc}
	thumb_func_end ov19_021D5F88

	thumb_func_start ov19_021D5F9C
ov19_021D5F9C: ; 0x021D5F9C
	add r0, #0xa4
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5F9C

	thumb_func_start ov19_021D5FA4
ov19_021D5FA4: ; 0x021D5FA4
	add r0, #0xa5
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5FA4

	thumb_func_start ov19_021D5FAC
ov19_021D5FAC: ; 0x021D5FAC
	mov r2, #0x30
	add r0, #0xac
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5FAC

	thumb_func_start ov19_021D5FB8
ov19_021D5FB8: ; 0x021D5FB8
	add r0, r0, r1
	add r0, #0xa6
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov19_021D5FB8

	thumb_func_start ov19_021D5FC0
ov19_021D5FC0: ; 0x021D5FC0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5FC0

	thumb_func_start ov19_021D5FC8
ov19_021D5FC8: ; 0x021D5FC8
	add r0, #0x5b
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D5FC8

	thumb_func_start ov19_021D5FD0
ov19_021D5FD0: ; 0x021D5FD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5FF6
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D6008
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074570
	pop {r4, r5, r6, pc}
_021D5FF6:
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _021D6008
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074570
	pop {r4, r5, r6, pc}
_021D6008:
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074470
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D5FD0

	thumb_func_start ov19_021D6014
ov19_021D6014: ; 0x021D6014
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D6030
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074570
	pop {r4, r5, r6, pc}
_021D6030:
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074470
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D6014

	.rodata


	.global Unk_ov19_021DFDF0
Unk_ov19_021DFDF0: ; 0x021DFDF0
	.incbin "incbin/overlay19_rodata.bin", 0x0, 0x6 - 0x0

	.global Unk_ov19_021DFDF6
Unk_ov19_021DFDF6: ; 0x021DFDF6
	.incbin "incbin/overlay19_rodata.bin", 0x6, 0x12 - 0x6

	.global Unk_ov19_021DFE02
Unk_ov19_021DFE02: ; 0x021DFE02
	.incbin "incbin/overlay19_rodata.bin", 0x12, 0x22 - 0x12

	.global Unk_ov19_021DFE12
Unk_ov19_021DFE12: ; 0x021DFE12
	.incbin "incbin/overlay19_rodata.bin", 0x22, 0x40 - 0x22

	.global Unk_ov19_021DFE30
Unk_ov19_021DFE30: ; 0x021DFE30
	.incbin "incbin/overlay19_rodata.bin", 0x40, 0x48 - 0x40

	.global Unk_ov19_021DFE38
Unk_ov19_021DFE38: ; 0x021DFE38
	.incbin "incbin/overlay19_rodata.bin", 0x48, 0x9


	.bss


	.global Unk_ov19_021E05E0
Unk_ov19_021E05E0: ; 0x021E05E0
	.space 0x4

	.global Unk_ov19_021E05E4
Unk_ov19_021E05E4: ; 0x021E05E4
	.space 0x4

	.global Unk_ov19_021E05E8
Unk_ov19_021E05E8: ; 0x021E05E8
	.space 0x4

