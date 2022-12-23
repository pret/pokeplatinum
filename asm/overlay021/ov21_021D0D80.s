	.include "macros/function.inc"
	.include "overlay021/ov21_021D0D80.inc"

	

	.text


	thumb_func_start ov21_021D0D80
ov21_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	sub sp, #0x20
	mov r1, #0
	add r5, r0, #0
	mov r0, #0x36
	add r2, r1, #0
	bl sub_02004550
	mov r2, #1
	mov r0, #3
	mov r1, #0x25
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x25
	bl sub_0200681C
	add r4, r0, #0
	bne _021D0DAE
	bl GF_AssertFail
_021D0DAE:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #8
	mov r1, #0x25
	bl sub_0201DBEC
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r1, _021D0E34 ; =0x000001E7
	mov r2, #0
	bl sub_0202756C
	bl sub_02098988
	ldr r0, _021D0E38 ; =ov21_021D0F04
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	cmp r0, #1
	beq _021D0DF4
	bl GF_AssertFail
_021D0DF4:
	mov r0, #0x25
	bl ov21_021D12B0
	ldr r0, [r5, #0]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	mov r0, #0x25
	bl ov21_021D0F60
	str r0, [r4, #0]
	mov r0, #1
	mov r1, #0x2a
	bl sub_0200544C
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021D0E34: .word 0x000001E7
_021D0E38: .word ov21_021D0F04
	thumb_func_end ov21_021D0D80

	thumb_func_start ov21_021D0E3C
ov21_021D0E3C: ; 0x021D0E3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #3
	bhi _021D0EBC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E58: ; jump table
	.short _021D0E60 - _021D0E58 - 2 ; case 0
	.short _021D0E78 - _021D0E58 - 2 ; case 1
	.short _021D0E8E - _021D0E58 - 2 ; case 2
	.short _021D0E9A - _021D0E58 - 2 ; case 3
_021D0E60:
	bl ov21_021D0F18
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EBC
_021D0E78:
	ldr r0, [r5, #0]
	bl ov21_021D10B8
	cmp r0, #1
	bne _021D0EBC
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EBC
_021D0E8E:
	bl ov21_021D0F38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0EBC
_021D0E9A:
	bl ov21_021D0F58
	cmp r0, #0
	beq _021D0EBC
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	ldr r0, _021D0EC0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021D0EC4 ; =0x04001050
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0EBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0EC0: .word 0x04000050
_021D0EC4: .word 0x04001050
	thumb_func_end ov21_021D0E3C

	thumb_func_start ov21_021D0EC8
ov21_021D0EC8: ; 0x021D0EC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201E530
	cmp r0, #1
	beq _021D0EE4
	bl GF_AssertFail
_021D0EE4:
	bl ov21_021D12C4
	bl sub_0201DC3C
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x25
	bl sub_0201807C
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021D0EC8

	thumb_func_start ov21_021D0F04
ov21_021D0F04: ; 0x021D0F04
	push {r3, lr}
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D0F10
	bl ov21_021D12D8
_021D0F10:
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D0F04

	thumb_func_start ov21_021D0F18
ov21_021D0F18: ; 0x021D0F18
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov21_021D0F18

	thumb_func_start ov21_021D0F38
ov21_021D0F38: ; 0x021D0F38
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov21_021D0F38

	thumb_func_start ov21_021D0F58
ov21_021D0F58: ; 0x021D0F58
	ldr r3, _021D0F5C ; =sub_0200F2AC
	bx r3
	; .align 2, 0
_021D0F5C: .word sub_0200F2AC
	thumb_func_end ov21_021D0F58

	thumb_func_start ov21_021D0F60
ov21_021D0F60: ; 0x021D0F60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	ldr r1, _021D1084 ; =0x00001D10
	add r7, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D0F76
	bl GF_AssertFail
_021D0F76:
	ldr r2, _021D1084 ; =0x00001D10
	add r0, r4, #0
	mov r1, #0
	bl memset
	str r7, [r4, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #8]
	add r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1088 ; =0x00001A0C
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D108C ; =0x00001A10
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1090 ; =0x00001A14
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1094 ; =0x00001A18
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D3FE0
	mov r1, #0x1d
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D1098 ; =0x00001D04
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D109C ; =0x00001D08
	str r0, [r4, r1]
	add r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D10A0 ; =0x00001D0C
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x1c]
	bl sub_0209ACE4
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x1c]
	bl sub_0209ACEC
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0xc
	add r1, sp, #8
	add r2, r7, #0
	bl ov21_021D3208
	ldr r0, _021D10A4 ; =0x0000177C
	add r1, r7, #0
	add r0, r4, r0
	bl ov21_021D1FA4
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021D10A8 ; =0x00001A30
	ldr r5, _021D10AC ; =0x021E9B74
	add r6, r4, r0
_021D1024:
	ldr r3, [r5, #0]
	cmp r3, #0
	beq _021D1032
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	blx r3
_021D1032:
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _021D1024
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6f
	lsl r0, r0, #6
	ldr r5, _021D10B0 ; =0x021E9B34
	add r6, r4, r0
_021D104C:
	ldr r3, [r5, #0]
	cmp r3, #0
	beq _021D105A
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	blx r3
_021D105A:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp]
	cmp r0, #8
	blt _021D104C
	ldr r1, _021D10B4 ; =0x00001A1C
	add r0, r7, #0
	add r1, r4, r1
	add r2, r4, #0
	mov r3, #1
	bl ov21_021D47F0
	add r0, r4, #0
	bl ov21_021D1EEC
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1084: .word 0x00001D10
_021D1088: .word 0x00001A0C
_021D108C: .word 0x00001A10
_021D1090: .word 0x00001A14
_021D1094: .word 0x00001A18
_021D1098: .word 0x00001D04
_021D109C: .word 0x00001D08
_021D10A0: .word 0x00001D0C
_021D10A4: .word 0x0000177C
_021D10A8: .word 0x00001A30
_021D10AC: .word 0x021E9B74
_021D10B0: .word 0x021E9B34
_021D10B4: .word 0x00001A1C
	thumb_func_end ov21_021D0F60

	thumb_func_start ov21_021D10B8
ov21_021D10B8: ; 0x021D10B8
	push {r4, lr}
	add r4, r0, #0
	bne _021D10C2
	bl GF_AssertFail
_021D10C2:
	add r0, r4, #0
	add r0, #0xc
	bl ov21_021D3960
	ldr r0, _021D128C ; =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1290 ; =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1294 ; =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1298 ; =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D129C ; =0x00001D08
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	ldr r0, _021D12A0 ; =0x00001D0C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov21_021D4194
	ldr r0, _021D12A4 ; =0x00001D04
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	b _021D1150
_021D1126:
	ldr r0, _021D129C ; =0x00001D08
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
	ldr r0, _021D12A0 ; =0x00001D0C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov21_021D4194
	ldr r0, _021D12A4 ; =0x00001D04
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
_021D1150:
	ldr r0, _021D129C ; =0x00001D08
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D12A0 ; =0x00001D0C
	ldr r0, [r4, r0]
	bl ov21_021D4078
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D12A4 ; =0x00001D04
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D129C ; =0x00001D08
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D12A0 ; =0x00001D0C
	ldr r0, [r4, r0]
	bl ov21_021D4100
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D12A4 ; =0x00001D04
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D1290 ; =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r0, _021D1294 ; =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r0, _021D1298 ; =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r1, _021D128C ; =0x00001A14
	ldr r0, [r4, r1]
	sub r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D11C4:
	ldr r0, _021D128C ; =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r0, _021D1294 ; =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r0, _021D1298 ; =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r1, _021D1290 ; =0x00001A0C
	ldr r0, [r4, r1]
	sub r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D11F4:
	ldr r0, _021D128C ; =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r0, _021D1290 ; =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r0, _021D1298 ; =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r1, _021D1294 ; =0x00001A18
	ldr r0, [r4, r1]
	sub r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D1224:
	ldr r0, _021D128C ; =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r0, _021D1290 ; =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r0, _021D1294 ; =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r1, _021D1298 ; =0x00001A10
	ldr r0, [r4, r1]
	sub r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D1254:
	bl sub_020241B4
	ldr r0, _021D12A8 ; =0x0000177C
	add r0, r4, r0
	bl ov21_021D2124
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	ldr r1, _021D12AC ; =0x00001A04
	mov r0, #0
	str r0, [r4, r1]
	add r2, r1, #4
	str r0, [r4, r2]
	add r2, r1, #0
	sub r2, #8
	str r0, [r4, r2]
	sub r1, r1, #4
	str r0, [r4, r1]
	ldr r1, [r4, #0]
	cmp r1, #1
	bne _021D128A
	add r0, r4, #0
	bl ov21_021D1D08
	mov r0, #1
_021D128A:
	pop {r4, pc}
	; .align 2, 0
_021D128C: .word 0x00001A14
_021D1290: .word 0x00001A0C
_021D1294: .word 0x00001A18
_021D1298: .word 0x00001A10
_021D129C: .word 0x00001D08
_021D12A0: .word 0x00001D0C
_021D12A4: .word 0x00001D04
_021D12A8: .word 0x0000177C
_021D12AC: .word 0x00001A04
	thumb_func_end ov21_021D10B8

	thumb_func_start ov21_021D12B0
ov21_021D12B0: ; 0x021D12B0
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021D1E74
	add r0, r4, #0
	bl ov21_021D1E94
	bl ov21_021D1F10
	pop {r4, pc}
	thumb_func_end ov21_021D12B0

	thumb_func_start ov21_021D12C4
ov21_021D12C4: ; 0x021D12C4
	push {r3, lr}
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	bl ov21_021D1F84
	pop {r3, pc}
	thumb_func_end ov21_021D12C4

	thumb_func_start ov21_021D12D8
ov21_021D12D8: ; 0x021D12D8
	push {r3, lr}
	ldr r1, _021D12E8 ; =0x0000177C
	add r0, r0, r1
	bl ov21_021D214C
	bl sub_0200A858
	pop {r3, pc}
	; .align 2, 0
_021D12E8: .word 0x0000177C
	thumb_func_end ov21_021D12D8

	thumb_func_start ov21_021D12EC
ov21_021D12EC: ; 0x021D12EC
	push {r4, lr}
	add r4, r0, #0
	bne _021D12F6
	bl GF_AssertFail
_021D12F6:
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D12EC

	thumb_func_start ov21_021D1300
ov21_021D1300: ; 0x021D1300
	push {r4, lr}
	add r4, r0, #0
	bne _021D130A
	bl GF_AssertFail
_021D130A:
	ldr r0, _021D1310 ; =0x00001D04
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1310: .word 0x00001D04
	thumb_func_end ov21_021D1300

	thumb_func_start ov21_021D1314
ov21_021D1314: ; 0x021D1314
	push {r4, lr}
	add r4, r0, #0
	bne _021D131E
	bl GF_AssertFail
_021D131E:
	ldr r0, _021D1324 ; =0x00001D08
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1324: .word 0x00001D08
	thumb_func_end ov21_021D1314

	thumb_func_start ov21_021D1328
ov21_021D1328: ; 0x021D1328
	push {r4, lr}
	add r4, r0, #0
	bne _021D1332
	bl GF_AssertFail
_021D1332:
	ldr r0, _021D1338 ; =0x00001D0C
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1338: .word 0x00001D0C
	thumb_func_end ov21_021D1328

	thumb_func_start ov21_021D133C
ov21_021D133C: ; 0x021D133C
	push {r4, lr}
	add r4, r0, #0
	bne _021D1346
	bl GF_AssertFail
_021D1346:
	ldr r0, _021D134C ; =0x00001A0C
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D134C: .word 0x00001A0C
	thumb_func_end ov21_021D133C

	thumb_func_start ov21_021D1350
ov21_021D1350: ; 0x021D1350
	push {r4, lr}
	add r4, r0, #0
	bne _021D135A
	bl GF_AssertFail
_021D135A:
	ldr r0, _021D1360 ; =0x00001A10
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1360: .word 0x00001A10
	thumb_func_end ov21_021D1350

	thumb_func_start ov21_021D1364
ov21_021D1364: ; 0x021D1364
	push {r4, lr}
	add r4, r0, #0
	bne _021D136E
	bl GF_AssertFail
_021D136E:
	ldr r0, _021D1374 ; =0x00001A14
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1374: .word 0x00001A14
	thumb_func_end ov21_021D1364

	thumb_func_start ov21_021D1378
ov21_021D1378: ; 0x021D1378
	push {r4, lr}
	add r4, r0, #0
	bne _021D1382
	bl GF_AssertFail
_021D1382:
	ldr r0, _021D1388 ; =0x00001A18
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D1388: .word 0x00001A18
	thumb_func_end ov21_021D1378

	thumb_func_start ov21_021D138C
ov21_021D138C: ; 0x021D138C
	push {r4, lr}
	add r4, r0, #0
	bne _021D1396
	bl GF_AssertFail
_021D1396:
	ldr r0, _021D139C ; =0x000019FC
	add r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
_021D139C: .word 0x000019FC
	thumb_func_end ov21_021D138C

	thumb_func_start ov21_021D13A0
ov21_021D13A0: ; 0x021D13A0
	push {r4, lr}
	add r4, r0, #0
	bne _021D13AA
	bl GF_AssertFail
_021D13AA:
	mov r0, #0x1a
	lsl r0, r0, #8
	add r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D13A0

	thumb_func_start ov21_021D13B4
ov21_021D13B4: ; 0x021D13B4
	push {r4, lr}
	add r4, r0, #0
	bne _021D13BE
	bl GF_AssertFail
_021D13BE:
	ldr r0, _021D13C4 ; =0x00001A04
	add r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
_021D13C4: .word 0x00001A04
	thumb_func_end ov21_021D13B4

	thumb_func_start ov21_021D13C8
ov21_021D13C8: ; 0x021D13C8
	push {r4, lr}
	add r4, r0, #0
	bne _021D13D2
	bl GF_AssertFail
_021D13D2:
	ldr r0, _021D13D8 ; =0x00001A08
	add r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
_021D13D8: .word 0x00001A08
	thumb_func_end ov21_021D13C8

	thumb_func_start ov21_021D13DC
ov21_021D13DC: ; 0x021D13DC
	push {r4, lr}
	add r4, r0, #0
	bne _021D13E6
	bl GF_AssertFail
_021D13E6:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D13DC

	thumb_func_start ov21_021D13EC
ov21_021D13EC: ; 0x021D13EC
	push {r4, lr}
	add r4, r0, #0
	bne _021D13F6
	bl GF_AssertFail
_021D13F6:
	add r4, #0xc
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov21_021D13EC

	thumb_func_start ov21_021D13FC
ov21_021D13FC: ; 0x021D13FC
	push {r4, lr}
	add r4, r0, #0
	bne _021D1406
	bl GF_AssertFail
_021D1406:
	ldr r0, _021D140C ; =0x0000177C
	add r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
_021D140C: .word 0x0000177C
	thumb_func_end ov21_021D13FC

	thumb_func_start ov21_021D1410
ov21_021D1410: ; 0x021D1410
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _021D141E
	bl GF_AssertFail
_021D141E:
	ldr r0, _021D142C ; =0x00001A30
	add r1, r5, r0
	mov r0, #0x28
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_021D142C: .word 0x00001A30
	thumb_func_end ov21_021D1410

	thumb_func_start ov21_021D1430
ov21_021D1430: ; 0x021D1430
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _021D143E
	bl GF_AssertFail
_021D143E:
	mov r0, #0x6f
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x28
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D1430

	thumb_func_start ov21_021D144C
ov21_021D144C: ; 0x021D144C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #4
	bhi _021D1492
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1460: ; jump table
	.short _021D146A - _021D1460 - 2 ; case 0
	.short _021D147A - _021D1460 - 2 ; case 1
	.short _021D1472 - _021D1460 - 2 ; case 2
	.short _021D1482 - _021D1460 - 2 ; case 3
	.short _021D1482 - _021D1460 - 2 ; case 4
_021D146A:
	mov r1, #1
	bl sub_02021E50
	pop {r4, pc}
_021D1472:
	mov r1, #2
	bl sub_02021E50
	pop {r4, pc}
_021D147A:
	mov r1, #3
	bl sub_02021E50
	pop {r4, pc}
_021D1482:
	bl sub_02021E74
	cmp r0, #0
	beq _021D1492
	ldr r1, _021D1494 ; =0xFFFFE000
	add r0, r4, #0
	bl sub_02021E2C
_021D1492:
	pop {r4, pc}
	; .align 2, 0
_021D1494: .word 0xFFFFE000
	thumb_func_end ov21_021D144C

	thumb_func_start ov21_021D1498
ov21_021D1498: ; 0x021D1498
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r2, #0
	bl sub_02021E74
	cmp r0, #3
	bhi _021D1520
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D14B4: ; jump table
	.short _021D14BC - _021D14B4 - 2 ; case 0
	.short _021D14D6 - _021D14B4 - 2 ; case 1
	.short _021D14F0 - _021D14B4 - 2 ; case 2
	.short _021D150A - _021D14B4 - 2 ; case 3
_021D14BC:
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020129A4
	str r5, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl sub_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D14D6:
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020129A4
	sub r2, r5, #2
	str r2, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	bl sub_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D14F0:
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020129A4
	sub r2, r5, #4
	str r2, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	bl sub_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D150A:
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020129A4
	sub r2, r5, #2
	str r2, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	bl sub_020128C4
_021D1520:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D1498

	thumb_func_start ov21_021D1524
ov21_021D1524: ; 0x021D1524
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ov21_021D1498
	add r0, r5, #0
	bl sub_02021E74
	cmp r0, #2
	ldr r0, [r4, #0]
	bge _021D1544
	add r1, r6, #0
	bl sub_02012AC0
	pop {r4, r5, r6, pc}
_021D1544:
	ldr r1, [sp, #0x10]
	bl sub_02012AC0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D1524

	thumb_func_start ov21_021D154C
ov21_021D154C: ; 0x021D154C
	strb r1, [r0]
	strb r2, [r0, #1]
	ldr r1, [sp]
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov21_021D154C

	thumb_func_start ov21_021D1558
ov21_021D1558: ; 0x021D1558
	str r1, [r0, #0]
	str r2, [r0, #8]
	ldr r2, [sp]
	ldr r1, [sp, #4]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0x14]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov21_021D1558

	thumb_func_start ov21_021D157C
ov21_021D157C: ; 0x021D157C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	bgt _021D1648
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019CB8
	ldr r1, [r5, #0x14]
	ldr r6, [r5, #0x1c]
	add r0, r1, #0
	ldr r4, [r5, #0x20]
	mul r0, r6
	add r1, r4, #0
	bl _s32_div_f
	ldr r1, [r5, #0x18]
	add r7, r0, #0
	add r0, r1, #0
	mul r0, r6
	add r1, r4, #0
	bl _s32_div_f
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	add r1, r7, r1
	add r4, r0, r2
	cmp r1, #0
	ble _021D1600
	mov r0, #0x20
	lsl r2, r1, #0x18
	str r0, [sp]
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r5, #4]
	sub r1, r0, r1
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0
	lsl r1, r1, #0x18
	str r2, [sp, #0xc]
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_020198E8
_021D1600:
	mov r0, #0x20
	sub r3, r0, r4
	cmp r3, #0
	ble _021D1630
	lsl r1, r4, #0x18
	str r0, [sp]
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r5, #4]
	mov r2, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r5, #8]
	lsl r3, r3, #0x18
	lsl r1, r1, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
_021D1630:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	ldr r0, [r5, #0x1c]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r5, #0x1c]
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D1648:
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D157C

	thumb_func_start ov21_021D1650
ov21_021D1650: ; 0x021D1650
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r4, r3, #0
	str r2, [sp, #0x10]
	cmp r5, #0
	ble _021D167A
	mov r0, #4
	add r1, r4, #0
	bl sub_02023790
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	mov r2, #3
	mov r3, #2
	add r7, r0, #0
	bl sub_020238A0
	b _021D1684
_021D167A:
	mov r0, #0x64
	add r1, r4, #0
	bl ov21_021D1CE0
	add r7, r0, #0
_021D1684:
	ldr r0, [sp, #0x10]
	mov r1, #2
	add r2, r4, #0
	bl ov21_021D561C
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D16D4 ; =0x00030201
	add r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	mov r3, #0x16
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D16D4 ; =0x00030201
	add r2, r4, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	mov r3, #0x31
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl ov21_021D5600
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D16D4: .word 0x00030201
	thumb_func_end ov21_021D1650

	thumb_func_start ov21_021D16D8
ov21_021D16D8: ; 0x021D16D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov21_021D36D8
	cmp r0, #0
	bne _021D16FA
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D172C
	pop {r4, r5, r6, pc}
_021D16FA:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D170C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D16D8

	thumb_func_start ov21_021D170C
ov21_021D170C: ; 0x021D170C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0xf
	mov r2, #2
	bl ov21_021D4D6C
	add r1, r6, #0
	add r2, r6, #0
	add r3, r5, #0
	add r4, r0, #0
	bl ov21_021D1650
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D170C

	thumb_func_start ov21_021D172C
ov21_021D172C: ; 0x021D172C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r7, r1, #0
	bl sub_020775A4
	ldr r1, _021D1774 ; =0x00000179
	add r4, r0, #0
	cmp r5, r1
	beq _021D1758
	add r0, r1, #1
	cmp r5, r0
	beq _021D1758
	add r0, r1, #2
	cmp r5, r0
	beq _021D1758
	cmp r4, #0
	bgt _021D1758
	bl GF_AssertFail
_021D1758:
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #2
	bl ov21_021D4D6C
	add r1, r4, #0
	add r2, r5, #0
	add r3, r7, #0
	add r6, r0, #0
	bl ov21_021D1650
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1774: .word 0x00000179
	thumb_func_end ov21_021D172C

	thumb_func_start ov21_021D1778
ov21_021D1778: ; 0x021D1778
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	add r0, r7, #0
	str r2, [sp, #4]
	bl ov21_021D36D8
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ov21_021D37DC
	add r4, r0, #0
	add r0, r5, #0
	bl ov21_021D22A8
	add r6, r0, #0
	add r0, r5, #0
	bl ov21_021D22C4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_02021C50
	add r0, r6, #0
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D17E4
	mov r0, #0x36
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	add r1, sp, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_02021C50
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_02021CAC
	b _021D17EC
_021D17E4:
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl sub_02021CAC
_021D17EC:
	add r0, r5, #0
	mov r1, #1
	bl ov21_021D2344
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0x24]
	mov r0, #0x3f
	mvn r0, r0
	str r0, [sp, #0x2c]
	add r0, #0x38
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r6, [sp, #0x28]
	str r0, [sp, #0x40]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0]
	add r0, r5, #0
	add r1, r7, #0
	bl ov21_021D16D8
	add r6, r0, #0
	ldr r0, [sp, #8]
	str r6, [sp, #0x20]
	str r0, [sp]
	ldr r3, [r4, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	mov r2, #0
	bl ov21_021D22E0
	add r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1778

	thumb_func_start ov21_021D1848
ov21_021D1848: ; 0x021D1848
	mov r3, #0x6d
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _021D1854 ; =ov21_021D1858
	bx r3
	nop
_021D1854: .word ov21_021D1858
	thumb_func_end ov21_021D1848

	thumb_func_start ov21_021D1858
ov21_021D1858: ; 0x021D1858
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r0, r1, #0xc
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x36
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D188C
	bl sub_02012938
_021D188C:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov21_021D1858

	thumb_func_start ov21_021D1890
ov21_021D1890: ; 0x021D1890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	ldr r2, _021D19D4 ; =0x000001A6
	add r7, r3, #0
	ldr r4, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	cmp r5, r2
	bgt _021D18D8
	bge _021D1944
	add r6, r2, #0
	sub r6, #0x24
	cmp r5, r6
	bgt _021D18B8
	sub r2, #0x24
	cmp r5, r2
	bge _021D196C
	cmp r5, #0xc9
	beq _021D1908
	b _021D19BC
_021D18B8:
	add r6, r2, #0
	sub r6, #9
	cmp r5, r6
	bgt _021D19BC
	add r6, r2, #0
	sub r6, #0xa
	cmp r5, r6
	blt _021D19BC
	add r6, r2, #0
	sub r6, #0xa
	cmp r5, r6
	beq _021D191C
	sub r2, #9
	cmp r5, r2
	beq _021D1930
	b _021D19BC
_021D18D8:
	add r6, r2, #0
	add r6, #0x39
	cmp r5, r6
	bgt _021D18F0
	add r6, r2, #0
	add r6, #0x39
	cmp r5, r6
	bge _021D19A8
	add r2, r2, #1
	cmp r5, r2
	beq _021D1958
	b _021D19BC
_021D18F0:
	add r6, r2, #0
	add r6, #0x41
	cmp r5, r6
	bgt _021D1900
	add r2, #0x41
	cmp r5, r2
	beq _021D1994
	b _021D19BC
_021D1900:
	add r2, #0x46
	cmp r5, r2
	beq _021D1980
	b _021D19BC
_021D1908:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1A34
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D191C:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1B08
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1930:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1B4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1944:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1A78
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1958:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1AC0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D196C:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1B94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1980:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1BD8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1994:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1C30
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D19A8:
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D1C88
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D19BC:
	str r4, [sp]
	str r3, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	add r2, r5, #0
	add r3, r7, #0
	bl ov21_021D19D8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D19D4: .word 0x000001A6
	thumb_func_end ov21_021D1890

	thumb_func_start ov21_021D19D8
ov21_021D19D8: ; 0x021D19D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, _021D1A30 ; =0x00000147
	add r5, r2, #0
	add r6, r1, #0
	mov r4, #0
	str r3, [sp, #0x18]
	cmp r5, r0
	bne _021D19F4
	add r0, r6, #0
	bl ov21_021D33F8
	add r4, r0, #0
_021D19F4:
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021D334C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021D1A28
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	add r1, r5, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	bl ov21_021D2188
_021D1A28:
	add r0, r6, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1A30: .word 0x00000147
	thumb_func_end ov21_021D19D8

	thumb_func_start ov21_021D1A34
ov21_021D1A34: ; 0x021D1A34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D335C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1A72
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	mov r1, #0xc9
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov21_021D2188
_021D1A72:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1A34

	thumb_func_start ov21_021D1A78
ov21_021D1A78: ; 0x021D1A78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D3374
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1AB4
	mov r2, #0
	lsl r0, r4, #0x18
	str r2, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1ABC ; =0x000001A6
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r3, r7, #0
	bl ov21_021D2188
_021D1AB4:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1ABC: .word 0x000001A6
	thumb_func_end ov21_021D1A78

	thumb_func_start ov21_021D1AC0
ov21_021D1AC0: ; 0x021D1AC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D338C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1AFC
	mov r2, #0
	lsl r0, r4, #0x18
	str r2, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1B04 ; =0x000001A7
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r3, r7, #0
	bl ov21_021D2188
_021D1AFC:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B04: .word 0x000001A7
	thumb_func_end ov21_021D1AC0

	thumb_func_start ov21_021D1B08
ov21_021D1B08: ; 0x021D1B08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D33A4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1B46
	mov r2, #0
	lsl r0, r4, #0x18
	str r2, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x67
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r3, r7, #0
	bl ov21_021D2188
_021D1B46:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1B08

	thumb_func_start ov21_021D1B4C
ov21_021D1B4C: ; 0x021D1B4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D33BC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1B8A
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1B90 ; =0x0000019D
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov21_021D2188
_021D1B8A:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1B90: .word 0x0000019D
	thumb_func_end ov21_021D1B4C

	thumb_func_start ov21_021D1B94
ov21_021D1B94: ; 0x021D1B94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x34]
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D3404
	add r4, r0, #0
	cmp r4, #0xf
	beq _021D1BCE
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1BD4 ; =0x00000182
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov21_021D2188
_021D1BCE:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1BD4: .word 0x00000182
	thumb_func_end ov21_021D1B94

	thumb_func_start ov21_021D1BD8
ov21_021D1BD8: ; 0x021D1BD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #0x7b
	add r6, r0, #0
	add r0, r4, #0
	lsl r1, r1, #2
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1C26
	mov r1, #0x7b
	add r0, r4, #0
	lsl r1, r1, #2
	bl ov21_021D3410
	add r4, r0, #0
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x7b
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov21_021D2188
	b _021D1C2A
_021D1C26:
	mov r4, #0
	mvn r4, r4
_021D1C2A:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1BD8

	thumb_func_start ov21_021D1C30
ov21_021D1C30: ; 0x021D1C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r0, #0
	ldr r1, _021D1C84 ; =0x000001E7
	add r0, r4, #0
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1C78
	ldr r1, _021D1C84 ; =0x000001E7
	add r0, r4, #0
	bl ov21_021D3410
	add r4, r0, #0
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1C84 ; =0x000001E7
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov21_021D2188
	b _021D1C7C
_021D1C78:
	mov r4, #0
	mvn r4, r4
_021D1C7C:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C84: .word 0x000001E7
	thumb_func_end ov21_021D1C30

	thumb_func_start ov21_021D1C88
ov21_021D1C88: ; 0x021D1C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r0, #0
	ldr r1, _021D1CDC ; =0x000001DF
	add r0, r4, #0
	add r7, r2, #0
	add r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1CD0
	ldr r1, _021D1CDC ; =0x000001DF
	add r0, r4, #0
	bl ov21_021D3410
	add r4, r0, #0
	mov r1, #0
	lsl r0, r4, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1CDC ; =0x000001DF
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov21_021D2188
	b _021D1CD4
_021D1CD0:
	mov r4, #0
	mvn r4, r4
_021D1CD4:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1CDC: .word 0x000001DF
	thumb_func_end ov21_021D1C88

	thumb_func_start ov21_021D1CE0
ov21_021D1CE0: ; 0x021D1CE0
	push {r3, r4, r5, lr}
	ldr r2, _021D1D04 ; =0x000002B9
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1D04: .word 0x000002B9
	thumb_func_end ov21_021D1CE0

	thumb_func_start ov21_021D1D08
ov21_021D1D08: ; 0x021D1D08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021D1E44 ; =0x00001A1C
	add r0, r6, r0
	bl ov21_021D4660
	ldr r0, _021D1E48 ; =0x00001A0C
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D20
	bl GF_AssertFail
_021D1D20:
	ldr r0, _021D1E48 ; =0x00001A0C
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E4C ; =0x00001A10
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D34
	bl GF_AssertFail
_021D1D34:
	ldr r0, _021D1E4C ; =0x00001A10
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E50 ; =0x00001A14
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D48
	bl GF_AssertFail
_021D1D48:
	ldr r0, _021D1E50 ; =0x00001A14
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E54 ; =0x00001A18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D5C
	bl GF_AssertFail
_021D1D5C:
	ldr r0, _021D1E54 ; =0x00001A18
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D72
	bl GF_AssertFail
_021D1D72:
	mov r0, #0x1d
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E58 ; =0x00001D04
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D88
	bl GF_AssertFail
_021D1D88:
	ldr r0, _021D1E58 ; =0x00001D04
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E5C ; =0x00001D08
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D9C
	bl GF_AssertFail
_021D1D9C:
	ldr r0, _021D1E5C ; =0x00001D08
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E60 ; =0x00001D0C
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1DB0
	bl GF_AssertFail
_021D1DB0:
	ldr r0, _021D1E60 ; =0x00001D0C
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D1E64 ; =0x00001A30
	ldr r4, _021D1E68 ; =0x021E9B9C
	mov r7, #0
	add r5, r6, r0
_021D1DC0:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D1DCA
	add r0, r5, #0
	blx r1
_021D1DCA:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x28
	cmp r7, #0xa
	blt _021D1DC0
	mov r0, #0x6f
	lsl r0, r0, #6
	ldr r4, _021D1E6C ; =0x021E9B54
	mov r7, #0
	add r5, r6, r0
_021D1DDE:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D1DE8
	add r0, r5, #0
	blx r1
_021D1DE8:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x28
	cmp r7, #8
	blt _021D1DDE
	add r0, r6, #0
	add r0, #0xc
	bl ov21_021D3440
	add r1, r0, #0
	ldr r0, [r6, #8]
	bl sub_0209ACE8
	add r0, r6, #0
	add r0, #0xc
	mov r1, #1
	bl ov21_021D36A4
	cmp r0, #1
	bne _021D1E22
	add r0, r6, #0
	add r0, #0xc
	bl ov21_021D3458
	add r1, r0, #0
	ldr r0, [r6, #8]
	bl sub_0209ACF0
	b _021D1E2A
_021D1E22:
	ldr r0, [r6, #8]
	mov r1, #2
	bl sub_0209ACF0
_021D1E2A:
	add r0, r6, #0
	add r0, #0xc
	bl ov21_021D3320
	ldr r0, _021D1E70 ; =0x0000177C
	add r0, r6, r0
	bl ov21_021D2098
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1E44: .word 0x00001A1C
_021D1E48: .word 0x00001A0C
_021D1E4C: .word 0x00001A10
_021D1E50: .word 0x00001A14
_021D1E54: .word 0x00001A18
_021D1E58: .word 0x00001D04
_021D1E5C: .word 0x00001D08
_021D1E60: .word 0x00001D0C
_021D1E64: .word 0x00001A30
_021D1E68: .word 0x021E9B9C
_021D1E6C: .word 0x021E9B54
_021D1E70: .word 0x0000177C
	thumb_func_end ov21_021D1D08

	thumb_func_start ov21_021D1E74
ov21_021D1E74: ; 0x021D1E74
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1E90 ; =0x021E9BC4
	add r3, sp, #0
	mov r2, #5
_021D1E7E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1E7E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1E90: .word 0x021E9BC4
	thumb_func_end ov21_021D1E74

	thumb_func_start ov21_021D1E94
ov21_021D1E94: ; 0x021D1E94
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r4, [sp, #0x10]
	bl sub_0200A784
	ldr r5, _021D1EE4 ; =0x021E9B24
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r1, _021D1EE8 ; =0x00200010
	mov r2, #0x10
	str r4, [sp, #0x20]
	bl sub_0201E88C
	mov r0, #0x20
	add r1, r4, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1EE4: .word 0x021E9B24
_021D1EE8: .word 0x00200010
	thumb_func_end ov21_021D1E94

	thumb_func_start ov21_021D1EEC
ov21_021D1EEC: ; 0x021D1EEC
	push {r4, lr}
	ldr r1, _021D1F08 ; =0x00001A0C
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, #0x10
	add r1, r4, r1
	mov r2, #1
	bl ov21_021D426C
	ldr r0, _021D1F0C ; =0x000019FC
	mov r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_021D1F08: .word 0x00001A0C
_021D1F0C: .word 0x000019FC
	thumb_func_end ov21_021D1EEC

	thumb_func_start ov21_021D1F10
ov21_021D1F10: ; 0x021D1F10
	push {r3, lr}
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _021D1F70 ; =0x04000060
	ldr r2, _021D1F74 ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021D1F78 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D1F7C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D1F80 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	pop {r3, pc}
	; .align 2, 0
_021D1F70: .word 0x04000060
_021D1F74: .word 0xFFFFCFFD
_021D1F78: .word 0x0000CFFB
_021D1F7C: .word 0x04000540
_021D1F80: .word 0xBFFF0000
	thumb_func_end ov21_021D1F10

	thumb_func_start ov21_021D1F84
ov21_021D1F84: ; 0x021D1F84
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov21_021D1F84

	.rodata


	.global Unk_ov21_021E9B24
Unk_ov21_021E9B24: ; 0x021E9B24
	.incbin "incbin/overlay21_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov21_021E9B34
Unk_ov21_021E9B34: ; 0x021E9B34
	.incbin "incbin/overlay21_rodata.bin", 0x10, 0x30 - 0x10

	.global Unk_ov21_021E9B54
Unk_ov21_021E9B54: ; 0x021E9B54
	.incbin "incbin/overlay21_rodata.bin", 0x30, 0x50 - 0x30

	.global Unk_ov21_021E9B74
Unk_ov21_021E9B74: ; 0x021E9B74
	.incbin "incbin/overlay21_rodata.bin", 0x50, 0x78 - 0x50

	.global Unk_ov21_021E9B9C
Unk_ov21_021E9B9C: ; 0x021E9B9C
	.incbin "incbin/overlay21_rodata.bin", 0x78, 0xA0 - 0x78

	.global Unk_ov21_021E9BC4
Unk_ov21_021E9BC4: ; 0x021E9BC4
	.incbin "incbin/overlay21_rodata.bin", 0xA0, 0x28

