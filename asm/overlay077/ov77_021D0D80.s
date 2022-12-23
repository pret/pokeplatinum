	.include "macros/function.inc"
	.include "overlay077/ov77_021D0D80.inc"

	

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
	bl memset
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
	bl NNS_G3dGetAnmByIdx
	add r6, r0, #0
	ldr r0, [r5, #0x64]
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	add r7, r0, #0
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x70
	add r1, r6, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5, #0x68]
	add r0, r5, #0
	ldr r2, [r5, #0x58]
	add r0, #0x70
	add r1, r7, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x5c]
	bl NNS_G3dGetTex
	str r0, [sp]
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	add r1, r6, #0
	bl NNS_G3dAnmObjInit
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	add r1, r7, #0
	bl NNS_G3dAnmObjInit
	ldr r1, [r5, #0x68]
	add r0, r5, #4
	bl NNS_G3dRenderObjAddAnmObj
	ldr r1, [r5, #0x6c]
	add r0, r5, #4
	bl NNS_G3dRenderObjAddAnmObj
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
	bl NNSi_G3dModifyPolygonAttrMask
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #0x3f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
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
	bl NNSi_G3dModifyPolygonAttrMask
	mov r0, #0x82
	lsl r0, r0, #2
	mov r2, #0x3f
	ldr r0, [r5, r0]
	mov r1, #1
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
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
	bl NNS_G3dFreeAnmObj
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x70
	bl NNS_G3dFreeAnmObj
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
	bl _s32_div_f
	mov r0, #0xab
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	ldr r0, _021D16F8 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	bl _d_itod
	ldr r2, _021D16FC ; =0x33333333
	ldr r3, _021D1700 ; =0x3FD33333
	bl _d_mul
	bl _d_dtoi
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
	bl DC_FlushAll
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
	bl NNS_G3dGeBufferOP_N
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
	bl NNS_G3dGeBufferOP_N
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
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1C04 ; =0x00007FFF
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r3, _021D1C08 ; =0x00000292
	mov r0, #1
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1C04 ; =0x00007FFF
	mov r0, #1
	bl NNS_G3dGlbLightColor
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl _s32_div_f
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
	bl G2x_SetBlendAlpha_
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
	bl G2x_SetBlendAlpha_
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
	bl NNS_G3dGlbLightColor
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
	bl NNS_G3dGlbLightColor
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
	bl VEC_Subtract
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_Normalize
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

	.rodata


	.global Unk_ov77_021D72C8
Unk_ov77_021D72C8: ; 0x021D72C8
	.incbin "incbin/overlay77_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov77_021D72D0
Unk_ov77_021D72D0: ; 0x021D72D0
	.incbin "incbin/overlay77_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov77_021D72D8
Unk_ov77_021D72D8: ; 0x021D72D8
	.incbin "incbin/overlay77_rodata.bin", 0x10, 0x1C - 0x10

	.global Unk_ov77_021D72E4
Unk_ov77_021D72E4: ; 0x021D72E4
	.incbin "incbin/overlay77_rodata.bin", 0x1C, 0x28 - 0x1C

	.global Unk_ov77_021D72F0
Unk_ov77_021D72F0: ; 0x021D72F0
	.incbin "incbin/overlay77_rodata.bin", 0x28, 0x38 - 0x28

	.global Unk_ov77_021D7300
Unk_ov77_021D7300: ; 0x021D7300
	.incbin "incbin/overlay77_rodata.bin", 0x38, 0x54 - 0x38

	.global Unk_ov77_021D731C
Unk_ov77_021D731C: ; 0x021D731C
	.incbin "incbin/overlay77_rodata.bin", 0x54, 0x70 - 0x54

	.global Unk_ov77_021D7338
Unk_ov77_021D7338: ; 0x021D7338
	.incbin "incbin/overlay77_rodata.bin", 0x70, 0x8C - 0x70

	.global Unk_ov77_021D7354
Unk_ov77_021D7354: ; 0x021D7354
	.incbin "incbin/overlay77_rodata.bin", 0x8C, 0xA8 - 0x8C

	.global Unk_ov77_021D7370
Unk_ov77_021D7370: ; 0x021D7370
	.incbin "incbin/overlay77_rodata.bin", 0xA8, 0xC4 - 0xA8

	.global Unk_ov77_021D738C
Unk_ov77_021D738C: ; 0x021D738C
	.incbin "incbin/overlay77_rodata.bin", 0xC4, 0xE0 - 0xC4

	.global Unk_ov77_021D73A8
Unk_ov77_021D73A8: ; 0x021D73A8
	.incbin "incbin/overlay77_rodata.bin", 0xE0, 0xFC - 0xE0

	.global Unk_ov77_021D73C4
Unk_ov77_021D73C4: ; 0x021D73C4
	.incbin "incbin/overlay77_rodata.bin", 0xFC, 0x118 - 0xFC

	.global Unk_ov77_021D73E0
Unk_ov77_021D73E0: ; 0x021D73E0
	.incbin "incbin/overlay77_rodata.bin", 0x118, 0x13C - 0x118

	.global Unk_ov77_021D7404
Unk_ov77_021D7404: ; 0x021D7404
	.incbin "incbin/overlay77_rodata.bin", 0x13C, 0x164 - 0x13C

	.global Unk_ov77_021D742C
Unk_ov77_021D742C: ; 0x021D742C
	.incbin "incbin/overlay77_rodata.bin", 0x164, 0x10

