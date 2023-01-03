	.include "macros/function.inc"
	.include "overlay099/ov99_021D0D80.inc"

	.extern OS_IRQTable

	.text


	thumb_func_start ov99_021D0D80
ov99_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _021D0FD8 ; =0xFFFFE0FF
	and r2, r1
	str r2, [r0, #0]
	ldr r2, _021D0FDC ; =0x04001000
	ldr r3, [r2, #0]
	and r1, r3
	str r1, [r2, #0]
	ldr r3, [r0, #0]
	ldr r1, _021D0FE0 ; =0xFFFF1FFF
	and r3, r1
	str r3, [r0, #0]
	ldr r3, [r2, #0]
	add r0, #0x50
	and r1, r3
	str r1, [r2, #0]
	mov r1, #0
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x50
	strh r1, [r0]
	mov r0, #3
	mov r1, #0x4b
	lsl r2, r2, #7
	bl sub_02017FC8
	ldr r1, _021D0FE4 ; =0x0000111C
	add r0, r5, #0
	mov r2, #0x4b
	bl sub_0200681C
	ldr r2, _021D0FE4 ; =0x0000111C
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #0x4b
	bl ov99_021D19AC
	str r0, [r4, #0x10]
	mov r0, #0x4b
	bl sub_02002F38
	mov r2, #2
	str r0, [r4, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x4b
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r2, r1, #9
	mov r3, #0x4b
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #0xc]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x4b
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0xc]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x4b
	bl sub_02002F70
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02003858
	mov r0, #0x4b
	bl sub_02018340
	str r0, [r4, #8]
	mov r0, #0x40
	mov r1, #0x4b
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r4, #8]
	bl ov99_021D1380
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r2, #0x89
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x4b
	bl sub_0200B144
	str r0, [r4, #0x20]
	mov r0, #0x7f
	mov r1, #0x4b
	bl sub_02006C24
	ldr r1, _021D0FE8 ; =0x000010F8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov99_021D1918
	mov r0, #0x4b
	bl sub_0200C6E4
	ldr r1, _021D0FEC ; =0x021D4760
	ldr r2, _021D0FF0 ; =0x021D4718
	mov r3, #0x20
	str r0, [r4, #0x18]
	bl sub_0200C73C
	ldr r1, _021D0FF4 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r4, #0x18]
	bl sub_0200C704
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _021D0FF8 ; =0x021D472C
	bl sub_0200CB30
	ldr r0, [r4, #0x18]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add r0, r4, #0
	bl ov99_021D16E4
	ldr r0, [r4, #0x20]
	mov r1, #0xef
	str r0, [sp]
	ldr r0, [r4, #8]
	mvn r1, r1
	mov r2, #1
	mov r3, #0xf
	bl ov99_021D3E78
	ldr r1, _021D0FFC ; =0x00001108
	mov r2, #5
	str r0, [r4, r1]
	ldr r0, [r4, #0x20]
	ldr r1, _021D1000 ; =0xFFFFFE40
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r3, #0xf
	bl ov99_021D3E78
	ldr r1, _021D1004 ; =0x0000110C
	ldr r2, _021D1008 ; =0x0000A8C0
	str r0, [r4, r1]
	ldr r0, _021D100C ; =0x04000040
	mov r1, #0xff
	strh r1, [r0]
	add r6, r0, #0
	strh r2, [r0, #4]
	add r6, #8
	ldrh r3, [r6]
	mov r2, #0x3f
	mov r7, #0x1d
	bic r3, r2
	orr r3, r7
	mov r5, #0x20
	orr r3, r5
	strh r3, [r6]
	add r0, #0xa
	ldrh r6, [r0]
	mov r3, #0x1f
	bic r6, r2
	orr r6, r3
	orr r6, r5
	strh r6, [r0]
	ldr r0, _021D1010 ; =0x04001040
	strh r1, [r0]
	mov r1, #0x18
	strh r1, [r0, #4]
	add r1, r0, #0
	add r1, #8
	ldrh r6, [r1]
	bic r6, r2
	orr r6, r7
	orr r6, r5
	strh r6, [r1]
	add r6, r0, #0
	add r6, #0xa
	ldrh r1, [r6]
	bic r1, r2
	orr r1, r3
	orr r1, r5
	lsl r3, r0, #0x14
	strh r1, [r6]
	ldr r1, [r3, #0]
	ldr r2, _021D0FE0 ; =0xFFFF1FFF
	add r5, r1, #0
	and r5, r2
	lsr r1, r0, #0xd
	orr r1, r5
	str r1, [r3, #0]
	add r3, r0, #0
	sub r3, #0x40
	ldr r1, [r3, #0]
	lsr r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3, #0]
	ldr r0, _021D1014 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _021D1018 ; =ov99_021D1244
	ldr r2, _021D101C ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x14]
	ldr r0, _021D1020 ; =ov99_021D1350
	add r1, r4, #0
	bl sub_02017798
	ldr r1, _021D1024 ; =0x000004A2
	mov r0, #0xe
	mov r2, #1
	bl sub_02004550
	add r0, r7, #0
	sub r0, #0x2d
	mov r1, #0x3d
	mov r2, #3
	bl sub_0200AB4C
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F44C
	mov r0, #1
	mov r1, #0
	bl sub_0200F44C
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D0FD8: .word 0xFFFFE0FF
_021D0FDC: .word 0x04001000
_021D0FE0: .word 0xFFFF1FFF
_021D0FE4: .word 0x0000111C
_021D0FE8: .word 0x000010F8
_021D0FEC: .word 0x021D4760
_021D0FF0: .word 0x021D4718
_021D0FF4: .word 0x00200010
_021D0FF8: .word 0x021D472C
_021D0FFC: .word 0x00001108
_021D1000: .word 0xFFFFFE40
_021D1004: .word 0x0000110C
_021D1008: .word 0x0000A8C0
_021D100C: .word 0x04000040
_021D1010: .word 0x04001040
_021D1014: .word 0x021BF6DC
_021D1018: .word ov99_021D1244
_021D101C: .word 0x0000EA60
_021D1020: .word ov99_021D1350
_021D1024: .word 0x000004A2
	thumb_func_end ov99_021D0D80

	thumb_func_start ov99_021D1028
ov99_021D1028: ; 0x021D1028
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _021D1188 ; =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1050
	mov r1, #1
	bl ov99_021D3F6C
	ldr r0, _021D118C ; =0x0000110C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov99_021D3F6C
	ldr r1, _021D1190 ; =0x00001110
	str r0, [r4, r1]
_021D1050:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021D1094
	ldr r0, _021D1194 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021D1094
	mov r0, #0x11
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D1094
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #6
	bhs _021D1094
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4b
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x11
	mov r1, #1
	lsl r0, r0, #8
	strb r1, [r4, r0]
_021D1094:
	mov r0, #0x11
	lsl r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D1104
	cmp r0, #1
	bne _021D1104
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D1104
	ldr r1, _021D1198 ; =0x00001102
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _021D10C2
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov99_021D1CFC
	ldr r0, _021D1198 ; =0x00001102
	mov r1, #0
	strb r1, [r4, r0]
_021D10C2:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #0
	bne _021D10D2
	mov r0, #3
	bl sub_0200ABB0
_021D10D2:
	add r0, r4, #0
	bl ov99_021D12F0
	ldr r0, _021D119C ; =0x00001101
	mov r1, #6
	strb r1, [r4, r0]
	mov r0, #0
	bl sub_0201FF48
	mov r0, #0
	bl sub_0201FFB0
	ldr r0, _021D11A0 ; =0x00000FA4
	mov r2, #0x4f
	add r0, r4, r0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	mov r0, #0x11
	mov r1, #2
	lsl r0, r0, #8
	strb r1, [r4, r0]
	mov r0, #0
	str r0, [r5, #0]
_021D1104:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D1114
	cmp r0, #1
	beq _021D113A
	cmp r0, #2
	beq _021D1174
	b _021D117A
_021D1114:
	mov r0, #0x11
	lsl r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D1122
	cmp r0, #2
	bne _021D117A
_021D1122:
	ldr r1, _021D119C ; =0x00001101
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1CC8
	ldr r0, _021D1198 ; =0x00001102
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D117A
_021D113A:
	ldr r1, _021D119C ; =0x00001101
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1D30
	cmp r0, #1
	bne _021D117A
	ldr r1, _021D119C ; =0x00001101
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1CFC
	ldr r1, _021D1198 ; =0x00001102
	mov r0, #0
	strb r0, [r4, r1]
	sub r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #1
	sub r2, r1, #1
	strb r3, [r4, r2]
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	cmp r1, #7
	bhs _021D116E
	str r0, [r5, #0]
	b _021D117A
_021D116E:
	mov r0, #2
	str r0, [r5, #0]
	b _021D117A
_021D1174:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D117A:
	ldr r0, _021D11A4 ; =0x000010FC
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D1188: .word 0x00001108
_021D118C: .word 0x0000110C
_021D1190: .word 0x00001110
_021D1194: .word 0x021BF67C
_021D1198: .word 0x00001102
_021D119C: .word 0x00001101
_021D11A0: .word 0x00000FA4
_021D11A4: .word 0x000010FC
	thumb_func_end ov99_021D1028

	thumb_func_start ov99_021D11A8
ov99_021D11A8: ; 0x021D11A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0200DA58
	ldr r0, _021D123C ; =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D11C8
	add r0, r4, #0
	bl ov99_021D1270
	b _021D11CE
_021D11C8:
	add r0, r4, #0
	bl ov99_021D1314
_021D11CE:
	ldr r0, [r4, #0x20]
	bl sub_0200B190
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x18]
	bl sub_0200C8D4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	bl sub_02002F54
	add r0, r4, #0
	bl ov99_021D19A0
	ldr r0, _021D1240 ; =0x000010F8
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	bl sub_0201E530
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4b
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D123C: .word 0x00001108
_021D1240: .word 0x000010F8
	thumb_func_end ov99_021D11A8

	thumb_func_start ov99_021D1244
ov99_021D1244: ; 0x021D1244
	push {r4, lr}
	ldr r0, _021D126C ; =0x00001103
	add r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _021D125E
	add r0, r4, #0
	bl ov99_021D1720
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_021D125E:
	ldr r0, [r4, #0x1c]
	bl sub_0200C7EC
	bl sub_0200C808
	pop {r4, pc}
	nop
_021D126C: .word 0x00001103
	thumb_func_end ov99_021D1244

	thumb_func_start ov99_021D1270
ov99_021D1270: ; 0x021D1270
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D12E8 ; =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D1280
	bl GF_AssertFail
_021D1280:
	ldr r0, _021D12EC ; =0x0000110C
	ldr r0, [r4, r0]
	bl ov99_021D3F38
	ldr r0, _021D12E8 ; =0x00001108
	ldr r0, [r4, r0]
	bl ov99_021D3F38
	ldr r0, _021D12EC ; =0x0000110C
	mov r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl ov99_021D1A4C
	pop {r4, pc}
	nop
_021D12E8: .word 0x00001108
_021D12EC: .word 0x0000110C
	thumb_func_end ov99_021D1270

	thumb_func_start ov99_021D12F0
ov99_021D12F0: ; 0x021D12F0
	push {r4, lr}
	ldr r1, _021D1310 ; =0x00001108
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021D130C
	bl ov99_021D1270
	mov r0, #0x4b
	bl sub_02018340
	str r0, [r4, #8]
	bl ov99_021D1580
_021D130C:
	pop {r4, pc}
	nop
_021D1310: .word 0x00001108
	thumb_func_end ov99_021D12F0

	thumb_func_start ov99_021D1314
ov99_021D1314: ; 0x021D1314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D134C ; =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1324
	bl GF_AssertFail
_021D1324:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #8]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_021D134C: .word 0x00001108
	thumb_func_end ov99_021D1314

	thumb_func_start ov99_021D1350
ov99_021D1350: ; 0x021D1350
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0xc]
	bl sub_02003694
	ldr r0, [r4, #8]
	bl sub_0201C2B8
	ldr r3, _021D1378 ; =0x027E0000
	ldr r1, _021D137C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D1378: .word OS_IRQTable
_021D137C: .word 0x00003FF8
	thumb_func_end ov99_021D1350

	thumb_func_start ov99_021D1380
ov99_021D1380: ; 0x021D1380
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r5, _021D156C ; =0x021D47A8
	add r3, sp, #0x10
	mov r2, #5
_021D1394:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1394
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _021D1570 ; =0x021D4708
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1574 ; =0x021D4824
	add r3, sp, #0x8c
	mov r2, #0xa
_021D13F4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D13F4
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xa8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xc4
	mov r3, #2
	bl sub_020183C4
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _021D1578 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _021D157C ; =0x021D4878
	add r3, sp, #0x38
	mov r2, #0xa
_021D1496:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1496
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4b
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4b
	bl sub_02019690
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4b
	bl sub_02019690
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4b
	bl sub_02019690
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_021D156C: .word 0x021D47A8
_021D1570: .word 0x021D4708
_021D1574: .word 0x021D4824
_021D1578: .word 0x04000008
_021D157C: .word 0x021D4878
	thumb_func_end ov99_021D1380

	thumb_func_start ov99_021D1580
ov99_021D1580: ; 0x021D1580
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r5, _021D16D4 ; =0x021D4780
	add r3, sp, #0x2c
	mov r2, #5
_021D1594:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1594
	add r0, sp, #0x2c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _021D16D8 ; =0x021D46F8
	add r3, sp, #0x1c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D16DC ; =0x021D47D0
	add r3, sp, #0x54
	mov r2, #0xa
_021D15F4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D15F4
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r1, #2
	add r0, r4, #0
	add r2, sp, #0x70
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #2
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r5, _021D16E0 ; =0x021D4744
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4b
	bl sub_02019690
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D16D4: .word 0x021D4780
_021D16D8: .word 0x021D46F8
_021D16DC: .word 0x021D47D0
_021D16E0: .word 0x021D4744
	thumb_func_end ov99_021D1580

	thumb_func_start ov99_021D16E4
ov99_021D16E4: ; 0x021D16E4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x7f
	mov r2, #0x55
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x7f
	mov r2, #0x55
	mov r3, #0x4b
	bl sub_02003050
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov99_021D16E4

	thumb_func_start ov99_021D1720
ov99_021D1720: ; 0x021D1720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #4
	bl MTX_Identity33_
	bl sub_020241B4
	ldr r0, [r6, #0x28]
	bl sub_020203D4
	ldr r1, [r6, #0x28]
	mov r0, #0
	bl sub_02020854
	bl sub_020203EC
	ldr r0, _021D18B8 ; =0x00001101
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _021D1766
	cmp r0, #2
	beq _021D17A4
	cmp r0, #4
	beq _021D17E2
	b _021D1820
_021D1766:
	ldr r1, _021D18BC ; =0x00000769
	ldr r2, _021D18C0 ; =0xFFFFF1F0
	ldr r3, _021D18C4 ; =0xFFFFFE2E
	mov r0, #0
	bl NNS_G3dGlbLightVector
	mov r0, #2
	mov r1, #0
	add r2, r1, #0
	lsl r3, r0, #0xb
	bl NNS_G3dGlbLightVector
	ldr r1, _021D18C8 ; =0x0000199C
	mov r0, #0
	bl NNS_G3dGlbLightColor
	mov r0, #2
	mov r1, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D18CC ; =0x00003DEF
	ldr r1, _021D18D0 ; =0x0000318B
	mov r2, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D18D4 ; =0x00004631
	ldr r1, _021D18D8 ; =0x00001D08
	mov r2, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	b _021D1848
_021D17A4:
	ldr r1, _021D18DC ; =0xFFFFF805
	ldr r2, _021D18E0 ; =0xFFFFF224
	mov r0, #0
	mov r3, #0x6e
	bl NNS_G3dGlbLightVector
	mov r0, #2
	mov r1, #0
	add r2, r1, #0
	lsl r3, r0, #0xb
	bl NNS_G3dGlbLightVector
	ldr r1, _021D18E4 ; =0x000052D6
	mov r0, #0
	bl NNS_G3dGlbLightColor
	mov r0, #2
	mov r1, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D18CC ; =0x00003DEF
	ldr r1, _021D18E8 ; =0x00002D69
	mov r2, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D18EC ; =0x00004210
	ldr r1, _021D18F0 ; =0x000039CE
	mov r2, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	b _021D1848
_021D17E2:
	ldr r1, _021D18BC ; =0x00000769
	ldr r2, _021D18C0 ; =0xFFFFF1F0
	ldr r3, _021D18C4 ; =0xFFFFFE2E
	mov r0, #0
	bl NNS_G3dGlbLightVector
	mov r0, #2
	mov r1, #0
	add r2, r1, #0
	lsl r3, r0, #0xb
	bl NNS_G3dGlbLightVector
	ldr r1, _021D18F4 ; =0x0000416B
	mov r0, #0
	bl NNS_G3dGlbLightColor
	mov r0, #2
	mov r1, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D18F8 ; =0x000041CE
	ldr r1, _021D18FC ; =0x0000294A
	mov r2, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D18F8 ; =0x000041CE
	ldr r1, _021D1900 ; =0x00002D08
	mov r2, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	b _021D1848
_021D1820:
	mov r0, #0
	ldr r2, _021D1904 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1908 ; =0x0000739C
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D190C ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D190C ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
_021D1848:
	mov r1, #0
	ldr r2, _021D1904 ; =0xFFFFF000
	mov r0, #3
	add r3, r1, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1908 ; =0x0000739C
	mov r0, #3
	bl NNS_G3dGlbLightColor
	add r0, sp, #0x28
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _021D1910 ; =0x021C5B48
	add r0, sp, #4
	bl MI_Copy36B
	ldr r1, _021D1914 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r7, #0
	add r6, #0x6c
_021D1888:
	mov r4, #0
	add r5, r6, #0
_021D188C:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #0x10
	blt _021D188C
	mov r0, #0x1e
	lsl r0, r0, #6
	add r7, r7, #1
	add r6, r6, r0
	cmp r7, #2
	blt _021D1888
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D18B8: .word 0x00001101
_021D18BC: .word 0x00000769
_021D18C0: .word 0xFFFFF1F0
_021D18C4: .word 0xFFFFFE2E
_021D18C8: .word 0x0000199C
_021D18CC: .word 0x00003DEF
_021D18D0: .word 0x0000318B
_021D18D4: .word 0x00004631
_021D18D8: .word 0x00001D08
_021D18DC: .word 0xFFFFF805
_021D18E0: .word 0xFFFFF224
_021D18E4: .word 0x000052D6
_021D18E8: .word 0x00002D69
_021D18EC: .word 0x00004210
_021D18F0: .word 0x000039CE
_021D18F4: .word 0x0000416B
_021D18F8: .word 0x000041CE
_021D18FC: .word 0x0000294A
_021D1900: .word 0x00002D08
_021D1904: .word 0xFFFFF000
_021D1908: .word 0x0000739C
_021D190C: .word 0x00007FFF
_021D1910: .word 0x021C5B48
_021D1914: .word 0x021C5B0C
	thumb_func_end ov99_021D1720

	thumb_func_start ov99_021D1918
ov99_021D1918: ; 0x021D1918
	push {r4, lr}
	sub sp, #0x30
	ldr r3, _021D198C ; =0x021D46E0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D1990 ; =0x021D46D4
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D1994 ; =0x021D46EC
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x4b
	bl sub_020203AC
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #0x1f
	str r0, [sp, #8]
	ldr r2, _021D1998 ; =0x021D46CC
	ldr r3, _021D199C ; =0x00000FA4
	add r0, sp, #0x24
	lsl r1, r1, #0xe
	bl sub_020206D0
	ldr r1, [r4, #0x28]
	add r0, sp, #0x18
	bl sub_02020ADC
	ldr r1, [r4, #0x28]
	add r0, sp, #0xc
	bl sub_02020ACC
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r4, #0x28]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r0, [r4, #0x28]
	bl sub_020203D4
	add sp, #0x30
	pop {r4, pc}
	nop
_021D198C: .word 0x021D46E0
_021D1990: .word 0x021D46D4
_021D1994: .word 0x021D46EC
_021D1998: .word 0x021D46CC
_021D199C: .word 0x00000FA4
	thumb_func_end ov99_021D1918

	thumb_func_start ov99_021D19A0
ov99_021D19A0: ; 0x021D19A0
	ldr r3, _021D19A8 ; =sub_020203B8
	ldr r0, [r0, #0x28]
	bx r3
	nop
_021D19A8: .word sub_020203B8
	thumb_func_end ov99_021D19A0

	thumb_func_start ov99_021D19AC
ov99_021D19AC: ; 0x021D19AC
	push {r3, lr}
	sub sp, #8
	mov r2, #1
	ldr r1, _021D19C4 ; =ov99_021D19C8
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_021D19C4: .word ov99_021D19C8
	thumb_func_end ov99_021D19AC

	thumb_func_start ov99_021D19C8
ov99_021D19C8: ; 0x021D19C8
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _021D1A34 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D1A38 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D1A3C ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _021D1A40 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D1A44 ; =0xBFFF0000
	ldr r0, _021D1A48 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_021D1A34: .word 0x04000008
_021D1A38: .word 0xFFFFCFFD
_021D1A3C: .word 0x0000CFFB
_021D1A40: .word 0x00007FFF
_021D1A44: .word 0xBFFF0000
_021D1A48: .word 0x04000580
	thumb_func_end ov99_021D19C8

	thumb_func_start ov99_021D1A4C
ov99_021D1A4C: ; 0x021D1A4C
	ldr r3, _021D1A50 ; =sub_020242C4
	bx r3
	; .align 2, 0
_021D1A50: .word sub_020242C4
	thumb_func_end ov99_021D1A4C

	.rodata


	.global Unk_ov99_021D46CC
Unk_ov99_021D46CC: ; 0x021D46CC
	.incbin "incbin/overlay99_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov99_021D46D4
Unk_ov99_021D46D4: ; 0x021D46D4
	.incbin "incbin/overlay99_rodata.bin", 0x8, 0x14 - 0x8

	.global Unk_ov99_021D46E0
Unk_ov99_021D46E0: ; 0x021D46E0
	.incbin "incbin/overlay99_rodata.bin", 0x14, 0x20 - 0x14

	.global Unk_ov99_021D46EC
Unk_ov99_021D46EC: ; 0x021D46EC
	.incbin "incbin/overlay99_rodata.bin", 0x20, 0x2C - 0x20

	.global Unk_ov99_021D46F8
Unk_ov99_021D46F8: ; 0x021D46F8
	.incbin "incbin/overlay99_rodata.bin", 0x2C, 0x3C - 0x2C

	.global Unk_ov99_021D4708
Unk_ov99_021D4708: ; 0x021D4708
	.incbin "incbin/overlay99_rodata.bin", 0x3C, 0x4C - 0x3C

	.global Unk_ov99_021D4718
Unk_ov99_021D4718: ; 0x021D4718
	.incbin "incbin/overlay99_rodata.bin", 0x4C, 0x60 - 0x4C

	.global Unk_ov99_021D472C
Unk_ov99_021D472C: ; 0x021D472C
	.incbin "incbin/overlay99_rodata.bin", 0x60, 0x78 - 0x60

	.global Unk_ov99_021D4744
Unk_ov99_021D4744: ; 0x021D4744
	.incbin "incbin/overlay99_rodata.bin", 0x78, 0x94 - 0x78

	.global Unk_ov99_021D4760
Unk_ov99_021D4760: ; 0x021D4760
	.incbin "incbin/overlay99_rodata.bin", 0x94, 0xB4 - 0x94

	.global Unk_ov99_021D4780
Unk_ov99_021D4780: ; 0x021D4780
	.incbin "incbin/overlay99_rodata.bin", 0xB4, 0xDC - 0xB4

	.global Unk_ov99_021D47A8
Unk_ov99_021D47A8: ; 0x021D47A8
	.incbin "incbin/overlay99_rodata.bin", 0xDC, 0x104 - 0xDC

	.global Unk_ov99_021D47D0
Unk_ov99_021D47D0: ; 0x021D47D0
	.incbin "incbin/overlay99_rodata.bin", 0x104, 0x158 - 0x104

	.global Unk_ov99_021D4824
Unk_ov99_021D4824: ; 0x021D4824
	.incbin "incbin/overlay99_rodata.bin", 0x158, 0x1AC - 0x158

	.global Unk_ov99_021D4878
Unk_ov99_021D4878: ; 0x021D4878
	.incbin "incbin/overlay99_rodata.bin", 0x1AC, 0x54

