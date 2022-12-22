	.include "macros/function.inc"
	.include "include/ov4_021D0D80.inc"

	

	.text


	thumb_func_start ov4_021D0D80
ov4_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _021D0F44 ; =0x0221A400
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021D0D98
	bl GF_AssertFail
_021D0D98:
	ldr r1, _021D0F48 ; =0x00001108
	add r0, r5, #0
	bl sub_02018144
	ldr r2, _021D0F48 ; =0x00001108
	add r6, r0, #0
	mov r1, #0
	bl MI_CpuFill8
	add r2, r6, #0
	add r2, #0x1f
	mov r0, #0x1f
	bic r2, r0
	ldr r1, _021D0F44 ; =0x0221A400
	ldr r0, _021D0F4C ; =0x00000F7C
	str r2, [r1, #0]
	str r6, [r2, r0]
	ldr r6, [r1, #0]
	ldr r2, [sp, #4]
	sub r3, r0, #4
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1, #0]
	mov r2, #0
	add r3, #0x28
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1, #0]
	add r3, #0x2c
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1, #0]
	add r3, #0x44
	str r2, [r6, r3]
	ldr r3, [r1, #0]
	add r0, #0xf4
	str r2, [r3, r0]
	ldr r0, [r1, #0]
	ldr r2, _021D0F50 ; =0x00001084
	str r5, [r0, r2]
	add r0, r2, #4
	ldr r3, [r1, #0]
	add r2, #8
	str r5, [r3, r0]
	ldr r0, [r1, #0]
	ldr r1, _021D0F54 ; =0x00003020
	str r4, [r0, r2]
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02018144
	ldr r3, _021D0F44 ; =0x0221A400
	mov r1, #0xf9
	ldr r2, [r3, #0]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r5, [r3, #0]
	mov r2, #0
	add r0, #8
	str r2, [r5, r0]
	ldr r0, [r3, #0]
	ldr r0, [r0, r1]
	mov r1, #0x1f
	add r0, #0x1f
	bic r0, r1
	add r1, r4, #0
	bl NNS_FndCreateExpHeapEx
	ldr r4, _021D0F44 ; =0x0221A400
	mov r6, #0
	ldr r2, [r4, #0]
	ldr r1, _021D0F58 ; =0x00000F94
	sub r7, r6, #1
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r2, [r4, #0]
	add r0, #8
	str r6, [r2, r0]
	ldr r0, [r4, #0]
	ldr r2, _021D0F5C ; =0x000010A4
	str r6, [r0, r2]
	add r0, r2, #0
	ldr r3, [r4, #0]
	sub r0, #0x10
	str r7, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4, #0]
	sub r0, #0x38
	str r6, [r3, r0]
	add r3, r2, #0
	ldr r5, [r4, #0]
	ldr r0, [sp]
	sub r3, #0x28
	str r0, [r5, r3]
	add r0, r2, #0
	ldr r3, [r4, #0]
	sub r0, #0x24
	str r6, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4, #0]
	add r0, #0x34
	str r6, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4, #0]
	sub r0, #0xc
	str r7, [r3, r0]
	add r3, r2, #0
	ldr r5, [r4, #0]
	mov r0, #1
	sub r3, #8
	str r0, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x3a
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x28
	str r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x38
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x39
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x30
	strh r0, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4, #0]
	add r3, #0x2c
	str r0, [r5, r3]
	ldr r3, [r4, #0]
	add r2, #0x32
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021D0EE6
	ldr r0, [r4, #0]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	bl sub_0202B370
	bl sub_0202AD28
	add r2, r4, #0
	mov r1, #0xf1
	ldr r3, [r2, #0]
	lsl r1, r1, #4
	str r0, [r3, r1]
	ldr r0, [r2, #0]
	add r1, #0x68
	ldr r0, [r0, r1]
	bl sub_0202B370
	add r1, r6, #0
	bl sub_0202AED8
	add r1, r4, #0
	ldr r2, [r1, #0]
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r2, r1]
_021D0EE6:
	ldr r2, _021D0F44 ; =0x0221A400
	ldr r1, _021D0F60 ; =0x000010E5
	ldr r0, [r2, #0]
	mov r3, #1
	strb r3, [r0, r1]
	mov r0, #0
	ldr r3, [r2, #0]
	sub r1, #0x81
	str r0, [r3, r1]
	ldr r1, _021D0F64 ; =0x00001044
	add r4, r0, #0
_021D0EFC:
	ldr r3, [r2, #0]
	add r3, r3, r0
	add r0, r0, #1
	strb r4, [r3, r1]
	cmp r0, #0x20
	blt _021D0EFC
	bl ov4_021D24D8
	ldr r0, _021D0F44 ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _021D0F24
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D0F24:
	ldr r0, _021D0F44 ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckValidConsole
	cmp r0, #0
	beq _021D0F3C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D0F3C:
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0F44: .word 0x0221A400
_021D0F48: .word 0x00001108
_021D0F4C: .word 0x00000F7C
_021D0F50: .word 0x00001084
_021D0F54: .word 0x00003020
_021D0F58: .word 0x00000F94
_021D0F5C: .word 0x000010A4
_021D0F60: .word 0x000010E5
_021D0F64: .word 0x00001044
	thumb_func_end ov4_021D0D80

	thumb_func_start ov4_021D0F68
ov4_021D0F68: ; 0x021D0F68
	push {r3, lr}
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D0FD2
	bl ov4_021D27CC
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D0FDC ; =0x00000F98
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021D0FA0
	add r0, r0, #4
	ldr r0, [r2, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D0FDC ; =0x00000F98
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _021D0FD8 ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D0FDC ; =0x00000F98
	str r2, [r1, r0]
_021D0FA0:
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D0FE0 ; =0x00000F94
	ldr r0, [r1, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r1, _021D0FE4 ; =0x00001084
	ldr r2, [r0, #0]
	ldr r0, [r2, r1]
	sub r1, #0xf4
	ldr r1, [r2, r1]
	bl sub_02018238
	ldr r0, _021D0FD8 ; =0x0221A400
	ldr r1, _021D0FE8 ; =0x00000F7C
	ldr r2, [r0, #0]
	ldr r0, _021D0FE4 ; =0x00001084
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	bl sub_02018238
	ldr r0, _021D0FD8 ; =0x0221A400
	mov r1, #0
	str r1, [r0, #0]
_021D0FD2:
	blx ov4_021D76E8
	pop {r3, pc}
	; .align 2, 0
_021D0FD8: .word 0x0221A400
_021D0FDC: .word 0x00000F98
_021D0FE0: .word 0x00000F94
_021D0FE4: .word 0x00001084
_021D0FE8: .word 0x00000F7C
	thumb_func_end ov4_021D0F68

	thumb_func_start ov4_021D0FEC
ov4_021D0FEC: ; 0x021D0FEC
	push {r3, lr}
	sub sp, #0x68
	ldr r0, _021D10E0 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D10E4 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	bhi _021D10D6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1008: ; jump table
	.short _021D1012 - _021D1008 - 2 ; case 0
	.short _021D1048 - _021D1008 - 2 ; case 1
	.short _021D1076 - _021D1008 - 2 ; case 2
	.short _021D10C6 - _021D1008 - 2 ; case 3
	.short _021D10CC - _021D1008 - 2 ; case 4
_021D1012:
	ldr r0, _021D10E8 ; =ov4_021D1AA0
	ldr r1, _021D10EC ; =ov4_021D1B04
	blx ov4_021D776C
	ldr r0, _021D10E0 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D10F0 ; =0x00000F14
	mov r3, #0x14
	add r0, r1, r0
	mov r1, #2
	blx ov4_021D78C8
	mov r0, #2
	blx ov4_021D792C
	blx ov4_021D797C
	ldr r1, _021D10E0 ; =0x0221A400
	ldr r0, _021D10E4 ; =0x00001070
	ldr r2, [r1, #0]
	mov r3, #1
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #0
	add r0, #0x20
	str r2, [r1, r0]
_021D1048:
	blx ov4_021D7A8C
	cmp r0, #0
	beq _021D1070
	blx ov4_021D7BFC
	cmp r0, #4
	bne _021D1064
	ldr r0, _021D10E0 ; =0x0221A400
	mov r2, #2
	ldr r1, [r0, #0]
	ldr r0, _021D10E4 ; =0x00001070
	str r2, [r1, r0]
	b _021D1076
_021D1064:
	ldr r0, _021D10E0 ; =0x0221A400
	mov r2, #0xc
	ldr r1, [r0, #0]
	ldr r0, _021D10E4 ; =0x00001070
	str r2, [r1, r0]
	b _021D1076
_021D1070:
	blx ov4_021D7AE4
	b _021D10D6
_021D1076:
	bl ov4_021D1B5C
	cmp r0, #0
	bne _021D10DA
	ldr r0, _021D10E0 ; =0x0221A400
	mov r2, #0xf1
	ldr r1, [r0, #0]
	ldr r0, _021D10F4 ; =0x02215E8C
	lsl r2, r2, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	ldr r3, _021D10F8 ; =0x02215E80
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r0, #0xe4
	add r0, r1, r0
	ldr r1, [r1, r2]
	ldr r2, _021D10FC ; =0x000029E7
	blx ov4_021D8C08
	add r0, sp, #0x14
	bl OS_GetOwnerInfo
	mov r1, #0
	ldr r2, _021D1100 ; =ov4_021D1650
	add r0, sp, #0x18
	add r3, r1, #0
	blx ov4_021D9244
	ldr r0, _021D10E0 ; =0x0221A400
	mov r2, #3
	ldr r1, [r0, #0]
	ldr r0, _021D10E4 ; =0x00001070
	str r2, [r1, r0]
_021D10C6:
	blx ov4_021D8FF4
	b _021D10D6
_021D10CC:
	blx ov4_021D8FF4
	add sp, #0x68
	mov r0, #0x1b
	pop {r3, pc}
_021D10D6:
	bl ov4_021D1B5C
_021D10DA:
	add sp, #0x68
	pop {r3, pc}
	nop
_021D10E0: .word 0x0221A400
_021D10E4: .word 0x00001070
_021D10E8: .word ov4_021D1AA0
_021D10EC: .word ov4_021D1B04
_021D10F0: .word 0x00000F14
_021D10F4: .word 0x02215E8C
_021D10F8: .word 0x02215E80
_021D10FC: .word 0x000029E7
_021D1100: .word ov4_021D1650
	thumb_func_end ov4_021D0FEC

	thumb_func_start ov4_021D1104
ov4_021D1104: ; 0x021D1104
	push {r3, r4}
	ldr r3, _021D1118 ; =0x0221A400
	ldr r2, _021D111C ; =0x00000FA4
	ldr r4, [r3, #0]
	str r0, [r4, r2]
	ldr r3, [r3, #0]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D1118: .word 0x0221A400
_021D111C: .word 0x00000FA4
	thumb_func_end ov4_021D1104

	thumb_func_start ov4_021D1120
ov4_021D1120: ; 0x021D1120
	push {r3, r4}
	ldr r3, _021D1134 ; =0x0221A400
	ldr r2, _021D1138 ; =0x00000FAC
	ldr r4, [r3, #0]
	str r0, [r4, r2]
	ldr r3, [r3, #0]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D1134: .word 0x0221A400
_021D1138: .word 0x00000FAC
	thumb_func_end ov4_021D1120

	thumb_func_start ov4_021D113C
ov4_021D113C: ; 0x021D113C
	ldr r1, _021D1148 ; =0x0221A400
	ldr r2, [r1, #0]
	ldr r1, _021D114C ; =0x00000FBC
	str r0, [r2, r1]
	bx lr
	nop
_021D1148: .word 0x0221A400
_021D114C: .word 0x00000FBC
	thumb_func_end ov4_021D113C

	thumb_func_start ov4_021D1150
ov4_021D1150: ; 0x021D1150
	push {r3, r4}
	ldr r3, _021D1164 ; =0x0221A400
	ldr r2, _021D1168 ; =0x00000FB4
	ldr r4, [r3, #0]
	str r0, [r4, r2]
	ldr r3, [r3, #0]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D1164: .word 0x0221A400
_021D1168: .word 0x00000FB4
	thumb_func_end ov4_021D1150

	thumb_func_start ov4_021D116C
ov4_021D116C: ; 0x021D116C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021D127C ; =0x0221A400
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _021D1184
	bl GF_AssertFail
_021D1184:
	ldr r0, _021D127C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1280 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	beq _021D1196
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1196:
	bl ov4_021D27CC
	ldr r2, _021D1284 ; =0x02215868
	add r1, sp, #8
	ldmia r2!, {r0, r2}
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r2, [sp, #0xc]
	mul r0, r7
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #8
	blx ov4_021DC9AC
	cmp r0, #0
	beq _021D11BC
	bl GF_AssertFail
_021D11BC:
	ldr r1, _021D1288 ; =0x02215E94
	mov r0, #0
	add r2, r5, #0
	blx ov4_021DC87C
	cmp r0, #0
	bne _021D11CE
	bl GF_AssertFail
_021D11CE:
	ldr r0, _021D127C ; =0x0221A400
	mov r2, #0x80
	ldr r1, [r0, #0]
	ldr r0, _021D128C ; =0x00000FC4
	add r0, r1, r0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021D127C ; =0x0221A400
	ldr r2, _021D1288 ; =0x02215E94
	ldr r1, [r0, #0]
	ldr r0, _021D128C ; =0x00000FC4
	add r3, r5, #0
	add r0, r1, r0
	ldr r1, _021D1290 ; =0x02215870
	bl sprintf
	ldr r0, _021D127C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D128C ; =0x00000FC4
	add r0, r1, r0
	bl strlen
	cmp r0, #0x80
	blo _021D1204
	bl GF_AssertFail
_021D1204:
	cmp r6, #0
	beq _021D1218
	ldr r0, _021D127C ; =0x0221A400
	ldr r2, _021D128C ; =0x00000FC4
	ldr r3, [r0, #0]
	mov r0, #1
	add r1, r3, r2
	add r2, r3, r2
	blx ov4_021DC87C
_021D1218:
	ldr r2, _021D127C ; =0x0221A400
	ldr r1, _021D1280 ; =0x00001070
	ldr r0, [r2, #0]
	mov r3, #5
	str r3, [r0, r1]
	add r0, r1, #0
	ldr r3, [r2, #0]
	add r0, #0xc
	str r4, [r3, r0]
	ldr r0, _021D1294 ; =ov4_021D18F0
	mov r3, #0
	str r0, [sp]
	str r3, [sp, #4]
	lsl r0, r4, #0x18
	ldr r2, [r2, #0]
	sub r1, #0xac
	add r1, r2, r1
	ldr r2, _021D1298 ; =ov4_021D1898
	lsr r0, r0, #0x18
	blx ov4_021D93F4
	ldr r0, _021D127C ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D129C ; =0x00001074
	str r2, [r1, r0]
	ldr r0, _021D12A0 ; =ov4_021D18F4
	blx ov4_021E4D74
	ldr r0, _021D12A4 ; =ov4_021D1950
	blx ov4_021E4D94
	ldr r0, _021D12A8 ; =ov4_021D1A20
	mov r1, #0
	blx ov4_021D9724
	ldr r0, _021D12AC ; =ov4_021D16E8
	blx ov4_021E4DB4
	ldr r2, _021D127C ; =0x0221A400
	ldr r1, _021D12B0 ; =0x00001078
	ldr r0, [r2, #0]
	mov r3, #0
	str r3, [r0, r1]
	ldr r2, [r2, #0]
	mov r0, #1
	add r1, #0x6d
	strb r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D127C: .word 0x0221A400
_021D1280: .word 0x00001070
_021D1284: .word 0x02215868
_021D1288: .word 0x02215E94
_021D128C: .word 0x00000FC4
_021D1290: .word 0x02215870
_021D1294: .word ov4_021D18F0
_021D1298: .word ov4_021D1898
_021D129C: .word 0x00001074
_021D12A0: .word ov4_021D18F4
_021D12A4: .word ov4_021D1950
_021D12A8: .word ov4_021D1A20
_021D12AC: .word ov4_021D16E8
_021D12B0: .word 0x00001078
	thumb_func_end ov4_021D116C

	thumb_func_start ov4_021D12B4
ov4_021D12B4: ; 0x021D12B4
	ldr r0, _021D12CC ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D12D0 ; =0x00001070
	ldr r1, [r2, r0]
	cmp r1, #0xa
	bne _021D12C6
	mov r1, #0xb
	str r1, [r2, r0]
	bx lr
_021D12C6:
	mov r1, #9
	str r1, [r2, r0]
	bx lr
	; .align 2, 0
_021D12CC: .word 0x0221A400
_021D12D0: .word 0x00001070
	thumb_func_end ov4_021D12B4

	thumb_func_start ov4_021D12D4
ov4_021D12D4: ; 0x021D12D4
	push {r4, lr}
	ldr r2, _021D13F0 ; =0x0221A400
	ldr r1, _021D13F4 ; =0x00001070
	ldr r3, [r2, #0]
	ldr r4, [r3, r1]
	cmp r4, #0x10
	bls _021D12E4
	b _021D13E8
_021D12E4:
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021D12F0: ; jump table
	.short _021D13E8 - _021D12F0 - 2 ; case 0
	.short _021D13E8 - _021D12F0 - 2 ; case 1
	.short _021D13E8 - _021D12F0 - 2 ; case 2
	.short _021D13E8 - _021D12F0 - 2 ; case 3
	.short _021D13E8 - _021D12F0 - 2 ; case 4
	.short _021D1312 - _021D12F0 - 2 ; case 5
	.short _021D1344 - _021D12F0 - 2 ; case 6
	.short _021D135C - _021D12F0 - 2 ; case 7
	.short _021D13E8 - _021D12F0 - 2 ; case 8
	.short _021D1398 - _021D12F0 - 2 ; case 9
	.short _021D1344 - _021D12F0 - 2 ; case 10
	.short _021D13B2 - _021D12F0 - 2 ; case 11
	.short _021D13CC - _021D12F0 - 2 ; case 12
	.short _021D13E8 - _021D12F0 - 2 ; case 13
	.short _021D13E8 - _021D12F0 - 2 ; case 14
	.short _021D13E8 - _021D12F0 - 2 ; case 15
	.short _021D13D2 - _021D12F0 - 2 ; case 16
_021D1312:
	cmp r0, #0
	beq _021D131A
	mov r0, #6
	str r0, [r3, r1]
_021D131A:
	ldr r0, _021D13F0 ; =0x0221A400
	ldr r2, _021D13F8 ; =0x00001074
	ldr r0, [r0, #0]
	ldr r1, [r0, r2]
	cmp r1, #2
	bne _021D13E8
	add r1, r2, #0
	add r1, #0x20
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _021D13E8
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x30
	ldrb r1, [r3, r1]
	cmp r1, #6
	beq _021D13E8
	mov r3, #0xa
	sub r1, r2, #4
	str r3, [r0, r1]
	b _021D13E8
_021D1344:
	add r0, r1, #4
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _021D1352
	blx ov4_021DC75C
	b _021D13E8
_021D1352:
	blx ov4_021D9750
	bl ov4_021D12B4
	b _021D13E8
_021D135C:
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	bne _021D1374
	ldr r0, _021D13F0 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D13FC ; =0x00001084
	ldr r0, [r1, r0]
	bl ov4_021D1E74
_021D1374:
	ldr r0, _021D13F0 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D1400 ; =0x0000109C
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021D1384
	mov r1, #1
	b _021D1386
_021D1384:
	mov r1, #0
_021D1386:
	add r0, #0x38
	strh r1, [r2, r0]
	ldr r0, _021D13F0 ; =0x0221A400
	mov r2, #8
	ldr r1, [r0, #0]
	ldr r0, _021D13F4 ; =0x00001070
	str r2, [r1, r0]
	mov r0, #0x14
	pop {r4, pc}
_021D1398:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2, #0]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x15
	pop {r4, pc}
_021D13B2:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2, #0]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x16
	pop {r4, pc}
_021D13CC:
	bl ov4_021D1B5C
	pop {r4, pc}
_021D13D2:
	add r1, #0x20
	ldr r0, [r3, r1]
	cmp r0, #0
	bne _021D13E8
	blx ov4_021D9750
	ldr r0, _021D13F0 ; =0x0221A400
	mov r2, #0x11
	ldr r1, [r0, #0]
	ldr r0, _021D13F4 ; =0x00001070
	str r2, [r1, r0]
_021D13E8:
	bl ov4_021D1D1C
	pop {r4, pc}
	nop
_021D13F0: .word 0x0221A400
_021D13F4: .word 0x00001070
_021D13F8: .word 0x00001074
_021D13FC: .word 0x00001084
_021D1400: .word 0x0000109C
	thumb_func_end ov4_021D12D4

	thumb_func_start ov4_021D1404
ov4_021D1404: ; 0x021D1404
	push {r3, lr}
	ldr r0, _021D1424 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1428 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D141E
	bl ov4_021D1C5C
	cmp r0, #0
	beq _021D141E
	mov r0, #1
	pop {r3, pc}
_021D141E:
	mov r0, #0
	pop {r3, pc}
	nop
_021D1424: .word 0x0221A400
_021D1428: .word 0x00001078
	thumb_func_end ov4_021D1404

	thumb_func_start ov4_021D142C
ov4_021D142C: ; 0x021D142C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021D143E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D143E:
	blx ov4_021D9968
	cmp r0, #0
	bne _021D1460
	ldr r0, _021D14C4 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D14C8 ; =0x00000FA4
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021D145C
	lsl r2, r4, #0x10
	mov r0, #0
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021D145C:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D1460:
	ldr r0, _021D14C4 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D14CC ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D1474
	bl ov4_021D1C5C
	cmp r0, #0
	bne _021D1478
_021D1474:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D1478:
	ldr r1, _021D14C4 ; =0x0221A400
	ldr r0, _021D14D0 ; =0x000010D4
	ldr r2, [r1, #0]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2, #0]
	add r3, r0, #0
	ldr r2, [r1, #0]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1, #0]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r2, _021D14C4 ; =0x0221A400
	ldr r1, _021D14CC ; =0x00001078
	ldr r3, [r2, #0]
	mov r0, #1
	str r0, [r3, r1]
	ldr r1, [r2, #0]
	add r2, r4, #4
	blx ov4_021E4C28
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D14C4: .word 0x0221A400
_021D14C8: .word 0x00000FA4
_021D14CC: .word 0x00001078
_021D14D0: .word 0x000010D4
	thumb_func_end ov4_021D142C

	thumb_func_start ov4_021D14D4
ov4_021D14D4: ; 0x021D14D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021D14E6
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D14E6:
	blx ov4_021D9968
	cmp r0, #0
	beq _021D14F2
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D14F2:
	ldr r0, _021D1580 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1584 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D1506
	bl ov4_021D1C5C
	cmp r0, #0
	bne _021D150A
_021D1506:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D150A:
	ldr r1, _021D1580 ; =0x0221A400
	ldr r0, _021D1588 ; =0x000010D4
	ldr r2, [r1, #0]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2, #0]
	add r3, r0, #0
	ldr r2, [r1, #0]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1, #0]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, _021D1580 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D1584 ; =0x00001078
	str r2, [r1, r0]
	blx ov4_021D99D4
	ldr r1, _021D1580 ; =0x0221A400
	add r2, r4, #4
	ldr r1, [r1, #0]
	blx ov4_021E4C28
	cmp r0, #0
	bne _021D1566
	ldr r1, _021D1580 ; =0x0221A400
	mov r0, #0
	ldr r2, [r1, #0]
	ldr r1, _021D1584 ; =0x00001078
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_021D1566:
	ldr r0, _021D1580 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D158C ; =0x00000FA8
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021D157C
	lsl r2, r4, #0x10
	mov r0, #0
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021D157C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1580: .word 0x0221A400
_021D1584: .word 0x00001078
_021D1588: .word 0x000010D4
_021D158C: .word 0x00000FA8
	thumb_func_end ov4_021D14D4

	thumb_func_start ov4_021D1590
ov4_021D1590: ; 0x021D1590
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021D15A2
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D15A2:
	ldr r0, _021D1640 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1644 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D15B6
	bl ov4_021D1C5C
	cmp r0, #0
	bne _021D15BA
_021D15B6:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D15BA:
	ldr r1, _021D1640 ; =0x0221A400
	ldr r0, _021D1648 ; =0x000010D4
	ldr r2, [r1, #0]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2, #0]
	add r3, r0, #0
	ldr r2, [r1, #0]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1, #0]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, _021D1640 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D1644 ; =0x00001078
	str r2, [r1, r0]
	blx ov4_021D99D4
	ldr r1, _021D1640 ; =0x0221A400
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r1, #0]
	add r0, r6, #0
	add r2, r4, #4
	blx ov4_021E4C28
	cmp r6, r0
	beq _021D161C
	ldr r1, _021D1640 ; =0x0221A400
	mov r0, #0
	ldr r2, [r1, #0]
	ldr r1, _021D1644 ; =0x00001078
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_021D161C:
	ldr r0, _021D1640 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D164C ; =0x00000FA8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D163C
	blx ov4_021D9968
	lsl r2, r4, #0x10
	ldr r3, _021D1640 ; =0x0221A400
	add r1, r5, #0
	ldr r4, [r3, #0]
	ldr r3, _021D164C ; =0x00000FA8
	lsr r2, r2, #0x10
	ldr r3, [r4, r3]
	blx r3
_021D163C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1640: .word 0x0221A400
_021D1644: .word 0x00001078
_021D1648: .word 0x000010D4
_021D164C: .word 0x00000FA8
	thumb_func_end ov4_021D1590

	thumb_func_start ov4_021D1650
ov4_021D1650: ; 0x021D1650
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D16CC ; =0x0221A400
	add r4, r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckDirtyFlag
	cmp r0, #0
	beq _021D1682
	ldr r0, _021D16CC ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_ClearDirtyFlag
	ldr r0, _021D16CC ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D16D0 ; =0x000010E6
	strb r2, [r1, r0]
_021D1682:
	cmp r5, #0
	bne _021D16BC
	ldr r0, _021D16D4 ; =ov4_021D1744
	str r4, [sp]
	str r0, [sp, #4]
	ldr r2, _021D16CC ; =0x0221A400
	str r4, [sp, #8]
	ldr r3, [r2, #0]
	mov r2, #0xf1
	lsl r2, r2, #4
	ldr r2, [r3, r2]
	ldr r1, _021D16D8 ; =ov4_021D171C
	ldr r3, _021D16DC ; =ov4_021D1740
	mov r0, #0
	blx ov4_021D934C
	cmp r0, #0
	bne _021D16B0
	mov r0, #1
	bl sub_02038AE0
	add sp, #0xc
	pop {r4, r5, pc}
_021D16B0:
	ldr r0, _021D16E0 ; =ov4_021D17A0
	mov r1, #0
	blx ov4_021DB3DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D16BC:
	ldr r0, _021D16CC ; =0x0221A400
	mov r2, #0xc
	ldr r1, [r0, #0]
	ldr r0, _021D16E4 ; =0x00001070
	str r2, [r1, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D16CC: .word 0x0221A400
_021D16D0: .word 0x000010E6
_021D16D4: .word ov4_021D1744
_021D16D8: .word ov4_021D171C
_021D16DC: .word ov4_021D1740
_021D16E0: .word ov4_021D17A0
_021D16E4: .word 0x00001070
	thumb_func_end ov4_021D1650

	thumb_func_start ov4_021D16E8
ov4_021D16E8: ; 0x021D16E8
	push {r3, lr}
	ldr r0, _021D1710 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1714 ; =0x000010A8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D170E
	blx ov4_021D9750
	ldr r1, _021D1710 ; =0x0221A400
	mov r3, #0
	ldr r2, [r1, #0]
	ldr r0, _021D1718 ; =0x00001098
	mvn r3, r3
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #0x12
	sub r0, #0x28
	str r2, [r1, r0]
_021D170E:
	pop {r3, pc}
	; .align 2, 0
_021D1710: .word 0x0221A400
_021D1714: .word 0x000010A8
_021D1718: .word 0x00001098
	thumb_func_end ov4_021D16E8

	thumb_func_start ov4_021D171C
ov4_021D171C: ; 0x021D171C
	cmp r0, #0
	bne _021D172C
	ldr r0, _021D1738 ; =0x0221A400
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _021D173C ; =0x00001070
	str r2, [r1, r0]
	bx lr
_021D172C:
	ldr r0, _021D1738 ; =0x0221A400
	mov r2, #0xc
	ldr r1, [r0, #0]
	ldr r0, _021D173C ; =0x00001070
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D1738: .word 0x0221A400
_021D173C: .word 0x00001070
	thumb_func_end ov4_021D171C

	thumb_func_start ov4_021D1740
ov4_021D1740: ; 0x021D1740
	bx lr
	; .align 2, 0
	thumb_func_end ov4_021D1740

	thumb_func_start ov4_021D1744
ov4_021D1744: ; 0x021D1744
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D1798 ; =0x0221A400
	add r4, r1, #0
	ldr r1, [r0, #0]
	ldr r0, _021D179C ; =0x00000F78
	ldr r0, [r1, r0]
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r1, r0, #0
	ldr r0, _021D1798 ; =0x0221A400
	mov r2, #1
	ldr r0, [r0, #0]
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	add r2, #0x80
	bl MI_CpuCopy8
	ldr r0, _021D1798 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D179C ; =0x00000F78
	ldr r0, [r1, r0]
	bl sub_0202B370
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202B270
	ldr r0, _021D1798 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D179C ; =0x00000F78
	ldr r0, [r1, r0]
	bl sub_0203068C
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020307F0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1798: .word 0x0221A400
_021D179C: .word 0x00000F78
	thumb_func_end ov4_021D1744

	thumb_func_start ov4_021D17A0
ov4_021D17A0: ; 0x021D17A0
	bx lr
	; .align 2, 0
	thumb_func_end ov4_021D17A0

	thumb_func_start ov4_021D17A4
ov4_021D17A4: ; 0x021D17A4
	ldr r0, _021D17B4 ; =0x0221A400
	ldr r3, _021D17B8 ; =MI_CpuFill8
	ldr r1, [r0, #0]
	ldr r0, _021D17BC ; =0x000010AC
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	bx r3
	; .align 2, 0
_021D17B4: .word 0x0221A400
_021D17B8: .word MI_CpuFill8
_021D17BC: .word 0x000010AC
	thumb_func_end ov4_021D17A4

	thumb_func_start ov4_021D17C0
ov4_021D17C0: ; 0x021D17C0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r5, #0
_021D17C6:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	blx ov4_021E4E60
	add r5, r5, #1
	cmp r5, #4
	blt _021D17C6
	blx ov4_021D9968
	cmp r0, #0
	bne _021D1822
	ldr r6, _021D1844 ; =0x0221A400
	ldr r0, _021D1848 ; =0x0000107C
	ldr r1, [r6, #0]
	mov r5, #0
	ldr r0, [r1, r0]
	cmp r0, #0
	ble _021D1832
	ldr r7, _021D1848 ; =0x0000107C
	mov r4, #1
_021D17F0:
	blx ov4_021D9968
	cmp r5, r0
	beq _021D1816
	blx ov4_021D99D4
	add r1, r4, #0
	lsl r1, r5
	tst r0, r1
	beq _021D1816
	lsl r0, r5, #0x18
	ldr r1, _021D184C ; =0x00002710
	lsr r0, r0, #0x18
	blx ov4_021E4E60
	cmp r0, #0
	bne _021D1816
	bl GF_AssertFail
_021D1816:
	ldr r0, [r6, #0]
	add r5, r5, #1
	ldr r0, [r0, r7]
	cmp r5, r0
	blt _021D17F0
	b _021D1832
_021D1822:
	ldr r1, _021D184C ; =0x00002710
	mov r0, #0
	blx ov4_021E4E60
	cmp r0, #0
	bne _021D1832
	bl GF_AssertFail
_021D1832:
	ldr r0, _021D1844 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D1850 ; =0x000010A8
	str r2, [r1, r0]
	bl ov4_021D17A4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1844: .word 0x0221A400
_021D1848: .word 0x0000107C
_021D184C: .word 0x00002710
_021D1850: .word 0x000010A8
	thumb_func_end ov4_021D17C0

	thumb_func_start ov4_021D1854
ov4_021D1854: ; 0x021D1854
	push {r4, r5, r6, lr}
	ldr r4, _021D188C ; =0x0221A400
	ldr r0, _021D1890 ; =0x00001070
	ldr r1, [r4, #0]
	mov r2, #7
	str r2, [r1, r0]
	ldr r1, [r4, #0]
	add r0, #0xc
	ldr r0, [r1, r0]
	mov r5, #0
	cmp r0, #0
	ble _021D1886
	ldr r6, _021D1894 ; =0x0000107C
_021D186E:
	blx ov4_021D9968
	cmp r5, r0
	beq _021D187C
	add r0, r5, #0
	bl ov4_021D2748
_021D187C:
	ldr r0, [r4, #0]
	add r5, r5, #1
	ldr r0, [r0, r6]
	cmp r5, r0
	blt _021D186E
_021D1886:
	bl ov4_021D17C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D188C: .word 0x0221A400
_021D1890: .word 0x00001070
_021D1894: .word 0x0000107C
	thumb_func_end ov4_021D1854

	thumb_func_start ov4_021D1898
ov4_021D1898: ; 0x021D1898
	push {r4, lr}
	cmp r0, #0
	bne _021D18B6
	cmp r1, #0
	bne _021D18B0
	blx ov4_021D9968
	mov r1, #1
	sub r0, r1, r0
	bl ov4_021D1854
	b _021D18C0
_021D18B0:
	bl ov4_021D12B4
	b _021D18C0
_021D18B6:
	ldr r0, _021D18E0 ; =0x0221A400
	mov r2, #0xc
	ldr r1, [r0, #0]
	ldr r0, _021D18E4 ; =0x00001070
	str r2, [r1, r0]
_021D18C0:
	ldr r0, _021D18E0 ; =0x0221A400
	ldr r4, [r0, #0]
	ldr r0, _021D18E8 ; =0x00000FB4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D18DE
	blx ov4_021D9968
	ldr r3, _021D18E0 ; =0x0221A400
	ldr r2, _021D18EC ; =0x00000FB8
	ldr r3, [r3, #0]
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r3, r2]
	blx r2
_021D18DE:
	pop {r4, pc}
	; .align 2, 0
_021D18E0: .word 0x0221A400
_021D18E4: .word 0x00001070
_021D18E8: .word 0x00000FB4
_021D18EC: .word 0x00000FB8
	thumb_func_end ov4_021D1898

	thumb_func_start ov4_021D18F0
ov4_021D18F0: ; 0x021D18F0
	mov r0, #1
	bx lr
	thumb_func_end ov4_021D18F0

	thumb_func_start ov4_021D18F4
ov4_021D18F4: ; 0x021D18F4
	push {r3, r4}
	ldr r2, _021D1910 ; =0x0221A400
	ldr r0, _021D1914 ; =0x00001078
	ldr r3, [r2, #0]
	mov r4, #0
	str r4, [r3, r0]
	ldr r2, [r2, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, #0x34
	str r4, [r1, r0]
	pop {r3, r4}
	bx lr
	nop
_021D1910: .word 0x0221A400
_021D1914: .word 0x00001078
	thumb_func_end ov4_021D18F4

	thumb_func_start ov4_021D1918
ov4_021D1918: ; 0x021D1918
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	bne _021D1946
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _021D193C
	ldr r0, _021D1948 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D194C ; =0x000010D0
	str r2, [r1, r0]
	pop {r4, pc}
_021D193C:
	ldr r0, _021D1948 ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D194C ; =0x000010D0
	str r2, [r1, r0]
_021D1946:
	pop {r4, pc}
	; .align 2, 0
_021D1948: .word 0x0221A400
_021D194C: .word 0x000010D0
	thumb_func_end ov4_021D1918

	thumb_func_start ov4_021D1950
ov4_021D1950: ; 0x021D1950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	ldrb r3, [r4, #1]
	ldrb r6, [r4]
	add r7, r2, #0
	lsl r3, r3, #8
	mov ip, r3
	ldrb r3, [r4, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r4, #2]
	lsl r3, r3, #0x10
	orr r3, r5
	mov r5, ip
	orr r3, r5
	orr r3, r6
	str r3, [sp, #4]
	ldr r3, _021D1A10 ; =0x0221A400
	ldr r5, _021D1A14 ; =0x000010A8
	ldr r6, [r3, #0]
	mov r3, #1
	str r3, [r6, r5]
	ldr r3, [sp, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #1
	bne _021D199C
	ldr r0, [sp, #4]
	bl ov4_021D1918
	ldr r0, _021D1A10 ; =0x0221A400
	ldrb r2, [r4, #2]
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x35
	strb r2, [r1, r0]
	b _021D19AE
_021D199C:
	bl ov4_021D2C70
	cmp r0, #0
	bne _021D1A0C
	ldr r0, [sp, #4]
	bl ov4_021D1918
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D19AE:
	sub r6, r7, #4
	mov r0, #0
	add r1, r6, #0
	mov r2, #4
	bl ov4_021D1AA0
	add r5, r0, #0
	beq _021D1A0C
	add r0, r4, #4
	add r1, r5, #0
	add r2, r6, #0
	bl MI_CpuCopy8
	blx ov4_021D9968
	cmp r0, #0
	bne _021D19EA
	ldr r0, _021D1A10 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1A18 ; =0x00000FA4
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021D1A02
	add r2, r6, #0
	lsl r2, r2, #0x10
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
	b _021D1A02
_021D19EA:
	ldr r0, _021D1A10 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1A1C ; =0x00000FA8
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021D1A02
	add r2, r6, #0
	lsl r2, r2, #0x10
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021D1A02:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov4_021D1B04
_021D1A0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1A10: .word 0x0221A400
_021D1A14: .word 0x000010A8
_021D1A18: .word 0x00000FA4
_021D1A1C: .word 0x00000FA8
	thumb_func_end ov4_021D1950

	thumb_func_start ov4_021D1A20
ov4_021D1A20: ; 0x021D1A20
	push {r4, r5, r6, lr}
	ldr r5, _021D1A8C ; =0x0221A400
	add r4, r3, #0
	ldr r3, [r5, #0]
	ldr r2, _021D1A90 ; =0x00001078
	mov r1, #0
	str r1, [r3, r2]
	add r3, r2, #0
	ldr r6, [r5, #0]
	add r3, #0x54
	str r1, [r6, r3]
	add r3, r2, #0
	add r3, #0x28
	ldr r6, [r5, #0]
	cmp r0, #0
	str r1, [r6, r3]
	bne _021D1A74
	ldr r0, [r5, #0]
	add r2, #0x6d
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _021D1A74
	blx ov4_021D9920
	cmp r0, #1
	bne _021D1A74
	add r0, r5, #0
	ldr r2, [r0, #0]
	ldr r0, _021D1A94 ; =0x00001070
	ldr r1, [r2, r0]
	cmp r1, #6
	beq _021D1A64
	mov r1, #0x10
	str r1, [r2, r0]
_021D1A64:
	ldr r0, _021D1A8C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1A98 ; =0x00001090
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D1A74
	bl ov4_021D1F18
_021D1A74:
	ldr r0, _021D1A8C ; =0x0221A400
	ldr r1, _021D1A9C ; =0x00000FAC
	ldr r3, [r0, #0]
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _021D1A88
	add r1, r1, #4
	ldr r1, [r3, r1]
	add r0, r4, #0
	blx r2
_021D1A88:
	pop {r4, r5, r6, pc}
	nop
_021D1A8C: .word 0x0221A400
_021D1A90: .word 0x00001078
_021D1A94: .word 0x00001070
_021D1A98: .word 0x00001090
_021D1A9C: .word 0x00000FAC
	thumb_func_end ov4_021D1A20

	thumb_func_start ov4_021D1AA0
ov4_021D1AA0: ; 0x021D1AA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, _021D1AF8 ; =0x0221A400
	add r2, r6, #0
	ldr r1, [r0, #0]
	ldr r0, _021D1AFC ; =0x00000F94
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	bne _021D1ADA
	ldr r0, _021D1AF8 ; =0x0221A400
	ldr r1, _021D1B00 ; =0x00000F98
	ldr r0, [r0, #0]
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021D1ADA
	add r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	add r2, r6, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
_021D1ADA:
	cmp r4, #0
	bne _021D1AEE
	mov r0, #1
	bl sub_02038AE0
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1AEE:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1AF8: .word 0x0221A400
_021D1AFC: .word 0x00000F94
_021D1B00: .word 0x00000F98
	thumb_func_end ov4_021D1AA0

	thumb_func_start ov4_021D1B04
ov4_021D1B04: ; 0x021D1B04
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _021D1B4E
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	bl NNS_FndGetGroupIDForMBlockExpHeap
	cmp r0, #0x10
	bne _021D1B3A
	ldr r0, _021D1B50 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D1B54 ; =0x00000F98
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _021D1B2E
	mov r0, #1
	bl sub_02038AE0
	pop {r3, r4, r5, pc}
_021D1B2E:
	add r0, r0, #4
	ldr r0, [r2, r0]
	add r1, r5, #0
	bl NNS_FndFreeToExpHeap
	b _021D1B48
_021D1B3A:
	ldr r0, _021D1B50 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1B58 ; =0x00000F94
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl NNS_FndFreeToExpHeap
_021D1B48:
	add r0, r4, #0
	bl OS_RestoreInterrupts
_021D1B4E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1B50: .word 0x0221A400
_021D1B54: .word 0x00000F98
_021D1B58: .word 0x00000F94
	thumb_func_end ov4_021D1B04

	thumb_func_start ov4_021D1B5C
ov4_021D1B5C: ; 0x021D1B5C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r0, sp, #4
	add r1, sp, #0
	mov r4, #0
	blx ov4_021D75F4
	add r5, r0, #0
	beq _021D1C2E
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _021D1B7A
	ldr r0, [sp]
	cmp r0, #1
	bne _021D1B7C
_021D1B7A:
	add r4, r5, #0
_021D1B7C:
	ldr r0, [sp]
	cmp r0, #7
	bhi _021D1C2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1B8E: ; jump table
	.short _021D1C2E - _021D1B8E - 2 ; case 0
	.short _021D1B9E - _021D1B8E - 2 ; case 1
	.short _021D1BA4 - _021D1B8E - 2 ; case 2
	.short _021D1BAA - _021D1B8E - 2 ; case 3
	.short _021D1BAA - _021D1B8E - 2 ; case 4
	.short _021D1BAA - _021D1B8E - 2 ; case 5
	.short _021D1BAA - _021D1B8E - 2 ; case 6
	.short _021D1C10 - _021D1B8E - 2 ; case 7
_021D1B9E:
	blx ov4_021D76E8
	b _021D1C2E
_021D1BA4:
	blx ov4_021D76E8
	b _021D1C2E
_021D1BAA:
	ldr r0, _021D1C50 ; =0x0221A400
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021D1C00
	ldr r0, _021D1C54 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #0x12
	bhi _021D1BFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1BC6: ; jump table
	.short _021D1BF0 - _021D1BC6 - 2 ; case 0
	.short _021D1BF0 - _021D1BC6 - 2 ; case 1
	.short _021D1BF0 - _021D1BC6 - 2 ; case 2
	.short _021D1BEC - _021D1BC6 - 2 ; case 3
	.short _021D1BEC - _021D1BC6 - 2 ; case 4
	.short _021D1BEC - _021D1BC6 - 2 ; case 5
	.short _021D1BEC - _021D1BC6 - 2 ; case 6
	.short _021D1BEC - _021D1BC6 - 2 ; case 7
	.short _021D1BEC - _021D1BC6 - 2 ; case 8
	.short _021D1BEC - _021D1BC6 - 2 ; case 9
	.short _021D1BFC - _021D1BC6 - 2 ; case 10
	.short _021D1BFC - _021D1BC6 - 2 ; case 11
	.short _021D1BEC - _021D1BC6 - 2 ; case 12
	.short _021D1BFC - _021D1BC6 - 2 ; case 13
	.short _021D1BFC - _021D1BC6 - 2 ; case 14
	.short _021D1BFC - _021D1BC6 - 2 ; case 15
	.short _021D1BEC - _021D1BC6 - 2 ; case 16
	.short _021D1BEC - _021D1BC6 - 2 ; case 17
	.short _021D1BEC - _021D1BC6 - 2 ; case 18
_021D1BEC:
	blx ov4_021D8E8C
_021D1BF0:
	bl sub_0203895C
	cmp r0, #0x21
	beq _021D1BFC
	blx ov4_021D7DB0
_021D1BFC:
	blx ov4_021D76E8
_021D1C00:
	ldr r0, _021D1C50 ; =0x0221A400
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _021D1C2E
	ldr r0, _021D1C54 ; =0x00001070
	mov r1, #0xe
	str r1, [r2, r0]
	b _021D1C2E
_021D1C10:
	ldr r1, _021D1C50 ; =0x0221A400
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _021D1C2E
	ldr r0, _021D1C54 ; =0x00001070
	mov r2, #0xf
	str r2, [r3, r0]
	ldr r1, [r1, #0]
	sub r0, #0xb0
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021D1C2E
	ldr r0, [sp, #4]
	neg r0, r0
	blx r1
_021D1C2E:
	ldr r0, _021D1C50 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1C58 ; =0x000010DE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021D1C3C
	mov r4, #0x1a
_021D1C3C:
	cmp r5, #0
	beq _021D1C4A
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r5, #0
	bl sub_02037F94
_021D1C4A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1C50: .word 0x0221A400
_021D1C54: .word 0x00001070
_021D1C58: .word 0x000010DE
	thumb_func_end ov4_021D1B5C

	thumb_func_start ov4_021D1C5C
ov4_021D1C5C: ; 0x021D1C5C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021D1CA4 ; =0x0221A400
	mov r5, #0
	ldr r1, [r6, #0]
	ldr r0, _021D1CA8 ; =0x0000107C
	add r4, r5, #0
	ldr r0, [r1, r0]
	cmp r0, #0
	ble _021D1CA0
	ldr r7, _021D1CA8 ; =0x0000107C
_021D1C70:
	blx ov4_021D9968
	cmp r4, r0
	beq _021D1C96
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	blx ov4_021D9A08
	cmp r0, #0
	beq _021D1C96
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r5, #1
	blx ov4_021E4A58
	cmp r0, #0
	bne _021D1C96
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1C96:
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, r7]
	cmp r4, r0
	blt _021D1C70
_021D1CA0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1CA4: .word 0x0221A400
_021D1CA8: .word 0x0000107C
	thumb_func_end ov4_021D1C5C

	thumb_func_start ov4_021D1CAC
ov4_021D1CAC: ; 0x021D1CAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D1D0C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D1D10 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D1D06
	bl ov4_021D1C5C
	cmp r0, #0
	beq _021D1D06
	blx ov4_021D99D4
	ldr r1, _021D1D14 ; =0x0000FFFE
	tst r0, r1
	beq _021D1D06
	ldr r1, _021D1D0C ; =0x0221A400
	ldr r0, _021D1D10 ; =0x00001078
	ldr r2, [r1, #0]
	mov r3, #1
	str r3, [r2, r0]
	ldr r2, [r1, #0]
	add r0, #0x5c
	ldrh r0, [r2, r0]
	lsl r1, r0, #8
	mov r0, #2
	orr r0, r1
	str r0, [r2, #0]
	blx ov4_021D99D4
	ldr r1, _021D1D0C ; =0x0221A400
	mov r2, #4
	ldr r1, [r1, #0]
	blx ov4_021E4C28
	ldr r0, _021D1D0C ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _021D1D18 ; =0x000010AC
	str r2, [r1, r0]
	mov r0, #1
	pop {r4, pc}
_021D1D06:
	mov r0, #0
	pop {r4, pc}
	nop
_021D1D0C: .word 0x0221A400
_021D1D10: .word 0x00001078
_021D1D14: .word 0x0000FFFE
_021D1D18: .word 0x000010AC
	thumb_func_end ov4_021D1CAC

	thumb_func_start ov4_021D1D1C
ov4_021D1D1C: ; 0x021D1D1C
	push {r3, r4, r5, r6, r7, lr}
	blx ov4_021D8FF4
	bl ov4_021D21B4
	ldr r0, _021D1E18 ; =0x0221A400
	ldr r1, _021D1E1C ; =0x00001090
	ldr r2, [r0, #0]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _021D1DA4
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r2, r0]
	cmp r0, #1
	bne _021D1D54
	add r0, r1, #0
	add r0, #0x40
	ldr r0, [r2, r0]
	cmp r0, #1
	bne _021D1D54
	add r1, #0x46
	ldrh r0, [r2, r1]
	cmp r0, #1
	bne _021D1D54
	bl ov4_021D2FB8
	b _021D1D58
_021D1D54:
	bl ov4_021D2FA4
_021D1D58:
	bl ov4_021D2B28
	ldr r0, _021D1E18 ; =0x0221A400
	ldr r4, [r0, #0]
	blx ov4_021D99D4
	mov r1, #0x42
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021D1DA4
	add r0, r1, #0
	add r0, #0x5f
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D1DA4
	add r1, #0x1c
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021D1DA4
	blx ov4_021D99D4
	add r4, r0, #0
	blx ov4_021D9968
	add r1, r0, #0
	add r0, r4, #0
	bl ov4_021D2FCC
	cmp r0, #0
	beq _021D1DA4
	blx ov4_021D99D4
	ldr r1, _021D1E18 ; =0x0221A400
	ldr r2, [r1, #0]
	mov r1, #0x42
	lsl r1, r1, #6
	str r0, [r2, r1]
_021D1DA4:
	ldr r6, _021D1E18 ; =0x0221A400
	ldr r1, _021D1E20 ; =0x00001070
	ldr r0, [r6, #0]
	ldr r2, [r0, r1]
	cmp r2, #0x12
	bne _021D1DBC
	bl ov4_021D1B5C
	cmp r0, #0
	bne _021D1E16
	mov r0, #0x17
	pop {r3, r4, r5, r6, r7, pc}
_021D1DBC:
	cmp r2, #0x11
	bne _021D1DC4
	mov r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D1DC4:
	sub r2, r2, #7
	cmp r2, #1
	bhi _021D1E12
	add r1, #0xc
	ldr r1, [r0, r1]
	mov r4, #0
	cmp r1, #0
	ble _021D1E12
	ldr r7, _021D1E24 ; =0x000010AC
	add r5, r4, #0
_021D1DD8:
	ldr r2, _021D1E24 ; =0x000010AC
	add r1, r0, r5
	ldr r0, _021D1E24 ; =0x000010AC
	ldr r2, [r1, r2]
	ldr r0, [r1, r0]
	add r2, r2, #1
	str r2, [r1, r7]
	cmp r0, #0x78
	blt _021D1E04
	ldr r1, [r6, #0]
	ldr r0, _021D1E28 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D1E04
	add r0, r4, #0
	bl ov4_021D1CAC
	cmp r0, #0
	beq _021D1E04
	bl ov4_021D17A4
	b _021D1E12
_021D1E04:
	ldr r0, [r6, #0]
	ldr r1, _021D1E2C ; =0x0000107C
	add r4, r4, #1
	ldr r1, [r0, r1]
	add r5, r5, #4
	cmp r4, r1
	blt _021D1DD8
_021D1E12:
	bl ov4_021D1B5C
_021D1E16:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1E18: .word 0x0221A400
_021D1E1C: .word 0x00001090
_021D1E20: .word 0x00001070
_021D1E24: .word 0x000010AC
_021D1E28: .word 0x00001078
_021D1E2C: .word 0x0000107C
	thumb_func_end ov4_021D1D1C

	thumb_func_start ov4_021D1E30
ov4_021D1E30: ; 0x021D1E30
	push {r3, lr}
	ldr r0, _021D1E58 ; =0x0221A400
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021D1E50
	ldr r0, _021D1E5C ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #7
	beq _021D1E4A
	cmp r0, #8
	beq _021D1E4A
	cmp r0, #0x10
	bne _021D1E50
_021D1E4A:
	blx ov4_021D9968
	pop {r3, pc}
_021D1E50:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_021D1E58: .word 0x0221A400
_021D1E5C: .word 0x00001070
	thumb_func_end ov4_021D1E30

	thumb_func_start ov4_021D1E60
ov4_021D1E60: ; 0x021D1E60
	ldr r0, _021D1E6C ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D1E70 ; =0x00001090
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D1E6C: .word 0x0221A400
_021D1E70: .word 0x00001090
	thumb_func_end ov4_021D1E60

	thumb_func_start ov4_021D1E74
ov4_021D1E74: ; 0x021D1E74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #1
	bl sub_0203895C
	bl sub_0203272C
	add r5, r0, #0
	beq _021D1EA8
	bl sub_02035E18
	sub r4, r0, #1
	cmp r4, #1
	bge _021D1E92
	mov r4, #1
_021D1E92:
	ldr r1, _021D1F08 ; =0x0221A400
	ldr r6, _021D1F0C ; =0x000010D4
	ldr r0, [r1, #0]
	mov r3, #1
	strh r3, [r0, r6]
	ldr r2, [r1, #0]
	sub r0, r6, #4
	str r3, [r2, r0]
	ldr r0, [r1, #0]
	add r1, r6, #2
	strh r3, [r0, r1]
_021D1EA8:
	ldr r0, _021D1F08 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D1F10 ; =0x00001090
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _021D1F06
	add r0, #0x14
	ldr r0, [r2, r0]
	cmp r0, #5
	bhi _021D1EE4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1EC8: ; jump table
	.short _021D1EE4 - _021D1EC8 - 2 ; case 0
	.short _021D1EE4 - _021D1EC8 - 2 ; case 1
	.short _021D1ED4 - _021D1EC8 - 2 ; case 2
	.short _021D1ED8 - _021D1EC8 - 2 ; case 3
	.short _021D1EDC - _021D1EC8 - 2 ; case 4
	.short _021D1EE0 - _021D1EC8 - 2 ; case 5
_021D1ED4:
	mov r1, #1
	b _021D1EEE
_021D1ED8:
	mov r1, #2
	b _021D1EEE
_021D1EDC:
	mov r1, #3
	b _021D1EEE
_021D1EE0:
	mov r1, #4
	b _021D1EEE
_021D1EE4:
	cmp r5, #0
	bne _021D1EEC
	mov r1, #4
	b _021D1EEE
_021D1EEC:
	mov r1, #3
_021D1EEE:
	add r0, r7, #0
	add r2, r4, #0
	bl ov4_021D2CC0
	ldr r0, _021D1F14 ; =ov4_021D1E60
	bl ov4_021D2EF4
	ldr r0, _021D1F08 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D1F10 ; =0x00001090
	str r2, [r1, r0]
_021D1F06:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1F08: .word 0x0221A400
_021D1F0C: .word 0x000010D4
_021D1F10: .word 0x00001090
_021D1F14: .word ov4_021D1E60
	thumb_func_end ov4_021D1E74

	thumb_func_start ov4_021D1F18
ov4_021D1F18: ; 0x021D1F18
	push {r3, lr}
	bl ov4_021D2F08
	ldr r1, _021D1F34 ; =0x0221A400
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _021D1F32
	ldr r0, _021D1F38 ; =0x00001090
	mov r2, #0
	str r2, [r3, r0]
	ldr r1, [r1, #0]
	sub r0, #0x10
	str r2, [r1, r0]
_021D1F32:
	pop {r3, pc}
	; .align 2, 0
_021D1F34: .word 0x0221A400
_021D1F38: .word 0x00001090
	thumb_func_end ov4_021D1F18

	thumb_func_start ov4_021D1F3C
ov4_021D1F3C: ; 0x021D1F3C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x64
	add r4, r0, #0
	bl _s32_div_f
	mov r1, #0xfa
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #2
	bl _s32_div_f
	ldr r2, _021D2094 ; =0x00004E85
	cmp r4, r2
	bne _021D1F5E
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D1F5E:
	cmp r0, #0x17
	bne _021D1F66
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D1F66:
	add r1, r2, #7
	cmp r4, r1
	bne _021D1F70
	mov r0, #2
	pop {r4, r5, r6, pc}
_021D1F70:
	add r2, #9
	cmp r4, r2
	bne _021D1F7A
	mov r0, #3
	pop {r4, r5, r6, pc}
_021D1F7A:
	mov r1, #2
	lsl r1, r1, #8
	cmp r5, r1
	bne _021D1F86
	mov r0, #4
	pop {r4, r5, r6, pc}
_021D1F86:
	add r2, r1, #0
	sub r2, #0xc
	cmp r5, r2
	bne _021D1F92
	mov r0, #5
	pop {r4, r5, r6, pc}
_021D1F92:
	ldr r2, _021D2098 ; =0x0000C79F
	cmp r4, r2
	bne _021D1F9C
	mov r0, #7
	pop {r4, r5, r6, pc}
_021D1F9C:
	sub r2, r1, #2
	cmp r5, r2
	bne _021D1FA6
	mov r0, #6
	pop {r4, r5, r6, pc}
_021D1FA6:
	sub r2, r1, #1
	cmp r5, r2
	bne _021D1FB0
	mov r0, #6
	pop {r4, r5, r6, pc}
_021D1FB0:
	add r1, r1, #1
	cmp r5, r1
	bne _021D1FBA
	mov r0, #6
	pop {r4, r5, r6, pc}
_021D1FBA:
	ldr r1, _021D209C ; =0x0000CB20
	cmp r4, r1
	blt _021D1FCA
	add r1, r1, #3
	cmp r4, r1
	bgt _021D1FCA
	mov r0, #8
	pop {r4, r5, r6, pc}
_021D1FCA:
	ldr r1, _021D20A0 ; =0x0000CB84
	cmp r4, r1
	blt _021D1FDA
	add r1, r1, #3
	cmp r4, r1
	bgt _021D1FDA
	mov r0, #8
	pop {r4, r5, r6, pc}
_021D1FDA:
	ldr r1, _021D20A4 ; =0x0000CBE8
	cmp r4, r1
	blt _021D1FEA
	add r1, r1, #3
	cmp r4, r1
	bgt _021D1FEA
	mov r0, #8
	pop {r4, r5, r6, pc}
_021D1FEA:
	ldr r1, _021D20A8 ; =0x00013A2E
	cmp r4, r1
	bne _021D1FF4
	mov r0, #9
	pop {r4, r5, r6, pc}
_021D1FF4:
	cmp r0, #0x14
	bne _021D1FFC
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D1FFC:
	mov r1, #0x82
	lsl r1, r1, #2
	cmp r5, r1
	bne _021D2008
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2008:
	add r2, r1, #1
	cmp r5, r2
	bne _021D2012
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2012:
	add r2, r1, #2
	cmp r5, r2
	bne _021D201C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D201C:
	add r2, r1, #3
	cmp r5, r2
	bne _021D2026
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2026:
	add r2, r1, #0
	add r2, #0xa
	cmp r5, r2
	bne _021D2032
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2032:
	add r2, r1, #0
	add r2, #0xb
	cmp r5, r2
	bne _021D203E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D203E:
	add r1, #0xc
	cmp r5, r1
	bne _021D2048
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2048:
	ldr r1, _021D20AC ; =0x00002710
	cmp r4, r1
	bge _021D2052
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_021D2052:
	cmp r0, #0x1f
	bne _021D205A
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021D205A:
	cmp r6, #7
	bhi _021D2082
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D206A: ; jump table
	.short _021D207A - _021D206A - 2 ; case 0
	.short _021D207A - _021D206A - 2 ; case 1
	.short _021D207A - _021D206A - 2 ; case 2
	.short _021D207E - _021D206A - 2 ; case 3
	.short _021D207E - _021D206A - 2 ; case 4
	.short _021D207E - _021D206A - 2 ; case 5
	.short _021D207E - _021D206A - 2 ; case 6
	.short _021D2088 - _021D206A - 2 ; case 7
_021D207A:
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021D207E:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021D2082:
	bl GF_AssertFail
	b _021D208C
_021D2088:
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_021D208C:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_021D2094: .word 0x00004E85
_021D2098: .word 0x0000C79F
_021D209C: .word 0x0000CB20
_021D20A0: .word 0x0000CB84
_021D20A4: .word 0x0000CBE8
_021D20A8: .word 0x00013A2E
_021D20AC: .word 0x00002710
	thumb_func_end ov4_021D1F3C

	thumb_func_start ov4_021D20B0
ov4_021D20B0: ; 0x021D20B0
	push {r3, lr}
	cmp r0, #0
	bne _021D2110
	ldr r0, _021D212C ; =0x0221A400
	ldr r2, _021D2130 ; =0x00001070
	ldr r0, [r0, #0]
	ldr r1, [r0, r2]
	cmp r1, #0x12
	bhi _021D2128
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D20CE: ; jump table
	.short _021D2128 - _021D20CE - 2 ; case 0
	.short _021D2128 - _021D20CE - 2 ; case 1
	.short _021D2128 - _021D20CE - 2 ; case 2
	.short _021D2128 - _021D20CE - 2 ; case 3
	.short _021D210C - _021D20CE - 2 ; case 4
	.short _021D20F4 - _021D20CE - 2 ; case 5
	.short _021D2128 - _021D20CE - 2 ; case 6
	.short _021D20F4 - _021D20CE - 2 ; case 7
	.short _021D20F4 - _021D20CE - 2 ; case 8
	.short _021D2128 - _021D20CE - 2 ; case 9
	.short _021D2128 - _021D20CE - 2 ; case 10
	.short _021D2128 - _021D20CE - 2 ; case 11
	.short _021D2128 - _021D20CE - 2 ; case 12
	.short _021D2128 - _021D20CE - 2 ; case 13
	.short _021D210C - _021D20CE - 2 ; case 14
	.short _021D2128 - _021D20CE - 2 ; case 15
	.short _021D2128 - _021D20CE - 2 ; case 16
	.short _021D210C - _021D20CE - 2 ; case 17
	.short _021D210C - _021D20CE - 2 ; case 18
_021D20F4:
	add r2, #0x20
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _021D2100
	bl ov4_021D2EA4
_021D2100:
	ldr r0, _021D212C ; =0x0221A400
	mov r2, #0x10
	ldr r1, [r0, #0]
	ldr r0, _021D2130 ; =0x00001070
	str r2, [r1, r0]
	b _021D2128
_021D210C:
	mov r0, #1
	pop {r3, pc}
_021D2110:
	ldr r0, _021D212C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D2130 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	beq _021D2124
	cmp r0, #0x11
	beq _021D2124
	cmp r0, #0x12
	bne _021D2128
_021D2124:
	mov r0, #1
	pop {r3, pc}
_021D2128:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D212C: .word 0x0221A400
_021D2130: .word 0x00001070
	thumb_func_end ov4_021D20B0

	thumb_func_start ov4_021D2134
ov4_021D2134: ; 0x021D2134
	push {r3, lr}
	ldr r0, _021D2168 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D216C ; =0x00001070
	ldr r0, [r2, r0]
	cmp r0, #0x11
	beq _021D214A
	cmp r0, #0x12
	beq _021D214A
	cmp r0, #4
	bne _021D2162
_021D214A:
	ldr r0, _021D216C ; =0x00001070
	mov r1, #4
	str r1, [r2, r0]
	sub r2, r1, #5
	ldr r1, _021D2168 ; =0x0221A400
	add r0, #0x28
	ldr r1, [r1, #0]
	str r2, [r1, r0]
	bl ov4_021D25FC
	mov r0, #1
	pop {r3, pc}
_021D2162:
	mov r0, #0
	pop {r3, pc}
	nop
_021D2168: .word 0x0221A400
_021D216C: .word 0x00001070
	thumb_func_end ov4_021D2134

	thumb_func_start ov4_021D2170
ov4_021D2170: ; 0x021D2170
	ldr r1, _021D2180 ; =0x0221A400
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _021D217E
	mov r1, #0x3f
	lsl r1, r1, #6
	str r0, [r2, r1]
_021D217E:
	bx lr
	; .align 2, 0
_021D2180: .word 0x0221A400
	thumb_func_end ov4_021D2170

	thumb_func_start ov4_021D2184
ov4_021D2184: ; 0x021D2184
	push {r3, lr}
	blx ov4_021D8E8C
	blx ov4_021D7DB0
	bl ov4_021D1F18
	bl ov4_021D0F68
	pop {r3, pc}
	thumb_func_end ov4_021D2184

	thumb_func_start ov4_021D2198
ov4_021D2198: ; 0x021D2198
	push {r3, r4}
	ldr r3, _021D21AC ; =0x0221A400
	ldr r2, _021D21B0 ; =0x00001064
	ldr r4, [r3, #0]
	str r0, [r4, r2]
	ldr r3, [r3, #0]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D21AC: .word 0x0221A400
_021D21B0: .word 0x00001064
	thumb_func_end ov4_021D2198

	thumb_func_start ov4_021D21B4
ov4_021D21B4: ; 0x021D21B4
	push {r3, r4, r5, lr}
	ldr r0, _021D221C ; =0x0221A400
	ldr r1, _021D2220 ; =0x00001064
	ldr r0, [r0, #0]
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021D221A
	add r1, #8
	ldr r2, [r0, r1]
	mov r1, #0x1f
	add r5, r2, #0
	and r5, r1
	mov r1, #0xc
	add r4, r5, #0
	mul r4, r1
	add r1, #0xf4
	ldr r0, [r0, r1]
	add r0, r0, r4
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	beq _021D220A
	ldr r0, _021D221C ; =0x0221A400
	ldr r3, _021D2220 ; =0x00001064
	ldr r2, [r0, #0]
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [r2, r3]
	ldr r0, [r2, r0]
	add r3, r3, #4
	ldr r2, [r2, r3]
	add r0, r0, r4
	add r3, r2, #0
	mul r3, r5
	add r1, r1, r3
	add r2, sp, #0
	blx ov4_021DB2A4
	ldr r1, _021D221C ; =0x0221A400
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _021D2224 ; =0x00001044
	strb r0, [r2, r1]
_021D220A:
	ldr r0, _021D221C ; =0x0221A400
	ldr r1, _021D2228 ; =0x0000106C
	ldr r3, [r0, #0]
	ldr r0, [r3, r1]
	add r2, r0, #1
	mov r0, #0x1f
	and r0, r2
	str r0, [r3, r1]
_021D221A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D221C: .word 0x0221A400
_021D2220: .word 0x00001064
_021D2224: .word 0x00001044
_021D2228: .word 0x0000106C
	thumb_func_end ov4_021D21B4

	thumb_func_start ov4_021D222C
ov4_021D222C: ; 0x021D222C
	ldr r3, _021D2230 ; =ov4_021DB350
	bx r3
	; .align 2, 0
_021D2230: .word ov4_021DB350
	thumb_func_end ov4_021D222C

	thumb_func_start ov4_021D2234
ov4_021D2234: ; 0x021D2234
	ldr r1, _021D2240 ; =0x0221A400
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _021D2244 ; =0x00001044
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_021D2240: .word 0x0221A400
_021D2244: .word 0x00001044
	thumb_func_end ov4_021D2234

	thumb_func_start ov4_021D2248
ov4_021D2248: ; 0x021D2248
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov4_021D27E0
	cmp r0, #0
	beq _021D225E
	mov r0, #3
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D225E:
	ldr r1, _021D2350 ; =0x0221A400
	ldr r0, _021D2354 ; =0x00001070
	ldr r2, [r1, #0]
	ldr r3, [r2, r0]
	cmp r3, #4
	beq _021D228E
	add r3, r0, #0
	add r3, #0x5c
	ldr r3, [r2, r3]
	add r4, r3, #1
	add r3, r0, #0
	add r3, #0x5c
	str r4, [r2, r3]
	ldr r1, [r1, #0]
	add r0, #0x5c
	ldr r0, [r1, r0]
	cmp r0, #0x78
	ble _021D2288
	mov r0, #2
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D2288:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D228E:
	bl ov4_021D27CC
	ldr r2, _021D2350 ; =0x0221A400
	ldr r1, _021D2358 ; =0x000010D8
	ldr r0, [r2, #0]
	mov r3, #0
	str r3, [r0, r1]
	add r0, r1, #0
	ldr r3, [r2, #0]
	mov r6, #1
	add r0, #0xd
	strb r6, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #0]
	sub r0, #0x44
	str r5, [r3, r0]
	sub r1, #0x5c
	ldr r0, [r2, #0]
	cmp r7, #0
	str r4, [r0, r1]
	beq _021D22BA
	mov r4, #2
_021D22BA:
	ldr r0, _021D2350 ; =0x0221A400
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _021D235C ; =0x000010A0
	cmp r5, #0
	str r2, [r1, r0]
	bge _021D22DE
	lsl r0, r4, #0x18
	mov r2, #0
	ldr r1, _021D2360 ; =ov4_021D23A4
	ldr r3, _021D2364 ; =ov4_021D24AC
	lsr r0, r0, #0x18
	str r2, [sp]
	blx ov4_021D9494
	mov r3, #1
	ldr r1, _021D2350 ; =0x0221A400
	b _021D22F0
_021D22DE:
	ldr r1, _021D2368 ; =ov4_021D2488
	mov r2, #0
	ldr r3, _021D2364 ; =ov4_021D24AC
	add r0, r5, #0
	str r2, [sp]
	blx ov4_021D952C
	ldr r1, _021D2350 ; =0x0221A400
	mov r3, #2
_021D22F0:
	ldr r2, [r1, #0]
	ldr r1, _021D236C ; =0x00001074
	cmp r0, #0
	str r3, [r2, r1]
	ldr r0, _021D2370 ; =0x000010CC
	bne _021D231A
	ldr r1, _021D2350 ; =0x0221A400
	ldr r3, [r1, #0]
	ldr r2, [r3, r0]
	add r2, r2, #1
	str r2, [r3, r0]
	ldr r1, [r1, #0]
	ldr r0, [r1, r0]
	cmp r0, #0x78
	ble _021D2314
	mov r0, #2
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D2314:
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021D231A:
	ldr r1, _021D2350 ; =0x0221A400
	mov r3, #0
	ldr r2, [r1, #0]
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #5
	sub r0, #0x5c
	str r2, [r1, r0]
	ldr r0, _021D2374 ; =ov4_021D18F4
	blx ov4_021E4D74
	ldr r0, _021D2378 ; =ov4_021D1950
	blx ov4_021E4D94
	ldr r0, _021D237C ; =ov4_021D1A20
	mov r1, #0
	blx ov4_021D9724
	ldr r0, _021D2380 ; =ov4_021D16E8
	blx ov4_021E4DB4
	ldr r1, _021D2350 ; =0x0221A400
	mov r0, #0
	ldr r2, [r1, #0]
	ldr r1, _021D2384 ; =0x00001078
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2350: .word 0x0221A400
_021D2354: .word 0x00001070
_021D2358: .word 0x000010D8
_021D235C: .word 0x000010A0
_021D2360: .word ov4_021D23A4
_021D2364: .word ov4_021D24AC
_021D2368: .word ov4_021D2488
_021D236C: .word 0x00001074
_021D2370: .word 0x000010CC
_021D2374: .word ov4_021D18F4
_021D2378: .word ov4_021D1950
_021D237C: .word ov4_021D1A20
_021D2380: .word ov4_021D16E8
_021D2384: .word 0x00001078
	thumb_func_end ov4_021D2248

	thumb_func_start ov4_021D2388
ov4_021D2388: ; 0x021D2388
	ldr r0, _021D239C ; =0x0221A400
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021D2396
	ldr r0, _021D23A0 ; =0x00001094
	ldr r0, [r1, r0]
	bx lr
_021D2396:
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
_021D239C: .word 0x0221A400
_021D23A0: .word 0x00001094
	thumb_func_end ov4_021D2388

	thumb_func_start ov4_021D23A4
ov4_021D23A4: ; 0x021D23A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021D246C ; =0x0221A400
	add r3, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	mov r4, #0
	ldr r2, [r7, #0]
	ldr r1, _021D2470 ; =0x000010A0
	ldr r5, [sp, #0x18]
	str r4, [r2, r1]
	cmp r3, #0
	bne _021D246A
	cmp r0, #0
	bne _021D245E
	bl sub_0203895C
	bl sub_02032740
	cmp r0, #0
	beq _021D23D4
	sub r0, r4, #1
	cmp r5, r0
	bne _021D23D4
	mov r4, #1
_021D23D4:
	ldr r0, _021D246C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D2474 ; =0x00000FBC
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021D23EA
	add r0, r5, #0
	blx r1
	cmp r0, #0
	bne _021D23EA
	mov r4, #1
_021D23EA:
	ldr r0, _021D246C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D2478 ; =0x000010E0
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021D23FA
	cmp r4, #0
	beq _021D2432
_021D23FA:
	blx ov4_021D99D4
	ldr r1, _021D246C ; =0x0221A400
	ldr r2, [r1, #0]
	ldr r1, _021D247C ; =0x000010D8
	ldr r1, [r2, r1]
	mvn r1, r1
	and r0, r1
	str r0, [sp]
	blx ov4_021D99D4
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _021D2432
	add r0, sp, #0
	blx ov4_021D985C
	ldr r0, [sp]
	eor r0, r4
	cmp r0, #1
	bne _021D246A
	ldr r0, _021D246C ; =0x0221A400
	mov r2, #6
	ldr r1, [r0, #0]
	ldr r0, _021D2480 ; =0x00001070
	str r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D2432:
	ldr r0, _021D246C ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D2484 ; =0x00001094
	str r5, [r1, r0]
	blx ov4_021D99D4
	ldr r2, _021D246C ; =0x0221A400
	ldr r1, _021D247C ; =0x000010D8
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r2, [r2, #0]
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _021D2456
	mov r0, #6
	sub r1, #0x68
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D2456:
	add r0, r5, #0
	bl ov4_021D1854
	pop {r3, r4, r5, r6, r7, pc}
_021D245E:
	cmp r6, #0
	bne _021D246A
	ldr r0, [r7, #0]
	sub r2, r4, #1
	sub r1, #8
	str r2, [r0, r1]
_021D246A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D246C: .word 0x0221A400
_021D2470: .word 0x000010A0
_021D2474: .word 0x00000FBC
_021D2478: .word 0x000010E0
_021D247C: .word 0x000010D8
_021D2480: .word 0x00001070
_021D2484: .word 0x00001094
	thumb_func_end ov4_021D23A4

	thumb_func_start ov4_021D2488
ov4_021D2488: ; 0x021D2488
	push {r4, lr}
	ldr r2, _021D24A4 ; =0x0221A400
	mov r4, #0
	ldr r3, [r2, #0]
	ldr r2, _021D24A8 ; =0x000010A0
	cmp r0, #0
	str r4, [r3, r2]
	bne _021D24A2
	cmp r1, #0
	bne _021D24A2
	ldr r0, [sp, #8]
	bl ov4_021D1854
_021D24A2:
	pop {r4, pc}
	; .align 2, 0
_021D24A4: .word 0x0221A400
_021D24A8: .word 0x000010A0
	thumb_func_end ov4_021D2488

	thumb_func_start ov4_021D24AC
ov4_021D24AC: ; 0x021D24AC
	push {r3, lr}
	ldr r2, _021D24D0 ; =0x0221A400
	ldr r1, _021D24D4 ; =0x00001098
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r3, [r2, #0]
	add r2, r1, #0
	sub r2, #0xe4
	ldr r2, [r3, r2]
	cmp r2, #0
	beq _021D24CC
	sub r1, #0xe0
	lsl r0, r0, #0x10
	ldr r1, [r3, r1]
	lsr r0, r0, #0x10
	blx r2
_021D24CC:
	pop {r3, pc}
	nop
_021D24D0: .word 0x0221A400
_021D24D4: .word 0x00001098
	thumb_func_end ov4_021D24AC

	thumb_func_start ov4_021D24D8
ov4_021D24D8: ; 0x021D24D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _021D2540 ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _021D2500
	ldr r0, _021D2540 ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl DWC_CreateExchangeToken
	b _021D2510
_021D2500:
	ldr r0, _021D2540 ; =0x0221A400
	ldr r1, [r0, #0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl DWC_CreateExchangeToken
_021D2510:
	mov r4, #0
	mov r7, #1
	ldr r6, _021D2540 ; =0x0221A400
	add r5, r4, #0
	lsl r7, r7, #8
_021D251A:
	mov r0, #1
	ldr r1, [r6, #0]
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	add r0, r0, r5
	bl DWC_GetFriendDataType
	ldr r0, [r6, #0]
	ldr r0, [r0, r7]
	add r0, r0, r5
	bl DWC_IsBuddyFriendData
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x20
	blt _021D251A
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2540: .word 0x0221A400
	thumb_func_end ov4_021D24D8

	thumb_func_start ov4_021D2544
ov4_021D2544: ; 0x021D2544
	ldr r3, _021D2548 ; =ov4_021D2F7C
	bx r3
	; .align 2, 0
_021D2548: .word ov4_021D2F7C
	thumb_func_end ov4_021D2544

	thumb_func_start ov4_021D254C
ov4_021D254C: ; 0x021D254C
	ldr r0, _021D2560 ; =0x0221A400
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021D255A
	ldr r0, _021D2564 ; =0x0000109C
	ldr r0, [r1, r0]
	bx lr
_021D255A:
	mov r0, #0
	bx lr
	nop
_021D2560: .word 0x0221A400
_021D2564: .word 0x0000109C
	thumb_func_end ov4_021D254C

	thumb_func_start ov4_021D2568
ov4_021D2568: ; 0x021D2568
	ldr r0, _021D257C ; =0x0221A400
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021D2576
	ldr r0, _021D2580 ; =0x00001098
	ldr r0, [r1, r0]
	bx lr
_021D2576:
	mov r0, #0
	bx lr
	nop
_021D257C: .word 0x0221A400
_021D2580: .word 0x00001098
	thumb_func_end ov4_021D2568

	thumb_func_start ov4_021D2584
ov4_021D2584: ; 0x021D2584
	ldr r1, _021D2590 ; =0x0221A400
	ldr r2, [r1, #0]
	ldr r1, _021D2594 ; =0x0000109C
	str r0, [r2, r1]
	bx lr
	nop
_021D2590: .word 0x0221A400
_021D2594: .word 0x0000109C
	thumb_func_end ov4_021D2584

	thumb_func_start ov4_021D2598
ov4_021D2598: ; 0x021D2598
	ldr r1, _021D25A4 ; =0x0221A400
	ldr r2, [r1, #0]
	ldr r1, _021D25A8 ; =0x000010D6
	strh r0, [r2, r1]
	bx lr
	nop
_021D25A4: .word 0x0221A400
_021D25A8: .word 0x000010D6
	thumb_func_end ov4_021D2598

	thumb_func_start ov4_021D25AC
ov4_021D25AC: ; 0x021D25AC
	ldr r0, _021D25B8 ; =0x0221A400
	mov r2, #2
	ldr r1, [r0, #0]
	ldr r0, _021D25BC ; =0x000010E0
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D25B8: .word 0x0221A400
_021D25BC: .word 0x000010E0
	thumb_func_end ov4_021D25AC

	thumb_func_start ov4_021D25C0
ov4_021D25C0: ; 0x021D25C0
	push {r3, lr}
	ldr r0, _021D25F0 ; =0x0221A400
	ldr r2, [r0, #0]
	ldr r0, _021D25F4 ; =0x000010E0
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _021D25DA
	mov r1, #1
	strb r1, [r2, r0]
	ldr r0, _021D25F8 ; =ov4_021D25AC
	mov r1, #0
	blx ov4_021DC7C8
_021D25DA:
	ldr r0, _021D25F0 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D25F4 ; =0x000010E0
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021D25EA
	mov r0, #1
	pop {r3, pc}
_021D25EA:
	mov r0, #0
	pop {r3, pc}
	nop
_021D25F0: .word 0x0221A400
_021D25F4: .word 0x000010E0
_021D25F8: .word ov4_021D25AC
	thumb_func_end ov4_021D25C0

	thumb_func_start ov4_021D25FC
ov4_021D25FC: ; 0x021D25FC
	ldr r0, _021D2608 ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D260C ; =0x000010E0
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D2608: .word 0x0221A400
_021D260C: .word 0x000010E0
	thumb_func_end ov4_021D25FC

	thumb_func_start ov4_021D2610
ov4_021D2610: ; 0x021D2610
	ldr r3, _021D2614 ; =ov4_021D9920
	bx r3
	; .align 2, 0
_021D2614: .word ov4_021D9920
	thumb_func_end ov4_021D2610

	thumb_func_start ov4_021D2618
ov4_021D2618: ; 0x021D2618
	push {r4, lr}
	cmp r0, #0
	beq _021D2680
	ldr r2, _021D26D4 ; =0x0221A400
	ldr r0, _021D26D8 ; =0x00001088
	ldr r3, [r2, #0]
	mov r4, #0xb
	str r4, [r3, r0]
	ldr r2, [r2, #0]
	sub r0, #0xf0
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021D26D0
	add r0, r1, #0
	ldr r1, _021D26DC ; =0x0000F020
	bl sub_02018144
	ldr r2, _021D26D4 ; =0x0221A400
	ldr r1, _021D26E0 ; =0x00000F98
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r0, [r2, #0]
	mov r2, #0
	ldr r0, [r0, r1]
	mov r1, #0x1f
	add r0, #0x1f
	bic r0, r1
	mov r1, #0xf
	lsl r1, r1, #0xc
	bl NNS_FndCreateExpHeapEx
	ldr r2, _021D26D4 ; =0x0221A400
	ldr r1, _021D26E4 ; =0x00000F9C
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r0, [r2, #0]
	ldr r0, [r0, r1]
	mov r1, #0x10
	bl NNS_FndSetGroupIDForExpHeap
	ldr r0, _021D26D4 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D26E4 ; =0x00000F9C
	ldr r0, [r1, r0]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	ldr r1, _021D26D4 ; =0x0221A400
	ldr r2, [r1, #0]
	mov r1, #0xfa
	lsl r1, r1, #4
	str r0, [r2, r1]
	pop {r4, pc}
_021D2680:
	ldr r2, _021D26D4 ; =0x0221A400
	ldr r0, _021D26E8 ; =0x00001084
	ldr r4, [r2, #0]
	add r1, r0, #4
	ldr r3, [r4, r0]
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r4, [r2, #0]
	sub r1, #0xec
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021D26D0
	sub r0, #0xe8
	ldr r0, [r4, r0]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	mov r1, #0xfa
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021D26B2
	mov r0, #1
	bl sub_02038AE0
	pop {r4, pc}
_021D26B2:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021D26D4 ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D26E0 ; =0x00000F98
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _021D26D4 ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D26E0 ; =0x00000F98
	str r2, [r1, r0]
_021D26D0:
	pop {r4, pc}
	nop
_021D26D4: .word 0x0221A400
_021D26D8: .word 0x00001088
_021D26DC: .word 0x0000F020
_021D26E0: .word 0x00000F98
_021D26E4: .word 0x00000F9C
_021D26E8: .word 0x00001084
	thumb_func_end ov4_021D2618

	thumb_func_start ov4_021D26EC
ov4_021D26EC: ; 0x021D26EC
	ldr r1, _021D26F8 ; =0x0221A400
	ldr r2, [r1, #0]
	ldr r1, _021D26FC ; =0x000010E5
	strb r0, [r2, r1]
	bx lr
	nop
_021D26F8: .word 0x0221A400
_021D26FC: .word 0x000010E5
	thumb_func_end ov4_021D26EC

	thumb_func_start ov4_021D2700
ov4_021D2700: ; 0x021D2700
	push {r4, lr}
	ldr r1, _021D2740 ; =0x0221A400
	lsl r4, r0, #2
	ldr r3, [r1, #0]
	mov r1, #0x3e
	add r2, r3, r4
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021D273C
	add r2, r3, r0
	ldr r0, _021D2744 ; =0x000010E1
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _021D2726
	add r0, r1, #0
	bl sub_020181C4
	b _021D272E
_021D2726:
	mov r0, #0
	add r2, r0, #0
	bl ov4_021D1B04
_021D272E:
	ldr r0, _021D2740 ; =0x0221A400
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0x3e
	lsl r0, r0, #6
	str r2, [r1, r0]
_021D273C:
	pop {r4, pc}
	nop
_021D2740: .word 0x0221A400
_021D2744: .word 0x000010E1
	thumb_func_end ov4_021D2700

	thumb_func_start ov4_021D2748
ov4_021D2748: ; 0x021D2748
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov4_021D2700
	ldr r0, _021D27C0 ; =0x0221A400
	lsl r4, r5, #2
	ldr r2, [r0, #0]
	mov r0, #0x3e
	add r1, r2, r4
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D27BC
	ldr r1, _021D27C4 ; =0x00001088
	ldr r0, [r2, r1]
	cmp r0, #0xb
	bne _021D2780
	sub r1, #0x68
	bl sub_02018144
	ldr r2, _021D27C0 ; =0x0221A400
	ldr r1, [r2, #0]
	add r3, r1, r4
	mov r1, #0x3e
	lsl r1, r1, #6
	str r0, [r3, r1]
	mov r3, #1
	b _021D2798
_021D2780:
	mov r0, #0
	sub r1, #0x88
	mov r2, #0x20
	bl ov4_021D1AA0
	ldr r2, _021D27C0 ; =0x0221A400
	ldr r1, [r2, #0]
	add r3, r1, r4
	mov r1, #0x3e
	lsl r1, r1, #6
	str r0, [r3, r1]
	mov r3, #0
_021D2798:
	ldr r0, [r2, #0]
	mov r2, #0x3e
	add r1, r0, r5
	ldr r0, _021D27C8 ; =0x000010E1
	lsl r2, r2, #6
	strb r3, [r1, r0]
	ldr r1, _021D27C0 ; =0x0221A400
	lsl r0, r5, #0x18
	ldr r1, [r1, #0]
	mov r3, #0x1f
	add r1, r1, r4
	ldr r1, [r1, r2]
	lsr r0, r0, #0x18
	add r1, #0x1f
	bic r1, r3
	add r2, #0x80
	blx ov4_021E4D28
_021D27BC:
	pop {r3, r4, r5, pc}
	nop
_021D27C0: .word 0x0221A400
_021D27C4: .word 0x00001088
_021D27C8: .word 0x000010E1
	thumb_func_end ov4_021D2748

	thumb_func_start ov4_021D27CC
ov4_021D27CC: ; 0x021D27CC
	push {r4, lr}
	mov r4, #0
_021D27D0:
	add r0, r4, #0
	bl ov4_021D2700
	add r4, r4, #1
	cmp r4, #4
	blt _021D27D0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov4_021D27CC

	thumb_func_start ov4_021D27E0
ov4_021D27E0: ; 0x021D27E0
	ldr r0, _021D27EC ; =0x0221A400
	ldr r1, [r0, #0]
	ldr r0, _021D27F0 ; =0x000010E6
	ldrb r0, [r1, r0]
	bx lr
	nop
_021D27EC: .word 0x0221A400
_021D27F0: .word 0x000010E6
	thumb_func_end ov4_021D27E0

	thumb_func_start ov4_021D27F4
ov4_021D27F4: ; 0x021D27F4
	ldr r0, _021D2800 ; =0x0221A400
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _021D2804 ; =0x000010E6
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D2800: .word 0x0221A400
_021D2804: .word 0x000010E6
	thumb_func_end ov4_021D27F4

	.rodata


	.global Unk_ov4_02215868
Unk_ov4_02215868: ; 0x02215868
	.incbin "incbin/overlay4_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov4_02215870
Unk_ov4_02215870: ; 0x02215870
	.incbin "incbin/overlay4_rodata.bin", 0x8, 0xC



	.data


	.global Unk_ov4_02215E80
Unk_ov4_02215E80: ; 0x02215E80
	.incbin "incbin/overlay4_data.bin", 0x0, 0xC - 0x0

	.global Unk_ov4_02215E8C
Unk_ov4_02215E8C: ; 0x02215E8C
	.incbin "incbin/overlay4_data.bin", 0xC, 0x14 - 0xC

	.global Unk_ov4_02215E94
Unk_ov4_02215E94: ; 0x02215E94
	.incbin "incbin/overlay4_data.bin", 0x14, 0xA



	.bss


	.global Unk_ov4_0221A400
Unk_ov4_0221A400: ; 0x0221A400
	.space 0x4

