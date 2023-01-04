	.include "macros/function.inc"
	.include "overlay018/ov18_022246C4.inc"

	.extern Unk_ov4_0221DE40
	.extern Unk_ov18_02251B60
	.extern Unk_ov18_02251B6C

	.text


	thumb_func_start ov18_022246C4
ov18_022246C4: ; 0x022246C4
	push {r3, lr}
	ldr r1, _022246D0 ; =0x02251B60
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	nop
_022246D0: .word Unk_ov18_02251B60
	thumb_func_end ov18_022246C4

	thumb_func_start ov18_022246D4
ov18_022246D4: ; 0x022246D4
	push {r3, lr}
	ldr r1, _022246E0 ; =0x02251B6C
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	nop
_022246E0: .word Unk_ov18_02251B6C
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
_022247BC: .word Unk_ov18_02251B60
_022247C0: .word Unk_ov18_02251B6C
_022247C4: .word 0x00000116
_022247C8: .word 0x000005F8
_022247CC: .word Unk_ov18_02250D78
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
	bl _s32_div_f
	str r0, [sp, #0x14]
	mov r1, #0xfa
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	bl _s32_div_f
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
_02224B38: .word Unk_ov18_02250D78
_02224B3C: .word 0x00000116
_02224B40: .word Unk_ov18_02250D7C
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
_02224EA0: .word Unk_ov18_02250D7C
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
_022251DC: .word Unk_ov18_02250D78
_022251E0: .word Unk_ov18_02250D7C
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
_0222522C: .word Unk_ov18_02250D78
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
_02225274: .word Unk_ov18_02251AD8
_02225278: .word Unk_ov18_02250D78
_0222527C: .word Unk_ov18_02250D9C
_02225280: .word 0x02250D98
_02225284: .word 0xC0A80B01
	thumb_func_end ov18_02225230

	thumb_func_start ov18_02225288
ov18_02225288: ; 0x02225288
	ldr r1, _02225290 ; =0x02250D78
	str r0, [r1, #0x10]
	bx lr
	nop
_02225290: .word Unk_ov18_02250D78
	thumb_func_end ov18_02225288

	thumb_func_start ov18_02225294
ov18_02225294: ; 0x02225294
	ldr r0, _0222529C ; =0x02250D78
	ldr r0, [r0, #0x10]
	bx lr
	nop
_0222529C: .word Unk_ov18_02250D78
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
_0222548C: .word Unk_ov18_02250D78
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
_0222574C: .word Unk_ov18_02250DB8
_02225750: .word Unk_ov18_02250D78
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
_02225820: .word Unk_ov18_02251438
_02225824: .word Unk_ov18_02250DB8
_02225828: .word Unk_ov18_02250D78
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
_022259C0: .word Unk_ov18_02251AD8
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
_02225A04: .word Unk_ov18_02251AD8
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
_02225B0C: .word Unk_ov18_02250D78
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
_02225E7C: .word Unk_ov18_02250D78
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
_02226018: .word Unk_ov18_02250D78
_0222601C: .word 0x000005DC
_02226020: .word Unk_ov18_02251AD8
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
_022260F8: .word Unk_ov18_02250D78
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
_02226164: .word Unk_ov18_02250D78
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
_022261F8: .word Unk_ov18_02250D78
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
_0222624C: .word Unk_ov18_02251AD8
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
_02226308: .word Unk_ov18_02250D78
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
_02226384: .word Unk_ov18_02251AE0
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
_0222640C: .word Unk_ov18_02251AE0
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
	bl _u32_div_f
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
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	add r0, r6, r0
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5, #0]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl _u32_div_f
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
_02226508: .word Unk_ov18_02251038
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
	bl _s32_div_f
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
_02226694: .word Unk_ov18_02251B60
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
_022266A4: .word Unk_ov18_02251B6C
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
	bl OS_Sleep
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022266E4
_022266F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022266F4: .word 0x02249794
_022266F8: .word 0x0224979C
_022266FC: .word Unk_ov4_0221DE40
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
	ldr r3, _02226750 ; =MI_CpuCopy8
	bx r3
	nop
_02226750: .word MI_CpuCopy8
	thumb_func_end ov18_02226744

	thumb_func_start ov18_02226754
ov18_02226754: ; 0x02226754
	ldr r3, _0222675C ; =MI_CpuFill8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	; .align 2, 0
_0222675C: .word MI_CpuFill8
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
	bl _ull_mul
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
	bl _ull_mul
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
	ldr r3, _022267E0 ; =ov18_02208324
	bx r3
	; .align 2, 0
_022267E0: .word ov4_02208324
	thumb_func_end ov18_022267DC

	thumb_func_start ov18_022267E4
ov18_022267E4: ; 0x022267E4
	ldr r3, _022267EC ; =ov18_02208350
	strb r2, [r1]
	bx r3
	nop
_022267EC: .word ov4_02208350
	thumb_func_end ov18_022267E4

	thumb_func_start ov18_022267F0
ov18_022267F0: ; 0x022267F0
	ldr r3, _022267F4 ; =ov18_02208540
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
	bl RTC_GetTime
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
_022268EC: .word Unk_ov18_02250D78
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

	.rodata


	.global Unk_ov18_02246458
Unk_ov18_02246458: ; 0x02246458
	.incbin "incbin/overlay18_rodata.bin", 0x24, 0x4



	.data


	.global Unk_ov18_02249790
Unk_ov18_02249790: ; 0x02249790
	.incbin "incbin/overlay18_data.bin", 0x30, 0x34 - 0x30

	.global Unk_ov18_02249794
Unk_ov18_02249794: ; 0x02249794
	.incbin "incbin/overlay18_data.bin", 0x34, 0x38 - 0x34

	.global Unk_ov18_02249798
Unk_ov18_02249798: ; 0x02249798
	.incbin "incbin/overlay18_data.bin", 0x38, 0x3C - 0x38

	.global Unk_ov18_0224979C
Unk_ov18_0224979C: ; 0x0224979C
	.incbin "incbin/overlay18_data.bin", 0x3C, 0x94 - 0x3C

	.global Unk_ov18_022497F4
Unk_ov18_022497F4: ; 0x022497F4
	.incbin "incbin/overlay18_data.bin", 0x94, 0xA0 - 0x94

	.global Unk_ov18_02249800
Unk_ov18_02249800: ; 0x02249800
	.incbin "incbin/overlay18_data.bin", 0xA0, 0x6



	.bss


	.global Unk_ov18_02250D78
Unk_ov18_02250D78: ; 0x02250D78
	.space 0x4

	.global Unk_ov18_02250D7C
Unk_ov18_02250D7C: ; 0x02250D7C
	.space 0x4

	.global Unk_ov18_02250D80
Unk_ov18_02250D80: ; 0x02250D80
	.space 0x4

	.global Unk_ov18_02250D84
Unk_ov18_02250D84: ; 0x02250D84
	.space 0x4

	.global Unk_ov18_02250D88
Unk_ov18_02250D88: ; 0x02250D88
	.space 0x4

	.global Unk_ov18_02250D8C
Unk_ov18_02250D8C: ; 0x02250D8C
	.space 0x4

	.global Unk_ov18_02250D90
Unk_ov18_02250D90: ; 0x02250D90
	.space 0xC

	.global Unk_ov18_02250D9C
Unk_ov18_02250D9C: ; 0x02250D9C
	.space 0x1C

	.global Unk_ov18_02250DB8
Unk_ov18_02250DB8: ; 0x02250DB8
	.space 0x280

	.global Unk_ov18_02251038
Unk_ov18_02251038: ; 0x02251038
	.space 0x400

	.global Unk_ov18_02251438
Unk_ov18_02251438: ; 0x02251438
	.space 0x6A0

	.global Unk_ov18_02251AD8
Unk_ov18_02251AD8: ; 0x02251AD8
	.space 0x8

	.global Unk_ov18_02251AE0
Unk_ov18_02251AE0: ; 0x02251AE0
	.space 0x80

