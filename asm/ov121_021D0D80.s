	.include "macros/function.inc"
	.include "include/ov121_021D0D80.inc"

	.text

	thumb_func_start ov121_021D0D80
ov121_021D0D80: ; 0x021D0D80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _021D0E60 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _021D0E64 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _021D0E68 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #5
	mov r0, #3
	mov r1, #0x1e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0xe8
	mov r2, #0x1e
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x1e
	bl ov121_021D1270
	str r0, [r4, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov121_021D0F94
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov121_021D1074
	add r0, r4, #0
	bl ov121_021D0FF4
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _021D0E6C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201FFD0
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, _021D0E70 ; =ov121_021D0F68
	ldr r2, _021D0E74 ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #8]
	ldr r0, _021D0E78 ; =ov121_021D0F7C
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D0E60: .word 0xFFFFE0FF
_021D0E64: .word 0x04001000
_021D0E68: .word 0xFFFF1FFF
_021D0E6C: .word 0x021BF6DC
_021D0E70: .word ov121_021D0F68
_021D0E74: .word 0x0000EA60
_021D0E78: .word ov121_021D0F7C
	thumb_func_end ov121_021D0D80

	thumb_func_start ov121_021D0E7C
ov121_021D0E7C: ; 0x021D0E7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _021D0F04
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0E9A: ; jump table
	.short _021D0EA2 - _021D0E9A - 2 ; case 0
	.short _021D0EB2 - _021D0E9A - 2 ; case 1
	.short _021D0ED6 - _021D0E9A - 2 ; case 2
	.short _021D0EF6 - _021D0E9A - 2 ; case 3
_021D0EA2:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F04
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F04
_021D0EB2:
	ldr r0, [r5, #0x10]
	cmp r0, #0xf
	bne _021D0EBE
	ldr r0, _021D0F10 ; =0x000005D3
	bl sub_02005748
_021D0EBE:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x55
	ble _021D0F04
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F04
_021D0ED6:
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0F04
_021D0EF6:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F04
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D0F04:
	add r0, r5, #0
	bl ov121_021D1318
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D0F10: .word 0x000005D3
	thumb_func_end ov121_021D0E7C

	thumb_func_start ov121_021D0F14
ov121_021D0F14: ; 0x021D0F14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200DA58
	add r0, r4, #0
	bl ov121_021D1184
	add r0, r4, #0
	bl ov121_021D1068
	ldr r0, [r4, #0]
	bl ov121_021D1310
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E530
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x1e
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov121_021D0F14

	thumb_func_start ov121_021D0F68
ov121_021D0F68: ; 0x021D0F68
	push {r3, lr}
	add r0, r1, #0
	bl ov121_021D11A8
	mov r0, #1
	add r1, r0, #0
	bl sub_020241BC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov121_021D0F68

	thumb_func_start ov121_021D0F7C
ov121_021D0F7C: ; 0x021D0F7C
	ldr r3, _021D0F8C ; =0x027E0000
	ldr r1, _021D0F90 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	bx lr
	nop
_021D0F8C: .word 0x027E0000
_021D0F90: .word 0x00003FF8
	thumb_func_end ov121_021D0F7C

	thumb_func_start ov121_021D0F94
ov121_021D0F94: ; 0x021D0F94
	push {r4, lr}
	sub sp, #0x28
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r4, _021D0FF0 ; =0x021D1380
	add r3, sp, #0
	mov r2, #5
_021D0FA6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0FA6
	add r0, sp, #0
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
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D0FF0: .word 0x021D1380
	thumb_func_end ov121_021D0F94

	thumb_func_start ov121_021D0FF4
ov121_021D0FF4: ; 0x021D0FF4
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r1, sp, #0x14
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #0x1e
	bl sub_020203AC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, #0xa
	str r0, [sp, #8]
	ldr r2, _021D105C ; =0x021D1378
	ldr r3, _021D1060 ; =0x00000FA4
	add r0, sp, #0x14
	lsl r1, r1, #0x10
	bl sub_020206D0
	mov r1, #0x4b
	ldr r2, [r4, #4]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, sp, #0xc
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, [r4, #4]
	bl sub_02020A94
	ldr r1, _021D1064 ; =0x0000C011
	add r0, sp, #0xc
	strh r1, [r0]
	ldr r1, [r4, #4]
	add r0, sp, #0xc
	bl sub_020209D4
	ldr r0, [r4, #4]
	bl sub_020203D4
	add sp, #0x20
	pop {r4, pc}
	nop
_021D105C: .word 0x021D1378
_021D1060: .word 0x00000FA4
_021D1064: .word 0x0000C011
	thumb_func_end ov121_021D0FF4

	thumb_func_start ov121_021D1068
ov121_021D1068: ; 0x021D1068
	ldr r3, _021D1070 ; =sub_020203B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D1070: .word sub_020203B8
	thumb_func_end ov121_021D1068

	thumb_func_start ov121_021D1074
ov121_021D1074: ; 0x021D1074
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xd8
	mov r1, #0x1e
	mov r2, #4
	bl sub_020182CC
	mov r0, #0x30
	mov r1, #0x1e
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #0x1e
	bl sub_020170D8
	add r0, r5, #0
	add r0, #0xbc
	mov r2, #0x1f
	ldr r0, [r0, #0]
	mov r1, #1
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	add r0, r5, #0
	add r0, #0xbc
	mov r2, #0x3f
	ldr r0, [r0, #0]
	mov r1, #1
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r0, #0x1e
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x8c
	add r1, #0xb4
	add r2, r4, #0
	mov r3, #0x12
	bl sub_02017164
	add r0, r5, #0
	add r0, #0x8c
	mov r1, #0
	bl sub_02017240
	mov r0, #0x1e
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa0
	add r1, #0xb4
	add r2, r4, #0
	mov r3, #0x11
	bl sub_02017164
	add r0, r5, #0
	add r0, #0xa0
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x14
	add r1, #0xb4
	bl sub_02017258
	mov r1, #0
	add r0, r5, #0
	add r0, #0x14
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r0, #0x14
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	bl sub_02017348
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x14
	add r1, #0x8c
	bl sub_0201727C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x14
	add r1, #0xa0
	bl sub_0201727C
	add r0, r4, #0
	bl sub_02006CA8
	add r0, r5, #0
	ldr r1, _021D117C ; =0xFFFFFED2
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, _021D1180 ; =0x0000E383
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0xd0
	str r1, [r0, #0]
	mov r0, #0xf
	lsl r0, r0, #0xa
	add r5, #0xd4
	str r0, [r5, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D117C: .word 0xFFFFFED2
_021D1180: .word 0x0000E383
	thumb_func_end ov121_021D1074

	thumb_func_start ov121_021D1184
ov121_021D1184: ; 0x021D1184
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb4
	bl sub_02017110
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x8c
	add r1, #0xd8
	bl sub_020171A0
	add r0, r4, #0
	add r4, #0xd8
	add r0, #0xa0
	add r1, r4, #0
	bl sub_020171A0
	pop {r4, pc}
	thumb_func_end ov121_021D1184

	thumb_func_start ov121_021D11A8
ov121_021D11A8: ; 0x021D11A8
	push {r4, lr}
	sub sp, #0x40
	add r4, r0, #0
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
	ldr r0, [r4, #4]
	bl sub_020203D4
	ldr r1, [r4, #4]
	mov r0, #0
	bl sub_02020854
	bl sub_020203EC
	mov r0, #0
	ldr r2, _021D125C ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1260 ; =0x0000739C
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D1264 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D1264 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	add r0, sp, #0x28
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _021D1268 ; =0x021C5B48
	add r0, sp, #4
	bl MI_Copy36B
	ldr r1, _021D126C ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8c
	lsl r1, r1, #0xc
	bl sub_020171CC
	add r0, r4, #0
	mov r1, #1
	add r0, #0xa0
	lsl r1, r1, #0xc
	bl sub_020171CC
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	add r4, #0x14
	add r0, r4, #0
	bl sub_02017294
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, #0x40
	pop {r4, pc}
	; .align 2, 0
_021D125C: .word 0xFFFFF000
_021D1260: .word 0x0000739C
_021D1264: .word 0x00007FFF
_021D1268: .word 0x021C5B48
_021D126C: .word 0x021C5B0C
	thumb_func_end ov121_021D11A8

	thumb_func_start ov121_021D1270
ov121_021D1270: ; 0x021D1270
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _021D1288 ; =ov121_021D128C
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_021D1288: .word ov121_021D128C
	thumb_func_end ov121_021D1270

	thumb_func_start ov121_021D128C
ov121_021D128C: ; 0x021D128C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _021D12F8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D12FC ; =0xFFFFCFFD
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
	ldr r2, _021D1300 ; =0x0000CFFB
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
	ldr r2, _021D1304 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D1308 ; =0xBFFF0000
	ldr r0, _021D130C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_021D12F8: .word 0x04000008
_021D12FC: .word 0xFFFFCFFD
_021D1300: .word 0x0000CFFB
_021D1304: .word 0x00007FFF
_021D1308: .word 0xBFFF0000
_021D130C: .word 0x04000580
	thumb_func_end ov121_021D128C

	thumb_func_start ov121_021D1310
ov121_021D1310: ; 0x021D1310
	ldr r3, _021D1314 ; =sub_020242C4
	bx r3
	; .align 2, 0
_021D1314: .word sub_020242C4
	thumb_func_end ov121_021D1310

	thumb_func_start ov121_021D1318
ov121_021D1318: ; 0x021D1318
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r4, #4]
	asr r0, r0, #8
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0202094C
	add r0, r4, #0
	add r0, #0xd4
	ldr r1, [r0, #0]
	add r0, r4, #0
	sub r1, #0x80
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xd4
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021D1368
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0, #0]
_021D1368:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, #0xc4
	add r0, r0, #1
	str r0, [r4, #0]
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov121_021D1318
	; 0x021D1378


	.rodata

	.global Unk_ov121_021D1378
Unk_ov121_021D1378: ; 0x021D1378
	.incbin "incbin/overlay121_rodata.bin", 0x0, 0x8

	.global Unk_ov121_021D1380
Unk_ov121_021D1380: ; 0x021D1380
	.incbin "incbin/overlay121_rodata.bin", 0x8, 0x30 - 0x8


	.bss
	.space 0x0
