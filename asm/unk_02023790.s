	.include "macros/function.inc"
	.include "include/unk_02023790.inc"

	

	.text


	thumb_func_start sub_02023790
sub_02023790: ; 0x02023790
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	lsl r1, r4, #1
	add r1, #0xa
	bl sub_02018144
	cmp r0, #0
	beq _020237B0
	ldr r1, _020237B4 ; =0xB6F8D2EC
	str r1, [r0, #4]
	strh r4, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	ldr r1, _020237B8 ; =0x0000FFFF
	strh r1, [r0, #8]
_020237B0:
	pop {r4, pc}
	nop
_020237B4: .word 0xB6F8D2EC
_020237B8: .word 0x0000FFFF
	thumb_func_end sub_02023790

	thumb_func_start sub_020237BC
sub_020237BC: ; 0x020237BC
	push {r4, lr}
	add r4, r0, #0
	bne _020237C6
	bl sub_02022974
_020237C6:
	ldr r1, [r4, #4]
	ldr r0, _020237E0 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020237D2
	bl sub_02022974
_020237D2:
	ldr r0, _020237E4 ; =0xB6F8D2ED
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_020237E0: .word 0xB6F8D2EC
_020237E4: .word 0xB6F8D2ED
	thumb_func_end sub_020237BC

	thumb_func_start sub_020237E8
sub_020237E8: ; 0x020237E8
	push {r4, lr}
	add r4, r0, #0
	bne _020237F2
	bl sub_02022974
_020237F2:
	ldr r1, [r4, #4]
	ldr r0, _02023808 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020237FE
	bl sub_02022974
_020237FE:
	mov r0, #0
	strh r0, [r4, #2]
	ldr r0, _0202380C ; =0x0000FFFF
	strh r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_02023808: .word 0xB6F8D2EC
_0202380C: .word 0x0000FFFF
	thumb_func_end sub_020237E8

	thumb_func_start sub_02023810
sub_02023810: ; 0x02023810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202381E
	bl sub_02022974
_0202381E:
	ldr r1, [r5, #4]
	ldr r0, _02023864 ; =0xB6F8D2EC
	cmp r1, r0
	beq _0202382A
	bl sub_02022974
_0202382A:
	cmp r4, #0
	bne _02023832
	bl sub_02022974
_02023832:
	ldr r1, [r4, #4]
	ldr r0, _02023864 ; =0xB6F8D2EC
	cmp r1, r0
	beq _0202383E
	bl sub_02022974
_0202383E:
	ldrh r2, [r4, #2]
	ldrh r0, [r5]
	cmp r0, r2
	bls _0202385C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, #1
	add r0, #8
	add r1, #8
	lsl r2, r2, #1
	bl sub_020D50B8
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	pop {r3, r4, r5, pc}
_0202385C:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02023864: .word 0xB6F8D2EC
	thumb_func_end sub_02023810

	thumb_func_start sub_02023868
sub_02023868: ; 0x02023868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023876
	bl sub_02022974
_02023876:
	ldr r1, [r5, #4]
	ldr r0, _0202389C ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023882
	bl sub_02022974
_02023882:
	ldrh r0, [r5, #2]
	add r1, r4, #0
	add r0, r0, #1
	bl sub_02023790
	add r4, r0, #0
	beq _02023896
	add r1, r5, #0
	bl sub_02023810
_02023896:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0202389C: .word 0xB6F8D2EC
	thumb_func_end sub_02023868

	thumb_func_start sub_020238A0
sub_020238A0: ; 0x020238A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	add r7, r3, #0
	str r2, [sp]
	str r0, [sp, #0x20]
	cmp r5, #0
	bne _020238B8
	bl sub_02022974
_020238B8:
	ldr r1, [r5, #4]
	ldr r0, _020239B8 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020238C4
	bl sub_02022974
_020238C4:
	cmp r6, #0
	bge _020238CC
	mov r4, #1
	b _020238CE
_020238CC:
	mov r4, #0
_020238CE:
	ldr r0, [sp]
	ldrh r1, [r5]
	add r0, r0, r4
	cmp r1, r0
	bls _020239B0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020238E4
	ldr r0, _020239BC ; =0x020E5744
	str r0, [sp, #4]
	b _020238E8
_020238E4:
	ldr r0, _020239C0 ; =0x020E5730
	str r0, [sp, #4]
_020238E8:
	add r0, r5, #0
	bl sub_020237E8
	cmp r4, #0
	beq _02023910
	mov r0, #0
	mvn r0, r0
	mul r6, r0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02023902
	mov r0, #0xf1
	b _02023904
_02023902:
	ldr r0, _020239C4 ; =0x000001BE
_02023904:
	ldrh r2, [r5, #2]
	add r1, r2, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
_02023910:
	ldr r0, [sp]
	lsl r1, r0, #2
	ldr r0, _020239C8 ; =0x020E5754
	ldr r4, [r0, r1]
	cmp r4, #0
	beq _020239A2
_0202391C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	mul r0, r1
	sub r6, r6, r0
	cmp r7, #2
	bne _02023950
	cmp r1, #0xa
	bhs _0202393E
	ldr r0, [sp, #4]
	lsl r1, r1, #1
	ldrh r1, [r0, r1]
	b _02023940
_0202393E:
	mov r1, #0xe2
_02023940:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
	b _02023996
_02023950:
	cmp r1, #0
	bne _02023958
	cmp r4, #1
	bne _02023978
_02023958:
	mov r7, #2
	cmp r1, #0xa
	bhs _02023966
	ldr r0, [sp, #4]
	lsl r1, r1, #1
	ldrh r1, [r0, r1]
	b _02023968
_02023966:
	mov r1, #0xe2
_02023968:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
	b _02023996
_02023978:
	cmp r7, #1
	bne _02023996
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02023986
	mov r1, #1
	b _02023988
_02023986:
	ldr r1, _020239CC ; =0x000001E2
_02023988:
	ldrh r0, [r5, #2]
	add r2, r0, #0
	add r2, r2, #1
	lsl r0, r0, #1
	strh r2, [r5, #2]
	add r0, r5, r0
	strh r1, [r0, #8]
_02023996:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	bne _0202391C
_020239A2:
	ldrh r0, [r5, #2]
	ldr r1, _020239D0 ; =0x0000FFFF
	add sp, #8
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_020239B0:
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020239B8: .word 0xB6F8D2EC
_020239BC: .word 0x020E5744
_020239C0: .word 0x020E5730
_020239C4: .word 0x000001BE
_020239C8: .word 0x020E5754
_020239CC: .word 0x000001E2
_020239D0: .word 0x0000FFFF
	thumb_func_end sub_020238A0

	thumb_func_start sub_020239D4
sub_020239D4: ; 0x020239D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r3, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x2c]
	cmp r5, #0
	bne _020239F0
	bl sub_02022974
_020239F0:
	ldr r1, [r5, #4]
	ldr r0, _02023B20 ; =0xB6F8D2EC
	cmp r1, r0
	beq _020239FC
	bl sub_02022974
_020239FC:
	ldrh r0, [r5]
	cmp r0, r4
	bhi _02023A04
	b _02023B18
_02023A04:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02023A10
	ldr r0, _02023B24 ; =0x020E5708
	str r0, [sp, #0x10]
	b _02023A14
_02023A10:
	ldr r0, _02023B28 ; =0x020E571C
	str r0, [sp, #0x10]
_02023A14:
	add r0, r5, #0
	bl sub_020237E8
	ldr r1, _02023B2C ; =0x020E5778
	lsl r2, r4, #3
	add r0, r1, r2
	ldr r6, [r1, r2]
	ldr r0, [r0, #4]
	mov r1, #0
	str r0, [sp, #0xc]
	eor r1, r0
	mov r2, #0
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	beq _02023B0A
_02023A34:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r2, r6, #0
	bl sub_020E1ED4
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_020E1F1C
	ldr r2, [sp]
	sub r0, r2, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	sbc r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	cmp r0, #2
	bne _02023A86
	mov r1, #0
	mov r0, #0xa
	sub r0, r4, r0
	sbc r7, r1
	bhs _02023A74
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	b _02023A76
_02023A74:
	mov r0, #0xe2
_02023A76:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
	b _02023AEA
_02023A86:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r4
	orr r0, r1
	bne _02023AA2
	ldr r0, [sp, #0xc]
	mov r1, #0
	eor r1, r0
	mov r2, #1
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	bne _02023ACA
_02023AA2:
	mov r0, #2
	str r0, [sp, #0x28]
	mov r1, #0
	mov r0, #0xa
	sub r0, r4, r0
	sbc r7, r1
	bhs _02023AB8
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	b _02023ABA
_02023AB8:
	mov r0, #0xe2
_02023ABA:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
	b _02023AEA
_02023ACA:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _02023AEA
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02023ADA
	mov r0, #1
	b _02023ADC
_02023ADA:
	ldr r0, _02023B30 ; =0x000001DE
_02023ADC:
	ldrh r2, [r5, #2]
	add r1, r2, #0
	add r1, r1, #1
	strh r1, [r5, #2]
	lsl r1, r2, #1
	add r1, r5, r1
	strh r0, [r1, #8]
_02023AEA:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	str r1, [sp, #0xc]
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0
	eor r1, r0
	mov r2, #0
	add r0, r6, #0
	eor r0, r2
	orr r0, r1
	bne _02023A34
_02023B0A:
	ldrh r0, [r5, #2]
	ldr r1, _02023B34 ; =0x0000FFFF
	add sp, #0x14
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r4, r5, r6, r7, pc}
_02023B18:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02023B20: .word 0xB6F8D2EC
_02023B24: .word 0x020E5708
_02023B28: .word 0x020E571C
_02023B2C: .word 0x020E5778
_02023B30: .word 0x000001DE
_02023B34: .word 0x0000FFFF
	thumb_func_end sub_020239D4

	thumb_func_start sub_02023B38
sub_02023B38: ; 0x02023B38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	add r5, r1, #0
	ldrh r1, [r0, #2]
	mov r7, #1
	cmp r1, #0x12
	bls _02023B56
	ldr r0, [sp, #8]
	add sp, #0x10
	add r1, r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02023B56:
	sub r1, r1, #1
	str r1, [sp, #4]
	bmi _02023BCC
	lsl r1, r1, #1
	add r4, r0, r1
_02023B60:
	ldrh r6, [r4, #8]
	mov r3, #0xa
	mov r0, #0
	add r1, r6, #0
	sub r1, #0xa2
	asr r2, r1, #0x1f
	sub r3, r1, r3
	mov ip, r2
	mov r3, ip
	sbc r3, r0
	blo _02023B98
	ldr r0, _02023BDC ; =0x00000121
	mov r3, #0xa
	sub r1, r6, r0
	asr r2, r1, #0x1f
	mov r0, #0
	sub r3, r1, r3
	mov ip, r2
	mov r3, ip
	sbc r3, r0
	blo _02023B98
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02023B98:
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020E1F1C
	add r2, r1, #0
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adc r0, r2
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r5, r1, #0
	sub r4, r4, #2
	sub r0, r0, #1
	str r0, [sp, #4]
	bpl _02023B60
_02023BCC:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023BDC: .word 0x00000121
	thumb_func_end sub_02023B38

	thumb_func_start sub_02023BE0
sub_02023BE0: ; 0x02023BE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023BEE
	bl sub_02022974
_02023BEE:
	ldr r1, [r5, #4]
	ldr r0, _02023C34 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023BFA
	bl sub_02022974
_02023BFA:
	cmp r4, #0
	bne _02023C02
	bl sub_02022974
_02023C02:
	ldr r1, [r4, #4]
	ldr r0, _02023C34 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C0E
	bl sub_02022974
_02023C0E:
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _02023C2E
	ldr r0, _02023C38 ; =0x0000FFFF
_02023C18:
	ldrh r1, [r5, #8]
	cmp r1, r0
	bne _02023C22
	mov r0, #0
	pop {r3, r4, r5, pc}
_02023C22:
	add r5, r5, #2
	add r4, r4, #2
	ldrh r2, [r5, #8]
	ldrh r1, [r4, #8]
	cmp r2, r1
	beq _02023C18
_02023C2E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02023C34: .word 0xB6F8D2EC
_02023C38: .word 0x0000FFFF
	thumb_func_end sub_02023BE0

	thumb_func_start sub_02023C3C
sub_02023C3C: ; 0x02023C3C
	push {r4, lr}
	add r4, r0, #0
	bne _02023C46
	bl sub_02022974
_02023C46:
	ldr r1, [r4, #4]
	ldr r0, _02023C58 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C52
	bl sub_02022974
_02023C52:
	ldrh r0, [r4, #2]
	pop {r4, pc}
	nop
_02023C58: .word 0xB6F8D2EC
	thumb_func_end sub_02023C3C

	thumb_func_start sub_02023C5C
sub_02023C5C: ; 0x02023C5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02023C66
	bl sub_02022974
_02023C66:
	ldr r1, [r4, #4]
	ldr r0, _02023C98 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023C72
	bl sub_02022974
_02023C72:
	ldrh r1, [r4, #2]
	mov r3, #0
	mov r0, #1
	cmp r1, #0
	ble _02023C94
	mov r1, #0xe
	add r5, r4, #0
	lsl r1, r1, #0xc
_02023C82:
	ldrh r2, [r5, #8]
	cmp r2, r1
	bne _02023C8A
	add r0, r0, #1
_02023C8A:
	ldrh r2, [r4, #2]
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, r2
	blt _02023C82
_02023C94:
	pop {r3, r4, r5, pc}
	nop
_02023C98: .word 0xB6F8D2EC
	thumb_func_end sub_02023C5C

	thumb_func_start sub_02023C9C
sub_02023C9C: ; 0x02023C9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02023CAC
	bl sub_02022974
_02023CAC:
	ldr r1, [r5, #4]
	ldr r0, _02023D24 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023CB8
	bl sub_02022974
_02023CB8:
	cmp r7, #0
	bne _02023CC0
	bl sub_02022974
_02023CC0:
	ldr r1, [r7, #4]
	ldr r0, _02023D24 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023CCC
	bl sub_02022974
_02023CCC:
	mov r4, #0
	cmp r6, #0
	beq _02023CF6
	ldrh r0, [r5, #2]
	cmp r0, #0
	ble _02023CF6
	mov r1, #0xe
	add r0, r5, #0
	lsl r1, r1, #0xc
_02023CDE:
	ldrh r2, [r0, #8]
	cmp r2, r1
	bne _02023CEC
	sub r6, r6, #1
	bne _02023CEC
	add r4, r4, #1
	b _02023CF6
_02023CEC:
	ldrh r2, [r5, #2]
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, r2
	blt _02023CDE
_02023CF6:
	add r0, r7, #0
	bl sub_020237E8
	ldrh r0, [r5, #2]
	cmp r4, r0
	bge _02023D20
	lsl r0, r4, #1
	add r6, r5, r0
_02023D06:
	ldrh r1, [r6, #8]
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r1, r0
	beq _02023D20
	add r0, r7, #0
	bl sub_02023EB0
	ldrh r0, [r5, #2]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02023D06
_02023D20:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023D24: .word 0xB6F8D2EC
	thumb_func_end sub_02023C9C

	thumb_func_start sub_02023D28
sub_02023D28: ; 0x02023D28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023D36
	bl sub_02022974
_02023D36:
	ldr r1, [r5, #4]
	ldr r0, _02023D84 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023D42
	bl sub_02022974
_02023D42:
	mov r0, #0
	strh r0, [r5, #2]
	ldrh r1, [r4]
	ldr r0, _02023D88 ; =0x0000FFFF
	cmp r1, r0
	beq _02023D76
	add r1, r0, #0
_02023D50:
	ldrh r2, [r5]
	ldrh r0, [r5, #2]
	sub r2, r2, #1
	cmp r0, r2
	blt _02023D60
	bl sub_02022974
	b _02023D76
_02023D60:
	add r2, r0, #0
	add r2, r2, #1
	strh r2, [r5, #2]
	ldrh r2, [r4]
	lsl r0, r0, #1
	add r0, r5, r0
	add r4, r4, #2
	strh r2, [r0, #8]
	ldrh r0, [r4]
	cmp r0, r1
	bne _02023D50
_02023D76:
	ldrh r0, [r5, #2]
	ldr r1, _02023D88 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
	nop
_02023D84: .word 0xB6F8D2EC
_02023D88: .word 0x0000FFFF
	thumb_func_end sub_02023D28

	thumb_func_start sub_02023D8C
sub_02023D8C: ; 0x02023D8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _02023D9C
	bl sub_02022974
_02023D9C:
	ldr r1, [r5, #4]
	ldr r0, _02023DE8 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023DA8
	bl sub_02022974
_02023DA8:
	ldrh r0, [r5]
	cmp r4, r0
	bhi _02023DE2
	lsl r6, r4, #1
	add r0, r5, #0
	add r0, #8
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020D50B8
	mov r2, #0
	cmp r4, #0
	bls _02023DD4
	ldr r0, _02023DEC ; =0x0000FFFF
	add r3, r5, #0
_02023DC6:
	ldrh r1, [r3, #8]
	cmp r1, r0
	beq _02023DD4
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r4
	blo _02023DC6
_02023DD4:
	strh r2, [r5, #2]
	cmp r2, r4
	bne _02023DE6
	ldr r1, _02023DEC ; =0x0000FFFF
	add r0, r5, r6
	strh r1, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02023DE2:
	bl sub_02022974
_02023DE6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023DE8: .word 0xB6F8D2EC
_02023DEC: .word 0x0000FFFF
	thumb_func_end sub_02023D8C

	thumb_func_start sub_02023DF0
sub_02023DF0: ; 0x02023DF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _02023E00
	bl sub_02022974
_02023E00:
	ldr r1, [r5, #4]
	ldr r0, _02023E28 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E0C
	bl sub_02022974
_02023E0C:
	ldrh r0, [r5, #2]
	add r2, r0, #1
	cmp r2, r4
	bhi _02023E22
	add r5, #8
	add r0, r6, #0
	add r1, r5, #0
	lsl r2, r2, #1
	bl sub_020D50B8
	pop {r4, r5, r6, pc}
_02023E22:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02023E28: .word 0xB6F8D2EC
	thumb_func_end sub_02023DF0

	thumb_func_start sub_02023E2C
sub_02023E2C: ; 0x02023E2C
	push {r4, lr}
	add r4, r0, #0
	bne _02023E36
	bl sub_02022974
_02023E36:
	ldr r1, [r4, #4]
	ldr r0, _02023E48 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E42
	bl sub_02022974
_02023E42:
	add r4, #8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02023E48: .word 0xB6F8D2EC
	thumb_func_end sub_02023E2C

	thumb_func_start sub_02023E4C
sub_02023E4C: ; 0x02023E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023E5A
	bl sub_02022974
_02023E5A:
	ldr r1, [r5, #4]
	ldr r0, _02023EAC ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E66
	bl sub_02022974
_02023E66:
	cmp r4, #0
	bne _02023E6E
	bl sub_02022974
_02023E6E:
	ldr r1, [r4, #4]
	ldr r0, _02023EAC ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023E7A
	bl sub_02022974
_02023E7A:
	ldrh r2, [r4, #2]
	ldrh r0, [r5, #2]
	add r1, r0, r2
	add r3, r1, #1
	ldrh r1, [r5]
	cmp r3, r1
	bgt _02023EA6
	add r1, r5, #0
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	add r1, r4, #0
	add r2, r2, #1
	add r1, #8
	lsl r2, r2, #1
	bl sub_020D50B8
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r5, #2]
	pop {r3, r4, r5, pc}
_02023EA6:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023EAC: .word 0xB6F8D2EC
	thumb_func_end sub_02023E4C

	thumb_func_start sub_02023EB0
sub_02023EB0: ; 0x02023EB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023EBE
	bl sub_02022974
_02023EBE:
	ldr r1, [r5, #4]
	ldr r0, _02023EF0 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023ECA
	bl sub_02022974
_02023ECA:
	ldrh r2, [r5, #2]
	ldrh r0, [r5]
	add r1, r2, #1
	cmp r1, r0
	bge _02023EE8
	lsl r0, r2, #1
	strh r1, [r5, #2]
	add r0, r5, r0
	strh r4, [r0, #8]
	ldrh r0, [r5, #2]
	ldr r1, _02023EF4 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r5, r0
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
_02023EE8:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02023EF0: .word 0xB6F8D2EC
_02023EF4: .word 0x0000FFFF
	thumb_func_end sub_02023EB0

	thumb_func_start sub_02023EF8
sub_02023EF8: ; 0x02023EF8
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02023F0C
	ldrh r1, [r0, #8]
	mov r0, #0xf1
	lsl r0, r0, #8
	cmp r1, r0
	bne _02023F0C
	mov r0, #1
	bx lr
_02023F0C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02023EF8

	thumb_func_start sub_02023F10
sub_02023F10: ; 0x02023F10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_02023EF8
	cmp r0, #0
	beq _02023F7A
	ldr r0, [sp]
	ldr r1, [sp]
	ldrh r0, [r0, #2]
	add r1, #8
	ldr r7, _02023F84 ; =0x000001FF
	lsl r0, r0, #1
	add r3, r1, r0
	mov r0, #0
	add r4, #0xa
	add r1, r0, #0
_02023F34:
	ldrh r2, [r4]
	asr r2, r0
	and r2, r7
	lsl r2, r2, #0x10
	add r0, #9
	lsr r2, r2, #0x10
	cmp r0, #0xf
	blt _02023F5C
	add r4, r4, #2
	sub r0, #0xf
	beq _02023F5C
	ldrh r6, [r4]
	mov r5, #9
	sub r5, r5, r0
	lsl r6, r5
	ldr r5, _02023F84 ; =0x000001FF
	and r5, r6
	orr r2, r5
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
_02023F5C:
	ldr r5, _02023F84 ; =0x000001FF
	cmp r2, r5
	beq _02023F6A
	strh r2, [r3]
	add r3, r3, #2
	add r1, r1, #1
	b _02023F34
_02023F6A:
	ldr r0, _02023F88 ; =0x0000FFFF
	strh r0, [r3]
	ldr r0, [sp]
	ldrh r0, [r0, #2]
	add r1, r0, r1
	ldr r0, [sp]
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02023F7A:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02023E4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023F84: .word 0x000001FF
_02023F88: .word 0x0000FFFF
	thumb_func_end sub_02023F10

	thumb_func_start sub_02023F8C
sub_02023F8C: ; 0x02023F8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023F9A
	bl sub_02022974
_02023F9A:
	ldr r1, [r5, #4]
	ldr r0, _02023FC4 ; =0xB6F8D2EC
	cmp r1, r0
	beq _02023FA6
	bl sub_02022974
_02023FA6:
	ldrh r0, [r5, #2]
	cmp r0, r4
	ble _02023FC2
	add r5, #8
	lsl r2, r4, #1
	ldrh r1, [r5, r2]
	ldr r0, _02023FC8 ; =0x00000145
	cmp r1, r0
	blo _02023FC2
	add r0, #0x19
	cmp r1, r0
	bhi _02023FC2
	sub r1, #0x1a
	strh r1, [r5, r2]
_02023FC2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023FC4: .word 0xB6F8D2EC
_02023FC8: .word 0x00000145
	thumb_func_end sub_02023F8C

	.rodata


	.global Unk_020E5708
Unk_020E5708: ; 0x020E5708
	.incbin "incbin/arm9_rodata.bin", 0xAC8, 0xADC - 0xAC8

	.global Unk_020E571C
Unk_020E571C: ; 0x020E571C
	.incbin "incbin/arm9_rodata.bin", 0xADC, 0xAF0 - 0xADC

	.global Unk_020E5730
Unk_020E5730: ; 0x020E5730
	.incbin "incbin/arm9_rodata.bin", 0xAF0, 0xB04 - 0xAF0

	.global Unk_020E5744
Unk_020E5744: ; 0x020E5744
	.incbin "incbin/arm9_rodata.bin", 0xB04, 0xB18 - 0xB04

	.global Unk_020E5758
Unk_020E5758: ; 0x020E5758
	.incbin "incbin/arm9_rodata.bin", 0xB18, 0xB40 - 0xB18

	.global Unk_020E5780
Unk_020E5780: ; 0x020E5780
	.incbin "incbin/arm9_rodata.bin", 0xB40, 0xA0

