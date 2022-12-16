	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021D0D80
ov5_021D0D80: ; 0x021D0D80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #0x38]
	bl sub_0206285C
	bl ov5_021EDC8C
	bl sub_02020D68
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D0D80

	thumb_func_start ov5_021D0DA4
ov5_021D0DA4: ; 0x021D0DA4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r6, #0
	bl sub_02006840
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bls _021D0DB8
	b _021D0F44
_021D0DB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0DC4: ; jump table
	.short _021D0DCC - _021D0DC4 - 2 ; case 0
	.short _021D0EB4 - _021D0DC4 - 2 ; case 1
	.short _021D0F32 - _021D0DC4 - 2 ; case 2
	.short _021D0F38 - _021D0DC4 - 2 ; case 3
_021D0DCC:
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r1, _021D0F50 ; =0x04000050
	add r0, r6, #0
	strh r0, [r1]
	ldr r1, _021D0F54 ; =0x04001050
	strh r0, [r1]
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	add r0, r4, #0
	bl ov5_021D173C
	add r0, r4, #0
	bl sub_020531A0
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021D0E3A
	ldr r0, _021D0F58 ; =0x00000006
	mov r1, #2
	bl sub_02006590
	add r0, r4, #0
	bl ov5_021D1178
	cmp r0, #0
	beq _021D0E1E
	cmp r0, #1
	beq _021D0E28
	cmp r0, #2
	beq _021D0E32
	b _021D0E3A
_021D0E1E:
	ldr r0, _021D0F5C ; =0x00000008
	mov r1, #2
	bl sub_02006590
	b _021D0E3A
_021D0E28:
	ldr r0, _021D0F60 ; =0x00000007
	mov r1, #2
	bl sub_02006590
	b _021D0E3A
_021D0E32:
	ldr r0, _021D0F64 ; =0x00000009
	mov r1, #2
	bl sub_02006590
_021D0E3A:
	ldr r2, [r4, #0x74]
	mov r0, #3
	ldr r2, [r2, #4]
	mov r1, #4
	bl sub_02017FC8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D0E50
	bl sub_02022974
_021D0E50:
	mov r0, #4
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	str r0, [r4, #4]
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	bl ov5_021D1A94
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	bl ov5_021D1414
	mov r0, #0x80
	mov r1, #4
	bl sub_0201DBEC
	mov r0, #4
	add r1, r0, #0
	bl sub_02020B90
	mov r0, #4
	bl sub_0201CAF4
	bl ov5_021D15B4
	bl ov5_021D154C
	bl sub_0201FFE8
	mov r0, #4
	bl sub_02018340
	str r0, [r4, #8]
	bl ov5_021D1444
	mov r0, #0
	mov r1, #1
	bl sub_0205D8CC
	add r0, r4, #0
	mov r1, #4
	bl sub_0203F5C0
	b _021D0F44
_021D0EB4:
	bl ov5_021D1790
	ldr r0, [r4, #0x30]
	bl ov5_021EF7A0
	mov r0, #4
	bl ov5_021E15F4
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov5_021F0824
	add r0, r4, #0
	bl ov5_021D17EC
	add r0, r4, #0
	bl ov5_021D1878
	add r0, r4, #0
	bl ov5_021D1968
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D0EFE
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F24
_021D0EFE:
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_020556A0
	add r0, r4, #0
	mov r1, #3
	bl sub_0203F5C0
	mov r0, #4
	bl ov5_021EF3A8
	ldr r1, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3DC
	ldr r1, [r4, #4]
	mov r0, #4
	ldr r1, [r1, #0x1c]
	bl ov5_021EF4BC
	ldr r1, [r4, #4]
	str r0, [r1, #0x20]
	b _021D0F44
_021D0F32:
	bl ov5_021D5BD8
	b _021D0F44
_021D0F38:
	bl ov5_021D5BF4
	cmp r0, #0
	beq _021D0F44
	mov r6, #1
	str r6, [r4, #0x68]
_021D0F44:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021D0F50: .word 0x04000050
_021D0F54: .word 0x04001050
_021D0F58: .word 0x00000006
_021D0F5C: .word 0x00000008
_021D0F60: .word 0x00000007
_021D0F64: .word 0x00000009
	thumb_func_end ov5_021D0DA4

	thumb_func_start ov5_021D0F68
ov5_021D0F68: ; 0x021D0F68
	push {r4, lr}
	bl sub_02006840
	add r4, r0, #0
	bl ov5_021D119C
	cmp r0, #0
	beq _021D0F94
	add r0, r4, #0
	bl sub_02055D94
	add r0, r4, #0
	bl ov5_021D13B4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov5_021EA714
	add r0, r4, #0
	bl ov5_021D11CC
_021D0F94:
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov5_021D134C
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021D0FAE
	mov r0, #0
	pop {r4, pc}
_021D0FAE:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D0F68

	thumb_func_start ov5_021D0FB4
ov5_021D0FB4: ; 0x021D0FB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	bl ov5_021E8188
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D0FD6
	cmp r0, #1
	beq _021D1076
	cmp r0, #2
	bne _021D0FD4
	b _021D10FE
_021D0FD4:
	b _021D1164
_021D0FD6:
	add r0, r4, #0
	bl sub_02068368
	ldr r0, [r4, #0x28]
	bl ov5_021E9338
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x10]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl ov5_021EF300
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _021D1014
	bl sub_02022974
_021D1014:
	ldr r0, [r4, #0x28]
	bl ov5_021E924C
	ldr r0, [r4, #0x50]
	bl ov5_021D3CAC
	ldr r0, [r4, #0x50]
	bl ov5_021D3D7C
	add r0, r4, #0
	add r0, #0x54
	bl ov5_021D41B4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov5_021D5E8C
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov5_021D5EAC
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x38]
	bl sub_02061BF0
	ldr r0, [r4, #0x38]
	bl ov5_021ECC78
	ldr r0, [r4, #0x38]
	bl sub_02062C30
	ldr r0, [r4, #0x40]
	bl ov5_021DF500
	ldr r0, [r4, #0x34]
	bl ov5_021D1A70
	mov r0, #0
	str r0, [r4, #0x34]
	add r4, #0xa4
	ldr r0, [r4, #0]
	bl ov5_021E1608
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D1164
_021D1076:
	ldr r0, [r4, #0x28]
	bl ov5_021E9300
	cmp r0, #1
	bne _021D1164
	add r0, r4, #0
	add r0, #0x30
	bl ov5_021EFA10
	ldr r0, [r4, #0x28]
	bl ov5_021E92E4
	add r0, r4, #0
	add r0, #0xa8
	bl ov5_021EFB30
	add r0, r4, #0
	bl ov5_021D5BA8
	add r0, r4, #0
	add r0, #0x4c
	bl ov5_021D5278
	ldr r0, [r4, #0x64]
	bl ov5_021E1B20
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov5_021DD9C8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D10BE
	bl ov5_021D5EF8
_021D10BE:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl ov5_021EF4F8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl ov5_021EF3BC
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl sub_02055CBC
	add r0, r4, #0
	add r0, #0x48
	bl ov5_021D57D8
	add r0, r4, #0
	add r0, #0x44
	bl ov5_021D5894
	bl ov5_021D1570
	ldr r0, [r4, #8]
	bl ov5_021D1524
	add r0, r4, #0
	bl ov5_021D5C14
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D1164
_021D10FE:
	add r0, r4, #0
	bl ov5_021D5C30
	cmp r0, #0
	beq _021D1164
	bl ov5_021D15E8
	bl sub_02020BD0
	bl sub_0201DC3C
	bl sub_0201CBA0
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl ov5_021D1AE4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #4
	bl sub_0201807C
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021D1160
	ldr r0, _021D1168 ; =0x00000006
	bl sub_02006514
	ldr r0, _021D116C ; =0x00000008
	bl sub_02006514
	ldr r0, _021D1170 ; =0x00000007
	bl sub_02006514
	ldr r0, _021D1174 ; =0x00000009
	bl sub_02006514
_021D1160:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1164:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1168: .word 0x00000006
_021D116C: .word 0x00000008
_021D1170: .word 0x00000007
_021D1174: .word 0x00000009
	thumb_func_end ov5_021D0FB4

	thumb_func_start ov5_021D1178
ov5_021D1178: ; 0x021D1178
	push {r3, lr}
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #0
	bne _021D118E
	mov r0, #1
	pop {r3, pc}
_021D118E:
	cmp r0, #9
	bne _021D1196
	mov r0, #2
	pop {r3, pc}
_021D1196:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D1178

	thumb_func_start ov5_021D119C
ov5_021D119C: ; 0x021D119C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	ldr r2, [r5, #0x1c]
	ldr r1, [r2, #8]
	cmp r4, r1
	bne _021D11BC
	ldr r1, [r2, #0xc]
	cmp r0, r1
	beq _021D11C6
_021D11BC:
	str r4, [r2, #8]
	ldr r1, [r5, #0x1c]
	str r0, [r1, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D11C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D119C

	thumb_func_start ov5_021D11CC
ov5_021D11CC: ; 0x021D11CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D11E0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D11E0:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	bl ov5_021EA6AC
	sub r1, r4, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r6, r0, #5
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	bl ov5_021EA6B4
	sub r1, r4, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r2, r0, #5
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_02039E30
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r6, [r0, #0]
	cmp r4, r6
	bne _021D1228
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1228:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_0203A3B0
	add r0, r5, #0
	mov r1, #1
	bl sub_020531C0
	add r0, r5, #0
	bl sub_0203A4B4
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203A4BC
	str r0, [sp]
	ldr r0, [r5, #0x38]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0206184C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_02055554
	add r0, r5, #0
	bl sub_0203A418
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D129C
	add r0, r7, #0
	bl sub_0203A74C
	add r1, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
_021D129C:
	add r0, r6, #0
	bl sub_0203A138
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203A138
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203A154
	add r2, r0, #0
	cmp r7, r6
	beq _021D12C8
	cmp r2, #0
	beq _021D12BE
	sub r2, r2, #1
_021D12BE:
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #8]
	bl ov5_021DD9E8
_021D12C8:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D11CC

	thumb_func_start ov5_021D12D0
ov5_021D12D0: ; 0x021D12D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r6, [r0, #0]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_0203A3B0
	add r0, r5, #0
	mov r1, #1
	bl sub_020532A8
	add r0, r5, #0
	bl sub_0203A4B4
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203A4BC
	str r0, [sp]
	ldr r0, [r5, #0x38]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0206184C
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_02055428
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_02055554
	add r0, r5, #0
	bl sub_0203A418
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D1346
	add r0, r7, #0
	bl sub_0203A74C
	add r1, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
_021D1346:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D12D0

	thumb_func_start ov5_021D134C
ov5_021D134C: ; 0x021D134C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020509A4
	cmp r0, #0
	bne _021D1360
	add r0, r5, #0
	bl sub_020559DC
_021D1360:
	ldr r0, [r5, #0x4c]
	bl ov5_021D5298
	add r0, r5, #0
	bl ov5_021E1B68
	mov r0, #1
	tst r0, r4
	beq _021D137A
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	bl ov5_021D5DEC
_021D137A:
	mov r0, #8
	tst r0, r4
	beq _021D1386
	ldr r0, [r5, #0x50]
	bl ov5_021D3F10
_021D1386:
	mov r0, #2
	tst r0, r4
	beq _021D13A4
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	bl ov5_021E8188
	add r0, r5, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D13A4
	add r0, r5, #0
	bl ov9_0224CA5C
_021D13A4:
	mov r0, #4
	tst r0, r4
	beq _021D13B0
	add r0, r5, #0
	bl ov5_021D15F4
_021D13B0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D134C

	thumb_func_start ov5_021D13B4
ov5_021D13B4: ; 0x021D13B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _021D1412
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	bl ov5_021EA6AC
	sub r1, r5, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r6, r0, #5
	ldr r0, [r4, #0x3c]
	bl sub_0205EAC8
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	bl ov5_021EA6B4
	sub r1, r5, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r5, r0, #5
	ldr r0, [r4, #0x3c]
	bl sub_0205EA78
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02055740
_021D1412:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D13B4

	thumb_func_start ov5_021D1414
ov5_021D1414: ; 0x021D1414
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1430 ; =0x021F8988
	add r3, sp, #0
	mov r2, #5
_021D141E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D141E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1430: .word 0x021F8988
	thumb_func_end ov5_021D1414

	thumb_func_start ov5_021D1434
ov5_021D1434: ; 0x021D1434
	ldr r3, _021D1438 ; =ov5_021D1444
	bx r3
	; .align 2, 0
_021D1438: .word ov5_021D1444
	thumb_func_end ov5_021D1434

	thumb_func_start ov5_021D143C
ov5_021D143C: ; 0x021D143C
	ldr r3, _021D1440 ; =ov5_021D1524
	bx r3
	; .align 2, 0
_021D1440: .word ov5_021D1524
	thumb_func_end ov5_021D143C

	thumb_func_start ov5_021D1444
ov5_021D1444: ; 0x021D1444
	push {r3, r4, r5, lr}
	sub sp, #0x68
	ldr r5, _021D1514 ; =0x021F8924
	add r3, sp, #0x58
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1518 ; =0x021F8950
	add r3, sp, #0x3c
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _021D151C ; =0x021F8934
	add r3, sp, #0x20
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _021D1520 ; =0x021F896C
	add r3, sp, #4
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1]
	mov r1, #2
	bl sub_020C2C54
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl sub_020C00B4
	add sp, #0x68
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1514: .word 0x021F8924
_021D1518: .word 0x021F8950
_021D151C: .word 0x021F8934
_021D1520: .word 0x021F896C
	thumb_func_end ov5_021D1444

	thumb_func_start ov5_021D1524
ov5_021D1524: ; 0x021D1524
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D1524

	thumb_func_start ov5_021D154C
ov5_021D154C: ; 0x021D154C
	push {lr}
	sub sp, #0x14
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add sp, #0x14
	pop {pc}
	thumb_func_end ov5_021D154C

	thumb_func_start ov5_021D1570
ov5_021D1570: ; 0x021D1570
	ldr r3, _021D1574 ; =sub_0200A878
	bx r3
	; .align 2, 0
_021D1574: .word sub_0200A878
	thumb_func_end ov5_021D1570

	thumb_func_start ov5_021D1578
ov5_021D1578: ; 0x021D1578
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	add r2, r1, #0
	bl ov5_021D5ADC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov5_021D5AF0
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0
	bl ov5_021D5B04
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov5_021D5B18
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x16
	bl ov5_021D58A8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D1578

	thumb_func_start ov5_021D15B4
ov5_021D15B4: ; 0x021D15B4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D15E4 ; =0x021F8914
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0x14
	mov r1, #4
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D15E4: .word 0x021F8914
	thumb_func_end ov5_021D15B4

	thumb_func_start ov5_021D15E8
ov5_021D15E8: ; 0x021D15E8
	push {r3, lr}
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, pc}
	thumb_func_end ov5_021D15E8

	thumb_func_start ov5_021D15F4
ov5_021D15F4: ; 0x021D15F4
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	bl sub_020241B4
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021D161A
	add r0, r4, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D1614
	add r0, r4, #0
	bl ov9_02249F9C
_021D1614:
	bl sub_0202049C
	b _021D161E
_021D161A:
	bl sub_020203EC
_021D161E:
	add r0, r4, #0
	bl sub_0206979C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x44]
	bl ov5_021E91FC
	add r0, r4, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D163C
	add r0, r4, #0
	bl ov9_0224CA50
_021D163C:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x30]
	bl ov5_021E1A6C
	ldr r5, _021D16E8 ; =0x021C5A94
	add r3, sp, #0x40
	mov r2, #8
_021D164E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D164E
	add r5, sp, #0x40
	add r3, sp, #0
	mov r2, #8
_021D165C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D165C
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #0x38]
	asr r0, r3, #0x1f
	lsr r2, r3, #0x12
	lsl r0, r0, #0xe
	orr r0, r2
	mov r2, #2
	lsl r5, r3, #0xe
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r5, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #0x38]
	ldr r1, _021D16E8 ; =0x021C5A94
	add r0, sp, #0
	mov r2, #0x40
	bl sub_020C4C14
	ldr r1, _021D16EC ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl sub_020AF480
	ldr r0, [r4, #0x40]
	bl ov5_021DF4F8
	bl sub_02020C08
	add r0, r4, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D16B8
	add r0, r4, #0
	bl ov9_02250780
_021D16B8:
	ldr r1, _021D16E8 ; =0x021C5A94
	add r0, sp, #0x40
	mov r2, #0x40
	bl sub_020C4C14
	ldr r1, _021D16EC ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl sub_020AF480
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl ov5_021D1B18
	ldr r1, _021D16F0 ; =0x02100844
	mov r0, #0
	ldr r1, [r1, #0]
	bl sub_020241BC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021D16E8: .word 0x021C5A94
_021D16EC: .word 0x021C5B0C
_021D16F0: .word 0x02100844
	thumb_func_end ov5_021D15F4

	thumb_func_start ov5_021D16F4
ov5_021D16F4: ; 0x021D16F4
	cmp r1, #1
	bne _021D1708
	add r1, r0, #0
	add r1, #0xc0
	ldr r2, [r1, #0]
	mov r1, #4
	orr r1, r2
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
_021D1708:
	add r1, r0, #0
	add r1, #0xc0
	ldr r2, [r1, #0]
	mov r1, #4
	bic r2, r1
	add r0, #0xc0
	str r2, [r0, #0]
	bx lr
	thumb_func_end ov5_021D16F4

	thumb_func_start ov5_021D1718
ov5_021D1718: ; 0x021D1718
	cmp r1, #1
	bne _021D172C
	add r1, r0, #0
	add r1, #0xc0
	ldr r2, [r1, #0]
	mov r1, #1
	orr r1, r2
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
_021D172C:
	add r1, r0, #0
	add r1, #0xc0
	ldr r2, [r1, #0]
	mov r1, #1
	bic r2, r1
	add r0, #0xc0
	str r2, [r0, #0]
	bx lr
	thumb_func_end ov5_021D1718

	thumb_func_start ov5_021D173C
ov5_021D173C: ; 0x021D173C
	mov r1, #0xf
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021D173C

	thumb_func_start ov5_021D1744
ov5_021D1744: ; 0x021D1744
	push {lr}
	sub sp, #0xc
	cmp r0, #1
	bne _021D1766
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
_021D1766:
	cmp r0, #0
	bne _021D1786
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
_021D1786:
	bl sub_02022974
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov5_021D1744

	thumb_func_start ov5_021D1790
ov5_021D1790: ; 0x021D1790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _021D17E4 ; =0x02100844
	ldr r0, [r0, #0]
	lsl r1, r0, #1
	ldr r0, _021D17E8 ; =0x04000540
	str r1, [r0, #0]
	bl ov5_021D38B8
	str r0, [r5, #0x50]
	bl ov5_021D4194
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A038
	ldr r1, [r5, #0x50]
	bl ov5_021EF76C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A04C
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021D17D6
	bl sub_02022974
_021D17D6:
	mov r0, #4
	add r1, r4, #0
	bl ov5_021D1A14
	str r0, [r5, #0x34]
	pop {r3, r4, r5, pc}
	nop
_021D17E4: .word 0x02100844
_021D17E8: .word 0x04000540
	thumb_func_end ov5_021D1790

	thumb_func_start ov5_021D17EC
ov5_021D17EC: ; 0x021D17EC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x50]
	ldr r3, [r4, #0x60]
	bl ov5_021E9084
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D183C
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	add r1, sp, #8
	ldr r0, [r0, #0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov9_02251094
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp]
	bl ov5_021EA678
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov5_021EA6A4
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov5_021EA6D0
_021D183C:
	mov r0, #8
	mov r1, #4
	bl ov5_021EF28C
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1, #0]
	bl ov5_021EFB0C
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1, #0]
	ldr r0, [r4, #0x70]
	cmp r0, #0
	bne _021D1864
	ldr r0, [r4, #0x28]
	ldr r1, _021D1874 ; =ov5_021F0030
	add r2, r4, #0
	bl ov5_021E9630
_021D1864:
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl ov5_021E9150
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D1874: .word ov5_021F0030
	thumb_func_end ov5_021D17EC

	thumb_func_start ov5_021D1878
ov5_021D1878: ; 0x021D1878
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r1, #0x22
	mov r2, #4
	bl ov5_021DF440
	str r0, [r5, #0x40]
	add r0, r5, #0
	mov r4, #0x50
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D1896
	mov r4, #0x70
_021D1896:
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl ov5_021DF47C
	mov r2, #0x20
	str r2, [sp]
	mov r0, #5
	str r2, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	lsl r0, r2, #6
	str r0, [sp, #0xc]
	lsl r0, r2, #0xb
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	mov r1, #4
	add r3, r2, #0
	bl ov5_021DF488
	ldr r0, [r5, #0x70]
	sub r0, r0, #1
	cmp r0, #1
	bhi _021D18CC
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_02062CCC
_021D18CC:
	ldr r0, [r5, #0x70]
	cmp r0, #1
	bne _021D18D6
	ldr r1, _021D195C ; =0x021FF7D0
	b _021D18E6
_021D18D6:
	add r0, r5, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D18E4
	ldr r1, _021D1960 ; =0x021FF6B8
	b _021D18E6
_021D18E4:
	ldr r1, _021D1964 ; =0x021FF744
_021D18E6:
	ldr r0, [r5, #0x40]
	bl ov5_021DF4C8
	ldr r0, [r5, #0x70]
	mov r4, #0xa
	cmp r0, #2
	bne _021D18F6
	mov r4, #5
_021D18F6:
	ldr r0, [r5, #0x34]
	bl ov5_021D1A6C
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl ov5_021D1A68
	str r4, [sp]
	add r3, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0x20
	add r2, r6, #3
	bl ov5_021ECC20
	ldr r0, [r5, #0x40]
	bl ov5_021F1328
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205E884
	ldr r0, [r5, #0x38]
	bl sub_02061C48
	bl sub_020595A4
	ldr r0, [r5, #0x38]
	bl sub_02062C3C
	ldr r0, [r5, #0x3c]
	bl sub_0205EAFC
	ldr r1, [r5, #0x28]
	bl ov5_021E931C
	add r0, r5, #0
	mov r1, #4
	bl sub_02055C8C
	ldr r1, [r5, #4]
	str r0, [r1, #0x18]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D195C: .word 0x021FF7D0
_021D1960: .word 0x021FF6B8
_021D1964: .word 0x021FF744
	thumb_func_end ov5_021D1878

	thumb_func_start ov5_021D1968
ov5_021D1968: ; 0x021D1968
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	bl sub_0201FFD0
	bl ov5_021D5878
	str r0, [r4, #0x44]
	bl ov5_021D1578
	bl ov5_021D57BC
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A770
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EAFC
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #1
	bl ov5_021D5B40
	ldr r0, [r4, #0x30]
	bl ov5_021EFAD8
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	bl ov5_021D521C
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov5_021D1A78
	cmp r0, #1
	bne _021D19C6
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	b _021D19D0
_021D19C6:
	add r0, r4, #0
	bl ov5_021D5EB8
	ldr r1, [r4, #4]
	str r0, [r1, #0xc]
_021D19D0:
	ldr r0, [r4, #8]
	bl ov5_021DD98C
	ldr r1, [r4, #4]
	str r0, [r1, #8]
	mov r0, #4
	bl ov5_021E1B08
	str r0, [r4, #0x64]
	bl ov5_021D5CB0
	ldr r1, [r4, #4]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x30]
	bl ov5_021EFA8C
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov5_021D5CE4
	add r0, r4, #0
	bl sub_02068344
	add r0, r4, #0
	bl ov5_021EE7C0
	ldr r0, _021D1A10 ; =ov5_021D0D80
	add r1, r4, #0
	bl sub_02017798
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1A10: .word ov5_021D0D80
	thumb_func_end ov5_021D1968

	thumb_func_start ov5_021D1A14
ov5_021D1A14: ; 0x021D1A14
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x60
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02006ADC
	ldr r1, _021D1A64 ; =0x0000FFFF
	mov r2, #0
	add r3, r4, #0
_021D1A32:
	add r2, r2, #1
	str r1, [r3, #4]
	add r3, r3, #4
	cmp r2, #0x18
	blt _021D1A32
	ldr r5, _021D1A64 ; =0x0000FFFF
	mov r3, #0
	add r1, r0, #0
	add r2, r4, #0
_021D1A44:
	ldrh r6, [r1]
	str r6, [r2, #4]
	ldrh r6, [r1]
	cmp r6, r5
	beq _021D1A58
	add r3, r3, #1
	add r1, r1, #2
	add r2, r2, #4
	cmp r3, #0x18
	blt _021D1A44
_021D1A58:
	strh r3, [r4]
	bl sub_020181C4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021D1A64: .word 0x0000FFFF
	thumb_func_end ov5_021D1A14

	thumb_func_start ov5_021D1A68
ov5_021D1A68: ; 0x021D1A68
	add r0, r0, #4
	bx lr
	thumb_func_end ov5_021D1A68

	thumb_func_start ov5_021D1A6C
ov5_021D1A6C: ; 0x021D1A6C
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov5_021D1A6C

	thumb_func_start ov5_021D1A70
ov5_021D1A70: ; 0x021D1A70
	ldr r3, _021D1A74 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021D1A74: .word sub_020181C4
	thumb_func_end ov5_021D1A70

	thumb_func_start ov5_021D1A78
ov5_021D1A78: ; 0x021D1A78
	push {r3, lr}
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r0, #9
	bne _021D1A8E
	mov r0, #1
	pop {r3, pc}
_021D1A8E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D1A78

	.rodata


	.global Unk_ov5_021F8914
Unk_ov5_021F8914: ; 0x021F8914
	.incbin "incbin/overlay5_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov5_021F8924
Unk_ov5_021F8924: ; 0x021F8924
	.incbin "incbin/overlay5_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov5_021F8934
Unk_ov5_021F8934: ; 0x021F8934
	.incbin "incbin/overlay5_rodata.bin", 0x20, 0x3C - 0x20

	.global Unk_ov5_021F8950
Unk_ov5_021F8950: ; 0x021F8950
	.incbin "incbin/overlay5_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov5_021F896C
Unk_ov5_021F896C: ; 0x021F896C
	.incbin "incbin/overlay5_rodata.bin", 0x58, 0x74 - 0x58

	.global Unk_ov5_021F8988
Unk_ov5_021F8988: ; 0x021F8988
	.incbin "incbin/overlay5_rodata.bin", 0x74, 0x9C - 0x74

	.global Unk_ov5_021F89B0
Unk_ov5_021F89B0: ; 0x021F89B0
	.incbin "incbin/overlay5_rodata.bin", 0x9C, 0x10

