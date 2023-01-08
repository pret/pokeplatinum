	.include "macros/function.inc"
	.include "include/fx_atanidx.inc"

	

	.text


	arm_func_start FX_AtanIdx
FX_AtanIdx: ; 0x020BD964
	stmfd sp!, {r3, lr}
	cmp r0, #0
	blt _020BD9B8
	cmp r0, #0x1000
	ble _020BD99C
	bl FX_Inv
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD99C:
	movge r0, #0x2000
	ldmgeia sp!, {r3, pc}
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	ldmia sp!, {r3, pc}
_020BD9B8:
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	bge _020BD9F0
	rsb r0, r0, #0
	bl FX_Inv
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD9F0:
	movle r0, #0xe000
	ldmleia sp!, {r3, pc}
	rsb r0, r0, #0
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDA1C: .word FX_AtanIdxTable_
	arm_func_end FX_AtanIdx

	arm_func_start FX_Atan2Idx
FX_Atan2Idx: ; 0x020BDA20
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _020BDAB4
	cmp r1, #0
	ble _020BDA6C
	cmp r1, r0
	ble _020BDA4C
	mov r2, r0
	mov r4, #0
	mov r0, #1
	b _020BDB64
_020BDA4C:
	bge _020BDA64
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #0
	b _020BDB64
_020BDA64:
	mov r0, #0x2000
	ldmia sp!, {r4, pc}
_020BDA6C:
	bge _020BDAAC
	rsb r1, r1, #0
	cmp r1, r0
	bge _020BDA90
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #1
	b _020BDB64
_020BDA90:
	ble _020BDAA4
	mov r2, r0
	mov r4, #0x8000
	mov r0, #0
	b _020BDB64
_020BDAA4:
	mov r0, #0x6000
	ldmia sp!, {r4, pc}
_020BDAAC:
	mov r0, #0x4000
	ldmia sp!, {r4, pc}
_020BDAB4:
	bge _020BDB54
	cmp r1, #0
	rsb r0, r0, #0
	bge _020BDB08
	rsb r1, r1, #0
	cmp r1, r0
	ble _020BDAE4
	mov r4, #0x8000
	mov r2, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDAE4:
	bge _020BDB00
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #0
	b _020BDB64
_020BDB00:
	mov r0, #0xa000
	ldmia sp!, {r4, pc}
_020BDB08:
	cmp r1, #0
	ble _020BDB4C
	cmp r1, r0
	bge _020BDB30
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDB30:
	ble _020BDB44
	mov r4, #0
	mov r2, r0
	mov r0, r4
	b _020BDB64
_020BDB44:
	mov r0, #0xe000
	ldmia sp!, {r4, pc}
_020BDB4C:
	mov r0, #0xc000
	ldmia sp!, {r4, pc}
_020BDB54:
	cmp r1, #0
	movge r0, #0
	movlt r0, #0x8000
	ldmia sp!, {r4, pc}
_020BDB64:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0
	mov r0, r2
	beq _020BDBA0
	bl FX_Div
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
_020BDBA0:
	bl FX_Div
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BDBC4: .word FX_AtanIdxTable_
	arm_func_end FX_Atan2Idx

	.rodata


	.global FX_AtanIdxTable_
FX_AtanIdxTable_: ; 0x020FD83C
	.short 0x0
	.short 0x51
	.short 0xA3
	.short 0xF4
	.short 0x146
	.short 0x197
	.short 0x1E9
	.short 0x23A
	.short 0x28B
	.short 0x2DC
	.short 0x32D
	.short 0x37E
	.short 0x3CF
	.short 0x420
	.short 0x470
	.short 0x4C1
	.short 0x511
	.short 0x561
	.short 0x5B1
	.short 0x601
	.short 0x651
	.short 0x6A0
	.short 0x6EF
	.short 0x73E
	.short 0x78D
	.short 0x7DC
	.short 0x82A
	.short 0x878
	.short 0x8C6
	.short 0x914
	.short 0x961
	.short 0x9AE
	.short 0x9FB
	.short 0xA48
	.short 0xA94
	.short 0xAE0
	.short 0xB2C
	.short 0xB77
	.short 0xBC2
	.short 0xC0D
	.short 0xC57
	.short 0xCA1
	.short 0xCEB
	.short 0xD34
	.short 0xD7D
	.short 0xDC6
	.short 0xE0F
	.short 0xE56
	.short 0xE9E
	.short 0xEE5
	.short 0xF2C
	.short 0xF73
	.short 0xFB9
	.short 0xFFF
	.short 0x1044
	.short 0x1089
	.short 0x10CE
	.short 0x1112
	.short 0x1156
	.short 0x1199
	.short 0x11DC
	.short 0x121F
	.short 0x1261
	.short 0x12A3
	.short 0x12E4
	.short 0x1325
	.short 0x1366
	.short 0x13A6
	.short 0x13E6
	.short 0x1425
	.short 0x1464
	.short 0x14A2
	.short 0x14E0
	.short 0x151E
	.short 0x155B
	.short 0x1598
	.short 0x15D5
	.short 0x1611
	.short 0x164C
	.short 0x1688
	.short 0x16C2
	.short 0x16FD
	.short 0x1737
	.short 0x1770
	.short 0x17AA
	.short 0x17E2
	.short 0x181B
	.short 0x1853
	.short 0x188A
	.short 0x18C1
	.short 0x18F8
	.short 0x192E
	.short 0x1964
	.short 0x199A
	.short 0x19CF
	.short 0x1A04
	.short 0x1A38
	.short 0x1A6C
	.short 0x1A9F
	.short 0x1AD3
	.short 0x1B05
	.short 0x1B38
	.short 0x1B6A
	.short 0x1B9C
	.short 0x1BCD
	.short 0x1BFE
	.short 0x1C2E
	.short 0x1C5E
	.short 0x1C8E
	.short 0x1CBE
	.short 0x1CED
	.short 0x1D1B
	.short 0x1D4A
	.short 0x1D78
	.short 0x1DA5
	.short 0x1DD3
	.short 0x1DFF
	.short 0x1E2C
	.short 0x1E58
	.short 0x1E84
	.short 0x1EB0
	.short 0x1EDB
	.short 0x1F06
	.short 0x1F30
	.short 0x1F5A
	.short 0x1F84
	.short 0x1FAE
	.short 0x1FD7
	.short 0x2000

