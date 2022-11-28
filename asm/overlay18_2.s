	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov18_022246C4
ov18_022246C4: ; 0x022246C4
	push {r3, lr}
	ldr r1, _022246D0 ; =0x02251B60
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	nop
_022246D0: .word 0x02251B60
	thumb_func_end ov18_022246C4

	thumb_func_start ov18_022246D4
ov18_022246D4: ; 0x022246D4
	push {r3, lr}
	ldr r1, _022246E0 ; =0x02251B6C
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	nop
_022246E0: .word 0x02251B6C
	thumb_func_end ov18_022246D4

	thumb_func_start ov18_022246E4
ov18_022246E4: ; 0x022246E4
	push {r4, lr}
	ldr r2, _022247B8 ; =0x00000106
	add r4, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _02224734
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	blt _02224734
	add r0, r2, #2
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	add r0, r2, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _02224734
	cmp r0, r1
	blt _02224734
	add r0, r2, #6
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	add r0, r2, #0
	add r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _02224734
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _02224734
	sub r0, r2, #6
	cmp r1, r0
	bhi _02224734
	sub r0, r1, #1
	add r0, r4, r0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0222473A
_02224734:
	mov r1, #0
	mvn r1, r1
	b _0222473C
_0222473A:
	mov r1, #0
_0222473C:
	ldr r0, _022247BC ; =0x02251B60
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222474C
	ldr r0, _022247C0 ; =0x02251B6C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02224750
_0222474C:
	mov r1, #0
	mvn r1, r1
_02224750:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02224768
	ldr r0, _022247C4 ; =0x00000116
	mov r1, #0xf
	strb r1, [r4, r0]
	bl ov18_02225204
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02224768:
	ldr r0, _022247C8 ; =0x000005F8
	bl ov18_022246C4
	ldr r1, _022247CC ; =0x02250D78
	cmp r0, #0
	str r0, [r1, #0x14]
	bne _02224786
	ldr r0, _022247C4 ; =0x00000116
	mov r1, #0xf
	strb r1, [r4, r0]
	bl ov18_02225204
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02224786:
	mov r0, #0
	mvn r0, r0
	bl ov18_022255AC
	add r0, r4, #0
	bl ov18_022247D4
	add r4, r0, #0
	ldr r0, _022247CC ; =0x02250D78
	ldr r0, [r0, #0x14]
	bl ov18_022246D4
	bl ov18_02225204
	ldr r0, _022247D0 ; =0x02249794
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	cmp r0, r1
	beq _022247B2
	bl ov18_022267F0
_022247B2:
	add r0, r4, #0
	pop {r4, pc}
	nop
_022247B8: .word 0x00000106
_022247BC: .word 0x02251B60
_022247C0: .word 0x02251B6C
_022247C4: .word 0x00000116
_022247C8: .word 0x000005F8
_022247CC: .word 0x02250D78
_022247D0: .word 0x02249794
	thumb_func_end ov18_022246E4

	thumb_func_start ov18_022247D4
ov18_022247D4: ; 0x022247D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	ldr r1, _02224B28 ; =0x02246458
	str r0, [sp, #8]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	strh r2, [r0, #0x30]
	strh r1, [r0, #0x32]
	mov r0, #0
	add r1, sp, #0x58
	strh r0, [r1]
	str r0, [sp, #0x24]
	strh r0, [r1, #2]
	mov r0, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, sp, #0xb0
	mov r2, #0x18
	bl ov18_02226754
	ldr r1, _02224B2C ; =0x00000106
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x30]
	mov r0, #0x30
	ldrsh r2, [r1, r0]
	sub r0, #0x31
	cmp r2, r0
	bne _0222481C
	mov r0, #0xa
	strh r0, [r1, #0x30]
_0222481C:
	ldr r1, _02224B30 ; =0x0000010A
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2c]
	mov r0, #0x2c
	ldrsh r2, [r1, r0]
	sub r0, #0x2d
	cmp r2, r0
	bne _02224834
	mov r0, #0xa
	strh r0, [r1, #0x2c]
_02224834:
	mov r1, #0x42
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x32]
	mov r0, #0x32
	ldrsh r2, [r1, r0]
	sub r0, #0x33
	cmp r2, r0
	bne _0222484E
	mov r0, #0x64
	strh r0, [r1, #0x32]
_0222484E:
	mov r1, #0x43
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2e]
	mov r0, #0x2e
	ldrsh r2, [r1, r0]
	sub r0, #0x2f
	cmp r2, r0
	bne _02224868
	mov r0, #0x64
	strh r0, [r1, #0x2e]
_02224868:
	ldr r1, _02224B34 ; =0x0000010E
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _0222487E
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0xc]
_0222487E:
	ldr r0, [sp, #8]
	bl ov18_02225230
	ldr r0, _02224B38 ; =0x02250D78
	ldr r1, [r0, #0x2c]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _022248AA
	mov r0, #0x13
	bl ov18_02225288
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022248AA:
	mov r4, #0
	add r0, r4, #0
	bl ov18_022255AC
	add r1, sp, #0x2c
	mov r0, #0x32
	ldrsh r6, [r1, r0]
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _02224B38 ; =0x02250D78
_022248BE:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022248CC
	bl ov18_022246D4
	mov r0, #0
	str r0, [r5, #4]
_022248CC:
	ldr r0, _02224B40 ; =0x02250D7C
	bl ov18_02226B8C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022248EE
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022248EE:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _0222490C
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222490C:
	cmp r0, #0
	beq _02224936
	cmp r4, r7
	blt _02224928
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224928:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _022248BE
_02224936:
	mov r0, #1
	bl ov18_022255AC
	add r0, sp, #0x74
	mov r1, #0
	mov r2, #0x3c
	bl ov18_02226754
	add r0, sp, #0x74
	bl ov18_02225538
	cmp r0, #0
	beq _02224964
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224964:
	mov r0, #0x58
	bl ov18_022246C4
	ldr r1, _02224B38 ; =0x02250D78
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _02224986
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224986:
	mov r1, #0
	mov r2, #0x58
	bl ov18_02226754
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _022249DE
	ldr r7, _02224B38 ; =0x02250D78
_0222499C:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022249C0
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022249C0:
	cmp r0, #0
	bne _022249CE
	bne _022249DE
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _022249DE
_022249CE:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r5
	blt _0222499C
_022249DE:
	add r0, sp, #0x2c
	mov r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _022249FC
	ldr r0, [sp, #8]
	mov r2, #0xf
	add r1, #0xe6
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022249FC:
	ldr r0, _02224B44 ; =0xC0A80B65
	mov r1, #0xff
	mvn r1, r1
	add r2, r0, #0
	bl ov18_022266A8
	cmp r0, #0
	beq _02224A26
	mov r0, #0xc
	bl ov18_02225288
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A26:
	bl ov18_02225204
	mov r3, #0x11
	ldr r2, [sp, #8]
	lsl r3, r3, #4
	mov r0, #3
	add r1, sp, #0xb0
	add r2, r2, r3
	bl ov18_0222557C
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl ov18_022267DC
	ldr r1, _02224B48 ; =0x02249794
	cmp r0, #0
	str r0, [r1, #0]
	bge _02224A60
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A60:
	mov r1, #4
	str r1, [sp]
	ldr r1, _02224B4C ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _02224A8C
	mov r0, #0xb
	bl ov18_02225288
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224A8C:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl ov18_02226754
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, _02224B44 ; =0xC0A80B65
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _02224B50 ; =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _02224B48 ; =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0, #0]
	mov r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _02224AD2
	ldr r1, _02224B3C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224AD2:
	ldr r0, _02224B38 ; =0x02250D78
	mov r1, #0
	ldr r0, [r0, #0x14]
	mov r2, #0x14
	str r0, [sp, #0x18]
	add r0, sp, #0x60
	bl ov18_02226754
	ldr r0, _02224B44 ; =0xC0A80B65
	mov r1, #0xfa
	str r0, [sp, #0x70]
	sub r0, #0x64
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r0, [sp, #0x14]
	mov r1, #0xfa
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	bl sub_020E1F6C
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	str r0, [sp, #0x10]
	mov r1, #0x30
	add r0, sp, #0x2c
	ldrsh r7, [r0, r1]
	ldr r5, _02224B38 ; =0x02250D78
_02224B10:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _02224B20
	ldr r1, _02224B54 ; =0x02250D98
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _02224B22
_02224B20:
	b _02224D9C
_02224B22:
	ldr r0, _02224B48 ; =0x02249794
	b _02224B58
	nop
_02224B28: .word 0x02246458
_02224B2C: .word 0x00000106
_02224B30: .word 0x0000010A
_02224B34: .word 0x0000010E
_02224B38: .word 0x02250D78
_02224B3C: .word 0x00000116
_02224B40: .word 0x02250D7C
_02224B44: .word 0xC0A80B65
_02224B48: .word 0x02249794
_02224B4C: .word 0x0000FFFF
_02224B50: .word 0x00005790
_02224B54: .word 0x02250D98
_02224B58:
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	cmp r0, r1
	beq _02224B66
	bl ov18_022267F0
_02224B66:
	mov r1, #0
	ldr r0, _02224E98 ; =0x02249794
	mvn r1, r1
	str r1, [r0, #0]
	bl ov18_02226700
	cmp r0, #0
	beq _02224B8A
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224B8A:
	mov r0, #0x58
	bl ov18_022246C4
	str r0, [r5, #4]
	cmp r0, #0
	bne _02224BAA
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BAA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02224BB8
	bl ov18_022246D4
	mov r0, #0
	str r0, [r5, #4]
_02224BB8:
	ldr r0, _02224EA0 ; =0x02250D7C
	bl ov18_02226B8C
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x28]
	cmp r0, r1
	bne _02224BDC
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BDC:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _02224BFA
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224BFA:
	cmp r0, #0
	beq _02224C24
	cmp r4, r7
	blt _02224C16
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C16:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02224BAA
_02224C24:
	mov r0, #0
	ldr r1, [sp, #0x28]
	mvn r0, r0
	cmp r1, r0
	bne _02224C42
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C42:
	mov r0, #0x58
	bl ov18_022246C4
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _02224C62
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C62:
	mov r1, #0
	mov r2, #0x58
	bl ov18_02226754
	mov r4, #0
	cmp r7, #0
	ble _02224CB2
_02224C70:
	ldr r1, [r5, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02224C94
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224C94:
	cmp r0, #0
	bne _02224CA2
	bne _02224CB2
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02224CB2
_02224CA2:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r7
	blt _02224C70
_02224CB2:
	cmp r4, r7
	bne _02224CCA
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224CCA:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl ov18_022251EC
	ldr r1, [r5, #0x38]
	add r2, r0, #0
	str r0, [sp, #0x1c]
	bl ov18_022266A8
	cmp r0, #0
	beq _02224CFA
	mov r0, #0xc
	bl ov18_02225288
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224CFA:
	ldr r0, _02224EA4 ; =0x02250D98
	mov r1, #1
	strb r1, [r0, #0x1c]
	bl ov18_02225204
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl ov18_022267DC
	ldr r1, _02224E98 ; =0x02249794
	cmp r0, #0
	str r0, [r1, #0]
	bge _02224D2A
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D2A:
	mov r1, #4
	str r1, [sp]
	ldr r1, _02224EA8 ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _02224D56
	mov r0, #0xb
	bl ov18_02225288
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D56:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl ov18_02226754
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _02224EAC ; =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _02224E98 ; =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0, #0]
	mov r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _02224D9C
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224D9C:
	ldr r3, _02224E98 ; =0x02249794
	ldr r0, [sp, #0x24]
	ldr r3, [r3, #0]
	add r1, sp, #0x60
	add r2, sp, #0xb0
	bl ov18_02225E90
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02224DD2
	mov r1, #1
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xc
	add r0, r0, r1
	bl ov18_02225288
	ldr r1, _02224E9C ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224DD2:
	ldr r0, [sp, #0x18]
	ldr r2, _02224EB0 ; =0x000005F8
	mov r1, #0
	bl ov18_02226754
	add r0, sp, #0x3c
	bl ov18_022268FC
	ldr r0, _02224E98 ; =0x02249794
	add r1, sp, #0x3c
	ldr r0, [r0, #0]
	bl ov18_02226908
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x3c
	str r0, [sp, #0x38]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, _02224E98 ; =0x02249794
	add r3, r2, #0
	ldr r0, [r0, #0]
	add r0, r0, #1
	bl ov18_02226774
	cmp r0, #0
	bgt _02224E4C
	ldr r0, [sp, #0x50]
	add r1, sp, #0x2c
	add r2, r0, #1
	str r2, [sp, #0x50]
	mov r0, #0x2c
	ldrsh r0, [r1, r0]
	cmp r2, r0
	ble _02224E42
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _02224E2A
	mov r0, #0xf
	bl ov18_02225288
	b _02224E3C
_02224E2A:
	cmp r0, #1
	bne _02224E36
	mov r0, #0x10
	bl ov18_02225288
	b _02224E3C
_02224E36:
	mov r0, #0x11
	bl ov18_02225288
_02224E3C:
	mov r5, #0
	mvn r5, r5
	b _0222512A
_02224E42:
	mov r0, #0x2e
	ldrsh r0, [r1, r0]
	bl ov18_02226ED4
	b _02224B10
_02224E4C:
	mov r0, #8
	str r0, [sp, #0x44]
	add r0, sp, #0x48
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r0, _02224E98 ; =0x02249794
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0]
	ldr r2, _02224EB4 ; =0x000005DC
	add r1, #0xc
	mov r3, #0
	bl ov18_02226760
	ldr r1, _02224E98 ; =0x02249794
	lsl r0, r0, #0x10
	ldr r2, [r1, #0]
	ldr r1, [sp, #0x18]
	lsr r0, r0, #0x10
	str r2, [r1, #0]
	bl ov18_02226860
	ldr r1, [sp, #0x18]
	add r2, sp, #0x50
	str r0, [r1, #4]
	ldr r0, _02224E98 ; =0x02249794
	add r3, sp, #0xb0
	ldr r0, [r0, #0]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	bl ov18_022255D8
	str r0, [sp, #0x20]
	cmp r0, #0x64
	bne _02224EB8
	mov r5, #0
	b _0222512A
	nop
_02224E98: .word 0x02249794
_02224E9C: .word 0x00000116
_02224EA0: .word 0x02250D7C
_02224EA4: .word 0x02250D98
_02224EA8: .word 0x0000FFFF
_02224EAC: .word 0x00005790
_02224EB0: .word 0x000005F8
_02224EB4: .word 0x000005DC
_02224EB8:
	mov r5, #0
	mvn r5, r5
	cmp r0, r5
	bne _02224EC2
	b _0222512A
_02224EC2:
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _02224ECA
	b _022250EC
_02224ECA:
	cmp r0, #2
	beq _02224ED0
	b _022250E6
_02224ED0:
	ldr r0, _022251D4 ; =0x02249794
	ldr r0, [r0, #0]
	cmp r0, r5
	beq _02224EDC
	bl ov18_022267F0
_02224EDC:
	mov r1, #0
	ldr r0, _022251D4 ; =0x02249794
	mvn r1, r1
	str r1, [r0, #0]
	bl ov18_02226700
	cmp r0, #0
	beq _02224F00
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F00:
	mov r0, #4
	mov r4, #0
	bl ov18_022255AC
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _022251DC ; =0x02250D78
_02224F10:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02224F1E
	bl ov18_022246D4
	mov r0, #0
	str r0, [r5, #4]
_02224F1E:
	ldr r0, _022251E0 ; =0x02250D7C
	bl ov18_02226B8C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02224F40
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F40:
	ldr r0, [r5, #4]
	bl ov18_022254BC
	cmp r0, #4
	bne _02224F5E
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F5E:
	cmp r0, #0
	beq _02224F88
	cmp r4, r7
	blt _02224F7A
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224F7A:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02224F10
_02224F88:
	mov r0, #0x58
	bl ov18_022246C4
	ldr r1, _022251DC ; =0x02250D78
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _02224FAA
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224FAA:
	mov r1, #0
	mov r2, #0x58
	bl ov18_02226754
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _02225002
	ldr r7, _022251DC ; =0x02250D78
_02224FC0:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl ov18_02226D04
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02224FE4
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02224FE4:
	cmp r0, #0
	bne _02224FF2
	bne _02225002
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02225002
_02224FF2:
	add r0, r6, #0
	bl ov18_02226ED4
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r5
	blt _02224FC0
_02225002:
	add r0, sp, #0x2c
	mov r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _02225020
	ldr r0, [sp, #8]
	mov r2, #0xf
	add r1, #0xe6
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225020:
	ldr r1, _022251DC ; =0x02250D78
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x38]
	add r2, r0, #0
	bl ov18_022266A8
	cmp r0, #0
	beq _0222504A
	mov r0, #0xc
	bl ov18_02225288
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222504A:
	bl ov18_02225204
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl ov18_022267DC
	ldr r1, _022251D4 ; =0x02249794
	cmp r0, #0
	str r0, [r1, #0]
	bge _02225074
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225074:
	mov r1, #4
	str r1, [sp]
	ldr r1, _022251E4 ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl ov18_022267D8
	cmp r0, #0
	bge _022250A0
	mov r0, #0xb
	bl ov18_02225288
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022250A0:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl ov18_02226754
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl ov18_022267F8
	str r0, [sp, #0x30]
	ldr r0, _022251E8 ; =0x00005790
	bl ov18_02226820
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _022251D4 ; =0x02249794
	add r1, sp, #0x2c
	ldr r0, [r0, #0]
	mov r2, #8
	bl ov18_022267E4
	cmp r0, #0
	bge _022250E6
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022250E6:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _02224AD2
_022250EC:
	str r0, [sp, #0x24]
	add r1, sp, #0x2c
	mov r0, #0x2c
	ldrsh r0, [r1, r0]
	ldr r2, [sp, #0x50]
	cmp r2, r0
	ble _02225120
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02225108
	mov r0, #0xf
	bl ov18_02225288
	b _0222511A
_02225108:
	cmp r0, #1
	bne _02225114
	mov r0, #0x10
	bl ov18_02225288
	b _0222511A
_02225114:
	mov r0, #0x11
	bl ov18_02225288
_0222511A:
	mov r5, #0
	mvn r5, r5
	b _0222512A
_02225120:
	mov r0, #0x2e
	ldrsh r0, [r1, r0]
	bl ov18_02226ED4
	b _02224AD2
_0222512A:
	ldr r0, _022251D4 ; =0x02249794
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	cmp r0, r1
	beq _0222513A
	bl ov18_022267F0
_0222513A:
	mov r1, #0
	ldr r0, _022251D4 ; =0x02249794
	mvn r1, r1
	str r1, [r0, #0]
	bl ov18_02226700
	cmp r0, #0
	beq _0222515E
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222515E:
	cmp r5, #0
	beq _022251AE
	bl ov18_02225294
	sub r0, #0xf
	cmp r0, #6
	bhi _0222519A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225178: ; jump table
	.short _02225186 - _02225178 - 2 ; case 0
	.short _0222518A - _02225178 - 2 ; case 1
	.short _0222518E - _02225178 - 2 ; case 2
	.short _0222519A - _02225178 - 2 ; case 3
	.short _0222519A - _02225178 - 2 ; case 4
	.short _02225192 - _02225178 - 2 ; case 5
	.short _02225196 - _02225178 - 2 ; case 6
_02225186:
	mov r2, #3
	b _0222519C
_0222518A:
	mov r2, #4
	b _0222519C
_0222518E:
	mov r2, #5
	b _0222519C
_02225192:
	mov r2, #7
	b _0222519C
_02225196:
	mov r2, #8
	b _0222519C
_0222519A:
	mov r2, #0xf
_0222519C:
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022251AE:
	ldr r0, [sp, #8]
	bl ov18_022252A0
	cmp r0, #0
	beq _022251CC
	ldr r1, _022251D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #6
	strb r2, [r0, r1]
	bl ov18_02225204
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022251CC:
	mov r0, #0
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022251D4: .word 0x02249794
_022251D8: .word 0x00000116
_022251DC: .word 0x02250D78
_022251E0: .word 0x02250D7C
_022251E4: .word 0x0000FFFF
_022251E8: .word 0x00005790
	thumb_func_end ov18_022247D4

	thumb_func_start ov18_022251EC
ov18_022251EC: ; 0x022251EC
	add r2, r0, #0
	and r2, r1
	mvn r1, r1
	and r0, r1
	add r0, r0, #1
	orr r0, r2
	orr r1, r2
	cmp r0, r1
	blo _02225202
	mov r0, #1
	orr r0, r2
_02225202:
	bx lr
	thumb_func_end ov18_022251EC

	thumb_func_start ov18_02225204
ov18_02225204: ; 0x02225204
	push {r3, lr}
	ldr r0, _0222522C ; =0x02250D78
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02225218
	bl ov18_022246D4
	ldr r0, _0222522C ; =0x02250D78
	mov r1, #0
	str r1, [r0, #0xc]
_02225218:
	ldr r0, _0222522C ; =0x02250D78
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0222522A
	bl ov18_022246D4
	ldr r0, _0222522C ; =0x02250D78
	mov r1, #0
	str r1, [r0, #4]
_0222522A:
	pop {r3, pc}
	; .align 2, 0
_0222522C: .word 0x02250D78
	thumb_func_end ov18_02225204

	thumb_func_start ov18_02225230
ov18_02225230: ; 0x02225230
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02225274 ; =0x02251AD8
	mov r1, #0
	mov r2, #8
	bl ov18_02226754
	ldr r0, _02225278 ; =0x02250D78
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, _0222527C ; =0x02250D9C
	mov r1, #0
	mov r2, #0x1c
	bl ov18_02226754
	ldr r1, _02225278 ; =0x02250D78
	add r0, r4, #6
	str r0, [r1, #0x24]
	ldrh r0, [r4, #4]
	mov r3, #0
	str r0, [r1, #0x28]
	ldrh r2, [r4]
	mov r0, #0xf
	and r0, r2
	str r0, [r1, #0x2c]
	ldrb r2, [r4, #2]
	ldr r0, _02225280 ; =0x02250D98
	strb r2, [r0, #0x1d]
	ldr r2, _02225284 ; =0xC0A80B01
	str r3, [r1, #0x30]
	str r2, [r1, #0x34]
	strb r3, [r0, #0x1c]
	pop {r4, pc}
	nop
_02225274: .word 0x02251AD8
_02225278: .word 0x02250D78
_0222527C: .word 0x02250D9C
_02225280: .word 0x02250D98
_02225284: .word 0xC0A80B01
	thumb_func_end ov18_02225230

	thumb_func_start ov18_02225288
ov18_02225288: ; 0x02225288
	ldr r1, _02225290 ; =0x02250D78
	str r0, [r1, #0x10]
	bx lr
	nop
_02225290: .word 0x02250D78
	thumb_func_end ov18_02225288

	thumb_func_start ov18_02225294
ov18_02225294: ; 0x02225294
	ldr r0, _0222529C ; =0x02250D78
	ldr r0, [r0, #0x10]
	bx lr
	nop
_0222529C: .word 0x02250D78
	thumb_func_end ov18_02225294

	thumb_func_start ov18_022252A0
ov18_022252A0: ; 0x022252A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _02225478 ; =0x022516A0
	ldr r2, _0222547C ; =0x00000117
	str r0, [sp, #4]
	ldr r0, _02225480 ; =0x02251710
	add r4, r7, r2
	ldr r6, _02225484 ; =0x02251440
	ldr r5, _02225488 ; =0x02251570
	str r0, [sp]
	bne _022252C0
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022252C0:
	ldr r1, _0222548C ; =0x02250D78
	add r2, #0x3d
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x30]
	and r0, r1
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #0
	bl ov18_02226754
	ldrh r1, [r7]
	mov r0, #1
	tst r0, r1
	beq _0222533E
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #0
	add r1, #0x30
	bl ov18_02226744
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #6
	add r1, #0x70
	bl ov18_02226744
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0xc
	add r1, #0xb0
	bl ov18_02226744
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0x12
	add r1, #0xf0
	bl ov18_02226744
	add r0, r6, #0
	add r0, #8
	bl ov18_02226878
	add r1, r0, #0
	add r0, r6, #0
	add r0, #8
	bl ov18_02225498
	cmp r0, #0
	beq _02225328
	b _02225464
_02225328:
	add r0, r6, #0
	add r0, #8
	bl ov18_02226878
	add r2, r0, #0
	add r0, r4, #0
	add r6, #8
	add r0, #0x18
	add r1, r6, #0
	bl ov18_02226744
_0222533E:
	ldrh r1, [r7]
	mov r0, #2
	tst r0, r1
	beq _022253AA
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x39
	add r1, #0x30
	bl ov18_02226744
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x47
	add r1, #0x70
	bl ov18_02226744
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x55
	add r1, #0xb0
	bl ov18_02226744
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x63
	add r1, #0xf0
	bl ov18_02226744
	add r0, r5, #0
	add r0, #8
	bl ov18_02226878
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	add r0, r5, #0
	add r0, #8
	bl ov18_02226878
	add r2, r0, #0
	add r0, r4, #0
	add r5, #8
	add r0, #0x71
	add r1, r5, #0
	bl ov18_02226744
_022253AA:
	ldrh r1, [r7]
	mov r0, #4
	tst r0, r1
	beq _02225402
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0x92
	add r1, #0x30
	bl ov18_02226744
	ldr r0, [sp, #4]
	add r0, #8
	bl ov18_02226878
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r0, [sp, #4]
	add r0, #8
	bl ov18_02226878
	ldr r1, [sp, #4]
	add r2, r0, #0
	add r0, r4, #0
	add r1, #8
	add r0, #0xd2
	str r1, [sp, #4]
	bl ov18_02226744
_02225402:
	ldrh r1, [r7]
	mov r0, #8
	tst r0, r1
	beq _0222545A
	ldr r1, [sp]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r2, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0xf3
	add r1, #0x30
	bl ov18_02226744
	ldr r0, [sp]
	add r0, #8
	bl ov18_02226878
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl ov18_02225498
	cmp r0, #0
	bne _02225464
	ldr r0, [sp]
	add r0, #8
	bl ov18_02226878
	add r2, r0, #0
	ldr r0, _02225490 ; =0x00000133
	ldr r1, [sp]
	add r0, r4, r0
	add r1, #8
	str r1, [sp]
	bl ov18_02226744
_0222545A:
	ldr r1, _02225494 ; =0x00000116
	mov r0, #0
	add sp, #8
	strb r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02225464:
	mov r2, #0x55
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl ov18_02226754
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225478: .word 0x022516A0
_0222547C: .word 0x00000117
_02225480: .word 0x02251710
_02225484: .word 0x02251440
_02225488: .word 0x02251570
_0222548C: .word 0x02250D78
_02225490: .word 0x00000133
_02225494: .word 0x00000116
	thumb_func_end ov18_022252A0

	thumb_func_start ov18_02225498
ov18_02225498: ; 0x02225498
	mov r3, #0
	cmp r1, #0
	ble _022254B6
_0222549E:
	ldrb r2, [r0]
	add r0, r0, #1
	cmp r2, #0x20
	blo _022254AA
	cmp r2, #0x7f
	bls _022254B0
_022254AA:
	mov r0, #0
	mvn r0, r0
	bx lr
_022254B0:
	add r3, r3, #1
	cmp r3, r1
	blt _0222549E
_022254B6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02225498

	thumb_func_start ov18_022254BC
ov18_022254BC: ; 0x022254BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r4, #0
	str r4, [sp, #4]
	str r0, [sp]
	cmp r0, #0
	bne _022254D4
	add sp, #8
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022254D4:
	cmp r0, #0x40
	bls _022254DC
	mov r0, #0x40
	str r0, [sp]
_022254DC:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _0222551E
	add r6, r5, #0
	add r6, #8
_022254E8:
	ldr r1, [r5, #0x54]
	mov r0, #1
	tst r0, r1
	beq _02225512
	ldr r0, _02225534 ; =0x022497F4
	bl ov18_02226878
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _02225512
	ldr r0, _02225534 ; =0x022497F4
	bl ov18_02226878
	add r2, r0, #0
	ldr r1, _02225534 ; =0x022497F4
	add r0, r6, #0
	bl ov18_02226724
	cmp r0, #0
	bne _02225512
	add r4, r4, #1
_02225512:
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x54
	add r6, #0x54
	cmp r7, r0
	blt _022254E8
_0222551E:
	cmp r4, #1
	ble _02225526
	mov r0, #4
	str r0, [sp, #4]
_02225526:
	cmp r4, #0
	bne _0222552E
	mov r0, #5
	str r0, [sp, #4]
_0222552E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225534: .word 0x022497F4
	thumb_func_end ov18_022254BC

	thumb_func_start ov18_02225538
ov18_02225538: ; 0x02225538
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02225574 ; =0x022497F4
	bl ov18_02226878
	str r0, [r4, #0]
	ldr r1, _02225574 ; =0x022497F4
	ldr r2, [r4, #0]
	add r0, r4, #4
	bl ov18_02226744
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, _02225578 ; =0x02249800
	bl ov18_02226878
	add r2, r0, #0
	str r0, [r4, #0x28]
	cmp r2, #0xd
	bls _02225566
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02225566:
	add r4, #0x2c
	ldr r1, _02225578 ; =0x02249800
	add r0, r4, #0
	bl ov18_02226744
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02225574: .word 0x022497F4
_02225578: .word 0x02249800
	thumb_func_end ov18_02225538

	thumb_func_start ov18_0222557C
ov18_0222557C: ; 0x0222557C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
	cmp r6, #0
	ble _022255AA
_0222558A:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl ov18_02226744
	bl ov18_0222688C
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	bl ov18_02226820
	strh r0, [r5, #6]
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _0222558A
_022255AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_0222557C

	thumb_func_start ov18_022255AC
ov18_022255AC: ; 0x022255AC
	push {r3, lr}
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022255BE
	ldr r1, _022255D4 ; =0x02249794
	str r0, [r1, #4]
	mov r0, #0
	pop {r3, pc}
_022255BE:
	ldr r1, _022255D4 ; =0x02249794
	ldr r2, [r1, #4]
	cmp r2, r0
	beq _022255CE
	str r0, [r1, #4]
	bl ov18_02226EDC
	pop {r3, pc}
_022255CE:
	mov r0, #0
	pop {r3, pc}
	nop
_022255D4: .word 0x02249794
	thumb_func_end ov18_022255AC

	thumb_func_start ov18_022255D8
ov18_022255D8: ; 0x022255D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldrh r0, [r6, #0xc]
	add r7, r6, #0
	add r4, r2, #0
	str r3, [sp]
	add r7, #0xc
	bl ov18_02226860
	cmp r0, #1
	bhs _022255FA
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022255FA:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x11
	beq _0222560A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222560A:
	add r0, r6, #0
	add r0, #0xc
	bl ov18_022258D0
	cmp r0, #0
	ble _02225620
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225620:
	ldrh r0, [r7, #6]
	bl ov18_02226860
	ldr r1, _0222566C ; =0x00001010
	cmp r0, r1
	beq _0222563A
	ldr r1, _02225670 ; =0x00002010
	cmp r0, r1
	beq _0222564A
	ldr r1, _02225674 ; =0x00003010
	cmp r0, r1
	beq _0222565A
	b _02225668
_0222563A:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov18_02225678
	add r5, r0, #0
	b _02225668
_0222564A:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov18_02225754
	add r5, r0, #0
	b _02225668
_0222565A:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov18_0222582C
	add r5, r0, #0
_02225668:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222566C: .word 0x00001010
_02225670: .word 0x00002010
_02225674: .word 0x00003010
	thumb_func_end ov18_022255D8

	thumb_func_start ov18_02225678
ov18_02225678: ; 0x02225678
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _0222568A
	ldr r1, [r5, #0]
	add r1, r1, #1
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0222568A:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _022256AA
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022256AA:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _022256BE
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022256BE:
	ldrb r0, [r4]
	cmp r0, #7
	bne _022256FC
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022256DA
	mov r0, #0x14
	bl ov18_02225288
	b _022256F6
_022256DA:
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _022256F0
	mov r0, #0x15
	bl ov18_02225288
	b _022256F6
_022256F0:
	mov r0, #0x18
	bl ov18_02225288
_022256F6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022256FC:
	cmp r0, #1
	beq _0222570A
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222570A:
	ldr r1, _0222574C ; =0x02250DB8
	add r0, r4, #4
	bl ov18_02225A54
	cmp r0, #0
	bge _02225734
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0222572A
	mov r0, #0x16
	bl ov18_02225288
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222572A:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225734:
	ldrh r0, [r7, #0xc]
	bl ov18_02226860
	bl ov18_02225E80
	ldr r1, _02225750 ; =0x02250D78
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222574C: .word 0x02250DB8
_02225750: .word 0x02250D78
	thumb_func_end ov18_02225678

	thumb_func_start ov18_02225754
ov18_02225754: ; 0x02225754
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #1
	beq _02225766
	ldr r1, [r5, #0]
	add r1, r1, #1
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02225766:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r3, #8
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _02225788
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225788:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _0222579C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222579C:
	ldrb r0, [r4]
	cmp r0, #7
	bne _022257DA
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022257B8
	mov r0, #0x14
	bl ov18_02225288
	b _022257D4
_022257B8:
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _022257CE
	mov r0, #0x15
	bl ov18_02225288
	b _022257D4
_022257CE:
	mov r0, #0x18
	bl ov18_02225288
_022257D4:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022257DA:
	mov r2, #0x6a
	ldr r0, _02225820 ; =0x02251438
	mov r1, #0
	lsl r2, r2, #4
	bl ov18_02226754
	ldrh r0, [r7, #0xa]
	bl ov18_02226860
	add r2, r0, #0
	ldr r0, _02225824 ; =0x02250DB8
	ldr r3, _02225820 ; =0x02251438
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	bl ov18_02225D70
	cmp r0, #0
	bge _0222580A
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222580A:
	ldr r0, _02225828 ; =0x02250D78
	ldr r1, [r0, #0x30]
	ldr r0, [r0, #0x2c]
	tst r0, r1
	bne _02225818
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225818:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225820: .word 0x02251438
_02225824: .word 0x02250DB8
_02225828: .word 0x02250D78
	thumb_func_end ov18_02225754

	thumb_func_start ov18_0222582C
ov18_0222582C: ; 0x0222582C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #2
	beq _0222583E
	ldr r1, [r5, #0]
	add r1, r1, #1
	str r1, [r5, #0]
	pop {r4, r5, r6, pc}
_0222583E:
	add r4, r1, #0
	add r3, #0x10
	add r1, #0xc
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov18_02225A08
	cmp r0, #0
	bge _0222585C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0222585C:
	ldrb r0, [r4]
	cmp r0, #7
	beq _0222586C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0222586C:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	cmp r0, #0
	bne _02225880
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02225880:
	ldr r0, [r4, #4]
	bl ov18_02226838
	cmp r0, #0
	bne _0222588E
	mov r0, #0x64
	pop {r4, r5, r6, pc}
_0222588E:
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022258A8
	mov r0, #0x14
	bl ov18_02225288
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_022258A8:
	ldr r0, [r4, #4]
	bl ov18_02226838
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _022258C2
	mov r0, #0x15
	bl ov18_02225288
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_022258C2:
	mov r0, #0x18
	bl ov18_02225288
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_0222582C

	thumb_func_start ov18_022258D0
ov18_022258D0: ; 0x022258D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r4, r5, #0
	add r0, sp, #0xc
	add r1, #0x10
	mov r2, #8
	add r4, #0x18
	bl ov18_02226744
	ldr r0, _022259BC ; =0x02249800
	bl ov18_02226878
	add r3, r0, #0
	ldr r2, _022259BC ; =0x02249800
	add r0, sp, #0xc
	mov r1, #8
	bl ov18_0222657C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222590E
	mov r0, #2
	bl ov18_02225288
	mov r0, #0x63
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0222590E:
	ldrh r0, [r5, #6]
	bl ov18_02226860
	add r1, sp, #0xc
	bl ov18_022259C4
	cmp r0, #0
	bne _022259B6
	ldrh r0, [r5, #6]
	bl ov18_02226860
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _02225936
	ldr r0, _022259C0 ; =0x02251AD8
	add r1, sp, #0xc
	mov r2, #8
	bl ov18_02226744
_02225936:
	ldrh r0, [r5, #0xc]
	bl ov18_02226860
	mov r1, #0xf
	tst r0, r1
	bne _02225948
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02225948:
	ldrh r0, [r4]
	bl ov18_02226860
	add r6, r0, #0
	bl ov18_022246C4
	add r7, r0, #0
	bne _02225964
	mov r0, #2
	bl ov18_02225288
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02225964:
	add r0, r4, #2
	str r0, [sp]
	ldr r0, _022259C0 ; =0x02251AD8
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldrb r3, [r5, #0xe]
	add r0, r4, #4
	add r2, r6, #0
	bl ov18_0222638C
	cmp r0, #0
	bge _0222599A
	add r0, r7, #0
	bl ov18_022246D4
	bl ov18_02225294
	cmp r0, #2
	bne _02225994
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02225994:
	add sp, #0x14
	mov r0, #0xc8
	pop {r4, r5, r6, r7, pc}
_0222599A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov18_02226744
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xa]
	add r0, r7, #0
	bl ov18_022246D4
	mov r0, #0
_022259B6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022259BC: .word 0x02249800
_022259C0: .word 0x02251AD8
	thumb_func_end ov18_022258D0

	thumb_func_start ov18_022259C4
ov18_022259C4: ; 0x022259C4
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02225A04 ; =0x02251AD8
	add r5, r4, #0
	add r3, r4, #0
_022259CE:
	ldrb r2, [r6]
	cmp r2, #0
	beq _022259D8
	mov r5, #1
	b _022259E0
_022259D8:
	add r3, r3, #1
	add r6, r6, #1
	cmp r3, #6
	blt _022259CE
_022259E0:
	cmp r5, #0
	beq _022259F4
	ldr r0, _02225A04 ; =0x02251AD8
	mov r2, #6
	bl ov18_02226724
	cmp r0, #0
	beq _022259FE
	mov r4, #1
	b _022259FE
_022259F4:
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	beq _022259FE
	mov r4, #2
_022259FE:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02225A04: .word 0x02251AD8
	thumb_func_end ov18_022259C4

	thumb_func_start ov18_02225A08
ov18_02225A08: ; 0x02225A08
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02225A50 ; =0x02249800
	add r5, r1, #0
	mov r4, #0
	bl ov18_02226878
	add r3, r0, #0
	ldr r2, _02225A50 ; =0x02249800
	add r0, r5, #0
	mov r1, #8
	bl ov18_0222657C
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl ov18_02226724
	cmp r0, #0
	beq _02225A34
	sub r4, r4, #1
	b _02225A4A
_02225A34:
	ldrh r0, [r6, #6]
	bl ov18_02226860
	add r6, r0, #0
	ldrh r0, [r5, #6]
	bl ov18_02226860
	add r1, r6, #1
	cmp r1, r0
	beq _02225A4A
	sub r4, r4, #2
_02225A4A:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02225A50: .word 0x02249800
	thumb_func_end ov18_02225A08

	thumb_func_start ov18_02225A54
ov18_02225A54: ; 0x02225A54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r2, #0x41
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl ov18_02226754
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0x80
_02225A6C:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	add r2, r0, #0
	cmp r2, #0
	bgt _02225A7E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225A7E:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _02225AF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225A90: ; jump table
	.short _02225A9E - _02225A90 - 2 ; case 0
	.short _02225AA8 - _02225A90 - 2 ; case 1
	.short _02225AB2 - _02225A90 - 2 ; case 2
	.short _02225AC0 - _02225A90 - 2 ; case 3
	.short _02225AC0 - _02225A90 - 2 ; case 4
	.short _02225AD0 - _02225A90 - 2 ; case 5
	.short _02225AE2 - _02225A90 - 2 ; case 6
_02225A9E:
	add r0, r5, #0
	add r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AA8:
	add r0, r7, #0
	add r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AB2:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #6
	bl ov18_02226744
	b _02225AFA
_02225AC0:
	ldrb r0, [r4, #6]
	bl ov18_02226860
	cmp r0, #0
	bgt _02225AFA
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225AD0:
	add r0, r4, #6
	add r1, r2, #0
	bl ov18_02225B10
	bl ov18_02226838
	ldr r1, _02225B0C ; =0x02250D78
	str r0, [r1, #0x34]
	b _02225AFA
_02225AE2:
	add r0, r4, #6
	add r1, r2, #0
	bl ov18_02225B10
	bl ov18_02226838
	ldr r1, _02225B0C ; =0x02250D78
	str r0, [r1, #0x38]
	b _02225AFA
_02225AF4:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225AFA:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02225B08
	bl ov18_02226860
	add r4, r6, r0
	b _02225A6C
_02225B08:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225B0C: .word 0x02250D78
	thumb_func_end ov18_02225A54

	thumb_func_start ov18_02225B10
ov18_02225B10: ; 0x02225B10
	push {r4, r5}
	mov r3, #0
	sub r2, r1, #1
	add r5, r0, r2
	add r4, r3, #0
	cmp r1, #0
	ble _02225B2C
_02225B1E:
	ldrb r0, [r5]
	lsl r2, r3, #8
	add r4, r4, #1
	sub r5, r5, #1
	add r3, r2, r0
	cmp r4, r1
	blt _02225B1E
_02225B2C:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02225B10

	thumb_func_start ov18_02225B34
ov18_02225B34: ; 0x02225B34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r0, #6
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0xf0
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0xb0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x70
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r5, [sp, #0x10]
_02225B62:
	ldrh r0, [r5, #2]
	bl ov18_02226860
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0x21
	bgt _02225B9A
	bge _02225BB8
	cmp r0, #0x15
	bgt _02225B94
	add r1, r0, #0
	sub r1, #0x10
	bmi _02225BD0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225B88: ; jump table
	.short _02225BAC - _02225B88 - 2 ; case 0
	.short _02225BAC - _02225B88 - 2 ; case 1
	.short _02225BAC - _02225B88 - 2 ; case 2
	.short _02225BAC - _02225B88 - 2 ; case 3
	.short _02225BD0 - _02225B88 - 2 ; case 4
	.short _02225BC4 - _02225B88 - 2 ; case 5
_02225B94:
	cmp r0, #0x20
	beq _02225BB8
	b _02225BD0
_02225B9A:
	cmp r0, #0x23
	bgt _02225BA6
	bge _02225BB8
	cmp r0, #0x22
	beq _02225BB8
	b _02225BD0
_02225BA6:
	cmp r0, #0x25
	beq _02225BC4
	b _02225BD0
_02225BAC:
	cmp r4, #5
	bls _02225BD0
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BB8:
	cmp r4, #0xd
	bls _02225BD0
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BC4:
	cmp r4, #0x21
	bls _02225BD0
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225BD0:
	cmp r0, #0x21
	bgt _02225BFE
	bge _02225C1E
	cmp r0, #0x15
	bgt _02225BF8
	add r1, r0, #0
	sub r1, #0x10
	bmi _02225C68
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225BEC: ; jump table
	.short _02225C10 - _02225BEC - 2 ; case 0
	.short _02225C1E - _02225BEC - 2 ; case 1
	.short _02225C2C - _02225BEC - 2 ; case 2
	.short _02225C3A - _02225BEC - 2 ; case 3
	.short _02225C68 - _02225BEC - 2 ; case 4
	.short _02225C48 - _02225BEC - 2 ; case 5
_02225BF8:
	cmp r0, #0x20
	beq _02225C10
	b _02225C68
_02225BFE:
	cmp r0, #0x23
	bgt _02225C0A
	bge _02225C3A
	cmp r0, #0x22
	beq _02225C2C
	b _02225C68
_02225C0A:
	cmp r0, #0x25
	beq _02225C48
	b _02225C68
_02225C10:
	add r0, r7, #0
	add r1, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C1E:
	ldr r0, [sp]
	add r1, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C2C:
	ldr r0, [sp, #4]
	add r1, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C3A:
	ldr r0, [sp, #8]
	add r1, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	str r4, [r6, #4]
	b _02225C70
_02225C48:
	cmp r4, #0
	beq _02225C5C
	add r0, r5, r4
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02225C5C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225C5C:
	ldr r0, [sp, #0xc]
	add r1, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	b _02225C70
_02225C68:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225C70:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02225C80
	bl ov18_02226860
	ldr r1, [sp, #0x10]
	add r5, r1, r0
	b _02225B62
_02225C80:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02225B34

	thumb_func_start ov18_02225C88
ov18_02225C88: ; 0x02225C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #6
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r4, [sp, #4]
_02225C9E:
	ldrh r0, [r4, #2]
	bl ov18_02226860
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x35
	bgt _02225CB4
	bge _02225CCE
	cmp r0, #0x30
	beq _02225CC2
	b _02225CDA
_02225CB4:
	cmp r0, #0x40
	bgt _02225CBC
	beq _02225CC2
	b _02225CDA
_02225CBC:
	cmp r0, #0x45
	beq _02225CCE
	b _02225CDA
_02225CC2:
	cmp r5, #0x40
	bls _02225CDA
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225CCE:
	cmp r5, #0x21
	bls _02225CDA
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225CDA:
	cmp r0, #0x35
	bgt _02225CE6
	bge _02225D02
	cmp r0, #0x30
	beq _02225CF4
	b _02225D22
_02225CE6:
	cmp r0, #0x40
	bgt _02225CEE
	beq _02225CF4
	b _02225D22
_02225CEE:
	cmp r0, #0x45
	beq _02225D02
	b _02225D22
_02225CF4:
	add r0, r7, #0
	add r1, r4, #6
	add r2, r5, #0
	bl ov18_02226744
	str r5, [r6, #4]
	b _02225D2A
_02225D02:
	cmp r5, #0
	beq _02225D16
	add r0, r4, r5
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02225D16
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225D16:
	ldr r0, [sp]
	add r1, r4, #6
	add r2, r5, #0
	bl ov18_02226744
	b _02225D2A
_02225D22:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225D2A:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02225D3A
	bl ov18_02226860
	ldr r1, [sp, #4]
	add r4, r1, r0
	b _02225C9E
_02225D3A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_02225C88

	thumb_func_start ov18_02225D40
ov18_02225D40: ; 0x02225D40
	push {r3, r4, r5, lr}
	add r4, r0, #6
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl ov18_02226860
	add r2, r0, #0
	cmp r2, #0
	bgt _02225D58
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02225D58:
	ldrb r0, [r4]
	cmp r0, #0x70
	beq _02225D64
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02225D64:
	add r0, r5, #0
	add r1, r4, #6
	bl ov18_02226744
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_02225D40

	thumb_func_start ov18_02225D70
ov18_02225D70: ; 0x02225D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	str r3, [sp, #4]
	cmp r6, #0
	bgt _02225D88
	add sp, #0x14
	sub r0, r5, #2
	pop {r4, r5, r6, r7, pc}
_02225D88:
	ldr r7, _02225E78 ; =0x02249790
_02225D8A:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	add r1, r4, #0
	cmp r0, r2
	beq _02225DAE
	ldrh r0, [r4, #2]
	bl ov18_02226860
	add r0, r0, #4
	sub r6, r6, r0
	add r4, r4, r0
	cmp r6, #0
	bgt _02225D8A
	mov r0, #3
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02225DAE:
	ldrh r0, [r1, #2]
	add r4, r4, #4
	bl ov18_02226860
	add r7, r0, #0
	mov r1, #0x35
	ldr r0, [sp]
	lsl r1, r1, #4
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #3
	lsl r0, r0, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
_02225DD8:
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _02225E52
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225DEA: ; jump table
	.short _02225E52 - _02225DEA - 2 ; case 0
	.short _02225E52 - _02225DEA - 2 ; case 1
	.short _02225E52 - _02225DEA - 2 ; case 2
	.short _02225E00 - _02225DEA - 2 ; case 3
	.short _02225E0E - _02225DEA - 2 ; case 4
	.short _02225E20 - _02225DEA - 2 ; case 5
	.short _02225E32 - _02225DEA - 2 ; case 6
	.short _02225E52 - _02225DEA - 2 ; case 7
	.short _02225E52 - _02225DEA - 2 ; case 8
	.short _02225E52 - _02225DEA - 2 ; case 9
	.short _02225E44 - _02225DEA - 2 ; case 10
_02225E00:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov18_02225B34
	mov r1, #1
	orr r5, r1
	b _02225E56
_02225E0E:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov18_02225B34
	mov r1, #2
	orr r5, r1
	b _02225E56
_02225E20:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov18_02225C88
	mov r1, #4
	orr r5, r1
	b _02225E56
_02225E32:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov18_02225C88
	mov r1, #8
	orr r5, r1
	b _02225E56
_02225E44:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl ov18_02225D40
	b _02225E56
_02225E52:
	mov r0, #2
	mvn r0, r0
_02225E56:
	cmp r0, #0
	bne _02225E74
	ldrh r0, [r4, #2]
	bl ov18_02226860
	add r0, r0, #4
	sub r7, r7, r0
	add r4, r4, r0
	cmp r7, #0
	bgt _02225DD8
	ldr r0, _02225E7C ; =0x02250D78
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_02225E74:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02225E78: .word 0x02249790
_02225E7C: .word 0x02250D78
	thumb_func_end ov18_02225D70

	thumb_func_start ov18_02225E80
ov18_02225E80: ; 0x02225E80
	mov r1, #0x10
	mov r2, #0
	tst r0, r1
	beq _02225E8A
	mov r2, #1
_02225E8A:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02225E80

	thumb_func_start ov18_02225E90
ov18_02225E90: ; 0x02225E90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02225EA6
	cmp r0, #1
	beq _02225EB8
	cmp r0, #2
	beq _02225ECA
	b _02225EDC
_02225EA6:
	mov r0, #2
	bl ov18_022255AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_02225EE4
	pop {r4, r5, r6, pc}
_02225EB8:
	mov r0, #3
	bl ov18_022255AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_02226028
	pop {r4, r5, r6, pc}
_02225ECA:
	mov r0, #5
	bl ov18_022255AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_02226104
	pop {r4, r5, r6, pc}
_02225EDC:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_02225E90

	thumb_func_start ov18_02225EE4
ov18_02225EE4: ; 0x02225EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _02226018 ; =0x02250D78
	str r2, [sp, #0xc]
	ldr r5, [r0, #0x14]
	ldr r2, _0222601C ; =0x000005DC
	add r0, r5, #0
	bl ov18_02226754
	mov r0, #0x21
	lsl r0, r0, #4
	bl ov18_022246C4
	add r4, r0, #0
	bne _02225F1C
	mov r0, #2
	bl ov18_02225288
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225F1C:
	mov r2, #0x21
	mov r1, #0
	lsl r2, r2, #4
	bl ov18_02226754
	add r6, r5, #0
	ldr r0, _02226020 ; =0x02251AD8
	add r1, r7, #0
	mov r2, #8
	add r6, #0x18
	bl ov18_02226744
	add r0, sp, #0x14
	ldr r1, _02226020 ; =0x02251AD8
	add r0, #2
	mov r2, #8
	bl ov18_02226744
	add r0, r4, #4
	bl ov18_02226170
	add r1, sp, #0x10
	strh r0, [r1, #4]
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _02225F6A
	mov r0, #3
	bl ov18_02225288
	cmp r4, #0
	beq _02225F62
	add r0, r4, #0
	bl ov18_022246D4
_02225F62:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225F6A:
	mov r0, #0
	strb r0, [r4]
	ldrh r0, [r1, #4]
	bl ov18_02226820
	strh r0, [r4, #2]
	add r1, sp, #0x10
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r2, r4, #0
	add r3, sp, #0x14
	add r0, r0, #4
	strh r0, [r1, #4]
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	bl ov18_022261FC
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r2, [r1, r0]
	mov r0, #0x10
	mov r3, #6
	orr r0, r2
	strh r0, [r1, #2]
	add r0, sp, #0x14
	ldr r2, _02226024 ; =0x02249800
	add r0, #2
	mov r1, #8
	bl ov18_0222657C
	cmp r0, #0
	beq _02225FCC
	mov r0, #2
	bl ov18_02225288
	cmp r4, #0
	beq _02225FC4
	add r0, r4, #0
	bl ov18_022246D4
_02225FC4:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02225FCC:
	add r3, sp, #0x10
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #1
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r0, #2
	str r0, [sp, #8]
	mov r6, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov18_02226250
	add r2, sp, #0x10
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0xff
	bl ov18_022262A8
	cmp r4, #0
	beq _02226010
	add r0, r4, #0
	bl ov18_022246D4
_02226010:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226018: .word 0x02250D78
_0222601C: .word 0x000005DC
_02226020: .word 0x02251AD8
_02226024: .word 0x02249800
	thumb_func_end ov18_02225EE4

	thumb_func_start ov18_02226028
ov18_02226028: ; 0x02226028
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _022260F8 ; =0x02250D78
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	add r0, sp, #0x14
	mov r2, #8
	bl ov18_02226754
	ldr r2, _022260FC ; =0x000005DC
	add r0, r4, #0
	mov r1, #0
	bl ov18_02226754
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	mov r0, #4
	bl ov18_02226820
	add r1, sp, #0xc
	strh r0, [r1, #0xa]
	ldr r0, _022260F8 ; =0x02250D78
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	bl ov18_022267F8
	str r0, [sp, #0x18]
	mov r1, #8
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _022260F8 ; =0x02250D78
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov18_022261FC
	add r5, #8
	add r0, sp, #0x1c
	add r1, r5, #0
	mov r2, #8
	bl ov18_02226744
	ldr r2, _02226100 ; =0x02249800
	add r0, sp, #0x1c
	mov r1, #8
	mov r3, #6
	bl ov18_0222657C
	cmp r0, #0
	beq _022260BA
	mov r0, #2
	bl ov18_02225288
	mov r0, #0
	add sp, #0x24
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_022260BA:
	add r3, sp, #0xc
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #2
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	mov r5, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov18_02226250
	add r2, sp, #0xc
	mov r1, #4
	ldrsh r0, [r2, r1]
	add r3, r6, #0
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov18_022262A8
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022260F8: .word 0x02250D78
_022260FC: .word 0x000005DC
_02226100: .word 0x02249800
	thumb_func_end ov18_02226028

	thumb_func_start ov18_02226104
ov18_02226104: ; 0x02226104
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _02226164 ; =0x02250D78
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _02226168 ; =0x000005DC
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ov18_02226754
	add r5, #0x10
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #8
	bl ov18_02226744
	ldr r0, _0222616C ; =0x02249800
	bl ov18_02226878
	add r3, r0, #0
	ldr r2, _0222616C ; =0x02249800
	add r0, sp, #0xc
	mov r1, #8
	bl ov18_0222657C
	mov r2, #0
	mov r1, #3
	str r2, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r2, #0
	bl ov18_02226250
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl ov18_022262A8
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02226164: .word 0x02250D78
_02226168: .word 0x000005DC
_0222616C: .word 0x02249800
	thumb_func_end ov18_02226104

	thumb_func_start ov18_02226170
ov18_02226170: ; 0x02226170
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022261F4 ; =0x02250D98
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _022261F8 ; =0x02250D78
	mov r6, #0
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5, #1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x24]
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #6
	add r2, r4, #0
	bl ov18_02226744
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #2]
	add r0, r4, #6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x11
	asr r7, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #4]
	add r0, r6, r7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x60
	strb r0, [r5, r7]
	add r4, r5, r7
	mov r0, #0
	strb r0, [r4, #1]
	bl ov18_02226820
	strh r0, [r4, #4]
	mov r0, #0xe
	bl ov18_022267F8
	str r0, [sp]
	add r0, r4, #6
	add r1, sp, #0
	mov r2, #4
	bl ov18_02226744
	mov r0, #4
	bl ov18_02226820
	add r6, #0xa
	strh r0, [r4, #2]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022261F4: .word 0x02250D98
_022261F8: .word 0x02250D78
	thumb_func_end ov18_02226170

	thumb_func_start ov18_022261FC
ov18_022261FC: ; 0x022261FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #1
	bne _0222623C
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r0]
	add r0, r5, #2
	str r0, [sp]
	ldr r0, _0222624C ; =0x02251AD8
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #4
	bl ov18_02226310
	ldrh r0, [r4]
	bl ov18_02226820
	strh r0, [r5]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add sp, #0xc
	add r0, r0, #4
	strh r0, [r4]
	pop {r4, r5, pc}
_0222623C:
	add r1, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl ov18_02226744
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222624C: .word 0x02251AD8
	thumb_func_end ov18_022261FC

	thumb_func_start ov18_02226250
ov18_02226250: ; 0x02226250
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov18_02226820
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #6]
	mov r0, #0
	strh r0, [r5, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xa]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl ov18_02226820
	strh r0, [r5, #0xc]
	add r1, sp, #8
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	mov r2, #8
	strb r0, [r5, #0xe]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0xf]
	add r5, #0x10
	add r0, r5, #0
	bl ov18_02226744
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02226250

	thumb_func_start ov18_022262A8
ov18_022262A8: ; 0x022262A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #8
	add r7, r3, #0
	bl ov18_02226754
	mov r1, #2
	add r0, sp, #8
	strb r1, [r0, #1]
	ldr r0, _02226304 ; =0x00005790
	bl ov18_02226820
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _02226308 ; =0x02250D78
	ldr r0, [r0, #0x34]
	bl ov18_022267F8
	str r0, [sp, #0xc]
	cmp r4, #0xff
	beq _022262E6
	ldr r1, _0222630C ; =0x02250D98
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _022262EC
_022262E6:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xc]
_022262EC:
	add r0, sp, #8
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov18_022267C8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226304: .word 0x00005790
_02226308: .word 0x02250D78
_0222630C: .word 0x02250D98
	thumb_func_end ov18_022262A8

	thumb_func_start ov18_02226310
ov18_02226310: ; 0x02226310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	add r1, r5, #0
	add r6, r0, #0
	bl ov18_022264E4
	strb r0, [r4]
	add r0, r5, #0
	bl ov18_022246C4
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02226338
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02226338:
	bl ov18_0222688C
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	mov r2, #2
	bl ov18_02226744
	ldr r0, _02226384 ; =0x02251AE0
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl ov18_02226744
	ldr r0, _02226388 ; =0x02251AE2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov18_02226744
	ldr r2, [sp, #0x30]
	ldr r1, _02226384 ; =0x02251AE0
	add r0, sp, #4
	add r2, r2, #2
	add r3, r5, #0
	bl ov18_02226414
	add r0, sp, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov18_02226478
	ldr r0, [sp, #0xc]
	bl ov18_022246D4
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02226384: .word 0x02251AE0
_02226388: .word 0x02251AE2
	thumb_func_end ov18_02226310

	thumb_func_start ov18_0222638C
ov18_0222638C: ; 0x0222638C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov18_022246C4
	str r0, [sp, #8]
	cmp r0, #0
	bne _022263B2
	mov r0, #2
	bl ov18_02225288
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022263B2:
	ldr r0, _0222640C ; =0x02251AE0
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl ov18_02226744
	ldr r0, _02226410 ; =0x02251AE2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov18_02226744
	ldr r2, [sp, #0x30]
	ldr r1, _0222640C ; =0x02251AE0
	add r0, sp, #0
	add r2, r2, #2
	add r3, r4, #0
	bl ov18_02226414
	add r0, sp, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov18_02226478
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_022264E4
	cmp r0, r6
	beq _02226400
	mov r0, #0x12
	bl ov18_02225288
	ldr r0, [sp, #8]
	bl ov18_022246D4
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226400:
	ldr r0, [sp, #8]
	bl ov18_022246D4
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222640C: .word 0x02251AE0
_02226410: .word 0x02251AE2
	thumb_func_end ov18_0222638C

	thumb_func_start ov18_02226414
ov18_02226414: ; 0x02226414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r4, [r0, #8]
	ldr r1, [sp]
	mov r0, #0
	str r0, [r1, #4]
	str r2, [sp, #8]
	str r0, [r1, #0]
	add r2, r3, #0
	str r2, [r1, #0xc]
	str r3, [sp, #0xc]
	add r1, r3, #0
	beq _0222643C
_02226432:
	ldr r1, [sp, #0xc]
	strb r0, [r4, r0]
	add r0, r0, #1
	cmp r0, r1
	blo _02226432
_0222643C:
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r6, r1, #0
	add r5, r1, #0
	cmp r0, #0
	bls _02226472
_02226448:
	ldr r0, [sp, #4]
	ldrb r7, [r4, r5]
	ldrb r0, [r0, r6]
	add r0, r1, r0
	ldr r1, [sp]
	add r0, r7, r0
	ldr r1, [r1, #0xc]
	bl sub_020E2178
	ldrb r0, [r4, r1]
	add r6, r6, #1
	strb r7, [r4, r1]
	strb r0, [r4, r5]
	ldr r0, [sp, #8]
	cmp r6, r0
	blo _0222646A
	mov r6, #0
_0222646A:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blo _02226448
_02226472:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02226414

	thumb_func_start ov18_02226478
ov18_02226478: ; 0x02226478
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, _022264A0 ; =0x00000000
	beq _0222649C
_02226486:
	ldr r0, [sp]
	bl ov18_022264A4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r6, r4]
	eor r0, r1
	strb r0, [r5, r4]
	add r4, r4, #1
	cmp r4, r7
	blo _02226486
_0222649C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022264A0: .word 0x00000000
	thumb_func_end ov18_02226478

	thumb_func_start ov18_022264A4
ov18_022264A4: ; 0x022264A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r4, [r5, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, [sp]
	add r0, r0, #1
	bl sub_020E2178
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	add r0, r6, r0
	bl sub_020E2178
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5, #0]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl sub_020E2178
	ldrb r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022264A4

	thumb_func_start ov18_022264E4
ov18_022264E4: ; 0x022264E4
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _02226508 ; =0x02251038
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0
	add r1, r3, #0
	mvn r0, r0
	mov r3, #0
	bl ov18_0222650C
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_02226508: .word 0x02251038
	thumb_func_end ov18_022264E4

	thumb_func_start ov18_0222650C
ov18_0222650C: ; 0x0222650C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	cmp r3, #0
	bne _02226522
	add r0, r3, #0
	add r1, r6, #0
	bl ov18_02226544
_02226522:
	mov r1, #0
	cmp r4, #0
	ble _0222653E
_02226528:
	ldrb r2, [r7, r1]
	lsr r0, r5, #8
	add r1, r1, #1
	eor r2, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r2, [r6, r2]
	add r5, r0, #0
	eor r5, r2
	cmp r1, r4
	blt _02226528
_0222653E:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_0222650C

	thumb_func_start ov18_02226544
ov18_02226544: ; 0x02226544
	push {r4, r5, r6, r7}
	mov r5, #1
	add r3, r5, #0
	ldr r4, _02226578 ; =0xEDB88320
	mov r0, #0
	add r3, #0xff
_02226550:
	add r7, r0, #0
	mov r2, #0
_02226554:
	add r6, r7, #0
	tst r6, r5
	beq _02226562
	lsr r6, r7, #1
	add r7, r6, #0
	eor r7, r4
	b _02226564
_02226562:
	lsr r7, r7, #1
_02226564:
	add r2, r2, #1
	cmp r2, #8
	blt _02226554
	add r0, r0, #1
	stmia r1!, {r7}
	cmp r0, r3
	blt _02226550
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02226578: .word 0xEDB88320
	thumb_func_end ov18_02226544

	thumb_func_start ov18_0222657C
ov18_0222657C: ; 0x0222657C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov18_022246C4
	add r6, r0, #0
	bne _0222659E
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222659E:
	add r0, r5, #0
	bl ov18_022246C4
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _022265B8
	add r0, r6, #0
	bl ov18_022246D4
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022265B8:
	mov r4, #0
_022265BA:
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov18_022265F8
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov18_0222662C
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ov18_02226650
	add r4, r4, #1
	cmp r4, #2
	blt _022265BA
	add r0, r6, #0
	bl ov18_022246D4
	ldr r0, [sp, #0xc]
	bl ov18_022246D4
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_0222657C

	thumb_func_start ov18_022265F8
ov18_022265F8: ; 0x022265F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	ldr r6, [sp, #0x18]
	asr r4, r1, #1
	add r1, r6, #0
	add r7, r3, #0
	bl sub_020E1F6C
	mov r0, #0
	cmp r4, #0
	ble _0222662A
_02226612:
	strb r0, [r5, r0]
	ldrsb r2, [r7, r1]
	ldrsb r3, [r5, r0]
	add r1, r1, #1
	eor r2, r3
	strb r2, [r5, r0]
	cmp r1, r6
	blt _02226624
	mov r1, #0
_02226624:
	add r0, r0, #1
	cmp r0, r4
	blt _02226612
_0222662A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_022265F8

	thumb_func_start ov18_0222662C
ov18_0222662C: ; 0x0222662C
	push {r4, r5}
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r4, r3, #1
	mov r3, #0
	cmp r4, #0
	ble _0222664C
	add r5, r1, r4
_0222663C:
	ldrsb r1, [r0, r3]
	ldrb r2, [r5]
	add r3, r3, #1
	eor r1, r2
	strb r1, [r5]
	add r5, r5, #1
	cmp r3, r4
	blt _0222663C
_0222664C:
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222662C

	thumb_func_start ov18_02226650
ov18_02226650: ; 0x02226650
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r7, r0, #1
	add r4, r2, #0
	add r0, r4, #0
	add r1, r5, r7
	add r2, r7, #0
	bl ov18_02226744
	add r0, r4, r7
	add r1, r5, #0
	add r2, r7, #0
	bl ov18_02226744
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_02226744
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02226650

	thumb_func_start ov18_02226680
ov18_02226680: ; 0x02226680
	push {r3, lr}
	cmp r1, #0
	ble _02226690
	add r0, r1, #0
	ldr r1, _02226694 ; =0x02251B60
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
_02226690:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02226694: .word 0x02251B60
	thumb_func_end ov18_02226680

	thumb_func_start ov18_02226698
ov18_02226698: ; 0x02226698
	push {r3, lr}
	add r0, r1, #0
	ldr r1, _022266A4 ; =0x02251B6C
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_022266A4: .word 0x02251B6C
	thumb_func_end ov18_02226698

	thumb_func_start ov18_022266A8
ov18_022266A8: ; 0x022266A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov18_022267F8
	ldr r1, _022266F4 ; =0x02249794
	str r0, [r1, #0x18]
	add r0, r5, #0
	bl ov18_022267F8
	ldr r1, _022266F4 ; =0x02249794
	str r0, [r1, #0x1c]
	add r0, r4, #0
	bl ov18_022267F8
	ldr r1, _022266F4 ; =0x02249794
	str r0, [r1, #0x20]
	ldr r0, _022266F8 ; =0x0224979C
	bl ov4_02208874
	cmp r0, #0
	bge _022266DA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_022266DA:
	ldr r5, _022266FC ; =0x0221DE40
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _022266F0
	mov r4, #0x64
_022266E4:
	add r0, r4, #0
	bl sub_020C24A4
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022266E4
_022266F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022266F4: .word 0x02249794
_022266F8: .word 0x0224979C
_022266FC: .word 0x0221DE40
	thumb_func_end ov18_022266A8

	thumb_func_start ov18_02226700
ov18_02226700: ; 0x02226700
	push {r3, lr}
	bl ov4_022089E8
	cmp r0, #0
	bge _02226710
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02226710:
	bl ov18_02226B54
	cmp r0, #0
	beq _0222671C
	mov r0, #1
	b _0222671E
_0222671C:
	mov r0, #0
_0222671E:
	neg r0, r0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov18_02226700

	thumb_func_start ov18_02226724
ov18_02226724: ; 0x02226724
	push {r3, r4}
	mov r3, #0
	b _0222672E
_0222672A:
	add r0, r0, #1
	add r1, r1, #1
_0222672E:
	add r4, r2, #0
	sub r2, r2, #1
	cmp r4, #0
	ble _0222673E
	ldrb r4, [r0]
	ldrb r3, [r1]
	sub r3, r4, r3
	beq _0222672A
_0222673E:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov18_02226724

	thumb_func_start ov18_02226744
ov18_02226744: ; 0x02226744
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _02226750 ; =FUN_020C4DB0
	bx r3
	nop
_02226750: .word sub_020C4DB0
	thumb_func_end ov18_02226744

	thumb_func_start ov18_02226754
ov18_02226754: ; 0x02226754
	ldr r3, _0222675C ; =FUN_020C4CF4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	; .align 2, 0
_0222675C: .word sub_020C4CF4
	thumb_func_end ov18_02226754

	thumb_func_start ov18_02226760
ov18_02226760: ; 0x02226760
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [r4, #0]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	bl ov4_022083FC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov18_02226760

	thumb_func_start ov18_02226774
ov18_02226774: ; 0x02226774
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r2, [r1, #0]
	ldr r0, [r1, #4]
	ldr r5, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r4, #0
	ldr r2, _022267C4 ; =0x01FF6210
	asr r1, r0, #0x1f
	add r3, r4, #0
	bl sub_020E1F1C
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r6, r4, r3
	adc r4, r0
	ldr r0, [r5, #4]
	ldr r2, _022267C4 ; =0x01FF6210
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r2, r6, r3
	adc r4, r0
	add r0, sp, #0
	mov r1, #1
	add r3, r4, #0
	bl ov4_02208B18
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022267C4: .word 0x01FF6210
	thumb_func_end ov18_02226774

	thumb_func_start ov18_022267C8
ov18_022267C8: ; 0x022267C8
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	bl ov4_022084B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_022267C8

	thumb_func_start ov18_022267D8
ov18_022267D8: ; 0x022267D8
	bx lr
	; .align 2, 0
	thumb_func_end ov18_022267D8

	thumb_func_start ov18_022267DC
ov18_022267DC: ; 0x022267DC
	ldr r3, _022267E0 ; =FUN_02208324
	bx r3
	; .align 2, 0
_022267E0: .word ov4_02208324
	thumb_func_end ov18_022267DC

	thumb_func_start ov18_022267E4
ov18_022267E4: ; 0x022267E4
	ldr r3, _022267EC ; =FUN_02208350
	strb r2, [r1]
	bx r3
	nop
_022267EC: .word ov4_02208350
	thumb_func_end ov18_022267E4

	thumb_func_start ov18_022267F0
ov18_022267F0: ; 0x022267F0
	ldr r3, _022267F4 ; =FUN_02208540
	bx r3
	; .align 2, 0
_022267F4: .word ov4_02208540
	thumb_func_end ov18_022267F0

	thumb_func_start ov18_022267F8
ov18_022267F8: ; 0x022267F8
	push {r4, r5}
	mov r3, #0xff
	lsl r1, r0, #0x18
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsl r4, r0, #8
	lsr r1, r3, #8
	and r1, r4
	lsr r4, r0, #0x18
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	lsr r4, r0, #8
	lsr r0, r3, #0x10
	and r0, r4
	orr r0, r5
	and r2, r3
	orr r0, r1
	orr r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_022267F8

	thumb_func_start ov18_02226820
ov18_02226820: ; 0x02226820
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02226820

	thumb_func_start ov18_02226838
ov18_02226838: ; 0x02226838
	push {r4, r5}
	mov r3, #0xff
	lsl r1, r0, #0x18
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsl r4, r0, #8
	lsr r1, r3, #8
	and r1, r4
	lsr r4, r0, #0x18
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	lsr r4, r0, #8
	lsr r0, r3, #0x10
	and r0, r4
	orr r0, r5
	and r2, r3
	orr r0, r1
	orr r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_02226838

	thumb_func_start ov18_02226860
ov18_02226860: ; 0x02226860
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02226860

	thumb_func_start ov18_02226878
ov18_02226878: ; 0x02226878
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _02226888
_02226880:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _02226880
_02226888:
	add r0, r2, #0
	bx lr
	thumb_func_end ov18_02226878

	thumb_func_start ov18_0222688C
ov18_0222688C: ; 0x0222688C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _022268EC ; =0x02250D78
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _022268CE
	mov r4, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl ov18_02226754
	add r0, sp, #0
	bl sub_020CBA30
	cmp r0, #0
	bne _022268BE
	ldr r0, [sp]
	lsl r0, r0, #0xa
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r4, r1, r0
_022268BE:
	ldr r0, _022268EC ; =0x02250D78
	ldr r1, _022268F0 ; =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _022268F4 ; =0x00269EC3
	str r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #8]
_022268CE:
	ldr r0, _022268EC ; =0x02250D78
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [r0, #0x20]
	mul r1, r2
	add r1, r3, r1
	str r1, [r0, #0x18]
	ldr r0, _022268F8 ; =0x00007FFF
	lsr r1, r1, #0x10
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_022268EC: .word 0x02250D78
_022268F0: .word 0x5D588B65
_022268F4: .word 0x00269EC3
_022268F8: .word 0x00007FFF
	thumb_func_end ov18_0222688C

	thumb_func_start ov18_022268FC
ov18_022268FC: ; 0x022268FC
	mov r1, #0
	str r1, [r0, #0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end ov18_022268FC

	thumb_func_start ov18_02226908
ov18_02226908: ; 0x02226908
	str r0, [r1, #0]
	mov r0, #1
	strh r0, [r1, #4]
	bx lr
	thumb_func_end ov18_02226908

	thumb_func_start ov18_02226910
ov18_02226910: ; 0x02226910
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	add r1, r4, #4
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0xc
	mov r2, #0x20
	bl sub_020C4B18
	ldrh r0, [r5, #0x36]
	add r1, r4, #0
	add r1, #0x30
	str r0, [r4, #0x24]
	add r0, r5, #4
	mov r2, #6
	bl sub_020C4B18
	mov r1, #0
	ldr r2, _02226998 ; =0x02249808
	add r0, r1, #0
	mov r6, #0x80
_0222693E:
	ldrh r7, [r5, #0x30]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226968
	ldrb r7, [r2, #2]
	add r3, r4, r1
	add r3, #0x3c
	strb r7, [r3]
	ldrh r7, [r5, #0x2e]
	ldrh r3, [r2]
	tst r3, r7
	beq _02226966
	add r3, r4, r1
	add r3, #0x3c
	ldrb r3, [r3]
	add r7, r3, #0
	add r3, r4, r1
	orr r7, r6
	add r3, #0x3c
	strb r7, [r3]
_02226966:
	add r1, r1, #1
_02226968:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0xc
	blt _0222693E
	str r1, [r4, #0x38]
	ldrh r0, [r5, #0x32]
	str r0, [r4, #0x4c]
	ldrh r1, [r5, #0x2c]
	mov r0, #3
	and r0, r1
	cmp r0, #1
	bne _02226986
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226986:
	cmp r0, #2
	bne _02226990
	mov r0, #2
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_02226990:
	mov r0, #0
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226998: .word 0x02249808
	thumb_func_end ov18_02226910

	thumb_func_start ov18_0222699C
ov18_0222699C: ; 0x0222699C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0x20
	bl sub_020C4AF0
	ldr r0, [r5, #0]
	add r1, r4, #0
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	add r0, r5, #4
	add r1, #0xc
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov18_0222699C

	thumb_func_start ov18_022269C0
ov18_022269C0: ; 0x022269C0
	add r3, r0, #0
	add r0, r1, #0
	str r2, [r3, #0]
	add r1, r3, #4
	ldr r3, _022269CC ; =ov18_02226910
	bx r3
	; .align 2, 0
_022269CC: .word ov18_02226910
	thumb_func_end ov18_022269C0

	thumb_func_start ov18_022269D0
ov18_022269D0: ; 0x022269D0
	ldr r3, _022269DC ; =FUN_020C2770
	add r1, r0, #0
	ldr r0, _022269E0 ; =0x02251B80
	mov r2, #0
	bx r3
	nop
_022269DC: .word sub_020C2770
_022269E0: .word 0x02251B80
	thumb_func_end ov18_022269D0

	thumb_func_start ov18_022269E4
ov18_022269E4: ; 0x022269E4
	ldr r3, _022269F0 ; =FUN_020C2770
	add r1, r0, #0
	ldr r0, _022269F4 ; =0x02251B80
	mov r2, #0
	bx r3
	nop
_022269F0: .word sub_020C2770
_022269F4: .word 0x02251B80
	thumb_func_end ov18_022269E4

	thumb_func_start ov18_022269F8
ov18_022269F8: ; 0x022269F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02226AA8 ; =0x02251B80
	ldr r1, _02226AAC ; =0x02251B70
	mov r2, #4
	mov r4, #1
	bl sub_020C2748
	cmp r5, #0
	beq _02226A12
	cmp r6, #0
	bne _02226A18
_02226A12:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226A18:
	bl sub_020C3D98
	ldr r1, _02226AB0 ; =0x02251B60
	str r5, [r1, #0]
	str r6, [r1, #0xc]
	bl sub_020C3DAC
	ldr r1, _02226AB0 ; =0x02251B60
	ldr r0, _02226AB4 ; =0x00005890
	ldr r1, [r1, #0]
	blx r1
	add r1, r0, #0
	ldr r0, _02226AB0 ; =0x02251B60
	str r1, [r0, #8]
	bne _02226A3A
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226A3A:
	ldr r0, _02226AB8 ; =ov18_022269D0
	ldr r2, _02226AB4 ; =0x00005890
	bl ov18_02227494
	cmp r0, #0
	bne _02226A48
	mov r4, #0
_02226A48:
	cmp r4, #0
	beq _02226A98
	ldr r5, _02226AA8 ; =0x02251B80
	add r6, sp, #0
	mov r7, #1
_02226A52:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020C2804
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _02226A92
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226A6E: ; jump table
	.short _02226A92 - _02226A6E - 2 ; case 0
	.short _02226A92 - _02226A6E - 2 ; case 1
	.short _02226A92 - _02226A6E - 2 ; case 2
	.short _02226A92 - _02226A6E - 2 ; case 3
	.short _02226A94 - _02226A6E - 2 ; case 4
	.short _02226A94 - _02226A6E - 2 ; case 5
	.short _02226A8E - _02226A6E - 2 ; case 6
	.short _02226A92 - _02226A6E - 2 ; case 7
	.short _02226A92 - _02226A6E - 2 ; case 8
	.short _02226A92 - _02226A6E - 2 ; case 9
	.short _02226A92 - _02226A6E - 2 ; case 10
	.short _02226A92 - _02226A6E - 2 ; case 11
	.short _02226A92 - _02226A6E - 2 ; case 12
	.short _02226A92 - _02226A6E - 2 ; case 13
	.short _02226A92 - _02226A6E - 2 ; case 14
	.short _02226A92 - _02226A6E - 2 ; case 15
_02226A8E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226A92:
	mov r4, #0
_02226A94:
	cmp r4, #0
	bne _02226A52
_02226A98:
	ldr r1, _02226AB0 ; =0x02251B60
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226AA8: .word 0x02251B80
_02226AAC: .word 0x02251B70
_02226AB0: .word 0x02251B60
_02226AB4: .word 0x00005890
_02226AB8: .word ov18_022269D0
	thumb_func_end ov18_022269F8

	thumb_func_start ov18_02226ABC
ov18_02226ABC: ; 0x02226ABC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02226B4C ; =0x02251B60
	mov r4, #1
	ldr r0, [r0, #0xc]
	sub r5, r4, #2
	cmp r0, #0
	bne _02226ACE
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02226ACE:
	bl ov18_022273B8
	cmp r0, #0
	bne _02226ADA
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02226ADA:
	ldr r7, _02226B50 ; =0x02251B80
	ldr r6, _02226B4C ; =0x02251B60
_02226ADE:
	add r0, r7, #0
	add r1, sp, #0
	mov r2, #1
	bl sub_020C2804
	ldr r0, [sp]
	cmp r0, #0x14
	bhi _02226B30
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226AFA: ; jump table
	.short _02226B30 - _02226AFA - 2 ; case 0
	.short _02226B30 - _02226AFA - 2 ; case 1
	.short _02226B30 - _02226AFA - 2 ; case 2
	.short _02226B30 - _02226AFA - 2 ; case 3
	.short _02226B32 - _02226AFA - 2 ; case 4
	.short _02226B32 - _02226AFA - 2 ; case 5
	.short _02226B30 - _02226AFA - 2 ; case 6
	.short _02226B30 - _02226AFA - 2 ; case 7
	.short _02226B30 - _02226AFA - 2 ; case 8
	.short _02226B30 - _02226AFA - 2 ; case 9
	.short _02226B30 - _02226AFA - 2 ; case 10
	.short _02226B30 - _02226AFA - 2 ; case 11
	.short _02226B30 - _02226AFA - 2 ; case 12
	.short _02226B30 - _02226AFA - 2 ; case 13
	.short _02226B30 - _02226AFA - 2 ; case 14
	.short _02226B30 - _02226AFA - 2 ; case 15
	.short _02226B30 - _02226AFA - 2 ; case 16
	.short _02226B30 - _02226AFA - 2 ; case 17
	.short _02226B30 - _02226AFA - 2 ; case 18
	.short _02226B30 - _02226AFA - 2 ; case 19
	.short _02226B24 - _02226AFA - 2 ; case 20
_02226B24:
	ldr r0, [r6, #8]
	mov r4, #0
	ldr r1, [r6, #0xc]
	add r5, r4, #0
	blx r1
	b _02226B32
_02226B30:
	mov r4, #0
_02226B32:
	cmp r4, #0
	bne _02226ADE
	bl sub_020C3D98
	ldr r1, _02226B4C ; =0x02251B60
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226B4C: .word 0x02251B60
_02226B50: .word 0x02251B80
	thumb_func_end ov18_02226ABC

	thumb_func_start ov18_02226B54
ov18_02226B54: ; 0x02226B54
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	bl ov18_02227380
	cmp r0, #0
	beq _02226B84
	ldr r4, _02226B88 ; =0x02251B80
	add r6, sp, #0
	mov r7, #1
_02226B68:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020C2804
	ldr r0, [sp]
	cmp r0, #0xe
	bne _02226B7E
	mov r0, #0
	add r5, r0, #0
	b _02226B80
_02226B7E:
	mov r0, #0
_02226B80:
	cmp r0, #0
	bne _02226B68
_02226B84:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226B88: .word 0x02251B80
	thumb_func_end ov18_02226B54

	thumb_func_start ov18_02226B8C
ov18_02226B8C: ; 0x02226B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r6, #0
	ldr r0, _02226CF0 ; =0x02251B60
	add r7, r6, #0
	ldr r1, [r0, #0]
	add r5, r6, #0
	cmp r1, #0
	beq _02226BB0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02226BB8
_02226BB0:
	mov r0, #0
	add sp, #0x44
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02226BB8:
	mov r0, #3
	lsl r0, r0, #0xc
	blx r1
	add r4, r0, #0
	bne _02226BC8
	add sp, #0x44
	sub r0, r6, #1
	pop {r4, r5, r6, r7, pc}
_02226BC8:
	add r0, r6, #0
	ldr r3, _02226CF4 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	str r4, [sp, #8]
	bl ov18_02227254
	cmp r0, #0
	bne _02226BDC
	b _02226CE0
_02226BDC:
	add r0, sp, #0x18
	bl sub_020C3A0C
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02226CF8 ; =0x003FEC42
	ldr r3, _02226CFC ; =ov18_022269E4
	add r0, sp, #0x18
	add r2, r6, #0
	bl sub_020C3B48
_02226BF2:
	ldr r0, _02226D00 ; =0x02251B80
	add r1, sp, #0x14
	mov r2, #1
	bl sub_020C2804
	ldr r0, [sp, #0x14]
	cmp r0, #0x13
	bhi _02226CC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226C0E: ; jump table
	.short _02226CC6 - _02226C0E - 2 ; case 0
	.short _02226CC6 - _02226C0E - 2 ; case 1
	.short _02226CC6 - _02226C0E - 2 ; case 2
	.short _02226CC6 - _02226C0E - 2 ; case 3
	.short _02226C7C - _02226C0E - 2 ; case 4
	.short _02226C54 - _02226C0E - 2 ; case 5
	.short _02226CC6 - _02226C0E - 2 ; case 6
	.short _02226CC6 - _02226C0E - 2 ; case 7
	.short _02226C7C - _02226C0E - 2 ; case 8
	.short _02226CC6 - _02226C0E - 2 ; case 9
	.short _02226C76 - _02226C0E - 2 ; case 10
	.short _02226CC6 - _02226C0E - 2 ; case 11
	.short _02226CC6 - _02226C0E - 2 ; case 12
	.short _02226CC6 - _02226C0E - 2 ; case 13
	.short _02226CC6 - _02226C0E - 2 ; case 14
	.short _02226CC6 - _02226C0E - 2 ; case 15
	.short _02226CC6 - _02226C0E - 2 ; case 16
	.short _02226CC6 - _02226C0E - 2 ; case 17
	.short _02226C7C - _02226C0E - 2 ; case 18
	.short _02226C36 - _02226C0E - 2 ; case 19
_02226C36:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #0
	beq _02226C48
	add r0, r4, #0
	mov r1, #0x40
	bl ov18_02227210
	add r7, r0, #0
_02226C48:
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	mov r6, #1
	b _02226C7C
_02226C54:
	cmp r6, #0
	bne _02226C7C
	cmp r5, #8
	bge _02226C60
	add r5, r5, #1
	b _02226C7C
_02226C60:
	add r0, r4, #0
	mov r1, #0x40
	bl ov18_02227210
	add r7, r0, #0
	bl ov18_02227344
	cmp r0, #0
	beq _02226CC6
	mov r6, #1
	b _02226C7C
_02226C76:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02226C7C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226BF2
	cmp r7, #0
	beq _02226C9A
	sub r1, r7, #1
	mov r0, #0x54
	mul r0, r1
	ldr r1, _02226CF0 ; =0x02251B60
	add r0, #0x58
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	bne _02226CA6
	b _02226CC6
_02226C9A:
	ldr r1, _02226CF0 ; =0x02251B60
	mov r0, #0x58
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02226CC6
_02226CA6:
	ldr r1, [sp, #4]
	mov r6, #0
	str r0, [r1, #0]
	str r7, [r0, #0]
	cmp r7, #0
	ble _02226CC6
	add r5, r0, #4
_02226CB4:
	add r0, r4, #0
	add r1, r5, #0
	bl ov18_02226910
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0x54
	cmp r6, r7
	blt _02226CB4
_02226CC6:
	add r0, sp, #0x18
	bl sub_020C3BB4
	ldr r5, _02226D00 ; =0x02251B80
	add r4, sp, #0x14
	mov r6, #0
_02226CD2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020C2804
	cmp r0, #1
	beq _02226CD2
_02226CE0:
	ldr r1, _02226CF0 ; =0x02251B60
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02226CF0: .word 0x02251B60
_02226CF4: .word 0x0030BFFE
_02226CF8: .word 0x003FEC42
_02226CFC: .word ov18_022269E4
_02226D00: .word 0x02251B80
	thumb_func_end ov18_02226B8C

	thumb_func_start ov18_02226D04
ov18_02226D04: ; 0x02226D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r4, #1
	add r7, r0, #0
	sub r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x24]
	mov r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	bne _02226D1E
	lsl r5, r4, #0x13
	b _02226D26
_02226D1E:
	cmp r0, #1
	bne _02226D26
	mov r5, #3
	lsl r5, r5, #0x12
_02226D26:
	mov r0, #3
	lsl r0, r0, #0x10
	orr r5, r0
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #0
	mov r2, #0x60
	bl sub_020C4CF4
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _02226D44
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #1
	strb r1, [r0]
	b _02226D64
_02226D44:
	cmp r0, #0xd
	bne _02226D50
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #2
	strb r1, [r0]
	b _02226D64
_02226D50:
	cmp r0, #0x10
	bne _02226D5C
	ldr r0, _02226EB8 ; =0x02251C60
	mov r1, #3
	strb r1, [r0]
	b _02226D64
_02226D5C:
	mov r0, #0
	add sp, #0x40
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02226D64:
	mov r1, #0x14
	ldr r2, _02226EB8 ; =0x02251C60
	mul r1, r6
	add r1, r1, #2
	add r0, r7, #0
	strb r6, [r2, #1]
	add r1, r2, r1
	ldr r2, [r7, #0x28]
	add r0, #0x2c
	bl sub_020C4DB0
	bl ov4_02214E34
	ldr r2, [r7, #0]
	ldr r3, _02226EBC ; =0x0030BFFE
	mov r0, #0
	add r1, r7, #4
	bl ov18_02227254
	cmp r0, #0
	bne _02226D90
	b _02226E9E
_02226D90:
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	bl sub_020C3A0C
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _02226EC0 ; =0x003FEC42
	ldr r3, _02226EC4 ; =ov18_022269E4
	add r0, sp, #0x14
	mov r2, #0
	bl sub_020C3B48
	b _02226E80
_02226DAC:
	ldr r0, _02226EC8 ; =0x02251B80
	add r1, sp, #0x10
	mov r2, #1
	bl sub_020C2804
	ldr r0, [sp, #0x10]
	cmp r0, #0x13
	bhi _02226E7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02226DC8: ; jump table
	.short _02226E7E - _02226DC8 - 2 ; case 0
	.short _02226E7E - _02226DC8 - 2 ; case 1
	.short _02226E7E - _02226DC8 - 2 ; case 2
	.short _02226E7E - _02226DC8 - 2 ; case 3
	.short _02226E80 - _02226DC8 - 2 ; case 4
	.short _02226DF8 - _02226DC8 - 2 ; case 5
	.short _02226E7E - _02226DC8 - 2 ; case 6
	.short _02226E7E - _02226DC8 - 2 ; case 7
	.short _02226E80 - _02226DC8 - 2 ; case 8
	.short _02226E7E - _02226DC8 - 2 ; case 9
	.short _02226E3E - _02226DC8 - 2 ; case 10
	.short _02226E7E - _02226DC8 - 2 ; case 11
	.short _02226E58 - _02226DC8 - 2 ; case 12
	.short _02226E5E - _02226DC8 - 2 ; case 13
	.short _02226E7E - _02226DC8 - 2 ; case 14
	.short _02226E7E - _02226DC8 - 2 ; case 15
	.short _02226E7E - _02226DC8 - 2 ; case 16
	.short _02226E7E - _02226DC8 - 2 ; case 17
	.short _02226DF0 - _02226DC8 - 2 ; case 18
	.short _02226DF6 - _02226DC8 - 2 ; case 19
_02226DF0:
	cmp r6, #0
	bne _02226E80
	mov r4, #0
_02226DF6:
	b _02226E80
_02226DF8:
	cmp r6, #0
	bne _02226E80
	add r0, sp, #0x14
	bl sub_020C3BB4
	ldr r0, _02226ECC ; =0x02251BA0
	mov r1, #1
	bl ov18_02227210
	cmp r0, #1
	beq _02226E12
	mov r4, #0
	b _02226E80
_02226E12:
	ldr r1, _02226ECC ; =0x02251BA0
	add r0, r7, #0
	bl ov18_0222699C
	ldr r1, _02226ED0 ; =0x02251BA0
	mov r0, #0
	ldrh r1, [r1, #0xa]
	b _02226E24
_02226E22:
	add r0, r0, #1
_02226E24:
	cmp r0, r1
	blt _02226E22
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E3A
	mov r4, #0
	b _02226E80
_02226E3A:
	mov r6, #1
	b _02226E80
_02226E3E:
	ldr r1, _02226ECC ; =0x02251BA0
	add r0, r7, #0
	bl ov18_0222699C
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	mov r4, #0
	b _02226E80
_02226E58:
	mov r4, #0
	str r4, [sp, #0xc]
	b _02226E80
_02226E5E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	bge _02226E7A
	ldr r0, _02226ECC ; =0x02251BA0
	ldr r1, _02226EB8 ; =0x02251C60
	add r2, r5, #0
	bl ov18_02227410
	cmp r0, #0
	bne _02226E80
	mov r4, #0
	b _02226E80
_02226E7A:
	mov r4, #0
	b _02226E80
_02226E7E:
	mov r4, #0
_02226E80:
	cmp r4, #0
	bne _02226DAC
	add r0, sp, #0x14
	bl sub_020C3BB4
	ldr r5, _02226EC8 ; =0x02251B80
	add r4, sp, #0x10
	mov r6, #0
_02226E90:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020C2804
	cmp r0, #1
	beq _02226E90
_02226E9E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02226EA8
	mov r2, #1
	b _02226EAA
_02226EA8:
	mov r2, #0
_02226EAA:
	ldr r0, [sp, #4]
	ldr r1, _02226ECC ; =0x02251BA0
	bl ov18_022269C0
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226EB8: .word 0x02251C60
_02226EBC: .word 0x0030BFFE
_02226EC0: .word 0x003FEC42
_02226EC4: .word ov18_022269E4
_02226EC8: .word 0x02251B80
_02226ECC: .word 0x02251BA0
_02226ED0: .word 0x02251BA0
	thumb_func_end ov18_02226D04

	thumb_func_start ov18_02226ED4
ov18_02226ED4: ; 0x02226ED4
	ldr r3, _02226ED8 ; =FUN_020C24A4
	bx r3
	; .align 2, 0
_02226ED8: .word sub_020C24A4
	thumb_func_end ov18_02226ED4

	thumb_func_start ov18_02226EDC
ov18_02226EDC: ; 0x02226EDC
	push {r3, lr}
	ldr r1, _02226EEC ; =0x02251B60
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02226EE8
	blx r1
_02226EE8:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02226EEC: .word 0x02251B60
	thumb_func_end ov18_02226EDC

	thumb_func_start ov18_02226EF0
ov18_02226EF0: ; 0x02226EF0
	push {r3, lr}
	cmp r0, #0
	bne _02226EF8
	b _022271A0
_02226EF8:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #7
	bls _02226F02
	b _02227192
_02226F02:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02226F0E: ; jump table
	.short _02227192 - _02226F0E - 2 ; case 0
	.short _02226F1E - _02226F0E - 2 ; case 1
	.short _02227146 - _02226F0E - 2 ; case 2
	.short _02226F9E - _02226F0E - 2 ; case 3
	.short _02227002 - _02226F0E - 2 ; case 4
	.short _02226FD0 - _02226F0E - 2 ; case 5
	.short _022270A2 - _02226F0E - 2 ; case 6
	.short _0222717E - _02226F0E - 2 ; case 7
_02226F1E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226F8A
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02226F3E
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #6
	blx r2
	pop {r3, pc}
_02226F3E:
	cmp r0, #6
	bne _02226F64
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl ov4_0221312C
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02226F64:
	cmp r0, #8
	bne _02226F96
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl ov4_02213368
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02226F8A:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r3, #1
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _02226F98
_02226F96:
	b _022271A0
_02226F98:
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_02226F9E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FBE
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #6
	bne _0222709A
	mov r2, #5
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #8
	blx r2
	pop {r3, pc}
_02226FBE:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #9
	blx r2
	pop {r3, pc}
_02226FD0:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FF0
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #8
	bne _0222709A
	mov r2, #7
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_02226FF0:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_02227002:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222708E
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02227022
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_02227022:
	cmp r0, #6
	bne _02227048
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl ov4_0221312C
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227048:
	cmp r0, #2
	bne _02227068
	bl ov4_0221303C
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227068:
	cmp r0, #8
	bne _0222709A
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl ov4_02213368
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222708E:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	bne _0222709C
_0222709A:
	b _022271A0
_0222709C:
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_022270A2:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227134
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _022270C2
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_022270C2:
	cmp r0, #6
	bne _022270E8
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl ov4_0221312C
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022270E8:
	cmp r0, #2
	bne _02227108
	bl ov4_0221303C
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227108:
	cmp r0, #8
	bne _0222712E
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl ov4_02213368
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222712E:
	mov r0, #3
	str r0, [r2, #0x18]
	pop {r3, pc}
_02227134:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_02227146:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222716C
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _022271A0
	bl ov4_02212DE0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_0222716C:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _022271A0
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_0222717E:
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #5
	bne _022271A0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #5
	blx r2
	pop {r3, pc}
_02227192:
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #1
	mov r1, #0
	blx r2
_022271A0:
	pop {r3, pc}
	nop
_022271A4: .word 0x02251CC0
	thumb_func_end ov18_02226EF0

	thumb_func_start ov18_022271A8
ov18_022271A8: ; 0x022271A8
	push {r3, lr}
	ldr r1, _02227208 ; =0x02251CC0
	ldr r0, [r1, #0x18]
	cmp r0, #8
	bhi _022271FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022271BE: ; jump table
	.short _022271FE - _022271BE - 2 ; case 0
	.short _022271EE - _022271BE - 2 ; case 1
	.short _022271FE - _022271BE - 2 ; case 2
	.short _022271FE - _022271BE - 2 ; case 3
	.short _022271FE - _022271BE - 2 ; case 4
	.short _022271D0 - _022271BE - 2 ; case 5
	.short _022271FE - _022271BE - 2 ; case 6
	.short _022271E2 - _022271BE - 2 ; case 7
	.short _022271FE - _022271BE - 2 ; case 8
_022271D0:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_0221312C
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271E2:
	bl ov4_0221356C
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271EE:
	ldr r0, [r1, #8]
	ldr r1, _0222720C ; =ov18_02226EF0
	bl ov4_02212E38
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271FE:
	mov r0, #0
	pop {r3, pc}
_02227202:
	mov r0, #1
	pop {r3, pc}
	nop
_02227208: .word 0x02251CC0
_0222720C: .word ov18_02226EF0
	thumb_func_end ov18_022271A8

	thumb_func_start ov18_02227210
ov18_02227210: ; 0x02227210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl ov4_02214EE0
	bl ov4_02214E88
	add r6, r0, #0
	cmp r6, #0
	ble _02227248
	mov r4, #0
	cmp r6, #0
	ble _02227248
_0222722C:
	cmp r4, r7
	bge _02227248
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov4_02214F5C
	add r1, r5, #0
	mov r2, #0xc0
	bl sub_020C4B68
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _0222722C
_02227248:
	mov r0, #0
	bl ov4_02214EE0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02227210

	thumb_func_start ov18_02227254
ov18_02227254: ; 0x02227254
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020C3D98
	add r7, r0, #0
	ldr r1, _02227330 ; =0x02251CC0
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _02227288
	ldr r2, _02227334 ; =0x02251CE8
	mov r1, #0
_02227272:
	ldrb r0, [r5]
	add r1, r1, #1
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #6
	blt _02227272
	ldr r1, _02227334 ; =0x02251CE8
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x10]
	b _02227298
_02227288:
	ldr r0, _02227334 ; =0x02251CE8
	mov r1, #0xff
	mov r2, #6
	bl sub_020C4CF4
	ldr r1, _02227338 ; =0x02215E48
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x10]
_02227298:
	cmp r4, #0
	beq _022272D6
	cmp r6, #0
	ble _022272D6
	cmp r6, #0x20
	bgt _022272D6
	mov r0, #0
	cmp r6, #0
	ble _022272BA
	ldr r2, _0222733C ; =0x02251CF0
_022272AC:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _022272AC
_022272BA:
	cmp r0, #0x20
	bge _022272CE
	ldr r1, _0222733C ; =0x02251CF0
	add r2, r1, r0
	mov r1, #0
_022272C4:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _022272C4
_022272CE:
	ldr r1, _0222733C ; =0x02251CF0
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x14]
	b _022272E6
_022272D6:
	ldr r0, _0222733C ; =0x02251CF0
	mov r1, #0xff
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r1, _02227340 ; =0x02215E50
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x14]
_022272E6:
	ldr r2, _02227330 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _0222730C
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl ov4_0221312C
	cmp r0, #3
	bne _02227324
	ldr r0, _02227330 ; =0x02251CC0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222730C:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227324
	ldr r0, _02227330 ; =0x02251CC0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227324:
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227330: .word 0x02251CC0
_02227334: .word 0x02251CE8
_02227338: .word 0x02215E48
_0222733C: .word 0x02251CF0
_02227340: .word 0x02215E50
	thumb_func_end ov18_02227254

	thumb_func_start ov18_02227344
ov18_02227344: ; 0x02227344
	push {r4, lr}
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _0222737C ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _02227372
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_0221312C
	cmp r0, #3
	bne _02227372
	ldr r0, _0222737C ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_02227372:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222737C: .word 0x02251CC0
	thumb_func_end ov18_02227344

	thumb_func_start ov18_02227380
ov18_02227380: ; 0x02227380
	push {r4, lr}
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _022273B4 ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _022273A8
	bl ov4_0221356C
	cmp r0, #3
	bne _022273A8
	ldr r0, _022273B4 ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_022273A8:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
	nop
_022273B4: .word 0x02251CC0
	thumb_func_end ov18_02227380

	thumb_func_start ov18_022273B8
ov18_022273B8: ; 0x022273B8
	push {r4, lr}
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _0222740C ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _022273EA
	bl ov4_0221303C
	cmp r0, #3
	beq _022273DA
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
_022273DA:
	ldr r0, _0222740C ; =0x02251CC0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_022273EA:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227402
	ldr r0, _0222740C ; =0x02251CC0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_02227402:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222740C: .word 0x02251CC0
	thumb_func_end ov18_022273B8

	thumb_func_start ov18_02227410
ov18_02227410: ; 0x02227410
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_020C3D98
	ldr r1, _02227490 ; =0x02251CC0
	add r4, r0, #0
	str r6, [r1, #0xc]
	cmp r5, #0
	beq _02227432
	ldr r1, [r1, #0x24]
	add r0, r5, #0
	mov r2, #0x50
	bl sub_020C4DB0
	b _0222743C
_02227432:
	ldr r0, [r1, #0x24]
	mov r1, #0
	mov r2, #0x50
	bl sub_020C4CF4
_0222743C:
	ldr r1, _02227490 ; =0x02251CC0
	add r0, r7, #0
	ldr r1, [r1, #0x20]
	mov r2, #0xc0
	bl sub_020C4B68
	bl ov18_022271A8
	cmp r0, #1
	bne _02227460
	ldr r0, _02227490 ; =0x02251CC0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227460:
	ldr r2, _02227490 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _02227486
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl ov4_02213368
	cmp r0, #3
	bne _02227486
	ldr r0, _02227490 ; =0x02251CC0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227486:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227490: .word 0x02251CC0
	thumb_func_end ov18_02227410

	thumb_func_start ov18_02227494
ov18_02227494: ; 0x02227494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl sub_020C3D98
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02227540 ; =0x02251CC0
	add r0, #0x53
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x24]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02227544 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x20]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0, #0]
	str r7, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _02227506
	sub r3, #0x1f
	ldr r0, [r2, #0]
	add r1, r3, #0
	bl ov4_02212CC8
	cmp r0, #0
	beq _02227500
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227500:
	ldr r0, _02227540 ; =0x02251CC0
	mov r1, #1
	str r1, [r0, #0x18]
_02227506:
	ldr r0, _02227540 ; =0x02251CC0
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _02227534
	ldr r0, [r0, #8]
	ldr r1, _02227548 ; =ov18_02226EF0
	bl ov4_02212E38
	cmp r0, #3
	beq _02227524
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227524:
	ldr r0, _02227540 ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227534:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227540: .word 0x02251CC0
_02227544: .word 0x0000231F
_02227548: .word ov18_02226EF0
	thumb_func_end ov18_02227494

	thumb_func_start ov18_0222754C
ov18_0222754C: ; 0x0222754C
	push {r3, lr}
	cmp r0, #0
	bne _02227554
	b _0222784E
_02227554:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #9
	bls _0222755E
	b _02227840
_0222755E:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222756A: ; jump table
	.short _02227840 - _0222756A - 2 ; case 0
	.short _0222757E - _0222756A - 2 ; case 1
	.short _022277CE - _0222756A - 2 ; case 2
	.short _02227604 - _0222756A - 2 ; case 3
	.short _02227672 - _0222756A - 2 ; case 4
	.short _0222763C - _0222756A - 2 ; case 5
	.short _0222771A - _0222756A - 2 ; case 6
	.short _0222780A - _0222756A - 2 ; case 7
	.short _02227820 - _0222756A - 2 ; case 8
	.short _0222782E - _0222756A - 2 ; case 9
_0222757E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022275F0
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _022275A0
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #6
	blx r2
	pop {r3, pc}
_022275A0:
	cmp r0, #6
	bne _022275C8
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022275C8:
	cmp r0, #8
	bne _02227634
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _02227634
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022275F0:
	ldr r0, _02227850 ; =0x02251D10
	mov r3, #1
	str r3, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02227634
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_02227604:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227626
	ldr r0, _02227850 ; =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #6
	bne _02227634
	mov r2, #5
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227634
	mov r0, #8
	blx r2
	pop {r3, pc}
_02227626:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _02227636
_02227634:
	b _0222784E
_02227636:
	mov r0, #9
	blx r2
	pop {r3, pc}
_0222763C:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222765E
	ldr r0, _02227850 ; =0x02251D10
	ldr r2, [r0, #0x2c]
	cmp r2, #8
	bne _02227736
	mov r2, #7
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_0222765E:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_02227672:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227706
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _02227694
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_02227694:
	cmp r0, #6
	bne _022276BC
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022276BC:
	cmp r0, #2
	bne _022276DE
	bl ov4_0221303C
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022276DE:
	cmp r0, #8
	bne _02227736
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _02227736
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227706:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02227736
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_0222771A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277BA
	ldr r2, _02227850 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _0222773E
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _02227738
_02227736:
	b _0222784E
_02227738:
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_0222773E:
	cmp r0, #6
	bne _02227766
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227766:
	cmp r0, #2
	bne _02227788
	bl ov4_0221303C
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227788:
	cmp r0, #8
	bne _022277B0
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	beq _0222784E
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022277B0:
	cmp r0, #7
	bne _0222784E
	mov r0, #3
	str r0, [r2, #0x2c]
	pop {r3, pc}
_022277BA:
	ldr r0, _02227850 ; =0x02251D10
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_022277CE:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022277F6
	ldr r0, _02227850 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #2
	bne _0222784E
	bl ov4_02212DE0
	ldr r0, _02227850 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_022277F6:
	ldr r0, _02227850 ; =0x02251D10
	mov r3, #3
	str r3, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0222784E
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_0222780A:
	ldr r0, _02227850 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #5
	bne _0222784E
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #5
	blx r2
	pop {r3, pc}
_02227820:
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #4
	blx r2
	pop {r3, pc}
_0222782E:
	ldr r0, _02227850 ; =0x02251D10
	str r1, [r0, #0x2c]
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #3
	blx r2
	pop {r3, pc}
_02227840:
	ldr r0, _02227854 ; =0x02251D90
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0222784E
	mov r0, #1
	mov r1, #0
	blx r2
_0222784E:
	pop {r3, pc}
	; .align 2, 0
_02227850: .word 0x02251D10
_02227854: .word 0x02251D90
	thumb_func_end ov18_0222754C

	thumb_func_start ov18_02227858
ov18_02227858: ; 0x02227858
	push {r3, lr}
	ldr r1, _022278B8 ; =0x02251D10
	ldr r0, [r1, #0x2c]
	cmp r0, #8
	bhi _022278AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222786E: ; jump table
	.short _022278AE - _0222786E - 2 ; case 0
	.short _0222789E - _0222786E - 2 ; case 1
	.short _022278AE - _0222786E - 2 ; case 2
	.short _022278AE - _0222786E - 2 ; case 3
	.short _022278AE - _0222786E - 2 ; case 4
	.short _02227880 - _0222786E - 2 ; case 5
	.short _022278AE - _0222786E - 2 ; case 6
	.short _02227892 - _0222786E - 2 ; case 7
	.short _022278AE - _0222786E - 2 ; case 8
_02227880:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_0221312C
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_02227892:
	bl ov4_0221356C
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_0222789E:
	ldr r0, [r1, #8]
	ldr r1, _022278BC ; =ov18_0222754C
	bl ov4_02212E38
	cmp r0, #3
	beq _022278B2
	mov r0, #0
	pop {r3, pc}
_022278AE:
	mov r0, #0
	pop {r3, pc}
_022278B2:
	mov r0, #1
	pop {r3, pc}
	nop
_022278B8: .word 0x02251D10
_022278BC: .word ov18_0222754C
	thumb_func_end ov18_02227858

	thumb_func_start ov18_022278C0
ov18_022278C0: ; 0x022278C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl ov4_02214EE0
	bl ov4_02214E88
	add r6, r0, #0
	cmp r6, #0
	ble _022278F8
	mov r4, #0
	cmp r6, #0
	ble _022278F8
_022278DC:
	cmp r4, r7
	bge _022278F8
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov4_02214F5C
	add r1, r5, #0
	mov r2, #0xc0
	bl sub_020C4B68
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _022278DC
_022278F8:
	mov r0, #0
	bl ov4_02214EE0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022278C0

	thumb_func_start ov18_02227904
ov18_02227904: ; 0x02227904
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020C3D98
	add r7, r0, #0
	ldr r1, _022279D8 ; =0x02251D10
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #0x60]
	ldr r0, _022279DC ; =0x022521C8
	str r0, [r1, #0x44]
	beq _02227934
	mov r2, #0
_02227924:
	ldrb r1, [r5]
	add r2, r2, #1
	add r5, r5, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r2, #6
	blt _02227924
	b _02227942
_02227934:
	mov r1, #0xff
	mov r2, #6
	bl sub_020C4CF4
	ldr r1, _022279E0 ; =0x02215E48
	ldr r0, _022279D8 ; =0x02251D10
	str r1, [r0, #0x44]
_02227942:
	ldr r2, _022279E4 ; =0x02252200
	ldr r0, _022279D8 ; =0x02251D10
	cmp r4, #0
	str r2, [r0, #0x48]
	beq _0222797E
	cmp r6, #0
	ble _0222797E
	cmp r6, #0x20
	bge _0222797E
	mov r0, #0
	cmp r6, #0
	ble _02227968
_0222795A:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _0222795A
_02227968:
	cmp r0, #0x20
	bge _0222798E
	ldr r1, _022279E4 ; =0x02252200
	add r2, r1, r0
	mov r1, #0
_02227972:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _02227972
	b _0222798E
_0222797E:
	ldr r0, _022279E4 ; =0x02252200
	mov r1, #0xff
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r1, _022279E8 ; =0x02215E50
	ldr r0, _022279D8 ; =0x02251D10
	str r1, [r0, #0x48]
_0222798E:
	ldr r2, _022279D8 ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _022279B4
	ldr r1, [r2, #0x48]
	ldr r0, _022279DC ; =0x022521C8
	ldr r2, [r2, #0x60]
	bl ov4_0221312C
	cmp r0, #3
	bne _022279CC
	ldr r0, _022279D8 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279B4:
	bl ov18_02227858
	cmp r0, #1
	bne _022279CC
	ldr r0, _022279D8 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022279CC:
	add r0, r7, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022279D8: .word 0x02251D10
_022279DC: .word 0x022521C8
_022279E0: .word 0x02215E48
_022279E4: .word 0x02252200
_022279E8: .word 0x02215E50
	thumb_func_end ov18_02227904

	thumb_func_start ov18_022279EC
ov18_022279EC: ; 0x022279EC
	push {r4, lr}
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _02227A20 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #7
	bne _02227A14
	bl ov4_0221356C
	cmp r0, #3
	bne _02227A14
	ldr r0, _02227A20 ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_02227A14:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
	nop
_02227A20: .word 0x02251D10
	thumb_func_end ov18_022279EC

	thumb_func_start ov18_02227A24
ov18_02227A24: ; 0x02227A24
	push {r4, lr}
	bl sub_020C3D98
	add r4, r0, #0
	ldr r0, _02227A78 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	bne _02227A56
	bl ov4_0221303C
	cmp r0, #3
	beq _02227A46
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
_02227A46:
	ldr r0, _02227A78 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_02227A56:
	bl ov18_02227858
	cmp r0, #1
	bne _02227A6E
	ldr r0, _02227A78 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r4, pc}
_02227A6E:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02227A78: .word 0x02251D10
	thumb_func_end ov18_02227A24

	thumb_func_start ov18_02227A7C
ov18_02227A7C: ; 0x02227A7C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_020C3D98
	ldr r1, _02227AFC ; =0x02251D10
	add r4, r0, #0
	str r6, [r1, #0x58]
	cmp r5, #0
	beq _02227A9E
	ldr r1, [r1, #0x28]
	add r0, r5, #0
	mov r2, #0x60
	bl sub_020C4DB0
	b _02227AA8
_02227A9E:
	ldr r0, [r1, #0x28]
	mov r1, #0
	mov r2, #0x60
	bl sub_020C4CF4
_02227AA8:
	ldr r1, _02227AFC ; =0x02251D10
	add r0, r7, #0
	ldr r1, [r1, #0x4c]
	mov r2, #0xc0
	bl sub_020C4B68
	bl ov18_02227858
	cmp r0, #1
	bne _02227ACC
	ldr r0, _02227AFC ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227ACC:
	ldr r2, _02227AFC ; =0x02251D10
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _02227AF2
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl ov4_02213368
	cmp r0, #3
	bne _02227AF2
	ldr r0, _02227AFC ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227AF2:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227AFC: .word 0x02251D10
	thumb_func_end ov18_02227A7C

	thumb_func_start ov18_02227B00
ov18_02227B00: ; 0x02227B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl sub_020C3D98
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02227BAC ; =0x02251D10
	add r0, #0x63
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x28]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02227BB0 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0x3c]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x4c]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0, #0]
	ldr r0, _02227BB4 ; =0x02251D90
	str r7, [r0, #0]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _02227B74
	sub r3, #0x1f
	ldr r0, [r2, #0x3c]
	add r1, r3, #0
	bl ov4_02212CC8
	cmp r0, #0
	beq _02227B6E
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B6E:
	ldr r0, _02227BAC ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x2c]
_02227B74:
	ldr r0, _02227BAC ; =0x02251D10
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	bne _02227BA2
	ldr r0, [r0, #8]
	ldr r1, _02227BB8 ; =ov18_0222754C
	bl ov4_02212E38
	cmp r0, #3
	beq _02227B92
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227B92:
	ldr r0, _02227BAC ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227BA2:
	add r0, r4, #0
	bl sub_020C3DAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227BAC: .word 0x02251D10
_02227BB0: .word 0x0000231F
_02227BB4: .word 0x02251D90
_02227BB8: .word ov18_0222754C
	thumb_func_end ov18_02227B00

	thumb_func_start ov18_02227BBC
ov18_02227BBC: ; 0x02227BBC
	ldr r0, _02227BC4 ; =0x02251D10
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_02227BC4: .word 0x02251D10
	thumb_func_end ov18_02227BBC

	thumb_func_start ov18_02227BC8
ov18_02227BC8: ; 0x02227BC8
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0
	ble _02227BEA
	ldr r0, _02227BF0 ; =0x02251DA4
	bl sub_020C29D8
	ldr r1, _02227BF4 ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r4, r0, #0
	ldr r0, _02227BF0 ; =0x02251DA4
	bl sub_020C2A5C
	add r0, r4, #0
	pop {r4, pc}
_02227BEA:
	mov r0, #0
	pop {r4, pc}
	nop
_02227BF0: .word 0x02251DA4
_02227BF4: .word 0x02251D10
	thumb_func_end ov18_02227BC8

	thumb_func_start ov18_02227BF8
ov18_02227BF8: ; 0x02227BF8
	push {r4, lr}
	add r4, r1, #0
	beq _02227C16
	cmp r2, #0
	ble _02227C16
	ldr r0, _02227C18 ; =0x02251DA4
	bl sub_020C29D8
	ldr r1, _02227C1C ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227C18 ; =0x02251DA4
	bl sub_020C2A5C
_02227C16:
	pop {r4, pc}
	; .align 2, 0
_02227C18: .word 0x02251DA4
_02227C1C: .word 0x02251D10
	thumb_func_end ov18_02227BF8

	thumb_func_start ov18_02227C20
ov18_02227C20: ; 0x02227C20
	push {r3, lr}
	bl sub_020C3D98
	ldr r1, _02227C40 ; =0x02251D10
	mov r2, #0
	str r2, [r1, #0x68]
	str r2, [r1, #0x6c]
	ldr r3, _02227C44 ; =0x02251D94
	add r1, r2, #0
_02227C32:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, #4
	blt _02227C32
	bl sub_020C3DAC
	pop {r3, pc}
	; .align 2, 0
_02227C40: .word 0x02251D10
_02227C44: .word 0x02251D94
	thumb_func_end ov18_02227C20

	thumb_func_start ov18_02227C48
ov18_02227C48: ; 0x02227C48
	push {r3, r4, r5, lr}
	bl sub_020C3D98
	ldr r1, _02227C78 ; =0x02251D10
	ldr r5, [r1, #0x6c]
	ldr r2, [r1, #0x68]
	cmp r2, r5
	bne _02227C5C
	mov r4, #0
	b _02227C6E
_02227C5C:
	ldr r2, _02227C7C ; =0x02251D94
	lsl r3, r5, #2
	ldr r4, [r2, r3]
	add r2, r5, #1
	str r2, [r1, #0x6c]
	cmp r2, #4
	blt _02227C6E
	mov r2, #0
	str r2, [r1, #0x6c]
_02227C6E:
	bl sub_020C3DAC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02227C78: .word 0x02251D10
_02227C7C: .word 0x02251D94
	thumb_func_end ov18_02227C48

	thumb_func_start ov18_02227C80
ov18_02227C80: ; 0x02227C80
	push {r3, r4}
	ldr r1, _02227CA8 ; =0x02251D10
	ldr r3, [r1, #0x68]
	ldr r2, [r1, #0x6c]
	add r4, r3, #1
	cmp r4, r2
	beq _02227CA4
	add r2, r2, #3
	cmp r3, r2
	beq _02227CA4
	ldr r2, _02227CAC ; =0x02251D94
	lsl r3, r3, #2
	str r0, [r2, r3]
	str r4, [r1, #0x68]
	cmp r4, #4
	blt _02227CA4
	mov r0, #0
	str r0, [r1, #0x68]
_02227CA4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02227CA8: .word 0x02251D10
_02227CAC: .word 0x02251D94
	thumb_func_end ov18_02227C80

	thumb_func_start ov18_02227CB0
ov18_02227CB0: ; 0x02227CB0
	ldr r3, _02227CB8 ; =ov18_02227C80
	mov r1, #0
	bx r3
	nop
_02227CB8: .word ov18_02227C80
	thumb_func_end ov18_02227CB0

	thumb_func_start ov18_02227CBC
ov18_02227CBC: ; 0x02227CBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02227D50 ; =0x02251D10
	mov r4, #1
	str r6, [r0, #0x70]
	bl ov18_02227C20
	mov r0, #0xd0
	add r7, r6, #0
	mul r7, r0
	ldr r0, _02227D54 ; =0x000024D0
	add r1, r7, r0
	mov r0, #0xc0
	mul r0, r6
	add r0, r1, r0
	ldr r1, _02227D50 ; =0x02251D10
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _02227D50 ; =0x02251D10
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _02227CEC
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02227CEC:
	mov r1, #0x1f
	add r2, r0, r1
	add r0, r1, #0
	sub r0, #0x3f
	add r3, r2, #0
	and r3, r0
	ldr r0, _02227D58 ; =0x00002490
	str r3, [r6, #0x40]
	add r2, r7, r0
	add r0, r3, r2
	add r0, r0, r1
	sub r1, #0x3f
	and r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _02227D5C ; =ov18_02227C80
	add r1, r3, #0
	bl ov18_02227B00
	cmp r0, #0
	bne _02227D18
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227D18:
	mov r6, #0
	add r7, r4, #0
_02227D1C:
	mov r0, #0xa
	bl sub_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D48
_02227D2A:
	cmp r0, #4
	beq _02227D40
	cmp r0, #5
	beq _02227D40
	cmp r0, #6
	bne _02227D3C
	add r4, r6, #0
	add r5, r7, #0
	b _02227D40
_02227D3C:
	mov r4, #0
	sub r5, r4, #2
_02227D40:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D2A
_02227D48:
	cmp r4, #0
	bne _02227D1C
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227D50: .word 0x02251D10
_02227D54: .word 0x000024D0
_02227D58: .word 0x00002490
_02227D5C: .word ov18_02227C80
	thumb_func_end ov18_02227CBC

	thumb_func_start ov18_02227D60
ov18_02227D60: ; 0x02227D60
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	bl ov18_02227A24
	cmp r0, #0
	beq _02227D9E
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02227D72:
	add r0, r7, #0
	bl sub_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227D9A
_02227D80:
	cmp r0, #4
	beq _02227D92
	cmp r0, #5
	beq _02227D92
	cmp r0, #0x14
	bne _02227D90
	add r5, r4, #0
	b _02227D92
_02227D90:
	add r5, r6, #0
_02227D92:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227D80
_02227D9A:
	cmp r5, #0
	bne _02227D72
_02227D9E:
	ldr r1, _02227DB4 ; =0x02251D10
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02227DB0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02227DB4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x54]
_02227DB0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227DB4: .word 0x02251D10
	thumb_func_end ov18_02227D60

	thumb_func_start ov18_02227DB8
ov18_02227DB8: ; 0x02227DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, _02227EC8 ; =0x02251D10
	mov r4, #1
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x18]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	sub r5, r4, #3
	add r6, r3, r1
	bne _02227DD6
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227DD6:
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227DEA
	add sp, #0x30
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02227DEA:
	add r0, sp, #4
	bl sub_020C3A0C
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _02227ECC ; =0x003FEC42
	ldr r3, _02227ED0 ; =ov18_02227CB0
	add r0, sp, #4
	mov r2, #0
	bl sub_020C3B48
	mov r7, #0
_02227E02:
	bl ov18_0222AA98
	ldr r1, _02227ED4 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02227E14
	mov r5, #2
	mvn r5, r5
	b _02227E94
_02227E14:
	ldr r0, _02227EC8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E22
	mov r5, #7
	mvn r5, r5
	b _02227E94
_02227E22:
	mov r0, #0xa
	bl sub_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227E90
_02227E30:
	cmp r0, #0xc
	bgt _02227E46
	bge _02227E5A
	cmp r0, #5
	bgt _02227E86
	cmp r0, #4
	blt _02227E86
	beq _02227E88
	cmp r0, #5
	beq _02227E88
	b _02227E86
_02227E46:
	cmp r0, #0x13
	bgt _02227E86
	cmp r0, #0xd
	blt _02227E86
	beq _02227E60
	cmp r0, #0x12
	beq _02227E88
	cmp r0, #0x13
	beq _02227E88
	b _02227E86
_02227E5A:
	add r4, r7, #0
	mov r5, #1
	b _02227E88
_02227E60:
	ldr r0, _02227EC8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02227E70
	mov r4, #0
	add r5, r4, #0
	sub r5, #8
	b _02227E88
_02227E70:
	mov r2, #3
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0x10
	bl ov18_02227A7C
	cmp r0, #0
	bne _02227E88
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227E86:
	mov r4, #0
_02227E88:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E30
_02227E90:
	cmp r4, #0
	bne _02227E02
_02227E94:
	add r0, sp, #4
	bl sub_020C3BB4
_02227E9A:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227E9A
	cmp r5, #0
	ble _02227EC2
	ldr r0, _02227EC8 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, _02227ED8 ; =0x0224984C
	bl ov4_02208874
	cmp r0, #0
	bge _02227EBC
	mov r5, #1
	mvn r5, r5
	b _02227EC2
_02227EBC:
	ldr r0, _02227EC8 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x24]
_02227EC2:
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227EC8: .word 0x02251D10
_02227ECC: .word 0x003FEC42
_02227ED0: .word ov18_02227CB0
_02227ED4: .word 0x02249838
_02227ED8: .word 0x0224984C
	thumb_func_end ov18_02227DB8

	thumb_func_start ov18_02227EDC
ov18_02227EDC: ; 0x02227EDC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02227F3C ; =0x02251D10
	mov r5, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02227F28
	bl ov18_022279EC
	cmp r0, #0
	beq _02227F22
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02227EF6:
	add r0, r7, #0
	bl sub_020C24A4
	bl ov18_02227C48
	cmp r0, #0
	beq _02227F1E
_02227F04:
	cmp r0, #4
	beq _02227F16
	cmp r0, #5
	beq _02227F16
	cmp r0, #0xe
	bne _02227F14
	add r5, r4, #0
	b _02227F16
_02227F14:
	add r5, r6, #0
_02227F16:
	bl ov18_02227C48
	cmp r0, #0
	bne _02227F04
_02227F1E:
	cmp r5, #0
	bne _02227EF6
_02227F22:
	ldr r0, _02227F3C ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x20]
_02227F28:
	ldr r0, _02227F3C ; =0x02251D10
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _02227F38
	mov r1, #0
	str r1, [r0, #0x24]
	bl ov4_022089E8
_02227F38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227F3C: .word 0x02251D10
	thumb_func_end ov18_02227EDC

	thumb_func_start ov18_02227F40
ov18_02227F40: ; 0x02227F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r6, r0, #4
	add r0, r1, #0
	add r4, r0, #4
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _02228014
_02227F64:
	add r2, sp, #0x48
	add r2, #2
	mov r1, #0x22
	mov r0, #0
_02227F6C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02227F6C
	add r0, sp, #0x48
	add r0, #2
	add r1, r6, #4
	mov r2, #0x20
	bl sub_020D50B8
	add r0, sp, #0x48
	ldr r1, [r6, #0]
	mov r7, #0
	add r0, #2
	strb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _02227FF8
	add r0, r6, #0
	str r0, [sp, #0x24]
	add r0, #0x28
	ldr r5, [r6, #0]
	str r0, [sp, #0x24]
_02227F9E:
	cmp r5, #0
	beq _02227FF8
	cmp r5, #0x20
	bhi _02227FF8
	cmp r5, #1
	bne _02227FB4
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02227FF8
	cmp r0, #0x20
	beq _02227FF8
_02227FB4:
	add r0, sp, #0x48
	add r0, #2
	bl sub_020D8B60
	add r2, r0, #0
	add r0, sp, #0x48
	add r0, #2
	add r1, r4, #4
	bl sub_020D5190
	cmp r0, #0
	bne _02227FEE
	add r1, r4, #0
	ldr r0, [sp, #0x24]
	add r1, #0x28
	mov r2, #6
	bl sub_020D5190
	cmp r0, #0
	bne _02227FEE
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r4, #0x2e]
	cmp r1, r0
	beq _02227FEE
	cmp r1, #0
	bne _02227FEE
	mov r0, #1
	str r0, [sp, #0x20]
	b _02227FF8
_02227FEE:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r4, #0x30
	cmp r7, r0
	blo _02227F9E
_02227FF8:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02228014
	ldr r0, [sp, #4]
	add r6, #0x30
	add r4, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02227F64
_02228014:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022280F0
	add r2, sp, #0x28
	mov r1, #0x22
	mov r0, #0
_02228020:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228020
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r6, [sp, #0x18]
	add r4, r0, #4
	ldr r0, [sp, #4]
	add r5, r0, #4
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _0222807C
	add r7, sp, #0x28
_02228040:
	add r0, r7, #0
	add r1, r5, #4
	mov r2, #0x20
	bl sub_020D50B8
	ldr r1, [r5, #0]
	mov r0, #0
	strb r0, [r7, r1]
	ldr r0, _02228108 ; =0x022498A4
	bl sub_020D8B60
	add r2, r0, #0
	ldr r1, _02228108 ; =0x022498A4
	add r0, r7, #0
	bl sub_020D5190
	cmp r0, #0
	bne _02228070
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _02228070
	mov r0, #1
	str r0, [sp, #0x14]
	b _0222807C
_02228070:
	ldr r0, [sp, #4]
	add r6, r6, #1
	ldr r0, [r0, #0]
	add r5, #0x30
	cmp r6, r0
	blo _02228040
_0222807C:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _022280E0
	ldr r7, _02228108 ; =0x022498A4
	add r5, sp, #0x28
_0222808C:
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0x20
	bl sub_020D50B8
	ldr r1, [r4, #0]
	mov r0, #0
	strb r0, [r5, r1]
	add r0, r5, #0
	bl sub_020D8B60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020D8B60
	cmp r6, r0
	bne _022280CE
	add r0, r7, #0
	bl sub_020D8B60
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020D5190
	cmp r0, #0
	bne _022280CE
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _022280CE
	mov r0, #1
	str r0, [sp, #0x18]
	b _022280E0
_022280CE:
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _0222808C
_022280E0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022280F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _022280F0
	mov r0, #1
	str r0, [sp, #0x20]
_022280F0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02228100
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #0x1c]
_02228100:
	ldr r0, [sp, #0x1c]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_02228108: .word 0x022498A4
	thumb_func_end ov18_02227F40

	thumb_func_start ov18_0222810C
ov18_0222810C: ; 0x0222810C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _02228384 ; =0x02251D10
	mov r4, #0
	ldr r1, [r0, #0x70]
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, #1
	mvn r4, r4
	bl ov18_0222AAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02228144
	ldr r1, [sp, #0x10]
	mov r0, #1
	bl ov18_0222AAB4
	str r0, [sp, #8]
	cmp r0, #0
	bne _02228146
_02228144:
	b _0222836A
_02228146:
	mov r0, #0
	str r0, [sp, #0x1c]
	b _02228332
_0222814C:
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228236
	mov r0, #0
	ldr r3, _0222838C ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	bl ov18_02227904
	cmp r0, #0
	bne _0222816E
	mov r4, #1
	mvn r4, r4
	b _0222836A
_0222816E:
	add r0, sp, #0x24
	bl sub_020C3A0C
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 ; =0x000FFB10
	ldr r3, _02228394 ; =ov18_02227CB0
	add r0, sp, #0x24
	mov r2, #0
	bl sub_020C3B48
	ldr r7, _02228384 ; =0x02251D10
	mov r5, #1
	mov r4, #0
	add r6, sp, #0x24
_0222818C:
	mov r0, #0xa
	bl sub_020C24A4
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02228220
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02228220
	bl ov18_02227C48
	cmp r0, #0
	beq _0222821C
_022281AC:
	cmp r0, #0x13
	bhi _02228212
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022281BC: ; jump table
	.short _02228212 - _022281BC - 2 ; case 0
	.short _02228212 - _022281BC - 2 ; case 1
	.short _02228212 - _022281BC - 2 ; case 2
	.short _02228212 - _022281BC - 2 ; case 3
	.short _02228214 - _022281BC - 2 ; case 4
	.short _022281E8 - _022281BC - 2 ; case 5
	.short _02228212 - _022281BC - 2 ; case 6
	.short _02228212 - _022281BC - 2 ; case 7
	.short _02228214 - _022281BC - 2 ; case 8
	.short _02228212 - _022281BC - 2 ; case 9
	.short _0222820E - _022281BC - 2 ; case 10
	.short _02228212 - _022281BC - 2 ; case 11
	.short _02228212 - _022281BC - 2 ; case 12
	.short _02228212 - _022281BC - 2 ; case 13
	.short _02228212 - _022281BC - 2 ; case 14
	.short _02228212 - _022281BC - 2 ; case 15
	.short _02228212 - _022281BC - 2 ; case 16
	.short _02228212 - _022281BC - 2 ; case 17
	.short _02228214 - _022281BC - 2 ; case 18
	.short _022281E4 - _022281BC - 2 ; case 19
_022281E4:
	mov r5, #0
	b _02228214
_022281E8:
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x70]
	bl ov18_022278C0
	cmp r0, r4
	ble _02228214
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020C3BB4
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02228390 ; =0x000FFB10
	ldr r3, _02228394 ; =ov18_02227CB0
	add r0, r6, #0
	mov r2, #0
	bl sub_020C3B48
	b _02228214
_0222820E:
	mov r5, #0
	b _02228214
_02228212:
	mov r5, #0
_02228214:
	bl ov18_02227C48
	cmp r0, #0
	bne _022281AC
_0222821C:
	cmp r5, #0
	bne _0222818C
_02228220:
	add r0, sp, #0x24
	bl sub_020C3BB4
_02228226:
	bl ov18_02227C48
	cmp r0, #0
	bne _02228226
	ldr r1, _02228384 ; =0x02251D10
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _02228238
_02228236:
	b _02228342
_02228238:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x70]
	cmp r4, r0
	blt _02228248
	ldr r0, [sp, #0x14]
	sub r4, r0, #6
	b _0222836A
_02228248:
	ldr r0, [sp, #0x14]
	ldr r5, [r1, #0x5c]
	str r0, [sp, #0x18]
	cmp r4, #0
	ble _022282BE
	ble _022282BE
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0xc]
	str r0, [sp, #4]
	add r0, #8
	add r6, r7, #0
	str r0, [sp, #4]
	add r6, #0x2c
_02228262:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0xc
	mov r2, #0x20
	bl sub_020D50B8
	ldrh r0, [r5, #0xa]
	str r0, [r7, #4]
	ldrh r0, [r5, #0xa]
	add r1, r7, r0
	mov r0, #0
	strb r0, [r1, #8]
	ldrh r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	beq _02228286
	mov r0, #1
	b _02228288
_02228286:
	mov r0, #0
_02228288:
	strh r0, [r7, #0x32]
	ldrb r0, [r5, #4]
	add r7, #0x30
	strb r0, [r6]
	ldrb r0, [r5, #5]
	strb r0, [r6, #1]
	ldrb r0, [r5, #6]
	strb r0, [r6, #2]
	ldrb r0, [r5, #7]
	strb r0, [r6, #3]
	ldrb r0, [r5, #8]
	strb r0, [r6, #4]
	ldrb r0, [r5, #9]
	add r5, #0xc0
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	add r6, #0x30
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02228262
_022282BE:
	ldr r0, [sp, #0xc]
	str r4, [r0, #0]
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	bl ov18_02227F40
	cmp r0, #0
	beq _02228318
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r1, r0, #4
	mov r0, #0x30
	mul r0, r2
	add r4, r1, r0
	ldr r0, _02228384 ; =0x02251D10
	add r1, r4, #4
	str r2, [r0, #0x18]
	ldr r0, _02228398 ; =0x02252220
	bl sub_020D8B7C
	add r0, r4, #0
	add r4, #0x28
	ldrb r2, [r4]
	ldr r1, _0222839C ; =0x022521C0
	add r0, #0x28
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r0, [r0, #5]
	strb r0, [r1, #5]
	add r0, sp, #0x50
	bl ov18_0222AB1C
	b _02228342
_02228318:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_020D50B8
	ldr r0, _02228384 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_02228332:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228342
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02228342
	b _0222814C
_02228342:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02228354
	bl ov18_0222AA98
	ldr r1, _02228388 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bls _0222835A
_02228354:
	mov r4, #2
	mvn r4, r4
	b _0222836A
_0222835A:
	ldr r0, _02228384 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02228368
	mov r4, #7
	mvn r4, r4
	b _0222836A
_02228368:
	mov r4, #1
_0222836A:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02228374
	bl ov18_0222AAD8
_02228374:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222837E
	bl ov18_0222AAD8
_0222837E:
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02228384: .word 0x02251D10
_02228388: .word 0x02249838
_0222838C: .word 0x0030BFFE
_02228390: .word 0x000FFB10
_02228394: .word ov18_02227CB0
_02228398: .word 0x02252220
_0222839C: .word 0x022521C0
	thumb_func_end ov18_0222810C

	thumb_func_start ov18_022283A0
ov18_022283A0: ; 0x022283A0
	push {r3, lr}
	ldr r2, [sp, #8]
	str r1, [sp]
	add r1, r3, #0
	mov r3, #0
	bl ov4_022084B0
	cmp r0, #0
	bge _022283B6
	mov r0, #3
	mvn r0, r0
_022283B6:
	pop {r3, pc}
	thumb_func_end ov18_022283A0

	thumb_func_start ov18_022283B8
ov18_022283B8: ; 0x022283B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #8
	add r0, sp, #4
	strb r1, [r0, #4]
	mov r1, #2
	strb r1, [r0, #5]
	sub r1, r1, #3
	str r1, [sp, #0xc]
	ldr r1, _022283F0 ; =0x000001E6
	add r4, r2, #0
	strh r1, [r0, #6]
	bl ov4_02208088
	add r1, sp, #4
	bl ov4_02208AF8
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, r6, #0
	str r4, [sp]
	bl ov18_022283A0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022283F0: .word 0x000001E6
	thumb_func_end ov18_022283B8

	thumb_func_start ov18_022283F4
ov18_022283F4: ; 0x022283F4
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _022283FC ; =ov18_022283B8
	bx r3
	; .align 2, 0
_022283FC: .word ov18_022283B8
	thumb_func_end ov18_022283F4

	thumb_func_start ov18_02228400
ov18_02228400: ; 0x02228400
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	mov r3, #0
	asr r4, r5, #8
	lsl r4, r4, #0x18
	lsr r6, r4, #0x18
	lsl r4, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r4, r5
	orr r4, r6
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	str r4, [r1, #0]
	ldrh r6, [r0, #2]
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r0, #6
	str r4, [r2, #0]
	add r2, r1, r4
	add r4, r0, #0
	cmp r0, r2
	bhs _02228444
_0222843A:
	ldrb r1, [r4]
	add r4, r4, #1
	add r3, r3, r1
	cmp r4, r2
	blo _0222843A
_02228444:
	ldrh r5, [r2]
	lsl r1, r3, #0x10
	lsr r1, r1, #0x10
	asr r2, r5, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r5, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r1, r2
	beq _02228468
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228468:
	add r0, r0, #6
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02228400

	thumb_func_start ov18_02228470
ov18_02228470: ; 0x02228470
	push {r3, r4, r5, r6}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	blo _02228480
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02228480:
	ldrh r5, [r0]
	asr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsl r1, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r1, r5
	orr r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r2, #0]
	ldrh r6, [r0, #2]
	add r0, r0, #4
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r2, [r3, #0]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	sub r1, r2, #4
	add r1, r0, r1
	str r1, [r4, #0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_02228470

	thumb_func_start ov18_022284C0
ov18_022284C0: ; 0x022284C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r5, #8
	str r5, [sp]
	add r3, r2, #0
	ldrh r2, [r0]
	add r4, r1, #0
	add r0, sp, #0
	asr r1, r2, #8
	lsl r6, r2, #8
	mov r2, #0xff
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r2, r6
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, r5, r1
	add r2, r4, #0
	bl ov18_02228470
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_022284C0

	thumb_func_start ov18_022284F4
ov18_022284F4: ; 0x022284F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r3, #0
	add r6, r0, #0
	add r0, r7, #0
	sub r0, #8
	str r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r2, #0
	mov r5, #0
	strb r5, [r1]
	lsr r0, r0, #0x10
	strb r5, [r1, #1]
	asr r2, r0, #8
	strb r5, [r1, #2]
	lsl r2, r2, #0x18
	strb r5, [r1, #3]
	lsr r3, r2, #0x18
	lsl r2, r0, #8
	mov r0, #0xff
	strb r5, [r1, #4]
	lsl r0, r0, #8
	strb r5, [r1, #5]
	and r0, r2
	strb r5, [r1, #6]
	orr r0, r3
	strb r5, [r1, #7]
	ldr r3, [sp, #0x20]
	add r4, r6, #0
	strh r0, [r1]
	cmp r3, #0
	beq _02228544
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #6
	add r2, r7, #0
	bl ov18_02229134
	add r7, #8
	b _0222854C
_02228544:
	add r0, r6, #6
	add r2, r7, #0
	bl sub_020D50B8
_0222854C:
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	orr r1, r2
	strh r1, [r6]
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r0, r1
	strh r0, [r6, #2]
	add r0, r4, #6
	add r4, r0, r7
	add r1, r6, #0
	cmp r6, r4
	bhs _02228598
_0222858E:
	ldrb r0, [r1]
	add r1, r1, #1
	add r5, r5, r0
	cmp r1, r4
	blo _0222858E
_02228598:
	lsl r0, r5, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	add r0, r4, #2
	sub r0, r0, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022284F4

	thumb_func_start ov18_022285B8
ov18_022285B8: ; 0x022285B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	add r4, r3, #0
	mov r3, #0
	lsr r0, r0, #0x10
	add r7, r2, #0
	strb r3, [r5]
	asr r1, r0, #8
	lsl r2, r0, #8
	mov r0, #0xff
	strb r3, [r5, #1]
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	strb r3, [r5, #2]
	lsr r1, r1, #0x18
	and r2, r0
	orr r1, r2
	strb r3, [r5, #3]
	add r2, r4, #0
	strh r1, [r5]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	lsl r1, r4, #0x10
	sub r6, r2, #4
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	and r0, r2
	lsr r1, r1, #0x18
	orr r0, r1
	strh r0, [r5, #2]
	add r5, r5, #4
	add r0, r5, #0
	add r1, r3, #0
	add r2, r6, #0
	bl sub_020D5124
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020D50B8
	add r0, r5, r6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_022285B8

	thumb_func_start ov18_02228618
ov18_02228618: ; 0x02228618
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r4, #0
	add r0, #8
	bl ov18_022285B8
	sub r0, r0, r4
	add r1, r0, #0
	sub r1, #8
	strh r1, [r4]
	pop {r4, pc}
	thumb_func_end ov18_02228618

	thumb_func_start ov18_02228640
ov18_02228640: ; 0x02228640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_02228400
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
	str r5, [sp, #8]
	str r6, [sp, #4]
	cmp r5, #0
	bne _02228662
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02228662:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _0222866E
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0222866E:
	ldr r4, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #8]
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	beq _022286EE
_02228686:
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _02228696
	cmp r1, #2
	beq _022286AE
	cmp r1, #5
	beq _022286C8
	b _022286DE
_02228696:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _022286DE
_022286AE:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r0, r0, #0x18
	lsl r1, r1, #8
	lsr r0, r0, #0x18
	and r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	b _022286DE
_022286C8:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_022286DE:
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	cmp r0, #0
	bne _02228686
_022286EE:
	cmp r6, #1
	bne _022286F8
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _022286FE
_022286F8:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022286FE:
	cmp r7, #1
	blt _02228708
	mov r1, #1
	ldr r0, [sp]
	b _0222870C
_02228708:
	ldr r0, [sp]
	mov r1, #0
_0222870C:
	str r1, [r0, #0]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_02228640

	thumb_func_start ov18_02228714
ov18_02228714: ; 0x02228714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	add r1, sp, #8
	add r2, sp, #4
	add r4, r3, #0
	bl ov18_02228400
	add r1, r0, #0
	bne _02228730
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02228730:
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _0222873C
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0222873C:
	cmp r4, #0
	beq _02228756
	mov r0, #0x10
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl ov18_022292EC
	ldr r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	b _0222875E
_02228756:
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl sub_020D50B8
_0222875E:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov18_02228714

	thumb_func_start ov18_02228764
ov18_02228764: ; 0x02228764
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r2, sp, #4
	lsl r1, r1, #8
	add r0, sp, #4
	strh r1, [r0]
	ldr r3, _022287EC ; =0x0224645C
	add r2, #2
	mov r1, #7
_0222877A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222877A
	ldr r0, _022287F0 ; =0x02249838
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, sp, #4
	mov r3, #2
	bl ov18_022285B8
	mov r1, #2
	add r2, sp, #4
	add r3, r1, #0
	bl ov18_022285B8
	ldr r1, _022287F4 ; =0x02251D10
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287B0
	mov r1, #5
	add r2, sp, #4
	mov r3, #2
	bl ov18_022285B8
_022287B0:
	add r2, sp, #4
	mov r1, #3
	add r2, #2
	mov r3, #7
	bl ov18_022285B8
	ldr r1, _022287F4 ; =0x02251D10
	add r3, r0, #0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022287D2
	ldr r2, _022287F8 ; =0x022521B8
	mov r1, #4
	mov r3, #6
	bl ov18_022285B8
	add r3, r0, #0
_022287D2:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r4, _022287F0 ; =0x02249838
	ldr r2, _022287FC ; =0x02252244
	ldr r4, [r4, #0]
	mov r1, #2
	sub r3, r3, r4
	add r3, #8
	bl ov18_022284F4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_022287EC: .word 0x0224645C
_022287F0: .word 0x02249838
_022287F4: .word 0x02251D10
_022287F8: .word 0x022521B8
_022287FC: .word 0x02252244
	thumb_func_end ov18_02228764

	thumb_func_start ov18_02228800
ov18_02228800: ; 0x02228800
	push {r3, lr}
	bl sub_020C3FA0
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov18_02228800

	thumb_func_start ov18_0222880C
ov18_0222880C: ; 0x0222880C
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r1, _022288F8 ; =0x022498F8
	add r4, r0, #0
	ldrb r0, [r1]
	add r2, r4, #0
	add r2, #0xc
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #4
	add r1, #2
	strb r0, [r2, #3]
	ldr r0, _022288FC ; =0x022521C0
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	strb r2, [r1, #4]
	strb r0, [r1, #5]
	add r1, sp, #0
	ldrb r2, [r1, #6]
	mov r0, #0xfd
	and r0, r2
	strb r0, [r1, #6]
	add r0, sp, #0
	bl ov18_02228800
	add r1, sp, #0
	ldrb r2, [r1]
	ldr r0, _02228900 ; =0x022521B8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r2, [r1, #4]
	strb r2, [r0, #4]
	ldrb r2, [r1, #5]
	strb r2, [r0, #5]
	add r0, sp, #4
	add r0, #2
	mov r2, #6
	bl sub_020D5190
	cmp r0, #0
	bgt _022288A0
	add r1, sp, #0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #4
	add r1, #2
	strb r0, [r4, #5]
	b _022288BE
_022288A0:
	add r1, sp, #4
	add r1, #2
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #0
	strb r0, [r4, #5]
_022288BE:
	ldrb r0, [r1]
	strb r0, [r4, #6]
	ldrb r0, [r1, #1]
	strb r0, [r4, #7]
	ldrb r0, [r1, #2]
	strb r0, [r4, #8]
	ldrb r0, [r1, #3]
	strb r0, [r4, #9]
	ldrb r0, [r1, #4]
	strb r0, [r4, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r4, #0xb]
	ldr r0, _02228904 ; =0x02249838
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022288F0
	add r0, sp, #0x2c
	add r1, sp, #0
	bl ov18_0222AB1C
	add r1, sp, #4
	add r0, sp, #0xc
	add r1, #2
	bl ov18_0222AB1C
_022288F0:
	mov r0, #1
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_022288F8: .word 0x022498F8
_022288FC: .word 0x022521C0
_02228900: .word 0x022521B8
_02228904: .word 0x02249838
	thumb_func_end ov18_0222880C

	thumb_func_start ov18_02228908
ov18_02228908: ; 0x02228908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r1, r0, #0
	str r1, [sp, #4]
	add r1, #8
	str r1, [sp, #4]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp]
	ldrh r1, [r0]
	add r3, sp, #0xc
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	bl ov18_02228470
	add r5, r0, #0
	bne _02228948
	b _02228AB8
_02228948:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AC0 ; =0x00000201
	sub r1, r2, r0
	cmp r1, #9
	bhi _022289D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222895E: ; jump table
	.short _02228972 - _0222895E - 2 ; case 0
	.short _02228992 - _0222895E - 2 ; case 1
	.short _022289AE - _0222895E - 2 ; case 2
	.short _022289D8 - _0222895E - 2 ; case 3
	.short _02228A02 - _0222895E - 2 ; case 4
	.short _02228A1E - _0222895E - 2 ; case 5
	.short _02228A1E - _0222895E - 2 ; case 6
	.short _02228A1E - _0222895E - 2 ; case 7
	.short _02228A1E - _0222895E - 2 ; case 8
	.short _02228A7E - _0222895E - 2 ; case 9
_02228972:
	ldr r3, _02228AC4 ; =0x02252064
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl sub_020D50B8
	mov r0, #1
	str r0, [sp]
	b _02228AA2
_02228992:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02228AC8 ; =0x02252090
	str r1, [r0, #0]
	b _02228AA2
_022289AE:
	ldrh r3, [r5]
	ldr r1, _02228ACC ; =0x02251F64
	mov r0, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x57
	lsl r2, r2, #2
_022289CC:
	add r0, r0, #1
	str r3, [r1, r2]
	add r1, #0x28
	cmp r0, #4
	blt _022289CC
_022289D6:
	b _02228AA2
_022289D8:
	ldrh r3, [r5]
	ldr r0, _02228ACC ; =0x02251F64
	mov r1, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x16
	lsl r2, r2, #4
_022289F6:
	add r1, r1, #1
	str r3, [r0, r2]
	add r0, #0x28
	cmp r1, #4
	blt _022289F6
	b _02228AA2
_02228A02:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02228AC8 ; =0x02252090
	str r1, [r0, #4]
	b _02228AA2
_02228A1E:
	add r0, r0, #5
	sub r2, r2, r0
	mov r0, #0x28
	mul r0, r2
	ldr r1, _02228AD0 ; =0x022520C8
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	bl sub_020D5124
	ldr r0, _02228AC8 ; =0x02252090
	ldr r1, _02228AD4 ; =0x00000206
	ldr r0, [r0, #0x30]
	cmp r0, #1
	bne _02228A68
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 ; =0x022520C8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r4, r0, r1
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02228AA2
	add r7, r6, #0
_02228A52:
	ldrsb r1, [r5, r7]
	add r0, r4, #0
	add r5, r5, #1
	bl ov18_0222AAE8
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _02228A52
	b _02228AA2
_02228A68:
	ldr r2, [sp, #0x10]
	ldr r0, _02228AD0 ; =0x022520C8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	bl sub_020D50B8
	b _02228AA2
_02228A7E:
	ldr r3, _02228AD8 ; =0x02252160
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl sub_020D50B8
_02228AA2:
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov18_02228470
	add r5, r0, #0
	beq _02228AB8
	b _02228948
_02228AB8:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228AC0: .word 0x00000201
_02228AC4: .word 0x02252064
_02228AC8: .word 0x02252090
_02228ACC: .word 0x02251F64
_02228AD0: .word 0x022520C8
_02228AD4: .word 0x00000206
_02228AD8: .word 0x02252160
	thumb_func_end ov18_02228908

	thumb_func_start ov18_02228ADC
ov18_02228ADC: ; 0x02228ADC
	push {r4, r5, r6, r7}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r3, r2, #0
	cmp r4, #0
	ble _02228B8A
	mov r7, #0x1f
_02228AEC:
	ldrsb r1, [r5, r3]
	cmp r1, #0x63
	bgt _02228B42
	bge _02228B5A
	cmp r1, #0x61
	bgt _02228B3C
	bge _02228B5A
	add r6, r1, #0
	sub r6, #0x30
	cmp r6, #0x16
	bhi _02228B66
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_02228B0E: ; jump table
	.short _02228B54 - _02228B0E - 2 ; case 0
	.short _02228B54 - _02228B0E - 2 ; case 1
	.short _02228B54 - _02228B0E - 2 ; case 2
	.short _02228B54 - _02228B0E - 2 ; case 3
	.short _02228B54 - _02228B0E - 2 ; case 4
	.short _02228B54 - _02228B0E - 2 ; case 5
	.short _02228B54 - _02228B0E - 2 ; case 6
	.short _02228B54 - _02228B0E - 2 ; case 7
	.short _02228B54 - _02228B0E - 2 ; case 8
	.short _02228B54 - _02228B0E - 2 ; case 9
	.short _02228B66 - _02228B0E - 2 ; case 10
	.short _02228B66 - _02228B0E - 2 ; case 11
	.short _02228B66 - _02228B0E - 2 ; case 12
	.short _02228B66 - _02228B0E - 2 ; case 13
	.short _02228B66 - _02228B0E - 2 ; case 14
	.short _02228B66 - _02228B0E - 2 ; case 15
	.short _02228B66 - _02228B0E - 2 ; case 16
	.short _02228B60 - _02228B0E - 2 ; case 17
	.short _02228B60 - _02228B0E - 2 ; case 18
	.short _02228B60 - _02228B0E - 2 ; case 19
	.short _02228B60 - _02228B0E - 2 ; case 20
	.short _02228B60 - _02228B0E - 2 ; case 21
	.short _02228B60 - _02228B0E - 2 ; case 22
_02228B3C:
	cmp r1, #0x62
	beq _02228B5A
	b _02228B66
_02228B42:
	cmp r1, #0x65
	bgt _02228B4E
	bge _02228B5A
	cmp r1, #0x64
	beq _02228B5A
	b _02228B66
_02228B4E:
	cmp r1, #0x66
	beq _02228B5A
	b _02228B66
_02228B54:
	sub r1, #0x30
	add r2, r2, r1
	b _02228B6C
_02228B5A:
	sub r1, #0x57
	add r2, r2, r1
	b _02228B6C
_02228B60:
	sub r1, #0x37
	add r2, r2, r1
	b _02228B6C
_02228B66:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02228B6C:
	lsr r6, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r6
	ror r1, r7
	add r1, r6, r1
	bne _02228B7C
	lsl r2, r2, #4
	b _02228B84
_02228B7C:
	add r6, r3, r6
	asr r1, r6, #1
	strb r2, [r0, r1]
	mov r2, #0
_02228B84:
	add r3, r3, #1
	cmp r3, r4
	blt _02228AEC
_02228B8A:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov18_02228ADC

	thumb_func_start ov18_02228B90
ov18_02228B90: ; 0x02228B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r0, #1
	str r0, [sp]
	ldr r0, _02228CF8 ; =0x02251E7C
	ldr r1, _02228CFC ; =0x02252064
	bl sub_020D8B7C
	ldr r1, _02228D00 ; =0x02252090
	ldr r0, [r1, #0]
	cmp r0, #3
	bls _02228BAA
	b _02228CEA
_02228BAA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228BB6: ; jump table
	.short _02228BBE - _02228BB6 - 2 ; case 0
	.short _02228BC6 - _02228BB6 - 2 ; case 1
	.short _02228CBE - _02228BB6 - 2 ; case 2
	.short _02228CD4 - _02228BB6 - 2 ; case 3
_02228BBE:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #0
	str r1, [r0, #0xc]
	b _02228CF0
_02228BC6:
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02228BD4
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
	b _02228CF0
_02228BD4:
	ldr r0, _02228D04 ; =0x02251E90
	ldr r6, _02228D08 ; =0x022520C8
	ldr r5, _02228D0C ; =0x02251EA4
	str r1, [r0, #0x10]
	mov r7, #0
	add r4, sp, #4
_02228BE0:
	add r0, sp, #4
	add r1, r6, #0
	mov r2, #0x20
	bl sub_020D50B8
	mov r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	bl sub_020D8B60
	cmp r0, #0x10
	bhi _02228C18
	cmp r0, #0xa
	blo _02228C0A
	beq _02228C42
	cmp r0, #0xd
	beq _02228C54
	cmp r0, #0x10
	beq _02228C80
	b _02228CAC
_02228C0A:
	cmp r0, #0
	bhi _02228C12
	beq _02228CB2
	b _02228CAC
_02228C12:
	cmp r0, #5
	beq _02228C26
	b _02228CAC
_02228C18:
	cmp r0, #0x1a
	bhi _02228C20
	beq _02228C6E
	b _02228CAC
_02228C20:
	cmp r0, #0x20
	beq _02228C9A
	b _02228CAC
_02228C26:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #1
	str r1, [r0, #0xc]
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldrb r0, [r4, #4]
	strb r0, [r5, #4]
	b _02228CB2
_02228C42:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	bl ov18_02228ADC
	b _02228CB2
_02228C54:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #2
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0xd
_02228C60:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228C60
	b _02228CB2
_02228C6E:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1a
	bl ov18_02228ADC
	b _02228CB2
_02228C80:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #3
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0x10
_02228C8C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228C8C
	b _02228CB2
_02228C9A:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #3
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x20
	bl ov18_02228ADC
	b _02228CB2
_02228CAC:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02228CB2:
	add r7, r7, #1
	add r6, #0x28
	add r5, #0x20
	cmp r7, #4
	blt _02228BE0
	b _02228CF0
_02228CBE:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #4
	ldr r4, _02228D10 ; =0x02251F24
	ldr r3, _02228D14 ; =0x02252160
	str r1, [r0, #0xc]
	mov r2, #8
_02228CCA:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02228CCA
	b _02228CF0
_02228CD4:
	ldr r0, _02228D04 ; =0x02251E90
	mov r1, #5
	ldr r4, _02228D10 ; =0x02251F24
	ldr r3, _02228D14 ; =0x02252160
	str r1, [r0, #0xc]
	mov r2, #8
_02228CE0:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02228CE0
	b _02228CF0
_02228CEA:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02228CF0:
	ldr r0, [sp]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228CF8: .word 0x02251E7C
_02228CFC: .word 0x02252064
_02228D00: .word 0x02252090
_02228D04: .word 0x02251E90
_02228D08: .word 0x022520C8
_02228D0C: .word 0x02251EA4
_02228D10: .word 0x02251F24
_02228D14: .word 0x02252160
	thumb_func_end ov18_02228B90

	thumb_func_start ov18_02228D18
ov18_02228D18: ; 0x02228D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	sub r0, r4, #5
	str r0, [sp, #8]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #1
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	add r6, r4, #0
	str r1, [r0, #0x1c]
	b _022290CA
_02228D30:
	mov r0, #0x7d
	lsl r0, r0, #2
	bl sub_020C24A4
	ldr r0, _02229060 ; =0x02251D10
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	bls _02228D42
	b _022290CA
_02228D42:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228D4E: ; jump table
	.short _022290CA - _02228D4E - 2 ; case 0
	.short _02228D64 - _02228D4E - 2 ; case 1
	.short _02228D84 - _02228D4E - 2 ; case 2
	.short _02228D9A - _02228D4E - 2 ; case 3
	.short _02228DE8 - _02228D4E - 2 ; case 4
	.short _02228E50 - _02228D4E - 2 ; case 5
	.short _02228E74 - _02228D4E - 2 ; case 6
	.short _02228F1E - _02228D4E - 2 ; case 7
	.short _02228F7A - _02228D4E - 2 ; case 8
	.short _02229002 - _02228D4E - 2 ; case 9
	.short _022290A0 - _02228D4E - 2 ; case 10
_02228D64:
	bl ov18_0222810C
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D72
	mov r6, #1
	b _022290CA
_02228D72:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #2
	str r1, [r0, #0x1c]
	b _022290CA
_02228D84:
	bl ov18_02227DB8
	str r0, [sp, #8]
	cmp r0, #1
	beq _02228D92
	mov r6, #1
	b _022290CA
_02228D92:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #3
	str r1, [r0, #0x1c]
	b _022290CA
_02228D9A:
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl ov4_02208324
	add r4, r0, #0
	bpl _02228DB2
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228DB2:
	add r5, sp, #0x24
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	mov r3, #8
	add r2, sp, #0x10
	strb r3, [r2, #0x14]
	mov r3, #2
	strb r3, [r2, #0x15]
	ldr r3, _02229064 ; =0x000001E6
	strh r3, [r2, #0x16]
	str r1, [sp, #0x28]
	add r1, r5, #0
	bl ov4_02208350
	str r0, [sp, #8]
	cmp r0, #0
	bge _02228DE0
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228DE0:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #4
	str r1, [r0, #0x1c]
	b _022290CA
_02228DE8:
	bl ov18_0222AA98
	ldr r1, _02229068 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E04
	add r0, r4, #0
	bl ov4_02208540
	mov r0, #2
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228E04:
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xc]
	ldr r0, _0222906C ; =0x022521D0
	add r1, sp, #0x1c
	bl ov18_0222880C
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl ov4_022083FC
	cmp r0, #0
	ble _02228F02
	ldr r0, _02229070 ; =0x02252A44
	ldr r1, _02229074 ; =0x02251D60
	bl ov18_02228640
	cmp r0, #0
	beq _02228F02
	bl ov18_0222AA98
	ldr r1, _02229078 ; =0x00007530
	add r1, r0, r1
	ldr r0, _02229068 ; =0x02249838
	str r1, [r0, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #5
	str r1, [r0, #0x1c]
	mov r1, #4
	str r1, [r0, #0x38]
	bl ov18_0222AD18
	b _022290CA
_02228E50:
	ldr r0, _02229070 ; =0x02252A44
	bl ov18_02228764
	add r3, r0, #0
	ldr r0, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #6
	str r1, [r0, #0x1c]
	b _022290CA
_02228E74:
	bl ov18_0222AA98
	ldr r1, _02229068 ; =0x02249838
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02228E90
	add r0, r4, #0
	bl ov4_02208540
	mov r0, #3
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228E90:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl ov4_022083FC
	cmp r0, #0
	ble _02228F04
	ldr r0, _02229070 ; =0x02252A44
	ldr r2, _0222907C ; =0x02252244
	ldr r3, _0222906C ; =0x022521D0
	mov r1, #3
	bl ov18_02228714
	cmp r0, #0
	beq _02228F04
	ldr r0, _0222907C ; =0x02252244
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov18_022284C0
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, _02229080 ; =0x00000101
	cmp r1, r0
	bne _02228F02
	bl ov18_0222AA98
	ldr r2, _02229084 ; =0x022521E0
	str r0, [sp, #0x10]
	mov r1, #8
_02228ED4:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02228ED4
	ldr r0, _02229088 ; =0x022521E8
	add r1, sp, #0x10
	mov r2, #4
	bl ov18_0222AA70
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #7
	str r1, [r0, #0x1c]
	mov r1, #5
	str r1, [r0, #0x38]
	ldr r0, _02229068 ; =0x02249838
	sub r1, r1, #6
	str r1, [r0, #0xc]
	bl ov18_0222AD18
_02228F02:
	b _022290CA
_02228F04:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	bhs _02228F16
	b _022290CA
_02228F16:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #5
	str r1, [r0, #0x1c]
	b _022290CA
_02228F1E:
	ldr r0, _0222907C ; =0x02252244
	ldr r1, _0222908C ; =0x00000102
	ldr r2, _02229088 ; =0x022521E8
	mov r3, #8
	bl ov18_02228618
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _0222907C ; =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _0222906C ; =0x022521D0
	mov r1, #4
	str r0, [sp]
	ldr r0, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	add r3, r0, #0
	ldr r0, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	mov r0, #0
	mov r5, #0x12
	ldr r7, _02229090 ; =0x02251F64
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov ip, r5
_02228F62:
	stmia r7!, {r0, r1, r2, r3}
	mov r5, ip
	sub r5, r5, #1
	stmia r7!, {r0, r1, r2, r3}
	mov ip, r5
	bne _02228F62
	stmia r7!, {r0, r1, r2, r3}
	str r0, [r7, #0]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #8
	str r1, [r0, #0x1c]
	b _022290CA
_02228F7A:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02229070 ; =0x02252A44
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl ov4_022083FC
	cmp r0, #0
	ble _02228FD0
	ldr r0, _02229070 ; =0x02252A44
	ldr r2, _0222907C ; =0x02252244
	ldr r3, _02229084 ; =0x022521E0
	mov r1, #5
	bl ov18_02228714
	ldr r1, _02229060 ; =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x34]
	beq _02228FD0
	ldr r0, _0222907C ; =0x02252244
	bl ov18_02228908
	cmp r0, #0
	beq _02228FD0
	ldr r1, _02229094 ; =0x02252050
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _02228FBE
	mov r1, #1
	ldr r0, _02229060 ; =0x02251D10
	b _02228FC2
_02228FBE:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #0
_02228FC2:
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #9
	str r1, [r0, #0x1c]
	b _022290CA
_02228FD0:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _02228FFA
	add r0, r4, #0
	bl ov4_02208540
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022290CA
_02228FFA:
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #7
	str r1, [r0, #0x1c]
	b _022290CA
_02229002:
	ldr r0, _0222907C ; =0x02252244
	ldr r1, _02229098 ; =0x00000301
	ldr r2, _0222909C ; =0x02251D10
	mov r3, #1
	bl ov18_02228618
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _0222907C ; =0x02252244
	str r0, [r3, #0x34]
	ldr r0, _02229084 ; =0x022521E0
	mov r1, #6
	str r0, [sp]
	ldr r0, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x34]
	bl ov18_022284F4
	ldr r1, _02229060 ; =0x02251D10
	str r0, [r1, #0x14]
	bl ov18_02227BBC
	cmp r0, #7
	beq _02229044
	bl ov18_0222AA98
	mov r1, #0xfa
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0xa
	ldr r1, _02229060 ; =0x02251D10
	str r0, [sp, #4]
	str r0, [r1, #0x1c]
	b _022290CA
_02229044:
	ldr r3, _02229060 ; =0x02251D10
	ldr r2, _02229070 ; =0x02252A44
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov18_022283F4
	bl ov18_0222AA98
	str r0, [sp, #0xc]
	ldr r0, _02229060 ; =0x02251D10
	mov r1, #0xa
	str r1, [r0, #0x1c]
	b _022290CA
	; .align 2, 0
_02229060: .word 0x02251D10
_02229064: .word 0x000001E6
_02229068: .word 0x02249838
_0222906C: .word 0x022521D0
_02229070: .word 0x02252A44
_02229074: .word 0x02251D60
_02229078: .word 0x00007530
_0222907C: .word 0x02252244
_02229080: .word 0x00000101
_02229084: .word 0x022521E0
_02229088: .word 0x022521E8
_0222908C: .word 0x00000102
_02229090: .word 0x02251F64
_02229094: .word 0x02252050
_02229098: .word 0x00000301
_0222909C: .word 0x02251D10
_022290A0:
	bl ov18_0222AA98
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022290CA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _022290C4
	mov r6, #1
	bl ov18_02228B90
	str r0, [sp, #8]
	b _022290CA
_022290C4:
	ldr r0, _022290F8 ; =0x02251D10
	mov r1, #9
	str r1, [r0, #0x1c]
_022290CA:
	cmp r6, #0
	bne _022290D8
	ldr r0, _022290F8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _022290D8
	b _02228D30
_022290D8:
	cmp r4, #0
	beq _022290E2
	add r0, r4, #0
	bl ov4_02208540
_022290E2:
	ldr r0, _022290F8 ; =0x02251D10
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022290F0
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
_022290F0:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022290F8: .word 0x02251D10
	thumb_func_end ov18_02228D18

	thumb_func_start ov18_022290FC
ov18_022290FC: ; 0x022290FC
	push {r4, lr}
	bl ov18_02228D18
	add r4, r0, #0
	ldr r0, _0222912C ; =0x02251D10
	str r4, [r0, #0x78]
	bl ov18_02227EDC
	cmp r4, #1
	bne _02229116
	mov r1, #6
	ldr r0, _0222912C ; =0x02251D10
	b _0222911A
_02229116:
	ldr r0, _0222912C ; =0x02251D10
	mov r1, #7
_0222911A:
	str r1, [r0, #0x38]
	mov r1, #0
	ldr r0, _02229130 ; =0x02249838
	mvn r1, r1
	str r1, [r0, #0xc]
	bl ov18_0222AD18
	pop {r4, pc}
	nop
_0222912C: .word 0x02251D10
_02229130: .word 0x02249838
	thumb_func_end ov18_022290FC

	thumb_func_start ov18_02229134
ov18_02229134: ; 0x02229134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _022292E8 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02229152
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229158
_02229152:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229158:
	lsr r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229166
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229166:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov18_022294EC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r5, #0
	add r0, #8
	add r2, r4, #0
	bl sub_020D50B8
	add r3, sp, #0x58
	add r2, sp, #0x48
	mov r1, #8
_02229184:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02229184
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_0222919A:
	ldr r0, [sp, #0x14]
	mov r4, #1
	cmp r0, #1
	bge _022291A4
	b _022292C0
_022291A4:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022291C2:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	add r3, r5, #0
	add r2, sp, #0x60
	mov r1, #8
_022291CE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022291CE
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov18_02229934
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r3, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xff
	lsl r0, r0, #8
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #8
	lsr r2, r2, #0x18
	str r2, [sp, #0x34]
	orr r2, r6
	lsr r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r3
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r3
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r3
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r3, r7, #0
	orr r3, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r2, r0
	ldr r0, [sp, #0x30]
	orr r1, r0
	ldr r0, [sp, #0x2c]
	orr r2, r0
	ldr r0, [sp, #0x28]
	orr r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov18_022294A4
	add r2, sp, #0x60
	mov r1, #8
_022292AC:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022292AC
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	ble _022291C2
_022292C0:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _022292CC
	b _0222919A
_022292CC:
	add r3, sp, #0x58
	mov r2, #8
_022292D0:
	ldrb r1, [r3]
	ldr r0, [sp]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	str r0, [sp]
	sub r2, r2, #1
	bne _022292D0
	mov r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022292E8: .word 0xA6A6A6A6
	thumb_func_end ov18_02229134

	thumb_func_start ov18_022292EC
ov18_022292EC: ; 0x022292EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022294A0 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _0222930E
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02229314
_0222930E:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229314:
	sub r0, r4, #1
	lsr r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02229324
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02229324:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov18_022297A4
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	add r2, r5, #0
	mov r1, #8
_02229336:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02229336
	add r5, #8
	ldr r0, [sp]
	add r1, r5, #0
	sub r2, r4, #1
	bl sub_020D50B8
	mov r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_02229358:
	ldr r4, [sp, #0x14]
	add r0, r4, #0
	cmp r0, #0
	bgt _02229362
	b _0222947C
_02229362:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_02229380:
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r5, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, r1, #0
	and r2, r0
	mov r0, #0
	add r3, r5, #0
	and r3, r0
	lsl r0, r2, #8
	lsr r3, r3, #0x18
	orr r3, r0
	lsr r0, r2, #0x18
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r5
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r5
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r5
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r5
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r5
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r5, r7, #0
	orr r5, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r5
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r1, r0
	ldr r0, [sp, #0x30]
	orr r2, r0
	ldr r0, [sp, #0x2c]
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov18_022294A4
	sub r0, r4, #1
	lsl r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	add r5, r0, r1
	add r3, r5, #0
	mov r1, #8
_0222944E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222944E
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov18_02229CF0
	add r2, sp, #0x60
	mov r1, #8
_0222946A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0222946A
	sub r4, r4, #1
	cmp r4, #0
	bgt _02229380
_0222947C:
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	bmi _02229486
	b _02229358
_02229486:
	add r0, sp, #0x48
	add r1, sp, #0x58
	mov r2, #8
	bl sub_020D5190
	cmp r0, #0
	beq _02229498
	mov r0, #0
	str r0, [sp, #0x1c]
_02229498:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022294A0: .word 0xA6A6A6A6
	thumb_func_end ov18_022292EC

	thumb_func_start ov18_022294A4
ov18_022294A4: ; 0x022294A4
	push {r3, r4}
	ldrb r4, [r0]
	ldrb r3, [r1]
	eor r3, r4
	strb r3, [r2]
	ldrb r4, [r0, #1]
	ldrb r3, [r1, #1]
	eor r3, r4
	strb r3, [r2, #1]
	ldrb r4, [r0, #2]
	ldrb r3, [r1, #2]
	eor r3, r4
	strb r3, [r2, #2]
	ldrb r4, [r0, #3]
	ldrb r3, [r1, #3]
	eor r3, r4
	strb r3, [r2, #3]
	ldrb r4, [r0, #4]
	ldrb r3, [r1, #4]
	eor r3, r4
	strb r3, [r2, #4]
	ldrb r4, [r0, #5]
	ldrb r3, [r1, #5]
	eor r3, r4
	strb r3, [r2, #5]
	ldrb r4, [r0, #6]
	ldrb r3, [r1, #6]
	eor r3, r4
	strb r3, [r2, #6]
	ldrb r3, [r0, #7]
	ldrb r0, [r1, #7]
	eor r0, r3
	strb r0, [r2, #7]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_022294A4

	thumb_func_start ov18_022294EC
ov18_022294EC: ; 0x022294EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r3, r1, #0
	add r1, r2, #0
	mov r2, #0
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrb r6, [r3, #1]
	ldrb r5, [r3, #3]
	lsl r4, r2, #8
	ldrb r2, [r3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0]
	ldrb r2, [r3, #6]
	ldrb r6, [r3, #5]
	ldrb r5, [r3, #7]
	lsl r4, r2, #8
	ldrb r2, [r3, #4]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #4]
	ldrb r2, [r3, #0xa]
	ldrb r6, [r3, #9]
	ldrb r5, [r3, #0xb]
	lsl r4, r2, #8
	ldrb r2, [r3, #8]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #8]
	ldrb r2, [r3, #0xe]
	ldrb r6, [r3, #0xd]
	ldrb r5, [r3, #0xf]
	lsl r4, r2, #8
	ldrb r2, [r3, #0xc]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0xc]
	cmp r1, #0x80
	bne _022295D0
	ldr r5, _0222979C ; =0x02246464
	ldr r2, _022297A0 ; =0x0224808C
_02229558:
	ldr r4, [r0, #0xc]
	ldr r3, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r6, #0
	and r7, r1
	ldr r1, [r0, #0]
	str r1, [sp, #4]
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	lsr r4, r4, #8
	and r6, r1
	ldr r1, [sp, #4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	eor r1, r6
	ldr r6, [r2, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r6
	eor r1, r4
	add r4, r7, #0
	eor r4, r1
	ldr r1, [sp, #8]
	eor r1, r4
	eor r3, r1
	str r3, [r0, #0x10]
	ldr r1, [r0, #4]
	eor r3, r1
	str r3, [r0, #0x14]
	ldr r1, [r0, #8]
	eor r3, r1
	str r3, [r0, #0x18]
	ldr r1, [r0, #0xc]
	eor r1, r3
	str r1, [r0, #0x1c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #0xa
	blt _022295CC
	add sp, #0x18
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_022295CC:
	add r0, #0x10
	b _02229558
_022295D0:
	ldrb r2, [r3, #0x12]
	ldrb r6, [r3, #0x11]
	ldrb r5, [r3, #0x13]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x10]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x10]
	ldrb r2, [r3, #0x16]
	ldrb r6, [r3, #0x15]
	ldrb r5, [r3, #0x17]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x14]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x14]
	cmp r1, #0xc0
	bne _0222968C
	ldr r5, _0222979C ; =0x02246464
	ldr r3, _022297A0 ; =0x0224808C
_02229604:
	ldr r4, [r0, #0x14]
	ldr r6, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0, #0]
	mov lr, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, lr
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x18]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x1c]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x24]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #8
	blt _0222967A
	add sp, #0x18
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0222967A:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x24]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0x14]
	eor r1, r2
	str r1, [r0, #0x2c]
	add r0, #0x18
	b _02229604
_0222968C:
	ldrb r2, [r3, #0x1a]
	ldrb r6, [r3, #0x19]
	ldrb r5, [r3, #0x1b]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x18]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x18]
	ldrb r2, [r3, #0x1e]
	ldrb r5, [r3, #0x1f]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x1c]
	ldrb r3, [r3, #0x1d]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x10
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x1c]
	mov r2, #1
	lsl r2, r2, #8
	cmp r1, r2
	bne _02229796
	ldr r5, _0222979C ; =0x02246464
	ldr r3, _022297A0 ; =0x0224808C
_022296C4:
	ldr r4, [r0, #0x1c]
	ldr r6, [r5, #0]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0, #0]
	mov ip, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, ip
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x24]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x2c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #7
	blt _0222973A
	add sp, #0x18
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0222973A:
	ldr r6, [r0, #0x2c]
	ldr r7, [r0, #0x10]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x16
	ldr r1, [r3, r1]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	str r1, [sp, #0x14]
	lsr r1, r6, #0x18
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	lsr r2, r6, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r6, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	eor r1, r7
	and r2, r6
	eor r2, r1
	ldr r1, [sp, #0x14]
	eor r1, r2
	add r2, r4, #0
	eor r2, r1
	str r2, [r0, #0x30]
	ldr r1, [r0, #0x14]
	eor r2, r1
	str r2, [r0, #0x34]
	ldr r1, [r0, #0x18]
	eor r2, r1
	str r2, [r0, #0x38]
	ldr r1, [r0, #0x1c]
	eor r1, r2
	str r1, [r0, #0x3c]
	add r0, #0x20
	b _022296C4
_02229796:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222979C: .word 0x02246464
_022297A0: .word 0x0224808C
	thumb_func_end ov18_022294EC

	thumb_func_start ov18_022297A4
ov18_022297A4: ; 0x022297A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov18_022294EC
	mov ip, r0
	mov r1, ip
	lsl r6, r1, #2
	mov r0, #0
	cmp r6, #0
	ble _022297EA
	lsl r2, r6, #2
	add r1, r4, #0
	add r2, r4, r2
_022297BE:
	ldr r5, [r1, #0]
	ldr r3, [r2, #0]
	add r0, r0, #4
	str r3, [r1, #0]
	str r5, [r2, #0]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	sub r6, r6, #4
	str r3, [r1, #4]
	str r5, [r2, #4]
	ldr r5, [r1, #8]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	str r5, [r2, #8]
	ldr r5, [r1, #0xc]
	ldr r3, [r2, #0xc]
	str r3, [r1, #0xc]
	str r5, [r2, #0xc]
	add r1, #0x10
	sub r2, #0x10
	cmp r0, r6
	blt _022297BE
_022297EA:
	mov r0, #1
	str r0, [sp]
	mov r0, ip
	cmp r0, #1
	bgt _022297F6
	b _0222991A
_022297F6:
	ldr r2, _02229920 ; =0x0224808C
	ldr r7, _02229924 ; =0x0224688C
_022297FA:
	add r4, #0x10
	ldr r3, [r4, #0]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0]
	ldr r3, [r4, #4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #8]
	ldr r3, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02229928 ; =0x0224648C
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _0222992C ; =0x0224848C
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02229930 ; =0x0224888C
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0xc]
	ldr r0, [sp]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp]
	cmp r1, r0
	bge _0222991A
	b _022297FA
_0222991A:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02229920: .word 0x0224808C
_02229924: .word 0x0224688C
_02229928: .word 0x0224648C
_0222992C: .word 0x0224848C
_02229930: .word 0x0224888C
	thumb_func_end ov18_022297A4

	thumb_func_start ov18_02229934
ov18_02229934: ; 0x02229934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0, #0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r5, r2
	ldrb r2, [r1, #0xe]
	ldrb r4, [r1, #0xf]
	ldr r6, [r0, #0xc]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_022299A6:
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r4, [r0, #0x10]
	ldr r3, [r1, r2]
	lsr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x40]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r3, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x48]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	lsr r1, r5, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x48]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	ldr r4, [r0, #0x18]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r2]
	str r1, [sp, #0x14]
	lsr r1, r5, #0x18
	lsl r2, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x14]
	ldr r7, [r0, #0x1c]
	eor r1, r2
	eor r1, r3
	add r2, r4, #0
	eor r2, r1
	lsl r1, r5, #0x18
	lsr r3, r1, #0x16
	ldr r1, _02229CDC ; =0x02247C8C
	add r0, #0x20
	ldr r3, [r1, r3]
	ldr r1, [sp, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02229CE0 ; =0x0224788C
	ldr r1, [r1, r4]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _02229CE4 ; =0x0224708C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0xc]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _02229CE8 ; =0x0224748C
	ldr r4, [r4, r5]
	eor r4, r6
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	eor r1, r7
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _02229B70
	lsl r3, r1, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r4, [r0, #0]
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE0 ; =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02229CE4 ; =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE8 ; =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE0 ; =0x0224788C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02229CE4 ; =0x0224708C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	lsr r5, r2, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02229CE8 ; =0x0224748C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r6, [r0, #8]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CDC ; =0x02247C8C
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CE0 ; =0x0224788C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _02229CE4 ; =0x0224708C
	lsl r2, r2, #0x18
	ldr r7, [r3, r4]
	lsr r3, r1, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CE8 ; =0x0224748C
	lsr r1, r1, #0x18
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	eor r3, r4
	eor r3, r5
	add r5, r6, #0
	eor r5, r3
	lsr r3, r2, #0x16
	ldr r2, _02229CDC ; =0x02247C8C
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x44]
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x16
	ldr r2, _02229CE0 ; =0x0224788C
	ldr r2, [r2, r4]
	lsl r4, r1, #2
	ldr r1, _02229CE4 ; =0x0224708C
	ldr r6, [r1, r4]
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02229CE8 ; =0x0224748C
	ldr r1, [r1, r4]
	eor r1, r6
	eor r1, r2
	eor r1, r3
	add r6, r7, #0
	eor r6, r1
	b _022299A6
_02229B70:
	ldr r3, [r0, #0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02229CEC ; =0x0224808C
	lsl r6, r6, #0x10
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	ldr r4, [sp, #0x10]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r2, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r2, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	and r2, r0
	lsr r0, r1, #0x18
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r3, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x10
	and r1, r3
	eor r0, r1
	eor r0, r2
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02229CDC: .word 0x02247C8C
_02229CE0: .word 0x0224788C
_02229CE4: .word 0x0224708C
_02229CE8: .word 0x0224748C
_02229CEC: .word 0x0224808C
	thumb_func_end ov18_02229934

	thumb_func_start ov18_02229CF0
ov18_02229CF0: ; 0x02229CF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0, #0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #0x40]
	ldrb r2, [r1, #0xe]
	ldr r5, [r0, #0xc]
	ldrb r4, [r1, #0xf]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r6, r5, #0
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_02229D66:
	ldr r1, [sp, #8]
	ldr r5, [r0, #0x10]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r4, [r1, r2]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A0A4 ; =0x0224888C
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x40]
	ldr r5, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r4, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r3, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r7, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A0A4 ; =0x0224888C
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x44]
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	ldr r3, [r0, #0x18]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _0222A09C ; =0x0224648C
	ldr r1, [r1, r4]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #0x18
	lsl r4, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A0A4 ; =0x0224888C
	ldr r4, [r4, r5]
	eor r4, r1
	ldr r1, [sp, #0x14]
	eor r1, r4
	eor r1, r2
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x1c]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _0222A098 ; =0x0224688C
	add r0, #0x20
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A09C ; =0x0224648C
	ldr r7, [r4, r5]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _0222A0A0 ; =0x0224848C
	ldr r6, [r4, r5]
	ldr r4, [sp, #0x40]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _0222A0A4 ; =0x0224888C
	ldr r4, [r4, r5]
	eor r4, r6
	eor r4, r7
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _02229F2A
	ldr r3, [sp, #0x44]
	ldr r4, [r0, #0]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A09C ; =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _0222A0A0 ; =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	lsr r5, r1, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A0A4 ; =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	lsl r3, r2, #0x18
	lsr r5, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r4, [r0, #4]
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A09C ; =0x0224648C
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _0222A0A0 ; =0x0224848C
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _0222A0A4 ; =0x0224888C
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r6, [r0, #8]
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r1, r1, #0x18
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A09C ; =0x0224648C
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _0222A0A0 ; =0x0224848C
	lsr r2, r2, #0x10
	ldr r7, [r3, r4]
	ldr r3, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r3, r3, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A0A4 ; =0x0224888C
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	eor r3, r4
	eor r3, r5
	eor r3, r6
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x10]
	ldr r5, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A098 ; =0x0224688C
	ldr r4, [r3, r4]
	ldr r3, [sp, #0x44]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r6, r3, #0x16
	ldr r3, _0222A09C ; =0x0224648C
	ldr r3, [r3, r6]
	lsl r6, r1, #2
	ldr r1, _0222A0A0 ; =0x0224848C
	ldr r1, [r1, r6]
	lsr r6, r2, #0x16
	ldr r2, _0222A0A4 ; =0x0224888C
	ldr r2, [r2, r6]
	add r6, r5, #0
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	b _02229D66
_02229F2A:
	ldr r3, [r0, #0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x44]
	lsl r6, r6, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _0222A0A8 ; =0x02246C8C
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	lsl r4, r2, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	lsl r4, r1, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	ldr r0, [sp, #0x10]
	lsr r2, r2, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r6, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r1, r1, #2
	and r0, r6
	mov r6, #0xff
	lsr r2, r2, #0x16
	ldr r1, [r3, r1]
	ldr r3, [r3, r2]
	mov r2, #0xff
	lsl r6, r6, #0x18
	lsl r2, r2, #0x10
	and r1, r6
	and r2, r3
	eor r1, r2
	eor r0, r1
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A098: .word 0x0224688C
_0222A09C: .word 0x0224648C
_0222A0A0: .word 0x0224848C
_0222A0A4: .word 0x0224888C
_0222A0A8: .word 0x02246C8C
	thumb_func_end ov18_02229CF0

	thumb_func_start ov18_0222A0AC
ov18_0222A0AC: ; 0x0222A0AC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _0222A0C4 ; =0x67452301
	str r1, [r0, #0]
	ldr r1, _0222A0C8 ; =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _0222A0CC ; =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _0222A0D0 ; =0x10325476
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
_0222A0C4: .word 0x67452301
_0222A0C8: .word 0xEFCDAB89
_0222A0CC: .word 0x98BADCFE
_0222A0D0: .word 0x10325476
	thumb_func_end ov18_0222A0AC

	thumb_func_start ov18_0222A0D4
ov18_0222A0D4: ; 0x0222A0D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0x10]
	add r6, r2, #0
	lsr r2, r1, #3
	mov r0, #0x3f
	and r0, r2
	lsl r2, r6, #3
	add r1, r1, r2
	str r1, [r5, #0x10]
	cmp r1, r2
	bhs _0222A0F4
	ldr r1, [r5, #0x14]
	add r1, r1, #1
	str r1, [r5, #0x14]
_0222A0F4:
	ldr r2, [r5, #0x14]
	lsr r1, r6, #0x1d
	add r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #0x40
	sub r4, r1, r0
	cmp r6, r4
	blo _0222A13A
	add r1, r5, #0
	add r1, #0x18
	add r0, r1, r0
	add r1, r7, #0
	add r2, r4, #0
	bl ov18_0222AA40
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x18
	bl ov18_0222A1A0
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	bhs _0222A136
_0222A124:
	add r0, r5, #0
	add r1, r7, r4
	bl ov18_0222A1A0
	add r4, #0x40
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	blo _0222A124
_0222A136:
	mov r0, #0
	b _0222A13C
_0222A13A:
	mov r4, #0
_0222A13C:
	add r5, #0x18
	add r0, r5, r0
	add r1, r7, r4
	sub r2, r6, r4
	bl ov18_0222AA40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_0222A0D4

	thumb_func_start ov18_0222A14C
ov18_0222A14C: ; 0x0222A14C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, #0x10
	mov r2, #8
	bl ov18_0222A9E8
	ldr r0, [r4, #0x10]
	lsr r1, r0, #3
	mov r0, #0x3f
	and r1, r0
	cmp r1, #0x38
	bhs _0222A16E
	mov r0, #0x38
	b _0222A170
_0222A16E:
	mov r0, #0x78
_0222A170:
	sub r2, r0, r1
	ldr r1, _0222A19C ; =0x022498B8
	add r0, r4, #0
	bl ov18_0222A0D4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #8
	bl ov18_0222A0D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl ov18_0222A9E8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl ov18_0222AA58
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222A19C: .word 0x022498B8
	thumb_func_end ov18_0222A14C

	thumb_func_start ov18_0222A1A0
ov18_0222A1A0: ; 0x0222A1A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	ldr r0, [r7, #0]
	mov r2, #0x40
	str r0, [sp]
	add r0, sp, #0x44
	ldr r4, [r7, #4]
	ldr r5, [r7, #8]
	ldr r6, [r7, #0xc]
	bl ov18_0222AA14
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp, #4]
	mvn r0, r4
	and r1, r5
	and r0, r6
	orr r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _0222A578 ; =0x28955B88
	sub r1, r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	lsl r1, r0, #7
	lsr r0, r0, #0x19
	orr r0, r1
	add r3, r0, r4
	ldr r0, [sp, #0x48]
	mvn r1, r3
	str r0, [sp, #8]
	add r0, r3, #0
	and r0, r4
	and r1, r5
	orr r1, r0
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, _0222A57C ; =0x173848AA
	sub r0, r1, r0
	add r0, r6, r0
	lsl r1, r0, #0xc
	lsr r0, r0, #0x14
	orr r0, r1
	add r2, r0, r3
	ldr r0, [sp, #0x4c]
	mvn r1, r2
	str r0, [sp, #0xc]
	add r0, r2, #0
	and r0, r3
	and r1, r4
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, _0222A580 ; =0x242070DB
	add r0, r1, r0
	add r0, r5, r0
	lsl r1, r0, #0x11
	lsr r0, r0, #0xf
	orr r0, r1
	add r1, r0, r2
	ldr r0, [sp, #0x50]
	mvn r5, r1
	str r0, [sp, #0x10]
	add r0, r1, #0
	and r0, r2
	and r5, r3
	orr r5, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r5
	ldr r0, _0222A584 ; =0x3E423112
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x54]
	add r0, r0, r1
	str r4, [sp, #0x14]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x14]
	add r5, r4, r5
	ldr r4, _0222A588 ; =0x0A83F051
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x58]
	add r3, r3, r0
	str r4, [sp, #0x18]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _0222A58C ; =0x4787C62A
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x5c]
	add r2, r2, r3
	str r4, [sp, #0x1c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A590 ; =0x57CFB9ED
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x60]
	add r1, r1, r2
	str r4, [sp, #0x20]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x20]
	add r5, r4, r5
	ldr r4, _0222A594 ; =0x02B96AFF
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x64]
	add r0, r0, r1
	str r4, [sp, #0x24]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x24]
	add r5, r4, r5
	ldr r4, _0222A598 ; =0x698098D8
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x68]
	add r3, r3, r0
	str r4, [sp, #0x28]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x28]
	add r5, r4, r5
	ldr r4, _0222A59C ; =0x74BB0851
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x6c]
	add r2, r2, r3
	str r4, [sp, #0x2c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x2c]
	add r5, r4, r5
	ldr r4, _0222A5A0 ; =0x0000A44F
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x70]
	add r1, r1, r2
	str r4, [sp, #0x30]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _0222A5A4 ; =0x76A32842
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	add r0, r0, r1
	ldr r4, [sp, #0x74]
	mvn r5, r0
	str r4, [sp, #0x34]
	add r4, r0, #0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x34]
	add r5, r4, r5
	ldr r4, _0222A5A8 ; =0x6B901122
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	add r4, r3, r0
	ldr r3, [sp, #0x78]
	mvn r5, r4
	str r3, [sp, #0x38]
	add r3, r4, #0
	and r3, r0
	and r5, r1
	orr r5, r3
	ldr r3, [sp, #0x38]
	add r5, r3, r5
	ldr r3, _0222A5AC ; =0x02678E6D
	sub r3, r5, r3
	add r2, r2, r3
	lsl r3, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r3
	add r3, r2, r4
	mvn r2, r3
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x7c]
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	add r2, r3, #0
	and r2, r4
	and r5, r0
	orr r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _0222A5B0 ; =0x5986BC72
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r2
	add r2, r1, r3
	ldr r1, [sp, #0x80]
	add r5, r2, #0
	mvn r6, r2
	mov ip, r1
	add r1, r6, #0
	and r5, r3
	and r1, r4
	orr r5, r1
	mov r1, ip
	add r5, r1, r5
	ldr r1, _0222A5B4 ; =0x49B40821
	add r1, r5, r1
	add r0, r0, r1
	lsl r1, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r1
	add r1, r0, r2
	ldr r5, [sp, #0x3c]
	add r0, r1, #0
	and r0, r3
	and r5, r2
	orr r5, r0
	ldr r0, [sp, #8]
	add r5, r0, r5
	ldr r0, _0222A5B8 ; =0x09E1DA9E
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r0, r0, r1
	add r4, r0, #0
	add r5, r1, #0
	and r4, r2
	bic r5, r2
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A5BC ; =0x3FBF4CC0
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #9
	lsr r3, r3, #0x17
	orr r3, r4
	add r3, r3, r0
	add r4, r3, #0
	mvn r5, r1
	and r4, r1
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _0222A5C0 ; =0x265E5A51
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xe
	lsr r2, r2, #0x12
	orr r2, r4
	add r2, r2, r3
	add r4, r2, #0
	mvn r5, r0
	and r4, r0
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #4]
	add r5, r4, r5
	ldr r4, _0222A5C4 ; =0x16493856
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r4
	add r1, r1, r2
	add r4, r1, #0
	mvn r5, r3
	and r4, r3
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _0222A5C8 ; =0x29D0EFA3
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r4, r0, r1
	add r0, r4, #0
	mvn r5, r2
	and r0, r2
	and r5, r1
	orr r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r0, r5
	ldr r0, _0222A5CC ; =0x02441453
	add r0, r5, r0
	add r0, r3, r0
	lsl r3, r0, #9
	lsr r0, r0, #0x17
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _0222A5D0 ; =0x275E197F
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0x14]
	add r5, r2, r5
	ldr r2, _0222A5D4 ; =0x182C0438
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x28]
	add r2, r1, r2
	ldr r1, _0222A5D8 ; =0x21E1CDE6
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #5
	lsr r1, r1, #0x1b
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x40]
	add r4, r1, r4
	ldr r1, _0222A5DC ; =0x3CC8F82A
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #9
	lsr r1, r1, #0x17
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	mvn r4, r5
	and r3, r5
	and r4, r2
	orr r4, r3
	ldr r3, [sp, #0x10]
	add r4, r3, r4
	ldr r3, _0222A5E0 ; =0x0B2AF279
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	mvn r3, r2
	and r0, r2
	and r3, r1
	orr r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _0222A5E4 ; =0x455A14ED
	add r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _0222A5E8 ; =0x561C16FB
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _0222A5EC ; =0x03105C08
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #9
	lsr r1, r1, #0x17
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldr r1, _0222A5F0 ; =0x676F02D9
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xe
	lsr r1, r1, #0x12
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x34]
	add r4, r1, r4
	ldr r1, _0222A5F4 ; =0x72D5B376
	b _0222A5F8
	nop
_0222A578: .word 0x28955B88
_0222A57C: .word 0x173848AA
_0222A580: .word 0x242070DB
_0222A584: .word 0x3E423112
_0222A588: .word 0x0A83F051
_0222A58C: .word 0x4787C62A
_0222A590: .word 0x57CFB9ED
_0222A594: .word 0x02B96AFF
_0222A598: .word 0x698098D8
_0222A59C: .word 0x74BB0851
_0222A5A0: .word 0x0000A44F
_0222A5A4: .word 0x76A32842
_0222A5A8: .word 0x6B901122
_0222A5AC: .word 0x02678E6D
_0222A5B0: .word 0x5986BC72
_0222A5B4: .word 0x49B40821
_0222A5B8: .word 0x09E1DA9E
_0222A5BC: .word 0x3FBF4CC0
_0222A5C0: .word 0x265E5A51
_0222A5C4: .word 0x16493856
_0222A5C8: .word 0x29D0EFA3
_0222A5CC: .word 0x02441453
_0222A5D0: .word 0x275E197F
_0222A5D4: .word 0x182C0438
_0222A5D8: .word 0x21E1CDE6
_0222A5DC: .word 0x3CC8F82A
_0222A5E0: .word 0x0B2AF279
_0222A5E4: .word 0x455A14ED
_0222A5E8: .word 0x561C16FB
_0222A5EC: .word 0x03105C08
_0222A5F0: .word 0x676F02D9
_0222A5F4: .word 0x72D5B376
_0222A5F8:
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x18]
	add r4, r3, r4
	ldr r3, _0222A968 ; =0x0005C6BE
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _0222A96C ; =0x788E097F
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x30]
	add r5, r0, r5
	ldr r0, _0222A970 ; =0x6D9D6122
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _0222A974 ; =0x021AC7F4
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #8]
	add r2, r1, r2
	ldr r1, _0222A978 ; =0x5B4115BC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #4
	lsr r1, r1, #0x1c
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x14]
	add r4, r1, r4
	ldr r1, _0222A97C ; =0x4BDECFA9
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	add r4, r3, r4
	ldr r3, _0222A980 ; =0x0944B4A0
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x2c]
	add r3, r0, r3
	ldr r0, _0222A984 ; =0x41404390
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x17
	lsr r0, r0, #9
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _0222A988 ; =0x289B7EC6
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #4]
	add r5, r2, r5
	ldr r2, _0222A98C ; =0x155ED806
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	add r2, r1, r2
	ldr r1, _0222A990 ; =0x2B10CF7B
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x1c]
	add r4, r1, r4
	ldr r1, _0222A994 ; =0x04881D05
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x17
	lsr r1, r1, #9
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x28]
	add r4, r3, r4
	ldr r3, _0222A998 ; =0x262B2FC7
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x34]
	add r3, r0, r3
	ldr r0, _0222A99C ; =0x1924661B
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _0222A9A0 ; =0x1FA27CF8
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _0222A9A4 ; =0x3B53A99B
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, _0222A9A8 ; =0x0BD6DDBC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #0x20]
	add r4, r1, r4
	ldr r1, _0222A9AC ; =0x432AFF97
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x40]
	add r4, r3, r4
	ldr r3, _0222A9B0 ; =0x546BDC59
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r4, r0, r1
	mvn r0, r2
	orr r0, r4
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0x18]
	add r3, r0, r3
	ldr r0, _0222A9B4 ; =0x036C5FC7
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r3
	add r3, r0, r4
	mvn r0, r1
	orr r0, r3
	add r5, r4, #0
	eor r5, r0
	ldr r0, [sp, #0x34]
	add r5, r0, r5
	ldr r0, _0222A9B8 ; =0x655B59C3
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r2
	add r0, r0, r3
	mvn r2, r4
	orr r2, r0
	add r5, r3, #0
	eor r5, r2
	ldr r2, [sp, #0x10]
	add r5, r2, r5
	ldr r2, _0222A9BC ; =0x70F3336E
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #0x2c]
	add r2, r1, r2
	ldr r1, _0222A9C0 ; =0x00100B83
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xf
	lsr r1, r1, #0x11
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #8]
	add r4, r1, r4
	ldr r1, _0222A9C4 ; =0x7A7BA22F
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x24]
	add r4, r3, r4
	ldr r3, _0222A9C8 ; =0x6FA87E4F
	add r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r3
	add r3, r0, r1
	mvn r0, r2
	orr r0, r3
	eor r0, r1
	mov r4, ip
	add r4, r4, r0
	ldr r0, _0222A9CC ; =0x01D31920
	sub r0, r4, r0
	add r0, r5, r0
	lsl r4, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r4
	add r0, r0, r3
	mvn r4, r1
	orr r4, r0
	add r5, r3, #0
	eor r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _0222A9D0 ; =0x5CFEBCEC
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xf
	lsr r2, r2, #0x11
	orr r2, r4
	add r4, r2, r0
	mvn r2, r3
	orr r2, r4
	add r5, r0, #0
	eor r5, r2
	ldr r2, [sp, #0x38]
	add r5, r2, r5
	ldr r2, _0222A9D4 ; =0x4E0811A1
	add r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r2
	add r2, r1, r4
	mvn r1, r0
	orr r1, r2
	add r5, r4, #0
	eor r5, r1
	ldr r1, [sp, #0x14]
	add r5, r1, r5
	ldr r1, _0222A9D8 ; =0x08AC817E
	sub r1, r5, r1
	add r1, r3, r1
	lsl r3, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r3
	add r1, r1, r2
	mvn r3, r4
	orr r3, r1
	add r5, r2, #0
	eor r5, r3
	ldr r3, [sp, #0x30]
	add r5, r3, r5
	ldr r3, _0222A9DC ; =0x42C50DCB
	sub r3, r5, r3
	add r0, r0, r3
	lsl r3, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r3
	add r5, r0, r1
	mvn r0, r2
	orr r0, r5
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0xc]
	add r3, r0, r3
	ldr r0, _0222A9E0 ; =0x2AD7D2BB
	add r0, r3, r0
	add r0, r4, r0
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r3, r0, r5
	mvn r0, r1
	orr r0, r3
	add r4, r5, #0
	eor r4, r0
	ldr r0, [sp, #0x28]
	add r4, r0, r4
	ldr r0, _0222A9E4 ; =0x14792C6F
	sub r0, r4, r0
	add r0, r2, r0
	lsl r2, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r2
	ldr r2, [r7, #0]
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r7, #0]
	ldr r1, [r7, #4]
	mov r2, #0x40
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	mov r1, #0
	add r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r0, r0, r5
	str r0, [r7, #0xc]
	add r0, sp, #0x44
	bl ov18_0222AA58
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222A968: .word 0x0005C6BE
_0222A96C: .word 0x788E097F
_0222A970: .word 0x6D9D6122
_0222A974: .word 0x021AC7F4
_0222A978: .word 0x5B4115BC
_0222A97C: .word 0x4BDECFA9
_0222A980: .word 0x0944B4A0
_0222A984: .word 0x41404390
_0222A988: .word 0x289B7EC6
_0222A98C: .word 0x155ED806
_0222A990: .word 0x2B10CF7B
_0222A994: .word 0x04881D05
_0222A998: .word 0x262B2FC7
_0222A99C: .word 0x1924661B
_0222A9A0: .word 0x1FA27CF8
_0222A9A4: .word 0x3B53A99B
_0222A9A8: .word 0x0BD6DDBC
_0222A9AC: .word 0x432AFF97
_0222A9B0: .word 0x546BDC59
_0222A9B4: .word 0x036C5FC7
_0222A9B8: .word 0x655B59C3
_0222A9BC: .word 0x70F3336E
_0222A9C0: .word 0x00100B83
_0222A9C4: .word 0x7A7BA22F
_0222A9C8: .word 0x6FA87E4F
_0222A9CC: .word 0x01D31920
_0222A9D0: .word 0x5CFEBCEC
_0222A9D4: .word 0x4E0811A1
_0222A9D8: .word 0x08AC817E
_0222A9DC: .word 0x42C50DCB
_0222A9E0: .word 0x2AD7D2BB
_0222A9E4: .word 0x14792C6F
	thumb_func_end ov18_0222A1A0

	thumb_func_start ov18_0222A9E8
ov18_0222A9E8: ; 0x0222A9E8
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _0222AA10
_0222A9F0:
	ldr r5, [r1, #0]
	add r3, r0, r4
	strb r5, [r0, r4]
	ldr r5, [r1, #0]
	add r4, r4, #4
	lsr r5, r5, #8
	strb r5, [r3, #1]
	ldr r5, [r1, #0]
	lsr r5, r5, #0x10
	strb r5, [r3, #2]
	ldr r5, [r1, #0]
	add r1, r1, #4
	lsr r5, r5, #0x18
	strb r5, [r3, #3]
	cmp r4, r2
	blo _0222A9F0
_0222AA10:
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222A9E8

	thumb_func_start ov18_0222AA14
ov18_0222AA14: ; 0x0222AA14
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r2, #0
	bls _0222AA3A
_0222AA1C:
	add r6, r1, r7
	ldrb r3, [r6, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r6, #2]
	ldrb r6, [r6, #1]
	lsl r4, r3, #0x10
	ldrb r3, [r1, r7]
	lsl r6, r6, #8
	add r7, r7, #4
	orr r3, r6
	orr r3, r4
	orr r3, r5
	stmia r0!, {r3}
	cmp r7, r2
	blo _0222AA1C
_0222AA3A:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA14

	thumb_func_start ov18_0222AA40
ov18_0222AA40: ; 0x0222AA40
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _0222AA52
_0222AA48:
	ldrb r3, [r1, r4]
	strb r3, [r0, r4]
	add r4, r4, #1
	cmp r4, r2
	blo _0222AA48
_0222AA52:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA40

	thumb_func_start ov18_0222AA58
ov18_0222AA58: ; 0x0222AA58
	mov r3, #0
	cmp r2, #0
	bls _0222AA6C
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
_0222AA62:
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r3, r2
	blo _0222AA62
_0222AA6C:
	bx lr
	; .align 2, 0
	thumb_func_end ov18_0222AA58

	thumb_func_start ov18_0222AA70
ov18_0222AA70: ; 0x0222AA70
	push {r4, r5, r6, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	bl ov18_0222A0AC
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_0222A0D4
	add r0, r5, #0
	add r1, sp, #0
	bl ov18_0222A14C
	add sp, #0x58
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov18_0222AA70

	thumb_func_start ov18_0222AA98
ov18_0222AA98: ; 0x0222AA98
	push {r3, lr}
	bl sub_020C3880
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _0222AAB0 ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	bl sub_020E1ED4
	pop {r3, pc}
	; .align 2, 0
_0222AAB0: .word 0x000082EA
	thumb_func_end ov18_0222AA98

	thumb_func_start ov18_0222AAB4
ov18_0222AAB4: ; 0x0222AAB4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mul r4, r1
	ldr r1, _0222AAD4 ; =0x02251D10
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r5, r0, #0
	beq _0222AACE
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
_0222AACE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0222AAD4: .word 0x02251D10
	thumb_func_end ov18_0222AAB4

	thumb_func_start ov18_0222AAD8
ov18_0222AAD8: ; 0x0222AAD8
	push {r3, lr}
	ldr r1, _0222AAE4 ; =0x02251D10
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_0222AAE4: .word 0x02251D10
	thumb_func_end ov18_0222AAD8

	thumb_func_start ov18_0222AAE8
ov18_0222AAE8: ; 0x0222AAE8
	push {r4, r5}
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf0
	and r1, r3
	asr r5, r1, #4
	mov r1, #0xf
	add r2, r0, #0
	mov r4, #0
	and r1, r3
_0222AAFC:
	cmp r5, #9
	bgt _0222AB04
	add r5, #0x30
	b _0222AB06
_0222AB04:
	add r5, #0x37
_0222AB06:
	add r4, r4, #1
	strb r5, [r2]
	add r2, r2, #1
	add r5, r1, #0
	cmp r4, #2
	blt _0222AAFC
	mov r1, #0
	strb r1, [r2]
	sub r0, r2, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov18_0222AAE8

	thumb_func_start ov18_0222AB1C
ov18_0222AB1C: ; 0x0222AB1C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x3a
_0222AB28:
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r0, r4, #0
	add r6, r6, #1
	bl ov18_0222AAE8
	add r0, r4, r0
	add r4, r0, #0
	cmp r5, #5
	bge _0222AB40
	add r4, r0, #1
	strb r7, [r0]
_0222AB40:
	add r5, r5, #1
	cmp r5, #6
	blt _0222AB28
	mov r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_0222AB1C

	thumb_func_start ov18_0222AB50
ov18_0222AB50: ; 0x0222AB50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0222AC20 ; =0x02251D10
	ldr r0, [r0, #0x38]
	cmp r0, #1
	blt _0222AB6A
	cmp r0, #5
	bgt _0222AB6A
	mov r0, #9
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0222AB6A:
	ldr r5, _0222AC24 ; =0x02249838
	ldr r0, _0222AC20 ; =0x02251D10
	mov r6, #7
	str r1, [r5, #0x10]
	str r6, [r0, #0x38]
	str r2, [r0, #0x7c]
	ldr r2, [sp, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #8]
	add r0, r1, #0
	bl ov18_02227CBC
	mov r2, #1
	ldr r1, _0222AC20 ; =0x02251D10
	cmp r0, #0
	str r2, [r1, #0x74]
	bge _0222AB96
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222AB96:
	add r0, r5, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx r1
	ldr r1, _0222AC20 ; =0x02251D10
	cmp r0, #0
	str r0, [r1, #0x30]
	bne _0222ABB0
	add r0, r6, #0
	sub r0, #8
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABB0:
	bl sub_020C1F24
	cmp r0, #1
	beq _0222ABC4
	add r0, r6, #0
	ldr r1, _0222AC20 ; =0x02251D10
	sub r0, #0x10
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_0222ABC4:
	add r0, r5, #0
	ldr r3, [r0, #8]
	ldr r0, _0222AC28 ; =0x02251DBC
	str r3, [sp]
	str r4, [sp, #4]
	ldr r4, _0222AC20 ; =0x02251D10
	ldr r1, _0222AC2C ; =ov18_022290FC
	ldr r5, [r4, #0x30]
	mov r4, #7
	bic r3, r4
	mov r2, #0
	add r3, r5, r3
	bl sub_020C1F34
	ldr r0, _0222AC20 ; =0x02251D10
	mov r1, #1
	str r1, [r0, #0x38]
	bl ov18_0222AA98
	ldr r1, _0222AC30 ; =0x0000EA60
	ldr r5, _0222AC34 ; =0x02251E7C
	add r1, r0, r1
	ldr r0, _0222AC24 ; =0x02249838
	add r4, r6, #0
	str r1, [r0, #0xc]
	mov r0, #0
	ldr r1, _0222AC20 ; =0x02251D10
	add r2, r0, #0
	str r0, [r1, #0x10]
	add r1, r0, #0
	add r3, r0, #0
_0222AC02:
	stmia r5!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _0222AC02
	stmia r5!, {r0, r1}
	bl ov18_0222AD18
	ldr r0, _0222AC28 ; =0x02251DBC
	bl sub_020C22D0
	ldr r1, _0222AC20 ; =0x02251D10
	mov r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222AC20: .word 0x02251D10
_0222AC24: .word 0x02249838
_0222AC28: .word 0x02251DBC
_0222AC2C: .word ov18_022290FC
_0222AC30: .word 0x0000EA60
_0222AC34: .word 0x02251E7C
	thumb_func_end ov18_0222AB50

	thumb_func_start ov18_0222AC38
ov18_0222AC38: ; 0x0222AC38
	push {r4, r5, r6, lr}
	ldr r4, _0222ACC4 ; =0x02251D10
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0222ACA8
	ldr r6, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r5, #0x64
	b _0222AC52
_0222AC4C:
	add r0, r5, #0
	bl sub_020C24A4
_0222AC52:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	blt _0222AC5C
	cmp r0, #5
	ble _0222AC4C
_0222AC5C:
	mov r0, #0x7d
	lsl r0, r0, #2
	bl sub_020C24A4
	ldr r0, _0222ACC8 ; =0x02251DBC
	bl sub_020C2204
	cmp r0, #0
	bne _0222AC86
	ldr r4, _0222ACC8 ; =0x02251DBC
_0222AC70:
	add r0, r4, #0
	bl sub_020C22D0
	add r0, r4, #0
	bl sub_020C21D4
	add r0, r4, #0
	bl sub_020C2204
	cmp r0, #0
	beq _0222AC70
_0222AC86:
	ldr r1, _0222ACC4 ; =0x02251D10
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0222AC98
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _0222ACC4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x30]
_0222AC98:
	ldr r0, _0222ACC4 ; =0x02251D10
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x38]
	cmp r6, r0
	beq _0222ACA8
	bl ov18_0222AD18
_0222ACA8:
	ldr r0, _0222ACC4 ; =0x02251D10
	ldr r0, [r0, #0x74]
	cmp r0, #0
	ble _0222ACBC
	bl ov18_02227D60
	ldr r1, _0222ACC4 ; =0x02251D10
	mov r2, #0
	str r2, [r1, #0x74]
	pop {r4, r5, r6, pc}
_0222ACBC:
	mov r0, #9
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_0222ACC4: .word 0x02251D10
_0222ACC8: .word 0x02251DBC
	thumb_func_end ov18_0222AC38

	thumb_func_start ov18_0222ACCC
ov18_0222ACCC: ; 0x0222ACCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222ACFC ; =0x02251D10
	ldr r0, [r0, #0x38]
	str r0, [r4, #0]
	ldr r0, _0222AD00 ; =0x02249838
	ldr r1, [r0, #0xc]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0222ACE4
	b _0222ACEE
_0222ACE4:
	bl ov18_0222AA98
	ldr r1, _0222AD00 ; =0x02249838
	ldr r1, [r1, #0xc]
	sub r0, r1, r0
_0222ACEE:
	str r0, [r4, #4]
	ldr r0, _0222ACFC ; =0x02251D10
	ldr r0, [r0, #0x78]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_0222ACFC: .word 0x02251D10
_0222AD00: .word 0x02249838
	thumb_func_end ov18_0222ACCC

	thumb_func_start ov18_0222AD04
ov18_0222AD04: ; 0x0222AD04
	push {r3, lr}
	ldr r1, _0222AD14 ; =0x02251E7C
	mov r2, #0xe8
	bl sub_020D50B8
	mov r0, #1
	pop {r3, pc}
	nop
_0222AD14: .word 0x02251E7C
	thumb_func_end ov18_0222AD04

	thumb_func_start ov18_0222AD18
ov18_0222AD18: ; 0x0222AD18
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl ov18_0222ACCC
	ldr r1, _0222AD30 ; =0x02251D10
	add r0, sp, #0
	ldr r1, [r1, #0x7c]
	blx r1
	add sp, #0xc
	pop {pc}
	nop
_0222AD30: .word 0x02251D10
	thumb_func_end ov18_0222AD18