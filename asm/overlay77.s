	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov77_021D0D80
ov77_021D0D80: ; 0x021D0D80
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r1, _021D0E20 ; =0x04001050
	mov r0, #0
	strh r0, [r1]
	ldr r1, _021D0E24 ; =0x04000050
	strh r0, [r1]
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
	ldr r0, _021D0E28 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0E2C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #1
	mov r0, #3
	mov r1, #0x1e
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _021D0E30 ; =0x00000504
	add r0, r4, #0
	mov r2, #0x1e
	bl sub_0200681C
	ldr r2, _021D0E30 ; =0x00000504
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x1e
	str r0, [r4, #0]
	ldr r0, _021D0E34 ; =0x000004EC
	mov r1, #0
	strh r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	bl ov77_021D1184
	add r0, r4, #0
	bl ov77_021D17B4
	add r0, r4, #0
	bl ov77_021D11CC
	ldr r0, _021D0E38 ; =ov77_021D1178
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r0, #1
	pop {r4, pc}
	nop
_021D0E20: .word 0x04001050
_021D0E24: .word 0x04000050
_021D0E28: .word 0xFFFFE0FF
_021D0E2C: .word 0x04001000
_021D0E30: .word 0x00000504
_021D0E34: .word 0x000004EC
_021D0E38: .word ov77_021D1178
	thumb_func_end ov77_021D0D80

	thumb_func_start ov77_021D0E3C
ov77_021D0E3C: ; 0x021D0E3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #6
	bhi _021D0E7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0E5A: ; jump table
	.short _021D0E68 - _021D0E5A - 2 ; case 0
	.short _021D0EB8 - _021D0E5A - 2 ; case 1
	.short _021D0ED8 - _021D0E5A - 2 ; case 2
	.short _021D0EEE - _021D0E5A - 2 ; case 3
	.short _021D0FBC - _021D0E5A - 2 ; case 4
	.short _021D1078 - _021D0E5A - 2 ; case 5
	.short _021D10BC - _021D0E5A - 2 ; case 6
_021D0E68:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D1A60
	cmp r0, #1
	beq _021D0E7C
_021D0E7A:
	b _021D10DC
_021D0E7C:
	mov r1, #0x8e
	ldr r2, _021D10E4 ; =0x021BF67C
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r2, #0x6c]
	cmp r1, #0
	bne _021D0EA6
	mov r2, #0x4f
	mov r1, #0x1e
	lsl r2, r2, #4
	str r1, [r4, r2]
	add r1, r2, #0
	mov r3, #1
	sub r1, #0x18
	str r3, [r4, r1]
	sub r2, #0x14
	str r0, [r4, r2]
	mov r0, #2
	str r0, [r5, #0]
	b _021D10DC
_021D0EA6:
	mov r1, #0x4f
	lsl r1, r1, #4
	str r0, [r4, r1]
	str r0, [r2, #0x6c]
	mov r0, #1
	sub r1, #0x14
	str r0, [r4, r1]
	str r0, [r5, #0]
	b _021D10DC
_021D0EB8:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D1DF0
	cmp r0, #1
	bne _021D0F9E
	mov r0, #0x8e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	str r0, [r5, #0]
	b _021D10DC
_021D0ED8:
	mov r0, #0
	bl sub_02004234
	mov r0, #1
	ldr r1, _021D10E8 ; =0x00000495
	add r2, r0, #0
	bl sub_02004550
	mov r0, #3
	str r0, [r5, #0]
	b _021D10DC
_021D0EEE:
	mov r0, #0x4f
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D0F12
	sub r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0
	sub r0, #0x60
	str r1, [r4, r0]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D20E4
	b _021D10DC
_021D0F12:
	mov r1, #1
	sub r0, #0x60
	str r1, [r4, r0]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D20E4
	ldr r1, _021D10EC ; =0x000004FC
	ldr r2, _021D10E4 ; =0x021BF67C
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r3, [r2, #0x48]
	mov r0, #1
	add r6, r3, #0
	and r6, r0
	cmp r6, #1
	beq _021D0F44
	mov r6, #8
	and r3, r6
	cmp r3, #8
	bne _021D0F68
_021D0F44:
	ldr r0, _021D10F0 ; =0x000004EC
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #0
	mov r1, #0x3c
	bl sub_0200564C
	ldr r0, _021D10F4 ; =0x000001E7
	mov r1, #1
	bl sub_02005844
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	bl ov77_021D1D48
	mov r0, #4
	str r0, [r5, #0]
	b _021D10DC
_021D0F68:
	ldr r6, [r2, #0x44]
	mov r3, #0x46
	and r3, r6
	cmp r3, #0x46
	bne _021D0F94
	mov r2, #2
	sub r1, #0x10
	strh r2, [r4, r1]
	mov r1, #6
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #6
	str r0, [r5, #0]
	b _021D10DC
_021D0F94:
	mov r3, #0xe1
	ldr r6, [r4, r1]
	lsl r3, r3, #2
	cmp r6, r3
	bgt _021D0FA0
_021D0F9E:
	b _021D10DC
_021D0FA0:
	mov r3, #3
	sub r1, #0x10
	strh r3, [r4, r1]
	mov r1, #0
	str r0, [r2, #0x6c]
	bl sub_0201FF74
	mov r0, #0
	mov r1, #0x3c
	bl sub_0200564C
	mov r0, #5
	str r0, [r5, #0]
	b _021D10DC
_021D0FBC:
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D20E4
	mov r0, #5
	lsl r0, r0, #8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0xa
	bne _021D0FFA
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r3, _021D10F8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_021D0FFA:
	bl sub_0200598C
	cmp r0, #0
	bne _021D10DC
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D10DC
	mov r0, #5
	lsl r0, r0, #8
	ldr r1, [r4, r0]
	cmp r1, #0xa
	blt _021D10DC
	sub r0, #0x6b
	mov r1, #0
	bl sub_020055D0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	ldr r3, _021D10F8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #6
	str r0, [r5, #0]
	b _021D10DC
_021D1078:
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D20E4
	bl sub_02005684
	cmp r0, #0
	bne _021D10DC
	ldr r0, _021D10E8 ; =0x00000495
	mov r1, #0
	bl sub_020055D0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r3, _021D10F8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	mov r0, #6
	str r0, [r5, #0]
	b _021D10DC
_021D10BC:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D10DC
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	add r0, r4, r0
	bl ov77_021D21C0
	cmp r0, #1
	bne _021D10DC
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D10DC:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D10E4: .word 0x021BF67C
_021D10E8: .word 0x00000495
_021D10EC: .word 0x000004FC
_021D10F0: .word 0x000004EC
_021D10F4: .word 0x000001E7
_021D10F8: .word 0x00007FFF
	thumb_func_end ov77_021D0E3C

	thumb_func_start ov77_021D10FC
ov77_021D10FC: ; 0x021D10FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r6, r0, #0
	ldr r0, _021D1164 ; =0x000004EC
	ldr r4, [r6, #0]
	ldrh r5, [r6, r0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	bl ov77_021D11FC
	add r0, r6, #0
	bl ov77_021D1908
	add r0, r7, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	cmp r5, #1
	beq _021D1138
	cmp r5, #2
	beq _021D1144
	cmp r5, #3
	beq _021D1150
_021D1138:
	mov r0, #0
	ldr r1, _021D1168 ; =0x020F8AB4
	mvn r0, r0
	bl sub_02000EC4
	b _021D115E
_021D1144:
	mov r0, #0
	ldr r1, _021D116C ; =0x020F8A48
	mvn r0, r0
	bl sub_02000EC4
	b _021D115E
_021D1150:
	mov r0, #0
	bl sub_02004234
	ldr r0, _021D1170 ; =0x0000004D
	ldr r1, _021D1174 ; =0x021D788C
	bl sub_02000EC4
_021D115E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1164: .word 0x000004EC
_021D1168: .word 0x020F8AB4
_021D116C: .word 0x020F8A48
_021D1170: .word 0x0000004D
_021D1174: .word 0x021D788C
	thumb_func_end ov77_021D10FC

	thumb_func_start ov77_021D1178
ov77_021D1178: ; 0x021D1178
	ldr r3, _021D1180 ; =sub_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D1180: .word sub_0201C2B8
	thumb_func_end ov77_021D1178

	thumb_func_start ov77_021D1184
ov77_021D1184: ; 0x021D1184
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D11A0 ; =0x021D7404
	add r3, sp, #0
	mov r2, #5
_021D118E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D118E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D11A0: .word 0x021D7404
	thumb_func_end ov77_021D1184

	thumb_func_start ov77_021D11A4
ov77_021D11A4: ; 0x021D11A4
	ldr r0, _021D11C8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D11C0
	mov r0, #8
	and r0, r1
	cmp r0, #8
	beq _021D11C0
	mov r0, #4
	and r0, r1
	cmp r0, #4
	bne _021D11C4
_021D11C0:
	mov r0, #1
	bx lr
_021D11C4:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D11C8: .word 0x021BF67C
	thumb_func_end ov77_021D11A4

	thumb_func_start ov77_021D11CC
ov77_021D11CC: ; 0x021D11CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #4
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #8]
	ldr r1, _021D11F8 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D11F8: .word 0x04000008
	thumb_func_end ov77_021D11CC

	thumb_func_start ov77_021D11FC
ov77_021D11FC: ; 0x021D11FC
	ldr r3, _021D1204 ; =sub_020242C4
	ldr r0, [r0, #8]
	bx r3
	nop
_021D1204: .word sub_020242C4
	thumb_func_end ov77_021D11FC

	thumb_func_start ov77_021D1208
ov77_021D1208: ; 0x021D1208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, #0x70
	add r1, r4, #0
	mov r2, #4
	bl sub_020182CC
	mov r0, #0x30
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02006AC0
	str r0, [r5, #0x5c]
	mov r0, #0x30
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02006AC0
	str r0, [r5, #0x60]
	mov r0, #0x30
	mov r1, #2
	add r2, r4, #0
	bl sub_02006AC0
	add r1, r5, #0
	add r2, r5, #0
	str r0, [r5, #0x64]
	add r0, r5, #4
	add r1, #0x58
	add r2, #0x5c
	bl sub_0201CA3C
	ldr r0, [r5, #0x60]
	mov r1, #0
	bl sub_020B3C5C
	add r6, r0, #0
	ldr r0, [r5, #0x64]
	mov r1, #0
	bl sub_020B3C5C
	add r7, r0, #0
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x70
	add r1, r6, #0
	bl sub_020B2CB4
	str r0, [r5, #0x68]
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x70
	add r1, r7, #0
	bl sub_020B2CB4
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x5c]
	bl sub_020B3C1C
	str r0, [sp]
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	add r1, r6, #0
	bl sub_020AE4F0
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	add r1, r7, #0
	bl sub_020AE4F0
	ldr r1, [r5, #0x68]
	add r0, r5, #4
	bl sub_020AE77C
	ldr r1, [r5, #0x6c]
	add r0, r5, #4
	bl sub_020AE77C
	add r3, r5, #0
	add r6, sp, #0x10
	mov r7, #0
	str r7, [r6, #0]
	add r2, sp, #4
	str r7, [r6, #4]
	str r7, [r2, #0]
	str r7, [r6, #8]
	str r7, [r2, #4]
	ldmia r6!, {r0, r1}
	str r7, [r2, #8]
	add r3, #0x80
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r6, _021D12FC ; =0x021D72E4
	str r0, [r3, #0]
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	add r3, #0x8c
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	add r3, #0x98
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	add r0, r5, #0
	add r0, #0xac
	str r7, [r0, #0]
	add r0, r5, #0
	bl ov77_021D1300
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D12FC: .word 0x021D72E4
	thumb_func_end ov77_021D1208

	thumb_func_start ov77_021D1300
ov77_021D1300: ; 0x021D1300
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x30
	add r4, r1, #0
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r6, #0
	mov r2, #0x13
	add r3, r4, #0
	bl sub_020170D8
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x1f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x3f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x18
	bl sub_020B2D8C
	add r0, r5, #0
	mov r1, #0x4a
	str r4, [sp]
	add r0, #0x70
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	add r1, #0x28
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0x15
	bl sub_02017164
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	mov r1, #0x4f
	str r4, [sp]
	add r0, #0x70
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	add r1, #0x14
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0x14
	bl sub_02017164
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	mov r1, #0x15
	add r0, r5, #0
	lsl r1, r1, #4
	add r0, #0xb0
	add r1, r5, r1
	bl sub_02017258
	mov r1, #0
	add r0, r5, #0
	add r0, #0xb0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r0, #0xb0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r5, #0
	add r0, #0xb0
	mov r1, #1
	bl sub_02017348
	mov r1, #0x4a
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xb0
	add r1, r5, r1
	bl sub_0201727C
	mov r1, #0x4f
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xb0
	add r1, r5, r1
	bl sub_0201727C
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r6, #0
	mov r2, #0x10
	add r3, r4, #0
	bl sub_020170D8
	mov r0, #0x82
	lsl r0, r0, #2
	mov r2, #0x1f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	mov r0, #0x82
	lsl r0, r0, #2
	mov r2, #0x3f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x18
	bl sub_020B2D8C
	add r0, r5, #0
	mov r1, #0x76
	str r4, [sp]
	add r0, #0x70
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	add r1, #0x28
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0x12
	bl sub_02017164
	mov r0, #0x76
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	mov r1, #0x7b
	str r4, [sp]
	add r0, #0x70
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r5, r1
	add r1, #0x14
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0x11
	bl sub_02017164
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017240
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0xa0
	add r1, r5, r1
	bl sub_02017258
	mov r1, #0
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r0, #0x16
	mov r1, #1
	lsl r1, r1, #0xc
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl sub_02017348
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x78
	add r1, r5, r1
	bl sub_0201727C
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x8c
	add r1, r5, r1
	bl sub_0201727C
	add r0, r6, #0
	bl sub_02006CA8
	mov r1, #0x85
	ldr r0, _021D14DC ; =0xFFFFFED2
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, _021D14E0 ; =0x0000E383
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #1
	lsl r2, r2, #0xc
	add r0, #8
	str r2, [r5, r0]
	mov r0, #0x1e
	lsl r0, r0, #0xa
	add r1, #0xc
	str r0, [r5, r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D14DC: .word 0xFFFFFED2
_021D14E0: .word 0x0000E383
	thumb_func_end ov77_021D1300

	thumb_func_start ov77_021D14E4
ov77_021D14E4: ; 0x021D14E4
	push {r4, lr}
	add r4, r0, #0
	bl ov77_021D1514
	add r0, r4, #0
	ldr r1, [r4, #0x68]
	add r0, #0x70
	bl sub_020B2CD8
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x70
	bl sub_020B2CD8
	ldr r0, [r4, #0x60]
	bl sub_020181C4
	ldr r0, [r4, #0x64]
	bl sub_020181C4
	ldr r0, [r4, #0x5c]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov77_021D14E4

	thumb_func_start ov77_021D1514
ov77_021D1514: ; 0x021D1514
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02017110
	mov r0, #0x4a
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x70
	bl sub_020171A0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x70
	bl sub_020171A0
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	bl sub_02017110
	mov r0, #0x76
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x70
	bl sub_020171A0
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, #0x70
	add r1, r4, #0
	bl sub_020171A0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D1514

	thumb_func_start ov77_021D1568
ov77_021D1568: ; 0x021D1568
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021D16F4 ; =0x021D73E0
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #4
_021D1576:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1576
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021D15B6
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021D15B6
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl ov77_021D25AC
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	mov r0, #0
	bl sub_02020854
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020203D4
	b _021D15CC
_021D15B6:
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1, #0]
	mov r0, #0
	bl sub_02020854
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_020203D4
_021D15CC:
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #2
	str r1, [r5, r0]
	mov r1, #0x5a
	ldr r0, [r5, r0]
	lsl r1, r1, #2
	bl sub_020E1F6C
	mov r0, #0xab
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	ldr r0, _021D16F8 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	bl sub_020E01B8
	ldr r2, _021D16FC ; =0x33333333
	ldr r3, _021D1700 ; =0x3FD33333
	bl sub_020E0234
	bl sub_020E0088
	add r1, r4, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D16F0
	cmp r0, #1
	beq _021D162C
	cmp r0, #2
	beq _021D1640
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021D162C:
	bl sub_020241B4
	mov r0, #1
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0
	add sp, #0x24
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_021D1640:
	bl sub_020241B4
	bl sub_020203EC
	add r1, r4, #0
	add r0, sp, #0
	add r1, #0x98
	bl sub_0201E268
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021D166C
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021D1680
	add r0, r4, #0
	bl ov77_021D1704
	b _021D1680
_021D166C:
	bl sub_020C2BE8
	add r1, r4, #0
	add r3, r4, #0
	add r0, r4, #4
	add r1, #0x80
	add r2, sp, #0
	add r3, #0x8c
	bl sub_0201CA74
_021D1680:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D1694
	cmp r0, #1
	beq _021D16A0
	cmp r0, #2
	beq _021D16B0
	b _021D16E8
_021D1694:
	ldr r0, [r4, #0x68]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #0x6c]
	str r1, [r0, #0]
	b _021D16E8
_021D16A0:
	ldr r0, [r4, #0x68]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D16B0
	mov r0, #0
	add r4, #0xac
	str r0, [r4, #0]
	b _021D16E8
_021D16B0:
	ldr r2, [r4, #0x68]
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0xc
	add r1, r1, r0
	str r1, [r2, #0]
	ldr r2, [r4, #0x6c]
	ldr r1, [r2, #0]
	add r0, r1, r0
	str r0, [r2, #0]
	ldr r2, [r4, #0x68]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021D16D6
	mov r0, #0
	str r0, [r2, #0]
_021D16D6:
	ldr r2, [r4, #0x6c]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021D16E8
	mov r0, #0
	str r0, [r2, #0]
_021D16E8:
	mov r0, #1
	add r1, r0, #0
	bl sub_020241BC
_021D16F0:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D16F4: .word 0x021D73E0
_021D16F8: .word 0x0000FFFF
_021D16FC: .word 0x33333333
_021D1700: .word 0x3FD33333
	thumb_func_end ov77_021D1568

	thumb_func_start ov77_021D1704
ov77_021D1704: ; 0x021D1704
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021D172C
	sub r0, #0xfc
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r0, #1
	bne _021D172C
	mov r0, #0x89
	mov r1, #2
	lsl r0, r0, #2
	strb r1, [r4, r0]
_021D172C:
	ldr r0, _021D17B0 ; =0x00000225
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021D174A
	sub r0, #0xe9
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r0, #1
	bne _021D174A
	ldr r0, _021D17B0 ; =0x00000225
	mov r1, #2
	strb r1, [r4, r0]
_021D174A:
	mov r0, #0x76
	lsl r0, r0, #2
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl sub_020171CC
	mov r0, #0x7b
	lsl r0, r0, #2
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl sub_020171CC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02017294
	mov r0, #0x89
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _021D178C
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _021D1796
_021D178C:
	add r4, #0xb0
	add r0, r4, #0
	bl sub_02017294
	b _021D17A0
_021D1796:
	add r4, #0xb0
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
_021D17A0:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D17B0: .word 0x00000225
	thumb_func_end ov77_021D1704

	thumb_func_start ov77_021D17B4
ov77_021D17B4: ; 0x021D17B4
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0xa8
	ldr r5, _021D18EC ; =0x021D72F0
	str r0, [r4, #4]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D18F0 ; =0x021D7354
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D18F4 ; =0x021D7370
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D18F8 ; =0x021D738C
	add r3, sp, #0x54
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D18FC ; =0x021D73A8
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D1900 ; =0x021D7300
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D1904 ; =0x021D731C
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
	ldr r0, [r4, #4]
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D18EC: .word 0x021D72F0
_021D18F0: .word 0x021D7354
_021D18F4: .word 0x021D7370
_021D18F8: .word 0x021D738C
_021D18FC: .word 0x021D73A8
_021D1900: .word 0x021D7300
_021D1904: .word 0x021D731C
	thumb_func_end ov77_021D17B4

	thumb_func_start ov77_021D1908
ov77_021D1908: ; 0x021D1908
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov77_021D1908

	thumb_func_start ov77_021D1984
ov77_021D1984: ; 0x021D1984
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #0
	add r2, sp, #0
	strh r3, [r2]
	add r4, r1, #0
	add r1, sp, #8
	strh r3, [r2, #2]
	str r3, [r1, #0]
	strh r3, [r2, #4]
	str r3, [r1, #4]
	strh r3, [r2, #6]
	mov r2, #0x2a
	str r3, [r1, #8]
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #1
	beq _021D1A54
	sub r2, #0x90
	ldr r0, [r4, r2]
	cmp r0, #0x3c
	bhs _021D19C0
	ldr r0, _021D1A58 ; =0xFFFFF600
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	bl sub_02020990
_021D19C0:
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #0x4b
	bne _021D19D6
	add r0, r1, #0
	mov r2, #1
	add r0, #0x14
	strb r2, [r4, r0]
	add r1, #0x15
	strb r2, [r4, r1]
_021D19D6:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0xfa
	blo _021D1A4A
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, sp, #0
	bl sub_02020A94
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, sp, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, sp, #0
	bl sub_020209D4
	mov r1, #0x86
	lsl r1, r1, #2
	sub r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	add r0, r2, r0
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	ldr r0, _021D1A5C ; =0x0000C011
	cmp r2, r0
	bge _021D1A4A
	str r0, [r4, r1]
	add r1, #8
	ldr r0, [r4, r1]
	add r1, r4, #0
	asr r0, r0, #8
	neg r0, r0
	add r1, #0xa8
	lsl r0, r0, #0x10
	ldr r1, [r1, #0]
	lsr r0, r0, #0x10
	bl sub_0202094C
	mov r1, #0x22
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r4, r1]
	add r0, #0x60
	sub r0, r2, r0
	str r0, [r4, r1]
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xc
	cmp r2, r0
	bge _021D1A4A
	str r0, [r4, r1]
_021D1A4A:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021D1A54:
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021D1A58: .word 0xFFFFF600
_021D1A5C: .word 0x0000C011
	thumb_func_end ov77_021D1984

	thumb_func_start ov77_021D1A60
ov77_021D1A60: ; 0x021D1A60
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov77_021D24C8
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov77_021D2214
	add r0, r5, #4
	mov r1, #1
	mov r2, #0
	add r3, r4, #0
	bl ov77_021D1208
	ldr r0, _021D1BF0 ; =0x04000060
	ldr r2, _021D1BF4 ; =0xFFFFCFFF
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	mov r0, #0x9d
	lsl r0, r0, #2
	add r1, r0, #0
	ldr r2, [r5, r0]
	sub r1, #0x34
	str r2, [r5, r1]
	add r1, r0, #4
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x30
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #8
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x2c
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x18
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x28
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x14
	ldr r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x24
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	sub r0, #0x20
	str r1, [r5, r0]
	add r0, r4, #0
	bl sub_020203AC
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	mov r3, #0
	add r0, r5, #0
	mov r1, #9
	mov r2, #0xb6
	str r3, [sp]
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	str r0, [sp, #4]
	add r0, r5, r1
	add r1, #0xc
	add r1, r5, r1
	lsl r2, r2, #4
	bl sub_02020784
	add r2, r5, #0
	add r2, #0xa8
	mov r1, #0x4b
	ldr r2, [r2, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	mov r0, #0
	bl sub_02020854
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020203D4
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_020203AC
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r1, #0xa
	str r0, [sp, #8]
	ldr r2, _021D1BF8 ; =0x021D72C8
	ldr r3, _021D1BFC ; =0x00000FA4
	add r0, sp, #0x18
	lsl r1, r1, #0x10
	bl sub_020206D0
	add r2, r5, #0
	add r2, #0xac
	mov r1, #0x4b
	ldr r2, [r2, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r4, _021D1C00 ; =0x021D72D8
	add r3, sp, #0xc
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r1, #0xac
	ldr r1, [r1, #0]
	add r0, r2, #0
	bl sub_02020990
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_020203D4
	mov r3, #0xa3
	lsl r3, r3, #2
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	mov r0, #0
	bl sub_020AF51C
	ldr r1, _021D1C04 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	ldr r3, _021D1C08 ; =0x00000292
	mov r0, #1
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl sub_020AF51C
	ldr r1, _021D1C04 ; =0x00007FFF
	mov r0, #1
	bl sub_020AF558
	ldr r2, _021D1BF0 ; =0x04000060
	ldr r0, _021D1BF4 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D1C0C ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #2
	str r0, [r5, #4]
	mov r0, #1
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D1BF0: .word 0x04000060
_021D1BF4: .word 0xFFFFCFFF
_021D1BF8: .word 0x021D72C8
_021D1BFC: .word 0x00000FA4
_021D1C00: .word 0x021D72D8
_021D1C04: .word 0x00007FFF
_021D1C08: .word 0x00000292
_021D1C0C: .word 0x021BF6DC
	thumb_func_end ov77_021D1A60

	thumb_func_start ov77_021D1C10
ov77_021D1C10: ; 0x021D1C10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0xc
	ldr r0, [r4, r0]
	sub r0, r1, r0
	mov r1, #0x3c
	bl sub_020E1F6C
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x44
	add r1, #0x38
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #0x3c
	sub r0, r2, r0
	bl sub_020E1F6C
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x44
	add r1, #0x38
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #0x3c
	sub r0, r2, r0
	bl sub_020E1F6C
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x20
	add r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #0x3c
	sub r0, r2, r0
	bl sub_020E1F6C
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x20
	add r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #0x3c
	sub r0, r2, r0
	bl sub_020E1F6C
	mov r1, #0x25
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x20
	add r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r1, #0x3c
	sub r0, r2, r0
	bl sub_020E1F6C
	mov r1, #0x95
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D1C10

	thumb_func_start ov77_021D1CC0
ov77_021D1CC0: ; 0x021D1CC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	mov r1, #5
	add r5, r0, #0
	bl sub_02019044
	ldr r6, _021D1D3C ; =0x021D73C4
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x17
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x19
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl sub_02006E60
	ldr r0, _021D1D40 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r3, #0xa
	ldr r0, _021D1D44 ; =0x04001050
	mov r1, #2
	mov r2, #8
	str r3, [sp]
	bl sub_020BF55C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021D1D3C: .word 0x021D73C4
_021D1D40: .word 0x04000050
_021D1D44: .word 0x04001050
	thumb_func_end ov77_021D1CC0

	thumb_func_start ov77_021D1D48
ov77_021D1D48: ; 0x021D1D48
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r1, #0
	mov r1, #4
	add r4, r0, #0
	bl sub_02019044
	ldr r6, _021D1DE4 ; =0x021D7338
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x16
	add r2, r4, #0
	mov r3, #4
	str r5, [sp, #0xc]
	bl sub_02006E60
	ldr r0, _021D1DE8 ; =0x04001008
	mov r2, #3
	ldrh r1, [r0]
	bic r1, r2
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bic r1, r2
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #6]
	mov r2, #0
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #1
	bl sub_02019184
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D1DEC ; =0x04001050
	mov r1, #3
	mov r2, #0xc
	mov r3, #0x1a
	bl sub_020BF55C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D1DE4: .word 0x021D7338
_021D1DE8: .word 0x04001008
_021D1DEC: .word 0x04001050
	thumb_func_end ov77_021D1D48

	thumb_func_start ov77_021D1DF0
ov77_021D1DF0: ; 0x021D1DF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r6, #0
	bl ov77_021D11A4
	cmp r0, #1
	bne _021D1E22
	mov r0, #0x2a
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r1, r6, #0
	add r0, r0, #4
	str r1, [r4, r0]
	bl sub_0200F2C0
	mov r0, #3
	bl sub_0200ABB0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D1E22:
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bhi _021D1EAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1E34: ; jump table
	.short _021D1E4A - _021D1E34 - 2 ; case 0
	.short _021D1E78 - _021D1E34 - 2 ; case 1
	.short _021D1E98 - _021D1E34 - 2 ; case 2
	.short _021D1EFA - _021D1E34 - 2 ; case 3
	.short _021D1F3A - _021D1E34 - 2 ; case 4
	.short _021D1F54 - _021D1E34 - 2 ; case 5
	.short _021D1FAC - _021D1E34 - 2 ; case 6
	.short _021D1FFE - _021D1E34 - 2 ; case 7
	.short _021D1FE8 - _021D1E34 - 2 ; case 8
	.short _021D2028 - _021D1E34 - 2 ; case 9
	.short _021D20A2 - _021D1E34 - 2 ; case 10
_021D1E4A:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r6, #0
	ldr r1, _021D20D8 ; =0x0000029A
	ldr r2, _021D20DC ; =0x0000010B
	strh r0, [r4, r1]
	sub r1, #0x6e
	strh r2, [r4, r1]
	mov r1, #0xf
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	str r5, [sp, #8]
	bl sub_0200F174
	mov r0, #1
	str r0, [r4, #0]
	b _021D20BC
_021D1E78:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1EAC
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1E90
	sub r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1E90:
	mov r1, #2
	strh r1, [r4, r0]
	str r1, [r4, #0]
	b _021D20BC
_021D1E98:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D1EAC
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	beq _021D1EAE
_021D1EAC:
	b _021D20BC
_021D1EAE:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1EF0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	mov r1, #0x10
	add r2, r6, #0
	mov r3, #7
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	mov r1, #0x10
	add r2, r6, #0
	mov r3, #0x27
	bl sub_0200AAE0
	ldr r1, _021D20D8 ; =0x0000029A
	mov r0, #2
	strh r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x6e
	ldrh r0, [r4, r0]
	sub r1, #0x6e
	sub r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #3
	str r0, [r4, #0]
	b _021D20BC
_021D1EF0:
	add r1, r6, #0
	strh r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #0]
	b _021D20BC
_021D1EFA:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D1FB4
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D1FB4
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	add r1, r6, #0
	mov r2, #0x10
	mov r3, #7
	bl sub_0200AAE0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	add r1, r6, #0
	mov r2, #0x10
	mov r3, #0x27
	bl sub_0200AAE0
	ldr r0, _021D20D8 ; =0x0000029A
	mov r1, #3
	strh r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #0]
	b _021D20BC
_021D1F3A:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1F4A
	sub r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1F4A:
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #0]
	b _021D20BC
_021D1F54:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D1FB4
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1F94
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r3, _021D20E0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	str r5, [sp, #8]
	bl sub_0200F174
	ldr r1, _021D20D8 ; =0x0000029A
	mov r0, #2
	strh r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x6e
	ldrh r0, [r4, r0]
	sub r1, #0x6e
	sub r0, r0, #1
	strh r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0]
	b _021D20BC
_021D1F94:
	mov r1, #0xa
	strh r1, [r4, r0]
	mov r1, #8
	str r1, [r4, #0]
	mov r1, #1
	add r0, #0x74
	str r1, [r4, r0]
	add r0, r6, #0
	add r1, r0, #0
	bl sub_0200F344
	b _021D20BC
_021D1FAC:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D1FB6
_021D1FB4:
	b _021D20BC
_021D1FB6:
	mov r0, #0xa9
	add r1, r6, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb0
	str r1, [r0, #0]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #3
	mov r1, #1
	str r0, [sp, #4]
	ldr r3, _021D20E0 ; =0x00007FFF
	add r2, r1, #0
	str r5, [sp, #8]
	bl sub_0200F174
	mov r0, #5
	str r0, [r4, #0]
	b _021D20BC
_021D1FE8:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1FF8
	sub r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1FF8:
	mov r0, #7
	str r0, [r4, #0]
	b _021D20BC
_021D1FFE:
	mov r0, #0x30
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #3
	add r2, r1, #0
	add r3, r6, #0
	str r5, [sp, #8]
	bl sub_0200F174
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #9
	str r0, [r4, #0]
	mov r0, #0xaa
	add r1, r6, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021D20BC
_021D2028:
	add r0, r4, #0
	bl ov77_021D1C10
	add r1, r4, #0
	mov r0, #9
	add r1, #0xa8
	lsl r0, r0, #6
	ldr r1, [r1, #0]
	add r0, r4, r0
	bl sub_02020ACC
	add r1, r4, #0
	mov r0, #0x93
	add r1, #0xa8
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r4, r0
	bl sub_02020ADC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	blt _021D20BC
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r7, #0
	add r1, r5, #0
	bl ov77_021D1CC0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r1, #1
	ldr r3, _021D20E0 ; =0x00007FFF
	mov r0, #4
	add r2, r1, #0
	str r5, [sp, #8]
	bl sub_0200F174
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x8b
	mov r1, #0x5a
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xa
	str r0, [r4, #0]
	b _021D20BC
_021D20A2:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D20B2
	sub r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D20B2:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D20BC
	mov r6, #1
_021D20BC:
	add r0, r4, #0
	bl ov77_021D2438
	add r0, r4, #0
	add r1, r4, #4
	bl ov77_021D1984
	add r0, r4, #0
	add r1, r4, #4
	bl ov77_021D1568
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D20D8: .word 0x0000029A
_021D20DC: .word 0x0000010B
_021D20E0: .word 0x00007FFF
	thumb_func_end ov77_021D1DF0

	thumb_func_start ov77_021D20E4
ov77_021D20E4: ; 0x021D20E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0
	beq _021D20FA
	cmp r0, #1
	beq _021D2174
	b _021D21B0
_021D20FA:
	add r1, r5, #0
	mov r0, #0xa
	add r1, #0xa8
	lsl r0, r0, #6
	ldr r1, [r1, #0]
	add r0, r5, r0
	bl sub_02020ACC
	add r1, r5, #0
	mov r0, #0x9a
	add r1, #0xa8
	lsl r0, r0, #2
	ldr r1, [r1, #0]
	add r0, r5, r0
	bl sub_02020ADC
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r1, _021D21BC ; =0x00007FFF
	mov r0, #1
	bl sub_020AF558
	add r0, r6, #0
	add r1, r7, #0
	bl ov77_021D1CC0
	mov r0, #0x8b
	add r1, r4, #0
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r0, #1
	str r0, [r5, #0]
	b _021D21B0
_021D2174:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _021D219C
	sub r0, #0x2c
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021D2190
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	b _021D219C
_021D2190:
	cmp r0, #0x10
	bne _021D219C
	mov r0, #1
	add r1, r4, #0
	bl sub_0201FF74
_021D219C:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrh r0, [r5, r1]
	mov r4, #1
	add r0, r0, #1
	strh r0, [r5, r1]
	ldrh r2, [r5, r1]
	mov r0, #0x1f
	and r0, r2
	strh r0, [r5, r1]
_021D21B0:
	add r0, r5, #0
	add r1, r5, #4
	bl ov77_021D1568
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D21BC: .word 0x00007FFF
	thumb_func_end ov77_021D20E4

	thumb_func_start ov77_021D21C0
ov77_021D21C0: ; 0x021D21C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020203B8
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_020203B8
	add r0, r5, #4
	bl ov77_021D14E4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov77_021D2428
	ldr r2, _021D2208 ; =0x04000050
	mov r3, #0
	strh r3, [r2]
	add r2, #0x10
	ldrh r1, [r2]
	ldr r0, _021D220C ; =0x0000CFDF
	and r0, r1
	strh r0, [r2]
	ldr r0, _021D2210 ; =0x021BF6DC
	strb r3, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D2208: .word 0x04000050
_021D220C: .word 0x0000CFDF
_021D2210: .word 0x021BF6DC
	thumb_func_end ov77_021D21C0

	thumb_func_start ov77_021D2214
ov77_021D2214: ; 0x021D2214
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r4, r1, #0
	str r0, [sp, #8]
	add r6, r2, #0
	mov r0, #0x30
	mov r1, #0x17
	add r2, r5, #0
	mov r3, #7
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #3
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x18
	add r2, r5, #0
	mov r3, #7
	str r4, [sp, #0xc]
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x1b
	add r2, r5, #0
	mov r3, #3
	str r4, [sp, #0xc]
	bl sub_02006E60
	mov r3, #0
	str r3, [sp]
	mov r0, #0x30
	mov r1, #7
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02006E84
	mov r2, #0
	str r2, [sp]
	mov r0, #0x30
	mov r1, #6
	add r3, r2, #0
	str r4, [sp, #4]
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #6
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	mov r0, #0x30
	mov r1, #0xb
	mov r2, #6
	lsl r3, r3, #0xe
	str r4, [sp, #4]
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0x16
	add r2, r5, #0
	mov r3, #6
	str r4, [sp, #0xc]
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	mov r1, #0xe
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x80
	mov r1, #0xd
	mov r2, #6
	lsl r3, r0, #6
	str r4, [sp, #4]
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #5
	add r2, r5, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #3
	add r2, r5, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl sub_02006E60
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x30
	mov r1, #4
	mov r2, #0
	mov r3, #0x20
	str r4, [sp, #4]
	bl sub_02006E84
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r2, _021D2418 ; =0x00000261
	mov r0, #1
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #0x40
	add r1, r4, #0
	bl sub_02023790
	mov r1, #0x23
	lsl r1, r1, #4
	add r4, r0, #0
	ldr r2, _021D241C ; =0x021D72D0
	add r0, r5, #0
	add r1, r6, r1
	bl sub_0201A8D4
	mov r1, #0
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r6, r0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r3, _021D2420 ; =0x00000237
	mov r0, #0
	ldrb r3, [r6, r3]
	add r1, r4, #0
	mov r2, #1
	lsl r3, r3, #3
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _021D2424 ; =0x00010100
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x23
	lsl r0, r0, #4
	str r1, [sp, #0x10]
	add r0, r6, r0
	add r2, r4, #0
	str r1, [sp, #0x14]
	bl sub_0201D7E0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	mov r1, #0x15
	add r0, sp, #0x18
	strh r1, [r0, #2]
	strh r1, [r0]
	add r1, sp, #0x18
	mov r0, #4
	add r1, #2
	mov r2, #2
	mov r3, #0x42
	bl sub_0201972C
	mov r0, #4
	add r1, sp, #0x18
	mov r2, #2
	mov r3, #0x44
	bl sub_0201972C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2418: .word 0x00000261
_021D241C: .word 0x021D72D0
_021D2420: .word 0x00000237
_021D2424: .word 0x00010100
	thumb_func_end ov77_021D2214

	thumb_func_start ov77_021D2428
ov77_021D2428: ; 0x021D2428
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r3, _021D2434 ; =sub_0201A8FC
	add r0, r2, r0
	bx r3
	nop
_021D2434: .word sub_0201A8FC
	thumb_func_end ov77_021D2428

	thumb_func_start ov77_021D2438
ov77_021D2438: ; 0x021D2438
	push {r4, lr}
	ldr r1, _021D24C4 ; =0x0000029A
	ldrh r2, [r0, r1]
	cmp r2, #3
	bhi _021D2498
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D244E: ; jump table
	.short _021D2456 - _021D244E - 2 ; case 0
	.short _021D2498 - _021D244E - 2 ; case 1
	.short _021D2462 - _021D244E - 2 ; case 2
	.short _021D247E - _021D244E - 2 ; case 3
_021D2456:
	mov r3, #5
	sub r2, r1, #2
	strh r3, [r0, r2]
	mov r2, #1
	strh r2, [r0, r1]
	b _021D2498
_021D2462:
	sub r2, r1, #2
	ldrh r2, [r0, r2]
	add r3, r2, #2
	sub r2, r1, #2
	strh r3, [r0, r2]
	ldrh r2, [r0, r2]
	cmp r2, #0x1f
	blo _021D2498
	mov r3, #0x1f
	sub r2, r1, #2
	strh r3, [r0, r2]
	mov r2, #1
	strh r2, [r0, r1]
	b _021D2498
_021D247E:
	sub r2, r1, #2
	ldrh r2, [r0, r2]
	sub r3, r2, #2
	sub r2, r1, #2
	strh r3, [r0, r2]
	ldrh r2, [r0, r2]
	cmp r2, #5
	bhi _021D2498
	mov r3, #5
	sub r2, r1, #2
	strh r3, [r0, r2]
	mov r2, #1
	strh r2, [r0, r1]
_021D2498:
	mov r1, #0xa6
	lsl r1, r1, #2
	ldrh r3, [r0, r1]
	mov r1, #0x1f
	lsl r1, r1, #0xa
	lsl r2, r3, #0xa
	and r1, r2
	add r4, r3, #0
	mov r2, #0x1f
	and r4, r2
	lsl r3, r3, #5
	lsl r2, r2, #5
	and r2, r3
	orr r2, r4
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #1
	lsr r1, r1, #0x10
	bl sub_020AF558
	pop {r4, pc}
	nop
_021D24C4: .word 0x0000029A
	thumb_func_end ov77_021D2438

	thumb_func_start ov77_021D24C8
ov77_021D24C8: ; 0x021D24C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r1, #0x97
	lsl r1, r1, #2
	add r4, r0, #0
	mov r5, #0
	mov r3, #3
	mov r2, #0x96
	str r5, [r4, r1]
	lsl r3, r3, #0x12
	add r0, r1, #4
	str r3, [r4, r0]
	add r0, r1, #0
	lsl r2, r2, #0xe
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r6, r1, #0
	ldr r2, _021D2590 ; =0xFFFC0000
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r3, [r4, r0]
	mov r2, #0x79
	add r0, r1, #0
	lsl r2, r2, #0xe
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x18
	str r5, [r4, r0]
	mov r2, #0x19
	add r0, r1, #0
	lsl r2, r2, #0xe
	add r0, #0x1c
	str r2, [r4, r0]
	ldr r0, _021D2594 ; =0xFFFEE000
	add r6, #0x20
	str r0, [r4, r6]
	add r6, r1, #0
	add r6, #0x24
	str r5, [r4, r6]
	add r5, r1, #0
	add r5, #0x28
	str r2, [r4, r5]
	add r2, r1, #0
	add r2, #0x2c
	str r0, [r4, r2]
	add r0, r1, #0
	ldr r2, _021D2598 ; =0x000008DB
	add r0, #0x30
	strh r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _021D259C ; =0xFFFFF85F
	add r0, #0x32
	strh r2, [r4, r0]
	add r2, r1, #0
	ldr r0, _021D25A0 ; =0xFFFFF513
	add r2, #0x34
	strh r0, [r4, r2]
	add r2, r1, #0
	ldr r5, _021D25A4 ; =0xFFFFF725
	add r2, #0x36
	strh r5, [r4, r2]
	add r2, r1, #0
	ldr r5, _021D25A8 ; =0x000007A1
	add r2, #0x38
	strh r5, [r4, r2]
	add r2, r1, #0
	add r2, #0x3a
	strh r0, [r4, r2]
	add r0, r1, #0
	lsr r2, r3, #6
	add r0, #0x40
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x24
	add r1, #0xc
	add r0, r4, r0
	add r1, r4, r1
	add r2, sp, #0xc
	bl sub_020BD1B0
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_020BD3E4
	mov r0, #0xa3
	ldr r1, [sp]
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r1, r0, #2
	ldr r2, [sp, #4]
	add r0, r0, #4
	strh r2, [r4, r1]
	ldr r1, [sp, #8]
	strh r1, [r4, r0]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2590: .word 0xFFFC0000
_021D2594: .word 0xFFFEE000
_021D2598: .word 0x000008DB
_021D259C: .word 0xFFFFF85F
_021D25A0: .word 0xFFFFF513
_021D25A4: .word 0xFFFFF725
_021D25A8: .word 0x000007A1
	thumb_func_end ov77_021D24C8

	thumb_func_start ov77_021D25AC
ov77_021D25AC: ; 0x021D25AC
	bx lr
	; .align 2, 0
	thumb_func_end ov77_021D25AC

	thumb_func_start ov77_021D25B0
ov77_021D25B0: ; 0x021D25B0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25CC ; =0x021D76F4
	add r3, sp, #0
	mov r2, #5
_021D25BA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25BA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D25CC: .word 0x021D76F4
	thumb_func_end ov77_021D25B0

	thumb_func_start ov77_021D25D0
ov77_021D25D0: ; 0x021D25D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25EC ; =0x021D771C
	add r3, sp, #0
	mov r2, #5
_021D25DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25DA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D25EC: .word 0x021D771C
	thumb_func_end ov77_021D25D0

	thumb_func_start ov77_021D25F0
ov77_021D25F0: ; 0x021D25F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D260C ; =0x021D7744
	add r3, sp, #0
	mov r2, #5
_021D25FA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25FA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D260C: .word 0x021D7744
	thumb_func_end ov77_021D25F0

	thumb_func_start ov77_021D2610
ov77_021D2610: ; 0x021D2610
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0xa8
	ldr r5, _021D2708 ; =0x021D74CC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D270C ; =0x021D7510
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2710 ; =0x021D752C
	add r3, sp, #0x70
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2714 ; =0x021D7548
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2718 ; =0x021D75F0
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D271C ; =0x021D75D4
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2720 ; =0x021D7580
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D2708: .word 0x021D74CC
_021D270C: .word 0x021D7510
_021D2710: .word 0x021D752C
_021D2714: .word 0x021D7548
_021D2718: .word 0x021D75F0
_021D271C: .word 0x021D75D4
_021D2720: .word 0x021D7580
	thumb_func_end ov77_021D2610

	thumb_func_start ov77_021D2724
ov77_021D2724: ; 0x021D2724
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x70
	ldr r5, _021D2810 ; =0x021D74AC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D2814 ; =0x021D75B8
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2818 ; =0x021D760C
	add r3, sp, #0x38
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D281C ; =0x021D7628
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2820 ; =0x021D7644
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D2824 ; =0x021D7838
	add r3, sp, #0x80
	mov r2, #0xa
_021D27CC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D27CC
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #6
	add r2, sp, #0x9c
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #7
	add r2, sp, #0xb8
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0xd4
	pop {r4, r5, pc}
	; .align 2, 0
_021D2810: .word 0x021D74AC
_021D2814: .word 0x021D75B8
_021D2818: .word 0x021D760C
_021D281C: .word 0x021D7628
_021D2820: .word 0x021D7644
_021D2824: .word 0x021D7838
	thumb_func_end ov77_021D2724

	thumb_func_start ov77_021D2828
ov77_021D2828: ; 0x021D2828
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	mov r1, #0
	add r4, r0, #0
	bl ov77_021D361C
	ldr r5, _021D28EC ; =0x021D767C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F0 ; =0x021D7698
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F4 ; =0x021D76B4
	add r3, sp, #0
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D28F8 ; =0x021D77E4
	add r3, sp, #0x54
	mov r2, #0xa
_021D289A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D289A
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #6
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0xc]
	mov r1, #7
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, _021D28FC ; =0x0000028E
	mov r1, #1
	strb r1, [r4, r0]
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D28EC: .word 0x021D767C
_021D28F0: .word 0x021D7698
_021D28F4: .word 0x021D76B4
_021D28F8: .word 0x021D77E4
_021D28FC: .word 0x0000028E
	thumb_func_end ov77_021D2828

	thumb_func_start ov77_021D2900
ov77_021D2900: ; 0x021D2900
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov77_021D35B8
	add r0, r4, #0
	bl ov77_021D2828
	ldr r5, _021D29F0 ; =0x021D74DC
	add r3, sp, #0x38
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D29F4 ; =0x021D7564
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0xc]
	add r3, r1, #0
	bl sub_020183C4
	ldr r5, _021D29F8 ; =0x021D759C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r1, #0
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019184
	mov r1, #0
	ldr r0, [r4, #0xc]
	mov r2, #3
	add r3, r1, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0xc]
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _021D29FC ; =0x0000028E
	mov r1, #2
	strb r1, [r4, r0]
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_021D29F0: .word 0x021D74DC
_021D29F4: .word 0x021D7564
_021D29F8: .word 0x021D759C
_021D29FC: .word 0x0000028E
	thumb_func_end ov77_021D2900

	thumb_func_start ov77_021D2A00
ov77_021D2A00: ; 0x021D2A00
	push {r4, r5, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x1c
	ldr r5, _021D2A50 ; =0x021D74BC
	str r0, [r4, #0xc]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D2A54 ; =0x021D7660
	add r3, sp, #0
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201975C
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021D2A50: .word 0x021D74BC
_021D2A54: .word 0x021D7660
	thumb_func_end ov77_021D2A00

	thumb_func_start ov77_021D2A58
ov77_021D2A58: ; 0x021D2A58
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021D2A94 ; =ov77_021D2AA0
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #0x10]
	ldr r3, _021D2A98 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _021D2A9C ; =0x02100DF4
	mov r0, #0x80
	ldr r3, [r3, #0]
	mov r1, #0
	mov r2, #1
	blx r3
	add sp, #8
	pop {r4, pc}
	nop
_021D2A94: .word ov77_021D2AA0
_021D2A98: .word 0x02100DEC
_021D2A9C: .word 0x02100DF4
	thumb_func_end ov77_021D2A58

	thumb_func_start ov77_021D2AA0
ov77_021D2AA0: ; 0x021D2AA0
	push {r3, lr}
	bl sub_020B2628
	ldr r0, _021D2B14 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D2B18 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D2B1C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _021D2B20 ; =0x021D74EC
	bl sub_020BFD2C
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _021D2B24 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _021D2B28 ; =0xBFFF0000
	ldr r0, _021D2B2C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_021D2B14: .word 0x04000008
_021D2B18: .word 0xFFFFCFFD
_021D2B1C: .word 0x0000CFFB
_021D2B20: .word 0x021D74EC
_021D2B24: .word 0x00007FFF
_021D2B28: .word 0xBFFF0000
_021D2B2C: .word 0x04000580
	thumb_func_end ov77_021D2AA0

	thumb_func_start ov77_021D2B30
ov77_021D2B30: ; 0x021D2B30
	ldr r3, _021D2B34 ; =sub_0200A858
	bx r3
	; .align 2, 0
_021D2B34: .word sub_0200A858
	thumb_func_end ov77_021D2B30

	thumb_func_start ov77_021D2B38
ov77_021D2B38: ; 0x021D2B38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r0, [sp]
	ldr r0, _021D2C64 ; =0x0000025B
	add r5, #0x34
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2B84
	ldr r0, _021D2C68 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r1, _021D2C64 ; =0x0000025B
	mov r0, #0
	strb r0, [r5, r1]
	ldr r1, [r5, #0x28]
	bl sub_02020854
	ldr r0, [r5, #0x28]
	bl sub_020203D4
_021D2B84:
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D2B90
	bl sub_0201C2B8
_021D2B90:
	ldr r7, _021D2C6C ; =0x00000247
	mov r4, #0
	add r6, r7, #1
_021D2B96:
	ldr r0, _021D2C6C ; =0x00000247
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _021D2BAA
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_021D2BAA:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _021D2BC0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02019120
_021D2BC0:
	ldrb r0, [r5, r7]
	add r4, r4, #1
	asr r0, r0, #1
	strb r0, [r5, r7]
	ldrb r0, [r5, r6]
	asr r0, r0, #1
	strb r0, [r5, r6]
	cmp r4, #8
	blt _021D2B96
	mov r2, #0x25
	lsl r2, r2, #4
	sub r1, r2, #2
	ldrsh r6, [r5, r1]
	sub r1, r2, #6
	ldrsh r1, [r5, r1]
	sub r4, r2, #4
	ldrsh r4, [r5, r4]
	lsl r3, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	lsl r4, r4, #0x18
	ldrsh r0, [r5, r2]
	and r3, r1
	lsr r4, r4, #0x18
	orr r3, r4
	ldr r4, _021D2C70 ; =0x04000040
	lsl r0, r0, #0x18
	strh r3, [r4]
	lsl r3, r6, #8
	and r3, r1
	lsr r0, r0, #0x18
	orr r0, r3
	strh r0, [r4, #4]
	add r0, r2, #0
	add r0, #8
	ldrsh r4, [r5, r0]
	add r0, r2, #6
	ldrsh r3, [r5, r0]
	add r0, r2, #2
	add r6, r2, #4
	ldrsh r0, [r5, r0]
	ldrsh r6, [r5, r6]
	lsl r3, r3, #8
	lsl r0, r0, #8
	lsl r6, r6, #0x18
	and r0, r1
	lsr r6, r6, #0x18
	orr r6, r0
	ldr r0, _021D2C74 ; =0x04001040
	and r3, r1
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	strh r6, [r0]
	orr r1, r3
	sub r2, #0xb
	strh r1, [r0, #4]
	ldrb r0, [r5, r2]
	cmp r0, #1
	bne _021D2C40
	bl ov77_021D2C80
	ldr r0, _021D2C78 ; =0x00000245
	mov r1, #0
	strb r1, [r5, r0]
_021D2C40:
	ldr r0, _021D2C7C ; =0x00000246
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2C52
	bl ov77_021D2CE8
	ldr r0, _021D2C7C ; =0x00000246
	mov r1, #0
	strb r1, [r5, r0]
_021D2C52:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl ov77_021D6E40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C64: .word 0x0000025B
_021D2C68: .word 0x021BF6DC
_021D2C6C: .word 0x00000247
_021D2C70: .word 0x04000040
_021D2C74: .word 0x04001040
_021D2C78: .word 0x00000245
_021D2C7C: .word 0x00000246
	thumb_func_end ov77_021D2B38

	thumb_func_start ov77_021D2C80
ov77_021D2C80: ; 0x021D2C80
	push {r3, r4, r5, r6}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _021D2CE0 ; =0xFFFF1FFF
	add r3, r1, #0
	add r5, r0, #0
	and r3, r2
	lsr r1, r0, #0xd
	orr r1, r3
	str r1, [r0, #0]
	add r5, #0x48
	ldrh r1, [r5]
	mov r4, #0x3f
	mov r3, #0x1f
	bic r1, r4
	orr r1, r3
	mov r6, #0x20
	orr r1, r6
	strh r1, [r5]
	add r0, #0x4a
	ldrh r1, [r0]
	mov r5, #0x11
	bic r1, r4
	orr r1, r5
	orr r1, r6
	strh r1, [r0]
	ldr r0, _021D2CE4 ; =0x04001000
	ldr r1, [r0, #0]
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	add r2, #0x48
	ldrh r1, [r2]
	add r0, #0x4a
	bic r1, r4
	orr r1, r3
	orr r1, r6
	strh r1, [r2]
	ldrh r1, [r0]
	bic r1, r4
	orr r1, r5
	orr r1, r6
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_021D2CE0: .word 0xFFFF1FFF
_021D2CE4: .word 0x04001000
	thumb_func_end ov77_021D2C80

	thumb_func_start ov77_021D2CE8
ov77_021D2CE8: ; 0x021D2CE8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2D00 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2D04 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bx lr
	nop
_021D2D00: .word 0xFFFF1FFF
_021D2D04: .word 0x04001000
	thumb_func_end ov77_021D2CE8

	thumb_func_start ov77_021D2D08
ov77_021D2D08: ; 0x021D2D08
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200AB84
	ldr r1, _021D2D8C ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _021D2D8C ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x4c
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x2b
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x4c
	bl sub_0200681C
	mov r2, #0x2b
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x4c
	str r0, [r4, #0]
	mov r1, #0
	mov r0, #0xab
	str r1, [r4, #8]
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, _021D2D90 ; =0x021BF6DC
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201D2D0
	str r0, [r4, #0x14]
	mov r0, #0
	bl sub_0201D2DC
	mov r0, #1
	pop {r4, pc}
	nop
_021D2D8C: .word 0x00007FFF
_021D2D90: .word 0x021BF6DC
	thumb_func_end ov77_021D2D08

	thumb_func_start ov77_021D2D94
ov77_021D2D94: ; 0x021D2D94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D2DD0
	ldr r0, _021D2E58 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021D2DB8
	mov r0, #8
	tst r0, r1
	beq _021D2DD0
_021D2DB8:
	mov r0, #1
	str r0, [r5, #8]
	ldr r1, _021D2E58 ; =0x021BF67C
	mov r0, #0
	str r0, [r1, #0x6c]
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
_021D2DD0:
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _021D2E3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2DE2: ; jump table
	.short _021D2DEC - _021D2DE2 - 2 ; case 0
	.short _021D2DFC - _021D2DE2 - 2 ; case 1
	.short _021D2E0E - _021D2DE2 - 2 ; case 2
	.short _021D2E20 - _021D2DE2 - 2 ; case 3
	.short _021D2E32 - _021D2DE2 - 2 ; case 4
_021D2DEC:
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [r5, #0x30]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2DFC:
	add r0, r5, #0
	bl ov77_021D2E9C
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E0E:
	add r0, r5, #0
	bl ov77_021D33F0
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E20:
	add r0, r5, #0
	bl ov77_021D5254
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E42
_021D2E32:
	ldr r1, [r5, #4]
	ldr r0, _021D2E5C ; =0x0000097E
	cmp r1, r0
	blt _021D2E42
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2E3E:
	bl sub_02022974
_021D2E42:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D2E4C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D2E4C:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2E58: .word 0x021BF67C
_021D2E5C: .word 0x0000097E
	thumb_func_end ov77_021D2D94

	thumb_func_start ov77_021D2E60
ov77_021D2E60: ; 0x021D2E60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2E76
	bl sub_0200F2C0
_021D2E76:
	ldr r0, [r4, #0x14]
	bl sub_0201D2DC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4c
	bl sub_0201807C
	ldr r0, _021D2E94 ; =0x0000004D
	ldr r1, _021D2E98 ; =0x021D742C
	bl sub_02000EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2E94: .word 0x0000004D
_021D2E98: .word 0x021D742C
	thumb_func_end ov77_021D2E60

	thumb_func_start ov77_021D2E9C
ov77_021D2E9C: ; 0x021D2E9C
	push {r4, lr}
	add r1, r0, #0
	ldr r0, [r1, #8]
	add r4, r1, #0
	add r4, #0x18
	cmp r0, #0
	beq _021D2EAE
	mov r0, #3
	strb r0, [r4]
_021D2EAE:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021D2F06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2EC0: ; jump table
	.short _021D2EC8 - _021D2EC0 - 2 ; case 0
	.short _021D2ED6 - _021D2EC0 - 2 ; case 1
	.short _021D2EE6 - _021D2EC0 - 2 ; case 2
	.short _021D2EFC - _021D2EC0 - 2 ; case 3
_021D2EC8:
	add r0, r1, #0
	bl ov77_021D2F0C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2ED6:
	add r1, #0x18
	add r0, r1, #0
	bl ov77_021D2F38
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EE6:
	add r0, r1, #0
	ldr r1, [r1, #4]
	add r0, #0x18
	bl ov77_021D30D0
	cmp r0, #0
	beq _021D2F06
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EFC:
	add r0, r1, #0
	bl ov77_021D3234
	mov r0, #1
	pop {r4, pc}
_021D2F06:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D2E9C

	thumb_func_start ov77_021D2F0C
ov77_021D2F0C: ; 0x021D2F0C
	push {r4, lr}
	add r4, r0, #0
	bl ov77_021D25B0
	add r0, r4, #0
	bl ov77_021D2610
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x24]
	bl ov77_021D670C
	str r0, [r4, #0x2c]
	ldr r0, _021D2F34 ; =ov77_021D2B30
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	nop
_021D2F34: .word ov77_021D2B30
	thumb_func_end ov77_021D2F0C

	thumb_func_start ov77_021D2F38
ov77_021D2F38: ; 0x021D2F38
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x10
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x10
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x11
	mov r3, #2
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x12
	mov r3, #6
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0xf
	add r3, r2, #0
	bl sub_02006E84
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0xf
	mov r2, #4
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x30
	mov r1, #0xf
	mov r3, #1
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x30
	mov r1, #0xd
	mov r3, #1
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x30
	mov r1, #0xe
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x13
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x13
	mov r3, #7
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x72
	mov r3, #5
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x80
	mov r1, #0x71
	mov r3, #5
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0x73
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D30C8 ; =0x04000050
	mov r1, #2
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D30CC ; =0x04001050
	mov r1, #2
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	bl sub_0201FFD0
	add sp, #0x10
	pop {r4, pc}
	nop
_021D30C8: .word 0x04000050
_021D30CC: .word 0x04001050
	thumb_func_end ov77_021D2F38

	thumb_func_start ov77_021D30D0
ov77_021D30D0: ; 0x021D30D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	add r5, r1, #0
	bl ov77_021D69C0
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _021D30E6
	b _021D3208
_021D30E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D30F2: ; jump table
	.short _021D30FE - _021D30F2 - 2 ; case 0
	.short _021D3122 - _021D30F2 - 2 ; case 1
	.short _021D3148 - _021D30F2 - 2 ; case 2
	.short _021D31AE - _021D30F2 - 2 ; case 3
	.short _021D31CE - _021D30F2 - 2 ; case 4
	.short _021D31FA - _021D30F2 - 2 ; case 5
_021D30FE:
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3210 ; =ov77_021D32A4
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	mov r0, #1
	ldr r1, _021D3214 ; =0x00000494
	add r2, r0, #0
	bl sub_02004550
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3122:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	cmp r5, #0x73
	blt _021D3208
	mov r2, #0
	strb r2, [r4, #7]
	mov r0, #0x10
	strb r0, [r4, #6]
	ldr r0, _021D3218 ; =ov77_021D3300
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3148:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D321C ; =0x00000109
	cmp r5, r0
	blt _021D3208
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D3220 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D3224 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3228 ; =ov77_021D3360
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31AE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	mov r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D322C ; =ov77_021D33A8
	strb r2, [r4, #8]
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31CE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D3230 ; =0x000001EA
	cmp r5, r0
	blt _021D3208
	mov r0, #0x12
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31FA:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3208
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D3208:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D3210: .word ov77_021D32A4
_021D3214: .word 0x00000494
_021D3218: .word ov77_021D3300
_021D321C: .word 0x00000109
_021D3220: .word 0x04000050
_021D3224: .word 0x04001050
_021D3228: .word ov77_021D3360
_021D322C: .word ov77_021D33A8
_021D3230: .word 0x000001EA
	thumb_func_end ov77_021D30D0

	thumb_func_start ov77_021D3234
ov77_021D3234: ; 0x021D3234
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _021D3286
	ldr r0, [r4, #0x2c]
	bl ov77_021D67B0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r0, #0
	strb r0, [r4, #0x1a]
_021D3286:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D32A0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D3296
	bl sub_02022974
_021D3296:
	ldr r0, [r4, #0x28]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x28]
_021D32A0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D3234

	thumb_func_start ov77_021D32A4
ov77_021D32A4: ; 0x021D32A4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #6
	blo _021D32C0
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D32C0:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D32D2
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D32D2:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32F8 ; =0x04000050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32FC ; =0x04001050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D32F8: .word 0x04000050
_021D32FC: .word 0x04001050
	thumb_func_end ov77_021D32A4

	thumb_func_start ov77_021D3300
ov77_021D3300: ; 0x021D3300
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D331C
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	sub r1, r1, #1
	strb r1, [r4, #6]
_021D331C:
	ldrb r1, [r4, #6]
	cmp r1, #0
	bne _021D3332
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r4, #8]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
_021D3332:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D3358 ; =0x04000050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D335C ; =0x04001050
	mov r1, #2
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D3358: .word 0x04000050
_021D335C: .word 0x04001050
	thumb_func_end ov77_021D3300

	thumb_func_start ov77_021D3360
ov77_021D3360: ; 0x021D3360
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D337C
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D337C:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D338E
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D338E:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33A4 ; =0x04000050
	mov r1, #4
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33A4: .word 0x04000050
	thumb_func_end ov77_021D3360

	thumb_func_start ov77_021D33A8
ov77_021D33A8: ; 0x021D33A8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D33C4
	mov r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
_021D33C4:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D33D6
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #8]
_021D33D6:
	mov r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33EC ; =0x04001050
	mov r1, #4
	mov r2, #8
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33EC: .word 0x04001050
	thumb_func_end ov77_021D33A8

	thumb_func_start ov77_021D33F0
ov77_021D33F0: ; 0x021D33F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r5, #0
	add r4, #0x34
	cmp r0, #0
	beq _021D3402
	mov r0, #4
	strb r0, [r4]
_021D3402:
	ldrb r0, [r4]
	cmp r0, #4
	bhi _021D34A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3414: ; jump table
	.short _021D341E - _021D3414 - 2 ; case 0
	.short _021D342C - _021D3414 - 2 ; case 1
	.short _021D343C - _021D3414 - 2 ; case 2
	.short _021D3458 - _021D3414 - 2 ; case 3
	.short _021D349A - _021D3414 - 2 ; case 4
_021D341E:
	add r0, r5, #0
	bl ov77_021D34A8
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D342C:
	add r5, #0x34
	add r0, r5, #0
	bl ov77_021D37C0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D343C:
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0
	bl ov77_021D40DC
	cmp r0, #1
	bne _021D34A4
	mov r0, #1
	add r5, #0x3a
	strb r0, [r5]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D3458:
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, r5, #0
	add r1, #0x34
	bl ov77_021D4230
	cmp r0, #0
	beq _021D346E
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021D346E:
	ldr r0, [r5, #0x48]
	bl ov77_021D6020
	add r0, r5, #0
	add r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3492
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D34A4
	add r5, #0x34
	add r0, r5, #0
	bl ov77_021D4188
	b _021D34A4
_021D3492:
	ldr r0, [r5, #0x50]
	bl ov77_021D6E50
	b _021D34A4
_021D349A:
	add r0, r5, #0
	bl ov77_021D36F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D34A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D33F0

	thumb_func_start ov77_021D34A8
ov77_021D34A8: ; 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov77_021D25D0
	add r0, r5, #0
	bl ov77_021D2724
	add r0, r5, #0
	bl ov77_021D2A58
	bl ov77_021D555C
	add r4, r0, #0
	bl ov77_021D6CB8
	add r6, r0, #0
	mov r0, #0x4c
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0x48]
	mov r0, #0x10
	bl ov77_021D6734
	str r0, [r5, #0x4c]
	mov r0, #0x4c
	add r1, r6, #0
	bl sub_02018144
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x48]
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	ldr r0, [r5, #0x50]
	mov r1, #0
	add r2, r6, #0
	bl sub_020D5124
	add r0, r5, #0
	mov r1, #4
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r5, #0x50]
	bl ov77_021D6CFC
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [r5, #0x44]
	ldr r0, _021D3598 ; =0x021BF6DC
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r6, _021D359C ; =0x021D776C
	ldr r7, _021D35A0 ; =0x021D7444
	mov r4, #0
_021D351C:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r3, r6, r1
	ldr r2, [r3, #4]
	ldr r1, [r6, r1]
	ldr r3, [r3, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	lsl r1, r4, #1
	ldrh r1, [r7, r1]
	add r0, r4, #0
	bl sub_020AF558
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D351C
	ldr r0, _021D35A4 ; =0x00004210
	ldr r1, _021D35A8 ; =0x0000318A
	mov r2, #0
	bl sub_020AF56C
	ldr r0, _021D35AC ; =0x00004A52
	ldr r1, _021D35B0 ; =0x000039CE
	mov r2, #0
	bl sub_020AF590
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xe
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0xd
	mov r2, #2
	add r3, r1, #0
	bl sub_020AF5B4
	ldr r0, _021D35B4 ; =ov77_021D2B38
	add r1, r5, #0
	bl sub_02017798
	mov r0, #0xf
	mvn r0, r0
	mov r1, #8
	mov r2, #1
	bl sub_0200AB4C
	mov r0, #1
	add r5, #0x36
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3598: .word 0x021BF6DC
_021D359C: .word 0x021D776C
_021D35A0: .word 0x021D7444
_021D35A4: .word 0x00004210
_021D35A8: .word 0x0000318A
_021D35AC: .word 0x00004A52
_021D35B0: .word 0x000039CE
_021D35B4: .word ov77_021D2B38
	thumb_func_end ov77_021D34A8

	thumb_func_start ov77_021D35B8
ov77_021D35B8: ; 0x021D35B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D35CE
	add r0, r5, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3618
_021D35CE:
	bl sub_020203E0
	ldr r0, [r5, #0x5c]
	bl sub_020203B8
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _021D35FE
	mov r7, #0x27
	add r4, r5, #0
	lsl r7, r7, #4
_021D35EA:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x58
	cmp r6, r0
	blt _021D35EA
_021D35FE:
	mov r0, #0x27
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r5, #0x54]
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r5, #0x39
	strb r1, [r5]
_021D3618:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D35B8

	thumb_func_start ov77_021D361C
ov77_021D361C: ; 0x021D361C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r4, r1, #0
	cmp r0, #0
	beq _021D36F0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021D36F0
	ldr r1, _021D36F4 ; =0x0000028E
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021D3670
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
	b _021D36E2
_021D3670:
	cmp r1, #1
	bne _021D36A4
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
	b _021D36E2
_021D36A4:
	mov r1, #0
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r5, #0xc]
	mov r1, #7
	bl sub_02019044
_021D36E2:
	cmp r4, #1
	bne _021D36F0
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0xc]
_021D36F0:
	pop {r3, r4, r5, pc}
	nop
_021D36F4: .word 0x0000028E
	thumb_func_end ov77_021D361C

	thumb_func_start ov77_021D36F8
ov77_021D36F8: ; 0x021D36F8
	push {r4, lr}
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0]
	ldr r1, _021D37B8 ; =0xFFFF1FFF
	add r4, r0, #0
	and r1, r2
	str r1, [r3, #0]
	bl ov77_021D35B8
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3724
	ldr r0, [r4, #0x48]
	bl ov77_021D5BAC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x37
	strb r1, [r0]
_021D3724:
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3788
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D373C
	bl ov77_021D6760
	mov r0, #0
	str r0, [r4, #0x4c]
_021D373C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021D374A
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x48]
_021D374A:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021D375E
	bl ov77_021D6E28
	ldr r0, [r4, #0x50]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x50]
_021D375E:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D361C
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D377C
	bl sub_020181C4
	mov r0, #0x9d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D377C:
	ldr r0, [r4, #0x10]
	bl sub_020242C4
	mov r0, #0
	add r4, #0x36
	strb r0, [r4]
_021D3788:
	bl sub_020B2628
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D37B8 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D37BC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r4, pc}
	nop
_021D37B8: .word 0xFFFF1FFF
_021D37BC: .word 0x04001000
	thumb_func_end ov77_021D36F8

	thumb_func_start ov77_021D37C0
ov77_021D37C0: ; 0x021D37C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r3, #6
	lsl r3, r3, #6
	str r3, [sp]
	mov r1, #0x40
	str r1, [sp, #4]
	mov r1, #0x4c
	str r1, [sp, #8]
	mov r1, #0x60
	mov r2, #0
	add r4, r0, #0
	bl sub_02007148
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x5f
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #3
	bl sub_0200710C
	mov r3, #7
	lsl r3, r3, #6
	str r3, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02007148
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #2
	bl sub_0200710C
	mov r0, #0x41
	mov r1, #0x4c
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, #0x38
	mov r3, #1
	add r6, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0x39
	mov r3, #1
	bl sub_0200710C
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	mov r1, #0x39
	mov r3, #1
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x4c
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x37
	add r3, r2, #0
	bl sub_02007130
	add r0, r6, #0
	bl sub_02006CA8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #4
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3b
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3f
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3a
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3e
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x3c
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x40
	mov r3, #7
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0xc
	mov r3, #4
	bl sub_0200710C
	mov r3, #7
	lsl r3, r3, #6
	str r3, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #4
	bl sub_02007148
	ldr r0, [r5, #0x14]
	bl ov77_021D5564
	ldr r0, [r5, #0x14]
	bl ov77_021D5C3C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	bl ov77_021D5FB4
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3A0C ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r0, #0xe
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	strb r0, [r5, #3]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D3A0C: .word 0x05000400
	thumb_func_end ov77_021D37C0

	thumb_func_start ov77_021D3A10
ov77_021D3A10: ; 0x021D3A10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02018898
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02018898
	ldr r1, _021D3B54 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x4c
	str r1, [sp, #4]
	mov r1, #0x44
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x42
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x46
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x41
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x45
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x43
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x47
	mov r3, #3
	bl sub_0200710C
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3B58 ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3B54: .word 0x04000008
_021D3B58: .word 0x05000400
	thumb_func_end ov77_021D3A10

	thumb_func_start ov77_021D3B5C
ov77_021D3B5C: ; 0x021D3B5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl ov77_021D2828
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x4c
	str r1, [sp, #4]
	mov r1, #0x48
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #4
	bl sub_02007130
	mov r1, #2
	mov r0, #0x4c
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #9
	lsl r2, r2, #6
	str r0, [r5, r2]
	mov r0, #5
	ldr r1, [r5, r2]
	lsl r0, r0, #0x18
	sub r2, #0x40
	bl sub_020C4B18
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x49
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x49
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4a
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4d
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4a
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4d
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4b
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4e
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4b
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	mov r2, #2
	bl sub_020C4AF0
	ldr r1, _021D3D48 ; =0x05000400
	mov r0, #0
	mov r2, #2
	bl sub_020C4AF0
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	sub r3, #0x80
	bl sub_02019184
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	sub r3, #0xc8
	bl sub_02019184
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	sub r3, #0x98
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	mov r3, #0x80
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #0
	mov r3, #0xc0
	bl sub_02019184
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #0
	mov r3, #0xb0
	bl sub_02019184
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3D48: .word 0x05000400
	thumb_func_end ov77_021D3B5C

	thumb_func_start ov77_021D3D4C
ov77_021D3D4C: ; 0x021D3D4C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl ov77_021D2900
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, #0x4f
	add r4, r0, #0
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x50
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x51
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0x52
	mov r3, #4
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D3D4C

	thumb_func_start ov77_021D3DC4
ov77_021D3DC4: ; 0x021D3DC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D3ED8 ; =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _021D3E50
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #1
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #0
	bl sub_02019060
	b _021D3ECC
_021D3E50:
	mov r2, #3
	add r3, r2, #0
	mov r1, #1
	add r3, #0xfd
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, #0xfd
	bl sub_02019184
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #1
	bl sub_02019060
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #7
	mov r1, #0
	bl sub_02019060
_021D3ECC:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov77_021D636C
	pop {r4, pc}
	nop
_021D3ED8: .word 0x021BF6DC
	thumb_func_end ov77_021D3DC4

	thumb_func_start ov77_021D3EDC
ov77_021D3EDC: ; 0x021D3EDC
	push {r4, lr}
	lsl r2, r1, #2
	ldr r1, _021D3F20 ; =0x021D7458
	add r4, r0, #0
	ldr r1, [r1, r2]
	mov r0, #0x80
	mov r2, #0x4c
	bl sub_02006AC0
	str r0, [r4, #0x20]
	bl sub_020B3C1C
	str r0, [r4, #0x24]
	bl sub_0201CBCC
	cmp r0, #0
	bne _021D3F02
	bl sub_02022974
_021D3F02:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D3F0E
	bl sub_02022974
_021D3F0E:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x20]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	sub r1, r1, r0
	bl sub_020182F0
	pop {r4, pc}
	nop
_021D3F20: .word 0x021D7458
	thumb_func_end ov77_021D3EDC

	thumb_func_start ov77_021D3F24
ov77_021D3F24: ; 0x021D3F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	str r3, [sp]
	cmp r3, #6
	ble _021D3F38
	mov r0, #6
	str r0, [sp]
_021D3F38:
	mov r0, #0x80
	mov r1, #0x4c
	bl sub_02006C24
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	bge _021D4036
	mov r0, #0x18
	ldr r1, _021D4040 ; =0x021D779C
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x2c
	str r0, [sp, #0xc]
_021D3F5E:
	ldr r0, [sp, #4]
	lsl r1, r7, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021D4036
	mov r0, #0x58
	add r6, r7, #0
	mul r6, r0
	ldr r0, [sp, #8]
	mov r2, #0x4c
	bl sub_02006CB8
	add r1, r5, r6
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x24]
	bl sub_0201CBB0
	cmp r0, #0
	bne _021D3F90
	bl sub_02022974
_021D3F90:
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021D3FA4
	bl sub_02022974
_021D3FA4:
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _021D3FD2
	add r2, r0, #0
	add r2, #8
	beq _021D3FC6
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021D3FC6
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021D3FC8
_021D3FC6:
	mov r1, #0
_021D3FC8:
	cmp r1, #0
	beq _021D3FD2
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _021D3FD4
_021D3FD2:
	mov r4, #0
_021D3FD4:
	cmp r4, #0
	bne _021D3FDC
	bl sub_02022974
_021D3FDC:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r0, r0, r6
	bl sub_020AE608
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020B2CE4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020B2CE4
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020B2CE4
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020B2CE4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	bl sub_020B2D8C
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	mov r0, #0x8f
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blt _021D3F5E
_021D4036:
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4040: .word 0x021D779C
	thumb_func_end ov77_021D3F24

	thumb_func_start ov77_021D4044
ov77_021D4044: ; 0x021D4044
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0x4c
	bl sub_020203AC
	add r3, sp, #0x18
	ldr r5, _021D40A0 ; =0x021D7494
	str r0, [r4, #0x28]
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, _021D40A4 ; =0x0029AEC1
	str r0, [r3, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r3, _021D40A8 ; =0x000005C1
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r2, _021D40AC ; =0x021D7500
	bl sub_020206D0
	ldr r0, _021D40B0 ; =0x00000981
	ldr r1, [r4, #0x28]
	bl sub_02020910
	ldr r5, _021D40B4 ; =0x021D7464
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, [r4, #0x28]
	bl sub_020203D4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D40A0: .word 0x021D7494
_021D40A4: .word 0x0029AEC1
_021D40A8: .word 0x000005C1
_021D40AC: .word 0x021D7500
_021D40B0: .word 0x00000981
_021D40B4: .word 0x021D7464
	thumb_func_end ov77_021D4044

	thumb_func_start ov77_021D40B8
ov77_021D40B8: ; 0x021D40B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #6
	bl ov77_021D3F24
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D40B8

	thumb_func_start ov77_021D40DC
ov77_021D40DC: ; 0x021D40DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	ldrb r2, [r4, #9]
	bne _021D4126
	cmp r2, #0
	beq _021D40F2
	cmp r2, #1
	beq _021D4104
	cmp r2, #2
	b _021D410E
_021D40F2:
	mov r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4104:
	mov r2, #0
	mov r3, #1
	bl ov77_021D3F24
	b _021D417C
_021D410E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #6
	bl ov77_021D3F24
	mov r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D4126:
	cmp r2, #3
	bhi _021D4164
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D4136: ; jump table
	.short _021D413E - _021D4136 - 2 ; case 0
	.short _021D4150 - _021D4136 - 2 ; case 1
	.short _021D415A - _021D4136 - 2 ; case 2
	.short _021D4164 - _021D4136 - 2 ; case 3
_021D413E:
	mov r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4150:
	mov r2, #0
	mov r3, #2
	bl ov77_021D3F24
	b _021D417C
_021D415A:
	mov r2, #2
	mov r3, #4
	bl ov77_021D3F24
	b _021D417C
_021D4164:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	mov r3, #6
	bl ov77_021D3F24
	mov r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	mov r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D417C:
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D40DC

	thumb_func_start ov77_021D4188
ov77_021D4188: ; 0x021D4188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021D4224 ; =0x021D76D0
	add r5, r0, #0
	add r3, sp, #0x18
	mov r2, #4
_021D4194:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D4194
	ldr r0, [r4, #0]
	add r2, sp, #0xc
	str r0, [r3, #0]
	ldr r3, _021D4228 ; =0x021D7488
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_020B2628
	bl sub_020241B4
	bl sub_020203EC
	mov r0, #0x97
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021D41FE
	sub r0, #0x20
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _021D41FE
	add r6, r5, #0
	mov r7, #0x8f
	add r6, #0x2c
	lsl r7, r7, #2
_021D41DE:
	bl sub_020C2BE8
	mov r0, #0x58
	mul r0, r4
	add r0, r6, r0
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl sub_0201CA74
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, r7]
	cmp r4, r0
	blt _021D41DE
_021D41FE:
	ldr r0, _021D422C ; =0x0000025D
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D4216
	bl sub_020B2628
	bl sub_020241B4
	bl sub_0201469C
	bl sub_020146C0
_021D4216:
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021D4224: .word 0x021D76D0
_021D4228: .word 0x021D7488
_021D422C: .word 0x0000025D
	thumb_func_end ov77_021D4188

	thumb_func_start ov77_021D4230
ov77_021D4230: ; 0x021D4230
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldrb r0, [r4, #7]
	add r5, r2, #0
	cmp r0, #0
	bne _021D424C
	mov r1, #0x91
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x18]
	bl ov77_021D6BA0
_021D424C:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	add r0, r0, #1
	bl sub_020E1F6C
	strb r1, [r4, #7]
	ldrb r0, [r4, #1]
	cmp r0, #0x13
	bhi _021D42D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D426A: ; jump table
	.short _021D4292 - _021D426A - 2 ; case 0
	.short _021D42BE - _021D426A - 2 ; case 1
	.short _021D4318 - _021D426A - 2 ; case 2
	.short _021D43D8 - _021D426A - 2 ; case 3
	.short _021D4428 - _021D426A - 2 ; case 4
	.short _021D45C2 - _021D426A - 2 ; case 5
	.short _021D469C - _021D426A - 2 ; case 6
	.short _021D46D2 - _021D426A - 2 ; case 7
	.short _021D4742 - _021D426A - 2 ; case 8
	.short _021D47D8 - _021D426A - 2 ; case 9
	.short _021D4878 - _021D426A - 2 ; case 10
	.short _021D48B8 - _021D426A - 2 ; case 11
	.short _021D4906 - _021D426A - 2 ; case 12
	.short _021D4946 - _021D426A - 2 ; case 13
	.short _021D4986 - _021D426A - 2 ; case 14
	.short _021D49D0 - _021D426A - 2 ; case 15
	.short _021D4AA6 - _021D426A - 2 ; case 16
	.short _021D4AD6 - _021D426A - 2 ; case 17
	.short _021D4B24 - _021D426A - 2 ; case 18
	.short _021D4B4E - _021D426A - 2 ; case 19
_021D4292:
	mov r0, #0xa
	lsl r0, r0, #6
	cmp r5, r0
	blt _021D42D0
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #8
	add r2, r1, #0
	sub r2, #0x10
	add r3, r0, #0
	bl sub_0200AAE0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D42BE:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D42D0
	mov r0, #0xaf
	lsl r0, r0, #2
	cmp r5, r0
	beq _021D42D4
_021D42D0:
	bl _021D4B54
_021D42D4:
	mov r0, #0
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #0x1c]
	mov r1, #9
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	bl ov77_021D6CD0
	mov r1, #0
	ldr r0, _021D45DC ; =0x04000050
	mov r2, #0xf
	add r3, r1, #0
	str r1, [sp]
	bl sub_020BF55C
	ldr r0, _021D45E0 ; =0x0000025D
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	bl ov77_021D6050
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D4318:
	ldr r0, _021D45E4 ; =0x00000311
	cmp r5, r0
	bne _021D4336
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
_021D4336:
	ldr r0, _021D45EC ; =0x00000316
	cmp r5, r0
	bne _021D4368
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D4348
	bl sub_02022974
_021D4348:
	ldr r0, _021D45F0 ; =0x00000247
	mov r2, #4
	strb r2, [r4, r0]
	mov r1, #8
	add r0, r0, #1
	strb r1, [r4, r0]
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
_021D4368:
	mov r0, #0x3b
	lsl r0, r0, #4
	cmp r5, r0
	bne _021D439A
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D45F4 ; =0x0000025B
	mov r3, #1
	strb r3, [r4, r0]
	add r1, r0, #2
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r0, #1
	strb r3, [r4, r0]
	ldr r0, [r4, #0x1c]
	bl ov77_021D6CBC
	bl sub_02014710
	cmp r0, #0
	beq _021D439A
	bl sub_02022974
_021D439A:
	ldr r0, _021D45F8 ; =0x000003B1
	cmp r5, r0
	bne _021D43A8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
_021D43A8:
	ldr r0, _021D45FC ; =0x000003CF
	cmp r5, r0
	blt _021D4458
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0x12
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #0x10
	strb r0, [r4, #8]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D43D8:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov77_021D513C
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D61B8
	ldr r0, _021D4600 ; =0x00000628
	cmp r5, r0
	blt _021D4458
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D45E8 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4428:
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D61B8
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4458
	mov r0, #0x19
	lsl r0, r0, #6
	cmp r5, r0
	bge _021D445A
_021D4458:
	b _021D4B54
_021D445A:
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl ov77_021D6000
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3A10
	mov r1, #1
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #1
	bl ov77_021D603C
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r1, #1
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0
	add r3, #0xff
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, #0xfd
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r1, #5
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0
	add r3, #0xfb
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, #0xfd
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0x26
	lsl r2, r2, #4
	mov r0, #1
	lsl r0, r0, #0x14
	add r1, r2, #0
	str r0, [r4, r2]
	add r6, r2, #0
	mov r0, #0
	sub r1, #0x16
	strh r0, [r4, r1]
	add r1, r2, #0
	mov r5, #0xff
	sub r1, #0x14
	strh r5, [r4, r1]
	add r1, r2, #0
	mov r3, #0x20
	sub r1, #0x12
	strh r3, [r4, r1]
	mov r1, #0x9f
	sub r6, #0x10
	strh r1, [r4, r6]
	add r6, r2, #0
	sub r6, #0xe
	strh r0, [r4, r6]
	add r6, r2, #0
	sub r6, #0xc
	strh r5, [r4, r6]
	add r5, r2, #0
	sub r5, #0xa
	strh r3, [r4, r5]
	add r3, r2, #0
	sub r3, #8
	strh r1, [r4, r3]
	mov r1, #1
	sub r2, #0x1b
	strb r1, [r4, r2]
	ldr r2, _021D45DC ; =0x04000050
	strb r0, [r4, #6]
	strh r0, [r2]
	ldr r2, _021D4604 ; =0x04001050
	ldr r3, _021D45E8 ; =0x00007FFF
	strh r0, [r2]
	mov r2, #0x12
	str r2, [sp]
	str r1, [sp, #4]
	mov r2, #0x4c
	str r2, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D45C2:
	add r0, r4, #0
	bl ov77_021D4B70
	ldr r0, [r4, #0x14]
	bl ov77_021D607C
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D46B0
	ldr r0, _021D4608 ; =0x00000726
	b _021D460C
	nop
_021D45DC: .word 0x04000050
_021D45E0: .word 0x0000025D
_021D45E4: .word 0x00000311
_021D45E8: .word 0x00007FFF
_021D45EC: .word 0x00000316
_021D45F0: .word 0x00000247
_021D45F4: .word 0x0000025B
_021D45F8: .word 0x000003B1
_021D45FC: .word 0x000003CF
_021D4600: .word 0x00000628
_021D4604: .word 0x04001050
_021D4608: .word 0x00000726
_021D460C:
	cmp r5, r0
	blt _021D46B0
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_0201C63C
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r0, #0x92
	mov r1, #0x22
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r1, #1
	sub r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #2
	mov r2, #0
	bl ov77_021D603C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D469C:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	ldr r0, _021D49F8 ; =0x00000735
	cmp r5, r0
	beq _021D46B2
_021D46B0:
	b _021D4B54
_021D46B2:
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D46D2:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D49FC ; =0x00000247
	mov r1, #0x22
	strb r1, [r4, r0]
	mov r2, #0
	mov r1, #0x44
	add r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4742:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6470
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D4A00 ; =0x00000744
	cmp r5, r0
	bne _021D47B0
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r3, #0xfd
	bl sub_0201C63C
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_0201C63C
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r3, #0xfd
	bl sub_0201C63C
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	mov r2, #1
	bl ov77_021D603C
	b _021D4B54
_021D47B0:
	add r0, #0x3c
	cmp r5, r0
	bge _021D47B8
_021D47B6:
	b _021D4B54
_021D47B8:
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D4A04 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D47D8:
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov77_021D6470
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4868
	mov r0, #0x40
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D4A04 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	mov r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xe
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	mov r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov77_021D636C
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3B5C
	ldr r0, _021D4A08 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, _021D4A0C ; =0x00000246
	mov r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4868:
	add r0, r4, #0
	bl ov77_021D4BE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4C04
	b _021D4B54
_021D4878:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	add r0, r4, #0
	add r1, r5, #0
	bl ov77_021D4DC8
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D48CA
	ldr r0, _021D4A10 ; =0x000007DA
	cmp r5, r0
	blt _021D48CA
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D48B8:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D48CC
_021D48CA:
	b _021D4B54
_021D48CC:
	mov r1, #0
	ldr r0, _021D4A14 ; =0x04000050
	mov r2, #0x3e
	add r3, r1, #0
	str r1, [sp]
	bl sub_020BF55C
	mov r1, #5
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl sub_020C4AF0
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4906:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4946:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A08 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	bl ov77_021D3DC4
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4986:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A18 ; =0x00000852
	cmp r5, r0
	blt _021D49E2
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D49D0:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D49E4
_021D49E2:
	b _021D4B54
_021D49E4:
	mov r2, #9
	lsl r2, r2, #6
	ldr r0, [r4, r2]
	mov r1, #5
	lsl r1, r1, #0x18
	sub r2, #0x40
	bl sub_020C4B18
	ldr r0, _021D4A08 ; =0x021BF6DC
	b _021D4A1C
	; .align 2, 0
_021D49F8: .word 0x00000735
_021D49FC: .word 0x00000247
_021D4A00: .word 0x00000744
_021D4A04: .word 0x00007FFF
_021D4A08: .word 0x021BF6DC
_021D4A0C: .word 0x00000246
_021D4A10: .word 0x000007DA
_021D4A14: .word 0x04000050
_021D4A18: .word 0x00000852
_021D4A1C:
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r6, #0
	add r1, r4, #0
	bl ov77_021D3D4C
	add r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov77_021D636C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	sub r3, #0x3c
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	sub r3, #0x3c
	bl sub_0201C63C
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	sub r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	mov r3, #0x3c
	bl sub_0201C63C
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AA6:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AD6:
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B5C ; =0x000008A7
	cmp r5, r0
	blt _021D4AF4
	add r0, r4, #0
	bl ov77_021D4E90
_021D4AF4:
	ldr r0, _021D4B60 ; =0x000008A8
	cmp r5, r0
	blt _021D4B54
	ldr r1, _021D4B64 ; =0x00000247
	mov r0, #0x11
	ldrb r2, [r4, r1]
	ldr r3, _021D4B68 ; =0x00007FFF
	orr r0, r2
	strb r0, [r4, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B24:
	add r0, r4, #0
	bl ov77_021D4E90
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0x10
	bl ov77_021D6290
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B6C ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B4E:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D4B54:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D4B5C: .word 0x000008A7
_021D4B60: .word 0x000008A8
_021D4B64: .word 0x00000247
_021D4B68: .word 0x00007FFF
_021D4B6C: .word 0x021BF6DC
	thumb_func_end ov77_021D4230

	thumb_func_start ov77_021D4B70
ov77_021D4B70: ; 0x021D4B70
	push {r4, lr}
	mov r3, #0x26
	add r4, r0, #0
	lsl r3, r3, #4
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0x20
	add r0, r1, r0
	str r0, [r4, r3]
	add r0, r3, #4
	ldr r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, r3, #4
	str r1, [r4, r0]
	add r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #1
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x26
	lsl r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #2
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x99
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #5
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r3, #0x26
	lsl r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asr r3, r3, #0xc
	mov r1, #6
	mov r2, #3
	neg r3, r3
	bl sub_02019184
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov77_021D4B70

	thumb_func_start ov77_021D4BE4
ov77_021D4BE4: ; 0x021D4BE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	mov r2, #1
	mov r3, #0x10
	bl sub_0201C63C
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #7
	sub r3, #0x11
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4BE4

	thumb_func_start ov77_021D4C04
ov77_021D4C04: ; 0x021D4C04
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021D4DB0 ; =0x00000744
	cmp r1, r0
	beq _021D4C10
	b _021D4D42
_021D4C10:
	ldr r7, _021D4DB4 ; =0x04000048
	ldr r3, _021D4DB8 ; =0x0000024A
	ldrh r2, [r7]
	mov r0, #0x3f
	mov r1, #0x1f
	bic r2, r0
	orr r1, r2
	mov r6, #0x20
	orr r1, r6
	strh r1, [r7]
	ldrh r2, [r7, #2]
	mov r1, #0x1d
	add r5, r3, #4
	bic r2, r0
	orr r1, r2
	orr r1, r6
	strh r1, [r7, #2]
	mov r1, #0
	strh r1, [r4, r3]
	mov r2, #0xff
	add r1, r3, #2
	strh r2, [r4, r1]
	mov r1, #0
	strh r1, [r4, r5]
	add r5, r3, #6
	mov r1, #0x88
	strh r1, [r4, r5]
	add r1, r5, #0
	ldrsh r1, [r4, r1]
	str r1, [sp]
	add r1, r3, #4
	ldrsh r1, [r4, r1]
	mov ip, r1
	ldrsh r1, [r4, r3]
	lsl r5, r1, #8
	lsl r1, r2, #8
	and r1, r5
	add r5, r3, #2
	ldrsh r5, [r4, r5]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r1
	add r1, r7, #0
	sub r1, #8
	strh r5, [r1]
	mov r1, ip
	lsl r5, r1, #8
	lsl r1, r2, #8
	and r1, r5
	ldr r5, [sp]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	orr r5, r1
	sub r1, r7, #4
	strh r5, [r1]
	lsl r1, r6, #0x15
	ldr r7, [r1, #0]
	ldr r5, _021D4DBC ; =0xFFFF1FFF
	and r7, r5
	lsl r5, r6, #8
	orr r5, r7
	str r5, [r1, #0]
	ldr r1, _021D4DC0 ; =0x04001048
	mov r5, #0x1f
	ldrh r7, [r1]
	bic r7, r0
	orr r5, r7
	orr r5, r6
	strh r5, [r1]
	ldrh r5, [r1, #2]
	bic r5, r0
	mov r0, #0x1d
	orr r0, r5
	orr r0, r6
	strh r0, [r1, #2]
	ldrh r5, [r1]
	ldr r0, _021D4DC4 ; =0xFFFFC0FF
	and r5, r0
	mov r0, #0x1f
	lsl r0, r0, #8
	orr r5, r0
	lsr r0, r1, #0xd
	orr r0, r5
	add r5, r3, #0
	strh r0, [r1]
	add r5, #8
	mov r0, #0
	strh r0, [r4, r5]
	add r0, r3, #0
	add r0, #0xa
	add r5, r3, #0
	strh r2, [r4, r0]
	add r5, #0xc
	mov r0, #0
	strh r0, [r4, r5]
	add r5, r3, #0
	add r5, #0xe
	mov r0, #0x88
	strh r0, [r4, r5]
	add r0, r3, #0
	add r0, #0xe
	ldrsh r6, [r4, r0]
	add r0, r3, #0
	add r0, #0xc
	ldrsh r5, [r4, r0]
	add r0, r3, #0
	add r0, #8
	ldrsh r0, [r4, r0]
	lsl r5, r5, #8
	lsl r7, r0, #8
	lsl r0, r2, #8
	and r0, r7
	add r7, r3, #0
	add r7, #0xa
	ldrsh r7, [r4, r7]
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	orr r7, r0
	add r0, r1, #0
	sub r0, #8
	strh r7, [r0]
	lsl r0, r2, #8
	and r5, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r5, r0
	sub r0, r1, #4
	strh r5, [r0]
	add r0, r3, #0
	add r0, #0xe
	add r3, #0xc
	ldrsh r0, [r4, r0]
	ldrsh r5, [r4, r3]
	lsr r4, r1, #0x12
	sub r3, r1, #6
	strh r4, [r3]
	lsl r0, r0, #0x18
	lsl r3, r5, #8
	lsl r2, r2, #8
	and r2, r3
	lsr r0, r0, #0x18
	orr r2, r0
	sub r0, r1, #2
	strh r2, [r0]
	sub r1, #0x48
	ldr r2, [r1, #0]
	ldr r0, _021D4DBC ; =0xFFFF1FFF
	and r2, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r2
	str r0, [r1, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D42:
	ble _021D4DAE
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02019FF0
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	blt _021D4D60
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #2
	orr r0, r2
	strb r0, [r4, r1]
_021D4D60:
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_02019FF0
	mov r1, #0xff
	mvn r1, r1
	cmp r0, r1
	bgt _021D4D7C
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0x20
	orr r0, r2
	strb r0, [r4, r1]
_021D4D7C:
	mov r1, #1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0xc
	bl sub_0201C63C
	mov r2, #4
	ldr r0, [r4, #0x10]
	mov r1, #1
	sub r3, r2, #5
	bl sub_0201C63C
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	sub r3, #0xd
	bl sub_0201C63C
	mov r2, #4
	ldr r0, [r4, #0x10]
	mov r1, #5
	sub r3, r2, #5
	bl sub_0201C63C
_021D4DAE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4DB0: .word 0x00000744
_021D4DB4: .word 0x04000048
_021D4DB8: .word 0x0000024A
_021D4DBC: .word 0xFFFF1FFF
_021D4DC0: .word 0x04001048
_021D4DC4: .word 0xFFFFC0FF
	thumb_func_end ov77_021D4C04

	thumb_func_start ov77_021D4DC8
ov77_021D4DC8: ; 0x021D4DC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D4E84 ; =0x00000788
	add r4, r1, #0
	cmp r4, r0
	ble _021D4E0A
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4DE6
	mov r3, #0
_021D4DE6:
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #5
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E00
	mov r3, #0
_021D4E00:
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_0201C63C
_021D4E0A:
	ldr r0, _021D4E88 ; =0x0000078E
	cmp r4, r0
	blt _021D4E46
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4E22
	mov r3, #0
_021D4E22:
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #6
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E3C
	mov r3, #0
_021D4E3C:
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_0201C63C
_021D4E46:
	ldr r0, _021D4E8C ; =0x00000794
	cmp r4, r0
	blt _021D4E82
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0x14
	cmp r3, #0
	ble _021D4E5E
	mov r3, #0
_021D4E5E:
	ldr r0, [r5, #0x10]
	mov r1, #3
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x10]
	mov r1, #7
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0x14
	bpl _021D4E78
	mov r3, #0
_021D4E78:
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #0
	bl sub_0201C63C
_021D4E82:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4E84: .word 0x00000788
_021D4E88: .word 0x0000078E
_021D4E8C: .word 0x00000794
	thumb_func_end ov77_021D4DC8

	thumb_func_start ov77_021D4E90
ov77_021D4E90: ; 0x021D4E90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4EA6
	mov r3, #0
_021D4EA6:
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4EC0
	mov r3, #0
_021D4EC0:
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4EDC
	mov r3, #0
_021D4EDC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #6
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4EF6
	mov r3, #0
_021D4EF6:
	ldr r0, [r4, #0x10]
	mov r1, #6
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_020192EC
	add r3, r0, #0
	add r3, #0xc
	cmp r3, #0
	ble _021D4F12
	mov r3, #0
_021D4F12:
	ldr r0, [r4, #0x10]
	mov r1, #3
	mov r2, #0
	bl sub_0201C63C
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_020192EC
	add r3, r0, #0
	sub r3, #0xc
	bpl _021D4F2C
	mov r3, #0
_021D4F2C:
	ldr r0, [r4, #0x10]
	mov r1, #7
	mov r2, #0
	bl sub_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4E90

	thumb_func_start ov77_021D4F38
ov77_021D4F38: ; 0x021D4F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, sp, #0x64
	mov r2, #0
	str r2, [r0, #0]
	ldr r5, _021D5100 ; =0x000004A7
	str r2, [r0, #4]
	str r2, [r0, #8]
	cmp r1, r5
	bge _021D4F84
	ldr r0, [r4, #0x28]
	bl sub_02020A88
	ldr r1, _021D5104 ; =0x000005C1
	sub r0, #0x20
	cmp r0, r1
	ble _021D4F66
	ldr r0, _021D5108 ; =0x0000FFE0
	ldr r1, [r4, #0x28]
	bl sub_0202094C
	b _021D4F6E
_021D4F66:
	add r0, r1, #0
	ldr r1, [r4, #0x28]
	bl sub_02020910
_021D4F6E:
	mov r0, #2
	ldr r1, [sp, #0x6c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x6c]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl sub_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D4F84:
	bne _021D502A
	ldr r6, _021D510C ; =0x021D7470
	add r5, sp, #0x58
	ldmia r6!, {r0, r1}
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D5110 ; =0x0029AEC1
	str r0, [r5, #0]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 ; =0x021D7500
	str r0, [sp, #8]
	add r0, r3, #0
	ldr r3, _021D5104 ; =0x000005C1
	bl sub_020206D0
	ldr r5, _021D5118 ; =0x021D74A0
	add r3, sp, #0x4c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	bl sub_020B2628
	ldr r3, _021D511C ; =0x00001194
	mov r0, #1
	mov r1, #0
	mov r2, #3
	bl sub_020BFC74
	ldr r1, _021D5120 ; =0x001F7FFF
	ldr r0, _021D5124 ; =0x04000358
	mov r7, #0
	str r1, [r0, #0]
	mov r0, #4
	add r1, r7, #0
	mov r2, #8
	mov r3, #0xc
	add r4, sp, #0x2c
_021D4FE0:
	lsl r5, r3, #0x18
	mov ip, r5
	lsl r5, r0, #8
	lsl r6, r2, #0x10
	orr r5, r1
	orr r5, r6
	mov r6, ip
	orr r5, r6
	add r7, r7, #1
	stmia r4!, {r5}
	add r0, #0x10
	add r1, #0x10
	add r2, #0x10
	add r3, #0x10
	cmp r7, #8
	blt _021D4FE0
	add r0, sp, #0x2c
	bl sub_020BFD44
	mov r0, #9
	str r0, [sp]
	ldr r0, _021D5128 ; =0x04000050
	mov r1, #2
	mov r2, #0x21
	mov r3, #7
	bl sub_020BF55C
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D502A:
	add r3, r5, #0
	add r3, #0xd2
	cmp r1, r3
	bge _021D5052
	mov r1, #1
	ldr r2, [sp, #0x64]
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [sp, #0x64]
	ldr r1, [r4, #0x28]
	bl sub_02020990
	mov r1, #1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #4
	bl sub_0201C63C
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D5052:
	add r5, #0xd2
	cmp r1, r5
	bne _021D50CC
	ldr r6, _021D512C ; =0x021D744C
	add r5, sp, #0x20
	ldmia r6!, {r0, r1}
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r1, _021D5110 ; =0x0029AEC1
	str r0, [r5, #0]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 ; =0x021D7500
	str r0, [sp, #8]
	add r0, r3, #0
	ldr r3, _021D5104 ; =0x000005C1
	bl sub_020206D0
	ldr r5, _021D5130 ; =0x021D747C
	add r3, sp, #0x14
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x28]
	add r0, r2, #0
	bl sub_02020990
	ldr r2, _021D5134 ; =0x021D743C
	add r1, sp, #0xc
	ldrh r3, [r2]
	add r0, sp, #0xc
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	strh r3, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r4, #0x28]
	bl sub_020209F8
	bl sub_020B2628
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	ldr r0, _021D5128 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	bl sub_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D50CC:
	ldr r0, _021D5138 ; =0x00000618
	cmp r1, r0
	blt _021D50EA
	ldr r0, [r4, #0x28]
	bl sub_02020A88
	mov r1, #1
	add r0, #0x18
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _021D50EA
	ldr r1, [r4, #0x28]
	mov r0, #0x18
	bl sub_0202094C
_021D50EA:
	mov r0, #2
	ldr r1, [sp, #0x64]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x64]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl sub_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5100: .word 0x000004A7
_021D5104: .word 0x000005C1
_021D5108: .word 0x0000FFE0
_021D510C: .word 0x021D7470
_021D5110: .word 0x0029AEC1
_021D5114: .word 0x021D7500
_021D5118: .word 0x021D74A0
_021D511C: .word 0x00001194
_021D5120: .word 0x001F7FFF
_021D5124: .word 0x04000358
_021D5128: .word 0x04000050
_021D512C: .word 0x021D744C
_021D5130: .word 0x021D747C
_021D5134: .word 0x021D743C
_021D5138: .word 0x00000618
	thumb_func_end ov77_021D4F38

	thumb_func_start ov77_021D513C
ov77_021D513C: ; 0x021D513C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D524C ; =0x00000573
	add r4, r1, #0
	cmp r2, r0
	bgt _021D5174
	bge _021D51FA
	sub r0, #0xd2
	sub r0, r2, r0
	cmp r0, #9
	bhi _021D5246
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5160: ; jump table
	.short _021D517E - _021D5160 - 2 ; case 0
	.short _021D5246 - _021D5160 - 2 ; case 1
	.short _021D5246 - _021D5160 - 2 ; case 2
	.short _021D5246 - _021D5160 - 2 ; case 3
	.short _021D5246 - _021D5160 - 2 ; case 4
	.short _021D5246 - _021D5160 - 2 ; case 5
	.short _021D519A - _021D5160 - 2 ; case 6
	.short _021D51B8 - _021D5160 - 2 ; case 7
	.short _021D51C4 - _021D5160 - 2 ; case 8
	.short _021D51D0 - _021D5160 - 2 ; case 9
_021D5174:
	ldr r0, _021D5250 ; =0x00000579
	cmp r2, r0
	beq _021D5216
	add sp, #0xc
	pop {r4, r5, pc}
_021D517E:
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D519A:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D51A6
	bl sub_02022974
_021D51A6:
	add r0, r5, #0
	bl ov77_021D35B8
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51B8:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51C4:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51D0:
	add r0, r4, #0
	mov r1, #1
	bl ov77_021D40DC
	cmp r0, #1
	beq _021D51E0
	bl sub_02022974
_021D51E0:
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D51FA:
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D5216:
	bl sub_0200F2AC
	cmp r0, #1
	beq _021D5222
	bl sub_02022974
_021D5222:
	add r0, r5, #0
	bl ov77_021D35B8
	add r0, r4, #0
	mov r1, #2
	bl ov77_021D40B8
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
_021D5246:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D524C: .word 0x00000573
_021D5250: .word 0x00000579
	thumb_func_end ov77_021D513C

	thumb_func_start ov77_021D5254
ov77_021D5254: ; 0x021D5254
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r5, #0xa7
	lsl r5, r5, #2
	cmp r0, #0
	beq _021D5266
	mov r0, #3
	strb r0, [r4, r5]
_021D5266:
	ldrb r0, [r4, r5]
	cmp r0, #3
	bhi _021D52C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5278: ; jump table
	.short _021D5280 - _021D5278 - 2 ; case 0
	.short _021D528E - _021D5278 - 2 ; case 1
	.short _021D52A0 - _021D5278 - 2 ; case 2
	.short _021D52B8 - _021D5278 - 2 ; case 3
_021D5280:
	add r0, r4, #0
	bl ov77_021D52C8
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D528E:
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov77_021D5308
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52A0:
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	add r0, r4, r0
	bl ov77_021D5390
	cmp r0, #0
	beq _021D52C2
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52B8:
	add r0, r4, #0
	bl ov77_021D5478
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D52C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D5254

	thumb_func_start ov77_021D52C8
ov77_021D52C8: ; 0x021D52C8
	push {r4, lr}
	add r4, r0, #0
	bl ov77_021D25F0
	add r0, r4, #0
	bl ov77_021D2A00
	mov r0, #0xa9
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _021D52FC ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _021D52FC ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	ldr r0, _021D5300 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021D5304 ; =0x0000029E
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D52FC: .word 0x00007FFF
_021D5300: .word 0x04000050
_021D5304: .word 0x0000029E
	thumb_func_end ov77_021D52C8

	thumb_func_start ov77_021D5308
ov77_021D5308: ; 0x021D5308
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r0, #0x80
	mov r1, #0x63
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0x80
	mov r1, #0x62
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0x80
	mov r1, #0x61
	mov r3, #2
	bl sub_02006E60
	bl sub_0201FF00
	mov r0, #0
	bl sub_0201FF48
	mov r0, #0
	bl sub_0201FFB0
	ldr r0, _021D538C ; =0xFFFE8000
	mov r2, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	ldr r5, [r4, #4]
	ldr r0, [r4, #8]
	asr r3, r5, #0xb
	lsr r3, r3, #0x14
	add r3, r5, r3
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r0, #1
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D538C: .word 0xFFFE8000
	thumb_func_end ov77_021D5308

	thumb_func_start ov77_021D5390
ov77_021D5390: ; 0x021D5390
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _021D5448
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D53A8: ; jump table
	.short _021D53B2 - _021D53A8 - 2 ; case 0
	.short _021D53D6 - _021D53A8 - 2 ; case 1
	.short _021D5404 - _021D53A8 - 2 ; case 2
	.short _021D5414 - _021D53A8 - 2 ; case 3
	.short _021D543A - _021D53A8 - 2 ; case 4
_021D53B2:
	ldr r0, _021D546C ; =0x0000089D
	cmp r1, r0
	blt _021D5448
	mov r0, #0x1e
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D5470 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D53D6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x5a
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5404:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5414:
	ldr r0, _021D5474 ; =0x00000974
	cmp r1, r0
	blt _021D5448
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D543A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5448
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D5448:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	add r5, r1, r0
	asr r3, r5, #0xb
	str r5, [r4, #4]
	lsr r3, r3, #0x14
	add r3, r5, r3
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D546C: .word 0x0000089D
_021D5470: .word 0x00007FFF
_021D5474: .word 0x00000974
	thumb_func_end ov77_021D5390

	thumb_func_start ov77_021D5478
ov77_021D5478: ; 0x021D5478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D54A8 ; =0x0000029E
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D5498
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, _021D54A8 ; =0x0000029E
	mov r1, #0
	strb r1, [r4, r0]
_021D5498:
	ldr r0, _021D54AC ; =0x0000029F
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D54A4
	mov r1, #0
	strb r1, [r4, r0]
_021D54A4:
	pop {r4, pc}
	nop
_021D54A8: .word 0x0000029E
_021D54AC: .word 0x0000029F
	thumb_func_end ov77_021D5478

	thumb_func_start ov77_021D54B0
ov77_021D54B0: ; 0x021D54B0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D54E4 ; =0x021D78BC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0xb
	mov r1, #0x4c
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #6
	mov r1, #0x4c
	bl sub_0201DBEC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D54E4: .word 0x021D78BC
	thumb_func_end ov77_021D54B0

	thumb_func_start ov77_021D54E8
ov77_021D54E8: ; 0x021D54E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r6, r0, #0
	mov r0, #0
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r5, r1, #0
	str r0, [sp, #0xc]
	mov r1, #0x4b
	str r2, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r4, r3, #0
	str r0, [sp, #0x14]
	add r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r1]
	add r1, r6, #0
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	bl sub_020093B4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [sp, #0x40]
	str r0, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x28]
	mov r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D54E8

	thumb_func_start ov77_021D555C
ov77_021D555C: ; 0x021D555C
	mov r0, #0x2a
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov77_021D555C

	thumb_func_start ov77_021D5564
ov77_021D5564: ; 0x021D5564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	add r5, r0, #0
	add r3, r1, #0
	ldr r0, _021D55C4 ; =0xFFCFFFEF
	mov r1, #0x10
	and r3, r0
	orr r3, r1
	str r3, [r2, #0]
	ldr r3, _021D55C8 ; =0x04001000
	ldr r2, [r3, #0]
	and r0, r2
	orr r0, r1
	str r0, [r3, #0]
	bl ov77_021D54B0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x21
	add r1, r5, #4
	mov r2, #0x4c
	bl sub_020095C4
	str r0, [r5, #0]
	mov r0, #3
	mov r1, #0x4c
	bl sub_0201DCC8
	mov r1, #0xa7
	lsl r1, r1, #2
	ldr r4, _021D55CC ; =0x021D7914
	b _021D55D0
	nop
_021D55C4: .word 0xFFCFFFEF
_021D55C8: .word 0x04001000
_021D55CC: .word 0x021D7914
_021D55D0:
	str r0, [r5, r1]
	mov r7, #0
	add r6, r5, #0
_021D55D6:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x4c
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _021D55D6
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2e
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2e
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x32
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x57
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x16
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x17
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5b
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x53
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x53
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x36
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x36
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x31
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x31
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x35
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5a
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x14
	mov r3, #0
	bl sub_020098B8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x15
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5e
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x56
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x56
	mov r3, #0
	bl sub_020098B8
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x39
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x39
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x30
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x30
	mov r3, #0
	bl sub_02009918
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x33
	mov r3, #0
	bl sub_02009918
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x59
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x18
	mov r3, #0
	bl sub_02009918
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5d
	mov r3, #0
	bl sub_02009918
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x55
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x55
	mov r3, #0
	bl sub_02009918
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x37
	mov r3, #0
	bl sub_02009918
	mov r1, #0x75
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x37
	mov r3, #0
	bl sub_02009918
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x19
	mov r3, #0
	bl sub_02009918
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2f
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2f
	mov r3, #0
	bl sub_02009918
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x34
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x58
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x1a
	mov r3, #0
	bl sub_02009918
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x1b
	mov r3, #0
	bl sub_02009918
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5c
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x54
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x54
	mov r3, #0
	bl sub_02009918
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x38
	mov r3, #0
	bl sub_02009918
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x38
	mov r3, #0
	bl sub_02009918
	mov r1, #0x7a
	lsl r1, r1, #2
	add r7, r1, #0
	add r6, r1, #0
	str r0, [r5, r1]
	mov r4, #0
	sub r7, #0xac
	sub r6, #0xa8
_021D5B8C:
	ldr r0, [r5, r7]
	bl sub_0200A3DC
	ldr r0, [r5, r6]
	bl sub_0200A640
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xb
	blt _021D5B8C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5564

	thumb_func_start ov77_021D5BAC
ov77_021D5BAC: ; 0x021D5BAC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021D5BB6:
	lsl r0, r4, #4
	add r6, r5, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, [r6, r7]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _021D5BB6
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D5BDA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D5BDA
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r0, #0x23
	lsl r0, r0, #4
	mov r4, #0
	add r6, r5, r0
	mov r7, #0x24
_021D5BFE:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_020094F0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D5BFE
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5C28
	bl sub_0201DCF0
	mov r0, #0xa7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D5C28:
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D5BAC

	thumb_func_start ov77_021D5C3C
ov77_021D5C3C: ; 0x021D5C3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	ldr r3, _021D5FA4 ; =0x021D78FC
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x40
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D5FA8 ; =0x021D78CC
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D5FAC ; =0x021D78E4
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #0x13
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	add r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, _021D5FB0 ; =0xFFFC0000
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	add r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, #1
	mov r0, #7
	add r1, r5, #0
	add r3, sp, #0x58
	str r2, [sp, #8]
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #8
	add r1, r5, #0
	mov r2, #1
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x12
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #9
	add r1, r5, #0
	mov r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x1a
	lsl r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa
	add r1, r5, #0
	mov r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x4a
	lsl r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, sp, #0x28
	add r6, sp, #0x10
	add r4, sp, #0x40
_021D5F36:
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x60]
	ldr r0, [r6, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	ldr r1, [r4, #0]
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _021D5F36
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5FA4: .word 0x021D78FC
_021D5FA8: .word 0x021D78CC
_021D5FAC: .word 0x021D78E4
_021D5FB0: .word 0xFFFC0000
	thumb_func_end ov77_021D5C3C

	thumb_func_start ov77_021D5FB4
ov77_021D5FB4: ; 0x021D5FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r3, r0, #0
	add r0, sp, #0x3c
	str r0, [sp]
	mov r2, #0
	add r6, r1, #0
	add r1, r3, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	add r3, sp, #0xc
	bl ov77_021D54E8
	mov r5, #0
	add r7, sp, #0xc
_021D5FD6:
	add r0, r6, #0
	add r1, r5, #0
	bl ov77_021D6794
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02021AA0
	str r0, [r4, #0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	cmp r5, #0x10
	blt _021D5FD6
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5FB4

	thumb_func_start ov77_021D6000
ov77_021D6000: ; 0x021D6000
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021D6008:
	add r0, r5, #0
	add r1, r4, #0
	bl ov77_021D6794
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	cmp r4, #0x10
	blt _021D6008
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6000

	thumb_func_start ov77_021D6020
ov77_021D6020: ; 0x021D6020
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D6038
	bl sub_0201DCE8
_021D6038:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6020

	thumb_func_start ov77_021D603C
ov77_021D603C: ; 0x021D603C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021D604C ; =sub_02021CAC
	add r1, r2, #0
	bx r3
	; .align 2, 0
_021D604C: .word sub_02021CAC
	thumb_func_end ov77_021D603C

	thumb_func_start ov77_021D6050
ov77_021D6050: ; 0x021D6050
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02021CC8
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6050

	thumb_func_start ov77_021D607C
ov77_021D607C: ; 0x021D607C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [sp]
	sub r0, #0x10
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [sp]
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D607C

	thumb_func_start ov77_021D60E0
ov77_021D60E0: ; 0x021D60E0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021D61B0 ; =0x00000582
	add r4, r0, #0
	cmp r5, r1
	bge _021D60F4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D60F4:
	bne _021D60FE
	mov r1, #3
	mov r2, #1
	bl ov77_021D603C
_021D60FE:
	ldr r0, _021D61B4 ; =0x00000627
	cmp r5, r0
	bge _021D6154
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r1, r1, r0
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	blt _021D6142
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D6142:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D6154:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0x12
	str r1, [sp]
	cmp r1, r0
	blt _021D619C
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov77_021D603C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D619C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D61B0: .word 0x00000582
_021D61B4: .word 0x00000627
	thumb_func_end ov77_021D60E0

	thumb_func_start ov77_021D61B8
ov77_021D61B8: ; 0x021D61B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021D6284 ; =0x000005DC
	add r4, r0, #0
	cmp r5, r1
	bge _021D61CC
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D61CC:
	bne _021D61D6
	mov r1, #0xa
	mov r2, #1
	bl ov77_021D603C
_021D61D6:
	ldr r0, _021D6288 ; =0x00000627
	cmp r5, r0
	bge _021D622C
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	bgt _021D621A
	str r0, [sp]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D621A:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D622C:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, _021D628C ; =0xFFFC0000
	str r1, [sp]
	cmp r1, r0
	bgt _021D6272
	str r0, [sp]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov77_021D603C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D6272:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D6284: .word 0x000005DC
_021D6288: .word 0x00000627
_021D628C: .word 0xFFFC0000
	thumb_func_end ov77_021D61B8

	thumb_func_start ov77_021D6290
ov77_021D6290: ; 0x021D6290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021D6364 ; =0x021BF6DC
	add r7, r1, #0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D62A6
	mov r6, #0xd
	mov r4, #0xf
	b _021D62AA
_021D62A6:
	mov r6, #0xf
	mov r4, #0xd
_021D62AA:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsl r0, r6, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	add r1, r0, r7
	mov r0, #6
	lsl r0, r0, #0x12
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D62E0
	mov r0, #1
	lsl r0, r0, #0x14
	sub r0, r1, r0
	str r0, [sp, #0xc]
_021D62E0:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x14
	sub r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r6, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #0x7b
	lsl r0, r0, #2
	add r6, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #8]
	ldr r0, [r6, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	sub r1, r0, r7
	ldr r0, _021D6368 ; =0xFFF80000
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _021D6338
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0xc]
_021D6338:
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6364: .word 0x021BF6DC
_021D6368: .word 0xFFF80000
	thumb_func_end ov77_021D6290

	thumb_func_start ov77_021D636C
ov77_021D636C: ; 0x021D636C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	bne _021D63E2
	ldr r0, _021D646C ; =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D63B0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	b _021D6412
_021D63B0:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	b _021D6412
_021D63E2:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
_021D6412:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D646C: .word 0x021BF6DC
	thumb_func_end ov77_021D636C

	thumb_func_start ov77_021D6470
ov77_021D6470: ; 0x021D6470
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D652C ; =0x00000744
	add r6, r1, #0
	sub r4, r6, r0
	bpl _021D6480
	mov r4, #0
_021D6480:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D30
	mov r1, #7
	add r2, r0, #0
	lsl r1, r1, #0xa
	mov r0, #0x86
	add r1, r2, r1
	lsl r0, r0, #2
	add r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D30
	mov r1, #7
	add r2, r0, #0
	lsl r1, r1, #0xa
	mov r0, #0x87
	sub r1, r2, r1
	lsl r0, r0, #2
	sub r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	ldr r0, _021D652C ; =0x00000744
	cmp r6, r0
	blt _021D6526
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r4, r0, #0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r4, r0, #0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
_021D6526:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D652C: .word 0x00000744
	thumb_func_end ov77_021D6470

	thumb_func_start ov77_021D6530
ov77_021D6530: ; 0x021D6530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _021D6650 ; =0x021D78B0
	add r2, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D6654 ; =0x021D789C
	ldr r1, [r0, #8]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021D6658 ; =0x000005A5
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65AC
	mov r4, #0
_021D655E:
	ldr r0, [sp, #8]
	lsl r7, r4, #2
	ldr r0, [r0, r7]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D665C ; =0x021D79AC
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D655E
_021D65AC:
	ldr r1, _021D6660 ; =0x000005D2
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65F4
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r4, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0x24
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, _021D6664 ; =0x021D79A0
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #3
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
_021D65F4:
	ldr r1, _021D6668 ; =0x000005E6
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D664C
	mov r5, #0
_021D65FE:
	lsl r7, r5, #2
	add r0, sp, #0xc
	ldr r0, [r0, r7]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r4, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D666C ; =0x021D79A4
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #3
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021D65FE
_021D664C:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6650: .word 0x021D78B0
_021D6654: .word 0x021D789C
_021D6658: .word 0x000005A5
_021D665C: .word 0x021D79AC
_021D6660: .word 0x000005D2
_021D6664: .word 0x021D79A0
_021D6668: .word 0x000005E6
_021D666C: .word 0x021D79A4
	thumb_func_end ov77_021D6530

	thumb_func_start ov77_021D6670
ov77_021D6670: ; 0x021D6670
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D669C ; =0x021D7920
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #1
	mov r1, #0x4c
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D669C: .word 0x021D7920
	thumb_func_end ov77_021D6670

	thumb_func_start ov77_021D66A0
ov77_021D66A0: ; 0x021D66A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r6, r2, #0
	str r1, [sp, #0xc]
	mov r2, #0x4b
	str r1, [sp, #0x10]
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r2]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, r6, #0
	bl sub_020093B4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	str r6, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov77_021D66A0

	thumb_func_start ov77_021D670C
ov77_021D670C: ; 0x021D670C
	push {r4, lr}
	mov r1, #0x7d
	mov r0, #0x4c
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x7d
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	add r0, r4, #0
	bl ov77_021D6800
	add r0, r4, #0
	bl ov77_021D6964
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov77_021D670C

	thumb_func_start ov77_021D6734
ov77_021D6734: ; 0x021D6734
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4c
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	mov r0, #0x4c
	add r1, r6, #0
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #4]
	bl sub_020D5124
	str r5, [r4, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6734

	thumb_func_start ov77_021D6760
ov77_021D6760: ; 0x021D6760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	ble _021D6786
	add r4, r6, #0
_021D676E:
	ldr r0, [r5, #4]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D677C
	bl sub_0200DA58
_021D677C:
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _021D676E
_021D6786:
	ldr r0, [r5, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6760

	thumb_func_start ov77_021D6794
ov77_021D6794: ; 0x021D6794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r4, r0
	blt _021D67A4
	bl sub_02022974
_021D67A4:
	mov r0, #0xc
	ldr r1, [r5, #4]
	mul r0, r4
	add r0, r1, r0
	add r0, r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D6794

	thumb_func_start ov77_021D67B0
ov77_021D67B0: ; 0x021D67B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov77_021D691C
	mov r6, #0x73
	mov r4, #0
	lsl r6, r6, #2
_021D67BE:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67CC
	bl sub_0200DA58
_021D67CC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D67BE
	mov r6, #0x55
	mov r4, #0
	mov r7, #0xc
	lsl r6, r6, #2
_021D67DE:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67EE
	bl sub_0200DA58
_021D67EE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021D67DE
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D67B0

	thumb_func_start ov77_021D6800
ov77_021D6800: ; 0x021D6800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	add r7, r0, #0
	add r3, r1, #0
	ldr r0, _021D6910 ; =0xFFCFFFEF
	mov r1, #0x10
	and r3, r0
	orr r3, r1
	str r3, [r2, #0]
	ldr r3, _021D6914 ; =0x04001000
	ldr r2, [r3, #0]
	and r0, r2
	orr r0, r1
	str r0, [r3, #0]
	bl ov77_021D6670
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0xa
	add r1, r7, #4
	mov r2, #0x4c
	bl sub_020095C4
	ldr r4, _021D6918 ; =0x021D7930
	str r0, [r7, #0]
	mov r6, #0
	add r5, r7, #0
_021D6854:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #0x4c
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021D6854
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #4
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r7, r0]
	mov r1, #0x80
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #5
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r7, r0]
	mov r1, #0x80
	mov r2, #6
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r7, r1]
	sub r1, #0xc
	ldr r0, [r7, r1]
	bl sub_0200A328
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	bl sub_0200A5C8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6910: .word 0xFFCFFFEF
_021D6914: .word 0x04001000
_021D6918: .word 0x021D7930
	thumb_func_end ov77_021D6800

	thumb_func_start ov77_021D691C
ov77_021D691C: ; 0x021D691C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D693A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D693A
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov77_021D691C

	thumb_func_start ov77_021D6964
ov77_021D6964: ; 0x021D6964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r7, r0, #0
	mov r6, #0
	add r4, r6, #0
	add r5, r7, #0
_021D6970:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #0x30
	bl ov77_021D66A0
	add r0, sp, #0
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl sub_02021AA0
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #2
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, r0
	add r5, #0xc
	cmp r6, #0xa
	blt _021D6970
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6964

	thumb_func_start ov77_021D69B4
ov77_021D69B4: ; 0x021D69B4
	ldr r3, _021D69BC ; =sub_020219F8
	ldr r0, [r0, #0]
	bx r3
	nop
_021D69BC: .word sub_020219F8
	thumb_func_end ov77_021D69B4

	thumb_func_start ov77_021D69C0
ov77_021D69C0: ; 0x021D69C0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r1, #0xb4
	bne _021D69E2
	mov r2, #3
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov77_021D6A0C
	b _021D69FC
_021D69E2:
	ldr r0, _021D6A08 ; =0x0000011D
	cmp r1, r0
	bne _021D69FC
	mov r2, #3
	add r0, #0xb7
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, r0
	add r1, r4, #0
	add r3, r2, #0
	bl ov77_021D6A0C
_021D69FC:
	add r0, r4, #0
	bl ov77_021D69B4
	add sp, #8
	pop {r4, pc}
	nop
_021D6A08: .word 0x0000011D
	thumb_func_end ov77_021D69C0

	thumb_func_start ov77_021D6A0C
ov77_021D6A0C: ; 0x021D6A0C
	push {r4, lr}
	add r4, r0, #0
	strb r2, [r4]
	ldr r2, _021D6A3C ; =0xFFFFFFF8
	strb r3, [r4, #1]
	add r2, sp
	ldrb r0, [r2, #0x10]
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #3]
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	add r1, r4, #0
	mov r2, #0xa
	strb r0, [r4, #5]
	ldr r0, _021D6A40 ; =ov77_021D6B0C
	bl sub_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_021D6A3C: .word 0xFFFFFFF8
_021D6A40: .word ov77_021D6B0C
	thumb_func_end ov77_021D6A0C

	thumb_func_start ov77_021D6A44
ov77_021D6A44: ; 0x021D6A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp]
	cmp r2, #0
	bne _021D6A54
	mov r7, #0x40
	b _021D6A56
_021D6A54:
	mov r7, #0x20
_021D6A56:
	mov r5, #0
	cmp r6, #0
	bls _021D6AD2
_021D6A5C:
	ldr r0, [sp]
	mov r1, #0xa
	bl ov77_021D6ADC
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x19
	sub r2, r2, r1
	mov r0, #0x19
	ror r2, r0
	add r0, r1, r2
	add r0, #0x40
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1a
	sub r2, r2, r1
	mov r0, #0x1a
	ror r2, r0
	add r0, r1, r2
	add r0, r7, r0
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_02021C50
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _021D6AD8 ; =ov77_021D6B48
	add r1, r4, #0
	mov r2, #0x14
	bl sub_0200D9E8
	str r0, [r4, #8]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _021D6A5C
_021D6AD2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6AD8: .word ov77_021D6B48
	thumb_func_end ov77_021D6A44

	thumb_func_start ov77_021D6ADC
ov77_021D6ADC: ; 0x021D6ADC
	push {r4, lr}
	mov r4, #0
	mov r2, #0xc
_021D6AE2:
	add r1, r4, #0
	mul r1, r2
	add r3, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021D6AFA
	mov r0, #1
	strb r0, [r3]
	mov r0, #0
	strb r0, [r3, #1]
	add r0, r3, #0
	pop {r4, pc}
_021D6AFA:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0xa
	blo _021D6AE2
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov77_021D6ADC

	thumb_func_start ov77_021D6B0C
ov77_021D6B0C: ; 0x021D6B0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #4]
	add r5, r0, #0
	add r0, r1, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #1]
	cmp r1, r0
	blo _021D6B44
	ldrb r1, [r4]
	ldrb r2, [r4, #5]
	ldr r0, [r4, #0xc]
	bl ov77_021D6A44
	mov r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _021D6B44
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #8]
_021D6B44:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6B0C

	thumb_func_start ov77_021D6B48
ov77_021D6B48: ; 0x021D6B48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl sub_02021C50
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0x50
	blo _021D6B9C
	add r0, r5, #0
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
_021D6B9C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D6B48

	thumb_func_start ov77_021D6BA0
ov77_021D6BA0: ; 0x021D6BA0
	ldr r3, _021D6BA8 ; =ov77_021D6BAC
	add r2, r1, #0
	mov r1, #2
	bx r3
	; .align 2, 0
_021D6BA8: .word ov77_021D6BAC
	thumb_func_end ov77_021D6BA0

	thumb_func_start ov77_021D6BAC
ov77_021D6BAC: ; 0x021D6BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r4, _021D6C3C ; =0x00000000
	beq _021D6C36
_021D6BBE:
	ldr r0, [sp, #4]
	ldr r1, [r6, #0]
	bl ov77_021D6ADC
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	mov r1, #0xe0
	bl sub_020E1F6C
	add r1, #0xa
	lsl r0, r1, #0xc
	str r0, [sp, #8]
	bl sub_0201D2E8
	mov r1, #0x38
	bl sub_020E1F6C
	add r1, #0xfa
	lsl r0, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #4]
	bne _021D6C1A
	mov r1, #1
	bl sub_02021CAC
	b _021D6C20
_021D6C1A:
	mov r1, #0
	bl sub_02021CAC
_021D6C20:
	ldr r0, _021D6C40 ; =ov77_021D6C44
	add r1, r5, #0
	mov r2, #0x14
	bl sub_0200D9E8
	str r0, [r5, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _021D6BBE
_021D6C36:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6C3C: .word 0x00000000
_021D6C40: .word ov77_021D6C44
	thumb_func_end ov77_021D6BAC

	thumb_func_start ov77_021D6C44
ov77_021D6C44: ; 0x021D6C44
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4, #1]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrb r1, [r4, #1]
	cmp r1, #8
	blo _021D6C6C
	bl sub_0200DA58
	mov r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl sub_02021CC8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
_021D6C6C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6C44

	thumb_func_start ov77_021D6C70
ov77_021D6C70: ; 0x021D6C70
	push {r4, lr}
	ldr r3, _021D6C90 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	cmp r4, #0
	bne _021D6C88
	bl sub_02022974
_021D6C88:
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6C90: .word 0x02100DEC
	thumb_func_end ov77_021D6C70

	thumb_func_start ov77_021D6C94
ov77_021D6C94: ; 0x021D6C94
	push {r4, lr}
	ldr r3, _021D6CB4 ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _021D6CA6
	bl sub_02022974
_021D6CA6:
	add r0, r4, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6CB4: .word 0x02100DF4
	thumb_func_end ov77_021D6C94

	thumb_func_start ov77_021D6CB8
ov77_021D6CB8: ; 0x021D6CB8
	mov r0, #0x2c
	bx lr
	thumb_func_end ov77_021D6CB8

	thumb_func_start ov77_021D6CBC
ov77_021D6CBC: ; 0x021D6CBC
	push {r4, lr}
	add r4, r0, #0
	beq _021D6CC8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D6CCC
_021D6CC8:
	bl sub_02022974
_021D6CCC:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov77_021D6CBC

	thumb_func_start ov77_021D6CD0
ov77_021D6CD0: ; 0x021D6CD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021D6CE0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D6CE4
_021D6CE0:
	bl sub_02022974
_021D6CE4:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02014788
	mov r2, #0
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r3, r2, #0
	bl sub_020146F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6CD0

	thumb_func_start ov77_021D6CFC
ov77_021D6CFC: ; 0x021D6CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r3, _021D6E14 ; =0x021D7934
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0x10
	bl sub_02013880
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mul r1, r2
	add r2, r0, r1
	mov r1, #1
	add r4, r2, #0
	and r4, r1
	mov r1, #3
	bl sub_020E2178
	add r2, r1, #0
	mov r1, #0
	add r6, sp, #0x28
	add r7, sp, #0x1c
_021D6D32:
	lsl r3, r2, #2
	ldr r3, [r6, r3]
	lsl r0, r1, #2
	str r3, [r7, r0]
	add r0, r5, r0
	str r2, [r0, #0x1c]
	cmp r4, #0
	beq _021D6D46
	add r2, r2, #1
	b _021D6D48
_021D6D46:
	sub r2, r2, #1
_021D6D48:
	cmp r2, #3
	blt _021D6D50
	mov r2, #0
	b _021D6D56
_021D6D50:
	cmp r2, #0
	bge _021D6D56
	mov r2, #2
_021D6D56:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	blo _021D6D32
	mov r0, #0x4c
	bl sub_0200762C
	ldr r7, _021D6E18 ; =0x021D7958
	str r0, [r5, #0]
	mov r4, #0
_021D6D6C:
	lsl r6, r4, #2
	add r1, sp, #0x1c
	mov r0, #0
	ldr r1, [r1, r6]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x34
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_02075FB4
	add r6, r5, r6
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x34
	lsl r2, r0, #3
	ldr r0, _021D6E1C ; =0x000003FF
	add r3, r7, r2
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r2, [r7, r2]
	ldr r3, [r3, #4]
	bl sub_02007C34
	mov r1, #6
	mov r2, #1
	str r0, [r6, #4]
	bl sub_02007DEC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D6D6C
	mov r0, #1
	str r0, [r5, #0x10]
	bl sub_02014000
	mov r1, #0x12
	mov r0, #0x4c
	lsl r1, r1, #0xa
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _021D6E20 ; =ov77_021D6C70
	ldr r1, _021D6E24 ; =ov77_021D6C94
	ldr r2, [r5, #0x14]
	lsl r3, r3, #0xa
	bl sub_02014014
	str r0, [r5, #0x18]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0x3d
	mov r1, #4
	mov r2, #0x4c
	bl sub_020144C4
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6E14: .word 0x021D7934
_021D6E18: .word 0x021D7958
_021D6E1C: .word 0x000003FF
_021D6E20: .word ov77_021D6C70
_021D6E24: .word ov77_021D6C94
	thumb_func_end ov77_021D6CFC

	thumb_func_start ov77_021D6E28
ov77_021D6E28: ; 0x021D6E28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0201411C
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_02007B6C
	pop {r4, pc}
	thumb_func_end ov77_021D6E28

	thumb_func_start ov77_021D6E40
ov77_021D6E40: ; 0x021D6E40
	push {r3, lr}
	cmp r0, #0
	beq _021D6E4C
	ldr r0, [r0, #0]
	bl sub_02008A94
_021D6E4C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6E40

	thumb_func_start ov77_021D6E50
ov77_021D6E50: ; 0x021D6E50
	push {r4, lr}
	add r4, r0, #0
	beq _021D6E74
	bl sub_020B2628
	bl sub_020241B4
	bl sub_020A73C0
	ldr r0, [r4, #0]
	bl sub_02007768
	bl ov77_021D725C
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
_021D6E74:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6E50

	thumb_func_start ov77_021D6E78
ov77_021D6E78: ; 0x021D6E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x28
	ldrb r2, [r2]
	add r5, r4, #0
	add r6, r1, #0
	add r5, #0x28
	cmp r2, #5
	bls _021D6E90
	b _021D6FE2
_021D6E90:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D6E9C: ; jump table
	.short _021D6EA8 - _021D6E9C - 2 ; case 0
	.short _021D6EEA - _021D6E9C - 2 ; case 1
	.short _021D6F0E - _021D6E9C - 2 ; case 2
	.short _021D6F6E - _021D6E9C - 2 ; case 3
	.short _021D6F92 - _021D6E9C - 2 ; case 4
	.short _021D6FBE - _021D6E9C - 2 ; case 5
_021D6EA8:
	ldr r0, _021D6FE8 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	add r7, r4, #4
	bic r2, r1
	mov r1, #0x11
	orr r1, r2
	mov r2, #0x20
	orr r1, r2
	strh r1, [r0]
	lsl r0, r6, #2
	str r0, [sp]
	ldr r0, [r7, r0]
	mov r1, #0xc
	lsl r2, r2, #5
	bl sub_02007DEC
	ldr r0, [sp]
	mov r2, #1
	ldr r0, [r7, r0]
	mov r1, #0xd
	lsl r2, r2, #0xa
	bl sub_02007DEC
	ldr r0, [sp]
	mov r1, #6
	ldr r0, [r7, r0]
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021D6EEA:
	lsl r2, r6, #2
	add r2, r4, r2
	ldr r2, [r2, #0x1c]
	add r0, r4, #0
	lsl r3, r2, #3
	ldr r2, _021D6FEC ; =0x021D7940
	add r1, r6, #0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F0E:
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02014788
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r6, r6, #2
	add r7, r4, #4
	ldr r1, [r1, r6]
	mov r2, #0xc
	mul r2, r1
	ldr r1, _021D6FF0 ; =0x021D7970
	ldr r0, [r4, #0x18]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 ; =ov77_021D7268
	ldr r3, [r7, r6]
	bl sub_020146F4
	ldr r1, [sp, #4]
	mov r2, #0xc
	ldr r1, [r1, r6]
	ldr r0, [r4, #0x18]
	mul r2, r1
	ldr r1, _021D6FF8 ; =0x021D7974
	ldr r3, [r7, r6]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 ; =ov77_021D7268
	bl sub_020146F4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [r1, r6]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D6FFC ; =0x021D7978
	ldr r2, _021D6FF4 ; =ov77_021D7268
	ldr r1, [r1, r3]
	ldr r3, [r7, r6]
	bl sub_020146F4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F6E:
	ldr r0, [r4, #0x18]
	bl sub_02014710
	cmp r0, #0
	bne _021D6FE2
	ldr r1, _021D6FE8 ; =0x0400004A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x10
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F92:
	lsl r6, r6, #2
	add r2, r4, r6
	ldr r2, [r2, #0x1c]
	lsl r3, r2, #3
	ldr r2, _021D7000 ; =0x021D7944
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	add r0, r4, r6
	ldr r0, [r0, #4]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6FBE:
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021D6FE2
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	strb r0, [r5]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D6FE2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6FE8: .word 0x0400004A
_021D6FEC: .word 0x021D7940
_021D6FF0: .word 0x021D7970
_021D6FF4: .word ov77_021D7268
_021D6FF8: .word 0x021D7974
_021D6FFC: .word 0x021D7978
_021D7000: .word 0x021D7944
	thumb_func_end ov77_021D6E78

	thumb_func_start ov77_021D7004
ov77_021D7004: ; 0x021D7004
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D706E
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D706E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7004

	thumb_func_start ov77_021D7074
ov77_021D7074: ; 0x021D7074
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	sub r2, r1, #3
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x13
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D70C6
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D70C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7074

	thumb_func_start ov77_021D70CC
ov77_021D70CC: ; 0x021D70CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x10
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7138
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D7138:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D70CC

	thumb_func_start ov77_021D713C
ov77_021D713C: ; 0x021D713C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	sub r2, r1, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D718E
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D718E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D713C

	thumb_func_start ov77_021D7194
ov77_021D7194: ; 0x021D7194
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #8
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D71FE
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D71FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7194

	thumb_func_start ov77_021D7204
ov77_021D7204: ; 0x021D7204
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x15
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7256
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D7256:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7204

	thumb_func_start ov77_021D725C
ov77_021D725C: ; 0x021D725C
	push {r3, lr}
	bl sub_0201469C
	bl sub_020146C0
	pop {r3, pc}
	thumb_func_end ov77_021D725C

	thumb_func_start ov77_021D7268
ov77_021D7268: ; 0x021D7268
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r4, r0, #0
	str r1, [r2, #8]
	bl sub_020080C0
	sub r0, #0x80
	mov r1, #0xac
	mul r1, r0
	str r1, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_020080C0
	sub r0, #0x60
	mov r1, #0xac
	mul r1, r0
	str r1, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7268
	; 0x021D72C8


	.rodata
	.incbin "incbin/overlay77_rodata.bin"

	.data
	.incbin "incbin/overlay77_data.bin"