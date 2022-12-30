	.include "macros/function.inc"
	.include "overlay097/ov97_02238D74.inc"

	

	.text


	thumb_func_start ov97_02238D74
ov97_02238D74: ; 0x02238D74
	push {r3, lr}
	add r1, #0x24
	mov r0, #0x1f
	bic r1, r0
	add r1, #0x20
	mov r0, #0x56
	bl sub_02018144
	add r2, r0, #0
	add r2, #0x20
	mov r1, #0x1f
	bic r2, r1
	sub r1, r2, #4
	str r0, [r1, #0]
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end ov97_02238D74

	thumb_func_start ov97_02238D94
ov97_02238D94: ; 0x02238D94
	push {r3, lr}
	cmp r1, #0
	beq _02238DA2
	sub r0, r1, #4
	ldr r0, [r0, #0]
	bl sub_020181C4
_02238DA2:
	pop {r3, pc}
	thumb_func_end ov97_02238D94

	thumb_func_start ov97_02238DA4
ov97_02238DA4: ; 0x02238DA4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	add r1, sp, #4
	bl DWC_GetLastErrorEx
	ldr r0, [sp]
	ldr r1, [sp, #4]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, _02238DEC ; =0x0000266C
	str r0, [r4, r2]
	ldr r0, [sp]
	neg r1, r0
	add r0, r2, #4
	str r1, [r4, r0]
	add r0, r2, #0
	ldr r1, [sp, #4]
	add r0, #8
	str r1, [r4, r0]
	sub r0, r2, #4
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _02238DF0 ; =0x02240400
	add r2, #0x10
	str r1, [r0, #0x10]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, r2]
	bl ov97_0222D344
	ldr r0, _02238DF4 ; =0x0000100F
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02238DEC: .word 0x0000266C
_02238DF0: .word 0x02240400
_02238DF4: .word 0x0000100F
	thumb_func_end ov97_02238DA4

	thumb_func_start ov97_02238DF8
ov97_02238DF8: ; 0x02238DF8
	push {lr}
	sub sp, #0x3c
	bl ov4_021D7BFC
	cmp r0, #4
	beq _02238E0C
	cmp r0, #7
	beq _02238E18
	cmp r0, #8
	b _02238E18
_02238E0C:
	add r0, sp, #0
	bl ov4_021D7EB8
	add sp, #0x3c
	mov r0, #1
	pop {pc}
_02238E18:
	mov r0, #0
	add sp, #0x3c
	pop {pc}
	; .align 2, 0
	thumb_func_end ov97_02238DF8

	thumb_func_start ov97_02238E20
ov97_02238E20: ; 0x02238E20
	push {r3, r4}
	ldr r3, _02238E38 ; =0x02240400
	mov r4, #0
	str r4, [r3, #0]
	str r4, [r3, #0xc]
	ldr r3, _02238E3C ; =0x00001650
	str r2, [r0, r3]
	ldr r0, _02238E40 ; =0x00001012
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	nop
_02238E38: .word 0x02240400
_02238E3C: .word 0x00001650
_02238E40: .word 0x00001012
	thumb_func_end ov97_02238E20

	thumb_func_start ov97_02238E44
ov97_02238E44: ; 0x02238E44
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _02238E68 ; =0x02240400
	mov r5, #0
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _02238E6C ; =0x00001650
	str r3, [r0, r1]
	ldr r0, _02238E70 ; =0x00001013
	str r0, [r4, #0]
	ldr r0, _02238E74 ; =ov97_02238E88
	bl ov4_021D87E0
	cmp r0, #0
	bne _02238E66
	ldr r0, [sp, #0x10]
	str r0, [r4, #0]
_02238E66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238E68: .word 0x02240400
_02238E6C: .word 0x00001650
_02238E70: .word 0x00001013
_02238E74: .word ov97_02238E88
	thumb_func_end ov97_02238E44

	thumb_func_start ov97_02238E78
ov97_02238E78: ; 0x02238E78
	ldr r0, _02238E84 ; =0x02240400
	mov r2, #1
	str r2, [r0, #0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02238E84: .word 0x02240400
	thumb_func_end ov97_02238E78

	thumb_func_start ov97_02238E88
ov97_02238E88: ; 0x02238E88
	ldr r0, _02238E90 ; =0x02240400
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02238E90: .word 0x02240400
	thumb_func_end ov97_02238E88

	thumb_func_start ov97_02238E94
ov97_02238E94: ; 0x02238E94
	push {r3, lr}
	bl sub_02039794
	bl sub_02038514
	bl sub_020995C4
	bl sub_02099560
	bl sub_020334CC
	pop {r3, pc}
	thumb_func_end ov97_02238E94

	thumb_func_start ov97_02238EAC
ov97_02238EAC: ; 0x02238EAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _022391AC ; =0x0000267C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238ECC
	blx r0
	cmp r0, #1
	bne _02238ECC
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
_02238ECC:
	mov r3, #1
	ldr r0, [r5, #0]
	lsl r3, r3, #0xc
	sub r0, r0, r3
	cmp r0, #0x13
	bls _02238EDA
	b _022392C4
_02238EDA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238EE6: ; jump table
	.short _02238F0E - _02238EE6 - 2 ; case 0
	.short _02238F20 - _02238EE6 - 2 ; case 1
	.short _02238F3C - _02238EE6 - 2 ; case 2
	.short _02238F64 - _02238EE6 - 2 ; case 3
	.short _02238FAE - _02238EE6 - 2 ; case 4
	.short _02238FC6 - _02238EE6 - 2 ; case 5
	.short _0223900C - _02238EE6 - 2 ; case 6
	.short _02239030 - _02238EE6 - 2 ; case 7
	.short _02239066 - _02238EE6 - 2 ; case 8
	.short _02239088 - _02238EE6 - 2 ; case 9
	.short _022390C4 - _02238EE6 - 2 ; case 10
	.short _022390EA - _02238EE6 - 2 ; case 11
	.short _02239160 - _02238EE6 - 2 ; case 12
	.short _0223917E - _02238EE6 - 2 ; case 13
	.short _022392C4 - _02238EE6 - 2 ; case 14
	.short _02239196 - _02238EE6 - 2 ; case 15
	.short _0223924E - _02238EE6 - 2 ; case 16
	.short _02239244 - _02238EE6 - 2 ; case 17
	.short _0223926A - _02238EE6 - 2 ; case 18
	.short _022392A0 - _02238EE6 - 2 ; case 19
_02238F0E:
	bl sub_02033478
	bl sub_02099550
	bl sub_020995B4
	ldr r0, _022391B0 ; =0x00001001
	str r0, [r5, #0]
	b _022392C4
_02238F20:
	bl sub_020334A4
	cmp r0, #0
	beq _02239004
	ldr r0, _022391B4 ; =ov97_02238D74
	ldr r1, _022391B8 ; =ov97_02238D94
	bl DWC_SetMemFunc
	ldr r0, [r4, #4]
	bl sub_020384C0
	ldr r0, _022391BC ; =0x00001002
	str r0, [r5, #0]
	b _022392C4
_02238F3C:
	ldr r0, _022391C0 ; =0x000015E8
	mov r1, #2
	add r0, r4, r0
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	bl sub_02039734
	ldr r0, _022391C4 ; =0x00001003
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _022391C8 ; =0x00002678
	str r1, [r4, r0]
	b _022392C4
_02238F64:
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _02238F9C
	add r0, r4, #0
	bl ov97_02238DF8
	cmp r0, #1
	bne _02238F94
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02238F8E
	ldr r0, _022391CC ; =0x02240400
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
	b _02238F9C
_02238F8E:
	ldr r0, _022391D4 ; =0x00001004
	str r0, [r5, #0]
	b _02238F9C
_02238F94:
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
_02238F9C:
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02239004
	ldr r0, _022391C8 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _022392C4
_02238FAE:
	bl ov4_021D81DC
	cmp r0, #0
	bne _02238FC0
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02238FC0:
	ldr r0, _022391DC ; =0x00001005
	str r0, [r5, #0]
	b _022392C4
_02238FC6:
	bl ov4_021D82A0
	cmp r0, #3
	bne _02238FDA
	ldr r0, _022391E0 ; =0x00001006
	ldr r1, _022391E4 ; =0x021D8018
	str r0, [r5, #0]
	ldr r0, _022391AC ; =0x0000267C
	str r1, [r4, r0]
	b _02238FFA
_02238FDA:
	cmp r0, #4
	bne _02238FEC
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	bl ov4_021D7DB0
	b _02238FFA
_02238FEC:
	cmp r0, #5
	bne _02238FFA
	ldr r0, _022391CC ; =0x02240400
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
_02238FFA:
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _02239006
_02239004:
	b _022392C4
_02239006:
	bl ov4_021D8398
	b _022392C4
_0223900C:
	ldr r0, _022391E8 ; =ov97_02238E78
	ldr r1, _022391EC ; =0x0223F138
	ldr r2, _022391F0 ; =0x0223F140
	bl ov4_021D86C8
	cmp r0, #0
	bne _02239024
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239024:
	ldr r2, _022391F4 ; =0x00001007
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239030:
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02239048
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239048:
	ldr r0, _022391F8 ; =0x0223F154
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_021D882C
	cmp r0, #0
	bne _02239060
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239060:
	ldr r0, _022391FC ; =0x00001008
	str r0, [r5, #0]
	b _022392C4
_02239066:
	ldr r0, _02239200 ; =0x00001654
	add r0, r4, r0
	bl ov4_021D8860
	cmp r0, #0
	bne _0223907C
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_0223907C:
	ldr r2, _02239204 ; =0x00001009
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239088:
	ldr r0, _02239200 ; =0x00001654
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _022390A0
	add r3, #0xd
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_022390A0:
	ldr r0, _02239208 ; =0x02240414
	mov r1, #0
	mov r2, #0xa
	bl ov4_021D8884
	cmp r0, #0
	bne _022390B8
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_022390B8:
	ldr r2, _0223920C ; =0x0000100A
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_022390C4:
	ldr r1, _02239210 ; =0x00001658
	ldr r0, _02239208 ; =0x02240414
	add r1, r4, r1
	add r2, r3, #0
	bl ov4_021D88CC
	cmp r0, #0
	bne _022390DE
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_022390DE:
	ldr r0, _02239214 ; =0x0000100B
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02239218 ; =0x00002664
	str r1, [r4, r0]
	b _022392C4
_022390EA:
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239138
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0223910C
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_0223910C:
	ldr r1, _0223921C ; =0x0000265C
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov4_021D891C
	cmp r0, #1
	bne _0223919E
	ldr r1, _0223921C ; =0x0000265C
	mov r0, #0x64
	ldr r2, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mul r0, r2
	bl _u32_div_f
	ldr r1, _02239218 ; =0x00002664
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _0223919E
	str r0, [r4, r1]
	b _022392C4
_02239138:
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02239150
	add r3, #0xd
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239150:
	add r3, #0xd
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239160:
	bl ov4_021D8900
	cmp r0, #0
	bne _0223916E
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
	b _022392C4
_0223916E:
	ldr r0, _022391AC ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_0223917E:
	bl ov4_021D7E10
	cmp r0, #1
	bne _0223919E
	ldr r0, _022391AC ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02239196:
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #0x10]
	cmp r0, #1
	beq _022391A0
_0223919E:
	b _022392C4
_022391A0:
	add r0, r4, #0
	bl ov97_0222E13C
	ldr r0, _02239220 ; =0x00002674
	b _02239224
	nop
_022391AC: .word 0x0000267C
_022391B0: .word 0x00001001
_022391B4: .word ov97_02238D74
_022391B8: .word ov97_02238D94
_022391BC: .word 0x00001002
_022391C0: .word 0x000015E8
_022391C4: .word 0x00001003
_022391C8: .word 0x00002678
_022391CC: .word 0x02240400
_022391D0: .word 0x0000100D
_022391D4: .word 0x00001004
_022391D8: .word 0x021BF67C
_022391DC: .word 0x00001005
_022391E0: .word 0x00001006
_022391E4: .word 0x021D8018
_022391E8: .word ov97_02238E78
_022391EC: .word 0x0223F138
_022391F0: .word 0x0223F140
_022391F4: .word 0x00001007
_022391F8: .word 0x0223F154
_022391FC: .word 0x00001008
_02239200: .word 0x00001654
_02239204: .word 0x00001009
_02239208: .word 0x02240414
_0223920C: .word 0x0000100A
_02239210: .word 0x00001658
_02239214: .word 0x0000100B
_02239218: .word 0x00002664
_0223921C: .word 0x0000265C
_02239220: .word 0x00002674
_02239224:
	ldr r0, [r4, r0]
	sub r0, r0, #5
	cmp r0, #1
	bhi _0223923E
	ldr r3, _022392C8 ; =0x00001010
	add r0, r4, #0
	str r3, [sp]
	mov r1, #3
	add r2, r5, #0
	add r3, r3, #1
	bl ov97_02238E44
	b _022392C4
_0223923E:
	ldr r0, _022392CC ; =0x00001011
	str r0, [r5, #0]
	b _022392C4
_02239244:
	bl ov4_021D7DB0
	ldr r0, _022392C8 ; =0x00001010
	str r0, [r5, #0]
	b _022392C4
_0223924E:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022392C4
	ldr r0, _022392D4 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl DWC_ClearError
	bl ov97_02238E94
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223926A:
	ldr r0, _022392D8 ; =0x02240400
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0223928E
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02239286
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239286:
	ldr r0, _022392DC ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _022392C4
_0223928E:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _022392C4
_022392A0:
	ldr r0, _022392D8 ; =0x02240400
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _022392B4
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _022392DC ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _022392C4
_022392B4:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
_022392C4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022392C8: .word 0x00001010
_022392CC: .word 0x00001011
_022392D0: .word 0x021BF67C
_022392D4: .word 0x0000267C
_022392D8: .word 0x02240400
_022392DC: .word 0x00001650
_022392E0: .word 0x00002678
	thumb_func_end ov97_02238EAC
	.data


	.global Unk_ov97_0223F138
Unk_ov97_0223F138: ; 0x0223F138
	.incbin "incbin/overlay97_data.bin", 0x11F8, 0x1200 - 0x11F8

	.global Unk_ov97_0223F140
Unk_ov97_0223F140: ; 0x0223F140
	.incbin "incbin/overlay97_data.bin", 0x1200, 0x1214 - 0x1200

	.global Unk_ov97_0223F154
Unk_ov97_0223F154: ; 0x0223F154
	.incbin "incbin/overlay97_data.bin", 0x1214, 0x1


	.bss


	.global Unk_ov97_02240400
Unk_ov97_02240400: ; 0x02240400
	.space 0x4

	.global Unk_ov97_02240404
Unk_ov97_02240404: ; 0x02240404
	.space 0x4

	.global Unk_ov97_02240408
Unk_ov97_02240408: ; 0x02240408
	.space 0x4

	.global Unk_ov97_0224040C
Unk_ov97_0224040C: ; 0x0224040C
	.space 0x4

	.global Unk_ov97_02240410
Unk_ov97_02240410: ; 0x02240410
	.space 0x4

	.global Unk_ov97_02240414
Unk_ov97_02240414: ; 0x02240414
	.space 0x6E0

